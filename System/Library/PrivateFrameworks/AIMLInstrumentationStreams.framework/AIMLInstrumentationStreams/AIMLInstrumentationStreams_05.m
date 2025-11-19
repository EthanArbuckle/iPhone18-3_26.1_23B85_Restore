uint64_t _s26AIMLInstrumentationStreams49ContextProtoContextualEntityDisplayRepresentationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (v9 && (a1[2] == a2[2] && v8 == v9 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_15;
    }
  }

  else if (!v9)
  {
LABEL_15:
    v10 = *(type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0) + 24);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams42ContextProtoVersionedQueryDecorationOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE8, &qword_23C879020);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if ((sub_23C5CF590(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_14;
  }

  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v18 = *(DecorationOutput + 44);
  v19 = *(v13 + 48);
  v32 = DecorationOutput;
  v33 = a1;
  sub_23C5855B0(a1 + v18, v16, &qword_27E1FACE0, &unk_23C8A13B0);
  sub_23C5855B0(a2 + v18, &v16[v19], &qword_27E1FACE0, &unk_23C8A13B0);
  v20 = *(v5 + 48);
  if (v20(v16, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E1FACE0, &unk_23C8A13B0);
    if (v20(&v16[v19], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_23C5EDD24(&v16[v19], v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_23C5EDCC4(v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C5EDCC4(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C585C34(v16, &qword_27E1FACE0, &unk_23C8A13B0);
      if ((DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_8:
    sub_23C585C34(v16, &qword_27E1FACE8, &qword_23C879020);
    goto LABEL_14;
  }

  if (v20(&v16[v19], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_8;
  }

  sub_23C585C34(v16, &qword_27E1FACE0, &unk_23C8A13B0);
LABEL_10:
  v22 = v33;
  if ((sub_23C5D2F10(*(v33 + 16), *(a2 + 16)) & 1) == 0 || *(v22 + 24) != *(a2 + 24) || (sub_23C5D08D4(*(v22 + 32), *(a2 + 32), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(v22 + 40) != *(a2 + 40))
  {
    goto LABEL_14;
  }

  v25 = v32;
  v26 = *(v32 + 48);
  v27 = (v22 + v26);
  v28 = *(v22 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v31 = *(v25 + 52);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v23 = sub_23C871754();
    return v23 & 1;
  }

  if (!v30)
  {
    goto LABEL_23;
  }

LABEL_14:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (sub_23C5D0A74(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (sub_23C5D5284(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams36ContextProtoDynamicEnumerationEntityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = (&v50 - v10);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[1];
  v57 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v52 = v13;
  v50 = v7;
  v29 = a2;
  v51 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v30 = *(v51 + 20);
  v31 = *(v23 + 48);
  sub_23C5855B0(v57 + v30, v26, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(v29 + v30, &v26[v31], &qword_27E1FAC40, &unk_23C8791C0);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) != 1)
  {
    sub_23C5855B0(v26, v22, &qword_27E1FAC40, &unk_23C8791C0);
    if (v32(&v26[v31], 1, v14) != 1)
    {
      sub_23C5EDD24(&v26[v31], v18, type metadata accessor for ToolKitProtoTypeInstance);
      v36 = static ToolKitProtoTypeInstance.== infix(_:_:)(v22, v18);
      sub_23C5EDCC4(v18, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C5EDCC4(v22, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v26, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_23C5EDCC4(v22, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_9:
    v33 = &qword_27E1FAC48;
    v34 = &qword_23C878FD0;
    v35 = v26;
LABEL_17:
    sub_23C585C34(v35, v33, v34);
    goto LABEL_18;
  }

  if (v32(&v26[v31], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v26, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_11:
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 24);
  v40 = *(v54 + 48);
  sub_23C5855B0(v57 + v39, v52, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(v29 + v39, v37 + v40, &qword_27E1FAB68, &unk_23C879140);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v37, 1, v56) == 1)
  {
    if (v42(v37 + v40, 1, v41) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FAB68, &unk_23C879140);
LABEL_21:
      v49 = *(v38 + 28);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v44 = sub_23C871754();
      return v44 & 1;
    }

    goto LABEL_16;
  }

  v43 = v53;
  sub_23C5855B0(v37, v53, &qword_27E1FAB68, &unk_23C879140);
  if (v42(v37 + v40, 1, v41) == 1)
  {
    sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoTypedValue);
LABEL_16:
    v33 = &qword_27E1FAB70;
    v34 = &qword_23C878F28;
    v35 = v37;
    goto LABEL_17;
  }

  v46 = v37 + v40;
  v47 = v50;
  sub_23C5EDD24(v46, v50, type metadata accessor for ToolKitProtoTypedValue);
  v48 = static ToolKitProtoTypedValue.== infix(_:_:)(v43, v47);
  sub_23C5EDCC4(v47, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v43, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v37, &qword_27E1FAB68, &unk_23C879140);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_18:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ContextProtoQueryDecorationOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE8, &qword_23C879020);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if ((sub_23C5CF590(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || (sub_23C5D08D4(*(a1 + 16), *(a2 + 16), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || (sub_23C5D08D4(*(a1 + 32), *(a2 + 32), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_18;
  }

  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v17 = *(DecorationOutput + 56);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FACE0, &unk_23C8A13B0);
  v19 = a2 + v17;
  v20 = v18;
  sub_23C5855B0(v19, &v16[v18], &qword_27E1FACE0, &unk_23C8A13B0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E1FACE0, &unk_23C8A13B0);
    if (v21(&v16[v20], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_23C5EDD24(&v16[v20], v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_23C5EDCC4(v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C5EDCC4(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C585C34(v16, &qword_27E1FACE0, &unk_23C8A13B0);
      if ((DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_12:
    sub_23C585C34(v16, &qword_27E1FACE8, &qword_23C879020);
    goto LABEL_18;
  }

  if (v21(&v16[v20], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_12;
  }

  sub_23C585C34(v16, &qword_27E1FACE0, &unk_23C8A13B0);
LABEL_14:
  if ((sub_23C5D2F10(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56) || (sub_23C5D08D4(*(a1 + 64), *(a2 + 64), type metadata accessor for ContextProtoRetrievedContext, type metadata accessor for ContextProtoRetrievedContext, _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoRetrievedContext) & 1) == 0 || *(a1 + 72) != *(a2 + 72))
  {
    goto LABEL_18;
  }

  v25 = DecorationOutput;
  v26 = *(DecorationOutput + 60);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_27:
    v31 = *(v25 + 64);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v23 = sub_23C871754();
    return v23 & 1;
  }

  if (!v30)
  {
    goto LABEL_27;
  }

LABEL_18:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32ContextProtoQueryDecorationInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 32) == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    v8 = *(a1 + 56);
    v9 = *(a2 + 56);
    if (v8)
    {
      if (!v9 || (*(a1 + 48) != *(a2 + 48) || v8 != v9) && (sub_23C872014() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    v10 = *(a1 + 72);
    v11 = *(a2 + 72);
    if (v10)
    {
      if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (sub_23C872014() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (sub_23C5E1250(*(a1 + 24), *(a2 + 24)))
    {
      v12 = *(a1 + 88);
      v13 = *(a2 + 88);
      if (v12)
      {
        if (v13 && (*(a1 + 80) == *(a2 + 80) && v12 == v13 || (sub_23C872014() & 1) != 0))
        {
          goto LABEL_36;
        }
      }

      else if (!v13)
      {
LABEL_36:
        v14 = *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
        sub_23C870F34();
        sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        return sub_23C871754() & 1;
      }
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams29ContextProtoToolRetrievalTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB18, &qword_23C878EF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB20, &qword_23C878EF8);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E1FAB38, &unk_23C8791E0);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FAB38, &unk_23C8791E0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E1FAB38, &unk_23C8791E0);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C5EDD24(&v25[v26], v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      v31 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v20, v16);
      sub_23C5EDCC4(v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C5EDCC4(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v25, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C5EDCC4(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v28 = &qword_27E1FAB40;
    v29 = &qword_23C878F08;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v32 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FAB18, &qword_23C878EF0);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FAB18, &qword_23C878EF0);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FAB18, &qword_23C878EF0);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E1FAB18, &qword_23C878EF0);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
LABEL_13:
    v28 = &qword_27E1FAB20;
    v29 = &qword_23C878EF8;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C5EDD24(v41, v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  v43 = static ToolKitProtoTypeDefinition.Version1.== infix(_:_:)(v38, v42);
  sub_23C5EDCC4(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_23C5EDCC4(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
  sub_23C585C34(v35, &qword_27E1FAB18, &qword_23C878EF0);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29ContextProtoSpanMatchedEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB68, &unk_23C879140);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v16, v11, &qword_27E1FAB68, &unk_23C879140);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAB70, &qword_23C878F28);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_23C5EDD24(&v16[v18], v27, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v11, v20);
  sub_23C5EDCC4(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C5D08D4(*v28, *a2, type metadata accessor for ContextProtoEntityMatch, type metadata accessor for ContextProtoEntityMatch, _s26AIMLInstrumentationStreams23ContextProtoEntityMatchV2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoEntityMatch) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27ContextProtoToolQueryOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAD8, &qword_23C878EC0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAD8, &qword_23C878EC0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAD8, &qword_23C878EC0);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoToolQueryOutput(0) + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAD8, &qword_23C878EC0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAAE0, &qword_23C878EC8);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v17[v18], v8, type metadata accessor for ContextProtoRetrievedTool.Definition);
  v21 = _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_23C5EDCC4(v8, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_23C585C34(v17, &qword_27E1FAAD8, &qword_23C878EC0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27ContextProtoSurroundingTextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC0, &qword_23C8790B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v18)
  {
    goto LABEL_14;
  }

  v19 = type metadata accessor for ContextProtoSurroundingText(0);
  v20 = a1;
  v21 = a2;
  v29[0] = v19;
  v29[1] = v20;
  v22 = *(v19 + 20);
  v23 = *(v13 + 48);
  sub_23C5855B0(v20 + v22, v16, &qword_27E1FADB8, &unk_23C879160);
  sub_23C5855B0(v21 + v22, &v16[v23], &qword_27E1FADB8, &unk_23C879160);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v23], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FADB8, &unk_23C879160);
LABEL_17:
      v28 = *(v29[0] + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v25 = sub_23C871754();
      return v25 & 1;
    }

    goto LABEL_13;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FADB8, &unk_23C879160);
  if (v24(&v16[v23], 1, v4) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoBoundingBox);
LABEL_13:
    sub_23C585C34(v16, &qword_27E1FADC0, &qword_23C8790B0);
    goto LABEL_14;
  }

  sub_23C5EDD24(&v16[v23], v8, type metadata accessor for ContextProtoBoundingBox);
  v27 = _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C5EDCC4(v8, type metadata accessor for ContextProtoBoundingBox);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoBoundingBox);
  sub_23C585C34(v16, &qword_27E1FADB8, &unk_23C879160);
  if (v27)
  {
    goto LABEL_17;
  }

LABEL_14:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD8, &qword_23C878EC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE0, &qword_23C878EC8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for ContextProtoRetrievedTool(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAAD8, &qword_23C878EC0);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAAD8, &qword_23C878EC0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v11, &qword_27E1FAAD8, &qword_23C878EC0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_23C5EDD24(&v16[v18], v28, type metadata accessor for ContextProtoRetrievedTool.Definition);
      v21 = _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(v11, v20);
      sub_23C5EDCC4(v20, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C5EDCC4(v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
      sub_23C585C34(v16, &qword_27E1FAAD8, &qword_23C878EC0);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_12:
      v24 = 0;
      return v24 & 1;
    }

    sub_23C5EDCC4(v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAAE0, &qword_23C878EC8);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v16, &qword_27E1FAAD8, &qword_23C878EC0);
LABEL_8:
  v22 = v29;
  if (*v29 != *a2 || (sub_23C5DE28C(*(v29 + 8), *(a2 + 8)) & 1) == 0 || *(v22 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  v23 = *(v27 + 32);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v24 = sub_23C871754();
  return v24 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV10DefinitionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA540, &unk_23C8791D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAD0, &qword_23C878EB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FA540, &unk_23C8791D0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FA540, &unk_23C8791D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FA540, &unk_23C8791D0);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoRetrievedTool.Definition(0) + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FA540, &unk_23C8791D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAAD0, &qword_23C878EB8);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v17[v18], v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  v21 = static ContextProtoRetrievedTool.ContextProtoDefinitionEnum.== infix(_:_:)(v12, v8);
  sub_23C5EDCC4(v8, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_23C585C34(v17, &qword_27E1FA540, &unk_23C8791D0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27ContextProtoMatchPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB48, &qword_23C878F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v33 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB50, &qword_23C878F18);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v18 = 1;
    }

    if (v18)
    {
      goto LABEL_21;
    }
  }

  v19 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v19 = 1;
    }

    if (v19)
    {
      goto LABEL_21;
    }
  }

  v33 = v8;
  v20 = v15;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v21 = *(matched + 24);
  v22 = *(v20 + 48);
  sub_23C5855B0(a1 + v21, v17, &qword_27E1FAB48, &qword_23C878F10);
  sub_23C5855B0(a2 + v21, &v17[v22], &qword_27E1FAB48, &qword_23C878F10);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v22], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAB48, &qword_23C878F10);
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAB48, &qword_23C878F10);
  if (v23(&v17[v22], 1, v4) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoAliasTypes);
LABEL_19:
    v26 = &qword_27E1FAB50;
    v27 = &qword_23C878F18;
LABEL_20:
    sub_23C585C34(v17, v26, v27);
LABEL_21:
    v25 = 0;
    return v25 & 1;
  }

  v29 = &v17[v22];
  v30 = v33;
  sub_23C5EDD24(v29, v33, type metadata accessor for ContextProtoAliasTypes);
  if ((sub_23C5E1250(*v12, *v30) & 1) == 0)
  {
    sub_23C5EDCC4(v30, type metadata accessor for ContextProtoAliasTypes);
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoAliasTypes);
    v26 = &qword_27E1FAB48;
    v27 = &qword_23C878F10;
    goto LABEL_20;
  }

  v31 = *(v4 + 20);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v32 = sub_23C871754();
  sub_23C5EDCC4(v30, type metadata accessor for ContextProtoAliasTypes);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoAliasTypes);
  sub_23C585C34(v17, &qword_27E1FAB48, &qword_23C878F10);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  v24 = *(matched + 28);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v25 = sub_23C871754();
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams23ContextProtoEntityMatchV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v5 = *(matched - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](matched);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB58, &unk_23C8791F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB60, &qword_23C878F20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_31;
  }

  v33 = type metadata accessor for ContextProtoEntityMatch(0);
  v17 = *(v33 + 48);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB58, &unk_23C8791F0);
  v19 = a2 + v17;
  v20 = v18;
  sub_23C5855B0(v19, &v16[v18], &qword_27E1FAB58, &unk_23C8791F0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, matched) == 1)
  {
    if (v21(&v16[v20], 1, matched) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB58, &unk_23C8791F0);
      goto LABEL_17;
    }

LABEL_15:
    sub_23C585C34(v16, &qword_27E1FAB60, &qword_23C878F20);
    goto LABEL_31;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAB58, &unk_23C8791F0);
  if (v21(&v16[v20], 1, matched) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoMatchProperties);
    goto LABEL_15;
  }

  sub_23C5EDD24(&v16[v20], v8, type metadata accessor for ContextProtoMatchProperties);
  v22 = _s26AIMLInstrumentationStreams27ContextProtoMatchPropertiesV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C5EDCC4(v8, type metadata accessor for ContextProtoMatchProperties);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoMatchProperties);
  sub_23C585C34(v16, &qword_27E1FAB58, &unk_23C8791F0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if (*(a1 + 52) != *(a2 + 52) || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_23C872014() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_31;
  }

  v23 = v33;
  v24 = *(v33 + 52);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (v28 && (*v25 == *v27 && v26 == v28 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_29;
    }

LABEL_31:
    v30 = 0;
    return v30 & 1;
  }

  if (v28)
  {
    goto LABEL_31;
  }

LABEL_29:
  v29 = *(v23 + 56);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v30 = sub_23C871754();
  return v30 & 1;
}

uint64_t _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v7 = *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoUIControlToolV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v20)
  {
    goto LABEL_28;
  }

  v21 = a1[5];
  v22 = a2[5];
  if (v21)
  {
    if (!v22 || (a1[4] != a2[4] || v21 != v22) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v22)
  {
    goto LABEL_28;
  }

  v33 = type metadata accessor for ContextProtoUIControlTool(0);
  v23 = *(v33 + 28);
  v24 = *(v13 + 48);
  sub_23C5855B0(a1 + v23, v16, &qword_27E1FACA8, &unk_23C87B940);
  v25 = a2 + v23;
  v26 = v24;
  sub_23C5855B0(v25, &v16[v24], &qword_27E1FACA8, &unk_23C87B940);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v26], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FACA8, &unk_23C87B940);
LABEL_31:
      v31 = *(v33 + 32);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v28 = sub_23C871754();
      return v28 & 1;
    }

    goto LABEL_27;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FACA8, &unk_23C87B940);
  if (v27(&v16[v26], 1, v4) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
LABEL_27:
    sub_23C585C34(v16, &qword_27E1FACB0, &qword_23C879010);
    goto LABEL_28;
  }

  sub_23C5EDD24(&v16[v26], v8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v30 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v12, v8);
  sub_23C5EDCC4(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C5EDCC4(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v16, &qword_27E1FACA8, &unk_23C87B940);
  if (v30)
  {
    goto LABEL_31;
  }

LABEL_28:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc19IntelligenceCommandC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 32) == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (*(a1 + 48) != *(a2 + 48) || v8 != v9) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16) && (sub_23C5D25E0(*(a1 + 24), *(a2 + 24)) & 1) != 0)
  {
    v12 = *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC7AddressV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_23C872014();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_23C872014();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_23C872014();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_23C872014();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v31 != v32)
    {
      v33 = a1;
      v34 = a1[8];
      v35 = a2;
      v36 = sub_23C872014();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v38 = a1[11];
  v39 = a2[11];
  if (v38)
  {
    if (v39)
    {
      if (a1[10] == a2[10] && v38 == v39)
      {
        goto LABEL_43;
      }

      v40 = a1[10];
      if (sub_23C872014())
      {
        goto LABEL_43;
      }
    }
  }

  else if (!v39)
  {
LABEL_43:
    v41 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC6MeCardV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a1[1];
      v7 = a2;
      v8 = sub_23C872014();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[3] != a2[3] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[3];
      v14 = a2;
      v15 = sub_23C872014();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[6];
  v18 = a2[6];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[5] != a2[5] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[5];
      v21 = a2;
      v22 = sub_23C872014();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[8];
  v25 = a2[8];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[7] != a2[7] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[7];
      v28 = a2;
      v29 = sub_23C872014();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[10];
  v32 = a2[10];
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    if (a1[9] != a2[9] || v31 != v32)
    {
      v33 = a1;
      v34 = a1[9];
      v35 = a2;
      v36 = sub_23C872014();
      a2 = v35;
      v37 = v36;
      a1 = v33;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  if (sub_23C5D92E8(*a1, *a2, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC7AddressV2eeoiySbAC_ACtFZ_0, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress))
  {
    v38 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC18ContentRestrictionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (*(a1 + 8) != *(a2 + 8) || v3 != v4)
    {
      v5 = a1;
      v6 = *(a1 + 8);
      v7 = a2;
      v8 = sub_23C872014();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 36);
  if (*(a1 + 36))
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v13 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC30OnScreenUITextUIMetadataWindowV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ContextProtoCGRect(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD20, &qword_23C879040);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v18 = *(v17 + 20);
  v19 = *(v13 + 48);
  v36 = v17;
  v37 = a1;
  sub_23C5855B0(&a1[v18], v16, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(&a2[v18], &v16[v19], &qword_27E1FAD18, &unk_23C879170);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E1FAD18, &unk_23C879170);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_23C5EDD24(&v16[v19], v8, type metadata accessor for ContextProtoCGRect);
      v23 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_23C5EDCC4(v8, type metadata accessor for ContextProtoCGRect);
      sub_23C5EDCC4(v12, type metadata accessor for ContextProtoCGRect);
      sub_23C585C34(v16, &qword_27E1FAD18, &unk_23C879170);
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoCGRect);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAD20, &qword_23C879040);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v16, &qword_27E1FAD18, &unk_23C879170);
LABEL_11:
  v24 = v36;
  v25 = *(v36 + 24);
  v26 = &v37[v25];
  v27 = v37[v25 + 8];
  v28 = &a2[v25];
  v29 = a2[v25 + 8];
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_8;
    }
  }

  v30 = *(v36 + 28);
  v31 = &v37[v30];
  v32 = *&v37[v30 + 8];
  v33 = &a2[v30];
  v34 = *(v33 + 1);
  if (v32)
  {
    if (v34 && (*v31 == *v33 && v32 == v34 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_24;
    }
  }

  else if (!v34)
  {
LABEL_24:
    v35 = *(v24 + 32);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v21 = sub_23C871754();
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC24OnScreenUITextUIMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD28, &unk_23C8791A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD30, &qword_23C879048);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAD28, &unk_23C8791A0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAD28, &unk_23C8791A0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAD28, &unk_23C8791A0);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0) + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAD28, &unk_23C8791A0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAD30, &qword_23C879048);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v17[v18], v8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  v21 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC30OnScreenUITextUIMetadataWindowV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C5EDCC4(v8, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_23C585C34(v17, &qword_27E1FAD28, &unk_23C8791A0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoCGSize(0);
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACF8, &unk_23C8791B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = (&v47 - v9);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD00, &qword_23C879028);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v47 - v11;
  v12 = type metadata accessor for ContextProtoCGPoint(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD08, &qword_23C879030);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v47 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD10, &qword_23C879038);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v47 - v24;
  v26 = *(v23 + 56);
  v53 = a1;
  sub_23C5855B0(a1, &v47 - v24, &qword_27E1FAD08, &qword_23C879030);
  v54 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FAD08, &qword_23C879030);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_23C585C34(v25, &qword_27E1FAD08, &qword_23C879030);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  sub_23C5855B0(v25, v20, &qword_27E1FAD08, &qword_23C879030);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    sub_23C5EDCC4(v20, type metadata accessor for ContextProtoCGPoint);
