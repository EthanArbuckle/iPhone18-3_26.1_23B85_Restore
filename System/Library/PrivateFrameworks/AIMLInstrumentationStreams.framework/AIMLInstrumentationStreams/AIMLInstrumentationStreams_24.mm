uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_18;
  }

  v44 = v13;
  v45 = v8;
  v49 = v20;
  v23 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v24 = *(v23 + 24);
  v25 = *(v16 + 48);
  v46 = v23;
  v47 = a1;
  sub_23C5855B0(a1 + v24, v22, &qword_27E1FAAF8, &unk_23C8A1180);
  v48 = a2;
  sub_23C5855B0(a2 + v24, &v22[v25], &qword_27E1FAAF8, &unk_23C8A1180);
  v26 = v5 + 48;
  v27 = *(v5 + 48);
  if (v27(v22, 1, v4) == 1)
  {
    if (v27(&v22[v25], 1, v4) != 1)
    {
LABEL_17:
      sub_23C585C34(v22, &qword_27E1FAB00, &qword_23C878ED8);
      goto LABEL_18;
    }

    v43 = v26;
    sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
    v32 = v46;
    v33 = *(v46 + 28);
    v34 = *(v16 + 48);
    v22 = v49;
    sub_23C5855B0(v47 + v33, v49, &qword_27E1FAAF8, &unk_23C8A1180);
    sub_23C5855B0(v48 + v33, &v22[v34], &qword_27E1FAAF8, &unk_23C8A1180);
    if (v27(v22, 1, v4) == 1)
    {
      if (v27(&v22[v34], 1, v4) == 1)
      {
        sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_21:
        v41 = *(v32 + 32);
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v36 = sub_23C871754();
        return v36 & 1;
      }

      goto LABEL_17;
    }

    v35 = v44;
    sub_23C5855B0(v22, v44, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v27(&v22[v34], 1, v4) == 1)
    {
      v28 = v35;
      goto LABEL_16;
    }

    v38 = &v22[v34];
    v39 = v45;
    sub_23C83155C(v38, v45, type metadata accessor for TranscriptProtoStatementID);
    v40 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v35, v39);
    sub_23C8315C4(v39, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v40)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  sub_23C5855B0(v22, v15, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v27(&v22[v25], 1, v4) == 1)
  {
    v28 = v15;
LABEL_16:
    sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_17;
  }

  v43 = v26;
  v29 = &v22[v25];
  v30 = v45;
  sub_23C83155C(v29, v45, type metadata accessor for TranscriptProtoStatementID);
  v31 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v30);
  sub_23C8315C4(v30, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v31)
  {
    goto LABEL_11;
  }

LABEL_18:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v82 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = (&v67 - v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v67 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v11);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v67 - v18;
  v19 = type metadata accessor for TranscriptProtoParameterSet(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203970, &unk_23C8A1320);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v67 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203978, &qword_23C8A0BD0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v80 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v81 = a1;
  v33 = *(v80 + 28);
  v34 = *(v29 + 56);
  sub_23C5855B0(a1 + v33, v32, &qword_27E203970, &unk_23C8A1320);
  sub_23C5855B0(v82 + v33, &v32[v34], &qword_27E203970, &unk_23C8A1320);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_23C585C34(v32, &qword_27E203970, &unk_23C8A1320);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_23C5855B0(v32, v27, &qword_27E203970, &unk_23C8A1320);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_23C8315C4(v27, type metadata accessor for TranscriptProtoParameterSet);
LABEL_11:
    v44 = &qword_27E203978;
    v45 = &qword_23C8A0BD0;
LABEL_12:
    v46 = v32;
