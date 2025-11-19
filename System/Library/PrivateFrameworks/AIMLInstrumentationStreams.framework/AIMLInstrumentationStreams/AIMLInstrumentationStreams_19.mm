uint64_t sub_23C74C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F00, &qword_23C8A10A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_23C585C34(v28, &qword_27E203F00, &qword_23C8A10A8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoTypeConversionRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoTypeConversionRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F00, &qword_23C8A10A8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F00, &qword_23C8A10A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F00, &qword_23C8A10A8);
    return sub_23C585C34(v36, &qword_27E203F00, &qword_23C8A10A8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoTypeConversionRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F00, &qword_23C8A10A8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoTypeConversionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F08, &qword_23C8A10B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_23C585C34(v28, &qword_27E203F08, &qword_23C8A10B0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoTypeConversionResult);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoTypeConversionResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F08, &qword_23C8A10B0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F08, &qword_23C8A10B0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F08, &qword_23C8A10B0);
    return sub_23C585C34(v36, &qword_27E203F08, &qword_23C8A10B0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoTypeConversionResult);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F08, &qword_23C8A10B0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoTypeConversionResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v6 = *(DecorationResult - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationResult);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F10, &qword_23C8A10B8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationResult;
  v30 = DecorationResult;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_23C585C34(v28, &qword_27E203F10, &qword_23C8A10B8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationResult);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F10, &qword_23C8A10B8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F10, &qword_23C8A10B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F10, &qword_23C8A10B8);
    return sub_23C585C34(v36, &qword_27E203F10, &qword_23C8A10B8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationResult);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F10, &qword_23C8A10B8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74D9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionStart(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F18, &qword_23C8A10C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203F18, &qword_23C8A10C0);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoSessionStart);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSessionStart);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F18, &qword_23C8A10C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F18, &qword_23C8A10C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F18, &qword_23C8A10C0);
    return sub_23C585C34(v36, &qword_27E203F18, &qword_23C8A10C0);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoSessionStart);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F18, &qword_23C8A10C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSessionStart);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74DF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F20, &qword_23C8A10C8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E203F20, &qword_23C8A10C8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRecoverableError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRecoverableError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F20, &qword_23C8A10C8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F20, &qword_23C8A10C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F20, &qword_23C8A10C8);
    return sub_23C585C34(v36, &qword_27E203F20, &qword_23C8A10C8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRecoverableError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F20, &qword_23C8A10C8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRecoverableError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74E538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F28, &qword_23C8A10D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_23C585C34(v28, &qword_27E203F28, &qword_23C8A10D0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoContinuePlanning);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoContinuePlanning);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F28, &qword_23C8A10D0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F28, &qword_23C8A10D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F28, &qword_23C8A10D0);
    return sub_23C585C34(v36, &qword_27E203F28, &qword_23C8A10D0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoContinuePlanning);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F28, &qword_23C8A10D0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoContinuePlanning);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74EAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v6 = *(DecorationPrePlannerResult - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F30, &qword_23C8A10D8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResult;
  v30 = DecorationPrePlannerResult;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_23C585C34(v28, &qword_27E203F30, &qword_23C8A10D8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F30, &qword_23C8A10D8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F30, &qword_23C8A10D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F30, &qword_23C8A10D8);
    return sub_23C585C34(v36, &qword_27E203F30, &qword_23C8A10D8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F30, &qword_23C8A10D8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C74F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F38, &qword_23C8A10E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1F9958, &qword_23C873E10);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1F9958, &qword_23C873E10);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPayloadEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_23C585C34(v28, &qword_27E203F38, &qword_23C8A10E0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSkipStatement);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSkipStatement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203F38, &qword_23C8A10E0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203F38, &qword_23C8A10E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203F38, &qword_23C8A10E0);
    return sub_23C585C34(v36, &qword_27E203F38, &qword_23C8A10E0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSkipStatement);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203F38, &qword_23C8A10E0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1F9958, &qword_23C873E10);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSkipStatement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1F9958, &qword_23C873E10);
  v12 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C7531A4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_8;
      case 2u:
        sub_23C74FC3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 3u:
        sub_23C74FE74(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 4u:
        sub_23C7500AC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 5u:
        sub_23C7502E4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 6u:
        sub_23C75051C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 7u:
        sub_23C750754(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 8u:
        sub_23C753EF0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 9u:
        sub_23C750E24(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xAu:
        sub_23C75105C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xBu:
        sub_23C751294(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xCu:
        sub_23C7514CC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xDu:
        sub_23C751704(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xEu:
        sub_23C75193C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0xFu:
        sub_23C751B74(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x10u:
        sub_23C751DAC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x11u:
        sub_23C751FE4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x12u:
        sub_23C75221C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x13u:
        sub_23C752454(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x14u:
        sub_23C7533DC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x15u:
        sub_23C75268C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x16u:
        sub_23C7528C4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x17u:
        sub_23C752AFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x18u:
        sub_23C752D34(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x19u:
        sub_23C752F6C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Au:
        sub_23C753614(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Bu:
        sub_23C75384C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        }

        goto LABEL_8;
      case 0x1Cu:
        sub_23C753A84(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Du:
        sub_23C754128(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Eu:
        sub_23C754360(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x1Fu:
        sub_23C754598(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
      case 0x20u:
        result = sub_23C75098C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x21u:
        result = sub_23C750BD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C753CBC(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        }

LABEL_8:
        sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPayloadEnum);
        break;
    }
  }

  v14 = v3 + *(type metadata accessor for TranscriptProtoPayload(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C74FC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlan(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPlan);
    sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPlan);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C74FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoAction);
    sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoAction);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7500AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoClientAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoClientAction);
    sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoClientAction);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7502E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v10 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryStep);
    sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryStep);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoVariableStep(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoVariableStep);
    sub_23C8314AC(&qword_27E202938, type metadata accessor for TranscriptProtoVariableStep);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoVariableStep);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C750754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSessionError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSessionError);
    sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSessionError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1F9958, &qword_23C873E10);
  v14 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1F9958, &qword_23C873E10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 32)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C750BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1F9958, &qword_23C873E10);
  v14 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1F9958, &qword_23C873E10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoPayloadEnum);
    if (EnumCaseMultiPayload == 33)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C750E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v10 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryStepResults);
    sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryStepResults);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75105C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoActionResolverRequest);
    sub_23C8314AC(&qword_27E202840, type metadata accessor for TranscriptProtoActionResolverRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionResolverRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSafetyModeRelease);
    sub_23C8314AC(&qword_27E202890, type metadata accessor for TranscriptProtoSafetyModeRelease);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSafetyModeRelease);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7514CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSafetyModeException);
    sub_23C8314AC(&qword_27E2028A8, type metadata accessor for TranscriptProtoSafetyModeException);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSafetyModeException);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75193C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v10 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoContextRetrieved);
    sub_23C8314AC(&qword_27E202858, type metadata accessor for TranscriptProtoContextRetrieved);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoContextRetrieved);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoActionCancellation);
    sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionCancellation);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C751FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemResponse);
    sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemResponse);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoStatementResult);
    sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementResult);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75268C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7528C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolResolution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoToolResolution);
    sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoToolResolution);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoUndoRedoRequest);
    sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoUndoRedoRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C752F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7531A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequest);
    sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7533DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoExternalAgentRequest);
    sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExternalAgentRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 26)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoTypeConversionRequest);
    sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoTypeConversionRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75384C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 27)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoTypeConversionResult);
    sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoTypeConversionResult);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v10 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 28)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationResult);
    sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationResult);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSessionStart(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSessionStart);
    sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSessionStart);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C753EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRecoverableError);
    sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRecoverableError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C754128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 29)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoContinuePlanning);
    sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoContinuePlanning);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C754360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v10 = *(*(DecorationPrePlannerResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 30)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C754598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1F9958, &qword_23C873E10);
  v13 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1F9958, &qword_23C873E10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 31)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSkipStatement);
    sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSkipStatement);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C75481C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_23C8720F4();
  a1(0);
  sub_23C8314AC(a2, a3);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C754908(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036F0, type metadata accessor for TranscriptProtoPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7549A8()
{
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C754A14()
{
  sub_23C8314AC(&qword_27E201DB0, type metadata accessor for TranscriptProtoPayload);

  return sub_23C871204();
}

uint64_t sub_23C754AB0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200050);
  __swift_project_value_buffer(v0, qword_27E200050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sessionId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientSessionId";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "events";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoTranscript.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for TranscriptProtoEvent(0);
          sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent);
          sub_23C871194();
          break;
        case 2:
          sub_23C871154();
          break;
        case 1:
          sub_23C871164();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoTranscript.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (v0[4])
    {
      v5 = v0[3];
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      if (*(v0[2] + 16))
      {
        type metadata accessor for TranscriptProtoEvent(0);
        sub_23C8314AC(&qword_27E1F98A0, type metadata accessor for TranscriptProtoEvent);
        sub_23C8712F4();
      }

      v6 = v0 + *(type metadata accessor for TranscriptProtoTranscript(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C754FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036E8, type metadata accessor for TranscriptProtoTranscript);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C755074()
{
  sub_23C8314AC(&qword_27E201DC8, type metadata accessor for TranscriptProtoTranscript);

  return sub_23C8711F4();
}

uint64_t sub_23C7550E0()
{
  sub_23C8314AC(&qword_27E201DC8, type metadata accessor for TranscriptProtoTranscript);

  return sub_23C871204();
}

uint64_t sub_23C75517C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200068);
  __swift_project_value_buffer(v0, qword_27E200068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rawDate";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suspendingClockInstantNs";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "continuousClockInstantNs";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawBootSessionUUID";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoTimepoint.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_23C871164();
      }
    }

    else if (result == 1)
    {
      sub_23C7554B8();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_23C871184();
    }
  }
}

