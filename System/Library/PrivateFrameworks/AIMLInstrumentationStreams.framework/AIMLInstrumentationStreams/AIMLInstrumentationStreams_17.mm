uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    v3 = a1;
    v4 = a1[1];
    v5 = a2;
    v6 = sub_23C872014();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    if (a1[5] != a2[5] || v8 != v9)
    {
      v10 = a1;
      v11 = a1[5];
      v12 = a2;
      v13 = sub_23C872014();
      a2 = v12;
      v14 = v13;
      a1 = v10;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    v15 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA0, &qword_23C889AA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEA8, &qword_23C889AB0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_23C5855B0(a1 + v25, v24, &qword_27E1FEEA0, &qword_23C889AA8);
  v27 = v56;
  sub_23C5855B0(v56 + v25, &v24[v26], &qword_27E1FEEA0, &qword_23C889AA8);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_23C5855B0(v24, v19, &qword_27E1FEEA0, &qword_23C889AA8);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_23C716FA0(&v24[v26], v15, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v32 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V7DecimalV2eeoiySbAG_AGtFZ_0(v19, v15);
      sub_23C717008(v15, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_23C717008(v19, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_23C585C34(v24, &qword_27E1FEEA0, &qword_23C889AA8);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
LABEL_6:
    v29 = &qword_27E1FEEA8;
    v30 = &qword_23C889AB0;
    v31 = v24;
LABEL_17:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v24, &qword_27E1FEEA0, &qword_23C889AA8);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_23C5855B0(v33 + v35, v54, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E1FAC30, &qword_23C878FC0);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_21:
      v46 = *(v34 + 28);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v41 = sub_23C871754();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_23C5855B0(v37, v49, &qword_27E1FAC30, &qword_23C878FC0);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_23C717008(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v29 = &qword_27E1FAC38;
    v30 = &qword_23C878FC8;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_23C716FA0(v43, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v45 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_23C717008(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v37, &qword_27E1FAC30, &qword_23C878FC0);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v18 = *(a1 + 2);
  v19 = *(a2 + 2);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = v15;
    if ((*(a1 + 1) != *(a2 + 1) || v18 != v19) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = v15;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  v29 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v21 = *(v29 + 24);
  v22 = *(v20 + 48);
  sub_23C5855B0(&a1[v21], v17, &qword_27E1FAC30, &qword_23C878FC0);
  v30 = v22;
  sub_23C5855B0(&a2[v21], &v17[v22], &qword_27E1FAC30, &qword_23C878FC0);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v30], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_18:
      v28 = *(v29 + 28);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v25 = sub_23C871754();
      return v25 & 1;
    }

    goto LABEL_14;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAC30, &qword_23C878FC0);
  v24 = v30;
  if (v23(&v17[v30], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_14:
    sub_23C585C34(v17, &qword_27E1FAC38, &qword_23C878FC8);
    goto LABEL_15;
  }

  sub_23C716FA0(&v17[v24], v8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v27 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v17, &qword_27E1FAC30, &qword_23C878FC0);
  if (v27)
  {
    goto LABEL_18;
  }

LABEL_15:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V11MeasurementV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE70, &unk_23C889CC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v65 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE78, &qword_23C889A88);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v65 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = (&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = (&v65 - v17);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v18 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v76 = &v65 - v19;
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v65 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v65 - v32;
  v34 = *(v31 + 56);
  v77 = a1;
  sub_23C5855B0(a1, &v65 - v32, &qword_27E1FAB38, &unk_23C8791E0);
  v78 = a2;
  sub_23C5855B0(a2, &v33[v34], &qword_27E1FAB38, &unk_23C8791E0);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_23C585C34(v33, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_27E1FAB40;
    v37 = &qword_23C878F08;
    v38 = v33;
LABEL_21:
    sub_23C585C34(v38, v36, v37);
    goto LABEL_22;
  }

  sub_23C5855B0(v33, v28, &qword_27E1FAB38, &unk_23C8791E0);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_23C717008(v28, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v33[v34], v24, type metadata accessor for ToolKitProtoTypeIdentifier);
  v39 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v28, v24);
  sub_23C717008(v24, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v28, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v33, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v41 = v40[5];
  v42 = *(v73 + 48);
  v44 = v76;
  v43 = v77;
  sub_23C5855B0(v77 + v41, v76, &qword_27E1FAC40, &unk_23C8791C0);
  v45 = v78;
  sub_23C5855B0(v78 + v41, v44 + v42, &qword_27E1FAC40, &unk_23C8791C0);
  v46 = v75;
  v47 = *(v74 + 48);
  if (v47(v44, 1, v75) != 1)
  {
    v48 = v72;
    sub_23C5855B0(v44, v72, &qword_27E1FAC40, &unk_23C8791C0);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v49 = v67;
      sub_23C716FA0(v44 + v42, v67, type metadata accessor for ToolKitProtoTypeInstance);
      v50 = sub_23C7073C4(v48, v49, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v49, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v48, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v44, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_23C717008(v48, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  if (v47(v44 + v42, 1, v46) != 1)
  {
LABEL_13:
    v36 = &qword_27E1FAC48;
    v37 = &qword_23C878FD0;
    v38 = v44;
    goto LABEL_21;
  }

  sub_23C585C34(v44, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_15:
  v51 = v40[6];
  v52 = *(v68 + 48);
  v53 = v71;
  sub_23C5855B0(v43 + v51, v71, &qword_27E1FEE70, &unk_23C889CC0);
  v54 = v45 + v51;
  v55 = v53;
  sub_23C5855B0(v54, v53 + v52, &qword_27E1FEE70, &unk_23C889CC0);
  v56 = v70;
  v57 = *(v69 + 48);
  if (v57(v53, 1, v70) == 1)
  {
    if (v57(v53 + v52, 1, v56) == 1)
    {
      sub_23C585C34(v53, &qword_27E1FEE70, &unk_23C889CC0);
LABEL_25:
      v64 = v40[7];
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v59 = sub_23C871754();
      return v59 & 1;
    }

    goto LABEL_20;
  }

  v58 = v66;
  sub_23C5855B0(v55, v66, &qword_27E1FEE70, &unk_23C889CC0);
  if (v57(v55 + v52, 1, v56) == 1)
  {
    sub_23C717008(v58, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
LABEL_20:
    v36 = &qword_27E1FEE78;
    v37 = &qword_23C889A88;
    v38 = v55;
    goto LABEL_21;
  }

  v61 = v55 + v52;
  v62 = v65;
  sub_23C716FA0(v61, v65, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  v63 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V7StorageV2eeoiySbAG_AGtFZ_0(v58, v62);
  sub_23C717008(v62, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C717008(v58, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_23C585C34(v55, &qword_27E1FEE70, &unk_23C889CC0);
  if (v63)
  {
    goto LABEL_25;
  }

LABEL_22:
  v59 = 0;
  return v59 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V7StorageV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE58, &qword_23C889A70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE60, &qword_23C889A78);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FEE58, &qword_23C889A70);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FEE58, &qword_23C889A70);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FEE58, &qword_23C889A70);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FEE58, &qword_23C889A70);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEE60, &qword_23C889A78);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  v21 = static ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C585C34(v17, &qword_27E1FEE58, &qword_23C889A70);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23C702D40(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if ((sub_23C6F73FC(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV06EntityG0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v63 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = (&v54 - v8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v9 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v54 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v60 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v25 = *(v60 + 24);
  v26 = *(v21 + 56);
  v62 = a1;
  sub_23C5855B0(a1 + v25, v24, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(v63 + v25, &v24[v26], &qword_27E1FAB38, &unk_23C8791E0);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) == 1)
  {
    if (v27(&v24[v26], 1, v11) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_11;
    }

LABEL_6:
    v28 = &qword_27E1FAB40;
    v29 = &qword_23C878F08;
    v30 = v24;
LABEL_7:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_8;
  }

  sub_23C5855B0(v24, v19, &qword_27E1FAB38, &unk_23C8791E0);
  if (v27(&v24[v26], 1, v11) == 1)
  {
    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  v33 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v35 = v62;
  v34 = v63;
  if ((*v62 != *v63 || v62[1] != v63[1]) && (sub_23C872014() & 1) == 0 || (sub_23C7FD6C0(v35[2], v34[2]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v37 = v60;
  v36 = v61;
  v38 = *(v60 + 28);
  v39 = *(v57 + 48);
  sub_23C5855B0(v35 + v38, v61, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v34 + v38, v36 + v39, &qword_27E1FAC30, &qword_23C878FC0);
  v40 = v59;
  v41 = *(v58 + 48);
  if (v41(v36, 1, v59) != 1)
  {
    v42 = v56;
    sub_23C5855B0(v36, v56, &qword_27E1FAC30, &qword_23C878FC0);
    if (v41(v36 + v39, 1, v40) != 1)
    {
      v43 = v36 + v39;
      v44 = v55;
      sub_23C716FA0(v43, v55, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v45 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v42, v44);
      sub_23C717008(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C717008(v42, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_23C585C34(v36, &qword_27E1FAC30, &qword_23C878FC0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    sub_23C717008(v42, type metadata accessor for ToolKitProtoDisplayRepresentation);
    goto LABEL_20;
  }

  if (v41(v36 + v39, 1, v40) != 1)
  {
LABEL_20:
    v28 = &qword_27E1FAC38;
    v29 = &qword_23C878FC8;
    v30 = v36;
    goto LABEL_7;
  }

  sub_23C585C34(v36, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_22:
  v46 = *(v37 + 32);
  v48 = *(v35 + v46);
  v47 = *(v35 + v46 + 8);
  v49 = (v34 + v46);
  v51 = *v49;
  v50 = v49[1];
  if (v47 >> 60 == 15)
  {
    if (v50 >> 60 == 15)
    {
      sub_23C5EDBA0(v48, v47);
      sub_23C5EDBA0(v51, v50);
      sub_23C5AD0AC(v48, v47);
LABEL_28:
      v53 = *(v37 + 36);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v31 = sub_23C871754();
      return v31 & 1;
    }

    goto LABEL_26;
  }

  if (v50 >> 60 == 15)
  {
LABEL_26:
    sub_23C5EDBA0(v48, v47);
    sub_23C5EDBA0(v51, v50);
    sub_23C5AD0AC(v48, v47);
    sub_23C5AD0AC(v51, v50);
    goto LABEL_8;
  }

  sub_23C5EDBA0(v48, v47);
  sub_23C5EDBA0(v51, v50);
  v52 = sub_23C6F73FC(v48, v47, v51, v50);
  sub_23C5AD0AC(v51, v50);
  sub_23C5AD0AC(v48, v47);
  if (v52)
  {
    goto LABEL_28;
  }

LABEL_8:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV05QueryG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE80, &qword_23C889A90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE88, &qword_23C889A98);
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
      sub_23C716FA0(&v25[v26], v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      v31 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_23C717008(v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v25, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
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
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v33 = *(Value + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FEE80, &qword_23C889A90);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FEE80, &qword_23C889A90);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FEE80, &qword_23C889A90);
LABEL_18:
      v44 = *(Value + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E1FEE80, &qword_23C889A90);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C717008(v38, type metadata accessor for ToolKitProtoQuery);
LABEL_13:
    v28 = &qword_27E1FEE88;
    v29 = &qword_23C889A98;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C716FA0(v41, v45, type metadata accessor for ToolKitProtoQuery);
  V2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_23C717008(v42, type metadata accessor for ToolKitProtoQuery);
  sub_23C717008(v38, type metadata accessor for ToolKitProtoQuery);
  sub_23C585C34(v35, &qword_27E1FEE80, &qword_23C889A90);
  if (V2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV016EntityIdentifierG0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_23C5855B0(a1 + v25, v24, &qword_27E1FAB38, &unk_23C8791E0);
  v27 = v56;
  sub_23C5855B0(v56 + v25, &v24[v26], &qword_27E1FAB38, &unk_23C8791E0);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_23C5855B0(v24, v19, &qword_27E1FAB38, &unk_23C8791E0);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_23C716FA0(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      v32 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
      sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v29 = &qword_27E1FAB40;
    v30 = &qword_23C878F08;
    v31 = v24;
LABEL_17:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_23C5855B0(v33 + v35, v54, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E1FAC30, &qword_23C878FC0);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_21:
      v46 = *(v34 + 28);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v41 = sub_23C871754();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_23C5855B0(v37, v49, &qword_27E1FAC30, &qword_23C878FC0);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_23C717008(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v29 = &qword_27E1FAC38;
    v30 = &qword_23C878FC8;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_23C716FA0(v43, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v45 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_23C717008(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v37, &qword_27E1FAC30, &qword_23C878FC0);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB70, &qword_23C889800);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD9C8, &qword_23C87D758);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD9C8, &qword_23C87D758);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD9C8, &qword_23C87D758);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD9C8, &qword_23C87D758);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEB70, &qword_23C889800);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  v21 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE12SubtitleKindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_23C585C34(v17, &qword_27E1FD9C8, &qword_23C87D758);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v95 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v4 = *(v95 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB80, &unk_23C889DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = (&v90 - v9);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB88, &qword_23C889810);
  v10 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v12 = &v90 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v13);
  v96 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB90, &qword_23C889818);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v90 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB98, &qword_23C889820);
  v19 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v105 = &v90 - v20;
  v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v108 = *(v21 - 8);
  v109 = v21;
  v22 = *(v108 + 64);
  MEMORY[0x28223BE20](v21);
  v101 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBA0, &unk_23C889DA0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v106 = &v90 - v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBA8, &qword_23C889828);
  v27 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v110 = &v90 - v28;
  v29 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBB0, &qword_23C889830);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v90 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBB8, &qword_23C889838);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v90 - v40;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_26;
  }

  v98 = v4;
  v91 = v12;
  v97 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v42 = *(v97 + 24);
  v43 = *(v38 + 48);
  v99 = a1;
  sub_23C5855B0(a1 + v42, v41, &qword_27E1FEBB0, &qword_23C889830);
  v44 = a2 + v42;
  v45 = a2;
  sub_23C5855B0(v44, &v41[v43], &qword_27E1FEBB0, &qword_23C889830);
  v46 = *(v30 + 48);
  if (v46(v41, 1, v29) == 1)
  {
    if (v46(&v41[v43], 1, v29) == 1)
    {
      sub_23C585C34(v41, &qword_27E1FEBB0, &qword_23C889830);
      goto LABEL_11;
    }

LABEL_9:
    v47 = &qword_27E1FEBB8;
    v48 = &qword_23C889838;
    v49 = v41;
LABEL_25:
    sub_23C585C34(v49, v47, v48);
    goto LABEL_26;
  }

  sub_23C5855B0(v41, v37, &qword_27E1FEBB0, &qword_23C889830);
  if (v46(&v41[v43], 1, v29) == 1)
  {
    sub_23C717008(v37, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
    goto LABEL_9;
  }

  sub_23C716FA0(&v41[v43], v33, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  v50 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(v37, v33);
  sub_23C717008(v33, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C717008(v37, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C585C34(v41, &qword_27E1FEBB0, &qword_23C889830);
  if ((v50 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v51 = v97;
  v52 = *(v97 + 28);
  v53 = *(v107 + 48);
  v54 = v99;
  v55 = v110;
  sub_23C5855B0(v99 + v52, v110, &qword_27E1FEBA0, &unk_23C889DA0);
  v56 = v45 + v52;
  v57 = v55;
  sub_23C5855B0(v56, v55 + v53, &qword_27E1FEBA0, &unk_23C889DA0);
  v58 = v109;
  v59 = *(v108 + 48);
  if (v59(v55, 1, v109) == 1)
  {
    v60 = v59(v55 + v53, 1, v58);
    v61 = v98;
    if (v60 == 1)
    {
      sub_23C585C34(v55, &qword_27E1FEBA0, &unk_23C889DA0);
      goto LABEL_18;
    }

LABEL_16:
    v47 = &qword_27E1FEBA8;
    v48 = &qword_23C889828;
LABEL_24:
    v49 = v57;
    goto LABEL_25;
  }

  v62 = v55;
  v63 = v106;
  sub_23C5855B0(v62, v106, &qword_27E1FEBA0, &unk_23C889DA0);
  v64 = v59(v57 + v53, 1, v58);
  v61 = v98;
  if (v64 == 1)
  {
    sub_23C717008(v63, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
    goto LABEL_16;
  }

  v65 = v57 + v53;
  v66 = v101;
  sub_23C716FA0(v65, v101, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  v67 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(v63, v66);
  sub_23C717008(v66, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C717008(v63, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C585C34(v57, &qword_27E1FEBA0, &unk_23C889DA0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v68 = v51[8];
  v69 = *(v102 + 48);
  v70 = v105;
  sub_23C5855B0(v54 + v68, v105, &qword_27E1FEB90, &qword_23C889818);
  v71 = v45 + v68;
  v57 = v70;
  sub_23C5855B0(v71, v70 + v69, &qword_27E1FEB90, &qword_23C889818);
  v72 = v104;
  v73 = *(v103 + 48);
  if (v73(v70, 1, v104) != 1)
  {
    v74 = v100;
    sub_23C5855B0(v57, v100, &qword_27E1FEB90, &qword_23C889818);
    if (v73(v57 + v69, 1, v72) != 1)
    {
      v77 = v57 + v69;
      v78 = v96;
      sub_23C716FA0(v77, v96, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      v79 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(v74, v78);
      sub_23C717008(v78, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_23C717008(v74, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_23C585C34(v57, &qword_27E1FEB90, &qword_23C889818);
      if ((v79 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    sub_23C717008(v74, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
    goto LABEL_23;
  }

  if (v73(v70 + v69, 1, v72) != 1)
  {
LABEL_23:
    v47 = &qword_27E1FEB98;
    v48 = &qword_23C889820;
    goto LABEL_24;
  }

  sub_23C585C34(v70, &qword_27E1FEB90, &qword_23C889818);
LABEL_29:
  if ((sub_23C5D25E0(v54[2], v45[2]) & 1) == 0)
  {
    goto LABEL_26;
  }

  v80 = v51[9];
  v81 = *(v94 + 48);
  v82 = v91;
  sub_23C5855B0(v54 + v80, v91, &qword_27E1FEB80, &unk_23C889DB0);
  sub_23C5855B0(v45 + v80, v82 + v81, &qword_27E1FEB80, &unk_23C889DB0);
  v83 = *(v61 + 48);
  v84 = v95;
  if (v83(v82, 1, v95) == 1)
  {
    if (v83(v82 + v81, 1, v84) == 1)
    {
      sub_23C585C34(v82, &qword_27E1FEB80, &unk_23C889DB0);
LABEL_33:
      v85 = v51[10];
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v75 = sub_23C871754();
      return v75 & 1;
    }

    goto LABEL_36;
  }

  v86 = v93;
  sub_23C5855B0(v82, v93, &qword_27E1FEB80, &unk_23C889DB0);
  if (v83(v82 + v81, 1, v84) == 1)
  {
    sub_23C717008(v86, type metadata accessor for ToolKitProtoPluginModelData);
LABEL_36:
    v47 = &qword_27E1FEB88;
    v48 = &qword_23C889810;
    v49 = v82;
    goto LABEL_25;
  }

  v87 = v82 + v81;
  v88 = v92;
  sub_23C716FA0(v87, v92, type metadata accessor for ToolKitProtoPluginModelData);
  if ((sub_23C6F73FC(*v86, v86[1], *v88, v88[1]) & 1) == 0 || (v86[2] != v88[2] || v86[3] != v88[3]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C717008(v88, type metadata accessor for ToolKitProtoPluginModelData);
    sub_23C717008(v86, type metadata accessor for ToolKitProtoPluginModelData);
    v47 = &qword_27E1FEB80;
    v48 = &unk_23C889DB0;
    v49 = v91;
    goto LABEL_25;
  }

  v89 = *(v84 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  LOBYTE(v89) = sub_23C871754();
  sub_23C717008(v88, type metadata accessor for ToolKitProtoPluginModelData);
  sub_23C717008(v86, type metadata accessor for ToolKitProtoPluginModelData);
  sub_23C585C34(v91, &qword_27E1FEB80, &unk_23C889DB0);
  if (v89)
  {
    goto LABEL_33;
  }

LABEL_26:
  v75 = 0;
  return v75 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV011EnumerationG0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_23C5855B0(a1 + v25, v24, &qword_27E1FAB38, &unk_23C8791E0);
  v27 = v56;
  sub_23C5855B0(v56 + v25, &v24[v26], &qword_27E1FAB38, &unk_23C8791E0);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_23C5855B0(v24, v19, &qword_27E1FAB38, &unk_23C8791E0);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_23C716FA0(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      v32 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
      sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v29 = &qword_27E1FAB40;
    v30 = &qword_23C878F08;
    v31 = v24;
LABEL_17:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_23C5855B0(v33 + v35, v54, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E1FAC30, &qword_23C878FC0);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_23C585C34(v37, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_21:
      v46 = *(v34 + 28);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v41 = sub_23C871754();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_23C5855B0(v37, v49, &qword_27E1FAC30, &qword_23C878FC0);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_23C717008(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v29 = &qword_27E1FAC38;
    v30 = &qword_23C878FC8;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_23C716FA0(v43, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v45 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_23C717008(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v37, &qword_27E1FAC30, &qword_23C878FC0);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_23C7057F4(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v30 = a4;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v28 = a3(0);
  v20 = *(v28 + 20);
  v21 = *(v16 + 56);
  v31 = a1;
  sub_23C5855B0(a1 + v20, v19, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5855B0(a2 + v20, &v19[v21], &qword_27E1FAB38, &unk_23C8791E0);
  v22 = *(v8 + 48);
  if (v22(v19, 1, v7) == 1)
  {
    if (v22(&v19[v21], 1, v7) == 1)
    {
      sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v19, v14, &qword_27E1FAB38, &unk_23C8791E0);
  if (v22(&v19[v21], 1, v7) == 1)
  {
    sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_23C585C34(v19, &qword_27E1FAB40, &qword_23C878F08);
LABEL_10:
    v26 = 0;
    return v26 & 1;
  }

  v23 = v29;
  sub_23C716FA0(&v19[v21], v29, type metadata accessor for ToolKitProtoTypeIdentifier);
  v24 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v23);
  sub_23C717008(v23, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v19, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v30(*v31, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = *(v28 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v26 = sub_23C871754();
  return v26 & 1;
}

uint64_t _s26AIMLInstrumentationStreams17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED50, &unk_23C889D10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED58, &qword_23C889990);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v31 = type metadata accessor for ToolKitProtoQuery(0);
  v17 = v31[5];
  v18 = *(v13 + 56);
  v33 = a1;
  sub_23C5855B0(&a1[v17], v16, &qword_27E1FED50, &unk_23C889D10);
  sub_23C5855B0(&a2[v17], &v16[v18], &qword_27E1FED50, &unk_23C889D10);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FED50, &unk_23C889D10);
LABEL_8:
      if (*v33 == *a2)
      {
        v23 = v31[6];
        v24 = &v33[v23];
        v25 = v33[v23 + 8];
        v26 = &a2[v23];
        v27 = a2[v23 + 8];
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
            goto LABEL_11;
          }
        }

        v29 = v31[7];
        sub_23C870F34();
        sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v20 = sub_23C871754();
        return v20 & 1;
      }

LABEL_11:
      v20 = 0;
      return v20 & 1;
    }
  }

  else
  {
    sub_23C5855B0(v16, v11, &qword_27E1FED50, &unk_23C889D10);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v32;
      sub_23C716FA0(&v16[v18], v32, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      V12AnyPredicateV2eeoiySbAE_AEtFZ_0 = _s26AIMLInstrumentationStreams17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(v11, v21);
      sub_23C717008(v21, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_23C717008(v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_23C585C34(v16, &qword_27E1FED50, &unk_23C889D10);
      if ((V12AnyPredicateV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_23C717008(v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  }

  sub_23C585C34(v16, &qword_27E1FED58, &qword_23C889990);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED08, &qword_23C889958);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD790, &qword_23C87D750);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD790, &qword_23C87D750);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD790, &qword_23C87D750);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoQuery.AnyPredicate(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD790, &qword_23C87D750);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FED08, &qword_23C889958);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v21 = static ToolKitProtoQuery.ToolKitProtoAnyPredicateKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_23C585C34(v17, &qword_27E1FD790, &qword_23C87D750);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = v8;
  v26 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAC40, &unk_23C8791C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_15:
      v23 = *(v26 + 28);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_12;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAC40, &unk_23C8791C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_12:
    sub_23C585C34(v16, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_13;
  }

  v21 = v25;
  sub_23C716FA0(&v16[v18], v25, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = sub_23C7073C4(v12, v21, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v21, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v82 = a2;
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v67 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED68, &qword_23C8899A0);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = &v67 - v10;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v11);
  v70 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDA8, &unk_23C889CF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDB0, &qword_23C8899E0);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v67 - v18;
  v19 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v67 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED88, &qword_23C8899C0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v80 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v81 = a1;
  v33 = *(v80 + 20);
  v34 = *(v29 + 56);
  sub_23C5855B0(a1 + v33, v32, &qword_27E1FED80, &qword_23C8899B8);
  v35 = v82 + v33;
  v36 = v82;
  sub_23C5855B0(v35, &v32[v34], &qword_27E1FED80, &qword_23C8899B8);
  v37 = *(v20 + 48);
  if (v37(v32, 1, v19) == 1)
  {
    if (v37(&v32[v34], 1, v19) == 1)
    {
      sub_23C585C34(v32, &qword_27E1FED80, &qword_23C8899B8);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &qword_27E1FED88;
    v39 = &qword_23C8899C0;
    v40 = v32;
LABEL_24:
    sub_23C585C34(v40, v38, v39);
    goto LABEL_25;
  }

  sub_23C5855B0(v32, v27, &qword_27E1FED80, &qword_23C8899B8);
  if (v37(&v32[v34], 1, v19) == 1)
  {
    sub_23C717008(v27, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_6;
  }

  sub_23C716FA0(&v32[v34], v23, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  v41 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(v27, v23);
  sub_23C717008(v23, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C717008(v27, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C585C34(v32, &qword_27E1FED80, &qword_23C8899B8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v43 = v80;
  v42 = v81;
  v44 = *(v80 + 24);
  v45 = *(v76 + 48);
  v46 = v79;
  sub_23C5855B0(v81 + v44, v79, &qword_27E1FEDA8, &unk_23C889CF0);
  sub_23C5855B0(v36 + v44, v46 + v45, &qword_27E1FEDA8, &unk_23C889CF0);
  v47 = v78;
  v48 = *(v77 + 48);
  if (v48(v46, 1, v78) != 1)
  {
    v49 = v75;
    sub_23C5855B0(v46, v75, &qword_27E1FEDA8, &unk_23C889CF0);
    if (v48(v46 + v45, 1, v47) != 1)
    {
      v50 = v46 + v45;
      v51 = v70;
      sub_23C716FA0(v50, v70, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      v52 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V2eeoiySbAE_AEtFZ_0(v49, v51);
      sub_23C717008(v51, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_23C717008(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_23C585C34(v46, &qword_27E1FEDA8, &unk_23C889CF0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_23C717008(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
    goto LABEL_13;
  }

  if (v48(v46 + v45, 1, v47) != 1)
  {
LABEL_13:
    v38 = &qword_27E1FEDB0;
    v39 = &qword_23C8899E0;
    v40 = v46;
    goto LABEL_24;
  }

  sub_23C585C34(v46, &qword_27E1FEDA8, &unk_23C889CF0);
LABEL_15:
  if ((*v42 != *v36 || v42[1] != v36[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_25;
  }

  v53 = *(v43 + 28);
  v54 = *(v71 + 48);
  v55 = v74;
  sub_23C5855B0(v42 + v53, v74, &qword_27E1FED60, &qword_23C889998);
  v56 = v36 + v53;
  v57 = v55;
  sub_23C5855B0(v56, v55 + v54, &qword_27E1FED60, &qword_23C889998);
  v58 = v73;
  v59 = *(v72 + 48);
  if (v59(v55, 1, v73) == 1)
  {
    if (v59(v55 + v54, 1, v58) == 1)
    {
      sub_23C585C34(v55, &qword_27E1FED60, &qword_23C889998);
LABEL_28:
      v66 = *(v43 + 32);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v61 = sub_23C871754();
      return v61 & 1;
    }

    goto LABEL_23;
  }

  v60 = v69;
  sub_23C5855B0(v57, v69, &qword_27E1FED60, &qword_23C889998);
  if (v59(v57 + v54, 1, v58) == 1)
  {
    sub_23C717008(v60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_23:
    v38 = &qword_27E1FED68;
    v39 = &qword_23C8899A0;
    v40 = v57;
    goto LABEL_24;
  }

  v63 = v57 + v54;
  v64 = v68;
  sub_23C716FA0(v63, v68, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  v65 = _s26AIMLInstrumentationStreams38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v60, v64);
  sub_23C717008(v64, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C717008(v60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C585C34(v57, &qword_27E1FED60, &qword_23C889998);
  if (v65)
  {
    goto LABEL_28;
  }

LABEL_25:
  v61 = 0;
  return v61 & 1;
}

uint64_t _s26AIMLInstrumentationStreams021ToolKitProtoAssistantC16SchemaDefinitionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC50, &qword_23C8898B0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v34 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v35 = a1;
  v17 = *(v34 + 28);
  v18 = *(v13 + 56);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FACC8, &unk_23C889C50);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FACC8, &unk_23C889C50);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v11, &qword_27E1FACC8, &unk_23C889C50);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v33;
      sub_23C716FA0(&v16[v18], v33, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v23 = _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v11, v22);
      sub_23C717008(v22, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_23C717008(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_23C585C34(v16, &qword_27E1FACC8, &unk_23C889C50);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C717008(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FEC50, &qword_23C8898B0);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v16, &qword_27E1FACC8, &unk_23C889C50);
LABEL_10:
  v24 = v35;
  if ((*v35 != *a2 || v35[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_7;
  }

  v25 = v34;
  v26 = *(v34 + 32);
  v27 = (v24 + v26);
  v28 = *(v24 + v26 + 8);
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

  if (sub_23C5DF2B4(v24[2], a2[2]) & 1) != 0 && (sub_23C5DCD18(v24[3], a2[3]))
  {
    v31 = *(v25 + 36);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v20 = sub_23C871754();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23C7073C4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t *, uint64_t *), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *a2;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v16 = *a1;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v15 = v10;
      a3(v9);
      a3(v10);
      a3(v9);
      v13 = a4(&v16, &v15);

      a5(v9);
      if (v13)
      {
        goto LABEL_9;
      }

      return 0;
    }

    a3(v9);
    a3(v10);
    a3(v9);

LABEL_6:
    a5(v9);
    a5(v10);
    return 0;
  }

  a3(*a1);
  a3(v10);
  if ((~v10 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  a5(v9);
LABEL_9:
  v14 = *(a6(0) + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC78, &qword_23C878FF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAC70, &qword_23C878FF0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAC70, &qword_23C878FF0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAC70, &qword_23C878FF0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoSystemToolProtocol(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAC70, &qword_23C878FF0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAC78, &qword_23C878FF8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v21 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_23C585C34(v17, &qword_27E1FAC70, &qword_23C878FF0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a2 + 5);
  if (*(a1 + 5))
  {
    if (*(a2 + 5))
    {
LABEL_3:
      v3 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      return sub_23C871754() & 1;
    }
  }

  else if ((*(a2 + 5) & 1) == 0)
  {
    v5 = *a2 | (*(a2 + 4) << 32);
    if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
    {
      *(a1 + 4);
      if (*a1)
      {
        if ((v5 & 0x100000000) != 0)
        {
          *(a2 + 4);
          if (*a2)
          {
            goto LABEL_3;
          }
        }
      }

      else if ((v5 & 0x100000000) != 0)
      {
        *(a2 + 4);
        if (!*a2)
        {
          goto LABEL_3;
        }
      }
    }

    else if ((v5 & 0x100000000) == 0)
    {
      *(a2 + 4);
      *(a1 + 4);
      if (*a1 == *a2)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECB8, &qword_23C889918);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEFF8, &qword_23C889BD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = v8;
  v30 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v17 = *(v30 + 20);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FECB8, &qword_23C889918);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FECB8, &qword_23C889918);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E1FECB8, &qword_23C889918);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v29;
      sub_23C716FA0(v24, v29, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      if (*v12 == *v25 && v12[1] == v25[1] && v12[2] == v25[2])
      {
        v26 = *(v4 + 28);
        sub_23C870F34();
        sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
        v27 = sub_23C871754();
        sub_23C717008(v25, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_23C585C34(v16, &qword_27E1FECB8, &qword_23C889918);
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_18:
        v21 = 0;
        return v21 & 1;
      }

      sub_23C717008(v25, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      v22 = &qword_27E1FECB8;
      v23 = &qword_23C889918;
LABEL_17:
      sub_23C585C34(v16, v22, v23);
      goto LABEL_18;
    }

    sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
LABEL_10:
    v22 = &qword_27E1FEFF8;
    v23 = &qword_23C889BD0;
    goto LABEL_17;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_23C585C34(v16, &qword_27E1FECB8, &qword_23C889918);
LABEL_7:
  v20 = *(v30 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v21 = sub_23C871754();
  return v21 & 1;
}

uint64_t _s26AIMLInstrumentationStreams018ToolKitProtoSystemC8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC50, &qword_23C8898B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FACC8, &unk_23C889C50);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FACC8, &unk_23C889C50);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FACC8, &unk_23C889C50);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FACC8, &unk_23C889C50);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEC50, &qword_23C8898B0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v21 = _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C585C34(v17, &qword_27E1FACC8, &unk_23C889C50);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC19InvocationSignatureV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0 || (sub_23C5D25E0(a1[1], a2[1]) & 1) == 0 || (sub_23C7FF710(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ToolKitProtoToolInvocationSignature(0) + 28);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB00, &qword_23C87B910);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB40, &qword_23C878F08);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v25 = *(v51 + 40);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_23C5855B0(a1 + v25, v24, &qword_27E1FAB38, &unk_23C8791E0);
  v27 = v56;
  sub_23C5855B0(v56 + v25, &v24[v26], &qword_27E1FAB38, &unk_23C8791E0);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &qword_27E1FAB40;
    v30 = &qword_23C878F08;
    v31 = v24;
LABEL_7:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_23;
  }

  sub_23C5855B0(v24, v19, &qword_27E1FAB38, &unk_23C8791E0);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  v32 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_23C717008(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C717008(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C585C34(v24, &qword_27E1FAB38, &unk_23C8791E0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v33 = v55;
  if ((sub_23C5D40D4(*v55, *v27) & 1) == 0 || (sub_23C5DD078(v33[1], v27[1]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v34 = v51;
  v35 = *(v51 + 44);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_23C5855B0(v33 + v35, v54, &qword_27E1FBAF8, &qword_23C87B960);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E1FBAF8, &qword_23C87B960);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_23C5855B0(v37, v49, &qword_27E1FBAF8, &qword_23C87B960);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v48;
      sub_23C716FA0(v41, v48, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v43 = _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v42);
      sub_23C717008(v42, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C717008(v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C585C34(v37, &qword_27E1FBAF8, &qword_23C87B960);
      if (v43)
      {
        goto LABEL_18;
      }

LABEL_23:
      v45 = 0;
      return v45 & 1;
    }

    sub_23C717008(v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &qword_27E1FBB00;
    v30 = &qword_23C87B910;
    v31 = v37;
    goto LABEL_7;
  }

  sub_23C585C34(v37, &qword_27E1FBAF8, &qword_23C87B960);
LABEL_18:
  if ((sub_23C5DCD18(v33[2], v27[2]) & 1) == 0 || (sub_23C5DD5FC(v33[3], v27[3]) & 1) == 0 || (sub_23C5EDE0C(v33[4], v27[4]) & 1) == 0 || (sub_23C5DDB80(v33[5], v27[5]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v44 = *(v34 + 48);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v45 = sub_23C871754();
  return v45 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC17DefinitionClosureV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACB0, &qword_23C879010);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FACA8, &unk_23C87B940);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FACA8, &unk_23C87B940);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FACA8, &unk_23C87B940);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v16, v11, &qword_27E1FACA8, &unk_23C87B940);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FACB0, &qword_23C879010);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_23C716FA0(&v16[v18], v27, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v21 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(v11, v20);
  sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C585C34(v16, &qword_27E1FACA8, &unk_23C87B940);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_23C5DF888(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC13SummaryStringV9ComponentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 255)
  {
    v13[0] = *a1;
    v13[1] = v2;
    v14 = v4;
    if (v7 != 255)
    {
      v11[0] = v6;
      v11[1] = v5;
      v12 = v7 & 1;
      sub_23C5EDA0C(v3, v2, v4);
      sub_23C5EDA0C(v6, v5, v7);
      sub_23C5EDA0C(v3, v2, v4);
      v8 = _s26AIMLInstrumentationStreams012ToolKitProtoC13SummaryStringV0cdE13ComponentKindO2eeoiySbAE_AEtFZ_0(v13, v11);
      sub_23C5EDA44();
      sub_23C5EDA44();
      sub_23C5EDA2C(v3, v2, v4);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_23C5EDA0C(v3, v2, v4);
    sub_23C5EDA0C(v6, v5, 255);
    sub_23C5EDA0C(v3, v2, v4);
    sub_23C5EDA44();
LABEL_8:
    sub_23C5EDA2C(v3, v2, v4);
    sub_23C5EDA2C(v6, v5, v7);
    return 0;
  }

  sub_23C5EDA0C(*a1, v2, 255);
  if (v7 != 255)
  {
    sub_23C5EDA0C(v6, v5, v7);
    goto LABEL_8;
  }

  sub_23C5EDA0C(v6, v5, 255);
  sub_23C5EDA2C(v3, v2, 255);
LABEL_10:
  v10 = *(type metadata accessor for ToolKitProtoToolSummaryString.Component(0) + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C708E18(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  v9 = a2[1];
  if (v8 == 1)
  {
    if (v9 == 1)
    {
      v11 = a5;
      v8 = 1;
      a3(*a1, 1);
      a3(v10, 1);
LABEL_4:
      a4(v7, v8);
      v12 = *(v11(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      return sub_23C871754() & 1;
    }

    goto LABEL_6;
  }

  if (v9 != 1)
  {
    if (v8)
    {
      if (v9)
      {
        v11 = a5;
        if (v7 == v10 && v8 == v9)
        {
          a3(*a1, v8);
          a3(v7, v8);
          a3(v7, v8);

          goto LABEL_4;
        }

        v17 = *a1;
        v18 = sub_23C872014();
        a3(v7, v8);
        a3(v10, v9);
        a3(v7, v8);

        if (v18)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      v16 = a1[1];
    }

    else if (!v9)
    {
      v11 = a5;
      a3(*a1, 0);
      a3(v10, 0);
      swift_bridgeObjectRelease_n();
      goto LABEL_4;
    }

    a3(*a1, v8);
    a3(v10, v9);
    a3(v7, v8);

LABEL_16:
    v14 = v7;
    v15 = v8;
    goto LABEL_17;
  }

LABEL_6:
  a3(*a1, v8);
  a3(v10, v9);
  a4(v7, v8);
  v14 = v10;
  v15 = v9;
LABEL_17:
  a4(v14, v15);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBE0, &qword_23C889850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBE8, &qword_23C889858);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_23C872014() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_23C872014() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_25;
  }

  v26 = v8;
  v25 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v17 = *(v25 + 40);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FEBE0, &qword_23C889850);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FEBE0, &qword_23C889850);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FEBE0, &qword_23C889850);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FEBE0, &qword_23C889850);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoAppDefinition.Device);
LABEL_21:
    sub_23C585C34(v16, &qword_27E1FEBE8, &qword_23C889858);
LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v26;
  sub_23C716FA0(&v16[v18], v26, type metadata accessor for ToolKitProtoAppDefinition.Device);
  v21 = sub_23C708E18(v12, v20, sub_23C717558, sub_23C71755C, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C717008(v20, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C585C34(v16, &qword_27E1FEBE0, &qword_23C889850);
  if ((v21 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (*(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_25;
  }

  v22 = *(v25 + 44);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v136 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v132 = *(v136 - 8);
  v4 = *(v132 + 64);
  MEMORY[0x28223BE20](v136);
  v6 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC30, &qword_23C8898A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v130 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = &v125 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF000, &qword_23C889BD8);
  v12 = *(*(v135 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v135);
  v133 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v125 - v15;
  v141 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v139 = *(v141 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v141);
  v134 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC38, &unk_23C889D60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v140 = &v125 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF008, &qword_23C889BE0);
  v21 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v142 = &v125 - v22;
  v23 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v146 = *(v23 - 8);
  v147 = v23;
  v24 = *(v146 + 64);
  MEMORY[0x28223BE20](v23);
  v143 = (&v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC40, &qword_23C8898A8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v144 = (&v125 - v28);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF010, &qword_23C889BE8);
  v29 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v148 = &v125 - v30;
  v31 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v151 = *(v31 - 8);
  v152 = v31;
  v32 = *(v151 + 64);
  MEMORY[0x28223BE20](v31);
  v149 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC48, &unk_23C889D50);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v150 = &v125 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FF018, &qword_23C889BF0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v153 = &v125 - v39;
  v40 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = (&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = (&v125 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v125 - v51;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (sub_23C5DF2B4(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v126 = v6;
  v53 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v129 = a2;
  v127 = v53;
  v54 = *(v53 + 68);
  v55 = a1;
  v56 = *(v49 + 48);
  v128 = v55;
  sub_23C5855B0(v55 + v54, v52, &qword_27E1FAC40, &unk_23C8791C0);
  v57 = v129 + v54;
  v58 = v129;
  sub_23C5855B0(v57, &v52[v56], &qword_27E1FAC40, &unk_23C8791C0);
  v59 = *(v41 + 48);
  if (v59(v52, 1, v40) == 1)
  {
    if (v59(&v52[v56], 1, v40) == 1)
    {
      sub_23C585C34(v52, &qword_27E1FAC40, &unk_23C8791C0);
      goto LABEL_19;
    }

LABEL_14:
    v60 = &qword_27E1FAC48;
    v61 = &qword_23C878FD0;
    v62 = v52;
LABEL_15:
    sub_23C585C34(v62, v60, v61);
    goto LABEL_16;
  }

  sub_23C5855B0(v52, v48, &qword_27E1FAC40, &unk_23C8791C0);
  if (v59(&v52[v56], 1, v40) == 1)
  {
    sub_23C717008(v48, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_14;
  }

  sub_23C716FA0(&v52[v56], v44, type metadata accessor for ToolKitProtoTypeInstance);
  v65 = sub_23C7073C4(v48, v44, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v44, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v48, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v52, &qword_27E1FAC40, &unk_23C8791C0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v66 = v127;
  v67 = v127[18];
  v68 = v128;
  v69 = (v128 + v67);
  v70 = *(v128 + v67 + 8);
  v71 = (v58 + v67);
  v72 = v71[1];
  if (v70)
  {
    if (!v72 || (*v69 != *v71 || v70 != v72) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v72)
  {
    goto LABEL_16;
  }

  v73 = v66[19];
  v74 = *(v37 + 48);
  v75 = v153;
  sub_23C5855B0(v68 + v73, v153, &qword_27E1FEC48, &unk_23C889D50);
  sub_23C5855B0(v58 + v73, v75 + v74, &qword_27E1FEC48, &unk_23C889D50);
  v76 = v152;
  v77 = *(v151 + 48);
  if (v77(v75, 1, v152) == 1)
  {
    if (v77(v75 + v74, 1, v76) == 1)
    {
      sub_23C585C34(v75, &qword_27E1FEC48, &unk_23C889D50);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v78 = v150;
  sub_23C5855B0(v75, v150, &qword_27E1FEC48, &unk_23C889D50);
  if (v77(v75 + v74, 1, v76) == 1)
  {
    sub_23C717008(v78, type metadata accessor for ToolKitProtoAppDefinition);
LABEL_31:
    v60 = &qword_27E1FF018;
    v61 = &qword_23C889BF0;
    v62 = v75;
    goto LABEL_15;
  }

  v79 = v75 + v74;
  v80 = v149;
  sub_23C716FA0(v79, v149, type metadata accessor for ToolKitProtoAppDefinition);
  v81 = _s26AIMLInstrumentationStreams25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(v78, v80);
  sub_23C717008(v80, type metadata accessor for ToolKitProtoAppDefinition);
  sub_23C717008(v78, type metadata accessor for ToolKitProtoAppDefinition);
  sub_23C585C34(v75, &qword_27E1FEC48, &unk_23C889D50);
  if ((v81 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  v82 = v66[20];
  v83 = (v68 + v82);
  v84 = *(v68 + v82 + 8);
  v85 = (v58 + v82);
  v86 = v85[1];
  if (v84)
  {
    if (!v86 || (*v83 != *v85 || v84 != v86) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v86)
  {
    goto LABEL_16;
  }

  if ((sub_23C5E02E8(v68[6], v58[6]) & 1) == 0 || (sub_23C5D25E0(v68[7], v58[7]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v87 = v66[21];
  v88 = *(v145 + 48);
  v89 = v148;
  sub_23C5855B0(v68 + v87, v148, &qword_27E1FEC40, &qword_23C8898A8);
  sub_23C5855B0(v58 + v87, v89 + v88, &qword_27E1FEC40, &qword_23C8898A8);
  v90 = v147;
  v91 = *(v146 + 48);
  if (v91(v89, 1, v147) == 1)
  {
    if (v91(v89 + v88, 1, v90) == 1)
    {
      sub_23C585C34(v89, &qword_27E1FEC40, &qword_23C8898A8);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v92 = v144;
  sub_23C5855B0(v89, v144, &qword_27E1FEC40, &qword_23C8898A8);
  if (v91(v89 + v88, 1, v90) == 1)
  {
    sub_23C717008(v92, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
LABEL_47:
    v60 = &qword_27E1FF010;
    v61 = &qword_23C889BE8;
    v62 = v89;
    goto LABEL_15;
  }

  v93 = v89 + v88;
  v94 = v143;
  sub_23C716FA0(v93, v143, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  v95 = sub_23C70C494(v92, v94, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C717008(v94, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C717008(v92, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C585C34(v89, &qword_27E1FEC40, &qword_23C8898A8);
  if ((v95 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_49:
  if ((sub_23C5DD078(v68[8], v58[8]) & 1) == 0 || (sub_23C5E0328(v68[9], v58[9]) & 1) == 0 || *(v68 + 80) != *(v58 + 80) || (sub_23C5DCD18(v68[11], v58[11]) & 1) == 0 || (sub_23C5E0394(v128[12], v129[12]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v96 = v127[22];
  v97 = *(v138 + 48);
  v98 = v142;
  sub_23C5855B0(v128 + v96, v142, &qword_27E1FEC38, &unk_23C889D60);
  sub_23C5855B0(v129 + v96, v98 + v97, &qword_27E1FEC38, &unk_23C889D60);
  v99 = *(v139 + 48);
  if (v99(v98, 1, v141) == 1)
  {
    if (v99(v142 + v97, 1, v141) == 1)
    {
      sub_23C585C34(v142, &qword_27E1FEC38, &unk_23C889D60);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v100 = v142;
  sub_23C5855B0(v142, v140, &qword_27E1FEC38, &unk_23C889D60);
  if (v99(v100 + v97, 1, v141) == 1)
  {
    sub_23C717008(v140, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
LABEL_59:
    v60 = &qword_27E1FF008;
    v61 = &qword_23C889BE0;
    v62 = v142;
    goto LABEL_15;
  }

  v101 = v142;
  v102 = v142 + v97;
  v103 = v134;
  sub_23C716FA0(v102, v134, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  v104 = v140;
  v105 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0C4IconV2eeoiySbAG_AGtFZ_0(v140, v103);
  sub_23C717008(v103, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C717008(v104, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C585C34(v101, &qword_27E1FEC38, &unk_23C889D60);
  if ((v105 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_61:
  if ((sub_23C5DF2B4(v128[13], v129[13]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v106 = v127[23];
  v107 = *(v135 + 48);
  v108 = v137;
  sub_23C5855B0(v128 + v106, v137, &qword_27E1FEC30, &qword_23C8898A0);
  sub_23C5855B0(v129 + v106, v108 + v107, &qword_27E1FEC30, &qword_23C8898A0);
  v109 = *(v132 + 48);
  if (v109(v108, 1, v136) == 1)
  {
    if (v109(v137 + v107, 1, v136) == 1)
    {
      sub_23C585C34(v137, &qword_27E1FEC30, &qword_23C8898A0);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v110 = v137;
  sub_23C5855B0(v137, v131, &qword_27E1FEC30, &qword_23C8898A0);
  if (v109(v110 + v107, 1, v136) == 1)
  {
    sub_23C717008(v131, type metadata accessor for ToolKitProtoContainerDefinition);
LABEL_67:
    v60 = &qword_27E1FF000;
    v61 = &qword_23C889BD8;
    v62 = v137;
    goto LABEL_15;
  }

  v111 = v137;
  v112 = v137 + v107;
  v113 = v126;
  sub_23C716FA0(v112, v126, type metadata accessor for ToolKitProtoContainerDefinition);
  v114 = v131;
  v115 = _s26AIMLInstrumentationStreams31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v131, v113);
  sub_23C717008(v113, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C717008(v114, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C585C34(v111, &qword_27E1FEC30, &qword_23C8898A0);
  if ((v115 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_69:
  v116 = v127[24];
  v117 = *(v135 + 48);
  v118 = v133;
  sub_23C5855B0(v128 + v116, v133, &qword_27E1FEC30, &qword_23C8898A0);
  sub_23C5855B0(v129 + v116, v118 + v117, &qword_27E1FEC30, &qword_23C8898A0);
  if (v109(v118, 1, v136) != 1)
  {
    v119 = v133;
    sub_23C5855B0(v133, v130, &qword_27E1FEC30, &qword_23C8898A0);
    if (v109(v119 + v117, 1, v136) != 1)
    {
      v120 = v133;
      v121 = v126;
      sub_23C716FA0(v133 + v117, v126, type metadata accessor for ToolKitProtoContainerDefinition);
      v122 = v130;
      v123 = _s26AIMLInstrumentationStreams31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v130, v121);
      sub_23C717008(v121, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_23C717008(v122, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_23C585C34(v120, &qword_27E1FEC30, &qword_23C8898A0);
      if ((v123 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_76;
    }

    sub_23C717008(v130, type metadata accessor for ToolKitProtoContainerDefinition);
    goto LABEL_74;
  }

  if (v109(v133 + v117, 1, v136) != 1)
  {
LABEL_74:
    v60 = &qword_27E1FF000;
    v61 = &qword_23C889BD8;
    v62 = v133;
    goto LABEL_15;
  }

  sub_23C585C34(v133, &qword_27E1FEC30, &qword_23C8898A0);
LABEL_76:
  if (sub_23C5EDE0C(v128[14], v129[14]))
  {
    v124 = v127[25];
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v63 = sub_23C871754();
    return v63 & 1;
  }

LABEL_16:
  v63 = 0;
  return v63 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 != 41)
  {
    v6 = *a1;
    if (v2 == 41)
    {
      return 0;
    }

    v5 = v2;
    if (!_s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV0cdE13PrimitiveKindO2eeoiySbAE_AEtFZ_0(&v6, &v5))
    {
      return 0;
    }

LABEL_6:
    v3 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0) + 20);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  if (v2 == 41)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB28, &unk_23C889C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB30, &qword_23C878F00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAB28, &unk_23C889C40);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAB28, &unk_23C889C40);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAB28, &unk_23C889C40);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypeIdentifier(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAB28, &unk_23C889C40);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifierKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB30, &qword_23C878F00);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v21 = _s26AIMLInstrumentationStreams30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_23C585C34(v17, &qword_27E1FAB28, &unk_23C889C40);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_23C70ACAC()
{
  result = qword_27E1FD510;
  if (!qword_27E1FD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD510);
  }

  return result;
}

unint64_t sub_23C70AD00()
{
  result = qword_27E1FD538;
  if (!qword_27E1FD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD538);
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = a1[8];
  v18 = a2[8];
  if (v17)
  {
    if (!v18 || (a1[7] != a2[7] || v17 != v18) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v18)
  {
    goto LABEL_25;
  }

  v28 = v8;
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v19 = *(v27 + 40);
  v20 = *(v13 + 48);
  sub_23C5855B0(a1 + v19, v16, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v19, &v16[v20], &qword_27E1FAC40, &unk_23C8791C0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E1FAC40, &unk_23C8791C0);
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
      goto LABEL_19;
    }

    v22 = v28;
    sub_23C716FA0(&v16[v20], v28, type metadata accessor for ToolKitProtoTypeInstance);
    v23 = sub_23C7073C4(v12, v22, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C717008(v22, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_25:
    v25 = 0;
    return v25 & 1;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
LABEL_19:
    sub_23C585C34(v16, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_25;
  }

  sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_21:
  if ((sub_23C5E098C(a1[4], a2[4]) & 1) == 0 || (sub_23C5DCD18(a1[5], a2[5]) & 1) == 0 || (sub_23C5E124C(a1[6], a2[6]) & 1) == 0)
  {
    goto LABEL_25;
  }

  v24 = *(v27 + 44);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v25 = sub_23C871754();
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC20, &unk_23C889D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC28, &qword_23C878FB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAC20, &unk_23C889D70);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAC20, &unk_23C889D70);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAC20, &unk_23C889D70);
LABEL_12:
      v23 = *(v26 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAC20, &unk_23C889D70);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
LABEL_9:
    sub_23C585C34(v16, &qword_27E1FAC28, &qword_23C878FB8);
    goto LABEL_10;
  }

  v21 = v25;
  sub_23C716FA0(&v16[v18], v25, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  v22 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(v12, v21);
  sub_23C717008(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C585C34(v16, &qword_27E1FAC20, &unk_23C889D70);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC18, &qword_23C878FB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAC10, &qword_23C878FA8);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAC10, &qword_23C878FA8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAC10, &qword_23C878FA8);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAC10, &qword_23C878FA8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAC18, &qword_23C878FB0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  v21 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_23C585C34(v17, &qword_27E1FAC10, &qword_23C878FA8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V7DecimalV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_23C870ED4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEB0, &unk_23C889CA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEEB8, &qword_23C889AB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v18 = v15;
  v30 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v19 = *(v30 + 24);
  v20 = *(v18 + 48);
  sub_23C5855B0(&a1[v19], v17, &qword_27E1FEEB0, &unk_23C889CA0);
  v21 = &a2[v19];
  v22 = v5;
  v31 = v20;
  sub_23C5855B0(v21, &v17[v20], &qword_27E1FEEB0, &unk_23C889CA0);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v31], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FEEB0, &unk_23C889CA0);
LABEL_12:
      v29 = *(v30 + 28);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v25 = sub_23C871754();
      return v25 & 1;
    }

    goto LABEL_8;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FEEB0, &unk_23C889CA0);
  v24 = v31;
  if (v23(&v17[v31], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_23C585C34(v17, &qword_27E1FEEB8, &qword_23C889AB8);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v17[v24], v4);
  sub_23C716EF0(&qword_27E1FEEC0, MEMORY[0x277D215C8]);
  v27 = sub_23C871754();
  v28 = *(v22 + 8);
  v28(v8, v4);
  v28(v12, v4);
  sub_23C585C34(v17, &qword_27E1FEEB0, &unk_23C889CA0);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD578, &qword_23C87D740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEED0, &qword_23C889AC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD578, &qword_23C87D740);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD578, &qword_23C87D740);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD578, &qword_23C87D740);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD578, &qword_23C87D740);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEED0, &qword_23C889AC0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v21 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV0cde9PrimitiveG4KindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_23C585C34(v17, &qword_27E1FD578, &qword_23C87D740);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_23C70BFA8()
{
  result = qword_27E1FD588;
  if (!qword_27E1FD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD588);
  }

  return result;
}

unint64_t sub_23C70BFFC()
{
  result = qword_27E1FD598;
  if (!qword_27E1FD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD598);
  }

  return result;
}

unint64_t sub_23C70C050()
{
  result = qword_27E1FD5B0;
  if (!qword_27E1FD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD5B0);
  }

  return result;
}

unint64_t sub_23C70C0A4()
{
  result = qword_27E1FD5E8;
  if (!qword_27E1FD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD5E8);
  }

  return result;
}

unint64_t sub_23C70C0F8()
{
  result = qword_27E1FD6A8;
  if (!qword_27E1FD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD6A8);
  }

  return result;
}

unint64_t sub_23C70C14C()
{
  result = qword_27E1FD6B0;
  if (!qword_27E1FD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD6B0);
  }

  return result;
}

unint64_t sub_23C70C1A0()
{
  result = qword_27E1FD6B8;
  if (!qword_27E1FD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD6B8);
  }

  return result;
}

unint64_t sub_23C70C1F4()
{
  result = qword_27E1FD720;
  if (!qword_27E1FD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD720);
  }

  return result;
}

unint64_t sub_23C70C248()
{
  result = qword_27E1FD780;
  if (!qword_27E1FD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD780);
  }

  return result;
}

unint64_t sub_23C70C29C()
{
  result = qword_27E1FD7B0;
  if (!qword_27E1FD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD7B0);
  }

  return result;
}

unint64_t sub_23C70C2F0()
{
  result = qword_27E1FD8B0;
  if (!qword_27E1FD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8B0);
  }

  return result;
}

unint64_t sub_23C70C344()
{
  result = qword_27E1FD8C0;
  if (!qword_27E1FD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8C0);
  }

  return result;
}

unint64_t sub_23C70C398()
{
  result = qword_27E1FD8C8;
  if (!qword_27E1FD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8C8);
  }

  return result;
}

unint64_t sub_23C70C3EC()
{
  result = qword_27E1FD8D8;
  if (!qword_27E1FD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8D8);
  }

  return result;
}

unint64_t sub_23C70C440()
{
  result = qword_27E1FD8F0;
  if (!qword_27E1FD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD8F0);
  }

  return result;
}

uint64_t sub_23C70C494(void *a1, void *a2, uint64_t (*a3)(void))
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
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      return sub_23C871754() & 1;
    }
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0C4IconV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBF0, &qword_23C889860);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD948, &unk_23C889D80);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD948, &unk_23C889D80);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD948, &unk_23C889D80);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD948, &unk_23C889D80);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEBF0, &qword_23C889860);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  v21 = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0cdeC8IconKindO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_23C585C34(v17, &qword_27E1FD948, &unk_23C889D80);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_23C70C8D4()
{
  result = qword_27E1FD958;
  if (!qword_27E1FD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD958);
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV8Version1V0C4IconV0c6SymbolH0V2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v6 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7)
  {
    if (v8 && (*(a1 + 40) == *(a2 + 40) && v7 == v8 || (sub_23C872014() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_20:
  v9 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

unint64_t sub_23C70CA54()
{
  result = qword_27E1FD970;
  if (!qword_27E1FD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD970);
  }

  return result;
}

unint64_t sub_23C70CAA8()
{
  result = qword_27E1FD988;
  if (!qword_27E1FD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD988);
  }

  return result;
}

unint64_t sub_23C70CAFC()
{
  result = qword_27E1FD990;
  if (!qword_27E1FD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FD990);
  }

  return result;
}

unint64_t sub_23C70CB50()
{
  result = qword_27E1FDA20;
  if (!qword_27E1FDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA20);
  }

  return result;
}

unint64_t sub_23C70CBA8()
{
  result = qword_27E1FDA40;
  if (!qword_27E1FDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA40);
  }

  return result;
}

unint64_t sub_23C70CC00()
{
  result = qword_27E1FDA48;
  if (!qword_27E1FDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA48);
  }

  return result;
}

unint64_t sub_23C70CE98()
{
  result = qword_27E1FDA78;
  if (!qword_27E1FDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA78);
  }

  return result;
}

unint64_t sub_23C70CEF0()
{
  result = qword_27E1FDA80;
  if (!qword_27E1FDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDA80);
  }

  return result;
}

unint64_t sub_23C70D848()
{
  result = qword_27E1FDB38;
  if (!qword_27E1FDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB38);
  }

  return result;
}

unint64_t sub_23C70D8A0()
{
  result = qword_27E1FDB40;
  if (!qword_27E1FDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB40);
  }

  return result;
}

unint64_t sub_23C70DB38()
{
  result = qword_27E1FDB70;
  if (!qword_27E1FDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB70);
  }

  return result;
}

unint64_t sub_23C70DB90()
{
  result = qword_27E1FDB78;
  if (!qword_27E1FDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDB78);
  }

  return result;
}

unint64_t sub_23C70E3C8()
{
  result = qword_27E1FDC18;
  if (!qword_27E1FDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC18);
  }

  return result;
}

unint64_t sub_23C70E420()
{
  result = qword_27E1FDC20;
  if (!qword_27E1FDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC20);
  }

  return result;
}

unint64_t sub_23C70E7D8()
{
  result = qword_27E1FDC70;
  if (!qword_27E1FDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC70);
  }

  return result;
}

unint64_t sub_23C70E830()
{
  result = qword_27E1FDC78;
  if (!qword_27E1FDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDC78);
  }

  return result;
}

unint64_t sub_23C70EE28()
{
  result = qword_27E1FDCF8;
  if (!qword_27E1FDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDCF8);
  }

  return result;
}

unint64_t sub_23C70EE80()
{
  result = qword_27E1FDD00;
  if (!qword_27E1FDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDD00);
  }

  return result;
}

unint64_t sub_23C70FFB8()
{
  result = qword_27E1FDE60;
  if (!qword_27E1FDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE60);
  }

  return result;
}

unint64_t sub_23C710010()
{
  result = qword_27E1FDE68;
  if (!qword_27E1FDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE68);
  }

  return result;
}

unint64_t sub_23C710068()
{
  result = qword_27E1FDE70;
  if (!qword_27E1FDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE70);
  }

  return result;
}

unint64_t sub_23C7100C0()
{
  result = qword_27E1FDE78;
  if (!qword_27E1FDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDE78);
  }

  return result;
}

unint64_t sub_23C7108F8()
{
  result = qword_27E1FDF28;
  if (!qword_27E1FDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF28);
  }

  return result;
}

unint64_t sub_23C710950()
{
  result = qword_27E1FDF30;
  if (!qword_27E1FDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF30);
  }

  return result;
}

unint64_t sub_23C7109A8()
{
  result = qword_27E1FDF38;
  if (!qword_27E1FDF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF38);
  }

  return result;
}

unint64_t sub_23C710A00()
{
  result = qword_27E1FDF40;
  if (!qword_27E1FDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF40);
  }

  return result;
}

unint64_t sub_23C710A58()
{
  result = qword_27E1FDF48;
  if (!qword_27E1FDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF48);
  }

  return result;
}

unint64_t sub_23C710AB0()
{
  result = qword_27E1FDF50;
  if (!qword_27E1FDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FDF50);
  }

  return result;
}

unint64_t sub_23C711528()
{
  result = qword_27E1FE020;
  if (!qword_27E1FE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE020);
  }

  return result;
}

unint64_t sub_23C711580()
{
  result = qword_27E1FE028;
  if (!qword_27E1FE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE028);
  }

  return result;
}

unint64_t sub_23C712118()
{
  result = qword_27E1FE120;
  if (!qword_27E1FE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE120);
  }

  return result;
}

unint64_t sub_23C712170()
{
  result = qword_27E1FE128;
  if (!qword_27E1FE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE128);
  }

  return result;
}

unint64_t sub_23C712528()
{
  result = qword_27E1FE170;
  if (!qword_27E1FE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE170);
  }

  return result;
}

unint64_t sub_23C712580()
{
  result = qword_27E1FE178;
  if (!qword_27E1FE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE178);
  }

  return result;
}

unint64_t sub_23C714438()
{
  result = qword_27E1FE3D8;
  if (!qword_27E1FE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3D8);
  }

  return result;
}

unint64_t sub_23C714490()
{
  result = qword_27E1FE3E0;
  if (!qword_27E1FE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3E0);
  }

  return result;
}

unint64_t sub_23C7144E8()
{
  result = qword_27E1FE3E8;
  if (!qword_27E1FE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3E8);
  }

  return result;
}

unint64_t sub_23C714540()
{
  result = qword_27E1FE3F0;
  if (!qword_27E1FE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3F0);
  }

  return result;
}

unint64_t sub_23C714598()
{
  result = qword_27E1FE3F8;
  if (!qword_27E1FE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE3F8);
  }

  return result;
}

unint64_t sub_23C7145F0()
{
  result = qword_27E1FE400;
  if (!qword_27E1FE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE400);
  }

  return result;
}

unint64_t sub_23C714648()
{
  result = qword_27E1FE408;
  if (!qword_27E1FE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE408);
  }

  return result;
}

unint64_t sub_23C7146A0()
{
  result = qword_27E1FE410;
  if (!qword_27E1FE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE410);
  }

  return result;
}

unint64_t sub_23C714818()
{
  result = qword_27E1FE428;
  if (!qword_27E1FE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE428);
  }

  return result;
}

unint64_t sub_23C714870()
{
  result = qword_27E1FE430;
  if (!qword_27E1FE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE430);
  }

  return result;
}

unint64_t sub_23C715408()
{
  result = qword_27E1FE510;
  if (!qword_27E1FE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE510);
  }

  return result;
}

unint64_t sub_23C715460()
{
  result = qword_27E1FE518;
  if (!qword_27E1FE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE518);
  }

  return result;
}

unint64_t sub_23C715818()
{
  result = qword_27E1FE568;
  if (!qword_27E1FE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE568);
  }

  return result;
}

unint64_t sub_23C715870()
{
  result = qword_27E1FE570;
  if (!qword_27E1FE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE570);
  }

  return result;
}

unint64_t sub_23C715B08()
{
  result = qword_27E1FE5A8;
  if (!qword_27E1FE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5A8);
  }

  return result;
}

unint64_t sub_23C715B60()
{
  result = qword_27E1FE5B0;
  if (!qword_27E1FE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5B0);
  }

  return result;
}

unint64_t sub_23C715BB8()
{
  result = qword_27E1FE5B8;
  if (!qword_27E1FE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5B8);
  }

  return result;
}

unint64_t sub_23C715C10()
{
  result = qword_27E1FE5C0;
  if (!qword_27E1FE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE5C0);
  }

  return result;
}

unint64_t sub_23C716B08()
{
  result = qword_27E1FE6F0;
  if (!qword_27E1FE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE6F0);
  }

  return result;
}

unint64_t sub_23C716B60()
{
  result = qword_27E1FE6F8;
  if (!qword_27E1FE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FE6F8);
  }

  return result;
}

unint64_t sub_23C716DF4()
{
  result = qword_27E1FECE8;
  if (!qword_27E1FECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FECE8);
  }

  return result;
}

unint64_t sub_23C716E48()
{
  result = qword_27E1FEE10;
  if (!qword_27E1FEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FEE10);
  }

  return result;
}

unint64_t sub_23C716E9C()
{
  result = qword_27E1FEE18;
  if (!qword_27E1FEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FEE18);
  }

  return result;
}

uint64_t sub_23C716EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23C716F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C716FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C717008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C717068()
{
  result = qword_27E1FEFF0;
  if (!qword_27E1FEFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FEFE8, &qword_23C889BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FEFF0);
  }

  return result;
}

AIMLInstrumentationStreams::ToolKitProtoRuntimePlatform_optional __swiftcall ToolKitProtoRuntimePlatform.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoTypeIdentifier.Primitive.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 41;
  v1 = &a1[*(type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0) + 20)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7177D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C717874(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

AIMLInstrumentationStreams::ToolKitProtoTypeIdentifier::Primitive::MeasurementUnitType_optional __swiftcall ToolKitProtoTypeIdentifier.Primitive.MeasurementUnitType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 5;
  switch(rawValue)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v2 = 1;
      goto LABEL_15;
    case 2:
      v2 = 2;
      goto LABEL_15;
    case 3:
      v2 = 3;
      goto LABEL_15;
    case 4:
      v2 = 4;
LABEL_15:
      v3 = v2;
      goto LABEL_16;
    case 5:
LABEL_16:
      *v1 = v3;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
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
    default:
      *v1 = 23;
      break;
  }

  return rawValue;
}

uint64_t sub_23C717B4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v3 = v2[10];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[11];
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[12]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v9;
  *(a1 + 2) = v9;
  *(a1 + 3) = v9;
  *(a1 + 4) = v9;
  *(a1 + 5) = v9;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v3 = v2[8];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[9];
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v2[10];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_23C7184A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C718540(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = v2[10];
  v12 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v2[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a1[v13], 1, 1, valid);
  v15 = &a1[v2[12]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v17 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v17;
  return result;
}

uint64_t sub_23C7189BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C718A58(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v3 = *(v2 + 24);
  v4 = sub_23C870ED4();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_23C718E3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C718ED8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoTypedValue::PrimitiveValue::PaymentMethod::TypeEnum_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.TypeEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double sub_23C7192A4@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a3 = xmmword_23C87D700;
  return result;
}

uint64_t sub_23C719590@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v4 = (a1 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v3[7];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v3[8];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + v3[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v3[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v3[11];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v3[12];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v3[13];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v3[14];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v3[15];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v3[16];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v3[17];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = a1 + v3[18];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a1 + v3[19];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = a1 + v3[20];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

AIMLInstrumentationStreams::ToolKitProtoTypedValue::PrimitiveValue::DateComponents::CalendarIdentifier_optional __swiftcall ToolKitProtoTypedValue.PrimitiveValue.DateComponents.CalendarIdentifier.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = a1 + *(v2 + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_23C719AA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = v5[6];
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = &a3[v5[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

unint64_t ToolKitProtoTypedValue.EntityValue.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[8]] = xmmword_23C879130;
  v7 = &a1[v2[9]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  result = sub_23C599478(MEMORY[0x277D84F90]);
  *(a1 + 2) = result;
  return result;
}

uint64_t sub_23C719D48@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C719DE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C719F90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
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

uint64_t ToolKitProtoTypedValue.DeferredValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v4 = v3[5];
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = a1 + v3[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71A454@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0xF000000000000007;
  v2 = a2 + *(a1(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71A5E0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C71A6CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoRestrictionContext::PersonReachableAs_optional __swiftcall ToolKitProtoRestrictionContext.PersonReachableAs.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v4 = (a1 + *(v3 + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + *(v3 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71AAF4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a1 + 4) = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_23C71ADF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C71AE94(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

AIMLInstrumentationStreams::ToolKitProtoRestrictionContext::TextTypedWith::KeyboardType_optional __swiftcall ToolKitProtoRestrictionContext.TextTypedWith.KeyboardType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue(0);
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v3(a1 + *(v4 + 20), 1, 1, v2);
  v5 = a1 + *(v4 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C71B470@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = v5[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = v5[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  v12 = &a3[v5[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C71B5AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C71B648(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoCompoundPredicate.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C71B7E4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoQuery.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoQuery(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  v5[8] = 1;
  v6 = &a1[v2[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a1 + 5) = 0;
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(*(v4 - 8) + 56);
  v5(&a1[v3], 1, 1, v4);
  v5(&a1[v2[6]], 1, 1, v4);
  v5(&a1[v2[7]], 1, 1, v4);
  v6 = &a1[v2[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for ToolKitProtoToolSummaryString.Component(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

unint64_t ToolKitProtoToolInvocationSignature.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoToolInvocationSignature(0) + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v3;
  result = sub_23C599660(v3);
  a1[2] = result;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
  a1[2] = 0;
  a1[3] = 0;
  v3 = a1 + *(v2 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v5;
  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v3 = v2[7];
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a1[v2[9]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  *(a1 + 2) = MEMORY[0x277D84F90];
  *(a1 + 3) = v8;
  return result;
}

uint64_t sub_23C71C808@<X0>(uint64_t (*a1)(void)@<X0>, char *a2@<X8>)
{
  v3 = a1(0);
  v4 = v3[5];
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = v3[6];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[v3[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = &a1[*(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = 256;
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoToolDefinition.Version1.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = v2[17];
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[18]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[19];
  v7 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = (a1 + v2[20]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v2[21];
  v10 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v2[22];
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v2[23];
  v14 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a1 + v13, 1, 1, v14);
  v15(a1 + v2[24], 1, 1, v14);
  v16 = a1 + v2[25];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v18 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
  *(a1 + 48) = v18;
  *(a1 + 56) = v18;
  *(a1 + 64) = v18;
  *(a1 + 72) = v18;
  *(a1 + 80) = 0;
  *(a1 + 88) = v18;
  *(a1 + 96) = v18;
  *(a1 + 104) = v18;
  *(a1 + 112) = v18;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::ToolType_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::Flag_optional __swiftcall ToolKitProtoToolDefinition.Version1.Flag.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 7)
  {
    if (rawValue > 31)
    {
      if (rawValue == 32)
      {
        *v1 = 6;
        return rawValue;
      }

      if (rawValue == 64)
      {
        *v1 = 7;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 8)
      {
        *v1 = 4;
        return rawValue;
      }

      if (rawValue == 16)
      {
        *v1 = 5;
        return rawValue;
      }
    }

LABEL_20:
    *v1 = 8;
    return rawValue;
  }

  if (rawValue > 1)
  {
    if (rawValue == 2)
    {
      *v1 = 2;
      return rawValue;
    }

    if (rawValue == 4)
    {
      *v1 = 3;
      return rawValue;
    }

    goto LABEL_20;
  }

  if (!rawValue)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != 1)
  {
    goto LABEL_20;
  }

  *v1 = 1;
  return rawValue;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 44)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 4) = MEMORY[0x277D84F90];
  *(a1 + 5) = v7;
  *(a1 + 6) = v7;
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::Parameter::ParameterFlags_optional __swiftcall ToolKitProtoToolDefinition.Version1.Parameter.ParameterFlags.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23C71D814@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

AIMLInstrumentationStreams::ToolKitProtoToolDefinition::Version1::ToolIcon::ToolSymbolIconStyle_optional __swiftcall ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIconStyle.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v3 = a1 + *(v2 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C71DC30@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  a2[2] = 0;
  a2[3] = 0;
  v4 = a2 + *(v3 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoAppDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 44);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_23C71DDA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C71DE44(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 44);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ToolKitProtoContainerDefinition.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = *(v2 + 40);
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 44);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_23C71E0CC@<X0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_23C87AC90;
  v2 = a2 + *(a1(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  a1[3] = 0;
  a1[4] = 0;
  v3 = a1 + *(v2 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

double sub_23C71E268@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = &a1[v2[10]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = MEMORY[0x277D84F90];
  return result;
}

double sub_23C71E524@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_23C879130;
  *(a1 + 32) = xmmword_23C879130;
  v2 = a1 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t ToolKitProtoCoercionDefinition.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C71EC2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C29C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C71ED50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70BFFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C71F1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70ACAC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.Property.init(id:displayName:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 28)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_23C5842D0(a5, &a6[v13], &qword_27E1FAC40, &unk_23C8791C0);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Entity.init(identifier:properties:runtimeRequirements:displayRepresentation:sampleInvocations:systemProtocols:runtimeFlags:coercions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v17 = v16[10];
  v18 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[11];
  v20 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[v16[12]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v17], &qword_27E1FAB38, &unk_23C8791E0);
  *a9 = a2;
  *(a9 + 1) = a3;
  result = sub_23C5842D0(a4, &a9[v19], &qword_27E1FBAF8, &qword_23C87B960);
  *(a9 + 2) = a5;
  *(a9 + 3) = a6;
  *(a9 + 4) = a7;
  *(a9 + 5) = a8;
  return result;
}

uint64_t sub_23C71F6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70AD00();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypeDefinition.Version1.Enumeration.init(identifier:cases:runtimeRequirements:displayRepresentation:kind:systemProtocols:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v15 = v14[8];
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v14[9];
  v18 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(a7 + v17, 1, 1, v18);
  v19 = a7 + v14[10];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7 + v15, &qword_27E1FAB38, &unk_23C8791E0);
  *a7 = a2;
  *(a7 + 8) = a3;
  result = sub_23C5842D0(a4, a7 + v17, &qword_27E1FBAF8, &qword_23C87B960);
  *(a7 + 16) = v13;
  *(a7 + 24) = a6;
  return result;
}

uint64_t ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates.init(comparison:stringSearch:idSearch:all:suggested:sampleInvocations:searchableItem:valid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v12 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v13 = v12[6];
  v14 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  (*(*(v14 - 8) + 56))(&a9[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  (*(*(v16 - 8) + 56))(&a9[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = type metadata accessor for ToolKitProtoAllPredicate(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v12[9];
  v20 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v12[10];
  v22 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = v12[11];
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  (*(*(valid - 8) + 56))(&a9[v23], 1, 1, valid);
  v25 = &a9[v12[12]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  sub_23C5842D0(a2, &a9[v13], &qword_27E1FEF90, &qword_23C889B70);
  sub_23C5842D0(a3, &a9[v15], &qword_27E1FEF80, &unk_23C889C70);
  sub_23C5842D0(a4, &a9[v17], &qword_27E1FED30, &qword_23C889980);
  sub_23C5842D0(a5, &a9[v19], &qword_27E1FED38, &unk_23C889C80);
  *(a9 + 1) = a6;
  sub_23C5842D0(a7, &a9[v21], &qword_27E1FEF60, &qword_23C889B48);
  return sub_23C5842D0(a8, &a9[v23], &qword_27E1FED48, &unk_23C889C90);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_23C56F2C0(v2);
}

uint64_t ToolKitProtoTypedValue.typedValueKind.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_23C56F2D8(*v1);
  *v1 = v2;
  return result;
}

uint64_t sub_23C720664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = a4(0);
  v16 = *(v15 + 20);
  v17 = a5(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = &a8[*(v15 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  return sub_23C5842D0(a3, &a8[v16], a6, a7);
}

uint64_t sub_23C7208A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70BFA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.init(sign:exponent:significand:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v9 = *(v8 + 24);
  v10 = sub_23C870ED4();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + *(v8 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = v7;
  *(a4 + 8) = a2;
  return sub_23C5842D0(a3, a4 + v9, &qword_27E1FEEB0, &unk_23C889CA0);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.init(unit:value:unitType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a3;
  v10 = a4 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = v9;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23C720D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C050();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.init(type:identificationHint:displayRepresentation:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = a5 + *(v10 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return sub_23C5842D0(a4, a5 + v11, &qword_27E1FAC30, &qword_23C878FC0);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.year.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.month.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.day.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.hour.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 44));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.minute.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.second.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.nanosecond.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekday.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 60));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 64));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.quarter.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 64);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 68));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfMonth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 68);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 72));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.weekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 76));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C721D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C0A4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.timeZoneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.init(identifier:timeZoneIdentifier:localeIdentifier:firstWeekday:minimumDaysInFirstWeek:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  v16 = a8 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = v15;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.init(calendar:timeZoneIdentifier:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  v33 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  (*(*(v33 - 8) + 56))(a9, 1, 1, v33);
  v34 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v35 = (a9 + v34[5]);
  v36 = a9 + v34[6];
  v37 = a9 + v34[7];
  v38 = a9 + v34[8];
  v39 = a9 + v34[9];
  v40 = a9 + v34[10];
  v41 = a9 + v34[11];
  v42 = a9 + v34[12];
  v43 = a9 + v34[13];
  v48 = a9 + v34[14];
  v46 = a9 + v34[15];
  v50 = a9 + v34[16];
  v47 = a9 + v34[17];
  v51 = a9 + v34[18];
  v44 = v34[20];
  v49 = a9 + v34[19];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, a9, &qword_27E1FEE90, &unk_23C889CB0);
  *v35 = a2;
  v35[1] = a3;
  *v36 = a4;
  *(v36 + 8) = a5 & 1;
  *v37 = a6;
  *(v37 + 8) = a7 & 1;
  *v38 = a8;
  *(v38 + 8) = a10 & 1;
  *v39 = a11;
  *(v39 + 8) = a12 & 1;
  *v40 = a13;
  *(v40 + 8) = a14 & 1;
  *v41 = a15;
  *(v41 + 8) = a16 & 1;
  *v42 = a17;
  *(v42 + 8) = a18 & 1;
  *v43 = a19;
  *(v43 + 8) = a20 & 1;
  *v48 = a21;
  *(v48 + 8) = a22 & 1;
  *v46 = a23;
  *(v46 + 8) = a24 & 1;
  *v50 = a25;
  *(v50 + 8) = a26 & 1;
  *v47 = a27;
  *(v47 + 8) = a28 & 1;
  *v51 = a29;
  *(v51 + 8) = a30 & 1;
  *v49 = a31;
  *(v49 + 8) = a32 & 1;
  return result;
}

uint64_t sub_23C722454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, char *a9@<X8>)
{
  v17 = a5(0);
  v18 = v17[5];
  v19 = a6(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v17[6];
  v21 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v17[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v18], a7, a8);
  *a9 = a2;
  *(a9 + 1) = a3;
  return sub_23C5842D0(a4, &a9[v20], &qword_27E1FAC30, &qword_23C878FC0);
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.getter()
{
  v1 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  v2 = *v1;
  sub_23C5EDBA0(*v1, *(v1 + 8));
  return v2;
}

uint64_t ToolKitProtoTypedValue.EntityValue.hydratedAppEntity.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
  result = sub_23C5AD0AC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoTypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v15 = v14[6];
  v16 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = &a8[v14[8]];
  *v19 = xmmword_23C879130;
  v20 = &a8[v14[9]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a8[v15], &qword_27E1FAB38, &unk_23C8791E0);
  *a8 = a2;
  *(a8 + 1) = a3;
  *(a8 + 2) = a4;
  sub_23C5842D0(a5, &a8[v17], &qword_27E1FAC30, &qword_23C878FC0);
  result = sub_23C5AD0AC(*v19, *(v19 + 1));
  *v19 = a6;
  *(v19 + 1) = a7;
  return result;
}

uint64_t sub_23C722C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v14 - 8) + 56))(a7, 1, 1, v14);
  v15 = a3(0);
  v16 = *(v15 + 20);
  v17 = a4(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = a7 + *(v15 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7, &qword_27E1FAB38, &unk_23C8791E0);
  return sub_23C5842D0(a2, a7 + v16, a5, a6);
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.getter()
{
  v1 = *v0;
  sub_23C5ACFC8(*v0, *(v0 + 8));
  return v1;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C595090(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_23C723164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = a6 + *(a5(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoTypedValue.DeferredValue.init(type:expectedTypeInstance:storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v10 = v9[5];
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = a4 + v9[7];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a4, &qword_27E1FAB38, &unk_23C8791E0);
  sub_23C5842D0(a2, a4 + v10, &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a3, a4 + v12, &qword_27E1FEE70, &unk_23C889CC0);
}

uint64_t ToolKitProtoTypeInstance.Optional.init(value:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FAB68, &unk_23C879140);
}

uint64_t sub_23C723568@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a2(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_23C72369C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = a3(0);
  v14 = *(v13 + 20);
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[*(v13 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a7[v14], a5, a6);
  *a7 = a2;
  return result;
}

uint64_t sub_23C72381C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  v12 = a6 + *(a3(0) + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  return sub_23C5842D0(a1, a6, a4, a5);
}

uint64_t sub_23C723908(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716E48();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C723970(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716E9C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C723B74(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_23C723BD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.init(contentItemClass:propertyName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a4[v9], &qword_27E1FED60, &qword_23C889998);
  *a4 = a2;
  *(a4 + 1) = a3;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.init(parameterKey:queryIdentifier:actionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = a7 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.init(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v8 = *(v7 + 24);
  v9 = (a3 + *(v7 + 20));
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.init(definition:templates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FEE00, &qword_23C889A28);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FEDF0, &unk_23C889C60);
}

uint64_t sub_23C72420C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C14C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C72427C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C0F8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C7242E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C1A0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.init(multilineAllowed:smartQuotesEnabled:smartDashesEnabled:keyboardType:autocorrectionType:capitalizationType:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, _BYTE *a7@<X8>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = *a6;
  v14 = &a7[*(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = v11;
  a7[4] = v12;
  a7[5] = v13;
  return result;
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a3, 1, 1, v6);
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v9 = *(v8 + 20);
  v7(a3 + v9, 1, 1, v6);
  v10 = a3 + *(v8 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAB68, &unk_23C879140);
  return sub_23C5842D0(a2, a3 + v9, &qword_27E1FAB68, &unk_23C879140);
}

uint64_t sub_23C724C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, char *a9@<X8>, uint64_t *a10)
{
  v16 = a6(0);
  v17 = v16[5];
  v18 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[6];
  v20 = a7(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v16[7];
  v22 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = &a9[v16[8]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v17], &qword_27E1FED80, &qword_23C8899B8);
  sub_23C5842D0(a2, &a9[v19], a8, a10);
  *a9 = a3;
  *(a9 + 1) = a4;
  return sub_23C5842D0(a5, &a9[v21], &qword_27E1FED60, &qword_23C889998);
}

uint64_t sub_23C724E7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C1F4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCompoundPredicate.init(operator:operands:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a3 + *(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_23C724F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = a4 + *(a3(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t sub_23C725100(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_23C72514C(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3(0);
  v7 = v3 + *(result + 24);
  *v7 = a1;
  *(v7 + 8) = a2 & 1;
  return result;
}

uint64_t sub_23C7251EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C248();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoQuery.init(predicate:sort:limit:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for ToolKitProtoQuery(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[7];
  v14 = &a5[v10[6]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a5[v11], &qword_27E1FED50, &unk_23C889D10);
  *a5 = v9;
  *v14 = a3;
  v14[8] = a4 & 1;
  return result;
}

uint64_t ToolKitProtoRuntimePlatformVersion.init(major:minor:patch:isWildcard:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t sub_23C725548(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716DF4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.init(platform:introducingVersion:deprecatingVersion:obsoletingVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v9 = v8[5];
  v10 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v12 = v8[6];
  v11(&a5[v12], 1, 1, v10);
  v13 = v8[7];
  v11(&a5[v13], 1, 1, v10);
  v14 = &a5[v8[8]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = v7;
  sub_23C5842D0(a2, &a5[v9], &qword_27E1FECD8, &qword_23C889930);
  sub_23C5842D0(a3, &a5[v12], &qword_27E1FECD8, &qword_23C889930);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FECD8, &qword_23C889930);
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.init(domain:feature:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_23C5EDA0C(v2, v3, v4);
}

uint64_t ToolKitProtoToolSummaryString.Component.componentKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_23C5EDA2C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.invisibleParameterKeys.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.valueConstraints.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ToolKitProtoSampleInvocationDefinition.init(phrases:expectedResult:negativePhrases:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a5[2] = a2;
  a5[3] = a3;
  *a5 = a1;
  a5[1] = a4;
  return result;
}

uint64_t sub_23C725DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = a5 + *(a4(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.init(identifier:name:description_p:parameters:sampleInvocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v17 = v16[7];
  v18 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = v16[9];
  v20 = &a8[v16[8]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a8[v17], &qword_27E1FACC8, &unk_23C889C50);
  *a8 = a2;
  *(a8 + 1) = a3;
  *v20 = a4;
  *(v20 + 1) = a5;
  *(a8 + 2) = a6;
  *(a8 + 3) = a7;
  return result;
}

uint64_t sub_23C726570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, char *a5@<X8>)
{
  v9 = a4(0);
  v10 = v9[5];
  v11 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v13 - 8) + 56))(&a5[v12], 1, 1, v13);
  v14 = &a5[v9[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a5[v10], &qword_27E1FACC8, &unk_23C889C50);
  *a5 = a2;
  return sub_23C5842D0(a3, &a5[v12], &qword_27E1FBAF8, &qword_23C87B960);
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.init(persistState:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v4 = &a2[*(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a1;
  return result;
}

void ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 5);
  *(a1 + 4) = *(v1 + 4);
  *a1 = v2;
  *(a1 + 5) = v3;
}

int *ToolKitProtoSystemToolProtocol.IntentSideEffect.intentSideEffectKind.setter(int *result)
{
  v2 = *result;
  v3 = *(result + 5);
  *(v1 + 4) = *(result + 4);
  *v1 = v2;
  *(v1 + 5) = v3;
  return result;
}

uint64_t static ToolKitProtoSystemToolProtocol.ToolKitProtoIntentSideEffectKind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23C726950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.searchKeywords.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.requirements.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.sampleInvocations.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.systemProtocols.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.hiddenParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.visibilityFlags.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ToolKitProtoToolDefinition.Version1.outputResultName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.getter()
{
  v1 = (v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ToolKitProtoToolDefinition.Version1.descriptionSummary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_23C72754C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C2F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C7275F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C344();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C727660(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C3EC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C7276C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C398();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.relationships.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_23C727924(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C440();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_23C727C18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a4 + *(a3(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.init(key:name:description_p:valueType:relationships:sampleInvocations:flags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v19 = *(v18 + 40);
  v20 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[*(v18 + 44)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 7) = a5;
  *(a9 + 8) = a6;
  result = sub_23C5842D0(a7, &a9[v19], &qword_27E1FAC40, &unk_23C8791C0);
  *(a9 + 4) = a8;
  *(a9 + 5) = a10;
  *(a9 + 6) = a11;
  return result;
}

uint64_t sub_23C727F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70C8D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.foreground.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.background.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.init(name:style:foreground:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  v16 = a8 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ToolKitProtoToolDefinition.Version1.Deprecation.replacedByToolID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_23C72826C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = a6 + *(a5(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.init(id:name:toolType:parameters:outputType:outputResultName:sourceApplication:descriptionSummary:categories:searchKeywords:deprecationDefinition:requirements:flags:authenticationPolicy:sampleInvocations:systemProtocols:customIcon:hiddenParameters:sourceContainer:attributionContainer:visibilityFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v45 = *a5;
  v52 = *a19;
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v28 = v27[17];
  v44 = v28;
  v29 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v27[19];
  v43 = (a9 + v27[18]);
  v31 = type metadata accessor for ToolKitProtoAppDefinition(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = v27[21];
  v33 = (a9 + v27[20]);
  v34 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  (*(*(v34 - 8) + 56))(a9 + v32, 1, 1, v34);
  v35 = v27[22];
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  (*(*(v36 - 8) + 56))(a9 + v35, 1, 1, v36);
  v37 = v27[23];
  v38 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v39 = *(*(v38 - 8) + 56);
  v39(a9 + v37, 1, 1, v38);
  v40 = v27[24];
  v39(a9 + v40, 1, 1, v38);
  v41 = a9 + v27[25];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v45;
  *(a9 + 40) = a6;
  sub_23C5842D0(a7, a9 + v44, &qword_27E1FAC40, &unk_23C8791C0);
  *v43 = a8;
  v43[1] = a10;
  sub_23C5842D0(a11, a9 + v30, &qword_27E1FEC48, &unk_23C889D50);
  *v33 = a12;
  v33[1] = a13;
  *(a9 + 48) = a14;
  *(a9 + 56) = a15;
  sub_23C5842D0(a16, a9 + v32, &qword_27E1FEC40, &qword_23C8898A8);
  *(a9 + 64) = a17;
  *(a9 + 72) = a18;
  *(a9 + 80) = v52;
  *(a9 + 88) = a20;
  *(a9 + 96) = a21;
  sub_23C5842D0(a22, a9 + v35, &qword_27E1FEC38, &unk_23C889D60);
  *(a9 + 104) = a23;
  sub_23C5842D0(a24, a9 + v37, &qword_27E1FEC30, &qword_23C8898A0);
  result = sub_23C5842D0(a25, a9 + v40, &qword_27E1FEC30, &qword_23C8898A0);
  *(a9 + 112) = a26;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.bundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ToolKitProtoAppDefinition.teamID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ToolKitProtoAppDefinition.teamID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_23C7288F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CA54();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_23C581BD8(v2, v3);
}

uint64_t ToolKitProtoAppDefinition.Device.deviceKind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_23C581AD0(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t ToolKitProtoAppDefinition.init(id:name:bundleID:bundleVersion:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v26 = *a13;
  v19 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v20 = *(v19 + 40);
  v21 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = a9 + *(v19 + 44);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
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
  result = sub_23C5842D0(a12, a9 + v20, &qword_27E1FEBE0, &qword_23C889850);
  *(a9 + 80) = v26;
  return result;
}

uint64_t sub_23C728C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CAFC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C728CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CAA8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoContainerDefinition.init(name:containerID:bundleVersion:containerType:teamID:device:origin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v18 = *a7;
  v25 = *a12;
  v19 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v20 = *(v19 + 40);
  v21 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  v22 = a9 + *(v19 + 44);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 32) = v18;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  result = sub_23C5842D0(a11, a9 + v20, &qword_27E1FEBD0, &unk_23C889D90);
  *(a9 + 33) = v25;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.numericFormat.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.init(name:numericFormat:synonyms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.getter()
{
  v1 = *(v0 + 16);
  sub_23C5EDBA0(v1, *(v0 + 24));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.tintColorData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C5AD0AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.getter()
{
  v1 = *(v0 + 32);
  sub_23C5EDBA0(v1, *(v0 + 40));
  return v1;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.configurationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C5AD0AC(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.init(name:tintColorData:configurationData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *(a7 + 1) = xmmword_23C879130;
  *(a7 + 2) = xmmword_23C879130;
  v14 = a7 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  sub_23C5AD0AC(a7[2], a7[3]);
  a7[2] = a3;
  a7[3] = a4;
  result = sub_23C5AD0AC(a7[4], a7[5]);
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.init(title:subtitle:altText:image:synonyms:snippetPluginModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v15 - 8) + 56))(&a8[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  v20 = v13[9];
  v21 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v21 - 8) + 56))(&a8[v20], 1, 1, v21);
  v22 = &a8[v13[10]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_23C5842D0(a3, &a8[v14], &qword_27E1FEBB0, &qword_23C889830);
  sub_23C5842D0(a4, &a8[v16], &qword_27E1FEBA0, &unk_23C889DA0);
  sub_23C5842D0(a5, &a8[v18], &qword_27E1FEB90, &qword_23C889818);
  *(a8 + 2) = a6;
  return sub_23C5842D0(a7, &a8[v20], &qword_27E1FEB80, &unk_23C889DB0);
}

uint64_t sub_23C7299D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C70CB50();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ToolKitProtoCoercionDefinition.init(direction:typeInstance:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[*(v6 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = v5;
  return sub_23C5842D0(a2, &a3[v7], &qword_27E1FAC40, &unk_23C8791C0);
}

BOOL _s26AIMLInstrumentationStreams26ToolKitProtoTypeIdentifierV0cdE13PrimitiveKindO2eeoiySbAE_AEtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 0x17:
      if (v2 != 23)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x18:
      if (v2 != 24)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x19:
      if (v2 != 25)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1A:
      if (v2 != 26)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1B:
      if (v2 != 27)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1C:
      if (v2 != 28)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1D:
      if (v2 != 29)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1E:
      if (v2 != 30)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x1F:
      if (v2 != 31)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x20:
      if (v2 != 32)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x21:
      if (v2 != 33)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x22:
      if (v2 != 34)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x23:
      if (v2 != 35)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x24:
      if (v2 != 36)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x25:
      if (v2 != 37)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x26:
      if (v2 != 38)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x27:
      if (v2 != 39)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    case 0x28:
      if (v2 != 40)
      {
        goto LABEL_40;
      }

      result = 1;
      break;
    default:
      if ((v2 - 23) < 0x12)
      {
LABEL_40:
        result = 0;
      }

      else
      {
        result = *a1 == v2;
      }

      break;
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC13SummaryStringV0cdE13ComponentKindO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_23C5EDA24();
    sub_23C5EDA24();
    sub_23C5EDA44();
    sub_23C5EDA44();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_23C872014();
    sub_23C5EDA24();
    sub_23C5EDA24();
    sub_23C5EDA44();
    sub_23C5EDA44();
    return v14 & 1;
  }

LABEL_15:
  sub_23C5EDA24();
  sub_23C5EDA24();
  sub_23C5EDA44();
  sub_23C5EDA44();
  return 1;
}

uint64_t sub_23C729F2C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_23C872014();
}

uint64_t _s26AIMLInstrumentationStreams45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE98, &qword_23C88DAE0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_23C73EA70(a1, &v31 - v22, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_23C73EA70(a2, &v23[v24], type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C73EA70(v23, v16, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(&v23[v24], v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v25 = static ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)(v16, v7);
      sub_23C73E950(v7, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v26 = v16;
      v27 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
LABEL_9:
      sub_23C73E950(v26, v27);
      sub_23C73E950(v23, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      return v25 & 1;
    }

    v28 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration;
    v29 = v16;
  }

  else
  {
    sub_23C73EA70(v23, v18, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v23[v24], v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v25 = static ToolKitProtoAssistantTypeSchemaDefinition.Entity.== infix(_:_:)(v18, v11);
      sub_23C73E950(v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v26 = v18;
      v27 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
      goto LABEL_9;
    }

    v28 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity;
    v29 = v18;
  }

  sub_23C73E950(v29, v28);
  sub_23C585C34(v23, &qword_27E1FFE98, &qword_23C88DAE0);
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV0cdE10StaticKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v37 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v37 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE68, &qword_23C88DAB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v37 - v21;
  v23 = (&v37 + *(v20 + 56) - v21);
  sub_23C73EA70(a1, &v37 - v21, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_23C73EA70(a2, v23, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23C73EA70(v22, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v26 = *v17;
    v27 = v17[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = *v23;
      v33 = v23[1];
      v25 = sub_23C6F73FC(v26, v27, v34, v33);
      sub_23C595090(v34, v33);
      sub_23C595090(v26, v27);
      goto LABEL_19;
    }

    sub_23C595090(v26, v27);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_23C73EA70(v22, v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(v23, v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v25 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(v15, v7);
      sub_23C73E950(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_23C73E950(v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
LABEL_19:
      sub_23C73E950(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      return v25 & 1;
    }

    sub_23C73E950(v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    goto LABEL_16;
  }

  sub_23C73EA70(v22, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v29 = *v12;
  v28 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

LABEL_16:
    sub_23C585C34(v22, &qword_27E1FFE68, &qword_23C88DAB0);
    goto LABEL_17;
  }

  if (v29 == *v23 && v28 == v23[1])
  {
    v35 = v23[1];

    goto LABEL_21;
  }

  v31 = v23[1];
  v32 = sub_23C872014();

  if (v32)
  {
LABEL_21:
    sub_23C73E950(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v25 = 1;
    return v25 & 1;
  }

  sub_23C73E950(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_17:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE9ImageKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v8 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE60, &qword_23C88DAA8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - v21;
  v23 = *(v20 + 56);
  sub_23C73EA70(a1, &v30 - v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_23C73EA70(a2, &v22[v23], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C73EA70(v22, v17, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v22[v23], v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_23C6F73FC(*v17, *(v17 + 1), *v10, *(v10 + 1)))
      {
        v27 = *(v31 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        v28 = sub_23C871754();
        sub_23C73E950(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v28)
        {
          sub_23C73E950(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          sub_23C73E950(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
          v24 = 1;
          return v24 & 1;
        }
      }

      else
      {
        sub_23C73E950(v10, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      sub_23C73E950(v17, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C73E950(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v26 = v17;
LABEL_7:
    sub_23C73E950(v26, v25);
    sub_23C585C34(v22, &qword_27E1FFE60, &qword_23C88DAA8);
    goto LABEL_13;
  }

  sub_23C73EA70(v22, v15, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static;
    v26 = v15;
    goto LABEL_7;
  }

  sub_23C73E9B0(&v22[v23], v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  v24 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(v15, v7);
  sub_23C73E950(v7, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_23C73E950(v15, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  sub_23C73E950(v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  return v24 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE11AltTextKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE70, &qword_23C88DAB8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v34 - v20;
  v22 = *(v19 + 56);
  sub_23C73EA70(a1, &v34 - v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_23C73EA70(a2, &v21[v22], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C73EA70(v21, v14, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(&v21[v22], v6, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v23 = *v14 == *v6 && v14[1] == v6[1];
      if (v23 || (sub_23C872014() & 1) != 0)
      {
        v24 = *(v35 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C73E950(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
          v25 = v14;
          v26 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_17:
          sub_23C73E950(v25, v26);
          sub_23C73E950(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
          return 1;
        }
      }

      sub_23C73E950(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v32 = v14;
      v33 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
LABEL_21:
      sub_23C73E950(v32, v33);
      sub_23C73E950(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      return 0;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static;
    v28 = v14;
  }

  else
  {
    sub_23C73EA70(v21, v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v21[v22], v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_23C6F73FC(*v16, *(v16 + 1), *v9, *(v9 + 1)))
      {
        v29 = *(v34 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        v30 = sub_23C871754();
        sub_23C73E950(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
        if (v30)
        {
          v26 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          v25 = v16;
          goto LABEL_17;
        }
      }

      else
      {
        sub_23C73E950(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      }

      v33 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      v32 = v16;
      goto LABEL_21;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v28 = v16;
  }

  sub_23C73E950(v28, v27);
  sub_23C585C34(v21, &qword_27E1FFE70, &qword_23C88DAB8);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0cdeF4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v120 = a1;
  v2 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v111 = (&v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v110 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v109 = (&v98 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v108 = (&v98 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = (&v98 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = (&v98 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = (&v98 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v104 = (&v98 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v103 = (&v98 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v102 = (&v98 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v101 = (&v98 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v100 = (&v98 - v28);
  MEMORY[0x28223BE20](v27);
  v99 = (&v98 - v29);
  v30 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v118 = (&v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v117 = (&v98 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v116 = (&v98 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v115 = (&v98 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v114 = (&v98 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v113 = (&v98 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v112 = (&v98 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = (&v98 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = (&v98 - v50);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v98 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = (&v98 - v56);
  v58 = MEMORY[0x28223BE20](v55);
  v60 = (&v98 - v59);
  MEMORY[0x28223BE20](v58);
  v62 = (&v98 - v61);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEB8, &qword_23C88DB00);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v67 = &v98 - v66;
  v68 = *(v65 + 56);
  sub_23C73EA70(v120, &v98 - v66, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v120 = v68;
  sub_23C73EA70(v119, &v67[v68], type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v67, v60, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v88 = v120;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_38;
      }

      v73 = &v67[v88];
      v74 = v100;
      goto LABEL_34;
    case 2u:
      sub_23C73EA70(v67, v57, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v83 = v120;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v84 = v101;
        sub_23C73E9B0(&v67[v83], v101, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v57, v84);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v84, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v57;
        goto LABEL_36;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v57;
      goto LABEL_40;
    case 3u:
      sub_23C73EA70(v67, v54, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v85 = v120;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v86 = v102;
        sub_23C73E9B0(&v67[v85], v102, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v54, v86);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v86, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v54;
        goto LABEL_36;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v54;
      goto LABEL_40;
    case 4u:
      sub_23C73EA70(v67, v51, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v75 = v120;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v76 = v103;
        sub_23C73E9B0(&v67[v75], v103, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v51, v76);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v76, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v51;
        goto LABEL_36;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v51;
      goto LABEL_40;
    case 5u:
      sub_23C73EA70(v67, v48, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v89 = v120;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v90 = v104;
        sub_23C73E9B0(&v67[v89], v104, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v48, v90);
        sub_23C73E950(v90, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v48;
        v91 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_37;
      }

      v70 = type metadata accessor for ToolKitProtoTypedValue;
      v71 = v48;
      goto LABEL_40;
    case 6u:
      v60 = v112;
      sub_23C73EA70(v67, v112, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v92 = v120;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_38;
      }

      v73 = &v67[v92];
      v74 = v105;
      goto LABEL_34;
    case 7u:
      v60 = v113;
      sub_23C73EA70(v67, v113, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v87 = v120;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_38;
      }

      v73 = &v67[v87];
      v74 = v106;
      goto LABEL_34;
    case 8u:
      v60 = v114;
      sub_23C73EA70(v67, v114, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v94 = v120;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_38;
      }

      v73 = &v67[v94];
      v74 = v107;
      goto LABEL_34;
    case 9u:
      v60 = v115;
      sub_23C73EA70(v67, v115, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v82 = v120;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_38;
      }

      v73 = &v67[v82];
      v74 = v108;
      goto LABEL_34;
    case 0xAu:
      v60 = v116;
      sub_23C73EA70(v67, v116, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v93 = v120;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_38;
      }

      v73 = &v67[v93];
      v74 = v109;
      goto LABEL_34;
    case 0xBu:
      v60 = v117;
      sub_23C73EA70(v67, v117, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v72 = v120;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_38:
        v95 = type metadata accessor for ToolKitProtoTypedValue;
        goto LABEL_39;
      }

      v73 = &v67[v72];
      v74 = v110;
LABEL_34:
      sub_23C73E9B0(v73, v74, type metadata accessor for ToolKitProtoTypedValue);
      v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v60, v74);
      v81 = type metadata accessor for ToolKitProtoTypedValue;
      goto LABEL_35;
    case 0xCu:
      v60 = v118;
      sub_23C73EA70(v67, v118, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v80 = v120;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v95 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_39:
        v70 = v95;
        v71 = v60;
        goto LABEL_40;
      }

      v74 = v111;
      sub_23C73E9B0(&v67[v80], v111, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v77 = static ToolKitProtoComparisonPredicate.Comparison.Pair.== infix(_:_:)(v60, v74);
      v81 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair;
LABEL_35:
      v78 = v81;
      sub_23C73E950(v74, v81);
      v79 = v60;
      goto LABEL_36;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_41;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_41;
      }

LABEL_27:
      sub_23C73E950(v67, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v77 = 1;
      return v77 & 1;
    default:
      sub_23C73EA70(v67, v62, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v69 = v120;
      if (swift_getEnumCaseMultiPayload())
      {
        v70 = type metadata accessor for ToolKitProtoTypedValue;
        v71 = v62;
LABEL_40:
        sub_23C73E950(v71, v70);
LABEL_41:
        sub_23C585C34(v67, &qword_27E1FFEB8, &qword_23C88DB00);
        v77 = 0;
      }

      else
      {
        v97 = v99;
        sub_23C73E9B0(&v67[v69], v99, type metadata accessor for ToolKitProtoTypedValue);
        v77 = static ToolKitProtoTypedValue.== infix(_:_:)(v62, v97);
        v78 = type metadata accessor for ToolKitProtoTypedValue;
        sub_23C73E950(v97, type metadata accessor for ToolKitProtoTypedValue);
        v79 = v62;
LABEL_36:
        v91 = v78;
LABEL_37:
        sub_23C73E950(v79, v91);
        sub_23C73E950(v67, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      }

      return v77 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0);
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v43 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEF0, &qword_23C88DB38);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v43 - v25;
  v27 = *(v24 + 56);
  sub_23C73EA70(a1, &v43 - v25, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_23C73EA70(a2, &v26[v27], type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v26, v19, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v28 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema;
        v29 = v19;
        goto LABEL_38;
      }

      sub_23C73E9B0(&v26[v27], v9, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      v35 = static ToolKitProtoSystemTypeProtocol.AssistantSchema.== infix(_:_:)(v19, v9);
      sub_23C73E950(v9, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_23C73E950(v19, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
      sub_23C73E950(v26, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      return v35 & 1;
    case 2u:
      sub_23C73EA70(v26, v16, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v28 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
        v29 = v16;
        goto LABEL_38;
      }

      v30 = v46;
      sub_23C73E9B0(&v26[v27], v46, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      if (sub_23C5D25E0(*v16, *v30))
      {
        v31 = *(v43 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        v32 = sub_23C871754();
        sub_23C73E950(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        if (v32)
        {
          v33 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
          v34 = v16;
          goto LABEL_48;
        }
      }

      else
      {
        sub_23C73E950(v30, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
      }

      v41 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable;
      v42 = v16;
      goto LABEL_55;
    case 3u:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 5u:
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_49;
      }

      goto LABEL_39;
    default:
      sub_23C73EA70(v26, v21, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v28 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v29 = v21;
LABEL_38:
        sub_23C73E950(v29, v28);
LABEL_39:
        sub_23C585C34(v26, &qword_27E1FFEF0, &qword_23C88DB38);
        goto LABEL_40;
      }

      v36 = v45;
      sub_23C73E9B0(&v26[v27], v45, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      v37 = *v21 == *v36 && v21[1] == v36[1];
      if (!v37 && (sub_23C872014() & 1) == 0)
      {
        sub_23C73E950(v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
LABEL_54:
        v41 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
        v42 = v21;
LABEL_55:
        sub_23C73E950(v42, v41);
        sub_23C73E950(v26, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_40:
        v35 = 0;
        return v35 & 1;
      }

      v38 = *(v44 + 20);
      sub_23C870F34();
      sub_23C73EA18();
      v39 = sub_23C871754();
      sub_23C73E950(v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
      if ((v39 & 1) == 0)
      {
        goto LABEL_54;
      }

      v33 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity;
      v34 = v21;
LABEL_48:
      sub_23C73E950(v34, v33);
LABEL_49:
      sub_23C73E950(v26, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
      v35 = 1;
      return v35 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v43 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v45 = &v43 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEA0, &qword_23C88DAE8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v43 - v28;
  v30 = *(v27 + 56);
  sub_23C73EA70(a1, &v43 - v28, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_23C73EA70(v46, &v29[v30], type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C73EA70(v29, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v32 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
        v33 = v22;
        goto LABEL_22;
      }

      sub_23C73E9B0(&v29[v30], v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v38 = static ToolKitProtoRuntimeRequirement.DeviceCapability.== infix(_:_:)(v22, v8);
      sub_23C73E950(v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v39 = v22;
      v40 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability;
    }

    else
    {
      sub_23C73EA70(v29, v24, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v32 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
        v33 = v24;
LABEL_22:
        sub_23C73E950(v33, v32);
        goto LABEL_23;
      }

      sub_23C73E9B0(&v29[v30], v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v38 = static ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.== infix(_:_:)(v24, v12);
      sub_23C73E950(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v39 = v24;
      v40 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation;
    }

    sub_23C73E950(v39, v40);
    sub_23C73E950(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    return v38 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v34 = v45;
    sub_23C73EA70(v29, v45, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v32 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag;
      v33 = v34;
      goto LABEL_22;
    }

    v35 = &v29[v30];
    v36 = v44;
    sub_23C73E9B0(v35, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if ((*v34 != *v36 || *(v34 + 8) != *(v36 + 8)) && (sub_23C872014() & 1) == 0 || (*(v34 + 16) != *(v36 + 16) || *(v34 + 24) != *(v36 + 24)) && (sub_23C872014() & 1) == 0 || *(v34 + 32) != *(v36 + 32) || (v37 = *(v43 + 28), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      sub_23C73E950(v36, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_23C73E950(v34, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_23C73E950(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      goto LABEL_24;
    }

    sub_23C73E950(v36, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C73E950(v34, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C73E950(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v38 = 1;
  }

  else
  {
    sub_23C73EA70(v29, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_23:
      sub_23C585C34(v29, &qword_27E1FFEA0, &qword_23C88DAE8);
LABEL_24:
      v38 = 0;
      return v38 & 1;
    }

    v41 = *v17 ^ v29[v30];
    sub_23C73E950(v29, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v38 = v41 ^ 1;
  }

  return v38 & 1;
}

BOOL _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV0cdE20DeviceCapabilityKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEA8, &qword_23C88DAF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_23C73EA70(a1, &v21 - v14, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C73EA70(a2, &v15[v16], type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C73E9B0(v15, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C73E9B0(&v15[v16], v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v17 = *v10 == *v8 && *(v10 + 1) == *(v8 + 1);
  v19 = 0;
  if (v17 || (sub_23C872014()) && v10[16] == v8[16])
  {
    v18 = *(v4 + 24);
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      v19 = 1;
    }
  }

  sub_23C73E950(v8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C73E950(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  return v19;
}

uint64_t _s26AIMLInstrumentationStreams42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v49 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v46 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v46 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEC8, &qword_23C88DB10);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v46 - v22;
  v24 = (&v46 + *(v21 + 56) - v22);
  sub_23C73EA70(a1, &v46 - v22, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_23C73EA70(a2, v24, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C73EA70(v23, v16, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_23C73E9B0(v24, v8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v26 = *v16 == *v8 && v16[1] == v8[1];
        if (v26 || (sub_23C872014() & 1) != 0)
        {
          v27 = v16[2] == v8[2] && v16[3] == v8[3];
          if (v27 || (sub_23C872014() & 1) != 0)
          {
            v28 = *(v47 + 24);
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v29 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
              sub_23C73E950(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
              v30 = v16;
LABEL_31:
              sub_23C73E950(v30, v29);
LABEL_49:
              sub_23C73E950(v23, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
              return 1;
            }
          }
        }

        v42 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
        sub_23C73E950(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v43 = v16;
LABEL_44:
        sub_23C73E950(v43, v42);
LABEL_45:
        sub_23C73E950(v23, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
        return 0;
      }

      v37 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass;
      v38 = v16;
    }

    else
    {
      sub_23C73EA70(v23, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v33 = v49;
        sub_23C73E9B0(v24, v49, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v34 = *v13 == *v33 && v13[1] == v33[1];
        if (v34 || (sub_23C872014() & 1) != 0)
        {
          v35 = v13[2] == v33[2] && v13[3] == v33[3];
          if (v35 || (sub_23C872014() & 1) != 0)
          {
            v36 = *(v48 + 24);
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v29 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
              sub_23C73E950(v33, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
              v30 = v13;
              goto LABEL_31;
            }
          }
        }

        v42 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
        sub_23C73E950(v33, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v43 = v13;
        goto LABEL_44;
      }

      v37 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass;
      v38 = v13;
    }

    sub_23C73E950(v38, v37);
  }

  else
  {
    sub_23C73EA70(v23, v18, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v32 = *v18;
    v31 = v18[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v32 == *v24 && v31 == v24[1])
      {
        v45 = v24[1];

        goto LABEL_49;
      }

      v40 = v24[1];
      v41 = sub_23C872014();

      if (v41)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  sub_23C585C34(v23, &qword_27E1FFEC8, &qword_23C88DB10);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V0cdeF12TemplateKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v113 = a1;
  v2 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v104 = (&v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v103 = (&v91 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v102 = (&v91 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v101 = (&v91 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v100 = (&v91 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = (&v91 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v98 = (&v91 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v97 = (&v91 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v96 = (&v91 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = (&v91 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v94 = (&v91 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v93 = (&v91 - v27);
  MEMORY[0x28223BE20](v26);
  v92 = (&v91 - v28);
  v29 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v111 = (&v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v110 = (&v91 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v109 = (&v91 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v108 = (&v91 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v107 = (&v91 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v106 = (&v91 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v105 = (&v91 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = (&v91 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = (&v91 - v49);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = (&v91 - v52);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = (&v91 - v55);
  v57 = MEMORY[0x28223BE20](v54);
  v59 = (&v91 - v58);
  MEMORY[0x28223BE20](v57);
  v61 = (&v91 - v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEC0, &qword_23C88DB08);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v66 = &v91 - v65;
  v67 = *(v64 + 56);
  sub_23C73EA70(v113, &v91 - v65, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v113 = v67;
  sub_23C73EA70(v112, &v66[v67], type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C73EA70(v66, v59, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v83 = v113;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v84 = v93;
        sub_23C73E9B0(&v66[v83], v93, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v59, v84);
        sub_23C73E950(v84, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v59;
        goto LABEL_35;
      }

      v61 = v59;
      goto LABEL_41;
    case 2u:
      sub_23C73EA70(v66, v56, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v78 = v113;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v79 = v94;
        sub_23C73E9B0(&v66[v78], v94, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v56, v79);
        sub_23C73E950(v79, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C73E950(v56, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C73E950(v66, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        return v74 & 1;
      }

      v61 = v56;
      goto LABEL_41;
    case 3u:
      sub_23C73EA70(v66, v53, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v80 = v113;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v81 = v95;
        sub_23C73E9B0(&v66[v80], v95, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v53, v81);
        sub_23C73E950(v81, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v53;
        goto LABEL_35;
      }

      v61 = v53;
      goto LABEL_41;
    case 4u:
      sub_23C73EA70(v66, v50, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v72 = v113;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v73 = v96;
        sub_23C73E9B0(&v66[v72], v96, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v50, v73);
        sub_23C73E950(v73, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v50;
        goto LABEL_35;
      }

      v61 = v50;
      goto LABEL_41;
    case 5u:
      sub_23C73EA70(v66, v47, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v85 = v113;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v86 = v97;
        sub_23C73E9B0(&v66[v85], v97, type metadata accessor for ToolKitProtoTypeInstance);
        v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v47, v86);
        sub_23C73E950(v86, type metadata accessor for ToolKitProtoTypeInstance);
        v75 = v47;
LABEL_35:
        sub_23C73E950(v75, type metadata accessor for ToolKitProtoTypeInstance);
        sub_23C73E950(v66, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      }

      else
      {
        v61 = v47;
LABEL_41:
        sub_23C73E950(v61, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_42:
        sub_23C585C34(v66, &qword_27E1FFEC0, &qword_23C88DB08);
        v74 = 0;
      }

      return v74 & 1;
    case 6u:
      v61 = v105;
      sub_23C73EA70(v66, v105, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v87 = v113;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_41;
      }

      v69 = &v66[v87];
      v70 = v98;
      goto LABEL_34;
    case 7u:
      v61 = v106;
      sub_23C73EA70(v66, v106, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v82 = v113;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_41;
      }

      v69 = &v66[v82];
      v70 = v99;
      goto LABEL_34;
    case 8u:
      v61 = v107;
      sub_23C73EA70(v66, v107, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v89 = v113;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }

      v69 = &v66[v89];
      v70 = v100;
      goto LABEL_34;
    case 9u:
      v61 = v108;
      sub_23C73EA70(v66, v108, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v77 = v113;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_41;
      }

      v69 = &v66[v77];
      v70 = v101;
      goto LABEL_34;
    case 0xAu:
      v61 = v109;
      sub_23C73EA70(v66, v109, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v88 = v113;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_41;
      }

      v69 = &v66[v88];
      v70 = v102;
      goto LABEL_34;
    case 0xBu:
      v61 = v110;
      sub_23C73EA70(v66, v110, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v71 = v113;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_41;
      }

      v69 = &v66[v71];
      v70 = v103;
      goto LABEL_34;
    case 0xCu:
      v61 = v111;
      sub_23C73EA70(v66, v111, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v76 = v113;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_41;
      }

      v69 = &v66[v76];
      v70 = v104;
      goto LABEL_34;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_27;
      }

      goto LABEL_42;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_42;
      }

LABEL_27:
      sub_23C73E950(v66, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v74 = 1;
      return v74 & 1;
    default:
      sub_23C73EA70(v66, v61, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v68 = v113;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v69 = &v66[v68];
      v70 = v92;
LABEL_34:
      sub_23C73E9B0(v69, v70, type metadata accessor for ToolKitProtoTypeInstance);
      v74 = static ToolKitProtoTypeInstance.== infix(_:_:)(v61, v70);
      sub_23C73E950(v70, type metadata accessor for ToolKitProtoTypeInstance);
      v75 = v61;
      goto LABEL_35;
  }
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV0cde5ValueI4KindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v58 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v57 = (&v57 - v6);
  v7 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v57 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v57 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v57 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v57 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFED0, &qword_23C88DB18);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v57 - v32;
  v34 = (&v57 + *(v31 + 56) - v32);
  sub_23C73EA70(v61, &v57 - v32, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_23C73EA70(v62, v34, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v42 = v60;
    if (EnumCaseMultiPayload)
    {
      sub_23C73EA70(v33, v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_23C73E9B0(v34, v42, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v45 = v33;
        V2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(v26, v42);
        v47 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
        sub_23C73E950(v42, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
        v48 = v26;
        goto LABEL_20;
      }

      v43 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues;
    }

    else
    {
      v26 = v28;
      sub_23C73EA70(v33, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      if (!swift_getEnumCaseMultiPayload())
      {
        v36 = v33;
        sub_23C73E9B0(v34, v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        if ((*v26 != *v13 || v26[1] != v13[1]) && (sub_23C872014() & 1) == 0 || (v26[2] != v13[2] || v26[3] != v13[3]) && (sub_23C872014() & 1) == 0 || (v55 = *(v10 + 24), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          sub_23C73E950(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
          sub_23C73E950(v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_40:
          sub_23C73E950(v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          goto LABEL_29;
        }

        sub_23C73E950(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        sub_23C73E950(v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
LABEL_42:
        sub_23C73E950(v36, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
        V2eeoiySbAI_AItFZ_0 = 1;
        return V2eeoiySbAI_AItFZ_0 & 1;
      }

      v43 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration;
    }

    v52 = v43;
    v53 = v26;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C73EA70(v33, v23, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v52 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
      v53 = v23;
LABEL_27:
      sub_23C73E950(v53, v52);
      goto LABEL_28;
    }

    v44 = v57;
    sub_23C73E9B0(v34, v57, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v45 = v33;
    V2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V9LinkQueryV2eeoiySbAI_AItFZ_0(v23, v44);
    v47 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    sub_23C73E950(v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    v48 = v23;
LABEL_20:
    v51 = v47;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v36 = v33;
    sub_23C73EA70(v33, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v38 = *v20;
    v37 = v20[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (v38 != *v34 || v37 != v34[1])
      {
        v40 = v34[1];
        v41 = sub_23C872014();

        if (v41)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v56 = v34[1];

      goto LABEL_42;
    }

    v33 = v36;
LABEL_28:
    sub_23C585C34(v33, &qword_27E1FFED0, &qword_23C88DB18);
LABEL_29:
    V2eeoiySbAI_AItFZ_0 = 0;
    return V2eeoiySbAI_AItFZ_0 & 1;
  }

  v49 = v59;
  sub_23C73EA70(v33, v59, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v52 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
    v53 = v49;
    goto LABEL_27;
  }

  v50 = v58;
  sub_23C73E9B0(v34, v58, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v45 = v33;
  V2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V9LinkQueryV2eeoiySbAI_AItFZ_0(v49, v50);
  sub_23C73E950(v50, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v48 = v49;
  v51 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery;
LABEL_21:
  sub_23C73E950(v48, v51);
  sub_23C73E950(v45, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  return V2eeoiySbAI_AItFZ_0 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoRestrictionContextKindO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  v18 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - v23;
  v25 = *a1;
  v26 = *a2;
  v27 = v25 >> 61;
  if ((v25 >> 61) <= 1)
  {
    if (v27)
    {
      if (v26 >> 61 == 1)
      {
        v33 = swift_projectBox();
        v34 = swift_projectBox();
        sub_23C73EA70(v33, v17, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        sub_23C73EA70(v34, v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        if (sub_23C5D25E0(*v17, *v15))
        {
          v35 = *(v11 + 20);
          sub_23C870F34();
          sub_23C73EA18();

          v36 = sub_23C871754();
          sub_23C73E950(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_23C73E950(v17, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

          if (v36)
          {
            v30 = 1;
            return v30 & 1;
          }
        }

        else
        {

          sub_23C73E950(v15, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
          sub_23C73E950(v17, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
        }
      }
    }

    else if (!(v26 >> 61))
    {
      v28 = swift_projectBox();
      v29 = swift_projectBox();
      sub_23C73EA70(v28, v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_23C73EA70(v29, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

      v30 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(v24, v22);
      sub_23C73E950(v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
      sub_23C73E950(v24, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
LABEL_13:

      return v30 & 1;
    }

LABEL_19:
    v30 = 0;
    return v30 & 1;
  }

  if (v27 != 2)
  {
    if (v27 == 3)
    {
      if (v26 >> 61 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (v26 >> 61 == 4)
    {
      v31 = swift_projectBox();
      v32 = swift_projectBox();
      sub_23C73EA70(v31, v10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_23C73EA70(v32, v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

      v30 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(v10, v8);
      sub_23C73E950(v8, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      sub_23C73E950(v10, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (v26 >> 61 != 2)
  {
    goto LABEL_19;
  }

LABEL_10:
  v30 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v26 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  return v30 & 1;
}

BOOL _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV08DeferredG0V0cdE11StorageKindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFED8, &qword_23C88DB20);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_23C73EA70(a1, &v21 - v14, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C73EA70(a2, &v15[v16], type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_23C73E9B0(v15, v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C73E9B0(&v15[v16], v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v19 = 0;
  if (sub_23C6F73FC(*v10, v10[1], *v8, v8[1]))
  {
    v17 = v10[2] == v8[2] && v10[3] == v8[3];
    if (v17 || (sub_23C872014() & 1) != 0)
    {
      v18 = *(v4 + 24);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v19 = 1;
      }
    }
  }

  sub_23C73E950(v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_23C73E950(v10, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  return v19;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV0cdE12SubtitleKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v7 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFE78, &qword_23C88DAC0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v33 - v20;
  v22 = *(v19 + 56);
  sub_23C73EA70(a1, &v33 - v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_23C73EA70(a2, &v21[v22], type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C73EA70(v21, v14, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C73E9B0(&v21[v22], v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v23 = *v14 == *v6 && v14[1] == v6[1];
      if (v23 || (sub_23C872014() & 1) != 0)
      {
        v24 = *(v34 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
          sub_23C73E950(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
          v26 = v14;
LABEL_17:
          sub_23C73E950(v26, v25);
          sub_23C73E950(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
          return 1;
        }
      }

      v31 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
      sub_23C73E950(v6, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v32 = v14;
LABEL_20:
      sub_23C73E950(v32, v31);
      sub_23C73E950(v21, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      return 0;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static;
    v28 = v14;
  }

  else
  {
    sub_23C73EA70(v21, v16, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23C73E9B0(&v21[v22], v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      if (sub_23C6F73FC(*v16, *(v16 + 1), *v9, *(v9 + 1)))
      {
        v29 = *(v33 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v25 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
          sub_23C73E950(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
          v26 = v16;
          goto LABEL_17;
        }
      }

      v31 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
      sub_23C73E950(v9, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v32 = v16;
      goto LABEL_20;
    }

    v27 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage;
    v28 = v16;
  }

  sub_23C73E950(v28, v27);
  sub_23C585C34(v21, &qword_27E1FFE78, &qword_23C88DAC0);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams17ToolKitProtoQueryV0cdE16AnyPredicateKindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v93 = a1;
  v94 = a2;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v3 = *(*(valid - 8) + 64);
  MEMORY[0x28223BE20](valid - 8);
  v89 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v13 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v88 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v15 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v86 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v17 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v84 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v92 = &v79 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v79 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v79 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v91 = &v79 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = (&v79 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v79 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = (&v79 - v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FFEB0, &qword_23C88DAF8);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v49 = &v79 - v48;
  v50 = *(v47 + 56);
  sub_23C73EA70(v93, &v79 - v48, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_23C73EA70(v94, &v49[v50], type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v62 = v92;
        sub_23C73EA70(v49, v92, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v63 = v90;
          sub_23C73E9B0(&v49[v50], v90, type metadata accessor for ToolKitProtoSearchableItemPredicate);
          if (sub_23C6F73FC(*v62, *(v62 + 8), *v63, *(v63 + 8)))
          {
            v64 = *(v80 + 20);
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v65 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_35:
              v60 = v65;
              sub_23C73E950(v63, v65);
              v61 = v62;
              goto LABEL_36;
            }
          }

          v77 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_55:
          v73 = v77;
          sub_23C73E950(v63, v77);
          v74 = v62;
          goto LABEL_56;
        }

        v72 = type metadata accessor for ToolKitProtoSearchableItemPredicate;
LABEL_47:
        v52 = v72;
        v53 = v62;
        goto LABEL_49;
      }

      sub_23C73EA70(v49, v26, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v52 = type metadata accessor for ToolKitProtoValidPredicate;
        v53 = v26;
        goto LABEL_49;
      }

      v70 = v89;
      sub_23C73E9B0(&v49[v50], v89, type metadata accessor for ToolKitProtoValidPredicate);
      sub_23C870F34();
      sub_23C73EA18();
      v55 = sub_23C871754();
      v56 = type metadata accessor for ToolKitProtoValidPredicate;
      sub_23C73E950(v70, type metadata accessor for ToolKitProtoValidPredicate);
      v57 = v26;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C73EA70(v49, v34, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v52 = type metadata accessor for ToolKitProtoAllPredicate;
        v53 = v34;
        goto LABEL_49;
      }

      v54 = v85;
      sub_23C73E9B0(&v49[v50], v85, type metadata accessor for ToolKitProtoAllPredicate);
      sub_23C870F34();
      sub_23C73EA18();
      v55 = sub_23C871754();
      v56 = type metadata accessor for ToolKitProtoAllPredicate;
      sub_23C73E950(v54, type metadata accessor for ToolKitProtoAllPredicate);
      v57 = v34;
    }

    else
    {
      sub_23C73EA70(v49, v31, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v52 = type metadata accessor for ToolKitProtoSuggestedPredicate;
        v53 = v31;
        goto LABEL_49;
      }

      v68 = v87;
      sub_23C73E9B0(&v49[v50], v87, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_23C870F34();
      sub_23C73EA18();
      v55 = sub_23C871754();
      v56 = type metadata accessor for ToolKitProtoSuggestedPredicate;
      sub_23C73E950(v68, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v57 = v31;
    }

    v71 = v56;
LABEL_40:
    sub_23C73E950(v57, v71);
    sub_23C73E950(v49, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    return v55 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C73EA70(v49, v44, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v52 = type metadata accessor for ToolKitProtoComparisonPredicate;
        v53 = v44;
LABEL_49:
        sub_23C73E950(v53, v52);
        sub_23C585C34(v49, &qword_27E1FFEB0, &qword_23C88DAF8);
LABEL_57:
        v55 = 0;
        return v55 & 1;
      }

      v75 = &v49[v50];
      v76 = v81;
      sub_23C73E9B0(v75, v81, type metadata accessor for ToolKitProtoComparisonPredicate);
      v55 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(v44, v76);
      sub_23C73E950(v76, type metadata accessor for ToolKitProtoComparisonPredicate);
      v57 = v44;
      v71 = type metadata accessor for ToolKitProtoComparisonPredicate;
      goto LABEL_40;
    }

    sub_23C73EA70(v49, v42, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v52 = type metadata accessor for ToolKitProtoCompoundPredicate;
      v53 = v42;
      goto LABEL_49;
    }

    v66 = v84;
    sub_23C73E9B0(&v49[v50], v84, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (*v42 == *v66 && (sub_23C5DC0E8(*(v42 + 1), *(v66 + 1)) & 1) != 0)
    {
      v67 = *(v79 + 24);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v60 = type metadata accessor for ToolKitProtoCompoundPredicate;
        sub_23C73E950(v66, type metadata accessor for ToolKitProtoCompoundPredicate);
        v61 = v42;
        goto LABEL_36;
      }
    }

    v73 = type metadata accessor for ToolKitProtoCompoundPredicate;
    sub_23C73E950(v66, type metadata accessor for ToolKitProtoCompoundPredicate);
    v74 = v42;
LABEL_56:
    sub_23C73E950(v74, v73);
    sub_23C73E950(v49, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v62 = v91;
    sub_23C73EA70(v49, v91, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v63 = v88;
      sub_23C73E9B0(&v49[v50], v88, type metadata accessor for ToolKitProtoIdSearchPredicate);
      if (*v62 == *v63 && *(v62 + 8) == *(v63 + 8) || (sub_23C872014() & 1) != 0)
      {
        v69 = *(v83 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v65 = type metadata accessor for ToolKitProtoIdSearchPredicate;
          goto LABEL_35;
        }
      }

      v77 = type metadata accessor for ToolKitProtoIdSearchPredicate;
      goto LABEL_55;
    }

    v72 = type metadata accessor for ToolKitProtoIdSearchPredicate;
    goto LABEL_47;
  }

  sub_23C73EA70(v49, v39, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v52 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    v53 = v39;
    goto LABEL_49;
  }

  v58 = v86;
  sub_23C73E9B0(&v49[v50], v86, type metadata accessor for ToolKitProtoStringSearchPredicate);
  if ((*v39 != *v58 || v39[1] != v58[1]) && (sub_23C872014() & 1) == 0 || (v59 = *(v82 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
  {
    v73 = type metadata accessor for ToolKitProtoStringSearchPredicate;
    sub_23C73E950(v58, type metadata accessor for ToolKitProtoStringSearchPredicate);
    v74 = v39;
    goto LABEL_56;
  }

  v60 = type metadata accessor for ToolKitProtoStringSearchPredicate;
  sub_23C73E950(v58, type metadata accessor for ToolKitProtoStringSearchPredicate);
  v61 = v39;
LABEL_36:
  sub_23C73E950(v61, v60);
  sub_23C73E950(v49, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v55 = 1;
  return v55 & 1;
}