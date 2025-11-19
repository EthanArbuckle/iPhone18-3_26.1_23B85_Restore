uint64_t sub_221B045D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_2219A02E8(a1, v13, &qword_27CFBA570, &qword_221BE0BD8);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2219A1CC8(v13, &qword_27CFBA570, &qword_221BE0BD8);
LABEL_3:
    sub_221A00FEC();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x8000000221BF07A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v13, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
  sub_221B22BD0(v20, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB8C0, &unk_221BE4FB0);
      v23 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
      v25 = v24;
      result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = 0;
      v27 = 0;
      v28 = 2;
    }

    else
    {
      sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
      sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v23 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      v27 = v9[3];

      result = sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v28 = 1;
    }
  }

  else
  {
    v23 = *v17;
    v25 = v17[1];
    result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = v31;
  *v31 = v23;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v27;
  *(v29 + 32) = v28;
  return result;
}

uint64_t sub_221B04A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_2219A02E8(a1, v13, &unk_27CFBB8D0, &unk_221BE4FC0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2219A1CC8(v13, &unk_27CFBB8D0, &unk_221BE4FC0);
LABEL_3:
    sub_221A00FEC();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x8000000221BF07A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v13, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
  sub_221B22BD0(v20, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB8C0, &unk_221BE4FB0);
      v23 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
      v25 = v24;
      result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = 0;
      v27 = 0;
      v28 = 2;
    }

    else
    {
      sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
      sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v23 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      v27 = v9[3];

      result = sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v28 = 1;
    }
  }

  else
  {
    v23 = *v17;
    v25 = v17[1];
    result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = v31;
  *v31 = v23;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v27;
  *(v29 + 32) = v28;
  return result;
}

uint64_t sub_221B04E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_2219A02E8(a1, v13, &qword_27CFBA5B0, &qword_221BE0C20);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2219A1CC8(v13, &qword_27CFBA5B0, &qword_221BE0C20);
LABEL_3:
    sub_221A00FEC();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x8000000221BF07A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v13, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
  sub_221B22BD0(v20, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB8C0, &unk_221BE4FB0);
      v23 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
      v25 = v24;
      result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = 0;
      v27 = 0;
      v28 = 2;
    }

    else
    {
      sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
      sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v23 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      v27 = v9[3];

      result = sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v28 = 1;
    }
  }

  else
  {
    v23 = *v17;
    v25 = v17[1];
    result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = v31;
  *v31 = v23;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v27;
  *(v29 + 32) = v28;
  return result;
}

uint64_t sub_221B05288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_2219A02E8(a1, v13, &qword_27CFBA548, &qword_221BE0BA0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2219A1CC8(v13, &qword_27CFBA548, &qword_221BE0BA0);
LABEL_3:
    sub_221A00FEC();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x8000000221BF07A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v13, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
  sub_221B22BD0(v20, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB8C0, &unk_221BE4FB0);
      v23 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
      v25 = v24;
      result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = 0;
      v27 = 0;
      v28 = 2;
    }

    else
    {
      sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
      sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v23 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      v27 = v9[3];

      result = sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v28 = 1;
    }
  }

  else
  {
    v23 = *v17;
    v25 = v17[1];
    result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = v31;
  *v31 = v23;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v27;
  *(v29 + 32) = v28;
  return result;
}

uint64_t sub_221B056C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_2219A02E8(a1, v13, &unk_27CFBB8F0, &qword_221BE0B80);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2219A1CC8(v13, &unk_27CFBB8F0, &qword_221BE0B80);
LABEL_3:
    sub_221A00FEC();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x8000000221BF07A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v13, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
  sub_221B22BD0(v20, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB8C0, &unk_221BE4FB0);
      v23 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
      v25 = v24;
      result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = 0;
      v27 = 0;
      v28 = 2;
    }

    else
    {
      sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
      sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v23 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      v27 = v9[3];

      result = sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v28 = 1;
    }
  }

  else
  {
    v23 = *v17;
    v25 = v17[1];
    result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = v31;
  *v31 = v23;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v27;
  *(v29 + 32) = v28;
  return result;
}

uint64_t sub_221B05B00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_2219A02E8(a1, v13, &qword_27CFBA588, &qword_221BE0BF0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2219A1CC8(v13, &qword_27CFBA588, &qword_221BE0BF0);
LABEL_3:
    sub_221A00FEC();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x8000000221BF07A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v13, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
  sub_221B22BD0(v20, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB8C0, &unk_221BE4FB0);
      v23 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
      v25 = v24;
      result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = 0;
      v27 = 0;
      v28 = 2;
    }

    else
    {
      sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
      sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v23 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      v27 = v9[3];

      result = sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v28 = 1;
    }
  }

  else
  {
    v23 = *v17;
    v25 = v17[1];
    result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = v31;
  *v31 = v23;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v27;
  *(v29 + 32) = v28;
  return result;
}

