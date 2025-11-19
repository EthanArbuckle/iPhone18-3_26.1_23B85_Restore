uint64_t GenerationSchema.jsonSchema()@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_2388D2328();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = sub_2388D2268();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DynamicGenerationSchema(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  sub_2388C16F8((&v32 - v18));
  v20 = *(v2 + 16);
  v21 = &v19[*(v12 + 28)];
  v35 = v8;
  v39 = v20;
  v40 = v2 + 16;
  v20(v8, v21, v1);
  v41 = v12;
  v22 = *(v12 + 32);
  v33 = v19;
  v23 = *&v19[v22];
  v24 = *(v23 + 16);
  if (v24)
  {
    v32 = v9;
    v42 = MEMORY[0x277D84F90];
    sub_2388B7C94(0, v24, 0);
    v25 = v42;
    v26 = v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v38 = *(v13 + 72);
    do
    {
      sub_2388C6FEC(v26, v17, type metadata accessor for DynamicGenerationSchema);
      v39(v6, &v17[*(v41 + 28)], v1);
      sub_2388C7054(v17, type metadata accessor for DynamicGenerationSchema);
      v42 = v25;
      v27 = v1;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2388B7C94(v28 > 1, v29 + 1, 1);
        v25 = v42;
      }

      *(v25 + 16) = v29 + 1;
      (*(v2 + 32))(v25 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v6, v27);
      v26 += v38;
      --v24;
      v1 = v27;
    }

    while (v24);
    v9 = v32;
  }

  v30 = v34;
  sub_2388D2258();
  sub_2388D2218();
  (*(v36 + 8))(v30, v9);
  return sub_2388C7054(v33, type metadata accessor for DynamicGenerationSchema);
}

double sub_2388C24EC()
{
  v1 = type metadata accessor for GenerationSchema.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388C6FEC(v0, v4, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v9 = *(v4 + 1);

    v11 = *(v4 + 1);
    v10 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388C7054(&v4[*(v10 + 64)], type metadata accessor for StringGuides);
    return *&v11;
  }

  else if (EnumCaseMultiPayload > 1)
  {
    sub_2388C7054(v4, type metadata accessor for GenerationSchema.Kind);
    return 0.0;
  }

  else
  {
    v6 = *(v4 + 1);
    v11 = *(v4 + 1);
    v7 = *(v4 + 4);

    return *&v11;
  }
}

