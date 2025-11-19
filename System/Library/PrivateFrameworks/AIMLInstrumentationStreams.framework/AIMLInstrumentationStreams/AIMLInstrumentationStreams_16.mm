uint64_t sub_23C6DF324()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF78);
  __swift_project_value_buffer(v0, qword_27E1FCF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "VisibilityFlag_VISIBLE_FOR_SHORTCUTS";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VisibilityFlag_VISIBLE_FOR_ASSISTANT";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6DF548()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCF90);
  __swift_project_value_buffer(v0, qword_27E1FCF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AuthenticationPolicy_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AuthenticationPolicy_NONE";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN";
  *(v12 + 1) = 54;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AuthenticationPolicy_REQUIRES_AUTHENTICATION_ON_ORIGIN_AND_REMOTE";
  *(v14 + 1) = 65;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6DF7EC()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x74656D617261502ELL, 0xEA00000000007265);

  qword_27E1FCFA8 = v1;
  unk_27E1FCFB0 = v2;
  return result;
}

uint64_t sub_23C6DF8BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCFB8);
  __swift_project_value_buffer(v0, qword_27E1FCFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "key";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "valueType";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "relationships";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "sampleInvocations";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.decodeMessage<A>(decoder:)()
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

      if (result <= 3)
      {
        if (result == 1 || result == 2)
        {
          sub_23C871164();
        }

        else if (result == 3)
        {
          sub_23C871154();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            sub_23C6DFDF0();
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_20;
        }

        if (result == 6)
        {
          v3 = v0;
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
LABEL_20:
          v0 = v3;
          sub_23C871194();
          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_23C70C440();
          sub_23C871064();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6DFDF0()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0) + 40);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = v3[2];
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_23C8712C4(), !v4))
    {
      if (v3[8])
      {
        v14 = v3[7];
        result = sub_23C8712C4();
      }

      if (!v4)
      {
        sub_23C6E00E8(v3, a1, a2, a3);
        if (*(v3[4] + 16))
        {
          type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
          sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_23C8712F4();
        }

        if (*(v3[5] + 16))
        {
          type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
          sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
          sub_23C8712F4();
        }

        if (*(v3[6] + 16))
        {
          sub_23C70C440();
          sub_23C871234();
        }

        v15 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0) + 44);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6E00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  sub_23C5855B0(a1 + *(v14 + 40), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6E0350@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 44)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 4) = MEMORY[0x277D84F90];
  *(a2 + 5) = v8;
  *(a2 + 6) = v8;
  return result;
}

uint64_t sub_23C6E0444(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE820, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E04E4()
{
  sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_23C8711F4();
}

uint64_t sub_23C6E0550()
{
  sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);

  return sub_23C871204();
}

uint64_t sub_23C6E05D0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCFD0);
  __swift_project_value_buffer(v0, qword_27E1FCFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ParameterFlags_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ParameterFlags_HIDDEN";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ParameterFlags_SYNTHESIZED";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E0840()
{
  if (qword_27E1F8950 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCFA8;
  v2 = qword_27E1FCFB0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6F6974616C65522ELL, 0xED0000706968736ELL);

  qword_27E1FCFE8 = v1;
  unk_27E1FCFF0 = v2;
  return result;
}

uint64_t sub_23C6E0918()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCFF8);
  __swift_project_value_buffer(v0, qword_27E1FCFF8);
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
  *v10 = "relation";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E0B58()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0) + 20);
  type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  return sub_23C8711A4();
}

uint64_t sub_23C6E0C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC20, &unk_23C889D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC20, &unk_23C889D70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC20, &unk_23C889D70);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
}

uint64_t sub_23C6E0ECC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6E0FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE818, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E104C()
{
  sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_23C8711F4();
}

uint64_t sub_23C6E10B8()
{
  sub_23C716EF0(&qword_27E1FD8E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);

  return sub_23C871204();
}

uint64_t sub_23C6E1138()
{
  if (qword_27E1F8968 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCFE8;
  v2 = qword_27E1FCFF0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6F6974616C65522ELL, 0xE90000000000006ELL);

  qword_27E1FD010 = v1;
  *algn_27E1FD018 = v2;
  return result;
}

uint64_t sub_23C6E1208()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD020);
  __swift_project_value_buffer(v0, qword_27E1FD020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "isSome";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isNone";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "equals";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "notEquals";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lessThan";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "contains";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "doesNotContain";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            sub_23C6E2E48(v5, a1, a2, a3);
          }

          else if (result == 8)
          {
            sub_23C6E3404(v5, a1, a2, a3);
          }
        }

        else if (result == 5)
        {
          sub_23C6E22D0(v5, a1, a2, a3);
        }

        else
        {
          sub_23C6E288C(v5, a1, a2, a3);
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_23C6E1764(v5, a1, a2, a3);
        }

        else
        {
          sub_23C6E1D14(v5, a1, a2, a3);
        }
      }

      else
      {
        if (result == 1)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
        }

        sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FAC10, &qword_23C878FA8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind, v15);
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E1764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC00, &qword_23C889870);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC10, &qword_23C878FA8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEC00, &qword_23C889870);
      v35 = v43;
      sub_23C716FA0(v20, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC00, &qword_23C889870);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC00, &qword_23C889870);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC00, &qword_23C889870);
    return sub_23C585C34(v36, &qword_27E1FEC00, &qword_23C889870);
  }

  else
  {
    v39 = v44;
    sub_23C716FA0(v36, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC00, &qword_23C889870);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6E1D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC08, &qword_23C889878);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC10, &qword_23C878FA8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEC08, &qword_23C889878);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC08, &qword_23C889878);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC08, &qword_23C889878);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC08, &qword_23C889878);
    return sub_23C585C34(v36, &qword_27E1FEC08, &qword_23C889878);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC08, &qword_23C889878);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6E22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC10, &qword_23C889880);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC10, &qword_23C878FA8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E1FEC10, &qword_23C889880);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC10, &qword_23C889880);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC10, &qword_23C889880);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC10, &qword_23C889880);
    return sub_23C585C34(v36, &qword_27E1FEC10, &qword_23C889880);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC10, &qword_23C889880);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6E288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC18, &qword_23C889888);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC10, &qword_23C878FA8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E1FEC18, &qword_23C889888);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC18, &qword_23C889888);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC18, &qword_23C889888);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC18, &qword_23C889888);
    return sub_23C585C34(v36, &qword_27E1FEC18, &qword_23C889888);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC18, &qword_23C889888);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6E2E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC20, &qword_23C889890);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAC10, &qword_23C878FA8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E1FEC20, &qword_23C889890);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC20, &qword_23C889890);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC20, &qword_23C889890);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC20, &qword_23C889890);
    return sub_23C585C34(v36, &qword_27E1FEC20, &qword_23C889890);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC20, &qword_23C889890);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6E3404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v6 = *(DoesNotContain - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DoesNotContain);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC28, &qword_23C889898);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DoesNotContain;
  v30 = DoesNotContain;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E1FAC10, &qword_23C878FA8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAC10, &qword_23C878FA8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E1FEC28, &qword_23C889898);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEC28, &qword_23C889898);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEC28, &qword_23C889898);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEC28, &qword_23C889898);
    return sub_23C585C34(v36, &qword_27E1FEC28, &qword_23C889898);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEC28, &qword_23C889898);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAC10, &qword_23C878FA8);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FAC10, &qword_23C878FA8);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_23C6E4530(v3, a1, a2, a3);
      }

      else
      {
        sub_23C6E4768(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_23C6E42F8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6E40C4(v3, a1, a2, a3);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_23C6E49A0(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6E4BD8(v3, a1, a2, a3);
    }

LABEL_17:
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    result = sub_23C6E3C2C(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_18;
  }

  result = sub_23C6E3E78(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_18:
    v15 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E3C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC10, &qword_23C878FA8);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC10, &qword_23C878FA8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 6)
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

uint64_t sub_23C6E3E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAC10, &qword_23C878FA8);
  v14 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAC10, &qword_23C878FA8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
    if (EnumCaseMultiPayload == 7)
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

uint64_t sub_23C6E40C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC10, &qword_23C878FA8);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E42F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC10, &qword_23C878FA8);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC10, &qword_23C878FA8);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC10, &qword_23C878FA8);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E49A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC10, &qword_23C878FA8);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC10, &qword_23C878FA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DoesNotContain = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0);
  v10 = *(*(DoesNotContain - 8) + 64);
  MEMORY[0x28223BE20](DoesNotContain);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAC10, &qword_23C878FA8);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAC10, &qword_23C878FA8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E4ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE810, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E4F6C()
{
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_23C8711F4();
}

uint64_t sub_23C6E4FD8()
{
  sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);

  return sub_23C871204();
}

uint64_t sub_23C6E5058()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x736C617571452ELL, 0xE700000000000000);

  qword_27E1FD038 = v1;
  unk_27E1FD040 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E5310(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E53B0()
{
  sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_23C8711F4();
}

uint64_t sub_23C6E541C()
{
  sub_23C716EF0(&qword_27E1FE460, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Equals);

  return sub_23C871204();
}

uint64_t sub_23C6E5498()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x61757145746F4E2ELL, 0xEA0000000000736CLL);

  qword_27E1FD060 = v1;
  *algn_27E1FD068 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E5754(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE800, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E57F4()
{
  sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_23C8711F4();
}

uint64_t sub_23C6E5860()
{
  sub_23C716EF0(&qword_27E1FE478, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.NotEquals);

  return sub_23C871204();
}

uint64_t sub_23C6E58DC()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x726574616572472ELL, 0xEC0000006E616854);

  qword_27E1FD088 = v1;
  unk_27E1FD090 = v2;
  return result;
}

uint64_t sub_23C6E59B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD098);
  __swift_project_value_buffer(v0, qword_27E1FD098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E5C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7F8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E5D34()
{
  sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_23C8711F4();
}

uint64_t sub_23C6E5DA0()
{
  sub_23C716EF0(&qword_27E1FE490, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.GreaterThan);

  return sub_23C871204();
}

uint64_t sub_23C6E5E1C()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6168547373654C2ELL, 0xE90000000000006ELL);

  qword_27E1FD0B0 = v1;
  *algn_27E1FD0B8 = v2;
  return result;
}

