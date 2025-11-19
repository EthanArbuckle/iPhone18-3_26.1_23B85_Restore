uint64_t sub_23C6BBA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED28, &qword_23C889978);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FED28, &qword_23C889978);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoIdSearchPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoIdSearchPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED28, &qword_23C889978);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED28, &qword_23C889978);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED28, &qword_23C889978);
    return sub_23C585C34(v36, &qword_27E1FED28, &qword_23C889978);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoIdSearchPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED28, &qword_23C889978);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoIdSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6BC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED30, &qword_23C889980);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FED30, &qword_23C889980);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoAllPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoAllPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED30, &qword_23C889980);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED30, &qword_23C889980);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED30, &qword_23C889980);
    return sub_23C585C34(v36, &qword_27E1FED30, &qword_23C889980);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoAllPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED30, &qword_23C889980);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoAllPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6BC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED38, &unk_23C889C80);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E1FED38, &unk_23C889C80);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED38, &unk_23C889C80);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED38, &unk_23C889C80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED38, &unk_23C889C80);
    return sub_23C585C34(v36, &qword_27E1FED38, &unk_23C889C80);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSuggestedPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED38, &unk_23C889C80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSuggestedPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6BCBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED40, &qword_23C889988);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E1FED40, &qword_23C889988);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED40, &qword_23C889988);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED40, &qword_23C889988);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED40, &qword_23C889988);
    return sub_23C585C34(v36, &qword_27E1FED40, &qword_23C889988);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED40, &qword_23C889988);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6BD184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v6 = *(valid - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](valid);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED48, &unk_23C889C90);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = valid;
  v30 = valid;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FD790, &qword_23C87D750);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD790, &qword_23C87D750);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E1FED48, &unk_23C889C90);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoValidPredicate);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoValidPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED48, &unk_23C889C90);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED48, &unk_23C889C90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED48, &unk_23C889C90);
    return sub_23C585C34(v36, &qword_27E1FED48, &unk_23C889C90);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoValidPredicate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED48, &unk_23C889C90);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoValidPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoQuery.AnyPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FD790, &qword_23C87D750);
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
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
        sub_23C6BE6F0(v3, a1, a2, a3);
      }

      else
      {
        sub_23C6BE928(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C6BE280(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6BE4B8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C6BDE10(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6BE048(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C6BDBD8(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6BD9A4(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (!v4)
  {
LABEL_18:
    v15 = v3 + *(type metadata accessor for ToolKitProtoQuery.AnyPredicate(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6BD9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoComparisonPredicate);
    sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoComparisonPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BDBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoCompoundPredicate);
    sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoCompoundPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoStringSearchPredicate);
    sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoStringSearchPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoIdSearchPredicate);
    sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoIdSearchPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoAllPredicate);
    sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoAllPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSuggestedPredicate);
    sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSuggestedPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSearchableItemPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v10 = *(*(valid - 8) + 64);
  MEMORY[0x28223BE20](valid);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD790, &qword_23C87D750);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoValidPredicate);
    sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoValidPredicate);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BEC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE910, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6BECBC()
{
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6BED28()
{
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6BEDC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB58);
  __swift_project_value_buffer(v0, qword_27E1FCB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isWildcard";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimePlatformVersion.decodeMessage<A>(decoder:)()
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
        sub_23C871084();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_23C8710F4();
    }
  }
}

uint64_t ToolKitProtoRuntimePlatformVersion.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_23C871284(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_23C871284(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_23C871284(), !v1))
      {
        if (*(v0 + 12) != 1 || (result = sub_23C871244(), !v1))
        {
          v3 = v0 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
          return sub_23C870F14();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6BF234@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a2 + 5) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_23C6BF2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE908, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6BF354()
{
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return sub_23C8711F4();
}

uint64_t sub_23C6BF3C0()
{
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return sub_23C871204();
}

uint64_t sub_23C6BF45C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB70);
  __swift_project_value_buffer(v0, qword_27E1FCB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceCapability";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featureFlag";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deviceState";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C6C0334(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_23C6C08F0(a1, v5);
      }
    }

    else if (result == 1)
    {
      sub_23C6BF7C8(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C6BFD78(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6BF7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECF0, &qword_23C889940);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC60, &unk_23C889D20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC60, &unk_23C889D20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FECF0, &qword_23C889940);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FECF0, &qword_23C889940);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FECF0, &qword_23C889940);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FECF0, &qword_23C889940);
    return sub_23C585C34(v36, &qword_27E1FECF0, &qword_23C889940);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FECF0, &qword_23C889940);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC60, &unk_23C889D20);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6BFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECF8, &qword_23C889948);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC60, &unk_23C889D20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC60, &unk_23C889D20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FECF8, &qword_23C889948);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FECF8, &qword_23C889948);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FECF8, &qword_23C889948);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FECF8, &qword_23C889948);
    return sub_23C585C34(v36, &qword_27E1FECF8, &qword_23C889948);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FECF8, &qword_23C889948);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC60, &unk_23C889D20);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6C0334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED00, &qword_23C889950);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC60, &unk_23C889D20);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC60, &unk_23C889D20);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FED00, &qword_23C889950);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FED00, &qword_23C889950);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FED00, &qword_23C889950);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FED00, &qword_23C889950);
    return sub_23C585C34(v36, &qword_27E1FED00, &qword_23C889950);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FED00, &qword_23C889950);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC60, &unk_23C889D20);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6C08F0(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = 2;
  sub_23C716DF4();
  result = sub_23C871094();
  if (!v2)
  {
    v9 = v16;
    if (v16 != 2)
    {
      v15 = 0;
      sub_23C5855B0(a2, v7, &qword_27E1FAC60, &unk_23C889D20);
      v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
      v11 = *(v10 - 8);
      v12 = (*(v11 + 48))(v7, 1, v10);
      sub_23C585C34(v7, &qword_27E1FAC60, &unk_23C889D20);
      if (v12 != 1)
      {
        v13 = v15;
        result = sub_23C871054();
        if (v13)
        {
          return result;
        }

        v15 = 0;
      }

      sub_23C585C34(a2, &qword_27E1FAC60, &unk_23C889D20);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FAC60, &unk_23C889D20);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_23C6C1350(v3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_23C6C1118(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_23C6C0EE0(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6C0CAC(v3, a1, a2, a3);
    }

    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  v15 = v3 + *(type metadata accessor for ToolKitProtoRuntimeRequirement(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6C0CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC60, &unk_23C889D20);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C0EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC60, &unk_23C889D20);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C1118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC60, &unk_23C889D20);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C1350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8[-v4];
  sub_23C5855B0(a1, &v8[-v4], &qword_27E1FAC60, &unk_23C889D20);
  v6 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v8[15] = *v5;
    sub_23C716DF4();
    return sub_23C871254();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C1580(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE900, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C1620()
{
  sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C6C168C()
{
  sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return sub_23C871204();
}

uint64_t sub_23C6C170C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB88);
  __swift_project_value_buffer(v0, qword_27E1FCB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DeviceState_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceState_UNLOCKED";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6C1930()
{
  result = MEMORY[0x23EED7100](0xD000000000000017, 0x800000023C8AE250);
  qword_27E1FCBA0 = 0xD00000000000001ALL;
  *algn_27E1FCBA8 = 0x800000023C8AD1A0;
  return result;
}

uint64_t sub_23C6C19CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCBB0);
  __swift_project_value_buffer(v0, qword_27E1FCBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "introducingVersion";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deprecatingVersion";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "obsoletingVersion";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.decodeMessage<A>(decoder:)()
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
          sub_23C6C1E18();
        }

        else if (result == 4)
        {
          sub_23C6C1ECC();
        }
      }

      else if (result == 1)
      {
        sub_23C70C29C();
        sub_23C8710A4();
      }

      else if (result == 2)
      {
        sub_23C6C1D64();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6C1D64()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 20);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_23C8711A4();
}

uint64_t sub_23C6C1E18()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 24);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_23C8711A4();
}

