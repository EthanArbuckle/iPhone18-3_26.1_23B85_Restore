uint64_t RCSService.Business.Menu.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92AF8, &qword_1E4BFC6F8);
  v55 = *(v52 - 8);
  v3 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v56 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B00, &qword_1E4BFC700);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v58 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B08, &unk_1E4BFC708);
  v57 = *(v9 - 8);
  v10 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v12 = &v49 - v11;
  v13 = type metadata accessor for RCSService.Business.Menu.Content();
  v14 = *(*(v13 - 8) + 64);
  v15 = (MEMORY[0x1EEE9AC00])();
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E4AEA9E8();
  v25 = v60;
  sub_1E4BF0ABC();
  if (!v25)
  {
    v50 = v17;
    v51 = v22;
    v60 = v20;
    v27 = v57;
    v26 = v58;
    v28 = v59;
    v29 = sub_1E4BF088C();
    v30 = (2 * *(v29 + 16)) | 1;
    v63 = v29;
    v64 = v29 + 32;
    v65 = 0;
    v66 = v30;
    v31 = sub_1E4AE0F10();
    v32 = v9;
    if (v31 == 2 || v65 != v66 >> 1)
    {
      v40 = sub_1E4BF06EC();
      swift_allocError();
      v42 = v41;
      v43 = v12;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v42 = v13;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v27 + 8))(v43, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        LOBYTE(v61) = 1;
        sub_1E4AEAAA0();
        v33 = v56;
        sub_1E4BF07EC();
        v34 = v28;
        sub_1E4AEAB9C();
        v35 = v52;
        sub_1E4BF087C();
        (*(v55 + 8))(v33, v35);
        (*(v27 + 8))(v12, v32);
        swift_unknownObjectRelease();
        v36 = v62;
        v37 = v50;
        *v50 = v61;
        *(v37 + 2) = v36;
        swift_storeEnumTagMultiPayload();
        v38 = v37;
        v39 = v51;
        sub_1E4AEABF0(v38, v51, type metadata accessor for RCSService.Business.Menu.Content);
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_1E4AEAB48();
        v46 = v26;
        sub_1E4BF07EC();
        type metadata accessor for RCSService.Business.Suggestion(0);
        sub_1E4AEAD48(&qword_1ECF92B18, type metadata accessor for RCSService.Business.Suggestion);
        v47 = v60;
        v48 = v53;
        sub_1E4BF087C();
        (*(v54 + 8))(v46, v48);
        (*(v27 + 8))(v12, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v39 = v51;
        sub_1E4AEABF0(v47, v51, type metadata accessor for RCSService.Business.Menu.Content);
        v34 = v59;
      }

      sub_1E4AEABF0(v39, v34, type metadata accessor for RCSService.Business.Menu.Content);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t RCSService.Business.Menu.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.Menu.init(title:contents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1E4AE9FD4()
{
  if (*v0)
  {
    result = 0x73746E65746E6F63;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AEA00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AEA0E4(uint64_t a1)
{
  v2 = sub_1E4AEAC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AEA120(uint64_t a1)
{
  v2 = sub_1E4AEAC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Menu.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B20, &qword_1E4BFC718);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEAC58();
  sub_1E4BF0ACC();
  v17 = 0;
  sub_1E4BF08CC();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B30, &qword_1E4BFC720);
    sub_1E4AEACAC(&qword_1ECF92B38, &qword_1ECF92B40);
    sub_1E4BF093C();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t RCSService.Business.Menu.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B48, &qword_1E4BFC728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEAC58();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1E4BF080C();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92B30, &qword_1E4BFC720);
  v18 = 1;
  sub_1E4AEACAC(&qword_1ECF92B50, &qword_1ECF92B58);
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4MenuV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1E4BF099C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1E4BC6054(v4, v6);
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV4MenuV7ContentO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RCSService.Business.Menu.Content();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BD0, &qword_1E4BFCCD8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v31 - v18;
  v20 = (&v31 + *(v17 + 56) - v18);
  sub_1E4AEAA3C(a1, &v31 - v18);
  sub_1E4AEAA3C(a2, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E4AEAA3C(v19, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E4AEABF0(v20, v7, type metadata accessor for RCSService.Business.Suggestion);
      v28 = static RCSService.Business.Suggestion.== infix(_:_:)(v14, v7);
      sub_1E4AEB320(v7, type metadata accessor for RCSService.Business.Suggestion);
      sub_1E4AEB320(v14, type metadata accessor for RCSService.Business.Suggestion);
      sub_1E4AEB320(v19, type metadata accessor for RCSService.Business.Menu.Content);
      return v28 & 1;
    }

    sub_1E4AEB320(v14, type metadata accessor for RCSService.Business.Suggestion);
LABEL_14:
    sub_1E4AEB2B8(v19);
LABEL_21:
    v28 = 0;
    return v28 & 1;
  }

  sub_1E4AEAA3C(v19, v12);
  v22 = *v12;
  v21 = v12[1];
  v23 = v12[2];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_14;
  }

  v24 = v20[1];
  v25 = v20[2];
  if (v21)
  {
    if (!v24)
    {
      goto LABEL_17;
    }

    if (v22 != *v20 || v21 != v24)
    {
      v27 = v20[1];
      if ((sub_1E4BF099C() & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v24)
  {
LABEL_17:

LABEL_20:
    sub_1E4AEB320(v19, type metadata accessor for RCSService.Business.Menu.Content);
    goto LABEL_21;
  }

  v29 = sub_1E4BC6054(v23, v25);

  if ((v29 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1E4AEB320(v19, type metadata accessor for RCSService.Business.Menu.Content);
  v28 = 1;
  return v28 & 1;
}

uint64_t type metadata accessor for RCSService.Business.Menu.Content()
{
  result = qword_1ECF92B60;
  if (!qword_1ECF92B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E4AEA9E8()
{
  result = qword_1ECF92AD0;
  if (!qword_1ECF92AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AD0);
  }

  return result;
}

uint64_t sub_1E4AEAA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Menu.Content();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4AEAAA0()
{
  result = qword_1ECF92AD8;
  if (!qword_1ECF92AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AD8);
  }

  return result;
}

unint64_t sub_1E4AEAAF4()
{
  result = qword_1ECF92AE0;
  if (!qword_1ECF92AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AE0);
  }

  return result;
}

unint64_t sub_1E4AEAB48()
{
  result = qword_1ECF92AE8;
  if (!qword_1ECF92AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92AE8);
  }

  return result;
}

unint64_t sub_1E4AEAB9C()
{
  result = qword_1ECF92B10;
  if (!qword_1ECF92B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B10);
  }

  return result;
}

uint64_t sub_1E4AEABF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4AEAC58()
{
  result = qword_1ECF92B28;
  if (!qword_1ECF92B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B28);
  }

  return result;
}

uint64_t sub_1E4AEACAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92B30, &qword_1E4BFC720);
    sub_1E4AEAD48(a2, type metadata accessor for RCSService.Business.Menu.Content);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4AEAD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4AEADF0()
{
  result = type metadata accessor for RCSService.Business.Suggestion(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4AEAE9C()
{
  result = qword_1ECF92B70;
  if (!qword_1ECF92B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B70);
  }

  return result;
}

unint64_t sub_1E4AEAEF4()
{
  result = qword_1ECF92B78;
  if (!qword_1ECF92B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B78);
  }

  return result;
}

unint64_t sub_1E4AEAF4C()
{
  result = qword_1ECF92B80;
  if (!qword_1ECF92B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B80);
  }

  return result;
}

unint64_t sub_1E4AEAFA4()
{
  result = qword_1ECF92B88;
  if (!qword_1ECF92B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B88);
  }

  return result;
}

unint64_t sub_1E4AEAFFC()
{
  result = qword_1ECF92B90;
  if (!qword_1ECF92B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B90);
  }

  return result;
}

unint64_t sub_1E4AEB054()
{
  result = qword_1ECF92B98;
  if (!qword_1ECF92B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92B98);
  }

  return result;
}

unint64_t sub_1E4AEB0AC()
{
  result = qword_1ECF92BA0;
  if (!qword_1ECF92BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BA0);
  }

  return result;
}

unint64_t sub_1E4AEB104()
{
  result = qword_1ECF92BA8;
  if (!qword_1ECF92BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BA8);
  }

  return result;
}

unint64_t sub_1E4AEB15C()
{
  result = qword_1ECF92BB0;
  if (!qword_1ECF92BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BB0);
  }

  return result;
}

unint64_t sub_1E4AEB1B4()
{
  result = qword_1ECF92BB8;
  if (!qword_1ECF92BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BB8);
  }

  return result;
}

unint64_t sub_1E4AEB20C()
{
  result = qword_1ECF92BC0;
  if (!qword_1ECF92BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BC0);
  }

  return result;
}

unint64_t sub_1E4AEB264()
{
  result = qword_1ECF92BC8;
  if (!qword_1ECF92BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BC8);
  }

  return result;
}

uint64_t sub_1E4AEB2B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BD0, &qword_1E4BFCCD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4AEB320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MMSHandle.phoneNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MMSHandle.phoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1E4AEB430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4AEB4BC(uint64_t a1)
{
  v2 = sub_1E4AEB670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AEB4F8(uint64_t a1)
{
  v2 = sub_1E4AEB670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BD8, &qword_1E4BFCCF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEB670();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4AEB670()
{
  result = qword_1ECF92BE0;
  if (!qword_1ECF92BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BE0);
  }

  return result;
}

uint64_t MMSHandle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BE8, &unk_1E4BFCCF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEB670();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v11 = sub_1E4BF083C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4AEB850(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BD8, &qword_1E4BFCCF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AEB670();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MMSPartContent.data.getter()
{
  v1 = *v0;
  sub_1E4AE4B38(*v0, *(v0 + 8));
  return v1;
}

uint64_t MMSPartContent.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1E4AE4BE8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MMSPartContent.filename.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t MMSPartContent.filename.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MMSPartContent.contentID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MMSPartContent.contentID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MMSPartContent.customHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for MMSPartContent(0) + 36));
}