uint64_t sub_23C7554B8()
{
  v0 = *(type metadata accessor for TranscriptProtoTimepoint(0) + 28);
  sub_23C870EC4();
  sub_23C8314AC(&qword_27E1FEED8, MEMORY[0x277D21570]);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoTimepoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C75565C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_23C8712E4();
    }

    if (v3[1])
    {
      sub_23C8712E4();
    }

    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_23C8712C4();
    }

    v8 = v3 + *(type metadata accessor for TranscriptProtoTimepoint(0) + 32);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_23C870EC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoTimepoint(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &unk_27E1F9D10, &qword_23C874E00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &unk_27E1F9D10, &qword_23C874E00);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_23C8314AC(&qword_27E1FEED8, MEMORY[0x277D21570]);
  sub_23C871304();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_23C7558C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_23C870EC4();
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 32)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C755998(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036E0, type metadata accessor for TranscriptProtoTimepoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C755A38()
{
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint);

  return sub_23C8711F4();
}

uint64_t sub_23C755AA4()
{
  sub_23C8314AC(&qword_27E201DE0, type metadata accessor for TranscriptProtoTimepoint);

  return sub_23C871204();
}

uint64_t sub_23C755B40()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200080);
  __swift_project_value_buffer(v0, qword_27E200080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "initialLocaleSettings";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "originatingDevice";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSessionStart.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for TranscriptProtoLocaleSettings(0);
        sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings);
        sub_23C8711A4();
      }

      else if (result == 3)
      {
        sub_23C755E2C();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C755E2C()
{
  v0 = *(type metadata accessor for TranscriptProtoSessionStart(0) + 20);
  type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails);
  return sub_23C8711A4();
}

uint64_t sub_23C755F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E28, &unk_23C8A1150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203E28, &unk_23C8A1150);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203E28, &unk_23C8A1150);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoLocaleSettings);
}

uint64_t sub_23C756144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E18, &qword_23C8A0FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSessionStart(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203E18, &qword_23C8A0FD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203E18, &qword_23C8A0FD0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoDeviceDetails);
}

uint64_t sub_23C756424(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036D8, type metadata accessor for TranscriptProtoSessionStart);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7564C4()
{
  sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart);

  return sub_23C8711F4();
}

uint64_t sub_23C756530()
{
  sub_23C8314AC(&qword_27E201DF8, type metadata accessor for TranscriptProtoSessionStart);

  return sub_23C871204();
}

uint64_t sub_23C7565CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200098);
  __swift_project_value_buffer(v0, qword_27E200098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "safetyMode";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "prescribedPlan";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rawRewriteMetadataEventId";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "rewriteMetadataInlined";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C7569A0();
      }

      else if (result == 2)
      {
        sub_23C871084();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C756A54();
          break;
        case 4:
          v3 = *(type metadata accessor for TranscriptProtoRequest(0) + 28);
          sub_23C871154();
          break;
        case 5:
          sub_23C756B08();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C7569A0()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 20);
  type metadata accessor for TranscriptProtoRequestContent(0);
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent);
  return sub_23C8711A4();
}

uint64_t sub_23C756A54()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 24);
  type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  return sub_23C8711A4();
}

uint64_t sub_23C756B08()
{
  v0 = *(type metadata accessor for TranscriptProtoRequest(0) + 32);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C756CC0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    sub_23C756EDC(v3, a1, a2, a3);
    sub_23C7ED9C0(v3, a1, a2, a3, type metadata accessor for TranscriptProtoRequest);
    sub_23C7570F8(v3, a1, a2, a3);
    v9 = &v3[*(type metadata accessor for TranscriptProtoRequest(0) + 36)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C756CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203DD0, &unk_23C8A1160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203DD0, &unk_23C8A1160);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_23C756EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E08, &qword_23C8A0FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E203E08, &qword_23C8A0FC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203E08, &qword_23C8A0FC0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
}

