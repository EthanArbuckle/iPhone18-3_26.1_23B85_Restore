unint64_t sub_1B76C8340()
{
  result = qword_1EB99B720;
  if (!qword_1EB99B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B720);
  }

  return result;
}

unint64_t sub_1B76C8398()
{
  result = qword_1EB99B728;
  if (!qword_1EB99B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B728);
  }

  return result;
}

unint64_t sub_1B76C83F0()
{
  result = qword_1EB99B730;
  if (!qword_1EB99B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B730);
  }

  return result;
}

unint64_t sub_1B76C8448()
{
  result = qword_1EB99B738;
  if (!qword_1EB99B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B738);
  }

  return result;
}

unint64_t sub_1B76C84A0()
{
  result = qword_1EB99B740;
  if (!qword_1EB99B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B740);
  }

  return result;
}

unint64_t sub_1B76C84F8()
{
  result = qword_1EB99B748;
  if (!qword_1EB99B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B748);
  }

  return result;
}

unint64_t sub_1B76C8550()
{
  result = qword_1EB99B750;
  if (!qword_1EB99B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B750);
  }

  return result;
}

unint64_t sub_1B76C85A8()
{
  result = qword_1EB99B758;
  if (!qword_1EB99B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B758);
  }

  return result;
}

unint64_t sub_1B76C8600()
{
  result = qword_1EB99B760;
  if (!qword_1EB99B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B760);
  }

  return result;
}

unint64_t sub_1B76C8658()
{
  result = qword_1EB99B768;
  if (!qword_1EB99B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B768);
  }

  return result;
}

unint64_t sub_1B76C86B0()
{
  result = qword_1EB99B770;
  if (!qword_1EB99B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B770);
  }

  return result;
}

unint64_t sub_1B76C8708()
{
  result = qword_1EB99B778;
  if (!qword_1EB99B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B778);
  }

  return result;
}

uint64_t sub_1B76C875C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473655261746164 && a2 == 0xEE00646574636972;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B788AD50 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654474656C6C6177 && a2 == 0xED0000646574656CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788AD70 == a2)
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

unint64_t sub_1B76C897C()
{
  result = qword_1EB99B780;
  if (!qword_1EB99B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B780);
  }

  return result;
}

uint64_t ScheduledPayment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ScheduledPayment.paymentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScheduledPayment() + 20));

  return v1;
}

uint64_t type metadata accessor for ScheduledPayment()
{
  result = qword_1EB99B7B8;
  if (!qword_1EB99B7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScheduledPayment.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledPayment() + 24);
  v4 = sub_1B77FFA18();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledPayment.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScheduledPayment() + 28));

  return v1;
}

uint64_t ScheduledPayment.paymentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledPayment() + 32);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledPayment.paymentAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScheduledPayment() + 36);
  v9 = *(v3 + 32);
  v4 = v9;
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  *a1 = v8[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  return sub_1B7215720(v8, v7);
}

uint64_t ScheduledPayment.schedulingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ScheduledPayment();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t ScheduledPayment.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ScheduledPayment();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t ScheduledPayment.mandateDetails.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ScheduledPayment() + 48));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_1B72D1A90(v9, &v8);
}

__n128 ScheduledPayment.init(id:paymentIdentifier:accountID:description:paymentDate:paymentAmount:schedulingType:status:mandateDetails:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t a12)
{
  v34 = *a10;
  v35 = *a11;
  v18 = sub_1B77FFA18();
  v19 = *(*(v18 - 8) + 32);
  v19(a9, a1, v18);
  v20 = type metadata accessor for ScheduledPayment();
  v21 = (a9 + v20[5]);
  *v21 = a2;
  v21[1] = a3;
  v19(a9 + v20[6], a4, v18);
  v22 = (a9 + v20[7]);
  *v22 = a5;
  v22[1] = a6;
  v23 = v20[8];
  v24 = sub_1B77FF988();
  (*(*(v24 - 8) + 32))(a9 + v23, a7, v24);
  v25 = a9 + v20[9];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a8 + 32);
  *(a9 + v20[10]) = v34;
  *(a9 + v20[11]) = v35;
  v27 = a9 + v20[12];
  v28 = *(a12 + 16);
  *v27 = *a12;
  *(v27 + 16) = v28;
  result = *(a12 + 32);
  v30 = *(a12 + 48);
  *(v27 + 32) = result;
  *(v27 + 48) = v30;
  return result;
}

unint64_t sub_1B76C8EA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x49746E756F636361;
    if (a1 != 2)
    {
      v6 = 0x7470697263736564;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
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
    v1 = 0x696C756465686373;
    v2 = 0x737574617473;
    if (a1 != 7)
    {
      v2 = 0x44657461646E616DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x44746E656D796170;
    if (a1 != 4)
    {
      v3 = 0x41746E656D796170;
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

uint64_t sub_1B76C8FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76CA8CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76C901C(uint64_t a1)
{
  v2 = sub_1B76CA1B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C9058(uint64_t a1)
{
  v2 = sub_1B76CA1B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScheduledPayment.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B790);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76CA1B4();
  sub_1B78023F8();
  LOBYTE(v26[0]) = 0;
  sub_1B77FFA18();
  sub_1B71A6B64(&qword_1EB98F718, MEMORY[0x1E69695A8]);
  v20[0] = v2;
  v8 = v20[1];
  sub_1B7801FC8();
  if (!v8)
  {
    v9 = type metadata accessor for ScheduledPayment();
    LOBYTE(v26[0]) = 1;
    sub_1B7801F78();
    LOBYTE(v26[0]) = 2;
    sub_1B7801FC8();
    LOBYTE(v26[0]) = 3;
    sub_1B7801F78();
    v38 = 4;
    sub_1B77FF988();
    sub_1B71A6B64(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v10 = (v20[0] + v9[9]);
    v11 = v10[1];
    v32[0] = *v10;
    v32[1] = v11;
    v33 = *(v10 + 4);
    v12 = v10[1];
    v29 = *v10;
    v30 = v12;
    v31 = *(v10 + 4);
    v37 = 5;
    sub_1B7215720(v32, v26);
    sub_1B7215044();
    sub_1B7801FC8();
    v27[0] = v29;
    v27[1] = v30;
    v28 = v31;
    sub_1B721722C(v27);
    LOBYTE(v26[0]) = *(v20[0] + v9[10]);
    LOBYTE(v22) = 6;
    sub_1B7604164();
    sub_1B7801F38();
    v36 = *(v20[0] + v9[11]);
    v35 = 7;
    sub_1B76CA208();
    sub_1B7801F38();
    v13 = (v20[0] + v9[12]);
    v14 = v13[1];
    v26[0] = *v13;
    v26[1] = v14;
    v15 = v13[3];
    v17 = *v13;
    v16 = v13[1];
    v26[2] = v13[2];
    v26[3] = v15;
    v22 = v17;
    v23 = v16;
    v18 = v13[3];
    v24 = v13[2];
    v25 = v18;
    v34 = 8;
    sub_1B72D1A90(v26, v21);
    sub_1B76041B8();
    sub_1B7801FC8();
    v21[0] = v22;
    v21[1] = v23;
    v21[2] = v24;
    v21[3] = v25;
    sub_1B72D1AC8(v21);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ScheduledPayment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1B77FF988();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFA18();
  v49 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B7A8);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ScheduledPayment();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76CA1B4();
  v53 = v12;
  v16 = v54;
  sub_1B78023C8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v8;
  v54 = a1;
  v44 = v13;
  LOBYTE(v55) = 0;
  sub_1B71A6B64(&qword_1EB98F740, MEMORY[0x1E69695A8]);
  v17 = v50;
  v18 = v52;
  sub_1B7801E48();
  v19 = v15;
  v20 = v17;
  v21 = *(v49 + 32);
  v21(v15, v20, v5);
  LOBYTE(v55) = 1;
  v22 = sub_1B7801DF8();
  v50 = 0;
  v42 = v21;
  v23 = v44;
  v24 = &v15[v44[5]];
  *v24 = v22;
  v24[1] = v25;
  LOBYTE(v55) = 2;
  v26 = v43;
  sub_1B7801E48();
  v27 = v51;
  v42(v19 + v23[6], v26, v5);
  LOBYTE(v55) = 3;
  v28 = sub_1B7801DF8();
  v29 = (v19 + v23[7]);
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v55) = 4;
  sub_1B71A6B64(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v31 = v46;
  v32 = v48;
  sub_1B7801E48();
  (*(v47 + 32))(v19 + v44[8], v31, v32);
  v63 = 5;
  sub_1B72153F8();
  sub_1B7801E48();
  v33 = v44;
  v34 = v19 + v44[9];
  v35 = v60;
  *v34 = v59;
  *(v34 + 16) = v35;
  *(v34 + 32) = v61;
  v62 = 6;
  sub_1B76042B4();
  sub_1B7801DB8();
  v36 = v54;
  *(v19 + v33[10]) = v55;
  v62 = 7;
  sub_1B76CA25C();
  sub_1B7801DB8();
  *(v19 + v33[11]) = v55;
  v62 = 8;
  sub_1B7604308();
  sub_1B7801E48();
  (*(v27 + 8))(v53, v18);
  v37 = (v19 + v44[12]);
  v38 = v56;
  *v37 = v55;
  v37[1] = v38;
  v39 = v58;
  v37[2] = v57;
  v37[3] = v39;
  sub_1B76CA2B0(v19, v45);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1B76CA314(v19);
}

uint64_t static ManagedScheduledPreauthorizedPayment.attributeNamesByKeyPath.getter()
{
  if (qword_1EB98EB30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B76C9E94()
{
  if (qword_1EB98EB30 != -1)
  {
    swift_once();
  }
}

uint64_t _s10FinanceKit16ScheduledPaymentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v4 = type metadata accessor for ScheduledPayment();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((_s10FinanceKit27FinHealthTransactionInsightV11EntityGroupV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_1B78020F8() & 1) == 0 || (sub_1B77FF918() & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = (a1 + v4[9]);
  *&v60[1] = *(v15 + 4);
  v16 = v15[1];
  v59 = *v15;
  v60[0] = v16;
  v17 = (a2 + v4[9]);
  v18 = v17[1];
  v61 = *v17;
  v62[0] = v18;
  *&v62[1] = *(v17 + 4);
  v19 = LODWORD(v60[0]);
  v20 = v18;
  v21 = v59;
  v22 = v61;
  sub_1B7215720(&v59, v58);
  sub_1B7215720(&v61, v58);
  if (MEMORY[0x1B8CA5970](v21, *(&v21 + 1), v19, v22, *(&v22 + 1), v20))
  {
    if (*(v60 + 8) == *(v62 + 8))
    {
      sub_1B721722C(&v61);
      sub_1B721722C(&v59);
    }

    else
    {
      v25 = sub_1B78020F8();
      sub_1B721722C(&v61);
      sub_1B721722C(&v59);
      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v26 = v4[10];
    v27 = *(a1 + v26);
    v28 = *(a2 + v26);
    if (v27 == 2)
    {
      if (v28 != 2)
      {
        goto LABEL_18;
      }
    }

    else if (v28 == 2 || ((v28 ^ v27) & 1) != 0)
    {
      goto LABEL_18;
    }

    v29 = v4[11];
    v30 = *(a1 + v29);
    v31 = *(a2 + v29);
    if (v30 == 6)
    {
      if (v31 == 6)
      {
        goto LABEL_30;
      }
    }

    else if (v30 == v31)
    {
LABEL_30:
      v32 = (a1 + v4[12]);
      v33 = v32[1];
      v55[0] = *v32;
      v55[1] = v33;
      v34 = v32[3];
      v36 = *v32;
      v35 = v32[1];
      v55[2] = v32[2];
      v55[3] = v34;
      v38 = v32[2];
      v37 = v32[3];
      v51 = v36;
      v52 = v35;
      v53 = v38;
      v54 = v37;
      v39 = (a2 + v4[12]);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[3];
      v56[2] = v39[2];
      v56[3] = v42;
      v43 = v39[1];
      v44 = v39[2];
      v45 = *v39;
      v56[0] = v40;
      v56[1] = v43;
      v47 = v45;
      v48 = v41;
      v46 = v39[3];
      v49 = v44;
      v50 = v46;
      v23 = _s10FinanceKit14MandateDetailsV2eeoiySbAC_ACtFZ_0(&v51, &v47);
      v57[0] = v47;
      v57[1] = v48;
      v57[2] = v49;
      v57[3] = v50;
      sub_1B72D1A90(v55, v58);
      sub_1B72D1A90(v56, v58);
      sub_1B72D1AC8(v57);
      v58[0] = v51;
      v58[1] = v52;
      v58[2] = v53;
      v58[3] = v54;
      sub_1B72D1AC8(v58);
      return v23 & 1;
    }
  }

  else
  {
    sub_1B721722C(&v61);
    sub_1B721722C(&v59);
  }

LABEL_18:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_1B76CA1B4()
{
  result = qword_1EB99B798;
  if (!qword_1EB99B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B798);
  }

  return result;
}

unint64_t sub_1B76CA208()
{
  result = qword_1EB99B7A0;
  if (!qword_1EB99B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B7A0);
  }

  return result;
}

unint64_t sub_1B76CA25C()
{
  result = qword_1EB99B7B0;
  if (!qword_1EB99B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B7B0);
  }

  return result;
}

uint64_t sub_1B76CA2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledPayment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76CA314(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledPayment();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _s10FinanceKit36ManagedScheduledPreauthorizedPaymentC14mappedKeyPathsSDys03AnyH4PathCSSGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B785B820;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 25705;
  *(inited + 48) = 0xE200000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0xD000000000000024;
  *(inited + 72) = 0x80000001B78869B0;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x80000001B78802B0;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = 0x6156737574617473;
  *(inited + 120) = 0xEB0000000065756CLL;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = 0x6156737574617473;
  *(inited + 144) = 0xEB0000000065756CLL;
  *(inited + 152) = swift_getKeyPath();
  *(inited + 160) = 0xD000000000000013;
  *(inited + 168) = 0x80000001B78802D0;
  *(inited + 176) = swift_getKeyPath();
  *(inited + 184) = 0xD000000000000013;
  *(inited + 192) = 0x80000001B78802D0;
  *(inited + 200) = swift_getKeyPath();
  *(inited + 208) = 0xD000000000000012;
  *(inited + 216) = 0x80000001B78802F0;
  *(inited + 224) = swift_getKeyPath();
  *(inited + 232) = 0x4E657461646E616DLL;
  *(inited + 240) = 0xEB00000000656D61;
  *(inited + 248) = swift_getKeyPath();
  strcpy((inited + 256), "mandateReason");
  *(inited + 270) = -4864;
  *(inited + 272) = swift_getKeyPath();
  *(inited + 280) = 0xD000000000000012;
  *(inited + 288) = 0x80000001B7878C10;
  *(inited + 296) = swift_getKeyPath();
  *(inited + 304) = 0x4365736F70727570;
  *(inited + 312) = 0xEB0000000065646FLL;
  *(inited + 320) = swift_getKeyPath();
  *(inited + 328) = 0x79636E6572727563;
  *(inited + 336) = 0xE800000000000000;
  *(inited + 344) = swift_getKeyPath();
  *(inited + 352) = 0x6156746E756F6D61;
  *(inited + 360) = 0xEB0000000065756CLL;
  *(inited + 368) = swift_getKeyPath();
  *(inited + 376) = 0x44746E656D796170;
  *(inited + 384) = 0xEB00000000657461;
  v1 = sub_1B7202424(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99DBC0);
  swift_arrayDestroy();
  return v1;
}

void sub_1B76CA6C4()
{
  sub_1B77FFA18();
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EB999538);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB99B7C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B76CA7C8()
{
  result = qword_1EB99B7D0;
  if (!qword_1EB99B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B7D0);
  }

  return result;
}

unint64_t sub_1B76CA820()
{
  result = qword_1EB99B7D8;
  if (!qword_1EB99B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B7D8);
  }

  return result;
}

unint64_t sub_1B76CA878()
{
  result = qword_1EB99B7E0;
  if (!qword_1EB99B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B7E0);
  }

  return result;
}

uint64_t sub_1B76CA8CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78802B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44746E656D796170 && a2 == 0xEB00000000657461 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x41746E656D796170 && a2 == 0xED0000746E756F6DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696C756465686373 && a2 == 0xEE0065707954676ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x44657461646E616DLL && a2 == 0xEE00736C69617465)
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

__n128 RawBankConnectData.Transaction.init(id:stableIdentifier:postedTimestamp:transactionTimestamp:description:originalDescription:creditDebitIndicator:reference:status:transactionType:localAmount:foreignAmount:merchantInformation:actions:accountId:applePayPaymentHash:bankTransactionCode:proprietaryBankTransactionCode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, char *a15, __int128 *a16, __int128 *a17, __int128 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 *a24, __n128 *a25)
{
  v62 = *a15;
  v73 = a16[2];
  v74 = a16[3];
  v71 = *a16;
  v72 = a16[1];
  v78 = a17[2];
  v79 = a17[3];
  v80 = a17[4];
  v77 = a17[1];
  v75 = a16[4];
  v76 = *a17;
  v87 = a18[6];
  v88 = a18[7];
  v89 = a18[8];
  v90 = a18[9];
  v83 = a18[2];
  v84 = a18[3];
  v85 = a18[4];
  v86 = a18[5];
  v81 = *a18;
  v82 = a18[1];
  v26 = type metadata accessor for RawBankConnectData.Transaction(0);
  v27 = v26[6];
  v53 = v27;
  v28 = sub_1B77FF988();
  v29 = *(v28 - 8);
  v69 = a25[1];
  v70 = *a25;
  v67 = a24[1];
  v68 = *a24;
  (*(v29 + 56))(a9 + v27, 1, 1, v28);
  v30 = (a9 + v26[9]);
  v31 = (a9 + v26[11]);
  v54 = v26[13];
  *(a9 + v54) = 16;
  v32 = (a9 + v26[15]);
  v32[3] = 0u;
  v32[4] = 0u;
  v32[1] = 0u;
  v32[2] = 0u;
  *v32 = 0u;
  v33 = (a9 + v26[16]);
  sub_1B7484FC0(v91);
  v34 = v91[7];
  v33[6] = v91[6];
  v33[7] = v34;
  v35 = v91[9];
  v33[8] = v91[8];
  v33[9] = v35;
  v36 = v91[3];
  v33[2] = v91[2];
  v33[3] = v36;
  v37 = v91[5];
  v33[4] = v91[4];
  v33[5] = v37;
  v38 = v91[1];
  *v33 = v91[0];
  v33[1] = v38;
  v39 = v26[17];
  v57 = v39;
  v40 = type metadata accessor for RawBankConnectData.Actions();
  (*(*(v40 - 8) + 56))(a9 + v39, 1, 1, v40);
  v55 = (a9 + v26[18]);
  v56 = (a9 + v26[19]);
  v41 = a9 + v26[20];
  *v41 = 0u;
  *(v41 + 16) = 0u;
  v42 = a9 + v26[21];
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_1B7213740(a4, a9 + v53, &qword_1EB98EBD0);
  (*(v29 + 32))(a9 + v26[7], a5, v28);
  v43 = (a9 + v26[8]);
  *v43 = a6;
  v43[1] = a7;
  *v30 = a8;
  v30[1] = a10;
  *(a9 + v26[10]) = a11 & 1;
  *v31 = a12;
  v31[1] = a13;
  *(a9 + v26[12]) = a14;
  *(a9 + v54) = v62;
  v44 = (a9 + v26[14]);
  v44[3] = v74;
  v44[4] = v75;
  v44[1] = v72;
  v44[2] = v73;
  *v44 = v71;
  v45 = v32[4];
  v92[3] = v32[3];
  v92[4] = v45;
  v46 = v32[2];
  v92[1] = v32[1];
  v92[2] = v46;
  v92[0] = *v32;
  sub_1B7205418(v92, &qword_1EB990780);
  v32[2] = v78;
  v32[3] = v79;
  v32[4] = v80;
  *v32 = v76;
  v32[1] = v77;
  v47 = v33[7];
  v93[6] = v33[6];
  v93[7] = v47;
  v48 = v33[9];
  v93[8] = v33[8];
  v93[9] = v48;
  v49 = v33[3];
  v93[2] = v33[2];
  v93[3] = v49;
  v50 = v33[5];
  v93[4] = v33[4];
  v93[5] = v50;
  v51 = v33[1];
  v93[0] = *v33;
  v93[1] = v51;
  sub_1B7205418(v93, &qword_1EB995668);
  v33[6] = v87;
  v33[7] = v88;
  v33[8] = v89;
  v33[9] = v90;
  v33[2] = v83;
  v33[3] = v84;
  v33[4] = v85;
  v33[5] = v86;
  *v33 = v81;
  v33[1] = v82;
  sub_1B7213740(a19, a9 + v57, &qword_1EB990770);
  *v55 = a20;
  v55[1] = a21;
  *v56 = a22;
  v56[1] = a23;
  sub_1B74204FC(*v41, *(v41 + 8));
  *v41 = v68;
  *(v41 + 16) = v67;
  sub_1B74204FC(*v42, *(v42 + 8));
  result = v70;
  *v42 = v70;
  *(v42 + 16) = v69;
  return result;
}

__n128 RawBankConnectData.MerchantInformation.init(merchantCategoryCode:standardIndustrialClassificationCode:categoryDescription:merchantName:merchantNumber:merchantAddress:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a9 + 80) = xmmword_1B78301C0;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  v13 = *(a9 + 112);
  v14 = *(a9 + 144);
  v18[3] = *(a9 + 128);
  v18[4] = v14;
  v15 = *(a9 + 80);
  v18[1] = *(a9 + 96);
  v18[2] = v13;
  v18[0] = v15;
  sub_1B7205418(v18, &qword_1EB995670);
  v16 = *(a12 + 48);
  *(a9 + 112) = *(a12 + 32);
  *(a9 + 128) = v16;
  *(a9 + 144) = *(a12 + 64);
  result = *(a12 + 16);
  *(a9 + 80) = *a12;
  *(a9 + 96) = result;
  return result;
}

uint64_t RawBankConnectData.MerchantAddress.init(addressLine:city:stateOrSection:zipOrPostCode:countryCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t RawBankConnectData.Transaction.BankTransactionCode.init(code:subCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t RawBankConnectData.Transaction.ProprietaryBankTransactionCode.init(code:issuer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t RawBankConnectData.Transaction.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.Transaction.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Transaction.transactionTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.Transaction(0) + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.Transaction.transactionTimestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.Transaction(0) + 28);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.Transaction.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 32));

  return v1;
}