uint64_t MMSPartContent.customHeaders.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MMSPartContent(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MMSPartContent.init(data:contentType:contentID:disposition:fileName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a6;
  v17 = type metadata accessor for MMSPartContent(0);
  v18 = *(v17 + 32);
  v19 = sub_1E4BEFB4C();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *(a9 + *(v17 + 36)) = MEMORY[0x1E69E7CC0];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v16;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  result = sub_1E4AF1900(a3, a9 + v18, &qword_1ECF92700, &qword_1E4BFB090);
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  return result;
}

uint64_t sub_1E4AEBDCC()
{
  v20 = 0x203D3D3D3D3D3D3DLL;
  v21 = 0xE800000000000000;
  v1 = *(type metadata accessor for MMSPartContent(0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1E4AF1898(v0 + v1, &v16 - v4, &qword_1ECF92700, &qword_1E4BFB090);
  v5 = sub_1E4BEFEFC();
  MEMORY[0x1E69205B0](v5);

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1E4BF069C();
  result = MEMORY[0x1E69205B0](0x5B203A61746164, 0xE700000000000000);
  v7 = *v0;
  v8 = v0[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = v7 + 16;
    v7 = *(v7 + 16);
    v11 = *(v12 + 8);
    v13 = __OFSUB__(v11, v7);
    v10 = v11 - v7;
    if (!v13)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v8);
LABEL_10:
    v17 = v10;
    v15 = sub_1E4BF096C();
    MEMORY[0x1E69205B0](v15);

    MEMORY[0x1E69205B0](0x2C7365747962205DLL, 0xEF203A7073696420);
    LOBYTE(v17) = *(v0 + 16);
    sub_1E4BF078C();
    MEMORY[0x1E69205B0](0x616E656C6966202CLL, 0xEC000000203A656DLL);
    MEMORY[0x1E69205B0](v0[3], v0[4]);
    MEMORY[0x1E69205B0](0x203A65707974202CLL, 0xE800000000000000);
    sub_1E4BF078C();
    MEMORY[0x1E69205B0](0x203A6469202CLL, 0xE600000000000000);
    MEMORY[0x1E69205B0](v0[5], v0[6]);
    MEMORY[0x1E69205B0](v18, v19);

    return v20;
  }

  v13 = __OFSUB__(HIDWORD(v7), v7);
  v14 = HIDWORD(v7) - v7;
  if (!v13)
  {
    v10 = v14;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4AEC058(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F78, &unk_1E4C05E60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4BFCCE0;
  v3 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v3;
  v4 = 1;
  if (a1)
  {
    v4 = 2;
  }

  *(v2 + 32) = v4;
  v5 = sub_1E4BEFECC();
  MEMORY[0x1E69205B0](v5);
}

uint64_t sub_1E4AEC0F8()
{
  sub_1E4BF069C();

  v0 = sub_1E4BF096C();
  MEMORY[0x1E69205B0](v0);

  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  MEMORY[0x1E69205B0](0xD000000000000017, 0x80000001E4BF14A0);
}

Swift::Void __swiftcall MMSPartContent.addCustomHeader(_:)(TelephonyMessagingKit::MMSPartContent::MMSCustomHeader a1)
{
  v3 = *a1.key._countAndFlagsBits;
  v2 = *(a1.key._countAndFlagsBits + 8);
  v5 = *(a1.key._countAndFlagsBits + 16);
  v4 = *(a1.key._countAndFlagsBits + 24);
  v6 = *(type metadata accessor for MMSPartContent(0) + 36);
  v7 = *(v1 + v6);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1E4AF0DD8(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1E4AF0DD8((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[32 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v2;
  *(v10 + 6) = v5;
  *(v10 + 7) = v4;
  *(v1 + v6) = v7;
}

uint64_t sub_1E4AEC290()
{
  v1 = *v0;
  v2 = 1635017060;
  v3 = 0x49746E65746E6F63;
  v4 = 0x54746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 0x65486D6F74737563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7469736F70736964;
  if (v1 != 1)
  {
    v5 = 0x656D616E656C6966;
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

uint64_t sub_1E4AEC364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AF2E24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AEC398(uint64_t a1)
{
  v2 = sub_1E4AF0EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AEC3D4(uint64_t a1)
{
  v2 = sub_1E4AF0EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSPartContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92BF0, &qword_1E4BFCD08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF0EE4();
  sub_1E4BF0ACC();
  v11 = *(v3 + 8);
  v21 = *v3;
  v22 = v11;
  v20 = 0;
  sub_1E4AE4B38(v21, v11);
  sub_1E4AE536C();
  sub_1E4BF093C();
  if (v2)
  {
    sub_1E4AE4BE8(v21, v22);
  }

  else
  {
    sub_1E4AE4BE8(v21, v22);
    LOBYTE(v21) = *(v3 + 16);
    v20 = 1;
    sub_1E4AF0F38();
    sub_1E4BF093C();
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    LOBYTE(v21) = 2;
    sub_1E4BF08FC();
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    LOBYTE(v21) = 3;
    sub_1E4BF08FC();
    v16 = type metadata accessor for MMSPartContent(0);
    v17 = *(v16 + 32);
    LOBYTE(v21) = 4;
    sub_1E4BEFB4C();
    sub_1E4AF109C(&qword_1ECF92C08);
    sub_1E4BF08EC();
    v21 = *(v3 + *(v16 + 36));
    v20 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C10, &qword_1E4BFCD10);
    sub_1E4AF10E0(&qword_1ECF92C18, sub_1E4AF0F8C);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MMSPartContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C28, &qword_1E4BFCD18);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for MMSPartContent(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 32);
  v14 = sub_1E4BEFB4C();
  v15 = *(*(v14 - 8) + 56);
  v34 = v13;
  v16 = v12;
  v15(&v12[v13], 1, 1, v14);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF0EE4();
  v33 = v7;
  sub_1E4BF0ABC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E4AF0FE0(v16 + v34);
  }

  else
  {
    v18 = v8;
    v19 = v31;
    v36 = 0;
    sub_1E4AE5858();
    sub_1E4BF087C();
    *v16 = v35;
    v36 = 1;
    sub_1E4AF1048();
    sub_1E4BF087C();
    *(v16 + 16) = v35;
    LOBYTE(v35) = 2;
    *(v16 + 24) = sub_1E4BF083C();
    *(v16 + 32) = v20;
    LOBYTE(v35) = 3;
    *(v16 + 40) = sub_1E4BF083C();
    *(v16 + 48) = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v22 - 8);
    v25 = &v29 - v24;
    LOBYTE(v35) = 4;
    sub_1E4AF109C(&qword_1ECF92C38);
    sub_1E4BF082C();
    sub_1E4AF1900(v25, v16 + v34, &qword_1ECF92700, &qword_1E4BFB090);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C10, &qword_1E4BFCD10);
    v36 = 5;
    sub_1E4AF10E0(&qword_1ECF92C40, sub_1E4AF1158);
    v26 = v32;
    sub_1E4BF087C();
    v27 = *(v18 + 36);
    (*(v19 + 8))(v33, v26);
    *(v16 + v27) = v35;
    sub_1E4AF17D0(v16, v30, type metadata accessor for MMSPartContent);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1E4AF1838(v16, type metadata accessor for MMSPartContent);
  }
}

uint64_t sub_1E4AECC60(uint64_t a1)
{
  v2 = sub_1E4AF1254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AECC9C(uint64_t a1)
{
  v2 = sub_1E4AF1254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AECCD8()
{
  if (*v0)
  {
    result = 0x656E696C6E69;
  }

  else
  {
    result = 0x656D686361747461;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AECD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E696C6E69 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AECDF4(uint64_t a1)
{
  v2 = sub_1E4AF11AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AECE30(uint64_t a1)
{
  v2 = sub_1E4AF11AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AECE6C(uint64_t a1)
{
  v2 = sub_1E4AF1200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AECEA8(uint64_t a1)
{
  v2 = sub_1E4AF1200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSPartContent.MMSDispositionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C50, &qword_1E4BFCD20);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C58, &qword_1E4BFCD28);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C60, &qword_1E4BFCD30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF11AC();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4AF1200();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4AF1254();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t MMSPartContent.MMSDispositionType.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t MMSPartContent.MMSDispositionType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C80, &qword_1E4BFCD38);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C88, &qword_1E4BFCD40);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C90, &unk_1E4BFCD48);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF11AC();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for MMSPartContent.MMSDispositionType;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4AF1200();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4AF1254();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t MMSPartContent.MMSCustomHeader.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MMSPartContent.MMSCustomHeader.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E4AED754()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AED784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AED85C(uint64_t a1)
{
  v2 = sub_1E4AF12A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AED898(uint64_t a1)
{
  v2 = sub_1E4AF12A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSPartContent.MMSCustomHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92C98, &qword_1E4BFCD58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF12A8();
  sub_1E4BF0ACC();
  v16 = 0;
  v12 = v14[3];
  sub_1E4BF08FC();
  if (!v12)
  {
    v15 = 1;
    sub_1E4BF08FC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MMSPartContent.MMSCustomHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CA8, &qword_1E4BFCD60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF12A8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E4BF083C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MMSContent.parts.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MMSContent.recipients.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MMSContent.subject.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MMSContent.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MMSContent.from.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t MMSContent.from.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MMSContent.headers.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

double MMSContent.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t MMSContent.init(parts:recipients:subject:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[5] = 0;
  v5 = MEMORY[0x1E69E7CC8];
  a5[3] = a4;
  a5[4] = 0;
  a5[6] = v5;
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

unint64_t sub_1E4AEDEC0()
{
  v1 = type metadata accessor for MMSPartContent(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v9 = v0[2];
  v8 = v0[3];
  v26 = 0xD000000000000010;
  v27 = 0x80000001E4BF15A0;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  strcpy(v25, "Subject: ");
  WORD1(v25[1]) = 0;
  HIDWORD(v25[1]) = -385875968;

  MEMORY[0x1E69205B0](v10, v11);

  MEMORY[0x1E69205B0](10, 0xE100000000000000);

  MEMORY[0x1E69205B0](v25[0], v25[1]);

  v25[0] = *(v7 + 16);
  v12 = sub_1E4BF096C();
  strcpy(v25, "recipients: ");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  MEMORY[0x1E69205B0](v12);

  MEMORY[0x1E69205B0](10, 0xE100000000000000);

  MEMORY[0x1E69205B0](v25[0], v25[1]);

  v13 = *(v7 + 16);
  if (v13)
  {
    v14 = (v7 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v25[0] = 9;
      v25[1] = 0xE100000000000000;

      MEMORY[0x1E69205B0](v15, v16);

      MEMORY[0x1E69205B0](10, 0xE100000000000000);

      MEMORY[0x1E69205B0](v25[0], v25[1]);

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v25[0] = *(v6 + 16);
  v17 = sub_1E4BF096C();
  strcpy(v25, "Parts: ");
  v25[1] = 0xE700000000000000;
  MEMORY[0x1E69205B0](v17);

  MEMORY[0x1E69205B0](10, 0xE100000000000000);

  MEMORY[0x1E69205B0](v25[0], v25[1]);

  v18 = *(v6 + 16);
  if (v18)
  {
    v19 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v20 = *(v2 + 72);
    do
    {
      sub_1E4AF17D0(v19, v5, type metadata accessor for MMSPartContent);
      v21 = sub_1E4AEBDCC();
      v23 = v22;
      sub_1E4AF1838(v5, type metadata accessor for MMSPartContent);
      v25[0] = 9;
      v25[1] = 0xE100000000000000;
      MEMORY[0x1E69205B0](v21, v23);

      MEMORY[0x1E69205B0](10, 0xE100000000000000);

      MEMORY[0x1E69205B0](v25[0], v25[1]);

      v19 += v20;
      --v18;
    }

    while (v18);
  }

  return v26;
}

uint64_t sub_1E4AEE27C()
{
  v1 = *v0;
  v2 = 0x7374726170;
  v3 = 0x7463656A627573;
  v4 = 1836020326;
  if (v1 != 3)
  {
    v4 = 0x73726564616568;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E65697069636572;
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

uint64_t sub_1E4AEE310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AF3038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AEE338(uint64_t a1)
{
  v2 = sub_1E4AF12FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AEE374(uint64_t a1)
{
  v2 = sub_1E4AF12FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSContent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CB0, &qword_1E4BFCD68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v20 = v1[2];
  v21 = v9;
  v12 = v1[5];
  v18 = v1[4];
  v19 = v11;
  v16 = v1[6];
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF12FC();

  sub_1E4BF0ACC();
  v22 = v10;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CC0, &qword_1E4BFCD70);
  sub_1E4AF141C(&qword_1ECF92CC8, &qword_1ECF92CD0);
  sub_1E4BF093C();
  if (v2)
  {
  }

  else
  {
    v14 = v18;

    v22 = v21;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CD8, &qword_1E4BFCD78);
    sub_1E4AF1350(&qword_1ECF92CE0, sub_1E4AF13C8);
    sub_1E4BF093C();
    LOBYTE(v22) = 2;
    sub_1E4BF08CC();
    v22 = v14;
    v23 = v17;
    v24 = 3;
    sub_1E4AF13C8();

    sub_1E4BF08EC();

    v22 = v16;
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CF0, &qword_1E4BFCD80);
    sub_1E4AF1554(&qword_1ECF92CF8);
    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MMSContent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D00, &qword_1E4BFCD88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF12FC();
  sub_1E4BF0ABC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CC0, &qword_1E4BFCD70);
    v28 = 0;
    sub_1E4AF141C(&qword_1ECF92D08, &qword_1ECF92D10);
    sub_1E4BF087C();
    v12 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CD8, &qword_1E4BFCD78);
    v28 = 1;
    sub_1E4AF1350(&qword_1ECF92D18, sub_1E4AF1500);
    sub_1E4BF087C();
    v24 = a2;
    v25 = v6;
    v13 = v26;
    LOBYTE(v26) = 2;
    v14 = sub_1E4BF080C();
    v16 = v15;
    v17 = v14;
    v28 = 3;
    sub_1E4AF1500();
    sub_1E4BF082C();
    v22 = v26;
    v23 = v17;
    v18 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92CF0, &qword_1E4BFCD80);
    v28 = 4;
    sub_1E4AF1554(&qword_1ECF92D28);
    sub_1E4BF087C();
    (*(v25 + 8))(v9, v5);
    v19 = v26;
    v21 = v23;
    v20 = v24;
    *v24 = v12;
    v20[1] = v13;
    v20[2] = v21;
    v20[3] = v16;
    v20[4] = v22;
    v20[5] = v18;
    v20[6] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t MMSMessageID.description.getter()
{
  v1 = *v0;
  sub_1E4BF069C();

  v2 = sub_1E4BF096C();
  MEMORY[0x1E69205B0](v2);

  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

_DWORD *sub_1E4AEEC74@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1E4AEED40()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BF0A8C();
  return sub_1E4BF0A9C();
}

uint64_t sub_1E4AEEDB4()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BF0A8C();
  return sub_1E4BF0A9C();
}

uint64_t MMSMessage.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

__n128 MMSMessage.content.setter(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v8 = *(v1 + 48);
  v7 = *(v1 + 56);

  v9 = *(a1 + 16);
  *(v1 + 8) = *a1;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  *(v1 + 24) = v9;
  *(v1 + 56) = v3;
  return result;
}

uint64_t MMSMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MMSMessage(0) + 28);
  v4 = sub_1E4BEFABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MMSMessage.init(cellularServiceID:messageID:content:)@<X0>(_BYTE *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 16);
  *(a4 + 8) = *a3;
  v5 = *a2;
  v6 = *(a3 + 48);
  *a4 = *a1;
  *(a4 + 4) = v5;
  *(a4 + 24) = v4;
  *(a4 + 40) = *(a3 + 32);
  *(a4 + 56) = v6;
  v7 = a4 + *(type metadata accessor for MMSMessage(0) + 28);
  return sub_1E4BEFAAC();
}

uint64_t MMSMessage.description.getter()
{
  sub_1E4BF069C();
  MEMORY[0x1E69205B0](0xD00000000000001ELL, 0x80000001E4BF14C0);
  v1 = *v0;
  sub_1E4BF069C();
  MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
  sub_1E4AEC058(v1);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  MEMORY[0x1E69205B0](0, 0xE000000000000000);

  MEMORY[0x1E69205B0](0x67617373656D202CLL, 0xED0000203A444965);
  v2 = *(v0 + 4);
  sub_1E4AEC0F8();
  MEMORY[0x1E69205B0](0x6E65746E6F63202CLL, 0xEB00000000203A74);
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v7 = *(v0 + 56);
  sub_1E4BF078C();
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0;
}

uint64_t MMSMessage.totalSize.getter()
{
  v1 = type metadata accessor for MMSPartContent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      result = sub_1E4AF17D0(v9, v5, type metadata accessor for MMSPartContent);
      v12 = *v5;
      v13 = v5[1];
      v14 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v14 == 2)
        {
          v17 = v12 + 16;
          v15 = *(v12 + 16);
          v16 = *(v17 + 8);
          v18 = __OFSUB__(v16, v15);
          v12 = v16 - v15;
          if (v18)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v14)
      {
        v18 = __OFSUB__(HIDWORD(v12), v12);
        LODWORD(v12) = HIDWORD(v12) - v12;
        if (v18)
        {
          goto LABEL_18;
        }

        v12 = v12;
      }

      else
      {
        v12 = BYTE6(v13);
      }

      v18 = __OFADD__(v8, v12);
      v8 += v12;
      if (v18)
      {
        break;
      }

      sub_1E4AF1838(v5, type metadata accessor for MMSPartContent);
      v9 += v10;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_15:
    v19 = [objc_opt_self() bytes];
    sub_1E4AF15E0();
    return sub_1E4BEF97C();
  }

  return result;
}

unint64_t sub_1E4AEF3E4()
{
  v1 = 0x496567617373656DLL;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E4AEF468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AF31EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AEF490(uint64_t a1)
{
  v2 = sub_1E4AF162C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AEF4CC(uint64_t a1)
{
  v2 = sub_1E4AF162C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D30, &qword_1E4BFCD90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF162C();
  sub_1E4BF0ACC();
  LOBYTE(v18) = *v3;
  v24 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    LODWORD(v18) = *(v3 + 4);
    v24 = 1;
    sub_1E4AF1680();
    sub_1E4BF093C();
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    v18 = *(v3 + 8);
    v19 = v11;
    v20 = v12;
    v21 = *(v3 + 32);
    v24 = 2;
    v17 = v21;
    v22 = v13;
    v23 = v14;
    sub_1E4AF16D4();

    sub_1E4BF093C();

    v15 = *(type metadata accessor for MMSMessage(0) + 28);
    LOBYTE(v18) = 3;
    sub_1E4BEFABC();
    sub_1E4AF14B8(&qword_1ECF925B0, MEMORY[0x1E6969530]);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MMSMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E4BEFABC();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D50, &qword_1E4BFCD98);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for MMSMessage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E4AF162C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v18 = v15;
  v19 = v28;
  v20 = v7;
  v35 = 0;
  sub_1E4ADBF38();
  v21 = v29;
  sub_1E4BF087C();
  *v18 = v31;
  v35 = 1;
  sub_1E4AF1728();
  sub_1E4BF087C();
  *(v18 + 4) = v31;
  v35 = 2;
  sub_1E4AF177C();
  sub_1E4BF087C();
  v22 = v34;
  v23 = v32;
  *(v18 + 8) = v31;
  *(v18 + 24) = v23;
  *(v18 + 40) = v33;
  *(v18 + 56) = v22;
  LOBYTE(v31) = 3;
  sub_1E4AF14B8(&qword_1ECF925D8, MEMORY[0x1E6969530]);
  sub_1E4BF087C();
  (*(v19 + 8))(v11, v21);
  (*(v26 + 32))(v18 + *(v12 + 28), v20, v4);
  sub_1E4AF17D0(v18, v27, type metadata accessor for MMSMessage);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1E4AF1838(v18, type metadata accessor for MMSMessage);
}

uint64_t MMSService.Configuration.maximumRecipients.getter()
{
  v1 = (v0 + *(type metadata accessor for MMSService.Configuration(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MMSService.Configuration.maximumRecipients.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MMSService.Configuration(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MMSService.Configuration.init(maxMessageSize:maxRecipients:maxSubjectLengthInBytes:maxImageDimension:smsSizeInBytesSentAsMMSInstead:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v47 = a8;
  v41 = a5;
  v42 = a7;
  v44 = a4;
  v45 = a6;
  v43 = a3;
  v40 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v40 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v25 = *(*(v24 - 8) + 56);
  v26 = 1;
  v25(a9, 1, 1, v24);
  v27 = type metadata accessor for MMSService.Configuration(0);
  v28 = v27[6];
  v25(a9 + v28, 1, 1, v24);
  v46 = v27[7];
  v25(a9 + v46, 1, 1, v24);
  v48 = v27[8];
  v25(a9 + v48, 1, 1, v24);
  if ((a2 & 1) == 0)
  {
    v29 = [objc_opt_self() bytes];
    sub_1E4AF15E0();
    sub_1E4BEF97C();
    v26 = 0;
  }

  v30 = 1;
  v25(v23, v26, 1, v24);
  v31 = a9 + v27[5];
  sub_1E4AF1900(v23, a9, &qword_1ECF92D68, &unk_1E4BFCDA0);
  *v31 = v43;
  *(v31 + 8) = v44 & 1;
  if ((v45 & 1) == 0)
  {
    v32 = [objc_opt_self() bytes];
    sub_1E4AF15E0();
    sub_1E4BEF97C();
    v30 = 0;
  }

  v33 = 1;
  v25(v21, v30, 1, v24);
  sub_1E4AF1900(v21, a9 + v28, &qword_1ECF92D68, &unk_1E4BFCDA0);
  v34 = v49;
  if ((v47 & 1) == 0)
  {
    v35 = [objc_opt_self() bytes];
    sub_1E4AF15E0();
    sub_1E4BEF97C();
    v33 = 0;
  }

  v36 = 1;
  v25(v34, v33, 1, v24);
  sub_1E4AF1900(v34, a9 + v46, &qword_1ECF92D68, &unk_1E4BFCDA0);
  v37 = v50;
  if ((a11 & 1) == 0)
  {
    v38 = [objc_opt_self() bytes];
    sub_1E4AF15E0();
    sub_1E4BEF97C();
    v36 = 0;
  }

  v25(v37, v36, 1, v24);
  return sub_1E4AF1900(v37, a9 + v48, &qword_1ECF92D68, &unk_1E4BFCDA0);
}

unint64_t sub_1E4AF04B8()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000010;
  if (v2 != 3)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2 == 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AF0544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AF3368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AF056C(uint64_t a1)
{
  v2 = sub_1E4AF1988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF05A8(uint64_t a1)
{
  v2 = sub_1E4AF1988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSService.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D78, &qword_1E4BFCDB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AF1988();
  sub_1E4BF0ACC();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  sub_1E4AF19DC(&qword_1ECF92D88);
  sub_1E4BF08EC();
  if (!v2)
  {
    v11 = type metadata accessor for MMSService.Configuration(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    v23 = 1;
    sub_1E4BF08DC();
    v15 = v11[6];
    v22 = 2;
    sub_1E4BF08EC();
    v16 = v11[7];
    v21 = 3;
    sub_1E4BF08EC();
    v17 = v11[8];
    v20 = 4;
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MMSService.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v39 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D68, &unk_1E4BFCDA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v37 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v37 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D90, &qword_1E4BFCDB8);
  v43 = *(v46 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v13 = &v37 - v12;
  v14 = type metadata accessor for MMSService.Configuration(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v21 = &v18[v15[7]];
  *v21 = 0;
  v21[8] = 1;
  v42 = v15[8];
  v20(&v18[v42], 1, 1, v19);
  v22 = v15[9];
  v20(&v18[v22], 1, 1, v19);
  v23 = v15[10];
  v48 = v18;
  v20(&v18[v23], 1, 1, v19);
  v24 = v50[4];
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1E4AF1988();
  v47 = v13;
  v25 = v49;
  sub_1E4BF0ABC();
  if (v25)
  {
    v26 = v48;
  }

  else
  {
    v49 = v22;
    v38 = v23;
    v27 = v43;
    v28 = v44;
    v55 = 0;
    v29 = sub_1E4AF19DC(&qword_1ECF92D98);
    v31 = v45;
    v30 = v46;
    sub_1E4BF082C();
    v37 = v29;
    v26 = v48;
    sub_1E4AF1900(v31, v48, &qword_1ECF92D68, &unk_1E4BFCDA0);
    v54 = 1;
    *v21 = sub_1E4BF081C();
    v21[8] = v32 & 1;
    v53 = 2;
    sub_1E4BF082C();
    sub_1E4AF1900(v28, v26 + v42, &qword_1ECF92D68, &unk_1E4BFCDA0);
    v52 = 3;
    v33 = v41;
    sub_1E4BF082C();
    sub_1E4AF1900(v33, v26 + v49, &qword_1ECF92D68, &unk_1E4BFCDA0);
    v51 = 4;
    v35 = v40;
    v36 = v47;
    sub_1E4BF082C();
    (*(v27 + 8))(v36, v30);
    sub_1E4AF1900(v35, v26 + v38, &qword_1ECF92D68, &unk_1E4BFCDA0);
    sub_1E4AF17D0(v26, v39, type metadata accessor for MMSService.Configuration);
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1E4AF1838(v26, type metadata accessor for MMSService.Configuration);
}

char *sub_1E4AF0DD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F80, &unk_1E4BFDD10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E4AF0EE4()
{
  result = qword_1ECF92BF8;
  if (!qword_1ECF92BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92BF8);
  }

  return result;
}

unint64_t sub_1E4AF0F38()
{
  result = qword_1ECF92C00;
  if (!qword_1ECF92C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92C00);
  }

  return result;
}

unint64_t sub_1E4AF0F8C()
{
  result = qword_1ECF92C20;
  if (!qword_1ECF92C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92C20);
  }

  return result;
}

uint64_t sub_1E4AF0FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4AF1048()
{
  result = qword_1ECF92C30;
  if (!qword_1ECF92C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92C30);
  }

  return result;
}

uint64_t sub_1E4AF109C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E4BEFB4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4AF10E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92C10, &qword_1E4BFCD10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AF1158()
{
  result = qword_1ECF92C48;
  if (!qword_1ECF92C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92C48);
  }

  return result;
}

unint64_t sub_1E4AF11AC()
{
  result = qword_1ECF92C68;
  if (!qword_1ECF92C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92C68);
  }

  return result;
}

unint64_t sub_1E4AF1200()
{
  result = qword_1ECF92C70;
  if (!qword_1ECF92C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92C70);
  }

  return result;
}

unint64_t sub_1E4AF1254()
{
  result = qword_1ECF92C78;
  if (!qword_1ECF92C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92C78);
  }

  return result;
}

unint64_t sub_1E4AF12A8()
{
  result = qword_1ECF92CA0;
  if (!qword_1ECF92CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92CA0);
  }

  return result;
}

unint64_t sub_1E4AF12FC()
{
  result = qword_1ECF92CB8;
  if (!qword_1ECF92CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92CB8);
  }

  return result;
}

uint64_t sub_1E4AF1350(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92CD8, &qword_1E4BFCD78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AF13C8()
{
  result = qword_1ECF92CE8;
  if (!qword_1ECF92CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92CE8);
  }

  return result;
}

uint64_t sub_1E4AF141C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92CC0, &qword_1E4BFCD70);
    sub_1E4AF14B8(a2, type metadata accessor for MMSPartContent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4AF14B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4AF1500()
{
  result = qword_1ECF92D20;
  if (!qword_1ECF92D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92D20);
  }

  return result;
}

uint64_t sub_1E4AF1554(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92CF0, &qword_1E4BFCD80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AF15E0()
{
  result = qword_1EE2BD708;
  if (!qword_1EE2BD708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2BD708);
  }

  return result;
}

unint64_t sub_1E4AF162C()
{
  result = qword_1ECF92D38;
  if (!qword_1ECF92D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92D38);
  }

  return result;
}

unint64_t sub_1E4AF1680()
{
  result = qword_1ECF92D40;
  if (!qword_1ECF92D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92D40);
  }

  return result;
}

unint64_t sub_1E4AF16D4()
{
  result = qword_1ECF92D48;
  if (!qword_1ECF92D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92D48);
  }

  return result;
}

unint64_t sub_1E4AF1728()
{
  result = qword_1ECF92D58;
  if (!qword_1ECF92D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92D58);
  }

  return result;
}

unint64_t sub_1E4AF177C()
{
  result = qword_1ECF92D60;
  if (!qword_1ECF92D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92D60);
  }

  return result;
}

uint64_t sub_1E4AF17D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AF1838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4AF1898(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E4AF1900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4AF1988()
{
  result = qword_1ECF92D80;
  if (!qword_1ECF92D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92D80);
  }

  return result;
}

uint64_t sub_1E4AF19DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92D70, &unk_1E4C07A60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AF1A30()
{
  result = qword_1ECF92DA0;
  if (!qword_1ECF92DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92DA0);
  }

  return result;
}

unint64_t sub_1E4AF1A88()
{
  result = qword_1ECF92DA8;
  if (!qword_1ECF92DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92DA8);
  }

  return result;
}

void sub_1E4AF1B14()
{
  sub_1E4AF1BE0();
  if (v0 <= 0x3F)
  {
    sub_1E4ADFEFC(319, &qword_1ECF92DC0, &type metadata for MMSPartContent.MMSCustomHeader, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4AF1BE0()
{
  if (!qword_1EE2BD758[0])
  {
    sub_1E4BEFB4C();
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2BD758);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E4AF1C74(uint64_t *a1, int a2)
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

uint64_t sub_1E4AF1CBC(uint64_t result, int a2, int a3)
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

uint64_t sub_1E4AF1D50()
{
  result = sub_1E4BEFABC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E4AF1E0C()
{
  sub_1E4AF1EBC();
  if (v0 <= 0x3F)
  {
    sub_1E4ADFEFC(319, &qword_1ECF92DD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4AF1EBC()
{
  if (!qword_1EE2BECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92D70, &unk_1E4C07A60);
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2BECD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for MMSPartContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MMSPartContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4AF20F4()
{
  result = qword_1ECF92DE0;
  if (!qword_1ECF92DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92DE0);
  }

  return result;
}

unint64_t sub_1E4AF214C()
{
  result = qword_1ECF92DE8;
  if (!qword_1ECF92DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92DE8);
  }

  return result;
}

unint64_t sub_1E4AF21A4()
{
  result = qword_1ECF92DF0;
  if (!qword_1ECF92DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92DF0);
  }

  return result;
}

unint64_t sub_1E4AF21FC()
{
  result = qword_1ECF92DF8;
  if (!qword_1ECF92DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92DF8);
  }

  return result;
}

unint64_t sub_1E4AF2254()
{
  result = qword_1ECF92E00;
  if (!qword_1ECF92E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E00);
  }

  return result;
}

unint64_t sub_1E4AF22AC()
{
  result = qword_1ECF92E08;
  if (!qword_1ECF92E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E08);
  }

  return result;
}

unint64_t sub_1E4AF2304()
{
  result = qword_1ECF92E10;
  if (!qword_1ECF92E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E10);
  }

  return result;
}

unint64_t sub_1E4AF235C()
{
  result = qword_1ECF92E18;
  if (!qword_1ECF92E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E18);
  }

  return result;
}

unint64_t sub_1E4AF23B4()
{
  result = qword_1ECF92E20;
  if (!qword_1ECF92E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E20);
  }

  return result;
}

unint64_t sub_1E4AF240C()
{
  result = qword_1ECF92E28;
  if (!qword_1ECF92E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E28);
  }

  return result;
}

unint64_t sub_1E4AF2464()
{
  result = qword_1ECF92E30;
  if (!qword_1ECF92E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E30);
  }

  return result;
}

unint64_t sub_1E4AF24BC()
{
  result = qword_1ECF92E38;
  if (!qword_1ECF92E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E38);
  }

  return result;
}

unint64_t sub_1E4AF2514()
{
  result = qword_1ECF92E40;
  if (!qword_1ECF92E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E40);
  }

  return result;
}