uint64_t sub_23C7570F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequest(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E203DC0, &unk_23C8A1170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203DC0, &unk_23C8A1170);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_23C757360@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v10 - 8) + 56))(&a2[v8], 1, 1, v10);
  v11 = &a2[a1[9]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C7574BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036D0, type metadata accessor for TranscriptProtoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75755C()
{
  sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7575C8()
{
  sub_23C8314AC(&qword_27E201E10, type metadata accessor for TranscriptProtoRequest);

  return sub_23C871204();
}

uint64_t sub_23C757664()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2000B0);
  __swift_project_value_buffer(v0, qword_27E2000B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speech";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "promptResolution";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stop";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C757934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203988, &qword_23C8A0BE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E2014C0, &qword_23C88DBC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2014C0, &qword_23C88DBC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203988, &qword_23C8A0BE0);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoRequestContentTextContent);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203988, &qword_23C8A0BE0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203988, &qword_23C8A0BE0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203988, &qword_23C8A0BE0);
    return sub_23C585C34(v36, &qword_27E203988, &qword_23C8A0BE0);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoRequestContentTextContent);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203988, &qword_23C8A0BE0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestContentTextContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C757EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203990, &qword_23C8A0BE8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E2014C0, &qword_23C88DBC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2014C0, &qword_23C88DBC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203990, &qword_23C8A0BE8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203990, &qword_23C8A0BE8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203990, &qword_23C8A0BE8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203990, &qword_23C8A0BE8);
    return sub_23C585C34(v36, &qword_27E203990, &qword_23C8A0BE8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203990, &qword_23C8A0BE8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7584A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DF8, &qword_23C8A0FB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E2014C0, &qword_23C88DBC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2014C0, &qword_23C88DBC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203DF8, &qword_23C8A0FB0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSystemPromptResolution);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202810, type metadata accessor for TranscriptProtoSystemPromptResolution);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203DF8, &qword_23C8A0FB0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203DF8, &qword_23C8A0FB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203DF8, &qword_23C8A0FB0);
    return sub_23C585C34(v36, &qword_27E203DF8, &qword_23C8A0FB0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSystemPromptResolution);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203DF8, &qword_23C8A0FB0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemPromptResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C758A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E00, &qword_23C8A0FB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E2014C0, &qword_23C88DBC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2014C0, &qword_23C88DBC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestContentEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203E00, &qword_23C8A0FB8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestContentStopContent);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestContentStopContent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestContentEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203E00, &qword_23C8A0FB8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203E00, &qword_23C8A0FB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203E00, &qword_23C8A0FB8);
    return sub_23C585C34(v36, &qword_27E203E00, &qword_23C8A0FB8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestContentStopContent);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203E00, &qword_23C8A0FB8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2014C0, &qword_23C88DBC0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestContentStopContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoRequestContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E2014C0, &qword_23C88DBC0);
  v12 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C759658(v3, a1, a2, a3);
    }

    else
    {
      sub_23C759890(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C759420(v3, a1, a2, a3);
  }

  else
  {
    sub_23C7591EC(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoRequestContent(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7591EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2014C0, &qword_23C88DBC0);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContentTextContent);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2014C0, &qword_23C88DBC0);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2014C0, &qword_23C88DBC0);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemPromptResolution);
    sub_23C8314AC(&qword_27E202810, type metadata accessor for TranscriptProtoSystemPromptResolution);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2014C0, &qword_23C88DBC0);
  v13 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2014C0, &qword_23C88DBC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContentStopContent);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C759B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036C8, type metadata accessor for TranscriptProtoRequestContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C759C18()
{
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent);

  return sub_23C8711F4();
}

uint64_t sub_23C759C84()
{
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent);

  return sub_23C871204();
}

uint64_t TranscriptProtoRequestContentStopContent.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_23C871044();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_23C759E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036C0, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C759EB4()
{
  sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return sub_23C8711F4();
}

uint64_t sub_23C759F20()
{
  sub_23C8314AC(&qword_27E201E40, type metadata accessor for TranscriptProtoRequestContentStopContent);

  return sub_23C871204();
}

uint64_t sub_23C759FB8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2000E0);
  __swift_project_value_buffer(v0, qword_27E2000E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C75A1D0()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentTextContent(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C75A2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C75A590(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036B8, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75A630()
{
  sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return sub_23C8711F4();
}

uint64_t sub_23C75A69C()
{
  sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent);

  return sub_23C871204();
}

uint64_t sub_23C75A738()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2000F8);
  __swift_project_value_buffer(v0, qword_27E2000F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "speechPackage";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "statementId";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoRequestContentSpeechContent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_23C75AAD4();
        break;
      case 3:
        sub_23C75AA20();
        break;
      case 2:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C75AA20()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 20);
  type metadata accessor for TranscriptProtoSpeechPackage(0);
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage);
  return sub_23C8711A4();
}

uint64_t sub_23C75AAD4()
{
  v0 = *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoRequestContentSpeechContent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C75AC4C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C75AE68(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for TranscriptProtoRequestContentSpeechContent(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C75AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DE0, &qword_23C8A0F98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203DE0, &qword_23C8A0F98);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203DE0, &qword_23C8A0F98);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_23C75AE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C75B148(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036B0, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75B1E8()
{
  sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return sub_23C8711F4();
}

uint64_t sub_23C75B254()
{
  sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent);

  return sub_23C871204();
}

uint64_t TranscriptProtoSpeechPackage.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0), sub_23C8314AC(&qword_27E2014E8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75B530(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036A8, type metadata accessor for TranscriptProtoSpeechPackage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75B5D0()
{
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage);

  return sub_23C8711F4();
}

uint64_t sub_23C75B63C()
{
  sub_23C8314AC(&qword_27E201E88, type metadata accessor for TranscriptProtoSpeechPackage);

  return sub_23C871204();
}

uint64_t sub_23C75B7B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_23C8314AC(a5, a6);
      sub_23C871194();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Phrase.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0), sub_23C8314AC(&qword_27E2014F8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75B9A4(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C75BAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2036A0, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75BB9C()
{
  sub_23C8314AC(&qword_27E2014E8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return sub_23C8711F4();
}

uint64_t sub_23C75BC08()
{
  sub_23C8314AC(&qword_27E2014E8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);

  return sub_23C871204();
}

uint64_t sub_23C75BC9C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t TranscriptProtoSpeechPackage.Interpretation.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoSpeechPackage.Token(0), sub_23C8314AC(&qword_27E201508, type metadata accessor for TranscriptProtoSpeechPackage.Token), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C75BFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203698, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75C08C()
{
  sub_23C8314AC(&qword_27E2014F8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_23C8711F4();
}

uint64_t sub_23C75C0F8()
{
  sub_23C8314AC(&qword_27E2014F8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);

  return sub_23C871204();
}

uint64_t sub_23C75C1AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000018;
  *a5 = 0x800000023C8AF8E0;
  return result;
}

uint64_t sub_23C75C240()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200188);
  __swift_project_value_buffer(v0, qword_27E200188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidenceScore";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startTime";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "silenceStartTime";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "endTime";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSpeechPackage.Token.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_23C871164();
      }

      else if (result == 2)
      {
        sub_23C871114();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      sub_23C871144();
    }
  }

  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (!*(v0 + 2) || (result = sub_23C871294(), !v1))
    {
      if (v0[3] == 0.0 || (result = sub_23C8712B4(), !v1))
      {
        if (v0[4] == 0.0 || (result = sub_23C8712B4(), !v1))
        {
          if (v0[5] == 0.0 || (result = sub_23C8712B4(), !v1))
          {
            v6 = v0 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

double sub_23C75C744@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 36);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return result;
}

uint64_t sub_23C75C7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203690, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75C878()
{
  sub_23C8314AC(&qword_27E201508, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return sub_23C8711F4();
}

uint64_t sub_23C75C8E4()
{
  sub_23C8314AC(&qword_27E201508, type metadata accessor for TranscriptProtoSpeechPackage.Token);

  return sub_23C871204();
}

uint64_t sub_23C75C980()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001A0);
  __swift_project_value_buffer(v0, qword_27E2001A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rawRewriteMetadataEventId";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rewriteMetadataInlined";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoExternalAgentRequest.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C75CCEC();
          break;
        case 2:
          v3 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20);
          sub_23C871154();
          break;
        case 1:
          type metadata accessor for TranscriptProtoRequestContent(0);
          sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C75CCEC()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 24);
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  return sub_23C8711A4();
}

uint64_t sub_23C75CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203DD0, &unk_23C8A1160);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203DD0, &unk_23C8A1160);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C8314AC(&qword_27E201E28, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoRequestContent);
}