uint64_t sub_221B05F3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v7 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_2219A02E8(a1, v13, &unk_27CFBB900, &unk_221BE5080);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2219A1CC8(v13, &unk_27CFBB900, &unk_221BE5080);
LABEL_3:
    sub_221A00FEC();
    swift_allocError();
    *v21 = 0xD000000000000019;
    *(v21 + 8) = 0x8000000221BF07A0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 3;
    return swift_willThrow();
  }

  sub_221B229DC(v13, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
  sub_221B22BD0(v20, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
    sub_221B166AC(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
    if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
    {
      sub_2219A1CC8(v6, &unk_27CFBB8C0, &unk_221BE4FB0);
      v23 = sub_221B16794(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
      v25 = v24;
      result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
      if (!v25)
      {
        goto LABEL_3;
      }

      v26 = 0;
      v27 = 0;
      v28 = 2;
    }

    else
    {
      sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
      sub_221B229DC(v6, v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v23 = *v9;
      v25 = v9[1];
      v26 = v9[2];
      v27 = v9[3];

      result = sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
      v28 = 1;
    }
  }

  else
  {
    v23 = *v17;
    v25 = v17[1];
    result = sub_221B22C2C(v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = v31;
  *v31 = v23;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v27;
  *(v29 + 32) = v28;
  return result;
}

uint64_t sub_221B06378()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_221AE9B04();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_221AE9C28();

  return v0 & 1;
}

char *sub_221B06438@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v68 - v7;
  v79 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v77 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v80 = *(v78 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  v82 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v93 = &v68 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v68 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - v29;
  sub_2219A02E8(a1, &v68 - v29, &unk_27CFBB8E0, &unk_221BE4FD0);
  v31 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_221A00FEC();
    swift_allocError();
    *v32 = &type metadata for PropertyQuery;
    *(v32 + 8) = 0xD00000000000001ALL;
    *(v32 + 16) = 0x8000000221BF07C0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 1;
    swift_willThrow();
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    v33 = v30;
    return sub_2219A1CC8(v33, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  v75 = a1;
  v69 = v30;
  sub_2219A02E8(v30, v27, &unk_27CFBB8E0, &unk_221BE4FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_221B229DC(v27, v23, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B22BD0(v23, v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B15AD8(v20, &v88);
    sub_221B22C2C(v75, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    sub_221B22C2C(v23, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    if (!v2)
    {
      v34 = v89;
      v35 = v70;
      *v70 = v88;
      v35[1] = v34;
      v36 = v91;
      v35[2] = v90;
      v35[3] = v36;
      *(v35 + 64) = 0;
    }

LABEL_21:
    v33 = v69;
    return sub_2219A1CC8(v33, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  v76 = v8;
  v37 = v71;
  sub_221B229DC(v27, v71, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
  v38 = *v37;
  v39 = v37[1];
  v40 = *(v39 + 16);
  if (!v40)
  {
    sub_221B22C2C(v75, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    sub_221B22C2C(v37, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
    v43 = MEMORY[0x277D84F90];
LABEL_20:
    v67 = v70;
    *v70 = v43;
    *(v67 + 1) = v38;
    *(v67 + 64) = 1;
    goto LABEL_21;
  }

  v68 = *v37;
  v92 = MEMORY[0x277D84F90];
  result = sub_2219A31AC(0, v40, 0);
  v42 = 0;
  v43 = v92;
  v74 = v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
  v72 = xmmword_221BD8630;
  v44 = 0x277D23958;
  v73 = v40;
  while (v42 < *(v39 + 16))
  {
    v81 = v3;
    v45 = v93;
    sub_221B22BD0(v74 + *(v80 + 72) * v42, v93, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    v46 = v82;
    sub_221B22BD0(v45, v82, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    v47 = *v46;
    v48 = v46[2];
    *&v86 = v46[1];
    *(&v86 + 1) = v48;
    *&v87[0] = v47;
    v49 = v76;
    sub_2219A02E8(v46 + *(v78 + 28), v76, &unk_27CFBB660, &qword_221BE4610);
    v50 = v79;
    if (__swift_getEnumTagSinglePayload(v49, 1, v79) == 1)
    {
      v51 = v43;
      v52 = v77;
      *v77 = v72;
      v53 = *(v50 + 20);

      sub_221BCC8C8();
      v54 = v50;
      v55 = v52;
      v43 = v51;
      if (__swift_getEnumTagSinglePayload(v49, 1, v54) != 1)
      {
        sub_2219A1CC8(v76, &unk_27CFBB660, &qword_221BE4610);
      }
    }

    else
    {
      v55 = v77;
      sub_221B229DC(v49, v77, type metadata accessor for AppIntentsProtobuf_Value);
    }

    v56 = v81;
    sub_221B14BC4(*v55, v55[1], &qword_27CFBB680, v44);
    v58 = v44;
    v59 = v55;
    if (v56)
    {
      sub_221B22C2C(v75, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
      sub_221B22C2C(v82, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221B22C2C(v93, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221B22C2C(v55, type metadata accessor for AppIntentsProtobuf_Value);

      sub_221B22C2C(v71, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);

      v33 = v69;
      return sub_2219A1CC8(v33, &unk_27CFBB8E0, &unk_221BE4FD0);
    }

    v60 = v57;
    sub_221B22C2C(v59, type metadata accessor for AppIntentsProtobuf_Value);
    v84 = sub_2219A1D20(0, &qword_27CFBB680, v58);
    v85 = &protocol witness table for LNValue;
    *&v83 = v60;
    sub_221B22C2C(v82, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B22C2C(v93, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_22198B358(&v83, v87 + 8);
    v88 = v86;
    v89 = v87[0];
    v90 = v87[1];
    v91 = v87[2];
    v92 = v43;
    v62 = *(v43 + 16);
    v61 = *(v43 + 24);
    v44 = v58;
    if (v62 >= v61 >> 1)
    {
      sub_2219A31AC((v61 > 1), v62 + 1, 1);
      v43 = v92;
    }

    ++v42;
    *(v43 + 16) = v62 + 1;
    v63 = (v43 + (v62 << 6));
    v64 = v88;
    v65 = v89;
    v66 = v91;
    v63[4] = v90;
    v63[5] = v66;
    v63[2] = v64;
    v63[3] = v65;
    result = v75;
    v3 = 0;
    if (v73 == v42)
    {
      sub_221B22C2C(v75, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
      sub_221B22C2C(v71, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
      v38 = v68;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_221B06D58()
{
  OUTLINED_FUNCTION_55_4();
  v3 = v0;
  v4 = v51;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v6 = OUTLINED_FUNCTION_8_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  sub_2219AC930(v3 + 80, v51);
  switch(v58)
  {
    case 1:
      v30 = *v51;
      v61[0] = *&v51[8];
      v61[1] = *&v51[24];
      v62 = v51[40];
      v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
      MEMORY[0x28223BE20](v4);
      *(&v48 - 4) = v3;
      *(&v48 - 3) = v30;
      *(&v48 - 2) = v61;
      sub_221AE8904(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers);
      OUTLINED_FUNCTION_220_3();

      sub_2219ACA1C(v61);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    case 2:
      v19 = *v51;
      v63[0] = *&v51[8];
      v63[1] = *&v51[24];
      v64 = v51[40];
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v20);
      *(&v48 - 4) = v3;
      *(&v48 - 3) = v63;
      *(&v48 - 2) = v19;
      sub_221AE8904(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);
      OUTLINED_FUNCTION_220_3();
      sub_2219ACA1C(v63);

      if (v1)
      {
        goto LABEL_14;
      }

      v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      sub_2219A182C(v2, v12, &qword_27CFBA4C8, &qword_221BE0B08);
      goto LABEL_13;
    case 3:
      v25 = *v51;
      v26 = *&v51[8];
      v65[0] = *&v51[16];
      v65[1] = *&v51[32];
      v66 = v51[48];
      v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
      MEMORY[0x28223BE20](v4);
      *(&v48 - 4) = v3;
      *(&v48 - 3) = v25;
      *(&v48 - 2) = v26;
      *(&v48 - 1) = v65;
      sub_221AE8904(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);
      OUTLINED_FUNCTION_220_3();

      sub_2219ACA1C(v65);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    case 4:
      v49 = v1;
      v14 = v52;
      v15 = v53;
      v16 = v54;
      v67[0] = v55;
      v67[1] = v56;
      v68 = v57;
      memcpy(v50, v51, 0x41uLL);
      v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
      v48 = &v48;
      MEMORY[0x28223BE20](v17);
      *(&v48 - 6) = v3;
      *(&v48 - 5) = v14;
      *(&v48 - 32) = v15;
      *(&v48 - 3) = v50;
      *(&v48 - 2) = v16;
      *(&v48 - 1) = v67;
      sub_221AE8904(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties);
      v18 = v49;
      sub_221BCCB58();

      sub_2219ACA1C(v67);
      if (v18)
      {
        sub_2219ACB30(v50);
      }

      else
      {
        type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
        OUTLINED_FUNCTION_171_0();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v17);
        v44 = OUTLINED_FUNCTION_151_3();
        sub_2219A182C(v44, v45, v46, v47);
        sub_2219ACB30(v50);
LABEL_13:
        type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
        OUTLINED_FUNCTION_178_3();
        MEMORY[0x28223BE20](v39);
        OUTLINED_FUNCTION_81_6();
        *(v40 - 16) = v3;
        *(v40 - 8) = v12;
        sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
        OUTLINED_FUNCTION_220_3();
        sub_2219A1CC8(v12, &qword_27CFBA4C8, &qword_221BE0B08);
      }

LABEL_14:
      OUTLINED_FUNCTION_175_1();
      OUTLINED_FUNCTION_53_5();
      return;
    case 5:
      sub_2219AC98C(v51);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      swift_allocError();
      OUTLINED_FUNCTION_188_3(v31, &type metadata for AppIntentsProtocol.PerformQuery.Request);
      *(v32 + 16) = v51;
      *(v32 + 24) = 0;
      *(v32 + 32) = 2;
      swift_willThrow();
      goto LABEL_14;
    case 6:
      v69[0] = *v51;
      v69[1] = *&v51[16];
      v70 = v51[32];
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v33);
      OUTLINED_FUNCTION_81_6();
      *(v34 - 16) = v3;
      *(v34 - 8) = v69;
      sub_221AE8904(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);
      OUTLINED_FUNCTION_155_1();
      sub_2219ACA1C(v69);
      v35 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(v35);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    case 7:
      v71[0] = *v51;
      v71[1] = *&v51[16];
      v72 = v51[32];
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v27);
      OUTLINED_FUNCTION_81_6();
      *(v28 - 16) = v3;
      *(v28 - 8) = v71;
      sub_221AE8904(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);
      OUTLINED_FUNCTION_155_1();
      sub_2219ACA1C(v71);
      v29 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(v29);
      OUTLINED_FUNCTION_119_5();
      goto LABEL_12;
    default:
      v59[0] = *v51;
      v59[1] = *&v51[16];
      v60 = v51[32];
      v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
      MEMORY[0x28223BE20](v4);
      OUTLINED_FUNCTION_81_6();
      *(v13 - 16) = v3;
      *(v13 - 8) = v59;
      sub_221AE8904(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);
      OUTLINED_FUNCTION_155_1();
      sub_2219ACA1C(v59);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
      OUTLINED_FUNCTION_119_5();
LABEL_12:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v4);
      goto LABEL_13;
  }
}

uint64_t sub_221B07578(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (v27 - v13);
  v16 = *a2;
  v15 = a2[1];
  v17 = a1[1];

  *a1 = v16;
  a1[1] = v15;
  if (*(a3 + 32) && *(a3 + 32) == 1)
  {
    v20 = *(a3 + 16);
    v19 = *(a3 + 24);
    MEMORY[0x28223BE20](v18);
    v27[-4] = v21;
    v27[-3] = v6;
    v27[-2] = v23;
    v27[-1] = v22;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    sub_221BCCB58();
    sub_221B229DC(v10, v14, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v14 = *a3;
    v14[1] = v6;
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  return sub_221B22A38(v14, a1 + *(v25 + 20), &qword_27CFBA570, &qword_221BE0BD8);
}

uint64_t sub_221B07800@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  if (*(a1 + 32) && *(a1 + 32) == 1)
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    MEMORY[0x28223BE20](v11);
    *&v20[-32] = v14;
    *&v20[-24] = v6;
    *&v20[-16] = v16;
    *&v20[-8] = v15;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    sub_221BCCB58();
    v17 = OUTLINED_FUNCTION_109_3();
    sub_221B229DC(v17, a3, v18);
    a2(0);
    OUTLINED_FUNCTION_284();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a3 = *a1;
    a3[1] = v6;
    a2(0);
    OUTLINED_FUNCTION_284();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_221B079C4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v9 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v31 = (&v30 - v16);
  v18 = *a2;
  v17 = a2[1];
  v19 = a1[1];

  *a1 = v18;
  a1[1] = v17;
  v20 = *(a3 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v30 = v5;
    v34 = MEMORY[0x277D84F90];
    sub_2219A330C(0, v20, 0);
    v21 = v34;
    v22 = a3 + 32;
    do
    {
      sub_2219A1B08(v22, v33);
      __swift_project_boxed_opaque_existential_0(v33, v33[3]);
      sub_221AF02CC();
      __swift_destroy_boxed_opaque_existential_0(v33);
      v34 = v21;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2219A330C(v23 > 1, v24 + 1, 1);
        v21 = v34;
      }

      *(v21 + 16) = v24 + 1;
      sub_221B229DC(v13, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
      v22 += 40;
      --v20;
    }

    while (v20);
  }

  v25 = a1[2];

  a1[2] = v21;
  v26 = v31;
  sub_221B07800(v32, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target, v31);
  v27 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  return sub_221B22A38(v26, a1 + *(v28 + 24), &unk_27CFBB8D0, &unk_221BE4FC0);
}

uint64_t sub_221B07C70(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24[-v14];
  v16 = *a2;
  v17 = a2[1];
  v18 = a1[1];

  *a1 = v16;
  a1[1] = v17;
  sub_221B07800(a3, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target, v15);
  v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v19);
  v20 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  sub_221B22A38(v15, a1 + *(v20 + 20), &qword_27CFBA5B0, &qword_221BE0C20);
  v25 = a4;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  v21 = v26;
  result = sub_221BCCB58();
  if (!v21)
  {
    v23 = *(v20 + 28);
    sub_2219A1CC8(a1 + v23, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v11, a1 + v23, type metadata accessor for AppIntentsProtobuf_Value);
    return __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v8);
  }

  return result;
}

uint64_t sub_221B07EB8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *(a5 + 8);
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v33 - v16);
  v18 = *a2;
  v19 = a2[1];
  v20 = a1[1];

  *a1 = v18;
  a1[1] = v19;
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v22 = (a1 + *(v21 + 24));
  v23 = v22[1];

  *v22 = a3;
  v22[1] = a4;
  if (*(a5 + 32) && *(a5 + 32) == 1)
  {
    v26 = *(a5 + 16);
    v25 = *(a5 + 24);
    MEMORY[0x28223BE20](v24);
    *(&v33 - 4) = v27;
    *(&v33 - 3) = v34;
    *(&v33 - 2) = v28;
    *(&v33 - 1) = v29;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    sub_221BCCB58();
    sub_221B229DC(v13, v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v31 = v34;
    *v17 = *a5;
    v17[1] = v31;
    v30 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v30);
  return sub_221B22A38(v17, a1 + *(v21 + 20), &unk_27CFBB8F0, &qword_221BE0B80);
}

uint64_t sub_221B08188(void *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v31 = a7;
  v32 = a6;
  v33 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  v22 = a2[1];
  v23 = a1[1];

  *a1 = v21;
  a1[1] = v22;
  sub_221AE925C(a3, a4 & 1, a1);
  v34 = v33;
  sub_221AE8904(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
  result = sub_221BCCB58();
  if (!v8)
  {
    v25 = v31;
    v26 = v16;
    v27 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
    v28 = *(v27 + 32);
    sub_2219A1CC8(a1 + v28, &qword_27CFBA3D0, &qword_221BE0A18);
    sub_221B229DC(v20, a1 + v28, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery);
    __swift_storeEnumTagSinglePayload(a1 + v28, 0, 1, v17);
    if (v32)
    {
      v35 = v32;
      sub_221B0841C(&v35, a1);
    }

    sub_221B07800(v25, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target, v26);
    v29 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
    return sub_221B22A38(v26, a1 + *(v27 + 20), &qword_27CFBA548, &qword_221BE0BA0);
  }

  return result;
}

uint64_t sub_221B0841C(uint64_t *a1, uint64_t a2)
{
  v27 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v25 = a2;
    v28 = MEMORY[0x277D84F90];
    sub_2219A3364(0, v9, 0);
    v10 = v28;
    v11 = sub_221AE8904(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
    v26 = v11;
    v12 = (v8 + 56);
    do
    {
      v13 = *(v12 - 24);
      v14 = *v12;
      v15 = *(v12 - 1);
      *&v16 = MEMORY[0x28223BE20](v11);
      *(&v24 - 32) = v17;
      *(&v24 - 3) = v16;
      *(&v24 - 8) = v18;
      sub_221BCCB58();
      v28 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2219A3364(v19 > 1, v20 + 1, 1);
        v10 = v28;
      }

      *(v10 + 16) = v20 + 1;
      v11 = sub_221B229DC(v7, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
      v12 += 32;
      --v9;
    }

    while (v9);
    a2 = v25;
  }

  v21 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 24);
  v22 = *(a2 + v21);
  *(a2 + v21) = v10;
}

uint64_t sub_221B0865C(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (v27 - v13);
  v16 = *a2;
  v15 = a2[1];
  v17 = a1[1];

  *a1 = v16;
  a1[1] = v15;
  if (*(a3 + 32) && *(a3 + 32) == 1)
  {
    v20 = *(a3 + 16);
    v19 = *(a3 + 24);
    MEMORY[0x28223BE20](v18);
    v27[-4] = v21;
    v27[-3] = v6;
    v27[-2] = v23;
    v27[-1] = v22;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    sub_221BCCB58();
    sub_221B229DC(v10, v14, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v14 = *a3;
    v14[1] = v6;
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  return sub_221B22A38(v14, a1 + *(v25 + 20), &qword_27CFBA588, &qword_221BE0BF0);
}

uint64_t sub_221B088E4(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (v27 - v13);
  v16 = *a2;
  v15 = a2[1];
  v17 = a1[1];

  *a1 = v16;
  a1[1] = v15;
  if (*(a3 + 32) && *(a3 + 32) == 1)
  {
    v20 = *(a3 + 16);
    v19 = *(a3 + 24);
    MEMORY[0x28223BE20](v18);
    v27[-4] = v21;
    v27[-3] = v6;
    v27[-2] = v23;
    v27[-1] = v22;
    sub_221AE8904(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    sub_221BCCB58();
    sub_221B229DC(v10, v14, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget);
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v14 = *a3;
    v14[1] = v6;
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
  v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  return sub_221B22A38(v14, a1 + *(v25 + 20), &unk_27CFBB900, &unk_221BE5080);
}

uint64_t sub_221B08B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v11) = *(a2 + 72);
  v13 = *(a2 + 73);
  v20 = *(a2 + 56);
  v21 = v11;
  v22 = v13;
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCB58();
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v15 = *(Request + 28);
  sub_2219A1CC8(a1 + v15, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v12, a1 + v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v9);
  sub_221B22AD8(v23, a1, &qword_27CFBA4C8, &qword_221BE0B08);
  v18[16] = *(a2 + 32);
  v19 = *(a2 + 40);
  sub_221AE8904(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);
  sub_221BCCB58();
  v16 = *(Request + 24);
  sub_2219A1CC8(a1 + v16, &unk_27CFBB8A0, &qword_221BE0B10);
  sub_221B229DC(v8, a1 + v16, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options);
  return __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v5);
}

void sub_221B08E78()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v106 = v5;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v107 = v10;
  v11 = OUTLINED_FUNCTION_133_3();
  v104 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(v11);
  v12 = OUTLINED_FUNCTION_2_1(v104);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_51_4();
  v101 = v15;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_132_2();
  v102 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB980, &unk_221BE0A20);
  v19 = OUTLINED_FUNCTION_8_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_51_4();
  v103 = v22;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_132_2();
  v105 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_79_2();
  v30 = type metadata accessor for AppIntentsProtobuf_Value(v29);
  v31 = OUTLINED_FUNCTION_2_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_16_12();
  v34 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  v35 = OUTLINED_FUNCTION_2_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30_8();
  v108 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v40 = OUTLINED_FUNCTION_8_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_5();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v101 - v47;
  sub_2219A02E8(v4, &v101 - v47, &qword_27CFBA790, &qword_221BE0CE8);
  v49 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  v50 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_4(v50, v51, v49);
  if (v52)
  {
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v53, &type metadata for AppIntentsProtocol.PerformQuery.Response);
    *(v54 + 16) = 0x8000000221BF0820;
    *(v54 + 24) = 0;
    *(v54 + 32) = 1;
    swift_willThrow();
    v55 = OUTLINED_FUNCTION_14_15();
LABEL_13:
    sub_221B22C2C(v55, v56);
    goto LABEL_14;
  }

  sub_2219A02E8(v48, v45, &qword_27CFBA790, &qword_221BE0CE8);
  OUTLINED_FUNCTION_235_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload != 1)
  {
    LODWORD(v107) = EnumCaseMultiPayload;
    v70 = v108;
    sub_221B229DC(v45, v108, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);
    sub_2219A02E8(v70 + *(v34 + 20), v0, &unk_27CFBB660, &qword_221BE4610);
    OUTLINED_FUNCTION_25_10(v0);
    if (v52)
    {
      *v2 = xmmword_221BD8630;
      v71 = v2 + *(v30 + 20);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_25_10(v0);
      if (!v52)
      {
        sub_2219A1CC8(v0, &unk_27CFBB660, &qword_221BE4610);
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_16();
      sub_221B229DC(v0, v2, v72);
    }

    sub_221B14BC4(*v2, v2[1], &qword_27CFBB680, 0x277D23958);
    if (!v1)
    {
      v63 = v73;
      v61 = v48;
      OUTLINED_FUNCTION_4_20();
      sub_221B22C2C(v2, v76);
      KeyPath = swift_getKeyPath();
      v78 = swift_getKeyPath();
      v79 = v105;
      sub_221AE9C84(KeyPath, v78, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);

      OUTLINED_FUNCTION_244_2();
      sub_2219A02E8(v80, v81, v82, v83);
      v84 = OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_49_4(v84, v85, v104);
      if (v52)
      {
        v86 = OUTLINED_FUNCTION_14_15();
        sub_221B22C2C(v86, v87);
        sub_2219A1CC8(v79, &unk_27CFBB980, &unk_221BE0A20);
        OUTLINED_FUNCTION_39_9();
        v67 = 0;
        v68 = 0;
        v69 = 0;
      }

      else
      {
        v88 = OUTLINED_FUNCTION_97_5();
        sub_221B229DC(v88, v102, v89);
        v90 = OUTLINED_FUNCTION_97_5();
        v91 = v101;
        sub_221B22BD0(v90, v101, v92);
        v93 = sub_221B094E0(v91);
        v68 = v94;
        v69 = v95;
        v96 = OUTLINED_FUNCTION_14_15();
        sub_221B22C2C(v96, v97);
        v98 = OUTLINED_FUNCTION_53_3();
        sub_221B22C2C(v98, v99);
        sub_2219A1CC8(v105, &unk_27CFBB980, &unk_221BE0A20);
        OUTLINED_FUNCTION_39_9();
        v67 = v93 & 1;
      }

      v58 = v107;
      goto LABEL_20;
    }

    v74 = OUTLINED_FUNCTION_14_15();
    sub_221B22C2C(v74, v75);
    OUTLINED_FUNCTION_39_9();
    OUTLINED_FUNCTION_4_20();
    v55 = v2;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_19();
  v59 = v107;
  sub_221B229DC(v45, v107, v60);
  sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
  v61 = v48;
  sub_221AEE828(v59);
  v63 = v62;
  v64 = OUTLINED_FUNCTION_14_15();
  sub_221B22C2C(v64, v65);
  OUTLINED_FUNCTION_2_32();
  sub_221B22C2C(v59, v66);
  if (!v1)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
LABEL_20:
    sub_2219A1CC8(v61, &qword_27CFBA790, &qword_221BE0CE8);
    v100 = v106;
    *v106 = v63;
    v100[1] = v67;
    v100[2] = v68;
    v100[3] = v69;
    *(v100 + 32) = v58 == 1;
    goto LABEL_15;
  }

LABEL_14:
  sub_2219A1CC8(v48, &qword_27CFBA790, &qword_221BE0CE8);
LABEL_15:
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B094E0(void *a1)
{
  v3 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_221BCC558();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v20 = *(v19 + 28);
  v34 = *(a1 + *(v19 + 32));
  v35 = a1;
  sub_2219A02E8(a1 + v20, v10, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v21 = v14 + *(v11 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_2219A1CC8(v10, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v10, v14, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  sub_221AE9E30(v14);
  sub_221B22C2C(v14, type metadata accessor for AppIntentsProtobuf_UUID);
  v22 = v35;
  if (v1)
  {
    sub_221B22C2C(v35, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
    return v23 & 1;
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v25 = objc_allocWithZone(MEMORY[0x277D23B40]);
  v26 = sub_221B21A08(v18, v24);
  v27 = v22[1];
  v28 = *(v27 + 16);
  if (!v28)
  {
    sub_221B22C2C(v22, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
LABEL_13:
    v23 = v34;
    return v23 & 1;
  }

  v33 = v26;
  v37 = MEMORY[0x277D84F90];
  result = sub_221BCDF28();
  v30 = 0;
  v31 = v27 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  while (v30 < *(v27 + 16))
  {
    sub_221B22BD0(v31 + *(v36 + 72) * v30, v6, type metadata accessor for AppIntentsProtobuf_Value);
    sub_221B14BC4(*v6, v6[1], &qword_27CFBB680, 0x277D23958);
    ++v30;
    sub_221B22C2C(v6, type metadata accessor for AppIntentsProtobuf_Value);
    sub_221BCDEF8();
    v32 = *(v37 + 16);
    sub_221BCDF38();
    sub_221BCDF48();
    result = sub_221BCDF08();
    if (v28 == v30)
    {
      sub_221B22C2C(v35, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_221B0996C()
{
  OUTLINED_FUNCTION_55_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA790, &qword_221BE0CE8);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82_5();
  v10 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(v10);
  v11 = *v0;
  if (v0[4])
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_63_7();
    *(v13 - 16) = v11;
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v14, v15);
    OUTLINED_FUNCTION_143_3();
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v21 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v3);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
      OUTLINED_FUNCTION_74_6();
      MEMORY[0x28223BE20](v24);
      OUTLINED_FUNCTION_60_7();
      sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
      OUTLINED_FUNCTION_143_3();
      OUTLINED_FUNCTION_157_2();
      v20 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  else
  {
    v16 = v0[3];
    v25 = *(v0 + 1);
    v17 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
    MEMORY[0x28223BE20](v17);
    sub_221AE8904(&unk_27CFBB990, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);
    OUTLINED_FUNCTION_156_1();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  v18 = &qword_27CFBA790;
  v19 = &qword_221BE0CE8;
  v20 = v2;
LABEL_8:
  sub_2219A1CC8(v20, v18, v19);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B09C1C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v27 = a4;
  v10 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221BCCB58();
  if (!v5)
  {
    v25 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
    v18 = *(v25 + 20);
    sub_2219A1CC8(a1 + v18, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v17, a1 + v18, type metadata accessor for AppIntentsProtobuf_Value);
    v19 = __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v14);
    if (v27)
    {
      v24 = a1;
      MEMORY[0x28223BE20](v19);
      *(&v24 - 32) = a3 & 1;
      v20 = v27;
      *(&v24 - 3) = v27;
      *(&v24 - 2) = a5;
      sub_221AE8904(&qword_27CFB98D8, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
      v21 = v20;

      sub_221BCCB58();

      v22 = v24;
      v23 = *(v25 + 24);
      sub_2219A1CC8(v24 + v23, &unk_27CFBB980, &unk_221BE0A20);
      sub_221B229DC(v13, v22 + v23, type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage);
      __swift_storeEnumTagSinglePayload(v22 + v23, 0, 1, v10);
    }
  }
}

double sub_221B09F04@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_221AEB83C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_221B09F4C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_221AEC584(a1, sub_221B1B668);
}

double sub_221B09F9C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_221AECC48(a1, a2, v7);
  if (!v3)
  {
    result = *v7;
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    *(a3 + 32) = v8;
  }

  return result;
}

uint64_t sub_221B09FE4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_221AEE058();
}

void sub_221B0A020()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v44 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_40_8();
  v45 = type metadata accessor for AppIntentsProtobuf_UUID(v10);
  v11 = OUTLINED_FUNCTION_2_1(v45);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_8();
  v47 = v14;
  OUTLINED_FUNCTION_133_3();
  v15 = sub_221BCC558();
  v16 = OUTLINED_FUNCTION_8_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_51_6();
  v25 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v24);
  v26 = OUTLINED_FUNCTION_2_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_0();
  v31 = v30 - v29;
  v32 = OUTLINED_FUNCTION_149_2();
  v33 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(v32);
  sub_2219A02E8(v4 + *(v33 + 24), v2, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_25_10(v2);
  if (v34)
  {
    sub_221BCC8C8();
    v35 = (v31 + v25[5]);
    *v35 = 0;
    v35[1] = 0;
    OUTLINED_FUNCTION_217_3(v31 + v25[6]);
    *(v31 + v25[7]) = 2;
    OUTLINED_FUNCTION_25_10(v2);
    if (!v34)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    sub_221B229DC(v2, v31, v36);
  }

  sub_221AE9D08();
  if (v0)
  {
    OUTLINED_FUNCTION_50_6();
    sub_221B22C2C(v4, v37);
  }

  else
  {
    sub_2219A02E8(v4 + *(v33 + 20), v1, &qword_27CFB9988, &qword_221BDAE20);
    OUTLINED_FUNCTION_49_4(v1, 1, v45);
    if (v34)
    {
      v39 = v47;
      *v47 = 0;
      v47[1] = 0;
      v38 = v47 + *(v45 + 24);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_39_8(v1);
      if (!v34)
      {
        sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v39 = v47;
      sub_221B229DC(v1, v47, v40);
    }

    sub_221AE9E30(v39);
    sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v39, v41);
    v42 = sub_221AEA118(v46);
    OUTLINED_FUNCTION_50_6();
    sub_221B22C2C(v4, v43);
    *v44 = v48;
    *(v44 + 8) = v49;
    *(v44 + 16) = v50;
    *(v44 + 17) = v51;
    *(v44 + 24) = v42;
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B0A37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22[0] = a2;
    v22[1] = a3;
    sub_221AF6468();
  }

  v18 = [v23 identifier];
  sub_221BCC528();

  MEMORY[0x28223BE20](v19);
  v22[-2] = v17;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  (*(v13 + 8))(v17, v12);
  v20 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0) + 20);
  sub_2219A1CC8(a1 + v20, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v11, a1 + v20, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v8);
}

uint64_t sub_221B0A60C(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_221AEC60C(a1, *v1, *(v1 + 8), v2 | *(v1 + 16), *(v1 + 24));
}

uint64_t sub_221B0A65C()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_221AEE168(*v0, *(v0 + 8), v1 | *(v0 + 16), *(v0 + 24));
}

uint64_t sub_221B0A694(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A87C98();
}

uint64_t sub_221B0A6D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A87B90();
}

double sub_221B0A714@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9560, &qword_221BE49F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24[-v6];
  v8 = type metadata accessor for AppIntentsProtobuf_Size(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  sub_2219A02E8(a1 + *(v12 + 64), v7, &qword_27CFB9560, &qword_221BE49F0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    *v11 = 0;
    v11[1] = 0;
    v13 = v11 + *(v8 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2219A1CC8(v7, &qword_27CFB9560, &qword_221BE49F0);
    }
  }

  else
  {
    sub_221B229DC(v7, v11, type metadata accessor for AppIntentsProtobuf_Size);
  }

  v14 = *v11;
  v15 = v11[1];
  sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_Size);
  v16 = *(a1 + 32);
  result = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 57);
  v21 = *(a1 + 58);
  v22 = *(a1 + 59);
  v24[8] = 1;
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v23 = *(a1 + 16);
  *(a2 + 40) = *a1;
  *(a2 + 56) = v23;
  *(a2 + 72) = v16;
  *(a2 + 80) = result;
  *(a2 + 88) = v18;
  *(a2 + 96) = v19;
  *(a2 + 97) = v20;
  *(a2 + 98) = v21;
  *(a2 + 99) = v22;
  return result;
}

void sub_221B0A914(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v109[-v6];
  v8 = *a2;
  if (v8 != 2)
  {
    v9 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v10 = *(a1 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_221A91E70();
      v12 = v16;
      *(a1 + v9) = v16;
    }

    swift_beginAccess();
    *(v12 + 121) = v8;
  }

  v17 = a2[1];
  if (v17 != 2)
  {
    v18 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v19 = *(a1 + v18);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a1 + v18);
    if ((v20 & 1) == 0)
    {
      v22 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_221A91E70();
      v21 = v25;
      *(a1 + v18) = v25;
    }

    swift_beginAccess();
    *(v21 + 59) = v17;
  }

  if ((a2[16] & 1) == 0)
  {
    v26 = *(a2 + 1);
    if (v26 < 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    v27 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v28 = *(a1 + v27);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a1 + v27);
    if ((v29 & 1) == 0)
    {
      v31 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v32 = *(v31 + 48);
      v33 = *(v31 + 52);
      swift_allocObject();
      sub_221A91E70();
      v30 = v34;
      *(a1 + v27) = v34;
    }

    swift_beginAccess();
    *(v30 + 128) = v26;
    *(v30 + 136) = 0;
  }

  v35 = a2[32];
  if ((v35 & 1) == 0)
  {
    v36 = *(a2 + 3);
    v37 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v38 = *(a1 + v37);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(a1 + v37);
    if ((v39 & 1) == 0)
    {
      v41 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      sub_221A91E70();
      v40 = v44;
      *(a1 + v37) = v44;
    }

    swift_beginAccess();
    *(v40 + 64) = v36;
    *(v40 + 72) = v35;
  }

  v45 = a2[33];
  if (v45 != 2)
  {
    v46 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v47 = *(a1 + v46);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a1 + v46);
    if ((v48 & 1) == 0)
    {
      v50 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      sub_221A91E70();
      v49 = v53;
      *(a1 + v46) = v53;
    }

    swift_beginAccess();
    *(v49 + 112) = v45;
  }

  v54 = a2[34];
  if (v54 != 2)
  {
    v55 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v56 = *(a1 + v55);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(a1 + v55);
    if ((v57 & 1) == 0)
    {
      v59 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      sub_221A91E70();
      v58 = v62;
      *(a1 + v55) = v62;
    }

    swift_beginAccess();
    *(v58 + 57) = v54;
  }

  if (*(a2 + 6))
  {
    v63 = *(a2 + 5);
    v64 = *(a2 + 6);

    sub_221A87C98();
  }

  if ((a2[64] & 1) == 0)
  {
    v65 = *(a2 + 7);
    if ((v65 & 0x8000000000000000) == 0)
    {
      v66 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
      v67 = *(a1 + v66);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v69 = *(a1 + v66);
      if ((v68 & 1) == 0)
      {
        v70 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
        v71 = *(v70 + 48);
        v72 = *(v70 + 52);
        swift_allocObject();
        sub_221A91E70();
        v69 = v73;
        *(a1 + v66) = v73;
      }

      swift_beginAccess();
      *(v69 + 48) = v65;
      *(v69 + 56) = 0;
      goto LABEL_33;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_33:
  if ((a2[80] & 1) == 0)
  {
    v74 = *(a2 + 9);
    if ((v74 & 0x8000000000000000) == 0)
    {
      v75 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
      v76 = *(a1 + v75);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(a1 + v75);
      if ((v77 & 1) == 0)
      {
        v79 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
        v80 = *(v79 + 48);
        v81 = *(v79 + 52);
        swift_allocObject();
        sub_221A91E70();
        v78 = v82;
        *(a1 + v75) = v82;
      }

      swift_beginAccess();
      *(v78 + 32) = v74;
      *(v78 + 40) = 0;
      goto LABEL_38;
    }

LABEL_54:
    __break(1u);
    return;
  }

LABEL_38:
  if (*(a2 + 12))
  {
    v83 = *(a2 + 11);
    v84 = *(a2 + 12);

    sub_221A87B90();
  }

  v85 = a2[104];
  if (v85 != 2)
  {
    v86 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v87 = *(a1 + v86);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(a1 + v86);
    if ((v88 & 1) == 0)
    {
      v90 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();
      sub_221A91E70();
      v89 = v93;
      *(a1 + v86) = v93;
    }

    swift_beginAccess();
    *(v89 + 58) = v85;
  }

  KeyPath = swift_getKeyPath();
  v95 = *(a2 + 52);
  if (v95 == 2)
  {
    v96 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
    v97 = v7;
    v98 = 1;
  }

  else
  {
    memcpy(__dst, a2 + 112, sizeof(__dst));
    v111 = v95;
    v99 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
    MEMORY[0x28223BE20](v99);
    *&v109[-16] = __dst;
    sub_221AE8904(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
    sub_221BCCB58();
    v97 = v7;
    v98 = 0;
    v96 = v99;
  }

  __swift_storeEnumTagSinglePayload(v97, v98, 1, v96);
  sub_221B0AF98(KeyPath, v7);

  sub_2219A1CC8(v7, &unk_27CFBB740, &qword_221BE09F8);
  if ((a2[214] & 1) == 0)
  {
    v100 = *(a2 + 106);
    v101 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20);
    v102 = *(a1 + v101);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v104 = *(a1 + v101);
    if ((v103 & 1) == 0)
    {
      v105 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options._StorageClass(0);
      v106 = *(v105 + 48);
      v107 = *(v105 + 52);
      swift_allocObject();
      sub_221A91E70();
      v104 = v108;
      *(a1 + v101) = v108;
    }

    swift_beginAccess();
    *(v104 + 16) = v100;
    *(v104 + 24) = 0;
  }
}

uint64_t sub_221B0AF98(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_2219A02E8(a2, v6, &unk_27CFBB740, &qword_221BE09F8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB740, &qword_221BE09F8);
  }

  sub_221B229DC(v6, v13, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
  swift_setAtWritableKeyPath();
  return sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
}

uint64_t sub_221B0B154(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_2219A02E8(a2, v6, &unk_27CFBB660, &qword_221BE4610);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221B229DC(v6, v13, type metadata accessor for AppIntentsProtobuf_Value);
  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_Value);
  swift_setAtWritableKeyPath();
  return sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_Value);
}

uint64_t sub_221B0B310(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  sub_2219A02E8(a2, v6, &qword_27CFB9920, &unk_221BDADC0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9920, &unk_221BDADC0);
  }

  sub_221B229DC(v6, v13, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  swift_setAtWritableKeyPath();
  return sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
}

uint64_t sub_221B0B4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t))
{
  v11 = a5(0);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_165_0();
  sub_221B22BD0(a1, v7, a6);
  return a7(v7);
}

uint64_t sub_221B0B564(uint64_t result, char a2)
{
  v2 = 0xE700000000000000;
  v3 = 0x73646F50726961;
  switch(a2)
  {
    case 1:
      v3 = 0x79616C50726163;
      goto LABEL_11;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x6565724673657965;
      goto LABEL_11;
    case 3:
      v3 = 0x646F50656D6F68;
      goto LABEL_11;
    case 4:
      v2 = 0xE300000000000000;
      v3 = 6513005;
      goto LABEL_11;
    case 5:
      v2 = 0xE500000000000000;
      v3 = 0x656E6F6870;
      goto LABEL_11;
    case 6:
      v2 = 0xE300000000000000;
      v3 = 6578544;
      goto LABEL_11;
    case 7:
      v2 = 0xE200000000000000;
      v3 = 30324;
      goto LABEL_11;
    case 8:
      v2 = 0xE600000000000000;
      v3 = 0x6E6F69736976;
      goto LABEL_11;
    case 9:
      v2 = 0xE500000000000000;
      v3 = 0x6863746177;
      goto LABEL_11;
    case 10:
      return result;
    default:
LABEL_11:
      v4 = (result + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0) + 20));
      v5 = v4[1];

      *v4 = v3;
      v4[1] = v2;
      return result;
  }
}

uint64_t sub_221B0B68C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[6] = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v30 = v2;
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v14 = *(v13 + 20);
  sub_2219A1CC8(a1 + v14, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v12, a1 + v14, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v9);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18) + 28);
  sub_2219A02E8(v15 + 40, v20, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_2219A02E8(v15, v21, &qword_27CFB8320, &unk_221BD1D60);
  *&v21[40] = 0u;
  v22 = 0u;
  v23 = 0;
  LOBYTE(v14) = *(v15 + 120);
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_2219A02E8(v15 + 80, v29, &unk_27CFB93B0, &qword_221BD1D70);
  v24 = v14;
  v29[5] = 0;
  v28 = 0;
  v19[2] = v20;
  sub_221AE8904(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  v16 = v30;
  sub_221BCCB58();
  result = sub_2219A1CC8(v20, &unk_27CFBB7A0, &qword_221BD2930);
  if (!v16)
  {
    v18 = *(v13 + 24);
    sub_2219A1CC8(a1 + v18, &qword_27CFB9D00, &unk_221BDB1B0);
    sub_221B229DC(v8, a1 + v18, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    return __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v5);
  }

  return result;
}

id sub_221B0B9B8(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B22BD0(a1, v5, type metadata accessor for AppIntentsProtobuf_Dialog);
  v6 = objc_allocWithZone(_s18RemoteDialogResultCMa());
  v7 = sub_221B10A10(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_221AE9C28();

  sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_Dialog);
  return v7;
}

void *sub_221B0BAF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &__src[-v7];
  v9 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &__src[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  sub_2219A02E8(a1 + *(v13 + 20), v8, &qword_27CFB9C78, &qword_221BDB0F8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x277D84F90];
    v14 = v12 + v9[6];
    sub_221BCC8C8();
    v15 = (v12 + v9[7]);
    *v15 = 0;
    v15[1] = 0;
    v16 = v9[8];
    v17 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
    __swift_storeEnumTagSinglePayload(v12 + v16, 1, 1, v17);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_2219A1CC8(v8, &qword_27CFB9C78, &qword_221BDB0F8);
    }
  }

  else
  {
    sub_221B229DC(v8, v12, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  }

  sub_221B0C7D0();
  result = sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);
  if (!v2)
  {
    return memcpy(a2, __src, 0x50uLL);
  }

  return result;
}

BOOL sub_221B0BCF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  sub_221A8D918();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10) + 28));
  sub_221AE8AF8(v7);
  v8 = v7[9];
  __swift_project_boxed_opaque_existential_0(v7 + 5, v7[8]);
  sub_221B0BF68();
  sub_221A8DAE8();
  return sub_221AE92B4((v7 + 10));
}

uint64_t sub_221B0BEB0()
{
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221AE8904(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog);
  return sub_221BCCB58();
}

uint64_t sub_221B0BF68()
{
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221AE8904(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  return sub_221BCCB58();
}

uint64_t sub_221B0C020()
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  sub_221AE8904(&unk_27CFBB850, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);
  return sub_221BCCB58();
}

uint64_t sub_221B0C0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  sub_221A8DD28();
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60) + 28);
  sub_221B22358(v8, &v40);
  v38[0] = v40;
  v38[1] = v41;
  v39 = v42;
  if (*(&v41 + 1))
  {
    sub_22198B358(v38, v43);
    __swift_project_boxed_opaque_existential_0(v43, v43[3]);
    sub_221B0BEB0();
    sub_221A8DE14();
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    sub_2219A1CC8(v38, &qword_27CFB8320, &unk_221BD1D60);
  }

  v9 = *(v8 + 40);
  v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0) + 20);
  v11 = *(a1 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    sub_221ACC164();
    v13 = v17;
    *(a1 + v10) = v17;
  }

  v18 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  *(v13 + v18) = v9;
  v19 = *(v8 + 41);
  v20 = *(a1 + v10);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + v10);
  if ((v21 & 1) == 0)
  {
    v23 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_221ACC164();
    v22 = v26;
    *(a1 + v10) = v26;
  }

  v27 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  result = swift_beginAccess();
  *(v22 + v27) = v19;
  v29 = *(v8 + 48);
  if (v29 < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = *(a1 + v10);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a1 + v10);
    if ((v31 & 1) == 0)
    {
      v33 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      sub_221ACC164();
      v32 = v36;
      *(a1 + v10) = v36;
    }

    v37 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
    result = swift_beginAccess();
    *(v32 + v37) = v29;
  }

  return result;
}