uint64_t sub_23C6C1ECC()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 28);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, sub_23C70C29C(), result = sub_23C871254(), !v4))
  {
    result = sub_23C6C2074(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C6C2290(v3, a1, a2, a3);
      sub_23C6C24AC(v3, a1, a2, a3);
      v9 = &v3[*(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 32)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6C2074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FECD8, &qword_23C889930);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FECD8, &qword_23C889930);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_23C6C2290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FECD8, &qword_23C889930);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FECD8, &qword_23C889930);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_23C6C24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FECD8, &qword_23C889930);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FECD8, &qword_23C889930);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_23C6C2714@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v6(&a2[a1[6]], 1, 1, v5);
  v6(&a2[a1[7]], 1, 1, v5);
  v7 = &a2[a1[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C6C2838(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8F8, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C28D8()
{
  sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_23C8711F4();
}

uint64_t sub_23C6C2944()
{
  sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_23C871204();
}

uint64_t sub_23C6C29C4()
{
  result = MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8AE1D0);
  qword_27E1FCBC8 = 0xD00000000000001ALL;
  unk_27E1FCBD0 = 0x800000023C8AD1A0;
  return result;
}

uint64_t sub_23C6C2AE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6C2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC0, &unk_23C889D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD0, &qword_23C889928);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E1FECC0, &unk_23C889D30);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E1FECC0, &unk_23C889D30);
    v30 = v44;
  }

  else
  {
    sub_23C716FA0(v13, v21, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_23C716FA0(v21, v19, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_23C585C34(v27, &qword_27E1FECD0, &qword_23C889928);
    v31 = v42;
    sub_23C716FA0(v19, v42, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    sub_23C716FA0(v31, v27, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E1FECD0, &qword_23C889928);
  }

  sub_23C5855B0(v27, v43, &qword_27E1FECD0, &qword_23C889928);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E1FECD0, &qword_23C889928);
    return sub_23C585C34(v33, &qword_27E1FECD0, &qword_23C889928);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v33, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E1FECD0, &qword_23C889928);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E1FECC0, &unk_23C889D30);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C6C30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC0, &unk_23C889D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FECC0, &unk_23C889D30);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FECC0, &unk_23C889D30);
  }

  sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C871304();
  return sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
}

uint64_t sub_23C6C33AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8F0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C344C()
{
  sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_23C8711F4();
}

uint64_t sub_23C6C34B8()
{
  sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_23C871204();
}

uint64_t sub_23C6C3538()
{
  if (qword_27E1F87D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCBC8;
  v2 = qword_27E1FCBD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x47656C69626F4D2ELL, 0xEE00746C61747365);

  qword_27E1FCBF0 = v1;
  *algn_27E1FCBF8 = v2;
  return result;
}