uint64_t sub_23C6E5EEC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD0C0);
  __swift_project_value_buffer(v0, qword_27E1FD0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "values";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "orEqual";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E60EC()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
        sub_23C871194();
      }

      else if (result == 2)
      {
        sub_23C871084();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E6214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v5))
  {
    if (v4[8] != 1 || (result = sub_23C871244(), !v5))
    {
      v8 = &v4[*(a4(0) + 24)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6E6340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_23C5D15A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6E648C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7F0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E652C()
{
  sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_23C8711F4();
}

uint64_t sub_23C6E6598()
{
  sub_23C716EF0(&qword_27E1FE4A8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.LessThan);

  return sub_23C871204();
}

uint64_t sub_23C6E6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_23C5D15A4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6E66CC()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6E6961746E6F432ELL, 0xE900000000000073);

  qword_27E1FD0D8 = v1;
  unk_27E1FD0E0 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E6988(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7E8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E6A28()
{
  sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_23C8711F4();
}

uint64_t sub_23C6E6A94()
{
  sub_23C716EF0(&qword_27E1FE4C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.Contains);

  return sub_23C871204();
}

uint64_t sub_23C6E6B10()
{
  if (qword_27E1F8978 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD010;
  v2 = *algn_27E1FD018;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x746F4E73656F442ELL, 0xEF6E6961746E6F43);

  qword_27E1FD100 = v1;
  *algn_27E1FD108 = v2;
  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6E6E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7E0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E6ED0()
{
  sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_23C8711F4();
}

uint64_t sub_23C6E6F3C()
{
  sub_23C716EF0(&qword_27E1FE4D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation.DoesNotContain);

  return sub_23C871204();
}

uint64_t sub_23C6E6FB8()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x726F67657461432ELL, 0xE900000000000079);

  qword_27E1FD128 = v1;
  unk_27E1FD130 = v2;
  return result;
}

uint64_t sub_23C6E7088()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD138);
  __swift_project_value_buffer(v0, qword_27E1FD138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subcategoryName";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E736C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7D8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E740C()
{
  sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_23C8711F4();
}

uint64_t sub_23C6E7478()
{
  sub_23C716EF0(&qword_27E1FD8B8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Category);

  return sub_23C871204();
}

uint64_t sub_23C6E7524()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6F63496C6F6F542ELL, 0xE90000000000006ELL);

  qword_27E1FD150 = v1;
  *algn_27E1FD158 = v2;
  return result;
}

uint64_t sub_23C6E75F4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD160);
  __swift_project_value_buffer(v0, qword_27E1FD160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workflowAsset";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD948, &unk_23C889D80, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind, 0);
      }

      else if (result == 2)
      {
        sub_23C6E78CC(v5, a1, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E78CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBF8, &qword_23C889868);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD948, &unk_23C889D80);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD948, &unk_23C889D80);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEBF8, &qword_23C889868);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEBF8, &qword_23C889868);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEBF8, &qword_23C889868);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEBF8, &qword_23C889868);
    return sub_23C585C34(v36, &qword_27E1FEBF8, &qword_23C889868);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEBF8, &qword_23C889868);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD948, &unk_23C889D80);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD948, &unk_23C889D80);
  v12 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C6E81B0(v3, a1, a2, a3);
      result = sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C717008(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
      result = sub_23C6E8038(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6E8038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FD948, &unk_23C889D80);
  v6 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FD948, &unk_23C889D80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E81B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD948, &unk_23C889D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD948, &unk_23C889D80);
  v13 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD948, &unk_23C889D80);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6E84A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7D0, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E8544()
{
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_23C8711F4();
}

uint64_t sub_23C6E85B0()
{
  sub_23C716EF0(&qword_27E1FE500, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);

  return sub_23C871204();
}

uint64_t sub_23C6E8630()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD178);
  __swift_project_value_buffer(v0, qword_27E1FD178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ToolSymbolIconStyle_MULTICOLOR";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ToolSymbolIconStyle_TINTED";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E8854()
{
  if (qword_27E1F89F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD150;
  v2 = *algn_27E1FD158;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6D79536C6F6F542ELL, 0xEF6E6F63496C6F62);

  qword_27E1FD190 = v1;
  *algn_27E1FD198 = v2;
  return result;
}

uint64_t sub_23C6E892C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1A0);
  __swift_project_value_buffer(v0, qword_27E1FD1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "style";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "foreground";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "background";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        if (result == 3)
        {
LABEL_4:
          sub_23C871164();
          goto LABEL_5;
        }

        if (result == 4)
        {
          sub_23C871154();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          sub_23C70C8D4();
          sub_23C8710A4();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon.traverse<A>(visitor:)()
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
    if (*(v0 + 16) != 1 || (sub_23C70C8D4(), result = sub_23C871254(), !v1))
    {
      result = v0[3];
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_23C8712C4(), !v1))
      {
        if (v0[6])
        {
          v8 = v0[5];
          result = sub_23C8712C4();
        }

        if (!v1)
        {
          v9 = v0 + *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
          return sub_23C870F14();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6E8E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = a2 + *(a1 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6E8EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7C8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E8F68()
{
  sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_23C8711F4();
}

uint64_t sub_23C6E8FD4()
{
  sub_23C716EF0(&qword_27E1FE528, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon);

  return sub_23C871204();
}

uint64_t sub_23C6E9054()
{
  if (qword_27E1F8920 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCF20;
  v2 = *algn_27E1FCF28;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x616365727065442ELL, 0xEC0000006E6F6974);

  qword_27E1FD1B8 = v1;
  unk_27E1FD1C0 = v2;
  return result;
}

uint64_t sub_23C6E9128()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1C8);
  __swift_project_value_buffer(v0, qword_27E1FD1C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deprecationMessage";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "replacedByToolId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6E9394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_23C8712C4(), !v5))
  {
    if (v4[3])
    {
      v10 = v4[2];
      result = sub_23C8712C4();
    }

    if (!v5)
    {
      v11 = v4 + *(a4(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6E94D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6E954C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7C0, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6E95EC()
{
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_23C8711F4();
}

uint64_t sub_23C6E9658()
{
  sub_23C716EF0(&qword_27E1FE540, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);

  return sub_23C871204();
}

uint64_t sub_23C6E9720()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1E0);
  __swift_project_value_buffer(v0, qword_27E1FD1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "bundleVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoAppDefinition.decodeMessage<A>(decoder:)()
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

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_4:
          sub_23C871164();
        }
      }

      else
      {
        if (result <= 5)
        {
          goto LABEL_4;
        }

        if (result == 6)
        {
          sub_23C6E9B78();
        }

        else if (result == 7)
        {
          sub_23C70CA54();
          sub_23C8710A4();
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6E9B78()
{
  v0 = *(type metadata accessor for ToolKitProtoAppDefinition(0) + 40);
  type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAppDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v14 = *(v3 + 40);
      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v15 || (result = sub_23C8712C4(), !v4))
      {
        v16 = *(v3 + 56);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v17 || (result = sub_23C8712C4(), !v4))
        {
          v18 = *(v3 + 72);
          v19 = HIBYTE(v18) & 0xF;
          if ((v18 & 0x2000000000000000) == 0)
          {
            v19 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
          }

          if (!v19 || (result = sub_23C8712C4(), !v4))
          {
            result = sub_23C6E9DE0(v3, a1, a2, a3);
            if (!v4)
            {
              if (*(v3 + 80))
              {
                v21 = *(v3 + 80);
                sub_23C70CA54();
                sub_23C871254();
              }

              v20 = v3 + *(type metadata accessor for ToolKitProtoAppDefinition(0) + 44);
              return sub_23C870F14();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6E9DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBE0, &qword_23C889850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAppDefinition(0);
  sub_23C5855B0(a1 + *(v14 + 40), v8, &qword_27E1FEBE0, &qword_23C889850);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEBE0, &qword_23C889850);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoAppDefinition.Device);
}

uint64_t sub_23C6EA048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 44);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_23C6EA12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7B8, type metadata accessor for ToolKitProtoAppDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EA1CC()
{
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6EA238()
{
  sub_23C716EF0(&qword_27E1FE558, type metadata accessor for ToolKitProtoAppDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6EA2B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD1F8);
  __swift_project_value_buffer(v0, qword_27E1FD1F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EA524()
{
  result = MEMORY[0x23EED7100](0x6563697665442ELL, 0xE700000000000000);
  qword_27E1FD210 = 0xD000000000000015;
  *algn_27E1FD218 = 0x800000023C8AD320;
  return result;
}

uint64_t sub_23C6EA5B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD220);
  __swift_project_value_buffer(v0, qword_27E1FD220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EA7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
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
      sub_23C6EBEF0(a1, v7, a2, a3, a4);
    }

    else if (result == 2)
    {
      sub_23C6EC148();
    }
  }

  return result;
}

uint64_t sub_23C6EA9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7B0, type metadata accessor for ToolKitProtoAppDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EAA50()
{
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device);

  return sub_23C8711F4();
}

uint64_t sub_23C6EAABC()
{
  sub_23C716EF0(&qword_27E1FE580, type metadata accessor for ToolKitProtoAppDefinition.Device);

  return sub_23C871204();
}

uint64_t sub_23C6EAB58()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD238);
  __swift_project_value_buffer(v0, qword_27E1FD238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 2;
  *v4 = "name";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "containerId";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "bundleVersion";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "containerType";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "teamId";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "device";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "origin";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoContainerDefinition.decodeMessage<A>(decoder:)()
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

      if (result <= 4)
      {
        if (result != 2 && result != 3)
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

LABEL_14:
          sub_23C871154();
          goto LABEL_5;
        }

        sub_23C871164();
      }

      else
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            goto LABEL_14;
          }

          v3 = v0;
          sub_23C70CAA8();
          goto LABEL_20;
        }

        if (result == 7)
        {
          sub_23C6EAFE0();
          goto LABEL_5;
        }

        if (result == 8)
        {
          v3 = v0;
          sub_23C70CAFC();
LABEL_20:
          v0 = v3;
          sub_23C8710A4();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6EAFE0()
{
  v0 = *(type metadata accessor for ToolKitProtoContainerDefinition(0) + 40);
  type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoContainerDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_23C8712C4(), !v4))
    {
      if (*(v3 + 48))
      {
        v14 = *(v3 + 40);
        result = sub_23C8712C4();
      }

      if (!v4)
      {
        if (*(v3 + 32))
        {
          v18 = *(v3 + 32);
          sub_23C70CAA8();
          sub_23C871254();
        }

        if (*(v3 + 64))
        {
          v15 = *(v3 + 56);
          sub_23C8712C4();
        }

        sub_23C6EB244(v3, a1, a2, a3);
        if (*(v3 + 33))
        {
          v17 = *(v3 + 33);
          sub_23C70CAFC();
          sub_23C871254();
        }

        v16 = v3 + *(type metadata accessor for ToolKitProtoContainerDefinition(0) + 44);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6EB244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBD0, &unk_23C889D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  sub_23C5855B0(a1 + *(v14 + 40), v8, &qword_27E1FEBD0, &unk_23C889D90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEBD0, &unk_23C889D90);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoContainerDefinition.Device);
}

uint64_t sub_23C6EB4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v4 = *(a1 + 40);
  v5 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 44);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C6EB590(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7A8, type metadata accessor for ToolKitProtoContainerDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EB630()
{
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6EB69C()
{
  sub_23C716EF0(&qword_27E1FE598, type metadata accessor for ToolKitProtoContainerDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6EB71C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD250);
  __swift_project_value_buffer(v0, qword_27E1FD250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Origin_UNSPECIFIED";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Origin_FIRST_PARTY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Origin_THIRD_PARTY";
  *(v11 + 8) = 18;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EB988()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD268);
  __swift_project_value_buffer(v0, qword_27E1FD268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Type_APP";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Type_DAEMON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Type_EXTENSION";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Type_FRAMEWORK";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EBC30()
{
  result = MEMORY[0x23EED7100](0x6563697665442ELL, 0xE700000000000000);
  qword_27E1FD280 = 0xD00000000000001BLL;
  *algn_27E1FD288 = 0x800000023C8AD340;
  return result;
}

uint64_t sub_23C6EBCC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD290);
  __swift_project_value_buffer(v0, qword_27E1FD290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "local";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "remote";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EBEF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v24 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = sub_23C870E84();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 1, 1, v14);
  sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v5)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v23 = a2;
  sub_23C5855B0(v13, v11, &qword_27E1FEBC8, &qword_23C889840);
  v16 = (*(v15 + 48))(v11, 1, v14);
  sub_23C585C34(v11, &qword_27E1FEBC8, &qword_23C889840);
  if (v16 == 1)
  {
    return sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  }

  v17 = v23;
  if (v23[1] != 1)
  {
    sub_23C871054();
  }

  v18 = v24;
  sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  v20 = *v17;
  v21 = v17[1];
  *v17 = 0;
  v17[1] = 0;
  return v18(v20, v21);
}

uint64_t sub_23C6EC148()
{
  result = sub_23C871154();
  if (v0)
  {
  }

  return result;
}

uint64_t sub_23C6EC248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4[1];
  if (v7 != 1)
  {
    if (v7)
    {
      v9 = *v4;
      result = sub_23C8712C4();
      if (v5)
      {
        return result;
      }
    }

    else
    {
      result = sub_23C6EC30C(v4);
      if (v5)
      {
        return result;
      }
    }
  }

  v10 = v4 + *(a4(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6EC30C(uint64_t a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
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

uint64_t sub_23C6EC550(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE7A0, type metadata accessor for ToolKitProtoContainerDefinition.Device);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EC5F0()
{
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device);

  return sub_23C8711F4();
}

uint64_t sub_23C6EC65C()
{
  sub_23C716EF0(&qword_27E1FE5D0, type metadata accessor for ToolKitProtoContainerDefinition.Device);

  return sub_23C871204();
}

uint64_t sub_23C6EC74C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD2A8);
  __swift_project_value_buffer(v0, qword_27E1FD2A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericFormat";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "synonyms";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoTypeDisplayRepresentation.decodeMessage<A>(decoder:)()
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
        sub_23C871124();
        break;
      case 2:
        sub_23C871154();
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t ToolKitProtoTypeDisplayRepresentation.traverse<A>(visitor:)()
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
        sub_23C8712A4();
      }

      v6 = v0 + *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6ECB6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = 0;
  a2[4] = 0;
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6ECBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE798, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6ECC9C()
{
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);

  return sub_23C8711F4();
}

uint64_t sub_23C6ECD08()
{
  sub_23C716EF0(&qword_27E1FBB38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);

  return sub_23C871204();
}

uint64_t sub_23C6ECDA4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD2C0);
  __swift_project_value_buffer(v0, qword_27E1FD2C0);
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
  *v10 = "bundleIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6ECFA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v5, a2, a3);
    }

    else if (result == 2)
    {
      a5(v5 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6ED074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((v8 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_23C871264();
      if (v5)
      {
        return result;
      }

      goto LABEL_10;
    }

    v10 = v7;
    v11 = v7 >> 32;
  }

  if (v10 != v11)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = v4[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v4[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_23C8712C4(), !v5))
  {
    v15 = v4 + *(a4(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

double sub_23C6ED1D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6ED244(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE790, type metadata accessor for ToolKitProtoPluginModelData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6ED2E4()
{
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData);

  return sub_23C8711F4();
}

uint64_t sub_23C6ED350()
{
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData);

  return sub_23C871204();
}

uint64_t sub_23C6ED3CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
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

  v7 = *(a3 + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6ED4B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD2D8);
  __swift_project_value_buffer(v0, qword_27E1FD2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "title";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "subtitle";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "altText";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "synonyms";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "snippetPluginModel";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t ToolKitProtoDisplayRepresentation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C6EDA3C();
          break;
        case 5:
          sub_23C871124();
          break;
        case 6:
          sub_23C6EDAF0();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C871164();
          break;
        case 2:
          sub_23C6ED8D4();
          break;
        case 3:
          sub_23C6ED988();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C6ED8D4()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  return sub_23C8711A4();
}

uint64_t sub_23C6ED988()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 28);
  type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  return sub_23C8711A4();
}

uint64_t sub_23C6EDA3C()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 32);
  type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  return sub_23C8711A4();
}