unint64_t sub_1E4AF256C()
{
  result = qword_1ECF92E48;
  if (!qword_1ECF92E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E48);
  }

  return result;
}

unint64_t sub_1E4AF25C4()
{
  result = qword_1ECF92E50;
  if (!qword_1ECF92E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E50);
  }

  return result;
}

unint64_t sub_1E4AF261C()
{
  result = qword_1ECF92E58;
  if (!qword_1ECF92E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E58);
  }

  return result;
}

unint64_t sub_1E4AF2674()
{
  result = qword_1ECF92E60;
  if (!qword_1ECF92E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E60);
  }

  return result;
}

unint64_t sub_1E4AF26CC()
{
  result = qword_1ECF92E68;
  if (!qword_1ECF92E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E68);
  }

  return result;
}

unint64_t sub_1E4AF2724()
{
  result = qword_1ECF92E70;
  if (!qword_1ECF92E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E70);
  }

  return result;
}

unint64_t sub_1E4AF277C()
{
  result = qword_1ECF92E78;
  if (!qword_1ECF92E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E78);
  }

  return result;
}

unint64_t sub_1E4AF27D4()
{
  result = qword_1ECF92E80;
  if (!qword_1ECF92E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E80);
  }

  return result;
}

unint64_t sub_1E4AF282C()
{
  result = qword_1ECF92E88;
  if (!qword_1ECF92E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E88);
  }

  return result;
}