uint64_t sub_23C75D018(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C75D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E203DC0, &unk_23C8A1170);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203DC0, &unk_23C8A1170);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
}

uint64_t sub_23C75D2F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v7 - 8) + 56))(a2 + v5, 1, 1, v7);
  v8 = a2 + a1[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C75D408(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203688, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75D4A8()
{
  sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C75D514()
{
  sub_23C8314AC(&qword_27E201ED0, type metadata accessor for TranscriptProtoExternalAgentRequest);

  return sub_23C871204();
}

uint64_t sub_23C75D5B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001B8);
  __swift_project_value_buffer(v0, qword_27E2001B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalRequest";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrites";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoExternalAgentRequestRewriteMetadata.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (!*(v0[2] + 16) || (result = sub_23C8712A4(), !v1))
    {
      v6 = v0 + *(type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C75D964(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203680, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C75DA04()
{
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_23C8711F4();
}

uint64_t sub_23C75DA70()
{
  sub_23C8314AC(&qword_27E201EE8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);

  return sub_23C871204();
}

uint64_t sub_23C75DB4C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001D0);
  __swift_project_value_buffer(v0, qword_27E2001D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "searchTool";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "lowConfidenceKnowledgeTool";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 6;
  *v11 = "textTool";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 7;
  *v13 = "convertTool";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "displayTool";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 9;
  *v17 = "knowledgeTool";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 10;
  *v19 = "openTool";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "openSuccessValueFromLatestRequestTool";
  *(v21 + 1) = 37;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoRequestPrescribedPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 7)
    {
      if (result > 9)
      {
        if (result == 10)
        {
          sub_23C7602A0(v5, a1, a2, a3);
        }

        else if (result == 11)
        {
          sub_23C76085C(v5, a1, a2, a3);
        }
      }

      else if (result == 8)
      {
        sub_23C75F728(v5, a1, a2, a3);
      }

      else
      {
        sub_23C75FCE4(v5, a1, a2, a3);
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_23C75EBB0(v5, a1, a2, a3);
      }

      else
      {
        sub_23C75F16C(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C75E044(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C75E5F4(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C75E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D80, &qword_23C8A0F48);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203D80, &qword_23C8A0F48);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203D80, &qword_23C8A0F48);
  }

  sub_23C5855B0(v28, v36, &qword_27E203D80, &qword_23C8A0F48);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203D80, &qword_23C8A0F48);
    return sub_23C585C34(v36, &qword_27E203D80, &qword_23C8A0F48);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203D80, &qword_23C8A0F48);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C75E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D88, &qword_23C8A0F50);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203D88, &qword_23C8A0F50);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203D88, &qword_23C8A0F50);
  }

  sub_23C5855B0(v28, v36, &qword_27E203D88, &qword_23C8A0F50);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203D88, &qword_23C8A0F50);
    return sub_23C585C34(v36, &qword_27E203D88, &qword_23C8A0F50);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203D88, &qword_23C8A0F50);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C75EBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D90, &qword_23C8A0F58);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203D90, &qword_23C8A0F58);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203D90, &qword_23C8A0F58);
  }

  sub_23C5855B0(v28, v36, &qword_27E203D90, &qword_23C8A0F58);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203D90, &qword_23C8A0F58);
    return sub_23C585C34(v36, &qword_27E203D90, &qword_23C8A0F58);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203D90, &qword_23C8A0F58);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C75F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D98, &qword_23C8A0F60);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203D98, &qword_23C8A0F60);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203D98, &qword_23C8A0F60);
  }

  sub_23C5855B0(v28, v36, &qword_27E203D98, &qword_23C8A0F60);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203D98, &qword_23C8A0F60);
    return sub_23C585C34(v36, &qword_27E203D98, &qword_23C8A0F60);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203D98, &qword_23C8A0F60);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C75F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DA0, &qword_23C8A0F68);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E203DA0, &qword_23C8A0F68);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203DA0, &qword_23C8A0F68);
  }

  sub_23C5855B0(v28, v36, &qword_27E203DA0, &qword_23C8A0F68);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203DA0, &qword_23C8A0F68);
    return sub_23C585C34(v36, &qword_27E203DA0, &qword_23C8A0F68);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203DA0, &qword_23C8A0F68);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C75FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DA8, &qword_23C8A0F70);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E203DA8, &qword_23C8A0F70);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203DA8, &qword_23C8A0F70);
  }

  sub_23C5855B0(v28, v36, &qword_27E203DA8, &qword_23C8A0F70);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203DA8, &qword_23C8A0F70);
    return sub_23C585C34(v36, &qword_27E203DA8, &qword_23C8A0F70);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203DA8, &qword_23C8A0F70);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7602A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DB0, &qword_23C8A0F78);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E203DB0, &qword_23C8A0F78);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203DB0, &qword_23C8A0F78);
  }

  sub_23C5855B0(v28, v36, &qword_27E203DB0, &qword_23C8A0F78);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203DB0, &qword_23C8A0F78);
    return sub_23C585C34(v36, &qword_27E203DB0, &qword_23C8A0F78);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203DB0, &qword_23C8A0F78);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C76085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DB8, &qword_23C8A0F80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201530, &unk_23C8A1190);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201530, &unk_23C8A1190);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E203DB8, &qword_23C8A0F80);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203DB8, &qword_23C8A0F80);
  }

  sub_23C5855B0(v28, v36, &qword_27E203DB8, &qword_23C8A0F80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203DB8, &qword_23C8A0F80);
    return sub_23C585C34(v36, &qword_27E203DB8, &qword_23C8A0F80);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203DB8, &qword_23C8A0F80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201530, &unk_23C8A1190);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoRequestPrescribedPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201530, &unk_23C8A1190);
  v12 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_23C761DC8(v3, a1, a2, a3);
      }

      else
      {
        sub_23C762000(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C761958(v3, a1, a2, a3);
    }

    else
    {
      sub_23C761B90(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C7614E8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C761720(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C7612B0(v3, a1, a2, a3);
  }

  else
  {
    sub_23C76107C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (!v4)
  {
LABEL_18:
    v15 = v3 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlan(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7612B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7614E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C761DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C762000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201530, &unk_23C8A1190);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201530, &unk_23C8A1190);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7622E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203678, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762388()
{
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return sub_23C8711F4();
}

uint64_t sub_23C7623F4()
{
  sub_23C8314AC(&qword_27E201F00, type metadata accessor for TranscriptProtoRequestPrescribedPlan);

  return sub_23C871204();
}

uint64_t sub_23C762490()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2001E8);
  __swift_project_value_buffer(v0, qword_27E2001E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "shouldOpenResultIfApplicable";
  *(v11 + 8) = 28;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7627A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203670, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762840()
{
  sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_23C8711F4();
}

uint64_t sub_23C7628AC()
{
  sub_23C8314AC(&qword_27E201F18, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  return sub_23C871204();
}

uint64_t sub_23C762A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203668, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762B14()
{
  sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_23C8711F4();
}

uint64_t sub_23C762B80()
{
  sub_23C8314AC(&qword_27E201F30, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);

  return sub_23C871204();
}

uint64_t sub_23C762C18()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200218);
  __swift_project_value_buffer(v0, qword_27E200218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C762EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203660, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C762F7C()
{
  sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_23C8711F4();
}

uint64_t sub_23C762FE8()
{
  sub_23C8314AC(&qword_27E201F48, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);

  return sub_23C871204();
}

uint64_t sub_23C763080()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200230);
  __swift_project_value_buffer(v0, qword_27E200230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7632B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = *(a3(0) + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C763404(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203658, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7634A4()
{
  sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_23C8711F4();
}

uint64_t sub_23C763510()
{
  sub_23C8314AC(&qword_27E201F60, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);

  return sub_23C871204();
}

uint64_t sub_23C76358C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C763674()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200248);
  __swift_project_value_buffer(v0, qword_27E200248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C763920(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203650, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7639C0()
{
  sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_23C8711F4();
}

uint64_t sub_23C763A2C()
{
  sub_23C8314AC(&qword_27E201F78, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);

  return sub_23C871204();
}

uint64_t sub_23C763AC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200260);
  __swift_project_value_buffer(v0, qword_27E200260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isExplicit";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C763CB0()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2)
    {
      sub_23C871084();
    }
  }

  return result;
}

uint64_t sub_23C763D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v5))
  {
    if (*(v4 + 16) != 1 || (result = sub_23C871244(), !v5))
    {
      v11 = v4 + *(a4(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C763EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203648, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C763F68()
{
  sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_23C8711F4();
}

uint64_t sub_23C763FD4()
{
  sub_23C8314AC(&qword_27E201F90, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);

  return sub_23C871204();
}

uint64_t sub_23C76406C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200278);
  __swift_project_value_buffer(v0, qword_27E200278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resultStatementId";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "elementAtIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20);
        sub_23C871104();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7643BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    v14 = v6 + *(a6(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C764464(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C764528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7645FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203640, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76469C()
{
  sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_23C8711F4();
}

uint64_t sub_23C764708()
{
  sub_23C8314AC(&qword_27E201FA8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);

  return sub_23C871204();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C871104();
    }
  }

  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.traverse<A>(visitor:)()
{
  if ((v0[1] & 1) == 0)
  {
    v2 = *v0;
    result = sub_23C871294();
  }

  if (!v1)
  {
    v4 = v0 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C764928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7649A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203638, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C764A40()
{
  sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_23C8711F4();
}

uint64_t sub_23C764AAC()
{
  sub_23C8314AC(&qword_27E201FC0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);

  return sub_23C871204();
}

uint64_t sub_23C764B48()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002A8);
  __swift_project_value_buffer(v0, qword_27E2002A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 10;
  *v5 = "statementId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "bundleId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 6;
  *v11 = "isConfirmed";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 7;
  *v13 = "parameterValues";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 8;
  *v15 = "planEventId";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 11;
  *v17 = "tool";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoAction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 7)
    {
      switch(result)
      {
        case 8:
          v4 = *(type metadata accessor for TranscriptProtoAction(0) + 32);
LABEL_16:
          v0 = 0;
          sub_23C871154();
          break;
        case 10:
          sub_23C765060();
          break;
        case 11:
          sub_23C765114();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for TranscriptProtoAction(0) + 28);
          goto LABEL_16;
        case 6:
          sub_23C871084();
          break;
        case 7:
          sub_23C764F68();
          break;
      }
    }
  }
}

uint64_t sub_23C764F68()
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue);
  sub_23C8314AC(&qword_27E201588, type metadata accessor for TranscriptProtoActionParameterValue);
  return sub_23C871024();
}

uint64_t sub_23C765060()
{
  v0 = *(type metadata accessor for TranscriptProtoAction(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C765114()
{
  v0 = *(type metadata accessor for TranscriptProtoAction(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7ED9C0(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_23C870EE4();
      type metadata accessor for TranscriptProtoActionParameterValue(0);
      sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_23C8314AC(&qword_27E201588, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_23C871214();
    }

    sub_23C7EDA44(v3, a1, a2, a3, type metadata accessor for TranscriptProtoAction);
    sub_23C7653C0(v3, a1, a2, a3);
    sub_23C7655DC(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoAction(0) + 40);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7653C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoAction(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7655DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoAction(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

unint64_t sub_23C765844@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[9];
  v10 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a2 + a1[10];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  result = sub_23C599950(MEMORY[0x277D84F90]);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_23C765978(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203630, type metadata accessor for TranscriptProtoAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C765A18()
{
  sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction);

  return sub_23C8711F4();
}

uint64_t sub_23C765A84()
{
  sub_23C8314AC(&qword_27E1FBB58, type metadata accessor for TranscriptProtoAction);

  return sub_23C871204();
}

uint64_t sub_23C765B20()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002C0);
  __swift_project_value_buffer(v0, qword_27E2002C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionParameterValue.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoToolParameterValue(0);
        sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C765E0C();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C765E0C()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterValue(0) + 20);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection);
  return sub_23C8711A4();
}

uint64_t sub_23C765F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D58, &unk_23C8A11A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203D58, &unk_23C8A11A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203D58, &unk_23C8A11A0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoToolParameterValue);
}

uint64_t sub_23C766124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203CF8, &qword_23C8A0ED8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203CF8, &qword_23C8A0ED8);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoPromptSelection);
}

uint64_t sub_23C766404(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203628, type metadata accessor for TranscriptProtoActionParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7664A4()
{
  sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue);

  return sub_23C8711F4();
}

uint64_t sub_23C766510()
{
  sub_23C8314AC(&qword_27E201580, type metadata accessor for TranscriptProtoActionParameterValue);

  return sub_23C871204();
}

uint64_t sub_23C7665AC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002D8);
  __swift_project_value_buffer(v0, qword_27E2002D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "cancelledActionStatementId";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionCancellation.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 4)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
        sub_23C8711A4();
      }

      else if (result == 5)
      {
        sub_23C76689C();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76689C()
{
  v0 = *(type metadata accessor for TranscriptProtoActionCancellation(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7669A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C766BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionCancellation(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C766E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203620, type metadata accessor for TranscriptProtoActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C766F34()
{
  sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation);

  return sub_23C8711F4();
}

uint64_t sub_23C766FA0()
{
  sub_23C8314AC(&qword_27E201FF8, type metadata accessor for TranscriptProtoActionCancellation);

  return sub_23C871204();
}

uint64_t sub_23C767068()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2002F0);
  __swift_project_value_buffer(v0, qword_27E2002F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confirmed";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selectedInDisambiguation";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "denied";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoPromptSelection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_23C767360(a1, v5, a2, a3, 1);
        break;
      case 2:
        sub_23C76EFE4();
        break;
      case 1:
        sub_23C767360(a1, v5, a2, a3, 0);
        break;
    }
  }

  return result;
}

uint64_t sub_23C767360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_23C870E84();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v21 = a2;
  sub_23C5855B0(v13, v11, &qword_27E1FEBC8, &qword_23C889840);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_23C585C34(v11, &qword_27E1FEBC8, &qword_23C889840);
  if (v16 == 1)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v17 = v21;
  if ((*(v21 + 9) & 1) == 0)
  {
    sub_23C871054();
  }

  v18 = v22;
  result = sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  *v17 = v18;
  *(v17 + 8) = 1;
  return result;
}

uint64_t TranscriptProtoPromptSelection.traverse<A>(visitor:)()
{
  if (*(v0 + 9))
  {
    goto LABEL_2;
  }

  if (*(v0 + 8))
  {
    if (*v0)
    {
      result = sub_23C76F2AC(v0);
      if (!v1)
      {
LABEL_2:
        v2 = v0 + *(type metadata accessor for TranscriptProtoPromptSelection(0) + 20);
        return sub_23C870F14();
      }
    }

    else
    {
      result = sub_23C76F150(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C871294();
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C767724(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203618, type metadata accessor for TranscriptProtoPromptSelection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7677C4()
{
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection);

  return sub_23C8711F4();
}

uint64_t sub_23C767830()
{
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection);

  return sub_23C871204();
}

uint64_t sub_23C7678CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200308);
  __swift_project_value_buffer(v0, qword_27E200308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "parameterValues";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "systemStyle";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C767AFC()
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoParameterValue(0);
  sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue);
  sub_23C8314AC(&qword_27E2015B0, type metadata accessor for TranscriptProtoParameterValue);
  return sub_23C871024();
}

uint64_t sub_23C767BF4()
{
  v0 = *(type metadata accessor for TranscriptProtoActionConfirmation(0) + 20);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_23C870EE4(), type metadata accessor for TranscriptProtoParameterValue(0), sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue), sub_23C8314AC(&qword_27E2015B0, type metadata accessor for TranscriptProtoParameterValue), v4 = v10, result = sub_23C871214(), !v10))
  {
    result = sub_23C767DFC(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for TranscriptProtoActionConfirmation(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C767DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D38, &unk_23C8A11B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203D38, &unk_23C8A11B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203D38, &unk_23C8A11B0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
}

uint64_t sub_23C7680DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203610, type metadata accessor for TranscriptProtoActionConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76817C()
{
  sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation);

  return sub_23C8711F4();
}

uint64_t sub_23C7681E8()
{
  sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation);

  return sub_23C871204();
}

uint64_t sub_23C7682F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D20, &qword_23C8A0EF8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D30, &qword_23C8A0F08);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E203D20, &qword_23C8A0EF8);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E203D20, &qword_23C8A0EF8);
    v30 = v44;
  }

  else
  {
    sub_23C83155C(v13, v21, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_23C83155C(v21, v19, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
    sub_23C585C34(v27, &qword_27E203D30, &qword_23C8A0F08);
    v31 = v42;
    sub_23C83155C(v19, v42, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    sub_23C83155C(v31, v27, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E203D30, &qword_23C8A0F08);
  }

  sub_23C5855B0(v27, v43, &qword_27E203D30, &qword_23C8A0F08);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E203D30, &qword_23C8A0F08);
    return sub_23C585C34(v33, &qword_27E203D30, &qword_23C8A0F08);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E203D30, &qword_23C8A0F08);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E203D20, &qword_23C8A0EF8);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C76887C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D20, &qword_23C8A0EF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203D20, &qword_23C8A0EF8);
  v13 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203D20, &qword_23C8A0EF8);
  }

  sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C871304();
  return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
}