uint64_t sub_23C6C3610()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC00);
  __swift_project_value_buffer(v0, qword_27E1FCC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.decodeMessage<A>(decoder:)()
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

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.traverse<A>(visitor:)()
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
    if (*(v0 + 16) != 1 || (result = sub_23C871244(), !v1))
    {
      v6 = v0 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6C39A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C6C3A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8E8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C3AD4()
{
  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_23C8711F4();
}

uint64_t sub_23C6C3B40()
{
  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_23C871204();
}

uint64_t sub_23C6C3BC0()
{
  result = MEMORY[0x23EED7100](0x657275746165462ELL, 0xEC00000067616C46);
  qword_27E1FCC18 = 0xD00000000000001ALL;
  unk_27E1FCC20 = 0x800000023C8AD1A0;
  return result;
}

uint64_t sub_23C6C3C5C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC28);
  __swift_project_value_buffer(v0, qword_27E1FCC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.decodeMessage<A>(decoder:)()
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
      sub_23C871084();
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.traverse<A>(visitor:)()
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
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_23C8712C4(), !v1))
    {
      if (*(v0 + 32) != 1 || (result = sub_23C871244(), !v1))
      {
        v8 = v0 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6C407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C6C4110(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8E0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C41B0()
{
  sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_23C8711F4();
}

uint64_t sub_23C6C421C()
{
  sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_23C871204();
}

uint64_t sub_23C6C4368(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_23C716EF0(a5, a6);
      sub_23C871194();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoToolSummaryString.Component(0), sub_23C716EF0(&qword_27E1FD7D8, type metadata accessor for ToolKitProtoToolSummaryString.Component), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolSummaryString(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C45E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8D8, type metadata accessor for ToolKitProtoToolSummaryString);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C4688()
{
  sub_23C716EF0(&qword_27E1FE1E8, type metadata accessor for ToolKitProtoToolSummaryString);

  return sub_23C8711F4();
}

uint64_t sub_23C6C46F4()
{
  sub_23C716EF0(&qword_27E1FE1E8, type metadata accessor for ToolKitProtoToolSummaryString);

  return sub_23C871204();
}

uint64_t sub_23C6C4788()
{
  result = MEMORY[0x23EED7100](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
  qword_27E1FCC58 = 0xD000000000000019;
  unk_27E1FCC60 = 0x800000023C8AD1C0;
  return result;
}

uint64_t sub_23C6C4820()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC68);
  __swift_project_value_buffer(v0, qword_27E1FCC68);
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
  *v10 = "parameter";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolSummaryString.Component.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C6C4AC4(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_23C6C4AC4(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_23C6C4AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_23C871154();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      sub_23C871054();
      v9 = *(a2 + 16);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = a5;
    return sub_23C5EDA2C(v10, v11, v9);
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.traverse<A>(visitor:)()
{
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    goto LABEL_4;
  }

  if (v2)
  {
    result = sub_23C6C4C78(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_23C6C4C2C(v0);
  if (!v1)
  {
LABEL_4:
    v4 = v0 + *(type metadata accessor for ToolKitProtoToolSummaryString.Component(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C4C2C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6C4C78(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6C4D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  v2 = a2 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6C4D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8D0, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C4E34()
{
  sub_23C716EF0(&qword_27E1FD7D8, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return sub_23C8711F4();
}

uint64_t sub_23C6C4EA0()
{
  sub_23C716EF0(&qword_27E1FD7D8, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return sub_23C871204();
}

uint64_t sub_23C6C4F3C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC80);
  __swift_project_value_buffer(v0, qword_27E1FCC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visibleParameterKeys";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invisibleParameterKeys";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "valueConstraints";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolInvocationSignature.decodeMessage<A>(decoder:)()
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
      sub_23C6C5228();
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871124();
    }
  }

  return result;
}

uint64_t sub_23C6C5228()
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  sub_23C716EF0(&qword_27E1FD7F8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  return sub_23C871024();
}

uint64_t ToolKitProtoToolInvocationSignature.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_23C8712A4(), !v1))
  {
    if (!*(v0[1] + 16) || (result = sub_23C8712A4(), !v1))
    {
      if (!*(v0[2] + 16) || (sub_23C870EE4(), type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0), sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations), sub_23C716EF0(&qword_27E1FD7F8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations), result = sub_23C871214(), !v1))
      {
        v3 = v0 + *(type metadata accessor for ToolKitProtoToolInvocationSignature(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

unint64_t sub_23C6C54F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  result = sub_23C599660(v4);
  a2[2] = result;
  return result;
}

uint64_t sub_23C6C557C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8C8, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C561C()
{
  sub_23C716EF0(&qword_27E1FE210, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return sub_23C8711F4();
}

uint64_t sub_23C6C5688()
{
  sub_23C716EF0(&qword_27E1FE210, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return sub_23C871204();
}

uint64_t sub_23C6C5708()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AE120);
  qword_27E1FCC98 = 0xD00000000000001FLL;
  unk_27E1FCCA0 = 0x800000023C8AD1E0;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.ListOfRelations.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0), sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C5A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8C0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C5AA4()
{
  sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_23C8711F4();
}

uint64_t sub_23C6C5B10()
{
  sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_23C871204();
}

uint64_t sub_23C6C5BC0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCCC0);
  __swift_project_value_buffer(v0, qword_27E1FCCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phrases";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedResult";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negativePhrases";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoSampleInvocationDefinition.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_23C871154();
        break;
      case 1:
LABEL_8:
        sub_23C871124();
        break;
    }
  }
}

uint64_t ToolKitProtoSampleInvocationDefinition.traverse<A>(visitor:)()
{
  result = *v0;
  if (!*(*v0 + 16) || (result = sub_23C8712A4(), !v1))
  {
    if (v0[3])
    {
      v3 = v0[2];
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      if (*(v0[1] + 16))
      {
        sub_23C8712A4();
      }

      v4 = v0 + *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6C5FC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v5;
  return result;
}

uint64_t sub_23C6C604C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8B8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C60EC()
{
  sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6C6158()
{
  sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6C61F4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCCD8);
  __swift_project_value_buffer(v0, qword_27E1FCCD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "patch";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantSchemaVersion.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_23C871184();
    }
  }

  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_23C8712E4(), !v1))
  {
    if (!v0[1] || (result = sub_23C8712E4(), !v1))
    {
      if (!v0[2] || (result = sub_23C8712E4(), !v1))
      {
        v3 = v0 + *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6C65DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_23C6C665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8B0, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C66FC()
{
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return sub_23C8711F4();
}

uint64_t sub_23C6C6768()
{
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return sub_23C871204();
}

uint64_t sub_23C6C6804()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCCF0);
  __swift_project_value_buffer(v0, qword_27E1FCCF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6C6A44()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  return sub_23C8711A4();
}

uint64_t sub_23C6C6B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECB8, &qword_23C889918);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FECB8, &qword_23C889918);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FECB8, &qword_23C889918);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
}

uint64_t sub_23C6C6E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8A8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C6EA0()
{
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_23C8711F4();
}

uint64_t sub_23C6C6F0C()
{
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_23C871204();
}

uint64_t sub_23C6C6FA8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD08);
  __swift_project_value_buffer(v0, qword_27E1FCD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "sampleInvocations";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.decodeMessage<A>(decoder:)()
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
        if (result == 1)
        {
          sub_23C6C742C();
        }

        else if (result == 2)
        {
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32);
            sub_23C871154();
            goto LABEL_5;
          case 4:
            v4 = v0;
            type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
            sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
            break;
          case 5:
            v4 = v0;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v4;
        sub_23C871194();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6C742C()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 28);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6C76A0(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_23C8712C4();
    }

    sub_23C6C78BC(v3);
    if (*(v3[2] + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
      sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
      sub_23C8712F4();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_23C8712F4();
    }

    v9 = v3 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 36);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C76A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FACC8, &unk_23C889C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACC8, &unk_23C889C50);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_23C6C78BC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6C7980@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[9];
  v7 = &a2[a1[8]];
  *v7 = 0;
  *(v7 + 1) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v9 = MEMORY[0x277D84F90];
  *(a2 + 2) = MEMORY[0x277D84F90];
  *(a2 + 3) = v9;
  return result;
}

uint64_t sub_23C6C7A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8A0, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C7B04()
{
  sub_23C716EF0(&qword_27E1FE270, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6C7B70()
{
  sub_23C716EF0(&qword_27E1FE270, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6C7C0C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD20);
  __swift_project_value_buffer(v0, qword_27E1FCD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6C7E4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6C7EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECA8, &qword_23C889908);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD838, &unk_23C889D40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD838, &unk_23C889D40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FECA8, &qword_23C889908);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FECA8, &qword_23C889908);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FECA8, &qword_23C889908);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FECA8, &qword_23C889908);
    return sub_23C585C34(v36, &qword_27E1FECA8, &qword_23C889908);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FECA8, &qword_23C889908);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD838, &unk_23C889D40);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6C84B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECB0, &qword_23C889910);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD838, &unk_23C889D40);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD838, &unk_23C889D40);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FECB0, &qword_23C889910);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FECB0, &qword_23C889910);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FECB0, &qword_23C889910);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FECB0, &qword_23C889910);
    return sub_23C585C34(v36, &qword_27E1FECB0, &qword_23C889910);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FECB0, &qword_23C889910);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD838, &unk_23C889D40);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD838, &unk_23C889D40);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6C8E38(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6C8C00(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD838, &unk_23C889D40);
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD838, &unk_23C889D40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C8E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD838, &unk_23C889D40);
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD838, &unk_23C889D40);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C9120(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE898, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C91C0()
{
  sub_23C716EF0(&qword_27E1FE288, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6C922C()
{
  sub_23C716EF0(&qword_27E1FE288, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6C92F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD48);
  __swift_project_value_buffer(v0, qword_27E1FCD48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
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
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C6C971C();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
          sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
          sub_23C871194();
          break;
        case 1:
          sub_23C6C9668();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6C9668()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C6C971C()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 24);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C6C98E8(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_23C8712F4();
    }

    sub_23C6C9B04(v5, a1, a2, a3);
    v11 = v5 + *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C98E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FACC8, &unk_23C889C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACC8, &unk_23C889C50);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_23C6C9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C6C9E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE890, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C9EA4()
{
  sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_23C8711F4();
}

uint64_t sub_23C6C9F10()
{
  sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_23C871204();
}

uint64_t sub_23C6C9FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x800000023C8AD2B0;
  return result;
}

uint64_t sub_23C6CA090()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD70);
  __swift_project_value_buffer(v0, qword_27E1FCD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
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
  *v10 = "cases";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C6CA4B4();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
          sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
          sub_23C871194();
          break;
        case 1:
          sub_23C6CA400();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6CA400()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C6CA4B4()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 24);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C6CA680(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_23C716EF0(&qword_27E1FD530, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_23C8712F4();
    }

    sub_23C6CA89C(v5, a1, a2, a3);
    v11 = v5 + *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6CA680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FACC8, &unk_23C889C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACC8, &unk_23C889C50);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_23C6CA89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FBAF8, &qword_23C87B960);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FBAF8, &qword_23C87B960);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_23C6CAB44@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6CAC68(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE888, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6CAD08()
{
  sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_23C8711F4();
}

uint64_t sub_23C6CAD74()
{
  sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_23C871204();
}

uint64_t sub_23C6CAE50()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD88);
  __swift_project_value_buffer(v0, qword_27E1FCD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_23C87D720;
  v4 = v126 + v3;
  v5 = v126 + v3 + v1[14];
  *(v126 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v126 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "undoable";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v126 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sessionStarting";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v126 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "urlRepresentable";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v126 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "conditionallyEnabled";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v126 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "foregroundContinuable";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v126 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "changeBinarySetting";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v126 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "requiresMdmChecks";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v126 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "cut";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v126 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "copy";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v8();
  v25 = (v126 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "paste";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v126 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cancel";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  v29 = (v126 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "resize";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v126 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "scroll";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v8();
  v33 = (v126 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v8();
  v35 = (v126 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "zoom";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v126 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "closeEntity";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v126 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "createEntity";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v8();
  v40 = (v126 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "cutEntity";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v126 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "deleteEntity";
  *(v43 + 1) = 12;
  v43[16] = 2;
  v8();
  v44 = (v126 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "duplicateEntity";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  v46 = (v126 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "favoriteEntity";
  *(v47 + 1) = 14;
  v47[16] = 2;
  v8();
  v48 = (v126 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "openEntity";
  *(v49 + 1) = 10;
  v49[16] = 2;
  v8();
  v50 = (v126 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "previewEntity";
  *(v51 + 1) = 13;
  v51[16] = 2;
  v8();
  v52 = (v126 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "saveEntity";
  *(v53 + 1) = 10;
  v53[16] = 2;
  v8();
  v54 = (v126 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "putEntityInContainer";
  *(v55 + 1) = 20;
  v55[16] = 2;
  v8();
  v56 = (v126 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "playVideo";
  *(v57 + 1) = 9;
  v57[16] = 2;
  v8();
  v58 = (v126 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "audioStarting";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v126 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "audioRecording";
  *(v61 + 1) = 14;
  v61[16] = 2;
  v8();
  v62 = (v126 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "pushToTalkTransmission";
  *(v63 + 1) = 22;
  v63[16] = 2;
  v8();
  v64 = (v126 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "startDive";
  *(v65 + 1) = 9;
  v65[16] = 2;
  v8();
  v66 = (v126 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "startWorkout";
  *(v67 + 1) = 12;
  v67[16] = 2;
  v8();
  v68 = v126 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "pauseWorkout";
  *(v68 + 8) = 12;
  *(v68 + 16) = 2;
  v8();
  v69 = (v126 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "resumeWorkout";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v8();
  v71 = (v126 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "enterMarkup";
  *(v72 + 1) = 11;
  v72[16] = 2;
  v8();
  v73 = (v126 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "exitMarkup";
  *(v74 + 1) = 10;
  v74[16] = 2;
  v8();
  v75 = (v126 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "focusConfiguration";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v8();
  v77 = (v126 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "widgetConfiguration";
  *(v78 + 1) = 19;
  v78[16] = 2;
  v8();
  v79 = (v126 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "search";
  *(v80 + 1) = 6;
  v80[16] = 2;
  v8();
  v81 = (v126 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "showSearchResultsInApp";
  *(v82 + 1) = 22;
  v82[16] = 2;
  v8();
  v83 = (v126 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "showStringSearchResultsInApp";
  *(v84 + 1) = 28;
  v84[16] = 2;
  v8();
  v85 = (v126 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 42;
  *v86 = "showInAppSearchResults";
  *(v86 + 1) = 22;
  v86[16] = 2;
  v8();
  v87 = (v126 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 43;
  *v88 = "showInAppStringSearchResults";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v8();
  v89 = (v126 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "moveSpatial";
  *(v90 + 1) = 11;
  v90[16] = 2;
  v8();
  v91 = (v126 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 45;
  *v92 = "navigateSequentially";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v8();
  v93 = (v126 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 46;
  *v94 = "sting";
  *(v94 + 1) = 5;
  v94[16] = 2;
  v8();
  v95 = (v126 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 47;
  *v96 = "toggle";
  *(v96 + 1) = 6;
  v96[16] = 2;
  v8();
  v97 = (v126 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 48;
  *v98 = "cameraCapture";
  *(v98 + 1) = 13;
  v98[16] = 2;
  v8();
  v99 = (v126 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 49;
  *v100 = "staccatoLongPress";
  *(v100 + 1) = 17;
  v100[16] = 2;
  v8();
  v101 = (v126 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "entityUpdating";
  *(v102 + 1) = 14;
  v102[16] = 2;
  v8();
  v103 = (v126 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 51;
  *v104 = "propertyUpdater";
  *(v104 + 1) = 15;
  v104[16] = 2;
  v8();
  v105 = (v126 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 52;
  *v106 = "sendMail";
  *(v106 + 1) = 8;
  v106[16] = 2;
  v8();
  v107 = (v126 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 53;
  *v108 = "setMailMessageIsRead";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v8();
  v109 = (v126 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 54;
  *v110 = "siriKitIntent";
  *(v110 + 1) = 13;
  v110[16] = 2;
  v8();
  v111 = (v126 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 55;
  *v112 = "intentSideEffect";
  *(v112 + 1) = 16;
  v112[16] = 2;
  v8();
  v113 = (v126 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 56;
  *v114 = "assistantSchema";
  *(v114 + 1) = 15;
  v114[16] = 2;
  v8();
  v115 = (v126 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 57;
  *v116 = "rewriteWritingTool";
  *(v116 + 1) = 18;
  v116[16] = 2;
  v8();
  v117 = (v126 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 58;
  *v118 = "proofreadWritingTool";
  *(v118 + 1) = 20;
  v118[16] = 2;
  v8();
  v119 = (v126 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 59;
  *v120 = "assistantInvocable";
  *(v120 + 1) = 18;
  v120[16] = 2;
  v8();
  v121 = (v126 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 60;
  *v122 = "appIntent";
  *(v122 + 1) = 9;
  v122[16] = 2;
  v8();
  v123 = (v126 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 61;
  *v124 = "systemFrameworkIntent";
  *(v124 + 1) = 21;
  v124[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoSystemToolProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_65;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_65;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_65;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_65;
        case 5:
          sub_23C6CCC10(v5, a1, a2, a3);
          break;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_65;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_65;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
          goto LABEL_65;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
          goto LABEL_65;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 17;
          goto LABEL_65;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 18;
          goto LABEL_65;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 19;
          goto LABEL_65;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 20;
          goto LABEL_65;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 21;
          goto LABEL_65;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 22;
          goto LABEL_65;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 23;
          goto LABEL_65;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 24;
          goto LABEL_65;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 25;
          goto LABEL_65;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 26;
          goto LABEL_65;
        case 20:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 27;
          goto LABEL_65;
        case 21:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 28;
          goto LABEL_65;
        case 22:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 29;
          goto LABEL_65;
        case 23:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 30;
          goto LABEL_65;
        case 24:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 31;
          goto LABEL_65;
        case 25:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 32;
          goto LABEL_65;
        case 26:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 33;
          goto LABEL_65;
        case 27:
          sub_23C6CD1C0(v5, a1, a2, a3);
          break;
        case 28:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 34;
          goto LABEL_65;
        case 29:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 35;
          goto LABEL_65;
        case 30:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 36;
          goto LABEL_65;
        case 31:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 37;
          goto LABEL_65;
        case 32:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 38;
          goto LABEL_65;
        case 33:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 39;
          goto LABEL_65;
        case 34:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 40;
          goto LABEL_65;
        case 35:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 41;
          goto LABEL_65;
        case 36:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 42;
          goto LABEL_65;
        case 37:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 43;
          goto LABEL_65;
        case 38:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 44;
          goto LABEL_65;
        case 39:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 45;
          goto LABEL_65;
        case 40:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 46;
          goto LABEL_65;
        case 41:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 47;
          goto LABEL_65;
        case 42:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 48;
          goto LABEL_65;
        case 43:
          sub_23C6CD77C(v5, a1, a2, a3);
          break;
        case 44:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 49;
          goto LABEL_65;
        case 45:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 50;
          goto LABEL_65;
        case 46:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 51;
          goto LABEL_65;
        case 47:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 52;
          goto LABEL_65;
        case 48:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 53;
          goto LABEL_65;
        case 49:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 54;
          goto LABEL_65;
        case 50:
          sub_23C6CDD38(v5, a1, a2, a3);
          break;
        case 51:
          sub_23C6CE2F4(v5, a1, a2, a3);
          break;
        case 52:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 55;
          goto LABEL_65;
        case 53:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 56;
          goto LABEL_65;
        case 54:
          sub_23C6CE8B0(v5, a1, a2, a3);
          break;
        case 55:
          sub_23C6CEE6C(v5, a1, a2, a3);
          break;
        case 56:
          sub_23C6CF428(v5, a1, a2, a3);
          break;
        case 57:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 57;
          goto LABEL_65;
        case 58:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 58;
          goto LABEL_65;
        case 59:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 59;
          goto LABEL_65;
        case 60:
          sub_23C6CF9E4(v5, a1, a2, a3);
          break;
        case 61:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 60;
LABEL_65:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FAC70, &qword_23C878FF0, type metadata accessor for ToolKitProtoSystemToolProtocolKind, v15);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6CCC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC58, &qword_23C8898B8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEC58, &qword_23C8898B8);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC58, &qword_23C8898B8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC58, &qword_23C8898B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC58, &qword_23C8898B8);
    return sub_23C585C34(v36, &qword_27E1FEC58, &qword_23C8898B8);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC58, &qword_23C8898B8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CD1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC60, &qword_23C8898C0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEC60, &qword_23C8898C0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC60, &qword_23C8898C0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC60, &qword_23C8898C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC60, &qword_23C8898C0);
    return sub_23C585C34(v36, &qword_27E1FEC60, &qword_23C8898C0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC60, &qword_23C8898C0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CD77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC68, &qword_23C8898C8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FEC68, &qword_23C8898C8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC68, &qword_23C8898C8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC68, &qword_23C8898C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC68, &qword_23C8898C8);
    return sub_23C585C34(v36, &qword_27E1FEC68, &qword_23C8898C8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC68, &qword_23C8898C8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CDD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC70, &qword_23C8898D0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FEC70, &qword_23C8898D0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC70, &qword_23C8898D0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC70, &qword_23C8898D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC70, &qword_23C8898D0);
    return sub_23C585C34(v36, &qword_27E1FEC70, &qword_23C8898D0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC70, &qword_23C8898D0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CE2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC78, &qword_23C8898D8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FEC78, &qword_23C8898D8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC78, &qword_23C8898D8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC78, &qword_23C8898D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC78, &qword_23C8898D8);
    return sub_23C585C34(v36, &qword_27E1FEC78, &qword_23C8898D8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC78, &qword_23C8898D8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CE8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC80, &qword_23C8898E0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E1FEC80, &qword_23C8898E0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC80, &qword_23C8898E0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC80, &qword_23C8898E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC80, &qword_23C8898E0);
    return sub_23C585C34(v36, &qword_27E1FEC80, &qword_23C8898E0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC80, &qword_23C8898E0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC88, &qword_23C8898E8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E1FEC88, &qword_23C8898E8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC88, &qword_23C8898E8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC88, &qword_23C8898E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC88, &qword_23C8898E8);
    return sub_23C585C34(v36, &qword_27E1FEC88, &qword_23C8898E8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC88, &qword_23C8898E8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC90, &qword_23C8898F0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E1FEC90, &qword_23C8898F0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC90, &qword_23C8898F0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC90, &qword_23C8898F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC90, &qword_23C8898F0);
    return sub_23C585C34(v36, &qword_27E1FEC90, &qword_23C8898F0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC90, &qword_23C8898F0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6CF9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC98, &qword_23C8898F8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC70, &qword_23C878FF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC70, &qword_23C878FF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E1FEC98, &qword_23C8898F8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC98, &qword_23C8898F8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC98, &qword_23C8898F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC98, &qword_23C8898F8);
    return sub_23C585C34(v36, &qword_27E1FEC98, &qword_23C8898F8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC98, &qword_23C8898F8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC70, &qword_23C878FF0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoSystemToolProtocol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FAC70, &qword_23C878FF0);
  v12 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C6D4470(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 2u:
        sub_23C6D691C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 3u:
        sub_23C6D791C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 4u:
        sub_23C6D7B54(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

        goto LABEL_56;
      case 5u:
        sub_23C6D8224(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 6u:
        sub_23C6D845C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 7u:
        sub_23C6D8694(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 8u:
        sub_23C6D8FB0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_56;
        }

        return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      case 9u:
        result = sub_23C6D08D0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xAu:
        result = sub_23C6D0B1C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        result = sub_23C6D0D68(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xCu:
        result = sub_23C6D0FB4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xDu:
        result = sub_23C6D1434(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C6D1680(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C6D18CC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x10u:
        result = sub_23C6D1B18(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        result = sub_23C6D1D64(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x12u:
        result = sub_23C6D1FB0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_23C6D21FC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x14u:
        result = sub_23C6D2448(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x15u:
        result = sub_23C6D2694(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x16u:
        result = sub_23C6D28E0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x17u:
        result = sub_23C6D2B2C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x18u:
        result = sub_23C6D2D78(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x19u:
        result = sub_23C6D2FC4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Au:
        result = sub_23C6D3210(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Bu:
        result = sub_23C6D345C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Cu:
        result = sub_23C6D36A8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Du:
        result = sub_23C6D38F4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Eu:
        result = sub_23C6D3B40(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x1Fu:
        result = sub_23C6D3D8C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x20u:
        result = sub_23C6D3FD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x21u:
        result = sub_23C6D4224(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x22u:
        result = sub_23C6D46A8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x23u:
        result = sub_23C6D48F4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x24u:
        result = sub_23C6D4B40(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x25u:
        result = sub_23C6D4D8C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x26u:
        result = sub_23C6D4FD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x27u:
        result = sub_23C6D5224(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x28u:
        result = sub_23C6D5470(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x29u:
        result = sub_23C6D56BC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Au:
        result = sub_23C6D5908(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Bu:
        result = sub_23C6D5B54(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Cu:
        result = sub_23C6D5DA0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Du:
        result = sub_23C6D5FEC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Eu:
        result = sub_23C6D6238(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x2Fu:
        result = sub_23C6D6484(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x30u:
        result = sub_23C6D66D0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x31u:
        result = sub_23C6D6B54(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x32u:
        result = sub_23C6D6DA0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x33u:
        result = sub_23C6D6FEC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x34u:
        result = sub_23C6D7238(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x35u:
        result = sub_23C6D7484(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x36u:
        result = sub_23C6D76D0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x37u:
        result = sub_23C6D7D8C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x38u:
        result = sub_23C6D7FD8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x39u:
        result = sub_23C6D88CC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Au:
        result = sub_23C6D8B18(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Bu:
        result = sub_23C6D8D64(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x3Cu:
        result = sub_23C6D91E8(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6D1200(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        }

LABEL_56:
        sub_23C717008(v11, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
        break;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoSystemToolProtocol(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6D08D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 9)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 10)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D0D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 11)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D0FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 12)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D18CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 16)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 17)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D1FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 18)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 19)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 20)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 21)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D28E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 22)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 23)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 24)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D2FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 25)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 26)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D345C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 27)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D36A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 28)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D38F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 29)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 30)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 31)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D3FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 32)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 33)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 34)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D48F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 35)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 36)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 37)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D4FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 38)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 39)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 40)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D56BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 41)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 42)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 43)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 44)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 45)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 46)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 47)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 48)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D691C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D6B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 49)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 50)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D6FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 51)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D7238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 52)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D7484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 53)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D76D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 54)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D7D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 55)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D7FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 56)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D8694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D88CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 57)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 58)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 59)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC70, &qword_23C878FF0);
  v13 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC70, &qword_23C878FF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6D91E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC70, &qword_23C878FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC70, &qword_23C878FF0);
  v14 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC70, &qword_23C878FF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    if (EnumCaseMultiPayload == 60)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6D94E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE880, type metadata accessor for ToolKitProtoSystemToolProtocol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6D9584()
{
  sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol);

  return sub_23C8711F4();
}

uint64_t sub_23C6D95F0()
{
  sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol);

  return sub_23C871204();
}

uint64_t sub_23C6D9670()
{
  result = MEMORY[0x23EED7100](0xD000000000000015, 0x800000023C8ADCA0);
  qword_27E1FCDA0 = 0xD00000000000001ALL;
  *algn_27E1FCDA8 = 0x800000023C8AD2E0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.decodeMessage<A>(decoder:)()
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
      sub_23C871084();
    }
  }

  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.ConditionallyEnabled.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_23C871244(), !v1))
  {
    v3 = &v0[*(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t static ToolKitProtoSystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0) + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6D99B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE878, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6D9A54()
{
  sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_23C8711F4();
}

uint64_t sub_23C6D9AC0()
{
  sub_23C716EF0(&qword_27E1FE2E0, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);

  return sub_23C871204();
}

uint64_t sub_23C6D9B3C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6D9D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE870, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6D9E04()
{
  sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_23C8711F4();
}

uint64_t sub_23C6D9E70()
{
  sub_23C716EF0(&qword_27E1FE2F8, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);

  return sub_23C871204();
}

uint64_t sub_23C6D9EEC()
{
  result = MEMORY[0x23EED7100](0xD00000000000001DLL, 0x800000023C8ADC70);
  qword_27E1FCDF0 = 0xD00000000000001ALL;
  *algn_27E1FCDF8 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6D9FEC()
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
      sub_23C871124();
    }
  }

  return result;
}

uint64_t sub_23C6DA088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_23C8712A4(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6DA1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE868, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DA274()
{
  sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_23C8711F4();
}

uint64_t sub_23C6DA2E0()
{
  sub_23C716EF0(&qword_27E1FE310, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);

  return sub_23C871204();
}

uint64_t sub_23C6DA504(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE860, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DA5A4()
{
  sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_23C8711F4();
}

uint64_t sub_23C6DA610()
{
  sub_23C716EF0(&qword_27E1FE328, type metadata accessor for ToolKitProtoSystemToolProtocol.EntityUpdating);

  return sub_23C871204();
}

uint64_t sub_23C6DA68C()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8ADC50);
  qword_27E1FCE40 = 0xD00000000000001ALL;
  *algn_27E1FCE48 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DA72C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCE50);
  __swift_project_value_buffer(v0, qword_27E1FCE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entityIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityProperty";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6DA9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = *v6;
  v10 = v6[1];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = sub_23C8712C4(), !v7))
  {
    v13 = v6[3];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v6[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = sub_23C8712C4(), !v7))
    {
      v15 = v6 + *(a6(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6DAAD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6DAB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE858, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DABF0()
{
  sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_23C8711F4();
}

uint64_t sub_23C6DAC5C()
{
  sub_23C716EF0(&qword_27E1FE340, type metadata accessor for ToolKitProtoSystemToolProtocol.PropertyUpdater);

  return sub_23C871204();
}

uint64_t ToolKitProtoSystemToolProtocol.SiriKitIntent.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C6DAEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE850, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DAF7C()
{
  sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_23C8711F4();
}

uint64_t sub_23C6DAFE8()
{
  sub_23C716EF0(&qword_27E1FE358, type metadata accessor for ToolKitProtoSystemToolProtocol.SiriKitIntent);

  return sub_23C871204();
}

uint64_t sub_23C6DB064()
{
  result = MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8ADC00);
  qword_27E1FCE90 = 0xD00000000000001ALL;
  *algn_27E1FCE98 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DB100()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCEA0);
  __swift_project_value_buffer(v0, qword_27E1FCEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "stateChange";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C6DB660();
        break;
      case 2:
        sub_23C6DB40C(a1, v5, a2, a3, 0x100000001);
        break;
      case 1:
        sub_23C6DB40C(a1, v5, a2, a3, 0x100000000);
        break;
    }
  }

  return result;
}

uint64_t sub_23C6DB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
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
  if ((*(v21 + 5) & 1) == 0)
  {
    sub_23C871054();
  }

  v18 = v22;
  result = sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  *v17 = v18;
  *(v17 + 4) = BYTE4(v18);
  *(v17 + 5) = 0;
  return result;
}

uint64_t ToolKitProtoSystemToolProtocol.IntentSideEffect.traverse<A>(visitor:)()
{
  if (*(v0 + 5))
  {
    goto LABEL_2;
  }

  v4 = *v0;
  if (((v4 | (*(v0 + 4) << 32)) & 0x100000000) != 0)
  {
    if (v4)
    {
      result = sub_23C6DB924(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_23C6DB7C4(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_23C871284();
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0) + 20);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6DB7C4(unsigned int *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) != 0 || (v8 = *a1, ((v8 | (*(a1 + 4) << 32)) & 0x100000000) == 0) || v8)
  {
    __break(1u);
  }

  else
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_23C6DB924(unsigned int *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 5) & 1) == 0 && (v8 = *a1, ((v8 | (*(a1 + 4) << 32)) & 0x100000000) != 0) && v8)
  {
    sub_23C870E74();
    sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
    sub_23C871254();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23C6DBAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 4) = 256;
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6DBB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE848, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DBBF4()
{
  sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_23C8711F4();
}

uint64_t sub_23C6DBC60()
{
  sub_23C716EF0(&qword_27E1FE370, type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect);

  return sub_23C871204();
}

uint64_t sub_23C6DBCE0()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8ADBD0);
  qword_27E1FCEB8 = 0xD00000000000001ALL;
  unk_27E1FCEC0 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DBEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE840, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DBF9C()
{
  sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_23C8711F4();
}

uint64_t sub_23C6DC008()
{
  sub_23C716EF0(&qword_27E1FE388, type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema);

  return sub_23C871204();
}

uint64_t sub_23C6DC0B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000023C8AD2E0;
  return result;
}

uint64_t sub_23C6DC268(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE838, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DC308()
{
  sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_23C8711F4();
}

uint64_t sub_23C6DC374()
{
  sub_23C716EF0(&qword_27E1FE3A0, type metadata accessor for ToolKitProtoSystemToolProtocol.AppIntent);

  return sub_23C871204();
}

uint64_t ToolKitProtoToolDefinition.decodeMessage<A>(decoder:)()
{
  do
  {
    result = sub_23C871044();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_23C6DC514(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE830, type metadata accessor for ToolKitProtoToolDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DC5B4()
{
  sub_23C716EF0(&qword_27E1FE3B8, type metadata accessor for ToolKitProtoToolDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6DC620()
{
  sub_23C716EF0(&qword_27E1FE3B8, type metadata accessor for ToolKitProtoToolDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6DC69C()
{
  result = MEMORY[0x23EED7100](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27E1FCF20 = 0xD000000000000016;
  *algn_27E1FCF28 = 0x800000023C8AD300;
  return result;
}

uint64_t sub_23C6DC734()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF30);
  __swift_project_value_buffer(v0, qword_27E1FCF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_23C87D730;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "toolType";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameters";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "outputType";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "outputResultName";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "sourceApplication";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "descriptionSummary";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "categories";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "searchKeywords";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "deprecationDefinition";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "requirements";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "flags";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "authenticationPolicy";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "sampleInvocations";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "systemProtocols";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "customIcon";
  *(v37 + 8) = 10;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "hiddenParameters";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "sourceContainer";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "attributionContainer";
  *(v43 + 1) = 20;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "visibilityFlags";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
          sub_23C871164();
          break;
        case 3:
          v5 = v0;
          sub_23C70C2F0();
          goto LABEL_24;
        case 4:
        case 18:
          v3 = v0;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
          sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
          goto LABEL_5;
        case 5:
          sub_23C6DD20C();
          break;
        case 6:
          v6 = v0;
          v8 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 72);
          goto LABEL_22;
        case 7:
          sub_23C6DD2C0();
          break;
        case 8:
          v6 = v0;
          v7 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 80);
LABEL_22:
          v0 = v6;
          sub_23C871154();
          break;
        case 9:
          v3 = v0;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
          sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);
          goto LABEL_5;
        case 10:
          sub_23C871124();
          break;
        case 11:
          sub_23C6DD374();
          break;
        case 12:
          v3 = v0;
          type metadata accessor for ToolKitProtoRuntimeRequirement(0);
          sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);
          goto LABEL_5;
        case 13:
          v4 = v0;
          sub_23C70C344();
          goto LABEL_20;
        case 14:
          v5 = v0;
          sub_23C70C398();
LABEL_24:
          v0 = v5;
          sub_23C8710A4();
          break;
        case 15:
          v3 = v0;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          goto LABEL_5;
        case 16:
          v3 = v0;
          type metadata accessor for ToolKitProtoSystemToolProtocol(0);
          sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol);
LABEL_5:
          v0 = v3;
          sub_23C871194();
          break;
        case 17:
          sub_23C6DD428();
          break;
        case 19:
          sub_23C6DD4DC();
          break;
        case 20:
          sub_23C6DD590();
          break;
        case 21:
          v4 = v0;
          sub_23C70C3EC();
LABEL_20:
          v0 = v4;
          sub_23C871064();
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6DD20C()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 68);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD2C0()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 76);
  type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD374()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 84);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD428()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 88);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD4DC()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 92);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition);
  return sub_23C8711A4();
}

uint64_t sub_23C6DD590()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 96);
  type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoToolDefinition.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (!*(v3 + 32) || (v16 = *(v3 + 32), sub_23C70C2F0(), result = sub_23C871254(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0), sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter), result = sub_23C8712F4(), !v4))
        {
          result = sub_23C6DDBE8(v3, a1, a2, a3);
          if (!v4)
          {
            sub_23C6DDE04(v3);
            sub_23C6DDE7C(v3, a1, a2, a3);
            sub_23C6DE098(v3);
            if (*(*(v3 + 48) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Category(0);
              sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);
              sub_23C8712F4();
            }

            if (*(*(v3 + 56) + 16))
            {
              sub_23C8712A4();
            }

            sub_23C6DE110(v3, a1, a2, a3);
            if (*(*(v3 + 64) + 16))
            {
              type metadata accessor for ToolKitProtoRuntimeRequirement(0);
              sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement);
              sub_23C8712F4();
            }

            if (*(*(v3 + 72) + 16))
            {
              sub_23C70C344();
              sub_23C871234();
            }

            if (*(v3 + 80))
            {
              v15 = *(v3 + 80);
              sub_23C70C398();
              sub_23C871254();
            }

            if (*(*(v3 + 88) + 16))
            {
              type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
              sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
              sub_23C8712F4();
            }

            if (*(*(v3 + 96) + 16))
            {
              type metadata accessor for ToolKitProtoSystemToolProtocol(0);
              sub_23C716EF0(&qword_27E1FD8D0, type metadata accessor for ToolKitProtoSystemToolProtocol);
              sub_23C8712F4();
            }

            sub_23C6DE32C(v3, a1, a2, a3);
            if (*(*(v3 + 104) + 16))
            {
              type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
              sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
              sub_23C8712F4();
            }

            sub_23C6DE548(v3, a1, a2, a3);
            sub_23C6DE764(v3, a1, a2, a3);
            if (*(*(v3 + 112) + 16))
            {
              sub_23C70C3EC();
              sub_23C871234();
            }

            v14 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1(0) + 100);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6DDBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v14 + 68), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6DDE04(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = (a1 + *(result + 72));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6DDE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC48, &unk_23C889D50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v14 + 76), v8, &qword_27E1FEC48, &unk_23C889D50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEC48, &unk_23C889D50);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoAppDefinition);
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoAppDefinition);
}

uint64_t sub_23C6DE098(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v3 = (a1 + *(result + 80));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6DE110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC40, &qword_23C8898A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v14 + 84), v8, &qword_27E1FEC40, &qword_23C8898A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEC40, &qword_23C8898A8);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
}