uint64_t RawBankConnectData.Transaction.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Transaction.originalDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 36));

  return v1;
}

uint64_t RawBankConnectData.Transaction.originalDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Transaction.creditDebitIndicator.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.Transaction(0);
  *(v1 + *(result + 40)) = a1 & 1;
  return result;
}

uint64_t RawBankConnectData.Transaction.reference.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 44));

  return v1;
}

uint64_t RawBankConnectData.Transaction.reference.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Transaction.status.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.Transaction(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t RawBankConnectData.Transaction.transactionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.Transaction(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t RawBankConnectData.Transaction.transactionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawBankConnectData.Transaction(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t RawBankConnectData.Transaction.localAmount.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 56));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B76CB848(&v11, &v10);
}

__n128 RawBankConnectData.Transaction.localAmount.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 56));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B76CB914(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t RawBankConnectData.Transaction.foreignAmount.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 60));
  v4 = v3[4];
  v14 = v3[3];
  v5 = v14;
  v15 = v4;
  v6 = v3[2];
  v12 = v3[1];
  v7 = v12;
  v13 = v6;
  v11 = *v3;
  v8 = v11;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v4;
  *a1 = v8;
  a1[1] = v7;
  return sub_1B7205588(&v11, &v10, &qword_1EB990780);
}

__n128 RawBankConnectData.Transaction.foreignAmount.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 60));
  v4 = v3[4];
  v8[3] = v3[3];
  v8[4] = v4;
  v5 = v3[2];
  v8[1] = v3[1];
  v8[2] = v5;
  v8[0] = *v3;
  sub_1B7205418(v8, &qword_1EB990780);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t RawBankConnectData.Transaction.merchantInformation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 64));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v10 = v3[5];
  v23 = v3[4];
  v11 = v23;
  v24 = v10;
  v12 = v3[3];
  v14 = v3[1];
  v21 = v3[2];
  v13 = v21;
  v22 = v12;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v13;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v14;
  return sub_1B7205588(v20, &v19, &qword_1EB995668);
}

__n128 RawBankConnectData.Transaction.merchantInformation.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 64));
  v4 = v3[7];
  v15[6] = v3[6];
  v15[7] = v4;
  v5 = v3[9];
  v15[8] = v3[8];
  v15[9] = v5;
  v6 = v3[5];
  v15[4] = v3[4];
  v15[5] = v6;
  v7 = v3[3];
  v15[2] = v3[2];
  v15[3] = v7;
  v8 = v3[1];
  v15[0] = *v3;
  v15[1] = v8;
  sub_1B7205418(v15, &qword_1EB995668);
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v10;
  v11 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v11;
  v12 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v14;
  return result;
}

uint64_t RawBankConnectData.Transaction.accountId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 72));

  return v1;
}

uint64_t RawBankConnectData.Transaction.accountId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Transaction.applePayPaymentHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 76));

  return v1;
}

uint64_t RawBankConnectData.Transaction.applePayPaymentHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Transaction.bankTransactionCode.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 80));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1B7420484(v4, v5);
}

__n128 RawBankConnectData.Transaction.bankTransactionCode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 80);
  sub_1B74204FC(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t RawBankConnectData.Transaction.proprietaryBankTransactionCode.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 84));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1B7586148(v4, v5);
}