uint64_t sub_23C768B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203608, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C768BCC()
{
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_23C8711F4();
}

uint64_t sub_23C768C38()
{
  sub_23C8314AC(&qword_27E202040, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

  return sub_23C871204();
}

uint64_t sub_23C768CD4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200338);
  __swift_project_value_buffer(v0, qword_27E200338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isExplicitRequest";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_23C871084();
        break;
      case 2:
        sub_23C768FBC();
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C768FBC()
{
  v0 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 24);
  type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_23C8712C4(), !v4))
  {
    result = sub_23C769144(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_23C871244();
      }

      v12 = v3 + *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C769144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D08, &qword_23C8A0EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E203D08, &qword_23C8A0EE8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203D08, &qword_23C8A0EE8);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
}

uint64_t sub_23C769410(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203600, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7694B0()
{
  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_23C8711F4();
}

uint64_t sub_23C76951C()
{
  sub_23C8314AC(&qword_27E202058, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);

  return sub_23C871204();
}

uint64_t sub_23C7695B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200350);
  __swift_project_value_buffer(v0, qword_27E200350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mediaQA";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "knowledgeFallback";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "composeViaSiri";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textAssistant";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_23C769920(a1, v5, a2, a3, 2);
        }

        else if (result == 4)
        {
          sub_23C769920(a1, v5, a2, a3, 3);
        }
      }

      else if (result == 1)
      {
        sub_23C769920(a1, v5, a2, a3, 0);
      }

      else if (result == 2)
      {
        sub_23C769920(a1, v5, a2, a3, 1);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C769920(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = sub_23C870E84();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v21 = a2;
  sub_23C5855B0(v13, v11, &qword_27E1FEBC8, &qword_23C889840);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_23C585C34(v11, &qword_27E1FEBC8, &qword_23C889840);
  if (v16 == 1)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v17 = v21;
  if (*v21 != 4)
  {
    sub_23C871054();
  }

  v18 = v22;
  result = sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  *v17 = v18;
  return result;
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 <= 1)
  {
    if (!*v0)
    {
      result = sub_23C782740(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    result = sub_23C78288C(v0);
    if (!v1)
    {
LABEL_10:
      v4 = &v0[*(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0) + 20)];
      return sub_23C870F14();
    }
  }

  else
  {
    if (v2 == 2)
    {
      result = sub_23C7829DC(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    if (v2 != 3)
    {
      goto LABEL_10;
    }

    result = sub_23C783604(v0);
    if (!v1)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_23C769C94@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 4;
  v2 = &a2[*(a1 + 20)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C769D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035F8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C769DA8()
{
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_23C8711F4();
}

uint64_t sub_23C769E14()
{
  sub_23C8314AC(&qword_27E202070, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);

  return sub_23C871204();
}

uint64_t sub_23C769EB0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200368);
  __swift_project_value_buffer(v0, qword_27E200368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "promptSelection";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterValue.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C76A19C();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76A19C()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterValue(0) + 20);
  type metadata accessor for TranscriptProtoPromptSelection(0);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection);
  return sub_23C8711A4();
}

uint64_t sub_23C76A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoParameterValue(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203CF8, &qword_23C8A0ED8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203CF8, &qword_23C8A0ED8);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8314AC(&qword_27E202010, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoPromptSelection);
}

uint64_t sub_23C76A584(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035F0, type metadata accessor for TranscriptProtoParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76A624()
{
  sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue);

  return sub_23C8711F4();
}

uint64_t sub_23C76A690()
{
  sub_23C8314AC(&qword_27E2015A8, type metadata accessor for TranscriptProtoParameterValue);

  return sub_23C871204();
}

uint64_t sub_23C76A72C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200380);
  __swift_project_value_buffer(v0, qword_27E200380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assistantSchemaKind";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tools";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoToolDisambiguation.traverse<A>(visitor:)()
{
  if (v0[2])
  {
    v2 = v0[1];
    result = sub_23C8712C4();
  }

  if (!v1)
  {
    if (*(*v0 + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
      sub_23C8314AC(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_23C8712F4();
    }

    v4 = v0 + *(type metadata accessor for TranscriptProtoToolDisambiguation(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76AB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035E8, type metadata accessor for TranscriptProtoToolDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76ABF4()
{
  sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation);

  return sub_23C8711F4();
}

uint64_t sub_23C76AC60()
{
  sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation);

  return sub_23C871204();
}

uint64_t sub_23C76AD3C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200398);
  __swift_project_value_buffer(v0, qword_27E200398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "responseText";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "statementOutcome";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoExternalAgentOutcome.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        sub_23C76B0D8();
        break;
      case 3:
        sub_23C76B024();
        break;
      case 2:
        sub_23C871124();
        break;
    }
  }

  return result;
}

uint64_t sub_23C76B024()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76B0D8()
{
  v0 = *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 24);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoExternalAgentOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_23C8712A4(), !v4))
  {
    result = sub_23C76B244(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C76B460(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for TranscriptProtoExternalAgentOutcome(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C76B244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C76B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FBB18, &unk_23C87B950);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBB18, &unk_23C87B950);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_23C76B6C8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C76B7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035E0, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76B880()
{
  sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return sub_23C8711F4();
}

uint64_t sub_23C76B8EC()
{
  sub_23C8314AC(&qword_27E2020B0, type metadata accessor for TranscriptProtoExternalAgentOutcome);

  return sub_23C871204();
}

uint64_t sub_23C76B988()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2003B0);
  __swift_project_value_buffer(v0, qword_27E2003B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "outcome";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementResultPayload.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementOutcome(0);
        sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C76BC74();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76BC74()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResultPayload(0) + 20);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_23C8314AC(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest);
  return sub_23C8711A4();
}

uint64_t sub_23C76BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FBB08, &unk_23C8A11D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBB08, &unk_23C8A11D0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C8314AC(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_23C76C05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035D8, type metadata accessor for TranscriptProtoStatementResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76C0FC()
{
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C76C168()
{
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload);

  return sub_23C871204();
}

uint64_t sub_23C76C204()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2003C8);
  __swift_project_value_buffer(v0, qword_27E2003C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionEventId";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "payload";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "resultStatementId";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "originProgramStatementId";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "originTaskStatementId";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "tool";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementResult.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      switch(result)
      {
        case 5:
          sub_23C76C788();
          break;
        case 6:
          sub_23C76C83C();
          break;
        case 7:
          sub_23C76C8F0();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C871154();
          break;
        case 3:
          sub_23C76C620();
          break;
        case 4:
          sub_23C76C6D4();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C76C620()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementResultPayload(0);
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload);
  return sub_23C8711A4();
}

uint64_t sub_23C76C6D4()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76C788()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76C83C()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76C8F0()
{
  v0 = *(type metadata accessor for TranscriptProtoStatementResult(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoStatementResult.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    sub_23C76CAA4(v3, v7, a2, a3);
    sub_23C76CCC0(v3, v7, a2, a3);
    sub_23C76CEDC(v3, v7, a2, a3);
    sub_23C76D0F8(v3, v7, a2, a3);
    sub_23C76D314(v3, v7, a2, a3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoStatementResult(0) + 40);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE8, &qword_23C8A0EC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203CE8, &qword_23C8A0EC8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203CE8, &qword_23C8A0EC8);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_23C8314AC(&qword_27E2020C8, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementResultPayload);
}

uint64_t sub_23C76CCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C76CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C76D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C76D314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_23C76D57C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a2[v6], 1, 1, v7);
  v8(&a2[a1[7]], 1, 1, v7);
  v8(&a2[a1[8]], 1, 1, v7);
  v9 = a1[9];
  v10 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v11 = &a2[a1[10]];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C76D71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035D0, type metadata accessor for TranscriptProtoStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76D7BC()
{
  sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult);

  return sub_23C8711F4();
}