unint64_t sub_1E4AF2884()
{
  result = qword_1ECF92E90;
  if (!qword_1ECF92E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E90);
  }

  return result;
}

unint64_t sub_1E4AF28DC()
{
  result = qword_1ECF92E98;
  if (!qword_1ECF92E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92E98);
  }

  return result;
}

unint64_t sub_1E4AF2934()
{
  result = qword_1ECF92EA0;
  if (!qword_1ECF92EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92EA0);
  }

  return result;
}

char *sub_1E4AF29AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EC0, &qword_1E4BFDC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1E4AF2C3C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1E4AF2E24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736F70736964 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65486D6F74737563 && a2 == 0xED00007372656461)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4AF3038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374726170 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1836020326 && a2 == 0xE400000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4AF31EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

uint64_t sub_1E4AF3368(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E4BF1500 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1520 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF1540 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF1560 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E4BF1580 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

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

unint64_t sub_1E4AF3520()
{
  result = qword_1ECF92EA8;
  if (!qword_1ECF92EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92EA8);
  }

  return result;
}

uint64_t RCSService.Business.communicationAddress.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1E4AF35A0(v2, v3);
}

uint64_t sub_1E4AF35A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t RCSService.Business.description.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t RCSService.Business.version.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t RCSService.Business.providerName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t RCSService.Business.emailAddress.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t RCSService.Business.addressEntries.getter()
{
  v1 = *(v0 + *(type metadata accessor for RCSService.Business(0) + 60));
}

uint64_t RCSService.Business.persistentMenu.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSService.Business(0) + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_1E4AF3858(v4, v5, v6);
}

uint64_t sub_1E4AF3858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unsigned __int8 *RCSService.Business.themeColor.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.Business(0) + 76));
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  v4 = v1[1];

  v5 = sub_1E4BB1D04(v3, v2);

  return v5;
}

uint64_t RCSService.Business.init(communicationAddress:mediaEntries:organizationNames:description:categoryNames:version:providerName:emailAddress:backgroundImageURL:websiteURL:termsAndConditionsURL:addressEntries:persistentMenu:styleSheetTemplateURL:verificationDetails:themeColorBase64URLEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = *(a1 + 48);
  v29 = *a17;
  v23 = *(a17 + 2);
  v24 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v24;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v22;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 72) = a4;
  *(a9 + 80) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = a7;
  *(a9 + 104) = a8;
  *(a9 + 112) = a10;
  *(a9 + 128) = a11;
  *(a9 + 136) = a12;
  v25 = type metadata accessor for RCSService.Business(0);
  sub_1E4AFD6D0(a13, a9 + v25[12], &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AFD6D0(a14, a9 + v25[13], &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AFD6D0(a15, a9 + v25[14], &qword_1ECF92F88, &qword_1E4BFDD20);
  *(a9 + v25[15]) = a16;
  v26 = a9 + v25[16];
  *v26 = v29;
  *(v26 + 16) = v23;
  sub_1E4AFD6D0(a18, a9 + v25[17], &qword_1ECF92F88, &qword_1E4BFDD20);
  result = sub_1E4AFD6D0(a19, a9 + v25[18], &qword_1ECF92F90, &qword_1E4BFDD28);
  v28 = (a9 + v25[19]);
  *v28 = a20;
  v28[1] = a21;
  return result;
}

unint64_t sub_1E4AF3B04(char a1)
{
  result = 0x746E45616964656DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    case 5:
      result = 0x6E6F6973726576;
      break;
    case 6:
      result = 0x72656469766F7270;
      break;
    case 7:
      result = 0x6464416C69616D65;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x5565746973626577;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x4573736572646461;
      break;
    case 12:
      result = 0x6574736973726570;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1E4AF3D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AFF864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AF3D54(uint64_t a1)
{
  v2 = sub_1E4AFC4D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF3D90(uint64_t a1)
{
  v2 = sub_1E4AFC4D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F98, &qword_1E4BFDD30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFC4D4();
  sub_1E4BF0ACC();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v14 = v3[4];
  v15 = v3[5];
  v16 = v3[6];
  v39 = *v3;
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v15;
  v45 = v16;
  v46 = 0;
  sub_1E4AF35A0(v39, v11);
  sub_1E4AFC528();
  sub_1E4BF08EC();
  if (v2)
  {
    sub_1E4AFC57C(v39, v40);
  }

  else
  {
    sub_1E4AFC57C(v39, v40);
    v39 = v3[7];
    v46 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FB0, &qword_1E4BFDD38);
    sub_1E4AFC820(&qword_1ECF92FB8, &qword_1ECF92FC0);
    sub_1E4BF093C();
    v39 = v3[8];
    v46 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FC8, &qword_1E4BFDD40);
    sub_1E4AFC8BC(&qword_1ECF92FD0, sub_1E4AFC600);
    sub_1E4BF093C();
    v17 = v3[9];
    v18 = v3[10];
    LOBYTE(v39) = 3;
    sub_1E4BF08CC();
    v39 = v3[11];
    v46 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FE0, &qword_1E4BFDD48);
    sub_1E4AFC988(&qword_1ECF92FE8);
    sub_1E4BF093C();
    v19 = v3[12];
    v20 = v3[13];
    LOBYTE(v39) = 5;
    sub_1E4BF08CC();
    v21 = v3[14];
    v22 = v3[15];
    LOBYTE(v39) = 6;
    sub_1E4BF08CC();
    v23 = v3[16];
    v24 = v3[17];
    LOBYTE(v39) = 7;
    sub_1E4BF08CC();
    v25 = type metadata accessor for RCSService.Business(0);
    v26 = v25[12];
    LOBYTE(v39) = 8;
    sub_1E4BEFA6C();
    sub_1E4AFC654(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF08EC();
    v27 = v25[13];
    LOBYTE(v39) = 9;
    sub_1E4BF08EC();
    v28 = v25[14];
    LOBYTE(v39) = 10;
    sub_1E4BF08EC();
    v39 = *(v3 + v25[15]);
    v46 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FF8, &qword_1E4BFDD50);
    sub_1E4AFC69C(&qword_1ECF93000, sub_1E4AFC714);
    sub_1E4BF093C();
    v29 = (v3 + v25[16]);
    v30 = v29[1];
    v31 = v29[2];
    v39 = *v29;
    v40 = v30;
    v41 = v31;
    v46 = 12;
    sub_1E4AF3858(v39, v30, v31);
    sub_1E4AEAAF4();
    sub_1E4BF08EC();
    sub_1E4AFC768(v39, v40, v41);
    v32 = v25[17];
    LOBYTE(v39) = 13;
    sub_1E4BF08EC();
    v33 = v25[18];
    LOBYTE(v39) = 14;
    type metadata accessor for RCSService.Business.VerificationDetails(0);
    sub_1E4AFC654(&qword_1ECF93010, type metadata accessor for RCSService.Business.VerificationDetails);
    sub_1E4BF08EC();
    v34 = (v3 + v25[19]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v39) = 15;
    sub_1E4BF08CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F90, &qword_1E4BFDD28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93018, &qword_1E4BFDD58);
  v53 = *(v55 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v19 = &v45 - v18;
  v20 = type metadata accessor for RCSService.Business(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFC4D4();
  v54 = v19;
  v25 = v56;
  sub_1E4BF0ABC();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v16;
  v46 = v14;
  v47 = v20;
  v27 = v52;
  v56 = a1;
  v48 = v23;
  v61 = 0;
  sub_1E4AFC7CC();
  sub_1E4BF082C();
  v28 = v60;
  v29 = v58;
  v30 = v48;
  *v48 = v57;
  *(v30 + 1) = v29;
  *(v30 + 2) = v59;
  *(v30 + 6) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FB0, &qword_1E4BFDD38);
  v61 = 1;
  sub_1E4AFC820(&qword_1ECF93028, &qword_1ECF93030);
  sub_1E4BF087C();
  *(v30 + 7) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FC8, &qword_1E4BFDD40);
  v61 = 2;
  sub_1E4AFC8BC(&qword_1ECF93038, sub_1E4AFC934);
  v45 = 0;
  sub_1E4BF087C();
  *(v30 + 8) = v57;
  LOBYTE(v57) = 3;
  *(v30 + 9) = sub_1E4BF080C();
  *(v30 + 10) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FE0, &qword_1E4BFDD48);
  v61 = 4;
  sub_1E4AFC988(&qword_1ECF93048);
  sub_1E4BF087C();
  *(v30 + 11) = v57;
  LOBYTE(v57) = 5;
  *(v30 + 12) = sub_1E4BF080C();
  *(v30 + 13) = v32;
  LOBYTE(v57) = 6;
  *(v30 + 14) = sub_1E4BF080C();
  *(v30 + 15) = v33;
  LOBYTE(v57) = 7;
  v34 = sub_1E4BF080C();
  v35 = v48;
  *(v48 + 16) = v34;
  *(v35 + 17) = v36;
  sub_1E4BEFA6C();
  LOBYTE(v57) = 8;
  sub_1E4AFC654(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF082C();
  sub_1E4AFD6D0(v26, &v48[v47[12]], &qword_1ECF92F88, &qword_1E4BFDD20);
  LOBYTE(v57) = 9;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v46, &v48[v47[13]], &qword_1ECF92F88, &qword_1E4BFDD20);
  LOBYTE(v57) = 10;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v51, &v48[v47[14]], &qword_1ECF92F88, &qword_1E4BFDD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FF8, &qword_1E4BFDD50);
  v61 = 11;
  sub_1E4AFC69C(&qword_1ECF93058, sub_1E4AFC9F4);
  sub_1E4BF087C();
  *&v48[v47[15]] = v57;
  v61 = 12;
  sub_1E4AEAB9C();
  sub_1E4BF082C();
  v37 = v58;
  v38 = &v48[v47[16]];
  *v38 = v57;
  *(v38 + 2) = v37;
  LOBYTE(v57) = 13;
  sub_1E4BF082C();
  sub_1E4AFD6D0(v27, &v48[v47[17]], &qword_1ECF92F88, &qword_1E4BFDD20);
  type metadata accessor for RCSService.Business.VerificationDetails(0);
  LOBYTE(v57) = 14;
  sub_1E4AFC654(&qword_1ECF93068, type metadata accessor for RCSService.Business.VerificationDetails);
  sub_1E4BF082C();
  sub_1E4AFD6D0(v50, &v48[v47[18]], &qword_1ECF92F90, &qword_1E4BFDD28);
  LOBYTE(v57) = 15;
  v39 = sub_1E4BF080C();
  v41 = v40;
  (*(v53 + 8))(v54, v55);
  v42 = v48;
  v43 = &v48[v47[19]];
  *v43 = v39;
  v43[1] = v41;
  sub_1E4AFCE58(v42, v49, type metadata accessor for RCSService.Business);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_1E4AFCEC0(v42, type metadata accessor for RCSService.Business);
}

uint64_t RCSService.Business.TelephoneDetails.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.TelephoneDetails.phoneNumber.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RCSService.Business.TelephoneDetails.phoneNumberType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RCSService.Business.TelephoneDetails.init(label:phoneNumber:phoneNumberType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static RCSService.Business.TelephoneDetails.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E4BF099C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E4BF099C();
}