void sub_221B0C400(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0) + 28));
  sub_221AE8BF4(v12);
  v26 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  sub_221A8C850();
  v13 = v12[9];
  __swift_project_boxed_opaque_existential_0(v12 + 5, v12[8]);
  sub_221B0BF68();
  v22 = a1;
  sub_221A8C93C();
  v14 = v12[10];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v28 = MEMORY[0x277D84F90];
    sub_2219A33BC(0, v15, 0);
    v17 = 0;
    v16 = v28;
    v18 = v14 + 32;
    while (v17 < *(v14 + 16))
    {
      v19 = sub_221B223B4(v18, v27);
      MEMORY[0x28223BE20](v19);
      *(&v22 - 2) = v27;
      sub_221AE8904(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      sub_221BCCB58();
      if (v2)
      {
        sub_221B2242C(v27);

        return;
      }

      sub_221B2242C(v27);
      v28 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2219A33BC(v20 > 1, v21 + 1, 1);
        v16 = v28;
      }

      ++v17;
      *(v16 + 16) = v21 + 1;
      sub_221B229DC(v25, v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      v18 += 96;
      if (v15 == v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    sub_221A8CB04(v16);
  }
}

void sub_221B0C7D0()
{
  OUTLINED_FUNCTION_55_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = v1[1];
  v24 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();

  v11 = sub_221AE9C28();
  v22 = v12;
  v23 = v11;

  v13 = v1[2];
  v14 = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();

  sub_221AE9C84(KeyPath, v16, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);

  v17 = sub_221B0F228(v9);
  sub_2219A1CC8(v9, &qword_27CFB85E8, &unk_221BD86E0);
  v18 = v23;
  *v3 = v24;
  v3[1] = v10;
  v19 = v22;
  v3[2] = v18;
  v3[3] = v19;
  v3[4] = v13;
  if (v17)
  {
    v20 = &protocol witness table for LNImage;
  }

  else
  {
    v14 = 0;
    v20 = 0;
  }

  sub_221B22C2C(v1, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  v3[5] = v17;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v14;
  v3[9] = v20;
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B0C99C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21[-v7];
  v9 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a2;
  sub_221AE8904(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  sub_221BCCB58();
  v13 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0) + 24);
  sub_2219A1CC8(a1 + v13, &qword_27CFB9C78, &qword_221BDB0F8);
  sub_221B229DC(v12, a1 + v13, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = type metadata accessor for AppIntentsProtobuf_Value(0);
    MEMORY[0x28223BE20](v16);
    *&v21[-16] = v15;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
    sub_221BCCB58();
    if (v2)
    {
    }

    v19 = v8;
    v20 = 0;
    v18 = v16;
  }

  else
  {
    v18 = type metadata accessor for AppIntentsProtobuf_Value(0);
    v19 = v8;
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
  sub_221B0B154(KeyPath, v8);

  result = sub_2219A1CC8(v8, &unk_27CFBB660, &qword_221BE4610);
  *a1 = *(a2 + 88);
  return result;
}

id sub_221B0CC78(uint64_t *a1)
{
  v2 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 36));
  v3 = v2[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_221AE9C28();
  v6 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = sub_221AE9C28();
  v9 = v8;

  if (v3 >> 60 == 15)
  {
    v10 = *a1;
    v11 = a1[1];
    objc_allocWithZone(MEMORY[0x277D23CE8]);
    sub_2219EBFC8(v10, v11);
    return sub_221B21BB4(v4, v6, v7, v9, v10, v11);
  }

  else
  {
    v13 = *v2;
    v14 = v2[1];
    if (v14 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = *v2;
    }

    v16 = 0xC000000000000000;
    if (v14 >> 60 != 15)
    {
      v16 = v2[1];
    }

    v21 = v16;
    v22 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2219EBFB4(v13, v14);
    v17 = sub_221AE9C28();
    v19 = v18;

    v20 = objc_allocWithZone(MEMORY[0x277D23CE8]);
    return sub_221B21AA0(v4, v6, v7, v9, v22, v21, v17, v19);
  }
}

uint64_t sub_221B0CE4C(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
  v34 = *(v38 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v33 = &v31 - v10;
  v11 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00) + 28);
  sub_221AE8CF0(v13);
  v35 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  sub_221A8CD4C();
  v32 = v13;
  v14 = *(v13 + 40);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v31 = a1;
    v36[0] = MEMORY[0x277D84F90];
    sub_2219A3414(0, v15, 0);
    v16 = v36[0];
    v17 = sub_221AE8904(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
    v18 = (v14 + 56);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = *(v18 - 24);
      *&v22 = MEMORY[0x28223BE20](v17);
      *(&v31 - 2) = v22;
      *(&v31 - 2) = v19;
      *(&v31 - 8) = v23;

      sub_221BCCB58();

      v36[0] = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2219A3414(v24 > 1, v25 + 1, 1);
        v16 = v36[0];
      }

      *(v16 + 16) = v25 + 1;
      v17 = sub_221B229DC(v7, v16 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v25, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      v18 += 32;
      --v15;
    }

    while (v15);
  }

  sub_221A8D210(v16);
  KeyPath = swift_getKeyPath();
  sub_2219A02E8(v32 + 48, v36, &unk_27CFB93B0, &qword_221BD1D70);
  v27 = v33;
  if (v37)
  {
    __swift_project_boxed_opaque_existential_0(v36, v37);
    sub_221B0D2F4();
    if (v2)
    {

      return __swift_destroy_boxed_opaque_existential_0(v36);
    }

    v30 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v30);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    sub_2219A1CC8(v36, &unk_27CFB93B0, &qword_221BD1D70);
    v29 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v29);
  }

  sub_221B0B310(KeyPath, v27);

  return sub_2219A1CC8(v27, &qword_27CFB9920, &unk_221BDADC0);
}