uint64_t sub_23C76D828()
{
  sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult);

  return sub_23C871204();
}

uint64_t TranscriptProtoResponseGenerationRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementResult(0), sub_23C8314AC(&qword_27E2015F8, type metadata accessor for TranscriptProtoStatementResult), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoResponseGenerationRequest(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76DB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035C8, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76DBA4()
{
  sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C76DC10()
{
  sub_23C8314AC(&qword_27E2020F0, type metadata accessor for TranscriptProtoResponseGenerationRequest);

  return sub_23C871204();
}

uint64_t sub_23C76DCC0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2003F8);
  __swift_project_value_buffer(v0, qword_27E2003F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "promptStatus";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoCandidate.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_23C76E0F0();
        }

        else if (result == 4)
        {
          sub_23C76E1A4();
        }
      }

      else if (result == 1)
      {
        sub_23C76E03C();
      }

      else if (result == 2)
      {
        sub_23C821A88();
        sub_23C8710A4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C76E03C()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C76E0F0()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 24);
  type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  return sub_23C8711A4();
}

uint64_t sub_23C76E1A4()
{
  v0 = *(type metadata accessor for TranscriptProtoCandidate(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C76E350(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      sub_23C821A88();
      sub_23C871254();
    }

    sub_23C76E56C(v3, a1, a2, a3);
    sub_23C76E788(v3, a1, a2, a3);
    v9 = &v3[*(type metadata accessor for TranscriptProtoCandidate(0) + 32)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C76E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C76E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FABB8, &unk_23C8A11E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FABB8, &unk_23C8A11E0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoCandidatePromptStatus);
}

uint64_t sub_23C76E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C76E9F0@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[7];
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = &a2[a1[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C76EB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035C0, type metadata accessor for TranscriptProtoCandidate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76EBE4()
{
  sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate);

  return sub_23C8711F4();
}

uint64_t sub_23C76EC50()
{
  sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate);

  return sub_23C871204();
}

uint64_t sub_23C76ECEC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200410);
  __swift_project_value_buffer(v0, qword_27E200410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notPrompted";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confirmed";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "picked";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoCandidatePromptStatus.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_23C76EFE4();
        break;
      case 2:
        sub_23C767360(a1, v5, a2, a3, 1);
        break;
      case 1:
        sub_23C767360(a1, v5, a2, a3, 0);
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoCandidatePromptStatus.traverse<A>(visitor:)()
{
  if (*(v0 + 9))
  {
    goto LABEL_2;
  }

  if (*(v0 + 8))
  {
    if (*v0)
    {
      result = sub_23C76F2AC(v0);
      if (!v1)
      {
LABEL_2:
        v2 = v0 + *(type metadata accessor for TranscriptProtoCandidatePromptStatus(0) + 20);
        return sub_23C870F14();
      }
    }

    else
    {
      result = sub_23C76F150(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C871294();
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C76F150(uint64_t a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) != 0 || (*(a1 + 8) & 1) == 0 || *a1)
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_23C76F2AC(uint64_t a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 9) & 1) == 0 && (*(a1 + 8) & 1) != 0 && *a1)
  {
    sub_23C870E74();
    sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C76F464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  v2 = a2 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C76F4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035B8, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C76F57C()
{
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return sub_23C8711F4();
}

uint64_t sub_23C76F5E8()
{
  sub_23C8314AC(&qword_27E202118, type metadata accessor for TranscriptProtoCandidatePromptStatus);

  return sub_23C871204();
}

uint64_t sub_23C76F684()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200428);
  __swift_project_value_buffer(v0, qword_27E200428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 2;
  *v4 = "toolId";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 3;
  *v8 = "parameters";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "planEventId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "shimParameters";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t TranscriptProtoClientAction.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      switch(result)
      {
        case 5:
          goto LABEL_14;
        case 7:
          sub_23C76FB70();
          break;
        case 8:
          sub_23C76FC24();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          sub_23C871164();
          break;
        case 3:
          sub_23C76FA78();
          break;
        case 4:
LABEL_14:
          sub_23C871154();
          break;
      }
    }
  }
}

uint64_t sub_23C76FA78()
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C871024();
}