uint64_t sub_23C6DE32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC38, &unk_23C889D60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v14 + 88), v8, &qword_27E1FEC38, &unk_23C889D60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEC38, &unk_23C889D60);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
}

uint64_t sub_23C6DE548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC30, &qword_23C8898A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v14 + 92), v8, &qword_27E1FEC30, &qword_23C8898A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEC30, &qword_23C8898A0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_23C6DE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC30, &qword_23C8898A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C5855B0(a1 + *(v14 + 96), v8, &qword_27E1FEC30, &qword_23C8898A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEC30, &qword_23C8898A0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoContainerDefinition);
}

uint64_t sub_23C6DE9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C6DEA68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_23C6DEADC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 100);
  return result;
}

uint64_t sub_23C6DEB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE828, type metadata accessor for ToolKitProtoToolDefinition.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6DEBD0()
{
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);

  return sub_23C8711F4();
}

uint64_t sub_23C6DEC3C()
{
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);

  return sub_23C871204();
}

uint64_t sub_23C6DECBC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF48);
  __swift_project_value_buffer(v0, qword_27E1FCF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ToolType_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolType_APP_INTENT";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ToolType_SIRI_INTENT";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ToolType_ACTION";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6DEF60()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF60);
  __swift_project_value_buffer(v0, qword_27E1FCF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C87D6F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Flag_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Flag_OPENS_APP_WHEN_RUN";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Flag_IS_DISCONTINUED";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Flag_IS_UNDISCOVERABLE";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "Flag_DOES_NOT_IMPLEMENT_PERFORM";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 16;
  *v18 = "Flag_SHOWS_OPEN_WHEN_RUN";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 32;
  *v20 = "Flag_OUTPUT_HAS_SNIPPET";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 64;
  *v22 = "Flag_OUTPUT_PROVIDES_DIALOG";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v9();
  return sub_23C871324();
}