uint64_t sub_221B0D2F4()
{
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  sub_221AE8904(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  return sub_221BCCB58();
}

uint64_t sub_221B0D3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = a5;

  v9 = sub_221BCD578();
  v11 = v10;
  v12 = *(a1 + 16);

  *a1 = a2;
  *(a1 + 8) = v9;
  if (a5)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v8 == 2)
  {
    v14 = 0;
  }

  *(a1 + 16) = v11;
  *(a1 + 24) = v14;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_221B0D460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0) + 28));
  sub_221AE8DEC((v11 + 2));
  v12 = v2;
  v14 = v11[13];
  v13 = v11[14];

  sub_221A8D874(v14, v13);
  v21 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  sub_221A8D4C0();
  v15 = v11[11];
  __swift_project_boxed_opaque_existential_0(v11 + 7, v11[10]);
  sub_221B0BF68();
  sub_221A8D69C();
  v17 = *v11;
  v16 = v11[1];

  sub_221A8D5AC(v17, v16);
  v20 = v11[12];
  sub_221AE8904(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);
  result = sub_221BCCB58();
  if (!v12)
  {
    return sub_221A8D780();
  }

  return result;
}

uint64_t sub_221B0D72C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8BAF8();
}

uint64_t sub_221B0D76C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3)
  {
    v8 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0) + 20));
    v9 = v8[1];

    *v8 = a2;
    v8[1] = a3;
  }

  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v11 = a1 + *(result + 24);
  *v11 = a4 << 23 >> 31;
  *(v11 + 4) = 0;
  if (a4 != 2)
  {
    *(a1 + *(result + 28)) = a4;
  }

  return result;
}

uint64_t sub_221B0D828(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_221AEC6EC(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

uint64_t sub_221B0D874()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_221AEE2C8(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

uint64_t sub_221B0D8A8(void *a1, uint64_t *a2)
{
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  v5 = *(*(AppDescription - 8) + 64);
  MEMORY[0x28223BE20](AppDescription);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a2;
  v8 = a2[1];
  v10 = a1[1];

  *a1 = v9;
  a1[1] = v8;
  v11 = *(a2 + 33);
  v14[16] = *(a2 + 32);
  v14[17] = v11;
  sub_221AE8904(&qword_27CFB9D90, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);
  sub_221BCCB58();
  v12 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0) + 24);
  sub_2219A1CC8(a1 + v12, &qword_27CFBB620, &qword_221BE0DC0);
  sub_221B229DC(v7, a1 + v12, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);
  return __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, AppDescription);
}

uint64_t sub_221B0DA28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A6EF40();
}

uint64_t sub_221B0DA68@<X0>(void *a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_221AE9C84(KeyPath, v14, type metadata accessor for AppIntentsProtobuf_ValueType);

  sub_2219A02E8(v12, v10, &qword_27CFB95E0, &qword_221BE0A10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    result = sub_2219A1CC8(v12, &qword_27CFB95E0, &qword_221BE0A10);
    v16 = 0;
  }

  else
  {
    sub_221B229DC(v10, v5, type metadata accessor for AppIntentsProtobuf_ValueType);
    sub_221B14BC4(*v5, v5[1], &unk_27CFBB670, 0x277D23960);
    v16 = v17;
    sub_2219A1CC8(v12, &qword_27CFB95E0, &qword_221BE0A10);
    result = sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ValueType);
    if (v1)
    {
      return result;
    }
  }

  *v19 = v16;
  return result;
}

id sub_221B0DE28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = sub_221BCD358();
  v4 = [objc_opt_self() protocolOrNilWithIdentifier_];
  if (!v4)
  {
    sub_2219A1218();
    swift_allocError();
    *v5 = v2;
    *(v5 + 8) = v1;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 4;
    swift_willThrow();
  }

  return v4;
}

void sub_221B0DEE4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v78 = type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
  v77 = *(v78 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for AppIntentsProtobuf_Property(0);
  v80 = *(v81 - 8);
  v12 = v80[8];
  MEMORY[0x28223BE20](v81);
  v98 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v14);
  (*(v15 + 8))(&v83, v14, v15);
  v16 = v83;
  v17 = v84;
  sub_2219982C4(v85, v86);
  v18 = a1[4];

  a1[3] = v16;
  a1[4] = v17;
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v19);
  v21 = (*(v20 + 16))(v19, v20);
  v23 = v22;
  v24 = a1[1];

  *a1 = v21;
  a1[1] = v23;
  v25 = a2[3];
  v26 = a2[4];
  v75 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v25);
  v27 = (*(v26 + 24))(v25, v26);
  v28 = *(v27 + 16);
  if (v28)
  {
    v73 = v8;
    v74 = a1;
    v95[0] = MEMORY[0x277D84F90];
    v79 = v28;
    sub_2219A32B4(0, v28, 0);
    v30 = 0;
    v31 = 32;
    v32 = v95[0];
    while (v30 < *(v27 + 16))
    {
      v33 = *(v27 + v31);
      v34 = *(v27 + v31 + 16);
      v97 = *(v27 + v31 + 32);
      v96[0] = v33;
      v96[1] = v34;
      MEMORY[0x28223BE20](v29);
      v70[-2] = v35;
      sub_221B21DAC(v96, &v83);
      sub_221AE8904(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property);
      sub_221BCCB58();
      if (v3)
      {

        sub_221B21E08(v96);

        return;
      }

      sub_221B21E08(v96);
      v95[0] = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2219A32B4(v36 > 1, v37 + 1, 1);
        v32 = v95[0];
      }

      ++v30;
      *(v32 + 16) = v37 + 1;
      v29 = sub_221B229DC(v98, v32 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + v80[9] * v37, type metadata accessor for AppIntentsProtobuf_Property);
      v31 += 40;
      v3 = 0;
      if (v79 == v30)
      {

        a1 = v74;
        v8 = v73;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_11:
  v38 = a1[2];

  a1[2] = v32;
  sub_2219A1B08(v75, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v39 = v85;
    v40 = v86;

    sub_2219982C4(v39, v40);

    v41 = a1 + *(type metadata accessor for AppIntentsProtobuf_Action(0) + 36);
    *v41 = 0;
    *(v41 + 4) = 1;
LABEL_35:
    __swift_destroy_boxed_opaque_existential_0(v95);
    return;
  }

  if (!swift_dynamicCast())
  {
    sub_221A00FEC();
    swift_allocError();
    *v54 = 0u;
    *(v54 + 16) = 0u;
    *(v54 + 32) = 4;
    swift_willThrow();
    goto LABEL_35;
  }

  v70[1] = v84;
  v71 = v85;
  v72 = v86;
  v75 = v87;
  v73 = v88;
  v42 = v89;
  v43 = v90;
  v44 = v91;
  v79 = v92;
  v80 = v93;
  v45 = v94;
  v46 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v47 = v46;
  v48 = a1 + *(v46 + 36);
  *v48 = 1;
  *(v48 + 4) = 1;
  v81 = v43;
  if (v43)
  {
    v49 = (a1 + *(v46 + 40));
    v50 = v49[1];

    v51 = v81;
    *v49 = v42;
    v49[1] = v51;
  }

  *(a1 + v47[11]) = v44;
  v52 = v80;
  v98 = v45;
  if (v80)
  {
    MEMORY[0x28223BE20](v46);
    v70[-2] = v52;
    sub_221AE8904(&qword_27CFB96B8, type metadata accessor for AppIntentsProtobuf_ValueType);
    v53 = v52;
    sub_221BCCB58();
    if (v3)
    {

      sub_2219982C4(v71, v72);

      goto LABEL_35;
    }

    v55 = v47[13];
    sub_2219A1CC8(a1 + v55, &qword_27CFB95E0, &qword_221BE0A10);
    sub_221B229DC(v11, a1 + v55, type metadata accessor for AppIntentsProtobuf_ValueType);
    __swift_storeEnumTagSinglePayload(a1 + v55, 0, 1, v8);

    v45 = v98;
  }

  v56 = v79;
  if (v79)
  {
    v57 = sub_221BCE2D8();
    v58 = a1 + v47[12];
    *v58 = v57;
    v58[8] = 0;
  }

  v59 = sub_2219A69A0(v45);
  if (!v59)
  {

    sub_2219982C4(v71, v72);

    v62 = MEMORY[0x277D84F90];
LABEL_34:
    v69 = a1[5];

    a1[5] = v62;
    goto LABEL_35;
  }

  v60 = v59;
  v74 = a1;
  v82 = MEMORY[0x277D84F90];
  sub_2219A346C(0, v59 & ~(v59 >> 63), 0);
  if ((v60 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v62 = v82;
    v63 = v45 & 0xC000000000000001;
    do
    {
      if (v63)
      {
        v64 = MEMORY[0x223DA3BF0](v61, v45);
      }

      else
      {
        v64 = *(v45 + 8 * v61 + 32);
      }

      v65 = v64;
      v70[-2] = MEMORY[0x28223BE20](v64);
      sub_221AE8904(&unk_27CFBB6B0, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
      v66 = v76;
      sub_221BCCB58();

      v82 = v62;
      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_2219A346C(v67 > 1, v68 + 1, 1);
        v62 = v82;
      }

      ++v61;
      *(v62 + 16) = v68 + 1;
      sub_221B229DC(v66, v62 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v68, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
      v45 = v98;
    }

    while (v60 != v61);

    sub_2219982C4(v71, v72);

    a1 = v74;
    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

void sub_221B0EA2C(void *a1, char a2, void *a3, uint64_t a4)
{
  v41 = a4;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_221BCC558();
  v14 = *(v37 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v37);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  *(a1 + *(v18 + 32)) = a2;
  v19 = a3;
  v20 = [a3 iteratorIdentifier];
  v21 = [v20 longLongValue];

  *a1 = v21;
  v22 = [v19 sequenceIdentifier];
  sub_221BCC528();

  v43 = v17;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  v23 = v38;
  sub_221BCCB58();
  (*(v14 + 8))(v17, v37);
  v24 = *(v18 + 28);
  sub_2219A1CC8(a1 + v24, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v13, a1 + v24, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v10);
  v25 = sub_2219A69A0(v41);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = v25;
    v44 = MEMORY[0x277D84F90];
    sub_2219A325C(0, v25 & ~(v25 >> 63), 0);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v37 = a1;
      v28 = 0;
      v26 = v44;
      v29 = v41 & 0xC000000000000001;
      v38 = v41 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29)
        {
          v31 = MEMORY[0x223DA3BF0](v28, v41);
        }

        else
        {
          if (v28 >= *(v38 + 16))
          {
            goto LABEL_17;
          }

          v31 = *(v41 + 8 * v28 + 32);
        }

        v32 = v31;
        MEMORY[0x28223BE20](v31);
        *(&v37 - 2) = v33;
        sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
        sub_221BCCB58();
        if (v23)
        {

          return;
        }

        v44 = v26;
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_2219A325C(v34 > 1, v35 + 1, 1);
          v26 = v44;
        }

        *(v26 + 16) = v35 + 1;
        sub_221B229DC(v42, v26 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35, type metadata accessor for AppIntentsProtobuf_Value);
        ++v28;
        if (v30 == v27)
        {
          a1 = v37;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v36 = a1[1];

    a1[1] = v26;
  }
}

uint64_t sub_221B0EEE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70974();
}

uint64_t sub_221B0EF24(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  if (*a2)
  {
    v11 = *a1;
    v12 = *a2;

    *a1 = v10;
  }

  v13 = a2[2];
  if (v13)
  {
    v14 = a2[1];
    v15 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0) + 28));
    v16 = v15[1];

    *v15 = v14;
    v15[1] = v13;
  }

  v31 = a2;
  v32 = a1;
  v17 = a2[3];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v37 = MEMORY[0x277D84F90];
    sub_2219A34C4(0, v18, 0);
    v19 = v37;
    v20 = &qword_27CFB7808;
    v21 = v17 + 32;
    while (1)
    {
      v22 = sub_2219A02E8(v21, v36, v20, &qword_221BD1840);
      MEMORY[0x28223BE20](v22);
      *(&v30 - 2) = v36;
      sub_221AE8904(&unk_27CFBB700, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
      sub_221BCCB58();
      if (v3)
      {
        break;
      }

      v35 = 0;
      v23 = v20;
      sub_2219A1CC8(v36, v20, &qword_221BD1840);
      v37 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2219A34C4(v24 > 1, v25 + 1, 1);
        v19 = v37;
      }

      *(v19 + 16) = v25 + 1;
      sub_221B229DC(v9, v19 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
      v21 += 80;
      --v18;
      v20 = v23;
      v3 = v35;
      if (!v18)
      {
        goto LABEL_11;
      }
    }

    sub_2219A1CC8(v36, &qword_27CFB7808, &qword_221BD1840);
  }

  else
  {
LABEL_11:
    v26 = v32;
    v27 = v32[1];

    v26[1] = v19;
    v28 = *(v31 + 32);
    result = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
    *(v26 + *(result + 32)) = v28;
  }

  return result;
}

uint64_t sub_221B0F228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2219A02E8(a1, v5, &qword_27CFB85E8, &unk_221BD86E0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2219A1CC8(v5, &qword_27CFB85E8, &unk_221BD86E0);
    return 0;
  }

  result = sub_221B229DC(v5, v9, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  v12 = &v9[v6[6]];
  if (v12[8])
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12;
    if ((*v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_25;
    }
  }

  v14 = &v9[v6[7]];
  if (v14[8])
  {
    v15 = &v9[v6[5]];
    v16 = *v15;
    v17 = v15[1];
    if (v17 >> 60 == 15)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v15;
    }

    if (v17 >> 60 == 15)
    {
      v19 = 0xC000000000000000;
    }

    else
    {
      v19 = v15[1];
    }

    sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    sub_2219EBFB4(v16, v17);
    v20 = sub_221B148E8(v18, v19, v13);
LABEL_22:
    v10 = v20;
    sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
    return v10;
  }

  v21 = *v14;
  if ((*v14 & 0x8000000000000000) == 0)
  {
    v22 = &v9[v6[5]];
    v23 = *v22;
    v24 = v22[1];
    if (v24 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = *v22;
    }

    if (v24 >> 60 == 15)
    {
      v26 = 0xC000000000000000;
    }

    else
    {
      v26 = v22[1];
    }

    sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    sub_2219EBFB4(v23, v24);
    v20 = sub_221B14858(v25, v26, v13, v21);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_221B0F494(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2219A02E8(a2, &v40, &qword_27CFB7B20, &qword_221BD15C0);
  if (v41)
  {
    sub_22198B358(&v40, v39);
    __swift_project_boxed_opaque_existential_0(v39, v39[3]);
    sub_221B0F918();
    v13 = *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 24);
    sub_2219A1CC8(a1 + v13, &qword_27CFB85E8, &unk_221BD86E0);
    sub_221B229DC(v12, a1 + v13, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
    __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v9);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    sub_2219A1CC8(&v40, &qword_27CFB7B20, &qword_221BD15C0);
  }

  v33 = a2;
  v14 = *(a2 + 40);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v32 = a1;
    *&v40 = MEMORY[0x277D84F90];
    sub_2219A351C(0, v15, 0);
    v17 = 0;
    v16 = v40;
    v18 = v14 + 32;
    v34 = v15;
    v35 = v14;
    while (v17 < *(v14 + 16))
    {
      v19 = sub_2219A02E8(v18, v39, &unk_27CFBB710, &qword_221BD1850);
      MEMORY[0x28223BE20](v19);
      *(&v32 - 2) = v39;
      sub_221AE8904(&qword_27CFB9838, type metadata accessor for AppIntentsProtobuf_DynamicOption);
      sub_221BCCB58();
      if (v3)
      {
        sub_2219A1CC8(v39, &unk_27CFBB710, &qword_221BD1850);

        return;
      }

      v38 = 0;
      sub_2219A1CC8(v39, &unk_27CFBB710, &qword_221BD1850);
      *&v40 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2219A351C(v20 > 1, v21 + 1, 1);
        v16 = v40;
      }

      ++v17;
      *(v16 + 16) = v21 + 1;
      sub_221B229DC(v42, v16 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v21, type metadata accessor for AppIntentsProtobuf_DynamicOption);
      v18 += 88;
      v14 = v35;
      v3 = v38;
      if (v34 == v17)
      {
        a1 = v32;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = v2;
LABEL_14:
    v22 = *a1;

    *a1 = v16;
    v23 = v33;
    v24 = *(v33 + 56);
    if (v24)
    {
      v25 = *(v33 + 48);
      v26 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 28));
      v27 = v26[1];

      *v26 = v25;
      v26[1] = v24;
    }

    v28 = *(v23 + 72);
    if (v28)
    {
      v29 = *(v23 + 64);
      v30 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0) + 32));
      v31 = v30[1];

      *v30 = v29;
      v30[1] = v28;
    }
  }
}

uint64_t sub_221B0F918()
{
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  sub_221AE8904(&unk_27CFBB720, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  return sub_221BCCB58();
}

uint64_t sub_221B0F9D0(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2219A02E8(a2, &v27, &qword_27CFB7B20, &qword_221BD15C0);
  if (v28)
  {
    sub_22198B358(&v27, v29);
    __swift_project_boxed_opaque_existential_0(v29, v29[3]);
    sub_221B0F918();
    v14 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 28);
    sub_2219A1CC8(a1 + v14, &qword_27CFB85E8, &unk_221BD86E0);
    sub_221B229DC(v13, a1 + v14, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
    __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v10);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    sub_2219A1CC8(&v27, &qword_27CFB7B20, &qword_221BD15C0);
  }

  *a1 = a2[5];
  v15 = a2[7];
  if (v15)
  {
    v16 = a2[6];
    v17 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 32));
    v18 = v17[1];

    *v17 = v16;
    v17[1] = v15;
  }

  v20 = a2[8];
  v19 = a2[9];
  v21 = a1[2];

  a1[1] = v20;
  a1[2] = v19;
  v23 = a2[10];
  MEMORY[0x28223BE20](v22);
  *(&v27 - 2) = v24;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  result = sub_221BCCB58();
  if (!v3)
  {
    v26 = *(type metadata accessor for AppIntentsProtobuf_DynamicOption(0) + 36);
    sub_2219A1CC8(a1 + v26, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v9, a1 + v26, type metadata accessor for AppIntentsProtobuf_Value);
    return __swift_storeEnumTagSinglePayload(a1 + v26, 0, 1, v6);
  }

  return result;
}

uint64_t sub_221B0FCDC()
{
  type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  sub_221AE8904(&unk_27CFBB840, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
  return sub_221BCCB58();
}

uint64_t sub_221B0FD94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = a4[2](a3, a4);
  v8 = *a1;

  *a1 = v7;
  v9 = a4[1](a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0) + 28));
    v14 = v13[1];

    *v13 = v11;
    v13[1] = v12;
  }

  v15 = a4[4](a3, a4);
  v16 = a1[1];

  a1[1] = v15;
  result = a4[3](a3, a4);
  if (v18)
  {
    v19 = result;
    v20 = v18;
    v21 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0) + 32));
    v22 = v21[1];

    *v21 = v19;
    v21[1] = v20;
  }

  return result;
}