uint64_t sub_23C76FB70()
{
  v0 = *(type metadata accessor for TranscriptProtoClientAction(0) + 36);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C76FC24()
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoShimParameters(0);
  sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters);
  sub_23C8314AC(&qword_27E201628, type metadata accessor for TranscriptProtoShimParameters);
  return sub_23C871024();
}

uint64_t TranscriptProtoClientAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = *v5;
  v10 = v5[1];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v5[2] + 16))
    {
      sub_23C870EE4();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue);
      result = sub_23C871214();
      if (v4)
      {
        return result;
      }

      if (!v5[5])
      {
        goto LABEL_9;
      }
    }

    else if (!v5[5])
    {
LABEL_9:
      if (!v4)
      {
        if (v5[7])
        {
          v13 = v5[6];
          sub_23C8712C4();
        }

        sub_23C76FFD0(v5, a1, a2, a3);
        if (*(v5[3] + 16))
        {
          sub_23C870EE4();
          type metadata accessor for TranscriptProtoShimParameters(0);
          sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters);
          sub_23C8314AC(&qword_27E201628, type metadata accessor for TranscriptProtoShimParameters);
          sub_23C871214();
        }

        v14 = v5 + *(type metadata accessor for TranscriptProtoClientAction(0) + 40);
        return sub_23C870F14();
      }

      return result;
    }

    v12 = v5[4];
    result = sub_23C8712C4();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_23C76FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoClientAction(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

unint64_t sub_23C770238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v4 = *(a1 + 36);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 40);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(a2 + 16) = sub_23C599478(MEMORY[0x277D84F90]);
  result = sub_23C599D20(v7);
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_23C770330(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035B0, type metadata accessor for TranscriptProtoClientAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7703D0()
{
  sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction);

  return sub_23C8711F4();
}