LABEL_13:
    sub_23C585C34(v46, v44, v45);
    goto LABEL_14;
  }

  sub_23C83155C(&v32[v34], v23, type metadata accessor for TranscriptProtoParameterSet);
  if ((sub_23C5D8D0C(*v27, *v23) & 1) == 0)
  {
    sub_23C8315C4(v23, type metadata accessor for TranscriptProtoParameterSet);
    sub_23C8315C4(v27, type metadata accessor for TranscriptProtoParameterSet);
    v44 = &qword_27E203970;
    v45 = &unk_23C8A1320;
    goto LABEL_12;
  }

  v49 = *(v19 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v50 = sub_23C871754();
  sub_23C8315C4(v23, type metadata accessor for TranscriptProtoParameterSet);
  sub_23C8315C4(v27, type metadata accessor for TranscriptProtoParameterSet);
  sub_23C585C34(v32, &qword_27E203970, &unk_23C8A1320);
  if ((v50 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v37 = v81;
  v36 = v82;
  if ((sub_23C5D76C4(*v81, *v82) & 1) == 0 || *(v37 + 8) != *(v36 + 8))
  {
    goto LABEL_14;
  }

  v38 = v79;
  v39 = v80;
  v40 = *(v80 + 32);
  v41 = *(v76 + 48);
  sub_23C5855B0(v37 + v40, v79, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v36 + v40, v38 + v41, &qword_27E1FAAF8, &unk_23C8A1180);
  v42 = v78;
  v43 = *(v77 + 48);
  if (v43(v38, 1, v78) == 1)
  {
    if (v43(v38 + v41, 1, v42) == 1)
    {
      sub_23C585C34(v38, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v51 = v75;
  sub_23C5855B0(v38, v75, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v43(v38 + v41, 1, v42) == 1)
  {
    sub_23C8315C4(v51, type metadata accessor for TranscriptProtoStatementID);
LABEL_22:
    v44 = &qword_27E1FAB00;
    v45 = &qword_23C878ED8;
    v46 = v38;
    goto LABEL_13;
  }

  v52 = v38 + v41;
  v53 = v74;
  sub_23C83155C(v52, v74, type metadata accessor for TranscriptProtoStatementID);
  v54 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v51, v53);
  sub_23C8315C4(v53, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v51, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v38, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v54 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  if (*(v37 + 9) != *(v36 + 9))
  {
    goto LABEL_14;
  }

  v55 = *(v39 + 36);
  v56 = *(v70 + 48);
  v57 = v73;
  sub_23C5855B0(v37 + v55, v73, &qword_27E2037A0, &qword_23C8A0A00);
  v58 = v36 + v55;
  v59 = v57;
  sub_23C5855B0(v58, v57 + v56, &qword_27E2037A0, &qword_23C8A0A00);
  v60 = v72;
  v61 = *(v71 + 48);
  if (v61(v57, 1, v72) == 1)
  {
    if (v61(v57 + v56, 1, v60) == 1)
    {
      sub_23C585C34(v57, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_32:
      v66 = *(v39 + 40);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v47 = sub_23C871754();
      return v47 & 1;
    }

    goto LABEL_30;
  }

  v62 = v69;
  sub_23C5855B0(v59, v69, &qword_27E2037A0, &qword_23C8A0A00);
  if (v61(v59 + v56, 1, v60) == 1)
  {
    sub_23C8315C4(v62, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_30:
    v44 = &qword_27E2037A8;
    v45 = &qword_23C8A0A08;
    v46 = v59;
    goto LABEL_13;
  }

  v63 = v59 + v56;
  v64 = v68;
  sub_23C83155C(v63, v68, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v65 = sub_23C8193D0(v62, v64, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v64, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v62, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v59, &qword_27E2037A0, &qword_23C8A0A00);
  if (v65)
  {
    goto LABEL_32;
  }

LABEL_14:
  v47 = 0;
  return v47 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v27 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v28 = a1;
  v17 = *(v27 + 20);
  v18 = *(v13 + 56);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB88, &unk_23C8A1350);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v11, &qword_27E1FAB88, &unk_23C8A1350);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      sub_23C83155C(&v16[v18], v26, type metadata accessor for TranscriptProtoASTFlatValue);
      v22 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v11, v21);
      sub_23C8315C4(v21, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v16, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v16, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_9:
  if (*v28 == *a2 && v28[1] == a2[1] || (sub_23C872014() & 1) != 0)
  {
    v23 = *(v27 + 24);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v20 = sub_23C871754();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v68 - 8);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v65 = &v60[-v10];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v11 = *(*(v67 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v67);
  v64 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v60[-v14];
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v60[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v60[-v27];
  v29 = *(v26 + 56);
  v69 = a1;
  sub_23C5855B0(a1, &v60[-v27], &qword_27E1FAB68, &unk_23C879140);
  v70 = a2;
  sub_23C5855B0(a2, &v28[v29], &qword_27E1FAB68, &unk_23C879140);
  v30 = *(v16 + 48);
  if (v30(v28, 1, v15) == 1)
  {
    if (v30(&v28[v29], 1, v15) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

LABEL_6:
    v31 = &qword_27E1FAB70;
    v32 = &qword_23C878F28;
    v33 = v28;
LABEL_21:
    sub_23C585C34(v33, v31, v32);
    goto LABEL_22;
  }

  sub_23C5855B0(v28, v23, &qword_27E1FAB68, &unk_23C879140);
  if (v30(&v28[v29], 1, v15) == 1)
  {
    sub_23C8315C4(v23, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v28[v29], v19, type metadata accessor for ToolKitProtoTypedValue);
  v34 = static ToolKitProtoTypedValue.== infix(_:_:)(v23, v19);
  sub_23C8315C4(v19, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v23, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v35 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v36 = v35[5];
  v37 = v66;
  v38 = v67;
  v39 = *(v67 + 48);
  v40 = v69;
  sub_23C5855B0(v69 + v36, v66, &qword_27E1FAAF8, &unk_23C8A1180);
  v41 = v70;
  sub_23C5855B0(v70 + v36, &v37[v39], &qword_27E1FAAF8, &unk_23C8A1180);
  v42 = v71 + 48;
  v43 = *(v71 + 48);
  v44 = v68;
  if (v43(v37, 1, v68) == 1)
  {
    if (v43(&v37[v39], 1, v44) != 1)
    {
LABEL_20:
      v31 = &qword_27E1FAB00;
      v32 = &qword_23C878ED8;
      v33 = v37;
      goto LABEL_21;
    }

    v71 = v42;
    sub_23C585C34(v37, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_14:
    v49 = v35[6];
    v50 = *(v38 + 48);
    v51 = v64;
    sub_23C5855B0(v40 + v49, v64, &qword_27E1FAAF8, &unk_23C8A1180);
    v52 = v41 + v49;
    v37 = v51;
    sub_23C5855B0(v52, &v51[v50], &qword_27E1FAAF8, &unk_23C8A1180);
    if (v43(v51, 1, v44) == 1)
    {
      if (v43(&v51[v50], 1, v44) == 1)
      {
        sub_23C585C34(v51, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
        v59 = v35[7];
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v55 = sub_23C871754();
        return v55 & 1;
      }

      goto LABEL_20;
    }

    v53 = v51;
    v54 = v62;
    sub_23C5855B0(v53, v62, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v43(&v37[v50], 1, v44) == 1)
    {
      v46 = v54;
      goto LABEL_19;
    }

    v57 = v63;
    sub_23C83155C(&v37[v50], v63, type metadata accessor for TranscriptProtoStatementID);
    v58 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v54, v57);
    sub_23C8315C4(v57, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v54, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v37, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v58)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v45 = v65;
  sub_23C5855B0(v37, v65, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v43(&v37[v39], 1, v44) == 1)
  {
    v46 = v45;
LABEL_19:
    sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v71 = v42;
  v47 = &v37[v39];
  v48 = v63;
  sub_23C83155C(v47, v63, type metadata accessor for TranscriptProtoStatementID);
  v61 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v45, v48);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v45, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v37, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v61)
  {
    goto LABEL_14;
  }

LABEL_22:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = (&v52 - v9);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC8, &qword_23C8A0F88);
  v10 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v11;
  v12 = type metadata accessor for TranscriptProtoRequestContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD8, &qword_23C8A0F90);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v52 - v24;
  v26 = *(v23 + 56);
  v59 = a1;
  sub_23C5855B0(a1, &v52 - v24, &qword_27E203DD0, &unk_23C8A1160);
  sub_23C5855B0(a2, &v25[v26], &qword_27E203DD0, &unk_23C8A1160);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_23C585C34(v25, &qword_27E203DD0, &unk_23C8A1160);
      goto LABEL_11;
    }

LABEL_6:
    v28 = &qword_27E203DD8;
    v29 = &qword_23C8A0F90;
    v30 = v25;
LABEL_7:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_8;
  }

  sub_23C5855B0(v25, v20, &qword_27E203DD0, &unk_23C8A1160);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestContent);
    goto LABEL_6;
  }

  sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoRequestContent);
  v33 = _s26AIMLInstrumentationStreams29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v20, v16);
  sub_23C8315C4(v16, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoRequestContent);
  sub_23C585C34(v25, &qword_27E203DD0, &unk_23C8A1160);
  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v34 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v35 = v34[5];
  v36 = v59;
  v37 = (v59 + v35);
  v38 = *(v59 + v35 + 8);
  v39 = (a2 + v35);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v40)
  {
    goto LABEL_8;
  }

  v41 = v34[6];
  v42 = *(v55 + 48);
  v43 = v58;
  sub_23C5855B0(v36 + v41, v58, &qword_27E203DC0, &unk_23C8A1170);
  v44 = v43;
  sub_23C5855B0(a2 + v41, v43 + v42, &qword_27E203DC0, &unk_23C8A1170);
  v45 = v57;
  v46 = *(v56 + 48);
  if (v46(v43, 1, v57) == 1)
  {
    if (v46(v43 + v42, 1, v45) == 1)
    {
      sub_23C585C34(v43, &qword_27E203DC0, &unk_23C8A1170);
LABEL_21:
      v47 = v34[7];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v31 = sub_23C871754();
      return v31 & 1;
    }

    goto LABEL_24;
  }

  v48 = v54;
  sub_23C5855B0(v44, v54, &qword_27E203DC0, &unk_23C8A1170);
  if (v46(v44 + v42, 1, v45) == 1)
  {
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
LABEL_24:
    v28 = &qword_27E203DC8;
    v29 = &qword_23C8A0F88;
LABEL_32:
    v30 = v44;
    goto LABEL_7;
  }

  v49 = v44 + v42;
  v50 = v53;
  sub_23C83155C(v49, v53, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  if ((*v48 != *v50 || v48[1] != v50[1]) && (sub_23C872014() & 1) == 0 || (sub_23C5D25E0(v48[2], v50[2]) & 1) == 0)
  {
    sub_23C8315C4(v50, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    v28 = &qword_27E203DC0;
    v29 = &unk_23C8A1170;
    goto LABEL_32;
  }

  v51 = *(v45 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  LOBYTE(v51) = sub_23C871754();
  sub_23C8315C4(v50, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_23C585C34(v44, &qword_27E203DC0, &unk_23C8A1170);
  if (v51)
  {
    goto LABEL_21;
  }

LABEL_8:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v49 - v25;
  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v49 = v7;
  v27 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v56 = a2;
  v28 = *(v27 + 20);
  v29 = a1;
  v30 = *(v23 + 48);
  v50 = v27;
  v51 = v29;
  sub_23C5855B0(v29 + v28, v26, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v56 + v28, &v26[v30], &qword_27E1FAAF8, &unk_23C8A1180);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) != 1)
  {
    sub_23C5855B0(v26, v22, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v31(&v26[v30], 1, v14) != 1)
    {
      sub_23C83155C(&v26[v30], v18, type metadata accessor for TranscriptProtoStatementID);
      v35 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_23C8315C4(v18, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v22, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v26, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v35 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v22, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v32 = &qword_27E1FAB00;
    v33 = &qword_23C878ED8;
    v34 = v26;
LABEL_15:
    sub_23C585C34(v34, v32, v33);
    goto LABEL_16;
  }

  if (v31(&v26[v30], 1, v14) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v26, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
  v36 = v50;
  v37 = *(v50 + 24);
  v38 = *(v11 + 48);
  v39 = v55;
  sub_23C5855B0(v51 + v37, v55, &qword_27E1FBB18, &unk_23C87B950);
  sub_23C5855B0(v56 + v37, v39 + v38, &qword_27E1FBB18, &unk_23C87B950);
  v40 = v54;
  v41 = *(v53 + 48);
  if (v41(v39, 1, v54) == 1)
  {
    if (v41(v39 + v38, 1, v40) == 1)
    {
      sub_23C585C34(v39, &qword_27E1FBB18, &unk_23C87B950);
LABEL_19:
      v48 = *(v36 + 28);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v43 = sub_23C871754();
      return v43 & 1;
    }

    goto LABEL_14;
  }

  v42 = v52;
  sub_23C5855B0(v39, v52, &qword_27E1FBB18, &unk_23C87B950);
  if (v41(v39 + v38, 1, v40) == 1)
  {
    sub_23C8315C4(v42, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_14:
    v32 = &qword_27E1FBB20;
    v33 = &qword_23C87B920;
    v34 = v39;
    goto LABEL_15;
  }

  v45 = v39 + v38;
  v46 = v49;
  sub_23C83155C(v45, v49, type metadata accessor for TranscriptProtoStatementOutcome);
  v47 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v42, v46);
  sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C585C34(v39, &qword_27E1FBB18, &unk_23C87B950);
  if (v47)
  {
    goto LABEL_19;
  }

LABEL_16:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoActionParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D58, &unk_23C8A11A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D60, &qword_23C8A0F28);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E203D58, &unk_23C8A11A0);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E203D58, &unk_23C8A11A0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E203D58, &unk_23C8A11A0);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoToolParameterValue);
      v31 = _s26AIMLInstrumentationStreams33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_23C8315C4(v16, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_23C585C34(v25, &qword_27E203D58, &unk_23C8A11A0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_6:
    v28 = &qword_27E203D60;
    v29 = &qword_23C8A0F28;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E203D58, &unk_23C8A11A0);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E203CF8, &qword_23C8A0ED8);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E203CF8, &qword_23C8A0ED8);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E203CF8, &qword_23C8A0ED8);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for TranscriptProtoPromptSelection);
LABEL_13:
    v28 = &qword_27E203D00;
    v29 = &qword_23C8A0EE0;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C83155C(v41, v45, type metadata accessor for TranscriptProtoPromptSelection);
  v43 = _s26AIMLInstrumentationStreams30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C585C34(v35, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoUIConfirmationLabelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TranscriptProtoUIConfirmationLabel(0) + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C809468(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = a1[1];
  v6 = a2[1];
  if (v5)
  {
    if (v6)
    {
      v7 = *a1;
      if (*a1 == *a2 && v5 == v6)
      {
        goto LABEL_8;
      }

      v9 = a3;
      v10 = *a2;
      v11 = sub_23C872014();
      a3 = v9;
      if (v11)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v6)
  {
LABEL_8:
    v12 = *(a3(0) + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = v8;
  v25 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v17 = *(v25 + 24);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB68, &unk_23C879140);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAB68, &unk_23C879140);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
LABEL_9:
    sub_23C585C34(v16, &qword_27E1FAB70, &qword_23C878F28);
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v26;
  sub_23C83155C(&v16[v18], v26, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v12, v20);
  sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_13;
  }

  v22 = *(v25 + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203788, &qword_23C8A09E8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_23C5855B0(a1, &v29 - v18, &qword_27E203780, &unk_23C8A1380);
  v32 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E203780, &unk_23C8A1380);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_23C585C34(v19, &qword_27E203780, &unk_23C8A1380);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoToolParameterValue(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v19, v14, &qword_27E203780, &unk_23C8A1380);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoToolParameterValueEnum);
LABEL_6:
    sub_23C585C34(v19, &qword_27E203788, &qword_23C8A09E8);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_23C83155C(v23, v29, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v25 = *(v30 + 48);
  sub_23C8314F4(v14, v6, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C8314F4(v24, v6 + v25, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v26 = static ToolKitProtoTypedValue.== infix(_:_:)(v6, (v6 + v25));
  sub_23C8315C4(v24, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C8315C4(v6 + v25, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v6, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v14, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C585C34(v19, &qword_27E203780, &unk_23C8A1380);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoPickOneExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoPickOneExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoConfirmExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoConfirmExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    if (v3 != 8)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoPermissionRequirement(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C58, &qword_23C8A0E48);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E2016C0, &qword_23C88DBD8);
  sub_23C5855B0(a2, &v17[v18], &qword_27E2016C0, &qword_23C88DBD8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E2016C0, &qword_23C88DBD8);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoActionRequirement(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E2016C0, &qword_23C88DBD8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionRequirementEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C58, &qword_23C8A0E48);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v21 = _s26AIMLInstrumentationStreams36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_23C585C34(v17, &qword_27E2016C0, &qword_23C88DBD8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v6 = *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoRejectExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoRejectExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B10, &qword_23C8A0D30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_24;
  }

  v30 = v8;
  v31 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v17 = *(v31 + 24);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E203B08, &qword_23C8A0D28);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E203B08, &qword_23C8A0D28);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E203B08, &qword_23C8A0D28);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v30;
      sub_23C83155C(v24, v30, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v26 = *v12 == *v25 && v12[1] == v25[1];
      if (v26 || (sub_23C872014()) && v12[2] == v25[2])
      {
        v27 = *(v4 + 24);
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v28 = sub_23C871754();
        sub_23C8315C4(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C585C34(v16, &qword_27E203B08, &qword_23C8A0D28);
        if (v28)
        {
          goto LABEL_10;
        }

LABEL_24:
        v21 = 0;
        return v21 & 1;
      }

      sub_23C8315C4(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v22 = &qword_27E203B08;
      v23 = &qword_23C8A0D28;
LABEL_23:
      sub_23C585C34(v16, v22, v23);
      goto LABEL_24;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_13:
    v22 = &qword_27E203B10;
    v23 = &qword_23C8A0D30;
    goto LABEL_23;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_23C585C34(v16, &qword_27E203B08, &qword_23C8A0D28);
LABEL_10:
  v20 = *(v31 + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v21 = sub_23C871754();
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B18, &unk_23C8A1280);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B20, &qword_23C8A0D38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B28, &qword_23C8A0D40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_23C5855B0(a1, &v29 - v18, &qword_27E203B20, &qword_23C8A0D38);
  v32 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E203B20, &qword_23C8A0D38);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_23C585C34(v19, &qword_27E203B20, &qword_23C8A0D38);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoPlanGenerationError(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v19, v14, &qword_27E203B20, &qword_23C8A0D38);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
LABEL_6:
    sub_23C585C34(v19, &qword_27E203B28, &qword_23C8A0D40);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_23C83155C(v23, v29, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v25 = *(v30 + 48);
  sub_23C8314F4(v14, v6, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C8314F4(v24, v6 + v25, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v26 = _s26AIMLInstrumentationStreams45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v6, (v6 + v25));
  sub_23C8315C4(v24, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C8315C4(v6 + v25, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C8315C4(v6, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C8315C4(v14, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C585C34(v19, &qword_27E203B20, &qword_23C8A0D38);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B38, &unk_23C8A1270);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B40, &qword_23C8A0D50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B48, &qword_23C8A0D58);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_23C5855B0(a1, &v29 - v18, &qword_27E203B40, &qword_23C8A0D50);
  v32 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E203B40, &qword_23C8A0D50);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_23C585C34(v19, &qword_27E203B40, &qword_23C8A0D50);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoRecoverableError(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v19, v14, &qword_27E203B40, &qword_23C8A0D50);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
LABEL_6:
    sub_23C585C34(v19, &qword_27E203B48, &qword_23C8A0D58);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_23C83155C(v23, v29, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v25 = *(v30 + 48);
  sub_23C8314F4(v14, v6, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C8314F4(v24, &v6[v25], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v26 = _s26AIMLInstrumentationStreams34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v6, &v6[v25]);
  sub_23C8315C4(v24, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C8315C4(&v6[v25], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C8315C4(v6, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C8315C4(v14, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C585C34(v19, &qword_27E203B40, &qword_23C8A0D50);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_23C5D976C(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v18 = *(StepResults + 24);
  v19 = *(v13 + 48);
  v25 = StepResults;
  v26 = a1;
  sub_23C5855B0(a1 + v18, v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v18, &v16[v19], &qword_27E1FAAF8, &unk_23C8A1180);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_23C83155C(&v16[v19], v8, type metadata accessor for TranscriptProtoStatementID);
      v23 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
  if (v26[1] == a2[1] && v26[2] == a2[2] || (sub_23C872014() & 1) != 0)
  {
    v24 = *(v25 + 28);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v21 = sub_23C871754();
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_23C5855B0(&v18[v20], v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(&v19[v20], &v16[v21], &qword_27E1FAAF8, &unk_23C8A1180);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v23 = sub_23C871754();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_8;
  }

  sub_23C83155C(&v16[v21], v8, type metadata accessor for TranscriptProtoStatementID);
  v25 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_23C80BFEC(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v7 = a1[2];
  v8 = a2[2];
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v7 != v8)
    {
      v10 = a3;
      v11 = a2[1];
      v12 = sub_23C872014();
      a3 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (a3(*a1, *a2))
  {
    v13 = *(a4(0) + 24);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoCancelExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoCancelExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!v24 || (*(a1 + 24) != *(a2 + 24) || v23 != v24) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v24)
  {
    goto LABEL_26;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_26;
  }

  v43 = v13;
  v44 = v8;
  v45 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v25 = *(v45 + 28);
  v26 = *(v16 + 48);
  sub_23C5855B0(a1 + v25, v22, &qword_27E1FAAF8, &unk_23C8A1180);
  v46 = v26;
  sub_23C5855B0(a2 + v25, &v22[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = v5 + 48;
  v28 = *(v5 + 48);
  if (v28(v22, 1, v4) != 1)
  {
    sub_23C5855B0(v22, v15, &qword_27E1FAAF8, &unk_23C8A1180);
    v29 = v46;
    if (v28(&v22[v46], 1, v4) != 1)
    {
      v42 = v27;
      v31 = v44;
      sub_23C83155C(&v22[v29], v44, type metadata accessor for TranscriptProtoStatementID);
      LODWORD(v46) = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v31);
      sub_23C8315C4(v31, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v46 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_17:
    v30 = v22;
LABEL_25:
    sub_23C585C34(v30, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_26;
  }

  if (v28(&v22[v46], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  v42 = v27;
  sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_19:
  v32 = v45;
  v33 = *(v45 + 32);
  v34 = *(v16 + 48);
  sub_23C5855B0(a1 + v33, v20, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v33, &v20[v34], &qword_27E1FAAF8, &unk_23C8A1180);
  if (v28(v20, 1, v4) == 1)
  {
    if (v28(&v20[v34], 1, v4) == 1)
    {
      sub_23C585C34(v20, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_29:
      v40 = *(v32 + 36);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v36 = sub_23C871754();
      return v36 & 1;
    }

    goto LABEL_24;
  }

  v35 = v43;
  sub_23C5855B0(v20, v43, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v28(&v20[v34], 1, v4) == 1)
  {
    sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementID);
LABEL_24:
    v30 = v20;
    goto LABEL_25;
  }

  v38 = v44;
  sub_23C83155C(&v20[v34], v44, type metadata accessor for TranscriptProtoStatementID);
  v39 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v35, v38);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v20, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v39)
  {
    goto LABEL_29;
  }

LABEL_26:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoResponseParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v5 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_23C5EDBA0(*(a1 + 16), *(a1 + 24));
      sub_23C5EDBA0(v8, v7);
      sub_23C5AD0AC(v6, v5);
      goto LABEL_13;
    }

LABEL_10:
    sub_23C5EDBA0(*(a1 + 16), *(a1 + 24));
    sub_23C5EDBA0(v8, v7);
    sub_23C5AD0AC(v6, v5);
    sub_23C5AD0AC(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_23C5EDBA0(*(a1 + 16), *(a1 + 24));
  sub_23C5EDBA0(v8, v7);
  v10 = sub_23C6F73FC(v6, v5, v8, v7);
  sub_23C5AD0AC(v8, v7);
  sub_23C5AD0AC(v6, v5);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  if (v11)
  {
    if (!v12 || (*(a1 + 32) != *(a2 + 32) || v11 != v12) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16 || (*(a1 + 56) != *(a2 + 56) || v15 != v16) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 72);
  v18 = *(a2 + 72);
  if (v17 != 2)
  {
    if (v18 != 2 && ((v17 ^ v18) & 1) == 0)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v18 != 2)
  {
    return 0;
  }

LABEL_37:
  v19 = *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoUIType(0);
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039F0, &qword_23C8A0C38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = &v84 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039F8, &qword_23C8A0C40);
  v11 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v13 = &v84 - v12;
  v14 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  MEMORY[0x28223BE20](v14);
  v92 = (&v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A00, &unk_23C8A12E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = (&v84 - v19);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A08, &qword_23C8A0C48);
  v20 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v97 = &v84 - v21;
  v22 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A10, &qword_23C8A0C50);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = (&v84 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A18, &qword_23C8A0C58);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v84 - v33;
  if ((sub_23C5D9718(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v84 = v7;
  v85 = v13;
  v35 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v36 = *(v35 + 20);
  v37 = *(v31 + 48);
  v86 = v35;
  v87 = a1;
  sub_23C5855B0(a1 + v36, v34, &qword_27E203A10, &qword_23C8A0C50);
  v38 = a2 + v36;
  v39 = a2;
  sub_23C5855B0(v38, &v34[v37], &qword_27E203A10, &qword_23C8A0C50);
  v40 = *(v23 + 48);
  if (v40(v34, 1, v22) == 1)
  {
    if (v40(&v34[v37], 1, v22) == 1)
    {
      sub_23C585C34(v34, &qword_27E203A10, &qword_23C8A0C50);
      goto LABEL_9;
    }

LABEL_7:
    v41 = &qword_27E203A18;
    v42 = &qword_23C8A0C58;
    v43 = v34;
LABEL_15:
    sub_23C585C34(v43, v41, v42);
    goto LABEL_16;
  }

  sub_23C5855B0(v34, v30, &qword_27E203A10, &qword_23C8A0C50);
  if (v40(&v34[v37], 1, v22) == 1)
  {
    sub_23C8315C4(v30, type metadata accessor for TranscriptProtoResponseDialog);
    goto LABEL_7;
  }

  sub_23C83155C(&v34[v37], v26, type metadata accessor for TranscriptProtoResponseDialog);
  v44 = _s26AIMLInstrumentationStreams29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(v30, v26);
  sub_23C8315C4(v26, type metadata accessor for TranscriptProtoResponseDialog);
  sub_23C8315C4(v30, type metadata accessor for TranscriptProtoResponseDialog);
  sub_23C585C34(v34, &qword_27E203A10, &qword_23C8A0C50);
  if ((v44 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v46 = v86;
  v45 = v87;
  v47 = v86[6];
  v48 = *(v94 + 48);
  v49 = v97;
  sub_23C5855B0(v87 + v47, v97, &qword_27E203A00, &unk_23C8A12E0);
  sub_23C5855B0(v39 + v47, v49 + v48, &qword_27E203A00, &unk_23C8A12E0);
  v50 = v96;
  v51 = *(v95 + 48);
  if (v51(v49, 1, v96) != 1)
  {
    v52 = v93;
    sub_23C5855B0(v49, v93, &qword_27E203A00, &unk_23C8A12E0);
    if (v51(v49 + v48, 1, v50) != 1)
    {
      v55 = v49 + v48;
      v56 = v92;
      sub_23C83155C(v55, v92, type metadata accessor for TranscriptProtoResponseVisual);
      v57 = _s26AIMLInstrumentationStreams29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(v52, v56);
      sub_23C8315C4(v56, type metadata accessor for TranscriptProtoResponseVisual);
      sub_23C8315C4(v52, type metadata accessor for TranscriptProtoResponseVisual);
      sub_23C585C34(v49, &qword_27E203A00, &unk_23C8A12E0);
      if ((v57 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_23C8315C4(v52, type metadata accessor for TranscriptProtoResponseVisual);
    goto LABEL_14;
  }

  if (v51(v49 + v48, 1, v50) != 1)
  {
LABEL_14:
    v41 = &qword_27E203A08;
    v42 = &qword_23C8A0C48;
    v43 = v49;
    goto LABEL_15;
  }

  sub_23C585C34(v49, &qword_27E203A00, &unk_23C8A12E0);
LABEL_19:
  v58 = v46[7];
  v59 = (v45 + v58);
  v60 = *(v45 + v58 + 8);
  v61 = (v39 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62 || (*v59 != *v61 || v60 != v62) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v62)
  {
    goto LABEL_16;
  }

  v63 = v46[8];
  v64 = (v45 + v63);
  v65 = *(v45 + v63 + 8);
  v66 = (v39 + v63);
  v67 = v66[1];
  if (v65)
  {
    if (!v67 || (*v64 != *v66 || v65 != v67) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v67)
  {
    goto LABEL_16;
  }

  v68 = v46[9];
  v69 = *(v45 + v68);
  v70 = *(v39 + v68);
  if (v69 == 2)
  {
    if (v70 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v70 == 2 || ((v69 ^ v70) & 1) != 0)
  {
    goto LABEL_16;
  }

  v71 = v46[10];
  v72 = *(v45 + v71);
  v73 = *(v39 + v71);
  if (v72 == 2)
  {
    if (v73 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v73 == 2 || ((v73 ^ v72) & 1) != 0)
  {
    goto LABEL_16;
  }

  v74 = v46[11];
  v75 = *(v89 + 48);
  v76 = v85;
  sub_23C5855B0(v45 + v74, v85, &qword_27E2039F0, &qword_23C8A0C38);
  sub_23C5855B0(v39 + v74, v76 + v75, &qword_27E2039F0, &qword_23C8A0C38);
  v77 = v91;
  v78 = *(v90 + 48);
  if (v78(v76, 1, v91) == 1)
  {
    if (v78(v76 + v75, 1, v77) == 1)
    {
      sub_23C585C34(v76, &qword_27E2039F0, &qword_23C8A0C38);
LABEL_50:
      v83 = v46[12];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v53 = sub_23C871754();
      return v53 & 1;
    }

    goto LABEL_48;
  }

  v79 = v88;
  sub_23C5855B0(v76, v88, &qword_27E2039F0, &qword_23C8A0C38);
  if (v78(v76 + v75, 1, v77) == 1)
  {
    sub_23C8315C4(v79, type metadata accessor for TranscriptProtoUIType);
LABEL_48:
    v41 = &qword_27E2039F8;
    v42 = &qword_23C8A0C40;
    v43 = v76;
    goto LABEL_15;
  }

  v80 = v76 + v75;
  v81 = v84;
  sub_23C83155C(v80, v84, type metadata accessor for TranscriptProtoUIType);
  v82 = _s26AIMLInstrumentationStreams21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(v79, v81);
  sub_23C8315C4(v81, type metadata accessor for TranscriptProtoUIType);
  sub_23C8315C4(v79, type metadata accessor for TranscriptProtoUIType);
  sub_23C585C34(v76, &qword_27E2039F0, &qword_23C8A0C38);
  if (v82)
  {
    goto LABEL_50;
  }

LABEL_16:
  v53 = 0;
  return v53 & 1;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB08, &unk_23C8A11D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB10, &qword_23C87B918);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E1FBB18, &unk_23C87B950);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FBB18, &unk_23C87B950);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E1FBB18, &unk_23C87B950);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementOutcome);
      v31 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_23C8315C4(v16, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_23C585C34(v25, &qword_27E1FBB18, &unk_23C87B950);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_6:
    v28 = &qword_27E1FBB20;
    v29 = &qword_23C87B920;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E1FBB18, &unk_23C87B950);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FBB08, &unk_23C8A11D0);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FBB08, &unk_23C8A11D0);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FBB08, &unk_23C8A11D0);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E1FBB08, &unk_23C8A11D0);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_13:
    v28 = &qword_27E1FBB10;
    v29 = &qword_23C87B918;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C83155C(v41, v45, type metadata accessor for TranscriptProtoResponseManifest);
  v43 = _s26AIMLInstrumentationStreams31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoResponseManifest);
  sub_23C585C34(v35, &qword_27E1FBB08, &unk_23C8A11D0);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v100 = *(v4 - 8);
  v101 = v4;
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = (&v94 - v10);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  v11 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v13 = &v94 - v12;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = v109[8];
  MEMORY[0x28223BE20](v14);
  v106 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v102 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v104 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v107 = &v94 - v23;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v24 = *(*(v111 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v111);
  v103 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v108 = &v94 - v29;
  v30 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE8, &qword_23C8A0EC8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v94 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF0, &qword_23C8A0ED0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v94 - v41;
  v43 = a1[1];
  v44 = a2[1];
  if (v43)
  {
    if (!v44 || (*a1 != *a2 || v43 != v44) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v44)
  {
    goto LABEL_34;
  }

  v94 = v7;
  v95 = v13;
  v45 = type metadata accessor for TranscriptProtoStatementResult(0);
  v46 = *(v45 + 20);
  v47 = *(v39 + 48);
  v96 = a1;
  v97 = v45;
  sub_23C5855B0(a1 + v46, v42, &qword_27E203CE8, &qword_23C8A0EC8);
  v48 = a2 + v46;
  v49 = a2;
  sub_23C5855B0(v48, &v42[v47], &qword_27E203CE8, &qword_23C8A0EC8);
  v50 = *(v31 + 48);
  if (v50(v42, 1, v30) == 1)
  {
    if (v50(&v42[v47], 1, v30) == 1)
    {
      sub_23C585C34(v42, &qword_27E203CE8, &qword_23C8A0EC8);
      goto LABEL_15;
    }

LABEL_13:
    v51 = &qword_27E203CF0;
    v52 = &qword_23C8A0ED0;
    v53 = v42;
LABEL_33:
    sub_23C585C34(v53, v51, v52);
    goto LABEL_34;
  }

  sub_23C5855B0(v42, v38, &qword_27E203CE8, &qword_23C8A0EC8);
  if (v50(&v42[v47], 1, v30) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for TranscriptProtoStatementResultPayload);
    goto LABEL_13;
  }

  sub_23C83155C(&v42[v47], v34, type metadata accessor for TranscriptProtoStatementResultPayload);
  v54 = _s26AIMLInstrumentationStreams37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(v38, v34);
  sub_23C8315C4(v34, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_23C585C34(v42, &qword_27E203CE8, &qword_23C8A0EC8);
  if ((v54 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v55 = v96;
  v56 = v97[6];
  v57 = *(v111 + 48);
  v58 = v108;
  sub_23C5855B0(v96 + v56, v108, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v49 + v56, v58 + v57, &qword_27E1FAAF8, &unk_23C8A1180);
  v59 = v110;
  v60 = v109[6];
  if (v60(v58, 1, v110) == 1)
  {
    if (v60(v58 + v57, 1, v59) == 1)
    {
      v109 = v49;
      sub_23C585C34(v58, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v61 = v107;
  sub_23C5855B0(v58, v107, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v60(v58 + v57, 1, v59) == 1)
  {
    sub_23C8315C4(v61, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v51 = &qword_27E1FAB00;
    v52 = &qword_23C878ED8;
    v53 = v58;
    goto LABEL_33;
  }

  v109 = v49;
  v62 = v58 + v57;
  v63 = v106;
  sub_23C83155C(v62, v106, type metadata accessor for TranscriptProtoStatementID);
  v64 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v61, v63);
  sub_23C8315C4(v63, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v61, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v58, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v64 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  v65 = v97;
  v66 = v97[7];
  v67 = *(v111 + 48);
  v68 = v105;
  sub_23C5855B0(v55 + v66, v105, &qword_27E1FAAF8, &unk_23C8A1180);
  v69 = v109;
  sub_23C5855B0(v109 + v66, v68 + v67, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v60(v68, 1, v59) == 1)
  {
    if (v60(v68 + v67, 1, v59) != 1)
    {
LABEL_32:
      v51 = &qword_27E1FAB00;
      v52 = &qword_23C878ED8;
      v53 = v68;
      goto LABEL_33;
    }

    sub_23C585C34(v68, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  else
  {
    v70 = v104;
    sub_23C5855B0(v68, v104, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v60(v68 + v67, 1, v59) == 1)
    {
LABEL_31:
      sub_23C8315C4(v70, type metadata accessor for TranscriptProtoStatementID);
      goto LABEL_32;
    }

    v71 = v68 + v67;
    v72 = v106;
    sub_23C83155C(v71, v106, type metadata accessor for TranscriptProtoStatementID);
    v73 = v68;
    v74 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v70, v72);
    sub_23C8315C4(v72, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v70, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v73, &qword_27E1FAAF8, &unk_23C8A1180);
    if ((v74 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v75 = v65[8];
  v76 = *(v111 + 48);
  v77 = v96;
  v68 = v103;
  sub_23C5855B0(v96 + v75, v103, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v69 + v75, v68 + v76, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v60(v68, 1, v59) != 1)
  {
    v70 = v102;
    sub_23C5855B0(v68, v102, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v60(v68 + v76, 1, v59) != 1)
    {
      v80 = v106;
      sub_23C83155C(v68 + v76, v106, type metadata accessor for TranscriptProtoStatementID);
      v81 = v68;
      v82 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v70, v80);
      sub_23C8315C4(v80, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v70, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v81, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v82 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (v60(v68 + v76, 1, v59) != 1)
  {
    goto LABEL_32;
  }

  sub_23C585C34(v68, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_37:
  v83 = v97;
  v84 = v97[9];
  v85 = *(v99 + 48);
  v86 = v95;
  sub_23C5855B0(v77 + v84, v95, &qword_27E2037A0, &qword_23C8A0A00);
  sub_23C5855B0(v69 + v84, v86 + v85, &qword_27E2037A0, &qword_23C8A0A00);
  v87 = v101;
  v88 = *(v100 + 48);
  if (v88(v86, 1, v101) == 1)
  {
    if (v88(v86 + v85, 1, v87) == 1)
    {
      sub_23C585C34(v86, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_44:
      v93 = v83[10];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v78 = sub_23C871754();
      return v78 & 1;
    }

    goto LABEL_42;
  }

  v89 = v98;
  sub_23C5855B0(v86, v98, &qword_27E2037A0, &qword_23C8A0A00);
  if (v88(v86 + v85, 1, v87) == 1)
  {
    sub_23C8315C4(v89, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_42:
    v51 = &qword_27E2037A8;
    v52 = &qword_23C8A0A08;
    v53 = v86;
    goto LABEL_33;
  }

  v90 = v86 + v85;
  v91 = v94;
  sub_23C83155C(v90, v94, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v92 = sub_23C8193D0(v89, v91, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v91, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v89, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v86, &qword_27E2037A0, &qword_23C8A0A00);
  if (v92)
  {
    goto LABEL_44;
  }

LABEL_34:
  v78 = 0;
  return v78 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v41 = v13;
  v42 = v8;
  v23 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v45 = a2;
  v24 = a1;
  v43 = v23;
  v44 = a1;
  v25 = *(v23 + 20);
  v26 = *(v16 + 48);
  sub_23C5855B0(&v24[v25], v22, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(&v45[v25], &v22[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = *(v5 + 48);
  if (v27(v22, 1, v4) != 1)
  {
    sub_23C5855B0(v22, v15, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v27(&v22[v26], 1, v4) != 1)
    {
      v29 = v42;
      sub_23C83155C(&v22[v26], v42, type metadata accessor for TranscriptProtoStatementID);
      v30 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v29);
      sub_23C8315C4(v29, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v28 = v22;
LABEL_15:
    sub_23C585C34(v28, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_16;
  }

  if (v27(&v22[v26], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v22, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
  v31 = v43;
  v32 = *(v43 + 24);
  v33 = *(v16 + 48);
  sub_23C5855B0(&v44[v32], v20, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(&v45[v32], &v20[v33], &qword_27E1FAAF8, &unk_23C8A1180);
  if (v27(v20, 1, v4) == 1)
  {
    if (v27(&v20[v33], 1, v4) == 1)
    {
      sub_23C585C34(v20, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_19:
      v39 = *(v31 + 28);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v35 = sub_23C871754();
      return v35 & 1;
    }

    goto LABEL_14;
  }

  v34 = v41;
  sub_23C5855B0(v20, v41, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v27(&v20[v33], 1, v4) == 1)
  {
    sub_23C8315C4(v34, type metadata accessor for TranscriptProtoStatementID);
LABEL_14:
    v28 = v20;
    goto LABEL_15;
  }

  v37 = v42;
  sub_23C83155C(&v20[v33], v42, type metadata accessor for TranscriptProtoStatementID);
  v38 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v34, v37);
  sub_23C8315C4(v37, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v34, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v20, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v38)
  {
    goto LABEL_19;
  }

LABEL_16:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_23C80EEC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v40 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = *(v19 + 48);
  v42 = a1;
  sub_23C5855B0(a1, &v38 - v20, &qword_27E1FAAF8, &unk_23C8A1180);
  v43 = a2;
  sub_23C5855B0(a2, &v21[v22], &qword_27E1FAAF8, &unk_23C8A1180);
  v23 = *(v6 + 48);
  if (v23(v21, 1, v5) != 1)
  {
    sub_23C5855B0(v21, v14, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v23(&v21[v22], 1, v5) != 1)
    {
      v25 = &v21[v22];
      v26 = v39;
      sub_23C83155C(v25, v39, type metadata accessor for TranscriptProtoStatementID);
      v27 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v26);
      sub_23C8315C4(v26, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v21, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v24 = v21;
LABEL_14:
    sub_23C585C34(v24, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_15;
  }

  if (v23(&v21[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v21, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v28 = v40(0);
  v29 = *(v28 + 20);
  v30 = *(v15 + 48);
  v31 = v41;
  sub_23C5855B0(v42 + v29, v41, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v43 + v29, v31 + v30, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v23(v31, 1, v5) == 1)
  {
    if (v23((v31 + v30), 1, v5) == 1)
    {
      sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_18:
      v37 = *(v28 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v33 = sub_23C871754();
      return v33 & 1;
    }

    goto LABEL_13;
  }

  v32 = v38;
  sub_23C5855B0(v31, v38, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v23((v31 + v30), 1, v5) == 1)
  {
    sub_23C8315C4(v32, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v24 = v31;
    goto LABEL_14;
  }

  v35 = v39;
  sub_23C83155C(v31 + v30, v39, type metadata accessor for TranscriptProtoStatementID);
  v36 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v32, v35);
  sub_23C8315C4(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v32, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v31, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoVariableSetterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
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
  v26 = type metadata accessor for TranscriptProtoVariableSetter(0);
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
    sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAB70, &qword_23C878F28);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_23C83155C(&v16[v18], v27, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v11, v20);
  sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C7FD0C0(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoUndoExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoUndoExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v68 - 8);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v65 = &v60[-v10];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v11 = *(*(v67 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v67);
  v64 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v60[-v14];
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v60[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v60[-v27];
  v29 = *(v26 + 56);
  v69 = a1;
  sub_23C5855B0(a1, &v60[-v27], &qword_27E1FACA8, &unk_23C87B940);
  v70 = a2;
  sub_23C5855B0(a2, &v28[v29], &qword_27E1FACA8, &unk_23C87B940);
  v30 = *(v16 + 48);
  if (v30(v28, 1, v15) == 1)
  {
    if (v30(&v28[v29], 1, v15) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
      goto LABEL_8;
    }

LABEL_6:
    v31 = &qword_27E1FACB0;
    v32 = &qword_23C879010;
    v33 = v28;
LABEL_21:
    sub_23C585C34(v33, v31, v32);
    goto LABEL_22;
  }

  sub_23C5855B0(v28, v23, &qword_27E1FACA8, &unk_23C87B940);
  if (v30(&v28[v29], 1, v15) == 1)
  {
    sub_23C8315C4(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_23C83155C(&v28[v29], v19, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v34 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v23, v19);
  sub_23C8315C4(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C8315C4(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v28, &qword_27E1FACA8, &unk_23C87B940);
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v35 = type metadata accessor for TranscriptProtoToolResolution(0);
  v36 = v35[5];
  v37 = v66;
  v38 = v67;
  v39 = *(v67 + 48);
  v40 = v69;
  sub_23C5855B0(v69 + v36, v66, &qword_27E1FAAF8, &unk_23C8A1180);
  v41 = v70;
  sub_23C5855B0(v70 + v36, &v37[v39], &qword_27E1FAAF8, &unk_23C8A1180);
  v42 = v71 + 48;
  v43 = *(v71 + 48);
  v44 = v68;
  if (v43(v37, 1, v68) == 1)
  {
    if (v43(&v37[v39], 1, v44) != 1)
    {
LABEL_20:
      v31 = &qword_27E1FAB00;
      v32 = &qword_23C878ED8;
      v33 = v37;
      goto LABEL_21;
    }

    v71 = v42;
    sub_23C585C34(v37, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_14:
    v49 = v35[6];
    v50 = *(v38 + 48);
    v51 = v64;
    sub_23C5855B0(v40 + v49, v64, &qword_27E1FAAF8, &unk_23C8A1180);
    v52 = v41 + v49;
    v37 = v51;
    sub_23C5855B0(v52, &v51[v50], &qword_27E1FAAF8, &unk_23C8A1180);
    if (v43(v51, 1, v44) == 1)
    {
      if (v43(&v51[v50], 1, v44) == 1)
      {
        sub_23C585C34(v51, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
        v59 = v35[7];
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v55 = sub_23C871754();
        return v55 & 1;
      }

      goto LABEL_20;
    }

    v53 = v51;
    v54 = v62;
    sub_23C5855B0(v53, v62, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v43(&v37[v50], 1, v44) == 1)
    {
      v46 = v54;
      goto LABEL_19;
    }

    v57 = v63;
    sub_23C83155C(&v37[v50], v63, type metadata accessor for TranscriptProtoStatementID);
    v58 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v54, v57);
    sub_23C8315C4(v57, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8315C4(v54, type metadata accessor for TranscriptProtoStatementID);
    sub_23C585C34(v37, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v58)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v45 = v65;
  sub_23C5855B0(v37, v65, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v43(&v37[v39], 1, v44) == 1)
  {
    v46 = v45;
LABEL_19:
    sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v71 = v42;
  v47 = &v37[v39];
  v48 = v63;
  sub_23C83155C(v47, v63, type metadata accessor for TranscriptProtoStatementID);
  v61 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v45, v48);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v45, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v37, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v61)
  {
    goto LABEL_14;
  }

LABEL_22:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D38, &unk_23C8A11B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D40, &qword_23C8A0F10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if ((sub_23C7FC320(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_23C5855B0(v18 + v20, v16, &qword_27E203D38, &unk_23C8A11B0);
  sub_23C5855B0(v19 + v20, &v16[v21], &qword_27E203D38, &unk_23C8A11B0);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E203D38, &unk_23C8A11B0);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v23 = sub_23C871754();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E203D38, &unk_23C8A11B0);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
LABEL_7:
    sub_23C585C34(v16, &qword_27E203D40, &qword_23C8A0F10);
    goto LABEL_8;
  }

  sub_23C83155C(&v16[v21], v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v25 = _s26AIMLInstrumentationStreams44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_23C585C34(v16, &qword_27E203D38, &unk_23C8A11B0);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B60, &qword_23C8A0D68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201770, &unk_23C8A1260);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201770, &unk_23C8A1260);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201770, &unk_23C8A1260);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoStatementOutcome(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201770, &unk_23C8A1260);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203B60, &qword_23C8A0D68);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  v21 = _s26AIMLInstrumentationStreams35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_23C585C34(v17, &qword_27E201770, &unk_23C8A1260);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams41TranscriptProtoInterpretedStatementResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v89 = *(v4 - 8);
  v90 = v4;
  v5 = *(v89 + 8);
  MEMORY[0x28223BE20](v4);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v82 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v87 = &v82 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v93 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v93);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v82 - v19;
  v20 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB20, &qword_23C87B920);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v82 - v32;
  v34 = *(v31 + 56);
  v92 = a1;
  sub_23C5855B0(a1, &v82 - v32, &qword_27E1FBB18, &unk_23C87B950);
  v91 = a2;
  sub_23C5855B0(a2, &v33[v34], &qword_27E1FBB18, &unk_23C87B950);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_23C585C34(v33, &qword_27E1FBB18, &unk_23C87B950);
      goto LABEL_9;
    }

LABEL_6:
    v36 = &qword_27E1FBB20;
    v37 = &qword_23C87B920;
LABEL_7:
    v38 = v33;
LABEL_15:
    sub_23C585C34(v38, v36, v37);
    goto LABEL_16;
  }

  sub_23C5855B0(v33, v28, &qword_27E1FBB18, &unk_23C87B950);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementOutcome);
    goto LABEL_6;
  }

  sub_23C83155C(&v33[v34], v24, type metadata accessor for TranscriptProtoStatementOutcome);
  v39 = _s26AIMLInstrumentationStreams31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v28, v24);
  sub_23C8315C4(v24, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_23C585C34(v33, &qword_27E1FBB18, &unk_23C87B950);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v40 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v41 = *(v40 + 20);
  v42 = v92;
  v43 = *(v93 + 48);
  v44 = v88;
  sub_23C5855B0(v92 + v41, v88, &qword_27E1FAAF8, &unk_23C8A1180);
  v45 = v91;
  sub_23C5855B0(v91 + v41, v44 + v43, &qword_27E1FAAF8, &unk_23C8A1180);
  v46 = v90;
  v47 = *(v89 + 6);
  if (v47(v44, 1, v90) == 1)
  {
    if (v47((v44 + v43), 1, v46) == 1)
    {
      v89 = v47;
      sub_23C585C34(v44, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_19;
    }

LABEL_14:
    v36 = &qword_27E1FAB00;
    v37 = &qword_23C878ED8;
    v38 = v44;
    goto LABEL_15;
  }

  v48 = v87;
  sub_23C5855B0(v44, v87, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v47((v44 + v43), 1, v46) == 1)
  {
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_14;
  }

  v89 = v47;
  v51 = v44 + v43;
  v52 = v85;
  sub_23C83155C(v51, v85, type metadata accessor for TranscriptProtoStatementID);
  v53 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v48, v52);
  sub_23C8315C4(v52, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v44, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v88 = v40;
  v54 = *(v40 + 24);
  v55 = *(v93 + 48);
  v33 = v86;
  sub_23C5855B0(v42 + v54, v86, &qword_27E1FAAF8, &unk_23C8A1180);
  v56 = v45;
  sub_23C5855B0(v45 + v54, &v33[v55], &qword_27E1FAAF8, &unk_23C8A1180);
  v57 = v89;
  if (v89(v33, 1, v46) != 1)
  {
    v58 = v84;
    sub_23C5855B0(v33, v84, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v57(&v33[v55], 1, v46) != 1)
    {
      v59 = &v33[v55];
      v60 = v85;
      sub_23C83155C(v59, v85, type metadata accessor for TranscriptProtoStatementID);
      v61 = v33;
      v62 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v58, v60);
      sub_23C8315C4(v60, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v58, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v61, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v62 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    sub_23C8315C4(v58, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_24;
  }

  if (v57(&v33[v55], 1, v46) != 1)
  {
LABEL_24:
    v36 = &qword_27E1FAB00;
    v37 = &qword_23C878ED8;
    goto LABEL_7;
  }

  sub_23C585C34(v33, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_26:
  v63 = v88;
  v64 = *(v88 + 28);
  v65 = v92;
  v66 = (v92 + v64);
  v67 = *(v92 + v64 + 8);
  v68 = (v45 + v64);
  v69 = v68[1];
  if (v67)
  {
    if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v69)
  {
    goto LABEL_16;
  }

  v70 = *(v63 + 32);
  v71 = (v65 + v70);
  v72 = *(v65 + v70 + 8);
  v73 = (v45 + v70);
  v74 = v73[1];
  if (v72)
  {
    if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v74)
  {
    goto LABEL_16;
  }

  v75 = *(v63 + 36);
  v76 = *(v93 + 48);
  v77 = v83;
  sub_23C5855B0(v65 + v75, v83, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v56 + v75, v77 + v76, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v57(v77, 1, v46) == 1)
  {
    if (v57((v77 + v76), 1, v46) == 1)
    {
      sub_23C585C34(v77, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_47:
      v81 = *(v88 + 40);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v49 = sub_23C871754();
      return v49 & 1;
    }

    goto LABEL_45;
  }

  v78 = v82;
  sub_23C5855B0(v77, v82, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v57((v77 + v76), 1, v46) == 1)
  {
    sub_23C8315C4(v78, type metadata accessor for TranscriptProtoStatementID);
LABEL_45:
    v36 = &qword_27E1FAB00;
    v37 = &qword_23C878ED8;
    v38 = v77;
    goto LABEL_15;
  }

  v79 = v85;
  sub_23C83155C(v77 + v76, v85, type metadata accessor for TranscriptProtoStatementID);
  v80 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v78, v79);
  sub_23C8315C4(v79, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v78, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v77, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v80)
  {
    goto LABEL_47;
  }

LABEL_16:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203768, &unk_23C8A1390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203770, &qword_23C8A09D8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v34 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v35 = a1;
  v17 = *(v34 + 20);
  v18 = *(v13 + 56);
  sub_23C5855B0(a1 + v17, v16, &qword_27E203768, &unk_23C8A1390);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E203768, &unk_23C8A1390);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v11, &qword_27E203768, &unk_23C8A1390);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v33;
      sub_23C83155C(&v16[v18], v33, type metadata accessor for TranscriptProtoResponseOutput);
      v23 = _s26AIMLInstrumentationStreams29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(v11, v22);
      sub_23C8315C4(v22, type metadata accessor for TranscriptProtoResponseOutput);
      sub_23C8315C4(v11, type metadata accessor for TranscriptProtoResponseOutput);
      sub_23C585C34(v16, &qword_27E203768, &unk_23C8A1390);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoResponseOutput);
LABEL_6:
    sub_23C585C34(v16, &qword_27E203770, &qword_23C8A09D8);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v16, &qword_27E203768, &unk_23C8A1390);
LABEL_10:
  v24 = v34;
  v25 = v35;
  v26 = *(v34 + 24);
  v27 = (v35 + v26);
  v28 = *(v35 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v30)
  {
    goto LABEL_7;
  }

  if (sub_23C5DA960(*v25, *a2))
  {
    v31 = *(v24 + 28);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v20 = sub_23C871754();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039E0, &unk_23C8A12F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039E8, &qword_23C8A0C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  if ((sub_23C5DAEE0(*a1, *a2) & 1) == 0 || (sub_23C5DB40C(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v29 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v17 = *(v29 + 24);
  v18 = a1;
  v19 = *(v13 + 48);
  v28[1] = v18;
  sub_23C5855B0(v18 + v17, v16, &qword_27E2039E0, &unk_23C8A12F0);
  v28[2] = a2;
  sub_23C5855B0(a2 + v17, &v16[v19], &qword_27E2039E0, &unk_23C8A12F0);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E2039E0, &unk_23C8A12F0);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_23C83155C(&v16[v19], v8, type metadata accessor for TranscriptProtoResponseVisualOptions);
      if (*v12 == *v8)
      {
        v26 = *(v4 + 20);
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v27 = sub_23C871754();
        sub_23C8315C4(v8, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_23C8315C4(v12, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_23C585C34(v16, &qword_27E2039E0, &unk_23C8A12F0);
        if (v27)
        {
          goto LABEL_6;
        }

LABEL_11:
        v22 = 0;
        return v22 & 1;
      }

      sub_23C8315C4(v8, type metadata accessor for TranscriptProtoResponseVisualOptions);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoResponseVisualOptions);
      v23 = &qword_27E2039E0;
      v24 = &unk_23C8A12F0;
LABEL_10:
      sub_23C585C34(v16, v23, v24);
      goto LABEL_11;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoResponseVisualOptions);
LABEL_9:
    v23 = &qword_27E2039E8;
    v24 = &qword_23C8A0C30;
    goto LABEL_10;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v16, &qword_27E2039E0, &unk_23C8A12F0);
LABEL_6:
  v21 = *(v29 + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v22 = sub_23C871754();
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A80, &unk_23C8A12C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v87 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A88, &qword_23C8A0CB8);
  v11 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v13 = &v87 - v12;
  v14 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v14);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A90, &qword_23C8A0CC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A98, &qword_23C8A0CC8);
  v20 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v87 - v21;
  v22 = type metadata accessor for TranscriptProtoDialogType(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v103 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA0, &unk_23C8A12B0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v102 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v87 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA8, &qword_23C8A0CD0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v87 - v37;
  if ((sub_23C5DBBBC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v90 = v13;
  v88 = v7;
  v39 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v104 = a2;
  v89 = v39;
  v40 = *(v39 + 28);
  v41 = *(v32 + 48);
  v91 = a1;
  sub_23C5855B0(a1 + v40, v38, &qword_27E203AA0, &unk_23C8A12B0);
  sub_23C5855B0(v104 + v40, &v38[v41], &qword_27E203AA0, &unk_23C8A12B0);
  v42 = *(v23 + 48);
  if (v42(v38, 1, v22) == 1)
  {
    if (v42(&v38[v41], 1, v22) == 1)
    {
      sub_23C585C34(v38, &qword_27E203AA0, &unk_23C8A12B0);
      goto LABEL_9;
    }

LABEL_7:
    v43 = &qword_27E203AA8;
    v44 = &qword_23C8A0CD0;
    v45 = v38;
LABEL_15:
    sub_23C585C34(v45, v43, v44);
    goto LABEL_16;
  }

  sub_23C5855B0(v38, v31, &qword_27E203AA0, &unk_23C8A12B0);
  if (v42(&v38[v41], 1, v22) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoDialogType);
    goto LABEL_7;
  }

  v46 = &v38[v41];
  v47 = v103;
  sub_23C83155C(v46, v103, type metadata accessor for TranscriptProtoDialogType);
  v48 = _s26AIMLInstrumentationStreams25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v31, v47);
  sub_23C8315C4(v47, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoDialogType);
  sub_23C585C34(v38, &qword_27E203AA0, &unk_23C8A12B0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v49 = v89;
  v50 = v89[8];
  v51 = *(v32 + 48);
  v52 = v91;
  sub_23C5855B0(v91 + v50, v36, &qword_27E203AA0, &unk_23C8A12B0);
  v53 = v104 + v50;
  v54 = v104;
  sub_23C5855B0(v53, &v36[v51], &qword_27E203AA0, &unk_23C8A12B0);
  if (v42(v36, 1, v22) == 1)
  {
    v55 = v42(&v36[v51], 1, v22);
    v56 = v90;
    if (v55 == 1)
    {
      sub_23C585C34(v36, &qword_27E203AA0, &unk_23C8A12B0);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v57 = v102;
  sub_23C5855B0(v36, v102, &qword_27E203AA0, &unk_23C8A12B0);
  v58 = v42(&v36[v51], 1, v22);
  v56 = v90;
  if (v58 == 1)
  {
    sub_23C8315C4(v57, type metadata accessor for TranscriptProtoDialogType);
LABEL_14:
    v43 = &qword_27E203AA8;
    v44 = &qword_23C8A0CD0;
    v45 = v36;
    goto LABEL_15;
  }

  v61 = &v36[v51];
  v62 = v103;
  sub_23C83155C(v61, v103, type metadata accessor for TranscriptProtoDialogType);
  v63 = _s26AIMLInstrumentationStreams25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v57, v62);
  sub_23C8315C4(v62, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8315C4(v57, type metadata accessor for TranscriptProtoDialogType);
  sub_23C585C34(v36, &qword_27E203AA0, &unk_23C8A12B0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*(v52 + 8) != *(v54 + 8) || (sub_23C5D9488(v52[2], v54[2]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v64 = v49[9];
  v65 = *(v98 + 48);
  v66 = v101;
  sub_23C5855B0(v52 + v64, v101, &qword_27E203A90, &qword_23C8A0CC0);
  sub_23C5855B0(v54 + v64, v66 + v65, &qword_27E203A90, &qword_23C8A0CC0);
  v67 = v100;
  v68 = *(v99 + 48);
  if (v68(v66, 1, v100) == 1)
  {
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_23C585C34(v66, &qword_27E203A90, &qword_23C8A0CC0);
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v73 = v97;
  sub_23C5855B0(v66, v97, &qword_27E203A90, &qword_23C8A0CC0);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    sub_23C8315C4(v73, type metadata accessor for TranscriptProtoVisualOutputOptions);
LABEL_29:
    v43 = &qword_27E203A98;
    v44 = &qword_23C8A0CC8;
LABEL_30:
    v45 = v66;
    goto LABEL_15;
  }

  v74 = v66 + v65;
  v75 = v93;
  sub_23C83155C(v74, v93, type metadata accessor for TranscriptProtoVisualOutputOptions);
  if (*v73 != *v75)
  {
    sub_23C8315C4(v75, type metadata accessor for TranscriptProtoVisualOutputOptions);
    sub_23C8315C4(v73, type metadata accessor for TranscriptProtoVisualOutputOptions);
    v43 = &qword_27E203A90;
    v44 = &qword_23C8A0CC0;
    goto LABEL_30;
  }

  v77 = *(v67 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  LOBYTE(v77) = sub_23C871754();
  sub_23C8315C4(v75, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_23C8315C4(v73, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_23C585C34(v66, &qword_27E203A90, &qword_23C8A0CC0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  v69 = v49[10];
  v70 = *(v94 + 48);
  sub_23C5855B0(v52 + v69, v56, &qword_27E203A80, &unk_23C8A12C0);
  sub_23C5855B0(v54 + v69, v56 + v70, &qword_27E203A80, &unk_23C8A12C0);
  v71 = v96;
  v72 = *(v95 + 48);
  if (v72(v56, 1, v96) != 1)
  {
    v76 = v92;
    sub_23C5855B0(v56, v92, &qword_27E203A80, &unk_23C8A12C0);
    if (v72(v56 + v70, 1, v71) != 1)
    {
      v78 = v56 + v70;
      v79 = v88;
      sub_23C83155C(v78, v88, type metadata accessor for TranscriptProtoVisualOutput);
      v80 = _s26AIMLInstrumentationStreams27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(v76, v79);
      sub_23C8315C4(v79, type metadata accessor for TranscriptProtoVisualOutput);
      sub_23C8315C4(v76, type metadata accessor for TranscriptProtoVisualOutput);
      sub_23C585C34(v56, &qword_27E203A80, &unk_23C8A12C0);
      if ((v80 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

    sub_23C8315C4(v76, type metadata accessor for TranscriptProtoVisualOutput);
    goto LABEL_35;
  }

  if (v72(v56 + v70, 1, v71) != 1)
  {
LABEL_35:
    v43 = &qword_27E203A88;
    v44 = &qword_23C8A0CB8;
    v45 = v56;
    goto LABEL_15;
  }

  sub_23C585C34(v56, &qword_27E203A80, &unk_23C8A12C0);
LABEL_39:
  v81 = v49[11];
  v82 = (v52 + v81);
  v83 = *(v52 + v81 + 8);
  v84 = (v54 + v81);
  v85 = v84[1];
  if (v83)
  {
    if (v85 && (*v82 == *v84 && v83 == v85 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_46;
    }
  }

  else if (!v85)
  {
LABEL_46:
    v86 = v49[12];
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v59 = sub_23C871754();
    return v59 & 1;
  }

LABEL_16:
  v59 = 0;
  return v59 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
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
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  if (v10)
  {
    if (v11 && (a1[6] == a2[6] && v10 == v11 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
LABEL_27:
    v12 = *(type metadata accessor for TranscriptProtoResponseDialog(0) + 32);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for TranscriptProtoPickExpression(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v16, v11, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAB00, &qword_23C878ED8);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_23C83155C(&v16[v18], v27, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v11, v20);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *a2)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      v3 = *(type metadata accessor for TranscriptProtoPromptSelection(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      return sub_23C871754() & 1;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (a1[1])
    {
      if (v5)
      {
        if ((a2[1] & 1) != 0 && v6)
        {
          goto LABEL_3;
        }
      }

      else if ((a2[1] & 1) != 0 && !v6)
      {
        goto LABEL_3;
      }
    }

    else if ((a2[1] & 1) == 0 && v5 == v6)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v45 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E1FAB68, &unk_23C879140);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FAB68, &unk_23C879140);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E1FAB68, &unk_23C879140);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C83155C(&v25[v26], v16, type metadata accessor for ToolKitProtoTypedValue);
      v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v20, v16);
      sub_23C8315C4(v16, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v25, &qword_27E1FAB68, &unk_23C879140);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v28 = &qword_27E1FAB70;
    v29 = &qword_23C878F28;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E1FAB68, &unk_23C879140);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoParameterValue(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E203CF8, &qword_23C8A0ED8);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E203CF8, &qword_23C8A0ED8);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E203CF8, &qword_23C8A0ED8);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for TranscriptProtoPromptSelection);
LABEL_13:
    v28 = &qword_27E203D00;
    v29 = &qword_23C8A0EE0;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C83155C(v41, v45, type metadata accessor for TranscriptProtoPromptSelection);
  v43 = _s26AIMLInstrumentationStreams30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoPromptSelection);
  sub_23C585C34(v35, &qword_27E203CF8, &qword_23C8A0ED8);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoOpenExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoOpenExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BE0, &unk_23C8A1250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BE8, &qword_23C8A0DE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E203BE0, &unk_23C8A1250);
  sub_23C5855B0(a2, &v17[v18], &qword_27E203BE0, &unk_23C8A1250);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E203BE0, &unk_23C8A1250);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoFollowUpAction(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E203BE0, &unk_23C8A1250);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203BE8, &qword_23C8A0DE8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  v21 = _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG0V2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C585C34(v17, &qword_27E203BE0, &unk_23C8A1250);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if ((sub_23C7FB534(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoCallExpression(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_23C5855B0(v18 + v20, v16, &qword_27E2037A0, &qword_23C8A0A00);
  sub_23C5855B0(v19 + v20, &v16[v21], &qword_27E2037A0, &qword_23C8A0A00);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v23 = sub_23C871754();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E2037A0, &qword_23C8A0A00);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_7:
    sub_23C585C34(v16, &qword_27E2037A8, &qword_23C8A0A08);
    goto LABEL_8;
  }

  sub_23C83155C(&v16[v21], v8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v25 = sub_23C8193D0(v12, v8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v16, &qword_27E2037A0, &qword_23C8A0A00);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoAppRequirementV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoAppRequirement(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoSpeechPackageV5TokenV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoSnippetStreamV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAB68, &unk_23C879140);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAB68, &unk_23C879140);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSnippetStream(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAB68, &unk_23C879140);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v17, &qword_27E1FAB68, &unk_23C879140);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoSkipStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSkipStatement(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoShimParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC00, &qword_23C878F98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC08, &qword_23C878FA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAC00, &qword_23C878F98);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAC00, &qword_23C878F98);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAC00, &qword_23C878F98);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoShimParameter(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAC00, &qword_23C878F98);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoShimParameterEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAC08, &qword_23C878FA0);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  v21 = static TranscriptProtoShimParameterEnum.== infix(_:_:)(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_23C585C34(v17, &qword_27E1FAC00, &qword_23C878F98);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C80, &qword_23C8A0E70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E2016A0, &qword_23C88DBD0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E2016A0, &qword_23C88DBD0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E2016A0, &qword_23C88DBD0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoExecutorError(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E2016A0, &qword_23C88DBD0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExecutorErrorEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C80, &qword_23C8A0E70);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v21 = _s26AIMLInstrumentationStreams32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_23C585C34(v17, &qword_27E2016A0, &qword_23C88DBD0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203748, &unk_23C8A13A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203750, &qword_23C8A09C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = v8;
  v30 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v17 = *(v30 + 20);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E203748, &unk_23C8A13A0);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E203748, &unk_23C8A13A0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E203748, &unk_23C8A13A0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v25 = &v16[v18];
      v26 = v29;
      sub_23C83155C(v25, v29, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      if (*v12 == *v26)
      {
        v27 = *(v4 + 20);
        sub_23C870F34();
        sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v28 = sub_23C871754();
        sub_23C8315C4(v26, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_23C8315C4(v12, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_23C585C34(v16, &qword_27E203748, &unk_23C8A13A0);
        if (v28)
        {
          goto LABEL_7;
        }

LABEL_12:
        v21 = 0;
        return v21 & 1;
      }

      sub_23C8315C4(v26, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      v22 = &qword_27E203748;
      v23 = &unk_23C8A13A0;
LABEL_11:
      sub_23C585C34(v16, v22, v23);
      goto LABEL_12;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
LABEL_10:
    v22 = &qword_27E203750;
    v23 = &qword_23C8A09C0;
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_23C585C34(v16, &qword_27E203748, &unk_23C8A13A0);
LABEL_7:
  v20 = *(v30 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v21 = sub_23C871754();
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoActionSuccessV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v108 = a2;
  v109 = a1;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v2);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v89 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v8 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v95 = &v89 - v9;
  v10 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  MEMORY[0x28223BE20](v10);
  v96 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BF0, &qword_23C8A0DF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = &v89 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BF8, &qword_23C8A0DF8);
  v16 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v89 - v17;
  v18 = type metadata accessor for TranscriptProtoUndoContext(0);
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = *(v104 + 64);
  MEMORY[0x28223BE20](v18);
  v102 = (&v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C00, &unk_23C8A1240);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v103 = (&v89 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C08, &qword_23C8A0E00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v106 = &v89 - v26;
  v27 = type metadata accessor for ToolKitProtoTypedValue(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = (&v89 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v89 - v39;
  v107 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v41 = *(v107 + 24);
  v42 = *(v37 + 56);
  sub_23C5855B0(&v109[v41], v40, &qword_27E1FAB68, &unk_23C879140);
  v43 = &v108[v41];
  v44 = v108;
  sub_23C5855B0(v43, &v40[v42], &qword_27E1FAB68, &unk_23C879140);
  v45 = *(v28 + 48);
  if (v45(v40, 1, v27) == 1)
  {
    if (v45(&v40[v42], 1, v27) == 1)
    {
      sub_23C585C34(v40, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

LABEL_6:
    v46 = &qword_27E1FAB70;
    v47 = &qword_23C878F28;
LABEL_30:
    v65 = v40;
LABEL_31:
    sub_23C585C34(v65, v46, v47);
    goto LABEL_32;
  }

  sub_23C5855B0(v40, v35, &qword_27E1FAB68, &unk_23C879140);
  if (v45(&v40[v42], 1, v27) == 1)
  {
    sub_23C8315C4(v35, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v40[v42], v31, type metadata accessor for ToolKitProtoTypedValue);
  v48 = static ToolKitProtoTypedValue.== infix(_:_:)(v35, v31);
  sub_23C8315C4(v31, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v35, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v40, &qword_27E1FAB68, &unk_23C879140);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_8:
  v40 = v106;
  v49 = v107;
  v50 = *(v107 + 28);
  v51 = *(v24 + 48);
  v52 = v109;
  sub_23C5855B0(&v109[v50], v106, &qword_27E203C00, &unk_23C8A1240);
  sub_23C5855B0(&v44[v50], &v40[v51], &qword_27E203C00, &unk_23C8A1240);
  v53 = v105;
  v54 = *(v104 + 48);
  if (v54(v40, 1, v105) == 1)
  {
    if (v54(&v40[v51], 1, v53) == 1)
    {
      sub_23C585C34(v40, &qword_27E203C00, &unk_23C8A1240);
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v62 = v103;
  sub_23C5855B0(v40, v103, &qword_27E203C00, &unk_23C8A1240);
  if (v54(&v40[v51], 1, v53) == 1)
  {
    sub_23C8315C4(v62, type metadata accessor for TranscriptProtoUndoContext);
LABEL_17:
    v46 = &qword_27E203C08;
    v47 = &qword_23C8A0E00;
    goto LABEL_30;
  }

  v63 = v102;
  sub_23C83155C(&v40[v51], v102, type metadata accessor for TranscriptProtoUndoContext);
  if ((*v62 != *v63 || v62[1] != v63[1]) && (sub_23C872014() & 1) == 0 || (v62[2] != v63[2] || v62[3] != v63[3]) && (sub_23C872014() & 1) == 0 || (v62[4] != v63[4] || v62[5] != v63[5]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C8315C4(v63, type metadata accessor for TranscriptProtoUndoContext);
    sub_23C8315C4(v62, type metadata accessor for TranscriptProtoUndoContext);
    v46 = &qword_27E203C00;
    v47 = &unk_23C8A1240;
    goto LABEL_30;
  }

  v64 = *(v53 + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  LOBYTE(v64) = sub_23C871754();
  sub_23C8315C4(v63, type metadata accessor for TranscriptProtoUndoContext);
  sub_23C8315C4(v62, type metadata accessor for TranscriptProtoUndoContext);
  sub_23C585C34(v40, &qword_27E203C00, &unk_23C8A1240);
  if ((v64 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if (*v52 != *v44)
  {
    goto LABEL_32;
  }

  v55 = v49[8];
  v56 = *(v98 + 48);
  v57 = v101;
  sub_23C5855B0(&v52[v55], v101, &qword_27E203BF0, &qword_23C8A0DF0);
  v58 = &v44[v55];
  v59 = v57;
  sub_23C5855B0(v58, v57 + v56, &qword_27E203BF0, &qword_23C8A0DF0);
  v60 = v100;
  v61 = *(v99 + 48);
  if (v61(v57, 1, v100) != 1)
  {
    v68 = v97;
    sub_23C5855B0(v59, v97, &qword_27E203BF0, &qword_23C8A0DF0);
    if (v61(v59 + v56, 1, v60) != 1)
    {
      v69 = v59 + v56;
      v70 = v96;
      sub_23C83155C(v69, v96, type metadata accessor for TranscriptProtoFollowUpAction);
      v71 = _s26AIMLInstrumentationStreams29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(v68, v70);
      sub_23C8315C4(v70, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_23C8315C4(v68, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_23C585C34(v59, &qword_27E203BF0, &qword_23C8A0DF0);
      if ((v71 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    sub_23C8315C4(v68, type metadata accessor for TranscriptProtoFollowUpAction);
    goto LABEL_36;
  }

  if (v61(v57 + v56, 1, v60) != 1)
  {
LABEL_36:
    v46 = &qword_27E203BF8;
    v47 = &qword_23C8A0DF8;
    v65 = v59;
    goto LABEL_31;
  }

  sub_23C585C34(v57, &qword_27E203BF0, &qword_23C8A0DF0);
LABEL_38:
  if (v52[1] != v44[1])
  {
    goto LABEL_32;
  }

  v72 = v49[9];
  v73 = &v52[v72];
  v74 = *&v52[v72 + 8];
  v75 = &v44[v72];
  v76 = *(v75 + 1);
  if (v74)
  {
    if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v76)
  {
    goto LABEL_32;
  }

  v77 = v49[10];
  v78 = *(v92 + 48);
  v79 = v95;
  sub_23C5855B0(&v52[v77], v95, &qword_27E1FAAF8, &unk_23C8A1180);
  v80 = &v44[v77];
  v81 = v79;
  sub_23C5855B0(v80, v79 + v78, &qword_27E1FAAF8, &unk_23C8A1180);
  v82 = v94;
  v83 = *(v93 + 48);
  if (v83(v79, 1, v94) == 1)
  {
    if (v83(v79 + v78, 1, v82) == 1)
    {
      sub_23C585C34(v79, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_53:
      v88 = v49[11];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v66 = sub_23C871754();
      return v66 & 1;
    }

    goto LABEL_51;
  }

  v84 = v91;
  sub_23C5855B0(v81, v91, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v83(v81 + v78, 1, v82) == 1)
  {
    sub_23C8315C4(v84, type metadata accessor for TranscriptProtoStatementID);
LABEL_51:
    v46 = &qword_27E1FAB00;
    v47 = &qword_23C878ED8;
    v65 = v81;
    goto LABEL_31;
  }

  v85 = v81 + v78;
  v86 = v90;
  sub_23C83155C(v85, v90, type metadata accessor for TranscriptProtoStatementID);
  v87 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v84, v86);
  sub_23C8315C4(v86, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v84, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v81, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v87)
  {
    goto LABEL_53;
  }

LABEL_32:
  v66 = 0;
  return v66 & 1;
}

uint64_t _s26AIMLInstrumentationStreams28TranscriptProtoActionFailureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C20, &unk_23C8A1230);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C28, &qword_23C8A0E18);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E203C20, &unk_23C8A1230);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E203C20, &unk_23C8A1230);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E203C20, &unk_23C8A1230);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoActionFailureFailure);
      v31 = _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF0V2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_23C8315C4(v16, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_23C585C34(v25, &qword_27E203C20, &unk_23C8A1230);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionFailureFailure);
LABEL_6:
    v28 = &qword_27E203C28;
    v29 = &qword_23C8A0E18;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E203C20, &unk_23C8A1230);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoActionFailure(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FAAF8, &unk_23C8A1180);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v28 = &qword_27E1FAB00;
    v29 = &qword_23C878ED8;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C83155C(v41, v45, type metadata accessor for TranscriptProtoStatementID);
  v43 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v35, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF8, &qword_23C878F90);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FABF0, &qword_23C878F88);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FABF0, &qword_23C878F88);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FABF0, &qword_23C878F88);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoVisualOutput(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FABF0, &qword_23C878F88);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoVisualOutputType);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FABF8, &qword_23C878F90);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoVisualOutputType);
  v21 = _s26AIMLInstrumentationStreams31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_23C585C34(v17, &qword_27E1FABF0, &qword_23C878F88);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if ((sub_23C5DC634(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoVariableStep(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_23C5855B0(v18 + v20, v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v19 + v20, &v16[v21], &qword_27E1FAAF8, &unk_23C8A1180);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v23 = sub_23C871754();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_8;
  }

  sub_23C83155C(&v16[v21], v8, type metadata accessor for TranscriptProtoStatementID);
  v25 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C90, &qword_23C8A0E80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201680, &qword_23C88DBC8);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201680, &qword_23C88DBC8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201680, &qword_23C88DBC8);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSessionError(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201680, &qword_23C88DBC8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSessionErrorEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C90, &qword_23C8A0E80);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  v21 = _s26AIMLInstrumentationStreams31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_23C585C34(v17, &qword_27E201680, &qword_23C88DBC8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v5 = *(PayloadEnum - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](PayloadEnum);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AC0, &qword_23C8A0CE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E2017F0, &unk_23C8A12A0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E2017F0, &unk_23C8A12A0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, PayloadEnum) == 1)
  {
    if (v19(&v17[v18], 1, PayloadEnum) == 1)
    {
      sub_23C585C34(v17, &qword_27E2017F0, &unk_23C8A12A0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoQueryPayload(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E2017F0, &unk_23C8A12A0);
  if (v19(&v17[v18], 1, PayloadEnum) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryPayloadEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203AC0, &qword_23C8A0CE8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  PayloadEnumO2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_23C585C34(v17, &qword_27E2017F0, &unk_23C8A12A0);
  if (PayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV06StringE0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v27 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v28 = a1;
  v17 = *(v27 + 20);
  v18 = *(v13 + 56);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB38, &unk_23C8791E0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v11, &qword_27E1FAB38, &unk_23C8791E0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      sub_23C83155C(&v16[v18], v26, type metadata accessor for ToolKitProtoTypeIdentifier);
      v22 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v11, v21);
      sub_23C8315C4(v21, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAB40, &qword_23C878F08);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_9:
  if (*v28 == *a2 && v28[1] == a2[1] || (sub_23C872014() & 1) != 0)
  {
    v23 = *(v27 + 24);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v20 = sub_23C871754();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV010IdentifierE0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB38, &unk_23C8791E0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v16, v11, &qword_27E1FAB38, &unk_23C8791E0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FAB40, &qword_23C878F08);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_23C83155C(&v16[v18], v27, type metadata accessor for ToolKitProtoTypeIdentifier);
  v21 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v11, v20);
  sub_23C8315C4(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C8315C4(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v16, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C5D25E0(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoPlannerErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C78, &qword_23C8A0E68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E2016B0, &unk_23C8A1210);
  sub_23C5855B0(a2, &v17[v18], &qword_27E2016B0, &unk_23C8A1210);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E2016B0, &unk_23C8A1210);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoPlannerError(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E2016B0, &unk_23C8A1210);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPlannerErrorEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C78, &qword_23C8A0E68);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  v21 = _s26AIMLInstrumentationStreams31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_23C585C34(v17, &qword_27E2016B0, &unk_23C8A1210);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0 || (sub_23C7FD6C0(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_28;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18 || (a1[4] != a2[4] || v17 != v18) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  v19 = a1[7];
  v20 = a2[7];
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_19;
    }

LABEL_28:
    v28 = 0;
    return v28 & 1;
  }

  if (!v20 || (a1[6] != a2[6] || v19 != v20) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  v31 = type metadata accessor for TranscriptProtoClientAction(0);
  v21 = *(v31 + 36);
  v22 = *(v13 + 48);
  sub_23C5855B0(a1 + v21, v16, &qword_27E1FAAF8, &unk_23C8A1180);
  v23 = a2 + v21;
  v24 = v22;
  sub_23C5855B0(v23, &v16[v22], &qword_27E1FAAF8, &unk_23C8A1180);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_24:
    sub_23C585C34(v16, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_28;
  }

  sub_23C83155C(&v16[v24], v8, type metadata accessor for TranscriptProtoStatementID);
  v26 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v26 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ((sub_23C7FDCDC(a1[3], a2[3]) & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = *(v31 + 40);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v28 = sub_23C871754();
  return v28 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoPersonQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CB8, &unk_23C8A11F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v34 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CC0, &qword_23C8A0EA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = *(a1 + 2);
  v18 = *(a2 + 2);
  if (v17)
  {
    if (!v18 || (*(a1 + 1) != *(a2 + 1) || v17 != v18) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v18)
  {
    goto LABEL_16;
  }

  v19 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v20 = *(v19 + 24);
  v21 = a1;
  v22 = *(v13 + 48);
  v34 = v19;
  v35 = v21;
  sub_23C5855B0(&v21[v20], v16, &qword_27E203CB8, &unk_23C8A11F0);
  sub_23C5855B0(&a2[v20], &v16[v22], &qword_27E203CB8, &unk_23C8A11F0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E203CB8, &unk_23C8A11F0);
    if (v23(&v16[v22], 1, v4) != 1)
    {
      sub_23C83155C(&v16[v22], v8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      V6HandleV2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams26TranscriptProtoPersonQueryV6HandleV2eeoiySbAE_AEtFZ_0(v12, v8);
      sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_23C585C34(v16, &qword_27E203CB8, &unk_23C8A11F0);
      if ((V6HandleV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPersonQuery.Handle);
LABEL_13:
    sub_23C585C34(v16, &qword_27E203CC0, &qword_23C8A0EA0);
    goto LABEL_16;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_23C585C34(v16, &qword_27E203CB8, &unk_23C8A11F0);
LABEL_15:
  if (*v35 == *a2)
  {
    v27 = v34;
    v28 = *(v34 + 28);
    v29 = &v35[v28];
    v30 = *&v35[v28 + 8];
    v31 = &a2[v28];
    v32 = *(v31 + 1);
    if (v30)
    {
      if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_23C872014() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v32)
    {
      goto LABEL_16;
    }

    v33 = *(v27 + 32);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v25 = sub_23C871754();
    return v25 & 1;
  }

LABEL_16:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoPersonQueryV6HandleV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v4 != v5)
    {
      v6 = a1;
      v7 = a1[1];
      v8 = a2;
      v9 = sub_23C872014();
      a2 = v8;
      v10 = v9;
      a1 = v6;
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v5)
  {
    return 0;
  }

  v11 = a1[4];
  v12 = a2[4];
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    if (a1[3] != a2[3] || v11 != v12)
    {
      v13 = a1[3];
      if ((sub_23C872014() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_17:
    v14 = *(type metadata accessor for TranscriptProtoPersonQuery.Handle(0) + 28);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  if (!v12)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (v2)
  {
    if (v3 & 1) == 0 || ((v5 ^ v4))
    {
      return 0;
    }
  }

  else if ((v3 & 1) != 0 || v4 != v5)
  {
    return 0;
  }

LABEL_11:
  v7 = *(type metadata accessor for TranscriptProtoASTPickType(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAB78, &unk_23C8A1360);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAB78, &unk_23C8A1360);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAB78, &unk_23C8A1360);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoASTFlatValue(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAB78, &unk_23C8A1360);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB80, &qword_23C878F30);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v21 = _s26AIMLInstrumentationStreams31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_23C585C34(v17, &qword_27E1FAB78, &unk_23C8A1360);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoASTFlatExprV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203898, &qword_23C8A0AF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201A80, &qword_23C88DBF0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201A80, &qword_23C88DBF0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201A80, &qword_23C88DBF0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoASTFlatExpr(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201A80, &qword_23C88DBF0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoAstflatExprEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203898, &qword_23C8A0AF8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v21 = _s26AIMLInstrumentationStreams30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_23C585C34(v17, &qword_27E201A80, &qword_23C88DBF0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A28, &qword_23C8A0C60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201880, &unk_23C8A12D0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201880, &unk_23C8A12D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201880, &unk_23C8A12D0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoDialogType(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201880, &unk_23C8A12D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoDialogFormat);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203A28, &qword_23C8A0C60);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoDialogFormat);
  v21 = _s26AIMLInstrumentationStreams27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoDialogFormat);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoDialogFormat);
  sub_23C585C34(v17, &qword_27E201880, &unk_23C8A12D0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_23C870EC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E38, &qword_23C8A0FE8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v26 = type metadata accessor for TranscriptProtoTimepoint(0);
  v17 = *(v26 + 28);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_23C5855B0(a1 + v17, v16, &unk_27E1F9D10, &qword_23C874E00);
  v29 = a2;
  sub_23C5855B0(a2 + v17, &v16[v18], &unk_27E1F9D10, &qword_23C874E00);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &unk_27E1F9D10, &qword_23C874E00);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v16, v11, &unk_27E1F9D10, &qword_23C874E00);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_23C585C34(v16, &qword_27E203E38, &qword_23C8A0FE8);
LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v27;
  (*(v5 + 32))(v27, &v16[v18], v4);
  sub_23C8314AC(&qword_27E203E40, MEMORY[0x277D21570]);
  v21 = sub_23C871754();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v11, v4);
  sub_23C585C34(v16, &unk_27E1F9D10, &qword_23C874E00);
  if ((v21 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*v28 != *v29 || v28[1] != v29[1] || (v28[2] != v29[2] || v28[3] != v29[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = *(v26 + 32);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v24 = sub_23C871754();
  return v24 & 1;
}

uint64_t sub_23C8193D0(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_23C872014() & 1) != 0)
  {
    v7 = a1[3];
    v8 = a2[3];
    if (v7)
    {
      if (v8)
      {
        v9 = a1[2] == a2[2] && v7 == v8;
        if (v9 || (sub_23C872014() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v8)
    {
LABEL_13:
      v10 = *(a3(0) + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      return sub_23C871754() & 1;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v25 = *(v51 + 24);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_23C5855B0(a1 + v25, v24, &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = v56;
  sub_23C5855B0(v56 + v25, &v24[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_27E1FAB00;
    v30 = &qword_23C878ED8;
    v31 = v24;
LABEL_17:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_18;
  }

  sub_23C5855B0(v24, v19, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_23C8315C4(v19, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v24[v26], v15, type metadata accessor for TranscriptProtoStatementID);
  v32 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v19, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != *(v27 + 8)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 28);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_23C5855B0(v33 + v35, v54, &qword_27E2037A0, &qword_23C8A0A00);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E2037A0, &qword_23C8A0A00);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_23C5855B0(v37, v49, &qword_27E2037A0, &qword_23C8A0A00);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v43 = v37 + v36;
      v44 = v48;
      sub_23C83155C(v43, v48, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v45 = sub_23C8193D0(v40, v44, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_23C8315C4(v44, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_23C8315C4(v40, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_23C585C34(v37, &qword_27E2037A0, &qword_23C8A0A00);
      if ((v45 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_23C8315C4(v40, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &qword_27E2037A8;
    v30 = &qword_23C8A0A08;
    v31 = v37;
    goto LABEL_17;
  }

  sub_23C585C34(v37, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_21:
  if (*(v33 + 16) == *(v27 + 16))
  {
    v46 = *(v34 + 32);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v41 = sub_23C871754();
    return v41 & 1;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v70 = *(Payload - 8);
  v71 = Payload;
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](Payload);
  v66 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AE8, &qword_23C8A0D10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v66 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AF0, &qword_23C8A0D18);
  v10 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v66 - v11;
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AF8, &unk_23C8A1290);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = (&v66 - v17);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B00, &qword_23C8A0D20);
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v66 - v19;
  v20 = type metadata accessor for TranscriptProtoStatementID(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v66 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v66 - v32;
  v34 = *(v31 + 56);
  v78 = a1;
  sub_23C5855B0(a1, &v66 - v32, &qword_27E1FAAF8, &unk_23C8A1180);
  v79 = a2;
  sub_23C5855B0(a2, &v33[v34], &qword_27E1FAAF8, &unk_23C8A1180);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_23C585C34(v33, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_27E1FAB00;
    v37 = &qword_23C878ED8;
    v38 = v33;
LABEL_21:
    sub_23C585C34(v38, v36, v37);
    goto LABEL_22;
  }

  sub_23C5855B0(v33, v28, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v33[v34], v24, type metadata accessor for TranscriptProtoStatementID);
  v39 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v28, v24);
  sub_23C8315C4(v24, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v28, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v33, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v41 = Step[5];
  v42 = *(v74 + 48);
  v44 = v77;
  v43 = v78;
  sub_23C5855B0(v78 + v41, v77, &qword_27E203AF8, &unk_23C8A1290);
  v45 = v79;
  sub_23C5855B0(v79 + v41, v44 + v42, &qword_27E203AF8, &unk_23C8A1290);
  v46 = v76;
  v47 = *(v75 + 48);
  if (v47(v44, 1, v76) != 1)
  {
    v48 = v73;
    sub_23C5855B0(v44, v73, &qword_27E203AF8, &unk_23C8A1290);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v49 = v44 + v42;
      v50 = v68;
      sub_23C83155C(v49, v68, type metadata accessor for TranscriptProtoActionParameterContext);
      v51 = _s26AIMLInstrumentationStreams37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(v48, v50);
      sub_23C8315C4(v50, type metadata accessor for TranscriptProtoActionParameterContext);
      sub_23C8315C4(v48, type metadata accessor for TranscriptProtoActionParameterContext);
      sub_23C585C34(v44, &qword_27E203AF8, &unk_23C8A1290);
      if ((v51 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoActionParameterContext);
    goto LABEL_13;
  }

  if (v47(v44 + v42, 1, v46) != 1)
  {
LABEL_13:
    v36 = &qword_27E203B00;
    v37 = &qword_23C8A0D20;
    v38 = v44;
    goto LABEL_21;
  }

  sub_23C585C34(v44, &qword_27E203AF8, &unk_23C8A1290);
LABEL_15:
  v52 = Step[6];
  v53 = *(v69 + 48);
  v54 = v72;
  sub_23C5855B0(v43 + v52, v72, &qword_27E203AE8, &qword_23C8A0D10);
  v55 = v45 + v52;
  v56 = v54;
  sub_23C5855B0(v55, v54 + v53, &qword_27E203AE8, &qword_23C8A0D10);
  v57 = v71;
  v58 = *(v70 + 48);
  if (v58(v54, 1, v71) == 1)
  {
    if (v58(v54 + v53, 1, v57) == 1)
    {
      sub_23C585C34(v54, &qword_27E203AE8, &qword_23C8A0D10);
LABEL_25:
      v65 = Step[7];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v60 = sub_23C871754();
      return v60 & 1;
    }

    goto LABEL_20;
  }

  v59 = v67;
  sub_23C5855B0(v56, v67, &qword_27E203AE8, &qword_23C8A0D10);
  if (v58(v56 + v53, 1, v57) == 1)
  {
    sub_23C8315C4(v59, type metadata accessor for TranscriptProtoQueryPayload);
LABEL_20:
    v36 = &qword_27E203AF0;
    v37 = &qword_23C8A0D18;
    v38 = v56;
    goto LABEL_21;
  }

  v62 = v56 + v53;
  v63 = v66;
  sub_23C83155C(v62, v66, type metadata accessor for TranscriptProtoQueryPayload);
  PayloadV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(v59, v63);
  sub_23C8315C4(v63, type metadata accessor for TranscriptProtoQueryPayload);
  sub_23C8315C4(v59, type metadata accessor for TranscriptProtoQueryPayload);
  sub_23C585C34(v56, &qword_27E203AE8, &qword_23C8A0D10);
  if (PayloadV2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v60 = 0;
  return v60 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB98, &qword_23C878F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA0, &qword_23C878F48);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_16;
    }
  }

  v26 = v8;
  v27 = type metadata accessor for TranscriptProtoParameter(0);
  v18 = *(v27 + 24);
  v19 = *(v13 + 48);
  sub_23C5855B0(a1 + v18, v16, &qword_27E1FAB98, &qword_23C878F40);
  sub_23C5855B0(a2 + v18, &v16[v19], &qword_27E1FAB98, &qword_23C878F40);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB98, &qword_23C878F40);
LABEL_19:
      v25 = *(v27 + 28);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v21 = sub_23C871754();
      return v21 & 1;
    }

    goto LABEL_15;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAB98, &qword_23C878F40);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoCandidate);
LABEL_15:
    sub_23C585C34(v16, &qword_27E1FABA0, &qword_23C878F48);
    goto LABEL_16;
  }

  v23 = v26;
  sub_23C83155C(&v16[v19], v26, type metadata accessor for TranscriptProtoCandidate);
  v24 = _s26AIMLInstrumentationStreams24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(v12, v23);
  sub_23C8315C4(v23, type metadata accessor for TranscriptProtoCandidate);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoCandidate);
  sub_23C585C34(v16, &qword_27E1FAB98, &qword_23C878F40);
  if (v24)
  {
    goto LABEL_19;
  }

LABEL_16:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      v3 = *(type metadata accessor for TranscriptProtoCandidatePromptStatus(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      return sub_23C871754() & 1;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (a1[1])
    {
      if (v5)
      {
        if ((a2[1] & 1) != 0 && v6)
        {
          goto LABEL_3;
        }
      }

      else if ((a2[1] & 1) != 0 && !v6)
      {
        goto LABEL_3;
      }
    }

    else if ((a2[1] & 1) == 0 && v5 == v6)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v81 = a2;
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v66 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v66 - v10;
  v11 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB8, &unk_23C8A11E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = (&v66 - v16);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC0, &qword_23C878F60);
  v17 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v66 - v18;
  v19 = type metadata accessor for ToolKitProtoTypedValue(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v66 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v66 - v31;
  v79 = type metadata accessor for TranscriptProtoCandidate(0);
  v80 = a1;
  v33 = *(v79 + 20);
  v34 = *(v29 + 56);
  sub_23C5855B0(&a1[v33], v32, &qword_27E1FAB68, &unk_23C879140);
  v35 = v81;
  sub_23C5855B0(&v81[v33], &v32[v34], &qword_27E1FAB68, &unk_23C879140);
  v36 = *(v20 + 48);
  if (v36(v32, 1, v19) == 1)
  {
    if (v36(&v32[v34], 1, v19) == 1)
    {
      sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_9;
    }

LABEL_6:
    v37 = &qword_27E1FAB70;
    v38 = &qword_23C878F28;
    v39 = v32;
LABEL_7:
    sub_23C585C34(v39, v37, v38);
    goto LABEL_25;
  }

  sub_23C5855B0(v32, v27, &qword_27E1FAB68, &unk_23C879140);
  if (v36(&v32[v34], 1, v19) == 1)
  {
    sub_23C8315C4(v27, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v32[v34], v23, type metadata accessor for ToolKitProtoTypedValue);
  v40 = static ToolKitProtoTypedValue.== infix(_:_:)(v27, v23);
  sub_23C8315C4(v23, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v27, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  if ((v40 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v41 = v80;
  if (*v80 != *v35)
  {
    goto LABEL_25;
  }

  v42 = v78;
  v43 = v79;
  v44 = *(v79 + 24);
  v45 = *(v75 + 48);
  sub_23C5855B0(&v80[v44], v78, &qword_27E1FABB8, &unk_23C8A11E0);
  sub_23C5855B0(&v35[v44], v42 + v45, &qword_27E1FABB8, &unk_23C8A11E0);
  v46 = v77;
  v47 = *(v76 + 48);
  if (v47(v42, 1, v77) == 1)
  {
    if (v47(v42 + v45, 1, v46) == 1)
    {
      sub_23C585C34(v42, &qword_27E1FABB8, &unk_23C8A11E0);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v48 = v74;
  sub_23C5855B0(v42, v74, &qword_27E1FABB8, &unk_23C8A11E0);
  if (v47(v42 + v45, 1, v46) == 1)
  {
    sub_23C8315C4(v48, type metadata accessor for TranscriptProtoCandidatePromptStatus);
LABEL_15:
    v37 = &qword_27E1FABC0;
    v38 = &qword_23C878F60;
    v39 = v42;
    goto LABEL_7;
  }

  v49 = v42 + v45;
  v50 = v69;
  sub_23C83155C(v49, v69, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  v51 = _s26AIMLInstrumentationStreams36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(v48, v50);
  sub_23C8315C4(v50, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_23C585C34(v42, &qword_27E1FABB8, &unk_23C8A11E0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v52 = *(v43 + 28);
  v53 = *(v70 + 48);
  v54 = v73;
  sub_23C5855B0(&v41[v52], v73, &qword_27E1FAAF8, &unk_23C8A1180);
  v55 = &v35[v52];
  v56 = v54;
  sub_23C5855B0(v55, v54 + v53, &qword_27E1FAAF8, &unk_23C8A1180);
  v57 = v72;
  v58 = *(v71 + 48);
  if (v58(v54, 1, v72) != 1)
  {
    v59 = v68;
    sub_23C5855B0(v56, v68, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v58(v56 + v53, 1, v57) != 1)
    {
      v60 = v56 + v53;
      v61 = v67;
      sub_23C83155C(v60, v67, type metadata accessor for TranscriptProtoStatementID);
      v62 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v59, v61);
      sub_23C8315C4(v61, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v59, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v56, &qword_27E1FAAF8, &unk_23C8A1180);
      if (v62)
      {
        goto LABEL_24;
      }

LABEL_25:
      v64 = 0;
      return v64 & 1;
    }

    sub_23C8315C4(v59, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_22;
  }

  if (v58(v54 + v53, 1, v57) != 1)
  {
LABEL_22:
    v37 = &qword_27E1FAB00;
    v38 = &qword_23C878ED8;
    v39 = v56;
    goto LABEL_7;
  }

  sub_23C585C34(v54, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_24:
  v63 = *(v43 + 32);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v64 = sub_23C871754();
  return v64 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22TranscriptProtoUILabelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD0, &unk_23C8A1300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD8, &qword_23C878F70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FABD0, &unk_23C8A1300);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FABD0, &unk_23C8A1300);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FABD0, &unk_23C8A1300);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoUILabel(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FABD0, &unk_23C8A1300);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoLabel);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FABD8, &qword_23C878F70);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoLabel);
  v21 = static TranscriptProtoLabel.== infix(_:_:)(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoLabel);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoLabel);
  sub_23C585C34(v17, &qword_27E1FABD0, &unk_23C8A1300);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203958, &qword_23C8A0BB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E2019A0, &unk_23C8A1340);
  sub_23C5855B0(a2, &v17[v18], &qword_27E2019A0, &unk_23C8A1340);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E2019A0, &unk_23C8A1340);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E2019A0, &unk_23C8A1340);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203958, &qword_23C8A0BB8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v21 = _s26AIMLInstrumentationStreams51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_23C585C34(v17, &qword_27E2019A0, &unk_23C8A1340);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203998, &unk_23C8A1310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v70 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039A0, &qword_23C8A0BF0);
  v11 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v13 = &v70 - v12;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v75 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v70 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v20 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = &v70 - v21;
  v22 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039A8, &qword_23C8A0BF8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039B0, &qword_23C8A0C00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v70 - v33;
  v35 = a1[3];
  v36 = a2[3];
  if (v35)
  {
    if (!v36 || (a1[2] != a2[2] || v35 != v36) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v36)
  {
    goto LABEL_33;
  }

  v70 = v7;
  v71 = v13;
  v37 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v38 = *(v37 + 24);
  v39 = a1;
  v40 = *(v31 + 48);
  v72 = v37;
  v73 = v39;
  sub_23C5855B0(v39 + v38, v34, &qword_27E2039A8, &qword_23C8A0BF8);
  v41 = a2 + v38;
  v42 = a2;
  sub_23C5855B0(v41, &v34[v40], &qword_27E2039A8, &qword_23C8A0BF8);
  v43 = *(v23 + 48);
  if (v43(v34, 1, v22) == 1)
  {
    if (v43(&v34[v40], 1, v22) == 1)
    {
      sub_23C585C34(v34, &qword_27E2039A8, &qword_23C8A0BF8);
      goto LABEL_15;
    }

LABEL_13:
    v44 = &qword_27E2039B0;
    v45 = &qword_23C8A0C00;
    v46 = v34;
LABEL_32:
    sub_23C585C34(v46, v44, v45);
    goto LABEL_33;
  }

  sub_23C5855B0(v34, v30, &qword_27E2039A8, &qword_23C8A0BF8);
  if (v43(&v34[v40], 1, v22) == 1)
  {
    sub_23C8315C4(v30, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    goto LABEL_13;
  }

  sub_23C83155C(&v34[v40], v26, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  v47 = _s26AIMLInstrumentationStreams47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(v30, v26);
  sub_23C8315C4(v26, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_23C8315C4(v30, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_23C585C34(v34, &qword_27E2039A8, &qword_23C8A0BF8);
  if ((v47 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_15:
  v48 = v73;
  if ((*v73 != *a2 || v73[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_33;
  }

  v49 = v72;
  v50 = *(v72 + 28);
  v51 = *(v80 + 48);
  v52 = v83;
  sub_23C5855B0(v48 + v50, v83, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v42 + v50, v52 + v51, &qword_27E1FAAF8, &unk_23C8A1180);
  v53 = v82;
  v54 = *(v81 + 48);
  if (v54(v52, 1, v82) != 1)
  {
    v55 = v79;
    sub_23C5855B0(v52, v79, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v54(v52 + v51, 1, v53) != 1)
    {
      v56 = v52 + v51;
      v57 = v75;
      sub_23C83155C(v56, v75, type metadata accessor for TranscriptProtoStatementID);
      v58 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v55, v57);
      sub_23C8315C4(v57, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v55, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v52, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v58 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    sub_23C8315C4(v55, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    v44 = &qword_27E1FAB00;
    v45 = &qword_23C878ED8;
LABEL_31:
    v46 = v52;
    goto LABEL_32;
  }

  if (v54(v52 + v51, 1, v53) != 1)
  {
    goto LABEL_23;
  }

  sub_23C585C34(v52, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
  v59 = *(v49 + 32);
  v60 = *(v76 + 48);
  v52 = v71;
  sub_23C5855B0(v48 + v59, v71, &qword_27E203998, &unk_23C8A1310);
  sub_23C5855B0(v42 + v59, v52 + v60, &qword_27E203998, &unk_23C8A1310);
  v61 = v78;
  v62 = *(v77 + 48);
  if (v62(v52, 1, v78) == 1)
  {
    if (v62(v52 + v60, 1, v61) == 1)
    {
      sub_23C585C34(v52, &qword_27E203998, &unk_23C8A1310);
LABEL_36:
      v69 = *(v49 + 36);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v64 = sub_23C871754();
      return v64 & 1;
    }

    goto LABEL_30;
  }

  v63 = v74;
  sub_23C5855B0(v52, v74, &qword_27E203998, &unk_23C8A1310);
  if (v62(v52 + v60, 1, v61) == 1)
  {
    sub_23C8315C4(v63, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
LABEL_30:
    v44 = &qword_27E2039A0;
    v45 = &qword_23C8A0BF0;
    goto LABEL_31;
  }

  v66 = v52 + v60;
  v67 = v70;
  sub_23C83155C(v66, v70, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  v68 = _s26AIMLInstrumentationStreams42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(v63, v67);
  sub_23C8315C4(v67, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_23C8315C4(v63, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_23C585C34(v52, &qword_27E203998, &unk_23C8A1310);
  if (v68)
  {
    goto LABEL_36;
  }

LABEL_33:
  v64 = 0;
  return v64 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2014C0, &qword_23C88DBC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DF0, &qword_23C8A0FA8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E2014C0, &qword_23C88DBC0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E2014C0, &qword_23C88DBC0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E2014C0, &qword_23C88DBC0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoRequestContent(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E2014C0, &qword_23C88DBC0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContentEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203DF0, &qword_23C8A0FA8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  v21 = _s26AIMLInstrumentationStreams33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_23C585C34(v17, &qword_27E2014C0, &qword_23C88DBC0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v87 = a2;
  v3 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC0, &unk_23C8A1170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = (&v72 - v8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DC8, &qword_23C8A0F88);
  v9 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v72 - v10;
  v11 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E08, &qword_23C8A0FC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v72 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E10, &qword_23C8A0FC8);
  v17 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v72 - v18;
  v19 = type metadata accessor for TranscriptProtoRequestContent(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD0, &unk_23C8A1160);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v72 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DD8, &qword_23C8A0F90);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v72 - v31;
  v85 = type metadata accessor for TranscriptProtoRequest(0);
  v86 = a1;
  v33 = *(v85 + 20);
  v34 = *(v29 + 56);
  sub_23C5855B0(&a1[v33], v32, &qword_27E203DD0, &unk_23C8A1160);
  v35 = &v87[v33];
  v36 = v87;
  sub_23C5855B0(v35, &v32[v34], &qword_27E203DD0, &unk_23C8A1160);
  v37 = *(v20 + 48);
  if (v37(v32, 1, v19) != 1)
  {
    sub_23C5855B0(v32, v27, &qword_27E203DD0, &unk_23C8A1160);
    if (v37(&v32[v34], 1, v19) != 1)
    {
      sub_23C83155C(&v32[v34], v23, type metadata accessor for TranscriptProtoRequestContent);
      v41 = _s26AIMLInstrumentationStreams29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v27, v23);
      sub_23C8315C4(v23, type metadata accessor for TranscriptProtoRequestContent);
      sub_23C8315C4(v27, type metadata accessor for TranscriptProtoRequestContent);
      sub_23C585C34(v32, &qword_27E203DD0, &unk_23C8A1160);
      if ((v41 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v27, type metadata accessor for TranscriptProtoRequestContent);
LABEL_6:
    v38 = &qword_27E203DD8;
    v39 = &qword_23C8A0F90;
    v40 = v32;
    goto LABEL_7;
  }

  if (v37(&v32[v34], 1, v19) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v32, &qword_27E203DD0, &unk_23C8A1160);
LABEL_9:
  v42 = v86;
  if (*v86 != *v36)
  {
    goto LABEL_10;
  }

  v45 = v84;
  v46 = v85;
  v47 = *(v85 + 24);
  v48 = *(v81 + 48);
  sub_23C5855B0(&v86[v47], v84, &qword_27E203E08, &qword_23C8A0FC0);
  sub_23C5855B0(&v36[v47], v45 + v48, &qword_27E203E08, &qword_23C8A0FC0);
  v49 = v83;
  v50 = *(v82 + 48);
  if (v50(v45, 1, v83) == 1)
  {
    if (v50(v45 + v48, 1, v49) == 1)
    {
      sub_23C585C34(v45, &qword_27E203E08, &qword_23C8A0FC0);
      goto LABEL_19;
    }
  }

  else
  {
    v51 = v80;
    sub_23C5855B0(v45, v80, &qword_27E203E08, &qword_23C8A0FC0);
    if (v50(v45 + v48, 1, v49) != 1)
    {
      v52 = v45 + v48;
      v53 = v79;
      sub_23C83155C(v52, v79, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      v54 = _s26AIMLInstrumentationStreams36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(v51, v53);
      sub_23C8315C4(v53, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_23C8315C4(v51, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_23C585C34(v45, &qword_27E203E08, &qword_23C8A0FC0);
      if ((v54 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_19:
      v55 = v46[7];
      v56 = &v42[v55];
      v57 = *&v42[v55 + 8];
      v58 = &v36[v55];
      v59 = *(v58 + 1);
      if (v57)
      {
        if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v59)
      {
        goto LABEL_10;
      }

      v60 = v46[8];
      v61 = *(v75 + 48);
      v62 = v78;
      sub_23C5855B0(&v42[v60], v78, &qword_27E203DC0, &unk_23C8A1170);
      v63 = &v36[v60];
      v64 = v62;
      sub_23C5855B0(v63, v62 + v61, &qword_27E203DC0, &unk_23C8A1170);
      v65 = v77;
      v66 = *(v76 + 48);
      if (v66(v62, 1, v77) == 1)
      {
        if (v66(v62 + v61, 1, v65) == 1)
        {
          sub_23C585C34(v62, &qword_27E203DC0, &unk_23C8A1170);
          goto LABEL_29;
        }
      }

      else
      {
        v68 = v74;
        sub_23C5855B0(v64, v74, &qword_27E203DC0, &unk_23C8A1170);
        if (v66(v64 + v61, 1, v65) != 1)
        {
          v69 = v64 + v61;
          v70 = v73;
          sub_23C83155C(v69, v73, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          if (*v68 == *v70 && v68[1] == v70[1] || (sub_23C872014()) && (sub_23C5D25E0(v68[2], v70[2]))
          {
            v71 = *(v65 + 24);
            sub_23C870F34();
            sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
            LOBYTE(v71) = sub_23C871754();
            sub_23C8315C4(v70, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            sub_23C8315C4(v68, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            sub_23C585C34(v64, &qword_27E203DC0, &unk_23C8A1170);
            if ((v71 & 1) == 0)
            {
              goto LABEL_10;
            }

LABEL_29:
            v67 = v46[9];
            sub_23C870F34();
            sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
            v43 = sub_23C871754();
            return v43 & 1;
          }

          sub_23C8315C4(v70, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          sub_23C8315C4(v68, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          v38 = &qword_27E203DC0;
          v39 = &unk_23C8A1170;
          goto LABEL_40;
        }

        sub_23C8315C4(v68, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      }

      v38 = &qword_27E203DC8;
      v39 = &qword_23C8A0F88;
LABEL_40:
      v40 = v64;
      goto LABEL_7;
    }

    sub_23C8315C4(v51, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  }

  v38 = &qword_27E203E10;
  v39 = &qword_23C8A0FC8;
  v40 = v45;
LABEL_7:
  sub_23C585C34(v40, v38, v39);
LABEL_10:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23C6F73FC(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || (a1[2] != a2[2] || v4 != v5) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_14;
    }
  }

  else if (!v7)
  {
LABEL_14:
    v8 = *(type metadata accessor for TranscriptProtoArchiveViewPayload(0) + 28);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE8, &qword_23C878F80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FABE0, &qword_23C878F78);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FABE0, &qword_23C878F78);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FABE0, &qword_23C878F78);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoUIType(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FABE0, &qword_23C878F78);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoUitype);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FABE8, &qword_23C878F80);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoUitype);
  v21 = _s26AIMLInstrumentationStreams21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoUitype);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoUitype);
  sub_23C585C34(v17, &qword_27E1FABE0, &qword_23C878F78);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037B0, &qword_23C8A0A10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201AC8, &unk_23C8A1370);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201AC8, &unk_23C8A1370);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201AC8, &unk_23C8A1370);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoValueExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201AC8, &unk_23C8A1370);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoValueExpressionEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E2037B0, &qword_23C8A0A10);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoValueExpressionEnum);
  v21 = _s26AIMLInstrumentationStreams34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_23C585C34(v17, &qword_27E201AC8, &unk_23C8A1370);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037C0, &qword_23C8A0A20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201AB8, &qword_23C88DBF8);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201AB8, &qword_23C88DBF8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201AB8, &qword_23C88DBF8);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoExpression(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201AB8, &qword_23C88DBF8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExpressionEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E2037C0, &qword_23C8A0A20);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoExpressionEnum);
  v21 = _s26AIMLInstrumentationStreams29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_23C585C34(v17, &qword_27E201AB8, &qword_23C88DBF8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoProgramStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExpression(0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203758, &qword_23C8A09C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v54 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203760, &qword_23C8A09D0);
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v54 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v54 - v24;
  v26 = *(v23 + 56);
  v60 = a1;
  sub_23C5855B0(a1, &v54 - v24, &qword_27E1FAAF8, &unk_23C8A1180);
  v61 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_23C585C34(v25, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_8;
    }

LABEL_6:
    v28 = &qword_27E1FAB00;
    v29 = &qword_23C878ED8;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  sub_23C5855B0(v25, v20, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementID);
  v31 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v16);
  sub_23C8315C4(v16, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v25, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v31 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v32 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v33 = v32[5];
  v34 = *(v56 + 48);
  v36 = v59;
  v35 = v60;
  sub_23C5855B0(v60 + v33, v59, &qword_27E203758, &qword_23C8A09C8);
  v37 = v61 + v33;
  v38 = v61;
  sub_23C5855B0(v37, v36 + v34, &qword_27E203758, &qword_23C8A09C8);
  v39 = v58;
  v40 = *(v57 + 48);
  if (v40(v36, 1, v58) != 1)
  {
    v41 = v55;
    sub_23C5855B0(v36, v55, &qword_27E203758, &qword_23C8A09C8);
    if (v40(v36 + v34, 1, v39) != 1)
    {
      v44 = v36 + v34;
      v45 = v54;
      sub_23C83155C(v44, v54, type metadata accessor for TranscriptProtoExpression);
      v46 = _s26AIMLInstrumentationStreams25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(v41, v45);
      sub_23C8315C4(v45, type metadata accessor for TranscriptProtoExpression);
      sub_23C8315C4(v41, type metadata accessor for TranscriptProtoExpression);
      sub_23C585C34(v36, &qword_27E203758, &qword_23C8A09C8);
      if ((v46 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    sub_23C8315C4(v41, type metadata accessor for TranscriptProtoExpression);
    goto LABEL_13;
  }

  if (v40(v36 + v34, 1, v39) != 1)
  {
LABEL_13:
    v28 = &qword_27E203760;
    v29 = &qword_23C8A09D0;
    v30 = v36;
    goto LABEL_14;
  }

  sub_23C585C34(v36, &qword_27E203758, &qword_23C8A09C8);
LABEL_18:
  v47 = v32[6];
  v48 = *(v35 + v47);
  v49 = *(v38 + v47);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
  {
    goto LABEL_15;
  }

  v50 = v32[7];
  v51 = *(v35 + v50);
  v52 = *(v38 + v50);
  if (v51 == 2)
  {
    if (v52 == 2)
    {
LABEL_28:
      v53 = v32[8];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v42 = sub_23C871754();
      return v42 & 1;
    }
  }

  else if (v52 != 2 && ((v51 ^ v52) & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t _s26AIMLInstrumentationStreams19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || (sub_23C5DEB20(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (*(a1 + 40) != *(a2 + 40) || v6 != v7) && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v8 = *(a1 + 56);
    v9 = *(a2 + 56);
    if (v8 == 4)
    {
      if (v9 != 4)
      {
        return 0;
      }
    }

    else if (v9 == 4 || qword_23C8A1118[v8] != qword_23C8A1118[v9])
    {
      return 0;
    }

    v10 = *(type metadata accessor for TranscriptProtoPlan(0) + 36);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams062TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestE4ToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
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
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams053TranscriptProtoSystemRequirementAuthenticationRequestG5LevelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    v4 = *(type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0) + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  if (v3 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams041TranscriptProtoUpdateParameterExpression_eF0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v30 = v8;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v17 = updated[6];
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v30;
      sub_23C83155C(&v16[v18], v30, type metadata accessor for TranscriptProtoStatementID);
      v23 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v22);
      sub_23C8315C4(v22, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_10:
    sub_23C585C34(v16, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_14:
  v24 = updated[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (v28)
    {
LABEL_20:
      v29 = updated[8];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableg4LinkG0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0 || (sub_23C6F73FC(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0) + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC8, &qword_23C8A0DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BD0, &qword_23C8A0DD8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E203BC8, &qword_23C8A0DD0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E203BC8, &qword_23C8A0DD0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E203BC8, &qword_23C8A0DD0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E203BC8, &qword_23C8A0DD0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203BD0, &qword_23C8A0DD8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  v21 = _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG4EnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C585C34(v17, &qword_27E203BC8, &qword_23C8A0DD0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams035TranscriptProtoRequestContentSpeechF0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v51 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v13 = &v51 - v12;
  v14 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DE0, &qword_23C8A0F98);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v51 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203DE8, &qword_23C8A0FA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  v27 = *a1;
  v28 = a1[1];
  v58 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v53 = v13;
  v51 = v7;
  v29 = a2;
  v52 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v30 = *(v52 + 20);
  v31 = *(v23 + 48);
  sub_23C5855B0(v58 + v30, v26, &qword_27E203DE0, &qword_23C8A0F98);
  sub_23C5855B0(v29 + v30, &v26[v31], &qword_27E203DE0, &qword_23C8A0F98);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) == 1)
  {
    if (v32(&v26[v31], 1, v14) == 1)
    {
      sub_23C585C34(v26, &qword_27E203DE0, &qword_23C8A0F98);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  sub_23C5855B0(v26, v22, &qword_27E203DE0, &qword_23C8A0F98);
  if (v32(&v26[v31], 1, v14) == 1)
  {
    sub_23C8315C4(v22, type metadata accessor for TranscriptProtoSpeechPackage);
LABEL_12:
    v39 = &qword_27E203DE8;
    v40 = &qword_23C8A0FA0;
LABEL_13:
    v41 = v26;
LABEL_14:
    sub_23C585C34(v41, v39, v40);
    goto LABEL_15;
  }

  sub_23C83155C(&v26[v31], v18, type metadata accessor for TranscriptProtoSpeechPackage);
  if ((sub_23C5DEB74(*v22, *v18) & 1) == 0)
  {
    sub_23C8315C4(v18, type metadata accessor for TranscriptProtoSpeechPackage);
    sub_23C8315C4(v22, type metadata accessor for TranscriptProtoSpeechPackage);
    v39 = &qword_27E203DE0;
    v40 = &qword_23C8A0F98;
    goto LABEL_13;
  }

  v44 = *(v14 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v45 = sub_23C871754();
  sub_23C8315C4(v18, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_23C8315C4(v22, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_23C585C34(v26, &qword_27E203DE0, &qword_23C8A0F98);
  if ((v45 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  v34 = v52;
  v33 = v53;
  v35 = *(v52 + 24);
  v36 = *(v55 + 48);
  sub_23C5855B0(v58 + v35, v53, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(v29 + v35, v33 + v36, &qword_27E1FAAF8, &unk_23C8A1180);
  v37 = v57;
  v38 = *(v56 + 48);
  if (v38(v33, 1, v57) == 1)
  {
    if (v38(v33 + v36, 1, v37) == 1)
    {
      sub_23C585C34(v33, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
      v50 = *(v34 + 28);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v42 = sub_23C871754();
      return v42 & 1;
    }

    goto LABEL_22;
  }

  v46 = v54;
  sub_23C5855B0(v33, v54, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v38(v33 + v36, 1, v37) == 1)
  {
    sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementID);
LABEL_22:
    v39 = &qword_27E1FAB00;
    v40 = &qword_23C878ED8;
    v41 = v33;
    goto LABEL_14;
  }

  v47 = v33 + v36;
  v48 = v51;
  sub_23C83155C(v47, v51, type metadata accessor for TranscriptProtoStatementID);
  v49 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v46, v48);
  sub_23C8315C4(v48, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v46, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v33, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v49)
  {
    goto LABEL_25;
  }

LABEL_15:
  v42 = 0;
  return v42 & 1;
}

uint64_t _s26AIMLInstrumentationStreams033TranscriptProtoRequestContentTextF0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_12:
      v23 = *(v26 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_9:
    sub_23C585C34(v16, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_10;
  }

  v21 = v25;
  sub_23C83155C(&v16[v18], v25, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_23C8315C4(v21, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v16, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C10, &qword_23C8A0E08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201710, &qword_23C88DBE0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201710, &qword_23C88DBE0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201710, &qword_23C88DBE0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoActionFailureFailure(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201710, &qword_23C88DBE0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C10, &qword_23C8A0E08);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v21 = _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF4EnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_23C585C34(v17, &qword_27E201710, &qword_23C88DBE0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2)
    {
      if (v3)
      {
        if (*(a1 + 8) == *(a2 + 8) && v2 == v3)
        {
          goto LABEL_9;
        }

        v5 = *(a1 + 8);
        if (sub_23C872014())
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v3)
    {
LABEL_9:
      v6 = *(type metadata accessor for TranscriptProtoStatementID(0) + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      return sub_23C871754() & 1;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v68 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = (&v59 - v8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A8, &qword_23C8A0A08);
  v9 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v65 = &v59 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  v66 = type metadata accessor for TranscriptProtoAction(0);
  v67 = a1;
  v25 = *(v66 + 24);
  v26 = *(v21 + 56);
  sub_23C5855B0(&a1[v25], v24, &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = v68;
  sub_23C5855B0(&v68[v25], &v24[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
      goto LABEL_11;
    }

LABEL_6:
    v29 = &qword_27E1FAB00;
    v30 = &qword_23C878ED8;
    v31 = v24;
LABEL_7:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_8;
  }

  sub_23C5855B0(v24, v19, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_23C8315C4(v19, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_23C83155C(&v24[v26], v15, type metadata accessor for TranscriptProtoStatementID);
  v34 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v19, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((v34 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = v66;
  v35 = v67;
  v37 = *(v66 + 28);
  v38 = &v67[v37];
  v39 = *&v67[v37 + 8];
  v40 = &v27[v37];
  v41 = *(v40 + 1);
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v41)
  {
    goto LABEL_8;
  }

  if (*v35 != *v27 || (sub_23C7FE23C(*(v35 + 1), *(v27 + 1)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v42 = v36[8];
  v43 = &v35[v42];
  v44 = *&v35[v42 + 8];
  v45 = &v27[v42];
  v46 = *(v45 + 1);
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v46)
  {
    goto LABEL_8;
  }

  v47 = v36[9];
  v48 = *(v62 + 48);
  v49 = v65;
  sub_23C5855B0(&v35[v47], v65, &qword_27E2037A0, &qword_23C8A0A00);
  v50 = &v27[v47];
  v51 = v49;
  sub_23C5855B0(v50, v49 + v48, &qword_27E2037A0, &qword_23C8A0A00);
  v52 = v64;
  v53 = *(v63 + 48);
  if (v53(v49, 1, v64) == 1)
  {
    if (v53(v49 + v48, 1, v52) == 1)
    {
      sub_23C585C34(v49, &qword_27E2037A0, &qword_23C8A0A00);
LABEL_34:
      v58 = v36[10];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_32;
  }

  v54 = v61;
  sub_23C5855B0(v51, v61, &qword_27E2037A0, &qword_23C8A0A00);
  if (v53(v51 + v48, 1, v52) == 1)
  {
    sub_23C8315C4(v54, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_32:
    v29 = &qword_27E2037A8;
    v30 = &qword_23C8A0A08;
    v31 = v51;
    goto LABEL_7;
  }

  v55 = v51 + v48;
  v56 = v60;
  sub_23C83155C(v55, v60, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v57 = sub_23C8193D0(v54, v56, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v56, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8315C4(v54, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C585C34(v51, &qword_27E2037A0, &qword_23C8A0A00);
  if (v57)
  {
    goto LABEL_34;
  }

LABEL_8:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_23C82007C(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_23C872014() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E18, &qword_23C8A0FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E20, &qword_23C8A0FD8);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E28, &unk_23C8A1150);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v45 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E30, &qword_23C8A0FE0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E203E28, &unk_23C8A1150);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E203E28, &unk_23C8A1150);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E203E28, &unk_23C8A1150);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoLocaleSettings);
      v31 = sub_23C82007C(v20, v16, type metadata accessor for TranscriptProtoLocaleSettings);
      sub_23C8315C4(v16, type metadata accessor for TranscriptProtoLocaleSettings);
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoLocaleSettings);
      sub_23C585C34(v25, &qword_27E203E28, &unk_23C8A1150);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoLocaleSettings);
LABEL_6:
    v28 = &qword_27E203E30;
    v29 = &qword_23C8A0FE0;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E203E28, &unk_23C8A1150);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoSessionStart(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E203E18, &qword_23C8A0FD0);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E203E18, &qword_23C8A0FD0);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E203E18, &qword_23C8A0FD0);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E203E18, &qword_23C8A0FD0);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for TranscriptProtoDeviceDetails);
LABEL_13:
    v28 = &qword_27E203E20;
    v29 = &qword_23C8A0FD8;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C83155C(v41, v45, type metadata accessor for TranscriptProtoDeviceDetails);
  v43 = _s26AIMLInstrumentationStreams28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_23C8315C4(v42, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_23C8315C4(v38, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_23C585C34(v35, &qword_27E203E18, &qword_23C8A0FD0);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203E48, &qword_23C8A0FF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1F9958, &qword_23C873E10);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1F9958, &qword_23C873E10);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1F9958, &qword_23C873E10);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoPayload(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1F9958, &qword_23C873E10);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203E48, &qword_23C8A0FF0);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoPayloadEnum);
  v21 = _s26AIMLInstrumentationStreams26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C585C34(v17, &qword_27E1F9958, &qword_23C873E10);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams20TranscriptProtoEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v104 = type metadata accessor for TranscriptProtoSpanID(0);
  v116 = *(v104 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v104);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = (&v96 - v9);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F40, &qword_23C8A10E8);
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v12 = &v96 - v11;
  v13 = type metadata accessor for TranscriptProtoParticipantID(0);
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v13);
  v102 = (&v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF48, &unk_23C8A1140);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v105 = (&v96 - v18);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F48, &qword_23C8A10F0);
  v19 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v110 = &v96 - v20;
  v21 = type metadata accessor for TranscriptProtoTimepoint(0);
  v113 = *(v21 - 8);
  v114 = v21;
  v22 = *(v113 + 64);
  MEMORY[0x28223BE20](v21);
  v106 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v111 = (&v96 - v26);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F50, &qword_23C8A10F8);
  v27 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v115 = &v96 - v28;
  v29 = type metadata accessor for TranscriptProtoPayload(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v96 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F58, &qword_23C8A1100);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v96 - v40;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_21;
  }

  v42 = a1[12];
  v43 = a2[12];
  if (v42)
  {
    if (!v43 || (a1[11] != a2[11] || v42 != v43) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v43)
  {
    goto LABEL_21;
  }

  v97 = v6;
  v98 = v12;
  v99 = type metadata accessor for TranscriptProtoEvent(0);
  v100 = a2;
  v44 = *(v99 + 44);
  v45 = *(v38 + 48);
  sub_23C5855B0(a1 + v44, v41, &qword_27E1F9950, &unk_23C87CFF0);
  v46 = v100 + v44;
  v47 = v100;
  sub_23C5855B0(v46, &v41[v45], &qword_27E1F9950, &unk_23C87CFF0);
  v48 = *(v30 + 48);
  if (v48(v41, 1, v29) == 1)
  {
    if (v48(&v41[v45], 1, v29) == 1)
    {
      sub_23C585C34(v41, &qword_27E1F9950, &unk_23C87CFF0);
      goto LABEL_24;
    }

LABEL_19:
    v49 = &qword_27E203F58;
    v50 = &qword_23C8A1100;
    v51 = v41;
    goto LABEL_20;
  }

  sub_23C5855B0(v41, v37, &qword_27E1F9950, &unk_23C87CFF0);
  if (v48(&v41[v45], 1, v29) == 1)
  {
    sub_23C8315C4(v37, type metadata accessor for TranscriptProtoPayload);
    goto LABEL_19;
  }

  sub_23C83155C(&v41[v45], v33, type metadata accessor for TranscriptProtoPayload);
  v54 = _s26AIMLInstrumentationStreams22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(v37, v33);
  sub_23C8315C4(v33, type metadata accessor for TranscriptProtoPayload);
  sub_23C8315C4(v37, type metadata accessor for TranscriptProtoPayload);
  sub_23C585C34(v41, &qword_27E1F9950, &unk_23C87CFF0);
  if ((v54 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  if ((a1[4] != v47[4] || a1[5] != v47[5]) && (sub_23C872014() & 1) == 0 || (a1[6] != v47[6] || a1[7] != v47[7]) && (sub_23C872014() & 1) == 0 || (a1[8] != v47[8] || a1[9] != v47[9]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_21;
  }

  v55 = v99;
  v56 = *(v99 + 48);
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (v47 + v56);
  v60 = v59[1];
  if (v58)
  {
    v62 = v97;
    v61 = v98;
    v63 = v116;
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v62 = v97;
    v61 = v98;
    v63 = v116;
    if (v60)
    {
      goto LABEL_21;
    }
  }

  v64 = v55[13];
  v65 = *(v112 + 48);
  v66 = v115;
  sub_23C5855B0(a1 + v64, v115, &qword_27E1F9D08, &qword_23C87D090);
  sub_23C5855B0(v100 + v64, v66 + v65, &qword_27E1F9D08, &qword_23C87D090);
  v67 = v114;
  v68 = *(v113 + 48);
  if (v68(v66, 1, v114) == 1)
  {
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_23C585C34(v66, &qword_27E1F9D08, &qword_23C87D090);
      goto LABEL_47;
    }

LABEL_45:
    v49 = &qword_27E203F50;
    v50 = &qword_23C8A10F8;
    v51 = v66;
    goto LABEL_20;
  }

  v69 = v61;
  v70 = v62;
  v71 = v111;
  sub_23C5855B0(v66, v111, &qword_27E1F9D08, &qword_23C87D090);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    sub_23C8315C4(v71, type metadata accessor for TranscriptProtoTimepoint);
    goto LABEL_45;
  }

  v72 = v106;
  sub_23C83155C(v66 + v65, v106, type metadata accessor for TranscriptProtoTimepoint);
  v73 = _s26AIMLInstrumentationStreams24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(v71, v72);
  sub_23C8315C4(v72, type metadata accessor for TranscriptProtoTimepoint);
  sub_23C8315C4(v71, type metadata accessor for TranscriptProtoTimepoint);
  sub_23C585C34(v66, &qword_27E1F9D08, &qword_23C87D090);
  v62 = v70;
  v61 = v69;
  v63 = v116;
  if ((v73 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  v74 = v55[14];
  v75 = *(v107 + 48);
  v76 = v110;
  sub_23C5855B0(a1 + v74, v110, &qword_27E1FBF48, &unk_23C8A1140);
  v77 = v76;
  sub_23C5855B0(v100 + v74, v76 + v75, &qword_27E1FBF48, &unk_23C8A1140);
  v78 = v109;
  v79 = *(v108 + 48);
  if (v79(v76, 1, v109) == 1)
  {
    if (v79(v76 + v75, 1, v78) == 1)
    {
      sub_23C585C34(v76, &qword_27E1FBF48, &unk_23C8A1140);
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  v80 = v105;
  sub_23C5855B0(v77, v105, &qword_27E1FBF48, &unk_23C8A1140);
  if (v79(v77 + v75, 1, v78) == 1)
  {
    sub_23C8315C4(v80, type metadata accessor for TranscriptProtoParticipantID);
LABEL_52:
    v49 = &qword_27E203F48;
    v50 = &qword_23C8A10F0;
LABEL_53:
    v51 = v77;
    goto LABEL_20;
  }

  v81 = v77 + v75;
  v82 = v102;
  sub_23C83155C(v81, v102, type metadata accessor for TranscriptProtoParticipantID);
  if ((*v80 != *v82 || v80[1] != v82[1]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C8315C4(v82, type metadata accessor for TranscriptProtoParticipantID);
    sub_23C8315C4(v80, type metadata accessor for TranscriptProtoParticipantID);
    v49 = &qword_27E1FBF48;
    v50 = &unk_23C8A1140;
    goto LABEL_53;
  }

  v83 = *(v78 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v84 = sub_23C871754();
  sub_23C8315C4(v82, type metadata accessor for TranscriptProtoParticipantID);
  sub_23C8315C4(v80, type metadata accessor for TranscriptProtoParticipantID);
  sub_23C585C34(v77, &qword_27E1FBF48, &unk_23C8A1140);
  v55 = v99;
  if ((v84 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_58:
  v85 = v55[15];
  v86 = *(v103 + 48);
  sub_23C5855B0(a1 + v85, v61, &qword_27E1FBF40, &qword_23C87D088);
  v87 = v100 + v85;
  v88 = v100;
  sub_23C5855B0(v87, v61 + v86, &qword_27E1FBF40, &qword_23C87D088);
  v89 = *(v63 + 48);
  v90 = v104;
  if (v89(v61, 1, v104) != 1)
  {
    v92 = v90;
    v93 = v101;
    sub_23C5855B0(v61, v101, &qword_27E1FBF40, &qword_23C87D088);
    if (v89(v61 + v86, 1, v92) == 1)
    {
      sub_23C8315C4(v93, type metadata accessor for TranscriptProtoSpanID);
      goto LABEL_65;
    }

    sub_23C83155C(v61 + v86, v62, type metadata accessor for TranscriptProtoSpanID);
    if (*v93 == *v62)
    {
      v94 = *(v104 + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v88 = v100;
      v95 = sub_23C871754();
      sub_23C8315C4(v62, type metadata accessor for TranscriptProtoSpanID);
      sub_23C8315C4(v93, type metadata accessor for TranscriptProtoSpanID);
      sub_23C585C34(v61, &qword_27E1FBF40, &qword_23C87D088);
      if ((v95 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_61;
    }

    sub_23C8315C4(v62, type metadata accessor for TranscriptProtoSpanID);
    sub_23C8315C4(v93, type metadata accessor for TranscriptProtoSpanID);
    v49 = &qword_27E1FBF40;
    v50 = &qword_23C87D088;
    v51 = v61;
LABEL_20:
    sub_23C585C34(v51, v49, v50);
    goto LABEL_21;
  }

  if (v89(v61 + v86, 1, v90) != 1)
  {
LABEL_65:
    v49 = &qword_27E203F40;
    v50 = &qword_23C8A10E8;
    v51 = v61;
    goto LABEL_20;
  }

  sub_23C585C34(v61, &qword_27E1FBF40, &qword_23C87D088);
LABEL_61:
  if (sub_23C7FF5DC(a1[10], v88[10]))
  {
    v91 = v55[16];
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v52 = sub_23C871754();
    return v52 & 1;
  }

LABEL_21:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s26AIMLInstrumentationStreams015TranscriptProtoC0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a2[4];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[3] == a2[3] && v5 == v6;
    if (!v7 && (sub_23C872014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_23C5DF308(a1[2], a2[2]))
  {
    v8 = *(type metadata accessor for TranscriptProtoTranscript(0) + 28);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

unint64_t sub_23C821A88()
{
  result = qword_27E201608;
  if (!qword_27E201608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201608);
  }

  return result;
}

unint64_t sub_23C821ADC()
{
  result = qword_27E201668;
  if (!qword_27E201668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201668);
  }

  return result;
}

unint64_t sub_23C821B30()
{
  result = qword_27E201788;
  if (!qword_27E201788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201788);
  }

  return result;
}

unint64_t sub_23C821B84()
{
  result = qword_27E201838;
  if (!qword_27E201838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201838);
  }

  return result;
}

unint64_t sub_23C821BD8()
{
  result = qword_27E201A58;
  if (!qword_27E201A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201A58);
  }

  return result;
}

unint64_t sub_23C821C2C()
{
  result = qword_27E201AA8;
  if (!qword_27E201AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201AA8);
  }

  return result;
}

unint64_t sub_23C821C80()
{
  result = qword_27E201AE0;
  if (!qword_27E201AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201AE0);
  }

  return result;
}

unint64_t sub_23C821CD4()
{
  result = qword_27E201AF0;
  if (!qword_27E201AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201AF0);
  }

  return result;
}

unint64_t sub_23C821D28()
{
  result = qword_27E201B00;
  if (!qword_27E201B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201B00);
  }

  return result;
}

unint64_t sub_23C821D7C()
{
  result = qword_27E201B28;
  if (!qword_27E201B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201B28);
  }

  return result;
}

unint64_t sub_23C821DD4()
{
  result = qword_27E201CD8;
  if (!qword_27E201CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CD8);
  }

  return result;
}

unint64_t sub_23C821E2C()
{
  result = qword_27E201CE0;
  if (!qword_27E201CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CE0);
  }

  return result;
}

unint64_t sub_23C821E84()
{
  result = qword_27E201CE8;
  if (!qword_27E201CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CE8);
  }

  return result;
}

unint64_t sub_23C821EDC()
{
  result = qword_27E201CF0;
  if (!qword_27E201CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CF0);
  }

  return result;
}

unint64_t sub_23C821F34()
{
  result = qword_27E201CF8;
  if (!qword_27E201CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201CF8);
  }

  return result;
}

unint64_t sub_23C821F8C()
{
  result = qword_27E201D00;
  if (!qword_27E201D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D00);
  }

  return result;
}

unint64_t sub_23C821FE4()
{
  result = qword_27E201D08;
  if (!qword_27E201D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D08);
  }

  return result;
}

unint64_t sub_23C82203C()
{
  result = qword_27E201D10;
  if (!qword_27E201D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D10);
  }

  return result;
}

unint64_t sub_23C822094()
{
  result = qword_27E201D18;
  if (!qword_27E201D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D18);
  }

  return result;
}

unint64_t sub_23C8220EC()
{
  result = qword_27E201D20;
  if (!qword_27E201D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D20);
  }

  return result;
}

unint64_t sub_23C822144()
{
  result = qword_27E201D28;
  if (!qword_27E201D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D28);
  }

  return result;
}

unint64_t sub_23C82219C()
{
  result = qword_27E201D30;
  if (!qword_27E201D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D30);
  }

  return result;
}

unint64_t sub_23C8221F4()
{
  result = qword_27E201D38;
  if (!qword_27E201D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D38);
  }

  return result;
}

unint64_t sub_23C82224C()
{
  result = qword_27E201D40;
  if (!qword_27E201D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D40);
  }

  return result;
}

unint64_t sub_23C8222A4()
{
  result = qword_27E201D48;
  if (!qword_27E201D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D48);
  }

  return result;
}

unint64_t sub_23C8222FC()
{
  result = qword_27E201D50;
  if (!qword_27E201D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D50);
  }

  return result;
}

unint64_t sub_23C822354()
{
  result = qword_27E201D58;
  if (!qword_27E201D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D58);
  }

  return result;
}

unint64_t sub_23C8223AC()
{
  result = qword_27E201D60;
  if (!qword_27E201D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D60);
  }

  return result;
}

unint64_t sub_23C822404()
{
  result = qword_27E201D68;
  if (!qword_27E201D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D68);
  }

  return result;
}

unint64_t sub_23C82245C()
{
  result = qword_27E201D70;
  if (!qword_27E201D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D70);
  }

  return result;
}

unint64_t sub_23C8224B4()
{
  result = qword_27E201D78;
  if (!qword_27E201D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D78);
  }

  return result;
}

unint64_t sub_23C82250C()
{
  result = qword_27E201D80;
  if (!qword_27E201D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D80);
  }

  return result;
}

unint64_t sub_23C822564()
{
  result = qword_27E201D88;
  if (!qword_27E201D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D88);
  }

  return result;
}

unint64_t sub_23C8225BC()
{
  result = qword_27E201D90;
  if (!qword_27E201D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201D90);
  }

  return result;
}

unint64_t sub_23C825AF4()
{
  result = qword_27E2021A8;
  if (!qword_27E2021A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2021A8);
  }

  return result;
}

unint64_t sub_23C825B4C()
{
  result = qword_27E2021B0;
  if (!qword_27E2021B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2021B0);
  }

  return result;
}