uint64_t sub_23C6EDAF0()
{
  v0 = *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 36);
  type metadata accessor for ToolKitProtoPluginModelData(0);
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoDisplayRepresentation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_23C6EDCC0(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C6EDEDC(v3, a1, a2, a3);
      sub_23C6EE0F8(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        sub_23C8712A4();
      }

      sub_23C6EE314(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation(0) + 40);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6EDCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBB0, &qword_23C889830);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FEBB0, &qword_23C889830);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEBB0, &qword_23C889830);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
}

uint64_t sub_23C6EDEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBA0, &unk_23C889DA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E1FEBA0, &unk_23C889DA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEBA0, &unk_23C889DA0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
}

uint64_t sub_23C6EE0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB90, &qword_23C889818);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E1FEB90, &qword_23C889818);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEB90, &qword_23C889818);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
}

uint64_t sub_23C6EE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB80, &unk_23C889DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E1FEB80, &unk_23C889DB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FEB80, &unk_23C889DB0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoPluginModelData);
  sub_23C716EF0(&qword_27E1FE5F8, type metadata accessor for ToolKitProtoPluginModelData);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoPluginModelData);
}

uint64_t sub_23C6EE57C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[9];
  v11 = type metadata accessor for ToolKitProtoPluginModelData(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v12 = &a2[a1[10]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6EE724(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE788, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EE7C4()
{
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return sub_23C8711F4();
}

uint64_t sub_23C6EE830()
{
  sub_23C716EF0(&qword_27E1FE610, type metadata accessor for ToolKitProtoDisplayRepresentation);

  return sub_23C871204();
}

uint64_t sub_23C6EE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
    if (v6 == v6 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v9 = a4;
  result = sub_23C871264();
  if (v5)
  {
    return result;
  }

  a4 = v9;
LABEL_11:
  v11 = v4 + *(a4(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6EEAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6EEBE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE780, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6EEC80()
{
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_23C8711F4();
}

uint64_t sub_23C6EECEC()
{
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);

  return sub_23C871204();
}

uint64_t sub_23C6EED68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6EEE64()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD328);
  __swift_project_value_buffer(v0, qword_27E1FD328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6EF0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB50, &qword_23C8897E0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD9C8, &qword_23C87D758);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD9C8, &qword_23C87D758);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEB50, &qword_23C8897E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
    return sub_23C585C34(v36, &qword_27E1FEB50, &qword_23C8897E0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD9C8, &qword_23C87D758);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6EF660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB78, &qword_23C889808);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD9C8, &qword_23C87D758);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD9C8, &qword_23C87D758);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEB78, &qword_23C889808);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEB78, &qword_23C889808);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEB78, &qword_23C889808);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEB78, &qword_23C889808);
    return sub_23C585C34(v36, &qword_27E1FEB78, &qword_23C889808);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEB78, &qword_23C889808);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD9C8, &qword_23C87D758);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Subtitle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD9C8, &qword_23C87D758);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6EFFE4(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6EFDAC(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6EFDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD9C8, &qword_23C87D758);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD9C8, &qword_23C87D758);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6EFFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9C8, &qword_23C87D758);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD9C8, &qword_23C87D758);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD9C8, &qword_23C87D758);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F02D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE778, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F0378()
{
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_23C8711F4();
}

uint64_t sub_23C6F03E4()
{
  sub_23C716EF0(&qword_27E1FE640, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);

  return sub_23C871204();
}

uint64_t sub_23C6F0464()
{
  if (qword_27E1F8AA0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD318;
  v2 = qword_27E1FD320;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6369746174532ELL, 0xE700000000000000);

  qword_27E1FD340 = v1;
  *algn_27E1FD348 = v2;
  return result;
}