uint64_t sub_221B0FF0C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId);
  v2 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId + 8);

  return v1;
}

uint64_t sub_221B0FFB8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId);
  v4 = *(v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_221B10064(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionSpeak);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionSpeak) = a1;
}

uint64_t sub_221B1010C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionPrint);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionPrint) = a1;
}

uint64_t sub_221B101B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_dialogId);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_dialogId) = a1;
}

uint64_t sub_221B102B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_meta);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_meta) = a1;
}

uint64_t sub_221B10358(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_print);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_print) = a1;
}

uint64_t sub_221B103B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_printOnly);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_printOnly) = a1;
}

id sub_221B103E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_221BCD658();

  return v3;
}

uint64_t sub_221B104B0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_speak);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_speak) = a1;
}

id sub_221B104E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_2219A1D20(0, &qword_27CFBB838, 0x277CCABB0);
  OUTLINED_FUNCTION_284();
  v3 = sub_221BCD658();

  return v3;
}

void sub_221B10574(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_2219A1D20(0, &qword_27CFBB838, 0x277CCABB0);
  v6 = sub_221BCD668();
  v7 = a1;
  a4(v6);
}

uint64_t sub_221B10604(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnly);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnly) = a1;
}

uint64_t sub_221B1065C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnlyDefined);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnlyDefined) = a1;
}

uint64_t sub_221B106CC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId);
  v2 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId + 8);

  return v1;
}

uint64_t sub_221B10788(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId);
  v4 = *(v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_221B108A0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualParameters);
  *(v1 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualParameters) = a1;
}

uint64_t sub_221B10928()
{
  v1 = *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse);
  sub_2219EBFB4(v1, *(v0 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse + 8));
  return v1;
}

uint64_t sub_221B109F0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse);
  v4 = *(v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse);
  v5 = *(v2 + OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_2219EC02C(v4, v5);
}

id sub_221B10A10(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v77 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v5 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - v9;
  v11 = &v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualId];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualParameters;
  *&v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualParameters] = 0;
  v13 = &v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse];
  *&v1[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_visualResponse] = xmmword_221BD8640;
  if (*(a1 + 8) == 1 && *a1)
  {
    v74 = v11;
    v75 = v12;
    v73 = v13;
    v76 = ObjectType;
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = sub_221AE9C28();
    v16 = v15;

    if (v16)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v16)
    {
      v18 = v16;
    }

    v19 = &v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_catId];
    *v19 = v17;
    v19[1] = v18;
    v20 = *(a1 + 16);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionPrint] = *(a1 + 24);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_captionSpeak] = *(a1 + 48);
    v21 = *(a1 + 88);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_dialogId] = *(a1 + 80);
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_meta] = v21;
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_print] = v20;
    v22 = *(a1 + 32);
    v23 = *(v22 + 16);
    if (v23)
    {
      v79 = MEMORY[0x277D84F90];

      sub_221BCDF28();
      v24 = (v22 + 32);
      do
      {
        v25 = *v24++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_221BCDEF8();
        v26 = *(v79 + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v23;
      }

      while (v23);
      v27 = v79;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_printOnly] = v27;
    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_speak] = *(a1 + 40);
    v47 = *(a1 + 56);
    v48 = *(v47 + 16);
    if (v48)
    {
      v79 = MEMORY[0x277D84F90];

      sub_221BCDF28();
      v49 = (v47 + 32);
      do
      {
        v50 = *v49++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_221BCDEF8();
        v51 = *(v79 + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v48;
      }

      while (v48);
      v52 = v79;
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
    }

    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnly] = v52;
    v53 = *(a1 + 64);
    v54 = *(v53 + 16);
    v55 = MEMORY[0x277D84F90];
    if (v54)
    {
      v79 = MEMORY[0x277D84F90];
      sub_221BCDF28();
      v56 = (v53 + 32);
      do
      {
        v57 = *v56++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_221BCDEF8();
        v58 = *(v79 + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
        --v54;
      }

      while (v54);
      v55 = v79;
    }

    *&v2[OBJC_IVAR____TtCV18AppIntentsServices9AnyDialogP33_2751758AFE110A00C5EF3AE4BAE73B7118RemoteDialogResult_spokenOnlyDefined] = v55;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = sub_221AE9C28();
    v61 = v60;

    v62 = v74;
    v63 = v74[1];
    *v74 = v59;
    v62[1] = v61;

    v64 = *&v2[v75];
    *&v2[v75] = *(a1 + 72);

    v65 = v76;
    v66 = a1 + *(v77 + 68);
    v67 = *(v66 + 8);
    if (v67 >> 60 == 15)
    {
      v68 = 0;
      v67 = 0xF000000000000000;
    }

    else
    {
      v68 = *v66;
      sub_2219EBFB4(*v66, *(v66 + 8));
    }

    v69 = v73;
    v70 = *v73;
    v71 = v73[1];
    *v73 = v68;
    v69[1] = v67;
    sub_2219EC02C(v70, v71);
    v78.receiver = v2;
    v78.super_class = v65;
    v46 = objc_msgSendSuper2(&v78, sel_init);
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_Dialog);
  }

  else
  {
    if (qword_27CFB73D0 != -1)
    {
      swift_once();
    }

    v28 = sub_221BCCD88();
    __swift_project_value_buffer(v28, qword_27CFDEEB8);
    sub_221B22BD0(a1, v10, type metadata accessor for AppIntentsProtobuf_Dialog);
    v29 = sub_221BCCD68();
    v30 = sub_221BCDA78();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v75 = v12;
      v32 = v31;
      v33 = swift_slowAlloc();
      v74 = v11;
      v34 = v33;
      v79 = v33;
      *v32 = 136315138;
      sub_221B22BD0(v10, v7, type metadata accessor for AppIntentsProtobuf_Dialog);
      v35 = sub_221BCD3D8();
      v76 = ObjectType;
      v77 = a1;
      v36 = v13;
      v37 = v35;
      v39 = v38;
      sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_Dialog);
      v40 = sub_2219A6360(v37, v39, &v79);

      *(v32 + 4) = v40;
      v13 = v36;
      _os_log_impl(&dword_221989000, v29, v30, "Could not deserialize unknown dialog type: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v41 = v34;
      v11 = v74;
      MEMORY[0x223DA4C00](v41, -1, -1);
      v42 = v32;
      v12 = v75;
      MEMORY[0x223DA4C00](v42, -1, -1);

      v43 = v77;
    }

    else
    {

      sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_Dialog);
      v43 = a1;
    }

    sub_221B22C2C(v43, type metadata accessor for AppIntentsProtobuf_Dialog);
    v44 = v11[1];

    v45 = *&v2[v12];

    sub_2219EC02C(*v13, *(v13 + 1));
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v46;
}

uint64_t sub_221B110E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A703F0();
}

uint64_t sub_221B11120(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70350();
}

unint64_t sub_221B112E4()
{
  result = qword_27CFBB0E0;
  if (!qword_27CFBB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB0E0);
  }

  return result;
}

unint64_t sub_221B1133C()
{
  result = qword_27CFBB0E8;
  if (!qword_27CFBB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB0E8);
  }

  return result;
}

unint64_t sub_221B1144C()
{
  result = qword_27CFBB100;
  if (!qword_27CFBB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB100);
  }

  return result;
}

unint64_t sub_221B114A0()
{
  result = qword_27CFBB108;
  if (!qword_27CFBB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB108);
  }

  return result;
}

unint64_t sub_221B115B8()
{
  result = qword_27CFBB130;
  if (!qword_27CFBB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB130);
  }

  return result;
}

unint64_t sub_221B1160C()
{
  result = qword_27CFBB138;
  if (!qword_27CFBB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB138);
  }

  return result;
}

unint64_t sub_221B11724()
{
  result = qword_27CFBB160;
  if (!qword_27CFBB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB160);
  }

  return result;
}

unint64_t sub_221B11778()
{
  result = qword_27CFBB168;
  if (!qword_27CFBB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB168);
  }

  return result;
}

unint64_t sub_221B11890()
{
  result = qword_27CFBB190;
  if (!qword_27CFBB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB190);
  }

  return result;
}

unint64_t sub_221B118E4()
{
  result = qword_27CFBB198;
  if (!qword_27CFBB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB198);
  }

  return result;
}

uint64_t sub_221B119C8(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB1C0, type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse);
  result = sub_221AE8904(&qword_27CFBB1C8, type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11ADC(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB1E0, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse);
  result = sub_221AE8904(&qword_27CFBB1E8, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11C80(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB210, type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse);
  result = sub_221AE8904(&qword_27CFBB218, type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11E24(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB240, type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse);
  result = sub_221AE8904(&qword_27CFBB248, type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B11FC8(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB270, type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse);
  result = sub_221AE8904(&qword_27CFBB278, type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B120DC(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB2A0, type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse);
  result = sub_221AE8904(&qword_27CFBB2A8, type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B121F0(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB2C0, type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse);
  result = sub_221AE8904(&qword_27CFBB2C8, type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B12394(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB2F0, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
  result = sub_221AE8904(&qword_27CFBB2F8, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B12538(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB320, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
  result = sub_221AE8904(&qword_27CFBB328, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B126DC(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB350, type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest);
  result = sub_221AE8904(&qword_27CFBB358, type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_221B12880(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB380, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
  result = sub_221AE8904(&qword_27CFBB388, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B129C8()
{
  result = qword_27CFBB3B0;
  if (!qword_27CFBB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB3B0);
  }

  return result;
}

unint64_t sub_221B12A1C()
{
  result = qword_27CFBB3B8;
  if (!qword_27CFBB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB3B8);
  }

  return result;
}

uint64_t sub_221B12B90(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB3E0, type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest);
  result = sub_221AE8904(&qword_27CFBB3E8, type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B12CD8()
{
  result = qword_27CFBB410;
  if (!qword_27CFBB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB410);
  }

  return result;
}

unint64_t sub_221B12D2C()
{
  result = qword_27CFBB418;
  if (!qword_27CFBB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB418);
  }

  return result;
}

unint64_t sub_221B12E44()
{
  result = qword_27CFBB440;
  if (!qword_27CFBB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB440);
  }

  return result;
}

unint64_t sub_221B12E98()
{
  result = qword_27CFBB448;
  if (!qword_27CFBB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB448);
  }

  return result;
}

unint64_t sub_221B12FB0()
{
  result = qword_27CFBB470;
  if (!qword_27CFBB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB470);
  }

  return result;
}

unint64_t sub_221B13004()
{
  result = qword_27CFBB478;
  if (!qword_27CFBB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB478);
  }

  return result;
}

unint64_t sub_221B1311C()
{
  result = qword_27CFBB4A0;
  if (!qword_27CFBB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB4A0);
  }

  return result;
}

unint64_t sub_221B13170()
{
  result = qword_27CFBB4A8;
  if (!qword_27CFBB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB4A8);
  }

  return result;
}

uint64_t sub_221B132E4(uint64_t a1)
{
  *(a1 + 8) = sub_221AE8904(&qword_27CFBB4D0, type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request);
  result = sub_221AE8904(&qword_27CFBB4D8, type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B1342C()
{
  result = qword_27CFBB500;
  if (!qword_27CFBB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB500);
  }

  return result;
}

unint64_t sub_221B13480()
{
  result = qword_27CFBB508;
  if (!qword_27CFBB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB508);
  }

  return result;
}

unint64_t sub_221B13598()
{
  result = qword_27CFBB530;
  if (!qword_27CFBB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB530);
  }

  return result;
}

unint64_t sub_221B135EC()
{
  result = qword_27CFBB538;
  if (!qword_27CFBB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB538);
  }

  return result;
}

unint64_t sub_221B13704()
{
  result = qword_27CFBB560;
  if (!qword_27CFBB560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB560);
  }

  return result;
}

unint64_t sub_221B13758()
{
  result = qword_27CFBB568;
  if (!qword_27CFBB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB568);
  }

  return result;
}

unint64_t sub_221B13870()
{
  result = qword_27CFBB590;
  if (!qword_27CFBB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB590);
  }

  return result;
}

unint64_t sub_221B138C4()
{
  result = qword_27CFBB598;
  if (!qword_27CFBB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB598);
  }

  return result;
}

unint64_t sub_221B139DC()
{
  result = qword_27CFBB5C0;
  if (!qword_27CFBB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5C0);
  }

  return result;
}

unint64_t sub_221B13A30()
{
  result = qword_27CFBB5C8;
  if (!qword_27CFBB5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5C8);
  }

  return result;
}

uint64_t sub_221B13B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_221B13B84()
{
  result = qword_27CFBB5F0;
  if (!qword_27CFBB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5F0);
  }

  return result;
}

unint64_t sub_221B13BD8()
{
  result = qword_27CFBB5F8;
  if (!qword_27CFBB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB5F8);
  }

  return result;
}

uint64_t sub_221B13C2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70490();
}

uint64_t sub_221B13C6C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 1;
  *(v12 + 8) = 1;
  v15 = (*(v13 + 24))(v14, v13, v9);
  v17 = v16;
  v109 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v18 = (a1 + v109[19]);
  v19 = v18[1];

  *v18 = v15;
  v18[1] = v17;
  (*(v7 + 16))(v11, a2, a3);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v21 = v107;
  if (!v107)
  {
  }

  v104[0] = v108;
  v104[1] = v3;
  v22 = [swift_unknownObjectRetain() catId];
  v23 = sub_221BCD388();
  v25 = v24;

  v26 = (a1 + v109[18]);
  v27 = v26[1];

  *v26 = v23;
  v26[1] = v25;
  v28 = [v21 captionPrint];
  v29 = sub_221BCD668();

  v30 = a1[3];

  a1[3] = v29;
  v31 = [v21 captionSpeak];
  v32 = sub_221BCD668();

  v33 = a1[6];

  a1[6] = v32;
  v34 = [v21 dialogId];
  v35 = sub_221BCD668();

  v36 = a1[10];

  a1[10] = v35;
  v37 = [v21 meta];
  v38 = sub_221BCD298();

  v39 = a1[11];

  a1[11] = v38;
  v40 = [v21 print];
  v41 = sub_221BCD668();

  v42 = a1[2];

  v106 = a1;
  a1[2] = v41;
  v43 = [v21 printOnly];
  v104[2] = sub_2219A1D20(0, &qword_27CFBB838, 0x277CCABB0);
  v44 = sub_221BCD668();

  v45 = sub_2219A69A0(v44);
  v46 = MEMORY[0x277D84F90];
  v105 = v21;
  if (v45)
  {
    v47 = v45;
    v107 = MEMORY[0x277D84F90];
    result = sub_2219A3574(0, v45 & ~(v45 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    v48 = 0;
    v49 = v107;
    do
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x223DA3BF0](v48, v44);
      }

      else
      {
        v50 = *(v44 + 8 * v48 + 32);
      }

      v51 = v50;
      v52 = [v50 intValue];

      v107 = v49;
      v54 = v49[2];
      v53 = v49[3];
      if (v54 >= v53 >> 1)
      {
        sub_2219A3574((v53 > 1), v54 + 1, 1);
        v49 = v107;
      }

      ++v48;
      v49[2] = v54 + 1;
      *(v49 + v54 + 8) = v52;
    }

    while (v47 != v48);

    v46 = MEMORY[0x277D84F90];
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v55 = v106;
  v56 = v106[4];

  v55[4] = v49;
  v57 = v105;
  v58 = [v105 speak];
  v59 = sub_221BCD668();

  v60 = v55[5];

  v55[5] = v59;
  v61 = [v57 spokenOnly];
  v62 = sub_221BCD668();

  v63 = sub_2219A69A0(v62);
  if (!v63)
  {

    v66 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v64 = v63;
  v107 = v46;
  result = sub_2219A3574(0, v63 & ~(v63 >> 63), 0);
  if (v64 < 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v65 = 0;
  v66 = v107;
  do
  {
    if ((v62 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x223DA3BF0](v65, v62);
    }

    else
    {
      v67 = *(v62 + 8 * v65 + 32);
    }

    v68 = v67;
    v69 = [v67 intValue];

    v107 = v66;
    v71 = v66[2];
    v70 = v66[3];
    if (v71 >= v70 >> 1)
    {
      sub_2219A3574((v70 > 1), v71 + 1, 1);
      v66 = v107;
    }

    ++v65;
    v66[2] = v71 + 1;
    *(v66 + v71 + 8) = v69;
  }

  while (v64 != v65);

  v46 = MEMORY[0x277D84F90];
LABEL_26:
  v72 = v106;
  v73 = v106[7];

  v72[7] = v66;
  v74 = [v105 spokenOnlyDefined];
  v75 = sub_221BCD668();

  v76 = sub_2219A69A0(v75);
  if (v76)
  {
    v77 = v76;
    v107 = v46;
    result = sub_2219A3574(0, v76 & ~(v76 >> 63), 0);
    if ((v77 & 0x8000000000000000) == 0)
    {
      v78 = 0;
      v79 = v107;
      do
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v80 = MEMORY[0x223DA3BF0](v78, v75);
        }

        else
        {
          v80 = *(v75 + 8 * v78 + 32);
        }

        v81 = v80;
        v82 = [v80 intValue];

        v107 = v79;
        v84 = v79[2];
        v83 = v79[3];
        if (v84 >= v83 >> 1)
        {
          sub_2219A3574((v83 > 1), v84 + 1, 1);
          v79 = v107;
        }

        ++v78;
        v79[2] = v84 + 1;
        *(v79 + v84 + 8) = v82;
      }

      while (v77 != v78);

      goto LABEL_37;
    }

LABEL_48:
    __break(1u);
    return result;
  }

  v79 = MEMORY[0x277D84F90];
LABEL_37:
  v85 = v106;
  v86 = v106[8];

  *(v85 + 64) = v79;
  v87 = v105;
  v88 = [v105 visualId];
  if (v88)
  {
    v89 = v88;
    v90 = sub_221BCD388();
    v92 = v91;

    v93 = (v85 + v109[16]);
    v94 = v93[1];

    *v93 = v90;
    v93[1] = v92;
  }

  v95 = [v87 visualParameters];
  if (v95)
  {
    v96 = v95;
    v97 = sub_221BCD298();

    v98 = *(v85 + 72);

    *(v85 + 72) = v97;
  }

  v99 = [v87 visualResponse];
  if (v99)
  {
    v100 = v99;
    v101 = sub_221BCC468();
    v103 = v102;
  }

  else
  {
    v101 = 0;
    v103 = 0xF000000000000000;
  }

  sub_221AE93B0(v101, v103, v85);

  swift_unknownObjectRelease_n();
  return sub_2219EC02C(v101, v103);
}

