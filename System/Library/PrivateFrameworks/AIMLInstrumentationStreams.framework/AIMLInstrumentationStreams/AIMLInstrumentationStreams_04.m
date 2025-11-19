uint64_t sub_23C5C71A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
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
  sub_23C5855B0(a1, v14, &qword_27E1FA540, &unk_23C8791D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA540, &unk_23C8791D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_23C5EDD24(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
    return sub_23C585C34(v36, &qword_27E1FACA8, &unk_23C87B940);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA540, &unk_23C8791D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C5C775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
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
  sub_23C5855B0(a1, v14, &qword_27E1FA540, &unk_23C8791D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA540, &unk_23C8791D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      sub_23C5EDD24(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
    return sub_23C585C34(v36, &qword_27E1FACA8, &unk_23C87B940);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA540, &unk_23C8791D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C5C7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ContextProtoUIControlTool(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACD0, &qword_23C879018);
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
  sub_23C5855B0(a1, v14, &qword_27E1FA540, &unk_23C8791D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FA540, &unk_23C8791D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C5EDD24(v14, v22, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C5EDD24(v22, v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FACD0, &qword_23C879018);
      v35 = v44;
      sub_23C5EDD24(v20, v44, type metadata accessor for ContextProtoUIControlTool);
      sub_23C5EDD24(v35, v28, type metadata accessor for ContextProtoUIControlTool);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C5EDAB0(&qword_27E1FA8E0, type metadata accessor for ContextProtoUIControlTool);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FACD0, &qword_23C879018);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FACD0, &qword_23C879018);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FACD0, &qword_23C879018);
    return sub_23C585C34(v36, &qword_27E1FACD0, &qword_23C879018);
  }

  else
  {
    v39 = v43;
    sub_23C5EDD24(v36, v43, type metadata accessor for ContextProtoUIControlTool);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FACD0, &qword_23C879018);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FA540, &unk_23C8791D0);
    sub_23C5EDD24(v39, v40, type metadata accessor for ContextProtoUIControlTool);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ContextProtoRetrievedTool.Definition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FA540, &unk_23C8791D0);
  v12 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C5C8700(v3, a1, a2, a3);
    }

    else
    {
      sub_23C5C84CC(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_23C5C8938(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_23C5C8B70(v3, a1, a2, a3);
  }

  else
  {
    sub_23C5C8DA8(v3, a1, a2, a3);
  }

  result = sub_23C5EDCC4(v11, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for ContextProtoRetrievedTool.Definition(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5C84CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA540, &unk_23C8791D0);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA540, &unk_23C8791D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C5C8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA540, &unk_23C8791D0);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA540, &unk_23C8791D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    sub_23C5EDAB0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C5C8938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA540, &unk_23C8791D0);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA540, &unk_23C8791D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C5C8B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA540, &unk_23C8791D0);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA540, &unk_23C8791D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C5C8DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoUIControlTool(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FA540, &unk_23C8791D0);
  v13 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FA540, &unk_23C8791D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C5EDD24(v8, v12, type metadata accessor for ContextProtoUIControlTool);
    sub_23C5EDAB0(&qword_27E1FA8E0, type metadata accessor for ContextProtoUIControlTool);
    sub_23C871304();
    return sub_23C5EDCC4(v12, type metadata accessor for ContextProtoUIControlTool);
  }

  result = sub_23C5EDCC4(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C5C9044()
{
  if (qword_27E1F82A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1FA2F0;

  return v0;
}

uint64_t sub_23C5C90DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9F8, type metadata accessor for ContextProtoRetrievedTool.Definition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C917C()
{
  sub_23C5EDAB0(&qword_27E1FA8C8, type metadata accessor for ContextProtoRetrievedTool.Definition);

  return sub_23C8711F4();
}

uint64_t sub_23C5C91E8()
{
  sub_23C5EDAB0(&qword_27E1FA8C8, type metadata accessor for ContextProtoRetrievedTool.Definition);

  return sub_23C871204();
}

uint64_t sub_23C5C9284()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA318);
  __swift_project_value_buffer(v0, qword_27E1FA318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "appBundleId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "command";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "commandId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "toolDef";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoUIControlTool.decodeMessage<A>(decoder:)()
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
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_23C5C95AC();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_23C871154();
    }
  }
}

uint64_t sub_23C5C95AC()
{
  v0 = *(type metadata accessor for ContextProtoUIControlTool(0) + 28);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  return sub_23C8711A4();
}

uint64_t ContextProtoUIControlTool.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[1])
  {
    v8 = *v3;
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    if (v3[3])
    {
      v9 = v3[2];
      sub_23C8712C4();
    }

    if (v3[5])
    {
      v10 = v3[4];
      sub_23C8712C4();
    }

    sub_23C5C974C(v3, v7, a2, a3);
    v11 = v3 + *(type metadata accessor for ContextProtoUIControlTool(0) + 32);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5C974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoUIControlTool(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C5EDAB0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_23C5C99B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v4 = *(a1 + 28);
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 32)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5C9A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5C9ACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5C9B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9F0, type metadata accessor for ContextProtoUIControlTool);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5C9C10()
{
  sub_23C5EDAB0(&qword_27E1FA8E0, type metadata accessor for ContextProtoUIControlTool);

  return sub_23C8711F4();
}

uint64_t sub_23C5C9C7C()
{
  sub_23C5EDAB0(&qword_27E1FA8E0, type metadata accessor for ContextProtoUIControlTool);

  return sub_23C871204();
}

uint64_t sub_23C5C9D18()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA330);
  __swift_project_value_buffer(v0, qword_27E1FA330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "invocationString";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoSampleInvocation.decodeMessage<A>(decoder:)()
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
      sub_23C8710D4();
    }
  }

  return result;
}

uint64_t ContextProtoSampleInvocation.traverse<A>(visitor:)()
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
    if (v0[4] == 0.0 || (result = sub_23C871274(), !v1))
    {
      v6 = v0 + *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static ContextProtoSampleInvocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5CA164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C5CA1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9E8, type metadata accessor for ContextProtoSampleInvocation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CA288()
{
  sub_23C5EDAB0(&qword_27E1FA528, type metadata accessor for ContextProtoSampleInvocation);

  return sub_23C8711F4();
}

uint64_t sub_23C5CA2F4()
{
  sub_23C5EDAB0(&qword_27E1FA528, type metadata accessor for ContextProtoSampleInvocation);

  return sub_23C871204();
}

uint64_t sub_23C5CA370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5CA458()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA348);
  __swift_project_value_buffer(v0, qword_27E1FA348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "definition";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoToolRetrievalType.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeIdentifier(0);
        sub_23C5EDAB0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C5CA744();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5CA744()
{
  v0 = *(type metadata accessor for ContextProtoToolRetrievalType(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  sub_23C5EDAB0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  return sub_23C8711A4();
}

uint64_t sub_23C5CA84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
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

uint64_t sub_23C5CA8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C5EDAB0(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C5CAB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB18, &qword_23C878EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoToolRetrievalType(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB18, &qword_23C878EF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB18, &qword_23C878EF0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_23C5EDAB0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
}

uint64_t sub_23C5CAD98@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(a1 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5CAEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9E0, type metadata accessor for ContextProtoToolRetrievalType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CAF4C()
{
  sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType);

  return sub_23C8711F4();
}

uint64_t sub_23C5CAFB8()
{
  sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType);

  return sub_23C871204();
}

uint64_t sub_23C5CB054()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA360);
  __swift_project_value_buffer(v0, qword_27E1FA360);
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
  *v10 = "appBundleIds";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoToolQuery.decodeMessage<A>(decoder:)()
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
      sub_23C871124();
    }
  }

  return result;
}

uint64_t ContextProtoToolQuery.traverse<A>(visitor:)()
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
      v6 = v0 + *(type metadata accessor for ContextProtoToolQuery(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static ContextProtoToolQuery.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0 || (sub_23C5D25E0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ContextProtoToolQuery(0) + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5CB49C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5CB528(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9D8, type metadata accessor for ContextProtoToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CB5C8()
{
  sub_23C5EDAB0(&qword_27E1FA918, type metadata accessor for ContextProtoToolQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C5CB634()
{
  sub_23C5EDAB0(&qword_27E1FA918, type metadata accessor for ContextProtoToolQuery);

  return sub_23C871204();
}

uint64_t sub_23C5CB6B0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0 || (sub_23C5D25E0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C5CB834(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_23C5EDAB0(a5, a6);
      sub_23C8711A4();
    }
  }

  return result;
}

uint64_t sub_23C5CB950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5CB9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAAD8, &qword_23C878EC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAD8, &qword_23C878EC0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C5EDAB0(&qword_27E1FA8C8, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoRetrievedTool.Definition);
}

uint64_t sub_23C5CBC4C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5CBD0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9D0, type metadata accessor for ContextProtoToolQueryOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CBDAC()
{
  sub_23C5EDAB0(&qword_27E1FA930, type metadata accessor for ContextProtoToolQueryOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C5CBE18()
{
  sub_23C5EDAB0(&qword_27E1FA930, type metadata accessor for ContextProtoToolQueryOutput);

  return sub_23C871204();
}

uint64_t sub_23C5CBEB4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA390);
  __swift_project_value_buffer(v0, qword_27E1FA390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "originalSubQuery";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrittenQuery";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retrievedTools";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "types";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_23C8710D4();
            goto LABEL_5;
          case 4:
            v3 = v0;
            type metadata accessor for ContextProtoRetrievedTool(0);
            sub_23C5EDAB0(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool);
            break;
          case 5:
            v3 = v0;
            type metadata accessor for ContextProtoToolRetrievalType(0);
            sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_23C871194();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.traverse<A>(visitor:)()
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
    v6 = *(v0 + 3);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v0 + 2) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_23C8712C4(), !v1))
    {
      if (v0[8] == 0.0 || (result = sub_23C871274(), !v1))
      {
        if (!*(*(v0 + 5) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_23C5EDAB0(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool), result = sub_23C8712F4(), !v1))
        {
          if (!*(*(v0 + 6) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_23C5EDAB0(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType), result = sub_23C8712F4(), !v1))
          {
            v8 = v0 + *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C5CC530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a2 + 40) = MEMORY[0x277D84F90];
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_23C5CC594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CC608(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C5CC67C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_23C5CC6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9C8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CC770()
{
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);

  return sub_23C8711F4();
}

uint64_t sub_23C5CC7DC()
{
  sub_23C5EDAB0(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);

  return sub_23C871204();
}

uint64_t sub_23C5CC878()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA3A8);
  __swift_project_value_buffer(v0, qword_27E1FA3A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typedValue";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchMetadata";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoSpanMatchedEntity.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C5CCB64();
      }

      else if (result == 2)
      {
        type metadata accessor for ContextProtoEntityMatch(0);
        sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5CCB64()
{
  v0 = *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t ContextProtoSpanMatchedEntity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C5CCD14(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ContextProtoEntityMatch(0);
      sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch);
      sub_23C8712F4();
    }

    v8 = v5 + *(type metadata accessor for ContextProtoSpanMatchedEntity(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5CCD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDAB0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C5CCF7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5CD020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CD094(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CD138(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9C0, type metadata accessor for ContextProtoSpanMatchedEntity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CD1D8()
{
  sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity);

  return sub_23C8711F4();
}

uint64_t sub_23C5CD244()
{
  sub_23C5EDAB0(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity);

  return sub_23C871204();
}

uint64_t sub_23C5CD2E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA3C0);
  __swift_project_value_buffer(v0, qword_27E1FA3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23C8755C0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "sourceItemIdentifier";
  *(v5 + 8) = 20;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "entityName";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "startIndex";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "endIndex";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "matchScore";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "matchProperties";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "matcherType";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "originAppBundleId";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "userUtterance";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "identifier";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ContextProtoEntityMatch.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 7)
      {
        if (result <= 9)
        {
          if (result == 8)
          {
            sub_23C5CD870();
          }

          else
          {
            sub_23C5EA834();
            sub_23C8710A4();
          }
        }

        else
        {
          if (result == 10 || result == 11)
          {
LABEL_4:
            sub_23C871164();
            goto LABEL_5;
          }

          if (result == 12)
          {
            v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 52);
            sub_23C871154();
          }
        }
      }

      else if (result <= 3)
      {
        if (result == 1 || result == 3)
        {
          goto LABEL_4;
        }
      }

      else if (result == 4 || result == 5)
      {
        sub_23C871114();
      }

      else if (result == 7)
      {
        sub_23C8710D4();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C5CD870()
{
  v0 = *(type metadata accessor for ContextProtoEntityMatch(0) + 48);
  type metadata accessor for ContextProtoMatchProperties(0);
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties);
  return sub_23C8711A4();
}

uint64_t ContextProtoEntityMatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(v3 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_23C8712C4(), !v4))
    {
      if (!*(v3 + 32) || (result = sub_23C871294(), !v4))
      {
        if (!*(v3 + 40) || (result = sub_23C871294(), !v4))
        {
          if (*(v3 + 48) == 0.0 || (result = sub_23C871274(), !v4))
          {
            result = sub_23C5CDB28(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 52))
              {
                v19 = *(v3 + 52);
                sub_23C5EA834();
                sub_23C871254();
              }

              v14 = *(v3 + 64);
              v15 = HIBYTE(v14) & 0xF;
              if ((v14 & 0x2000000000000000) == 0)
              {
                v15 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
              }

              if (v15)
              {
                sub_23C8712C4();
              }

              v16 = *(v3 + 80);
              v17 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) == 0)
              {
                v17 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
              }

              if (v17)
              {
                sub_23C8712C4();
              }

              sub_23C5CDD44(v3);
              v18 = v3 + *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
              return sub_23C870F14();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C5CDB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB58, &unk_23C8791F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v10 = *(matched - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](matched);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoEntityMatch(0);
  sub_23C5855B0(a1 + *(v14 + 48), v8, &qword_27E1FAB58, &unk_23C8791F0);
  if ((*(v10 + 48))(v8, 1, matched) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB58, &unk_23C8791F0);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoMatchProperties);
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoMatchProperties);
}

uint64_t sub_23C5CDD44(uint64_t a1)
{
  result = type metadata accessor for ContextProtoEntityMatch(0);
  v3 = (a1 + *(result + 52));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C5CDE08@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[12];
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a2 + v4, 1, 1, matched);
  v6 = a1[14];
  v7 = (a2 + a1[13]);
  *v7 = 0;
  v7[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 45) = 0;
  a2[7] = 0;
  a2[8] = 0xE000000000000000;
  a2[9] = 0;
  a2[10] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C5CDEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CDF38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C5CDFAC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_23C5CE000(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9B8, type metadata accessor for ContextProtoEntityMatch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CE0A0()
{
  sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch);

  return sub_23C8711F4();
}

uint64_t sub_23C5CE10C()
{
  sub_23C5EDAB0(&qword_27E1FA590, type metadata accessor for ContextProtoEntityMatch);

  return sub_23C871204();
}

uint64_t sub_23C5CE1A8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FA3D8);
  __swift_project_value_buffer(v0, qword_27E1FA3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "maxTokenCount";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matchedTokenCount";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "matchedAliasTypes";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ContextProtoMatchProperties.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_23C5CE47C();
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871104();
    }
  }

  return result;
}

uint64_t sub_23C5CE47C()
{
  v0 = *(type metadata accessor for ContextProtoMatchProperties(0) + 24);
  type metadata accessor for ContextProtoAliasTypes(0);
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes);
  return sub_23C8711A4();
}

uint64_t ContextProtoMatchProperties.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if ((*(v3 + 8) & 1) == 0)
  {
    v8 = *v3;
    result = sub_23C871294();
  }

  if (!v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      v9 = *(v3 + 16);
      sub_23C871294();
    }

    sub_23C5CE5F4(v3, v7, a2, a3);
    v10 = v3 + *(type metadata accessor for ContextProtoMatchProperties(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C5CE5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB48, &qword_23C878F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoAliasTypes(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_23C5855B0(a1 + *(matched + 24), v8, &qword_27E1FAB48, &qword_23C878F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB48, &qword_23C878F10);
  }

  sub_23C5EDD24(v8, v13, type metadata accessor for ContextProtoAliasTypes);
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes);
  sub_23C871304();
  return sub_23C5EDCC4(v13, type metadata accessor for ContextProtoAliasTypes);
}

uint64_t sub_23C5CE85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5CE908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CE97C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CEA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9B0, type metadata accessor for ContextProtoMatchProperties);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CEAC0()
{
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties);

  return sub_23C8711F4();
}

uint64_t sub_23C5CEB2C()
{
  sub_23C5EDAB0(&qword_27E1FA980, type metadata accessor for ContextProtoMatchProperties);

  return sub_23C871204();
}

uint64_t sub_23C5CEBE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23C871344();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23C873D10;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = a3;
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_23C871314();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_23C871324();
}

uint64_t sub_23C5CED7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23C871344();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t ContextProtoAliasTypes.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C5EA888();
        sub_23C871064();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ContextProtoAliasTypes.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_23C5EA888(), result = sub_23C871234(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t static ContextProtoAliasTypes.== infix(_:_:)(uint64_t result, uint64_t *a2)
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
    v8 = *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
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
  }

  return result;
}