uint64_t sub_1E4AF5568()
{
  *v0;
  if (*v0)
  {
    return 0x6D754E656E6F6870;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1E4AF55D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AFFD84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AF55FC(uint64_t a1)
{
  v2 = sub_1E4AFCA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF5638(uint64_t a1)
{
  v2 = sub_1E4AFCA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.TelephoneDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93070, &qword_1E4BFDD60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCA48();
  sub_1E4BF0ACC();
  v18 = 0;
  v13 = v15[5];
  sub_1E4BF08FC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E4BF08FC();
  v16 = 2;
  sub_1E4BF08FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSService.Business.TelephoneDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93080, &qword_1E4BFDD68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCA48();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1E4BF083C();
  v23 = v14;
  v25 = 2;
  v15 = sub_1E4BF083C();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4AF5AE0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E4BF099C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E4BF099C();
}

uint64_t sub_1E4AF5BD8()
{
  if (*v0)
  {
    result = 0x726568746FLL;
  }

  else
  {
    result = 7367027;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AF5C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7367027 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AF5CE0(uint64_t a1)
{
  v2 = sub_1E4AFCA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF5D1C(uint64_t a1)
{
  v2 = sub_1E4AFCA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AF5D58(uint64_t a1)
{
  v2 = sub_1E4AFCAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF5D94(uint64_t a1)
{
  v2 = sub_1E4AFCAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AF5DD0(uint64_t a1)
{
  v2 = sub_1E4AFCB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF5E0C(uint64_t a1)
{
  v2 = sub_1E4AFCB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.URIEntry.URIType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93088, &qword_1E4BFDD70);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93090, &qword_1E4BFDD78);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93098, &qword_1E4BFDD80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCA9C();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4AFCAF0();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4AFCB44();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSService.Business.URIEntry.URIType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF930B8, &qword_1E4BFDD88);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF930C0, &qword_1E4BFDD90);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF930C8, &unk_1E4BFDD98);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCA9C();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSService.Business.URIEntry.URIType;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4AFCAF0();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4AFCB44();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1E4AF65E4()
{
  if (*v0)
  {
    result = 7564659;
  }

  else
  {
    result = 0x4965636976726573;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AF661C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4965636976726573 && a2 == 0xE900000000000044;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7564659 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AF6700(uint64_t a1)
{
  v2 = sub_1E4AFCB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF673C(uint64_t a1)
{
  v2 = sub_1E4AFCB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AF6778(uint64_t a1)
{
  v2 = sub_1E4AFCC40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF67B4(uint64_t a1)
{
  v2 = sub_1E4AFCC40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AF67F0(uint64_t a1)
{
  v2 = sub_1E4AFCBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF682C(uint64_t a1)
{
  v2 = sub_1E4AFCBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.URIEntry.Label.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF930D0, &qword_1E4BFDDA8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF930D8, &qword_1E4BFDDB0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF930E0, &qword_1E4BFDDB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCB98();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4AFCBEC();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4AFCC40();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSService.Business.URIEntry.Label.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93100, &qword_1E4BFDDC0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93108, &qword_1E4BFDDC8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93110, &qword_1E4BFDDD0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCB98();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSService.Business.URIEntry.Label;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4AFCBEC();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4AFCC40();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t RCSService.Business.URIEntry.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.URIEntry(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t RCSService.Business.URIEntry.label.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.URIEntry(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RCSService.Business.URIEntry.init(uri:type:label:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = sub_1E4BEFA6C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for RCSService.Business.URIEntry(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t static RCSService.Business.URIEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E4BEFA4C() & 1) != 0 && (v4 = type metadata accessor for RCSService.Business.URIEntry(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1E4AF715C()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6C6562616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6910581;
  }
}

uint64_t sub_1E4AF71A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AFFEA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AF71CC(uint64_t a1)
{
  v2 = sub_1E4AFCCB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF7208(uint64_t a1)
{
  v2 = sub_1E4AFCCB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.URIEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93118, &qword_1E4BFDDD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCCB4();
  sub_1E4BF0ACC();
  v13[15] = 0;
  sub_1E4BEFA6C();
  sub_1E4AFC654(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = type metadata accessor for RCSService.Business.URIEntry(0);
    v13[14] = *(v3 + *(v11 + 20));
    v13[13] = 1;
    sub_1E4AFCD08();
    sub_1E4BF093C();
    v13[12] = *(v3 + *(v11 + 24));
    v13[11] = 2;
    sub_1E4AFCD5C();
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.URIEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1E4BEFA6C();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93138, &qword_1E4BFDDE0);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for RCSService.Business.URIEntry(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCCB4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v24;
  v32 = 0;
  sub_1E4AFC654(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  v18 = v26;
  sub_1E4BF087C();
  v19 = *(v17 + 32);
  v20 = v27;
  v27 = v4;
  v19(v16, v20, v4);
  v30 = 1;
  sub_1E4AFCDB0();
  sub_1E4BF087C();
  *(v16 + *(v11 + 20)) = v31;
  v28 = 2;
  sub_1E4AFCE04();
  sub_1E4BF087C();
  (*(v25 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v29;
  sub_1E4AFCE58(v16, v23, type metadata accessor for RCSService.Business.URIEntry);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4AFCEC0(v16, type metadata accessor for RCSService.Business.URIEntry);
}

uint64_t sub_1E4AF7850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E4BEFA4C() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t RCSService.Business.CommunicationAddress.telephoneDetails.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

__n128 RCSService.Business.CommunicationAddress.init(telephoneDetails:uriEntries:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  *(a3 + 48) = a2;
  return result;
}

unint64_t sub_1E4AF7934()
{
  if (*v0)
  {
    result = 0x6972746E45697275;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AF7978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001E4BF16A0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6972746E45697275 && a2 == 0xEA00000000007365)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E4BF099C();

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

uint64_t sub_1E4AF7A68(uint64_t a1)
{
  v2 = sub_1E4AFCF20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF7AA4(uint64_t a1)
{
  v2 = sub_1E4AFCF20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.CommunicationAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93150, &qword_1E4BFDDE8);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v17 = v1[2];
  v18 = v7;
  v10 = v1[4];
  v11 = v1[5];
  v15 = v1[6];
  v16 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCF20();

  sub_1E4BF0ACC();
  v21 = v18;
  v22 = v8;
  v23 = v17;
  v24 = v9;
  v25 = v16;
  v26 = v11;
  v27 = 0;
  sub_1E4AFCF74();
  v13 = v19;
  sub_1E4BF093C();

  if (!v13)
  {
    v21 = v15;
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93168, &qword_1E4BFDDF0);
    sub_1E4AFCFC8(&qword_1ECF93170, &qword_1ECF93178);
    sub_1E4BF093C();
  }

  return (*(v20 + 8))(v6, v3);
}

uint64_t RCSService.Business.CommunicationAddress.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93180, &qword_1E4BFDDF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFCF20();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_1E4AFD064();
  sub_1E4BF087C();
  v19 = v21;
  v20 = v22;
  v11 = v24;
  v12 = v26;
  v17 = v25;
  v18 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93168, &qword_1E4BFDDF0);
  v27 = 1;
  sub_1E4AFCFC8(&qword_1ECF93190, &qword_1ECF93198);
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v13 = v21;
  v15 = v18;
  *a2 = v19;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v11;
  a2[4] = v17;
  a2[5] = v12;
  a2[6] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4AF800C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4BEFA6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RCSService.Business.Media.sha256Digest.getter()
{
  v1 = (v0 + *(type metadata accessor for RCSService.Business.Media(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t RCSService.Business.Media.init(url:sha256Digest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E4BEFA6C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for RCSService.Business.Media(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static RCSService.Business.Media.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1E4BEFA4C())
  {
    v4 = *(type metadata accessor for RCSService.Business.Media(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1E4BF099C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E4AF81B8()
{
  if (*v0)
  {
    result = 0x6944363532616873;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AF81F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6944363532616873 && a2 == 0xEC00000074736567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AF82D4(uint64_t a1)
{
  v2 = sub_1E4AFD0D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF8310(uint64_t a1)
{
  v2 = sub_1E4AFD0D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.Media.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931A0, &qword_1E4BFDE00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD0D8();
  sub_1E4BF0ACC();
  v15[15] = 0;
  sub_1E4BEFA6C();
  sub_1E4AFC654(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for RCSService.Business.Media(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_1E4BF08CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.Media.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E4BEFA6C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931B0, &qword_1E4BFDE08);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RCSService.Business.Media(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD0D8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_1E4AFC654(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  v18 = v30;
  sub_1E4BF087C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_1E4BF080C();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v11 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1E4AFCE58(v23, v22, type metadata accessor for RCSService.Business.Media);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4AFCEC0(v23, type metadata accessor for RCSService.Business.Media);
}

uint64_t sub_1E4AF8884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E4BEFA4C())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_1E4BF099C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E4AF8920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1852793705 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4AF89A8(uint64_t a1)
{
  v2 = sub_1E4AFD12C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF89E4(uint64_t a1)
{
  v2 = sub_1E4AFD12C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AF8A20(uint64_t a1)
{
  v2 = sub_1E4AFD180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF8A5C(uint64_t a1)
{
  v2 = sub_1E4AFD180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.MediaEntry.Label.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931B8, &qword_1E4BFDE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931C0, &qword_1E4BFDE18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD12C();
  sub_1E4BF0ACC();
  sub_1E4AFD180();
  sub_1E4BF08BC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t RCSService.Business.MediaEntry.Label.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931D8, &qword_1E4BFDE20);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931E0, &qword_1E4BFDE28);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD12C();
  sub_1E4BF0ABC();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E4BF088C();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1E4AE0F14() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E4BF06EC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v19 = &type metadata for RCSService.Business.MediaEntry.Label;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E4AFD180();
  sub_1E4BF07EC();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E4AF9000(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931B8, &qword_1E4BFDE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931C0, &qword_1E4BFDE18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD12C();
  sub_1E4BF0ACC();
  sub_1E4AFD180();
  sub_1E4BF08BC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E4AF91F0()
{
  if (*v0)
  {
    result = 0x726568746FLL;
  }

  else
  {
    result = 1869049708;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AF9220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1869049708 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AF92F8(uint64_t a1)
{
  v2 = sub_1E4AFD1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF9334(uint64_t a1)
{
  v2 = sub_1E4AFD1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AF9370(uint64_t a1)
{
  v2 = sub_1E4AFD27C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF93AC(uint64_t a1)
{
  v2 = sub_1E4AFD27C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AF93E8(uint64_t a1)
{
  v2 = sub_1E4AFD228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF9424(uint64_t a1)
{
  v2 = sub_1E4AFD228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.MediaEntry.ContentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931E8, &qword_1E4BFDE30);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931F0, &qword_1E4BFDE38);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF931F8, &qword_1E4BFDE40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD1D4();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4AFD228();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4AFD27C();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t RCSService.Business.MediaEntry.ContentType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93218, &qword_1E4BFDE48);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93220, &qword_1E4BFDE50);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93228, &qword_1E4BFDE58);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD1D4();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for RCSService.Business.MediaEntry.ContentType;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4AFD228();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4AFD27C();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t RCSService.Business.MediaEntry.contentType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.MediaEntry(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RCSService.Business.MediaEntry.init(label:media:contentType:)@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1E4AFD2D0(a1, a3);
  result = type metadata accessor for RCSService.Business.MediaEntry(0);
  *(a3 + *(result + 24)) = v4;
  return result;
}

uint64_t sub_1E4AF9CDC()
{
  v1 = 0x616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1E4AF9D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4AFFFB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AF9D60(uint64_t a1)
{
  v2 = sub_1E4AFD334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AF9D9C(uint64_t a1)
{
  v2 = sub_1E4AFD334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.MediaEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93230, &qword_1E4BFDE60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD334();
  sub_1E4BF0ACC();
  v12[15] = 0;
  sub_1E4AFD388();
  sub_1E4BF093C();
  if (!v2)
  {
    v12[14] = 1;
    type metadata accessor for RCSService.Business.Media(0);
    sub_1E4AFC654(&qword_1ECF93248, type metadata accessor for RCSService.Business.Media);
    sub_1E4BF093C();
    v12[13] = *(v3 + *(type metadata accessor for RCSService.Business.MediaEntry(0) + 24));
    v12[12] = 2;
    sub_1E4AFD3DC();
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.MediaEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for RCSService.Business.Media(0);
  v4 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93258, &qword_1E4BFDE68);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for RCSService.Business.MediaEntry(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD334();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v15 = v22;
  v16 = v13;
  v28 = 0;
  sub_1E4AFD430();
  v17 = v24;
  sub_1E4BF087C();
  v27 = 1;
  sub_1E4AFC654(&qword_1ECF93268, type metadata accessor for RCSService.Business.Media);
  sub_1E4BF087C();
  sub_1E4AFD2D0(v6, v16);
  v25 = 2;
  sub_1E4AFD484();
  sub_1E4BF087C();
  (*(v15 + 8))(v9, v17);
  *(v16 + *(v10 + 24)) = v26;
  sub_1E4AFCE58(v16, v21, type metadata accessor for RCSService.Business.MediaEntry);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1E4AFCEC0(v16, type metadata accessor for RCSService.Business.MediaEntry);
}

uint64_t sub_1E4AFA384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6169636966666FLL && a2 == 0xEC000000656D614ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4AFA410(uint64_t a1)
{
  v2 = sub_1E4AFD4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AFA44C(uint64_t a1)
{
  v2 = sub_1E4AFD4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4AFA488(uint64_t a1)
{
  v2 = sub_1E4AFD52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AFA4C4(uint64_t a1)
{
  v2 = sub_1E4AFD52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OrganizationName.NameType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93278, &qword_1E4BFDE70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93280, &qword_1E4BFDE78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD4D8();
  sub_1E4BF0ACC();
  sub_1E4AFD52C();
  sub_1E4BF08BC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t RCSService.Business.OrganizationName.NameType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93298, &qword_1E4BFDE80);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF932A0, &qword_1E4BFDE88);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD4D8();
  sub_1E4BF0ABC();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E4BF088C();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1E4AE0F14() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E4BF06EC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v19 = &type metadata for RCSService.Business.OrganizationName.NameType;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E4AFD52C();
  sub_1E4BF07EC();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E4AFAA3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93278, &qword_1E4BFDE70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93280, &qword_1E4BFDE78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD4D8();
  sub_1E4BF0ACC();
  sub_1E4AFD52C();
  sub_1E4BF08BC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t RCSService.Business.OrganizationName.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.OrganizationName.init(displayName:nameType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static RCSService.Business.OrganizationName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t sub_1E4AFAC80()
{
  if (*v0)
  {
    result = 0x65707954656D616ELL;
  }

  else
  {
    result = 0x4E79616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AFACC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65707954656D616ELL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AFADA4(uint64_t a1)
{
  v2 = sub_1E4AFD580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AFADE0(uint64_t a1)
{
  v2 = sub_1E4AFD580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OrganizationName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF932A8, &qword_1E4BFDE90);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD580();
  sub_1E4BF0ACC();
  v15 = 0;
  sub_1E4BF08FC();
  if (!v2)
  {
    v14 = 1;
    sub_1E4AFD5D4();
    sub_1E4BF093C();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t RCSService.Business.OrganizationName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF932C0, &qword_1E4BFDE98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD580();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v14 = v11;
  v17 = 1;
  sub_1E4AFD628();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RCSService.Business.AddressEntry.address.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RCSService.Business.AddressEntry.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RCSService.Business.AddressEntry.init(address:label:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static RCSService.Business.AddressEntry.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E4BF099C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E4BF099C();
    }
  }

  return result;
}

uint64_t sub_1E4AFB2C4()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 0x73736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_1E4AFB2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4AFB3D4(uint64_t a1)
{
  v2 = sub_1E4AFD67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AFB410(uint64_t a1)
{
  v2 = sub_1E4AFD67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.AddressEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF932D0, &qword_1E4BFDEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD67C();
  sub_1E4BF0ACC();
  v16 = 0;
  v12 = v14[3];
  sub_1E4BF08FC();
  if (!v12)
  {
    v15 = 1;
    sub_1E4BF08FC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RCSService.Business.AddressEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF932E0, &qword_1E4BFDEA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD67C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1E4BF083C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1E4BF083C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RCSService.Business.VerificationDetails.verifiedBy.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RCSService.Business.VerificationDetails.init(isVerified:verifiedBy:expirationDate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = type metadata accessor for RCSService.Business.VerificationDetails(0);
  return sub_1E4AFD6D0(a4, a5 + *(v7 + 24), &qword_1ECF92580, &qword_1E4BFDEB0);
}

uint64_t sub_1E4AFB8E8()
{
  v1 = 0x6465696669726576;
  if (*v0 != 1)
  {
    v1 = 0x6974617269707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6966697265567369;
  }
}

uint64_t sub_1E4AFB958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B000CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4AFB980(uint64_t a1)
{
  v2 = sub_1E4AFD738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4AFB9BC(uint64_t a1)
{
  v2 = sub_1E4AFD738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.VerificationDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF932E8, &qword_1E4BFDEB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD738();
  sub_1E4BF0ACC();
  v11 = *v3;
  v16[15] = 0;
  sub_1E4BF090C();
  if (!v2)
  {
    v13 = *(v3 + 1);
    v14 = *(v3 + 2);
    v16[14] = 1;
    sub_1E4BF08CC();
    v15 = *(type metadata accessor for RCSService.Business.VerificationDetails(0) + 24);
    v16[13] = 2;
    sub_1E4BEFABC();
    sub_1E4AFC654(&qword_1ECF925B0, MEMORY[0x1E6969530]);
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSService.Business.VerificationDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF932F8, &qword_1E4BFDEC0);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for RCSService.Business.VerificationDetails(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4AFD738();
  v28 = v11;
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v18 = v26;
  v31 = 0;
  v19 = v15;
  *v15 = sub_1E4BF084C() & 1;
  v30 = 1;
  *(v15 + 1) = sub_1E4BF080C();
  *(v15 + 2) = v20;
  v24[1] = v20;
  sub_1E4BEFABC();
  v29 = 2;
  sub_1E4AFC654(&qword_1ECF925D8, MEMORY[0x1E6969530]);
  v21 = v27;
  v22 = v28;
  sub_1E4BF082C();
  (*(v18 + 8))(v22, v21);
  sub_1E4AFD6D0(v7, v19 + *(v12 + 24), &qword_1ECF92580, &qword_1E4BFDEB0);
  sub_1E4AFCE58(v19, v25, type metadata accessor for RCSService.Business.VerificationDetails);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1E4AFCEC0(v19, type metadata accessor for RCSService.Business.VerificationDetails);
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV10MediaEntryV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E4BEFA4C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = *(type metadata accessor for RCSService.Business.Media(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_1E4BF099C() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_9:
  v10 = type metadata accessor for RCSService.Business.MediaEntry(0);
  v11 = *(a1 + *(v10 + 24)) ^ *(a2 + *(v10 + 24)) ^ 1;
  return v11 & 1;
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC8BusinessV20CommunicationAddressV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E4BF099C() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1E4BF099C() & 1) == 0 || (v3 != v9 || v6 != v10) && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  return sub_1E4BC6DE0(v5, v11);
}

BOOL _s21TelephonyMessagingKit10RCSServiceC8BusinessV19VerificationDetailsV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92580, &qword_1E4BFDEB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF926D8, &qword_1E4BFAF70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v19 = *(a1 + 2);
  v20 = *(a2 + 2);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = v15;
    if ((*(a1 + 1) != *(a2 + 1) || v19 != v20) && (sub_1E4BF099C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v21 = v15;
    if (v20)
    {
      return 0;
    }
  }

  v22 = *(type metadata accessor for RCSService.Business.VerificationDetails(0) + 24);
  v23 = *(v21 + 48);
  sub_1E4AF1898(&a1[v22], v17, &qword_1ECF92580, &qword_1E4BFDEB0);
  sub_1E4AF1898(&a2[v22], &v17[v23], &qword_1ECF92580, &qword_1E4BFDEB0);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v23], 1, v4) == 1)
    {
      sub_1E4AE0AE4(v17, &qword_1ECF92580, &qword_1E4BFDEB0);
      return 1;
    }

    goto LABEL_16;
  }

  sub_1E4AF1898(v17, v12, &qword_1ECF92580, &qword_1E4BFDEB0);
  if (v24(&v17[v23], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_16:
    sub_1E4AE0AE4(v17, &qword_1ECF926D8, &qword_1E4BFAF70);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v23], v4);
  sub_1E4AFC654(&qword_1ECF926E0, MEMORY[0x1E6969530]);
  v25 = sub_1E4BEFE6C();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  sub_1E4AE0AE4(v17, &qword_1ECF92580, &qword_1E4BFDEB0);
  return (v25 & 1) != 0;
}

unint64_t sub_1E4AFC4D4()
{
  result = qword_1ECF92FA0;
  if (!qword_1ECF92FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92FA0);
  }

  return result;
}

unint64_t sub_1E4AFC528()
{
  result = qword_1ECF92FA8;
  if (!qword_1ECF92FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92FA8);
  }

  return result;
}

uint64_t sub_1E4AFC57C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E4AFC600()
{
  result = qword_1ECF92FD8;
  if (!qword_1ECF92FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF92FD8);
  }

  return result;
}

uint64_t sub_1E4AFC654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4AFC69C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92FF8, &qword_1E4BFDD50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AFC714()
{
  result = qword_1ECF93008;
  if (!qword_1ECF93008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93008);
  }

  return result;
}

uint64_t sub_1E4AFC768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E4AFC7CC()
{
  result = qword_1ECF93020;
  if (!qword_1ECF93020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93020);
  }

  return result;
}

uint64_t sub_1E4AFC820(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92FB0, &qword_1E4BFDD38);
    sub_1E4AFC654(a2, type metadata accessor for RCSService.Business.MediaEntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4AFC8BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92FC8, &qword_1E4BFDD40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AFC934()
{
  result = qword_1ECF93040;
  if (!qword_1ECF93040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93040);
  }

  return result;
}

uint64_t sub_1E4AFC988(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92FE0, &qword_1E4BFDD48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AFC9F4()
{
  result = qword_1ECF93060;
  if (!qword_1ECF93060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93060);
  }

  return result;
}

unint64_t sub_1E4AFCA48()
{
  result = qword_1ECF93078;
  if (!qword_1ECF93078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93078);
  }

  return result;
}

unint64_t sub_1E4AFCA9C()
{
  result = qword_1ECF930A0;
  if (!qword_1ECF930A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF930A0);
  }

  return result;
}

unint64_t sub_1E4AFCAF0()
{
  result = qword_1ECF930A8;
  if (!qword_1ECF930A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF930A8);
  }

  return result;
}

unint64_t sub_1E4AFCB44()
{
  result = qword_1ECF930B0;
  if (!qword_1ECF930B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF930B0);
  }

  return result;
}

unint64_t sub_1E4AFCB98()
{
  result = qword_1ECF930E8;
  if (!qword_1ECF930E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF930E8);
  }

  return result;
}

unint64_t sub_1E4AFCBEC()
{
  result = qword_1ECF930F0;
  if (!qword_1ECF930F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF930F0);
  }

  return result;
}

unint64_t sub_1E4AFCC40()
{
  result = qword_1ECF930F8;
  if (!qword_1ECF930F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF930F8);
  }

  return result;
}

unint64_t sub_1E4AFCCB4()
{
  result = qword_1ECF93120;
  if (!qword_1ECF93120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93120);
  }

  return result;
}

unint64_t sub_1E4AFCD08()
{
  result = qword_1ECF93128;
  if (!qword_1ECF93128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93128);
  }

  return result;
}

unint64_t sub_1E4AFCD5C()
{
  result = qword_1ECF93130;
  if (!qword_1ECF93130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93130);
  }

  return result;
}

unint64_t sub_1E4AFCDB0()
{
  result = qword_1ECF93140;
  if (!qword_1ECF93140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93140);
  }

  return result;
}

unint64_t sub_1E4AFCE04()
{
  result = qword_1ECF93148;
  if (!qword_1ECF93148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93148);
  }

  return result;
}

uint64_t sub_1E4AFCE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4AFCEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4AFCF20()
{
  result = qword_1ECF93158;
  if (!qword_1ECF93158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93158);
  }

  return result;
}

unint64_t sub_1E4AFCF74()
{
  result = qword_1ECF93160;
  if (!qword_1ECF93160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93160);
  }

  return result;
}

uint64_t sub_1E4AFCFC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF93168, &qword_1E4BFDDF0);
    sub_1E4AFC654(a2, type metadata accessor for RCSService.Business.URIEntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4AFD064()
{
  result = qword_1ECF93188;
  if (!qword_1ECF93188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93188);
  }

  return result;
}

unint64_t sub_1E4AFD0D8()
{
  result = qword_1ECF931A8;
  if (!qword_1ECF931A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF931A8);
  }

  return result;
}

unint64_t sub_1E4AFD12C()
{
  result = qword_1ECF931C8;
  if (!qword_1ECF931C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF931C8);
  }

  return result;
}

unint64_t sub_1E4AFD180()
{
  result = qword_1ECF931D0;
  if (!qword_1ECF931D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF931D0);
  }

  return result;
}

unint64_t sub_1E4AFD1D4()
{
  result = qword_1ECF93200;
  if (!qword_1ECF93200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93200);
  }

  return result;
}

unint64_t sub_1E4AFD228()
{
  result = qword_1ECF93208;
  if (!qword_1ECF93208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93208);
  }

  return result;
}

unint64_t sub_1E4AFD27C()
{
  result = qword_1ECF93210;
  if (!qword_1ECF93210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93210);
  }

  return result;
}

uint64_t sub_1E4AFD2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Media(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4AFD334()
{
  result = qword_1ECF93238;
  if (!qword_1ECF93238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93238);
  }

  return result;
}

unint64_t sub_1E4AFD388()
{
  result = qword_1ECF93240;
  if (!qword_1ECF93240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93240);
  }

  return result;
}

unint64_t sub_1E4AFD3DC()
{
  result = qword_1ECF93250;
  if (!qword_1ECF93250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93250);
  }

  return result;
}

unint64_t sub_1E4AFD430()
{
  result = qword_1ECF93260;
  if (!qword_1ECF93260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93260);
  }

  return result;
}

unint64_t sub_1E4AFD484()
{
  result = qword_1ECF93270;
  if (!qword_1ECF93270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93270);
  }

  return result;
}

unint64_t sub_1E4AFD4D8()
{
  result = qword_1ECF93288;
  if (!qword_1ECF93288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93288);
  }

  return result;
}

unint64_t sub_1E4AFD52C()
{
  result = qword_1ECF93290;
  if (!qword_1ECF93290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93290);
  }

  return result;
}

unint64_t sub_1E4AFD580()
{
  result = qword_1ECF932B0;
  if (!qword_1ECF932B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF932B0);
  }

  return result;
}

unint64_t sub_1E4AFD5D4()
{
  result = qword_1ECF932B8;
  if (!qword_1ECF932B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF932B8);
  }

  return result;
}

unint64_t sub_1E4AFD628()
{
  result = qword_1ECF932C8;
  if (!qword_1ECF932C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF932C8);
  }

  return result;
}

unint64_t sub_1E4AFD67C()
{
  result = qword_1ECF932D8;
  if (!qword_1ECF932D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF932D8);
  }

  return result;
}

uint64_t sub_1E4AFD6D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4AFD738()
{
  result = qword_1ECF932F0;
  if (!qword_1ECF932F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF932F0);
  }

  return result;
}

unint64_t sub_1E4AFD790()
{
  result = qword_1ECF93300;
  if (!qword_1ECF93300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93300);
  }

  return result;
}

unint64_t sub_1E4AFD7E8()
{
  result = qword_1ECF93308;
  if (!qword_1ECF93308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93308);
  }

  return result;
}

unint64_t sub_1E4AFD840()
{
  result = qword_1ECF93310;
  if (!qword_1ECF93310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93310);
  }

  return result;
}

unint64_t sub_1E4AFD898()
{
  result = qword_1ECF93318;
  if (!qword_1ECF93318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93318);
  }

  return result;
}

unint64_t sub_1E4AFD8F0()
{
  result = qword_1ECF93320;
  if (!qword_1ECF93320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93320);
  }

  return result;
}

void sub_1E4AFD96C()
{
  sub_1E4AFDC80(319, &qword_1ECF93338, &type metadata for RCSService.Business.CommunicationAddress, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E4AFDC1C(319, &qword_1ECF93340, type metadata accessor for RCSService.Business.MediaEntry, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E4AFDC80(319, &qword_1ECF93348, &type metadata for RCSService.Business.OrganizationName, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1E4AFDC80(319, &qword_1EE2BD740, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E4AFDC80(319, &qword_1ECF93350, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1E4AFDC1C(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1E4AFDC80(319, &qword_1ECF93358, &type metadata for RCSService.Business.AddressEntry, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1E4AFDC80(319, &qword_1ECF93360, &type metadata for RCSService.Business.Menu, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1E4AFDC1C(319, &qword_1ECF93368, type metadata accessor for RCSService.Business.VerificationDetails, MEMORY[0x1E69E6720]);
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

void sub_1E4AFDC1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E4AFDC80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E4AFDCE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E4AFDD2C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1E4AFDDB0()
{
  result = sub_1E4BEFA6C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4AFDE54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E4AFDE9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1E4AFDF20()
{
  sub_1E4BEFA6C();
  if (v0 <= 0x3F)
  {
    sub_1E4AFDC80(319, &qword_1EE2BD740, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4AFDFF0()
{
  result = type metadata accessor for RCSService.Business.Media(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E4AFE0EC()
{
  sub_1E4AFDC80(319, &qword_1EE2BD740, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E4AFDC1C(319, &qword_1EE2BECB8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s8BusinessV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8BusinessV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E4AFE478()
{
  result = qword_1ECF933B0;
  if (!qword_1ECF933B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933B0);
  }

  return result;
}

unint64_t sub_1E4AFE4D0()
{
  result = qword_1ECF933B8;
  if (!qword_1ECF933B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933B8);
  }

  return result;
}

unint64_t sub_1E4AFE528()
{
  result = qword_1ECF933C0;
  if (!qword_1ECF933C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933C0);
  }

  return result;
}

unint64_t sub_1E4AFE580()
{
  result = qword_1ECF933C8;
  if (!qword_1ECF933C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933C8);
  }

  return result;
}

unint64_t sub_1E4AFE5D8()
{
  result = qword_1ECF933D0;
  if (!qword_1ECF933D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933D0);
  }

  return result;
}

unint64_t sub_1E4AFE630()
{
  result = qword_1ECF933D8;
  if (!qword_1ECF933D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933D8);
  }

  return result;
}

unint64_t sub_1E4AFE688()
{
  result = qword_1ECF933E0;
  if (!qword_1ECF933E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933E0);
  }

  return result;
}

unint64_t sub_1E4AFE6E0()
{
  result = qword_1ECF933E8;
  if (!qword_1ECF933E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933E8);
  }

  return result;
}

unint64_t sub_1E4AFE738()
{
  result = qword_1ECF933F0;
  if (!qword_1ECF933F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933F0);
  }

  return result;
}

unint64_t sub_1E4AFE790()
{
  result = qword_1ECF933F8;
  if (!qword_1ECF933F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF933F8);
  }

  return result;
}

unint64_t sub_1E4AFE7E8()
{
  result = qword_1ECF93400;
  if (!qword_1ECF93400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93400);
  }

  return result;
}

unint64_t sub_1E4AFE840()
{
  result = qword_1ECF93408;
  if (!qword_1ECF93408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93408);
  }

  return result;
}

unint64_t sub_1E4AFE898()
{
  result = qword_1ECF93410;
  if (!qword_1ECF93410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93410);
  }

  return result;
}

unint64_t sub_1E4AFE8F0()
{
  result = qword_1ECF93418;
  if (!qword_1ECF93418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93418);
  }

  return result;
}

unint64_t sub_1E4AFE948()
{
  result = qword_1ECF93420;
  if (!qword_1ECF93420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93420);
  }

  return result;
}

unint64_t sub_1E4AFE9A0()
{
  result = qword_1ECF93428;
  if (!qword_1ECF93428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93428);
  }

  return result;
}

unint64_t sub_1E4AFE9F8()
{
  result = qword_1ECF93430;
  if (!qword_1ECF93430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93430);
  }

  return result;
}

unint64_t sub_1E4AFEA50()
{
  result = qword_1ECF93438;
  if (!qword_1ECF93438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93438);
  }

  return result;
}

unint64_t sub_1E4AFEAA8()
{
  result = qword_1ECF93440;
  if (!qword_1ECF93440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93440);
  }

  return result;
}

unint64_t sub_1E4AFEB00()
{
  result = qword_1ECF93448;
  if (!qword_1ECF93448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93448);
  }

  return result;
}

unint64_t sub_1E4AFEB58()
{
  result = qword_1ECF93450;
  if (!qword_1ECF93450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93450);
  }

  return result;
}

unint64_t sub_1E4AFEBB0()
{
  result = qword_1ECF93458;
  if (!qword_1ECF93458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93458);
  }

  return result;
}

unint64_t sub_1E4AFEC08()
{
  result = qword_1ECF93460;
  if (!qword_1ECF93460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93460);
  }

  return result;
}

unint64_t sub_1E4AFEC60()
{
  result = qword_1ECF93468;
  if (!qword_1ECF93468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93468);
  }

  return result;
}

unint64_t sub_1E4AFECB8()
{
  result = qword_1ECF93470;
  if (!qword_1ECF93470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93470);
  }

  return result;
}

unint64_t sub_1E4AFED10()
{
  result = qword_1ECF93478;
  if (!qword_1ECF93478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93478);
  }

  return result;
}