__n128 RawBankConnectData.Transaction.proprietaryBankTransactionCode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.Transaction(0) + 84);
  sub_1B74204FC(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

unint64_t sub_1B76CC0B4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6954646574736F70;
      break;
    case 3:
    case 6:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0x737574617473;
      break;
    case 9:
      result = 0x746361736E617274;
      break;
    case 10:
      result = 0x6F6D416C61636F6CLL;
      break;
    case 11:
      result = 0x416E676965726F66;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x736E6F69746361;
      break;
    case 14:
      result = 0x49746E756F636361;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B76CC2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76D54A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76CC2F8(uint64_t a1)
{
  v2 = sub_1B76D5254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76CC334(uint64_t a1)
{
  v2 = sub_1B76D5254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Transaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B7E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5254();
  sub_1B78023F8();
  LOBYTE(v61[0]) = 0;
  sub_1B7801F78();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v61[0]) = 1;
  sub_1B7801F88();
  v93 = v6;
  v9 = type metadata accessor for RawBankConnectData.Transaction(0);
  LOBYTE(v61[0]) = 2;
  sub_1B77FF988();
  sub_1B71A7268(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
  sub_1B7801F38();
  LOBYTE(v61[0]) = 3;
  sub_1B7801FC8();
  LOBYTE(v61[0]) = 4;
  sub_1B7801F78();
  LOBYTE(v61[0]) = 5;
  sub_1B7801EF8();
  LOBYTE(v61[0]) = *(v3 + v9[10]);
  LOBYTE(v50) = 6;
  sub_1B7586200();
  sub_1B7801FC8();
  LOBYTE(v61[0]) = 7;
  sub_1B7801EF8();
  LOBYTE(v61[0]) = *(v3 + v9[12]);
  LOBYTE(v50) = 8;
  sub_1B7586374();
  sub_1B7801FC8();
  v92 = *(v3 + v9[13]);
  v91 = 9;
  sub_1B75863C8();
  sub_1B7801F38();
  v11 = (v3 + v9[14]);
  v12 = v11[2];
  v13 = *v11;
  v87 = v11[1];
  v88 = v12;
  v14 = v11[2];
  v15 = v11[4];
  v89 = v11[3];
  v90 = v15;
  v16 = *v11;
  v83 = v14;
  v84 = v89;
  v85 = v11[4];
  v86 = v16;
  v81 = v13;
  v82 = v87;
  v80 = 10;
  sub_1B76CB848(&v86, v61);
  sub_1B76D52A8();
  sub_1B7801FC8();
  v76[2] = v83;
  v76[3] = v84;
  v76[4] = v85;
  v76[0] = v81;
  v76[1] = v82;
  sub_1B76CB914(v76);
  v17 = (v3 + v9[15]);
  v18 = v17[4];
  v19 = v17[1];
  v20 = v17[2];
  v78 = v17[3];
  v79 = v18;
  v21 = *v17;
  v22 = *v17;
  v77[1] = v17[1];
  v77[2] = v20;
  v77[0] = v21;
  v73 = v20;
  v74 = v78;
  v75 = v17[4];
  v71 = v22;
  v72 = v19;
  v70 = 11;
  sub_1B7205588(v77, v61, &qword_1EB990780);
  sub_1B7801F38();
  v60[2] = v73;
  v60[3] = v74;
  v60[4] = v75;
  v60[0] = v71;
  v60[1] = v72;
  sub_1B7205418(v60, &qword_1EB990780);
  v23 = (v3 + v9[16]);
  v24 = v23[7];
  v25 = v23[5];
  v66 = v23[6];
  v67 = v24;
  v26 = v23[7];
  v27 = v23[9];
  v68 = v23[8];
  v69 = v27;
  v28 = v23[3];
  v29 = v23[5];
  v64 = v23[4];
  v65 = v29;
  v30 = v23[3];
  v31 = v23[1];
  v62 = v23[2];
  v63 = v30;
  v32 = v23[1];
  v61[0] = *v23;
  v61[1] = v32;
  v56 = v66;
  v57 = v26;
  v33 = v23[9];
  v58 = v68;
  v59 = v33;
  v52 = v62;
  v53 = v28;
  v54 = v64;
  v55 = v25;
  v50 = v61[0];
  v51 = v31;
  v49 = 12;
  sub_1B7205588(v61, v48, &qword_1EB995668);
  sub_1B7586254();
  sub_1B7801F38();
  v48[6] = v56;
  v48[7] = v57;
  v48[8] = v58;
  v48[9] = v59;
  v48[2] = v52;
  v48[3] = v53;
  v48[4] = v54;
  v48[5] = v55;
  v48[0] = v50;
  v48[1] = v51;
  sub_1B7205418(v48, &qword_1EB995668);
  LOBYTE(v44) = 13;
  type metadata accessor for RawBankConnectData.Actions();
  sub_1B71A7268(&qword_1EB99B800, type metadata accessor for RawBankConnectData.Actions);
  sub_1B7801F38();
  LOBYTE(v44) = 14;
  sub_1B7801EF8();
  LOBYTE(v44) = 15;
  sub_1B7801EF8();
  v34 = (v3 + v9[20]);
  v35 = v34[1];
  v36 = v34[2];
  v37 = v34[3];
  v44 = *v34;
  v45 = v35;
  v46 = v36;
  v47 = v37;
  v43 = 16;
  sub_1B7420484(v44, v35);
  sub_1B76D52FC();
  sub_1B7801F38();
  sub_1B74204FC(v44, v45);
  v38 = (v3 + v9[21]);
  v39 = v38[1];
  v40 = v38[2];
  v41 = v38[3];
  v44 = *v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v43 = 17;
  sub_1B7586148(v44, v39);
  sub_1B76D5350();
  sub_1B7801F38();
  sub_1B74204FC(v44, v45);
  return (*(v93 + 8))(v8, v5);
}

uint64_t RawBankConnectData.Transaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v123 = v119 - v4;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v124 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = v119 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B818);
  v127 = *(v10 - 8);
  v128 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v119 - v11;
  v13 = type metadata accessor for RawBankConnectData.Transaction(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 24);
  v125 = v6;
  v18 = *(v6 + 56);
  *&v137 = v17;
  v18(v16 + v17, 1, 1, v5);
  v19 = v13[13];
  *(v16 + v19) = 16;
  v20 = v16 + v13[15];
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *&v135 = v20;
  *v20 = 0u;
  v21 = v16 + v13[16];
  sub_1B7484FC0(v190);
  v22 = v190[7];
  *(v21 + 6) = v190[6];
  *(v21 + 7) = v22;
  v23 = v190[9];
  *(v21 + 8) = v190[8];
  *(v21 + 9) = v23;
  v24 = v190[3];
  *(v21 + 2) = v190[2];
  *(v21 + 3) = v24;
  v25 = v190[5];
  *(v21 + 4) = v190[4];
  *(v21 + 5) = v25;
  v26 = v190[1];
  *v21 = v190[0];
  *(v21 + 1) = v26;
  v134 = v21;
  v27 = v13[17];
  v28 = type metadata accessor for RawBankConnectData.Actions();
  v29 = *(*(v28 - 8) + 56);
  v133 = v27;
  v29(v16 + v27, 1, 1, v28);
  v30 = (v16 + v13[20]);
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v130 = a1;
  v131 = v30;
  v129 = v13;
  v31 = v13[21];
  v136 = v16;
  v32 = (v16 + v31);
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v132 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5254();
  v33 = v191;
  sub_1B78023C8();
  if (v33)
  {
    v191 = v33;
    v37 = v136;
    __swift_destroy_boxed_opaque_existential_1(v130);
    sub_1B7205418(v37 + v137, &qword_1EB98EBD0);
    v38 = 0;
    goto LABEL_4;
  }

  v34 = v126;
  v119[1] = v28;
  *&v120 = v19;
  v121 = v5;
  LOBYTE(v180) = 0;
  v35 = v128;
  v36 = sub_1B7801DF8();
  v37 = v136;
  *v136 = v36;
  v37[1] = v50;
  LOBYTE(v180) = 1;
  v51 = sub_1B7801E08();
  v191 = 0;
  v52 = v127;
  *(v37 + 16) = v51 & 1;
  LOBYTE(v180) = 2;
  sub_1B71A7268(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v53 = v121;
  v119[0] = v12;
  v54 = v191;
  sub_1B7801DB8();
  v191 = v54;
  if (v54)
  {
    (*(v52 + 8))(v119[0], v35);
LABEL_11:
    v58 = 0;
    v59 = 0;
    v38 = 0;
    v124 = 0;
    v126 = 0;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v130);
    goto LABEL_13;
  }

  sub_1B7213740(v34, v37 + v137, &qword_1EB98EBD0);
  LOBYTE(v180) = 3;
  v55 = v124;
  v56 = v119[0];
  v57 = v191;
  sub_1B7801E48();
  v191 = v57;
  if (v57)
  {
    (*(v52 + 8))(v56, v35);
    goto LABEL_11;
  }

  v60 = v129;
  (*(v125 + 32))(v37 + v129[7], v55, v53);
  LOBYTE(v180) = 4;
  v61 = v191;
  v62 = sub_1B7801DF8();
  if (v61)
  {
    v191 = v61;
    (*(v52 + 8))(v56, v128);
    v59 = 0;
    v38 = 0;
    v124 = 0;
    v126 = 0;
    v58 = 1;
    goto LABEL_12;
  }

  v64 = (v37 + v60[8]);
  *v64 = v62;
  v64[1] = v63;
  LOBYTE(v180) = 5;
  v65 = sub_1B7801D78();
  v191 = 0;
  v66 = (v37 + v60[9]);
  *v66 = v65;
  v66[1] = v67;
  v126 = v67;
  LOBYTE(v151) = 6;
  sub_1B75864CC();
  v68 = v191;
  sub_1B7801E48();
  if (v68)
  {
    v191 = v68;
    (*(v52 + 8))(v56, v128);
    v38 = 0;
    v124 = 0;
LABEL_24:
    v58 = 1;
    v59 = 1;
    goto LABEL_12;
  }

  *(v37 + v60[10]) = v180;
  LOBYTE(v180) = 7;
  v69 = sub_1B7801D78();
  v191 = 0;
  v71 = (v37 + v60[11]);
  *v71 = v69;
  v71[1] = v70;
  v124 = v70;
  LOBYTE(v151) = 8;
  sub_1B75865C8();
  v72 = v128;
  v73 = v191;
  sub_1B7801E48();
  v191 = v73;
  if (v73)
  {
    (*(v52 + 8))(v56, v72);
    v38 = 0;
    goto LABEL_24;
  }

  *(v37 + v129[12]) = v180;
  LOBYTE(v151) = 9;
  sub_1B758661C();
  v74 = v191;
  sub_1B7801DB8();
  v191 = v74;
  if (v74 || (*(v136 + v120) = v180, v174 = 10, sub_1B76D53A4(), v75 = v191, sub_1B7801E48(), (v191 = v75) != 0))
  {
    (*(v127 + 8))(v119[0], v128);
    v38 = 0;
    v58 = 1;
    v59 = 1;
    v37 = v136;
    goto LABEL_12;
  }

  v76 = (v136 + v129[14]);
  v77 = v176;
  v78 = v178;
  v76[2] = v177;
  v76[3] = v78;
  v76[4] = v179;
  *v76 = v175;
  v76[1] = v77;
  v168 = 11;
  v79 = v191;
  sub_1B7801DB8();
  v191 = v79;
  if (v79 || (v164 = v171, v165 = v172, v162 = v169, v163 = v170, v80 = v135, v81 = *(v135 + 32), v82 = *(v135 + 48), v83 = *v135, v167[1] = *(v135 + 16), v167[2] = v81, v84 = *(v135 + 64), v167[3] = v82, v167[4] = v84, v166 = v173, v167[0] = v83, sub_1B7205418(v167, &qword_1EB990780), v85 = v165, v80[2] = v164, v80[3] = v85, v80[4] = v166, v86 = v163, *v80 = v162, v80[1] = v86, v161 = 12, sub_1B7586520(), v87 = v191, sub_1B7801DB8(), (v191 = v87) != 0) || (v147 = v186, v148 = v187, v149 = v188, v150 = v189, v143 = v182, v144 = v183, v145 = v184, v146 = v185, v141 = v180, v142 = v181, v88 = v134, v89 = *(v134 + 7), v157 = *(v134 + 6), v158 = v89, v90 = *(v134 + 9), v159 = *(v134 + 8), v160 = v90, v91 = *(v134 + 3), v153 = *(v134 + 2), v154 = v91, v92 = *(v134 + 5), v155 = *(v134 + 4), v156 = v92, v93 = *(v134 + 1), v151 = *v134, v152 = v93, sub_1B7205418(&v151, &qword_1EB995668), v94 = v148, *(v88 + 6) = v147, *(v88 + 7) = v94, v95 = v150, *(v88 + 8) = v149, *(v88 + 9) = v95, v96 = v144, *(v88 + 2) = v143, *(v88 + 3) = v96, v97 = v146, *(v88 + 4) = v145, *(v88 + 5) = v97, v98 = v142, *v88 = v141, *(v88 + 1) = v98, LOBYTE(v139) = 13, sub_1B71A7268(&qword_1EB99B828, type metadata accessor for RawBankConnectData.Actions), v99 = v191, sub_1B7801DB8(), (v191 = v99) != 0))
  {
    (*(v127 + 8))(v119[0], v128);
    v58 = 1;
    v59 = 1;
    v38 = 1;
    v37 = v136;
    goto LABEL_12;
  }

  sub_1B7213740(v123, v136 + v133, &qword_1EB990770);
  LOBYTE(v139) = 14;
  v100 = v191;
  v101 = sub_1B7801D78();
  v191 = v100;
  if (v100 || (v103 = (v136 + v129[18]), *v103 = v101, v103[1] = v102, LOBYTE(v139) = 15, v104 = v191, v105 = sub_1B7801D78(), (v191 = v104) != 0) || (v107 = (v136 + v129[19]), *v107 = v105, v107[1] = v106, v138 = 16, sub_1B76D53F8(), v108 = v191, sub_1B7801DB8(), (v191 = v108) != 0) || (v109 = v131, v110 = *v131, v111 = v131[1], v123 = v139, v120 = v140, sub_1B74204FC(v110, v111), v112 = v120, *v109 = v123, *(v109 + 1) = v112, v138 = 17, sub_1B76D544C(), v113 = v191, sub_1B7801DB8(), (v191 = v113) != 0))
  {
    (*(v127 + 8))(v119[0], v128);
    __swift_destroy_boxed_opaque_existential_1(v130);
    v58 = 1;
    v59 = 1;
    v38 = 1;
    v37 = v136;
LABEL_13:

    sub_1B7205418(v37 + v137, &qword_1EB98EBD0);
    if (v58)
    {
      (*(v125 + 8))(v37 + v129[7], v121);
      if ((v59 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (!v59)
    {
LABEL_4:

      if (!v38)
      {
LABEL_6:
        v42 = *(v135 + 48);
        v153 = *(v135 + 32);
        v154 = v42;
        v155 = *(v135 + 64);
        v43 = *(v135 + 16);
        v151 = *v135;
        v152 = v43;
        sub_1B7205418(&v151, &qword_1EB990780);
        v44 = *(v134 + 7);
        v186 = *(v134 + 6);
        v187 = v44;
        v45 = *(v134 + 9);
        v188 = *(v134 + 8);
        v189 = v45;
        v46 = *(v134 + 3);
        v182 = *(v134 + 2);
        v183 = v46;
        v47 = *(v134 + 5);
        v184 = *(v134 + 4);
        v185 = v47;
        v48 = *(v134 + 1);
        v180 = *v134;
        v181 = v48;
        sub_1B7205418(&v180, &qword_1EB995668);
        sub_1B7205418(v37 + v133, &qword_1EB990770);

        sub_1B74204FC(*v131, v131[1]);
        return sub_1B74204FC(*v132, v132[1]);
      }

LABEL_5:
      v39 = (v37 + v129[14]);
      v40 = v39[3];
      v182 = v39[2];
      v183 = v40;
      v184 = v39[4];
      v41 = v39[1];
      v180 = *v39;
      v181 = v41;
      sub_1B76CB914(&v180);
      goto LABEL_6;
    }

    if ((v38 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (*(v127 + 8))(v119[0], v128);
  v114 = v132;
  v115 = *v132;
  v116 = v132[1];
  v137 = v139;
  v135 = v140;
  sub_1B74204FC(v115, v116);
  v117 = v135;
  *v114 = v137;
  *(v114 + 1) = v117;
  v118 = v136;
  sub_1B76D5F80(v136, v122, type metadata accessor for RawBankConnectData.Transaction);
  __swift_destroy_boxed_opaque_existential_1(v130);
  return sub_1B76D5FE8(v118, type metadata accessor for RawBankConnectData.Transaction);
}

uint64_t RawBankConnectData.Transaction.Status.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x5A49524F48545541;
  v2 = 0x474E49444E4550;
  v3 = 0x44454B4F4F42;
  if (a1 != 3)
  {
    v3 = 0x44455443454A4552;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1330464077;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B76CDAA0()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76CDB7C()
{
  sub_1B7800798();
}

uint64_t sub_1B76CDC44()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76CDD1C@<X0>(_BYTE *a1@<X8>)
{
  result = _s10FinanceKit18RawBankConnectDataO11TransactionV6StatusO8rawValueAGSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1B76CDD4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000004445;
  v4 = 0x5A49524F48545541;
  v5 = 0xE700000000000000;
  v6 = 0x474E49444E4550;
  v7 = 0xE600000000000000;
  v8 = 0x44454B4F4F42;
  if (v2 != 3)
  {
    v8 = 0x44455443454A4552;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1330464077;
    v3 = 0xE400000000000000;
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

uint64_t sub_1B76CDE94(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000004445;
  v3 = 0x5A49524F48545541;
  v4 = *a1;
  v5 = *a2;
  v6 = 0xE700000000000000;
  v7 = 0x474E49444E4550;
  v8 = 0xE600000000000000;
  v9 = 0x44454B4F4F42;
  if (v4 != 3)
  {
    v9 = 0x44455443454A4552;
    v8 = 0xE800000000000000;
  }

  if (v4 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE400000000000000;
  v11 = 1330464077;
  if (!*a1)
  {
    v11 = 0x5A49524F48545541;
    v10 = 0xEA00000000004445;
  }

  if (*a1 <= 1u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 1)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  v14 = 0xE700000000000000;
  v15 = 0x474E49444E4550;
  v16 = 0xE600000000000000;
  v17 = 0x44454B4F4F42;
  if (v5 != 3)
  {
    v17 = 0x44455443454A4552;
    v16 = 0xE800000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v3 = 1330464077;
    v2 = 0xE400000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v3;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v14;
  }

  if (v12 == v18 && v13 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1B78020F8();
  }

  return v20 & 1;
}

uint64_t RawBankConnectData.Transaction.TransactionType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 16;
  if (v2 < 0x10)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t RawBankConnectData.Transaction.TransactionType.rawValue.getter()
{
  result = 0x454D5453554A4441;
  switch(*v0)
  {
    case 1:
      result = 0x5941505F4C4C4942;
      break;
    case 2:
      result = 0x4B43454843;
      break;
    case 3:
      result = 0x5449534F504544;
      break;
    case 4:
      result = 0x445F544345524944;
      break;
    case 5:
      result = 0x444E454449564944;
      break;
    case 6:
      result = 4539718;
      break;
    case 7:
      result = 0x5453455245544E49;
      break;
    case 8:
      result = 1312902988;
      break;
    case 9:
      result = 5459792;
      break;
    case 0xA:
      result = 0x444E55464552;
      break;
    case 0xB:
      result = 0x474E49444E415453;
      break;
    case 0xC:
      result = 0x524546534E415254;
      break;
    case 0xD:
      result = 0x4E574F4E4B4E55;
      break;
    case 0xE:
      result = 0x5741524448544957;
      break;
    case 0xF:
      result = 0x445241574552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B76CE21C()
{
  sub_1B78022F8();
  RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76CE284()
{
  RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  sub_1B7800798();
}

uint64_t sub_1B76CE2E8()
{
  sub_1B78022F8();
  RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76CE358@<X0>(uint64_t *a1@<X8>)
{
  result = RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B76CE440()
{
  v0 = RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  v2 = v1;
  if (v0 == RawBankConnectData.Transaction.TransactionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B78020F8();
  }

  return v5 & 1;
}

uint64_t RawBankConnectData.Transaction.BankTransactionCode.subCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.Transaction.BankTransactionCode.subCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static RawBankConnectData.Transaction.BankTransactionCode.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_1B76CE628()
{
  if (*v0)
  {
    return 0x65646F43627573;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_1B76CE65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65646F43627573 && a2 == 0xE700000000000000)
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

uint64_t sub_1B76CE738(uint64_t a1)
{
  v2 = sub_1B76D5A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76CE774(uint64_t a1)
{
  v2 = sub_1B76D5A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Transaction.BankTransactionCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B840);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5A98();
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

uint64_t RawBankConnectData.Transaction.BankTransactionCode.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5A98();
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

uint64_t RawBankConnectData.Transaction.ProprietaryBankTransactionCode.code.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.Transaction.ProprietaryBankTransactionCode.code.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.Transaction.ProprietaryBankTransactionCode.issuer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.Transaction.ProprietaryBankTransactionCode.issuer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static RawBankConnectData.Transaction.ProprietaryBankTransactionCode.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1B78020F8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B76CED24()
{
  if (*v0)
  {
    return 0x726575737369;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_1B76CED54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726575737369 && a2 == 0xE600000000000000)
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

uint64_t sub_1B76CEE2C(uint64_t a1)
{
  v2 = sub_1B76D5AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76CEE68(uint64_t a1)
{
  v2 = sub_1B76D5AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.Transaction.ProprietaryBankTransactionCode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B858);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5AEC();
  sub_1B78023F8();
  v12 = 0;
  v8 = v10[3];
  sub_1B7801F78();
  if (!v8)
  {
    v11 = 1;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.Transaction.ProprietaryBankTransactionCode.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B868);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5AEC();
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
  v12 = sub_1B7801D78();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B76CF268(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B78020F8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1B78020F8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t RawBankConnectData.MerchantInformation.merchantCategoryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.MerchantInformation.merchantCategoryCode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantInformation.standardIndustrialClassificationCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.MerchantInformation.standardIndustrialClassificationCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantInformation.categoryDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawBankConnectData.MerchantInformation.categoryDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantInformation.merchantName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RawBankConnectData.MerchantInformation.merchantName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantInformation.merchantNumber.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawBankConnectData.MerchantInformation.merchantNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantInformation.merchantAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1B7205588(v8, &v7, &qword_1EB995670);
}

__n128 RawBankConnectData.MerchantInformation.merchantAddress.setter(uint64_t a1)
{
  v3 = v1[8];
  v7[2] = v1[7];
  v7[3] = v3;
  v7[4] = v1[9];
  v4 = v1[6];
  v7[0] = v1[5];
  v7[1] = v4;
  sub_1B7205418(v7, &qword_1EB995670);
  v5 = *(a1 + 48);
  v1[7] = *(a1 + 32);
  v1[8] = v5;
  v1[9] = *(a1 + 64);
  result = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = result;
  return result;
}

uint64_t sub_1B76CF6A0()
{
  v1 = 0xD000000000000024;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return 0x746E61686372656DLL;
  }
}

uint64_t sub_1B76CF75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76D7154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76CF784(uint64_t a1)
{
  v2 = sub_1B76D5B40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76CF7C0(uint64_t a1)
{
  v2 = sub_1B76D5B40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.MerchantInformation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B870);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v16[7] = *(v1 + 16);
  v16[8] = v7;
  v9 = *(v1 + 40);
  v16[5] = *(v1 + 32);
  v16[6] = v8;
  v10 = *(v1 + 56);
  v16[3] = *(v1 + 48);
  v16[4] = v9;
  v11 = *(v1 + 72);
  v16[0] = *(v1 + 64);
  v16[1] = v11;
  v16[2] = v10;
  v12 = *(v1 + 128);
  v25 = *(v1 + 112);
  v26 = v12;
  v27 = *(v1 + 144);
  v13 = *(v1 + 96);
  v23 = *(v1 + 80);
  v24 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5B40();
  sub_1B78023F8();
  LOBYTE(v18) = 0;
  v14 = v16[9];
  sub_1B7801EF8();
  if (!v14)
  {
    LOBYTE(v18) = 1;
    sub_1B7801EF8();
    LOBYTE(v18) = 2;
    sub_1B7801EF8();
    LOBYTE(v18) = 3;
    sub_1B7801EF8();
    LOBYTE(v18) = 4;
    sub_1B7801EF8();
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v18 = v23;
    v19 = v24;
    v28 = 5;
    sub_1B7205588(&v23, v17, &qword_1EB995670);
    sub_1B76D5B94();
    sub_1B7801F38();
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[0] = v18;
    v17[1] = v19;
    sub_1B7205418(v17, &qword_1EB995670);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.MerchantInformation.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  if (*(v0 + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B7802318();
    if (v1)
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1B7802318();
  if (v2)
  {
LABEL_4:
    sub_1B7802318();
    sub_1B7800798();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1B7802318();
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_1B7802318();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1B7802318();
  sub_1B7800798();
  if (v4)
  {
LABEL_6:
    sub_1B7802318();
    sub_1B7800798();
    goto LABEL_12;
  }

LABEL_11:
  sub_1B7802318();
LABEL_12:
  if (v9 == 1)
  {
    return sub_1B7802318();
  }

  v11 = *(v0 + 96);
  v12 = *(v0 + 112);
  v13 = *(v0 + 128);
  v14 = *(v0 + 144);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  sub_1B7802318();
  v15[0] = v8;
  v15[1] = v9;
  v6 = *(v0 + 112);
  v16 = *(v0 + 96);
  v17 = v6;
  v7 = *(v0 + 144);
  v18 = *(v0 + 128);
  v19 = v7;
  sub_1B76D5BE8(v15, v20);
  RawBankConnectData.MerchantAddress.hash(into:)();
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = v14;
  v20[0] = v10;
  v20[1] = v11;
  return sub_1B76D5C20(v20);
}

uint64_t RawBankConnectData.MerchantInformation.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.MerchantInformation.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.MerchantInformation.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B888);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  v9 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B76D5B40();
  sub_1B78023C8();
  if (v2)
  {
    v97 = v2;
    v62 = 0uLL;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v10 = a2;
    LOBYTE(v85) = 0;
    *&v60 = sub_1B7801D78();
    *(&v60 + 1) = v20;
    LOBYTE(v85) = 1;
    *&v59 = sub_1B7801D78();
    *(&v59 + 1) = v21;
    LOBYTE(v85) = 2;
    v14 = sub_1B7801D78();
    v58 = v22;
    LOBYTE(v85) = 3;
    v23 = sub_1B7801D78();
    v25 = v24;
    v57 = v23;
    LOBYTE(v85) = 4;
    v26 = sub_1B7801D78();
    v97 = 0;
    *&v62 = v26;
    *(&v62 + 1) = v27;
    v74 = 5;
    sub_1B76D5C50();
    v28 = v97;
    sub_1B7801DB8();
    v97 = v28;
    if (!v28)
    {
      (*(v6 + 8))(v8, v5);
      v29 = v75;
      v30 = v77;
      v55 = v77;
      v56 = v75;
      v50 = v78;
      v51 = v76;
      v31 = v79;
      v32 = v81;
      v53 = v81;
      v54 = v79;
      v48 = v82;
      v49 = v80;
      v33 = v83;
      v52 = v83;
      v47 = v84;
      v63[0] = xmmword_1B78301C0;
      memset(&v63[1], 0, 64);
      sub_1B7205418(v63, &qword_1EB995670);
      v64 = v60;
      v65 = v59;
      *&v66 = v14;
      *(&v66 + 1) = v58;
      *&v67 = v57;
      *(&v67 + 1) = v25;
      v68 = v62;
      *&v69 = v29;
      v34 = v51;
      *(&v69 + 1) = v51;
      *&v70 = v30;
      v35 = v50;
      *(&v70 + 1) = v50;
      *&v71 = v31;
      v36 = v49;
      *(&v71 + 1) = v49;
      *&v72 = v32;
      v37 = v48;
      *(&v72 + 1) = v48;
      *&v73 = v33;
      v38 = v47;
      *(&v73 + 1) = v47;
      v40 = v71;
      v39 = v72;
      v41 = v69;
      v10[6] = v70;
      v10[7] = v40;
      v42 = v65;
      *v10 = v64;
      v10[1] = v42;
      v43 = v66;
      v44 = v67;
      v10[4] = v68;
      v10[5] = v41;
      v10[2] = v43;
      v10[3] = v44;
      v45 = v73;
      v10[8] = v39;
      v10[9] = v45;
      sub_1B758641C(&v64, &v85);
      __swift_destroy_boxed_opaque_existential_1(v61);
      v85 = v60;
      v86 = v59;
      v87 = v14;
      v88 = v58;
      v89 = v57;
      v90 = v25;
      v91 = v62;
      *&v92 = v56;
      *(&v92 + 1) = v34;
      *&v93 = v55;
      *(&v93 + 1) = v35;
      *&v94 = v54;
      *(&v94 + 1) = v36;
      *&v95 = v53;
      *(&v95 + 1) = v37;
      *&v96 = v52;
      *(&v96 + 1) = v38;
      return sub_1B7586478(&v85);
    }

    (*(v6 + 8))(v8, v5);
    v17 = *(&v60 + 1);
    v18 = v60;
    v15 = *(&v59 + 1);
    v16 = v59;
    v11 = v25;
    v12 = v57;
    v13 = v58;
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  *&v85 = v18;
  *(&v85 + 1) = v17;
  *&v86 = v16;
  *(&v86 + 1) = v15;
  v87 = v14;
  v88 = v13;
  v89 = v12;
  v90 = v11;
  v91 = v62;
  v92 = xmmword_1B78301C0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  return sub_1B7586478(&v85);
}

uint64_t sub_1B76D0224()
{
  sub_1B78022F8();
  RawBankConnectData.MerchantInformation.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B76D0268()
{
  sub_1B78022F8();
  RawBankConnectData.MerchantInformation.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.MerchantAddress.addressLine.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.MerchantAddress.addressLine.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantAddress.city.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawBankConnectData.MerchantAddress.city.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantAddress.stateOrSection.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawBankConnectData.MerchantAddress.stateOrSection.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantAddress.zipOrPostCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RawBankConnectData.MerchantAddress.zipOrPostCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t RawBankConnectData.MerchantAddress.countryCode.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawBankConnectData.MerchantAddress.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1B76D0550()
{
  v1 = *v0;
  v2 = 0x4C73736572646461;
  v3 = 0x53724F6574617473;
  v4 = 0x736F50724F70697ALL;
  if (v1 != 3)
  {
    v4 = 0x437972746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
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

uint64_t sub_1B76D0604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76D7358(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76D062C(uint64_t a1)
{
  v2 = sub_1B76D5CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76D0668(uint64_t a1)
{
  v2 = sub_1B76D5CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.MerchantAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B898);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5CA4();
  sub_1B78023F8();
  v18 = 0;
  v11 = v13[9];
  sub_1B7801EF8();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1B7801EF8();
  v16 = 2;
  sub_1B7801EF8();
  v15 = 3;
  sub_1B7801EF8();
  v14 = 4;
  sub_1B7801EF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.MerchantAddress.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  if (v0[1])
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B7802318();
    if (v1)
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_1B7802318();
  if (v2)
  {
LABEL_4:
    sub_1B7802318();
    sub_1B7800798();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_1B7802318();
    if (v4)
    {
      goto LABEL_6;
    }

    return sub_1B7802318();
  }

LABEL_11:
  sub_1B7802318();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_1B7802318();
  sub_1B7800798();
  if (!v4)
  {
    return sub_1B7802318();
  }

LABEL_6:
  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t RawBankConnectData.MerchantAddress.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.MerchantAddress.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.MerchantAddress.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B8A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5CA4();
  sub_1B78023C8();
  if (v2)
  {
    v34 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = 0uLL;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    LOBYTE(v40) = 0;
    *&v33 = sub_1B7801D78();
    *(&v33 + 1) = v10;
    LOBYTE(v40) = 1;
    v11 = sub_1B7801D78();
    v30 = a2;
    v32 = v11;
    v31 = v12;
    LOBYTE(v40) = 2;
    v13 = sub_1B7801D78();
    v15 = v14;
    LOBYTE(v40) = 3;
    v16 = sub_1B7801D78();
    v18 = v17;
    v49 = 4;
    v19 = sub_1B7801D78();
    v34 = 0;
    v20 = v19;
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    v24 = v33;
    v35 = v33;
    v25 = v31;
    *&v36 = v32;
    *(&v36 + 1) = v31;
    *&v37 = v13;
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v18;
    *&v39 = v20;
    *(&v39 + 1) = v23;
    v26 = v38;
    v27 = v30;
    v30[2] = v37;
    v27[3] = v26;
    v27[4] = v39;
    v28 = v36;
    *v27 = v35;
    v27[1] = v28;
    sub_1B76D5BE8(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = __PAIR128__(*(&v33 + 1), v24);
    v41 = v32;
    v42 = v25;
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v18;
    v47 = v20;
    v48 = v23;
  }

  return sub_1B76D5C20(&v40);
}

uint64_t sub_1B76D0E64()
{
  sub_1B78022F8();
  RawBankConnectData.MerchantAddress.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B76D0EA8()
{
  sub_1B78022F8();
  RawBankConnectData.MerchantAddress.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.TransactionsResponse.page.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1B76D5CF8(v2, v3);
}

uint64_t RawBankConnectData.TransactionsResponse.page.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B76D5D0C(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RawBankConnectData.TransactionsResponse.transactions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B76D0F9C()
{
  if (*v0)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_1B76D0FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
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

uint64_t sub_1B76D10B8(uint64_t a1)
{
  v2 = sub_1B76D5D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76D10F4(uint64_t a1)
{
  v2 = sub_1B76D5D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionsResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B8B0);
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5CF8(v7, v8);
  sub_1B76D5D20();
  sub_1B78023F8();
  v12 = v7;
  v13 = v8;
  v14 = 0;
  sub_1B76D5D74();
  sub_1B7801F38();
  sub_1B76D5D0C(v12, v13);
  if (!v2)
  {
    v12 = v10;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B8C8);
    sub_1B76D5E1C(&qword_1EB99B8D0, &qword_1EB996D70);
    sub_1B7801FC8();
  }

  return (*(v11 + 8))(v6, v4);
}

uint64_t RawBankConnectData.TransactionsResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B8D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5D20();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B76D5D0C(0, 1);
  }

  else
  {
    v14 = 0;
    sub_1B76D5DC8();
    sub_1B7801DB8();
    v9 = v13[0];
    v10 = v13[1];
    sub_1B76D5D0C(0, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B8C8);
    v14 = 1;
    sub_1B76D5E1C(&qword_1EB99B8E8, &qword_1EB99B8F0);
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v11 = v13[0];
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v11;
    sub_1B76D5CF8(v9, v10);

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B76D5D0C(v9, v10);
  }
}

uint64_t RawBankConnectData.TransactionsResponse.PageMetadata.nextCursor.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawBankConnectData.TransactionsResponse.PageMetadata.nextCursor.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionsResponse.PageMetadata.init(nextCursor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t static RawBankConnectData.TransactionsResponse.PageMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1B78020F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B76D1718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737275437478656ELL && a2 == 0xEA0000000000726FLL)
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

uint64_t sub_1B76D17A8(uint64_t a1)
{
  v2 = sub_1B76D5EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76D17E4(uint64_t a1)
{
  v2 = sub_1B76D5EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionsResponse.PageMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B8F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5EB8();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.TransactionsResponse.PageMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B908);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5EB8();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801D78();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B76D1AE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B8F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5EB8();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.TransactionsRequestBody.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.TransactionsRequestBody(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.TransactionsRequestBody.startTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.TransactionsRequestBody(0) + 20);
  v4 = sub_1B77FF988();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.TransactionsRequestBody.cursor.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.TransactionsRequestBody(0) + 28));

  return v1;
}

uint64_t RawBankConnectData.TransactionsRequestBody.cursor.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.TransactionsRequestBody(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionsRequestBody.init(accountId:startTime:endTime:cursor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v12 = type metadata accessor for RawBankConnectData.TransactionsRequestBody(0);
  v13 = v12[6];
  v14 = sub_1B77FF988();
  v15 = *(v14 - 8);
  (*(v15 + 56))(&a7[v13], 1, 1, v14);
  v16 = &a7[v12[7]];
  *a7 = a1;
  *(a7 + 1) = a2;
  (*(v15 + 32))(&a7[v12[5]], a3, v14);
  result = sub_1B7213740(a4, &a7[v13], &qword_1EB98EBD0);
  *v16 = a5;
  *(v16 + 1) = a6;
  return result;
}

uint64_t sub_1B76D2080()
{
  v1 = 0x49746E756F636361;
  v2 = 0x656D6954646E65;
  if (*v0 != 2)
  {
    v2 = 0x726F73727563;
  }

  if (*v0)
  {
    v1 = 0x6D69547472617473;
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

uint64_t sub_1B76D20F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76D7528(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76D2120(uint64_t a1)
{
  v2 = sub_1B76D5F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76D215C(uint64_t a1)
{
  v2 = sub_1B76D5F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionsRequestBody.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B910);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5F2C();
  sub_1B78023F8();
  v12 = 0;
  sub_1B7801F78();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.TransactionsRequestBody(0);
    v11 = 1;
    sub_1B77FF988();
    sub_1B71A7268(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801FC8();
    v10 = 2;
    sub_1B7801F38();
    v9 = 3;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.TransactionsRequestBody.hash(into:)()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1B7800798();
  v8 = type metadata accessor for RawBankConnectData.TransactionsRequestBody(0);
  sub_1B71A7268(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
  sub_1B7800768();
  sub_1B7205588(v0 + *(v8 + 24), v7, &qword_1EB98EBD0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1B7802318();
    sub_1B7800768();
    (*(v2 + 8))(v4, v1);
  }

  if (!*(v0 + *(v8 + 28) + 8))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();
  return sub_1B7800798();
}

uint64_t RawBankConnectData.TransactionsRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.TransactionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.TransactionsRequestBody.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v27 - v4;
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B920);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = v27 - v9;
  v11 = type metadata accessor for RawBankConnectData.TransactionsRequestBody(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = *(v6 + 56);
  v35 = *(v12 + 24);
  v36 = (v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14(v36 + v35, 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D5F2C();
  v32 = v10;
  v15 = v34;
  sub_1B78023C8();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(v36 + v35, &qword_1EB98EBD0);
  }

  else
  {
    v16 = v8;
    v17 = v30;
    v18 = v31;
    v34 = v11;
    v28 = v6;
    v40 = 0;
    v19 = sub_1B7801DF8();
    v20 = v36;
    *v36 = v19;
    *(v20 + 8) = v21;
    v27[2] = v21;
    v39 = 1;
    v27[1] = sub_1B71A7268(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    sub_1B7801E48();
    (*(v28 + 32))(v20 + *(v34 + 20), v16, v5);
    v38 = 2;
    sub_1B7801DB8();
    sub_1B7213740(v18, v20 + v35, &qword_1EB98EBD0);
    v37 = 3;
    v22 = sub_1B7801D78();
    v24 = v23;
    v25 = (v20 + *(v34 + 28));
    (*(v17 + 8))(v32, v33);
    *v25 = v22;
    v25[1] = v24;
    sub_1B76D5F80(v20, v29, type metadata accessor for RawBankConnectData.TransactionsRequestBody);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B76D5FE8(v20, type metadata accessor for RawBankConnectData.TransactionsRequestBody);
  }
}

uint64_t sub_1B76D2B84()
{
  sub_1B78022F8();
  RawBankConnectData.TransactionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B76D2BC8()
{
  sub_1B78022F8();
  RawBankConnectData.TransactionsRequestBody.hash(into:)();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit18RawBankConnectDataO19MerchantInformationV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  v12 = *(a1 + 8);
  v110[2] = *(a1 + 7);
  v110[3] = v12;
  v110[4] = *(a1 + 9);
  v13 = *(a1 + 6);
  v110[0] = *(a1 + 5);
  v110[1] = v13;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v19 = a2[4];
  v18 = a2[5];
  v21 = a2[6];
  v20 = a2[7];
  v22 = a2[8];
  v23 = a2[9];
  v24 = *(a2 + 9);
  v111[3] = *(a2 + 8);
  v111[4] = v24;
  v25 = *(a2 + 7);
  v111[1] = *(a2 + 6);
  v111[2] = v25;
  v111[0] = *(a2 + 5);
  if (v3)
  {
    if (!v15)
    {
      goto LABEL_43;
    }

    if (v2 != v14 || v3 != v15)
    {
      v84 = a1;
      v86 = v9;
      v79 = v22;
      v80 = v8;
      v77 = v11;
      v78 = v23;
      v76 = v10;
      v82 = a2;
      v26 = v20;
      v27 = v21;
      v28 = v6;
      v29 = v7;
      v30 = v18;
      v31 = v19;
      v32 = v16;
      v33 = sub_1B78020F8();
      v16 = v32;
      v19 = v31;
      v18 = v30;
      v7 = v29;
      v6 = v28;
      v21 = v27;
      v20 = v26;
      v8 = v80;
      a2 = v82;
      v10 = v76;
      v11 = v77;
      v23 = v78;
      v22 = v79;
      v34 = v33;
      a1 = v84;
      v9 = v86;
      if ((v34 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_43;
  }

  if (v4)
  {
    if (!v17)
    {
      goto LABEL_43;
    }

    if (v5 != v16 || v4 != v17)
    {
      v85 = a1;
      v87 = v9;
      v81 = v18;
      v83 = a2;
      v35 = v20;
      v36 = v21;
      v37 = v6;
      v38 = v7;
      v39 = v19;
      v40 = sub_1B78020F8();
      v19 = v39;
      v18 = v81;
      a2 = v83;
      v7 = v38;
      v6 = v37;
      v21 = v36;
      v20 = v35;
      v41 = v40;
      a1 = v85;
      v9 = v87;
      if ((v41 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_43;
  }

  if (v7)
  {
    if (!v18)
    {
      goto LABEL_43;
    }

    if (v6 != v19 || v7 != v18)
    {
      v42 = a1;
      v43 = a2;
      v44 = v20;
      v45 = v21;
      v46 = sub_1B78020F8();
      v21 = v45;
      v20 = v44;
      a2 = v43;
      v47 = v46;
      a1 = v42;
      if ((v47 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v18)
  {
    goto LABEL_43;
  }

  if (v9)
  {
    if (!v20)
    {
      goto LABEL_43;
    }

    if (v8 != v21 || v9 != v20)
    {
      v48 = a1;
      v49 = v22;
      v50 = a2;
      v51 = sub_1B78020F8();
      a2 = v50;
      v22 = v49;
      v52 = v51;
      a1 = v48;
      if ((v52 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v20)
  {
    goto LABEL_43;
  }

  if (v11)
  {
    if (!v23)
    {
      goto LABEL_43;
    }

    if (v10 != v22 || v11 != v23)
    {
      v53 = a1;
      v54 = a2;
      v55 = sub_1B78020F8();
      a2 = v54;
      v56 = v55;
      a1 = v53;
      if ((v56 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_43;
  }

  v57 = v110[0];
  v58 = v111[0];
  if (*(&v110[0] + 1) == 1)
  {
    if (*(&v111[0] + 1) == 1)
    {
      v59 = 1;
      *&v100 = *&v110[0];
      *(&v100 + 1) = 1;
      v60 = *(a1 + 7);
      v101 = *(a1 + 6);
      v102 = v60;
      v61 = *(a1 + 9);
      v103 = *(a1 + 8);
      v104 = v61;
      sub_1B7205588(v110, &v95, &qword_1EB995670);
      sub_1B7205588(v111, &v95, &qword_1EB995670);
      v62 = &v100;
LABEL_46:
      sub_1B7205418(v62, &qword_1EB995670);
      return v59 & 1;
    }

    v66 = a2;
    v65 = a1;
    sub_1B7205588(v110, &v100, &qword_1EB995670);
    sub_1B7205588(v111, &v100, &qword_1EB995670);
  }

  else
  {
    v100 = v110[0];
    v63 = *(a1 + 7);
    v101 = *(a1 + 6);
    v102 = v63;
    v64 = *(a1 + 9);
    v65 = a1;
    v103 = *(a1 + 8);
    v104 = v64;
    v97 = v63;
    v98 = v103;
    v99 = v64;
    v95 = v110[0];
    v96 = v101;
    if (*(&v111[0] + 1) != 1)
    {
      v72 = *(a2 + 7);
      v91 = *(a2 + 6);
      v92 = v72;
      v73 = *(a2 + 9);
      v93 = *(a2 + 8);
      v94 = v73;
      v90 = v111[0];
      v59 = _s10FinanceKit21CascadeExtractedOrderV7AddressV2eeoiySbAE_AEtFZ_0(&v95, &v90);
      v88[2] = v92;
      v88[3] = v93;
      v88[4] = v94;
      v88[0] = v90;
      v88[1] = v91;
      sub_1B7205588(v110, v89, &qword_1EB995670);
      sub_1B7205588(v111, v89, &qword_1EB995670);
      sub_1B7205588(&v100, v89, &qword_1EB995670);
      sub_1B76D5C20(v88);
      v89[2] = v97;
      v89[3] = v98;
      v89[4] = v99;
      v89[0] = v95;
      v89[1] = v96;
      sub_1B76D5C20(v89);
      v90 = v57;
      v74 = v65[7];
      v91 = v65[6];
      v92 = v74;
      v75 = v65[9];
      v93 = v65[8];
      v94 = v75;
      v62 = &v90;
      goto LABEL_46;
    }

    v66 = a2;
    v92 = v102;
    v93 = v103;
    v94 = v104;
    v90 = v100;
    v91 = v101;
    sub_1B7205588(v110, v89, &qword_1EB995670);
    sub_1B7205588(v111, v89, &qword_1EB995670);
    sub_1B7205588(&v100, v89, &qword_1EB995670);
    sub_1B76D5C20(&v90);
  }

  v100 = v57;
  v67 = v65[7];
  v101 = v65[6];
  v102 = v67;
  v68 = v65[9];
  v103 = v65[8];
  v104 = v68;
  v105 = v58;
  v69 = v66[7];
  v106 = v66[6];
  v107 = v69;
  v70 = v66[9];
  v108 = v66[8];
  v109 = v70;
  sub_1B7205418(&v100, &qword_1EB99BA88);
LABEL_43:
  v59 = 0;
  return v59 & 1;
}

uint64_t _s10FinanceKit18RawBankConnectDataO23TransactionsRequestBodyV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for RawBankConnectData.TransactionsRequestBody(0);
  if ((sub_1B77FF918() & 1) == 0)
  {
    return 0;
  }

  v28 = v7;
  v29 = v14;
  v15 = v5;
  v16 = *(v14 + 24);
  v17 = *(v11 + 48);
  sub_1B7205588(a1 + v16, v13, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v16, &v13[v17], &qword_1EB98EBD0);
  v18 = *(v15 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1B7205588(v13, v10, &qword_1EB98EBD0);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      v20 = v28;
      (*(v15 + 32))(v28, &v13[v17], v4);
      sub_1B71A7268(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v21 = sub_1B7800828();
      v22 = *(v15 + 8);
      v22(v20, v4);
      v22(v10, v4);
      sub_1B7205418(v13, &qword_1EB98EBD0);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v15 + 8))(v10, v4);
LABEL_10:
    sub_1B7205418(v13, &qword_1EB98FCE0);
    return 0;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1B7205418(v13, &qword_1EB98EBD0);
LABEL_14:
  v23 = *(v29 + 28);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (v27 && (*v24 == *v26 && v25 == v27 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v27)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10FinanceKit18RawBankConnectDataO20TransactionsResponseV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v3 != 1)
  {
    if (v6 == 1)
    {
      sub_1B76D5CF8(*a1, v3);
      sub_1B76D5CF8(v5, 1);
      sub_1B76D5CF8(v2, v3);

LABEL_7:
      sub_1B76D5D0C(v2, v3);
      v8 = v5;
      v9 = v6;
LABEL_19:
      sub_1B76D5D0C(v8, v9);
      return 0;
    }

    if (v3)
    {
      if (v6)
      {
        if (v2 == v5 && v3 == v6)
        {
          sub_1B76D5CF8(*a1, v3);
          sub_1B76D5CF8(v2, v3);
          sub_1B76D5CF8(v2, v3);
          v10 = v2;
          v11 = v3;
LABEL_15:
          sub_1B76D5D0C(v10, v11);
LABEL_21:

          goto LABEL_22;
        }

        v14 = sub_1B78020F8();
        sub_1B76D5CF8(v2, v3);
        sub_1B76D5CF8(v5, v6);
        sub_1B76D5CF8(v2, v3);
        sub_1B76D5D0C(v5, v6);
        if (v14)
        {
          goto LABEL_21;
        }

LABEL_18:

        v8 = v2;
        v9 = v3;
        goto LABEL_19;
      }

      sub_1B76D5CF8(*a1, v3);
      v12 = v3;
    }

    else
    {
      sub_1B76D5CF8(*a1, 0);
      v12 = 0;
      if (!v6)
      {
        sub_1B76D5CF8(v5, 0);
        sub_1B76D5CF8(v2, 0);
        v10 = v5;
        v11 = 0;
        goto LABEL_15;
      }
    }

    sub_1B76D5CF8(v5, v6);
    sub_1B76D5CF8(v2, v12);
    sub_1B76D5D0C(v5, v6);
    goto LABEL_18;
  }

  sub_1B76D5CF8(*a1, 1);
  if (v6 != 1)
  {
    sub_1B76D5CF8(v5, v6);
    goto LABEL_7;
  }

  v3 = 1;
  sub_1B76D5CF8(v5, 1);
LABEL_22:
  sub_1B76D5D0C(v2, v3);

  return sub_1B731F7AC(v4, v7);
}

uint64_t _s10FinanceKit18RawBankConnectDataO11TransactionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Actions();
  v191 = *(v4 - 8);
  v192 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v189 = &v178 - v8;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BA90);
  MEMORY[0x1EEE9AC00](v190);
  v193 = &v178 - v9;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v178 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v178 - v18;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B78020F8() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v186 = v6;
  v20 = type metadata accessor for RawBankConnectData.Transaction(0);
  v194 = a2;
  v21 = *(v20 + 24);
  v22 = *(v17 + 48);
  v187 = v20;
  v188 = a1;
  sub_1B7205588(a1 + v21, v19, &qword_1EB98EBD0);
  v23 = v194 + v21;
  v24 = v194;
  sub_1B7205588(v23, &v19[v22], &qword_1EB98EBD0);
  v25 = *(v11 + 48);
  if (v25(v19, 1, v10) == 1)
  {
    if (v25(&v19[v22], 1, v10) == 1)
    {
      sub_1B7205418(v19, &qword_1EB98EBD0);
      goto LABEL_12;
    }

LABEL_10:
    sub_1B7205418(v19, &qword_1EB98FCE0);
    return 0;
  }

  sub_1B7205588(v19, v16, &qword_1EB98EBD0);
  if (v25(&v19[v22], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_10;
  }

  (*(v11 + 32))(v13, &v19[v22], v10);
  sub_1B71A7268(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v26 = sub_1B7800828();
  v27 = *(v11 + 8);
  v27(v13, v10);
  v27(v16, v10);
  sub_1B7205418(v19, &qword_1EB98EBD0);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v29 = v187;
  v28 = v188;
  if ((sub_1B77FF918() & 1) == 0)
  {
    return 0;
  }

  v30 = v29[8];
  v31 = *(v28 + v30);
  v32 = *(v28 + v30 + 8);
  v33 = (v24 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  v34 = v29[9];
  v35 = (v28 + v34);
  v36 = *(v28 + v34 + 8);
  v37 = (v24 + v34);
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

  v39 = v29[10];
  v40 = *(v28 + v39);
  v41 = *(v24 + v39);
  if (v40)
  {
    v42 = 0x544944455243;
  }

  else
  {
    v42 = 0x5449424544;
  }

  if (v40)
  {
    v43 = 0xE600000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  if (v41)
  {
    v44 = 0x544944455243;
  }

  else
  {
    v44 = 0x5449424544;
  }

  if (v41)
  {
    v45 = 0xE600000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  if (v42 == v44 && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1B78020F8();

    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  v47 = v29[11];
  v48 = (v28 + v47);
  v49 = *(v28 + v47 + 8);
  v50 = (v24 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  if (sub_1B72C1B00(*(v28 + v29[12]), *(v24 + v29[12])))
  {
    v52 = v29[13];
    v53 = *(v28 + v52);
    v54 = *(v24 + v52);
    if (v53 == 16)
    {
      if (v54 != 16)
      {
        return 0;
      }
    }

    else
    {
      if (v54 == 16)
      {
        return 0;
      }

      LOBYTE(v247[0]) = v53;
      LOBYTE(v239[0]) = v54;
      v55 = RawBankConnectData.Transaction.TransactionType.rawValue.getter();
      v57 = v56;
      if (v55 == RawBankConnectData.Transaction.TransactionType.rawValue.getter() && v57 == v58)
      {
      }

      else
      {
        v59 = sub_1B78020F8();

        if ((v59 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v60 = (v28 + v29[14]);
    v61 = v60[4];
    *&v279[32] = v60[3];
    *&v279[48] = v61;
    v62 = v60[2];
    *v279 = v60[1];
    *&v279[16] = v62;
    v278 = *v60;
    v63 = (v24 + v29[14]);
    v64 = v63[4];
    *&v281[32] = v63[3];
    *&v281[48] = v64;
    v65 = v63[2];
    *v281 = v63[1];
    *&v281[16] = v65;
    v280 = *v63;
    sub_1B76CB848(&v278, v247);
    sub_1B76CB848(&v280, v247);
    if ((MEMORY[0x1B8CA5970](v278, *(&v278 + 1), *v279, v280, *(&v280 + 1), *v281) & 1) == 0)
    {
      sub_1B76CB914(&v280);
      sub_1B76CB914(&v278);
      return 0;
    }

    v239[0] = *&v279[8];
    v239[1] = *&v279[24];
    v239[2] = *&v279[40];
    *&v239[3] = *&v279[56];
    v257 = *&v281[8];
    v258 = *&v281[24];
    v259 = *&v281[40];
    *&v260 = *&v281[56];
    sub_1B76CB848(&v278, v247);
    sub_1B76CB848(&v280, v247);
    v66 = _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(v239, &v257);
    v274[0] = v257;
    v274[1] = v258;
    v274[2] = v259;
    v275 = v260;
    sub_1B7321ADC(v274);
    v276[0] = v239[0];
    v276[1] = v239[1];
    v276[2] = v239[2];
    v277 = *&v239[3];
    sub_1B7321ADC(v276);
    sub_1B76CB914(&v280);
    sub_1B76CB914(&v278);
    if (v66)
    {
      v67 = (v28 + v29[15]);
      v68 = v67[3];
      v269[4] = v67[4];
      v70 = v67[1];
      v69 = v67[2];
      v269[3] = v68;
      v269[2] = v69;
      v71 = *v67;
      v72 = v67[2];
      v73 = *v67;
      v269[1] = v67[1];
      v269[0] = v71;
      v74 = (v24 + v29[15]);
      v75 = v74[3];
      v273 = v74[4];
      v76 = v74[1];
      v271 = v74[2];
      v272 = v75;
      v77 = *v74;
      v78 = *v74;
      v270[1] = v76;
      v270[0] = v77;
      v229 = v73;
      v230 = v70;
      v231 = v72;
      v268 = v67[4];
      v220 = v76;
      v221 = v271;
      *&v232 = *(v67 + 6);
      v79 = *(&v68 + 1);
      *&v222 = *(v74 + 6);
      v219 = v78;
      v80 = *(&v272 + 1);
      v267 = v74[4];
      if (*(&v68 + 1))
      {
        v81 = v67[1];
        v247[0] = *v67;
        v247[1] = v81;
        v247[2] = v67[2];
        *&v247[3] = *(v67 + 6);
        *(&v247[3] + 1) = *(&v68 + 1);
        v247[4] = v67[4];
        v82 = LODWORD(v247[0]);
        v83 = WORD2(v247[0]);
        v84 = WORD3(v247[0]);
        v85 = WORD4(v247[0]);
        v86 = v81;
        v87 = WORD1(v81);
        *(v250 + 12) = v247[4];
        v250[0] = *(&v247[3] + 4);
        v249 = *(&v247[2] + 4);
        v248 = *(&v247[1] + 4);
        if (*(&v272 + 1))
        {
          v184 = *(&v68 + 1);
          v88 = v74[1];
          v239[0] = *v74;
          v239[1] = v88;
          v239[2] = v74[2];
          *&v239[3] = *(v74 + 6);
          *(&v239[3] + 1) = *(&v272 + 1);
          v239[4] = v74[4];
          v180 = v88;
          v179 = v239[0];
          *(&v240[2] + 12) = v239[4];
          v240[2] = *(&v239[3] + 4);
          v240[1] = *(&v239[2] + 4);
          v240[0] = *(&v239[1] + 4);
          *&v212 = *(&v247[4] + 1);
          v210 = *(&v247[2] + 8);
          v211 = *(&v247[3] + 8);
          v209 = *(&v247[1] + 8);
          v181 = WORD5(v247[0]);
          v185 = WORD6(v247[0]);
          v89 = HIWORD(v247[0]);
          v90 = v86;
          sub_1B7205588(v269, &v257, &qword_1EB990780);
          sub_1B7205588(v270, &v257, &qword_1EB990780);
          v91 = v83;
          v92 = v84;
          v93 = v87;
          v94 = v181;
          v95 = v85;
          v96 = v185;
          sub_1B7205588(v247, &v257, &qword_1EB990780);
          v182 = v82;
          v183 = v89;
          v97 = MEMORY[0x1B8CA5970](v82 | (v91 << 32) | (v92 << 48), v95 | (v94 << 16) | (v96 << 32) | (v89 << 48), v90 | (v93 << 16), v179, *(&v179 + 1), v180);
          v98 = v90;
          if (v97)
          {
            v199 = v209;
            v200 = v210;
            v201 = v211;
            *&v202 = v212;
            v195 = *(v240 + 4);
            v196 = *(&v240[1] + 4);
            v197 = *(&v240[2] + 4);
            v198 = *(&v240[3] + 4);
            sub_1B7321A3C(&v209, &v257);
            sub_1B7205588(v239, &v257, &qword_1EB990780);
            v99 = _s10FinanceKit18RawBankConnectDataO8CurrencyV2eeoiySbAE_AEtFZ_0(&v199, &v195);
            v251 = v195;
            v252[0] = v196;
            v252[1] = v197;
            *&v252[2] = v198;
            sub_1B7321ADC(&v251);
            v257 = v199;
            v258 = v200;
            v259 = v201;
            *&v260 = v202;
            sub_1B7321ADC(&v257);
            LOWORD(v96) = v185;
            sub_1B7205418(v239, &qword_1EB990780);
            if (v99)
            {
              *(v252 + 4) = v248;
              LODWORD(v251) = v182;
              WORD2(v251) = v91;
              WORD3(v251) = v92;
              WORD4(v251) = v95;
              WORD5(v251) = v94;
              WORD6(v251) = v96;
              HIWORD(v251) = v183;
              LOWORD(v252[0]) = v98;
              WORD1(v252[0]) = v93;
              *(&v252[1] + 4) = v249;
              *(&v252[2] + 4) = v250[0];
              v252[3] = *(v250 + 12);
              sub_1B76CB914(&v251);
              v257 = v229;
              v258 = v230;
              v259 = v231;
              *&v260 = v232;
              *(&v260 + 1) = v184;
              v261 = v268;
              sub_1B7205418(&v257, &qword_1EB990780);
              v24 = v194;
              v29 = v187;
              goto LABEL_72;
            }
          }

          else
          {
            sub_1B7205418(v239, &qword_1EB990780);
          }

          *(v252 + 4) = v248;
          LODWORD(v251) = v182;
          WORD2(v251) = v91;
          WORD3(v251) = v92;
          WORD4(v251) = v95;
          WORD5(v251) = v94;
          WORD6(v251) = v96;
          HIWORD(v251) = v183;
          LOWORD(v252[0]) = v98;
          WORD1(v252[0]) = v93;
          *(&v252[1] + 4) = v249;
          *(&v252[2] + 4) = v250[0];
          v252[3] = *(v250 + 12);
          sub_1B76CB914(&v251);
          v257 = v229;
          v258 = v230;
          v259 = v231;
          *&v260 = v232;
          *(&v260 + 1) = v184;
          v261 = v268;
          sub_1B7205418(&v257, &qword_1EB990780);
          return 0;
        }

        v239[0] = v247[0];
        LODWORD(v239[1]) = v81;
        *(&v239[1] + 4) = *(&v247[1] + 4);
        *(&v239[2] + 4) = *(&v247[2] + 4);
        *(&v239[3] + 4) = *(&v247[3] + 4);
        v239[4] = v247[4];
        sub_1B7205588(v269, &v257, &qword_1EB990780);
        sub_1B7205588(v270, &v257, &qword_1EB990780);
        sub_1B7205588(v247, &v257, &qword_1EB990780);
        sub_1B76CB914(v239);
      }

      else
      {
        if (!*(&v272 + 1))
        {
          v101 = v67[1];
          v247[0] = *v67;
          v247[1] = v101;
          v247[2] = v67[2];
          v247[3] = *(v67 + 6);
          v247[4] = v67[4];
          sub_1B7205588(v269, v239, &qword_1EB990780);
          sub_1B7205588(v270, v239, &qword_1EB990780);
          sub_1B7205418(v247, &qword_1EB990780);
LABEL_72:
          v102 = (v188 + v29[16]);
          v103 = v102[3];
          v104 = v102[4];
          v105 = v104;
          v250[3] = v102[5];
          v250[2] = v104;
          v106 = v102[7];
          v107 = v102[8];
          v108 = v107;
          v250[7] = v102[9];
          v250[6] = v107;
          v109 = v102[6];
          v110 = v102[5];
          v250[5] = v102[7];
          v250[4] = v109;
          v111 = v102[3];
          v112 = v102[1];
          v250[0] = v102[2];
          v250[1] = v111;
          v113 = v102[1];
          v248 = *v102;
          v249 = v113;
          v114 = (v24 + v29[16]);
          v115 = v114[7];
          v116 = v114[5];
          v253 = v114[6];
          v254 = v115;
          v117 = v114[7];
          v118 = v114[9];
          v255 = v114[8];
          v256 = v118;
          v119 = v114[3];
          v120 = v114[1];
          v252[1] = v114[2];
          v252[2] = v119;
          v121 = v114[3];
          v122 = v114[5];
          v252[3] = v114[4];
          v252[4] = v122;
          v123 = v114[1];
          v251 = *v114;
          v252[0] = v123;
          v124 = v102[7];
          v247[6] = v102[6];
          v247[7] = v124;
          v125 = v102[9];
          v247[8] = v102[8];
          v247[9] = v125;
          v126 = v102[3];
          v247[2] = v102[2];
          v247[3] = v126;
          v127 = v102[5];
          v247[4] = v102[4];
          v247[5] = v127;
          v128 = v102[1];
          v247[0] = *v102;
          v247[1] = v128;
          v247[16] = v253;
          v247[17] = v117;
          v129 = v114[9];
          v247[18] = v255;
          v247[19] = v129;
          v247[12] = v252[1];
          v247[13] = v121;
          v247[14] = v252[3];
          v247[15] = v116;
          v247[10] = v251;
          v247[11] = v120;
          v263 = v109;
          v264 = v106;
          v130 = v102[9];
          v265 = v108;
          v266 = v130;
          v259 = v250[0];
          v260 = v103;
          v261 = v105;
          v262 = v110;
          v257 = v248;
          v258 = v112;
          if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v257) == 1)
          {
            v239[6] = v247[16];
            v239[7] = v247[17];
            v239[8] = v247[18];
            v239[9] = v247[19];
            v239[2] = v247[12];
            v239[3] = v247[13];
            v239[4] = v247[14];
            v239[5] = v247[15];
            v239[0] = v247[10];
            v239[1] = v247[11];
            if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v239) == 1)
            {
              v243 = v247[6];
              v244 = v247[7];
              v245 = v247[8];
              v246 = v247[9];
              v240[2] = v247[2];
              v240[3] = v247[3];
              v241 = v247[4];
              v242 = v247[5];
              v240[0] = v247[0];
              v240[1] = v247[1];
              sub_1B7205588(&v248, &v229, &qword_1EB995668);
              sub_1B7205588(&v251, &v229, &qword_1EB995668);
              sub_1B7205418(v240, &qword_1EB995668);
              goto LABEL_80;
            }

            sub_1B7205588(&v248, v240, &qword_1EB995668);
            sub_1B7205588(&v251, v240, &qword_1EB995668);
          }

          else
          {
            v243 = v247[6];
            v244 = v247[7];
            v245 = v247[8];
            v246 = v247[9];
            v240[2] = v247[2];
            v240[3] = v247[3];
            v241 = v247[4];
            v242 = v247[5];
            v240[0] = v247[0];
            v240[1] = v247[1];
            v235 = v247[6];
            v236 = v247[7];
            v237 = v247[8];
            v238 = v247[9];
            v231 = v247[2];
            v232 = v247[3];
            v233 = v247[4];
            v234 = v247[5];
            v229 = v247[0];
            v230 = v247[1];
            v239[6] = v247[16];
            v239[7] = v247[17];
            v239[8] = v247[18];
            v239[9] = v247[19];
            v239[2] = v247[12];
            v239[3] = v247[13];
            v239[4] = v247[14];
            v239[5] = v247[15];
            v239[0] = v247[10];
            v239[1] = v247[11];
            if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v239) != 1)
            {
              v225 = v247[16];
              v226 = v247[17];
              v227 = v247[18];
              v228 = v247[19];
              v221 = v247[12];
              v222 = v247[13];
              v223 = v247[14];
              v224 = v247[15];
              v219 = v247[10];
              v220 = v247[11];
              sub_1B7205588(&v248, &v209, &qword_1EB995668);
              sub_1B7205588(&v251, &v209, &qword_1EB995668);
              sub_1B7205588(v240, &v209, &qword_1EB995668);
              v131 = _s10FinanceKit18RawBankConnectDataO19MerchantInformationV2eeoiySbAE_AEtFZ_0(&v229, &v219);
              v205 = v225;
              v206 = v226;
              v207 = v227;
              v208 = v228;
              v201 = v221;
              v202 = v222;
              v203 = v223;
              v204 = v224;
              v199 = v219;
              v200 = v220;
              sub_1B7586478(&v199);
              v215 = v235;
              v216 = v236;
              v217 = v237;
              v218 = v238;
              v211 = v231;
              v212 = v232;
              v213 = v233;
              v214 = v234;
              v209 = v229;
              v210 = v230;
              sub_1B7586478(&v209);
              v225 = v247[6];
              v226 = v247[7];
              v227 = v247[8];
              v228 = v247[9];
              v221 = v247[2];
              v222 = v247[3];
              v223 = v247[4];
              v224 = v247[5];
              v219 = v247[0];
              v220 = v247[1];
              sub_1B7205418(&v219, &qword_1EB995668);
              if ((v131 & 1) == 0)
              {
                return 0;
              }

LABEL_80:
              v132 = v187[17];
              v133 = *(v190 + 48);
              v134 = v193;
              sub_1B7205588(v188 + v132, v193, &qword_1EB990770);
              sub_1B7205588(v194 + v132, v134 + v133, &qword_1EB990770);
              v135 = *(v191 + 48);
              if (v135(v134, 1, v192) == 1)
              {
                if (v135(v193 + v133, 1, v192) == 1)
                {
                  sub_1B7205418(v193, &qword_1EB990770);
                  goto LABEL_87;
                }
              }

              else
              {
                v136 = v193;
                sub_1B7205588(v193, v189, &qword_1EB990770);
                if (v135(v136 + v133, 1, v192) != 1)
                {
                  v137 = v193;
                  v138 = v193 + v133;
                  v139 = v186;
                  sub_1B76D773C(v138, v186);
                  v140 = v189;
                  v141 = _s10FinanceKit18RawBankConnectDataO7ActionsV2eeoiySbAE_AEtFZ_0(v189, v139);
                  sub_1B76D5FE8(v139, type metadata accessor for RawBankConnectData.Actions);
                  sub_1B76D5FE8(v140, type metadata accessor for RawBankConnectData.Actions);
                  sub_1B7205418(v137, &qword_1EB990770);
                  if (!v141)
                  {
                    return 0;
                  }

LABEL_87:
                  v142 = v187[18];
                  v143 = (v188 + v142);
                  v144 = *(v188 + v142 + 8);
                  v145 = (v194 + v142);
                  v146 = v145[1];
                  if (v144)
                  {
                    if (!v146 || (*v143 != *v145 || v144 != v146) && (sub_1B78020F8() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v146)
                  {
                    return 0;
                  }

                  v147 = v187[19];
                  v148 = (v188 + v147);
                  v149 = *(v188 + v147 + 8);
                  v150 = (v194 + v147);
                  v151 = v150[1];
                  if (v149)
                  {
                    if (!v151 || (*v148 != *v150 || v149 != v151) && (sub_1B78020F8() & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  else if (v151)
                  {
                    return 0;
                  }

                  v152 = v187[20];
                  v153 = *(v188 + v152);
                  v154 = *(v188 + v152 + 8);
                  v156 = *(v188 + v152 + 16);
                  v155 = *(v188 + v152 + 24);
                  v157 = (v194 + v152);
                  v158 = *v157;
                  v159 = v157[1];
                  v161 = v157[2];
                  v160 = v157[3];
                  if (v154)
                  {
                    if (v159)
                    {
                      if ((v153 != v158 || v154 != v159) && (sub_1B78020F8() & 1) == 0)
                      {
                        sub_1B7420484(v153, v154);
                        sub_1B7420484(v158, v159);
                        sub_1B7420484(v153, v154);
                        sub_1B74204FC(v158, v159);

                        v175 = v153;
                        v176 = v154;
LABEL_137:
                        sub_1B74204FC(v175, v176);
                        return 0;
                      }

                      if (v156 != v161 || v155 != v160)
                      {
                        v162 = sub_1B78020F8();
                        sub_1B7420484(v153, v154);
                        sub_1B7420484(v158, v159);
                        sub_1B7420484(v153, v154);
                        sub_1B74204FC(v158, v159);

                        sub_1B74204FC(v153, v154);
                        if ((v162 & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_117;
                      }

                      sub_1B7420484(v153, v154);
                      sub_1B7420484(v158, v159);
                      sub_1B7420484(v153, v154);
                      sub_1B74204FC(v158, v159);

LABEL_116:
                      sub_1B74204FC(v153, v154);
LABEL_117:
                      v163 = v187[21];
                      v164 = *(v188 + v163);
                      v165 = *(v188 + v163 + 8);
                      v167 = *(v188 + v163 + 16);
                      v166 = *(v188 + v163 + 24);
                      v168 = (v194 + v163);
                      v169 = *v168;
                      v170 = v168[1];
                      v171 = v168[2];
                      v172 = v168[3];
                      if (v165)
                      {
                        if (v170)
                        {
                          if (v164 == v169 && v165 == v170 || (sub_1B78020F8() & 1) != 0)
                          {
                            if (!v166)
                            {
                              sub_1B7586148(v164, v165);
                              if (!v172)
                              {
                                sub_1B7586148(v169, v170);
                                sub_1B7586148(v164, v165);
                                v173 = v169;
                                v174 = v170;
                                goto LABEL_141;
                              }

                              goto LABEL_135;
                            }

                            if (v172)
                            {
                              if (v167 == v171 && v166 == v172)
                              {
                                sub_1B7586148(v164, v165);
                                sub_1B7586148(v169, v170);
                                sub_1B7586148(v164, v165);
                                v173 = v169;
                                v174 = v170;
LABEL_141:
                                sub_1B74204FC(v173, v174);
LABEL_142:

                                goto LABEL_143;
                              }

                              v177 = sub_1B78020F8();
                              sub_1B7586148(v164, v165);
                              sub_1B7586148(v169, v170);
                              sub_1B7586148(v164, v165);
                              sub_1B74204FC(v169, v170);
                              if (v177)
                              {
                                goto LABEL_142;
                              }

                              goto LABEL_136;
                            }
                          }

                          sub_1B7586148(v164, v165);
LABEL_135:
                          sub_1B7586148(v169, v170);
                          sub_1B7586148(v164, v165);
                          sub_1B74204FC(v169, v170);
LABEL_136:

                          v175 = v164;
                          v176 = v165;
                          goto LABEL_137;
                        }

                        sub_1B7586148(v164, v165);
                        sub_1B7586148(v169, 0);
                        sub_1B7586148(v164, v165);
                      }

                      else
                      {
                        sub_1B7586148(v164, 0);
                        if (!v170)
                        {
                          sub_1B7586148(v169, 0);
                          v165 = 0;
LABEL_143:
                          sub_1B74204FC(v164, v165);
                          return 1;
                        }

                        sub_1B7586148(v169, v170);
                      }

                      sub_1B74204FC(v164, v165);
                      sub_1B74204FC(v169, v170);
                      return 0;
                    }

                    sub_1B7420484(v153, v154);
                    sub_1B7420484(v158, 0);
                    sub_1B7420484(v153, v154);
                  }

                  else
                  {
                    sub_1B7420484(v153, 0);
                    if (!v159)
                    {
                      sub_1B7420484(v158, 0);
                      v154 = 0;
                      goto LABEL_116;
                    }

                    sub_1B7420484(v158, v159);
                  }

                  sub_1B74204FC(v153, v154);
                  sub_1B74204FC(v158, v159);
                  return 0;
                }

                sub_1B76D5FE8(v189, type metadata accessor for RawBankConnectData.Actions);
              }

              sub_1B7205418(v193, &qword_1EB99BA90);
              return 0;
            }

            v225 = v247[6];
            v226 = v247[7];
            v227 = v247[8];
            v228 = v247[9];
            v221 = v247[2];
            v222 = v247[3];
            v223 = v247[4];
            v224 = v247[5];
            v219 = v247[0];
            v220 = v247[1];
            sub_1B7205588(&v248, &v209, &qword_1EB995668);
            sub_1B7205588(&v251, &v209, &qword_1EB995668);
            sub_1B7205588(v240, &v209, &qword_1EB995668);
            sub_1B7586478(&v219);
          }

          memcpy(v239, v247, sizeof(v239));
          sub_1B7205418(v239, &qword_1EB997E90);
          return 0;
        }

        sub_1B7205588(v269, v247, &qword_1EB990780);
        sub_1B7205588(v270, v247, &qword_1EB990780);
      }

      v247[0] = v229;
      v247[1] = v230;
      v247[2] = v231;
      *&v247[3] = v232;
      *(&v247[3] + 1) = v79;
      v247[4] = v268;
      v247[5] = v219;
      v247[6] = v220;
      v247[7] = v221;
      *&v247[8] = v222;
      *(&v247[8] + 1) = v80;
      v247[9] = v267;
      sub_1B7205418(v247, &qword_1EB99BA98);
    }
  }

  return 0;
}

unint64_t sub_1B76D5254()
{
  result = qword_1EB99B7F0;
  if (!qword_1EB99B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B7F0);
  }

  return result;
}

unint64_t sub_1B76D52A8()
{
  result = qword_1EB99B7F8;
  if (!qword_1EB99B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B7F8);
  }

  return result;
}

unint64_t sub_1B76D52FC()
{
  result = qword_1EB99B808;
  if (!qword_1EB99B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B808);
  }

  return result;
}

unint64_t sub_1B76D5350()
{
  result = qword_1EB99B810;
  if (!qword_1EB99B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B810);
  }

  return result;
}

unint64_t sub_1B76D53A4()
{
  result = qword_1EB99B820;
  if (!qword_1EB99B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B820);
  }

  return result;
}

unint64_t sub_1B76D53F8()
{
  result = qword_1EB99B830;
  if (!qword_1EB99B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B830);
  }

  return result;
}

unint64_t sub_1B76D544C()
{
  result = qword_1EB99B838;
  if (!qword_1EB99B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B838);
  }

  return result;
}

uint64_t sub_1B76D54A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B788AD90 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954646574736F70 && a2 == 0xEF706D617473656DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7885160 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7885100 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7875C70 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEF657079546E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F6D416C61636F6CLL && a2 == 0xEB00000000746E75 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x416E676965726F66 && a2 == 0xED0000746E756F6DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B78850E0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000064 || (sub_1B78020F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788ADB0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B788ADD0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B7885140 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t _s10FinanceKit18RawBankConnectDataO11TransactionV6StatusO8rawValueAGSgSS_tcfC_0()
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

unint64_t sub_1B76D5A98()
{
  result = qword_1EB99B848;
  if (!qword_1EB99B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B848);
  }

  return result;
}

unint64_t sub_1B76D5AEC()
{
  result = qword_1EB99B860;
  if (!qword_1EB99B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B860);
  }

  return result;
}

unint64_t sub_1B76D5B40()
{
  result = qword_1EB99B878;
  if (!qword_1EB99B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B878);
  }

  return result;
}

unint64_t sub_1B76D5B94()
{
  result = qword_1EB99B880;
  if (!qword_1EB99B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B880);
  }

  return result;
}

unint64_t sub_1B76D5C50()
{
  result = qword_1EB99B890;
  if (!qword_1EB99B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B890);
  }

  return result;
}

unint64_t sub_1B76D5CA4()
{
  result = qword_1EB99B8A0;
  if (!qword_1EB99B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B8A0);
  }

  return result;
}

uint64_t sub_1B76D5CF8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B76D5D0C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1B76D5D20()
{
  result = qword_1EB99B8B8;
  if (!qword_1EB99B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B8B8);
  }

  return result;
}

unint64_t sub_1B76D5D74()
{
  result = qword_1EB99B8C0;
  if (!qword_1EB99B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B8C0);
  }

  return result;
}

unint64_t sub_1B76D5DC8()
{
  result = qword_1EB99B8E0;
  if (!qword_1EB99B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B8E0);
  }

  return result;
}

uint64_t sub_1B76D5E1C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B8C8);
    sub_1B71A7268(a2, type metadata accessor for RawBankConnectData.Transaction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76D5EB8()
{
  result = qword_1EB99B900;
  if (!qword_1EB99B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B900);
  }

  return result;
}

unint64_t sub_1B76D5F2C()
{
  result = qword_1EB99B918;
  if (!qword_1EB99B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B918);
  }

  return result;
}

uint64_t sub_1B76D5F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B76D5FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B76D604C()
{
  result = qword_1EB99B928;
  if (!qword_1EB99B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B928);
  }

  return result;
}

unint64_t sub_1B76D60D4()
{
  result = qword_1EB99B940;
  if (!qword_1EB99B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B940);
  }

  return result;
}

unint64_t sub_1B76D615C()
{
  result = qword_1EB99B958;
  if (!qword_1EB99B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B958);
  }

  return result;
}

unint64_t sub_1B76D61B4()
{
  result = qword_1EB99B960;
  if (!qword_1EB99B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B960);
  }

  return result;
}

void sub_1B76D6278()
{
  sub_1B76D647C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1B77FF988();
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFD2C0);
      if (v2 <= 0x3F)
      {
        sub_1B72F2CB8(319, &qword_1EB99B980);
        if (v3 <= 0x3F)
        {
          sub_1B72F2CB8(319, &qword_1EB99B988);
          if (v4 <= 0x3F)
          {
            sub_1B72F2CB8(319, &qword_1EB997A58);
            if (v5 <= 0x3F)
            {
              sub_1B76D647C(319, &qword_1EB99B990, type metadata accessor for RawBankConnectData.Actions);
              if (v6 <= 0x3F)
              {
                sub_1B72F2CB8(319, &qword_1EB99B998);
                if (v7 <= 0x3F)
                {
                  sub_1B72F2CB8(319, &qword_1EB99B9A0);
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

void sub_1B76D647C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1B76D653C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
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

uint64_t sub_1B76D6598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1B76D667C()
{
  sub_1B77FF988();
  if (v0 <= 0x3F)
  {
    sub_1B76D647C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      sub_1B72F2CB8(319, &qword_1EDAFD2C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _s11TransactionV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11TransactionV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B76D6918()
{
  result = qword_1EB99B9B8;
  if (!qword_1EB99B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9B8);
  }

  return result;
}

unint64_t sub_1B76D6970()
{
  result = qword_1EB99B9C0;
  if (!qword_1EB99B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9C0);
  }

  return result;
}

unint64_t sub_1B76D69C8()
{
  result = qword_1EB99B9C8;
  if (!qword_1EB99B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9C8);
  }

  return result;
}

unint64_t sub_1B76D6A20()
{
  result = qword_1EB99B9D0;
  if (!qword_1EB99B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9D0);
  }

  return result;
}

unint64_t sub_1B76D6A78()
{
  result = qword_1EB99B9D8;
  if (!qword_1EB99B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9D8);
  }

  return result;
}

unint64_t sub_1B76D6AD0()
{
  result = qword_1EB99B9E0;
  if (!qword_1EB99B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9E0);
  }

  return result;
}

unint64_t sub_1B76D6B28()
{
  result = qword_1EB99B9E8;
  if (!qword_1EB99B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9E8);
  }

  return result;
}

unint64_t sub_1B76D6B80()
{
  result = qword_1EB99B9F0;
  if (!qword_1EB99B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9F0);
  }

  return result;
}

unint64_t sub_1B76D6BD8()
{
  result = qword_1EB99B9F8;
  if (!qword_1EB99B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B9F8);
  }

  return result;
}

unint64_t sub_1B76D6C30()
{
  result = qword_1EB99BA00;
  if (!qword_1EB99BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA00);
  }

  return result;
}

unint64_t sub_1B76D6C88()
{
  result = qword_1EB99BA08;
  if (!qword_1EB99BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA08);
  }

  return result;
}

unint64_t sub_1B76D6CE0()
{
  result = qword_1EB99BA10;
  if (!qword_1EB99BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA10);
  }

  return result;
}

unint64_t sub_1B76D6D38()
{
  result = qword_1EB99BA18;
  if (!qword_1EB99BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA18);
  }

  return result;
}

unint64_t sub_1B76D6D90()
{
  result = qword_1EB99BA20;
  if (!qword_1EB99BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA20);
  }

  return result;
}

unint64_t sub_1B76D6DE8()
{
  result = qword_1EB99BA28;
  if (!qword_1EB99BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA28);
  }

  return result;
}

unint64_t sub_1B76D6E40()
{
  result = qword_1EB99BA30;
  if (!qword_1EB99BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA30);
  }

  return result;
}

unint64_t sub_1B76D6E98()
{
  result = qword_1EB99BA38;
  if (!qword_1EB99BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA38);
  }

  return result;
}

unint64_t sub_1B76D6EF0()
{
  result = qword_1EB99BA40;
  if (!qword_1EB99BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA40);
  }

  return result;
}

unint64_t sub_1B76D6F48()
{
  result = qword_1EB99BA48;
  if (!qword_1EB99BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA48);
  }

  return result;
}

unint64_t sub_1B76D6FA0()
{
  result = qword_1EB99BA50;
  if (!qword_1EB99BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA50);
  }

  return result;
}

unint64_t sub_1B76D6FF8()
{
  result = qword_1EB99BA58;
  if (!qword_1EB99BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA58);
  }

  return result;
}

unint64_t sub_1B76D7050()
{
  result = qword_1EB99BA60;
  if (!qword_1EB99BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA60);
  }

  return result;
}

unint64_t sub_1B76D70A8()
{
  result = qword_1EB99BA68;
  if (!qword_1EB99BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA68);
  }

  return result;
}

unint64_t sub_1B76D7100()
{
  result = qword_1EB99BA70;
  if (!qword_1EB99BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA70);
  }

  return result;
}

uint64_t sub_1B76D7154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001B787E2A0 == a2;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001B7888E80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7888EB0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC000000656D614ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEF73736572646441)
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

uint64_t sub_1B76D7358(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4C73736572646461 && a2 == 0xEB00000000656E69 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53724F6574617473 && a2 == 0xEE006E6F69746365 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736F50724F70697ALL && a2 == 0xED000065646F4374 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_1B78020F8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B76D7528(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F73727563 && a2 == 0xE600000000000000)
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

unint64_t sub_1B76D7694()
{
  result = qword_1EB99BA78;
  if (!qword_1EB99BA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA78);
  }

  return result;
}

unint64_t sub_1B76D76E8()
{
  result = qword_1EB99BA80;
  if (!qword_1EB99BA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BA80);
  }

  return result;
}

uint64_t sub_1B76D773C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Actions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76D77B8(uint64_t a1)
{
  v2 = sub_1B76D9DAC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B76D77F4(uint64_t a1)
{
  v2 = sub_1B76D9DAC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

FinanceKit::BankConnectServiceAccountConnectingError::Code_optional __swiftcall BankConnectServiceAccountConnectingError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t BankConnectServiceAccountConnectingError.errorCode.getter()
{
  v3 = *v0;
  sub_1B76D78AC(&v2);
  return v2;
}

void sub_1B76D78AC(char *a1@<X8>)
{
  v3 = type metadata accessor for FinanceNetworkError();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = *v1 >> 62;
  if (v7)
  {
    if (v7 != 1)
    {
      *a1 = 4;
      return;
    }

    *&v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        if (*v5 == 403)
        {
          *a1 = 3;

          return;
        }
      }

      else
      {
        sub_1B76D9E00(v5, type metadata accessor for FinanceNetworkError);
      }
    }

    v11 = v12;
    goto LABEL_17;
  }

  v14 = *v1;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {
    if (v13 == 4)
    {
      if (!(v12 ^ 1 | *(&v12 + 1)))
      {
        v10 = 2;
        goto LABEL_20;
      }

      if (v12 == 0)
      {
        v10 = 1;
LABEL_20:
        *a1 = v10;

        return;
      }
    }

    sub_1B76D9E60(v12, *(&v12 + 1), v13);
  }

  v11 = v14;
LABEL_17:

  *a1 = 0;
}

unint64_t BankConnectServiceAccountConnectingError.errorUserInfo.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = sub_1B7800868();
    v3 = inited + 32;
    *(inited + 40) = v7;
    swift_getErrorValue();
    v5 = v12;
    v6 = v13;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = sub_1B7800868();
    v3 = inited + 32;
    *(inited + 40) = v4;
    swift_getErrorValue();
    v5 = v14;
    v6 = v15;
LABEL_5:
    *(inited + 72) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5, v6);
    v9 = sub_1B72018E0(inited);
    swift_setDeallocating();
    sub_1B72DD59C(v3);
    return v9;
  }

  v11 = MEMORY[0x1E69E7CC0];

  return sub_1B72018E0(v11);
}

unint64_t BankConnectServiceAccountConnectingError.errorDescription.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    sub_1B7801A78();

    v4 = 0xD00000000000002ELL;
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    sub_1B7801A78();

    v4 = 0xD00000000000002CLL;
    swift_getErrorValue();
LABEL_5:
    v2 = sub_1B7802228();
    MEMORY[0x1B8CA4D30](v2);

    return v4;
  }

  return 0xD00000000000002ELL;
}

uint64_t sub_1B76D7D2C()
{
  v3 = *v0;
  sub_1B76D78AC(&v2);
  return v2;
}

uint64_t sub_1B76D7D74()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B76D7DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B788AEC0 == a2)
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

uint64_t sub_1B76D7E98(uint64_t a1)
{
  v2 = sub_1B76D941C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76D7ED4(uint64_t a1)
{
  v2 = sub_1B76D941C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76D7F10(uint64_t a1)
{
  v2 = sub_1B76D9470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76D7F4C(uint64_t a1)
{
  v2 = sub_1B76D9470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76D7F88(uint64_t a1)
{
  v2 = sub_1B76D94C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76D7FC4(uint64_t a1)
{
  v2 = sub_1B76D94C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectAccountConnectionResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BAA0);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BAA8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BAB0);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v17 - v10;
  v22 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76D941C();
  sub_1B78023F8();
  if (v12)
  {
    LOBYTE(v24) = 1;
    sub_1B76D9470();
    v13 = v23;
    sub_1B7801ED8();
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A50);
    sub_1B76D9518(&qword_1EB99BAC8, &qword_1EB99BAD0);
    v14 = v21;
    sub_1B7801FC8();
    (*(v20 + 8))(v5, v14);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_1B76D94C4();
    v13 = v23;
    sub_1B7801ED8();
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A50);
    sub_1B76D9518(&qword_1EB99BAC8, &qword_1EB99BAD0);
    v15 = v19;
    sub_1B7801FC8();
    (*(v18 + 8))(v8, v15);
  }

  return (*(v9 + 8))(v11, v13);
}

uint64_t BankConnectAccountConnectionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BAE0);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v29[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BAE8);
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BAF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29[-v10];
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B76D941C();
  v13 = v36;
  sub_1B78023C8();
  if (!v13)
  {
    v31 = v5;
    v14 = v35;
    v36 = v9;
    v15 = sub_1B7801E98();
    v16 = (2 * *(v15 + 16)) | 1;
    v38 = v15;
    v39 = v15 + 32;
    v40 = 0;
    v41 = v16;
    v17 = sub_1B721CE4C();
    v18 = v8;
    if (v17 == 2 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for BankConnectAccountConnectionResult;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = v17;
      if (v17)
      {
        LOBYTE(v42) = 1;
        sub_1B76D9470();
        v19 = v4;
        sub_1B7801D38();
        v20 = v11;
        v21 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A50);
        sub_1B76D9518(&qword_1EB99BAF8, &qword_1EB99BB00);
        v28 = v32;
        sub_1B7801E48();
        (*(v34 + 8))(v19, v28);
        (*(v21 + 8))(v20, v18);
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_1B76D94C4();
        sub_1B7801D38();
        v26 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A50);
        sub_1B76D9518(&qword_1EB99BAF8, &qword_1EB99BB00);
        v27 = v31;
        sub_1B7801E48();
        (*(v33 + 8))(v7, v27);
        (*(v26 + 8))(v11, v18);
      }

      swift_unknownObjectRelease();
      *v14 = v42;
      *(v14 + 8) = v30 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t BankConnectService.connectAccounts(primaryAccountIdentifier:primaryPassAccountFQAI:institution:shouldConnectSecondaryAccounts:ignoreConnectedAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 120) = a5;
  *(v8 + 128) = v7;
  *(v8 + 90) = a7;
  *(v8 + 89) = a6;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  *(v8 + 136) = type metadata accessor for BankConnectService.Message();
  *(v8 + 144) = swift_task_alloc();
  v10 = a4[1];
  *(v8 + 152) = *a4;
  *(v8 + 168) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B76D8A88, 0, 0);
}

uint64_t sub_1B76D8A88()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v14 = *(v0 + 89);
  v15 = *(v0 + 90);
  v13 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  *(v0 + 184) = *(*(v0 + 128) + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BB08);
  v9 = v8[16];
  v10 = v8[20];
  v11 = v8[24];
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  sub_1B721D304(v13, v5 + v9);
  *(v5 + v10) = v14;
  *(v5 + v11) = v15;
  swift_storeEnumTagMultiPayload();

  sub_1B7420484(v4, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B76D8BA8, 0, 0);
}

uint64_t sub_1B76D8BA8()
{
  v1 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1B76D8C58;
  v2 = swift_continuation_init();
  sub_1B722EBD0(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B76D8C58()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  if (!v3)
  {
    v4 = *(v1 + 144);
    v5 = *(v1 + 96);
    v6 = *(v1 + 80);
    v7 = *(v1 + 88);
    *v5 = v6;
    *(v5 + 8) = v7;
    sub_1B76D9E00(v4, type metadata accessor for BankConnectService.Message);

    v8 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B76D8DDC, 0, 0);
}

uint64_t sub_1B76D8DDC()
{
  sub_1B76D9E00(*(v0 + 144), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.connectUnlinkedAccounts(institution:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = type metadata accessor for BankConnectService.Message();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76D8EF4, 0, 0);
}

uint64_t sub_1B76D8EF4()
{
  v1 = v0[14];
  v2 = v0[11];
  v0[15] = *(v0[12] + 16);
  sub_1B721D304(v2, v1);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B76D8F7C, 0, 0);
}

uint64_t sub_1B76D8F7C()
{
  v1 = v0[15];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1B76D9028;
  v2 = swift_continuation_init();
  sub_1B722ED9C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B76D9028()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 128) = v3;
  if (!v3)
  {
    sub_1B76D9E00(*(v1 + 112), type metadata accessor for BankConnectService.Message);

    v4 = *(v2 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B76D91A0, 0, 0);
}

uint64_t sub_1B76D91A0()
{
  sub_1B76D9E00(*(v0 + 112), type metadata accessor for BankConnectService.Message);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B76D9224(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, char a6, char a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B7201BB0;

  return BankConnectService.connectAccounts(primaryAccountIdentifier:primaryPassAccountFQAI:institution:shouldConnectSecondaryAccounts:ignoreConnectedAccounts:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1B76D930C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B721E658;

  return BankConnectService.connectUnlinkedAccounts(institution:)(a1);
}

uint64_t _s10FinanceKit34BankConnectAccountConnectionResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  v5 = sub_1B731D1F8(v4, v2);

  return v5 & 1;
}

unint64_t sub_1B76D941C()
{
  result = qword_1EB99BAB8;
  if (!qword_1EB99BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BAB8);
  }

  return result;
}

unint64_t sub_1B76D9470()
{
  result = qword_1EB99BAC0;
  if (!qword_1EB99BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BAC0);
  }

  return result;
}

unint64_t sub_1B76D94C4()
{
  result = qword_1EB99BAD8;
  if (!qword_1EB99BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BAD8);
  }

  return result;
}

uint64_t sub_1B76D9518(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB993A50);
    sub_1B76D95A0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B76D95A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InternalAccount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76D95E8()
{
  result = qword_1EB99BB10;
  if (!qword_1EB99BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB10);
  }

  return result;
}

unint64_t sub_1B76D963C()
{
  result = qword_1EB99BB18;
  if (!qword_1EB99BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB18);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_10FinanceKit40BankConnectServiceAccountConnectingErrorO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1B76D96AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B76D9708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B76D9768(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t dispatch thunk of BankConnectConnectionAccountConnecting.connectAccounts(primaryAccountIdentifier:primaryPassAccountFQAI:institution:shouldConnectSecondaryAccounts:ignoreConnectedAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1B7201BB0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of BankConnectConnectionAccountConnecting.connectUnlinkedAccounts(institution:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FDB8;

  return v9(a1, a2, a3);
}

unint64_t sub_1B76D9A98()
{
  result = qword_1EB99BB20;
  if (!qword_1EB99BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB20);
  }

  return result;
}

unint64_t sub_1B76D9AF0()
{
  result = qword_1EB99BB28;
  if (!qword_1EB99BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB28);
  }

  return result;
}

unint64_t sub_1B76D9B48()
{
  result = qword_1EB99BB30;
  if (!qword_1EB99BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB30);
  }

  return result;
}

unint64_t sub_1B76D9BA0()
{
  result = qword_1EB99BB38;
  if (!qword_1EB99BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB38);
  }

  return result;
}

unint64_t sub_1B76D9BF8()
{
  result = qword_1EB99BB40;
  if (!qword_1EB99BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB40);
  }

  return result;
}

unint64_t sub_1B76D9C50()
{
  result = qword_1EB99BB48;
  if (!qword_1EB99BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB48);
  }

  return result;
}

unint64_t sub_1B76D9CA8()
{
  result = qword_1EB99BB50;
  if (!qword_1EB99BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB50);
  }

  return result;
}

unint64_t sub_1B76D9D00()
{
  result = qword_1EB99BB58;
  if (!qword_1EB99BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB58);
  }

  return result;
}

unint64_t sub_1B76D9D58()
{
  result = qword_1EB99BB60;
  if (!qword_1EB99BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB60);
  }

  return result;
}

unint64_t sub_1B76D9DAC()
{
  result = qword_1EB99BB68;
  if (!qword_1EB99BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99BB68);
  }

  return result;
}

uint64_t sub_1B76D9E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B76D9E60(id a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t RawOrderShippingFulfillment.init(fulfillmentIdentifier:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for RawOrderShippingFulfillment();
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  v9 = v8[11];
  v10 = sub_1B77FF4F8();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + v8[12];
  sub_1B74D3990(v23);
  v12 = v23[7];
  *(v11 + 96) = v23[6];
  *(v11 + 112) = v12;
  *(v11 + 128) = v23[8];
  *(v11 + 144) = v24;
  v13 = v23[3];
  *(v11 + 32) = v23[2];
  *(v11 + 48) = v13;
  v14 = v23[5];
  *(v11 + 64) = v23[4];
  *(v11 + 80) = v14;
  v15 = v23[1];
  *v11 = v23[0];
  *(v11 + 16) = v15;
  v16 = v8[13];
  v17 = sub_1B77FF988();
  v18 = *(*(v17 - 8) + 56);
  v18(a4 + v16, 1, 1, v17);
  v19 = v8[14];
  v20 = type metadata accessor for Duration();
  (*(*(v20 - 8) + 56))(a4 + v19, 1, 1, v20);
  v18(a4 + v8[15], 1, 1, v17);
  result = (v18)(a4 + v8[17], 1, 1, v17);
  v22 = (a4 + v8[16]);
  *v22 = a1;
  v22[1] = a2;
  *(a4 + 40) = v7;
  *a4 = MEMORY[0x1E69E7CC0];
  *(a4 + v8[18]) = 0;
  return result;
}

uint64_t type metadata accessor for RawOrderShippingFulfillment()
{
  result = qword_1EDAF7610;
  if (!qword_1EDAF7610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawOrderShippingFulfillment.setEstimatedDeliveryWindowDuration(_:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1B71B44A0(a1, &v12 - v5, type metadata accessor for Duration);
  v7 = type metadata accessor for Duration();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = type metadata accessor for RawOrderShippingFulfillment();
  sub_1B76E0B9C(v6, v1 + *(v9 + 52));
  result = sub_1B7205418(v6, &qword_1EB995FF0);
  if (!v2)
  {
    v11 = *(v9 + 56);
    sub_1B7205418(v1 + v11, &qword_1EB995FF0);
    sub_1B71B44A0(a1, v1 + v11, type metadata accessor for Duration);
    return (v8)(v1 + v11, 0, 1, v7);
  }

  return result;
}

__n128 RawOrderShippingRecipient.init(familyName:givenName:organizationName:address:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 40) = a6;
  *(a8 + 48) = 1;
  *(a8 + 104) = 0u;
  *(a8 + 88) = 0u;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 72) = 0u;
  *(a8 + 56) = 0u;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v10 = *(a8 + 128);
  v16[4] = *(a8 + 112);
  v16[5] = v10;
  v17 = *(a8 + 144);
  v11 = *(a8 + 96);
  v16[2] = *(a8 + 80);
  v16[3] = v11;
  v12 = *(a8 + 64);
  v16[0] = *(a8 + 48);
  v16[1] = v12;
  sub_1B7205418(v16, &qword_1EB995F40);
  v13 = *(a7 + 80);
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 128) = v13;
  *(a8 + 144) = *(a7 + 96);
  v14 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v14;
  result = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = result;
  return result;
}

uint64_t RawOrderShippingFulfillment.estimatedDeliveryWindow.getter@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Duration();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawOrderShippingFulfillment();
  sub_1B7205588(v1 + *(v14 + 52), v9, &qword_1EB98EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    v15 = type metadata accessor for Order.FulfillmentWindow(0);
    return (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v13, v9, v10);
    sub_1B7205588(v1 + *(v14 + 56), v4, &qword_1EB995FF0);
    if ((*(v23 + 48))(v4, 1, v24) == 1)
    {
      sub_1B7205418(v4, &qword_1EB995FF0);
      v18 = v25;
      v17(v25, v13, v10);
    }

    else
    {
      v20 = v22;
      sub_1B719AAB4(v4, v22, type metadata accessor for Duration);
      v18 = v25;
      v17(v25, v13, v10);
      v21 = type metadata accessor for TimeWindow(0);
      sub_1B719AAB4(v20, &v18[*(v21 + 20)], type metadata accessor for Duration);
    }

    v19 = type metadata accessor for Order.FulfillmentWindow(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }
}

uint64_t RawOrderShippingFulfillment.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a2;
  v189 = a1;
  v140 = a3;
  v147 = sub_1B7801B18();
  v137 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v141 = v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7801B08();
  v127 = *(v4 - 8);
  v128 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v123 = v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v124 = v120 - v7;
  v8 = sub_1B77FFB08();
  v133 = *(v8 - 8);
  v134 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v130 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFC88();
  v131 = *(v10 - 8);
  v132 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v129 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for Duration();
  v151 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v136 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FF988();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v135 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v125 = v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v144 = v120 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v126 = v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v138 = v120 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v142 = v120 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v143 = v120 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v145 = (v120 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v146 = (v120 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BB70);
  v33 = *(v32 - 8);
  v148 = v32;
  v149 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = v120 - v34;
  v36 = type metadata accessor for RawOrderShippingFulfillment();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v37 + 44);
  v41 = sub_1B77FF4F8();
  v42 = *(*(v41 - 8) + 56);
  v158 = v40;
  v42(&v39[v40], 1, 1, v41);
  v43 = &v39[v36[12]];
  sub_1B74D3990(v187);
  v44 = v187[5];
  *(v43 + 4) = v187[4];
  *(v43 + 5) = v44;
  v45 = v187[3];
  *(v43 + 2) = v187[2];
  *(v43 + 3) = v45;
  *(v43 + 18) = v188;
  v46 = v187[8];
  *(v43 + 7) = v187[7];
  *(v43 + 8) = v46;
  *(v43 + 6) = v187[6];
  v47 = v187[1];
  *v43 = v187[0];
  *(v43 + 1) = v47;
  v157 = v43;
  v48 = v36[13];
  v139 = v14;
  v49 = *(v14 + 56);
  v156 = v48;
  v49(&v39[v48], 1, 1, v13);
  v50 = *(v151 + 56);
  v154 = v36[14];
  v50(&v39[v154], 1, 1, v155);
  v153 = v36[15];
  v49(&v39[v153], 1, 1, v13);
  v150 = v36;
  v152 = v36[17];
  v159 = v39;
  v51 = &v39[v152];
  v52 = v35;
  v49(v51, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1(v189, v189[3]);
  sub_1B76E1110();
  v53 = v161;
  sub_1B78023C8();
  if (!v53)
  {
    v122 = v41;
    LOBYTE(v177) = 12;
    v54 = v148;
    v55 = sub_1B7801DF8();
    v161 = 0;
    v64 = v55;
    v65 = v56;
    v121 = v13;
    swift_beginAccess();

    v66 = sub_1B724E408(v174, v64, v65);
    swift_endAccess();

    v58 = v159;
    if ((v66 & 1) == 0)
    {

      LOBYTE(v177) = 12;
      v69 = swift_allocError();
      sub_1B728216C(&qword_1EB99BB80, &qword_1EB99BB70);
      sub_1B7801AD8();
      v161 = v69;
      swift_willThrow();

      (*(v149 + 8))(v52, v54);
      v57 = 0;
      goto LABEL_4;
    }

    v67 = &v159[v150[16]];
    *v67 = v64;
    v67[1] = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
    LOBYTE(v174[0]) = 0;
    sub_1B7457370(&qword_1EB994F38, sub_1B7457208);
    v68 = v161;
    sub_1B7801DB8();
    if (v68)
    {
      v161 = v68;
      (*(v149 + 8))(v52, v54);

      v57 = 1;
      goto LABEL_4;
    }

    v70 = MEMORY[0x1E69E7CC0];
    if (v177)
    {
      v70 = v177;
    }

    *v58 = v70;
    LOBYTE(v177) = 1;
    v71 = sub_1B7801D78();
    v72 = v149;
    *(v58 + 8) = v71;
    *(v58 + 16) = v73;
    LOBYTE(v177) = 2;
    v74 = sub_1B7801D78();
    v161 = 0;
    *(v58 + 24) = v74;
    *(v58 + 32) = v75;
    LOBYTE(v174[0]) = 3;
    sub_1B76E1164();
    v76 = v161;
    sub_1B7801E48();
    if (v76)
    {
      v161 = v76;
      (*(v72 + 8))(v52, v54);

      __swift_destroy_boxed_opaque_existential_1(v189);
LABEL_15:

      v57 = 1;
      goto LABEL_5;
    }

    *(v58 + 40) = v177;
    LOBYTE(v177) = 4;
    *(v58 + 48) = sub_1B7801D78();
    *(v58 + 56) = v77;
    v120[2] = v77;
    LOBYTE(v177) = 5;
    *(v58 + 64) = sub_1B7801D78();
    *(v58 + 72) = v78;
    v120[1] = v78;
    LOBYTE(v177) = 6;
    v79 = sub_1B7801D78();
    v161 = 0;
    *(v58 + 80) = v79;
    *(v58 + 88) = v80;
    LOBYTE(v177) = 7;
    sub_1B76E20D8(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
    v81 = v161;
    sub_1B7801DB8();
    v161 = v81;
    if (v81)
    {
      (*(v149 + 8))(v52, v54);

      __swift_destroy_boxed_opaque_existential_1(v189);
      goto LABEL_15;
    }

    sub_1B7213740(v146, v58 + v158, &unk_1EB994C70);
    v176 = 8;
    sub_1B76E11B8();
    v82 = v54;
    v83 = v52;
    v84 = v161;
    sub_1B7801DB8();
    v161 = v84;
    if (v84 || (v170 = v183, v171 = v184, v172 = v185, v173 = v186, v166 = v179, v167 = v180, v168 = v181, v169 = v182, v164 = v177, v165 = v178, v85 = v157, v86 = *(v157 + 7), v174[6] = *(v157 + 6), v174[7] = v86, v174[8] = *(v157 + 8), v175 = *(v157 + 18), v87 = *(v157 + 3), v174[2] = *(v157 + 2), v174[3] = v87, v88 = *(v157 + 5), v174[4] = *(v157 + 4), v174[5] = v88, v89 = *(v157 + 1), v174[0] = *v157, v174[1] = v89, sub_1B7205418(v174, &qword_1EB996070), v90 = v171, *(v85 + 6) = v170, *(v85 + 7) = v90, *(v85 + 8) = v172, *(v85 + 18) = v173, v91 = v167, *(v85 + 2) = v166, *(v85 + 3) = v91, v92 = v169, *(v85 + 4) = v168, *(v85 + 5) = v92, v93 = v165, *v85 = v164, *(v85 + 1) = v93, LOBYTE(v163) = 9, sub_1B76E20D8(&unk_1EDAF65E0, MEMORY[0x1E6969530]), v94 = v161, sub_1B7801DB8(), (v161 = v94) != 0) || (sub_1B7213740(v145, &v159[v156], &qword_1EB98EBD0), LOBYTE(v163) = 10, sub_1B76E20D8(&qword_1EDAF6620, type metadata accessor for Duration), v95 = v161, sub_1B7801DB8(), (v161 = v95) != 0) || (sub_1B7213740(v144, &v159[v154], &qword_1EB995FF0), LOBYTE(v163) = 11, v96 = v161, sub_1B7801DB8(), (v161 = v96) != 0) || (sub_1B7213740(v143, &v159[v153], &qword_1EB98EBD0), LOBYTE(v163) = 13, v97 = v161, sub_1B7801DB8(), (v161 = v97) != 0))
    {
      (*(v149 + 8))(v52, v54);

LABEL_27:
      __swift_destroy_boxed_opaque_existential_1(v189);
      v58 = v159;
      goto LABEL_15;
    }

    sub_1B7213740(v142, &v159[v152], &qword_1EB98EBD0);
    LOBYTE(v162) = 14;
    sub_1B76E120C();
    v98 = v161;
    sub_1B7801DB8();
    v161 = v98;
    if (v98)
    {
      v163 = v161;
      v99 = v161;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
      if (swift_dynamicCast())
      {
        if ((*(v137 + 88))(v141, v147) == *MEMORY[0x1E69E6B00])
        {

          v100 = v141;
          (*(v137 + 96))(v141, v147);
          (*(v127 + 32))(v124, v100, v128);
          if (qword_1EDAF6548 != -1)
          {
            swift_once();
          }

          v101 = sub_1B78000B8();
          __swift_project_value_buffer(v101, qword_1EDAF6550);
          (*(v127 + 16))(v123, v124, v128);
          v102 = sub_1B7800098();
          LODWORD(v146) = sub_1B78011D8();
          v161 = v102;
          if (os_log_type_enabled(v102, v146))
          {
            v103 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v162 = v144;
            *v103 = 136315138;
            v104 = v123;
            v143 = sub_1B7801AF8();
            v106 = v105;
            v145 = *(v127 + 8);
            v127 += 8;
            v145(v104, v128);
            v107 = sub_1B71A3EF8(v143, v106, &v162);

            *(v103 + 4) = v107;
            v108 = v161;
            _os_log_impl(&dword_1B7198000, v161, v146, "shippingType decode error: %s", v103, 0xCu);
            v109 = v144;
            __swift_destroy_boxed_opaque_existential_1(v144);
            MEMORY[0x1B8CA7A40](v109, -1, -1);
            MEMORY[0x1B8CA7A40](v103, -1, -1);

            v145(v124, v128);
          }

          else
          {

            v110 = v128;
            v111 = *(v127 + 8);
            v111(v123, v128);
            v111(v124, v110);
          }

          v159[v150[18]] = 0;

          v161 = 0;
LABEL_41:
          v112 = v138;
          sub_1B7205588(&v159[v156], v138, &qword_1EB98EBD0);
          v146 = *(v139 + 48);
          if (v146(v112, 1, v121) == 1)
          {
            (*(v149 + 8))(v83, v82);

            sub_1B7205418(v138, &qword_1EB98EBD0);
          }

          else
          {
            (*(v139 + 32))(v135, v138, v121);
            v113 = v125;
            sub_1B7205588(&v159[v154], v125, &qword_1EB995FF0);
            if ((*(v151 + 48))(v113, 1, v155) == 1)
            {

              (*(v139 + 8))(v135, v121);
              (*(v149 + 8))(v83, v82);
              sub_1B7205418(v125, &qword_1EB995FF0);
            }

            else
            {
              sub_1B719AAB4(v125, v136, type metadata accessor for Duration);
              v114 = v133;
              v115 = v130;
              (*(v133 + 104))(v130, *MEMORY[0x1E6969830], v134);
              sub_1B77FFB18();
              (*(v114 + 8))(v115, v134);
              v116 = v126;
              v117 = v129;
              sub_1B77FFC08();
              (*(v131 + 8))(v117, v132);
              LODWORD(v117) = v146(v116, 1, v121);
              sub_1B7205418(v116, &qword_1EB98EBD0);
              if (v117 == 1)
              {
                LOBYTE(v163) = 10;
                v118 = swift_allocError();
                sub_1B728216C(&qword_1EB99BB80, &qword_1EB99BB70);
                sub_1B7801AD8();
                v161 = v118;
                swift_willThrow();

                sub_1B76E13B0(v136, type metadata accessor for Duration);
                (*(v139 + 8))(v135, v121);
                (*(v149 + 8))(v83, v82);
                v58 = v159;
                __swift_destroy_boxed_opaque_existential_1(v189);
                goto LABEL_15;
              }

              sub_1B76E13B0(v136, type metadata accessor for Duration);
              (*(v139 + 8))(v135, v121);
              (*(v149 + 8))(v83, v82);
            }
          }

          v119 = v159;
          sub_1B71B44A0(v159, v140, type metadata accessor for RawOrderShippingFulfillment);
          __swift_destroy_boxed_opaque_existential_1(v189);
          return sub_1B76E13B0(v119, type metadata accessor for RawOrderShippingFulfillment);
        }

        (*(v149 + 8))(v52, v54);

        (*(v137 + 8))(v141, v147);
      }

      else
      {
        (*(v149 + 8))(v52, v54);
      }

      goto LABEL_27;
    }

    v159[v150[18]] = v163 & 1;
    goto LABEL_41;
  }

  v161 = v53;

  v57 = 0;
  v58 = v159;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v189);
  swift_bridgeObjectRelease_n();
LABEL_5:

  sub_1B7205418(v58 + v158, &unk_1EB994C70);
  v59 = *(v157 + 7);
  v183 = *(v157 + 6);
  v184 = v59;
  v185 = *(v157 + 8);
  v186 = *(v157 + 18);
  v60 = *(v157 + 3);
  v179 = *(v157 + 2);
  v180 = v60;
  v61 = *(v157 + 5);
  v181 = *(v157 + 4);
  v182 = v61;
  v62 = *(v157 + 1);
  v177 = *v157;
  v178 = v62;
  sub_1B7205418(&v177, &qword_1EB996070);
  sub_1B7205418(v58 + v156, &qword_1EB98EBD0);
  sub_1B7205418(v58 + v154, &qword_1EB995FF0);
  sub_1B7205418(v58 + v153, &qword_1EB98EBD0);
  if (v57)
  {
  }

  return sub_1B7205418(v58 + v152, &qword_1EB98EBD0);
}

uint64_t RawOrderShippingFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BBA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E1110();
  sub_1B78023F8();
  *&v37[0] = *v3;
  LOBYTE(v27) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
  sub_1B7457370(&qword_1EB994F58, sub_1B74573E8);
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v37[0]) = 1;
    sub_1B7801EF8();
    LOBYTE(v37[0]) = 2;
    sub_1B7801EF8();
    LOBYTE(v37[0]) = *(v3 + 40);
    LOBYTE(v27) = 3;
    sub_1B76E1260();
    sub_1B7801FC8();
    LOBYTE(v37[0]) = 4;
    sub_1B7801EF8();
    LOBYTE(v37[0]) = 5;
    sub_1B7801EF8();
    LOBYTE(v37[0]) = 6;
    sub_1B7801EF8();
    v9 = type metadata accessor for RawOrderShippingFulfillment();
    v46 = 7;
    sub_1B77FF4F8();
    sub_1B76E20D8(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
    v10 = v3 + v9[12];
    v11 = *(v10 + 112);
    v12 = *(v10 + 80);
    v42 = *(v10 + 96);
    v43 = v11;
    v13 = *(v10 + 112);
    v44 = *(v10 + 128);
    v14 = *(v10 + 48);
    v15 = *(v10 + 16);
    v38 = *(v10 + 32);
    v39 = v14;
    v16 = *(v10 + 48);
    v17 = *(v10 + 80);
    v40 = *(v10 + 64);
    v41 = v17;
    v18 = *(v10 + 16);
    v37[0] = *v10;
    v37[1] = v18;
    v33 = v42;
    v34 = v13;
    v35 = *(v10 + 128);
    v29 = v38;
    v30 = v16;
    v31 = v40;
    v32 = v12;
    v45 = *(v10 + 144);
    v36 = *(v10 + 144);
    v27 = v37[0];
    v28 = v15;
    v26 = 8;
    sub_1B7205588(v37, v24, &qword_1EB996070);
    sub_1B76E12B4();
    sub_1B7801F38();
    v24[6] = v33;
    v24[7] = v34;
    v24[8] = v35;
    v25 = v36;
    v24[2] = v29;
    v24[3] = v30;
    v24[4] = v31;
    v24[5] = v32;
    v24[0] = v27;
    v24[1] = v28;
    sub_1B7205418(v24, &qword_1EB996070);
    v23 = 9;
    v19 = sub_1B77FF988();
    sub_1B76E20D8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    v47 = v19;
    sub_1B7801F38();
    v21 = v9[14];
    v23 = 10;
    type metadata accessor for Duration();
    sub_1B76E20D8(qword_1EDAF6628, type metadata accessor for Duration);
    sub_1B7801F38();
    v23 = 11;
    sub_1B7801F38();
    v23 = 12;
    sub_1B7801F78();
    v23 = 13;
    sub_1B7801F38();
    v23 = *(v3 + v9[18]);
    v22 = 14;
    sub_1B76E1308();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

FinanceKit::RawOrderShippingStatus_optional __swiftcall RawOrderShippingStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderShippingStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x6575737369;
  if (v1 != 6)
  {
    v3 = 0x656C6C65636E6163;
  }

  v4 = 0x6544726F4674756FLL;
  if (v1 != 4)
  {
    v4 = 0x65726576696C6564;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64657070696873;
  if (v1 != 2)
  {
    v5 = 0x7961576568546E6FLL;
  }

  if (*v0)
  {
    v2 = 0x69737365636F7270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1B76DC6E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE500000000000000;
  v6 = 0x6575737369;
  if (v2 != 6)
  {
    v6 = 0x656C6C65636E6163;
    v5 = 0xE900000000000064;
  }

  v7 = 0xEE0079726576696CLL;
  v8 = 0x6544726F4674756FLL;
  if (v2 != 4)
  {
    v8 = 0x65726576696C6564;
    v7 = 0xE900000000000064;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x64657070696873;
  if (v2 != 2)
  {
    v10 = 0x7961576568546E6FLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x69737365636F7270;
    v3 = 0xEA0000000000676ELL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

FinanceKit::RawOrderShippingType_optional __swiftcall RawOrderShippingType.init(rawValue:)(Swift::String rawValue)
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

uint64_t RawOrderShippingType.rawValue.getter()
{
  if (*v0)
  {
    return 0x79726576696C6564;
  }

  else
  {
    return 0x676E697070696873;
  }
}

uint64_t sub_1B76DC950(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x79726576696C6564;
  }

  else
  {
    v2 = 0x676E697070696873;
  }

  if (*a2)
  {
    v3 = 0x79726576696C6564;
  }

  else
  {
    v3 = 0x676E697070696873;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B78020F8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B76DC9D8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76DCA50()
{
  sub_1B7800798();
}

uint64_t sub_1B76DCAAC()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76DCB20@<X0>(char *a1@<X8>)
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

void sub_1B76DCB80(uint64_t *a1@<X8>)
{
  v2 = 0x676E697070696873;
  if (*v1)
  {
    v2 = 0x79726576696C6564;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t RawOrderShippingFulfillmentError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t RawOrderShippingFulfillment.lineItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawOrderShippingFulfillment.carrier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RawOrderShippingFulfillment.carrier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RawOrderShippingFulfillment.carrierIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t RawOrderShippingFulfillment.carrierIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t RawOrderShippingFulfillment.statusDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RawOrderShippingFulfillment.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t RawOrderShippingFulfillment.notes.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t RawOrderShippingFulfillment.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t RawOrderShippingFulfillment.trackingNumber.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t RawOrderShippingFulfillment.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t RawOrderShippingFulfillment.recipient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawOrderShippingFulfillment() + 48);
  v4 = *(v3 + 112);
  v5 = *(v3 + 80);
  v22 = *(v3 + 96);
  v23 = v4;
  v6 = *(v3 + 112);
  v24 = *(v3 + 128);
  v7 = *(v3 + 48);
  v8 = *(v3 + 80);
  v20 = *(v3 + 64);
  v9 = v20;
  v21 = v8;
  v10 = *(v3 + 48);
  v12 = *(v3 + 16);
  v18 = *(v3 + 32);
  v11 = v18;
  v19 = v10;
  v13 = *(v3 + 16);
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  *(a1 + 96) = v22;
  *(a1 + 112) = v6;
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 32) = v11;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v5;
  v25 = *(v3 + 144);
  *(a1 + 144) = *(v3 + 144);
  *a1 = v14;
  *(a1 + 16) = v12;
  return sub_1B7205588(v17, v16, &qword_1EB996070);
}

__n128 RawOrderShippingFulfillment.recipient.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RawOrderShippingFulfillment() + 48);
  v4 = *(v3 + 112);
  v13[6] = *(v3 + 96);
  v13[7] = v4;
  v13[8] = *(v3 + 128);
  v14 = *(v3 + 144);
  v5 = *(v3 + 80);
  v13[4] = *(v3 + 64);
  v13[5] = v5;
  v6 = *(v3 + 48);
  v13[2] = *(v3 + 32);
  v13[3] = v6;
  v7 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v7;
  sub_1B7205418(v13, &qword_1EB996070);
  v8 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v8;
  *(v3 + 128) = *(a1 + 128);
  *(v3 + 144) = *(a1 + 144);
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  v10 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v12;
  return result;
}

uint64_t RawOrderShippingFulfillment.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderShippingFulfillment() + 64));

  return v1;
}