uint64_t sub_23C5CF0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5CF120(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5CF1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAB0(&qword_27E1FA9A8, type metadata accessor for ContextProtoAliasTypes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C5CF264@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23C871344();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_23C5CF300()
{
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes);

  return sub_23C8711F4();
}

uint64_t sub_23C5CF36C()
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5CF3C4()
{
  sub_23C5EDAB0(&qword_27E1FA998, type metadata accessor for ContextProtoAliasTypes);

  return sub_23C871204();
}

uint64_t sub_23C5CF440()
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5CF494(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23C5E1250(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

unint64_t sub_23C5CF53C()
{
  result = qword_27E1FA408;
  if (!qword_27E1FA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA408);
  }

  return result;
}

uint64_t sub_23C5CF590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v146 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB48, &qword_23C878F10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v145 = &v125 - v10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB50, &qword_23C878F18);
  v11 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v149 = &v125 - v12;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v13 = *(matched - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](matched);
  v150 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB58, &unk_23C8791F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v152 = &v125 - v18;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB60, &qword_23C878F20);
  v19 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v155 = &v125 - v20;
  v160 = type metadata accessor for ContextProtoEntityMatch(0);
  v157 = *(v160 - 1);
  v21 = *(v157 + 64);
  v22 = MEMORY[0x28223BE20](v160);
  v159 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v125 - v24;
  v26 = type metadata accessor for ToolKitProtoTypedValue(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v148 = (&v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v153 = (&v125 - v32);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v33 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v35 = &v125 - v34;
  v36 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v156 = &v125 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v161 = &v125 - v42;
  v43 = *(a1 + 16);
  if (v43 != *(a2 + 16))
  {
LABEL_95:
    v119 = 0;
    return v119 & 1;
  }

  if (!v43 || a1 == a2)
  {
    v119 = 1;
    return v119 & 1;
  }

  v140 = v26;
  v144 = v40;
  v127 = v4;
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v45 = a1 + v44;
  v139 = a2 + v44;
  v138 = (v27 + 48);
  v134 = (v13 + 48);
  v46 = 0;
  v126 = (v5 + 48);
  v47 = *(v41 + 72);
  v48 = v156;
  v49 = v161;
  v130 = v35;
  v143 = v43;
  v129 = a1 + v44;
  v128 = v47;
  v137 = v25;
  while (1)
  {
    result = sub_23C5EDC08(v45 + v47 * v46, v49, type metadata accessor for ContextProtoSpanMatchedEntity);
    if (v46 == v143)
    {
      break;
    }

    sub_23C5EDC08(v139 + v47 * v46, v48, type metadata accessor for ContextProtoSpanMatchedEntity);
    v51 = *(v144 + 20);
    v52 = *(v154 + 48);
    sub_23C5855B0(v49 + v51, v35, &qword_27E1FAB68, &unk_23C879140);
    sub_23C5855B0(v48 + v51, &v35[v52], &qword_27E1FAB68, &unk_23C879140);
    v53 = *v138;
    v54 = v35;
    v55 = v35;
    v56 = v140;
    v57 = (*v138)(v54, 1, v140);
    v141 = v46;
    if (v57 == 1)
    {
      v58 = v53((v55 + v52), 1, v56);
      v49 = v161;
      if (v58 != 1)
      {
        goto LABEL_82;
      }

      result = sub_23C585C34(v55, &qword_27E1FAB68, &unk_23C879140);
      v59 = v159;
      v60 = v137;
    }

    else
    {
      v61 = v153;
      sub_23C5855B0(v55, v153, &qword_27E1FAB68, &unk_23C879140);
      if (v53((v55 + v52), 1, v56) == 1)
      {
        sub_23C5EDCC4(v61, type metadata accessor for ToolKitProtoTypedValue);
        v49 = v161;
LABEL_82:
        sub_23C585C34(v55, &qword_27E1FAB70, &qword_23C878F28);
        goto LABEL_94;
      }

      v62 = v148;
      sub_23C5EDD24(v55 + v52, v148, type metadata accessor for ToolKitProtoTypedValue);
      v63 = *v61;
      v64 = *v62;
      v49 = v161;
      if ((~v63 & 0xF000000000000007) != 0)
      {
        v163 = v63;
        v60 = v137;
        if ((~v64 & 0xF000000000000007) == 0)
        {
          sub_23C56F2C0(v63);
          sub_23C56F2C0(v64);
          sub_23C56F2C0(v63);

LABEL_86:
          sub_23C56F2D8(v63);
          sub_23C56F2D8(v64);
LABEL_87:
          sub_23C5EDCC4(v62, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C5EDCC4(v153, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C585C34(v55, &qword_27E1FAB68, &unk_23C879140);
LABEL_94:
          sub_23C5EDCC4(v48, type metadata accessor for ContextProtoSpanMatchedEntity);
          sub_23C5EDCC4(v49, type metadata accessor for ContextProtoSpanMatchedEntity);
          goto LABEL_95;
        }

        v162 = v64;
        sub_23C56F2C0(v63);
        sub_23C56F2C0(v64);
        sub_23C56F2C0(v63);
        v65 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v163, &v162);

        sub_23C56F2D8(v63);
        if ((v65 & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        sub_23C56F2C0(v63);
        sub_23C56F2C0(v64);
        v60 = v137;
        if ((~v64 & 0xF000000000000007) != 0)
        {
          goto LABEL_86;
        }

        sub_23C56F2D8(v63);
      }

      v66 = *(v56 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v67 = v153;
      v68 = sub_23C871754();
      sub_23C5EDCC4(v62, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C5EDCC4(v67, type metadata accessor for ToolKitProtoTypedValue);
      result = sub_23C585C34(v55, &qword_27E1FAB68, &unk_23C879140);
      v59 = v159;
      if ((v68 & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    v69 = *v49;
    v70 = *v48;
    v71 = *(*v49 + 16);
    if (v71 != *(*v48 + 16))
    {
      goto LABEL_94;
    }

    if (v71 && v69 != v70)
    {
      v72 = 0;
      v73 = (*(v157 + 80) + 32) & ~*(v157 + 80);
      v136 = v69 + v73;
      v135 = v70 + v73;
      v132 = v69;
      v133 = v70;
      v131 = v71;
      do
      {
        if (v72 >= *(v69 + 16))
        {
          goto LABEL_98;
        }

        v74 = v72;
        v75 = *(v157 + 72) * v72;
        result = sub_23C5EDC08(v136 + v75, v60, type metadata accessor for ContextProtoEntityMatch);
        v76 = *(v70 + 16);
        v142 = v74;
        if (v74 >= v76)
        {
          goto LABEL_99;
        }

        sub_23C5EDC08(v135 + v75, v59, type metadata accessor for ContextProtoEntityMatch);
        if ((*v60 != *v59 || *(v60 + 8) != *(v59 + 8)) && (sub_23C872014() & 1) == 0 || (*(v60 + 16) != *(v59 + 16) || *(v60 + 24) != *(v59 + 24)) && (sub_23C872014() & 1) == 0 || *(v60 + 32) != *(v59 + 32) || *(v60 + 40) != *(v59 + 40) || *(v60 + 48) != *(v59 + 48))
        {
          goto LABEL_93;
        }

        v77 = v160[12];
        v78 = *(v151 + 48);
        v79 = v155;
        sub_23C5855B0(v60 + v77, v155, &qword_27E1FAB58, &unk_23C8791F0);
        sub_23C5855B0(v59 + v77, v79 + v78, &qword_27E1FAB58, &unk_23C8791F0);
        v80 = *v134;
        v81 = matched;
        if ((*v134)(v79, 1, matched) == 1)
        {
          v82 = v80(v79 + v78, 1, v81) == 1;
          v83 = v79;
          if (!v82)
          {
            goto LABEL_84;
          }

          sub_23C585C34(v79, &qword_27E1FAB58, &unk_23C8791F0);
          v48 = v156;
          v49 = v161;
          v70 = v133;
        }

        else
        {
          v84 = v152;
          sub_23C5855B0(v79, v152, &qword_27E1FAB58, &unk_23C8791F0);
          if (v80(v79 + v78, 1, v81) == 1)
          {
            sub_23C5EDCC4(v84, type metadata accessor for ContextProtoMatchProperties);
            v83 = v79;
LABEL_84:
            v123 = &qword_27E1FAB60;
            v124 = &qword_23C878F20;
            goto LABEL_92;
          }

          v85 = v150;
          sub_23C5EDD24(v79 + v78, v150, type metadata accessor for ContextProtoMatchProperties);
          v86 = *(v85 + 8);
          if (*(v84 + 8))
          {
            v87 = matched;
            if (!*(v85 + 8))
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (*v84 != *v85)
            {
              v86 = 1;
            }

            v87 = matched;
            if (v86)
            {
              goto LABEL_91;
            }
          }

          v88 = *(v85 + 24);
          if (*(v84 + 24))
          {
            if (!*(v85 + 24))
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (*(v84 + 16) != *(v85 + 16))
            {
              v88 = 1;
            }

            if (v88)
            {
              goto LABEL_91;
            }
          }

          v89 = *(v87 + 24);
          v90 = *(v147 + 48);
          v91 = v149;
          sub_23C5855B0(v84 + v89, v149, &qword_27E1FAB48, &qword_23C878F10);
          sub_23C5855B0(v85 + v89, v91 + v90, &qword_27E1FAB48, &qword_23C878F10);
          v92 = *v126;
          v93 = v127;
          if ((*v126)(v91, 1, v127) == 1)
          {
            v94 = v92(v91 + v90, 1, v93);
            v84 = v152;
            v85 = v150;
            v59 = v159;
            if (v94 != 1)
            {
              goto LABEL_89;
            }

            sub_23C585C34(v91, &qword_27E1FAB48, &qword_23C878F10);
            v70 = v133;
          }

          else
          {
            v95 = v145;
            sub_23C5855B0(v91, v145, &qword_27E1FAB48, &qword_23C878F10);
            if (v92(v91 + v90, 1, v93) == 1)
            {
              sub_23C5EDCC4(v95, type metadata accessor for ContextProtoAliasTypes);
              v85 = v150;
              v84 = v152;
              v59 = v159;
LABEL_89:
              v120 = &qword_27E1FAB50;
              v121 = &qword_23C878F18;
              v122 = v91;
LABEL_90:
              sub_23C585C34(v122, v120, v121);
LABEL_91:
              sub_23C5EDCC4(v85, type metadata accessor for ContextProtoMatchProperties);
              sub_23C5EDCC4(v84, type metadata accessor for ContextProtoMatchProperties);
              v123 = &qword_27E1FAB58;
              v124 = &unk_23C8791F0;
              v83 = v155;
LABEL_92:
              sub_23C585C34(v83, v123, v124);
              v48 = v156;
              v49 = v161;
LABEL_93:
              sub_23C5EDCC4(v59, type metadata accessor for ContextProtoEntityMatch);
              sub_23C5EDCC4(v60, type metadata accessor for ContextProtoEntityMatch);
              goto LABEL_94;
            }

            v96 = v91 + v90;
            v97 = v146;
            sub_23C5EDD24(v96, v146, type metadata accessor for ContextProtoAliasTypes);
            v98 = *v95;
            v99 = *v97;
            v100 = *(*v95 + 16);
            v101 = v95;
            v85 = v150;
            v84 = v152;
            v87 = matched;
            v59 = v159;
            v70 = v133;
            if (v100 != *(*v97 + 16))
            {
              goto LABEL_80;
            }

            if (v100 && v98 != v99)
            {
              v102 = (v98 + 32);
              v103 = (v99 + 32);
              while (*v102 == *v103)
              {
                ++v102;
                ++v103;
                if (!--v100)
                {
                  goto LABEL_58;
                }
              }

LABEL_80:
              sub_23C5EDCC4(v146, type metadata accessor for ContextProtoAliasTypes);
              sub_23C5EDCC4(v101, type metadata accessor for ContextProtoAliasTypes);
              v120 = &qword_27E1FAB48;
              v121 = &qword_23C878F10;
              v122 = v149;
              goto LABEL_90;
            }

LABEL_58:
            v104 = *(v127 + 20);
            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
            v105 = v85;
            v106 = v146;
            v107 = sub_23C871754();
            v108 = v106;
            v85 = v105;
            v59 = v159;
            v84 = v152;
            sub_23C5EDCC4(v108, type metadata accessor for ContextProtoAliasTypes);
            sub_23C5EDCC4(v101, type metadata accessor for ContextProtoAliasTypes);
            sub_23C585C34(v149, &qword_27E1FAB48, &qword_23C878F10);
            if ((v107 & 1) == 0)
            {
              goto LABEL_91;
            }
          }

          v109 = *(v87 + 28);
          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
          v110 = sub_23C871754();
          sub_23C5EDCC4(v85, type metadata accessor for ContextProtoMatchProperties);
          sub_23C5EDCC4(v84, type metadata accessor for ContextProtoMatchProperties);
          sub_23C585C34(v155, &qword_27E1FAB58, &unk_23C8791F0);
          v48 = v156;
          v49 = v161;
          if ((v110 & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        if (*(v60 + 52) != *(v59 + 52) || (*(v60 + 56) != *(v59 + 56) || *(v60 + 64) != *(v59 + 64)) && (sub_23C872014() & 1) == 0 || (*(v60 + 72) != *(v59 + 72) || *(v60 + 80) != *(v59 + 80)) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_93;
        }

        v111 = v160[13];
        v112 = (v60 + v111);
        v113 = *(v60 + v111 + 8);
        v114 = (v59 + v111);
        v115 = v114[1];
        if (v113)
        {
          if (!v115 || (*v112 != *v114 || v113 != v115) && (sub_23C872014() & 1) == 0)
          {
            goto LABEL_93;
          }
        }

        else if (v115)
        {
          goto LABEL_93;
        }

        v116 = v160[14];
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v117 = sub_23C871754();
        sub_23C5EDCC4(v59, type metadata accessor for ContextProtoEntityMatch);
        result = sub_23C5EDCC4(v60, type metadata accessor for ContextProtoEntityMatch);
        v69 = v132;
        if ((v117 & 1) == 0)
        {
          goto LABEL_94;
        }

        v72 = v142 + 1;
      }

      while (v142 + 1 != v131);
    }

    v118 = *(v144 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v119 = sub_23C871754();
    sub_23C5EDCC4(v48, type metadata accessor for ContextProtoSpanMatchedEntity);
    sub_23C5EDCC4(v49, type metadata accessor for ContextProtoSpanMatchedEntity);
    if (v119)
    {
      v46 = v141 + 1;
      v45 = v129;
      v47 = v128;
      v35 = v130;
      if (v141 + 1 != v143)
      {
        continue;
      }
    }

    return v119 & 1;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_23C5D08D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_23C5EDC08(v21, v18, a4);
        sub_23C5EDC08(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_23C5EDCC4(v15, a6);
        sub_23C5EDCC4(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_23C5D0A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSampleInvocation(0);
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v76 - v10;
  v12 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v88 = *(v12 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v76 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD0, &qword_23C878EB8);
  v20 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v22 = &v76 - v21;
  v92 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v23 = *(v92 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v91 = &v76 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v93 = &v76 - v31;
  v94 = type metadata accessor for ContextProtoRetrievedTool(0);
  v32 = *(*(v94 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v94);
  v98 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v97 = &v76 - v36;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
LABEL_36:
    v75 = 0;
    return v75 & 1;
  }

  if (!v37 || a1 == a2)
  {
    v75 = 1;
    return v75 & 1;
  }

  v77 = v19;
  v79 = v12;
  v80 = v15;
  v38 = 0;
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = a1 + v39;
  v86 = a2 + v39;
  v87 = v37;
  v84 = v22;
  v85 = (v23 + 48);
  v78 = (v88 + 48);
  v41 = *(v35 + 72);
  v42 = v97;
  v82 = a1 + v39;
  v83 = v29;
  v81 = v41;
  while (1)
  {
    result = sub_23C5EDC08(v40 + v41 * v38, v42, type metadata accessor for ContextProtoRetrievedTool);
    if (v38 == v87)
    {
      goto LABEL_45;
    }

    v88 = v38;
    v44 = v86 + v41 * v38;
    v45 = v98;
    sub_23C5EDC08(v44, v98, type metadata accessor for ContextProtoRetrievedTool);
    v46 = v93;
    v47 = *(v94 + 28);
    v48 = *(v29 + 48);
    sub_23C5855B0(v42 + v47, v93, &qword_27E1FAAD8, &qword_23C878EC0);
    sub_23C5855B0(v45 + v47, v46 + v48, &qword_27E1FAAD8, &qword_23C878EC0);
    v49 = *v85;
    v50 = v92;
    if ((*v85)(v46, 1, v92) == 1)
    {
      if (v49(v46 + v48, 1, v50) != 1)
      {
        goto LABEL_39;
      }

      result = sub_23C585C34(v46, &qword_27E1FAAD8, &qword_23C878EC0);
      goto LABEL_16;
    }

    v51 = v91;
    sub_23C5855B0(v46, v91, &qword_27E1FAAD8, &qword_23C878EC0);
    v52 = v49(v46 + v48, 1, v50);
    v53 = v80;
    if (v52 == 1)
    {
      sub_23C5EDCC4(v51, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_39:
      sub_23C585C34(v46, &qword_27E1FAAE0, &qword_23C878EC8);
      goto LABEL_35;
    }

    v54 = v90;
    sub_23C5EDD24(v46 + v48, v90, type metadata accessor for ContextProtoRetrievedTool.Definition);
    v55 = *(v89 + 48);
    sub_23C5855B0(v51, v22, &qword_27E1FA540, &unk_23C8791D0);
    sub_23C5855B0(v54, &v22[v55], &qword_27E1FA540, &unk_23C8791D0);
    v56 = v79;
    v57 = *v78;
    if ((*v78)(v22, 1, v79) == 1)
    {
      v58 = v57(&v22[v55], 1, v56);
      v59 = v91;
      if (v58 != 1)
      {
        goto LABEL_41;
      }

      sub_23C585C34(v22, &qword_27E1FA540, &unk_23C8791D0);
      v60 = v90;
      goto LABEL_15;
    }

    v61 = v77;
    sub_23C5855B0(v22, v77, &qword_27E1FA540, &unk_23C8791D0);
    if (v57(&v22[v55], 1, v56) == 1)
    {
      sub_23C5EDCC4(v61, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      v59 = v91;
LABEL_41:
      sub_23C585C34(v22, &qword_27E1FAAD0, &qword_23C878EB8);
      v60 = v90;
LABEL_42:
      sub_23C5EDCC4(v60, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C5EDCC4(v59, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C585C34(v93, &qword_27E1FAAD8, &qword_23C878EC0);
LABEL_35:
      sub_23C5EDCC4(v98, type metadata accessor for ContextProtoRetrievedTool);
      sub_23C5EDCC4(v97, type metadata accessor for ContextProtoRetrievedTool);
      goto LABEL_36;
    }

    sub_23C5EDD24(&v22[v55], v53, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    v62 = static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)(v61, v53);
    sub_23C5EDCC4(v53, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C5EDCC4(v61, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    sub_23C585C34(v22, &qword_27E1FA540, &unk_23C8791D0);
    v59 = v91;
    v50 = v92;
    v60 = v90;
    if ((v62 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_15:
    v63 = *(v50 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    LOBYTE(v63) = sub_23C871754();
    sub_23C5EDCC4(v60, type metadata accessor for ContextProtoRetrievedTool.Definition);
    sub_23C5EDCC4(v59, type metadata accessor for ContextProtoRetrievedTool.Definition);
    result = sub_23C585C34(v93, &qword_27E1FAAD8, &qword_23C878EC0);
    if ((v63 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_16:
    if (*v97 != *v98)
    {
      goto LABEL_35;
    }

    v64 = *(v97 + 8);
    v65 = *(v98 + 8);
    v66 = *(v64 + 16);
    if (v66 != *(v65 + 16))
    {
      goto LABEL_35;
    }

    if (v66 && v64 != v65)
    {
      break;
    }

LABEL_29:
    if (*(v97 + 16) != *(v98 + 16))
    {
      goto LABEL_35;
    }

    v73 = *(v94 + 32);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v42 = v97;
    v74 = v98;
    v75 = sub_23C871754();
    sub_23C5EDCC4(v74, type metadata accessor for ContextProtoRetrievedTool);
    sub_23C5EDCC4(v42, type metadata accessor for ContextProtoRetrievedTool);
    if (v75)
    {
      v38 = v88 + 1;
      v29 = v83;
      v22 = v84;
      v41 = v81;
      v40 = v82;
      if (v88 + 1 != v87)
      {
        continue;
      }
    }

    return v75 & 1;
  }

  v67 = 0;
  v68 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v69 = v64 + v68;
  v70 = v65 + v68;
  while (v67 < *(v64 + 16))
  {
    v71 = *(v96 + 72) * v67;
    result = sub_23C5EDC08(v69 + v71, v11, type metadata accessor for ContextProtoSampleInvocation);
    if (v67 >= *(v65 + 16))
    {
      goto LABEL_44;
    }

    sub_23C5EDC08(v70 + v71, v9, type metadata accessor for ContextProtoSampleInvocation);
    if ((*v11 != *v9 || *(v11 + 1) != *(v9 + 1)) && (sub_23C872014() & 1) == 0 || *(v11 + 4) != *(v9 + 4))
    {
      sub_23C5EDCC4(v9, type metadata accessor for ContextProtoSampleInvocation);
      sub_23C5EDCC4(v11, type metadata accessor for ContextProtoSampleInvocation);
      goto LABEL_35;
    }

    v72 = *(v95 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    LOBYTE(v72) = sub_23C871754();
    sub_23C5EDCC4(v9, type metadata accessor for ContextProtoSampleInvocation);
    result = sub_23C5EDCC4(v11, type metadata accessor for ContextProtoSampleInvocation);
    if ((v72 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (v66 == ++v67)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_23C5D15A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v12 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    sub_23C5EDC08(v14, v11, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C5EDC08(v15, v8, type metadata accessor for ToolKitProtoTypedValue);
    v17 = *v11;
    v18 = *v8;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_23C56F2C0(*v11);
    sub_23C56F2C0(v18);
    if ((~v18 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_23C56F2D8(v17);
LABEL_10:
    v20 = *(v4 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v21 = sub_23C871754();
    sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypedValue);
    if (v21)
    {
      v15 += v16;
      v14 += v16;
      if (--v12)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  v24 = *v11;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v23 = v18;
    sub_23C56F2C0(v17);
    sub_23C56F2C0(v18);
    sub_23C56F2C0(v17);
    v19 = _s26AIMLInstrumentationStreams26ToolKitProtoTypedValueKindO2eeoiySbAC_ACtFZ_0(&v24, &v23);

    sub_23C56F2D8(v17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_23C56F2C0(v17);
  sub_23C56F2C0(v18);
  sub_23C56F2C0(v17);

LABEL_15:
  sub_23C56F2D8(v17);
  sub_23C56F2D8(v18);
LABEL_16:
  sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_17:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_23C5D18B4(uint64_t a1, uint64_t a2)
{
  v104 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v104 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v104);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v91 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  v14 = *(*(v103 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v103);
  v98 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v91 - v17;
  v107 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v18 = *(v107 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v107);
  v102 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = &v91 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v109 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v110 = &v91 - v27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v28 = *(*(v112 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v112);
  v108 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v111 = &v91 - v31;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v32 = *(*(updated - 1) + 64);
  v33 = MEMORY[0x28223BE20](updated);
  v35 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v38 = &v91 - v37;
  v39 = *(a1 + 16);
  if (v39 != *(a2 + 16))
  {
LABEL_44:
    v87 = 0;
    return v87 & 1;
  }

  if (!v39 || a1 == a2)
  {
    v87 = 1;
    return v87 & 1;
  }

  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = a1 + v40;
  v106 = (v18 + 48);
  v42 = a2 + v40;
  v95 = (v4 + 48);
  v43 = *(v36 + 72);
  v93 = v7;
  v94 = v43;
  v45 = v107;
  v44 = v108;
  v92 = v12;
  while (1)
  {
    v101 = v41;
    result = sub_23C5EDC08(v41, v38, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (!v39)
    {
      break;
    }

    v99 = v39;
    v100 = v42;
    sub_23C5EDC08(v42, v35, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    v47 = updated[6];
    v48 = *(v112 + 48);
    v49 = v111;
    sub_23C5855B0(&v38[v47], v111, &qword_27E1FAB88, &unk_23C8A1350);
    sub_23C5855B0(&v35[v47], v49 + v48, &qword_27E1FAB88, &unk_23C8A1350);
    v50 = *v106;
    if ((*v106)(v49, 1, v45) == 1)
    {
      if (v50(v49 + v48, 1, v45) != 1)
      {
        goto LABEL_33;
      }

      sub_23C585C34(v49, &qword_27E1FAB88, &unk_23C8A1350);
    }

    else
    {
      sub_23C5855B0(v49, v110, &qword_27E1FAB88, &unk_23C8A1350);
      if (v50(v49 + v48, 1, v45) == 1)
      {
        sub_23C5EDCC4(v110, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_33:
        v88 = &qword_27E1FAB90;
        v89 = &qword_23C878F38;
        v90 = v49;
LABEL_42:
        sub_23C585C34(v90, v88, v89);
LABEL_43:
        sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        sub_23C5EDCC4(v38, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
        goto LABEL_44;
      }

      v51 = v105;
      sub_23C5EDD24(v49 + v48, v105, type metadata accessor for TranscriptProtoASTFlatValue);
      v52 = *(v103 + 48);
      v53 = v97;
      sub_23C5855B0(v110, v97, &qword_27E1FAB78, &unk_23C8A1360);
      sub_23C5855B0(v51, v53 + v52, &qword_27E1FAB78, &unk_23C8A1360);
      v54 = *v95;
      v55 = v104;
      if ((*v95)(v53, 1, v104) == 1)
      {
        if (v54(v53 + v52, 1, v55) != 1)
        {
          goto LABEL_37;
        }

        sub_23C585C34(v53, &qword_27E1FAB78, &unk_23C8A1360);
      }

      else
      {
        v56 = v96;
        sub_23C5855B0(v53, v96, &qword_27E1FAB78, &unk_23C8A1360);
        if (v54(v53 + v52, 1, v55) == 1)
        {
          sub_23C5EDCC4(v56, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_37:
          sub_23C585C34(v53, &qword_27E1FAB80, &qword_23C878F30);
LABEL_38:
          sub_23C5EDCC4(v105, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_23C5EDCC4(v110, type metadata accessor for TranscriptProtoASTFlatValue);
          v88 = &qword_27E1FAB88;
          v89 = &unk_23C8A1350;
          v90 = v111;
          goto LABEL_42;
        }

        v57 = v93;
        sub_23C5EDD24(v53 + v52, v93, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v58 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v56, v57);
        sub_23C5EDCC4(v57, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C5EDCC4(v56, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C585C34(v53, &qword_27E1FAB78, &unk_23C8A1360);
        if ((v58 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v45 = v107;
      v59 = *(v107 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v60 = v110;
      v61 = v105;
      v62 = sub_23C871754();
      sub_23C5EDCC4(v61, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C5EDCC4(v60, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v111, &qword_27E1FAB88, &unk_23C8A1350);
      v44 = v108;
      if ((v62 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if ((sub_23C5D4D58(*v38, *v35) & 1) == 0)
    {
      goto LABEL_43;
    }

    v63 = updated[7];
    v64 = *(v112 + 48);
    sub_23C5855B0(&v38[v63], v44, &qword_27E1FAB88, &unk_23C8A1350);
    sub_23C5855B0(&v35[v63], v44 + v64, &qword_27E1FAB88, &unk_23C8A1350);
    if (v50(v44, 1, v45) == 1)
    {
      if (v50(v44 + v64, 1, v45) != 1)
      {
        goto LABEL_35;
      }

      sub_23C585C34(v44, &qword_27E1FAB88, &unk_23C8A1350);
    }

    else
    {
      sub_23C5855B0(v44, v109, &qword_27E1FAB88, &unk_23C8A1350);
      v65 = v50(v44 + v64, 1, v45);
      v66 = v104;
      if (v65 == 1)
      {
        sub_23C5EDCC4(v109, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_35:
        v88 = &qword_27E1FAB90;
        v89 = &qword_23C878F38;
        v90 = v44;
        goto LABEL_42;
      }

      v67 = v102;
      sub_23C5EDD24(v44 + v64, v102, type metadata accessor for TranscriptProtoASTFlatValue);
      v68 = *(v103 + 48);
      v69 = v98;
      sub_23C5855B0(v109, v98, &qword_27E1FAB78, &unk_23C8A1360);
      sub_23C5855B0(v67, v69 + v68, &qword_27E1FAB78, &unk_23C8A1360);
      v70 = *v95;
      if ((*v95)(v69, 1, v66) == 1)
      {
        if (v70(v69 + v68, 1, v66) != 1)
        {
          goto LABEL_40;
        }

        sub_23C585C34(v69, &qword_27E1FAB78, &unk_23C8A1360);
      }

      else
      {
        v71 = v92;
        sub_23C5855B0(v69, v92, &qword_27E1FAB78, &unk_23C8A1360);
        if (v70(v69 + v68, 1, v66) == 1)
        {
          sub_23C5EDCC4(v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_40:
          sub_23C585C34(v69, &qword_27E1FAB80, &qword_23C878F30);
LABEL_41:
          sub_23C5EDCC4(v102, type metadata accessor for TranscriptProtoASTFlatValue);
          sub_23C5EDCC4(v109, type metadata accessor for TranscriptProtoASTFlatValue);
          v88 = &qword_27E1FAB88;
          v89 = &unk_23C8A1350;
          v90 = v108;
          goto LABEL_42;
        }

        v72 = v69 + v68;
        v73 = v93;
        sub_23C5EDD24(v72, v93, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v74 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v71, v73);
        v75 = v73;
        v76 = v98;
        sub_23C5EDCC4(v75, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C5EDCC4(v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
        sub_23C585C34(v76, &qword_27E1FAB78, &unk_23C8A1360);
        if ((v74 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v77 = v38;
      v78 = v35;
      v79 = v109;
      v80 = v107;
      v81 = *(v107 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v82 = v102;
      v83 = sub_23C871754();
      v84 = v82;
      v45 = v80;
      v85 = v79;
      v35 = v78;
      v38 = v77;
      sub_23C5EDCC4(v84, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C5EDCC4(v85, type metadata accessor for TranscriptProtoASTFlatValue);
      v44 = v108;
      sub_23C585C34(v108, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v83 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (v38[8] != v35[8])
    {
      goto LABEL_43;
    }

    v86 = updated[8];
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v87 = sub_23C871754();
    sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    sub_23C5EDCC4(v38, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
    if (v87)
    {
      v39 = v99 - 1;
      v42 = v100 + v94;
      v41 = v101 + v94;
      if (v99 != 1)
      {
        continue;
      }
    }

    return v87 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D25E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23C5D2670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v59 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD0, &qword_23C878EB8);
  v13 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v72 = &v59 - v14;
  v67 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v15 = *(v67 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v67);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v59 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v23 = &v59 - v22;
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v24 = *(*(Output - 8) + 64);
  v25 = MEMORY[0x28223BE20](Output);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v74 = &v59 - v29;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_26:
    v58 = 0;
    return v58 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v59 = v8;
  v60 = v12;
  v62 = v4;
  v63 = v27;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v34 = (v15 + 48);
  v61 = (v5 + 48);
  v65 = *(v28 + 72);
  v66 = v34;
  v35 = v67;
  while (1)
  {
    v36 = v74;
    result = sub_23C5EDC08(v32, v74, type metadata accessor for ContextProtoToolQueryOutput);
    if (!v30)
    {
      break;
    }

    v73 = v30;
    sub_23C5EDC08(v33, v27, type metadata accessor for ContextProtoToolQueryOutput);
    v38 = *(v71 + 48);
    v39 = v23;
    sub_23C5855B0(v36, v23, &qword_27E1FAAD8, &qword_23C878EC0);
    sub_23C5855B0(v27, &v23[v38], &qword_27E1FAAD8, &qword_23C878EC0);
    v40 = *v34;
    if ((*v34)(v23, 1, v35) == 1)
    {
      if (v40(&v23[v38], 1, v35) != 1)
      {
        goto LABEL_21;
      }

      sub_23C585C34(v23, &qword_27E1FAAD8, &qword_23C878EC0);
    }

    else
    {
      v41 = v70;
      sub_23C5855B0(v23, v70, &qword_27E1FAAD8, &qword_23C878EC0);
      if (v40(&v23[v38], 1, v35) == 1)
      {
        sub_23C5EDCC4(v41, type metadata accessor for ContextProtoRetrievedTool.Definition);
        v27 = v63;
LABEL_21:
        sub_23C585C34(v23, &qword_27E1FAAE0, &qword_23C878EC8);
        goto LABEL_25;
      }

      v42 = v69;
      sub_23C5EDD24(&v23[v38], v69, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v43 = *(v64 + 48);
      v44 = v72;
      sub_23C5855B0(v41, v72, &qword_27E1FA540, &unk_23C8791D0);
      sub_23C5855B0(v42, v44 + v43, &qword_27E1FA540, &unk_23C8791D0);
      v45 = *v61;
      v46 = v44;
      v47 = v62;
      if ((*v61)(v46, 1, v62) == 1)
      {
        if (v45(v72 + v43, 1, v47) != 1)
        {
          goto LABEL_23;
        }

        sub_23C585C34(v72, &qword_27E1FA540, &unk_23C8791D0);
      }

      else
      {
        v48 = v72;
        v49 = v60;
        sub_23C5855B0(v72, v60, &qword_27E1FA540, &unk_23C8791D0);
        if (v45(v48 + v43, 1, v47) == 1)
        {
          sub_23C5EDCC4(v49, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
          v23 = v39;
LABEL_23:
          sub_23C585C34(v72, &qword_27E1FAAD0, &qword_23C878EB8);
LABEL_24:
          sub_23C5EDCC4(v69, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_23C5EDCC4(v70, type metadata accessor for ContextProtoRetrievedTool.Definition);
          sub_23C585C34(v23, &qword_27E1FAAD8, &qword_23C878EC0);
          v27 = v63;
LABEL_25:
          sub_23C5EDCC4(v27, type metadata accessor for ContextProtoToolQueryOutput);
          sub_23C5EDCC4(v74, type metadata accessor for ContextProtoToolQueryOutput);
          goto LABEL_26;
        }

        v50 = v59;
        sub_23C5EDD24(v48 + v43, v59, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        v51 = _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV0cD14DefinitionEnumO2eeoiySbAE_AEtFZ_0(v49, v50);
        sub_23C5EDCC4(v50, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_23C5EDCC4(v49, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
        sub_23C585C34(v48, &qword_27E1FA540, &unk_23C8791D0);
        v23 = v39;
        if ((v51 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v35 = v67;
      v52 = *(v67 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v53 = v69;
      v54 = v70;
      v55 = sub_23C871754();
      sub_23C5EDCC4(v53, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C5EDCC4(v54, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C585C34(v23, &qword_27E1FAAD8, &qword_23C878EC0);
      v27 = v63;
      if ((v55 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v56 = *(Output + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v57 = v74;
    v58 = sub_23C871754();
    sub_23C5EDCC4(v27, type metadata accessor for ContextProtoToolQueryOutput);
    sub_23C5EDCC4(v57, type metadata accessor for ContextProtoToolQueryOutput);
    if (v58)
    {
      v30 = v73 - 1;
      v34 = v66;
      v33 += v65;
      v32 += v65;
      if (v73 != 1)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D2F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = (&v73 - v10);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v85 = &v73 - v12;
  v87 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v13 = *(v87 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v87);
  v81 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v73 - v18);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v20 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v88 = &v73 - v21;
  v89 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v22 = *(*(v89 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v89);
  v25 = (&v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v28 = (&v73 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_48:
    v68 = 0;
    return v68 & 1;
  }

  if (v29 && a1 != a2)
  {
    v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v31 = a1 + v30;
    v77 = v4;
    v78 = v19;
    v32 = a2 + v30;
    v75 = v25;
    v76 = (v13 + 48);
    v73 = *(v26 + 72);
    v74 = (v5 + 48);
    while (1)
    {
      v82 = v31;
      sub_23C5EDC08(v31, v28, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C5EDC08(v32, v25, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v33 = *v28 == *v25 && v28[1] == v25[1];
      if (!v33 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v34 = v25;
      v84 = v32;
      v35 = v88;
      v36 = v89[5];
      v37 = *(v83 + 48);
      sub_23C5855B0(v28 + v36, v88, &qword_27E1FAC40, &unk_23C8791C0);
      sub_23C5855B0(v34 + v36, v35 + v37, &qword_27E1FAC40, &unk_23C8791C0);
      v38 = *v76;
      v39 = v87;
      if ((*v76)(v35, 1, v87) == 1)
      {
        v33 = v38(v35 + v37, 1, v39) == 1;
        v40 = v35;
        if (!v33)
        {
          goto LABEL_36;
        }

        sub_23C585C34(v35, &qword_27E1FAC40, &unk_23C8791C0);
        v42 = v84;
        v41 = v85;
        v43 = v74;
        v25 = v75;
      }

      else
      {
        v44 = v78;
        sub_23C5855B0(v35, v78, &qword_27E1FAC40, &unk_23C8791C0);
        if (v38(v35 + v37, 1, v39) == 1)
        {
          sub_23C5EDCC4(v44, type metadata accessor for ToolKitProtoTypeInstance);
          v40 = v35;
LABEL_36:
          sub_23C585C34(v40, &qword_27E1FAC48, &qword_23C878FD0);
          v25 = v75;
          break;
        }

        v45 = v81;
        sub_23C5EDD24(v35 + v37, v81, type metadata accessor for ToolKitProtoTypeInstance);
        v46 = *v44;
        v47 = *v45;
        if ((~*v44 & 0xF000000000000007) != 0)
        {
          v91[0] = *v44;
          v42 = v84;
          if ((~v47 & 0xF000000000000007) == 0)
          {
            sub_23C56F2C0(v46);
            sub_23C56F2C0(v47);
            sub_23C56F2C0(v46);

            v25 = v75;
LABEL_40:
            sub_23C56F2D8(v46);
            sub_23C56F2D8(v47);
LABEL_41:
            sub_23C5EDCC4(v81, type metadata accessor for ToolKitProtoTypeInstance);
            sub_23C5EDCC4(v78, type metadata accessor for ToolKitProtoTypeInstance);
            v69 = &qword_27E1FAC40;
            v70 = &unk_23C8791C0;
            v71 = v88;
            goto LABEL_46;
          }

          v90 = v47;
          sub_23C56F2C0(v46);
          sub_23C56F2C0(v47);
          sub_23C56F2C0(v46);
          v48 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(v91, &v90);

          sub_23C56F2D8(v46);
          v25 = v75;
          if ((v48 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_23C56F2C0(*v44);
          sub_23C56F2C0(v47);
          v42 = v84;
          v25 = v75;
          if ((~v47 & 0xF000000000000007) != 0)
          {
            goto LABEL_40;
          }

          sub_23C56F2D8(v46);
        }

        v49 = *(v87 + 20);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v50 = v81;
        v51 = sub_23C871754();
        sub_23C5EDCC4(v50, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C5EDCC4(v78, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C585C34(v88, &qword_27E1FAC40, &unk_23C8791C0);
        v43 = v74;
        v41 = v85;
        if ((v51 & 1) == 0)
        {
          break;
        }
      }

      v84 = v29;
      v52 = v89[6];
      v53 = *(v80 + 48);
      sub_23C5855B0(v28 + v52, v41, &qword_27E1FAB68, &unk_23C879140);
      sub_23C5855B0(v25 + v52, v41 + v53, &qword_27E1FAB68, &unk_23C879140);
      v54 = *v43;
      v55 = v77;
      if ((*v43)(v41, 1, v77) == 1)
      {
        if (v54(v41 + v53, 1, v55) != 1)
        {
          goto LABEL_38;
        }

        sub_23C585C34(v41, &qword_27E1FAB68, &unk_23C879140);
        v56 = v84;
      }

      else
      {
        sub_23C5855B0(v41, v86, &qword_27E1FAB68, &unk_23C879140);
        if (v54(v41 + v53, 1, v55) == 1)
        {
          sub_23C5EDCC4(v86, type metadata accessor for ToolKitProtoTypedValue);
LABEL_38:
          v69 = &qword_27E1FAB70;
          v70 = &qword_23C878F28;
          goto LABEL_45;
        }

        v57 = v79;
        sub_23C5EDD24(v41 + v53, v79, type metadata accessor for ToolKitProtoTypedValue);
        v58 = *v86;
        v59 = *v57;
        if ((~*v86 & 0xF000000000000007) != 0)
        {
          v91[0] = *v86;
          if ((~v59 & 0xF000000000000007) == 0)
          {
            sub_23C56F2C0(v58);
            sub_23C56F2C0(v59);
            sub_23C56F2C0(v58);

LABEL_43:
            sub_23C56F2D8(v58);
            sub_23C56F2D8(v59);
LABEL_44:
            sub_23C5EDCC4(v79, type metadata accessor for ToolKitProtoTypedValue);
            sub_23C5EDCC4(v86, type metadata accessor for ToolKitProtoTypedValue);
            v69 = &qword_27E1FAB68;
            v70 = &unk_23C879140;
LABEL_45:
            v71 = v41;
LABEL_46:
            sub_23C585C34(v71, v69, v70);
            break;
          }

          v90 = v59;
          sub_23C56F2C0(v58);
          sub_23C56F2C0(v59);
          sub_23C56F2C0(v58);
          v60 = static ToolKitProtoTypedValueKind.== infix(_:_:)(v91, &v90);

          sub_23C56F2D8(v58);
          if ((v60 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_23C56F2C0(*v86);
          sub_23C56F2C0(v59);
          if ((~v59 & 0xF000000000000007) != 0)
          {
            goto LABEL_43;
          }

          sub_23C56F2D8(v58);
        }

        v61 = *(v77 + 20);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v62 = v86;
        v63 = v79;
        v64 = sub_23C871754();
        v65 = v63;
        v66 = v85;
        sub_23C5EDCC4(v65, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C5EDCC4(v62, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C585C34(v66, &qword_27E1FAB68, &unk_23C879140);
        v56 = v84;
        if ((v64 & 1) == 0)
        {
          break;
        }
      }

      v67 = v89[7];
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v68 = sub_23C871754();
      sub_23C5EDCC4(v25, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C5EDCC4(v28, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      if (v68)
      {
        v32 = v42 + v73;
        v31 = v82 + v73;
        v29 = v56 - 1;
        if (v29)
        {
          continue;
        }
      }

      return v68 & 1;
    }

    sub_23C5EDCC4(v25, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    sub_23C5EDCC4(v28, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    goto LABEL_48;
  }

  v68 = 1;
  return v68 & 1;
}

uint64_t sub_23C5D3A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v61 = &v52 - v14;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v16 = *(*(updated - 1) + 64);
  v17 = MEMORY[0x28223BE20](updated);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v52 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_40:
    v48 = 0;
    return v48 & 1;
  }

  if (v23 && a1 != a2)
  {
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = v5;
    v27 = a2 + v24;
    v55 = (v26 + 48);
    v56 = v4;
    v53 = *(v20 + 72);
    v54 = updated;
    v52 = v8;
    while (1)
    {
      v57 = v25;
      sub_23C5EDC08(v25, v22, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_23C5EDC08(v27, v19, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      v28 = *v22 == *v19 && *(v22 + 1) == *(v19 + 1);
      if (!v28 && (sub_23C872014() & 1) == 0 || v22[16] != v19[16])
      {
        break;
      }

      v59 = v23;
      v60 = v27;
      v29 = updated[6];
      v30 = *(v58 + 48);
      v31 = v61;
      sub_23C5855B0(&v22[v29], v61, &qword_27E1FAAF8, &unk_23C8A1180);
      sub_23C5855B0(&v19[v29], v31 + v30, &qword_27E1FAAF8, &unk_23C8A1180);
      v32 = v56;
      v33 = *v55;
      if ((*v55)(v31, 1, v56) == 1)
      {
        v28 = v33(v31 + v30, 1, v32) == 1;
        v34 = v31;
        if (!v28)
        {
          goto LABEL_37;
        }

        sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
        updated = v54;
        v35 = v59;
        v36 = v60;
      }

      else
      {
        sub_23C5855B0(v31, v12, &qword_27E1FAAF8, &unk_23C8A1180);
        if (v33(v31 + v30, 1, v32) == 1)
        {
          sub_23C5EDCC4(v12, type metadata accessor for TranscriptProtoStatementID);
          v34 = v31;
LABEL_37:
          v49 = &qword_27E1FAB00;
          v50 = &qword_23C878ED8;
LABEL_38:
          sub_23C585C34(v34, v49, v50);
          break;
        }

        v37 = v52;
        sub_23C5EDD24(v31 + v30, v52, type metadata accessor for TranscriptProtoStatementID);
        updated = v54;
        v35 = v59;
        v36 = v60;
        if (*v12 != *v37)
        {
          goto LABEL_35;
        }

        v38 = *(v12 + 2);
        v39 = *(v37 + 16);
        if (v38)
        {
          if (!v39 || (*(v12 + 1) != *(v37 + 8) || v38 != v39) && (sub_23C872014() & 1) == 0)
          {
LABEL_35:
            sub_23C5EDCC4(v37, type metadata accessor for TranscriptProtoStatementID);
            sub_23C5EDCC4(v12, type metadata accessor for TranscriptProtoStatementID);
            v49 = &qword_27E1FAAF8;
            v50 = &unk_23C8A1180;
            v34 = v61;
            goto LABEL_38;
          }
        }

        else if (v39)
        {
          goto LABEL_35;
        }

        v40 = *(v56 + 24);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v41 = sub_23C871754();
        sub_23C5EDCC4(v37, type metadata accessor for TranscriptProtoStatementID);
        sub_23C5EDCC4(v12, type metadata accessor for TranscriptProtoStatementID);
        sub_23C585C34(v61, &qword_27E1FAAF8, &unk_23C8A1180);
        if ((v41 & 1) == 0)
        {
          break;
        }
      }

      v42 = updated[7];
      v43 = &v22[v42];
      v44 = v22[v42 + 8];
      v45 = &v19[v42];
      v46 = v19[v42 + 8];
      if (v44)
      {
        if (!v46)
        {
          break;
        }
      }

      else
      {
        if (*v43 != *v45)
        {
          LOBYTE(v46) = 1;
        }

        if (v46)
        {
          break;
        }
      }

      v47 = updated[8];
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v48 = sub_23C871754();
      sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_23C5EDCC4(v22, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      if (v48)
      {
        v27 = v36 + v53;
        v25 = v57 + v53;
        v23 = v35 - 1;
        if (v23)
        {
          continue;
        }
      }

      return v48 & 1;
    }

    sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    sub_23C5EDCC4(v22, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
    goto LABEL_40;
  }

  v48 = 1;
  return v48 & 1;
}

uint64_t sub_23C5D40D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = (&v47 - v10);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v11 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v13 = &v47 - v12;
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v47 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_36:
    v43 = 0;
    return v43 & 1;
  }

  if (v22 && a1 != a2)
  {
    v48 = v14;
    v49 = v13;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v50 = (v5 + 48);
    v51 = v4;
    v47 = *(v19 + 72);
    while (1)
    {
      sub_23C5EDC08(v24, v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v55 = v25;
      sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      v26 = *v21 == *v18 && v21[1] == v18[1];
      if (!v26 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v27 = v21[2] == v18[2] && v21[3] == v18[3];
      if (!v27 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v54 = v24;
      v28 = *(v14 + 24);
      v29 = *(v53 + 48);
      v30 = v49;
      sub_23C5855B0(v21 + v28, v49, &qword_27E1FAC40, &unk_23C8791C0);
      sub_23C5855B0(v18 + v28, v30 + v29, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v51;
      v32 = *v50;
      if ((*v50)(v30, 1, v51) == 1)
      {
        if (v32(v30 + v29, 1, v31) != 1)
        {
          goto LABEL_30;
        }

        sub_23C585C34(v30, &qword_27E1FAC40, &unk_23C8791C0);
        v14 = v48;
        v33 = v54;
      }

      else
      {
        sub_23C5855B0(v30, v56, &qword_27E1FAC40, &unk_23C8791C0);
        if (v32(v30 + v29, 1, v31) == 1)
        {
          sub_23C5EDCC4(v56, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_30:
          v44 = &qword_27E1FAC48;
          v45 = &qword_23C878FD0;
          goto LABEL_34;
        }

        v34 = v30 + v29;
        v35 = v52;
        sub_23C5EDD24(v34, v52, type metadata accessor for ToolKitProtoTypeInstance);
        v36 = *v56;
        v37 = *v35;
        if ((~*v56 & 0xF000000000000007) != 0)
        {
          v58 = *v56;
          if ((~v37 & 0xF000000000000007) == 0)
          {
            sub_23C56F2C0(v36);
            sub_23C56F2C0(v37);
            sub_23C56F2C0(v36);

LABEL_32:
            sub_23C56F2D8(v36);
            sub_23C56F2D8(v37);
LABEL_33:
            sub_23C5EDCC4(v52, type metadata accessor for ToolKitProtoTypeInstance);
            sub_23C5EDCC4(v56, type metadata accessor for ToolKitProtoTypeInstance);
            v44 = &qword_27E1FAC40;
            v45 = &unk_23C8791C0;
LABEL_34:
            sub_23C585C34(v30, v44, v45);
            break;
          }

          v57 = v37;
          sub_23C56F2C0(v36);
          sub_23C56F2C0(v37);
          sub_23C56F2C0(v36);
          v38 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v58, &v57);

          sub_23C56F2D8(v36);
          if ((v38 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_23C56F2C0(*v56);
          sub_23C56F2C0(v37);
          if ((~v37 & 0xF000000000000007) != 0)
          {
            goto LABEL_32;
          }

          sub_23C56F2D8(v36);
        }

        v39 = *(v51 + 20);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v40 = v56;
        v41 = v52;
        LOBYTE(v39) = sub_23C871754();
        sub_23C5EDCC4(v41, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C5EDCC4(v40, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C585C34(v30, &qword_27E1FAC40, &unk_23C8791C0);
        v14 = v48;
        v33 = v54;
        if ((v39 & 1) == 0)
        {
          break;
        }
      }

      v42 = *(v14 + 28);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v43 = sub_23C871754();
      sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      if (v43)
      {
        v25 = v55 + v47;
        v24 = v33 + v47;
        if (--v22)
        {
          continue;
        }
      }

      return v43 & 1;
    }

    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_36;
  }

  v43 = 1;
  return v43 & 1;
}

uint64_t sub_23C5D4798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v14 = &v46 - v13;
  v50 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
  v15 = *(*(v50 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v50);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v55 = (&v46 - v20);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_23:
    v45 = 0;
    return v45 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v22 = *(a1 + 16);
  v47 = v11;
  v51 = v18;
  v52 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v49 = *(v19 + 72);
  v27 = v50;
  v28 = v22;
  while (1)
  {
    v29 = v55;
    result = sub_23C5EDC08(v24, v55, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (!v28)
    {
      break;
    }

    v54 = v28;
    sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    v31 = *v29 == *v18 && v29[1] == v18[1];
    if (!v31 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_22;
    }

    v32 = *(v27 + 20);
    v33 = *(v53 + 48);
    sub_23C5855B0(v55 + v32, v14, &qword_27E1FAC30, &qword_23C878FC0);
    sub_23C5855B0(v18 + v32, &v14[v33], &qword_27E1FAC30, &qword_23C878FC0);
    v34 = *v26;
    v35 = v14;
    v36 = v14;
    v37 = v52;
    if ((*v26)(v35, 1, v52) == 1)
    {
      if (v34((v36 + v33), 1, v37) != 1)
      {
        goto LABEL_21;
      }

      sub_23C585C34(v36, &qword_27E1FAC30, &qword_23C878FC0);
      v14 = v36;
      v18 = v51;
    }

    else
    {
      v38 = v47;
      sub_23C5855B0(v36, v47, &qword_27E1FAC30, &qword_23C878FC0);
      if (v34((v36 + v33), 1, v37) == 1)
      {
        sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_21:
        sub_23C585C34(v36, &qword_27E1FAC38, &qword_23C878FC8);
        v18 = v51;
LABEL_22:
        sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        sub_23C5EDCC4(v55, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
        goto LABEL_23;
      }

      v39 = v26;
      v40 = v48;
      sub_23C5EDD24(v36 + v33, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v41 = static ToolKitProtoDisplayRepresentation.== infix(_:_:)(v38, v40);
      v42 = v40;
      v26 = v39;
      sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C585C34(v36, &qword_27E1FAC30, &qword_23C878FC0);
      v14 = v36;
      v27 = v50;
      v18 = v51;
      if ((v41 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v43 = *(v27 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v44 = v55;
    v45 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    sub_23C5EDCC4(v44, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
    if (v45)
    {
      v28 = v54 - 1;
      v25 += v49;
      v24 += v49;
      if (v54 != 1)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D4D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27E1FAB78;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for TranscriptProtoASTFlatValue);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for TranscriptProtoASTFlatValue);
    v29 = *(v47 + 48);
    sub_23C5855B0(v21, v14, v27, &unk_23C8A1360);
    sub_23C5855B0(v18, &v14[v29], v27, &unk_23C8A1360);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &unk_23C8A1360);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_23C5855B0(v14, v42, v31, &unk_23C8A1360);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_23C585C34(v14, &qword_27E1FAB80, &qword_23C878F30);
LABEL_17:
        sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoASTFlatValue);
        sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoASTFlatValue);
        goto LABEL_18;
      }

      v35 = v43;
      sub_23C5EDD24(&v14[v29], v43, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v36 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C585C34(v14, v31, &unk_23C8A1360);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoASTFlatValue);
    sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoASTFlatValue);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D5284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v103 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v97 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB10, &qword_23C878EE8);
  v11 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v110 = &v97 - v12;
  v124 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v13 = *(v124 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v124);
  v115 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB18, &qword_23C878EF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v116 = &v97 - v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB20, &qword_23C878EF8);
  v19 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v21 = &v97 - v20;
  v113 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v122 = *(v113 - 8);
  v22 = *(v122 + 64);
  MEMORY[0x28223BE20](v113);
  v104 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v105 = &v97 - v26;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB30, &qword_23C878F00);
  v27 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v97 - v28;
  v29 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v118 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v123 = &v97 - v35;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v36 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v38 = &v97 - v37;
  v125 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v39 = *(*(v125 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v125);
  v127 = &v97 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v126 = &v97 - v43;
  v44 = *(a1 + 16);
  if (v44 != *(a2 + 16))
  {
LABEL_43:
    v92 = 0;
    return v92 & 1;
  }

  if (!v44 || a1 == a2)
  {
    v92 = 1;
    return v92 & 1;
  }

  v100 = v4;
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = a1 + v45;
  v107 = (v30 + 48);
  v47 = a2 + v45;
  v101 = (v122 + 48);
  v99 = (v5 + 48);
  v102 = *(v42 + 72);
  v48 = v126;
  v114 = v29;
  v49 = v123;
  v98 = v21;
  v106 = (v13 + 48);
  while (1)
  {
    v122 = v46;
    result = sub_23C5EDC08(v46, v48, type metadata accessor for ContextProtoToolRetrievalType);
    if (!v44)
    {
      break;
    }

    v120 = v44;
    v121 = v47;
    v51 = v47;
    v52 = v127;
    sub_23C5EDC08(v51, v127, type metadata accessor for ContextProtoToolRetrievalType);
    v53 = *(v119 + 48);
    v54 = v38;
    sub_23C5855B0(v48, v38, &qword_27E1FAB38, &unk_23C8791E0);
    sub_23C5855B0(v52, &v38[v53], &qword_27E1FAB38, &unk_23C8791E0);
    v55 = *v107;
    if ((*v107)(v38, 1, v29) == 1)
    {
      if (v55(&v38[v53], 1, v29) != 1)
      {
        goto LABEL_31;
      }

      sub_23C585C34(v38, &qword_27E1FAB38, &unk_23C8791E0);
      v56 = v106;
    }

    else
    {
      sub_23C5855B0(v38, v49, &qword_27E1FAB38, &unk_23C8791E0);
      if (v55(&v38[v53], 1, v29) == 1)
      {
        sub_23C5EDCC4(v49, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_31:
        v94 = &qword_27E1FAB40;
        v95 = &qword_23C878F08;
LABEL_37:
        v96 = v38;
        goto LABEL_41;
      }

      v57 = v118;
      sub_23C5EDD24(&v38[v53], v118, type metadata accessor for ToolKitProtoTypeIdentifier);
      v58 = v112;
      v59 = *(v111 + 48);
      sub_23C5855B0(v49, v112, &qword_27E1FAB28, &unk_23C889C40);
      sub_23C5855B0(v57, v58 + v59, &qword_27E1FAB28, &unk_23C889C40);
      v60 = *v101;
      v61 = v113;
      if ((*v101)(v58, 1, v113) == 1)
      {
        if (v60(v58 + v59, 1, v61) != 1)
        {
          goto LABEL_35;
        }

        sub_23C585C34(v58, &qword_27E1FAB28, &unk_23C889C40);
      }

      else
      {
        v62 = v105;
        sub_23C5855B0(v58, v105, &qword_27E1FAB28, &unk_23C889C40);
        if (v60(v58 + v59, 1, v61) == 1)
        {
          sub_23C5EDCC4(v62, type metadata accessor for ToolKitProtoTypeIdentifierKind);
          v49 = v123;
          v38 = v54;
LABEL_35:
          sub_23C585C34(v58, &qword_27E1FAB30, &qword_23C878F00);
LABEL_36:
          sub_23C5EDCC4(v118, type metadata accessor for ToolKitProtoTypeIdentifier);
          sub_23C5EDCC4(v49, type metadata accessor for ToolKitProtoTypeIdentifier);
          v94 = &qword_27E1FAB38;
          v95 = &unk_23C8791E0;
          goto LABEL_37;
        }

        v63 = v104;
        sub_23C5EDD24(v58 + v59, v104, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        v64 = static ToolKitProtoTypeIdentifierKind.== infix(_:_:)(v62, v63);
        v65 = v63;
        v48 = v126;
        sub_23C5EDCC4(v65, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_23C5EDCC4(v62, type metadata accessor for ToolKitProtoTypeIdentifierKind);
        sub_23C585C34(v58, &qword_27E1FAB28, &unk_23C889C40);
        v49 = v123;
        v38 = v54;
        if ((v64 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v66 = *(v114 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v67 = v118;
      v68 = sub_23C871754();
      v69 = v67;
      v49 = v123;
      sub_23C5EDCC4(v69, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C5EDCC4(v49, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v38, &qword_27E1FAB38, &unk_23C8791E0);
      v56 = v106;
      if ((v68 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v70 = v48;
    v71 = *(v125 + 20);
    v72 = v116;
    v73 = *(v117 + 48);
    sub_23C5855B0(v70 + v71, v21, &qword_27E1FAB18, &qword_23C878EF0);
    sub_23C5855B0(v127 + v71, &v21[v73], &qword_27E1FAB18, &qword_23C878EF0);
    v74 = *v56;
    v75 = v124;
    if ((*v56)(v21, 1, v124) == 1)
    {
      if (v74(&v21[v73], 1, v75) != 1)
      {
        goto LABEL_33;
      }

      sub_23C585C34(v21, &qword_27E1FAB18, &qword_23C878EF0);
      v29 = v114;
    }

    else
    {
      sub_23C5855B0(v21, v72, &qword_27E1FAB18, &qword_23C878EF0);
      if (v74(&v21[v73], 1, v75) == 1)
      {
        sub_23C5EDCC4(v72, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
LABEL_33:
        sub_23C585C34(v21, &qword_27E1FAB20, &qword_23C878EF8);
        v48 = v126;
        goto LABEL_42;
      }

      v76 = v108;
      v77 = v115;
      sub_23C5EDD24(&v21[v73], v115, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v78 = v110;
      v79 = *(v109 + 48);
      sub_23C5855B0(v72, v110, &qword_27E1FAB08, &qword_23C878EE0);
      sub_23C5855B0(v77, v78 + v79, &qword_27E1FAB08, &qword_23C878EE0);
      v80 = *v99;
      v81 = v100;
      if ((*v99)(v78, 1, v100) == 1)
      {
        v82 = v80(v78 + v79, 1, v81);
        v83 = v72;
        v49 = v123;
        if (v82 != 1)
        {
          goto LABEL_39;
        }

        sub_23C585C34(v78, &qword_27E1FAB08, &qword_23C878EE0);
        v48 = v126;
      }

      else
      {
        sub_23C5855B0(v78, v76, &qword_27E1FAB08, &qword_23C878EE0);
        v84 = v80(v78 + v79, 1, v81);
        v49 = v123;
        if (v84 == 1)
        {
          sub_23C5EDCC4(v76, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
          v83 = v72;
LABEL_39:
          sub_23C585C34(v78, &qword_27E1FAB10, &qword_23C878EE8);
          v48 = v126;
LABEL_40:
          sub_23C5EDCC4(v115, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          sub_23C5EDCC4(v83, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
          v94 = &qword_27E1FAB18;
          v95 = &qword_23C878EF0;
          v96 = v98;
LABEL_41:
          sub_23C585C34(v96, v94, v95);
LABEL_42:
          sub_23C5EDCC4(v127, type metadata accessor for ContextProtoToolRetrievalType);
          sub_23C5EDCC4(v48, type metadata accessor for ContextProtoToolRetrievalType);
          goto LABEL_43;
        }

        v85 = v103;
        sub_23C5EDD24(v78 + v79, v103, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        v86 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v76, v85);
        sub_23C5EDCC4(v85, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_23C5EDCC4(v76, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
        sub_23C585C34(v78, &qword_27E1FAB08, &qword_23C878EE0);
        v83 = v72;
        v48 = v126;
        if ((v86 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v87 = *(v124 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v88 = v115;
      v89 = sub_23C871754();
      sub_23C5EDCC4(v88, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      sub_23C5EDCC4(v83, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      v21 = v98;
      sub_23C585C34(v98, &qword_27E1FAB18, &qword_23C878EF0);
      v29 = v114;
      if ((v89 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v90 = *(v125 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v91 = v127;
    v92 = sub_23C871754();
    v93 = v91;
    v48 = v126;
    sub_23C5EDCC4(v93, type metadata accessor for ContextProtoToolRetrievalType);
    sub_23C5EDCC4(v48, type metadata accessor for ContextProtoToolRetrievalType);
    if (v92)
    {
      v44 = v120 - 1;
      v47 = v121 + v102;
      v46 = v122 + v102;
      if (v120 != 1)
      {
        continue;
      }
    }

    return v92 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D622C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v28 = a3(0);
  v9 = *(*(v28 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v28);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v15 = (&v27 - v14);
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
LABEL_22:
    v25 = 0;
    return v25 & 1;
  }

  if (v16 && a1 != a2)
  {
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v17;
    v19 = a2 + v17;
    v20 = *(v13 + 72);
    while (1)
    {
      sub_23C5EDC08(v18, v15, a5);
      sub_23C5EDC08(v19, v12, a5);
      v21 = *v15 == *v12 && v15[1] == v12[1];
      if (!v21 && (sub_23C872014() & 1) == 0)
      {
        break;
      }

      v22 = v15[3];
      v23 = v12[3];
      if (v22)
      {
        if (!v23 || (v15[2] != v12[2] || v22 != v23) && (sub_23C872014() & 1) == 0)
        {
          break;
        }
      }

      else if (v23)
      {
        break;
      }

      v24 = *(v28 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v25 = sub_23C871754();
      sub_23C5EDCC4(v12, a4);
      sub_23C5EDCC4(v15, a4);
      if (v25)
      {
        v19 += v20;
        v18 += v20;
        if (--v16)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    sub_23C5EDCC4(v12, a4);
    sub_23C5EDCC4(v15, a4);
    goto LABEL_22;
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_23C5D6494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA8, &qword_23C878F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB0, &qword_23C878F58);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v78 = &v61 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v61 - v22;
  v76 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v23 = *(*(v76 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v76);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v29 = &v61 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_36:
    v56 = 0;
    return v56 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v65 = v26;
  v66 = v4;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v67 = (v75 + 48);
  v63 = v17;
  v64 = (v5 + 48);
  v62 = *(v27 + 72);
  v77 = &v61 - v28;
  while (1)
  {
    v74 = v32;
    result = sub_23C5EDC08(v32, v29, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (!v30)
    {
      break;
    }

    v75 = v30;
    v73 = v33;
    sub_23C5EDC08(v33, v26, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    v35 = v72;
    v36 = *(v71 + 48);
    sub_23C5855B0(v29, v72, &qword_27E1FAAF8, &unk_23C8A1180);
    sub_23C5855B0(v26, v35 + v36, &qword_27E1FAAF8, &unk_23C8A1180);
    v37 = *v67;
    if ((*v67)(v35, 1, v14) == 1)
    {
      v38 = v14;
      if (v37(v35 + v36, 1, v14) != 1)
      {
        goto LABEL_31;
      }

      sub_23C585C34(v35, &qword_27E1FAAF8, &unk_23C8A1180);
      v39 = v75;
    }

    else
    {
      sub_23C5855B0(v35, v78, &qword_27E1FAAF8, &unk_23C8A1180);
      v38 = v14;
      if (v37(v35 + v36, 1, v14) == 1)
      {
        sub_23C5EDCC4(v78, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v58 = &qword_27E1FAB00;
        v59 = &qword_23C878ED8;
        v60 = v35;
LABEL_32:
        sub_23C585C34(v60, v58, v59);
LABEL_35:
        sub_23C5EDCC4(v26, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        sub_23C5EDCC4(v77, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        goto LABEL_36;
      }

      sub_23C5EDD24(v35 + v36, v17, type metadata accessor for TranscriptProtoStatementID);
      v39 = v75;
      if (*v78 != *v17)
      {
        goto LABEL_29;
      }

      v40 = *(v78 + 16);
      v41 = *(v17 + 2);
      if (v40)
      {
        if (!v41 || (*(v78 + 8) != *(v17 + 1) || v40 != v41) && (sub_23C872014() & 1) == 0)
        {
LABEL_29:
          sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoStatementID);
          sub_23C5EDCC4(v78, type metadata accessor for TranscriptProtoStatementID);
          v58 = &qword_27E1FAAF8;
          v59 = &unk_23C8A1180;
          v60 = v35;
          goto LABEL_32;
        }
      }

      else if (v41)
      {
        goto LABEL_29;
      }

      v42 = *(v14 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v43 = v78;
      v44 = sub_23C871754();
      sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v35, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v44 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v45 = v11;
    v46 = *(v76 + 20);
    v47 = *(v70 + 48);
    v48 = v26;
    v49 = v69;
    sub_23C5855B0(&v77[v46], v69, &qword_27E1FABA8, &qword_23C878F50);
    sub_23C5855B0(&v48[v46], v49 + v47, &qword_27E1FABA8, &qword_23C878F50);
    v50 = *v64;
    v51 = v66;
    if ((*v64)(v49, 1, v66) == 1)
    {
      if (v50(v49 + v47, 1, v51) != 1)
      {
        goto LABEL_34;
      }

      sub_23C585C34(v49, &qword_27E1FABA8, &qword_23C878F50);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
    }

    else
    {
      sub_23C5855B0(v49, v45, &qword_27E1FABA8, &qword_23C878F50);
      if (v50(v49 + v47, 1, v51) == 1)
      {
        sub_23C5EDCC4(v45, type metadata accessor for ContextProtoRetrievedContext);
LABEL_34:
        sub_23C585C34(v49, &qword_27E1FABB0, &qword_23C878F58);
        v26 = v65;
        goto LABEL_35;
      }

      v52 = v68;
      sub_23C5EDD24(v49 + v47, v68, type metadata accessor for ContextProtoRetrievedContext);
      v53 = _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0(v45, v52);
      sub_23C5EDCC4(v52, type metadata accessor for ContextProtoRetrievedContext);
      sub_23C5EDCC4(v45, type metadata accessor for ContextProtoRetrievedContext);
      sub_23C585C34(v49, &qword_27E1FABA8, &qword_23C878F50);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
      if ((v53 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v54 = *(v76 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v55 = v77;
    v56 = sub_23C871754();
    sub_23C5EDCC4(v26, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    sub_23C5EDCC4(v55, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    if (v56)
    {
      v33 = v73 + v62;
      v32 = v74 + v62;
      v57 = v39 == 1;
      v30 = v39 - 1;
      v29 = v77;
      if (!v57)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D6DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE8, &unk_23C8A1330);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF0, &qword_23C878ED0);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v78 = &v61 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v61 - v22;
  v76 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v23 = *(*(v76 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v76);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v29 = &v61 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
LABEL_36:
    v56 = 0;
    return v56 & 1;
  }

  if (!v30 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v65 = v26;
  v66 = v4;
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v67 = (v75 + 48);
  v63 = v17;
  v64 = (v5 + 48);
  v62 = *(v27 + 72);
  v77 = &v61 - v28;
  while (1)
  {
    v74 = v32;
    result = sub_23C5EDC08(v32, v29, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (!v30)
    {
      break;
    }

    v75 = v30;
    v73 = v33;
    sub_23C5EDC08(v33, v26, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    v35 = v72;
    v36 = *(v71 + 48);
    sub_23C5855B0(v29, v72, &qword_27E1FAAF8, &unk_23C8A1180);
    sub_23C5855B0(v26, v35 + v36, &qword_27E1FAAF8, &unk_23C8A1180);
    v37 = *v67;
    if ((*v67)(v35, 1, v14) == 1)
    {
      v38 = v14;
      if (v37(v35 + v36, 1, v14) != 1)
      {
        goto LABEL_31;
      }

      sub_23C585C34(v35, &qword_27E1FAAF8, &unk_23C8A1180);
      v39 = v75;
    }

    else
    {
      sub_23C5855B0(v35, v78, &qword_27E1FAAF8, &unk_23C8A1180);
      v38 = v14;
      if (v37(v35 + v36, 1, v14) == 1)
      {
        sub_23C5EDCC4(v78, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        v58 = &qword_27E1FAB00;
        v59 = &qword_23C878ED8;
        v60 = v35;
LABEL_32:
        sub_23C585C34(v60, v58, v59);
LABEL_35:
        sub_23C5EDCC4(v26, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_23C5EDCC4(v77, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        goto LABEL_36;
      }

      sub_23C5EDD24(v35 + v36, v17, type metadata accessor for TranscriptProtoStatementID);
      v39 = v75;
      if (*v78 != *v17)
      {
        goto LABEL_29;
      }

      v40 = *(v78 + 16);
      v41 = *(v17 + 2);
      if (v40)
      {
        if (!v41 || (*(v78 + 8) != *(v17 + 1) || v40 != v41) && (sub_23C872014() & 1) == 0)
        {
LABEL_29:
          sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoStatementID);
          sub_23C5EDCC4(v78, type metadata accessor for TranscriptProtoStatementID);
          v58 = &qword_27E1FAAF8;
          v59 = &unk_23C8A1180;
          v60 = v35;
          goto LABEL_32;
        }
      }

      else if (v41)
      {
        goto LABEL_29;
      }

      v42 = *(v14 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v43 = v78;
      v44 = sub_23C871754();
      sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v35, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v44 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v45 = v11;
    v46 = *(v76 + 20);
    v47 = *(v70 + 48);
    v48 = v26;
    v49 = v69;
    sub_23C5855B0(&v77[v46], v69, &qword_27E1FAAE8, &unk_23C8A1330);
    sub_23C5855B0(&v48[v46], v49 + v47, &qword_27E1FAAE8, &unk_23C8A1330);
    v50 = *v64;
    v51 = v66;
    if ((*v64)(v49, 1, v66) == 1)
    {
      if (v50(v49 + v47, 1, v51) != 1)
      {
        goto LABEL_34;
      }

      sub_23C585C34(v49, &qword_27E1FAAE8, &unk_23C8A1330);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
    }

    else
    {
      sub_23C5855B0(v49, v45, &qword_27E1FAAE8, &unk_23C8A1330);
      if (v50(v49 + v47, 1, v51) == 1)
      {
        sub_23C5EDCC4(v45, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_34:
        sub_23C585C34(v49, &qword_27E1FAAF0, &qword_23C878ED0);
        v26 = v65;
        goto LABEL_35;
      }

      v52 = v68;
      sub_23C5EDD24(v49 + v47, v68, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v53 = _s26AIMLInstrumentationStreams36ContextProtoDynamicEnumerationEntityV2eeoiySbAC_ACtFZ_0(v45, v52);
      sub_23C5EDCC4(v52, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C5EDCC4(v45, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      sub_23C585C34(v49, &qword_27E1FAAE8, &unk_23C8A1330);
      v11 = v45;
      v14 = v38;
      v17 = v63;
      v26 = v65;
      if ((v53 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v54 = *(v76 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v55 = v77;
    v56 = sub_23C871754();
    sub_23C5EDCC4(v26, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    sub_23C5EDCC4(v55, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
    if (v56)
    {
      v33 = v73 + v62;
      v32 = v74 + v62;
      v57 = v39 == 1;
      v30 = v39 - 1;
      v29 = v77;
      if (!v57)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D76C4(uint64_t a1, uint64_t a2)
{
  v173 = type metadata accessor for TranscriptProtoStatementID(0);
  v179 = *(v173 - 8);
  v4 = *(v179 + 64);
  MEMORY[0x28223BE20](v173);
  v174 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v163 = (&v142 - v8);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v9 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v171 = &v142 - v10;
  v11 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v170 = (&v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v160 = &v142 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC0, &qword_23C878F60);
  v18 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v172 = &v142 - v19;
  v175 = type metadata accessor for ToolKitProtoTypedValue(0);
  v20 = *(v175 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v175);
  v166 = (&v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v167 = (&v142 - v25);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v26 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v176 = &v142 - v27;
  v28 = type metadata accessor for TranscriptProtoCandidate(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v183 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB98, &qword_23C878F40);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v182 = &v142 - v34;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA0, &qword_23C878F48);
  v35 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v37 = &v142 - v36;
  v184 = type metadata accessor for TranscriptProtoParameter(0);
  v180 = *(v184 - 8);
  v38 = *(v180 + 64);
  v39 = MEMORY[0x28223BE20](v184);
  v41 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v142 - v42;
  v44 = type metadata accessor for TranscriptProtoParameterSet(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v181 = (&v142 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = MEMORY[0x28223BE20](v46);
  v177 = &v142 - v50;
  v51 = *(a1 + 16);
  if (v51 != *(a2 + 16))
  {
LABEL_96:
    v139 = 0;
    return v139 & 1;
  }

  if (!v51 || a1 == a2)
  {
    v139 = 1;
    return v139 & 1;
  }

  v162 = v28;
  v147 = v48;
  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v53 = a1 + v52;
  v151 = a2 + v52;
  v156 = (v29 + 48);
  v149 = (v20 + 48);
  v148 = (v12 + 48);
  v54 = 0;
  v144 = (v179 + 48);
  v55 = *(v49 + 72);
  v56 = v173;
  v57 = v182;
  v58 = v177;
  v150 = v11;
  v159 = v51;
  v146 = a1 + v52;
  v145 = v55;
  while (1)
  {
    v59 = v55 * v54;
    result = sub_23C5EDC08(v53 + v55 * v54, v58, type metadata accessor for TranscriptProtoParameterSet);
    if (v54 == v159)
    {
      break;
    }

    v61 = v151 + v59;
    v62 = v181;
    result = sub_23C5EDC08(v61, v181, type metadata accessor for TranscriptProtoParameterSet);
    v63 = *v58;
    v64 = *(*v58 + 16);
    v179 = *v62;
    if (v64 != *(v179 + 16))
    {
LABEL_95:
      sub_23C5EDCC4(v181, type metadata accessor for TranscriptProtoParameterSet);
      sub_23C5EDCC4(v177, type metadata accessor for TranscriptProtoParameterSet);
      goto LABEL_96;
    }

    v65 = v56;
    if (v64 && v63 != v179)
    {
      v66 = 0;
      v67 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v158 = v63 + v67;
      v157 = v179 + v67;
      v143 = v54;
      v161 = v41;
      v155 = v43;
      v152 = v37;
      v154 = v63;
      v153 = v64;
      while (v66 < *(v63 + 16))
      {
        v68 = *(v180 + 72) * v66;
        result = sub_23C5EDC08(v158 + v68, v43, type metadata accessor for TranscriptProtoParameter);
        if (v66 >= *(v179 + 16))
        {
          goto LABEL_99;
        }

        sub_23C5EDC08(v157 + v68, v41, type metadata accessor for TranscriptProtoParameter);
        if ((*v43 != *v41 || *(v43 + 1) != *(v41 + 1)) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_94;
        }

        v69 = v41[24];
        if (v43[24])
        {
          if (!v41[24])
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (*(v43 + 2) != *(v41 + 2))
          {
            v69 = 1;
          }

          if (v69)
          {
            goto LABEL_94;
          }
        }

        v169 = v66;
        v70 = *(v184 + 24);
        v71 = *(v178 + 48);
        sub_23C5855B0(&v43[v70], v37, &qword_27E1FAB98, &qword_23C878F40);
        sub_23C5855B0(&v41[v70], &v37[v71], &qword_27E1FAB98, &qword_23C878F40);
        v72 = v162;
        v73 = *v156;
        if ((*v156)(v37, 1, v162) == 1)
        {
          if (v73(&v37[v71], 1, v72) != 1)
          {
            goto LABEL_78;
          }

          sub_23C585C34(v37, &qword_27E1FAB98, &qword_23C878F40);
          v41 = v161;
          v43 = v155;
          v74 = v169;
        }

        else
        {
          sub_23C5855B0(v37, v57, &qword_27E1FAB98, &qword_23C878F40);
          if (v73(&v37[v71], 1, v72) == 1)
          {
            sub_23C5EDCC4(v57, type metadata accessor for TranscriptProtoCandidate);
LABEL_78:
            sub_23C585C34(v37, &qword_27E1FABA0, &qword_23C878F48);
            v41 = v161;
            goto LABEL_93;
          }

          v75 = v37;
          v76 = &v37[v71];
          v77 = v183;
          sub_23C5EDD24(v76, v183, type metadata accessor for TranscriptProtoCandidate);
          v78 = v72[5];
          v79 = *(v168 + 48);
          v80 = v176;
          sub_23C5855B0(&v57[v78], v176, &qword_27E1FAB68, &unk_23C879140);
          sub_23C5855B0(v77 + v78, v80 + v79, &qword_27E1FAB68, &unk_23C879140);
          v81 = *v149;
          v82 = v175;
          if ((*v149)(v80, 1, v175) == 1)
          {
            v83 = v81(v80 + v79, 1, v82) == 1;
            v84 = v80;
            if (!v83)
            {
              goto LABEL_82;
            }

            sub_23C585C34(v80, &qword_27E1FAB68, &unk_23C879140);
            v57 = v182;
            v85 = v183;
            v37 = v75;
            v86 = v162;
            v41 = v161;
          }

          else
          {
            v87 = v167;
            sub_23C5855B0(v80, v167, &qword_27E1FAB68, &unk_23C879140);
            if (v81(v80 + v79, 1, v82) == 1)
            {
              sub_23C5EDCC4(v87, type metadata accessor for ToolKitProtoTypedValue);
              v84 = v80;
LABEL_82:
              sub_23C585C34(v84, &qword_27E1FAB70, &qword_23C878F28);
              v57 = v182;
              v37 = v75;
              v41 = v161;
              goto LABEL_91;
            }

            v88 = v166;
            sub_23C5EDD24(v80 + v79, v166, type metadata accessor for ToolKitProtoTypedValue);
            v89 = *v87;
            v90 = *v88;
            if ((~*v87 & 0xF000000000000007) != 0)
            {
              v186 = *v87;
              v57 = v182;
              v37 = v75;
              if ((~v90 & 0xF000000000000007) == 0)
              {
                sub_23C56F2C0(v89);
                sub_23C56F2C0(v90);
                sub_23C56F2C0(v89);

                v41 = v161;
LABEL_88:
                sub_23C56F2D8(v89);
                sub_23C56F2D8(v90);
                v57 = v182;
LABEL_89:
                sub_23C5EDCC4(v166, type metadata accessor for ToolKitProtoTypedValue);
                sub_23C5EDCC4(v167, type metadata accessor for ToolKitProtoTypedValue);
                v140 = &qword_27E1FAB68;
                v141 = &unk_23C879140;
                v117 = v80;
                goto LABEL_90;
              }

              v185 = v90;
              sub_23C56F2C0(v89);
              sub_23C56F2C0(v90);
              sub_23C56F2C0(v89);
              v91 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v186, &v185);

              sub_23C56F2D8(v89);
              v41 = v161;
              if ((v91 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else
            {
              sub_23C56F2C0(*v87);
              sub_23C56F2C0(v90);
              v37 = v75;
              v41 = v161;
              if ((~v90 & 0xF000000000000007) != 0)
              {
                goto LABEL_88;
              }

              sub_23C56F2D8(v89);
              v57 = v182;
            }

            v92 = *(v175 + 20);
            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
            v93 = v166;
            v94 = v167;
            v95 = sub_23C871754();
            sub_23C5EDCC4(v93, type metadata accessor for ToolKitProtoTypedValue);
            sub_23C5EDCC4(v94, type metadata accessor for ToolKitProtoTypedValue);
            sub_23C585C34(v176, &qword_27E1FAB68, &unk_23C879140);
            v86 = v162;
            v85 = v183;
            if ((v95 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          if (*v57 != *v85)
          {
            goto LABEL_92;
          }

          v96 = v86[6];
          v97 = *(v165 + 48);
          v98 = v172;
          sub_23C5855B0(&v57[v96], v172, &qword_27E1FABB8, &unk_23C8A11E0);
          sub_23C5855B0(&v85[v96], v98 + v97, &qword_27E1FABB8, &unk_23C8A11E0);
          v99 = *v148;
          v100 = v150;
          if ((*v148)(v98, 1, v150) == 1)
          {
            v101 = v99(v98 + v97, 1, v100);
            v37 = v152;
            v85 = v183;
            if (v101 != 1)
            {
              goto LABEL_84;
            }

            sub_23C585C34(v98, &qword_27E1FABB8, &unk_23C8A11E0);
            v41 = v161;
            v65 = v173;
          }

          else
          {
            v102 = v160;
            sub_23C5855B0(v98, v160, &qword_27E1FABB8, &unk_23C8A11E0);
            if (v99(v98 + v97, 1, v100) == 1)
            {
              sub_23C5EDCC4(v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              v57 = v182;
              v85 = v183;
              v37 = v152;
LABEL_84:
              sub_23C585C34(v98, &qword_27E1FABC0, &qword_23C878F60);
              v41 = v161;
              goto LABEL_92;
            }

            v103 = v98 + v97;
            v104 = v170;
            sub_23C5EDD24(v103, v170, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v105 = *(v104 + 9);
            v37 = v152;
            if (*(v102 + 9))
            {
              v41 = v161;
              v65 = v173;
              if ((*(v104 + 9) & 1) == 0)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v41 = v161;
              v65 = v173;
              if (*(v104 + 9))
              {
                goto LABEL_80;
              }

              v106 = *v102;
              v107 = *v170;
              v108 = *(v170 + 8);
              if (*(v102 + 8))
              {
                if (v106)
                {
                  if ((v170[1] & 1) == 0 || !v107)
                  {
                    goto LABEL_80;
                  }
                }

                else if ((v170[1] & 1) == 0 || v107)
                {
                  goto LABEL_80;
                }
              }

              else if ((v170[1] & 1) != 0 || v106 != v107)
              {
LABEL_80:
                sub_23C5EDCC4(v170, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_23C5EDCC4(v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
                sub_23C585C34(v172, &qword_27E1FABB8, &unk_23C8A11E0);
                v57 = v182;
                goto LABEL_91;
              }
            }

            v109 = *(v150 + 20);
            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
            v110 = v170;
            v111 = sub_23C871754();
            sub_23C5EDCC4(v110, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_23C5EDCC4(v102, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            sub_23C585C34(v172, &qword_27E1FABB8, &unk_23C8A11E0);
            v57 = v182;
            v85 = v183;
            if ((v111 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v112 = v86[7];
          v113 = *(v164 + 48);
          v114 = &v57[v112];
          v115 = v171;
          sub_23C5855B0(v114, v171, &qword_27E1FAAF8, &unk_23C8A1180);
          sub_23C5855B0(&v85[v112], v115 + v113, &qword_27E1FAAF8, &unk_23C8A1180);
          v116 = *v144;
          if ((*v144)(v115, 1, v65) == 1)
          {
            v83 = v116(v115 + v113, 1, v65) == 1;
            v117 = v115;
            v57 = v182;
            v37 = v152;
            if (!v83)
            {
              goto LABEL_86;
            }

            sub_23C585C34(v117, &qword_27E1FAAF8, &unk_23C8A1180);
            v85 = v183;
          }

          else
          {
            v118 = v86;
            v119 = v65;
            v120 = v163;
            sub_23C5855B0(v115, v163, &qword_27E1FAAF8, &unk_23C8A1180);
            v121 = v119;
            if (v116(v115 + v113, 1, v119) == 1)
            {
              sub_23C5EDCC4(v120, type metadata accessor for TranscriptProtoStatementID);
              v117 = v115;
              v57 = v182;
              v37 = v152;
LABEL_86:
              v140 = &qword_27E1FAB00;
              v141 = &qword_23C878ED8;
LABEL_90:
              sub_23C585C34(v117, v140, v141);
LABEL_91:
              v85 = v183;
LABEL_92:
              sub_23C5EDCC4(v85, type metadata accessor for TranscriptProtoCandidate);
              sub_23C5EDCC4(v57, type metadata accessor for TranscriptProtoCandidate);
              sub_23C585C34(v37, &qword_27E1FAB98, &qword_23C878F40);
LABEL_93:
              v43 = v155;
LABEL_94:
              sub_23C5EDCC4(v41, type metadata accessor for TranscriptProtoParameter);
              sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoParameter);
              goto LABEL_95;
            }

            v122 = v115 + v113;
            v123 = v174;
            sub_23C5EDD24(v122, v174, type metadata accessor for TranscriptProtoStatementID);
            v57 = v182;
            v124 = v120;
            if (*v120 != *v123)
            {
              goto LABEL_79;
            }

            v65 = v119;
            v86 = v118;
            v125 = *(v124 + 16);
            v126 = *(v174 + 16);
            if (v125)
            {
              if (!v126 || (*(v124 + 8) != *(v174 + 8) || v125 != v126) && (sub_23C872014() & 1) == 0)
              {
LABEL_79:
                sub_23C5EDCC4(v174, type metadata accessor for TranscriptProtoStatementID);
                sub_23C5EDCC4(v124, type metadata accessor for TranscriptProtoStatementID);
                sub_23C585C34(v171, &qword_27E1FAAF8, &unk_23C8A1180);
                v85 = v183;
                v37 = v152;
                goto LABEL_92;
              }
            }

            else if (v126)
            {
              goto LABEL_79;
            }

            v127 = *(v121 + 24);
            sub_23C870F34();
            sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
            v128 = v57;
            v129 = v174;
            v130 = sub_23C871754();
            v131 = v129;
            v57 = v128;
            sub_23C5EDCC4(v131, type metadata accessor for TranscriptProtoStatementID);
            sub_23C5EDCC4(v163, type metadata accessor for TranscriptProtoStatementID);
            sub_23C585C34(v171, &qword_27E1FAAF8, &unk_23C8A1180);
            v85 = v183;
            v37 = v152;
            if ((v130 & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v132 = v86[8];
          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
          v133 = sub_23C871754();
          sub_23C5EDCC4(v85, type metadata accessor for TranscriptProtoCandidate);
          sub_23C5EDCC4(v57, type metadata accessor for TranscriptProtoCandidate);
          sub_23C585C34(v37, &qword_27E1FAB98, &qword_23C878F40);
          v54 = v143;
          v43 = v155;
          v74 = v169;
          if ((v133 & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        v134 = *(v184 + 28);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v135 = sub_23C871754();
        sub_23C5EDCC4(v41, type metadata accessor for TranscriptProtoParameter);
        result = sub_23C5EDCC4(v43, type metadata accessor for TranscriptProtoParameter);
        v63 = v154;
        if ((v135 & 1) == 0)
        {
          goto LABEL_95;
        }

        v66 = v74 + 1;
        if (v153 == v66)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_99:
      __break(1u);
      break;
    }

LABEL_73:
    v56 = v65;
    v136 = v54;
    v137 = *(v147 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v58 = v177;
    v138 = v181;
    v139 = sub_23C871754();
    sub_23C5EDCC4(v138, type metadata accessor for TranscriptProtoParameterSet);
    sub_23C5EDCC4(v58, type metadata accessor for TranscriptProtoParameterSet);
    if (v139)
    {
      v54 = v136 + 1;
      v53 = v146;
      v55 = v145;
      if (v136 + 1 != v159)
      {
        continue;
      }
    }

    return v139 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D8D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB98, &qword_23C878F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA0, &qword_23C878F48);
  v13 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v15 = &v45 - v14;
  v50 = type metadata accessor for TranscriptProtoParameter(0);
  v16 = *(*(v50 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v50);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_29:
    v44 = 0;
    return v44 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v44 = 1;
    return v44 & 1;
  }

  v46 = v8;
  v47 = v12;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v54 = a2 + v24;
  v26 = (v5 + 48);
  v48 = *(v20 + 72);
  v49 = v4;
  v27 = v50;
  while (1)
  {
    v53 = v23;
    result = sub_23C5EDC08(v25, v22, type metadata accessor for TranscriptProtoParameter);
    if (!v53)
    {
      break;
    }

    sub_23C5EDC08(v54, v19, type metadata accessor for TranscriptProtoParameter);
    v29 = *v22 == *v19 && *(v22 + 1) == *(v19 + 1);
    if (!v29 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }

    v30 = v19[24];
    if (v22[24])
    {
      if (!v19[24])
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (*(v22 + 2) != *(v19 + 2))
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_28;
      }
    }

    v52 = v25;
    v31 = *(v27 + 24);
    v32 = *(v51 + 48);
    sub_23C5855B0(&v22[v31], v15, &qword_27E1FAB98, &qword_23C878F40);
    sub_23C5855B0(&v19[v31], &v15[v32], &qword_27E1FAB98, &qword_23C878F40);
    v33 = *v26;
    v34 = v15;
    v35 = v15;
    v36 = v49;
    if ((*v26)(v34, 1, v49) == 1)
    {
      if (v33((v35 + v32), 1, v36) != 1)
      {
        goto LABEL_27;
      }

      sub_23C585C34(v35, &qword_27E1FAB98, &qword_23C878F40);
      v15 = v35;
      v37 = v52;
    }

    else
    {
      v38 = v47;
      sub_23C5855B0(v35, v47, &qword_27E1FAB98, &qword_23C878F40);
      if (v33((v35 + v32), 1, v36) == 1)
      {
        sub_23C5EDCC4(v38, type metadata accessor for TranscriptProtoCandidate);
LABEL_27:
        sub_23C585C34(v35, &qword_27E1FABA0, &qword_23C878F48);
LABEL_28:
        sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoParameter);
        sub_23C5EDCC4(v22, type metadata accessor for TranscriptProtoParameter);
        goto LABEL_29;
      }

      v39 = v26;
      v40 = v46;
      sub_23C5EDD24(v35 + v32, v46, type metadata accessor for TranscriptProtoCandidate);
      v41 = static TranscriptProtoCandidate.== infix(_:_:)(v38, v40);
      v42 = v40;
      v26 = v39;
      sub_23C5EDCC4(v42, type metadata accessor for TranscriptProtoCandidate);
      sub_23C5EDCC4(v38, type metadata accessor for TranscriptProtoCandidate);
      sub_23C585C34(v35, &qword_27E1FAB98, &qword_23C878F40);
      v27 = v50;
      v15 = v35;
      v37 = v52;
      if ((v41 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v43 = *(v27 + 28);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v44 = sub_23C871754();
    sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoParameter);
    sub_23C5EDCC4(v22, type metadata accessor for TranscriptProtoParameter);
    if (v44)
    {
      v54 += v48;
      v25 = v37 + v48;
      v23 = v53 - 1;
      if (v53 != 1)
      {
        continue;
      }
    }

    return v44 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5D92E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_23C5EDC08(v21, v18, a4);
        sub_23C5EDC08(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_23C5EDCC4(v15, a6);
        sub_23C5EDCC4(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_23C5D9488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_18:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23C5EDC08(v14, v11, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDC08(v15, v8, type metadata accessor for TranscriptProtoStatementID);
      if (*v11 != *v8)
      {
        break;
      }

      v17 = *(v11 + 2);
      v18 = *(v8 + 2);
      if (v17)
      {
        if (!v18 || (*(v11 + 1) != *(v8 + 1) || v17 != v18) && (sub_23C872014() & 1) == 0)
        {
          break;
        }
      }

      else if (v18)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoStatementID);
      sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoStatementID);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoStatementID);
    sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_18;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_23C5D976C(uint64_t a1, uint64_t a2)
{
  v150 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v150 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v150);
  v154 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v145 = &v123 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v10 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v158 = &v123 - v11;
  v153 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v12 = *(v153 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v153);
  v149 = (&v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v142 = &v123 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC0, &qword_23C878F60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v152 = &v123 - v20;
  v156 = type metadata accessor for ToolKitProtoTypedValue(0);
  v21 = *(v156 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v156);
  v143 = (&v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v147 = (&v123 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v157 = &v123 - v29;
  v30 = type metadata accessor for TranscriptProtoCandidate(0);
  v151 = *(v30 - 8);
  v31 = *(v151 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v123 - v35;
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v38 = *(*(Results - 8) + 64);
  v39 = MEMORY[0x28223BE20](Results);
  v155 = &v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v148 = &v123 - v43;
  v44 = *(a1 + 16);
  if (v44 != *(a2 + 16))
  {
LABEL_76:
    v119 = 0;
    return v119 & 1;
  }

  if (!v44 || a1 == a2)
  {
    v119 = 1;
    return v119 & 1;
  }

  v128 = v41;
  v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v46 = a1 + v45;
  v47 = 0;
  v129 = a2 + v45;
  v141 = (v21 + 48);
  v136 = (v12 + 48);
  v134 = (v4 + 48);
  v48 = *(v42 + 72);
  v49 = v148;
  v133 = v27;
  v159 = v30;
  v139 = v44;
  v127 = v46;
  v126 = v48;
  while (1)
  {
    v50 = v48 * v47;
    result = sub_23C5EDC08(v46 + v48 * v47, v49, type metadata accessor for TranscriptProtoQueryResults);
    if (v47 == v139)
    {
      break;
    }

    v135 = v47;
    v52 = v129 + v50;
    v53 = v155;
    result = sub_23C5EDC08(v52, v155, type metadata accessor for TranscriptProtoQueryResults);
    v54 = *v49;
    v55 = *v53;
    v56 = *(*v49 + 16);
    if (v56 != *(*v53 + 16))
    {
LABEL_75:
      sub_23C5EDCC4(v155, type metadata accessor for TranscriptProtoQueryResults);
      sub_23C5EDCC4(v148, type metadata accessor for TranscriptProtoQueryResults);
      goto LABEL_76;
    }

    v57 = v18;
    if (v56 && v54 != v55)
    {
      v58 = 0;
      v59 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v138 = v54 + v59;
      v137 = v55 + v59;
      v125 = v36;
      v144 = v57;
      v124 = v34;
      v132 = v54;
      v131 = v55;
      v130 = v56;
      while (v58 < *(v54 + 16))
      {
        v60 = *(v151 + 72) * v58;
        result = sub_23C5EDC08(v138 + v60, v36, type metadata accessor for TranscriptProtoCandidate);
        if (v58 >= *(v55 + 16))
        {
          goto LABEL_79;
        }

        v140 = v58;
        sub_23C5EDC08(v137 + v60, v34, type metadata accessor for TranscriptProtoCandidate);
        v61 = *(v159 + 20);
        v62 = *(v27 + 48);
        v63 = v157;
        sub_23C5855B0(&v36[v61], v157, &qword_27E1FAB68, &unk_23C879140);
        sub_23C5855B0(&v34[v61], v63 + v62, &qword_27E1FAB68, &unk_23C879140);
        v64 = *v141;
        v65 = v156;
        if ((*v141)(v63, 1, v156) == 1)
        {
          if (v64(v63 + v62, 1, v65) != 1)
          {
            goto LABEL_65;
          }

          sub_23C585C34(v63, &qword_27E1FAB68, &unk_23C879140);
          v67 = v158;
          v66 = v159;
          v68 = v144;
        }

        else
        {
          v69 = v65;
          v70 = v147;
          sub_23C5855B0(v63, v147, &qword_27E1FAB68, &unk_23C879140);
          if (v64(v63 + v62, 1, v69) == 1)
          {
            sub_23C5EDCC4(v70, type metadata accessor for ToolKitProtoTypedValue);
LABEL_65:
            v121 = &qword_27E1FAB70;
            v122 = &qword_23C878F28;
            v87 = v63;
LABEL_73:
            sub_23C585C34(v87, v121, v122);
            goto LABEL_74;
          }

          v71 = v143;
          sub_23C5EDD24(v63 + v62, v143, type metadata accessor for ToolKitProtoTypedValue);
          v72 = *v70;
          v73 = *v71;
          if ((~*v70 & 0xF000000000000007) != 0)
          {
            v161 = *v70;
            v74 = v156;
            if ((~v73 & 0xF000000000000007) == 0)
            {
              sub_23C56F2C0(v72);
              sub_23C56F2C0(v73);
              sub_23C56F2C0(v72);

LABEL_71:
              sub_23C56F2D8(v72);
              sub_23C56F2D8(v73);
LABEL_72:
              sub_23C5EDCC4(v71, type metadata accessor for ToolKitProtoTypedValue);
              sub_23C5EDCC4(v147, type metadata accessor for ToolKitProtoTypedValue);
              v121 = &qword_27E1FAB68;
              v122 = &unk_23C879140;
              v87 = v157;
              goto LABEL_73;
            }

            v160 = v73;
            sub_23C56F2C0(v72);
            sub_23C56F2C0(v73);
            sub_23C56F2C0(v72);
            v75 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v161, &v160);

            sub_23C56F2D8(v72);
            if ((v75 & 1) == 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            sub_23C56F2C0(v72);
            sub_23C56F2C0(v73);
            if ((~v73 & 0xF000000000000007) != 0)
            {
              goto LABEL_71;
            }

            sub_23C56F2D8(v72);
            v74 = v156;
          }

          v76 = *(v74 + 20);
          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
          v77 = v147;
          LOBYTE(v76) = sub_23C871754();
          sub_23C5EDCC4(v71, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C5EDCC4(v77, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C585C34(v157, &qword_27E1FAB68, &unk_23C879140);
          v67 = v158;
          v66 = v159;
          v68 = v144;
          if ((v76 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (*v36 != *v34)
        {
          goto LABEL_74;
        }

        v78 = *(v66 + 24);
        v79 = *(v68 + 48);
        v80 = &v36[v78];
        v81 = v36;
        v82 = v34;
        v83 = v152;
        sub_23C5855B0(v80, v152, &qword_27E1FABB8, &unk_23C8A11E0);
        sub_23C5855B0(&v82[v78], v83 + v79, &qword_27E1FABB8, &unk_23C8A11E0);
        v84 = *v136;
        v85 = v153;
        if ((*v136)(v83, 1, v153) == 1)
        {
          v86 = v84(v83 + v79, 1, v85) == 1;
          v87 = v83;
          v34 = v82;
          v36 = v81;
          if (!v86)
          {
            goto LABEL_67;
          }

          sub_23C585C34(v87, &qword_27E1FABB8, &unk_23C8A11E0);
          v88 = v67;
          v89 = v159;
        }

        else
        {
          v90 = v67;
          v91 = v142;
          sub_23C5855B0(v83, v142, &qword_27E1FABB8, &unk_23C8A11E0);
          if (v84(v83 + v79, 1, v85) == 1)
          {
            sub_23C5EDCC4(v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
            v87 = v83;
            v34 = v124;
            v36 = v125;
LABEL_67:
            v121 = &qword_27E1FABC0;
            v122 = &qword_23C878F60;
            goto LABEL_73;
          }

          v92 = v83 + v79;
          v93 = v149;
          sub_23C5EDD24(v92, v149, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          v94 = *(v93 + 9);
          if (*(v91 + 9))
          {
            v95 = v153;
            if ((*(v93 + 9) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v95 = v153;
            if (*(v93 + 9))
            {
              goto LABEL_63;
            }

            v96 = *v91;
            v97 = *v149;
            v98 = *(v149 + 8);
            if (*(v91 + 8))
            {
              if (v96)
              {
                if ((v149[1] & 1) == 0 || !v97)
                {
                  goto LABEL_63;
                }
              }

              else if ((v149[1] & 1) == 0 || v97)
              {
                goto LABEL_63;
              }
            }

            else if ((v149[1] & 1) != 0 || v96 != v97)
            {
LABEL_63:
              sub_23C5EDCC4(v149, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_23C5EDCC4(v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
              sub_23C585C34(v152, &qword_27E1FABB8, &unk_23C8A11E0);
              v34 = v124;
              v36 = v125;
LABEL_74:
              sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoCandidate);
              sub_23C5EDCC4(v36, type metadata accessor for TranscriptProtoCandidate);
              goto LABEL_75;
            }
          }

          v99 = *(v95 + 20);
          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
          v100 = v149;
          LOBYTE(v99) = sub_23C871754();
          sub_23C5EDCC4(v100, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_23C5EDCC4(v91, type metadata accessor for TranscriptProtoCandidatePromptStatus);
          sub_23C585C34(v152, &qword_27E1FABB8, &unk_23C8A11E0);
          v88 = v90;
          v34 = v124;
          v36 = v125;
          v89 = v159;
          if ((v99 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v101 = *(v89 + 28);
        v102 = *(v146 + 48);
        v103 = v158;
        sub_23C5855B0(&v36[v101], v88, &qword_27E1FAAF8, &unk_23C8A1180);
        sub_23C5855B0(&v34[v101], v103 + v102, &qword_27E1FAAF8, &unk_23C8A1180);
        v104 = *v134;
        v105 = v150;
        if ((*v134)(v103, 1, v150) == 1)
        {
          if (v104(v103 + v102, 1, v105) != 1)
          {
            goto LABEL_69;
          }

          sub_23C585C34(v103, &qword_27E1FAAF8, &unk_23C8A1180);
          v106 = v159;
          v57 = v144;
        }

        else
        {
          v107 = v145;
          sub_23C5855B0(v103, v145, &qword_27E1FAAF8, &unk_23C8A1180);
          if (v104(v103 + v102, 1, v105) == 1)
          {
            sub_23C5EDCC4(v107, type metadata accessor for TranscriptProtoStatementID);
LABEL_69:
            v121 = &qword_27E1FAB00;
            v122 = &qword_23C878ED8;
            v87 = v103;
            goto LABEL_73;
          }

          v108 = v103 + v102;
          v109 = v154;
          sub_23C5EDD24(v108, v154, type metadata accessor for TranscriptProtoStatementID);
          v110 = v144;
          if (*v107 != *v109)
          {
            goto LABEL_62;
          }

          v111 = *(v107 + 16);
          v112 = *(v154 + 16);
          if (v111)
          {
            if (!v112 || (*(v107 + 8) != *(v154 + 8) || v111 != v112) && (sub_23C872014() & 1) == 0)
            {
LABEL_62:
              sub_23C5EDCC4(v154, type metadata accessor for TranscriptProtoStatementID);
              sub_23C5EDCC4(v107, type metadata accessor for TranscriptProtoStatementID);
              v121 = &qword_27E1FAAF8;
              v122 = &unk_23C8A1180;
              v87 = v158;
              goto LABEL_73;
            }
          }

          else if (v112)
          {
            goto LABEL_62;
          }

          v113 = *(v150 + 24);
          sub_23C870F34();
          sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
          v114 = v154;
          LOBYTE(v113) = sub_23C871754();
          v57 = v110;
          sub_23C5EDCC4(v114, type metadata accessor for TranscriptProtoStatementID);
          sub_23C5EDCC4(v145, type metadata accessor for TranscriptProtoStatementID);
          sub_23C585C34(v158, &qword_27E1FAAF8, &unk_23C8A1180);
          v106 = v159;
          if ((v113 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v115 = *(v106 + 32);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        LOBYTE(v115) = sub_23C871754();
        sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoCandidate);
        result = sub_23C5EDCC4(v36, type metadata accessor for TranscriptProtoCandidate);
        v27 = v133;
        v54 = v132;
        v55 = v131;
        if ((v115 & 1) == 0)
        {
          goto LABEL_75;
        }

        v58 = v140 + 1;
        if (v130 == v140 + 1)
        {
          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
      break;
    }

LABEL_58:
    v18 = v57;
    v116 = *(v128 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v117 = v148;
    v118 = v155;
    v119 = sub_23C871754();
    v120 = v118;
    v49 = v117;
    sub_23C5EDCC4(v120, type metadata accessor for TranscriptProtoQueryResults);
    sub_23C5EDCC4(v117, type metadata accessor for TranscriptProtoQueryResults);
    if (v119)
    {
      v47 = v135 + 1;
      v46 = v127;
      v48 = v126;
      if (v135 + 1 != v139)
      {
        continue;
      }
    }

    return v119 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DA9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC08, &qword_23C878FA0);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoShimParameter(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27E1FAC00;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for TranscriptProtoShimParameter);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for TranscriptProtoShimParameter);
    v29 = *(v47 + 48);
    sub_23C5855B0(v21, v14, v27, &qword_23C878F98);
    sub_23C5855B0(v18, &v14[v29], v27, &qword_23C878F98);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &qword_23C878F98);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_23C5855B0(v14, v42, v31, &qword_23C878F98);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoShimParameterEnum);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_23C585C34(v14, &qword_27E1FAC08, &qword_23C878FA0);
LABEL_17:
        sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoShimParameter);
        sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoShimParameter);
        goto LABEL_18;
      }

      v35 = v43;
      sub_23C5EDD24(&v14[v29], v43, type metadata accessor for TranscriptProtoShimParameterEnum);
      v36 = _s26AIMLInstrumentationStreams32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoShimParameterEnum);
      sub_23C585C34(v14, v31, &qword_23C878F98);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoShimParameter);
    sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoShimParameter);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DAEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE8, &qword_23C878F80);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoUIType(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27E1FABE0;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for TranscriptProtoUIType);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for TranscriptProtoUIType);
    v29 = *(v47 + 48);
    sub_23C5855B0(v21, v14, v27, &qword_23C878F78);
    sub_23C5855B0(v18, &v14[v29], v27, &qword_23C878F78);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &qword_23C878F78);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_23C5855B0(v14, v42, v31, &qword_23C878F78);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoUitype);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_23C585C34(v14, &qword_27E1FABE8, &qword_23C878F80);
LABEL_17:
        sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoUIType);
        sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoUIType);
        goto LABEL_18;
      }

      v35 = v43;
      sub_23C5EDD24(&v14[v29], v43, type metadata accessor for TranscriptProtoUitype);
      v36 = static TranscriptProtoUitype.== infix(_:_:)(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoUitype);
      sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoUitype);
      sub_23C585C34(v14, v31, &qword_23C878F78);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoUIType);
    sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoUIType);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DB40C(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v4 = *(*(v56 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v56);
  v64 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = (&v54 - v7);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC8, &qword_23C878F68);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v54 - v10;
  v68 = type metadata accessor for TranscriptProtoLabel(0);
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v68);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD0, &unk_23C8A1300);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v54 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD8, &qword_23C878F70);
  v17 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - v18;
  v60 = type metadata accessor for TranscriptProtoUILabel(0);
  v19 = *(*(v60 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v60);
  v69 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
LABEL_26:
    v50 = 0;
    return v50 & 1;
  }

  if (!v25 || a1 == a2)
  {
    v50 = 1;
    return v50 & 1;
  }

  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v29 = (v11 + 48);
  v30 = *(v22 + 72);
  v31 = v59;
  v63 = &v54 - v23;
  v54 = v30;
  v55 = (v11 + 48);
  while (1)
  {
    v66 = v27;
    result = sub_23C5EDC08(v27, v24, type metadata accessor for TranscriptProtoUILabel);
    if (!v25)
    {
      break;
    }

    v65 = v25;
    v33 = v69;
    sub_23C5EDC08(v28, v69, type metadata accessor for TranscriptProtoUILabel);
    v34 = *(v62 + 48);
    sub_23C5855B0(v24, v31, &qword_27E1FABD0, &unk_23C8A1300);
    sub_23C5855B0(v33, v31 + v34, &qword_27E1FABD0, &unk_23C8A1300);
    v35 = *v29;
    if ((*v29)(v31, 1, v68) == 1)
    {
      if (v35(v31 + v34, 1, v68) != 1)
      {
        goto LABEL_22;
      }

      sub_23C585C34(v31, &qword_27E1FABD0, &unk_23C8A1300);
    }

    else
    {
      sub_23C5855B0(v31, v67, &qword_27E1FABD0, &unk_23C8A1300);
      if (v35(v31 + v34, 1, v68) == 1)
      {
        sub_23C5EDCC4(v67, type metadata accessor for TranscriptProtoLabel);
LABEL_22:
        v52 = &qword_27E1FABD8;
        v53 = &qword_23C878F70;
        goto LABEL_24;
      }

      v36 = v61;
      sub_23C5EDD24(v31 + v34, v61, type metadata accessor for TranscriptProtoLabel);
      v37 = v57;
      v38 = *(v58 + 48);
      sub_23C5EDC08(v67, v57, type metadata accessor for TranscriptProtoLabel);
      sub_23C5EDC08(v36, v37 + v38, type metadata accessor for TranscriptProtoLabel);
      sub_23C5EDD24(v37, v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      v39 = v37 + v38;
      v40 = v64;
      sub_23C5EDD24(v39, v64, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      if ((*v8 != *v40 || v8[1] != v40[1]) && (sub_23C872014() & 1) == 0 || (v8[2] != v64[2] || v8[3] != v64[3]) && (sub_23C872014() & 1) == 0)
      {
        sub_23C5EDCC4(v64, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
        sub_23C5EDCC4(v61, type metadata accessor for TranscriptProtoLabel);
        sub_23C5EDCC4(v67, type metadata accessor for TranscriptProtoLabel);
        v52 = &qword_27E1FABD0;
        v53 = &unk_23C8A1300;
LABEL_24:
        sub_23C585C34(v31, v52, v53);
LABEL_25:
        sub_23C5EDCC4(v69, type metadata accessor for TranscriptProtoUILabel);
        sub_23C5EDCC4(v24, type metadata accessor for TranscriptProtoUILabel);
        goto LABEL_26;
      }

      v41 = *(v56 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v42 = v8;
      v43 = v64;
      v44 = sub_23C871754();
      v45 = v43;
      v8 = v42;
      v24 = v63;
      v46 = v61;
      v47 = v67;
      v31 = v59;
      sub_23C5EDCC4(v45, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
      sub_23C5EDCC4(v46, type metadata accessor for TranscriptProtoLabel);
      sub_23C5EDCC4(v47, type metadata accessor for TranscriptProtoLabel);
      sub_23C585C34(v31, &qword_27E1FABD0, &unk_23C8A1300);
      v30 = v54;
      v29 = v55;
      if ((v44 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v48 = *(v60 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v49 = v69;
    v50 = sub_23C871754();
    v51 = v49;
    v24 = v63;
    sub_23C5EDCC4(v51, type metadata accessor for TranscriptProtoUILabel);
    sub_23C5EDCC4(v24, type metadata accessor for TranscriptProtoUILabel);
    if (v50)
    {
      v25 = v65 - 1;
      v28 += v30;
      v27 = v66 + v30;
      if (v65 != 1)
      {
        continue;
      }
    }

    return v50 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DBBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF8, &qword_23C878F90);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27E1FABF0;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for TranscriptProtoVisualOutput);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for TranscriptProtoVisualOutput);
    v29 = *(v47 + 48);
    sub_23C5855B0(v21, v14, v27, &qword_23C878F88);
    sub_23C5855B0(v18, &v14[v29], v27, &qword_23C878F88);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &qword_23C878F88);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_23C5855B0(v14, v42, v31, &qword_23C878F88);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoVisualOutputType);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_23C585C34(v14, &qword_27E1FABF8, &qword_23C878F90);
LABEL_17:
        sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoVisualOutput);
        sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoVisualOutput);
        goto LABEL_18;
      }

      v35 = v43;
      sub_23C5EDD24(&v14[v29], v43, type metadata accessor for TranscriptProtoVisualOutputType);
      v36 = static TranscriptProtoVisualOutputType.== infix(_:_:)(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_23C5EDCC4(v34, type metadata accessor for TranscriptProtoVisualOutputType);
      sub_23C585C34(v14, v31, &qword_23C878F88);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for TranscriptProtoVisualOutput);
    sub_23C5EDCC4(v21, type metadata accessor for TranscriptProtoVisualOutput);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DC13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23C5EDC08(v14, v11, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_23C5EDC08(v15, v8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if ((sub_23C5DC390(*v11, *v8) & 1) == 0)
      {
        break;
      }

      v17 = *(v4 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v18 = sub_23C871754();
      sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    goto LABEL_11;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_23C5DC390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_19:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23C5EDC08(v14, v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_23C5EDC08(v15, v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_23C872014() & 1) == 0 || *(v11 + 2) != *(v8 + 2) || *(v11 + 3) != *(v8 + 3) || *(v11 + 4) != *(v8 + 4) || *(v11 + 5) != *(v8 + 5))
      {
        break;
      }

      v18 = *(v4 + 36);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v19 = sub_23C871754();
      sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_23C5EDCC4(v8, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
    goto LABEL_19;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_23C5DC634(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v44 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v47 = (&v42 - v9);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v12 = &v42 - v11;
  v48 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v13 = *(*(v48 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v48);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v19 = (&v42 - v18);
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_29:
    v38 = 0;
    return v38 & 1;
  }

  if (!v20 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v42 = *(v17 + 72);
  v43 = (v4 + 48);
  v46 = (&v42 - v18);
  while (1)
  {
    result = sub_23C5EDC08(v22, v19, type metadata accessor for TranscriptProtoVariableSetter);
    if (!v20)
    {
      break;
    }

    sub_23C5EDC08(v23, v16, type metadata accessor for TranscriptProtoVariableSetter);
    v25 = *(v48 + 20);
    v26 = *(v45 + 48);
    sub_23C5855B0(v19 + v25, v12, &qword_27E1FAB68, &unk_23C879140);
    sub_23C5855B0(v16 + v25, &v12[v26], &qword_27E1FAB68, &unk_23C879140);
    v27 = *v43;
    if ((*v43)(v12, 1, v49) == 1)
    {
      if (v27(&v12[v26], 1, v49) != 1)
      {
        goto LABEL_23;
      }

      sub_23C585C34(v12, &qword_27E1FAB68, &unk_23C879140);
      v28 = v46;
    }

    else
    {
      sub_23C5855B0(v12, v47, &qword_27E1FAB68, &unk_23C879140);
      if (v27(&v12[v26], 1, v49) == 1)
      {
        sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoTypedValue);
LABEL_23:
        v40 = &qword_27E1FAB70;
        v41 = &qword_23C878F28;
LABEL_27:
        sub_23C585C34(v12, v40, v41);
        v28 = v46;
LABEL_28:
        sub_23C5EDCC4(v16, type metadata accessor for TranscriptProtoVariableSetter);
        sub_23C5EDCC4(v28, type metadata accessor for TranscriptProtoVariableSetter);
        goto LABEL_29;
      }

      v29 = &v12[v26];
      v30 = v44;
      sub_23C5EDD24(v29, v44, type metadata accessor for ToolKitProtoTypedValue);
      v31 = *v47;
      v32 = *v30;
      if ((~*v47 & 0xF000000000000007) != 0)
      {
        v51 = *v47;
        if ((~v32 & 0xF000000000000007) == 0)
        {
          sub_23C56F2C0(v31);
          sub_23C56F2C0(v32);
          sub_23C56F2C0(v31);

LABEL_25:
          sub_23C56F2D8(v31);
          sub_23C56F2D8(v32);
LABEL_26:
          sub_23C5EDCC4(v44, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoTypedValue);
          v40 = &qword_27E1FAB68;
          v41 = &unk_23C879140;
          goto LABEL_27;
        }

        v50 = v32;
        sub_23C56F2C0(v31);
        sub_23C56F2C0(v32);
        sub_23C56F2C0(v31);
        v33 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v51, &v50);

        sub_23C56F2D8(v31);
        if ((v33 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_23C56F2C0(*v47);
        sub_23C56F2C0(v32);
        if ((~v32 & 0xF000000000000007) != 0)
        {
          goto LABEL_25;
        }

        sub_23C56F2D8(v31);
      }

      v34 = *(v49 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v35 = v47;
      v36 = v44;
      LOBYTE(v34) = sub_23C871754();
      sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v12, &qword_27E1FAB68, &unk_23C879140);
      v28 = v46;
      if ((v34 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if ((sub_23C7FD0C0(*v28, *v16) & 1) == 0)
    {
      goto LABEL_28;
    }

    v37 = *(v48 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v16, type metadata accessor for TranscriptProtoVariableSetter);
    sub_23C5EDCC4(v28, type metadata accessor for TranscriptProtoVariableSetter);
    if (v38)
    {
      v23 += v42;
      v22 += v42;
      v39 = v20-- == 1;
      v19 = v46;
      if (!v39)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DCD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v35 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_43:
    v34 = 0;
    return v34 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v34 = 1;
    return v34 & 1;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v36 = a2 + v14;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_23C5EDC08(v15 + v16 * v13, v11, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if (v13 == v12)
    {
      break;
    }

    result = sub_23C5EDC08(v36 + v16 * v13, v8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    v18 = *v11;
    v19 = *v8;
    v20 = *(*v11 + 16);
    if (v20 != *(*v8 + 16))
    {
      goto LABEL_42;
    }

    if (v20)
    {
      v21 = v18 == v19;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v24 = (v18 + 40);
      v25 = (v19 + 40);
      while (v20)
      {
        result = *(v24 - 1);
        if (result != *(v25 - 1) || *v24 != *v25)
        {
          result = sub_23C872014();
          if ((result & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v24 += 2;
        v25 += 2;
        if (!--v20)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
      break;
    }

LABEL_12:
    v22 = v11[3];
    v23 = v8[3];
    if (v22)
    {
      if (!v23 || (v11[2] != v8[2] || v22 != v23) && (sub_23C872014() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v23)
    {
      goto LABEL_42;
    }

    v27 = v11[1];
    v28 = v8[1];
    v29 = *(v27 + 16);
    if (v29 != *(v28 + 16))
    {
      goto LABEL_42;
    }

    if (v29 && v27 != v28)
    {
      v30 = (v27 + 40);
      v31 = (v28 + 40);
      while (1)
      {
        v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
        if (!v32 && (sub_23C872014() & 1) == 0)
        {
          break;
        }

        v30 += 2;
        v31 += 2;
        if (!--v29)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      goto LABEL_43;
    }

LABEL_38:
    v33 = *(v4 + 28);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v34 = sub_23C871754();
    sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
    if ((v34 & 1) != 0 && ++v13 != v12)
    {
      continue;
    }

    return v34 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DD078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC68, &qword_23C878FE8);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27E1FAC60;
  v42 = v18;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoRuntimeRequirement);
    v29 = *(v49 + 48);
    sub_23C5855B0(v21, v14, v27, &unk_23C889D20);
    sub_23C5855B0(v18, &v14[v29], v27, &unk_23C889D20);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoRuntimeRequirement;
        goto LABEL_17;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &unk_23C889D20);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_23C5855B0(v14, v44, v31, &unk_23C889D20);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoRuntimeRequirement);
        v39 = type metadata accessor for ToolKitProtoRuntimeRequirementKind;
        v40 = v34;
LABEL_17:
        sub_23C5EDCC4(v40, v39);
        sub_23C585C34(v14, &qword_27E1FAC68, &qword_23C878FE8);
        goto LABEL_19;
      }

      v35 = v45;
      sub_23C5EDD24(&v14[v29], v45, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v36 = static ToolKitProtoRuntimeRequirementKind.== infix(_:_:)(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      sub_23C585C34(v14, v31, &unk_23C889D20);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoRuntimeRequirement);
        sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoRuntimeRequirement);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoRuntimeRequirement);
    sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoRuntimeRequirement);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DD5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC58, &qword_23C878FE0);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27E1FAC50;
  v42 = v18;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    v29 = *(v49 + 48);
    sub_23C5855B0(v21, v14, v27, &qword_23C878FD8);
    sub_23C5855B0(v18, &v14[v29], v27, &qword_23C878FD8);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoSystemTypeProtocol;
        goto LABEL_17;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &qword_23C878FD8);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_23C5855B0(v14, v44, v31, &qword_23C878FD8);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        v39 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind;
        v40 = v34;
LABEL_17:
        sub_23C5EDCC4(v40, v39);
        sub_23C585C34(v14, &qword_27E1FAC58, &qword_23C878FE0);
        goto LABEL_19;
      }

      v35 = v45;
      sub_23C5EDD24(&v14[v29], v45, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v36 = static ToolKitProtoSystemTypeProtocolKind.== infix(_:_:)(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      sub_23C585C34(v14, v31, &qword_23C878FD8);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoSystemTypeProtocol);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoSystemTypeProtocol);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DDB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = (&v44 - v10);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v11 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v13 = &v44 - v12;
  v14 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = (&v44 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v22 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v49 = (v5 + 48);
  v50 = v4;
  v26 = *(v19 + 72);
  v44 = v13;
  v45 = v26;
  v46 = v14;
  v47 = v18;
  v48 = (&v44 - v20);
  while (1)
  {
    sub_23C5EDC08(v24, v21, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (*v21 != *v18)
    {
      goto LABEL_26;
    }

    v27 = *(v14 + 20);
    v28 = *(v52 + 48);
    sub_23C5855B0(v21 + v27, v13, &qword_27E1FAC40, &unk_23C8791C0);
    sub_23C5855B0(&v18[v27], &v13[v28], &qword_27E1FAC40, &unk_23C8791C0);
    v29 = v50;
    v30 = *v49;
    if ((*v49)(v13, 1, v50) == 1)
    {
      if (v30(&v13[v28], 1, v29) == 1)
      {
        sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
        v18 = v47;
        v21 = v48;
        goto LABEL_16;
      }

      sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoCoercionDefinition);
      v41 = v48;
      v42 = type metadata accessor for ToolKitProtoCoercionDefinition;
LABEL_22:
      sub_23C5EDCC4(v41, v42);
      sub_23C585C34(v13, &qword_27E1FAC48, &qword_23C878FD0);
      goto LABEL_27;
    }

    sub_23C5855B0(v13, v53, &qword_27E1FAC40, &unk_23C8791C0);
    if (v30(&v13[v28], 1, v29) == 1)
    {
      sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoCoercionDefinition);
      sub_23C5EDCC4(v48, type metadata accessor for ToolKitProtoCoercionDefinition);
      v42 = type metadata accessor for ToolKitProtoTypeInstance;
      v41 = v53;
      goto LABEL_22;
    }

    v31 = v51;
    sub_23C5EDD24(&v13[v28], v51, type metadata accessor for ToolKitProtoTypeInstance);
    v32 = *v53;
    v33 = *v31;
    if ((~*v53 & 0xF000000000000007) == 0)
    {
      sub_23C56F2C0(*v53);
      sub_23C56F2C0(v33);
      if ((~v33 & 0xF000000000000007) != 0)
      {
        goto LABEL_24;
      }

      sub_23C56F2D8(v32);
      goto LABEL_15;
    }

    v55 = *v53;
    if ((~v33 & 0xF000000000000007) == 0)
    {
      break;
    }

    v54 = v33;
    sub_23C56F2C0(v32);
    sub_23C56F2C0(v33);
    sub_23C56F2C0(v32);
    v34 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v55, &v54);

    sub_23C56F2D8(v32);
    if ((v34 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_15:
    v35 = *(v50 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v36 = v53;
    v37 = v51;
    v38 = sub_23C871754();
    sub_23C5EDCC4(v37, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
    v18 = v47;
    v21 = v48;
    if ((v38 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_16:
    v14 = v46;
    v39 = *(v46 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v40 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoCoercionDefinition);
    sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoCoercionDefinition);
    if (v40)
    {
      v13 = v44;
      v25 += v45;
      v24 += v45;
      if (--v22)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  sub_23C56F2C0(v32);
  sub_23C56F2C0(v33);
  sub_23C56F2C0(v32);

LABEL_24:
  sub_23C56F2D8(v32);
  sub_23C56F2D8(v33);
LABEL_25:
  sub_23C5EDCC4(v51, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C5EDCC4(v53, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v13, &qword_27E1FAC40, &unk_23C8791C0);
  v18 = v47;
  v21 = v48;
LABEL_26:
  sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoCoercionDefinition);
  sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoCoercionDefinition);
LABEL_27:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_23C5DE28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSampleInvocation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v19 = 0;
    return v19 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23C5EDC08(v14, v11, type metadata accessor for ContextProtoSampleInvocation);
      sub_23C5EDC08(v15, v8, type metadata accessor for ContextProtoSampleInvocation);
      v17 = *v11 == *v8 && *(v11 + 1) == *(v8 + 1);
      if (!v17 && (sub_23C872014() & 1) == 0 || *(v11 + 4) != *(v8 + 4))
      {
        break;
      }

      v18 = *(v4 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v19 = sub_23C871754();
      sub_23C5EDCC4(v8, type metadata accessor for ContextProtoSampleInvocation);
      sub_23C5EDCC4(v11, type metadata accessor for ContextProtoSampleInvocation);
      if (v19)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v19 & 1;
    }

    sub_23C5EDCC4(v8, type metadata accessor for ContextProtoSampleInvocation);
    sub_23C5EDCC4(v11, type metadata accessor for ContextProtoSampleInvocation);
    goto LABEL_16;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_23C5DE500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v12 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    sub_23C5EDC08(v14, v11, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C5EDC08(v15, v8, type metadata accessor for ToolKitProtoTypeInstance);
    v17 = *v11;
    v18 = *v8;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_23C56F2C0(*v11);
    sub_23C56F2C0(v18);
    if ((~v18 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_23C56F2D8(v17);
LABEL_10:
    v20 = *(v4 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v21 = sub_23C871754();
    sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypeInstance);
    if (v21)
    {
      v15 += v16;
      v14 += v16;
      if (--v12)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  v24 = *v11;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v23 = v18;
    sub_23C56F2C0(v17);
    sub_23C56F2C0(v18);
    sub_23C56F2C0(v17);
    v19 = static ToolKitProtoTypeInstanceKind.== infix(_:_:)(&v24, &v23);

    sub_23C56F2D8(v17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_23C56F2C0(v17);
  sub_23C56F2C0(v18);
  sub_23C56F2C0(v17);

LABEL_15:
  sub_23C56F2D8(v17);
  sub_23C56F2D8(v18);
LABEL_16:
  sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_17:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_23C5DE810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_17;
  }

  if (!v12 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    sub_23C5EDC08(v14, v11, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_23C5EDC08(v15, v8, type metadata accessor for ToolKitProtoRestrictionContext);
    v17 = *v11;
    v18 = *v8;
    if ((~*v11 & 0xF000000000000007) != 0)
    {
      break;
    }

    sub_23C56F2C0(*v11);
    sub_23C56F2C0(v18);
    if ((~v18 & 0xF000000000000007) != 0)
    {
      goto LABEL_15;
    }

    sub_23C56F2D8(v17);
LABEL_10:
    v20 = *(v4 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v21 = sub_23C871754();
    sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoRestrictionContext);
    sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoRestrictionContext);
    if (v21)
    {
      v15 += v16;
      v14 += v16;
      if (--v12)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  v24 = *v11;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v23 = v18;
    sub_23C56F2C0(v17);
    sub_23C56F2C0(v18);
    sub_23C56F2C0(v17);
    v19 = _s26AIMLInstrumentationStreams34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(&v24, &v23);

    sub_23C56F2D8(v17);
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_23C56F2C0(v17);
  sub_23C56F2C0(v18);
  sub_23C56F2C0(v17);

LABEL_15:
  sub_23C56F2D8(v17);
  sub_23C56F2D8(v18);
LABEL_16:
  sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoRestrictionContext);
  sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoRestrictionContext);
LABEL_17:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_23C5DEB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v20 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v28 = (&v55 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_36:
    v54 = 0;
    return v54 & 1;
  }

  if (!v29 || a1 == a2)
  {
    v54 = 1;
    return v54 & 1;
  }

  v69 = *(a1 + 16);
  v70 = v4;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = a1 + v30;
  v32 = 0;
  v67 = v24;
  v68 = a2 + v30;
  v33 = *(v26 + 72);
  v66 = (&v55 - v27);
  v59 = v31;
  v60 = v25;
  v58 = v33;
  while (1)
  {
    v34 = v33 * v32;
    result = sub_23C5EDC08(v31 + v33 * v32, v28, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v32 == v69)
    {
      __break(1u);
      goto LABEL_39;
    }

    result = sub_23C5EDC08(v68 + v34, v24, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    v36 = *v28;
    v37 = *v24;
    v38 = *(v36 + 16);
    if (v38 != *(*v24 + 16))
    {
LABEL_35:
      sub_23C5EDCC4(v67, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      sub_23C5EDCC4(v66, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
      goto LABEL_36;
    }

    if (v38 && v36 != v37)
    {
      break;
    }

LABEL_29:
    v53 = *(v60 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v28 = v66;
    v24 = v67;
    v54 = sub_23C871754();
    sub_23C5EDCC4(v24, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    sub_23C5EDCC4(v28, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
    if (v54)
    {
      ++v32;
      v33 = v58;
      v31 = v59;
      if (v32 != v69)
      {
        continue;
      }
    }

    return v54 & 1;
  }

  v39 = 0;
  v40 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v63 = v37 + v40;
  v64 = v36 + v40;
  v65 = v5;
  v61 = v19;
  v62 = v17;
  v56 = v36;
  v57 = v32;
  v55 = v38;
  while (v39 < *(v36 + 16))
  {
    v41 = *(v72 + 72) * v39;
    result = sub_23C5EDC08(v64 + v41, v19, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    if (v39 >= *(v37 + 16))
    {
      goto LABEL_40;
    }

    sub_23C5EDC08(v63 + v41, v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v42 = *v19;
    v43 = *v17;
    v44 = *(*v19 + 16);
    if (v44 != *(*v17 + 16))
    {
      goto LABEL_34;
    }

    if (v44 && v42 != v43)
    {
      v45 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v46 = v42 + v45;
      v47 = v43 + v45;
      v48 = *(v65 + 72);
      while (1)
      {
        sub_23C5EDC08(v46, v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_23C5EDC08(v47, v9, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        v49 = *v11 == *v9 && *(v11 + 1) == *(v9 + 1);
        if (!v49 && (sub_23C872014() & 1) == 0 || *(v11 + 2) != *(v9 + 2) || *(v11 + 3) != *(v9 + 3) || *(v11 + 4) != *(v9 + 4) || *(v11 + 5) != *(v9 + 5))
        {
          break;
        }

        v50 = *(v70 + 36);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v51 = sub_23C871754();
        sub_23C5EDCC4(v9, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
        if ((v51 & 1) == 0)
        {
          goto LABEL_34;
        }

        v47 += v48;
        v46 += v48;
        if (!--v44)
        {
          goto LABEL_27;
        }
      }

      sub_23C5EDCC4(v9, type metadata accessor for TranscriptProtoSpeechPackage.Token);
      sub_23C5EDCC4(v11, type metadata accessor for TranscriptProtoSpeechPackage.Token);
LABEL_34:
      sub_23C5EDCC4(v62, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      sub_23C5EDCC4(v61, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
      goto LABEL_35;
    }

LABEL_27:
    v52 = *(v71 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v19 = v61;
    v17 = v62;
    LOBYTE(v52) = sub_23C871754();
    sub_23C5EDCC4(v17, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    result = sub_23C5EDCC4(v19, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
    v5 = v65;
    v36 = v56;
    v32 = v57;
    if ((v52 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (++v39 == v55)
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23C5DF35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC18, &qword_23C878FB0);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v39 - v13;
  v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v15 = *(*(v46 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v46);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_18:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v41 = v18;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v44 = *(v19 + 72);
  v45 = v4;
  v27 = &qword_27E1FAC10;
  v40 = &v39 - v20;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (!v22)
    {
      break;
    }

    v48 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    v29 = *(v47 + 48);
    sub_23C5855B0(v21, v14, v27, &qword_23C878FA8);
    sub_23C5855B0(v18, &v14[v29], v27, &qword_23C878FA8);
    v30 = *v26;
    v31 = v27;
    v32 = v45;
    if ((*v26)(v14, 1, v45) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        goto LABEL_16;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &qword_23C878FA8);
    }

    else
    {
      v33 = v26;
      v34 = v42;
      sub_23C5855B0(v14, v42, v31, &qword_23C878FA8);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v21 = v40;
        v18 = v41;
LABEL_16:
        sub_23C585C34(v14, &qword_27E1FAC18, &qword_23C878FB0);
LABEL_17:
        sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        goto LABEL_18;
      }

      v35 = v43;
      sub_23C5EDD24(&v14[v29], v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v36 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      sub_23C585C34(v14, v31, &qword_23C878FA8);
      v26 = v33;
      v21 = v40;
      v18 = v41;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v37 = *(v46 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
    if (v38)
    {
      v22 = v48 - 1;
      v25 += v44;
      v24 += v44;
      if (v48 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DF888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB10, &qword_23C878EE8);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27E1FAB08;
  v42 = v18;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    v29 = *(v49 + 48);
    sub_23C5855B0(v21, v14, v27, &qword_23C878EE0);
    sub_23C5855B0(v18, &v14[v29], v27, &qword_23C878EE0);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoTypeDefinition.Version1;
        goto LABEL_17;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &qword_23C878EE0);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_23C5855B0(v14, v44, v31, &qword_23C878EE0);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        v39 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind;
        v40 = v34;
LABEL_17:
        sub_23C5EDCC4(v40, v39);
        sub_23C585C34(v14, &qword_27E1FAB10, &qword_23C878EE8);
        goto LABEL_19;
      }

      v35 = v45;
      sub_23C5EDD24(&v14[v29], v45, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      v36 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV0cdE12Version1KindO2eeoiySbAE_AEtFZ_0(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
      sub_23C585C34(v14, v31, &qword_23C878EE0);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5DFE0C(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
  v4 = *(*(v35 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v35);
  v36 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v10 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v34 = *(v7 + 72);
  while (1)
  {
    sub_23C5EDC08(v12, v9, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v14 = v36;
    sub_23C5EDC08(v13, v36, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    v16 = *v9;
    v15 = *(v9 + 1);
    v17 = v9[16];
    v18 = *v14;
    v19 = *(v14 + 1);
    v20 = v14[16];
    if (v17 == 255)
    {
      if (v20 != 255)
      {
LABEL_26:
        sub_23C5EDA0C(*v9, *(v9 + 1), v9[16]);
        sub_23C5EDA0C(v18, v19, v20);
        sub_23C5EDA2C(v16, v15, v17);
        v28 = v18;
        v29 = v19;
        v30 = v20;
        goto LABEL_29;
      }

      LOBYTE(v17) = -1;
      sub_23C5EDA0C(*v9, *(v9 + 1), 255);
      sub_23C5EDA0C(v18, v19, 255);
      goto LABEL_19;
    }

    if (v20 == 255)
    {
      goto LABEL_26;
    }

    if (v17)
    {
      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v16 == v18 && v15 == v19)
      {
LABEL_18:
        sub_23C5EDA0C(*v9, *(v9 + 1), v9[16]);
        sub_23C5EDA0C(v16, v15, v20);
        sub_23C5EDA0C(v16, v15, v17);
        sub_23C5EDA44();
        sub_23C5EDA44();
      }

      else
      {
        v21 = *v9;
        v22 = *(v9 + 1);
        v33 = sub_23C872014();
        sub_23C5EDA0C(v16, v15, v17);
        sub_23C5EDA0C(v18, v19, v20);
        sub_23C5EDA0C(v16, v15, v17);
        sub_23C5EDA44();
        sub_23C5EDA44();
        if ((v33 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_19:
      sub_23C5EDA2C(v16, v15, v17);
      goto LABEL_20;
    }

    if (v20)
    {
      break;
    }

    if (v16 == v18 && v15 == v19)
    {
      goto LABEL_18;
    }

    v26 = *v9;
    v27 = *(v9 + 1);
    v33 = sub_23C872014();
    sub_23C5EDA0C(v16, v15, v17);
    sub_23C5EDA0C(v18, v19, v20);
    sub_23C5EDA0C(v16, v15, v17);
    sub_23C5EDA44();
    sub_23C5EDA44();
    sub_23C5EDA2C(v16, v15, v17);
    if ((v33 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    v23 = *(v35 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v24 = v36;
    v25 = sub_23C871754();
    sub_23C5EDCC4(v24, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    sub_23C5EDCC4(v9, type metadata accessor for ToolKitProtoToolSummaryString.Component);
    if (v25)
    {
      v13 += v34;
      v12 += v34;
      if (--v10)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  sub_23C5EDA0C(*v9, *(v9 + 1), v9[16]);
  sub_23C5EDA0C(v18, v19, v20);
  sub_23C5EDA0C(v16, v15, v17);
  sub_23C5EDA44();
  sub_23C5EDA44();
LABEL_28:
  v28 = v16;
  v29 = v15;
  v30 = v17;
LABEL_29:
  sub_23C5EDA2C(v28, v29, v30);
LABEL_30:
  sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoToolSummaryString.Component);
  sub_23C5EDCC4(v9, type metadata accessor for ToolKitProtoToolSummaryString.Component);
LABEL_31:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_23C5E0328(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_23C8790F0[v5];
    v9 = qword_23C8790F0[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E0394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC78, &qword_23C878FF8);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27E1FAC70;
  v42 = v18;
  while (1)
  {
    result = sub_23C5EDC08(v24, v21, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_23C5EDC08(v25, v18, type metadata accessor for ToolKitProtoSystemToolProtocol);
    v29 = *(v49 + 48);
    sub_23C5855B0(v21, v14, v27, &qword_23C878FF0);
    sub_23C5855B0(v18, &v14[v29], v27, &qword_23C878FF0);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoSystemToolProtocol;
        goto LABEL_17;
      }

      v27 = v31;
      sub_23C585C34(v14, v31, &qword_23C878FF0);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_23C5855B0(v14, v44, v31, &qword_23C878FF0);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v39 = type metadata accessor for ToolKitProtoSystemToolProtocolKind;
        v40 = v34;
LABEL_17:
        sub_23C5EDCC4(v40, v39);
        sub_23C585C34(v14, &qword_27E1FAC78, &qword_23C878FF8);
        goto LABEL_19;
      }

      v35 = v45;
      sub_23C5EDD24(&v14[v29], v45, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v36 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v34, v35);
      sub_23C5EDCC4(v35, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_23C5EDCC4(v34, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_23C585C34(v14, v31, &qword_23C878FF0);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoSystemToolProtocol);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v38 = sub_23C871754();
    sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoSystemToolProtocol);
    sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E0918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_23C5E098C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC18, &qword_23C878FB0);
  v13 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v15 = &v61 - v14;
  v73 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v77 = *(v73 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v73);
  v75 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC20, &unk_23C889D70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v61 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC28, &qword_23C878FB8);
  v22 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v61 - v23;
  v78 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v24 = *(*(v78 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v78);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v30 = (&v61 - v29);
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
LABEL_31:
    v60 = 0;
    return v60 & 1;
  }

  if (!v31 || a1 == a2)
  {
    v60 = 1;
    return v60 & 1;
  }

  v32 = *(a1 + 16);
  v62 = v8;
  v63 = v12;
  v67 = v4;
  v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v34 = a1 + v33;
  v35 = a2 + v33;
  v70 = (v77 + 48);
  v71 = &v61 - v29;
  v65 = v15;
  v66 = (v5 + 48);
  v68 = *(v28 + 72);
  v36 = v73;
  v37 = v74;
  v38 = v32;
  v64 = v21;
  v72 = v27;
  while (1)
  {
    result = sub_23C5EDC08(v34, v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (!v38)
    {
      break;
    }

    v77 = v38;
    sub_23C5EDC08(v35, v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    v40 = *v30 == *v27 && v30[1] == v27[1];
    if (!v40 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_30;
    }

    v41 = *(v78 + 20);
    v42 = *(v76 + 48);
    sub_23C5855B0(v30 + v41, v37, &qword_27E1FAC20, &unk_23C889D70);
    sub_23C5855B0(v27 + v41, v37 + v42, &qword_27E1FAC20, &unk_23C889D70);
    v43 = *v70;
    if ((*v70)(v37, 1, v36) == 1)
    {
      v44 = v43(v37 + v42, 1, v36);
      v27 = v72;
      if (v44 != 1)
      {
        goto LABEL_26;
      }

      sub_23C585C34(v37, &qword_27E1FAC20, &unk_23C889D70);
      v30 = v71;
    }

    else
    {
      sub_23C5855B0(v37, v21, &qword_27E1FAC20, &unk_23C889D70);
      if (v43(v37 + v42, 1, v36) == 1)
      {
        sub_23C5EDCC4(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        v27 = v72;
LABEL_26:
        sub_23C585C34(v37, &qword_27E1FAC28, &qword_23C878FB8);
        v30 = v71;
        goto LABEL_30;
      }

      v45 = v75;
      sub_23C5EDD24(v37 + v42, v75, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v46 = *(v69 + 48);
      v47 = v65;
      sub_23C5855B0(v21, v65, &qword_27E1FAC10, &qword_23C878FA8);
      sub_23C5855B0(v45, v47 + v46, &qword_27E1FAC10, &qword_23C878FA8);
      v48 = v67;
      v49 = *v66;
      if ((*v66)(v47, 1, v67) == 1)
      {
        if (v49(v47 + v46, 1, v48) != 1)
        {
          goto LABEL_28;
        }

        sub_23C585C34(v47, &qword_27E1FAC10, &qword_23C878FA8);
      }

      else
      {
        v50 = v63;
        sub_23C5855B0(v47, v63, &qword_27E1FAC10, &qword_23C878FA8);
        if (v49(v47 + v46, 1, v48) == 1)
        {
          sub_23C5EDCC4(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_28:
          sub_23C585C34(v47, &qword_27E1FAC18, &qword_23C878FB0);
LABEL_29:
          sub_23C5EDCC4(v75, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_23C5EDCC4(v64, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_23C585C34(v74, &qword_27E1FAC20, &unk_23C889D70);
          v30 = v71;
          v27 = v72;
LABEL_30:
          sub_23C5EDCC4(v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_31;
        }

        v51 = v62;
        sub_23C5EDD24(v47 + v46, v62, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v52 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v50, v51);
        sub_23C5EDCC4(v51, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_23C5EDCC4(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_23C585C34(v47, &qword_27E1FAC10, &qword_23C878FA8);
        if ((v52 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v53 = v73;
      v54 = *(v73 + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v55 = v64;
      v56 = v75;
      v57 = sub_23C871754();
      v58 = v56;
      v36 = v53;
      sub_23C5EDCC4(v58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v21 = v55;
      sub_23C5EDCC4(v55, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v37 = v74;
      sub_23C585C34(v74, &qword_27E1FAC20, &unk_23C889D70);
      v30 = v71;
      v27 = v72;
      if ((v57 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v59 = *(v78 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v60 = sub_23C871754();
    sub_23C5EDCC4(v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    sub_23C5EDCC4(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (v60)
    {
      v38 = v77 - 1;
      v35 += v68;
      v34 += v68;
      if (v77 != 1)
      {
        continue;
      }
    }

    return v60 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E1250(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C5E12AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v49 - v11);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC0, &qword_23C8790B0);
  v13 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v57 = &v49 - v14;
  v58 = type metadata accessor for ContextProtoSurroundingText(0);
  v15 = *(*(v58 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v49 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_51;
  }

  if (!v22 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v53 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v51 = v18;
  v52 = (v5 + 48);
  v49 = *(v19 + 72);
  v50 = (&v49 - v20);
  while (1)
  {
    sub_23C5EDC08(v24, v21, type metadata accessor for ContextProtoSurroundingText);
    sub_23C5EDC08(v25, v18, type metadata accessor for ContextProtoSurroundingText);
    v26 = v21[1];
    v27 = v18[1];
    if (v26)
    {
      if (!v27 || (*v21 != *v18 || v26 != v27) && (sub_23C872014() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v27)
    {
      goto LABEL_46;
    }

    v56 = v25;
    v54 = v24;
    v28 = v8;
    v29 = v57;
    v30 = *(v58 + 20);
    v31 = *(v55 + 48);
    sub_23C5855B0(v21 + v30, v57, &qword_27E1FADB8, &unk_23C879160);
    v32 = v18 + v30;
    v33 = v29;
    sub_23C5855B0(v32, v29 + v31, &qword_27E1FADB8, &unk_23C879160);
    v34 = *v52;
    v35 = v29;
    v36 = v53;
    if ((*v52)(v35, 1, v53) != 1)
    {
      break;
    }

    if (v34(v33 + v31, 1, v36) != 1)
    {
      v46 = type metadata accessor for ContextProtoSurroundingText;
      v47 = v50;
      goto LABEL_49;
    }

    sub_23C585C34(v33, &qword_27E1FADB8, &unk_23C879160);
    v8 = v28;
    v21 = v50;
    v18 = v51;
    v37 = v56;
LABEL_41:
    v44 = *(v58 + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v45 = sub_23C871754();
    sub_23C5EDCC4(v21, type metadata accessor for ContextProtoSurroundingText);
    sub_23C5EDCC4(v18, type metadata accessor for ContextProtoSurroundingText);
    if (v45)
    {
      v25 = v37 + v49;
      v24 = v54 + v49;
      if (--v22)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  sub_23C5855B0(v33, v12, &qword_27E1FADB8, &unk_23C879160);
  if (v34(v33 + v31, 1, v36) != 1)
  {
    v8 = v28;
    sub_23C5EDD24(v33 + v31, v28, type metadata accessor for ContextProtoBoundingBox);
    v38 = *(v28 + 4);
    v21 = v50;
    if (v12[1])
    {
      v18 = v51;
      v37 = v56;
      if (!v38)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (*v12 != *v28)
      {
        LOBYTE(v38) = 1;
      }

      v18 = v51;
      v37 = v56;
      if (v38)
      {
LABEL_45:
        sub_23C5EDCC4(v8, type metadata accessor for ContextProtoBoundingBox);
        sub_23C5EDCC4(v12, type metadata accessor for ContextProtoBoundingBox);
        sub_23C585C34(v57, &qword_27E1FADB8, &unk_23C879160);
LABEL_46:
        sub_23C5EDCC4(v21, type metadata accessor for ContextProtoSurroundingText);
        goto LABEL_50;
      }
    }

    v39 = *(v8 + 12);
    if (v12[3])
    {
      if (!*(v8 + 12))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12[2] != v8[2])
      {
        v39 = 1;
      }

      if (v39)
      {
        goto LABEL_45;
      }
    }

    v40 = *(v8 + 20);
    if (v12[5])
    {
      if (!*(v8 + 20))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12[4] != v8[4])
      {
        v40 = 1;
      }

      if (v40)
      {
        goto LABEL_45;
      }
    }

    v41 = *(v8 + 28);
    if (v12[7])
    {
      if (!*(v8 + 28))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12[6] != v8[6])
      {
        v41 = 1;
      }

      if (v41)
      {
        goto LABEL_45;
      }
    }

    v42 = *(v53 + 32);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v43 = sub_23C871754();
    sub_23C5EDCC4(v8, type metadata accessor for ContextProtoBoundingBox);
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoBoundingBox);
    sub_23C585C34(v57, &qword_27E1FADB8, &unk_23C879160);
    if ((v43 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  sub_23C5EDCC4(v50, type metadata accessor for ContextProtoSurroundingText);
  v46 = type metadata accessor for ContextProtoBoundingBox;
  v47 = v12;
LABEL_49:
  sub_23C5EDCC4(v47, v46);
  sub_23C585C34(v33, &qword_27E1FADC0, &qword_23C8790B0);
  v18 = v51;
LABEL_50:
  sub_23C5EDCC4(v18, type metadata accessor for ContextProtoSurroundingText);
LABEL_51:
  v45 = 0;
  return v45 & 1;
}