uint64_t sub_23C77043C()
{
  sub_23C8314AC(&qword_27E202130, type metadata accessor for TranscriptProtoClientAction);

  return sub_23C871204();
}

uint64_t TranscriptProtoShimParameters.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoShimParameter(0), sub_23C8314AC(&qword_27E201638, type metadata accessor for TranscriptProtoShimParameter), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoShimParameters(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C770718(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035A8, type metadata accessor for TranscriptProtoShimParameters);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7707B8()
{
  sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters);

  return sub_23C8711F4();
}

uint64_t sub_23C770824()
{
  sub_23C8314AC(&qword_27E201620, type metadata accessor for TranscriptProtoShimParameters);

  return sub_23C871204();
}

uint64_t sub_23C7708D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200458);
  __swift_project_value_buffer(v0, qword_27E200458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "resolved";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "stringQuery";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personQuery";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "photosCandidates";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C770BB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = v7;
  while (1)
  {
    result = sub_23C871044();
    if (v8 || (v18 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        a6(v13, a1, a2, a3);
      }

      else if (result == 4)
      {
        a7(v13, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      a4(v13, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v13, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C770CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAC00, &qword_23C878F98);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC00, &qword_23C878F98);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C83155C(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v36, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C771274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CC8, &qword_23C8A0EA8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAC00, &qword_23C878F98);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC00, &qword_23C878F98);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203CC8, &qword_23C8A0EA8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203CC8, &qword_23C8A0EA8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203CC8, &qword_23C8A0EA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203CC8, &qword_23C8A0EA8);
    return sub_23C585C34(v36, &qword_27E203CC8, &qword_23C8A0EA8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203CC8, &qword_23C8A0EA8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C771830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AD0, &qword_23C8A0CF8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAC00, &qword_23C878F98);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC00, &qword_23C878F98);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203AD0, &qword_23C8A0CF8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPersonQuery);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPersonQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203AD0, &qword_23C8A0CF8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203AD0, &qword_23C8A0CF8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203AD0, &qword_23C8A0CF8);
    return sub_23C585C34(v36, &qword_27E203AD0, &qword_23C8A0CF8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPersonQuery);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203AD0, &qword_23C8A0CF8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C771DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CD0, &qword_23C8A0EB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAC00, &qword_23C878F98);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC00, &qword_23C878F98);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoShimParameterEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203CD0, &qword_23C8A0EB0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPhotosCandidates);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPhotosCandidates);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoShimParameterEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203CD0, &qword_23C8A0EB0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203CD0, &qword_23C8A0EB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203CD0, &qword_23C8A0EB0);
    return sub_23C585C34(v36, &qword_27E203CD0, &qword_23C8A0EB0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPhotosCandidates);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203CD0, &qword_23C8A0EB0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC00, &qword_23C878F98);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPhotosCandidates);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoShimParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FAC00, &qword_23C878F98);
  v12 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C7729E8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C772C20(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C7727B0(v3, a1, a2, a3);
  }

  else
  {
    sub_23C77257C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoShimParameter(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C77257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC00, &qword_23C878F98);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7727B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC00, &qword_23C878F98);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7729E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC00, &qword_23C878F98);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPersonQuery);
    sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C772C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC00, &qword_23C878F98);
  v13 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC00, &qword_23C878F98);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPhotosCandidates);
    sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPhotosCandidates);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C772F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2035A0, type metadata accessor for TranscriptProtoShimParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C772FA8()
{
  sub_23C8314AC(&qword_27E201638, type metadata accessor for TranscriptProtoShimParameter);

  return sub_23C8711F4();
}

uint64_t sub_23C773014()
{
  sub_23C8314AC(&qword_27E201638, type metadata accessor for TranscriptProtoShimParameter);

  return sub_23C871204();
}

uint64_t sub_23C773094()
{
  result = MEMORY[0x23EED7100](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27E200470 = 0xD000000000000018;
  *algn_27E200478 = 0x800000023C8AFDF0;
  return result;
}

uint64_t sub_23C7731B4(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C773304(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203598, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7733A4()
{
  sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C773410()
{
  sub_23C8314AC(&qword_27E202168, type metadata accessor for TranscriptProtoShimParameter.StringQuery);

  return sub_23C871204();
}

uint64_t sub_23C7734A8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200498);
  __swift_project_value_buffer(v0, qword_27E200498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23C873CF0;
  v4 = v15 + v3;
  v5 = v15 + v3 + v1[14];
  *(v15 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "handle";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "isMe";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "id";
  *(v13 + 1) = 2;
  v13[16] = 2;
  v8();
  return sub_23C871324();
}