uint64_t sub_221B1442C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70654();
}

BOOL sub_221B1446C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_221A7066C();
  *a1 = result;
  return result;
}

uint64_t sub_221B144C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_221A707FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_221B144F0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  if (v8)
  {
    v9 = a2[2];
    v10 = (a1 + *(type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0) + 28));
    v11 = v10[1];

    *v10 = v9;
    v10[1] = v8;
  }

  v12 = a2[4];
  v13 = a1[2];

  a1[2] = v12;
  v15 = *a2;
  v14 = a2[1];
  v16 = a1[1];

  *a1 = v15;
  a1[1] = v14;
  sub_2219A02E8((a2 + 5), &v19, &qword_27CFB7B20, &qword_221BD15C0);
  if (!v20)
  {
    return sub_2219A1CC8(&v19, &qword_27CFB7B20, &qword_221BD15C0);
  }

  sub_22198B358(&v19, v21);
  __swift_project_boxed_opaque_existential_0(v21, v21[3]);
  sub_221B0F918();
  v17 = *(type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0) + 32);
  sub_2219A1CC8(a1 + v17, &qword_27CFB85E8, &unk_221BD86E0);
  sub_221B229DC(v7, a1 + v17, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
  __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v4);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}

uint64_t sub_221B146C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a4 + 8))(v16, a3, a4, v9);
  v15 = v16;
  sub_221AE8904(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  sub_221BCCB58();
  sub_221B220F4(v16);
  v12 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0) + 20);
  sub_2219A1CC8(a1 + v12, &qword_27CFB9C78, &qword_221BDB0F8);
  sub_221B229DC(v11, a1 + v12, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
  return __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v7);
}

id sub_221B14858(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_221BCC448();
  v10 = [v8 initWithData:v9 renderingMode:a3 displayStyle:a4];

  sub_2219EC040(a1, a2);
  return v10;
}

id sub_221B148E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_221BCC448();
  v8 = [v6 initWithData:v7 renderingMode:a3];

  sub_2219EC040(a1, a2);
  return v8;
}

void sub_221B14970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *(a4 + 8);
  v7 = v19(a3, a4);
  v8 = [v7 _imageData];

  if (v8)
  {
    v9 = sub_221BCC468();
    v11 = v10;

    v12 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
    v13 = a1 + v12[5];
    sub_2219EC02C(*v13, *(v13 + 8));
    *v13 = v9;
    *(v13 + 8) = v11;
    v14 = (*(a4 + 16))(a3, a4);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = a1 + v12[7];
      *v15 = v14;
      *(v15 + 8) = 0;
      v16 = v19(a3, a4);
      v17 = [v16 _renderingMode];

      v18 = a1 + v12[6];
      *v18 = v17;
      *(v18 + 8) = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_221B14AB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 16))(a3, a4);
  v9 = v8;
  v10 = a1[1];

  *a1 = v7;
  a1[1] = v9;
  v11 = (*(a4 + 24))(a3, a4);
  v13 = v12;
  v14 = a1[3];

  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_221B14B60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(a3, a4);
  v7 = v6;
  v8 = a1[1];

  *a1 = v5;
  a1[1] = v7;
  return result;
}

void sub_221B14BC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = sub_2219A1D20(0, a3, a4);
  sub_2219A1D20(0, &qword_27CFBB628, 0x277CCAAC8);
  v6 = sub_221BCDAD8();
  if (v4)
  {
    v7 = v4;
LABEL_3:
    v8 = sub_221BCC448();
    v9 = [v8 description];

    v10 = sub_221BCD388();
    v12 = v11;

    sub_221BCDE68();

    OUTLINED_FUNCTION_226_2();
    v28 = v14;
    v30 = v13;
    v15 = OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    v17 = sub_221BCD3D8();
    MEMORY[0x223DA31F0](v17);

    MEMORY[0x223DA31F0](0x206D6F726620, 0xE600000000000000);
    MEMORY[0x223DA31F0](v10, v12);

    MEMORY[0x223DA31F0](2108704, 0xE300000000000000);
    swift_getErrorValue();
    v18 = sub_221BCE288();
    MEMORY[0x223DA31F0](v18);

    MEMORY[0x223DA31F0](34, 0xE100000000000000);
    v19 = sub_221BCC328();
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    v20 = swift_allocError();
    *v21 = v5;
    v21[1] = v28;
    v21[2] = v30;
    v21[3] = v19;
    OUTLINED_FUNCTION_193_3(v20, v21);

    return;
  }

  if (!v6)
  {
    sub_221BCDE68();

    OUTLINED_FUNCTION_226_2();
    v29 = v23 | 4;
    v31 = v22;
    v24 = OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v26 = sub_221BCD3D8();
    MEMORY[0x223DA31F0](v26);

    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    v7 = swift_allocError();
    *v27 = v5;
    v27[1] = v29;
    v27[2] = v31;
    v27[3] = 0;
    OUTLINED_FUNCTION_193_3(v7, v27);
    goto LABEL_3;
  }
}

uint64_t sub_221B14E5C(void *a1, unint64_t *a2, uint64_t *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v45 = 0;
  v6 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v45];
  v7 = v45;
  v8 = off_278482000;
  if (!v6)
  {
    v27 = v7;
    v23 = sub_221BCC338();

    swift_willThrow();
LABEL_9:
    v28 = sub_2219A1D20(0, a2, a3);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_221BCDE68();

    v45 = 0xD00000000000001ALL;
    v46 = 0x8000000221BF0600;
    v29 = a1;
    v30 = [v29 v8[467]];
    v31 = sub_221BCD388();
    v33 = v32;

    MEMORY[0x223DA31F0](v31, v33);

    MEMORY[0x223DA31F0](2108704, 0xE300000000000000);
    swift_getErrorValue();
    v34 = sub_221BCE288();
    MEMORY[0x223DA31F0](v34);

    v35 = v45;
    v36 = v46;
    v37 = sub_221BCC328();
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v38 = v28;
    *(v38 + 8) = v35;
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    *(v38 + 32) = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  sub_221BCC468();

  v9 = OUTLINED_FUNCTION_69_0();
  if (sub_221AE9494(v9, v10))
  {
    if (qword_27CFB73D0 != -1)
    {
      OUTLINED_FUNCTION_22_11();
      swift_once();
    }

    v11 = sub_221BCCD88();
    __swift_project_value_buffer(v11, qword_27CFDEEB8);
    v12 = a1;
    v13 = sub_221BCCD68();
    v14 = sub_221BCDA78();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_288();
      v44 = a3;
      buf = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *buf = 136315138;
      v15 = v12;
      v16 = [v15 description];
      v17 = a2;
      v18 = sub_221BCD388();
      v41 = v14;
      v20 = v19;

      v21 = v18;
      a2 = v17;
      v22 = sub_2219A6360(v21, v20, &v45);

      *(buf + 4) = v22;
      _os_log_impl(&dword_221989000, v13, v41, "Archiving %s returned 0 bytes", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      a3 = v44;
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    OUTLINED_FUNCTION_153_3();
    sub_2219ACB94();
    OUTLINED_FUNCTION_15_0();
    v23 = swift_allocError();
    *v24 = 0xD000000000000020;
    *(v24 + 8) = v13;
    *(v24 + 16) = 3;
    swift_willThrow();
    v25 = OUTLINED_FUNCTION_69_0();
    sub_2219EC040(v25, v26);
    v8 = off_278482000;
    goto LABEL_9;
  }

LABEL_10:
  v39 = *MEMORY[0x277D85DE8];
  return OUTLINED_FUNCTION_69_0();
}

uint64_t sub_221B15230(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = a4[1](a3, a4);
  v9 = v8;
  v10 = a1[1];

  *a1 = v7;
  a1[1] = v9;
  v11 = a4[3](a3, a4);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = (a1 + *(type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0) + 28));
    v16 = v15[1];

    *v15 = v13;
    v15[1] = v14;
  }

  result = a4[2](a3, a4);
  if (v18)
  {
    v19 = result;
    v20 = v18;
    v21 = (a1 + *(type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0) + 24));
    v22 = v21[1];

    *v21 = v19;
    v21[1] = v20;
  }

  return result;
}

uint64_t sub_221B15334@<X0>(void *a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_221AE9C84(KeyPath, v13, type metadata accessor for AppIntentsProtobuf_Value);

  sub_2219A02E8(v11, v8, &unk_27CFBB660, &qword_221BE4610);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    result = sub_2219A1CC8(v11, &unk_27CFBB660, &qword_221BE4610);
    v15 = 0;
  }

  else
  {
    sub_221B229DC(v8, v4, type metadata accessor for AppIntentsProtobuf_Value);
    v16 = v22;
    sub_221B14BC4(*v4, v4[1], &qword_27CFBB680, 0x277D23958);
    if (v16)
    {
      sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_Value);
      return sub_2219A1CC8(v11, &unk_27CFBB660, &qword_221BE4610);
    }

    v18 = v17;
    v19 = objc_allocWithZone(type metadata accessor for RemoteLNValue());
    v15 = sub_221B8267C(v18);
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_Value);
    result = sub_2219A1CC8(v11, &unk_27CFBB660, &qword_221BE4610);
  }

  *v21 = v15;
  return result;
}

void sub_221B155DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_221AE89FC(a2);
  sub_221AE8EE8(a2 + 40);
  sub_221AE8FE4();
  if (!v2)
  {
    v7 = *(a2 + 120);
    v8 = *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20);
    v9 = *(a1 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      sub_221A72A60();
      v11 = v15;
      *(a1 + v8) = v15;
    }

    v16 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
    swift_beginAccess();
    *(v11 + v16) = v7;
    sub_221AE8FE4();
    v17 = *(a2 + 168);
    v18 = *(a1 + v8);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a1 + v8);
    if ((v19 & 1) == 0)
    {
      v21 = type metadata accessor for AppIntentsProtobuf_ActionOutput._StorageClass(0);
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_221A72A60();
      v20 = v24;
      *(a1 + v8) = v24;
    }

    v25 = v20 + OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__showOutputActionOptions;
    v26 = swift_beginAccess();
    *v25 = v17;
    *(v25 + 8) = 0;
    if (*(a2 + 216))
    {
      MEMORY[0x28223BE20](v26);
      *(&v28 - 2) = v27;
      sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
      sub_221BCCB58();
      sub_221A6FB40();
    }

    sub_221AE9148(a2 + 176);
  }
}

uint64_t sub_221B158A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  if (a5)
  {
    v12 = (a1 + *(type metadata accessor for AppIntentsProtobuf_NotificationTopic(0) + 24));
    v13 = v12[1];

    *v12 = a4;
    v12[1] = a5;
  }

  return result;
}

uint64_t sub_221B15934(void *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = a2[1];
  v12 = a1[1];

  *a1 = v11;
  a1[1] = v10;
  if (a2[2])
  {
    MEMORY[0x28223BE20](result);
    v16[-2] = v14;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
    result = sub_221BCCB58();
    if (!v3)
    {
      v15 = *(type metadata accessor for AppIntentsProtobuf_Property(0) + 24);
      sub_2219A1CC8(a1 + v15, &unk_27CFBB660, &qword_221BE4610);
      sub_221B229DC(v9, a1 + v15, type metadata accessor for AppIntentsProtobuf_Value);
      return __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v6);
    }
  }

  return result;
}

uint64_t sub_221B15AD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = a1[2];
  *a2 = a1[1];
  a2[1] = v15;
  a2[2] = v14;
  v16 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  sub_2219A02E8(a1 + *(v16 + 28), v9, &unk_27CFBB660, &qword_221BE4610);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    *v13 = xmmword_221BD8630;
    v17 = *(v10 + 20);

    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_2219A1CC8(v9, &unk_27CFBB660, &qword_221BE4610);
    }
  }

  else
  {
    sub_221B229DC(v9, v13, type metadata accessor for AppIntentsProtobuf_Value);
  }

  sub_221B14BC4(*v13, v13[1], &qword_27CFBB680, 0x277D23958);
  if (v3)
  {
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_Value);
  }

  else
  {
    v20 = v18;
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_Value);
    v23 = sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v24 = &protocol witness table for LNValue;
    *&v22 = v20;
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    return sub_22198B358(&v22, (a2 + 3));
  }
}

uint64_t sub_221B15D78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  sub_221A20F50(a2, v19);
  if (v20)
  {
    v12 = v19[0];
    v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
    MEMORY[0x28223BE20](v13);
    *&v18[-1] = *(&v12 + 1);
    *(&v18[-1] + 1) = v12;
    sub_221AE8904(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound);
    sub_221BCCB58();

    if (v2)
    {
      return result;
    }

    v15 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
    v16 = v8;
  }

  else
  {
    v18[0] = v19[0];
    v18[1] = v19[1];
    v18[2] = v19[2];
    v18[3] = v19[3];
    sub_221B15FC0();
    result = sub_221A1C798(v18);
    if (v2)
    {
      return result;
    }

    v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
    v16 = v11;
  }

  return sub_221B22A38(v16, a1, &unk_27CFBB8E0, &unk_221BE4FD0);
}

void sub_221B15FC0()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_0(v0 + 3, v1);
  v3 = (*(v2 + 16))(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
    MEMORY[0x28223BE20](v5);
    sub_221AE8904(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
    sub_221BCCB58();
  }

  else
  {
    sub_221A00FEC();
    swift_allocError();
    *v6 = &type metadata for PropertyQuery.Comparison;
    *(v6 + 8) = xmmword_221BE2BA0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 2;
    swift_willThrow();
  }
}

uint64_t sub_221B16130(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v25 = a1;
    v32 = MEMORY[0x277D84F90];
    sub_2219A3594(0, v11, 0);
    v12 = v32;
    v13 = a3 + 32;
    while (1)
    {
      sub_221A1C73C(v13, v28);
      v14 = v30;
      v15 = v31;
      __swift_project_boxed_opaque_existential_0(v29, v30);
      v16 = (*(v15 + 16))(v14, v15);
      if (!v16)
      {
        sub_221A00FEC();
        swift_allocError();
        *v21 = &type metadata for PropertyQuery.Comparison;
        *(v21 + 8) = xmmword_221BE2BA0;
        *(v21 + 24) = 0;
        *(v21 + 32) = 2;
        swift_willThrow();
        goto LABEL_11;
      }

      v17 = v16;
      MEMORY[0x28223BE20](v16);
      *(&v24 - 2) = v28;
      *(&v24 - 1) = v18;
      sub_221AE8904(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      sub_221BCCB58();
      if (v3)
      {
        break;
      }

      sub_221A1C798(v28);
      v32 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2219A3594(v19 > 1, v20 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v20 + 1;
      sub_221B229DC(v10, v12 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison);
      v13 += 64;
      if (!--v11)
      {
        a1 = v25;
        goto LABEL_12;
      }
    }

LABEL_11:
    sub_221A1C798(v28);
  }

  else
  {
LABEL_12:
    v23 = a1[1];

    a1[1] = v12;
  }

  return result;
}

uint64_t sub_221B16424(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a2;
  v12 = a2[1];
  v14 = a1[2];

  a1[1] = v13;
  a1[2] = v12;
  *a1 = a2[2];
  v18 = a3;
  sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
  result = sub_221BCCB58();
  if (!v4)
  {
    v16 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0) + 28);
    sub_2219A1CC8(a1 + v16, &unk_27CFBB660, &qword_221BE4610);
    sub_221B229DC(v11, a1 + v16, type metadata accessor for AppIntentsProtobuf_Value);
    return __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v8);
  }

  return result;
}

uint64_t sub_221B165A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *a1 = v8;
  *(a1 + 8) = 1;
  if (a5)
  {
    v9 = a4;
    sub_2219980F0(a3, a4, 1);
  }

  else
  {
    v9 = 0;
  }

  result = sub_221AE00C4(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  *(a1 + 16) = a3;
  *(a1 + 24) = v9;
  *(a1 + 32) = a5 & 1;
  return result;
}