unint64_t sub_1E4AFED68()
{
  result = qword_1ECF93480;
  if (!qword_1ECF93480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93480);
  }

  return result;
}

unint64_t sub_1E4AFEDC0()
{
  result = qword_1ECF93488;
  if (!qword_1ECF93488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93488);
  }

  return result;
}

unint64_t sub_1E4AFEE18()
{
  result = qword_1ECF93490;
  if (!qword_1ECF93490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93490);
  }

  return result;
}

unint64_t sub_1E4AFEE70()
{
  result = qword_1ECF93498;
  if (!qword_1ECF93498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93498);
  }

  return result;
}

unint64_t sub_1E4AFEEC8()
{
  result = qword_1ECF934A0;
  if (!qword_1ECF934A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934A0);
  }

  return result;
}

unint64_t sub_1E4AFEF20()
{
  result = qword_1ECF934A8;
  if (!qword_1ECF934A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934A8);
  }

  return result;
}

unint64_t sub_1E4AFEF78()
{
  result = qword_1ECF934B0;
  if (!qword_1ECF934B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934B0);
  }

  return result;
}

unint64_t sub_1E4AFEFD0()
{
  result = qword_1ECF934B8;
  if (!qword_1ECF934B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934B8);
  }

  return result;
}

unint64_t sub_1E4AFF028()
{
  result = qword_1ECF934C0;
  if (!qword_1ECF934C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934C0);
  }

  return result;
}