uint64_t RawOrderShippingFulfillment.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderShippingFulfillment() + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderShippingFulfillment.shippingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawOrderShippingFulfillment();
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t RawOrderShippingFulfillment.shippingType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawOrderShippingFulfillment();
  *(v1 + *(result + 72)) = v2;
  return result;
}

uint64_t RawOrderShippingFulfillment.estimatedEndOfDeliveryWindow.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1B77FFB08();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Duration();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RawOrderShippingFulfillment();
  sub_1B7205588(v1 + *(v20 + 52), v15, &qword_1EB98EBD0);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_1B7205418(v15, &qword_1EB98EBD0);
    v22 = 1;
    v23 = v45;
    return (*(v17 + 56))(v23, v22, 1, v16);
  }

  v24 = v15;
  v25 = *(v17 + 32);
  (v25)(v19, v24, v16);
  sub_1B7205588(v1 + *(v20 + 56), v8, &qword_1EB995FF0);
  if (v43[6](v8, 1, v44) == 1)
  {
    sub_1B7205418(v8, &qword_1EB995FF0);
    v23 = v45;
    (v25)(v45, v19, v16);
LABEL_7:
    v22 = 0;
    return (*(v17 + 56))(v23, v22, 1, v16);
  }

  v43 = v25;
  v44 = v17 + 32;
  v26 = v8;
  v27 = v38;
  sub_1B719AAB4(v26, v38, type metadata accessor for Duration);
  v29 = v41;
  v28 = v42;
  v30 = v39;
  (*(v41 + 104))(v39, *MEMORY[0x1E6969830], v42);
  v31 = v40;
  sub_1B77FFB18();
  (*(v29 + 8))(v30, v28);
  v32 = v37;
  sub_1B77FFC08();
  result = (v21)(v32, 1, v16);
  if (result != 1)
  {
    (*(v35 + 8))(v31, v36);
    sub_1B76E13B0(v27, type metadata accessor for Duration);
    (*(v17 + 8))(v19, v16);
    v23 = v45;
    (v43)(v45, v32, v16);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B76DDC50(char a1)
{
  result = 0x6D657449656E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x72656972726163;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x737574617473;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7365746F6ELL;
      break;
    case 6:
    case 7:
      result = 0x676E696B63617274;
      break;
    case 8:
      result = 0x6E65697069636572;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0x65726576696C6564;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x4164657070696873;
      break;
    case 14:
      result = 0x676E697070696873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B76DDE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76E1B60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76DDE38(uint64_t a1)
{
  v2 = sub_1B76E1110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76DDE74(uint64_t a1)
{
  v2 = sub_1B76E1110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall RawOrderShippingFulfillment.clearEstimatedDeliveryWindowDuration()()
{
  v1 = *(type metadata accessor for RawOrderShippingFulfillment() + 56);
  sub_1B7205418(v0 + v1, &qword_1EB995FF0);
  v2 = type metadata accessor for Duration();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t RawOrderShippingRecipient.familyName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawOrderShippingRecipient.familyName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawOrderShippingRecipient.givenName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawOrderShippingRecipient.givenName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawOrderShippingRecipient.organizationName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawOrderShippingRecipient.organizationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RawOrderShippingRecipient.address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v13 = *(v1 + 112);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 144);
  v4 = v15;
  v5 = *(v1 + 64);
  v10[0] = *(v1 + 48);
  v10[1] = v5;
  v6 = *(v1 + 96);
  v11 = *(v1 + 80);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1B7205588(v10, v9, &qword_1EB995F40);
}

__n128 RawOrderShippingRecipient.address.setter(uint64_t a1)
{
  v3 = *(v1 + 128);
  v9[4] = *(v1 + 112);
  v9[5] = v3;
  v10 = *(v1 + 144);
  v4 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v9[1] = v4;
  v5 = *(v1 + 96);
  v9[2] = *(v1 + 80);
  v9[3] = v5;
  sub_1B7205418(v9, &qword_1EB995F40);
  v6 = *(a1 + 80);
  *(v1 + 112) = *(a1 + 64);
  *(v1 + 128) = v6;
  *(v1 + 144) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v7;
  result = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = result;
  return result;
}

uint64_t sub_1B76DE21C(uint64_t a1)
{
  v2 = sub_1B76E135C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76DE258(uint64_t a1)
{
  v2 = sub_1B76E135C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderShippingRecipient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BBC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = *v1;
  v8 = v1[3];
  v15[3] = v1[2];
  v15[4] = v7;
  v9 = v1[5];
  v15[1] = v1[4];
  v15[2] = v8;
  v15[0] = v9;
  v10 = *(v1 + 8);
  v29 = *(v1 + 7);
  v30 = v10;
  v31 = v1[18];
  v11 = *(v1 + 4);
  v25 = *(v1 + 3);
  v26 = v11;
  v12 = *(v1 + 6);
  v27 = *(v1 + 5);
  v28 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76E135C();
  sub_1B78023F8();
  LOBYTE(v18) = 0;
  v13 = v15[5];
  sub_1B7801EF8();
  if (!v13)
  {
    LOBYTE(v18) = 1;
    sub_1B7801EF8();
    LOBYTE(v18) = 2;
    sub_1B7801EF8();
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v32 = 3;
    sub_1B7205588(&v25, v16, &qword_1EB995F40);
    sub_1B7304418();
    sub_1B7801F38();
    v16[4] = v22;
    v16[5] = v23;
    v17 = v24;
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v16[3] = v21;
    sub_1B7205418(v16, &qword_1EB995F40);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawOrderShippingRecipient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99BBD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B76E135C();
  sub_1B78023C8();
  if (v2)
  {
    v94 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v49 = v6;
    LOBYTE(v82) = 0;
    *&v48 = sub_1B7801D78();
    *(&v48 + 1) = v17;
    LOBYTE(v82) = 1;
    v13 = sub_1B7801D78();
    v47 = v18;
    LOBYTE(v82) = 2;
    v19 = sub_1B7801D78();
    v94 = 0;
    v11 = v19;
    v10 = v20;
    v68 = 3;
    sub_1B73043C4();
    v21 = v94;
    sub_1B7801DB8();
    v94 = v21;
    if (!v21)
    {
      (*(v49 + 8))(v8, v5);
      v23 = v69;
      v22 = v70;
      v41 = v69;
      v42 = v70;
      v49 = v72;
      v24 = v74;
      v37 = v75;
      v38 = v71;
      v45 = v76;
      v46 = v73;
      v25 = v77;
      v39 = v77;
      v40 = v74;
      v35 = v79;
      v36 = v78;
      v43 = v81;
      v44 = v80;
      v51 = 1;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      sub_1B7205418(&v51, &qword_1EB995F40);
      v58 = v48;
      *&v59 = v13;
      *(&v59 + 1) = v47;
      *&v60 = v11;
      *(&v60 + 1) = v10;
      *&v61 = v23;
      *(&v61 + 1) = v22;
      v26 = v37;
      v27 = v38;
      *&v62 = v38;
      *(&v62 + 1) = v49;
      *&v63 = v46;
      *(&v63 + 1) = v24;
      *&v64 = v37;
      *(&v64 + 1) = v45;
      v28 = v36;
      *&v65 = v25;
      *(&v65 + 1) = v36;
      v29 = v35;
      *&v66 = v35;
      *(&v66 + 1) = v44;
      v67 = v43;
      *(a2 + 144) = v43;
      v30 = v63;
      *(a2 + 64) = v62;
      *(a2 + 80) = v30;
      v31 = v61;
      *(a2 + 32) = v60;
      *(a2 + 48) = v31;
      v32 = v66;
      *(a2 + 112) = v65;
      *(a2 + 128) = v32;
      *(a2 + 96) = v64;
      v33 = v59;
      *a2 = v58;
      *(a2 + 16) = v33;
      sub_1B760CE50(&v58, &v82);
      __swift_destroy_boxed_opaque_existential_1(v50);
      v82 = v48;
      v83 = v13;
      v84 = v47;
      v85 = v11;
      v86 = v10;
      v87 = v41;
      *&v88 = v42;
      *(&v88 + 1) = v27;
      *&v89 = v49;
      *(&v89 + 1) = v46;
      *&v90 = v40;
      *(&v90 + 1) = v26;
      *&v91 = v45;
      *(&v91 + 1) = v39;
      *&v92 = v28;
      *(&v92 + 1) = v29;
      *&v93 = v44;
      *(&v93 + 1) = v43;
      return sub_1B760E304(&v82);
    }

    (*(v49 + 8))(v8, v5);
    v14 = *(&v48 + 1);
    v15 = v48;
    v12 = v47;
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  *&v82 = v15;
  *(&v82 + 1) = v14;
  v83 = v13;
  v84 = v12;
  v85 = v11;
  v86 = v10;
  v87 = 1;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  return sub_1B760E304(&v82);
}

uint64_t sub_1B76DE97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B7205588(a1, &v6 - v3, &qword_1EB990828);
  return RawOrderShippingFulfillment.estimatedDeliveryWindow.setter(v4);
}

uint64_t RawOrderShippingFulfillment.estimatedDeliveryWindow.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v36 - v4;
  v37 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Order.FulfillmentWindow(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - v19;
  v40 = a1;
  sub_1B7205588(a1, v17, &qword_1EB990828);
  v21 = *(v7 + 48);
  if (v21(v17, 1, v6) == 1)
  {
    sub_1B7205418(v17, &qword_1EB990828);
    v22 = sub_1B77FF988();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  else
  {
    v36 = v1;
    sub_1B71B44A0(v17, v11, type metadata accessor for Order.FulfillmentWindow);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v11;
      v24 = v39;
      sub_1B719AAB4(v23, v39, type metadata accessor for TimeWindow);
      v25 = sub_1B77FF988();
      (*(*(v25 - 8) + 16))(v20, v24, v25);
      sub_1B76E13B0(v24, type metadata accessor for TimeWindow);
    }

    else
    {
      v25 = sub_1B77FF988();
      (*(*(v25 - 8) + 32))(v20, v11, v25);
    }

    sub_1B76E13B0(v17, type metadata accessor for Order.FulfillmentWindow);
    sub_1B77FF988();
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
    v1 = v36;
  }

  v26 = type metadata accessor for RawOrderShippingFulfillment();
  sub_1B7213740(v20, v1 + *(v26 + 52), &qword_1EB98EBD0);
  sub_1B76C1794(v40, v15);
  if (v21(v15, 1, v6) == 1)
  {
    sub_1B7205418(v15, &qword_1EB990828);
    v27 = type metadata accessor for Duration();
    v28 = v41;
    (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  }

  else
  {
    v29 = v38;
    sub_1B71B44A0(v15, v38, type metadata accessor for Order.FulfillmentWindow);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = v41;
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v29;
      v32 = v39;
      sub_1B719AAB4(v31, v39, type metadata accessor for TimeWindow);
      sub_1B71B44A0(v32 + *(v37 + 20), v28, type metadata accessor for Duration);
      sub_1B76E13B0(v32, type metadata accessor for TimeWindow);
      v33 = type metadata accessor for Duration();
      (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
    }

    else
    {
      v34 = type metadata accessor for Duration();
      (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
      sub_1B76E13B0(v29, type metadata accessor for Order.FulfillmentWindow);
    }

    sub_1B76E13B0(v15, type metadata accessor for Order.FulfillmentWindow);
  }

  return sub_1B7213740(v28, v1 + *(v26 + 56), &qword_1EB995FF0);
}

void (*RawOrderShippingFulfillment.estimatedDeliveryWindow.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  RawOrderShippingFulfillment.estimatedDeliveryWindow.getter(v4);
  return sub_1B76DF150;
}

void sub_1B76DF150(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B7205588(*(a1 + 16), v2, &qword_1EB990828);
    RawOrderShippingFulfillment.estimatedDeliveryWindow.setter(v2);
    sub_1B7205418(v3, &qword_1EB990828);
  }

  else
  {
    RawOrderShippingFulfillment.estimatedDeliveryWindow.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

BOOL _s10FinanceKit25RawOrderShippingRecipientV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 8);
  v57[4] = *(a1 + 7);
  v57[5] = v9;
  v58 = a1[18];
  v10 = *(a1 + 4);
  v57[0] = *(a1 + 3);
  v57[1] = v10;
  v11 = *(a1 + 6);
  v57[2] = *(a1 + 5);
  v57[3] = v11;
  v12 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  v60 = a2[18];
  v18 = *(a2 + 8);
  v59[4] = *(a2 + 7);
  v59[5] = v18;
  v19 = *(a2 + 6);
  v59[2] = *(a2 + 5);
  v59[3] = v19;
  v20 = *(a2 + 4);
  v59[0] = *(a2 + 3);
  v59[1] = v20;
  if (v4)
  {
    if (!v13)
    {
      return 0;
    }

    if (v3 != v12 || v4 != v13)
    {
      v21 = a2;
      v22 = sub_1B78020F8();
      a2 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v7)
  {
    if (!v14)
    {
      return 0;
    }

    if (v5 != v15 || v7 != v14)
    {
      v23 = a2;
      v24 = sub_1B78020F8();
      a2 = v23;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v8)
  {
    if (v16)
    {
      if (v6 == v17 && v8 == v16 || (v25 = a2, v26 = sub_1B78020F8(), a2 = v25, (v26 & 1) != 0))
      {
LABEL_20:
        v27 = *&v57[0];
        v28 = *&v59[0];
        if (*&v57[0] == 1)
        {
          if (*&v59[0] == 1)
          {
            v29 = 1;
            *v49 = 1;
            *&v49[40] = *(a1 + 11);
            *&v49[56] = *(a1 + 13);
            *&v49[72] = *(a1 + 15);
            *&v49[88] = *(a1 + 17);
            *&v49[8] = *(a1 + 7);
            *&v49[24] = *(a1 + 9);
            sub_1B7205588(v57, &v42, &qword_1EB995F40);
            sub_1B7205588(v59, &v42, &qword_1EB995F40);
            v30 = v49;
LABEL_31:
            sub_1B7205418(v30, &qword_1EB995F40);
            return v29;
          }

          v32 = a2;
          sub_1B7205588(v57, v49, &qword_1EB995F40);
          sub_1B7205588(v59, v49, &qword_1EB995F40);
        }

        else
        {
          *v49 = *&v57[0];
          *&v49[8] = *(a1 + 7);
          *&v49[24] = *(a1 + 9);
          *&v49[40] = *(a1 + 11);
          *&v49[88] = *(a1 + 17);
          *&v49[72] = *(a1 + 15);
          *&v49[56] = *(a1 + 13);
          v42 = *v49;
          v43 = *&v49[16];
          v48 = *&v49[96];
          v46 = *&v49[64];
          v47 = *&v49[80];
          v44 = *&v49[32];
          v45 = *&v49[48];
          if (*&v59[0] != 1)
          {
            *&v41[40] = *(a2 + 11);
            *&v41[56] = *(a2 + 13);
            *&v41[72] = *(a2 + 15);
            *&v41[88] = *(a2 + 17);
            *&v41[8] = *(a2 + 7);
            *&v41[24] = *(a2 + 9);
            *v41 = *&v59[0];
            v29 = _s10FinanceKit10RawAddressV2eeoiySbAC_ACtFZ_0(&v42, v41);
            v37[4] = *&v41[64];
            v37[5] = *&v41[80];
            v38 = *&v41[96];
            v37[0] = *v41;
            v37[1] = *&v41[16];
            v37[2] = *&v41[32];
            v37[3] = *&v41[48];
            sub_1B7205588(v57, v39, &qword_1EB995F40);
            sub_1B7205588(v59, v39, &qword_1EB995F40);
            sub_1B7205588(v49, v39, &qword_1EB995F40);
            sub_1B730446C(v37);
            v39[4] = v46;
            v39[5] = v47;
            v40 = v48;
            v39[0] = v42;
            v39[1] = v43;
            v39[2] = v44;
            v39[3] = v45;
            sub_1B730446C(v39);
            *v41 = v27;
            *&v41[40] = *(a1 + 11);
            *&v41[56] = *(a1 + 13);
            *&v41[72] = *(a1 + 15);
            *&v41[88] = *(a1 + 17);
            *&v41[8] = *(a1 + 7);
            *&v41[24] = *(a1 + 9);
            v30 = v41;
            goto LABEL_31;
          }

          v32 = a2;
          *&v41[64] = *&v49[64];
          *&v41[80] = *&v49[80];
          *&v41[96] = *&v49[96];
          *v41 = *v49;
          *&v41[16] = *&v49[16];
          *&v41[32] = *&v49[32];
          *&v41[48] = *&v49[48];
          sub_1B7205588(v57, v39, &qword_1EB995F40);
          sub_1B7205588(v59, v39, &qword_1EB995F40);
          sub_1B7205588(v49, v39, &qword_1EB995F40);
          sub_1B730446C(v41);
        }

        *&v49[40] = *(a1 + 11);
        *&v49[56] = *(a1 + 13);
        *&v49[72] = *(a1 + 15);
        *&v49[88] = *(a1 + 17);
        *&v49[8] = *(a1 + 7);
        *&v49[24] = *(a1 + 9);
        *v49 = v27;
        v50 = v28;
        v33 = *(v32 + 9);
        v51 = *(v32 + 7);
        v52 = v33;
        v34 = *(v32 + 11);
        v35 = *(v32 + 13);
        v36 = *(v32 + 17);
        v55 = *(v32 + 15);
        v56 = v36;
        v53 = v34;
        v54 = v35;
        sub_1B7205418(v49, &qword_1EB99AE20);
        return 0;
      }
    }
  }

  else if (!v16)
  {
    goto LABEL_20;
  }

  return 0;
}