uint64_t sub_23C6F0654(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE770, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F06F4()
{
  sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_23C8711F4();
}

uint64_t sub_23C6F0760()
{
  sub_23C716EF0(&qword_27E1FE658, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle.Static);

  return sub_23C871204();
}

uint64_t sub_23C6F0828()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD378);
  __swift_project_value_buffer(v0, qword_27E1FD378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F0A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB50, &qword_23C8897E0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD9E0, &unk_23C889DC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD9E0, &unk_23C889DC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEB50, &qword_23C8897E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
    return sub_23C585C34(v36, &qword_27E1FEB50, &qword_23C8897E0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD9E0, &unk_23C889DC0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6F1024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB68, &qword_23C8897F8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD9E0, &unk_23C889DC0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD9E0, &unk_23C889DC0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEB68, &qword_23C8897F8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEB68, &qword_23C8897F8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEB68, &qword_23C8897F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEB68, &qword_23C8897F8);
    return sub_23C585C34(v36, &qword_27E1FEB68, &qword_23C8897F8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEB68, &qword_23C8897F8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD9E0, &unk_23C889DC0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.AltText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD9E0, &unk_23C889DC0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6F19A8(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6F1770(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F1770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD9E0, &unk_23C889DC0);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD9E0, &unk_23C889DC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD9E0, &unk_23C889DC0);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD9E0, &unk_23C889DC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F1C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE768, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F1D3C()
{
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_23C8711F4();
}

uint64_t sub_23C6F1DA8()
{
  sub_23C716EF0(&qword_27E1FE670, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);

  return sub_23C871204();
}

uint64_t sub_23C6F1E28()
{
  if (qword_27E1F8AC0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD368;
  v2 = qword_27E1FD370;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6369746174532ELL, 0xE700000000000000);

  qword_27E1FD390 = v1;
  *algn_27E1FD398 = v2;
  return result;
}

uint64_t sub_23C6F1F48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6F1FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = *v5;
  v9 = v5[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_23C8712C4(), !v6))
  {
    v12 = v5 + *(a5(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F213C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE760, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F21DC()
{
  sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_23C8711F4();
}

uint64_t sub_23C6F2248()
{
  sub_23C716EF0(&qword_27E1FE688, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText.Static);

  return sub_23C871204();
}

uint64_t sub_23C6F22E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001DLL;
  *a5 = 0x800000023C8AD3B0;
  return result;
}

uint64_t sub_23C6F2378()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD3C8);
  __swift_project_value_buffer(v0, qword_27E1FD3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lazy";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB50, &qword_23C8897E0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD9F8, &qword_23C87D760);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD9F8, &qword_23C87D760);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEB50, &qword_23C8897E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
    return sub_23C585C34(v36, &qword_27E1FEB50, &qword_23C8897E0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEB50, &qword_23C8897E0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD9F8, &qword_23C87D760);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C6F2B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB58, &qword_23C8897E8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FD9F8, &qword_23C87D760);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FD9F8, &qword_23C87D760);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEB58, &qword_23C8897E8);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEB58, &qword_23C8897E8);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEB58, &qword_23C8897E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEB58, &qword_23C8897E8);
    return sub_23C585C34(v36, &qword_27E1FEB58, &qword_23C8897E8);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEB58, &qword_23C8897E8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FD9F8, &qword_23C87D760);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E1FD9F8, &qword_23C87D760);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6F34F8(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6F32C0(v3, a1, a2, a3);
  }

  result = sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F32C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD9F8, &qword_23C87D760);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD9F8, &qword_23C87D760);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C716EF0(&qword_27E1FE628, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FD9F8, &qword_23C87D760);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FD9F8, &qword_23C87D760);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F37EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE758, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F388C()
{
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return sub_23C8711F4();
}

uint64_t sub_23C6F38F8()
{
  sub_23C716EF0(&qword_27E1FE6A0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return sub_23C871204();
}

uint64_t sub_23C6F3978()
{
  if (qword_27E1F8AE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD3B8;
  v2 = qword_27E1FD3C0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6369746174532ELL, 0xE700000000000000);

  qword_27E1FD3E0 = v1;
  *algn_27E1FD3E8 = v2;
  return result;
}

uint64_t sub_23C6F3A44()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD3F0);
  __swift_project_value_buffer(v0, qword_27E1FD3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "file";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FDA08, &unk_23C889DD0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 2);
          break;
        case 2:
          sub_23C6F3DAC(v5, a1, a2, a3);
          break;
        case 1:
          sub_23C683138(a1, v5, a2, a3, &qword_27E1FDA08, &unk_23C889DD0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 0);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6F3DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB40, &qword_23C8897D0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FDA08, &unk_23C889DD0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FDA08, &unk_23C889DD0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C716FA0(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    sub_23C716FA0(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FEB40, &qword_23C8897D0);
      v35 = v44;
      sub_23C716FA0(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_23C716FA0(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C717008(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FEB40, &qword_23C8897D0);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FEB40, &qword_23C8897D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FEB40, &qword_23C8897D0);
    return sub_23C585C34(v36, &qword_27E1FEB40, &qword_23C8897D0);
  }

  else
  {
    v39 = v43;
    sub_23C716FA0(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FEB40, &qword_23C8897D0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FDA08, &unk_23C889DD0);
    sub_23C716FA0(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FDA08, &unk_23C889DD0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_23C6F46D4(v3, a1, a2, a3);
        result = sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        result = sub_23C6F490C(v3);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      sub_23C717008(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      result = sub_23C6F4558(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C6F4558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FDA08, &unk_23C889DD0);
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FDA08, &unk_23C889DD0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v8 = *v5;
    v7 = v5[1];
    sub_23C871264();
    return sub_23C595090(v8, v7);
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F46D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FDA08, &unk_23C889DD0);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FDA08, &unk_23C889DD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_23C871304();
    return sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  }

  result = sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F490C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FDA08, &unk_23C889DD0);
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FDA08, &unk_23C889DD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C717008(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6F4AE8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6F4BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE750, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F4C54()
{
  sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_23C8711F4();
}

uint64_t sub_23C6F4CC0()
{
  sub_23C716EF0(&qword_27E1FE6B8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_23C871204();
}

uint64_t sub_23C6F4D40()
{
  if (qword_27E1F8AF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FD3E0;
  v2 = *algn_27E1FD3E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_27E1FD408 = v1;
  unk_27E1FD410 = v2;
  return result;
}

uint64_t sub_23C6F4E0C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD418);
  __swift_project_value_buffer(v0, qword_27E1FD418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tintColorData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "configurationData";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_23C8710B4();
    }

    else if (result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)()
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
    result = sub_23C6F51BC(v0);
    if (!v1)
    {
      sub_23C6F5248(v0);
      v6 = v0 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6F51BC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 16);
    sub_23C5ACFC8(v2, v1);
    sub_23C871264();
    return sub_23C5AD0AC(v2, v1);
  }

  return result;
}

uint64_t sub_23C6F5248(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 32);
    sub_23C5ACFC8(v2, v1);
    sub_23C871264();
    return sub_23C5AD0AC(v2, v1);
  }

  return result;
}

uint64_t sub_23C6F5320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = xmmword_23C879130;
  *(a2 + 32) = xmmword_23C879130;
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6F53B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE748, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F5458()
{
  sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_23C8711F4();
}