uint64_t sub_2388C263C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v66 - v8;
  v10 = type metadata accessor for StringGuides(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v66 - v16;
  v18 = type metadata accessor for GenerationSchema.Kind(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388C6FEC(v3, v21, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v48 = *(v21 + 1);
      v69 = *v21;
      v49 = *(v21 + 2);
      v77[0] = v48;
      v77[1] = v49;
      v78 = *(v21 + 6);
      v70 = v3;
      if (a1)
      {
        v50 = (a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
        a1 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
        v51 = v50[1];
        v52 = v50[2];
        v53 = v50[3];
        v54 = v50[4];
        sub_23882BB28(a1, v51, v52, v53, v54);
      }

      else
      {
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 1;
      }

      v76[0] = a1;
      v76[1] = v51;
      v76[2] = v52;
      v76[3] = v53;
      v76[4] = v54;
      v56 = a1;
      sub_23882B468(v76, &v71);
      v57 = v71;
      LODWORD(v68) = v72;
      v58 = v73;
      v59 = v74;
      v67 = v75;
      sub_2388C70B4(v77);
      sub_23882BAF4(v56, v51, v52, v53, v54);
      *a2 = v69;
      *(a2 + 16) = v57;
      *(a2 + 24) = v68;
      *(a2 + 32) = v58;
      *(a2 + 40) = v59;
      *(a2 + 48) = v67;
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload != 3)
    {
LABEL_33:
      sub_2388C6FEC(v3, a2, type metadata accessor for GenerationSchema);
      return sub_2388C7054(v21, type metadata accessor for GenerationSchema.Kind);
    }

    v69 = *v21;
    v25 = *(v21 + 2);
    if (a1)
    {
      v26 = *(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary);
      sub_23882BB18(v26);
      v27 = v26 == 1;
      if (v25)
      {
LABEL_11:
        if (v27)
        {
          v28 = 0;
        }

        else
        {
          v28 = v26;
        }

        v29 = sub_23882A884(v28);

        sub_23882BB08(v26);
        goto LABEL_43;
      }
    }

    else
    {
      v26 = 1;
      v27 = 1;
      if (v25)
      {
        goto LABEL_11;
      }
    }

    if (v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = v26;
    }

LABEL_43:
    *a2 = v69;
    *(a2 + 16) = v29;
LABEL_44:
    swift_storeEnumTagMultiPayload();
    v62 = *(type metadata accessor for GenerationSchema(0) + 20);
    v63 = (v3 + v62);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v30 = *v21;
    v31 = v21[8];
    v32 = *(v21 + 2);
    v33 = v21[24];
    if (a1)
    {
      v34 = a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
      if ((*(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double + 25) & 1) == 0)
      {
        v35 = *(v34 + 24);
        v36 = *(v34 + 16);
        v37 = *v34;
        v38 = *(v34 + 8);
        if ((v38 & 1) == 0)
        {
          v30 = v37;
        }

        v31 &= v38;
        if ((v35 & 1) == 0)
        {
          v32 = v36;
        }

        v33 &= v35;
      }
    }

    *a2 = v30;
    *(a2 + 8) = v31 & 1;
    *(a2 + 16) = v32;
    *(a2 + 24) = v33 & 1;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v39 = *v21;
    v40 = v21[8];
    v41 = *(v21 + 2);
    v42 = v21[24];
    if (a1)
    {
      v43 = a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
      if ((*(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer + 25) & 1) == 0)
      {
        v44 = *(v43 + 24);
        v45 = *(v43 + 16);
        v46 = *v43;
        v47 = *(v43 + 8);
        if ((v47 & 1) == 0)
        {
          v39 = v46;
        }

        v40 &= v47;
        if ((v44 & 1) == 0)
        {
          v41 = v45;
        }

        v42 &= v44;
      }
    }

    *a2 = v39;
    *(a2 + 8) = v40 & 1;
    *(a2 + 16) = v41;
    *(a2 + 24) = v42 & 1;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_33;
  }

  v70 = v3;
  v23 = *v21;
  v68 = *(v21 + 1);
  v69 = v23;
  v24 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
  sub_2388C6728(&v21[*(v24 + 64)], v17, type metadata accessor for StringGuides);
  if (a1)
  {
    sub_2388C6F7C(a1 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, v9);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_23882B02C(v9, v15);
  sub_238827E88(v9, qword_27DF2FBD8, &unk_2388D4AD0);
  sub_2388C7054(v17, type metadata accessor for StringGuides);
  v60 = *(v24 + 64);
  v61 = v68;
  *a2 = v69;
  *(a2 + 16) = v61;
  sub_2388C6728(v15, a2 + v60, type metadata accessor for StringGuides);
LABEL_38:
  swift_storeEnumTagMultiPayload();
  v62 = *(type metadata accessor for GenerationSchema(0) + 20);
  v63 = (v70 + v62);
LABEL_45:
  v64 = v63[1];
  v65 = (a2 + v62);
  *v65 = *v63;
  v65[1] = v64;
}

uint64_t GenerationSchema.SchemaError.Context.init(debugDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t GenerationSchema.source.getter()
{
  v1 = (v0 + *(type metadata accessor for GenerationSchema(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenerationSchema.Property.init<A>(name:description:type:guides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = 0;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  type metadata accessor for AnyGenerationGuides(0);
  result = sub_23882A508(a5, a6);
  *(a8 + 56) = result;
  return result;
}

uint64_t GenerationSchema.Property.init<A>(name:description:type:guides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  type metadata accessor for AnyGenerationGuides(0);
  result = sub_23882A508(a5, a6);
  *(a8 + 56) = result;
  return result;
}

uint64_t GenerationSchema.Property.init<A>(name:description:type:semantics:guides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v12 ^ 1;
  *(a9 + 33) = v12;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  type metadata accessor for AnyGenerationGuides(0);
  result = sub_23882A508(a6, a7);
  *(a9 + 56) = result;
  return result;
}

uint64_t GenerationSchema.Property.init<A>(name:description:type:guides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return sub_2388C2F24(a1, a2, a3, a4, a5, a6, sub_2388C72F0, 0, a7);
}

{
  return sub_2388C2F24(a1, a2, a3, a4, a5, a6, sub_2388C6638, 1, a7);
}

uint64_t GenerationSchema.Property.init<A>(name:description:type:semantics:guides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a5;
  v13 = *a5 ^ 1;
  v27 = a6;
  v26 = a7;
  sub_2388D1D18();
  v14 = sub_2388D2B18();
  v15 = sub_238810E44(&qword_27DF31790, &unk_2388DC630);
  WitnessTable = swift_getWitnessTable();
  v18 = sub_238813F68(sub_2388C72F0, v25, v14, v15, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);

  v19 = type metadata accessor for AnyGenerationGuides(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  result = sub_2388C1414(v18);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v13;
  v23 = MEMORY[0x277D837D0];
  *(a8 + 33) = v12;
  *(a8 + 40) = v23;
  *(a8 + 48) = &protocol witness table for String;
  *(a8 + 56) = result;
  return result;
}

uint64_t sub_2388C2F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *)@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v28 = a5;
  v27 = a6;
  sub_2388D1D18();
  v15 = sub_2388D2B18();
  v16 = sub_238810E44(&qword_27DF31790, &unk_2388DC630);
  WitnessTable = swift_getWitnessTable();
  v19 = sub_238813F68(a7, v26, v15, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v18);

  v20 = type metadata accessor for AnyGenerationGuides(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  result = sub_2388C1414(v19);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a8;
  v24 = MEMORY[0x277D837D0];
  *(a9 + 33) = 0;
  *(a9 + 40) = v24;
  *(a9 + 48) = &protocol witness table for String;
  *(a9 + 56) = result;
  return result;
}

uint64_t GenerationSchema.debugDescription.getter()
{
  v0 = sub_2388D2178();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerationSchema.jsonSchema()(v4);
  v5 = sub_2388D1F38();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t GenerationSchema.init(type:description:properties:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  swift_getMetatypeMetadata();
  v8 = sub_2388D28B8();
  v10 = v9;
  *a4 = v8;
  a4[1] = v9;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  type metadata accessor for GenerationSchema.Kind(0);
  swift_storeEnumTagMultiPayload();
  v11 = (a4 + *(type metadata accessor for GenerationSchema(0) + 20));
  *v11 = v8;
  v11[1] = v10;
}

uint64_t GenerationSchema.init(type:description:anyOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - v12;
  v14 = a5 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);
  v25 = a1;
  swift_getMetatypeMetadata();
  *a5 = sub_2388D28B8();
  a5[1] = v15;
  a5[2] = a2;
  a5[3] = a3;
  v16 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 1, 1, v16);
  v18 = *(type metadata accessor for StringGuides(0) + 20);
  v17(&v14[v18], 1, 1, v16);
  *v14 = a4;
  sub_2388150EC(v13, &v14[v18]);
  type metadata accessor for GenerationSchema.Kind(0);
  swift_storeEnumTagMultiPayload();
  v25 = a1;
  v19 = sub_2388D28B8();
  v21 = v20;
  result = type metadata accessor for GenerationSchema(0);
  v23 = (a5 + *(result + 20));
  *v23 = v19;
  v23[1] = v21;
  return result;
}

uint64_t GenerationSchema.init(type:description:anyOf:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  swift_getMetatypeMetadata();
  *a4 = sub_2388D28B8();
  a4[1] = v8;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  type metadata accessor for GenerationSchema.Kind(0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_2388D28B8();
  v11 = v10;
  result = type metadata accessor for GenerationSchema(0);
  v13 = (a4 + *(result + 20));
  *v13 = v9;
  v13[1] = v11;
  return result;
}

uint64_t GenerationSchema.init(schema:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v25 = a2;
  v7 = type metadata accessor for DynamicGenerationSchema(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84FA0];
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  *(v15 + 16) = MEMORY[0x277D84F90];
  sub_2388B2F10(a1, v16, v14, v15, v11);
  if (v4)
  {

    v17 = sub_2388D2178();
    (*(*(v17 - 8) + 8))(a1, v17);
  }

  else
  {
    v19 = sub_2388D2178();
    (*(*(v19 - 8) + 8))(a1, v19);
    swift_beginAccess();
    v20 = *(v15 + 16);
    v21 = *(v7 + 32);
    v22 = *(v11 + v21);

    *(v11 + v21) = v20;
    sub_2388C6728(v11, v13, type metadata accessor for DynamicGenerationSchema);

    sub_2388C6728(v13, a4, type metadata accessor for DynamicGenerationSchema);
    type metadata accessor for GenerationSchema.Kind(0);
    swift_storeEnumTagMultiPayload();
    result = type metadata accessor for GenerationSchema(0);
    v23 = (a4 + *(result + 20));
    v24 = v26;
    *v23 = v25;
    v23[1] = v24;
  }

  return result;
}

uint64_t sub_2388C36E4()
{
  v1 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v76 - v3;
  v5 = type metadata accessor for GenerationSchema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v78 = &v76 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v76 - v13;
  v15 = type metadata accessor for GenerationSchema.Kind(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388C6FEC(v0, v18, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v43 = *(v18 + 1);
      v45 = *(v18 + 3);
      v44 = *(v18 + 4);

      v46 = *(v44 + 16);
      if (v46)
      {
        v81 = MEMORY[0x277D84F90];
        sub_2388B7F68(0, v46, 0);
        v24 = v81;
        v76 = v44;
        v77 = v6;
        v47 = (v44 + 88);
        do
        {
          v79 = *(v47 - 6);
          v80 = v46;
          v48 = *(v47 - 4);
          v49 = *(v47 - 2);
          v50 = *(v47 - 1);
          v51 = *v47;
          v52 = *(v50 + 40);

          v53 = v24;
          v54 = v78;
          v52(v49, v50);
          sub_2388C263C(v51, v14);
          v55 = v54;
          v24 = v53;
          sub_2388C7054(v55, type metadata accessor for GenerationSchema);

          v81 = v53;
          v57 = *(v53 + 16);
          v56 = *(v53 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2388B7F68(v56 > 1, v57 + 1, 1);
            v24 = v81;
          }

          *(v24 + 16) = v57 + 1;
          sub_2388C6728(v14, v24 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v57, type metadata accessor for GenerationSchema);
          v47 += 8;
          v46 = v80 - 1;
        }

        while (v80 != 1);
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v20 = *(v18 + 1);
      v22 = *(v18 + 3);
      v21 = *(v18 + 4);

      v23 = *(v21 + 16);
      if (v23)
      {
        v81 = MEMORY[0x277D84F90];
        sub_2388B7F68(0, v23, 0);
        v24 = v81;
        v25 = v21 + 40;
        do
        {
          v26 = *(v25 - 8);
          (*(*v25 + 40))();
          v81 = v24;
          v28 = *(v24 + 16);
          v27 = *(v24 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_2388B7F68(v27 > 1, v28 + 1, 1);
            v24 = v81;
          }

          *(v24 + 16) = v28 + 1;
          sub_2388C6728(v10, v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, type metadata accessor for GenerationSchema);
          v25 += 16;
          --v23;
        }

        while (v23);
LABEL_24:

        return v24;
      }

LABEL_22:

      return MEMORY[0x277D84F90];
    }

LABEL_13:
    sub_2388C7054(v18, type metadata accessor for GenerationSchema.Kind);
    return MEMORY[0x277D84F90];
  }

  if (EnumCaseMultiPayload == 2)
  {
    v58 = *v18;
    v59 = *(v18 + 1);
    v60 = *(v18 + 2);
    v79 = v18[24];
    v80 = v60;
    v61 = *(v18 + 4);
    v62 = v18[40];
    v63 = *(v18 + 6);
    sub_238810E44(&qword_27DF31640, &qword_2388DC1B8);
    v64 = *(v6 + 72);
    v33 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2388D3F70;
    v34 = v78;
    (*(v59 + 40))(v58, v59);
    v65 = type metadata accessor for StringGuides(0);
    (*(*(v65 - 8) + 56))(v4, 1, 1, v65);
    v66 = type metadata accessor for AnyGenerationGuides(0);
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    v39 = swift_allocObject();
    sub_238828538(v4, v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
    v69 = v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
    *(v69 + 8) = 0;
    *(v69 + 16) = 0;
    *v69 = 0;
    *(v69 + 24) = 256;
    v70 = v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    *v70 = 0;
    *(v70 + 24) = 256;
    v71 = (v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array);
    v72 = v79;
    *v71 = v80;
    v71[1] = v72;
    v71[2] = v61;
    v71[3] = v62;
    v71[4] = v63;
    *(v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = 1;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_13;
    }

    v29 = *v18;
    v30 = *(v18 + 1);
    v31 = *(v18 + 2);
    sub_238810E44(&qword_27DF31640, &qword_2388DC1B8);
    v32 = *(v6 + 72);
    v33 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2388D3F70;
    v34 = v78;
    (*(v30 + 40))(v29, v30);
    v35 = type metadata accessor for StringGuides(0);
    (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
    v36 = type metadata accessor for AnyGenerationGuides(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    sub_238828538(v4, v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string);
    v40 = v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_integer;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    *v40 = 0;
    *(v40 + 24) = 256;
    v41 = v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_double;
    *(v41 + 16) = 0;
    *(v41 + 24) = 256;
    *v41 = 0;
    *(v41 + 8) = 0;
    v42 = v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_array;
    *v42 = 0u;
    *(v42 + 16) = 0u;
    *(v42 + 32) = 1;
    *(v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_dictionary) = v31;
  }

  sub_2388C263C(v39, v24 + v33);
  swift_setDeallocating();
  sub_238827E88(v39 + OBJC_IVAR____TtC16FoundationModels19AnyGenerationGuides_string, qword_27DF2FBD8, &unk_2388D4AD0);

  v73 = *(*v39 + 48);
  v74 = *(*v39 + 52);
  swift_deallocClassInstance();
  sub_2388C7054(v34, type metadata accessor for GenerationSchema);

  return v24;
}

uint64_t sub_2388C3EA8@<X0>(int a1@<W0>, void *a2@<X8>)
{
  LODWORD(v133) = a1;
  v125 = a2;
  v130 = type metadata accessor for StringGuides(0);
  v2 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v131 = (&v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2388D2248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v128 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2388D2328();
  v129 = *(v127 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationSchema(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v114 - v14;
  v16 = type metadata accessor for DynamicGenerationSchema(0);
  v132 = *(v16 - 8);
  v17 = *(v132 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v114 - v21;
  v23 = type metadata accessor for DynamicGenerationSchema.Property(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for GenerationSchema.Kind(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388C6FEC(v134, v31, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v75 = *(v31 + 1);

        v76 = *(v31 + 2);
        v77 = *(v31 + 3);
        v78 = &v31[*(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64)];
        v79 = v131;
        sub_2388C6728(v78, v131, type metadata accessor for StringGuides);
        sub_2388AF734(*v79, v79 + *(v130 + 20), v125);

        return sub_2388C7054(v79, type metadata accessor for StringGuides);
      }

      else
      {
        return sub_2388B2394(*v31, v31[8], *(v31 + 2), v31[24], v125);
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v80 = *v31;
      return sub_2388AF0DC(v31[8], *(v31 + 2), v31[24], v125);
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return sub_2388C6728(v31, v125, type metadata accessor for DynamicGenerationSchema);
    }

    else
    {
      return sub_2388AEF04(v125);
    }
  }

  v34 = v22;
  v35 = v132;
  v122 = v24;
  v123 = v23;
  v124 = v13;
  if (EnumCaseMultiPayload > 1)
  {
    v60 = v124;
    v61 = v16;
    v62 = v34;
    if (EnumCaseMultiPayload == 2)
    {
      v63 = *v31;
      v64 = *(v31 + 1);
      v65 = *(v31 + 2);
      v66 = v31[24];
      v133 = *(v31 + 4);
      v134 = v65;
      v67 = v125;
      LODWORD(v132) = v31[40];
      v68 = *(v31 + 6);
      (*(v64 + 40))();

      sub_2388C263C(v69, v15);

      sub_2388C7054(v60, type metadata accessor for GenerationSchema);
      sub_2388C3EA8(0);
      sub_2388C7054(v15, type metadata accessor for GenerationSchema);
      v135 = 0x3C7961727241;
      v136 = 0xE600000000000000;
      MEMORY[0x23EE66C20](v62[4], v62[5]);
      MEMORY[0x23EE66C20](62, 0xE100000000000000);
      v70 = v135;
      v71 = v136;
      v72 = v62[6];
      v73 = *(v61 + 28);
      v74 = *(v62 + *(v61 + 32));

      sub_2388D22F8();

      result = sub_2388C7054(v62, type metadata accessor for DynamicGenerationSchema);
      v67[1] = 0;
      v67[2] = 0;
      *v67 = 0;
      *(v67 + 24) = 2;
      v67[4] = v70;
      v67[5] = v71;
      v67[6] = v72;
      *(v67 + *(v61 + 32)) = v74;
    }

    else
    {
      v93 = *v31;
      v94 = *(v31 + 1);
      v95 = *(v31 + 2);
      v96 = v124;
      (*(v94 + 40))();

      sub_2388C263C(v97, v15);

      sub_2388C7054(v96, type metadata accessor for GenerationSchema);
      sub_2388C3EA8(0);
      sub_2388C7054(v15, type metadata accessor for GenerationSchema);
      v135 = 0x3A676E697274535BLL;
      v136 = 0xE900000000000020;
      MEMORY[0x23EE66C20](v62[4], v62[5]);
      MEMORY[0x23EE66C20](93, 0xE100000000000000);
      v98 = v62;
      v99 = v135;
      v100 = v136;
      v101 = *(v98 + 48);
      v102 = v61;
      v104 = v61 + 28;
      v103 = *(v61 + 28);
      v105 = *(v98 + *(v104 + 4));

      v106 = v125;
      sub_2388D2298();

      result = sub_2388C7054(v98, type metadata accessor for DynamicGenerationSchema);
      v106[1] = 0;
      v106[2] = 0;
      *v106 = 0;
      *(v106 + 24) = 2;
      v106[4] = v99;
      v106[5] = v100;
      v106[6] = v101;
      *(v106 + *(v102 + 32)) = v105;
    }

    return result;
  }

  v134 = v15;
  if (!EnumCaseMultiPayload)
  {
    v36 = *v31;
    v37 = *(v31 + 1);
    v38 = *(v31 + 3);
    v39 = *(v31 + 4);
    if (v133)
    {
      v40 = *(v31 + 2);
      v41 = *(v39 + 16);
      if (v41)
      {
        v115 = v40;
        v116 = v38;
        v117 = v36;
        v118 = v37;
        v120 = v34;
        v121 = v16;
        v135 = MEMORY[0x277D84F90];
        sub_2388B7FF0(0, v41, 0);
        v42 = v135;
        v119 = (v129 + 16);
        v114 = v39;
        v43 = v39 + 48;
        v44 = v27;
        do
        {
          v132 = v42;
          v133 = v41;
          v45 = *(v43 - 8);
          v129 = *(v43 - 16);
          v46 = *(v43 + 8);
          v131 = *v43;
          LODWORD(v130) = *(v43 + 16);
          v47 = *(v43 + 24);
          v48 = *(v43 + 32);
          v49 = *(v43 + 40);
          v50 = *(v48 + 40);
          swift_bridgeObjectRetain_n();

          swift_bridgeObjectRetain_n();
          v51 = v124;
          v50(v47, v48);
          v52 = v134;
          sub_2388C263C(v49, v134);
          sub_2388C7054(v51, type metadata accessor for GenerationSchema);
          v53 = v120;
          sub_2388C3EA8(0);
          sub_2388C7054(v52, type metadata accessor for GenerationSchema);
          *v44 = v129;
          v44[1] = v45;
          v54 = v121;
          v55 = *(v53 + *(v121 + 32));
          v44[2] = *(v53 + 48);
          v44[3] = v55;
          (*v119)(v126, v53 + *(v54 + 28), v127);

          sub_2388D2238();
          v56 = v44 + *(v123 + 28);
          sub_2388D22B8();

          v57 = v53;
          v42 = v132;
          sub_2388C7054(v57, type metadata accessor for DynamicGenerationSchema);
          v135 = v42;
          v59 = *(v42 + 16);
          v58 = *(v42 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_2388B7FF0(v58 > 1, v59 + 1, 1);
            v42 = v135;
          }

          *(v42 + 16) = v59 + 1;
          sub_2388C6728(v44, v42 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v59, type metadata accessor for DynamicGenerationSchema.Property);
          v43 += 64;
          v41 = v133 - 1;
        }

        while (v133 != 1);

        v113 = v125;
        v37 = v118;
        v38 = v116;
        v40 = v115;
      }

      else
      {

        v42 = MEMORY[0x277D84F90];
        v113 = v125;
      }

      return DynamicGenerationSchema.init(name:description:properties:)(v37, v40, v38, v42, v113);
    }

    v107 = *(v31 + 4);

    sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_2388D3F70;
    *(v108 + 32) = v36;
    *(v108 + 40) = v37;
    v109 = *(v16 + 28);

    v110 = v125;
    result = sub_2388D2318();
    *v110 = 0;
    v110[1] = 0;
    v110[2] = 0;
    *(v110 + 24) = 2;
    v110[4] = v36;
    v110[5] = v37;
LABEL_32:
    v110[6] = v108;
    *(v110 + *(v16 + 32)) = MEMORY[0x277D84F90];
    return result;
  }

  v81 = *v31;
  v82 = *(v31 + 1);
  v83 = *(v31 + 3);
  v84 = *(v31 + 4);
  if ((v133 & 1) == 0)
  {
    v111 = *(v31 + 4);

    sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_2388D3F70;
    *(v108 + 32) = v81;
    *(v108 + 40) = v82;
    v112 = *(v16 + 28);

    v110 = v125;
    result = sub_2388D2318();
    *v110 = 0;
    v110[1] = 0;
    v110[2] = 0;
    *(v110 + 24) = 2;
    v110[4] = v81;
    v110[5] = v82;
    goto LABEL_32;
  }

  v85 = *(v31 + 2);
  v86 = *(v84 + 16);
  if (v86)
  {
    v130 = v85;
    v131 = v83;
    v133 = v81;
    v135 = MEMORY[0x277D84F90];
    sub_2388B7CD8(0, v86, 0);
    v87 = v135;
    v88 = v84 + 40;
    do
    {
      v89 = *(v88 - 8);
      v90 = v134;
      (*(*v88 + 40))();
      sub_2388C3EA8(0);
      sub_2388C7054(v90, type metadata accessor for GenerationSchema);
      v135 = v87;
      v92 = *(v87 + 16);
      v91 = *(v87 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_2388B7CD8(v91 > 1, v92 + 1, 1);
        v87 = v135;
      }

      *(v87 + 16) = v92 + 1;
      sub_2388C6728(v20, v87 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v92, type metadata accessor for DynamicGenerationSchema);
      v88 += 16;
      --v86;
    }

    while (v86);

    v81 = v133;
    v85 = v130;
    v83 = v131;
  }

  else
  {

    v87 = MEMORY[0x277D84F90];
  }

  return DynamicGenerationSchema.init(name:description:anyOf:)(v81, v82, v85, v83, v87, v125);
}

uint64_t GenerationSchema.SchemaError.Context.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenerationSchema.SchemaError.Context.init(debugDescription:underlyingErrors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t GenerationSchema.SchemaError.errorDescription.getter()
{
  v1 = sub_2388D1138();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2388D2838();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2388D2818();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = *v0;
  v9 = v0[1];
  v11 = v0[2];
  v12 = *(v0 + 56);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      sub_2388D2808();
      sub_2388D27F8();
      sub_2388D27E8();
    }

    else
    {
      v15 = v0[1];

      sub_2388D2808();
      sub_2388D27F8();
      sub_2388D27E8();

      sub_2388D27F8();
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238841E3C();
      sub_2388D27B8();
      sub_2388D27E8();
    }

    sub_2388D27F8();
    sub_2388D2828();
    sub_2388D10A8();
  }

  else
  {
    v13 = v0[3];
    if (*(v0 + 56))
    {
      sub_2388D2808();
      sub_2388D27F8();
      sub_2388D27E8();
    }

    else
    {
      v14 = v0[1];

      sub_2388D2808();
      sub_2388D27F8();
      sub_2388D27E8();
    }

    sub_2388D27F8();
    sub_2388D27E8();
    sub_2388D27F8();
    sub_2388D2828();
    sub_2388D10A8();
  }

  return sub_2388D28A8();
}

uint64_t GenerationSchema.SchemaError.recoverySuggestion.getter()
{
  v1 = sub_2388D1138();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2388D2838();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *(v0 + 56);
  sub_2388D27D8();
  sub_2388D10A8();
  return sub_2388D28A8();
}

uint64_t GenerationSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v48 = sub_2388D2FE8();
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerationSchema(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D2178();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = a1[4];
  sub_238815878(a1, a1[3]);
  v18 = v50;
  sub_2388D3528();
  if (v18)
  {
    goto LABEL_9;
  }

  v43 = v14;
  v44 = v9;
  v50 = a1;
  v42 = v5;
  v19 = v48;
  sub_238815878(v49, v49[3]);
  sub_2388C72A4(&qword_27DF31380, MEMORY[0x277D0DC20]);
  sub_2388D33A8();
  v41 = v10;
  v20 = static GenerationSchema.source(for:)(v16);
  if (!v21)
  {
    sub_238810E44(&qword_27DF315D8, qword_2388DD310);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2388D3F70;
    *(v29 + 56) = &type metadata for GenerationSchema.JSONSchemaCodingKey;
    v30 = sub_2388C669C();
    *(v29 + 64) = v30;
    v31 = swift_allocObject();
    *(v29 + 32) = v31;
    *(v31 + 16) = 0x656C746974;
    *(v31 + 24) = 0xE500000000000000;
    *(v31 + 32) = 0;
    *(v31 + 40) = 1;
    v32 = v42;
    sub_2388D2FD8();
    v33 = sub_2388D2FF8();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_238810E44(&qword_27DF315D0, &unk_2388DC640) + 48);
    v35[3] = &type metadata for GenerationSchema.JSONSchemaCodingKey;
    v35[4] = v30;
    v37 = swift_allocObject();
    *v35 = v37;
    *(v37 + 16) = 0x656C746974;
    *(v37 + 24) = 0xE500000000000000;
    *(v37 + 32) = 0;
    *(v37 + 40) = 1;
    v38 = v46;
    (*(v46 + 16))(v35 + v36, v32, v19);
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84158], v33);
    swift_willThrow();
    (*(v38 + 8))(v32, v19);
    (*(v47 + 8))(v16, v41);
    sub_2388158BC(v49);
    a1 = v50;
LABEL_9:
    v28 = a1;
    return sub_2388158BC(v28);
  }

  v22 = v20;
  v23 = v21;
  v24 = v47;
  v25 = v43;
  v26 = v41;
  (*(v47 + 16))(v43, v16, v41);
  v27 = v44;
  GenerationSchema.init(schema:source:)(v25, v22, v23, v44);
  (*(v24 + 8))(v16, v26);
  sub_2388C6728(v27, v45, type metadata accessor for GenerationSchema);
  sub_2388158BC(v49);
  v28 = v50;
  return sub_2388158BC(v28);
}

uint64_t static GenerationSchema.source(for:)(uint64_t a1)
{
  v88 = a1;
  v1 = sub_2388D2138();
  v86 = *(v1 - 8);
  v87 = v1;
  v2 = *(v86 + 64);
  MEMORY[0x28223BE20](v1);
  v85 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2388D1F18();
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v81 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2388D1FE8();
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v7);
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D2168();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2388D2088();
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2388D20D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2388D1F98();
  v84 = *(v22 - 8);
  v23 = *(v84 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2388D2178();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = (&v73 - v32);
  (*(v27 + 16))(&v73 - v32, v88, v26);
  v34 = (*(v27 + 88))(v33, v26);
  if (v34 != *MEMORY[0x277D0DBF8])
  {
    if (v34 == *MEMORY[0x277D0DC00])
    {
      (*(v27 + 8))(v33, v26);
      v89 = MEMORY[0x277D839B0];
      v41 = &qword_27DF2FA28;
      v42 = &unk_2388D3FD0;
LABEL_8:
      sub_238810E44(v41, v42);
      return sub_2388D28B8();
    }

    if (v34 == *MEMORY[0x277D0DC08])
    {
      (*(v27 + 8))(v33, v26);
      v89 = MEMORY[0x277D83B88];
      v41 = &qword_27DF2FA50;
      v42 = "\bH";
      goto LABEL_8;
    }

    if (v34 == *MEMORY[0x277D0DBE8])
    {
      (*(v27 + 8))(v33, v26);
      return 0x7265626D754ELL;
    }

    if (v34 == *MEMORY[0x277D0DC10])
    {
      (*(v27 + 96))(v33, v26);
      v44 = *v33;
      v45 = swift_projectBox();
      v47 = v85;
      v46 = v86;
      v48 = v87;
      (*(v86 + 16))(v85, v45, v87);
      v49 = sub_2388D2128();
LABEL_14:
      v50 = v49;
      (*(v46 + 8))(v47, v48);
LABEL_17:

      return v50;
    }

    if (v34 == *MEMORY[0x277D0DBD8])
    {
      (*(v27 + 96))(v33, v26);
      v51 = *v33;
      v52 = swift_projectBox();
      v53 = v84;
      (*(v84 + 16))(v25, v52, v22);
      v50 = sub_2388D1F88();
      (*(v53 + 8))(v25, v22);
      goto LABEL_17;
    }

    if (v34 == *MEMORY[0x277D0DBD0])
    {
      (*(v27 + 96))(v33, v26);
      v54 = *v33;
      v55 = swift_projectBox();
      v57 = v81;
      v56 = v82;
      v58 = v83;
      v59 = (*(v82 + 16))(v81, v55, v83);
      MEMORY[0x23EE661A0](v59);
      v60 = static GenerationSchema.source(for:)(v31);
      v62 = v61;
      (*(v27 + 8))(v31, v26);
      if (v62)
      {
        v89 = 0;
        v90 = 0xE000000000000000;
        sub_2388D2FA8();

        v89 = 0xD000000000000013;
        v90 = 0x80000002388E0060;
LABEL_25:
        MEMORY[0x23EE66C20](v60, v62);
        MEMORY[0x23EE66C20](62, 0xE100000000000000);

        v60 = v89;
      }
    }

    else
    {
      if (v34 != *MEMORY[0x277D0DBE0])
      {
        if (v34 == *MEMORY[0x277D0DBF0])
        {
          (*(v27 + 96))(v33, v26);
          v67 = *v33;
          v68 = swift_projectBox();
          v70 = v76;
          v69 = v77;
          (*(v76 + 16))(v16, v68, v77);
          v50 = sub_2388D2068();
          (*(v70 + 8))(v16, v69);

          return v50;
        }

        if (v34 != *MEMORY[0x277D0DC18])
        {
          (*(v27 + 8))(v33, v26);
          return 0;
        }

        (*(v27 + 96))(v33, v26);
        v71 = *v33;
        v72 = swift_projectBox();
        v47 = v73;
        v46 = v74;
        v48 = v75;
        (*(v74 + 16))(v73, v72, v75);
        v49 = sub_2388D2158();
        goto LABEL_14;
      }

      (*(v27 + 96))(v33, v26);
      v63 = *v33;
      v64 = swift_projectBox();
      v57 = v78;
      v56 = v79;
      v58 = v80;
      v65 = (*(v79 + 16))(v78, v64, v80);
      MEMORY[0x23EE66250](v65);
      v60 = static GenerationSchema.source(for:)(v31);
      v62 = v66;
      (*(v27 + 8))(v31, v26);
      if (v62)
      {
        v89 = 0x3C7961727241;
        v90 = 0xE600000000000000;
        goto LABEL_25;
      }
    }

    (*(v56 + 8))(v57, v58);

    return v60;
  }

  (*(v27 + 96))(v33, v26);
  v35 = *v33;
  v36 = swift_projectBox();
  (*(v18 + 16))(v21, v36, v17);
  v37 = sub_2388D20B8();
  if (v38)
  {
    v39 = v37;
    (*(v18 + 8))(v21, v17);

    return v39;
  }

  else
  {
    v89 = MEMORY[0x277D837D0];
    sub_238810E44(&qword_27DF2FA48, &unk_2388D3FF0);
    v43 = sub_2388D28B8();
    (*(v18 + 8))(v21, v17);

    return v43;
  }
}

uint64_t GenerationSchema.encode(to:)(void *a1)
{
  v2 = sub_2388D2178();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerationSchema.jsonSchema()(v6);
  v7 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388D3558();
  sub_238827C28(v10, v10[3]);
  sub_2388C72A4(&qword_27DF30AF8, MEMORY[0x277D0DC20]);
  sub_2388D33F8();
  (*(v3 + 8))(v6, v2);
  return sub_2388158BC(v10);
}

uint64_t sub_2388C6284(void *a1)
{
  v2 = sub_2388D2178();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerationSchema.jsonSchema()(v6);
  v7 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388D3558();
  sub_238827C28(v10, v10[3]);
  sub_2388C72A4(&qword_27DF30AF8, MEMORY[0x277D0DC20]);
  sub_2388D33F8();
  (*(v3 + 8))(v6, v2);
  return sub_2388158BC(v10);
}

uint64_t sub_2388C63F8()
{
  v0 = sub_2388D2178();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerationSchema.jsonSchema()(v4);
  v5 = sub_2388D1F38();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void sub_2388C64D8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_2388C64E8(uint64_t a1)
{
  v2 = sub_2388C669C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388C6524(uint64_t a1)
{
  v2 = sub_2388C669C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2388C6560(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EE66FE0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2388BA540(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2388C6664()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2388C669C()
{
  result = qword_27DF31798;
  if (!qword_27DF31798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31798);
  }

  return result;
}

uint64_t sub_2388C66F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2388C6728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388C67A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenerationSchema.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2388C687C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenerationSchema.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2388C6938()
{
  result = type metadata accessor for GenerationSchema.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_2388C69D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2388C69F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2388C6A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

void sub_2388C6AD8()
{
  sub_2388C6C34(319, &qword_27DF317C0, &qword_27DF317C8, &qword_2388DC9B8);
  if (v0 <= 0x3F)
  {
    sub_2388C6C34(319, &qword_27DF317D0, &qword_27DF317D8, &qword_2388DC9C0);
    if (v1 <= 0x3F)
    {
      sub_2388C6CD0(319, &qword_27DF317E0);
      if (v2 <= 0x3F)
      {
        sub_2388C6CD0(319, &qword_27DF317F0);
        if (v3 <= 0x3F)
        {
          sub_2388C6D48();
          if (v4 <= 0x3F)
          {
            sub_2388C6DCC();
            if (v5 <= 0x3F)
            {
              sub_2388C6DFC();
              if (v6 <= 0x3F)
              {
                sub_2388C6E2C();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2388C6C34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_238810E8C(&qword_27DF2FD18, &unk_2388D5400);
    sub_238810E8C(a3, a4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_2388C6CD0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_238810E8C(&qword_27DF317E8, &qword_2388DC9C8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2388C6D48()
{
  if (!qword_27DF317F8)
  {
    sub_238810E8C(&qword_27DF2FD18, &unk_2388D5400);
    type metadata accessor for StringGuides(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DF317F8);
    }
  }
}

ValueMetadata *sub_2388C6DCC()
{
  result = qword_27DF31800;
  if (!qword_27DF31800)
  {
    result = &type metadata for IntegerGuides;
    atomic_store(&type metadata for IntegerGuides, &qword_27DF31800);
  }

  return result;
}

ValueMetadata *sub_2388C6DFC()
{
  result = qword_27DF31808;
  if (!qword_27DF31808)
  {
    result = &type metadata for DoubleGuides;
    atomic_store(&type metadata for DoubleGuides, &qword_27DF31808);
  }

  return result;
}

void sub_2388C6E2C()
{
  if (!qword_27DF31810)
  {
    v0 = type metadata accessor for DynamicGenerationSchema(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27DF31810);
    }
  }
}

unint64_t sub_2388C6E78()
{
  result = qword_27DF31818;
  if (!qword_27DF31818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31818);
  }

  return result;
}

unint64_t sub_2388C6ED0()
{
  result = qword_27DF31820;
  if (!qword_27DF31820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31820);
  }

  return result;
}

unint64_t sub_2388C6F28()
{
  result = qword_27DF31828;
  if (!qword_27DF31828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31828);
  }

  return result;
}

uint64_t sub_2388C6F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(qword_27DF2FBD8, &unk_2388D4AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2388C6FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388C7054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388C7108(uint64_t a1)
{
  v2 = sub_2388D1118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2388C72A4(&qword_27DF30F60, MEMORY[0x277CC9740]);
  result = MEMORY[0x23EE66FE0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2388BA690(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2388C72A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2388C7308@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  sub_238827E14(v2, &v10, &qword_27DF318F8, &qword_2388DCE58);
  if (v11)
  {
    sub_238828174(&v10, v9);
    a1(v9);
    if (v3)
    {
      result = sub_2388158BC(v9);
      __break(1u);
    }

    else
    {
      sub_2388158BC(v9);
      v6 = type metadata accessor for Transcript.Entry(0);
      return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    }
  }

  else
  {
    v8 = type metadata accessor for Transcript.Entry(0);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }

  return result;
}

uint64_t sub_2388C7420()
{
  v0 = sub_2388D2898();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v12 - v4;
  LOBYTE(v13[0]) = 2;
  v6 = type metadata accessor for Transcript.Entry(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredOutput:)(v13, MEMORY[0x277D84F90], v5);
  v9 = v8;
  sub_238827E88(v5, &qword_27DF300E8, &qword_2388D5D00);
  sub_2388D2888();
  result = sub_2388D2878();
  if (v11)
  {
    v13[0] = result;
    v13[1] = v11;
    v12[2] = 0xD000000000000018;
    v12[3] = 0x80000002388E0170;
    v12[0] = 0xD000000000000031;
    v12[1] = 0x80000002388E0130;
    sub_2388CCE18();
    sub_2388CCE6C();
    sub_23889008C();
    sub_2388D2DA8();
    sub_238826D50(v7, v9);
    return v13[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2388C76A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v4 = 0x6B63616264656566;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (*a2 != 1)
  {
    v8 = 0x6B63616264656566;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_2388C77A0()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388C783C()
{
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_2388C78C4()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388C795C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388CB8C0();
  *a2 = result;
  return result;
}

void sub_2388C798C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v5 = 0x6B63616264656566;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2388C79E4()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6B63616264656566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2388C7A38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2388CB8C0();
  *a1 = result;
  return result;
}

uint64_t sub_2388C7A60(uint64_t a1)
{
  v2 = sub_2388CE240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388C7A9C(uint64_t a1)
{
  v2 = sub_2388CE240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2388C7AD8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31988, &qword_2388DD300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CE240();
  sub_2388D3568();
  LOBYTE(v18) = 0;
  sub_2388D3298();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_2388D3298();
    v11 = v3[5];
    v22 = v3[4];
    v23[0] = v11;
    *(v23 + 9) = *(v3 + 89);
    v12 = v3[1];
    v18 = *v3;
    v19 = v12;
    v13 = v3[3];
    v20 = v3[2];
    v21 = v13;
    v17 = 2;
    sub_2388CE294(v3, v15);
    sub_2388CE2CC();
    sub_2388D32C8();
    v15[4] = v22;
    *v16 = v23[0];
    *&v16[9] = *(v23 + 9);
    v15[0] = v18;
    v15[1] = v19;
    v15[3] = v21;
    v15[2] = v20;
    sub_2388CE320(v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2388C7D28()
{
  v1 = sub_2388D2898();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2388D0D88();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_2388D0DC8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2388D0DB8();
  sub_2388D0D68();
  sub_2388D0D98();
  v8 = v0[5];
  v23[4] = v0[4];
  v24[0] = v8;
  *(v24 + 9) = *(v0 + 89);
  v9 = v0[1];
  v23[0] = *v0;
  v23[1] = v9;
  v10 = v0[3];
  v23[2] = v0[2];
  v23[3] = v10;
  sub_2388CCDC4();
  v11 = sub_2388D0DA8();
  sub_2388D2888();
  v12 = sub_2388D2878();
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    if (qword_27DF2F9E8 != -1)
    {
      swift_once();
    }

    v16 = sub_2388D2408();
    sub_2388413AC(v16, qword_27DF3F8F8);

    v17 = sub_2388D23E8();
    v18 = sub_2388D2DE8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v23[0] = v20;
      *v19 = 136315138;
      v21 = sub_2388C0770(v15, v14, v23);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_23880E000, v17, v18, "%s", v19, 0xCu);
      sub_2388158BC(v20);
      MEMORY[0x23EE68030](v20, -1, -1);
      MEMORY[0x23EE68030](v19, -1, -1);
    }

    else
    {
    }
  }

  return v11;
}

__n128 sub_2388C7FEC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2388CB90C(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_2388C8040(void *a1)
{
  v7 = v1[4];
  *v8 = v1[5];
  *&v8[9] = *(v1 + 89);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2388C7AD8(a1);
}

uint64_t sub_2388C808C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000002388DDFD0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x80000002388DDFD0;
  }

  else
  {
    v6 = 0x80000002388DDFF0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000013;
    v4 = 0x80000002388DDFF0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_2388C8164()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388C8204()
{
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_2388C8290()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388C832C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388CBC84();
  *a2 = result;
  return result;
}

void sub_2388C835C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000002388DDFD0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x80000002388DDFF0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2388C83B8()
{
  v1 = 0xD000000000000010;
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
    return 1701869940;
  }
}

uint64_t sub_2388C8410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2388CBC84();
  *a1 = result;
  return result;
}

uint64_t sub_2388C8438(uint64_t a1)
{
  v2 = sub_2388CE87C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388C8474(uint64_t a1)
{
  v2 = sub_2388CE87C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2388C84B0(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31A08, &qword_2388DD890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CE87C();
  sub_2388D3568();
  if (*(v3 + 104))
  {
    LOBYTE(v18) = 0;
    sub_2388D3298();
    if (!v2)
    {
      v11 = v3[5];
      v22 = v3[4];
      v23 = v11;
      v24 = *(v3 + 12);
      v12 = v3[1];
      v18 = *v3;
      v19 = v12;
      v13 = v3[3];
      v20 = v3[2];
      v21 = v13;
      v25 = 2;
      sub_2388CE8D0();
LABEL_6:
      sub_2388D32C8();
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    sub_2388D3298();
    if (!v2)
    {
      v14 = v3[5];
      v22 = v3[4];
      v23 = v14;
      v24 = *(v3 + 12);
      v15 = v3[1];
      v18 = *v3;
      v19 = v15;
      v16 = v3[3];
      v20 = v3[2];
      v21 = v16;
      v25 = 1;
      sub_2388CE924();
      goto LABEL_6;
    }
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_2388C86E0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2388CBCD0(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_2388C874C(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF318C0, &qword_2388DCE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CC8B0();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_2388D3298();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v17 = *(v3 + 1);
    v18 = v13;
    v19 = *(v3 + 3);
    v16 = 1;
    sub_2388CCB04();
    sub_2388D32C8();
    *&v17 = v3[8];
    v16 = 2;
    sub_2388CCB58();
    sub_2388D32C8();
    *&v17 = v3[9];
    v16 = 3;
    sub_2388D32C8();
    LOBYTE(v17) = *(v3 + 80);
    v16 = 4;
    sub_2388CCBAC();
    sub_2388D3278();
    *&v17 = v3[11];
    v16 = 5;
    sub_238810E44(&qword_27DF31898, &qword_2388DCE40);
    sub_2388CCC00(&qword_27DF318E0, sub_2388CCC78);
    sub_2388D32C8();
    *&v17 = v3[12];
    v16 = 6;
    sub_238810E44(&qword_27DF318B0, &qword_2388DCE48);
    sub_2388CCA54(&qword_27DF318F0, sub_2388CCB58);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2388C8A98()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x736575737369;
  if (v1 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x74757074756FLL;
  if (v1 != 3)
  {
    v4 = 0x6E656D69746E6573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x7475706E69;
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

uint64_t sub_2388C8B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388CBFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2388C8BA4(uint64_t a1)
{
  v2 = sub_2388CC8B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388C8BE0(uint64_t a1)
{
  v2 = sub_2388CC8B0();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_2388C8C1C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2388CC224(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_2388C8C94(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31A58, &qword_2388DDA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CEBF0();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_2388D3298();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v20 = *(v3 + 1);
    v21 = v13;
    v22 = *(v3 + 3);
    v19 = 1;
    sub_2388CCB04();
    sub_2388D32C8();
    *&v20 = v3[8];
    v19 = 2;
    sub_2388CCB58();
    sub_2388D32C8();
    *&v20 = v3[9];
    v19 = 3;
    sub_238810E44(&qword_27DF318B0, &qword_2388DCE48);
    sub_2388CCA54(&qword_27DF318F0, sub_2388CCB58);
    sub_2388D32C8();
    v14 = v3[10];
    LOBYTE(v20) = 4;
    sub_2388D32B8();
    v15 = v3[11];
    v16 = v3[12];
    LOBYTE(v20) = 5;
    sub_2388D3238();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2388C8F2C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7374757074756FLL;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x74616E616C707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x7475706E69;
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

uint64_t sub_2388C8FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388CD35C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2388C9018(uint64_t a1)
{
  v2 = sub_2388CEBF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388C9054(uint64_t a1)
{
  v2 = sub_2388CEBF0();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_2388C9090@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2388CD564(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

void sub_2388C9108()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_marketingProductName_obj();
    if (v2)
    {
      v3 = v2;
      v4 = sub_2388D2858();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v11 = MobileGestalt_copy_productVersion_obj();
    if (v11)
    {
      v12 = v11;
      v9 = sub_2388D2858();
      v10 = v13;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v14 = MobileGestalt_copy_buildVersion_obj();
    if (v14)
    {
      v15 = v14;
      v7 = sub_2388D2858();
      v8 = v16;
    }

    else
    {

      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = 0;
    v6 = 0;
  }

  qword_27DF3F8B0 = v4;
  *algn_27DF3F8B8 = v6;
  qword_27DF3F8C0 = v9;
  unk_27DF3F8C8 = v10;
  qword_27DF3F8D0 = v7;
  unk_27DF3F8D8 = v8;
}

uint64_t sub_2388C9220(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31970, &qword_2388DD2F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CDE40();
  sub_2388D3568();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_2388D3238();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_2388D3238();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_2388D3238();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2388C93C0()
{
  v1 = 0x6F6973726556736FLL;
  if (*v0 != 1)
  {
    v1 = 0x4E646C697542736FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 29551;
  }
}

uint64_t sub_2388C9420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388CDAD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2388C9448(uint64_t a1)
{
  v2 = sub_2388CDE40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388C9484(uint64_t a1)
{
  v2 = sub_2388CDE40();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2388C94C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2388CDBF8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2388C951C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388D3518();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v6 = sub_23889D22C(v8);
  sub_2388158BC(v8);
  result = sub_2388158BC(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_2388C95C4(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388D3548();
  sub_23889F7C8(v2, v5);
  return sub_2388158BC(v5);
}

uint64_t sub_2388C9640(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x657669746167656ELL;
  if (v2 != 1)
  {
    v5 = 0x6C61727475656ELL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6576697469736F70;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x657669746167656ELL;
  if (*a2 != 1)
  {
    v8 = 0x6C61727475656ELL;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697469736F70;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_2388C9740()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388C97E4()
{
  *v0;
  *v0;
  sub_2388D2938();
}

uint64_t sub_2388C9874()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_2388C9914@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388CDEE8();
  *a2 = result;
  return result;
}

void sub_2388C9944(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x657669746167656ELL;
  if (v2 != 1)
  {
    v5 = 0x6C61727475656ELL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697469736F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2388C9A54(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_238810E44(&qword_27DF31978, &qword_2388DD2F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CE144();
  sub_2388D3568();
  v17 = a2;
  v16 = 0;
  sub_2388CE1EC();
  sub_2388D32C8();
  if (!v4)
  {
    v15 = 1;
    sub_2388D3238();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2388C9C24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2388CDF34();
  *a2 = result;
  return result;
}

void sub_2388C9C54(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000002388DE0B0;
    v9 = 0xD00000000000001ELL;
    if (v2 == 6)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v8 = 0x80000002388DE0D0;
    }

    v10 = 0xD000000000000010;
    v11 = 0x80000002388DE070;
    if (v2 != 4)
    {
      v10 = 0xD000000000000012;
      v11 = 0x80000002388DE090;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE90000000000006CLL;
    v4 = 0x7566706C65686E75;
    v5 = 0x80000002388DE040;
    v6 = 0xD000000000000018;
    if (v2 != 2)
    {
      v6 = 0x636572726F636E69;
      v5 = 0xE900000000000074;
    }

    if (*v1)
    {
      v4 = 0x6F627265566F6F74;
      v3 = 0xEA00000000006573;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_2388C9E24()
{
  if (*v0)
  {
    result = 0x74616E616C707865;
  }

  else
  {
    result = 0x79726F6765746163;
  }

  *v0;
  return result;
}

uint64_t sub_2388C9E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v6 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_2388C9F48(uint64_t a1)
{
  v2 = sub_2388CE144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2388C9F84(uint64_t a1)
{
  v2 = sub_2388CE144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2388C9FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2388CDF80(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredOutput:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v90 = a2;
  v6 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v88 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v91 = &v85 - v10;
  v11 = sub_238810E44(&qword_27DF31830, &qword_2388DCAD8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = &v85 - v16;
  v17 = type metadata accessor for Transcript.Entry(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v86 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v85 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v85 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v85 - v27;
  v89 = *a1;
  swift_getKeyPath();
  *&v106 = v4;
  sub_2388CCCCC(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v29 = *(v4 + 16);

  os_unfair_lock_lock((v4 + 32));
  v30 = *(v4 + 40);

  os_unfair_lock_unlock((v4 + 32));
  *&v106 = v29;
  sub_23881FC90(v30);
  v31 = v106;
  v32 = *(v106 + 16);
  if (!v32)
  {
LABEL_11:

    v31 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v33 = 0;
  *&v97 = v106 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v34 = (2 * v32) | 1;
  v92 = v32;
  v93 = v28;
  v94 = v18;
  while (1)
  {
    if (v32 + v33 > *(v31 + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    sub_238841D74(v97 + *(v18 + 72) * (v32 + v33 - 1), v28);
    sub_238841D74(v28, v26);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    v35 = v31;
    sub_2388AE208(v26);
    v36 = v28;
    v37 = v95;
    sub_2388CB5B0(v36, v95, type metadata accessor for Transcript.Entry);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v37;
      v39 = v15;
      sub_2388CB5B0(v38, v15, type metadata accessor for Transcript.Prompt);
      v40 = type metadata accessor for Transcript.Prompt(0);
      (*(*(v40 - 8) + 56))(v15, 0, 1, v40);
    }

    else
    {
      v40 = type metadata accessor for Transcript.Prompt(0);
      v41 = v26;
      v42 = v37;
      v39 = v15;
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v43 = v42;
      v26 = v41;
      v32 = v92;
      sub_2388AE208(v43);
    }

    v44 = v39;
    v45 = v96;
    sub_2388CB540(v44, v96);
    type metadata accessor for Transcript.Prompt(0);
    v46 = (*(*(v40 - 8) + 48))(v45, 1, v40);
    sub_238827E88(v45, &qword_27DF31830, &qword_2388DCAD8);
    v47 = v46 == 1;
    v31 = v35;
    v18 = v94;
    if (!v47)
    {
      goto LABEL_13;
    }

    --v33;
    v34 -= 2;
    v28 = v93;
    if (!(v32 + v33))
    {
      goto LABEL_11;
    }
  }

  v48 = v28;
  v49 = v26[1];
  v50 = v26[2];
  v51 = v26[3];

  v52 = v48;
  v32 = v92;
  sub_2388AE208(v52);
LABEL_13:
  v53 = *(v31 + 16);
  v54 = v32 + v33;
  if (v53 < v32 + v33)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v54 == v53)
  {

    v32 = v31;
  }

  else
  {
    sub_238853E48(v31, v97, 0, v34);
    v32 = v55;
  }

  if (v92 < v54)
  {
    goto LABEL_35;
  }

  v56 = *(v31 + 16);
  if (v56 >= v92)
  {
    if (!(v56 + v33))
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  sub_238853E48(v31, v97, v54, (2 * v92) | 1);
  v84 = v83;

  v31 = v84;
LABEL_20:
  v57 = v91;
  sub_238827E14(v87, v91, &qword_27DF300E8, &qword_2388D5D00);
  v58 = v57;
  v59 = v88;
  sub_238827E14(v58, v88, &qword_27DF300E8, &qword_2388D5D00);
  if ((*(v18 + 48))(v59, 1, v17) == 1)
  {
    sub_238827E88(v59, &qword_27DF300E8, &qword_2388D5D00);
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v60 = v59;
    v61 = v86;
    sub_2388CB5B0(v60, v86, type metadata accessor for Transcript.Entry);
    sub_238810E44(&qword_27DF31838, &unk_2388DCB08);
    v34 = swift_allocObject();
    v97 = xmmword_2388D3F70;
    *(v34 + 16) = xmmword_2388D3F70;
    sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
    v62 = *(v18 + 72);
    v63 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v97;
    sub_238841D74(v61, v64 + v63);
    *(v34 + 32) = v64;
    sub_2388AE208(v61);
  }

  v26 = v90;
  if (qword_27DF2F9D8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v65 = qword_27DF3F8B0;
  v66 = *algn_27DF3F8B8;
  v68 = qword_27DF3F8C0;
  v67 = unk_27DF3F8C8;
  *&v97 = qword_27DF3F8D0;
  v69 = v26[2];
  if (v69)
  {
    v90 = qword_27DF3F8C0;
    v93 = qword_27DF3F8B0;
    v94 = v34;
    v95 = v32;
    v96 = v31;
    *&v106 = MEMORY[0x277D84F90];
    v92 = *algn_27DF3F8B8;
    v70 = unk_27DF3F8D8;

    v88 = v67;

    v87 = v70;

    sub_2388B8304(0, v69, 0);
    v71 = v106;
    v72 = v26 + 6;
    do
    {
      v73 = *(v72 - 16);
      v74 = *(v72 - 1);
      v75 = *v72;
      *&v106 = v71;
      v76 = *(v71 + 16);
      v77 = *(v71 + 24);

      if (v76 >= v77 >> 1)
      {
        sub_2388B8304((v77 > 1), v76 + 1, 1);
        v71 = v106;
      }

      *(v71 + 16) = v76 + 1;
      v78 = v71 + 24 * v76;
      *(v78 + 32) = v73;
      v72 += 3;
      *(v78 + 40) = v74;
      *(v78 + 48) = v75;
      --v69;
    }

    while (v69);
    v31 = v96;
    v32 = v95;
    v34 = v94;
    v65 = v93;
    v66 = v92;
    v68 = v90;
    v79 = v88;
    v80 = v87;
  }

  else
  {
    v80 = unk_27DF3F8D8;

    v79 = v67;
    v71 = MEMORY[0x277D84F90];
  }

  sub_238827E88(v91, &qword_27DF300E8, &qword_2388D5D00);
  *&v98 = 0x647261646E617473;
  *(&v98 + 1) = 0xE800000000000000;
  *&v99 = v65;
  *(&v99 + 1) = v66;
  *&v100 = v68;
  *(&v100 + 1) = v79;
  *&v101 = v97;
  *(&v101 + 1) = v80;
  *&v102 = v32;
  *(&v102 + 1) = v31;
  LOBYTE(v103) = v89;
  *(&v103 + 1) = v71;
  v104 = v34;
  v112 = v34;
  v110 = v102;
  v111 = v103;
  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v105 = 0;
  v113 = 0;
  v81 = sub_2388C7D28();
  sub_2388CB510(&v98);
  return v81;
}

uint64_t sub_2388CAA58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2388D1058();
  v21 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];

  sub_2388D1048();
  v11 = sub_2388D1038();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2388D3F70;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  *(v15 + 48) = v10;
  *(v15 + 56) = v9;
  *(v15 + 80) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_2388D1048();
  v16 = sub_2388D1038();
  v18 = v17;
  v14(v8, v21);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  *a2 = v16;
  a2[1] = v18;
  a2[2] = MEMORY[0x277D84F90];
  a2[3] = v15;
  type metadata accessor for Transcript.Entry(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredResponseText:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17[-v10];
  v12 = *a1;
  if (a4)
  {
    v18[0] = a3;
    v18[1] = a4;
    sub_2388CAA58(v18, &v17[-v10]);
    v13 = type metadata accessor for Transcript.Entry(0);
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for Transcript.Entry(0);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  LOBYTE(v18[0]) = v12;
  v15 = LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredOutput:)(v18, a2, v11);
  sub_238827E88(v11, &qword_27DF300E8, &qword_2388D5D00);
  return v15;
}

uint64_t sub_2388CAD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v53 = sub_2388D0D88();
  *&v49 = *(v53 - 8);
  v3 = v49;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2388D1058();
  v54 = v6;
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[0] = sub_238810E44(&qword_27DF318F8, &qword_2388DCE58);
  sub_238810E44(&qword_27DF31900, qword_2388DCE60);
  v50 = sub_2388D28B8();
  v61 = v10;
  v11 = a1[3];
  v12 = a1[4];
  sub_238815878(a1, v11);
  (*(v12 + 24))(&v65, v11, v12);
  v13 = v65;
  v14 = v66;
  LODWORD(v12) = v67;
  v58 = v68;
  v60 = v69;
  v15 = v70;
  sub_238814698(v65, v66, v67);
  v57 = v15;

  v52 = v9;
  sub_2388D1048();
  v62 = sub_2388D1038();
  v59 = v16;
  v17 = *(v88 + 8);
  v88 += 8;
  v55 = v17;
  v17(v9, v6);
  v18 = sub_2388D0DC8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_238814698(v13, v14, v12);

  v21 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v22 = *(v3 + 72);
  v23 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v24 = swift_allocObject();
  v49 = xmmword_2388D3F70;
  *(v24 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v79[0] = v24;
  sub_2388CCCCC(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  v25 = v21;
  sub_2388D0D98();
  LOBYTE(v21) = v58;
  LODWORD(v24) = v12;
  v51 = sub_238819C1C(v13, v14, v12, v25);
  v27 = v26;

  v28 = v13;
  v29 = v13;
  v47 = v13;
  LOBYTE(v13) = v24;
  v48 = v24;
  sub_238810DC4(v28, v14, v24);
  v30 = v57;

  v71[0] = v62;
  v31 = v59;
  v32 = v50;
  v71[1] = v59;
  v71[2] = v50;
  v33 = v61;
  v71[3] = v61;
  v71[4] = v29;
  v71[5] = v14;
  LOBYTE(v72) = v13;
  HIBYTE(v72) = v21;
  v73 = v63;
  v74 = v64;
  v34 = v60;
  v75 = v60;
  v76 = v30;
  v35 = v51;
  v77 = v51;
  v78 = v27;
  v36 = v27;
  v37 = v72 & 0x107 | 0x4000000000000000;
  sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
  v38 = swift_allocObject();
  *(v38 + 16) = v49;
  *(v38 + 32) = v62;
  *(v38 + 40) = v31;
  *(v38 + 48) = v32;
  *(v38 + 56) = v33;
  v39 = v47;
  *(v38 + 64) = v47;
  *(v38 + 72) = v14;
  *(v38 + 80) = v37;
  *(v38 + 88) = v34;
  v40 = v57;
  *(v38 + 96) = v57;
  *(v38 + 104) = v35;
  *(v38 + 112) = v36;
  sub_2388CCD14(v71, v79);
  sub_2388CCD14(v71, v79);
  v41 = v52;
  sub_2388D1048();
  v42 = sub_2388D1038();
  v53 = v43;
  v55(v41, v54);
  sub_2388CCD70(v71);
  v79[0] = v62;
  v79[1] = v59;
  v79[2] = v32;
  v79[3] = v61;
  v79[4] = v39;
  v79[5] = v14;
  v80 = v48;
  v81 = v58;
  v82 = v63;
  v83 = v64;
  v84 = v60;
  v85 = v40;
  v86 = v35;
  v87 = v36;
  sub_2388CCD70(v79);
  sub_238810DC4(v65, v66, v67);

  v44 = v56;
  v45 = v53;
  *v56 = v42;
  v44[1] = v45;
  v44[2] = MEMORY[0x277D84F90];
  v44[3] = v38;
  type metadata accessor for Transcript.Entry(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredResponseContent:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13[-v8];
  v10 = *a1;
  v14 = a3;
  sub_2388C7308(sub_2388CB618, &v13[-v8]);
  v15 = v10;
  v11 = LanguageModelSession.logFeedbackAttachment(sentiment:issues:desiredOutput:)(&v15, a2, v9);
  sub_238827E88(v9, &qword_27DF300E8, &qword_2388D5D00);
  return v11;
}

uint64_t sub_2388CB540(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF31830, &qword_2388DCAD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2388CB5B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2388CB63C()
{
  result = qword_27DF31840;
  if (!qword_27DF31840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31840);
  }

  return result;
}

unint64_t sub_2388CB6D8()
{
  result = qword_27DF31858;
  if (!qword_27DF31858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31858);
  }

  return result;
}

__n128 sub_2388CB7C0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2388CB7FC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2388D2758();
  if (*(v2 + 16))
  {
    sub_238820AA8(0xD00000000000001DLL, 0x80000002388E0190);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2388CB8C0()
{
  v0 = sub_2388D3138();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2388CB90C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF319A0, &qword_2388DD308);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = a1[4];
  sub_238815878(a1, a1[3]);
  v10 = sub_2388CE240();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v24 = v10;
  v11 = v25;
  LOBYTE(v32) = 0;
  if (sub_2388D31D8() == 0xD000000000000026 && 0x80000002388E01F0 == v12)
  {

    goto LABEL_9;
  }

  v14 = sub_2388D3368();

  if (v14)
  {
LABEL_9:
    v38 = 2;
    sub_2388CE350();
    sub_2388D31F8();
    (*(v11 + 8))(v8, v5);
    v30 = v36;
    v31[0] = v37[0];
    *(v31 + 9) = *(v37 + 9);
    v26 = v32;
    v27 = v33;
    v29 = v35;
    v28 = v34;
    result = sub_2388158BC(a1);
    v21 = v31[0];
    a2[4] = v30;
    a2[5] = v21;
    *(a2 + 89) = *(v31 + 9);
    v22 = v27;
    *a2 = v26;
    a2[1] = v22;
    v23 = v29;
    a2[2] = v28;
    a2[3] = v23;
    return result;
  }

  v15 = sub_2388D2FF8();
  swift_allocError();
  v17 = v16;
  sub_238810E44(&qword_27DF315D8, qword_2388DD310);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2388D3F70;
  v19 = v24;
  *(v18 + 56) = &type metadata for LanguageModelFeedback.Attachment.CodingKeys;
  *(v18 + 64) = v19;
  *(v18 + 32) = 0;
  sub_2388D2FD8();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84168], v15);
  swift_willThrow();
  (*(v11 + 8))(v8, v5);
  return sub_2388158BC(a1);
}

uint64_t sub_2388CBC84()
{
  v0 = sub_2388D3138();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2388CBCD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31A28, qword_2388DD898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CE87C();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v36 = 0;
  if (sub_2388D31D8() == 0xD000000000000010 && 0x80000002388DDFD0 == v11)
  {

    goto LABEL_9;
  }

  v13 = sub_2388D3368();

  if (v13)
  {
LABEL_9:
    v35 = 1;
    sub_2388CE9CC();
    sub_2388D31F8();
    (*(v6 + 8))(v9, v5);
    v14 = 0;
    v33 = v26;
    v31 = v24;
    v32 = v25;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    v34 = 0;
    goto LABEL_11;
  }

  v35 = 2;
  sub_2388CE978();
  sub_2388D31F8();
  (*(v6 + 8))(v9, v5);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v14 = 1;
  v34 = 1;
LABEL_11:
  result = sub_2388158BC(a1);
  v16 = v32;
  *(a2 + 64) = v31;
  *(a2 + 80) = v16;
  *(a2 + 96) = v33;
  v17 = v28;
  *a2 = v27;
  *(a2 + 16) = v17;
  v18 = v30;
  *(a2 + 32) = v29;
  *(a2 + 48) = v18;
  *(a2 + 104) = v14;
  return result;
}

uint64_t sub_2388CBFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002388E01B0 == a2 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xE900000000000074 || (sub_2388D3368() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002388E01D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_2388D3368();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2388CC224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31870, &qword_2388DCE38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CC8B0();
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);
  }

  else
  {
    LOBYTE(v43) = 0;
    v11 = sub_2388D31D8();
    v13 = v12;
    v14 = v11;
    LOBYTE(v36) = 1;
    sub_2388CC904();
    sub_2388D31F8();
    v30 = v14;
    v29 = v43;
    v34 = v44;
    v28 = v45;
    v31 = v46;
    v27 = v47;
    v35 = v48;
    LOBYTE(v36) = 2;
    sub_2388CC958();
    sub_2388D31F8();
    v33 = v43;
    LOBYTE(v36) = 3;
    sub_2388D31F8();
    v32 = v43;
    LOBYTE(v36) = 4;
    sub_2388CC9AC();
    sub_2388D31B8();
    LODWORD(v14) = v43;
    sub_238810E44(&qword_27DF31898, &qword_2388DCE40);
    LOBYTE(v36) = 5;
    sub_2388CCC00(&qword_27DF318A0, sub_2388CCA00);
    sub_2388D31F8();
    v26 = v14;
    v15 = v43;
    sub_238810E44(&qword_27DF318B0, &qword_2388DCE48);
    v56 = 6;
    sub_2388CCA54(&qword_27DF318B8, sub_2388CC958);
    sub_2388D31F8();
    (*(v6 + 8))(v9, v5);
    v25 = v57;
    *&v36 = v30;
    *(&v36 + 1) = v13;
    *&v37 = v29;
    v16 = v34;
    *(&v37 + 1) = v34;
    *&v38 = v28;
    v17 = v31;
    *(&v38 + 1) = v31;
    v18 = v35;
    *&v39 = v27;
    *(&v39 + 1) = v35;
    v19 = v33;
    *&v40 = v33;
    *(&v40 + 1) = v32;
    LOBYTE(v41) = v26;
    *(&v41 + 1) = v15;
    v42 = v57;
    sub_2388CCACC(&v36, &v43);
    sub_2388158BC(a1);
    v43 = v30;
    v44 = v13;
    v45 = v29;
    v46 = v16;
    v47 = v28;
    v48 = v17;
    v49 = v27;
    v50 = v18;
    v51 = v19;
    v52 = v32;
    v53 = v26;
    v54 = v15;
    v55 = v25;
    result = sub_2388CB510(&v43);
    v21 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v21;
    *(a2 + 96) = v42;
    v22 = v37;
    *a2 = v36;
    *(a2 + 16) = v22;
    v23 = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = v23;
  }

  return result;
}

unint64_t sub_2388CC8B0()
{
  result = qword_27DF31878;
  if (!qword_27DF31878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31878);
  }

  return result;
}

unint64_t sub_2388CC904()
{
  result = qword_27DF31880;
  if (!qword_27DF31880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31880);
  }

  return result;
}

unint64_t sub_2388CC958()
{
  result = qword_27DF31888;
  if (!qword_27DF31888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31888);
  }

  return result;
}

unint64_t sub_2388CC9AC()
{
  result = qword_27DF31890;
  if (!qword_27DF31890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31890);
  }

  return result;
}

unint64_t sub_2388CCA00()
{
  result = qword_27DF318A8;
  if (!qword_27DF318A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318A8);
  }

  return result;
}

uint64_t sub_2388CCA54(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF318B0, &qword_2388DCE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388CCB04()
{
  result = qword_27DF318C8;
  if (!qword_27DF318C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318C8);
  }

  return result;
}

unint64_t sub_2388CCB58()
{
  result = qword_27DF318D0;
  if (!qword_27DF318D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318D0);
  }

  return result;
}

unint64_t sub_2388CCBAC()
{
  result = qword_27DF318D8;
  if (!qword_27DF318D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318D8);
  }

  return result;
}

uint64_t sub_2388CCC00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31898, &qword_2388DCE40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388CCC78()
{
  result = qword_27DF318E8;
  if (!qword_27DF318E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF318E8);
  }

  return result;
}

uint64_t sub_2388CCCCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2388CCDC4()
{
  result = qword_27DF31908;
  if (!qword_27DF31908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31908);
  }

  return result;
}

unint64_t sub_2388CCE18()
{
  result = qword_27DF31910;
  if (!qword_27DF31910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31910);
  }

  return result;
}

unint64_t sub_2388CCE6C()
{
  result = qword_27DF31918;
  if (!qword_27DF31918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31918);
  }

  return result;
}

__n128 sub_2388CCECC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageModelFeedback.StandardFeedbackForm.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguageModelFeedback.StandardFeedbackForm.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2388CD05C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2388CD0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2388CD130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2388CD18C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2388CD200()
{
  result = qword_27DF31920;
  if (!qword_27DF31920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31920);
  }

  return result;
}

unint64_t sub_2388CD258()
{
  result = qword_27DF31928;
  if (!qword_27DF31928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31928);
  }

  return result;
}

unint64_t sub_2388CD2B0()
{
  result = qword_27DF31930;
  if (!qword_27DF31930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31930);
  }

  return result;
}

unint64_t sub_2388CD308()
{
  result = qword_27DF31938;
  if (!qword_27DF31938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31938);
  }

  return result;
}

uint64_t sub_2388CD35C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002388E01B0 == a2 || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000 || (sub_2388D3368() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002388E0270 == a2 || (sub_2388D3368() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
  {

    return 5;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388CD564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31A68, &qword_2388DDAA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CEBF0();
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);
  }

  else
  {
    LOBYTE(v45) = 0;
    v11 = sub_2388D31D8();
    v13 = v12;
    v35 = v11;
    LOBYTE(v38) = 1;
    sub_2388CC904();
    sub_2388D31F8();
    v32 = v45;
    v37 = v46;
    v31 = v47;
    v33 = v48;
    v14 = v49;
    v34 = v50;
    LOBYTE(v38) = 2;
    sub_2388CC958();
    sub_2388D31F8();
    v30 = v14;
    v36 = v45;
    sub_238810E44(&qword_27DF318B0, &qword_2388DCE48);
    LOBYTE(v38) = 3;
    sub_2388CCA54(&qword_27DF318B8, sub_2388CC958);
    sub_2388D31F8();
    v15 = v45;
    LOBYTE(v45) = 4;
    v29 = sub_2388D31E8();
    v58 = 5;
    v16 = sub_2388D3178();
    v17 = *(v6 + 8);
    v18 = v16;
    v28 = v19;
    v17(v9, v5);
    *&v38 = v35;
    *(&v38 + 1) = v13;
    *&v39 = v32;
    v20 = v37;
    *(&v39 + 1) = v37;
    *&v40 = v31;
    v21 = v33;
    *(&v40 + 1) = v33;
    *&v41 = v30;
    *(&v41 + 1) = v34;
    *&v42 = v36;
    *(&v42 + 1) = v15;
    *&v43 = v29;
    v22 = v28;
    *(&v43 + 1) = v18;
    v44 = v28;
    sub_2388CEC44(&v38, &v45);
    sub_2388158BC(a1);
    v45 = v35;
    v46 = v13;
    v47 = v32;
    v48 = v20;
    v49 = v31;
    v50 = v21;
    v51 = v30;
    v52 = v34;
    v53 = v36;
    v54 = v15;
    v55 = v29;
    v56 = v18;
    v57 = v22;
    result = sub_2388CEC7C(&v45);
    v24 = v43;
    *(a2 + 64) = v42;
    *(a2 + 80) = v24;
    *(a2 + 96) = v44;
    v25 = v39;
    *a2 = v38;
    *(a2 + 16) = v25;
    v26 = v41;
    *(a2 + 32) = v40;
    *(a2 + 48) = v26;
  }

  return result;
}

uint64_t sub_2388CDAD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29551 && a2 == 0xE200000000000000;
  if (v3 || (sub_2388D3368() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_2388D3368() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E646C697542736FLL && a2 == 0xED00007265626D75)
  {

    return 2;
  }

  else
  {
    v6 = sub_2388D3368();

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

uint64_t sub_2388CDBF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF31940, &qword_2388DD2E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_2388CDE40();
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v27 = 0;
  v11 = sub_2388D3178();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_2388D3178();
  v23 = v14;
  v25 = 2;
  v15 = sub_2388D3178();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_2388158BC(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_2388CDE40()
{
  result = qword_27DF31948;
  if (!qword_27DF31948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31948);
  }

  return result;
}

unint64_t sub_2388CDE94()
{
  result = qword_27DF31950;
  if (!qword_27DF31950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31950);
  }

  return result;
}

uint64_t sub_2388CDEE8()
{
  v0 = sub_2388D3138();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2388CDF34()
{
  v0 = sub_2388D3138();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2388CDF80(uint64_t *a1)
{
  v3 = sub_238810E44(&qword_27DF31958, &qword_2388DD2E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_238815878(a1, v8);
  sub_2388CE144();
  sub_2388D3538();
  if (!v1)
  {
    v10[14] = 0;
    sub_2388CE198();
    sub_2388D31F8();
    v8 = v10[15];
    v10[13] = 1;
    sub_2388D3178();
    (*(v4 + 8))(v7, v3);
  }

  sub_2388158BC(a1);
  return v8;
}

unint64_t sub_2388CE144()
{
  result = qword_27DF31960;
  if (!qword_27DF31960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31960);
  }

  return result;
}

unint64_t sub_2388CE198()
{
  result = qword_27DF31968;
  if (!qword_27DF31968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31968);
  }

  return result;
}

unint64_t sub_2388CE1EC()
{
  result = qword_27DF31980;
  if (!qword_27DF31980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31980);
  }

  return result;
}

unint64_t sub_2388CE240()
{
  result = qword_27DF31990;
  if (!qword_27DF31990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31990);
  }

  return result;
}

unint64_t sub_2388CE2CC()
{
  result = qword_27DF31998;
  if (!qword_27DF31998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31998);
  }

  return result;
}

unint64_t sub_2388CE350()
{
  result = qword_27DF319A8;
  if (!qword_27DF319A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319A8);
  }

  return result;
}

uint64_t sub_2388CE3D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 104);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2388CE424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

unint64_t sub_2388CE4BC()
{
  result = qword_27DF319B0;
  if (!qword_27DF319B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319B0);
  }

  return result;
}

unint64_t sub_2388CE514()
{
  result = qword_27DF319B8;
  if (!qword_27DF319B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319B8);
  }

  return result;
}

unint64_t sub_2388CE56C()
{
  result = qword_27DF319C0;
  if (!qword_27DF319C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319C0);
  }

  return result;
}

unint64_t sub_2388CE5C4()
{
  result = qword_27DF319C8;
  if (!qword_27DF319C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319C8);
  }

  return result;
}

unint64_t sub_2388CE61C()
{
  result = qword_27DF319D0;
  if (!qword_27DF319D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319D0);
  }

  return result;
}

unint64_t sub_2388CE674()
{
  result = qword_27DF319D8;
  if (!qword_27DF319D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319D8);
  }

  return result;
}

unint64_t sub_2388CE6CC()
{
  result = qword_27DF319E0;
  if (!qword_27DF319E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319E0);
  }

  return result;
}

unint64_t sub_2388CE724()
{
  result = qword_27DF319E8;
  if (!qword_27DF319E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319E8);
  }

  return result;
}

unint64_t sub_2388CE77C()
{
  result = qword_27DF319F0;
  if (!qword_27DF319F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319F0);
  }

  return result;
}

unint64_t sub_2388CE7D4()
{
  result = qword_27DF319F8;
  if (!qword_27DF319F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF319F8);
  }

  return result;
}

unint64_t sub_2388CE828()
{
  result = qword_27DF31A00;
  if (!qword_27DF31A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A00);
  }

  return result;
}

unint64_t sub_2388CE87C()
{
  result = qword_27DF31A10;
  if (!qword_27DF31A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A10);
  }

  return result;
}

unint64_t sub_2388CE8D0()
{
  result = qword_27DF31A18;
  if (!qword_27DF31A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A18);
  }

  return result;
}

unint64_t sub_2388CE924()
{
  result = qword_27DF31A20;
  if (!qword_27DF31A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A20);
  }

  return result;
}

unint64_t sub_2388CE978()
{
  result = qword_27DF31A30;
  if (!qword_27DF31A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A30);
  }

  return result;
}

unint64_t sub_2388CE9CC()
{
  result = qword_27DF31A38;
  if (!qword_27DF31A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A38);
  }

  return result;
}

uint64_t sub_2388CEA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2388CEA80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2388CEAEC()
{
  result = qword_27DF31A40;
  if (!qword_27DF31A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A40);
  }

  return result;
}

unint64_t sub_2388CEB44()
{
  result = qword_27DF31A48;
  if (!qword_27DF31A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A48);
  }

  return result;
}

unint64_t sub_2388CEB9C()
{
  result = qword_27DF31A50;
  if (!qword_27DF31A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A50);
  }

  return result;
}

unint64_t sub_2388CEBF0()
{
  result = qword_27DF31A60;
  if (!qword_27DF31A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A60);
  }

  return result;
}

unint64_t sub_2388CECC0()
{
  result = qword_27DF31A70;
  if (!qword_27DF31A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A70);
  }

  return result;
}

unint64_t sub_2388CED18()
{
  result = qword_27DF31A78;
  if (!qword_27DF31A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A78);
  }

  return result;
}

unint64_t sub_2388CED70()
{
  result = qword_27DF31A80;
  if (!qword_27DF31A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31A80);
  }

  return result;
}

uint64_t sub_2388CEDF0()
{
  v0 = sub_2388D2408();
  sub_2388CEF14(v0, qword_27DF3F8E0);
  sub_2388413AC(v0, qword_27DF3F8E0);
  return sub_2388D23F8();
}

uint64_t sub_2388CEE70()
{
  v0 = sub_2388D2408();
  sub_2388CEF14(v0, qword_27DF3F8F8);
  sub_2388413AC(v0, qword_27DF3F8F8);
  type metadata accessor for LanguageModelSession();
  sub_238810E44(qword_27DF31A88, &unk_2388DDBB0);
  sub_2388D28B8();
  return sub_2388D23F8();
}

uint64_t *sub_2388CEF14(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2388CEF78()
{
  v0 = sub_2388D2388();
  sub_2388CEF14(v0, qword_27DF3F910);
  sub_2388413AC(v0, qword_27DF3F910);
  return sub_2388D2378();
}

uint64_t sub_2388CF008(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{
  v28 = a4;
  v29 = a6;
  v27 = a2;
  v8 = sub_2388D2398();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_2388D2358();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v30);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27DF2F9F0 != -1)
  {
    swift_once();
  }

  v17 = sub_2388D2388();
  sub_2388413AC(v17, qword_27DF3F910);

  v18 = sub_2388D2368();
  sub_2388D23A8();
  v26 = sub_2388D2E28();

  if (sub_2388D2E68())
  {

    sub_2388D23D8();

    if ((*(v9 + 88))(v12, v8) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v9 + 8))(v12, v8);
      v20 = "SessionID=%{public}s RequestID=%{public}s";
      v19 = 2;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = v19;
    *(v21 + 1) = v19;
    *(v21 + 2) = 2082;
    *(v21 + 4) = sub_2388C0770(v27, a3, &v31);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_2388C0770(v28, a5, &v31);
    v23 = sub_2388D2338();
    _os_signpost_emit_with_name_impl(&dword_23880E000, v18, v26, v23, v29, v20, v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE68030](v22, -1, -1);
    MEMORY[0x23EE68030](v21, -1, -1);
  }

  return (*(v13 + 8))(v16, v30);
}

uint64_t sub_2388CF344(uint64_t a1)
{
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v23 = *(a1 + 32);
  v5 = sub_23881608C();
  sub_238814D44(a1);
  if (v1)
  {
    return v2;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v26 = MEMORY[0x277D84F90];
  v21 = v5;
  result = sub_2388B7BD0(0, v7, 0);
  v8 = v5;
  v9 = 0;
  v10 = 32;
  v2 = v26;
  v11 = v7;
  v20 = v7;
  while (v9 < *(v8 + 16))
  {
    v12 = *(v8 + v10);
    v13 = *(v8 + v10 + 16);
    v25 = *(v8 + v10 + 32);
    v24[0] = v12;
    v24[1] = v13;
    if (v13 == 2)
    {
      v14 = *(&v24[0] + 1);
      v15 = *&v24[0];
    }

    else
    {
      sub_2388AE8F8(v24, v22);
      v15 = sub_2388147C8();
      v14 = v16;
      result = sub_238814D44(v24);
      v11 = v20;
      v8 = v21;
    }

    v26 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_2388B7BD0((v17 > 1), v18 + 1, 1);
      v11 = v20;
      v8 = v21;
      v2 = v26;
    }

    ++v9;
    *(v2 + 16) = v18 + 1;
    v19 = v2 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
    v10 += 40;
    if (v11 == v9)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2388CF50C(uint64_t a1, uint64_t a2)
{
  v6 = sub_2388D0D88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  result = sub_2388CF7E0(a1, a2);
  if (!v3 && !result)
  {
    sub_2388D2FA8();

    MEMORY[0x23EE66C20](a1, a2);
    MEMORY[0x23EE66C20](0x65746E6F430A2E27, 0xEC000000203A746ELL);
    v22 = *(v2 + 8);
    v23 = *v2;
    v10 = *(v2 + 16);
    v11 = *(v2 + 17);
    v12 = sub_2388D0DC8();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v16 = *(v7 + 72);
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    sub_238815B14();
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
    sub_2388D2F08();
    sub_2388D0D98();
    v18 = sub_238819C1C(v23, v22, v10, v15);
    v20 = v19;

    MEMORY[0x23EE66C20](v18, v20);

    sub_2388151C8();
    swift_allocError();
    *v21 = 0xD00000000000002ELL;
    *(v21 + 8) = 0x80000002388DE3A0;
    *(v21 + 16) = MEMORY[0x277D84F90];
    *(v21 + 24) = 0;
    *(v21 + 32) = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2388CF7E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v22[0] = *v2;
  v22[1] = v6;
  v23 = *(v2 + 32);
  result = sub_23881AB94();
  if (!v3)
  {
    v8 = result;
    if (*(result + 16) && (v9 = sub_238820AA8(a1, a2), (v10 & 1) != 0))
    {
      v11 = *(v8 + 56) + 40 * v9;
      v12 = *(v11 + 32);
      v13 = *(v11 + 16);
      v24 = *v11;
      v25 = v13;
      v26 = v12;
      sub_2388AE8F8(&v24, v22);

      v27 = v24;
      v28 = v25;
      v15 = *(&v24 + 1);
      v14 = v24;
      v16 = v25;
      sub_238826DB0(&v27, v22);
      v17 = sub_23882C97C(0, 0, 5, 0, 0, 0, 0);
      v19 = v18;
      v21 = v20;
      LOBYTE(v14) = sub_23882D4E4(v17, v18, v20, v14, v15, v16);
      sub_238810DC4(v17, v19, v21);
      sub_238826E74(&v27);
      if (v14 & 1) == 0 || ((HIBYTE(v28) ^ ((v21 & 0x100) >> 8)))
      {
        return sub_2388CF344(&v24);
      }

      sub_238814D44(&v24);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_2388CF954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_2388978D4(sub_2388D0284, v4, a1);
}

uint64_t sub_2388CF99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v80 = a5;
  v87 = a4;
  v88 = a6;
  v84 = a3;
  v85 = a2;
  v7 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v79 = &v72 - v13;
  v14 = sub_2388D2178();
  v81 = *(v14 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for GenerationSchema(0);
  v74 = *(v76 - 8);
  v18 = *(v74 + 64);
  v19 = MEMORY[0x28223BE20](v76);
  v73 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v72 - v22;
  MEMORY[0x28223BE20](v21);
  v82 = &v72 - v23;
  v24 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v78 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v72 - v28;
  *&v86 = type metadata accessor for Transcript.ResponseFormat(0);
  v83 = *(v86 - 8);
  v30 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v32 = (&v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for Transcript.Prompt(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Transcript.Entry(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D06F8(a1, v40, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v43 = *v40;
    v44 = *(v40 + 3);
    v86 = *(v40 + 8);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v45 = v87;
    *(&v72 - 4) = v84;
    *(&v72 - 3) = v45;
    *(&v72 - 2) = v85;

    v46 = sub_238897F98(sub_2388D06D4, (&v72 - 6), v44);
    swift_bridgeObjectRelease_n();
    v47 = v88;
    *v88 = v43;
    *(v47 + 1) = v86;
    v47[3] = v46;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2388D07C0(v40, v36, type metadata accessor for Transcript.Prompt);
    v42 = *(v33 + 28);
    sub_238827E14(&v36[v42], v29, &qword_27DF2FF00, &qword_2388D57E0);
    if ((*(v83 + 48))(v29, 1, v86) == 1)
    {
      sub_238827E88(v29, &qword_27DF2FF00, &qword_2388D57E0);
    }

    else
    {
      sub_2388D07C0(v29, v32, type metadata accessor for Transcript.ResponseFormat);
      v51 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
      (*(v81 + 16))(v17, v32 + *(v51 + 24), v14);
      v53 = *v32;
      v52 = v32[1];

      v54 = v82;
      v55 = v53;
      v56 = v89;
      GenerationSchema.init(schema:source:)(v17, v55, v52, v82);
      v89 = v56;
      if (v56)
      {
        sub_2388D0760(v32, type metadata accessor for Transcript.ResponseFormat);
        result = sub_2388D0760(v36, type metadata accessor for Transcript.Prompt);
        *v80 = v89;
        return result;
      }

      v80 = v51;
      v81 = v42;
      v57 = v75;
      sub_2388D06F8(v54, v75, type metadata accessor for GenerationSchema);
      v58 = v74;
      v59 = v76;
      (*(v74 + 56))(v57, 0, 1, v76);
      v60 = v79;
      (*(v87 + 24))(v57, v84);
      sub_238827E88(v57, &qword_27DF2FE20, &qword_2388D5740);
      v61 = v77;
      sub_238827E14(v60, v77, &qword_27DF2FE20, &qword_2388D5740);
      if ((*(v58 + 48))(v61, 1, v59) == 1)
      {
        sub_238827E88(v60, &qword_27DF2FE20, &qword_2388D5740);
        sub_2388D0760(v82, type metadata accessor for GenerationSchema);
        sub_2388D0760(v32, type metadata accessor for Transcript.ResponseFormat);
        v62 = 1;
        v63 = v78;
      }

      else
      {
        v64 = v59;
        v65 = v72;
        sub_2388D07C0(v61, v72, type metadata accessor for GenerationSchema);
        v66 = v73;
        sub_2388D06F8(v65, v73, type metadata accessor for GenerationSchema);
        v67 = (v66 + *(v64 + 20));
        v68 = v67[1];
        v87 = *v67;

        sub_2388C24EC();
        v84 = v70;
        v85 = v69;
        v63 = v78;
        GenerationSchema.jsonSchema()(&v78[*(v80 + 24)]);
        sub_2388D0760(v66, type metadata accessor for GenerationSchema);
        sub_2388D0760(v65, type metadata accessor for GenerationSchema);
        sub_238827E88(v60, &qword_27DF2FE20, &qword_2388D5740);
        sub_2388D0760(v82, type metadata accessor for GenerationSchema);
        sub_2388D0760(v32, type metadata accessor for Transcript.ResponseFormat);
        v62 = 0;
        *v63 = v87;
        v63[1] = v68;
        v71 = v84;
        v63[2] = v85;
        v63[3] = v71;
      }

      (*(v83 + 56))(v63, v62, 1, v86);
      sub_238856608(v63, &v36[v81]);
    }

    sub_2388D06F8(v36, v88, type metadata accessor for Transcript.Prompt);
    swift_storeEnumTagMultiPayload();
    v49 = type metadata accessor for Transcript.Prompt;
    v50 = v36;
  }

  else
  {
    sub_2388D06F8(a1, v88, type metadata accessor for Transcript.Entry);
    v49 = type metadata accessor for Transcript.Entry;
    v50 = v40;
  }

  return sub_2388D0760(v50, v49);
}

uint64_t sub_2388D02A8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_2388D0D88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = a1[1];
  v47 = *a1;
  v48 = v12;
  v13 = a1[3];
  v49 = a1[2];
  *v50 = v13;
  *&v50[16] = a1[4];
  *&v50[32] = *(a1 + 10);
  if (v13 >> 62 == 1)
  {
    v14 = *(&v47 + 1);
    v39 = v47;
    v41 = v47;
    v15 = v48;
    v51 = v15 >> 64;
    v38 = v15;
    v42 = v48;
    v43 = v49;
    v44 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    v45 = *&v50[8];
    v46 = *&v50[24];
    v16 = (*(a3 + 48))(&v41, a2, a3);
    v40[1] = 0;
    v40[0] = 0;
    GeneratedContent.init(id:text:)(v40, v16, v17, &v41);
    if (v4)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v18 = v41;
      v19 = v42;
      v34 = v42;
      v36 = BYTE1(v42);
      v37 = *(&v42 + 1);
      v35 = v43;
      v20 = sub_2388D0DC8();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();

      sub_238814698(v18, *(&v18 + 1), v19);

      v23 = sub_2388D0DB8();
      sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
      v24 = *(v10 + 72);
      v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      *(swift_allocObject() + 16) = xmmword_2388D3F70;
      sub_2388D0D78();
      sub_238815B14();
      sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
      sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
      sub_2388D2F08();
      sub_2388D0D98();
      if (v36)
      {
        v26 = 0x4000000000000100;
      }

      else
      {
        v26 = 0x4000000000000000;
      }

      v27 = sub_238819C1C(v18, *(&v18 + 1), v34, v23);
      v29 = v28;

      sub_238810DC4(v18, *(&v18 + 1), v34);

      *a4 = v39;
      *(a4 + 8) = v14;
      v31 = v51;
      *(a4 + 16) = v38;
      *(a4 + 24) = v31;
      *(a4 + 32) = v18;
      *(a4 + 48) = v26 & 0xFFFFFFFFFFFFFFF8 | v34 & 7;
      *(a4 + 56) = v37;
      *(a4 + 64) = v35;
      *(a4 + 72) = v27;
      *(a4 + 80) = v29;
    }
  }

  else
  {
    v32 = a1[3];
    *(a4 + 32) = a1[2];
    *(a4 + 48) = v32;
    *(a4 + 64) = a1[4];
    *(a4 + 80) = *(a1 + 10);
    v33 = a1[1];
    *a4 = *a1;
    *(a4 + 16) = v33;
    return sub_2388977E4(&v47, &v41);
  }

  return result;
}

uint64_t sub_2388D06F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388D0760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388D07C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388D0864@<X0>(void *a1@<X8>)
{
  sub_238810E44(&qword_27DF31B10, &qword_2388DDC78);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2388D3F70;
  *(v2 + 32) = 0x736369706F74;
  *(v2 + 40) = 0xE600000000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  v3 = sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  v4 = sub_2388D0C68();
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  v5 = type metadata accessor for AnyGenerationGuides(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v2 + 88) = sub_2388C1410(MEMORY[0x277D84F90]);
  *a1 = 0x676E6967676154;
  a1[1] = 0xE700000000000000;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  type metadata accessor for GenerationSchema.Kind(0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for GenerationSchema(0);
  v9 = (a1 + *(v8 + 20));
  *v9 = 0x676E6967676154;
  v9[1] = 0xE700000000000000;
  v10 = *(*(v8 - 8) + 56);

  return v10(a1, 0, 1, v8);
}

uint64_t sub_2388D09B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2388D0B10(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2388D0A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t sub_2388D0AE0(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);

  return v1;
}

uint64_t sub_2388D0B10(uint64_t a1, unint64_t a2)
{
  v9[0] = 0uLL;

  GeneratedContent.init(id:text:)(v9, a1, a2, v7);
  v9[0] = v7[0];
  v9[1] = v7[1];
  v10 = v8;
  sub_2388AE8F8(v9, v7);
  v4 = sub_2388CF50C(0x736369706F74, 0xE600000000000000);
  sub_238814D44(v9);
  sub_238814D44(v9);
  *&v7[0] = v4;
  sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
  sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
  v5 = sub_2388D27B8();

  return v5;
}

unint64_t sub_2388D0C68()
{
  result = qword_27DF31B18;
  if (!qword_27DF31B18)
  {
    sub_238810E8C(&qword_27DF2FBB8, &unk_2388D5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31B18);
  }

  return result;
}