LABEL_10:
    v36 = &qword_27E1FAD10;
    v37 = &qword_23C879038;
LABEL_16:
    v40 = v25;
    goto LABEL_17;
  }

  sub_23C5EDD24(&v25[v26], v16, type metadata accessor for ContextProtoCGPoint);
  if (*v20 != *v16 || v20[1] != v16[1])
  {
    sub_23C5EDCC4(v16, type metadata accessor for ContextProtoCGPoint);
    sub_23C5EDCC4(v20, type metadata accessor for ContextProtoCGPoint);
    v36 = &qword_27E1FAD08;
    v37 = &qword_23C879030;
    goto LABEL_16;
  }

  v38 = *(v12 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v39 = sub_23C871754();
  sub_23C5EDCC4(v16, type metadata accessor for ContextProtoCGPoint);
  sub_23C5EDCC4(v20, type metadata accessor for ContextProtoCGPoint);
  sub_23C585C34(v25, &qword_27E1FAD08, &qword_23C879030);
  if ((v39 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_4:
  v28 = type metadata accessor for ContextProtoCGRect(0);
  v29 = *(v28 + 20);
  v30 = *(v49 + 48);
  v31 = v52;
  sub_23C5855B0(v53 + v29, v52, &qword_27E1FACF8, &unk_23C8791B0);
  sub_23C5855B0(v54 + v29, v31 + v30, &qword_27E1FACF8, &unk_23C8791B0);
  v32 = v51;
  v33 = *(v50 + 48);
  if (v33(v31, 1, v51) != 1)
  {
    v42 = v48;
    sub_23C5855B0(v31, v48, &qword_27E1FACF8, &unk_23C8791B0);
    if (v33(v31 + v30, 1, v32) == 1)
    {
      sub_23C5EDCC4(v42, type metadata accessor for ContextProtoCGSize);
      goto LABEL_22;
    }

    v43 = v31 + v30;
    v44 = v47;
    sub_23C5EDD24(v43, v47, type metadata accessor for ContextProtoCGSize);
    if (*v42 == *v44 && v42[1] == v44[1])
    {
      v45 = *(v32 + 24);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v46 = sub_23C871754();
      sub_23C5EDCC4(v44, type metadata accessor for ContextProtoCGSize);
      sub_23C5EDCC4(v42, type metadata accessor for ContextProtoCGSize);
      sub_23C585C34(v31, &qword_27E1FACF8, &unk_23C8791B0);
      if (v46)
      {
        goto LABEL_7;
      }

LABEL_18:
      v35 = 0;
      return v35 & 1;
    }

    sub_23C5EDCC4(v44, type metadata accessor for ContextProtoCGSize);
    sub_23C5EDCC4(v42, type metadata accessor for ContextProtoCGSize);
    v36 = &qword_27E1FACF8;
    v37 = &unk_23C8791B0;
    v40 = v31;
LABEL_17:
    sub_23C585C34(v40, v36, v37);
    goto LABEL_18;
  }

  if (v33(v31 + v30, 1, v32) != 1)
  {
LABEL_22:
    v36 = &qword_27E1FAD00;
    v37 = &qword_23C879028;
    v40 = v31;
    goto LABEL_17;
  }

  sub_23C585C34(v31, &qword_27E1FACF8, &unk_23C8791B0);
LABEL_7:
  v34 = *(v28 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v35 = sub_23C871754();
  return v35 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC14OnScreenUITextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD38, &qword_23C879050);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v50 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD40, &qword_23C879058);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ContextProtoCGRect(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD20, &qword_23C879040);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[1];
  v57 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v52 = v13;
  v50 = v7;
  v29 = a2;
  v51 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v30 = *(v51 + 20);
  v31 = *(v23 + 48);
  sub_23C5855B0(v57 + v30, v26, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(v29 + v30, &v26[v31], &qword_27E1FAD18, &unk_23C879170);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) != 1)
  {
    sub_23C5855B0(v26, v22, &qword_27E1FAD18, &unk_23C879170);
    if (v32(&v26[v31], 1, v14) != 1)
    {
      sub_23C5EDD24(&v26[v31], v18, type metadata accessor for ContextProtoCGRect);
      v36 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_23C5EDCC4(v18, type metadata accessor for ContextProtoCGRect);
      sub_23C5EDCC4(v22, type metadata accessor for ContextProtoCGRect);
      sub_23C585C34(v26, &qword_27E1FAD18, &unk_23C879170);
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_23C5EDCC4(v22, type metadata accessor for ContextProtoCGRect);
LABEL_9:
    v33 = &qword_27E1FAD20;
    v34 = &qword_23C879040;
    v35 = v26;
LABEL_17:
    sub_23C585C34(v35, v33, v34);
    goto LABEL_18;
  }

  if (v32(&v26[v31], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v26, &qword_27E1FAD18, &unk_23C879170);
LABEL_11:
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 24);
  v40 = *(v54 + 48);
  sub_23C5855B0(v57 + v39, v52, &qword_27E1FAD38, &qword_23C879050);
  sub_23C5855B0(v29 + v39, v37 + v40, &qword_27E1FAD38, &qword_23C879050);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v37, 1, v56) == 1)
  {
    if (v42(v37 + v40, 1, v41) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FAD38, &qword_23C879050);
LABEL_21:
      v49 = *(v38 + 28);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v44 = sub_23C871754();
      return v44 & 1;
    }

    goto LABEL_16;
  }

  v43 = v53;
  sub_23C5855B0(v37, v53, &qword_27E1FAD38, &qword_23C879050);
  if (v42(v37 + v40, 1, v41) == 1)
  {
    sub_23C5EDCC4(v43, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
LABEL_16:
    v33 = &qword_27E1FAD40;
    v34 = &qword_23C879058;
    v35 = v37;
    goto LABEL_17;
  }

  v46 = v37 + v40;
  v47 = v50;
  sub_23C5EDD24(v46, v50, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  v48 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC24OnScreenUITextUIMetadataV2eeoiySbAC_ACtFZ_0(v43, v47);
  sub_23C5EDCC4(v47, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_23C5EDCC4(v43, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_23C585C34(v37, &qword_27E1FAD38, &qword_23C879050);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_18:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC4UserV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_23C872014();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v10 ^ v11) & 1) != 0)
  {
    return 0;
  }

  v12 = *(a1 + 17);
  v13 = *(a2 + 17);
  if (v12 == 5)
  {
    if (v13 != 5)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v15 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v127 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  v125 = *(v127 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x28223BE20](v127);
  v129 = (&v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD50, &unk_23C879190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v126 = (&v122 - v8);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD58, &qword_23C879060);
  v9 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v128 = &v122 - v10;
  v11 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  v131 = *(v11 - 8);
  v132 = v11;
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v11);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD60, &qword_23C879068);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v122 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD68, &qword_23C879070);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v133 = &v122 - v20;
  v21 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD70, &unk_23C879180);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = (&v122 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD78, &qword_23C879078);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v122 - v32;
  v34 = *(a1 + 24);
  v35 = *(a2 + 24);
  if (v34)
  {
    if (!v35 || (*(a1 + 16) != *(a2 + 16) || v34 != v35) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v35)
  {
    goto LABEL_69;
  }

  v36 = *(a1 + 40);
  v37 = *(a2 + 40);
  if (v36)
  {
    if (!v37 || (*(a1 + 32) != *(a2 + 32) || v36 != v37) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v37)
  {
    goto LABEL_69;
  }

  v38 = *(a1 + 56);
  v39 = *(a2 + 56);
  if (v38)
  {
    if (!v39 || (*(a1 + 48) != *(a2 + 48) || v38 != v39) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v39)
  {
    goto LABEL_69;
  }

  v40 = *(a1 + 72);
  v41 = *(a2 + 72);
  if (v40)
  {
    if (!v41 || (*(a1 + 64) != *(a2 + 64) || v40 != v41) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v41)
  {
    goto LABEL_69;
  }

  v42 = *(a1 + 80);
  v43 = *(a2 + 80);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v43 == 2 || ((v42 ^ v43) & 1) != 0)
  {
    goto LABEL_69;
  }

  v44 = *(a1 + 81);
  v45 = *(a2 + 81);
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
  {
    goto LABEL_69;
  }

  v46 = *(a1 + 82);
  v47 = *(a2 + 82);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    goto LABEL_69;
  }

  v48 = *(a1 + 83);
  v49 = *(a2 + 83);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    goto LABEL_69;
  }

  v50 = *(a1 + 84);
  v51 = *(a2 + 84);
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v51 == 2 || ((v50 ^ v51) & 1) != 0)
  {
    goto LABEL_69;
  }

  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0 || (sub_23C5D25E0(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_69;
  }

  v52 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v53 = *(v52 + 60);
  v122 = v52;
  v123 = v53;
  v54 = *(v30 + 48);
  sub_23C5855B0(a1 + v53, v33, &qword_27E1FAD70, &unk_23C879180);
  v55 = a2 + v123;
  v123 = v54;
  sub_23C5855B0(v55, &v33[v54], &qword_27E1FAD70, &unk_23C879180);
  v56 = *(v22 + 48);
  if (v56(v33, 1, v21) == 1)
  {
    if (v56(&v33[v123], 1, v21) == 1)
    {
      sub_23C585C34(v33, &qword_27E1FAD70, &unk_23C879180);
      goto LABEL_64;
    }

LABEL_61:
    v57 = &qword_27E1FAD78;
    v58 = &qword_23C879078;
    v59 = v33;
LABEL_62:
    sub_23C585C34(v59, v57, v58);
    goto LABEL_69;
  }

  sub_23C5855B0(v33, v29, &qword_27E1FAD70, &unk_23C879180);
  if (v56(&v33[v123], 1, v21) == 1)
  {
    sub_23C5EDCC4(v29, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
    goto LABEL_61;
  }

  sub_23C5EDD24(&v33[v123], v25, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  v60 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC4UserV2eeoiySbAC_ACtFZ_0(v29, v25);
  sub_23C5EDCC4(v25, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_23C5EDCC4(v29, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser);
  sub_23C585C34(v33, &qword_27E1FAD70, &unk_23C879180);
  if ((v60 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_64:
  v61 = v122[16];
  v63 = *(a1 + v61);
  v62 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v66 = *v64;
  v65 = v64[1];
  if (v62 >> 60 == 15)
  {
    if (v65 >> 60 == 15)
    {
      sub_23C5EDBA0(v63, v62);
      sub_23C5EDBA0(v66, v65);
      sub_23C5AD0AC(v63, v62);
      goto LABEL_72;
    }

LABEL_68:
    sub_23C5EDBA0(v63, v62);
    sub_23C5EDBA0(v66, v65);
    sub_23C5AD0AC(v63, v62);
    sub_23C5AD0AC(v66, v65);
    goto LABEL_69;
  }

  if (v65 >> 60 == 15)
  {
    goto LABEL_68;
  }

  sub_23C5EDBA0(v63, v62);
  sub_23C5EDBA0(v66, v65);
  v69 = sub_23C6F73FC(v63, v62, v66, v65);
  sub_23C5AD0AC(v66, v65);
  sub_23C5AD0AC(v63, v62);
  if ((v69 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_72:
  v70 = v122[17];
  v71 = (a1 + v70);
  v72 = *(a1 + v70 + 8);
  v73 = (a2 + v70);
  v74 = v73[1];
  if (v72)
  {
    if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v74)
  {
    goto LABEL_69;
  }

  v75 = v122[18];
  v76 = (a1 + v75);
  v77 = *(a1 + v75 + 8);
  v78 = (a2 + v75);
  v79 = v78[1];
  if (v77)
  {
    if (!v79 || (*v76 != *v78 || v77 != v79) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v79)
  {
    goto LABEL_69;
  }

  v80 = v122[19];
  v81 = *(v18 + 48);
  v82 = v133;
  sub_23C5855B0(a1 + v80, v133, &qword_27E1FAD60, &qword_23C879068);
  sub_23C5855B0(a2 + v80, v82 + v81, &qword_27E1FAD60, &qword_23C879068);
  v83 = *(v131 + 48);
  if (v83(v82, 1, v132) == 1)
  {
    if (v83(v133 + v81, 1, v132) == 1)
    {
      sub_23C585C34(v133, &qword_27E1FAD60, &qword_23C879068);
      goto LABEL_93;
    }

    goto LABEL_91;
  }

  v84 = v133;
  sub_23C5855B0(v133, v17, &qword_27E1FAD60, &qword_23C879068);
  if (v83(v84 + v81, 1, v132) == 1)
  {
    sub_23C5EDCC4(v17, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
LABEL_91:
    v57 = &qword_27E1FAD68;
    v58 = &qword_23C879070;
    v59 = v133;
    goto LABEL_62;
  }

  v85 = v133;
  v86 = v133 + v81;
  v87 = v130;
  sub_23C5EDD24(v86, v130, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  v88 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC18ContentRestrictionV2eeoiySbAC_ACtFZ_0(v17, v87);
  sub_23C5EDCC4(v87, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_23C5EDCC4(v17, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction);
  sub_23C585C34(v85, &qword_27E1FAD60, &qword_23C879068);
  if ((v88 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_93:
  v89 = v122[20];
  v90 = (a1 + v89);
  v91 = *(a1 + v89 + 8);
  v92 = (a2 + v89);
  v93 = *(a2 + v89 + 8);
  if (v91)
  {
    if (!v93)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*v90 != *v92)
    {
      LOBYTE(v93) = 1;
    }

    if (v93)
    {
      goto LABEL_69;
    }
  }

  v94 = v122[21];
  v95 = (a1 + v94);
  v96 = *(a1 + v94 + 8);
  v97 = (a2 + v94);
  v98 = v97[1];
  if (v96)
  {
    if (!v98 || (*v95 != *v97 || v96 != v98) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (v98)
  {
    goto LABEL_69;
  }

  v99 = v122[22];
  v100 = *(a1 + v99);
  v101 = *(a2 + v99);
  if (v100 == 2)
  {
    if (v101 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v101 == 2 || ((v100 ^ v101) & 1) != 0)
  {
    goto LABEL_69;
  }

  v102 = v122[23];
  v103 = *(a1 + v102);
  v104 = *(a2 + v102);
  if (v103 == 2)
  {
    if (v104 != 2)
    {
      goto LABEL_69;
    }
  }

  else if (v104 == 2 || ((v103 ^ v104) & 1) != 0)
  {
    goto LABEL_69;
  }

  v105 = v122[24];
  v106 = *(v124 + 48);
  v107 = v128;
  sub_23C5855B0(a1 + v105, v128, &qword_27E1FAD50, &unk_23C879190);
  sub_23C5855B0(a2 + v105, v107 + v106, &qword_27E1FAD50, &unk_23C879190);
  v108 = *(v125 + 48);
  if (v108(v107, 1, v127) != 1)
  {
    v109 = v128;
    sub_23C5855B0(v128, v126, &qword_27E1FAD50, &unk_23C879190);
    if (v108(v109 + v106, 1, v127) != 1)
    {
      v110 = v128;
      v111 = v128 + v106;
      v112 = v129;
      sub_23C5EDD24(v111, v129, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      v113 = v126;
      v114 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC6MeCardV2eeoiySbAC_ACtFZ_0(v126, v112);
      sub_23C5EDCC4(v112, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_23C5EDCC4(v113, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
      sub_23C585C34(v110, &qword_27E1FAD50, &unk_23C879190);
      if ((v114 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_123;
    }

    sub_23C5EDCC4(v126, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard);
    goto LABEL_121;
  }

  if (v108(v128 + v106, 1, v127) != 1)
  {
LABEL_121:
    v57 = &qword_27E1FAD58;
    v58 = &qword_23C879060;
    v59 = v128;
    goto LABEL_62;
  }

  sub_23C585C34(v128, &qword_27E1FAD50, &unk_23C879190);
LABEL_123:
  v115 = v122[25];
  v116 = *(a1 + v115);
  v117 = *(a2 + v115);
  if (v116 == 12)
  {
    if (v117 != 12)
    {
      goto LABEL_69;
    }
  }

  else if (v116 != v117)
  {
    goto LABEL_69;
  }

  v118 = v122[26];
  v119 = *(a1 + v118);
  v120 = *(a2 + v118);
  if (v119 != 2)
  {
    if (v120 == 2 || ((v119 ^ v120) & 1) != 0)
    {
      goto LABEL_69;
    }

LABEL_132:
    v121 = v122[27];
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v67 = sub_23C871754();
    return v67 & 1;
  }

  if (v120 == 2)
  {
    goto LABEL_132;
  }

LABEL_69:
  v67 = 0;
  return v67 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FA458, &qword_23C8755D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD88, &qword_23C879080);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FA458, &qword_23C8755D0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FA458, &qword_23C8755D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FA458, &qword_23C8755D0);
LABEL_9:
      v22 = *(type metadata accessor for ContextProtoStructuredContext(0) + 20);
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FA458, &qword_23C8755D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAD88, &qword_23C879080);
    goto LABEL_7;
  }

  sub_23C5EDD24(&v17[v18], v8, type metadata accessor for ContextProtoStructuredContextKind);
  v21 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC4KindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C5EDCC4(v8, type metadata accessor for ContextProtoStructuredContextKind);
  sub_23C5EDCC4(v12, type metadata accessor for ContextProtoStructuredContextKind);
  sub_23C585C34(v17, &qword_27E1FA458, &qword_23C8755D0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams021ContextProtoRetrievedC0V2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v123 = a1;
  v124 = a2;
  v2 = type metadata accessor for ContextProtoStructuredContext(0);
  v105 = *(v2 - 8);
  v106 = v2;
  v3 = *(v105 + 64);
  MEMORY[0x28223BE20](v2);
  v102 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADF0, &qword_23C8790D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v98 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADF8, &qword_23C8790E0);
  v8 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v107 = &v98 - v9;
  v10 = type metadata accessor for ContextProtoContextMetadata(0);
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v10);
  v109 = (&v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAE00, &unk_23C879150);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v112 = (&v98 - v15);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAE08, &qword_23C8790E8);
  v16 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v116 = &v98 - v17;
  v18 = type metadata accessor for ContextProtoConfidence(0);
  v121 = *(v18 - 8);
  v122 = v18;
  v19 = *(v121 + 64);
  MEMORY[0x28223BE20](v18);
  v117 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD8, &qword_23C8790C8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v118 = &v98 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADE0, &qword_23C8790D0);
  v24 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v26 = &v98 - v25;
  v27 = type metadata accessor for ToolKitProtoTypedValue(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v119 = (&v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v108 = (&v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v36 = (&v98 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v111 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v98 - v41;
  v43 = type metadata accessor for ContextProtoRetrievedContext(0);
  v44 = *(v43 + 20);
  v110 = v37;
  v45 = *(v37 + 48);
  sub_23C5855B0(&v123[v44], v42, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(&v124[v44], &v42[v45], &qword_27E1FAB68, &unk_23C879140);
  v48 = *(v28 + 48);
  v47 = v28 + 48;
  v46 = v48;
  if (v48(v42, 1, v27) == 1)
  {
    if (v46(&v42[v45], 1, v27) == 1)
    {
      v99 = v46;
      v100 = v47;
      v101 = v27;
      sub_23C585C34(v42, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_9;
    }

LABEL_6:
    v49 = &qword_27E1FAB70;
    v50 = &qword_23C878F28;
LABEL_7:
    v51 = v42;
LABEL_35:
    sub_23C585C34(v51, v49, v50);
    goto LABEL_36;
  }

  sub_23C5855B0(v42, v36, &qword_27E1FAB68, &unk_23C879140);
  if (v46(&v42[v45], 1, v27) == 1)
  {
    sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  v99 = v46;
  v100 = v47;
  v101 = v27;
  v52 = v119;
  sub_23C5EDD24(&v42[v45], v119, type metadata accessor for ToolKitProtoTypedValue);
  v53 = sub_23C707370(v36, v52);
  sub_23C5EDCC4(v52, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v36, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v42, &qword_27E1FAB68, &unk_23C879140);
  if ((v53 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_9:
  v54 = v43;
  v55 = *(v43 + 24);
  v56 = *(v120 + 48);
  v57 = v123;
  sub_23C5855B0(&v123[v55], v26, &qword_27E1FADD8, &qword_23C8790C8);
  v58 = v124;
  sub_23C5855B0(&v124[v55], &v26[v56], &qword_27E1FADD8, &qword_23C8790C8);
  v59 = v122;
  v60 = *(v121 + 48);
  if (v60(v26, 1, v122) == 1)
  {
    if (v60(&v26[v56], 1, v59) == 1)
    {
      sub_23C585C34(v26, &qword_27E1FADD8, &qword_23C8790C8);
      goto LABEL_12;
    }

LABEL_18:
    v49 = &qword_27E1FADE0;
    v50 = &qword_23C8790D0;
    v51 = v26;
    goto LABEL_35;
  }

  v66 = v118;
  sub_23C5855B0(v26, v118, &qword_27E1FADD8, &qword_23C8790C8);
  if (v60(&v26[v56], 1, v59) == 1)
  {
    sub_23C5EDCC4(v66, type metadata accessor for ContextProtoConfidence);
    goto LABEL_18;
  }

  v67 = v117;
  sub_23C5EDD24(&v26[v56], v117, type metadata accessor for ContextProtoConfidence);
  if (*v66 != *v67 || *(v66 + 4) != *(v67 + 4))
  {
    sub_23C5EDCC4(v67, type metadata accessor for ContextProtoConfidence);
    sub_23C5EDCC4(v66, type metadata accessor for ContextProtoConfidence);
    v49 = &qword_27E1FADD8;
    v50 = &qword_23C8790C8;
    v51 = v26;
    goto LABEL_35;
  }

  v68 = *(v59 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v69 = sub_23C871754();
  sub_23C5EDCC4(v67, type metadata accessor for ContextProtoConfidence);
  sub_23C5EDCC4(v66, type metadata accessor for ContextProtoConfidence);
  sub_23C585C34(v26, &qword_27E1FADD8, &qword_23C8790C8);
  if ((v69 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_12:
  if (*v57 != *v58)
  {
    goto LABEL_36;
  }

  v61 = v54[7];
  v62 = *(v113 + 48);
  v63 = v116;
  sub_23C5855B0(&v57[v61], v116, &qword_27E1FAE00, &unk_23C879150);
  sub_23C5855B0(&v58[v61], v63 + v62, &qword_27E1FAE00, &unk_23C879150);
  v64 = v115;
  v65 = *(v114 + 48);
  if (v65(v63, 1, v115) == 1)
  {
    if (v65(v63 + v62, 1, v64) == 1)
    {
      sub_23C585C34(v63, &qword_27E1FAE00, &unk_23C879150);
      goto LABEL_28;
    }

LABEL_26:
    v49 = &qword_27E1FAE08;
    v50 = &qword_23C8790E8;
LABEL_34:
    v51 = v63;
    goto LABEL_35;
  }

  v70 = v112;
  sub_23C5855B0(v63, v112, &qword_27E1FAE00, &unk_23C879150);
  if (v65(v63 + v62, 1, v64) == 1)
  {
    sub_23C5EDCC4(v70, type metadata accessor for ContextProtoContextMetadata);
    goto LABEL_26;
  }

  v71 = v109;
  sub_23C5EDD24(v63 + v62, v109, type metadata accessor for ContextProtoContextMetadata);
  v72 = _s26AIMLInstrumentationStreams012ContextProtoC8MetadataV2eeoiySbAC_ACtFZ_0(v70, v71);
  sub_23C5EDCC4(v71, type metadata accessor for ContextProtoContextMetadata);
  sub_23C5EDCC4(v70, type metadata accessor for ContextProtoContextMetadata);
  sub_23C585C34(v63, &qword_27E1FAE00, &unk_23C879150);
  if ((v72 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v73 = v54[8];
  v63 = v111;
  v74 = *(v110 + 48);
  sub_23C5855B0(&v57[v73], v111, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(&v58[v73], v63 + v74, &qword_27E1FAB68, &unk_23C879140);
  v75 = v101;
  v76 = v99;
  if (v99(v63, 1, v101) == 1)
  {
    if (v76(v63 + v74, 1, v75) == 1)
    {
      sub_23C585C34(v63, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v77 = v108;
  sub_23C5855B0(v63, v108, &qword_27E1FAB68, &unk_23C879140);
  if (v76(v63 + v74, 1, v75) == 1)
  {
    sub_23C5EDCC4(v77, type metadata accessor for ToolKitProtoTypedValue);
LABEL_33:
    v49 = &qword_27E1FAB70;
    v50 = &qword_23C878F28;
    goto LABEL_34;
  }

  v80 = v119;
  sub_23C5EDD24(v63 + v74, v119, type metadata accessor for ToolKitProtoTypedValue);
  v81 = sub_23C707370(v77, v80);
  sub_23C5EDCC4(v80, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C5EDCC4(v77, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v63, &qword_27E1FAB68, &unk_23C879140);
  if ((v81 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  v82 = v54[9];
  v83 = *(v104 + 48);
  v84 = v107;
  sub_23C5855B0(&v57[v82], v107, &qword_27E1FADF0, &qword_23C8790D8);
  v85 = &v58[v82];
  v42 = v84;
  sub_23C5855B0(v85, v84 + v83, &qword_27E1FADF0, &qword_23C8790D8);
  v86 = v106;
  v87 = *(v105 + 48);
  if (v87(v84, 1, v106) != 1)
  {
    v88 = v103;
    sub_23C5855B0(v42, v103, &qword_27E1FADF0, &qword_23C8790D8);
    if (v87(&v42[v83], 1, v86) != 1)
    {
      v89 = &v42[v83];
      v90 = v102;
      sub_23C5EDD24(v89, v102, type metadata accessor for ContextProtoStructuredContext);
      v91 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC0V2eeoiySbAC_ACtFZ_0(v88, v90);
      sub_23C5EDCC4(v90, type metadata accessor for ContextProtoStructuredContext);
      sub_23C5EDCC4(v88, type metadata accessor for ContextProtoStructuredContext);
      sub_23C585C34(v42, &qword_27E1FADF0, &qword_23C8790D8);
      if ((v91 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_46;
    }

    sub_23C5EDCC4(v88, type metadata accessor for ContextProtoStructuredContext);
    goto LABEL_44;
  }

  if (v87((v84 + v83), 1, v86) != 1)
  {
LABEL_44:
    v49 = &qword_27E1FADF8;
    v50 = &qword_23C8790E0;
    goto LABEL_7;
  }

  sub_23C585C34(v84, &qword_27E1FADF0, &qword_23C8790D8);
LABEL_46:
  v92 = v54[10];
  v93 = &v57[v92];
  v94 = *&v57[v92 + 8];
  v95 = &v58[v92];
  v96 = *(v95 + 1);
  if (v94)
  {
    if (v96 && (*v93 == *v95 && v94 == v96 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_53;
    }
  }

  else if (!v96)
  {
LABEL_53:
    v97 = v54[11];
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v78 = sub_23C871754();
    return v78 & 1;
  }

LABEL_36:
  v78 = 0;
  return v78 & 1;
}

uint64_t _s26AIMLInstrumentationStreams020ContextProtoStructedc3AppC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 24) == *(a2 + 24) && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v9 || (*(a1 + 40) != *(a2 + 40) || v8 != v9) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v11 = *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams020ContextProtoStructedc10AppInFocusC0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_20;
    }
  }

  else if (!v9)
  {
LABEL_20:
    v10 = *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
    sub_23C870F34();
    sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams012ContextProtoC8MetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v149 = type metadata accessor for ContextProtoCGRect(0);
  v144 = *(v149 - 8);
  v4 = *(v144 + 64);
  MEMORY[0x28223BE20](v149);
  v6 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD18, &unk_23C879170);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v143 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v145 = &v138 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAD20, &qword_23C879040);
  v12 = *(*(v147 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v147);
  v146 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v150 = &v138 - v15;
  v16 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v153 = *(v16 - 8);
  v154 = v16;
  v17 = *(v153 + 64);
  MEMORY[0x28223BE20](v16);
  v148 = (&v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC8, &qword_23C8790B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v151 = (&v138 - v21);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD0, &qword_23C8790C0);
  v22 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v156 = &v138 - v23;
  v24 = type metadata accessor for ContextProtoBoundingBox(0);
  v160 = *(v24 - 8);
  v161 = v24;
  v25 = *(v160 + 64);
  MEMORY[0x28223BE20](v24);
  v158 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADB8, &unk_23C879160);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v155 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v159 = &v138 - v31;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADC0, &qword_23C8790B0);
  v32 = *(*(v162 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v162);
  v157 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v138 - v35;
  v37 = type metadata accessor for ContextProtoConfidence(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = (&v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADD8, &qword_23C8790C8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = (&v138 - v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FADE0, &qword_23C8790D0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v138 - v48;
  v50 = a1[2];
  v51 = a2[2];
  if (v50)
  {
    if (!v51 || (a1[1] != a2[1] || v50 != v51) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v51)
  {
    goto LABEL_32;
  }

  v52 = a1[4];
  v53 = a2[4];
  if (v52)
  {
    if (!v53 || (a1[3] != a2[3] || v52 != v53) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v53)
  {
    goto LABEL_32;
  }

  v139 = v6;
  v54 = type metadata accessor for ContextProtoContextMetadata(0);
  v142 = a2;
  v140 = v54;
  v55 = *(v54 + 28);
  v56 = *(v46 + 48);
  v141 = a1;
  sub_23C5855B0(a1 + v55, v49, &qword_27E1FADD8, &qword_23C8790C8);
  v57 = v142 + v55;
  v58 = v142;
  sub_23C5855B0(v57, &v49[v56], &qword_27E1FADD8, &qword_23C8790C8);
  v59 = *(v38 + 48);
  if (v59(v49, 1, v37) == 1)
  {
    if (v59(&v49[v56], 1, v37) == 1)
    {
      sub_23C585C34(v49, &qword_27E1FADD8, &qword_23C8790C8);
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  sub_23C5855B0(v49, v45, &qword_27E1FADD8, &qword_23C8790C8);
  if (v59(&v49[v56], 1, v37) == 1)
  {
    sub_23C5EDCC4(v45, type metadata accessor for ContextProtoConfidence);
LABEL_24:
    v68 = &qword_27E1FADE0;
    v69 = &qword_23C8790D0;
LABEL_30:
    v72 = v49;
LABEL_31:
    sub_23C585C34(v72, v68, v69);
    goto LABEL_32;
  }

  sub_23C5EDD24(&v49[v56], v41, type metadata accessor for ContextProtoConfidence);
  if (*v45 != *v41 || *(v45 + 4) != *(v41 + 4))
  {
    sub_23C5EDCC4(v41, type metadata accessor for ContextProtoConfidence);
    sub_23C5EDCC4(v45, type metadata accessor for ContextProtoConfidence);
    v68 = &qword_27E1FADD8;
    v69 = &qword_23C8790C8;
    goto LABEL_30;
  }

  v70 = *(v37 + 24);
  sub_23C870F34();
  sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v58 = v142;
  v71 = sub_23C871754();
  sub_23C5EDCC4(v41, type metadata accessor for ContextProtoConfidence);
  sub_23C5EDCC4(v45, type metadata accessor for ContextProtoConfidence);
  sub_23C585C34(v49, &qword_27E1FADD8, &qword_23C8790C8);
  if ((v71 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  v60 = v141;
  if ((sub_23C5E12AC(*v141, *v58) & 1) == 0)
  {
    goto LABEL_32;
  }

  v61 = v140;
  v62 = v140[8];
  v63 = *(v162 + 48);
  sub_23C5855B0(v60 + v62, v36, &qword_27E1FADB8, &unk_23C879160);
  v64 = v142 + v62;
  v65 = v142;
  sub_23C5855B0(v64, &v36[v63], &qword_27E1FADB8, &unk_23C879160);
  v66 = v161;
  v67 = *(v160 + 48);
  if (v67(v36, 1, v161) == 1)
  {
    if (v67(&v36[v63], 1, v66) != 1)
    {
LABEL_37:
      v68 = &qword_27E1FADC0;
      v69 = &qword_23C8790B0;
      v72 = v36;
      goto LABEL_31;
    }

    sub_23C585C34(v36, &qword_27E1FADB8, &unk_23C879160);
  }

  else
  {
    v75 = v159;
    sub_23C5855B0(v36, v159, &qword_27E1FADB8, &unk_23C879160);
    if (v67(&v36[v63], 1, v66) == 1)
    {
      v76 = v75;
LABEL_36:
      sub_23C5EDCC4(v76, type metadata accessor for ContextProtoBoundingBox);
      goto LABEL_37;
    }

    v77 = &v36[v63];
    v78 = v158;
    sub_23C5EDD24(v77, v158, type metadata accessor for ContextProtoBoundingBox);
    LODWORD(v160) = _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v75, v78);
    sub_23C5EDCC4(v78, type metadata accessor for ContextProtoBoundingBox);
    sub_23C5EDCC4(v75, type metadata accessor for ContextProtoBoundingBox);
    sub_23C585C34(v36, &qword_27E1FADB8, &unk_23C879160);
    if ((v160 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v79 = v61[9];
  v80 = (v60 + v79);
  v81 = *(v60 + v79 + 8);
  v82 = (v65 + v79);
  v83 = *(v65 + v79 + 8);
  if (v81)
  {
    if (!v83)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*v80 != *v82)
    {
      LOBYTE(v83) = 1;
    }

    if (v83)
    {
      goto LABEL_32;
    }
  }

  v84 = v61[10];
  v85 = (v60 + v84);
  v86 = *(v60 + v84 + 8);
  v87 = (v65 + v84);
  v88 = v87[1];
  if (v86)
  {
    if (!v88 || (*v85 != *v87 || v86 != v88) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v88)
  {
    goto LABEL_32;
  }

  v89 = v61[11];
  v90 = *(v60 + v89);
  v91 = *(v65 + v89);
  if (v90 == 2)
  {
    if (v91 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v91 == 2 || ((v90 ^ v91) & 1) != 0)
  {
    goto LABEL_32;
  }

  v92 = v61[12];
  v93 = *(v60 + v92);
  v94 = *(v65 + v92);
  if (v93 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v94 == 2 || ((v93 ^ v94) & 1) != 0)
  {
    goto LABEL_32;
  }

  v95 = v61[13];
  v96 = *(v162 + 48);
  v36 = v157;
  sub_23C5855B0(v60 + v95, v157, &qword_27E1FADB8, &unk_23C879160);
  sub_23C5855B0(v65 + v95, &v36[v96], &qword_27E1FADB8, &unk_23C879160);
  if (v67(v36, 1, v66) == 1)
  {
    if (v67(&v36[v96], 1, v66) == 1)
    {
      sub_23C585C34(v36, &qword_27E1FADB8, &unk_23C879160);
      goto LABEL_68;
    }

    goto LABEL_37;
  }

  v97 = v155;
  sub_23C5855B0(v36, v155, &qword_27E1FADB8, &unk_23C879160);
  if (v67(&v36[v96], 1, v66) == 1)
  {
    v76 = v97;
    goto LABEL_36;
  }

  v98 = &v36[v96];
  v99 = v158;
  sub_23C5EDD24(v98, v158, type metadata accessor for ContextProtoBoundingBox);
  v100 = _s26AIMLInstrumentationStreams23ContextProtoBoundingBoxV2eeoiySbAC_ACtFZ_0(v97, v99);
  sub_23C5EDCC4(v99, type metadata accessor for ContextProtoBoundingBox);
  sub_23C5EDCC4(v97, type metadata accessor for ContextProtoBoundingBox);
  sub_23C585C34(v36, &qword_27E1FADB8, &unk_23C879160);
  if ((v100 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_68:
  v101 = v61[14];
  v102 = *(v141 + v101);
  v103 = *(v142 + v101);
  if (v102 == 6)
  {
    if (v103 != 6)
    {
      goto LABEL_32;
    }
  }

  else if (v102 != v103)
  {
    goto LABEL_32;
  }

  v104 = v140[15];
  v105 = *(v152 + 48);
  v106 = v156;
  sub_23C5855B0(v141 + v104, v156, &qword_27E1FADC8, &qword_23C8790B8);
  sub_23C5855B0(v142 + v104, v106 + v105, &qword_27E1FADC8, &qword_23C8790B8);
  v107 = *(v153 + 48);
  if (v107(v106, 1, v154) == 1)
  {
    if (v107(v156 + v105, 1, v154) == 1)
    {
      sub_23C585C34(v156, &qword_27E1FADC8, &qword_23C8790B8);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v108 = v156;
  sub_23C5855B0(v156, v151, &qword_27E1FADC8, &qword_23C8790B8);
  if (v107(v108 + v105, 1, v154) == 1)
  {
    sub_23C5EDCC4(v151, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
LABEL_77:
    v68 = &qword_27E1FADD0;
    v69 = &qword_23C8790C0;
    v72 = v156;
    goto LABEL_31;
  }

  v109 = v156;
  v110 = v156 + v105;
  v111 = v148;
  sub_23C5EDD24(v110, v148, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  v112 = v151;
  v113 = _s26AIMLInstrumentationStreams49ContextProtoContextualEntityDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v151, v111);
  sub_23C5EDCC4(v111, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_23C5EDCC4(v112, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_23C585C34(v109, &qword_27E1FADC8, &qword_23C8790B8);
  if ((v113 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_79:
  v114 = v140[16];
  v115 = (v141 + v114);
  v116 = *(v141 + v114 + 8);
  v117 = (v142 + v114);
  v118 = v117[1];
  if (v116)
  {
    if (!v118 || (*v115 != *v117 || v116 != v118) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v118)
  {
    goto LABEL_32;
  }

  v119 = v140[17];
  v120 = *(v147 + 48);
  v121 = v150;
  sub_23C5855B0(v141 + v119, v150, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(v142 + v119, v121 + v120, &qword_27E1FAD18, &unk_23C879170);
  v122 = *(v144 + 48);
  if (v122(v121, 1, v149) != 1)
  {
    v123 = v150;
    sub_23C5855B0(v150, v145, &qword_27E1FAD18, &unk_23C879170);
    if (v122(v123 + v120, 1, v149) != 1)
    {
      v124 = v150;
      v125 = v150 + v120;
      v126 = v139;
      sub_23C5EDD24(v125, v139, type metadata accessor for ContextProtoCGRect);
      v127 = v145;
      v128 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v145, v126);
      sub_23C5EDCC4(v126, type metadata accessor for ContextProtoCGRect);
      sub_23C5EDCC4(v127, type metadata accessor for ContextProtoCGRect);
      sub_23C585C34(v124, &qword_27E1FAD18, &unk_23C879170);
      if ((v128 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_93;
    }

    sub_23C5EDCC4(v145, type metadata accessor for ContextProtoCGRect);
    goto LABEL_91;
  }

  if (v122(v150 + v120, 1, v149) != 1)
  {
LABEL_91:
    v68 = &qword_27E1FAD20;
    v69 = &qword_23C879040;
    v72 = v150;
    goto LABEL_31;
  }

  sub_23C585C34(v150, &qword_27E1FAD18, &unk_23C879170);
LABEL_93:
  v129 = v140[18];
  v130 = v146;
  v131 = *(v147 + 48);
  sub_23C5855B0(v141 + v129, v146, &qword_27E1FAD18, &unk_23C879170);
  sub_23C5855B0(v142 + v129, v130 + v131, &qword_27E1FAD18, &unk_23C879170);
  if (v122(v130, 1, v149) == 1)
  {
    if (v122(v146 + v131, 1, v149) == 1)
    {
      sub_23C585C34(v146, &qword_27E1FAD18, &unk_23C879170);
LABEL_100:
      v137 = v140[19];
      sub_23C870F34();
      sub_23C5EDAB0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v73 = sub_23C871754();
      return v73 & 1;
    }

    goto LABEL_98;
  }

  v132 = v146;
  sub_23C5855B0(v146, v143, &qword_27E1FAD18, &unk_23C879170);
  if (v122(v132 + v131, 1, v149) == 1)
  {
    sub_23C5EDCC4(v143, type metadata accessor for ContextProtoCGRect);
LABEL_98:
    v68 = &qword_27E1FAD20;
    v69 = &qword_23C879040;
    v72 = v146;
    goto LABEL_31;
  }

  v133 = v146;
  v134 = v139;
  sub_23C5EDD24(v146 + v131, v139, type metadata accessor for ContextProtoCGRect);
  v135 = v143;
  v136 = _s26AIMLInstrumentationStreams18ContextProtoCGRectV2eeoiySbAC_ACtFZ_0(v143, v134);
  sub_23C5EDCC4(v134, type metadata accessor for ContextProtoCGRect);
  sub_23C5EDCC4(v135, type metadata accessor for ContextProtoCGRect);
  sub_23C585C34(v133, &qword_27E1FAD18, &unk_23C879170);
  if (v136)
  {
    goto LABEL_100;
  }

LABEL_32:
  v73 = 0;
  return v73 & 1;
}

unint64_t sub_23C5EA6E4()
{
  result = qword_27E1FA440;
  if (!qword_27E1FA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA440);
  }

  return result;
}

unint64_t sub_23C5EA738()
{
  result = qword_27E1FA508;
  if (!qword_27E1FA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA508);
  }

  return result;
}

unint64_t sub_23C5EA78C()
{
  result = qword_27E1FA510;
  if (!qword_27E1FA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA510);
  }

  return result;
}

unint64_t sub_23C5EA7E0()
{
  result = qword_27E1FA530;
  if (!qword_27E1FA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA530);
  }

  return result;
}

unint64_t sub_23C5EA834()
{
  result = qword_27E1FA5A0;
  if (!qword_27E1FA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5A0);
  }

  return result;
}

unint64_t sub_23C5EA888()
{
  result = qword_27E1FA5B8;
  if (!qword_27E1FA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5B8);
  }

  return result;
}

unint64_t sub_23C5EA8E0()
{
  result = qword_27E1FA5C8;
  if (!qword_27E1FA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5C8);
  }

  return result;
}

unint64_t sub_23C5EA938()
{
  result = qword_27E1FA5D0;
  if (!qword_27E1FA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5D0);
  }

  return result;
}

unint64_t sub_23C5EA990()
{
  result = qword_27E1FA5D8;
  if (!qword_27E1FA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5D8);
  }

  return result;
}

unint64_t sub_23C5EA9E8()
{
  result = qword_27E1FA5E0;
  if (!qword_27E1FA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5E0);
  }

  return result;
}

unint64_t sub_23C5EAA40()
{
  result = qword_27E1FA5E8;
  if (!qword_27E1FA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5E8);
  }

  return result;
}

unint64_t sub_23C5EAA98()
{
  result = qword_27E1FA5F0;
  if (!qword_27E1FA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5F0);
  }

  return result;
}

unint64_t sub_23C5EAAF0()
{
  result = qword_27E1FA5F8;
  if (!qword_27E1FA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA5F8);
  }

  return result;
}

unint64_t sub_23C5EAB48()
{
  result = qword_27E1FA600;
  if (!qword_27E1FA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA600);
  }

  return result;
}

unint64_t sub_23C5EABA0()
{
  result = qword_27E1FA608;
  if (!qword_27E1FA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA608);
  }

  return result;
}

unint64_t sub_23C5EABF8()
{
  result = qword_27E1FA610;
  if (!qword_27E1FA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA610);
  }

  return result;
}

unint64_t sub_23C5EAC50()
{
  result = qword_27E1FA618;
  if (!qword_27E1FA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA618);
  }

  return result;
}

unint64_t sub_23C5EACA8()
{
  result = qword_27E1FA620;
  if (!qword_27E1FA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA620);
  }

  return result;
}

unint64_t sub_23C5EAD00()
{
  result = qword_27E1FA628;
  if (!qword_27E1FA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA628);
  }

  return result;
}

unint64_t sub_23C5EAD58()
{
  result = qword_27E1FA630;
  if (!qword_27E1FA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA630);
  }

  return result;
}

unint64_t sub_23C5EADB0()
{
  result = qword_27E1FA638;
  if (!qword_27E1FA638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA638);
  }

  return result;
}

unint64_t sub_23C5EAE08()
{
  result = qword_27E1FA640;
  if (!qword_27E1FA640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA640);
  }

  return result;
}

unint64_t sub_23C5EAE60()
{
  result = qword_27E1FA648;
  if (!qword_27E1FA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA648);
  }

  return result;
}

unint64_t sub_23C5EAEB8()
{
  result = qword_27E1FA650;
  if (!qword_27E1FA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA650);
  }

  return result;
}

unint64_t sub_23C5EC7D0()
{
  result = qword_27E1FA850;
  if (!qword_27E1FA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA850);
  }

  return result;
}

unint64_t sub_23C5EC828()
{
  result = qword_27E1FA858;
  if (!qword_27E1FA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA858);
  }

  return result;
}

unint64_t sub_23C5ECD00()
{
  result = qword_27E1FA8B0;
  if (!qword_27E1FA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA8B0);
  }

  return result;
}

unint64_t sub_23C5ECD58()
{
  result = qword_27E1FA8B8;
  if (!qword_27E1FA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FA8B8);
  }

  return result;
}

uint64_t sub_23C5EDA0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23C5EDA24();
  }

  return result;
}

uint64_t sub_23C5EDA2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_23C5EDA44();
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_23C5EDAB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23C5EDAF8()
{
  result = qword_27E1FACF0;
  if (!qword_27E1FACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FACF0);
  }

  return result;
}

unint64_t sub_23C5EDB4C()
{
  result = qword_27E1FAD48;
  if (!qword_27E1FAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAD48);
  }

  return result;
}

uint64_t sub_23C5EDBA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23C5ACFC8(a1, a2);
  }

  return a1;
}

unint64_t sub_23C5EDBB4()
{
  result = qword_27E1FAD80;
  if (!qword_27E1FAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAD80);
  }

  return result;
}

uint64_t sub_23C5EDC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23C5EDC70()
{
  result = qword_27E1FADE8;
  if (!qword_27E1FADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FADE8);
  }

  return result;
}

uint64_t sub_23C5EDCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C5EDD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

AIMLInstrumentationStreams::ContextProtoContextDataSource_optional __swiftcall ContextProtoContextDataSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoContextType_optional __swiftcall ContextProtoContextType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 12;
  switch(rawValue)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v2 = 1;
      goto LABEL_24;
    case 2:
      v2 = 2;
      goto LABEL_24;
    case 3:
      v2 = 3;
      goto LABEL_24;
    case 4:
      v2 = 4;
      goto LABEL_24;
    case 5:
      v2 = 5;
      goto LABEL_24;
    case 6:
      v2 = 6;
      goto LABEL_24;
    case 7:
      v2 = 7;
      goto LABEL_24;
    case 8:
      v2 = 8;
      goto LABEL_24;
    case 9:
      v2 = 9;
      goto LABEL_24;
    case 10:
      v2 = 10;
      goto LABEL_24;
    case 11:
      v2 = 11;
LABEL_24:
      v3 = v2;
      goto LABEL_25;
    case 12:
LABEL_25:
      *v1 = v3;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    default:
      *v1 = 30;
      break;
  }

  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoStructuredContextSiriRequestContextUserClassification_optional __swiftcall ContextProtoStructuredContextSiriRequestContextUserClassification.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoStructuredContextSiriRequestContextDeviceIdiom_optional __swiftcall ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoConfidenceBucket_optional __swiftcall ContextProtoConfidenceBucket.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ContextProtoAliasTypesOptions_optional __swiftcall ContextProtoAliasTypesOptions.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ContextProtoRetrievedContext.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoRetrievedContext(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v6 = v2[6];
  v7 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[7];
  v9 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v5(&a1[v2[8]], 1, 1, v4);
  v10 = v2[9];
  v11 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[10]];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a1[v2[11]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ContextProtoContextMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoContextMetadata(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v3 = v2[7];
  v4 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for ContextProtoBoundingBox(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v8 = a1 + v2[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  v7(a1 + v2[13], 1, 1, v6);
  *(a1 + v2[14]) = 6;
  v10 = v2[15];
  v11 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = (a1 + v2[16]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v2[17];
  v14 = type metadata accessor for ContextProtoCGRect(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[18], 1, 1, v14);
  v16 = a1 + v2[19];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoContextMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 76);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoContextMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoContextMetadata(0) + 76);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  *a1 = 0u;
  a1[1] = 0u;
  v3 = a1 + *(v2 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoBoundingBox.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  v1 = a1 + *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoSurroundingText.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoSurroundingText(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EE870@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EE90C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoConfidence.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoConfidence(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 4) = 0;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(a1 + 80) = 33686018;
  *(a1 + 84) = 2;
  v3 = v2[15];
  v4 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[16]) = xmmword_23C879130;
  v5 = (a1 + v2[17]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[18]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[19];
  v8 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[20];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + v2[21]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v2[22]) = 2;
  *(a1 + v2[23]) = 2;
  v11 = v2[24];
  v12 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  *(a1 + v2[25]) = 12;
  *(a1 + v2[26]) = 2;
  v13 = a1 + v2[27];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v15 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v15;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContext.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 108);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 36) = 1;
  v1 = a1 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EEF18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EEFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1282;
  v1 = a1 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v3 = a1 + *(v2 + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  v3 = a1 + *(v2 + 40);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EF280@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EF31C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v3 = a1 + *(v2 + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v3 = a1 + *(v2 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C5EF550@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EF5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructedContextAppContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  v3 = a1 + *(v2 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C5EF8BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C5EF978@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5EFA14(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v3 = v2[5];
  v4 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[1] = 0;
  v7 = &a1[v2[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C5EFD9C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = DecorationOutput[11];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + DecorationOutput[12]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + DecorationOutput[13];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoVersionedQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 52);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoQueryDecorationOutput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = DecorationOutput[14];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a1 + v3, 1, 1, DecorationToolRetrievalResponse);
  v5 = (a1 + DecorationOutput[15]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + DecorationOutput[16];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoQueryDecorationOutput.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoQueryDecorationInput.init()@<X0>(uint64_t a1@<X8>)
{
  DecorationInput = type metadata accessor for ContextProtoQueryDecorationInput(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v3 = a1 + *(DecorationInput + 44);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5F0350@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C5F03EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C5F04F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v7 = a1(0);
  v8 = v7[5];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  v10 = v7[6];
  v11 = a3(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  v12 = &a4[v7[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoRetrievedTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoRetrievedTool(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  return result;
}

AIMLInstrumentationStreams::ContextProtoRetrievedTool::Stage_optional __swiftcall ContextProtoRetrievedTool.Stage.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ContextProtoUIControlTool.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 32)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoSampleInvocation.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C5F0AE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a1(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = a2(0);
  v9 = *(v8 + 20);
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + *(v8 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoToolQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoToolQuery(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v4;
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoSpanMatchedEntity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ContextProtoEntityMatch.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ContextProtoEntityMatch(0);
  v3 = v2[12];
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a1 + v3, 1, 1, matched);
  v5 = (a1 + v2[13]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v2[14];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 45) = 0;
  a1[7] = 0;
  a1[8] = 0xE000000000000000;
  a1[9] = 0;
  a1[10] = 0xE000000000000000;
  return result;
}

uint64_t ContextProtoEntityMatch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContextProtoEntityMatch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ContextProtoEntityMatch(0) + 56);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ContextProtoMatchProperties.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v3 = *(matched + 24);
  v4 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(matched + 28);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ContextProtoAliasTypes.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C5F14D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDC70();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F1544(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5CF53C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F15B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDB4C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F1624(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDBB4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F168C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA6E4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F16F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA78C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F175C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA738();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F17C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA834();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F1834(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA888();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ContextProtoRetrievedContext.init(value:relevance:type:metadata:typedValue:structuredContext:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v26 = *a3;
  v11 = type metadata accessor for ContextProtoRetrievedContext(0);
  v12 = v11[5];
  v13 = type metadata accessor for ToolKitProtoTypedValue(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a9[v12], 1, 1, v13);
  v15 = v11[6];
  v16 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v11[7];
  v18 = type metadata accessor for ContextProtoContextMetadata(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v11[8];
  v14(&a9[v19], 1, 1, v13);
  v20 = v11[9];
  v21 = type metadata accessor for ContextProtoStructuredContext(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = v11[11];
  v23 = &a9[v11[10]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v12], &qword_27E1FAB68, &unk_23C879140);
  sub_23C5842D0(a2, &a9[v15], &qword_27E1FADD8, &qword_23C8790C8);
  *a9 = v26;
  sub_23C5842D0(a4, &a9[v17], &qword_27E1FAE00, &unk_23C879150);
  sub_23C5842D0(a5, &a9[v19], &qword_27E1FAB68, &unk_23C879140);
  result = sub_23C5842D0(a6, &a9[v20], &qword_27E1FADF0, &qword_23C8790D8);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t ContextProtoContextMetadata.onScreenSurroundingText.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.entityID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ContextProtoContextMetadata.entityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ContextProtoContextMetadata.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.seq.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoContextMetadata.seq.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C5F2388(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_23C5F23E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.isSelected.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.isPrimary.setter(char a1)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t ContextProtoContextMetadata.dataSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoContextMetadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoContextMetadata.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoContextMetadata(0) + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoContextMetadata.init(entityID:appBundleID:saliency:onScreenSurroundingText:onScreenBoundingBox:seq:groupID:isSelected:isPrimary:screenDimensions:dataSource:displayRepresentation:appBundleIdentifier:screenSize:frame:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v52 = *a16;
  v22 = type metadata accessor for ContextProtoContextMetadata(0);
  v23 = v22[7];
  v45 = v23;
  v24 = type metadata accessor for ContextProtoConfidence(0);
  (*(*(v24 - 8) + 56))(&a9[v23], 1, 1, v24);
  v25 = v22[8];
  v42 = v25;
  v26 = type metadata accessor for ContextProtoBoundingBox(0);
  v27 = *(*(v26 - 8) + 56);
  v27(&a9[v25], 1, 1, v26);
  v28 = &a9[v22[9]];
  v40 = &a9[v22[10]];
  v43 = v22[12];
  v44 = v22[11];
  v41 = v22[13];
  v27(&a9[v41], 1, 1, v26);
  v29 = v22[14];
  a9[v29] = 6;
  v30 = v22[15];
  v39 = v30;
  v31 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  (*(*(v31 - 8) + 56))(&a9[v30], 1, 1, v31);
  v32 = v22[17];
  v33 = &a9[v22[16]];
  v34 = type metadata accessor for ContextProtoCGRect(0);
  v35 = *(*(v34 - 8) + 56);
  v35(&a9[v32], 1, 1, v34);
  v36 = v22[18];
  v35(&a9[v36], 1, 1, v34);
  v37 = &a9[v22[19]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a9 + 1) = a1;
  *(a9 + 2) = a2;
  *(a9 + 3) = a3;
  *(a9 + 4) = a4;
  sub_23C5842D0(a5, &a9[v45], &qword_27E1FADD8, &qword_23C8790C8);
  *a9 = a6;
  sub_23C5842D0(a7, &a9[v42], &qword_27E1FADB8, &unk_23C879160);
  *v28 = a8;
  v28[8] = a10 & 1;
  *v40 = a11;
  *(v40 + 1) = a12;
  a9[v44] = a13;
  a9[v43] = a14;
  sub_23C5842D0(a15, &a9[v41], &qword_27E1FADB8, &unk_23C879160);
  a9[v29] = v52;
  sub_23C5842D0(a17, &a9[v39], &qword_27E1FADC8, &qword_23C8790B8);
  *v33 = a18;
  *(v33 + 1) = a19;
  sub_23C5842D0(a20, &a9[v32], &qword_27E1FAD18, &unk_23C879170);
  return sub_23C5842D0(a21, &a9[v36], &qword_27E1FAD18, &unk_23C879170);
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ContextProtoBoundingBox.xCoordinate.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.yCoordinate.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.width.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.height.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoBoundingBox.init(xCoordinate:yCoordinate:width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 4) = BYTE4(a1) & 1;
  *(a5 + 8) = a2;
  *(a5 + 12) = BYTE4(a2) & 1;
  *(a5 + 16) = a3;
  *(a5 + 20) = BYTE4(a3) & 1;
  *(a5 + 24) = a4;
  *(a5 + 28) = BYTE4(a4) & 1;
  return result;
}

uint64_t ContextProtoSurroundingText.init(text:onScreenBoundingBox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ContextProtoSurroundingText(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for ContextProtoBoundingBox(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_23C5842D0(a3, &a4[v9], &qword_27E1FADB8, &unk_23C879160);
}

uint64_t ContextProtoConfidence.init(score:bucket:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = *a1;
  v6 = a2 + *(type metadata accessor for ContextProtoConfidence(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.bargeInModes.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.inputOrigin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.responseMode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.getter()
{
  v1 = v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  v2 = *v1;
  sub_23C5EDBA0(*v1, *(v1 + 8));
  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.encodedLocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 64);
  result = sub_23C5AD0AC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 68));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.siriLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.uiScale.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 80));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.uiScale.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.temperatureUnit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0) + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.allowUserGeneratedContent.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.censorSpeech.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *a1 = *(v1 + *(result + 100));
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.deviceIdiom.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 100)) = v2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.didPscfire.setter(char a1)
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContext.init(sessionID:requestID:inputOrigin:responseMode:isEyesFree:isMultiUser:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:deviceRestrictions:bargeInModes:identifiedUser:encodedLocation:countryCode:siriLocale:contentRestrictions:uiScale:temperatureUnit:allowUserGeneratedContent:censorSpeech:meCard:deviceIdiom:didPscfire:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, char a26, uint64_t a27, char *a28, char a29)
{
  v57 = *a28;
  v30 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v31 = v30[15];
  v48 = v31;
  v32 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0);
  (*(*(v32 - 8) + 56))(a9 + v31, 1, 1, v32);
  v33 = a9 + v30[16];
  *v33 = xmmword_23C879130;
  v34 = (a9 + v30[17]);
  v35 = (a9 + v30[18]);
  v36 = v30[19];
  v37 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0);
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = a9 + v30[20];
  v39 = (a9 + v30[21]);
  v46 = v30[23];
  v47 = v30[22];
  v40 = v30[24];
  v41 = type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0);
  (*(*(v41 - 8) + 56))(a9 + v40, 1, 1, v41);
  v42 = v30[25];
  *(a9 + v42) = 12;
  v43 = v30[27];
  v45 = v30[26];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 81) = *(&a10 + 1);
  *a9 = a11;
  *(a9 + 8) = a12;
  sub_23C5842D0(a13, a9 + v48, &qword_27E1FAD70, &unk_23C879180);
  sub_23C5AD0AC(*v33, *(v33 + 8));
  *v33 = a14;
  *(v33 + 8) = a15;
  *v34 = a16;
  v34[1] = a17;
  *v35 = a18;
  v35[1] = a19;
  sub_23C5842D0(a20, a9 + v36, &qword_27E1FAD60, &qword_23C879068);
  *v38 = a21;
  *(v38 + 8) = a22 & 1;
  *v39 = a23;
  v39[1] = a24;
  *(a9 + v47) = a25;
  *(a9 + v46) = a26;
  result = sub_23C5842D0(a27, a9 + v40, &qword_27E1FAD50, &unk_23C879190);
  *(a9 + v42) = v57;
  *(a9 + v45) = a29;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.appRestriction.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.movieRestriction.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.tvRestriction.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextContentRestriction.init(appRestriction:countryCode:movieRestriction:tvRestriction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 4) = BYTE4(a1) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 28) = BYTE4(a4) & 1;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.userID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextUser.init(userID:isOnlyUserInHome:classification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  *(a5 + 17) = 5;
  v10 = a5 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = v9;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.nickName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextMeCard.init(givenName:middleName:familyName:nickName:fullName:addresses:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = a9 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard(0) + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a9[2] = a2;
  a9[3] = a3;
  a9[4] = a4;
  a9[5] = a5;
  a9[6] = a6;
  a9[7] = a7;
  a9[8] = a8;
  a9[9] = a10;
  a9[10] = a11;
  *a9 = a12;
  a9[1] = a1;
  return result;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ContextProtoStructuredContextSiriRequestContextAddress.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

__n128 ContextProtoStructuredContextSiriRequestContextAddress.init(label:street:city:state:postalCode:countryCode:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  v20 = a9 + *(type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress(0) + 40);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.menuHierarchyComponents.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ContextProtoStructuredContextIntelligenceCommandContext.init(identifier:title:standaloneTitle:embeddingDescription:isDisabled:menuHierarchyComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v19 = a9 + *(type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0) + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextProtoStructedContextAppInFocusContext.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.appName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContextProtoStructedContextAppInFocusContext.appName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.category.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ContextProtoStructedContextAppInFocusContext.category.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppInFocusContext.init(bundleID:appName:category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = a7 + *(type metadata accessor for ContextProtoStructedContextAppInFocusContext(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.category.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ContextProtoStructedContextAppContext.category.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ContextProtoStructedContextAppContext.init(bundleID:appName:category:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = a8 + *(type metadata accessor for ContextProtoStructedContextAppContext(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 16) = a7;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUIText.init(text:boundingBox:uiMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v11 = v10[5];
  v12 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = &a5[v10[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_23C5842D0(a3, &a5[v11], &qword_27E1FAD18, &unk_23C879170);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FAD38, &qword_23C879050);
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.fractionVisible.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.appBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(isActive:boundingBox:fractionVisible:appBundleID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v13 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v14 = v13[5];
  v15 = type metadata accessor for ContextProtoCGRect(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[v13[6]];
  v17 = &a7[v13[7]];
  v18 = &a7[v13[8]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  result = sub_23C5842D0(a2, &a7[v14], &qword_27E1FAD18, &unk_23C879170);
  *v16 = a3;
  v16[8] = a4 & 1;
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ContextProtoCGRect.init(origin:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContextProtoCGPoint(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ContextProtoCGRect(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ContextProtoCGSize(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAD08, &qword_23C879030);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FACF8, &unk_23C8791B0);
}

uint64_t sub_23C5F58A4@<X0>(uint64_t (*a1)(void)@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = a2 + *(a1(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a3;
  a2[1] = a4;
  return result;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoVersionedQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_23C5F5BAC()
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5F5BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EDAF8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F5C48()
{
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.init(version:spans:spansIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v17 = DecorationOutput[11];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a8 + v17, 1, 1, DecorationToolRetrievalResponse);
  v19 = DecorationOutput[13];
  v20 = (a8 + DecorationOutput[12]);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  result = sub_23C5842D0(a3, a8 + v17, &qword_27E1FACE0, &unk_23C8A13B0);
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  *v20 = a9;
  v20[1] = a10;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.utteranceContext.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.dynamicEnumerationEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.context.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoQueryDecorationOutput.deviceIdsID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoQueryDecorationOutput(0) + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ContextProtoQueryDecorationOutput.init(spans:spansIsPresent:requiredContext:requiredContextIsPresent:utteranceContext:utteranceContextIsPresent:toolRetrievalResponse:dynamicEnumerationEntities:dynamicEnumerationEntitiesIsPresent:context:contextIsPresent:deviceIdsID:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v22 = DecorationOutput[14];
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(a9 + v22, 1, 1, DecorationToolRetrievalResponse);
  v24 = DecorationOutput[16];
  v25 = (a9 + DecorationOutput[15]);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  result = sub_23C5842D0(a7, a9 + v22, &qword_27E1FACE0, &unk_23C8A13B0);
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12;
  *v25 = a13;
  v25[1] = a14;
  return result;
}

uint64_t ContextProtoQueryDecorationInput.init(query:requestID:caller:contextID:loggingSalt:servicesExecuted:deviceIdsID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = *a5;
  v20 = a9 + *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v19;
  *(a9 + 40) = a4;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 72) = a10;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  return result;
}

uint64_t ContextProtoDynamicEnumerationEntity.init(identifier:parameterTypeInstance:typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = &a5[v10[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_23C5842D0(a3, &a5[v11], &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FAB68, &unk_23C879140);
}

uint64_t sub_23C5F67FC()
{
  v2 = *v0;
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C5F6860(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C5EA7E0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C5F68AC()
{
  v2 = *v0;
  sub_23C8720F4();
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t ContextProtoRetrievedTool.init(definition:similarityScore:sampleInvocations:stage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v9 = *a3;
  v10 = type metadata accessor for ContextProtoRetrievedTool(0);
  v11 = *(v10 + 28);
  v12 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = a4 + *(v10 + 32);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, a4 + v11, &qword_27E1FAAD8, &qword_23C878EC0);
  *a4 = a5;
  *(a4 + 8) = a2;
  *(a4 + 16) = v9;
  return result;
}

uint64_t ContextProtoUIControlTool.init(appBundleID:command:commandID:toolDef:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for ContextProtoUIControlTool(0);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[*(v16 + 32)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  return sub_23C5842D0(a7, &a8[v17], &qword_27E1FACA8, &unk_23C87B940);
}

uint64_t ContextProtoSampleInvocation.init(invocationString:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = a3 + *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t ContextProtoToolRetrievalType.init(identifier:definition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAB38, &unk_23C8791E0);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FAB18, &qword_23C878EF0);
}

uint64_t ContextProtoToolQuery.appBundleIds.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ContextProtoToolQuery.init(query:appBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for ContextProtoToolQuery(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_23C5F7088@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  v12 = a6 + *(a3(0) + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  return sub_23C5842D0(a1, a6, a4, a5);
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ContextProtoQueryDecorationToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v16 = a7 + *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a8;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t ContextProtoSpanMatchedEntity.init(typedValue:matchMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[*(v6 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a3[v7], &qword_27E1FAB68, &unk_23C879140);
  *a3 = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.entityName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContextProtoEntityMatch.entityName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ContextProtoEntityMatch.originAppBundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.userUtterance.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t ContextProtoEntityMatch.userUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t ContextProtoEntityMatch.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ContextProtoEntityMatch.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ContextProtoEntityMatch(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 ContextProtoEntityMatch.init(sourceItemIdentifier:entityName:startIndex:endIndex:matchScore:matchProperties:matcherType:originAppBundleID:userUtterance:identifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v22 = *a8;
  v23 = type metadata accessor for ContextProtoEntityMatch(0);
  v24 = v23[12];
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  (*(*(matched - 8) + 56))(a9 + v24, 1, 1, matched);
  v26 = v23[14];
  v27 = (a9 + v23[13]);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a10;
  sub_23C5842D0(a7, a9 + v24, &qword_27E1FAB58, &unk_23C8791F0);
  *(a9 + 52) = v22;
  result = a11;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *(a9 + 80) = a13;
  *v27 = a14;
  v27[1] = a15;
  return result;
}

uint64_t ContextProtoMatchProperties.maxTokenCount.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ContextProtoMatchProperties.maxTokenCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.matchedTokenCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t ContextProtoMatchProperties.matchedTokenCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ContextProtoMatchProperties.init(maxTokenCount:matchedTokenCount:matchedAliasTypes:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v13 = *(matched + 24);
  v14 = type metadata accessor for ContextProtoAliasTypes(0);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = a6 + *(matched + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  return sub_23C5842D0(a5, a6 + v13, &qword_27E1FAB48, &qword_23C878F10);
}

uint64_t ContextProtoAliasTypes.init(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t _s26AIMLInstrumentationStreams25ContextProtoRetrievedToolV0cD14DefinitionEnumO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v50 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v53 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v50 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v50 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v50 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB2E8, &qword_23C87AA28);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v36 = &v50 - v35;
  v37 = *(v34 + 56);
  sub_23C5FCA78(v54, &v50 - v35, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  sub_23C5FCA78(v55, &v36[v37], type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C5FCA78(v36, v29, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v43 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
        v44 = v29;
        goto LABEL_19;
      }

      sub_23C5FCA10(&v36[v37], v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v40 = static ToolKitProtoAssistantSchemaIdentifier.== infix(_:_:)(v29, v8);
      v46 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier;
      sub_23C5FC9B0(v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v41 = v29;
    }

    else
    {
      sub_23C5FCA78(v36, v31, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v43 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
        v44 = v31;
        goto LABEL_19;
      }

      sub_23C5FCA10(&v36[v37], v16, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v31, v16);
      v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      sub_23C5FC9B0(v16, type metadata accessor for ToolKitProtoToolDefinition.Version1);
      v41 = v31;
    }

LABEL_21:
    v42 = v46;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C5FCA78(v36, v26, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v43 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
      v44 = v26;
      goto LABEL_19;
    }

    v45 = v50;
    sub_23C5FCA10(&v36[v37], v50, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v26, v45);
    v46 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
    sub_23C5FC9B0(v45, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v41 = v26;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v47 = v53;
    sub_23C5FCA78(v36, v53, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v43 = type metadata accessor for ContextProtoUIControlTool;
      v44 = v47;
      goto LABEL_19;
    }

    v48 = v52;
    sub_23C5FCA10(&v36[v37], v52, type metadata accessor for ContextProtoUIControlTool);
    v40 = _s26AIMLInstrumentationStreams25ContextProtoUIControlToolV2eeoiySbAC_ACtFZ_0(v47, v48);
    v46 = type metadata accessor for ContextProtoUIControlTool;
    sub_23C5FC9B0(v48, type metadata accessor for ContextProtoUIControlTool);
    v41 = v47;
    goto LABEL_21;
  }

  sub_23C5FCA78(v36, v23, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v39 = v51;
    sub_23C5FCA10(&v36[v37], v51, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v40 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v23, v39);
    sub_23C5FC9B0(v39, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    v41 = v23;
    v42 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
LABEL_22:
    sub_23C5FC9B0(v41, v42);
    sub_23C5FC9B0(v36, type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum);
    return v40 & 1;
  }

  v43 = type metadata accessor for ToolKitProtoToolDefinition.Version1;
  v44 = v23;
LABEL_19:
  sub_23C5FC9B0(v44, v43);
  sub_23C585C34(v36, &qword_27E1FB2E8, &qword_23C87AA28);
  v40 = 0;
  return v40 & 1;
}

uint64_t _s26AIMLInstrumentationStreams022ContextProtoStructuredC4KindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = type metadata accessor for ContextProtoStructedContextAppContext(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ContextProtoStructedContextAppInFocusContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ContextProtoStructuredContextKind(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v54 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v54 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v54 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v54 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB2F0, &unk_23C87AA30);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v54 - v37;
  v39 = *(v36 + 56);
  sub_23C5FCA78(v58, &v54 - v37, type metadata accessor for ContextProtoStructuredContextKind);
  sub_23C5FCA78(v59, &v38[v39], type metadata accessor for ContextProtoStructuredContextKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C5FCA78(v38, v33, type metadata accessor for ContextProtoStructuredContextKind);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_23C5FCA10(&v38[v39], v18, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
        v42 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc11SiriRequestC0V2eeoiySbAC_ACtFZ_0(v33, v18);
        v49 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
        v47 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
        v50 = v18;
        goto LABEL_22;
      }

      v45 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext;
LABEL_18:
      v51 = v45;
      v52 = v33;
      goto LABEL_20;
    }

    sub_23C5FCA78(v38, v31, type metadata accessor for ContextProtoStructuredContextKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v51 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
      v52 = v31;
      goto LABEL_20;
    }

    sub_23C5FCA10(&v38[v39], v14, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    v42 = _s26AIMLInstrumentationStreams022ContextProtoStructuredc19IntelligenceCommandC0V2eeoiySbAC_ACtFZ_0(v31, v14);
    v47 = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext;
    sub_23C5FC9B0(v14, type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext);
    v43 = v31;
LABEL_23:
    v44 = v47;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C5FCA78(v38, v28, type metadata accessor for ContextProtoStructuredContextKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v51 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
      v52 = v28;
      goto LABEL_20;
    }

    v46 = v54;
    sub_23C5FCA10(&v38[v39], v54, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    v42 = static ContextProtoStructedContextAppInFocusContext.== infix(_:_:)(v28, v46);
    v47 = type metadata accessor for ContextProtoStructedContextAppInFocusContext;
    sub_23C5FC9B0(v46, type metadata accessor for ContextProtoStructedContextAppInFocusContext);
    v43 = v28;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v33 = v57;
    sub_23C5FCA78(v38, v57, type metadata accessor for ContextProtoStructuredContextKind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v48 = v56;
      sub_23C5FCA10(&v38[v39], v56, type metadata accessor for ContextProtoStructedContextAppContext);
      v42 = static ContextProtoStructedContextAppContext.== infix(_:_:)(v33, v48);
      v49 = type metadata accessor for ContextProtoStructedContextAppContext;
      v47 = type metadata accessor for ContextProtoStructedContextAppContext;
      v50 = v48;
LABEL_22:
      sub_23C5FC9B0(v50, v49);
      v43 = v33;
      goto LABEL_23;
    }

    v45 = type metadata accessor for ContextProtoStructedContextAppContext;
    goto LABEL_18;
  }

  sub_23C5FCA78(v38, v25, type metadata accessor for ContextProtoStructuredContextKind);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v41 = v55;
    sub_23C5FCA10(&v38[v39], v55, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    v42 = _s26AIMLInstrumentationStreams022ContextProtoStructuredC14OnScreenUITextV2eeoiySbAC_ACtFZ_0(v25, v41);
    sub_23C5FC9B0(v41, type metadata accessor for ContextProtoStructuredContextOnScreenUIText);
    v43 = v25;
    v44 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
LABEL_24:
    sub_23C5FC9B0(v43, v44);
    sub_23C5FC9B0(v38, type metadata accessor for ContextProtoStructuredContextKind);
    return v42 & 1;
  }

  v51 = type metadata accessor for ContextProtoStructuredContextOnScreenUIText;
  v52 = v25;
LABEL_20:
  sub_23C5FC9B0(v52, v51);
  sub_23C585C34(v38, &qword_27E1FB2F0, &unk_23C87AA30);
  v42 = 0;
  return v42 & 1;
}

unint64_t sub_23C5F88E4()
{
  result = qword_27E1FAE10;
  if (!qword_27E1FAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE10);
  }

  return result;
}

unint64_t sub_23C5F896C()
{
  result = qword_27E1FAE28;
  if (!qword_27E1FAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE28);
  }

  return result;
}

unint64_t sub_23C5F89F4()
{
  result = qword_27E1FAE40;
  if (!qword_27E1FAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE40);
  }

  return result;
}

unint64_t sub_23C5F8A7C()
{
  result = qword_27E1FAE58;
  if (!qword_27E1FAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE58);
  }

  return result;
}

unint64_t sub_23C5F8B04()
{
  result = qword_27E1FAE70;
  if (!qword_27E1FAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE70);
  }

  return result;
}

unint64_t sub_23C5F8B8C()
{
  result = qword_27E1FAE88;
  if (!qword_27E1FAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAE88);
  }

  return result;
}

unint64_t sub_23C5F8C14()
{
  result = qword_27E1FAEA0;
  if (!qword_27E1FAEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAEA0);
  }

  return result;
}

unint64_t sub_23C5F8C9C()
{
  result = qword_27E1FAEB8;
  if (!qword_27E1FAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAEB8);
  }

  return result;
}

unint64_t sub_23C5F8D24()
{
  result = qword_27E1FAED0;
  if (!qword_27E1FAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAED0);
  }

  return result;
}

unint64_t sub_23C5F8DAC()
{
  result = qword_27E1FAEE8;
  if (!qword_27E1FAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAEE8);
  }

  return result;
}

unint64_t sub_23C5F8E34()
{
  result = qword_27E1FAF00;
  if (!qword_27E1FAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FAF00);
  }

  return result;
}

uint64_t sub_23C5F8EB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextProtoContextType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContextProtoContextType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23C5F91DC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23C5F926C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ToolKitProtoRuntimePlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitProtoRuntimePlatform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C5F94C4()
{
  sub_23C5F96A0(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FAF30, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FAF38, type metadata accessor for ContextProtoContextMetadata, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FAF40, type metadata accessor for ContextProtoStructuredContext, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C870F34();
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

void sub_23C5F96A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23C5F972C()
{
  sub_23C5F96A0(319, &qword_27E1FAF58, type metadata accessor for ContextProtoSurroundingText, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FAF30, type metadata accessor for ContextProtoConfidence, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FAF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FB0F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C5FC960(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23C5FC960(319, &qword_27E1FAF70, &type metadata for ContextProtoContextDataSource, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_23C5F96A0(319, &qword_27E1FAF78, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_23C5F96A0(319, &qword_27E1FAF80, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_23C870F34();
                    if (v9 <= 0x3F)
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
}

void sub_23C5F9A30()
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5F9B00()
{
  sub_23C5FC960(319, &qword_27E1FAFA8, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5F9BD4()
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FAF60, type metadata accessor for ContextProtoBoundingBox, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C5F9D70()
{
  result = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContextProtoStructuredContextIntelligenceCommandContext(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoStructedContextAppInFocusContext(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ContextProtoStructuredContextOnScreenUIText(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ContextProtoStructedContextAppContext(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_23C5F9E48()
{
  sub_23C5FC960(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C5FC960(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FB010, type metadata accessor for ContextProtoStructuredContextSiriRequestContextUser, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C5F96A0(319, &qword_27E1FB020, type metadata accessor for ContextProtoStructuredContextSiriRequestContextContentRestriction, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23C5FC960(319, &qword_2814FB0F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_23C5F96A0(319, &qword_27E1FB028, type metadata accessor for ContextProtoStructuredContextSiriRequestContextMeCard, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_23C5FC960(319, &qword_27E1FB030, &type metadata for ContextProtoStructuredContextSiriRequestContextDeviceIdiom, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_23C870F34();
                    if (v9 <= 0x3F)
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
}

void sub_23C5FA148()
{
  sub_23C5FC960(319, &qword_27E1FB048, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FA260()
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C5FC960(319, &qword_27E1FB060, &type metadata for ContextProtoStructuredContextSiriRequestContextUserClassification, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C870F34();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C5FA3A8()
{
  sub_23C5F96A0(319, &qword_27E1FB078, type metadata accessor for ContextProtoStructuredContextSiriRequestContextAddress, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FA4CC()
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5FA5A8()
{
  sub_23C5FC960(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FA6CC()
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5FA7A4()
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C5FA958()
{
  sub_23C5F96A0(319, &qword_27E1FAF80, type metadata accessor for ContextProtoCGRect, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FB0F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C870F34();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23C5FAABC()
{
  sub_23C5F96A0(319, &qword_27E1FB110, type metadata accessor for ContextProtoCGPoint, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB118, type metadata accessor for ContextProtoCGSize, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_300Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_23C870F34();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_301Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_23C870F34();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_23C5FAD24()
{
  sub_23C5F96A0(319, &qword_27E1FB150, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB158, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FB160, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FB168, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C870F34();
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

void sub_23C5FAF3C()
{
  sub_23C5F96A0(319, &qword_27E1FB150, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB160, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C5F96A0(319, &qword_27E1FB158, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23C5F96A0(319, &qword_27E1FB168, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C870F34();
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

void sub_23C5FB148()
{
  sub_23C5FC960(319, &qword_27E1FB190, &type metadata for ContextProtoQueryDecorationCoreService, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_264Tm(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (a2 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a3[5];
LABEL_9:
    v19 = *(v16 + 48);

    return v19(a1 + v17, a2, v15);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a3[6];
    goto LABEL_9;
  }

  v20 = sub_23C870F34();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[7];

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_265Tm(uint64_t result, uint64_t a2, int a3, int *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v9 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a4[5];
LABEL_7:
    v19 = *(v16 + 56);

    return v19(v9 + v17, a2, a2, v15);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a4[6];
    goto LABEL_7;
  }

  v20 = sub_23C870F34();
  v21 = *(*(v20 - 8) + 56);
  v22 = v9 + a4[7];

  return v21(v22, a2, a2, v20);
}

void sub_23C5FB5C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23C5F96A0(319, a4, a5, MEMORY[0x277D83D88]);
  if (v9 <= 0x3F)
  {
    sub_23C5F96A0(319, a6, a7, MEMORY[0x277D83D88]);
    if (v10 <= 0x3F)
    {
      sub_23C870F34();
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FB6E0()
{
  sub_23C5F96A0(319, &qword_27E1FB1C0, type metadata accessor for ContextProtoSampleInvocation, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB1C8, type metadata accessor for ContextProtoRetrievedTool.Definition, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C5FB8C4()
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContextProtoUIControlTool(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C5FB97C()
{
  sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB208, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23C5FBAB0()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_291Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = *(v13 + 48);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, v14);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a2)
  {
    v14 = v17;
    v15 = *(v18 + 48);
    v16 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v20 = sub_23C870F34();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + *(a3 + 24);

  return v21(v22, a2, v20);
}

uint64_t __swift_store_extra_inhabitant_index_292Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = v14;
    v17 = *(v15 + 56);
    v18 = a1;
LABEL_5:

    return v17(v18, a2, a2, v16);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v20 = *(v19 - 8);
  if (*(v20 + 84) == a3)
  {
    v16 = v19;
    v17 = *(v20 + 56);
    v18 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v22 = sub_23C870F34();
  v23 = *(*(v22 - 8) + 56);
  v24 = a1 + *(a4 + 24);

  return v23(v24, a2, a2, v22);
}

void sub_23C5FBE10()
{
  sub_23C5F96A0(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB238, type metadata accessor for ToolKitProtoTypeDefinition.Version1, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_401Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23C870F34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_402Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C5FC084()
{
  sub_23C5FC960(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_176Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_23C870F34();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_177Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_23C870F34();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23C5FC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_23C870F34();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23C5FC454()
{
  sub_23C5F96A0(319, &qword_27E1FB270, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB278, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FC598()
{
  sub_23C5F96A0(319, &qword_27E1FB290, type metadata accessor for ContextProtoEntityMatch, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FC6BC()
{
  sub_23C5F96A0(319, &qword_27E1FB2A8, type metadata accessor for ContextProtoMatchProperties, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5FC960(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FC80C()
{
  sub_23C5FC960(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C5F96A0(319, &qword_27E1FB2C8, type metadata accessor for ContextProtoAliasTypes, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C870F34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C5FC960(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_23C5FC9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23C5FCA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C5FCA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for CoreAnalyticsTracker()
{
  result = qword_27E1FB310;
  if (!qword_27E1FB310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23C5FCD84()
{
  sub_23C870AE4();
  if (v0 <= 0x3F)
  {
    sub_23C597074();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsTracker.ApiCall(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreAnalyticsTracker.ApiCall(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C5FCF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9)
{
  v10 = v9;
  v56 = a3;
  v54[4] = a2;
  v16 = type metadata accessor for CoreAnalyticsTracker();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v9[*(v18 + 24)];
  sub_23C870AA4();
  v23 = floor(v22 * -1000.0);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_13;
  }

  v55 = v20;
  v54[1] = a4;
  v54[2] = a6;
  v54[3] = a8;
  a8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB328, &qword_23C87AB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875050;
  *(inited + 32) = 6910049;
  *(inited + 40) = 0xE300000000000000;
  v25 = *v10;
  *(inited + 48) = sub_23C871A34();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xEA0000000000734DLL;
  *(inited + 72) = sub_23C871A34();
  *(inited + 80) = 0x65707954646E65;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_23C871A34();
  v26 = sub_23C598A1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB330, &qword_23C87AB08);
  swift_arrayDestroy();
  *(a8 + 16) = v26;
  v27 = &v10[*(v16 + 32)];
  if (*(v27 + 1))
  {
    v28 = *v27;
    v29 = sub_23C871774();
  }

  if (v56)
  {
    if (a5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v43 = sub_23C871A34();

    if (a5)
    {
LABEL_8:
      v30 = a9;
      if (a7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v44 = sub_23C871A34();

  v30 = a9;
  if ((a7 & 1) == 0)
  {
LABEL_9:
    v31 = sub_23C871A34();
  }

LABEL_10:
  v20 = v55;
  if ((v30 & 1) == 0)
  {
    v32 = sub_23C871A34();
  }

  v33 = *(v10 + 1);
  v34 = *(v10 + 2);
  v35 = sub_23C871774();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_23C5FD88C;
  *(v36 + 24) = a8;
  aBlock[4] = sub_23C5FD8C4;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23C5FD6C0;
  aBlock[3] = &block_descriptor_0;
  v37 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v37);

  if (qword_27E1F8308 != -1)
  {
    goto LABEL_26;
  }

LABEL_13:
  v38 = sub_23C871654();
  __swift_project_value_buffer(v38, qword_27E1FB2F8);
  sub_23C5FD904(v10, v20);
  v39 = sub_23C871634();
  v40 = sub_23C871AC4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    v42 = *v20;
    sub_23C5A7ADC(v20);
    *(v41 + 4) = v42;
    _os_log_impl(&dword_23C56D000, v39, v40, "tracker ending for %ld", v41, 0xCu);
    MEMORY[0x23EED8240](v41, -1, -1);
  }

  else
  {
    sub_23C5A7ADC(v20);
  }

  v45 = sub_23C871634();
  v46 = sub_23C871AC4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v47 = 136315138;
    swift_beginAccess();
    v49 = *(a8 + 16);

    sub_23C5FD968();
    v50 = sub_23C8716C4();
    v52 = v51;

    v53 = sub_23C63C388(v50, v52, &v57);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_23C56D000, v45, v46, "output event: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x23EED8240](v48, -1, -1);
    MEMORY[0x23EED8240](v47, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_23C5FD5C4()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FB2F8);
  __swift_project_value_buffer(v0, qword_27E1FB2F8);
  return sub_23C871644();
}

unint64_t sub_23C5FD63C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23C5FD87C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_23C5FD66C()
{
  result = qword_27E1FB320;
  if (!qword_27E1FB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FB320);
  }

  return result;
}

id sub_23C5FD6C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_23C5FD968();
    v5 = sub_23C8716A4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_23C5FD74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v12 = sub_23C5FF898(a2, a3);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13;
  if (v11[3] < v17)
  {
    sub_23C63F270(v17, isUniquelyReferenced_nonNull_native);
    v12 = sub_23C5FF898(a2, a3);
    if ((v4 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v12 = sub_23C872064();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v12;
    sub_23C644594();
    v12 = v21;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_23C642B34(v12, a2, a3, a1, v11);

    v20 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = v11[7];
  v20 = *(v19 + 8 * v12);
  *(v19 + 8 * v12) = a1;
LABEL_11:
  *v5 = v11;
  return v20;
}

unint64_t sub_23C5FD87C(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t sub_23C5FD88C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_23C5FD8C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23C5FD904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAnalyticsTracker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23C5FD968()
{
  result = qword_27E1FB338;
  if (!qword_27E1FB338)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1FB338);
  }

  return result;
}

id TimestampedEventBridge.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ISTimestampedEvent_timestamp] = *(a1 + 16);
  sub_23C5AE59C();
  v4 = *(a1 + 24);
  *&v3[OBJC_IVAR___ISTimestampedEvent_orderedEvent] = sub_23C871AE4();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id TimestampedEventBridge.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___ISTimestampedEvent_timestamp] = *(a1 + 16);
  sub_23C5AE59C();
  v3 = *(a1 + 24);
  *&v1[OBJC_IVAR___ISTimestampedEvent_orderedEvent] = sub_23C871AE4();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TimestampedEventBridge();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

unint64_t sub_23C5FDB40()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v52 - v6;
  v7 = sub_23C870B74();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23C5FE238(v1);
  v54 = v12;
  v55 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C875590;
  v60[0] = 0xD000000000000011;
  v60[1] = 0x800000023C8A8B10;
  v14 = MEMORY[0x277D837D0];
  sub_23C871CB4();
  v15 = *(v1 + OBJC_IVAR___ISTimestampedEvent_timestamp);
  *(inited + 96) = MEMORY[0x277D839F8];
  *(inited + 72) = v15;
  strcpy(v60, "eventType");
  WORD1(v60[1]) = 0;
  HIDWORD(v60[1]) = -385875968;
  sub_23C871CB4();
  v16 = *(v1 + OBJC_IVAR___ISTimestampedEvent_orderedEvent);
  v17 = [v16 topLevelUnionType];
  v18 = [v17 qualifiedMessageName];

  v19 = sub_23C871784();
  v21 = v20;

  *(inited + 168) = v14;
  *(inited + 144) = v19;
  *(inited + 152) = v21;
  strcpy(v60, "eventClassName");
  HIBYTE(v60[1]) = -18;
  sub_23C871CB4();
  v22 = [v16 topLevelUnionType];
  ObjectType = swift_getObjectType();

  v60[0] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB350, &unk_23C87AB10);
  v24 = sub_23C8717D4();
  *(inited + 240) = v14;
  *(inited + 216) = v24;
  *(inited + 224) = v25;
  v60[0] = 0xD000000000000013;
  v60[1] = 0x800000023C8A8B30;
  sub_23C871CB4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  *(inited + 312) = v53;
  v26 = v54;
  *(inited + 288) = v55;
  *(inited + 296) = v26;
  v60[0] = 0xD000000000000010;
  v60[1] = 0x800000023C8A7380;
  sub_23C871CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB358, &unk_23C87AB20);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_23C873D20;
  *(v27 + 32) = 0x6564496B636F6C63;
  *(v27 + 40) = 0xEF7265696669746ELL;
  v28 = [v16 logicalTimestamp];
  v29 = [v28 clockIdentifier];

  sub_23C870B54();
  v30 = MEMORY[0x23EED6400]();
  v32 = v31;
  v55 = *(v58 + 8);
  v55(v10, v59);
  *(v27 + 48) = v30;
  *(v27 + 56) = v32;
  *(v27 + 72) = MEMORY[0x277D837D0];
  *(v27 + 80) = 0xD000000000000016;
  *(v27 + 88) = 0x800000023C8A7340;
  v33 = [v16 logicalTimestamp];
  v34 = [v33 nanoSecondsSinceBoot];

  *(v27 + 120) = MEMORY[0x277D84D38];
  *(v27 + 96) = v34;
  v35 = sub_23C598C5C(v27);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C20, &qword_23C874CC8);
  swift_arrayDestroy();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB360, &unk_23C87AB30);
  *(inited + 360) = v35;
  strcpy(v60, "eventId");
  v60[1] = 0xE700000000000000;
  sub_23C871CB4();
  *(inited + 456) = v53;
  v36 = [v16 messageUUID];
  if (v36)
  {
    v37 = v56;
    v38 = v36;
    sub_23C870B54();

    v39 = 0;
  }

  else
  {
    v39 = 1;
    v37 = v56;
  }

  v41 = v58;
  v40 = v59;
  (*(v58 + 56))(v37, v39, 1, v59);
  v42 = v37;
  v43 = v57;
  sub_23C5AD03C(v42, v57);
  if ((*(v41 + 48))(v43, 1, v40) == 1)
  {
    sub_23C5FE4E4(v43);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v44 = MEMORY[0x23EED6400]();
    v45 = v46;
    v55(v43, v40);
  }

  *(inited + 432) = v44;
  *(inited + 440) = v45;
  v60[0] = 0x746E657665;
  v60[1] = 0xE500000000000000;
  sub_23C871CB4();
  v47 = [v16 topLevelUnionType];
  v48 = [v47 dictionaryRepresentation];

  if (v48)
  {
    v49 = sub_23C8716B4();
  }

  else
  {
    v49 = 0;
  }

  *(inited + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E60, &qword_23C8750A0);
  *(inited + 504) = v49;
  v50 = sub_23C598B20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  return v50;
}

uint64_t sub_23C5FE238(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___ISTimestampedEvent_orderedEvent) topLevelUnionType];
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2 && (v3 = [v2 innerEvent]) != 0)
  {
    v4 = v3;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB3C8, &qword_23C87AB78);
    v5 = sub_23C8717D4();

    return v5;
  }

  else
  {

    return 0;
  }
}

id TimestampedEventBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TimestampedEventBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimestampedEventBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23C5FE45C(uint64_t a1)
{
  v2 = type metadata accessor for TimestampedEventBridge();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___ISTimestampedEvent_timestamp] = *(a1 + 16);
  sub_23C5AE59C();
  v4 = *(a1 + 24);
  *&v3[OBJC_IVAR___ISTimestampedEvent_orderedEvent] = sub_23C871AE4();
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_23C5FE4E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id EventFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventFilter.init()()
{
  *&v0[OBJC_IVAR___ISEventFilter_filter] = sub_23C598D8C(MEMORY[0x277D84F90]);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventFilter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id static EventFilter.all(of:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = a1;
  v3 = inited + 32;
  *(inited + 40) = 0;
  v4 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C5FEF44(v3);
  v5 = type metadata accessor for EventFilter();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR___ISEventFilter_filter] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static EventFilter.everything.getter()
{
  v0 = type metadata accessor for EventFilter();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___ISEventFilter_filter] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL sub_23C5FE994(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_0(a1, v2);

  return sub_23C5FED9C(v4, v1, v2, v3);
}

id EventFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23C5FEA24(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_23C5FF958(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  sub_23C59A744(v5);
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_23C644700();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E1F96A8, qword_23C873C40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_23C5FF6B0(v5);

      return;
    }

    goto LABEL_29;
  }

  sub_23C63F514(v12, a2 & 1);
  v16 = *a3;
  v17 = sub_23C5FF958(v6);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_23C872064();
    __break(1u);
LABEL_29:
    sub_23C871D14();
    MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8A8CF0);
    sub_23C871DE4();
    MEMORY[0x23EED7100](39, 0xE100000000000000);
    sub_23C871E34();
    __break(1u);
    return;
  }

  v13 = v17;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v21[6] + 8 * v13) = v6;
  *(v21[7] + 8 * v13) = v5;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v27 = *(v25 - 1);
      v5 = *v25;
      v28 = *a3;
      v29 = sub_23C5FF958(v27);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_25;
      }

      v34 = v29;
      v35 = v30;
      v36 = v28[3];
      sub_23C59A744(v5);
      if (v36 < v33)
      {
        sub_23C63F514(v33, 1);
        v37 = *a3;
        v38 = sub_23C5FF958(v27);
        if ((v35 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v34 = v38;
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      *(v40[6] + 8 * v34) = v27;
      *(v40[7] + 8 * v34) = v5;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

BOOL sub_23C5FED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = (*(a4 + 8))(a3, a4);
  v12 = (*(a4 + 16))(a3, a4);
  v13 = *(a2 + OBJC_IVAR___ISEventFilter_filter);
  if (!v13)
  {
    goto LABEL_9;
  }

  if (!*(v13 + 16))
  {
    goto LABEL_8;
  }

  v14 = v12;
  v15 = sub_23C5FF958(v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = *(*(v13 + 56) + 8 * v15);
  if (!v17)
  {
LABEL_9:
    v18 = 1;
    goto LABEL_10;
  }

  if (v17 == 1 || !v14)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_10;
  }

  v18 = sub_23C6122A4(v14, v17);
LABEL_10:
  (*(v7 + 8))(v10, a3);
  return v18;
}

uint64_t sub_23C5FEF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94C0, &qword_23C8739F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id _s26AIMLInstrumentationStreams11EventFilterC4some2of5typesACSo25SISchemaTopLevelUnionTypeCm_SaySo0H22InstrumentationMessageCmGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v18 = MEMORY[0x277D84F90];
    sub_23C592C64(0, v3, 0);
    v4 = v18;
    v6 = (a2 + 32);
    v7 = *(v18 + 16);
    do
    {
      v8 = *v6;
      v18 = v4;
      v9 = *(v4 + 24);
      if (v7 >= v9 >> 1)
      {
        sub_23C592C64((v9 > 1), v7 + 1, 1);
        v4 = v18;
      }

      *(v4 + 16) = v7 + 1;
      *(v4 + 8 * v7 + 32) = v8;
      ++v6;
      ++v7;
      --v3;
    }

    while (v3);
  }

  v10 = sub_23C59A51C(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = a1;
  v12 = inited + 32;
  *(inited + 40) = v10;
  v13 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C5FEF44(v12);
  v14 = type metadata accessor for EventFilter();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___ISEventFilter_filter] = v13;
  v17.receiver = v15;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}