unint64_t sub_1E4AFF080()
{
  result = qword_1ECF934C8;
  if (!qword_1ECF934C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934C8);
  }

  return result;
}

unint64_t sub_1E4AFF0D8()
{
  result = qword_1ECF934D0;
  if (!qword_1ECF934D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934D0);
  }

  return result;
}

unint64_t sub_1E4AFF130()
{
  result = qword_1ECF934D8;
  if (!qword_1ECF934D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934D8);
  }

  return result;
}

unint64_t sub_1E4AFF188()
{
  result = qword_1ECF934E0;
  if (!qword_1ECF934E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934E0);
  }

  return result;
}

unint64_t sub_1E4AFF1E0()
{
  result = qword_1ECF934E8;
  if (!qword_1ECF934E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934E8);
  }

  return result;
}

unint64_t sub_1E4AFF238()
{
  result = qword_1ECF934F0;
  if (!qword_1ECF934F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934F0);
  }

  return result;
}

unint64_t sub_1E4AFF290()
{
  result = qword_1ECF934F8;
  if (!qword_1ECF934F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF934F8);
  }

  return result;
}

unint64_t sub_1E4AFF2E8()
{
  result = qword_1ECF93500;
  if (!qword_1ECF93500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93500);
  }

  return result;
}

unint64_t sub_1E4AFF340()
{
  result = qword_1ECF93508;
  if (!qword_1ECF93508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93508);
  }

  return result;
}

unint64_t sub_1E4AFF398()
{
  result = qword_1ECF93510;
  if (!qword_1ECF93510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93510);
  }

  return result;
}

unint64_t sub_1E4AFF3F0()
{
  result = qword_1ECF93518;
  if (!qword_1ECF93518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93518);
  }

  return result;
}

unint64_t sub_1E4AFF448()
{
  result = qword_1ECF93520;
  if (!qword_1ECF93520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93520);
  }

  return result;
}

unint64_t sub_1E4AFF4A0()
{
  result = qword_1ECF93528;
  if (!qword_1ECF93528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93528);
  }

  return result;
}

unint64_t sub_1E4AFF4F8()
{
  result = qword_1ECF93530;
  if (!qword_1ECF93530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93530);
  }

  return result;
}

unint64_t sub_1E4AFF550()
{
  result = qword_1ECF93538;
  if (!qword_1ECF93538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93538);
  }

  return result;
}

unint64_t sub_1E4AFF5A8()
{
  result = qword_1ECF93540;
  if (!qword_1ECF93540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93540);
  }

  return result;
}

unint64_t sub_1E4AFF600()
{
  result = qword_1ECF93548;
  if (!qword_1ECF93548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93548);
  }

  return result;
}

unint64_t sub_1E4AFF658()
{
  result = qword_1ECF93550;
  if (!qword_1ECF93550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93550);
  }

  return result;
}

unint64_t sub_1E4AFF6B0()
{
  result = qword_1ECF93558;
  if (!qword_1ECF93558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93558);
  }

  return result;
}

unint64_t sub_1E4AFF708()
{
  result = qword_1ECF93560;
  if (!qword_1ECF93560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93560);
  }

  return result;
}

unint64_t sub_1E4AFF760()
{
  result = qword_1ECF93568;
  if (!qword_1ECF93568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93568);
  }

  return result;
}

unint64_t sub_1E4AFF7B8()
{
  result = qword_1ECF93570;
  if (!qword_1ECF93570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93570);
  }

  return result;
}

unint64_t sub_1E4AFF810()
{
  result = qword_1ECF93578;
  if (!qword_1ECF93578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93578);
  }

  return result;
}

uint64_t sub_1E4AFF864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001E4BF15C0 == a2;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E45616964656DLL && a2 == 0xEC00000073656972 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF15E0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xED000073656D614ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEC000000656D614ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1E4BF099C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF1600 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5565746973626577 && a2 == 0xEA00000000004C52 || (sub_1E4BF099C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E4BF1620 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4573736572646461 && a2 == 0xEE0073656972746ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6574736973726570 && a2 == 0xEE00756E654D746ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E4BF1640 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF1660 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E4BF1680 == a2)
  {

    return 15;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1E4AFFD84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEF65707954726562)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4AFFEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6910581 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4AFFFB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616964656DLL && a2 == 0xE500000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4B000CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEA00000000007942 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4B0026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E4BF099C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E4B00300(uint64_t a1)
{
  v2 = sub_1E4B004C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0033C(uint64_t a1)
{
  v2 = sub_1E4B004C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSConfigurationRetrieveRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93580, &qword_1E4BFFCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B004C4();
  sub_1E4BF0ACC();
  v12 = v8;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4B004C4()
{
  result = qword_1ECF93588;
  if (!qword_1ECF93588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF93588);
  }

  return result;
}

uint64_t MMSConfigurationRetrieveRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93590, &qword_1E4BFFCD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B004C4();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4ADBF38();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B00684(uint64_t a1)
{
  result = sub_1E4B006AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B006AC()
{
  result = qword_1EE2BD9C0;
  if (!qword_1EE2BD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9C0);
  }

  return result;
}

uint64_t sub_1E4B00768(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MMSService.Configuration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4B007B8(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B007E8();
  result = sub_1E4B0083C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B007E8()
{
  result = qword_1EE2BD9C8;
  if (!qword_1EE2BD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9C8);
  }

  return result;
}

unint64_t sub_1E4B0083C()
{
  result = qword_1EE2BD9D0;
  if (!qword_1EE2BD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD9D0);
  }

  return result;
}

unint64_t sub_1E4B008E4()
{
  result = qword_1ECF935A8;
  if (!qword_1ECF935A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF935A8);
  }

  return result;
}

unint64_t sub_1E4B0093C()
{
  result = qword_1ECF935B0;
  if (!qword_1ECF935B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF935B0);
  }

  return result;
}

unint64_t sub_1E4B00994()
{
  result = qword_1ECF935B8;
  if (!qword_1ECF935B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF935B8);
  }

  return result;
}

uint64_t RCSMessageID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF069C();

  strcpy(v4, "RCSMessageID(");
  MEMORY[0x1E69205B0](v1, v2);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_1E4B00B2C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF069C();

  strcpy(v4, "RCSMessageID(");
  MEMORY[0x1E69205B0](v1, v2);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t RCSMessage.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RCSMessage.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSMessage(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;

  return sub_1E4ADD6D8(v4, v5, v6, v7, v8);
}

uint64_t RCSMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSMessage(0) + 32);
  v4 = sub_1E4BEFABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSMessage.init(id:cellularServiceID:content:handle:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a4 + 32);
  *(a5 + 16) = *a2;
  *a5 = v8;
  *(a5 + 8) = v9;
  v11 = type metadata accessor for RCSMessage(0);
  sub_1E4B06FB8(a3, a5 + v11[6], type metadata accessor for RCSMessage.Content);
  v12 = a5 + v11[7];
  v13 = *(a4 + 16);
  *v12 = *a4;
  *(v12 + 16) = v13;
  *(v12 + 32) = v10;
  v14 = a5 + v11[8];
  sub_1E4BEFAAC();
  return sub_1E4B07020(a3, type metadata accessor for RCSMessage.Content);
}