uint64_t sub_221B16634(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  v11 = a1[3];

  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_221B166AC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = a1(0);
  OUTLINED_FUNCTION_2_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_83_6();
  sub_221B22BD0(v3, v3, a2);
  OUTLINED_FUNCTION_91();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_70();
    sub_221B229DC(v10, v11, v12);
  }

  else
  {
    sub_221B22C2C(v3, a3);
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  OUTLINED_FUNCTION_211_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_221B16794(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  OUTLINED_FUNCTION_2_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_83_6();
  sub_221B22BD0(v2, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    result = *v2;
    v9 = v2[1];
  }

  else
  {
    v10 = OUTLINED_FUNCTION_70();
    sub_221B22C2C(v10, v11);
    return 0;
  }

  return result;
}

uint64_t sub_221B16848(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8B3A4();
}

uint64_t sub_221B16888(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  *(a1 + *(result + 24)) = a2;
  if (a4)
  {
    v9 = (a1 + *(result + 20));
    v10 = v9[1];

    *v9 = a3;
    v9[1] = a4;
  }

  return result;
}

void sub_221B16900(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v5 = OUTLINED_FUNCTION_2_1(v72);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  v10 = OUTLINED_FUNCTION_8_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_51_4();
  v69 = v13;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_8_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_45_9();
  v21 = sub_221BCC418();
  v22 = OUTLINED_FUNCTION_0_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21_10();
  v27 = *a1;
  v28 = a1[1];
  v71 = type metadata accessor for RemoteFileDescriptor(0);
  v29 = *(v71 + 20);
  v73 = a2;
  v30 = (a2 + v29);
  *v30 = v27;
  v30[1] = v28;
  v31 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  v32 = (a1 + v31[6]);
  if (!v32[1])
  {

    goto LABEL_5;
  }

  v33 = *v32;

  sub_221BCC3F8();

  OUTLINED_FUNCTION_98_4();
  if (__swift_getEnumTagSinglePayload(v34, v35, v36) == 1)
  {
    sub_2219A1CC8(v2, &qword_27CFB7DD0, &unk_221BD19F0);
LABEL_5:
    v37 = v31[9];
    OUTLINED_FUNCTION_192_3();
    sub_2219A02E8(v38, v39, v40, &qword_221BE0A90);
    v41 = v72;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v72);
    sub_2219A1CC8(v16, &qword_27CFBBA10, &qword_221BE0A90);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      v58 = swift_allocError();
      *v59 = v71;
      *(v59 + 8) = 0xD000000000000024;
      *(v59 + 16) = v37;
      *(v59 + 24) = 0;
      *(v59 + 32) = 1;
      v60 = sub_221BCC328();
      OUTLINED_FUNCTION_67_5();
      *v73 = v60;
      type metadata accessor for RemoteFileDescriptor.Content(0);
      swift_storeEnumTagMultiPayload();

      return;
    }

    v43 = v69;
    sub_2219A02E8(a1 + v37, v69, &qword_27CFBBA10, &qword_221BE0A90);
    OUTLINED_FUNCTION_98_4();
    if (__swift_getEnumTagSinglePayload(v44, v45, v46) == 1)
    {
      v47 = v70;
      *v70 = xmmword_221BD8630;
      v48 = v47 + *(v41 + 20);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_98_4();
      if (__swift_getEnumTagSinglePayload(v49, v50, v51) != 1)
      {
        sub_2219A1CC8(v43, &qword_27CFBBA10, &qword_221BE0A90);
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
      v47 = v70;
      sub_221B229DC(v43, v70, v57);
    }

    sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
    sub_221AEE828(v47);
    v67 = v66;
    OUTLINED_FUNCTION_2_32();
    sub_221B22C2C(v47, v68);
    OUTLINED_FUNCTION_67_5();
    *v73 = v67;
    type metadata accessor for RemoteFileDescriptor.Content(0);
    goto LABEL_16;
  }

  v52 = *(v24 + 32);
  v53 = OUTLINED_FUNCTION_64_0();
  (v52)(v53);
  v54 = a1 + v31[7];
  v55 = v54[8];
  if (v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = *v54;
    if ((*v54 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return;
    }
  }

  v61 = (a1 + v31[8]);
  v62 = v61[1];
  v72 = *v61;

  OUTLINED_FUNCTION_67_5();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
  v64 = v73 + *(v63 + 48);
  v65 = (v73 + *(v63 + 64));
  OUTLINED_FUNCTION_159_1();
  v52();
  *v64 = v56;
  v64[8] = v55;
  *v65 = v72;
  v65[1] = v62;
  type metadata accessor for RemoteFileDescriptor.Content(0);
LABEL_16:
  swift_storeEnumTagMultiPayload();
}

void sub_221B16DB0()
{
  OUTLINED_FUNCTION_55_4();
  v57 = v0;
  v4 = v3;
  v6 = v5;
  v55 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_2_1(v55);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v53 = v10;
  OUTLINED_FUNCTION_133_3();
  v11 = sub_221BCC418();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_12();
  v17 = type metadata accessor for RemoteFileDescriptor.Content(0);
  v18 = OUTLINED_FUNCTION_2_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21_10();
  v21 = (v4 + *(type metadata accessor for RemoteFileDescriptor(0) + 20));
  v22 = *v21;
  v23 = v21[1];
  v24 = v6[1];

  *v6 = v22;
  v6[1] = v23;
  v25 = OUTLINED_FUNCTION_3_4();
  sub_221B22BD0(v25, v26, v27);
  OUTLINED_FUNCTION_64_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *v2;
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v30, v31);
    sub_221BCCB58();

    if (!v57)
    {
      v32 = *(type metadata accessor for AppIntentsProtobuf_FileDescriptor(0) + 36);
      sub_2219A1CC8(v6 + v32, &qword_27CFBBA10, &qword_221BE0A90);
      OUTLINED_FUNCTION_6_19();
      sub_221B229DC(v53, v6 + v32, v33);
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v55);
    }
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    v38 = v2 + *(v37 + 48);
    v56 = *v38;
    v54 = v38[8];
    v39 = (v2 + *(v37 + 64));
    v40 = v39[1];
    v52 = *v39;
    (*(v14 + 32))(v1, v2, v11);
    v41 = sub_221BCC368();
    v43 = v42;
    v44 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
    v45 = (v6 + *(v44 + 24));
    v46 = v45[1];

    *v45 = v41;
    v45[1] = v43;
    sub_221AE9434(v56, v54, v6);
    if (v40)
    {
      v47 = (v6 + *(v44 + 32));
      v48 = v47[1];

      *v47 = v52;
      v47[1] = v40;
    }

    v49 = *(v14 + 8);
    v50 = OUTLINED_FUNCTION_14();
    v51(v50);
  }

  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

double sub_221B170C0(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_Size(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a2;
  sub_221AE8904(&unk_27CFBB770, type metadata accessor for AppIntentsProtobuf_Size);
  sub_221BCCB58();
  v8 = *(type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0) + 64);
  sub_2219A1CC8(a1 + v8, &qword_27CFB9560, &qword_221BE49F0);
  sub_221B229DC(v7, a1 + v8, type metadata accessor for AppIntentsProtobuf_Size);
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v4);
  v9 = *(a2 + 56);
  *a1 = *(a2 + 40);
  *(a1 + 16) = v9;
  *(a1 + 32) = *(a2 + 9);
  result = *(a2 + 10);
  *(a1 + 40) = result;
  *(a1 + 48) = *(a2 + 11);
  *(a1 + 56) = *(a2 + 24);
  return result;
}

uint64_t sub_221B17240(uint64_t *a1, id a2)
{
  v3 = [a2 identifier];
  v4 = sub_221BCD388();
  v6 = v5;

  v7 = a1[1];

  *a1 = v4;
  a1[1] = v6;
  return result;
}

void sub_221B172B4(uint64_t a1)
{
  if (a1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
    sub_221BCC528();
  }

  else
  {
    sub_221A00FEC();
    swift_allocError();
    *v2 = 0xD000000000000027;
    *(v2 + 8) = 0x8000000221BF0680;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    swift_willThrow();
  }
}

uint64_t sub_221B17368(void *a1)
{
  v2 = sub_221BCC538();
  v3 = sub_221BCC538() & 0xFF00 | (v2 << 16);
  v4 = sub_221BCC538();
  v5 = (v3 << 16) & 0xFFFFFFFFFF000000 | *&v4 & 0xFF0000 | (sub_221BCC538() >> 16);
  v6 = v5 & 0xFFFFFFFFFFFFFF00 | (sub_221BCC538() >> 32);
  v7 = (sub_221BCC538() >> 32) & 0xFF00 | (v6 << 16);
  *(&v9 + 1) = v7 & 0xFFFFFFFFFFFFFF00 | (sub_221BCC538() >> 48);
  *&v9 = sub_221BCC538();
  v8 = v9 >> 56;
  sub_221BCC538();
  LOBYTE(v7) = v10;
  sub_221BCC538();
  v12 = v11 & 0xFF00 | (v7 << 16);
  sub_221BCC538();
  LODWORD(v7) = v13;
  sub_221BCC538();
  v15 = (v12 << 16) & 0xFFFFFFFFFF000000 | v7 & 0xFF0000 | v14;
  sub_221BCC538();
  v17 = v15 & 0xFFFFFFFFFFFFFF00 | v16;
  sub_221BCC538();
  v19 = HIDWORD(v18) & 0xFF00 | (v17 << 16);
  sub_221BCC538();
  v21 = v19 & 0xFFFFFFFFFFFFFF00 | v20;
  result = sub_221BCC538();
  *(&v9 + 1) = v21;
  *&v9 = v23;
  *a1 = v8;
  a1[1] = v9 >> 56;
  return result;
}

uint64_t sub_221B17450(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  result = sub_221B14E5C(a2, a3, a4);
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    result = sub_2219EC040(*a1, *(a1 + 8));
    *a1 = v8;
    *(a1 + 8) = v9;
  }

  return result;
}

uint64_t sub_221B174A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70DA4();
}

uint64_t sub_221B174E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70E18();
}

uint64_t sub_221B17528(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A70E98();
}

uint64_t sub_221B17568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = a4[1](a3, a4);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 24));
    v12 = v11[1];

    *v11 = v9;
    v11[1] = v10;
  }

  v13 = a4[2](a3, a4);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v17 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 32));
    v18 = v17[1];

    *v17 = v15;
    v17[1] = v16;
  }

  v19 = a4[3](a3, a4);
  if (v20 >> 60 != 15)
  {
    v21 = v19;
    v22 = v20;
    v23 = a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 36);
    sub_2219EC02C(*v23, *(v23 + 8));
    *v23 = v21;
    *(v23 + 8) = v22;
  }

  v24 = a4[4](a3, a4);
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = (a1 + *(type metadata accessor for AppIntentsProtobuf_ViewSnippet(0) + 28));
    v29 = v28[1];

    *v28 = v26;
    v28[1] = v27;
  }

  v30 = a4[5](a3, a4);
  v32 = v31;
  result = sub_2219EC040(*a1, *(a1 + 8));
  *a1 = v30;
  *(a1 + 8) = v32;
  return result;
}

uint64_t sub_221B1770C()
{
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  v3 = *(*(AppDescriptionResponse - 8) + 64);
  MEMORY[0x28223BE20](AppDescriptionResponse);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEF8AC();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  }

  return v0;
}

uint64_t sub_221B1781C()
{
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  v3 = *(*(OptionsForActionRequest - 8) + 64);
  MEMORY[0x28223BE20](OptionsForActionRequest);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  v6 = OptionsForActionRequest;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return v6;
}

uint64_t sub_221B17964()
{
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  v3 = *(*(OptionsForActionResponse - 8) + 64);
  MEMORY[0x28223BE20](OptionsForActionResponse);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF5110();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  }

  return v0;
}

uint64_t sub_221B17A74()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return v6;
}

uint64_t sub_221B17BBC()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v6;
}

uint64_t sub_221B17D04()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v6;
}

uint64_t sub_221B17E4C()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return v6;
}

uint64_t sub_221B17F94()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return v6;
}

uint64_t sub_221B180DC()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return v6;
}

uint64_t sub_221B18224()
{
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return v6;
}

uint64_t sub_221B1836C()
{
  v2 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  v6 = v2;
  sub_221BCCB58();
  if (!v1)
  {
    v6 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_Action);
  }

  return v6;
}

uint64_t sub_221B184B4()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v7 = *(*(AsyncIteratorRequest - 8) + 64);
  MEMORY[0x28223BE20](AsyncIteratorRequest);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  return v10;
}

uint64_t sub_221B18694()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
  v7 = *(*(AsyncIteratorResponse - 8) + 64);
  MEMORY[0x28223BE20](AsyncIteratorResponse);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEEA04();
  if (!v0)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
    AsyncIteratorResponse = sub_221BCCAE8();
    (*(v2 + 8))(v5, v1);
    sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  }

  return AsyncIteratorResponse;
}

uint64_t sub_221B18890()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  v7 = *(*(AppDescriptionRequest - 8) + 64);
  MEMORY[0x28223BE20](AppDescriptionRequest);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  return v10;
}

uint64_t sub_221B18A8C()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  v8 = *(*(AppDescriptionResponse - 8) + 64);
  MEMORY[0x28223BE20](AppDescriptionResponse);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AEF8AC();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  }

  return v0;
}

uint64_t sub_221B18C7C()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v7 = *(*(DeferredPropertyValueRequest - 8) + 64);
  MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  return v10;
}

uint64_t sub_221B18E5C()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  v7 = *(*(DeferredPropertyValueResponse - 8) + 64);
  MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF0948();
  if (!v0)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
    DeferredPropertyValueResponse = sub_221BCCAE8();
    (*(v2 + 8))(v5, v1);
    sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  return DeferredPropertyValueResponse;
}

uint64_t sub_221B19058()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  v7 = *(*(FileChunkRequest - 8) + 64);
  MEMORY[0x28223BE20](FileChunkRequest);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  return v10;
}

uint64_t sub_221B19238(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v23 = sub_221BCC928();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  v13 = *(*(NextAsyncIteratorResultsRequest - 8) + 64);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4 & 0x1FF;
  sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v16 = sub_221BCCAE8();
  (*(v8 + 8))(v11, v23);
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  return v16;
}

uint64_t sub_221B1943C()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
  v7 = *(*(NextAsyncIteratorResultsResponse - 8) + 64);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsResponse);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF1F04();
  if (!v0)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
    NextAsyncIteratorResultsResponse = sub_221BCCAE8();
    (*(v2 + 8))(v5, v1);
    sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  }

  return NextAsyncIteratorResultsResponse;
}

uint64_t sub_221B19638()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  v8 = *(*(OptionsForActionRequest - 8) + 64);
  MEMORY[0x28223BE20](OptionsForActionRequest);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  v11 = OptionsForActionRequest;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return v11;
}

uint64_t sub_221B19858()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  v8 = *(*(OptionsForActionResponse - 8) + 64);
  MEMORY[0x28223BE20](OptionsForActionResponse);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF5110();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  }

  return v0;
}

uint64_t sub_221B19A48()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v7 = *(*(restarted - 8) + 64);
  MEMORY[0x28223BE20](restarted);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  return v10;
}

uint64_t sub_221B19C28()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  v7 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  return v10;
}

uint64_t sub_221B19E08()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  v7 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  return v10;
}

uint64_t sub_221B19FE8()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  return v10;
}

uint64_t sub_221B1A1C8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return v11;
}

uint64_t sub_221B1A3E8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AFE910();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return v0;
}

uint64_t sub_221B1A5D8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v11;
}

uint64_t sub_221B1A7F8()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
  }

  return v11;
}

uint64_t sub_221B1AA18()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return v11;
}

uint64_t sub_221B1AC38()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return v11;
}

uint64_t sub_221B1AE58()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return v11;
}

uint64_t sub_221B1B078()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return v11;
}

uint64_t sub_221B1B298()
{
  v1 = sub_221BCC928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  sub_221BCCB58();
  sub_221BCC918();
  v10 = sub_221BCCAE8();
  (*(v2 + 8))(v5, v1);
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  return v10;
}

uint64_t sub_221B1B478()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v8 = *(*(Request - 8) + 64);
  MEMORY[0x28223BE20](Request);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B06D58();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return v0;
}

uint64_t sub_221B1B668()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  v8 = *(*(Response - 8) + 64);
  MEMORY[0x28223BE20](Response);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B0996C();
  if (!v1)
  {
    sub_221BCC918();
    sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
    v0 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  }

  return v0;
}

uint64_t sub_221B1B858(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v23 = sub_221BCC928();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  v21 = a3 & 0x1FF;
  v22 = a4;
  sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  sub_221BCCB58();
  sub_221BCC918();
  v16 = sub_221BCCAE8();
  (*(v8 + 8))(v11, v23);
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  return v16;
}

uint64_t sub_221B1BA5C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = sub_221BCC928();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  v20 = a3 & 0x1FF;
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCB58();
  sub_221BCC918();
  v15 = sub_221BCCAE8();
  (*(v7 + 8))(v10, v6);
  sub_221B22C2C(v14, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return v15;
}

uint64_t sub_221B1BC58()
{
  v2 = sub_221BCC928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0;
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  v11 = v7;
  sub_221BCCB58();
  if (!v1)
  {
    sub_221BCC918();
    v11 = sub_221BCCAE8();
    (*(v3 + 8))(v6, v2);
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_Action);
  }

  return v11;
}

uint64_t sub_221B1BE78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v10 = *(*(AsyncIteratorRequest - 8) + 64);
  v11 = MEMORY[0x28223BE20](AsyncIteratorRequest);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v20 = a1;
  v21 = a2;
  memset(v19, 0, 40);
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  sub_221AE9570();
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
  result = sub_2219EC040(a1, a2);
  v17 = v19[1];
  v18 = BYTE1(v19[1]);
  *a3 = v19[0];
  *(a3 + 16) = v17;
  *(a3 + 17) = v18;
  *(a3 + 24) = *(&v19[1] + 8);
  return result;
}

uint64_t sub_221B1C0A0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCC948();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
  v9 = *(*(AsyncIteratorResponse - 8) + 64);
  v10 = MEMORY[0x28223BE20](AsyncIteratorResponse);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v14, v12, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
    sub_221AEE430();
    v3 = v16;
    sub_221B22C2C(v14, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  }

  sub_2219EC040(a1, a2);
  return v3;
}

uint64_t sub_221B1C2CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  v10 = *(*(AppDescriptionRequest - 8) + 64);
  v11 = MEMORY[0x28223BE20](AppDescriptionRequest);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v33 = a1;
  v34 = a2;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  sub_221AEEF64(v13, v17, v18, v19, v20, v21, v22, v23, v25, v26);
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest);
  result = sub_2219EC040(a1, a2);
  v24 = v27;
  *a3 = v26;
  *(a3 + 16) = v24;
  *(a3 + 32) = v28;
  *(a3 + 48) = v29;
  return result;
}

uint64_t sub_221B1C4F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  AppDescriptionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  v10 = *(*(AppDescriptionResponse - 8) + 64);
  v11 = MEMORY[0x28223BE20](AppDescriptionResponse);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v29 = a1;
  v30 = a2;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v13, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  sub_221AEF428(v13, v17, v18, v19, v20, v21, v22, v23, v26, *(&v26 + 1));
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  result = sub_2219EC040(a1, a2);
  v24 = v28;
  v25 = v27;
  *a3 = v26;
  *(a3 + 16) = v25;
  *(a3 + 32) = v24;
  return result;
}