uint64_t sub_23C6F54C4()
{
  sub_23C716EF0(&qword_27E1FE6D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_23C871204();
}

uint64_t sub_23C6F5560()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD430);
  __swift_project_value_buffer(v0, qword_27E1FD430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoCoercionDefinition.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C70CB50();
        sub_23C8710A4();
      }

      else if (result == 2)
      {
        sub_23C6F5820();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6F5820()
{
  v0 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoCoercionDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (sub_23C70CB50(), result = sub_23C871254(), !v4))
  {
    result = sub_23C6F59A4(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = &v3[*(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 24)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6F59A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C6F5C0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C6F5CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE740, type metadata accessor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F5D78()
{
  sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6F5DE4()
{
  sub_23C716EF0(&qword_27E1FD518, type metadata accessor for ToolKitProtoCoercionDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6F5E64()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD448);
  __swift_project_value_buffer(v0, qword_27E1FD448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirection_IMPORT";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirection_EXPORT";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F60B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23C871344();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_23C871334();
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23C870F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_23C870F34();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23C6F6264(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE738, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F6304()
{
  sub_23C716EF0(&qword_27E1FE708, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return sub_23C8711F4();
}

uint64_t sub_23C6F6370()
{
  sub_23C716EF0(&qword_27E1FE708, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return sub_23C871204();
}

uint64_t sub_23C6F63EC()
{
  result = MEMORY[0x23EED7100](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27E1FD478 = 0xD00000000000001DLL;
  unk_27E1FD480 = 0x800000023C8AD3F0;
  return result;
}

uint64_t sub_23C6F6484(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_23C6F64E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FD488);
  __swift_project_value_buffer(v0, qword_27E1FD488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6F66E0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t ToolKitProtoToolDefinitionClosure.Version1.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C6F6884();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
        sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6F6884()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0) + 20);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoToolDefinitionClosure.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C6F6A34(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      sub_23C716EF0(&qword_27E1FAC98, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      sub_23C8712F4();
    }

    v8 = v5 + *(type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6F6A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C716FA0(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C716EF0(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C871304();
  return sub_23C717008(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_23C6F6CB4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6F6D68(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_23C6F6DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE730, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6F6E98()
{
  sub_23C716EF0(&qword_27E1FE720, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_23C8711F4();
}

uint64_t sub_23C6F6F04()
{
  sub_23C716EF0(&qword_27E1FE720, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_23C871204();
}

uint64_t sub_23C6F6F84@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23C870974();
    if (v10)
    {
      v11 = sub_23C870994();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23C870984();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23C870974();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23C870994();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23C870984();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_23C6F71B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_23C6F7344(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23C595090(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_23C6F6F84(v14, a3, a4, &v13);
  v10 = v4;
  sub_23C595090(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_23C6F7344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23C870974();
  v11 = result;
  if (result)
  {
    result = sub_23C870994();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_23C870984();
  sub_23C6F6F84(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_23C6F73FC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_23C5ACFC8(a3, a4);
          return sub_23C6F71B4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s26AIMLInstrumentationStreams41ToolKitProtoAssistantTypeSchemaDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECA0, &qword_23C889900);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD838, &unk_23C889D40);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD838, &unk_23C889D40);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD838, &unk_23C889D40);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD838, &unk_23C889D40);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FECA0, &qword_23C889900);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  v21 = _s26AIMLInstrumentationStreams45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_23C585C34(v17, &qword_27E1FD838, &unk_23C889D40);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23C6F78A8(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v57 = a4;
  v59 = a2;
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBAF8, &qword_23C87B960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = (&v50 - v11);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB00, &qword_23C87B910);
  v12 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v50 - v13;
  v14 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEC50, &qword_23C8898B0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v50 - v26;
  v53 = a3(0);
  v28 = *(v53 + 20);
  v29 = *(v24 + 56);
  v58 = a1;
  sub_23C5855B0(a1 + v28, v27, &qword_27E1FACC8, &unk_23C889C50);
  v30 = v59;
  sub_23C5855B0(v59 + v28, &v27[v29], &qword_27E1FACC8, &unk_23C889C50);
  v31 = *(v15 + 48);
  if (v31(v27, 1, v14) == 1)
  {
    if (v31(&v27[v29], 1, v14) == 1)
    {
      sub_23C585C34(v27, &qword_27E1FACC8, &unk_23C889C50);
      goto LABEL_9;
    }

LABEL_6:
    v32 = &qword_27E1FEC50;
    v33 = &qword_23C8898B0;
    v34 = v27;
LABEL_7:
    sub_23C585C34(v34, v32, v33);
    goto LABEL_18;
  }

  sub_23C5855B0(v27, v22, &qword_27E1FACC8, &unk_23C889C50);
  if (v31(&v27[v29], 1, v14) == 1)
  {
    sub_23C717008(v22, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    goto LABEL_6;
  }

  sub_23C716FA0(&v27[v29], v18, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v35 = _s26AIMLInstrumentationStreams37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v22, v18);
  sub_23C717008(v18, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C717008(v22, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C585C34(v27, &qword_27E1FACC8, &unk_23C889C50);
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v58;
  if ((v57(*v58, *v30) & 1) == 0)
  {
    goto LABEL_18;
  }

  v37 = v53;
  v38 = *(v53 + 24);
  v39 = *(v52 + 48);
  v40 = v56;
  sub_23C5855B0(v36 + v38, v56, &qword_27E1FBAF8, &qword_23C87B960);
  sub_23C5855B0(v30 + v38, v40 + v39, &qword_27E1FBAF8, &qword_23C87B960);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v40, 1, v55) != 1)
  {
    v43 = v51;
    sub_23C5855B0(v40, v51, &qword_27E1FBAF8, &qword_23C87B960);
    if (v42(v40 + v39, 1, v41) != 1)
    {
      v44 = v40 + v39;
      v45 = v50;
      sub_23C716FA0(v44, v50, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v46 = _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v43, v45);
      sub_23C717008(v45, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C717008(v43, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_23C585C34(v40, &qword_27E1FBAF8, &qword_23C87B960);
      if (v46)
      {
        goto LABEL_17;
      }

LABEL_18:
      v48 = 0;
      return v48 & 1;
    }

    sub_23C717008(v43, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_15;
  }

  if (v42(v40 + v39, 1, v41) != 1)
  {
LABEL_15:
    v32 = &qword_27E1FBB00;
    v33 = &qword_23C87B910;
    v34 = v40;
    goto LABEL_7;
  }

  sub_23C585C34(v40, &qword_27E1FBAF8, &qword_23C87B960);
LABEL_17:
  v47 = *(v37 + 28);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v48 = sub_23C871754();
  return v48 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38ToolKitProtoSampleInvocationDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23C5D25E0(*a1, *a2) & 1) == 0)
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

  if (sub_23C5D25E0(a1[1], a2[1]))
  {
    v6 = *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
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

  if (sub_23C5D25E0(a1[2], a2[2]))
  {
    v8 = *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoAssistantSchemaVersionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9E0, &unk_23C889DC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB60, &qword_23C8897F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD9E0, &unk_23C889DC0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD9E0, &unk_23C889DC0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD9E0, &unk_23C889DC0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD9E0, &unk_23C889DC0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEB60, &qword_23C8897F0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  v21 = static ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_23C585C34(v17, &qword_27E1FD9E0, &unk_23C889DC0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD9F8, &qword_23C87D760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB48, &qword_23C8897D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD9F8, &qword_23C87D760);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD9F8, &qword_23C87D760);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD9F8, &qword_23C87D760);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD9F8, &qword_23C87D760);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEB48, &qword_23C8897D8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  v21 = static ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_23C585C34(v17, &qword_27E1FD9F8, &qword_23C87D760);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FDA08, &unk_23C889DD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEB38, &qword_23C8897C8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FDA08, &unk_23C889DD0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FDA08, &unk_23C889DD0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FDA08, &unk_23C889DD0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FDA08, &unk_23C889DD0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEB38, &qword_23C8897C8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v21 = static ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_23C585C34(v17, &qword_27E1FDA08, &unk_23C889DD0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  v8 = a2[2];
  v7 = a2[3];
  if (v5 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_23C5EDBA0(a1[2], a1[3]);
      sub_23C5EDBA0(v8, v7);
      sub_23C5AD0AC(v6, v5);
      goto LABEL_11;
    }

LABEL_15:
    sub_23C5EDBA0(v6, v5);
    sub_23C5EDBA0(v8, v7);
    sub_23C5AD0AC(v6, v5);
    sub_23C5AD0AC(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_23C5EDBA0(a1[2], a1[3]);
  sub_23C5EDBA0(v8, v7);
  v9 = sub_23C6F73FC(v6, v5, v8, v7);
  sub_23C5AD0AC(v8, v7);
  sub_23C5AD0AC(v6, v5);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v6 = a1[4];
  v5 = a1[5];
  v8 = a2[4];
  v7 = a2[5];
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_23C5EDBA0(a1[4], a1[5]);
    sub_23C5EDBA0(v8, v7);
    v11 = sub_23C6F73FC(v6, v5, v8, v7);
    sub_23C5AD0AC(v8, v7);
    sub_23C5AD0AC(v6, v5);
    if (v11)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_15;
  }

  sub_23C5EDBA0(a1[4], a1[5]);
  sub_23C5EDBA0(v8, v7);
  sub_23C5AD0AC(v6, v5);
LABEL_18:
  v12 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBD0, &unk_23C889D90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBD8, &qword_23C889848);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_31;
  }

  v17 = *(a1 + 48);
  v18 = *(a2 + 48);
  if (v17)
  {
    if (!v18 || (*(a1 + 40) != *(a2 + 40) || v17 != v18) && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v18)
  {
    goto LABEL_31;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_31;
  }

  v19 = *(a1 + 64);
  v20 = *(a2 + 64);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_31:
    v28 = 0;
    return v28 & 1;
  }

  if (!v20 || (*(a1 + 56) != *(a2 + 56) || v19 != v20) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  v31 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v21 = *(v31 + 40);
  v22 = *(v13 + 48);
  sub_23C5855B0(a1 + v21, v16, &qword_27E1FEBD0, &unk_23C889D90);
  v23 = a2 + v21;
  v24 = v22;
  sub_23C5855B0(v23, &v16[v22], &qword_27E1FEBD0, &unk_23C889D90);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FEBD0, &unk_23C889D90);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FEBD0, &unk_23C889D90);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoContainerDefinition.Device);
LABEL_27:
    sub_23C585C34(v16, &qword_27E1FEBD8, &qword_23C889848);
    goto LABEL_31;
  }

  sub_23C716FA0(&v16[v24], v8, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  v26 = sub_23C708E18(v12, v8, sub_23C717558, sub_23C71755C, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_23C585C34(v16, &qword_27E1FEBD0, &unk_23C889D90);
  if ((v26 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (*(a1 + 33) != *(a2 + 33))
  {
    goto LABEL_31;
  }

  v27 = *(v31 + 44);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v28 = sub_23C871754();
  return v28 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED98, &qword_23C8899D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD6F0, &qword_23C87D748);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD6F0, &qword_23C87D748);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD6F0, &qword_23C87D748);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD6F0, &qword_23C87D748);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FED98, &qword_23C8899D0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v21 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0cdeF4KindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_23C585C34(v17, &qword_27E1FD6F0, &qword_23C87D748);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V4PairV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v38 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v40 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *(v18 + 48);
  v41 = a1;
  sub_23C5855B0(a1, &v37 - v19, &qword_27E1FAB68, &unk_23C879140);
  v42 = a2;
  sub_23C5855B0(a2, &v20[v21], &qword_27E1FAB68, &unk_23C879140);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_23C5855B0(v20, v13, &qword_27E1FAB68, &unk_23C879140);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      v24 = &v20[v21];
      v25 = v39;
      sub_23C716FA0(v24, v39, type metadata accessor for ToolKitProtoTypedValue);
      v26 = sub_23C7073C4(v13, v25, sub_23C5EDE04, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_23C5EDE08, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C717008(v25, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v20, &qword_27E1FAB68, &unk_23C879140);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v13, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v23 = v20;
LABEL_14:
    sub_23C585C34(v23, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_15;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v20, &qword_27E1FAB68, &unk_23C879140);
LABEL_8:
  v27 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v28 = *(v27 + 20);
  v29 = *(v14 + 48);
  v30 = v40;
  sub_23C5855B0(v41 + v28, v40, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(v42 + v28, v30 + v29, &qword_27E1FAB68, &unk_23C879140);
  if (v22(v30, 1, v4) == 1)
  {
    if (v22((v30 + v29), 1, v4) == 1)
    {
      sub_23C585C34(v30, &qword_27E1FAB68, &unk_23C879140);
LABEL_18:
      v36 = *(v27 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v30, v38, &qword_27E1FAB68, &unk_23C879140);
  if (v22((v30 + v29), 1, v4) == 1)
  {
    sub_23C717008(v31, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v23 = v30;
    goto LABEL_14;
  }

  v34 = v39;
  sub_23C716FA0(v30 + v29, v39, type metadata accessor for ToolKitProtoTypedValue);
  v35 = sub_23C7073C4(v31, v34, sub_23C5EDE04, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_23C5EDE08, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v34, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v31, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v30, &qword_27E1FAB68, &unk_23C879140);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoSystemTypeProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC50, &qword_23C878FD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC58, &qword_23C878FE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAC50, &qword_23C878FD8);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAC50, &qword_23C878FD8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAC50, &qword_23C878FD8);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAC50, &qword_23C878FD8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAC58, &qword_23C878FE0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  v21 = _s26AIMLInstrumentationStreams34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_23C585C34(v17, &qword_27E1FAC50, &qword_23C878FD8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoSystemTypeProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
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
      v22 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0) + 20);
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

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC68, &qword_23C878FE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAC60, &unk_23C889D20);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAC60, &unk_23C889D20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAC60, &unk_23C889D20);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoRuntimeRequirement(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAC60, &unk_23C889D20);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAC68, &qword_23C878FE8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  v21 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_23C585C34(v17, &qword_27E1FAC60, &unk_23C889D20);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v3 = *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV22AvailabilityAnnotationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECE0, &qword_23C889938);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v28 = &v59 - v27;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v61 = v26;
  v62 = v16;
  v60 = v13;
  v64 = v8;
  v29 = v25;
  v30 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v65 = v29;
  v66 = v30;
  v31 = *(v30 + 20);
  v32 = *(v29 + 48);
  v63 = a1;
  sub_23C5855B0(&a1[v31], v28, &qword_27E1FECD8, &qword_23C889930);
  v33 = &a2[v31];
  v34 = a2;
  sub_23C5855B0(v33, &v28[v32], &qword_27E1FECD8, &qword_23C889930);
  v37 = *(v5 + 48);
  v36 = v5 + 48;
  v35 = v37;
  if (v37(v28, 1, v4) == 1)
  {
    if (v35(&v28[v32], 1, v4) == 1)
    {
      sub_23C585C34(v28, &qword_27E1FECD8, &qword_23C889930);
      goto LABEL_9;
    }

LABEL_7:
    v38 = v28;
LABEL_22:
    sub_23C585C34(v38, &qword_27E1FECE0, &qword_23C889938);
    goto LABEL_23;
  }

  sub_23C5855B0(v28, v18, &qword_27E1FECD8, &qword_23C889930);
  if (v35(&v28[v32], 1, v4) == 1)
  {
    sub_23C717008(v18, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_7;
  }

  v39 = &v28[v32];
  v40 = v64;
  sub_23C716FA0(v39, v64, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v41 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v18, v40);
  sub_23C717008(v40, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C717008(v18, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C585C34(v28, &qword_27E1FECD8, &qword_23C889930);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v42 = v66[6];
  v43 = *(v65 + 48);
  v44 = v63;
  sub_23C5855B0(&v63[v42], v24, &qword_27E1FECD8, &qword_23C889930);
  sub_23C5855B0(&v34[v42], &v24[v43], &qword_27E1FECD8, &qword_23C889930);
  if (v35(v24, 1, v4) != 1)
  {
    v45 = v62;
    sub_23C5855B0(v24, v62, &qword_27E1FECD8, &qword_23C889930);
    if (v35(&v24[v43], 1, v4) != 1)
    {
      v59 = v36;
      v46 = &v24[v43];
      v47 = v64;
      sub_23C716FA0(v46, v64, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      v48 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v45, v47);
      sub_23C717008(v47, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_23C717008(v45, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_23C585C34(v24, &qword_27E1FECD8, &qword_23C889930);
      if ((v48 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    sub_23C717008(v45, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_14;
  }

  if (v35(&v24[v43], 1, v4) != 1)
  {
LABEL_14:
    v38 = v24;
    goto LABEL_22;
  }

  v59 = v36;
  sub_23C585C34(v24, &qword_27E1FECD8, &qword_23C889930);
LABEL_16:
  v49 = v66[7];
  v50 = *(v65 + 48);
  v51 = v61;
  sub_23C5855B0(&v44[v49], v61, &qword_27E1FECD8, &qword_23C889930);
  sub_23C5855B0(&v34[v49], v51 + v50, &qword_27E1FECD8, &qword_23C889930);
  if (v35(v51, 1, v4) == 1)
  {
    if (v35((v51 + v50), 1, v4) == 1)
    {
      sub_23C585C34(v51, &qword_27E1FECD8, &qword_23C889930);
LABEL_26:
      v58 = v66[8];
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v53 = sub_23C871754();
      return v53 & 1;
    }

    goto LABEL_21;
  }

  v52 = v60;
  sub_23C5855B0(v51, v60, &qword_27E1FECD8, &qword_23C889930);
  if (v35((v51 + v50), 1, v4) == 1)
  {
    sub_23C717008(v52, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
LABEL_21:
    v38 = v51;
    goto LABEL_22;
  }

  v55 = v51 + v50;
  v56 = v64;
  sub_23C716FA0(v55, v64, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v57 = _s26AIMLInstrumentationStreams34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v52, v56);
  sub_23C717008(v56, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C717008(v52, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C585C34(v51, &qword_27E1FECD8, &qword_23C889930);
  if (v57)
  {
    goto LABEL_26;
  }

LABEL_23:
  v53 = 0;
  return v53 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC0, &unk_23C889D30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC8, &qword_23C889920);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FECC0, &unk_23C889D30);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FECC0, &unk_23C889D30);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FECC0, &unk_23C889D30);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FECC0, &unk_23C889D30);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FECC8, &qword_23C889920);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  v21 = static ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_23C585C34(v17, &qword_27E1FECC0, &unk_23C889D30);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV13MobileGestaltV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRuntimeRequirementV11FeatureFlagV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_23C872014() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V9LinkQueryV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23C872014() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDB8, &qword_23C8899E8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD6C8, &unk_23C889CE0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD6C8, &unk_23C889CE0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD6C8, &unk_23C889CE0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD6C8, &unk_23C889CE0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEDB8, &qword_23C8899E8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  v21 = _s26AIMLInstrumentationStreams42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_23C585C34(v17, &qword_27E1FD6C8, &unk_23C889CE0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED68, &qword_23C8899A0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v27 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v28 = a1;
  v17 = *(v27 + 20);
  v18 = *(v13 + 56);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FED60, &qword_23C889998);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FED60, &qword_23C889998);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v11, &qword_27E1FED60, &qword_23C889998);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      sub_23C716FA0(&v16[v18], v26, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      v22 = _s26AIMLInstrumentationStreams38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v11, v21);
      sub_23C717008(v21, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_23C717008(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_23C585C34(v16, &qword_27E1FED60, &qword_23C889998);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_23C717008(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_6:
    sub_23C585C34(v16, &qword_27E1FED68, &qword_23C8899A0);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v16, &qword_27E1FED60, &qword_23C889998);
LABEL_9:
  if (*v28 == *a2 && v28[1] == a2[1] || (sub_23C872014() & 1) != 0)
  {
    v23 = *(v27 + 24);
    sub_23C870F34();
    sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v20 = sub_23C871754();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  v2 = *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoCoercionDefinitionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_23C5855B0(&v18[v20], v16, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(&v19[v20], &v16[v21], &qword_27E1FAC40, &unk_23C8791C0);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v23 = sub_23C871754();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAC40, &unk_23C8791C0);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_8;
  }

  sub_23C716FA0(&v16[v21], v8, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = sub_23C7073C4(v12, v8, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB08, &qword_23C878EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB10, &qword_23C878EE8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAB08, &qword_23C878EE0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAB08, &qword_23C878EE0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAB08, &qword_23C878EE0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAB08, &qword_23C878EE0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB10, &qword_23C878EE8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  v21 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_23C585C34(v17, &qword_27E1FAB08, &qword_23C878EE0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF0, &unk_23C889C60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF8, &qword_23C889A20);
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
  v32 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FEDF0, &unk_23C889C60);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FEDF0, &unk_23C889C60);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FEDF0, &unk_23C889C60);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E1FEDF0, &unk_23C889C60);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C717008(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v28 = &qword_27E1FEDF8;
    v29 = &qword_23C889A20;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C716FA0(v41, v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v38, v42);
  sub_23C717008(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C717008(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C585C34(v35, &qword_27E1FEDF0, &unk_23C889C60);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V8TemplateV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED90, &qword_23C8899C8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FD708, &unk_23C889D00);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FD708, &unk_23C889D00);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FD708, &unk_23C889D00);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FD708, &unk_23C889D00);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FED90, &qword_23C8899C8);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v21 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V0cdeF12TemplateKindO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_23C585C34(v17, &qword_27E1FD708, &unk_23C889D00);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV8TemplateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
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
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v11);
  v70 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED70, &qword_23C8899A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED78, &qword_23C8899B0);
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
  v80 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
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
  sub_23C5855B0(v81 + v44, v79, &qword_27E1FED70, &qword_23C8899A8);
  sub_23C5855B0(v36 + v44, v46 + v45, &qword_27E1FED70, &qword_23C8899A8);
  v47 = v78;
  v48 = *(v77 + 48);
  if (v48(v46, 1, v78) != 1)
  {
    v49 = v75;
    sub_23C5855B0(v46, v75, &qword_27E1FED70, &qword_23C8899A8);
    if (v48(v46 + v45, 1, v47) != 1)
    {
      v50 = v46 + v45;
      v51 = v70;
      sub_23C716FA0(v50, v70, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      v52 = _s26AIMLInstrumentationStreams31ToolKitProtoComparisonPredicateV0F0V8TemplateV2eeoiySbAG_AGtFZ_0(v49, v51);
      sub_23C717008(v51, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_23C717008(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_23C585C34(v46, &qword_27E1FED70, &qword_23C8899A8);
      if ((v52 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_23C717008(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
    goto LABEL_13;
  }

  if (v48(v46 + v45, 1, v47) != 1)
  {
LABEL_13:
    v38 = &qword_27E1FED78;
    v39 = &qword_23C8899B0;
    v40 = v46;
    goto LABEL_24;
  }

  sub_23C585C34(v46, &qword_27E1FED70, &qword_23C8899A8);
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

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v158 = *(valid - 8);
  v4 = *(v158 + 64);
  MEMORY[0x28223BE20](valid);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED48, &unk_23C889C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v127 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF58, &qword_23C889B40);
  v10 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v135 = &v127 - v11;
  v139 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v138 = *(v139 - 8);
  v12 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v132 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF60, &qword_23C889B48);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v127 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF68, &qword_23C889B50);
  v17 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v140 = &v127 - v18;
  v145 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v157 = *(v145 - 8);
  v19 = *(v157 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED38, &unk_23C889C80);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v142 = &v127 - v23;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF70, &qword_23C889B58);
  v24 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v146 = &v127 - v25;
  v26 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v150 = *(v26 - 8);
  v151 = v26;
  v27 = *(v150 + 64);
  MEMORY[0x28223BE20](v26);
  v143 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED30, &qword_23C889980);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v147 = &v127 - v31;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF78, &qword_23C889B60);
  v32 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v152 = &v127 - v33;
  v34 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v154 = *(v34 - 8);
  v155 = v34;
  v35 = *(v154 + 64);
  MEMORY[0x28223BE20](v34);
  v148 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF80, &unk_23C889C70);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v153 = &v127 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF88, &qword_23C889B68);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v156 = &v127 - v42;
  v43 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF90, &qword_23C889B70);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v127 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEF98, &qword_23C889B78);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v127 - v54;
  if ((sub_23C5DCCC4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_32;
  }

  v129 = v6;
  v56 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v159 = a2;
  v128 = v56;
  v57 = *(v56 + 24);
  v58 = *(v52 + 48);
  v130 = a1;
  sub_23C5855B0(a1 + v57, v55, &qword_27E1FEF90, &qword_23C889B70);
  sub_23C5855B0(v159 + v57, &v55[v58], &qword_27E1FEF90, &qword_23C889B70);
  v59 = *(v44 + 48);
  if (v59(v55, 1, v43) == 1)
  {
    if (v59(&v55[v58], 1, v43) == 1)
    {
      sub_23C585C34(v55, &qword_27E1FEF90, &qword_23C889B70);
      goto LABEL_9;
    }

LABEL_7:
    v60 = &qword_27E1FEF98;
    v61 = &qword_23C889B78;
    v62 = v55;
LABEL_31:
    sub_23C585C34(v62, v60, v61);
    goto LABEL_32;
  }

  sub_23C5855B0(v55, v51, &qword_27E1FEF90, &qword_23C889B70);
  if (v59(&v55[v58], 1, v43) == 1)
  {
    sub_23C717008(v51, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
    goto LABEL_7;
  }

  sub_23C716FA0(&v55[v58], v47, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v63 = sub_23C871754();
  sub_23C717008(v47, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C717008(v51, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_23C585C34(v55, &qword_27E1FEF90, &qword_23C889B70);
  if ((v63 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  v64 = v128;
  v65 = v128[7];
  v66 = *(v40 + 48);
  v67 = v130;
  v68 = v156;
  sub_23C5855B0(v130 + v65, v156, &qword_27E1FEF80, &unk_23C889C70);
  sub_23C5855B0(v159 + v65, v68 + v66, &qword_27E1FEF80, &unk_23C889C70);
  v69 = v155;
  v70 = *(v154 + 48);
  if (v70(v68, 1, v155) == 1)
  {
    v71 = v70(v68 + v66, 1, v69);
    v72 = v129;
    v73 = v157;
    v74 = v158;
    if (v71 == 1)
    {
      sub_23C585C34(v68, &qword_27E1FEF80, &unk_23C889C70);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v75 = v153;
  sub_23C5855B0(v68, v153, &qword_27E1FEF80, &unk_23C889C70);
  v76 = v70(v68 + v66, 1, v69);
  v72 = v129;
  v73 = v157;
  v74 = v158;
  if (v76 == 1)
  {
    sub_23C717008(v75, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
LABEL_14:
    v60 = &qword_27E1FEF88;
    v61 = &qword_23C889B68;
    v62 = v68;
    goto LABEL_31;
  }

  v77 = v68 + v66;
  v78 = v148;
  sub_23C716FA0(v77, v148, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v79 = sub_23C871754();
  sub_23C717008(v78, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C717008(v75, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_23C585C34(v68, &qword_27E1FEF80, &unk_23C889C70);
  if ((v79 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v80 = v64[8];
  v81 = *(v149 + 48);
  v82 = v152;
  sub_23C5855B0(v67 + v80, v152, &qword_27E1FED30, &qword_23C889980);
  v83 = v159 + v80;
  v84 = v82;
  sub_23C5855B0(v83, v82 + v81, &qword_27E1FED30, &qword_23C889980);
  v85 = v151;
  v86 = *(v150 + 48);
  if (v86(v82, 1, v151) == 1)
  {
    if (v86(v82 + v81, 1, v85) == 1)
    {
      sub_23C585C34(v82, &qword_27E1FED30, &qword_23C889980);
      goto LABEL_24;
    }

LABEL_21:
    v60 = &qword_27E1FEF78;
    v61 = &qword_23C889B60;
LABEL_22:
    v62 = v84;
    goto LABEL_31;
  }

  v87 = v72;
  v88 = v147;
  sub_23C5855B0(v82, v147, &qword_27E1FED30, &qword_23C889980);
  if (v86(v82 + v81, 1, v85) == 1)
  {
    sub_23C717008(v88, type metadata accessor for ToolKitProtoAllPredicate);
    goto LABEL_21;
  }

  v89 = v82 + v81;
  v90 = v143;
  sub_23C716FA0(v89, v143, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v91 = sub_23C871754();
  sub_23C717008(v90, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C717008(v88, type metadata accessor for ToolKitProtoAllPredicate);
  sub_23C585C34(v82, &qword_27E1FED30, &qword_23C889980);
  v72 = v87;
  v74 = v158;
  if ((v91 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v92 = v64[9];
  v93 = *(v144 + 48);
  v94 = v146;
  sub_23C5855B0(v67 + v92, v146, &qword_27E1FED38, &unk_23C889C80);
  v95 = v159 + v92;
  v96 = v159;
  v97 = v94;
  sub_23C5855B0(v95, v94 + v93, &qword_27E1FED38, &unk_23C889C80);
  v98 = *(v73 + 48);
  v99 = v94;
  v100 = v145;
  if (v98(v99, 1, v145) == 1)
  {
    if (v98(v97 + v93, 1, v100) == 1)
    {
      sub_23C585C34(v97, &qword_27E1FED38, &unk_23C889C80);
      goto LABEL_35;
    }

LABEL_29:
    v60 = &qword_27E1FEF70;
    v61 = &qword_23C889B58;
LABEL_30:
    v62 = v97;
    goto LABEL_31;
  }

  v101 = v100;
  v102 = v142;
  sub_23C5855B0(v97, v142, &qword_27E1FED38, &unk_23C889C80);
  if (v98(v97 + v93, 1, v101) == 1)
  {
    sub_23C717008(v102, type metadata accessor for ToolKitProtoSuggestedPredicate);
    goto LABEL_29;
  }

  v105 = v97 + v93;
  v106 = v141;
  sub_23C716FA0(v105, v141, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v107 = sub_23C871754();
  sub_23C717008(v106, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C717008(v102, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_23C585C34(v97, &qword_27E1FED38, &unk_23C889C80);
  v96 = v159;
  if ((v107 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if ((sub_23C5DCD18(v67[1], v96[1]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v108 = v64[10];
  v109 = *(v137 + 48);
  v110 = v140;
  sub_23C5855B0(v67 + v108, v140, &qword_27E1FEF60, &qword_23C889B48);
  v111 = v159 + v108;
  v84 = v110;
  sub_23C5855B0(v111, v110 + v109, &qword_27E1FEF60, &qword_23C889B48);
  v112 = *(v138 + 48);
  v113 = v139;
  if (v112(v110, 1, v139) != 1)
  {
    v114 = v136;
    sub_23C5855B0(v84, v136, &qword_27E1FEF60, &qword_23C889B48);
    if (v112(v84 + v109, 1, v113) != 1)
    {
      v115 = v84 + v109;
      v116 = v132;
      sub_23C716FA0(v115, v132, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v117 = sub_23C871754();
      sub_23C717008(v116, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_23C717008(v114, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_23C585C34(v84, &qword_27E1FEF60, &qword_23C889B48);
      if ((v117 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    sub_23C717008(v114, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
    goto LABEL_41;
  }

  if (v112(v110 + v109, 1, v113) != 1)
  {
LABEL_41:
    v60 = &qword_27E1FEF68;
    v61 = &qword_23C889B50;
    goto LABEL_22;
  }

  sub_23C585C34(v110, &qword_27E1FEF60, &qword_23C889B48);
LABEL_43:
  v118 = v64[11];
  v119 = *(v133 + 48);
  v120 = v135;
  sub_23C5855B0(v67 + v118, v135, &qword_27E1FED48, &unk_23C889C90);
  v97 = v120;
  sub_23C5855B0(v159 + v118, v120 + v119, &qword_27E1FED48, &unk_23C889C90);
  v121 = *(v74 + 48);
  v122 = valid;
  if (v121(v120, 1, valid) == 1)
  {
    if (v121(v120 + v119, 1, v122) == 1)
    {
      sub_23C585C34(v120, &qword_27E1FED48, &unk_23C889C90);
LABEL_50:
      v126 = v64[12];
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v103 = sub_23C871754();
      return v103 & 1;
    }

    goto LABEL_48;
  }

  v123 = v120;
  v124 = v131;
  sub_23C5855B0(v123, v131, &qword_27E1FED48, &unk_23C889C90);
  if (v121(v97 + v119, 1, v122) == 1)
  {
    sub_23C717008(v124, type metadata accessor for ToolKitProtoValidPredicate);
LABEL_48:
    v60 = &qword_27E1FEF58;
    v61 = &qword_23C889B40;
    goto LABEL_30;
  }

  sub_23C716FA0(v97 + v119, v72, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v125 = sub_23C871754();
  sub_23C717008(v72, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C717008(v124, type metadata accessor for ToolKitProtoValidPredicate);
  sub_23C585C34(v97, &qword_27E1FED48, &unk_23C889C90);
  if (v125)
  {
    goto LABEL_50;
  }

LABEL_32:
  v103 = 0;
  return v103 & 1;
}

uint64_t _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
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
  v51 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v25 = *(v51 + 32);
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
    goto LABEL_21;
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
    goto LABEL_21;
  }

LABEL_9:
  v33 = v55;
  if ((sub_23C5D4798(*v55, *v27) & 1) == 0 || (sub_23C5DD078(v33[1], *(v27 + 8)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v34 = v51;
  v35 = *(v51 + 36);
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

LABEL_21:
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
  if (*(v33 + 16) != *(v27 + 16) || (sub_23C5DD5FC(v33[3], *(v27 + 24)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v44 = *(v34 + 40);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v45 = sub_23C871754();
  return v45 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v45 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E1FAC40, &unk_23C8791C0);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FAC40, &unk_23C8791C0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E1FAC40, &unk_23C8791C0);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C716FA0(&v25[v26], v16, type metadata accessor for ToolKitProtoTypeInstance);
      v31 = sub_23C7073C4(v20, v16, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v16, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v25, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v20, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    v28 = &qword_27E1FAC48;
    v29 = &qword_23C878FD0;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_8:
  v32 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FAB68, &unk_23C879140);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FAB68, &unk_23C879140);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E1FAB68, &unk_23C879140);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C717008(v38, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v28 = &qword_27E1FAB70;
    v29 = &qword_23C878F28;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C716FA0(v41, v45, type metadata accessor for ToolKitProtoTypedValue);
  v43 = sub_23C7073C4(v38, v42, sub_23C5EDE04, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_23C5EDE08, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v42, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C717008(v38, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v35, &qword_27E1FAB68, &unk_23C879140);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAC40, &unk_23C8791C0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypeInstance.Deferred(0) + 20);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E1FAC40, &unk_23C8791C0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_7;
  }

  sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoTypeInstance);
  v21 = sub_23C7073C4(v12, v8, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v17, &qword_27E1FAC40, &unk_23C8791C0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD678, &unk_23C889CD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDD0, &qword_23C889A00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_23C872014() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v24 = a1;
  v25 = *(v13 + 48);
  v31[0] = v24;
  sub_23C5855B0(v24, v16, &qword_27E1FD678, &unk_23C889CD0);
  v31[1] = a2;
  sub_23C5855B0(a2, &v16[v25], &qword_27E1FD678, &unk_23C889CD0);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FD678, &unk_23C889CD0);
LABEL_19:
      v30 = *(v17 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v27 = sub_23C871754();
      return v27 & 1;
    }

    goto LABEL_15;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FD678, &unk_23C889CD0);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
LABEL_15:
    sub_23C585C34(v16, &qword_27E1FEDD0, &qword_23C889A00);
    goto LABEL_16;
  }

  sub_23C716FA0(&v16[v25], v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  v29 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV0cde5ValueI4KindO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_23C717008(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_23C585C34(v16, &qword_27E1FD678, &unk_23C889CD0);
  if (v29)
  {
    goto LABEL_19;
  }

LABEL_16:
  v27 = 0;
  return v27 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF0, &unk_23C889C60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDF8, &qword_23C889A20);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE00, &qword_23C889A28);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE08, &qword_23C889A30);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E1FEE00, &qword_23C889A28);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FEE00, &qword_23C889A28);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E1FEE00, &qword_23C889A28);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C716FA0(&v25[v26], v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      v31 = _s26AIMLInstrumentationStreams30ToolKitProtoRestrictionContextV5InSetV05ValueI0V2eeoiySbAG_AGtFZ_0(v20, v16);
      sub_23C717008(v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_23C717008(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_23C585C34(v25, &qword_27E1FEE00, &qword_23C889A28);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C717008(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
LABEL_6:
    v28 = &qword_27E1FEE08;
    v29 = &qword_23C889A30;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E1FEE00, &qword_23C889A28);
LABEL_8:
  v32 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FEDF0, &unk_23C889C60);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FEDF0, &unk_23C889C60);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FEDF0, &unk_23C889C60);
LABEL_18:
      v44 = *(v32 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v39 = sub_23C871754();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_23C5855B0(v35, v46, &qword_27E1FEDF0, &unk_23C889C60);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C717008(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v28 = &qword_27E1FEDF8;
    v29 = &qword_23C889A20;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C716FA0(v41, v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s26AIMLInstrumentationStreams26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v38, v42);
  sub_23C717008(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C717008(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_23C585C34(v35, &qword_27E1FEDF0, &unk_23C889C60);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV2IDV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
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
  if ((sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  v26 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAC40, &unk_23C8791C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
LABEL_11:
      v24 = *(v26 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAC40, &unk_23C8791C0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAC48, &qword_23C878FD0);
    goto LABEL_8;
  }

  v22 = v25;
  sub_23C716FA0(&v16[v18], v25, type metadata accessor for ToolKitProtoTypeInstance);
  v23 = sub_23C7073C4(v12, v22, sub_23C5EDE04, _s26AIMLInstrumentationStreams28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_23C5EDE08, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v22, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C717008(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23C7006F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  if ((sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = v10;
  v28 = a3(0);
  v19 = *(v28 + 20);
  v20 = *(v15 + 48);
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(a2 + v19, &v18[v20], &qword_27E1FAC30, &qword_23C878FC0);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      sub_23C585C34(v18, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_11:
      v26 = *(v28 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v18, v14, &qword_27E1FAC30, &qword_23C878FC0);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    sub_23C717008(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_7:
    sub_23C585C34(v18, &qword_27E1FAC38, &qword_23C878FC8);
    goto LABEL_8;
  }

  v24 = v27;
  sub_23C716FA0(&v18[v20], v27, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v25 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v14, v24);
  sub_23C717008(v24, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v18, &qword_27E1FAC30, &qword_23C878FC0);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_23C700A90(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC30, &qword_23C878FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC38, &qword_23C878FC8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v28 = a3(0);
  v19 = *(v28 + 20);
  v20 = *(v15 + 48);
  sub_23C5855B0(a1 + v19, v18, &qword_27E1FAC30, &qword_23C878FC0);
  sub_23C5855B0(a2 + v19, &v18[v20], &qword_27E1FAC30, &qword_23C878FC0);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      sub_23C585C34(v18, &qword_27E1FAC30, &qword_23C878FC0);
LABEL_12:
      v25 = *(v28 + 24);
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_23C5855B0(v18, v14, &qword_27E1FAC30, &qword_23C878FC0);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    sub_23C717008(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_9:
    sub_23C585C34(v18, &qword_27E1FAC38, &qword_23C878FC8);
    goto LABEL_10;
  }

  v23 = v27;
  sub_23C716FA0(&v18[v20], v27, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v24 = _s26AIMLInstrumentationStreams33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v14, v23);
  sub_23C717008(v23, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C717008(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_23C585C34(v18, &qword_27E1FAC30, &qword_23C878FC0);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE90, &unk_23C889CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v102 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEE98, &qword_23C889AA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v102 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v102 - v16, &qword_27E1FEE90, &unk_23C889CB0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FEE90, &unk_23C889CB0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23C5855B0(v17, v12, &qword_27E1FEE90, &unk_23C889CB0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_23C716FA0(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      v22 = _s26AIMLInstrumentationStreams22ToolKitProtoTypedValueV09PrimitiveG0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(v12, v8);
      sub_23C717008(v8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_23C585C34(v17, &qword_27E1FEE90, &unk_23C889CB0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C717008(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FEE98, &qword_23C889AA0);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v17, &qword_27E1FEE90, &unk_23C889CB0);
LABEL_10:
  v23 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v29 = v23;
      v30 = sub_23C872014();
      v23 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_7;
  }

  v31 = v23[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v23[7];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = v23[8];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_7;
    }
  }

  v46 = v23[9];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_7;
    }
  }

  v51 = v23[10];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 8);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_7;
    }
  }

  v56 = v23[11];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      goto LABEL_7;
    }
  }

  v61 = v23[12];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_7;
    }
  }

  v66 = v23[13];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 8);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_7;
    }
  }

  v71 = v23[14];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 8);
  if (v73)
  {
    if (!v75)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_7;
    }
  }

  v76 = v23[15];
  v77 = (a1 + v76);
  v78 = *(a1 + v76 + 8);
  v79 = (a2 + v76);
  v80 = *(a2 + v76 + 8);
  if (v78)
  {
    if (!v80)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v77 != *v79)
    {
      LOBYTE(v80) = 1;
    }

    if (v80)
    {
      goto LABEL_7;
    }
  }

  v81 = v23[16];
  v82 = (a1 + v81);
  v83 = *(a1 + v81 + 8);
  v84 = (a2 + v81);
  v85 = *(a2 + v81 + 8);
  if (v83)
  {
    if (!v85)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v82 != *v84)
    {
      LOBYTE(v85) = 1;
    }

    if (v85)
    {
      goto LABEL_7;
    }
  }

  v86 = v23[17];
  v87 = (a1 + v86);
  v88 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  v90 = *(a2 + v86 + 8);
  if (v88)
  {
    if (!v90)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v87 != *v89)
    {
      LOBYTE(v90) = 1;
    }

    if (v90)
    {
      goto LABEL_7;
    }
  }

  v91 = v23[18];
  v92 = (a1 + v91);
  v93 = *(a1 + v91 + 8);
  v94 = (a2 + v91);
  v95 = *(a2 + v91 + 8);
  if (v93)
  {
    if (!v95)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v92 != *v94)
    {
      LOBYTE(v95) = 1;
    }

    if (v95)
    {
      goto LABEL_7;
    }
  }

  v96 = v23[19];
  v97 = (a1 + v96);
  v98 = *(a1 + v96 + 8);
  v99 = (a2 + v96);
  v100 = *(a2 + v96 + 8);
  if (v98)
  {
    if (v100)
    {
LABEL_101:
      v101 = v23[20];
      sub_23C870F34();
      sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }
  }

  else
  {
    if (*v97 != *v99)
    {
      LOBYTE(v100) = 1;
    }

    if ((v100 & 1) == 0)
    {
      goto LABEL_101;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}