unint64_t sub_1E4B00DF4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x746E65746E6F63;
  v4 = 0x656C646E6168;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E4B00E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B0A4A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B00EB0(uint64_t a1)
{
  v2 = sub_1E4B06F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B00EEC(uint64_t a1)
{
  v2 = sub_1E4B06F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF935C0, &qword_1E4BFFED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B06F1C();
  sub_1E4BF0ACC();
  v11 = *(v3 + 8);
  v22 = *v3;
  v23 = v11;
  v27 = 0;
  sub_1E4AE2DEC();

  sub_1E4BF093C();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v22) = *(v3 + 16);
    v27 = 1;
    sub_1E4ADBE98();
    sub_1E4BF093C();
    v12 = type metadata accessor for RCSMessage(0);
    v13 = v12[6];
    LOBYTE(v22) = 2;
    type metadata accessor for RCSMessage.Content(0);
    sub_1E4B06F70(&qword_1ECF935D0, type metadata accessor for RCSMessage.Content);
    sub_1E4BF093C();
    v14 = v3 + v12[7];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v22 = *v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = 3;
    sub_1E4ADD6D8(v22, v15, v16, v17, v18);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v22, v23, v24, v25, v26);
    v19 = v12[8];
    LOBYTE(v22) = 4;
    sub_1E4BEFABC();
    sub_1E4B06F70(&qword_1ECF925B0, MEMORY[0x1E6969530]);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RCSMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = sub_1E4BEFABC();
  v30 = *(v33 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RCSMessage.Content(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF935D8, &qword_1E4BFFED8);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for RCSMessage(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B06F1C();
  v36 = v12;
  v18 = v37;
  sub_1E4BF0ABC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v8;
  v19 = v34;
  v20 = v16;
  v41 = 0;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v21 = *(&v38 + 1);
  *v16 = v38;
  *(v16 + 1) = v21;
  v41 = 1;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v16[16] = v38;
  LOBYTE(v38) = 2;
  sub_1E4B06F70(&qword_1ECF935E0, type metadata accessor for RCSMessage.Content);
  v22 = v37;
  sub_1E4BF087C();
  v23 = v13;
  sub_1E4B07980(v22, v20 + *(v13 + 24), type metadata accessor for RCSMessage.Content);
  v41 = 3;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v24 = v40;
  v25 = v20 + *(v13 + 28);
  v26 = v39;
  *v25 = v38;
  *(v25 + 16) = v26;
  *(v25 + 32) = v24;
  LOBYTE(v38) = 4;
  sub_1E4B06F70(&qword_1ECF925D8, MEMORY[0x1E6969530]);
  v27 = v32;
  v28 = v33;
  sub_1E4BF087C();
  (*(v19 + 8))(v36, v35);
  (*(v30 + 32))(v20 + *(v23 + 32), v27, v28);
  sub_1E4B06FB8(v20, v31, type metadata accessor for RCSMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B07020(v20, type metadata accessor for RCSMessage);
}

uint64_t sub_1E4B017D8(uint64_t a1)
{
  v2 = sub_1E4B079E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B01814(uint64_t a1)
{
  v2 = sub_1E4B079E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B01850(uint64_t a1)
{
  v2 = sub_1E4B07A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B0188C(uint64_t a1)
{
  v2 = sub_1E4B07A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B018C8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6E617254656C6966;
    if (v1 != 1)
    {
      v5 = 0x7461636F6C6F6567;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1954047348;
    }
  }

  else
  {
    v2 = 0x7373656E69737562;
    if (v1 != 5)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000017;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
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

uint64_t sub_1E4B019C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4B0A654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4B019F0(uint64_t a1)
{
  v2 = sub_1E4B0792C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B01A2C(uint64_t a1)
{
  v2 = sub_1E4B0792C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B01A68(uint64_t a1)
{
  v2 = sub_1E4B07A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B01AA4(uint64_t a1)
{
  v2 = sub_1E4B07A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B01AE0(uint64_t a1)
{
  v2 = sub_1E4B07AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B01B1C(uint64_t a1)
{
  v2 = sub_1E4B07AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B01B58(uint64_t a1)
{
  v2 = sub_1E4B07C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B01B94(uint64_t a1)
{
  v2 = sub_1E4B07C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B01BD0(uint64_t a1)
{
  v2 = sub_1E4B07B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B01C0C(uint64_t a1)
{
  v2 = sub_1E4B07B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B01C48(uint64_t a1)
{
  v2 = sub_1E4B07C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B01C84(uint64_t a1)
{
  v2 = sub_1E4B07C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSMessage.Content.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF935E8, &qword_1E4BFFEE0);
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v75 - v4;
  v93 = type metadata accessor for RCSService.Business.CardCarousel(0);
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF935F0, &qword_1E4BFFEE8);
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v75 - v9;
  v88 = type metadata accessor for RCSService.Business.Card(0);
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF935F8, &qword_1E4BFFEF0);
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v75 - v13;
  v83 = type metadata accessor for RCSMessage.ComposingIndicator(0);
  v14 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93600, &qword_1E4BFFEF8);
  v81 = *(v82 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93608, &qword_1E4BFFF00);
  v101 = *(v18 - 8);
  v102 = v18;
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v75 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93610, &qword_1E4BFFF08);
  v79 = *(v77 - 8);
  v21 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v99 = &v75 - v22;
  v78 = type metadata accessor for RCSMessage.FileTransfer(0);
  v23 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v98 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93618, &qword_1E4BFFF10);
  v76 = *(v25 - 8);
  v26 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v75 - v27;
  v29 = type metadata accessor for RCSMessage.Content(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93620, &qword_1E4BFFF18);
  v34 = *(v33 - 8);
  v104 = v33;
  v105 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v75 - v36;
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B0792C();
  v39 = v37;
  sub_1E4BF0ACC();
  sub_1E4B06FB8(v103, v32, type metadata accessor for RCSMessage.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v47 = v25;
    v48 = v99;
    v49 = v100;
    v50 = v101;
    v51 = v102;
    if (!EnumCaseMultiPayload)
    {
      v59 = *v32;
      v60 = v32[1];
      LOBYTE(v106) = 0;
      sub_1E4B07C88();
      v61 = v104;
      sub_1E4BF08BC();
      v106 = v59;
      v107 = v60;
      sub_1E4B07CDC();
      sub_1E4BF093C();
      (*(v76 + 8))(v28, v47);
      (*(v105 + 8))(v39, v61);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v63 = *v32;
      v64 = v32[1];
      v66 = v32[2];
      v65 = v32[3];
      LOBYTE(v106) = 2;
      sub_1E4B07B8C();
      v67 = v104;
      sub_1E4BF08BC();
      v106 = v63;
      v107 = v64;
      v108 = v66;
      v109 = v65;
      sub_1E4B07BE0();
      sub_1E4BF093C();
      (*(v50 + 8))(v49, v51);
      (*(v105 + 8))(v39, v67);
    }

    v52 = v98;
    sub_1E4B07980(v32, v98, type metadata accessor for RCSMessage.FileTransfer);
    LOBYTE(v106) = 1;
    sub_1E4B07C34();
    v53 = v48;
    v54 = v104;
    sub_1E4BF08BC();
    sub_1E4B06F70(&qword_1ECF93688, type metadata accessor for RCSMessage.FileTransfer);
    v55 = v77;
    sub_1E4BF093C();
    (*(v79 + 8))(v53, v55);
    v56 = type metadata accessor for RCSMessage.FileTransfer;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v52 = v89;
      sub_1E4B07980(v32, v89, type metadata accessor for RCSService.Business.Card);
      LOBYTE(v106) = 5;
      sub_1E4B07A3C();
      v57 = v90;
      v54 = v104;
      sub_1E4BF08BC();
      sub_1E4B06F70(&qword_1ECF93648, type metadata accessor for RCSService.Business.Card);
      v58 = v92;
      sub_1E4BF093C();
      (*(v91 + 8))(v57, v58);
      v56 = type metadata accessor for RCSService.Business.Card;
    }

    else
    {
      v52 = v94;
      sub_1E4B07980(v32, v94, type metadata accessor for RCSService.Business.CardCarousel);
      LOBYTE(v106) = 6;
      sub_1E4B079E8();
      v73 = v95;
      v54 = v104;
      sub_1E4BF08BC();
      sub_1E4B06F70(&qword_1ECF93638, type metadata accessor for RCSService.Business.CardCarousel);
      v74 = v97;
      sub_1E4BF093C();
      (*(v96 + 8))(v73, v74);
      v56 = type metadata accessor for RCSService.Business.CardCarousel;
    }

LABEL_15:
    sub_1E4B07020(v52, v56);
    return (*(v105 + 8))(v39, v54);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v41 = *v32;
    v43 = v32[1];
    v42 = v32[2];
    LOBYTE(v106) = 3;
    sub_1E4B07AE4();
    v44 = v80;
    v45 = v104;
    sub_1E4BF08BC();
    LOBYTE(v106) = v41;
    v107 = v43;
    v108 = v42;
    sub_1E4B07B38();
    v46 = v82;
    sub_1E4BF093C();
    (*(v81 + 8))(v44, v46);
    (*(v105 + 8))(v37, v45);
  }

  v68 = v32;
  v69 = v84;
  sub_1E4B07980(v68, v84, type metadata accessor for RCSMessage.ComposingIndicator);
  LOBYTE(v106) = 4;
  sub_1E4B07A90();
  v70 = v85;
  v71 = v104;
  sub_1E4BF08BC();
  sub_1E4B06F70(&qword_1ECF93658, type metadata accessor for RCSMessage.ComposingIndicator);
  v72 = v87;
  sub_1E4BF093C();
  (*(v86 + 8))(v70, v72);
  sub_1E4B07020(v69, type metadata accessor for RCSMessage.ComposingIndicator);
  return (*(v105 + 8))(v37, v71);
}

uint64_t RCSMessage.Content.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936A0, &qword_1E4BFFF20);
  v114 = *(v113 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v117 = &v92 - v4;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936A8, &qword_1E4BFFF28);
  v111 = *(v112 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v92 - v6;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936B0, &qword_1E4BFFF30);
  v109 = *(v110 - 8);
  v7 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v124 = &v92 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936B8, &qword_1E4BFFF38);
  v107 = *(v108 - 8);
  v9 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v123 = &v92 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936C0, &qword_1E4BFFF40);
  v106 = *(v103 - 8);
  v11 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v116 = &v92 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936C8, &qword_1E4BFFF48);
  v104 = *(v105 - 8);
  v13 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v122 = &v92 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936D0, &qword_1E4BFFF50);
  v101 = *(v102 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v120 = &v92 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF936D8, &unk_1E4BFFF58);
  v119 = *(v126 - 8);
  v17 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v19 = &v92 - v18;
  v118 = type metadata accessor for RCSMessage.Content(0);
  v20 = *(*(v118 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v118);
  v100 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v99 = &v92 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v98 = &v92 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v92 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v92 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v92 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v92 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v92 - v39;
  v41 = a1[3];
  v42 = a1[4];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1E4B0792C();
  v121 = v19;
  v43 = v134;
  sub_1E4BF0ABC();
  if (v43)
  {
    goto LABEL_12;
  }

  v93 = v38;
  v94 = v32;
  v96 = v35;
  v95 = v29;
  v44 = v120;
  v45 = v122;
  v46 = v123;
  v134 = 0;
  v47 = v124;
  v97 = v40;
  v49 = v125;
  v48 = v126;
  v50 = v121;
  v51 = sub_1E4BF088C();
  v52 = (2 * *(v51 + 16)) | 1;
  v130 = v51;
  v131 = v51 + 32;
  v132 = 0;
  v133 = v52;
  v53 = sub_1E4ADD420();
  if (v53 == 7 || v132 != v133 >> 1)
  {
    v58 = sub_1E4BF06EC();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v60 = v118;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
  }

  else
  {
    if (v53 > 2u)
    {
      if (v53 <= 4u)
      {
        v54 = v119;
        if (v53 == 3)
        {
          LOBYTE(v128) = 3;
          sub_1E4B07AE4();
          v55 = v126;
          v56 = v134;
          sub_1E4BF07EC();
          if (!v56)
          {
            sub_1E4B07D30();
            v57 = v108;
            sub_1E4BF087C();
            (*(v107 + 8))(v46, v57);
            (*(v54 + 8))(v50, v126);
            swift_unknownObjectRelease();
            v87 = *(&v128 + 1);
            v88 = v129;
            v89 = v95;
            *v95 = v128;
            *(v89 + 1) = v87;
            *(v89 + 2) = v88;
LABEL_31:
            swift_storeEnumTagMultiPayload();
            v86 = v89;
            goto LABEL_33;
          }

          goto LABEL_26;
        }

        LOBYTE(v128) = 4;
        sub_1E4B07A90();
        v55 = v126;
        v78 = v134;
        sub_1E4BF07EC();
        if (v78)
        {
LABEL_26:
          (*(v54 + 8))(v50, v55);
          goto LABEL_11;
        }

        type metadata accessor for RCSMessage.ComposingIndicator(0);
        sub_1E4B06F70(&qword_1ECF936F0, type metadata accessor for RCSMessage.ComposingIndicator);
        v65 = v98;
        v83 = v110;
        sub_1E4BF087C();
        (*(v109 + 8))(v47, v83);
        (*(v54 + 8))(v50, v126);
        swift_unknownObjectRelease();
LABEL_32:
        swift_storeEnumTagMultiPayload();
        v86 = v65;
        goto LABEL_33;
      }

      v67 = v119;
      if (v53 == 5)
      {
        LOBYTE(v128) = 5;
        sub_1E4B07A3C();
        v68 = v115;
        v69 = v134;
        sub_1E4BF07EC();
        if (!v69)
        {
          type metadata accessor for RCSService.Business.Card(0);
          sub_1E4B06F70(&qword_1ECF936E8, type metadata accessor for RCSService.Business.Card);
          v70 = v99;
          v71 = v112;
          sub_1E4BF087C();
          (*(v111 + 8))(v68, v71);
          (*(v67 + 8))(v50, v48);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v90 = v97;
          sub_1E4B07980(v70, v97, type metadata accessor for RCSMessage.Content);
          v91 = v127;
          v49 = v125;
LABEL_34:
          sub_1E4B07980(v90, v49, type metadata accessor for RCSMessage.Content);
          v62 = v91;
          return __swift_destroy_boxed_opaque_existential_1(v62);
        }

        goto LABEL_29;
      }

      LOBYTE(v128) = 6;
      sub_1E4B079E8();
      v79 = v134;
      sub_1E4BF07EC();
      if (v79)
      {
LABEL_29:
        (*(v67 + 8))(v50, v48);
        goto LABEL_11;
      }

      type metadata accessor for RCSService.Business.CardCarousel(0);
      sub_1E4B06F70(&qword_1ECF936E0, type metadata accessor for RCSService.Business.CardCarousel);
      v80 = v100;
      v81 = v113;
      v82 = v117;
      sub_1E4BF087C();
      (*(v114 + 8))(v82, v81);
      (*(v67 + 8))(v50, v48);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v86 = v80;
LABEL_33:
      v90 = v97;
      sub_1E4B07980(v86, v97, type metadata accessor for RCSMessage.Content);
      v91 = v127;
      goto LABEL_34;
    }

    if (v53)
    {
      v64 = v134;
      if (v53 == 1)
      {
        LOBYTE(v128) = 1;
        sub_1E4B07C34();
        sub_1E4BF07EC();
        if (!v64)
        {
          type metadata accessor for RCSMessage.FileTransfer(0);
          sub_1E4B06F70(&qword_1ECF93708, type metadata accessor for RCSMessage.FileTransfer);
          v65 = v96;
          v66 = v105;
          sub_1E4BF087C();
          (*(v104 + 8))(v45, v66);
          (*(v119 + 8))(v50, v48);
          swift_unknownObjectRelease();
          goto LABEL_32;
        }
      }

      else
      {
        LOBYTE(v128) = 2;
        sub_1E4B07B8C();
        v75 = v116;
        sub_1E4BF07EC();
        if (!v64)
        {
          sub_1E4B07D84();
          v76 = v103;
          sub_1E4BF087C();
          v77 = v119;
          (*(v106 + 8))(v75, v76);
          (*(v77 + 8))(v50, v48);
          swift_unknownObjectRelease();
          v84 = v129;
          v85 = v94;
          *v94 = v128;
          v85[1] = v84;
          swift_storeEnumTagMultiPayload();
          v86 = v85;
          goto LABEL_33;
        }
      }
    }

    else
    {
      LOBYTE(v128) = 0;
      sub_1E4B07C88();
      v72 = v134;
      sub_1E4BF07EC();
      if (!v72)
      {
        sub_1E4B07DD8();
        v73 = v102;
        sub_1E4BF087C();
        (*(v101 + 8))(v44, v73);
        (*(v119 + 8))(v50, v48);
        swift_unknownObjectRelease();
        v74 = *(&v128 + 1);
        v89 = v93;
        *v93 = v128;
        *(v89 + 1) = v74;
        goto LABEL_31;
      }
    }
  }

  (*(v119 + 8))(v50, v48);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v62 = v127;
  return __swift_destroy_boxed_opaque_existential_1(v62);
}