uint64_t sub_221B1C708(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v8 = *(*(DeferredPropertyValueRequest - 8) + 64);
  v9 = MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
    sub_221AEFBF4();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1C8FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCC948();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  v9 = *(*(DeferredPropertyValueResponse - 8) + 64);
  v10 = MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v14, v12, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
    sub_221AF0564();
    v3 = v16;
    sub_221B22C2C(v14, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  sub_2219EC040(a1, a2);
  return v3;
}

uint64_t sub_221B1CB28(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  v8 = *(*(FileChunkRequest - 8) + 64);
  v9 = MEMORY[0x28223BE20](FileChunkRequest);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
    sub_221AF0E1C();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1CD1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  v10 = *(*(NextAsyncIteratorResultsRequest - 8) + 64);
  v11 = MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  sub_221AF12B0();
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  result = sub_2219EC040(a1, a2);
  v17 = BYTE8(v19[1]);
  v18 = BYTE9(v19[1]);
  *a3 = *&v19[0];
  *(a3 + 8) = *(v19 + 8);
  *(a3 + 24) = v17;
  *(a3 + 25) = v18;
  return result;
}

uint64_t sub_221B1CF44(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCC948();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
  v9 = *(*(NextAsyncIteratorResultsResponse - 8) + 64);
  v10 = MEMORY[0x28223BE20](NextAsyncIteratorResultsResponse);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v14, v12, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
    sub_221AF1B28();
    v3 = v16;
    sub_221B22C2C(v14, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  }

  sub_2219EC040(a1, a2);
  return v3;
}

uint64_t sub_221B1D170(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  v8 = *(*(OptionsForActionRequest - 8) + 64);
  v9 = MEMORY[0x28223BE20](OptionsForActionRequest);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
    sub_221AF250C();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1D364@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OptionsForActionResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
  v10 = *(*(OptionsForActionResponse - 8) + 64);
  v11 = MEMORY[0x28223BE20](OptionsForActionResponse);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v22 = a1;
  v23 = a2;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v13, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  sub_221AF40A4();
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
  result = sub_2219EC040(a1, a2);
  v17 = v21;
  v18 = v20;
  *a3 = v19;
  *(a3 + 16) = v18;
  *(a3 + 32) = v17;
  return result;
}

uint64_t sub_221B1D57C(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v8 = *(*(restarted - 8) + 64);
  MEMORY[0x28223BE20](restarted);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
    sub_221AF55AC();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1D770@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  v10 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v18[-v14];
  v25 = a1;
  v26 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  sub_221AF5FDC();
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  result = sub_2219EC040(a1, a2);
  v17 = v19;
  *a3 = *&v18[8];
  *(a3 + 16) = v17;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  return result;
}

uint64_t sub_221B1D994(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  v8 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
    sub_221AF66A0();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1DB88(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
    sub_221AF6A68();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1DD7C(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
    sub_221AF7CB8();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1DF70(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
    sub_221AF9560();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return sub_2219EC040(a1, a2);
}

void sub_221B1E164()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v4 = v3;
  v5 = sub_221BCC948();
  v6 = OUTLINED_FUNCTION_8_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = OUTLINED_FUNCTION_85_3();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v9);
  v11 = OUTLINED_FUNCTION_2_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v14);
  v16 = &v27[-v15];
  v29 = v4;
  v30 = v2;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v17 = OUTLINED_FUNCTION_55_3();
  sub_2219EBFC8(v17, v18);
  sub_221BCC938();
  OUTLINED_FUNCTION_29_9();
  sub_221AE8904(v19, v20);
  sub_221BCCB28();
  if (!v0)
  {
    v21 = OUTLINED_FUNCTION_3_4();
    sub_221B22BD0(v21, v22, v23);
    sub_221AFF7DC();
    OUTLINED_FUNCTION_32_9();
    sub_221B22C2C(v16, v24);
  }

  v25 = OUTLINED_FUNCTION_55_3();
  sub_2219EC040(v25, v26);
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B1E300(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
    sub_221AFFF9C();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1E4F4(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
    sub_221B0071C();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1E6E8(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
    sub_221B010E4();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1E8DC(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B01874();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1EAD0(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B02198();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1ECC4(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v8 = *(*(Request - 8) + 64);
  MEMORY[0x28223BE20](Request);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
    sub_221B02554();
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1EEB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  v10 = *(*(Response - 8) + 64);
  MEMORY[0x28223BE20](Response);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  v20 = a1;
  v21 = a2;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v12, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  sub_221B08E78();
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  result = sub_2219EC040(a1, a2);
  v17 = v23;
  *a3 = v22;
  *(a3 + 16) = v17;
  *(a3 + 32) = v24;
  return result;
}

uint64_t sub_221B1F0D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v23 = a1;
  v24 = a2;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  sub_221B0A020();
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  result = sub_2219EC040(a1, a2);
  v17 = v21;
  v18 = BYTE1(v21);
  v19 = *(&v21 + 1);
  *a3 = v20;
  *(a3 + 16) = v17;
  *(a3 + 17) = v18;
  *(a3 + 24) = v19;
  return result;
}

uint64_t sub_221B1F2FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_221BCC948();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v22 = a1;
  v23 = a2;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCB28();
  if (v3)
  {
    return sub_2219EC040(a1, a2);
  }

  sub_221B22BD0(v15, v12, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221AE9D08();
  sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  result = sub_2219EC040(a1, a2);
  v17 = v20;
  v18 = BYTE1(v20);
  *a3 = v19;
  *(a3 + 16) = v17;
  *(a3 + 17) = v18;
  return result;
}

uint64_t sub_221B1F518(uint64_t a1, unint64_t a2)
{
  v5 = sub_221BCC948();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v26 = a1;
  v27 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_2219EBFC8(a1, a2);
  sub_221BCC938();
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  sub_221BCCB28();
  if (!v2)
  {
    sub_221B22BD0(v13, v10, type metadata accessor for AppIntentsProtobuf_Action);
    sub_221AF2910(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_221B22C2C(v13, type metadata accessor for AppIntentsProtobuf_Action);
  }

  return sub_2219EC040(a1, a2);
}

uint64_t sub_221B1F70C()
{
  v1 = v0;
  v2 = sub_221BCC908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  AsyncIteratorResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
  v5 = *(*(AsyncIteratorResponse - 8) + 64);
  v6 = MEMORY[0x28223BE20](AsyncIteratorResponse);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v10, v8, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
    sub_221AEE430();
    v1 = v12;
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
  }

  return v1;
}

uint64_t sub_221B1F8F4()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v4 = *(*(DeferredPropertyValueRequest - 8) + 64);
  v5 = MEMORY[0x28223BE20](DeferredPropertyValueRequest);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
    sub_221AEFBF4();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest);
  }

  return result;
}

uint64_t sub_221B1FAB0()
{
  v1 = v0;
  v2 = sub_221BCC908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  DeferredPropertyValueResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
  v5 = *(*(DeferredPropertyValueResponse - 8) + 64);
  v6 = MEMORY[0x28223BE20](DeferredPropertyValueResponse);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v10, v8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
    sub_221AF0564();
    v1 = v12;
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
  }

  return v1;
}

uint64_t sub_221B1FC98()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  v4 = *(*(FileChunkRequest - 8) + 64);
  v5 = MEMORY[0x28223BE20](FileChunkRequest);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
    sub_221AF0E1C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
  }

  return result;
}

uint64_t sub_221B1FE54()
{
  v1 = v0;
  v2 = sub_221BCC908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
  v5 = *(*(NextAsyncIteratorResultsResponse - 8) + 64);
  v6 = MEMORY[0x28223BE20](NextAsyncIteratorResultsResponse);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v10, v8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
    sub_221AF1B28();
    v1 = v12;
    sub_221B22C2C(v10, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  }

  return v1;
}

uint64_t sub_221B2003C()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  v4 = *(*(OptionsForActionRequest - 8) + 64);
  v5 = MEMORY[0x28223BE20](OptionsForActionRequest);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
    sub_221AF250C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest);
  }

  return result;
}

uint64_t sub_221B201F8()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v4 = *(*(restarted - 8) + 64);
  v5 = MEMORY[0x28223BE20](restarted);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v7, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
    sub_221AF55AC();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  }

  return result;
}

uint64_t sub_221B203B4()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  v4 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
    sub_221AF66A0();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  }

  return result;
}

uint64_t sub_221B20570()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
    sub_221AF6A68();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  }

  return result;
}

uint64_t sub_221B2072C()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
    sub_221AF7CB8();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
  }

  return result;
}

uint64_t sub_221B208E8()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
    sub_221AF9560();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return result;
}

void sub_221B20AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v23 = sub_221BCC908();
  v24 = OUTLINED_FUNCTION_8_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  v27 = OUTLINED_FUNCTION_85_3();
  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v27);
  v29 = OUTLINED_FUNCTION_2_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  sub_221BCC8F8();
  sub_221BCC8E8();
  OUTLINED_FUNCTION_29_9();
  sub_221AE8904(v35, v36);
  OUTLINED_FUNCTION_14();
  sub_221BCCAF8();
  if (!v20)
  {
    v37 = OUTLINED_FUNCTION_3_4();
    sub_221B22BD0(v37, v38, v39);
    sub_221AFF7DC();
    OUTLINED_FUNCTION_32_9();
    sub_221B22C2C(v34, v40);
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B20C0C()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
    sub_221AFFF9C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse);
  }

  return result;
}

uint64_t sub_221B20DC8()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
    sub_221B0071C();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse);
  }

  return result;
}

uint64_t sub_221B20F84()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
    sub_221B010E4();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse);
  }

  return result;
}

uint64_t sub_221B21140()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B01874();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return result;
}

uint64_t sub_221B212FC()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
    sub_221B02198();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  }

  return result;
}

uint64_t sub_221B214B8()
{
  v1 = sub_221BCC908();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v4 = *(*(Request - 8) + 64);
  MEMORY[0x28223BE20](Request);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  result = sub_221BCCAF8();
  if (!v0)
  {
    sub_221B22BD0(v9, v6, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
    sub_221B02554();
    return sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return result;
}

uint64_t sub_221B21674@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_221BCC908();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  v6 = *(*(Response - 8) + 64);
  MEMORY[0x28223BE20](Response);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  sub_221BCC8F8();
  sub_221BCC8E8();
  sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  result = sub_221BCCAF8();
  if (!v1)
  {
    sub_221B22BD0(v11, v8, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
    sub_221B08E78();
    result = sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
    v13 = v15;
    *a1 = *&v14[8];
    *(a1 + 16) = v13;
    *(a1 + 32) = v16;
  }

  return result;
}

id sub_221B21A08(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_221BCC508();
  v7 = [v3 initWithSequenceIdentifier:v6 iteratorIdentifier:a2];

  v8 = sub_221BCC558();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_221B21AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a2)
  {
    v14 = sub_221BCD358();

    if (a4)
    {
LABEL_3:
      v15 = sub_221BCD358();

      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = sub_221BCC448();
  if (a8)
  {
    v17 = sub_221BCD358();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 initWithContainerBundleIdentifier:v14 targetBundleIdentifier:v15 snippetModelData:v16 snippetModelBundleIdentifier:v17];

  sub_2219EC040(a5, a6);
  return v18;
}

id sub_221B21BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (!a2)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_221BCD358();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_221BCD358();

LABEL_6:
  v13 = sub_221BCC448();
  v14 = [v7 initWithContainerBundleIdentifier:v11 targetBundleIdentifier:v12 viewData:v13];

  sub_2219EC040(a5, a6);
  return v14;
}

_BYTE *sub_221B21D0C(_BYTE *result)
{
  v2 = *(v1 + 17);
  *result = *(v1 + 16);
  result[1] = v2;
  return result;
}

void sub_221B21F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_221BCC278();
  if (v4)
  {
    v5 = sub_221BCC2A8();
    if (__OFSUB__(a1, v5))
    {
      goto LABEL_7;
    }

    v4 += a1 - v5;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_221BCC298();
    sub_221B172B4(v4);
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

__n128 sub_221B220CC(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x223DA4C00);
  }

  return result;
}

uint64_t sub_221B229DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_0_0();
  v8(v7);
  return a2;
}

uint64_t sub_221B22A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return v4;
}

uint64_t sub_221B22AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_29(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return v4;
}

uint64_t sub_221B22B3C()
{
  OUTLINED_FUNCTION_206_2();
  v1 = *(v0 + 40);
  v2 = *(v0 + 41);
  OUTLINED_FUNCTION_248_1();
  if (v9)
  {
    v8 = 0;
  }

  return sub_221AF1608(v3, v4, v5, v6, v8 | v7);
}

uint64_t sub_221B22B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_248_1();
  if (v12)
  {
    v11 = 0;
  }

  return sub_221B0A37C(v6, v7, v8, v11 | v10, v9);
}

uint64_t sub_221B22BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  OUTLINED_FUNCTION_248_1();
  if (v10)
  {
    v9 = 0;
  }

  return sub_221B0D76C(v5, v6, v7, v9 | v8);
}

uint64_t sub_221B22BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_0_0();
  v8(v7);
  return a2;
}

uint64_t sub_221B22C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
}

void OUTLINED_FUNCTION_37_5()
{
  v2 = (v0 + *(v1 + 20));
  *v2 = 0;
  v2[1] = 0;
  *(v0 + *(v1 + 24)) = 0;
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest);
}

uint64_t OUTLINED_FUNCTION_39_9()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success);
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
}

uint64_t OUTLINED_FUNCTION_65_6()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest);
}

uint64_t OUTLINED_FUNCTION_66_4()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest);
}

uint64_t OUTLINED_FUNCTION_67_5()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_FileDescriptor);
}

uint64_t OUTLINED_FUNCTION_68_4()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_221B22C2C(v0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
}

uint64_t OUTLINED_FUNCTION_71_4()
{

  return sub_221BCE1E8();
}

uint64_t OUTLINED_FUNCTION_76_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_100_4()
{
  v2 = (v1 + *(v0 + 20));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_105_5()
{

  return sub_221B22A38(v2, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_113_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = a13;

  return __swift_mutable_project_boxed_opaque_existential_1(&a10, v14);
}

uint64_t OUTLINED_FUNCTION_116_6()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_118_5()
{
  result = v0;
  v3 = *(v1 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_125_4()
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_126_4()
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_128_3()
{
  v2 = *(v0 - 320);

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_143_3()
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_152_4()
{
  v2 = *(v0 + 432);

  return sub_221B22C2C(v2, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue);
}

uint64_t OUTLINED_FUNCTION_155_1()
{

  return sub_221BCCB58();
}

void OUTLINED_FUNCTION_167_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_183_2()
{

  return sub_221B22C2C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_184_1()
{

  return sub_2219A02E8(v0 + v2, v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_185_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 88) = a1;

  return type metadata accessor for AppIntentsProtobuf_Error(0);
}

uint64_t OUTLINED_FUNCTION_187_2(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_193_3(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_194_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_196_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_203_1()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 497);
  v3 = *(v0 + 440);
}

void OUTLINED_FUNCTION_206_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_208_2()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_209_1()
{
  result = v1 + v0;
  v4 = *(v2 - 72);
  return result;
}

void OUTLINED_FUNCTION_219_3()
{
  *(v1 + 209) = v0;
  *v1 = *(v3 - 72);
  *(v1 + 8) = *(v2 + 416);
}

uint64_t OUTLINED_FUNCTION_220_3()
{

  return sub_221BCCB58();
}

uint64_t OUTLINED_FUNCTION_221_3()
{

  return sub_2219A1CC8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_222_3()
{

  return sub_2219A1CC8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_223_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 96);

  return sub_2219A02E8(v4, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_224_1()
{
  v3 = *(v1 + *(v0 + 20) + 8);
}

uint64_t OUTLINED_FUNCTION_225_1()
{

  return sub_2219982C4(0, 2);
}

void OUTLINED_FUNCTION_228_2()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void OUTLINED_FUNCTION_229_1(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_233_1(uint64_t result)
{
  v4 = v3 + *(result + 20);
  *v4 = v2;
  *(v4 + 8) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_236_0()
{
  result = v0;
  v3 = *(v1 - 72);
  return result;
}

void OUTLINED_FUNCTION_240_2()
{
  *(v5 - 120) = v3;
  *(v5 - 112) = v4;
  *(v5 - 104) = v0;
  *(v5 - 96) = v2;
  *(v5 - 88) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_249_2@<X0>(uint64_t a1@<X8>)
{
  *v1 = *(a1 - 256);
  v4 = v1 + *(v2 + 20);

  return sub_221BCC8C8();
}

uint64_t OUTLINED_FUNCTION_250_2@<X0>(uint64_t a1@<X8>)
{

  return sub_2219A02E8(v2 + a1, v3, v4, v1);
}

uint64_t OUTLINED_FUNCTION_251_2()
{
}

uint64_t sub_221B23FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2219A30F4(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_221B223B4(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2219A30F4(v5 > 1, v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for AppIntentsProtocol.PerformAction.DisambiguationRequest.ProvidedValue;
      v10 = &off_283518B58;
      *&v8 = swift_allocObject();
      sub_221B223B4(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_2219A1D64(&v8, v2 + 40 * v6 + 32);
      sub_221B2242C(v11);
      v4 += 96;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_221B240E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B24100()
{
  OUTLINED_FUNCTION_8_0();
  v16 = *(v0 + 168);
  v1 = *(v0 + 152);
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18) + 28);
  sub_221B24940(v2, v0 + 16, &qword_27CFB8320, &unk_221BD1D60);
  sub_221B24940(v2 + 40, v0 + 56, &unk_27CFBB7B0, &unk_221BE4C10);
  sub_221B24940(v2 + 80, v0 + 96, &unk_27CFB93B0, &qword_221BD1D70);
  *(v0 + 136) = *(v2 + 120);
  v3 = *(v16 + 32);
  OUTLINED_FUNCTION_8_16();
  v15 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 184) = v7;
  *v7 = v8;
  v7[1] = sub_221B2427C;
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = OUTLINED_FUNCTION_9_17();

  return v13(v12);
}

uint64_t sub_221B2427C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v10 = v9;
  *(v5 + 192) = v0;

  if (v0)
  {
    sub_2219F6CCC(v5 + 16);
    v11 = sub_221B24458;
  }

  else
  {
    *(v5 + 137) = v3 & 1;
    sub_2219F6CCC(v5 + 16);
    v11 = sub_221B243A4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_221B243A4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 137);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_0_0();
  v8(v7);
  v9 = *(v0 + 144);
  LOBYTE(v2) = *(v0 + 192) != 0;
  v10 = v9 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0) + 20);
  *v10 = v1;
  *(v10 + 8) = v2;
  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_221B24458()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_118_0();
  v8(v7);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v9 = v0[18];
  LOBYTE(v3) = v0[24] != 0;
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0);
  OUTLINED_FUNCTION_4_21(v10);
  *(v11 + 8) = v3;
  OUTLINED_FUNCTION_25();

  return v12();
}

uint64_t sub_221B24510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B2452C()
{
  OUTLINED_FUNCTION_8_0();
  v16 = v0[25];
  v1 = v0[23];
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10) + 28);
  sub_221B24940(v2, (v0 + 2), &qword_27CFB8320, &unk_221BD1D60);
  sub_2219A1B08(v2 + 40, (v0 + 7));
  sub_221B24940(v2 + 80, (v0 + 12), &qword_27CFB7F20, &qword_221BD2008);
  sub_221B24940(v2 + 120, (v0 + 17), &unk_27CFB93B0, &qword_221BD1D70);
  v3 = *(v16 + 8);
  OUTLINED_FUNCTION_8_16();
  v15 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[27] = v7;
  *v7 = v8;
  v7[1] = sub_221B246AC;
  v9 = v0[25];
  v10 = v0[26];
  v11 = v0[24];
  v12 = OUTLINED_FUNCTION_9_17();

  return v13(v12);
}

uint64_t sub_221B246AC()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 216);
  v9 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v10 = v9;
  *(v5 + 224) = v0;

  if (v0)
  {
    sub_2219F6DF0(v5 + 16);
    v11 = sub_221B24888;
  }

  else
  {
    *(v5 + 232) = v3 & 1;
    sub_2219F6DF0(v5 + 16);
    v11 = sub_221B247D4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}