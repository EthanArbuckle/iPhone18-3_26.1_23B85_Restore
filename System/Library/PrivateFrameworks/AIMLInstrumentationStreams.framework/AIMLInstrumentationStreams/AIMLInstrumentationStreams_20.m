uint64_t TranscriptProtoPersonQuery.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C871084();
      }

      else if (result == 4)
      {
        v4 = v0 + *(type metadata accessor for TranscriptProtoPersonQuery(0) + 28);
LABEL_12:
        sub_23C871154();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_12;
      }

      if (result == 2)
      {
        sub_23C7737EC();
      }
    }
  }
}

uint64_t sub_23C7737EC()
{
  v0 = *(type metadata accessor for TranscriptProtoPersonQuery(0) + 24);
  type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoPersonQuery.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = *(v3 + 8);
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    sub_23C773998(v3, v7, a2, a3);
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    sub_23C7ED9C0(v3, v7, a2, a3, type metadata accessor for TranscriptProtoPersonQuery);
    v9 = v3 + *(type metadata accessor for TranscriptProtoPersonQuery(0) + 32);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C773998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CB8, &unk_23C8A11F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoPersonQuery(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E203CB8, &unk_23C8A11F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203CB8, &unk_23C8A11F0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoPersonQuery.Handle);
}

uint64_t sub_23C773C00@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C773CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203590, type metadata accessor for TranscriptProtoPersonQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C773D78()
{
  sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C773DE4()
{
  sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery);

  return sub_23C871204();
}

uint64_t sub_23C773E64()
{
  result = MEMORY[0x23EED7100](0x656C646E61482ELL, 0xE700000000000000);
  qword_27E2004B0 = 0xD000000000000016;
  *algn_27E2004B8 = 0x800000023C8AFE10;
  return result;
}

uint64_t sub_23C773EF8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2004C0);
  __swift_project_value_buffer(v0, qword_27E2004C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
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
  *v10 = "label";
  *(v10 + 1) = 5;
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

uint64_t TranscriptProtoPersonQuery.Handle.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        sub_23C871154();
      }

      else if (result == 1)
      {
        sub_23C831458();
        sub_23C871094();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

_BYTE *TranscriptProtoPersonQuery.Handle.traverse<A>(visitor:)()
{
  result = sub_23C7742C0(v0);
  if (!v1)
  {
    if (*(v0 + 16))
    {
      v3 = *(v0 + 8);
      sub_23C8712C4();
    }

    if (*(v0 + 32))
    {
      v4 = *(v0 + 24);
      sub_23C8712C4();
    }

    v5 = v0 + *(type metadata accessor for TranscriptProtoPersonQuery.Handle(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

_BYTE *sub_23C7742C0(_BYTE *result)
{
  if (*result != 3)
  {
    sub_23C831458();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C774384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v2 = a2 + *(a1 + 28);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C774410(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203588, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7744B0()
{
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return sub_23C8711F4();
}

uint64_t sub_23C77451C()
{
  sub_23C8314AC(&qword_27E202198, type metadata accessor for TranscriptProtoPersonQuery.Handle);

  return sub_23C871204();
}

uint64_t sub_23C77459C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2004D8);
  __swift_project_value_buffer(v0, qword_27E2004D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "phone";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "email";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "facetime";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C774814()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2004F0);
  __swift_project_value_buffer(v0, qword_27E2004F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "searchQuery";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetEntities";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C774A5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_23C871154();
    }

    else if (result == 2)
    {
      a4(0);
      sub_23C8314AC(a5, a6);
      sub_23C871194();
    }
  }

  return result;
}

uint64_t TranscriptProtoPhotosCandidates.traverse<A>(visitor:)()
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
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8712F4();
    }

    v4 = v0 + *(type metadata accessor for TranscriptProtoPhotosCandidates(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C774D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203580, type metadata accessor for TranscriptProtoPhotosCandidates);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C774DD8()
{
  sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates);

  return sub_23C8711F4();
}

uint64_t sub_23C774E44()
{
  sub_23C8314AC(&qword_27E2021C0, type metadata accessor for TranscriptProtoPhotosCandidates);

  return sub_23C871204();
}

uint64_t sub_23C774F20()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200508);
  __swift_project_value_buffer(v0, qword_27E200508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 4;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "parameterId";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "tool";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "actionClass";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionParameterContext.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 4)
      {
        if (result == 5)
        {
          sub_23C775350();
        }

        else if (result == 6)
        {
          sub_23C821ADC();
          sub_23C8710A4();
        }
      }

      else if (result == 3)
      {
        sub_23C871164();
      }

      else if (result == 4)
      {
        sub_23C77529C();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C77529C()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C775350()
{
  v0 = *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 28);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionParameterContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_23C775510(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C77572C(v3, a1, a2, a3);
      if (*(v3 + 16))
      {
        v13 = *(v3 + 16);
        sub_23C821ADC();
        sub_23C871254();
      }

      v12 = v3 + *(type metadata accessor for TranscriptProtoActionParameterContext(0) + 32);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C775510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionParameterContext(0);
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

uint64_t sub_23C77572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_23C775994@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a2 + a1[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C775AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203578, type metadata accessor for TranscriptProtoActionParameterContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C775B4C()
{
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext);

  return sub_23C8711F4();
}

uint64_t sub_23C775BB8()
{
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext);

  return sub_23C871204();
}

uint64_t sub_23C775C54()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200520);
  __swift_project_value_buffer(v0, qword_27E200520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
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
  *v10 = "code";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C775E6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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
      sub_23C871164();
    }

    else if (result == 2)
    {
      a4(v4 + 16, a2, a3);
    }
  }

  return result;
}

uint64_t TranscriptProtoIntelligenceFlowError.traverse<A>(visitor:)()
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
    if (!v0[2] || (result = sub_23C871294(), !v1))
    {
      v6 = v0 + *(type metadata accessor for TranscriptProtoIntelligenceFlowError(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static TranscriptProtoIntelligenceFlowError.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoIntelligenceFlowError(0) + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7760DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = a3 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t sub_23C776164(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203570, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C776204()
{
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return sub_23C8711F4();
}

uint64_t sub_23C776270()
{
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);

  return sub_23C871204();
}

uint64_t sub_23C7762EC(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7763D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200538);
  __swift_project_value_buffer(v0, qword_27E200538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sessionCoordinatorError";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plannerError";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "executorError";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7766A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v14, &qword_27E201680, &qword_23C88DBC8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201680, &qword_23C88DBC8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v36, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C776C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C98, &qword_23C8A0E88);
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
  sub_23C5855B0(a1, v14, &qword_27E201680, &qword_23C88DBC8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201680, &qword_23C88DBC8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203C98, &qword_23C8A0E88);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSessionCoordinatorError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203C98, &qword_23C8A0E88);
  }

  sub_23C5855B0(v28, v36, &qword_27E203C98, &qword_23C8A0E88);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203C98, &qword_23C8A0E88);
    return sub_23C585C34(v36, &qword_27E203C98, &qword_23C8A0E88);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203C98, &qword_23C8A0E88);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C777214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPlannerError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CA0, &qword_23C8A0E90);
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
  sub_23C5855B0(a1, v14, &qword_27E201680, &qword_23C88DBC8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201680, &qword_23C88DBC8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203CA0, &qword_23C8A0E90);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPlannerError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPlannerError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203CA0, &qword_23C8A0E90);
  }

  sub_23C5855B0(v28, v36, &qword_27E203CA0, &qword_23C8A0E90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203CA0, &qword_23C8A0E90);
    return sub_23C585C34(v36, &qword_27E203CA0, &qword_23C8A0E90);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPlannerError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203CA0, &qword_23C8A0E90);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPlannerError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7777D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExecutorError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CA8, &qword_23C8A0E98);
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
  sub_23C5855B0(a1, v14, &qword_27E201680, &qword_23C88DBC8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201680, &qword_23C88DBC8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203CA8, &qword_23C8A0E98);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoExecutorError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoExecutorError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSessionErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203CA8, &qword_23C8A0E98);
  }

  sub_23C5855B0(v28, v36, &qword_27E203CA8, &qword_23C8A0E98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203CA8, &qword_23C8A0E98);
    return sub_23C585C34(v36, &qword_27E203CA8, &qword_23C8A0E98);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoExecutorError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203CA8, &qword_23C8A0E98);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201680, &qword_23C88DBC8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoExecutorError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSessionError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201680, &qword_23C88DBC8);
  v12 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C7783CC(v3, a1, a2, a3);
    }

    else
    {
      sub_23C778604(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C778194(v3, a1, a2, a3);
  }

  else
  {
    sub_23C777F60(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoSessionError(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C777F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201680, &qword_23C88DBC8);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C778194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201680, &qword_23C88DBC8);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7783CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlannerError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201680, &qword_23C88DBC8);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPlannerError);
    sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPlannerError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C778604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201680, &qword_23C88DBC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExecutorError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201680, &qword_23C88DBC8);
  v13 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201680, &qword_23C88DBC8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoExecutorError);
    sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExecutorError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7788EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203568, type metadata accessor for TranscriptProtoSessionError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77898C()
{
  sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError);

  return sub_23C8711F4();
}

uint64_t sub_23C7789F8()
{
  sub_23C8314AC(&qword_27E202208, type metadata accessor for TranscriptProtoSessionError);

  return sub_23C871204();
}

uint64_t sub_23C778A94()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200550);
  __swift_project_value_buffer(v0, qword_27E200550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToWriteTranscript";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "failedToConvertClientEvent";
  *(v11 + 8) = 26;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSessionCoordinatorError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C7798F0(v5, a1, a2, a3);
        break;
      case 2:
        sub_23C779334(v5, a1, a2, a3);
        break;
      case 1:
        sub_23C778D84(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_23C778D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v14, &qword_27E201690, &unk_23C8A1200);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201690, &unk_23C8A1200);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v36, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201690, &unk_23C8A1200);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C779334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v14, &qword_27E201690, &unk_23C8A1200);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201690, &unk_23C8A1200);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v36, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201690, &unk_23C8A1200);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7798F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
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
  sub_23C5855B0(a1, v14, &qword_27E201690, &unk_23C8A1200);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201690, &unk_23C8A1200);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v36, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201690, &unk_23C8A1200);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSessionCoordinatorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201690, &unk_23C8A1200);
  v12 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C77A290(v3, a1, a2, a3);
    }

    else
    {
      sub_23C77A4C8(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C77A05C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  if (!v4)
  {
LABEL_8:
    v15 = v3 + *(type metadata accessor for TranscriptProtoSessionCoordinatorError(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C77A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201690, &unk_23C8A1200);
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201690, &unk_23C8A1200);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77A290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201690, &unk_23C8A1200);
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201690, &unk_23C8A1200);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77A4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201690, &unk_23C8A1200);
  v13 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201690, &unk_23C8A1200);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77A7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203560, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77A850()
{
  sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return sub_23C8711F4();
}

uint64_t sub_23C77A8BC()
{
  sub_23C8314AC(&qword_27E202220, type metadata accessor for TranscriptProtoSessionCoordinatorError);

  return sub_23C871204();
}

uint64_t sub_23C77A958()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200568);
  __swift_project_value_buffer(v0, qword_27E200568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToExecute";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C77AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v48 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v42 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v36 - v27;
  v43 = *(v6 + 56);
  v44 = v6 + 56;
  v43(&v36 - v27, 1, 1, v5);
  v39 = a1;
  sub_23C5855B0(a1, v14, &qword_27E2016A0, &qword_23C88DBD0);
  v37 = v16;
  v38 = v15;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_23C585C34(v14, &qword_27E2016A0, &qword_23C88DBD0);
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    if ((*(v6 + 48))(v20, 1, v5) == 1)
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExecutorErrorEnum);
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
      v30 = v41;
      sub_23C83155C(v20, v41, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v30, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v43(v28, 0, 1, v5);
    }
  }

  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v31 = v45;
  sub_23C8711A4();
  if (v31)
  {
    return sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
  }

  v33 = v42;
  sub_23C5855B0(v28, v42, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v6 + 48))(v33, 1, v5) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v33, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v34 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    v35 = v39;
    sub_23C585C34(v39, &qword_27E2016A0, &qword_23C88DBD0);
    sub_23C83155C(v34, v35, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    v43(v35, 0, 1, v5);
    return (*(v37 + 56))(v35, 0, 1, v38);
  }
}

uint64_t sub_23C77B144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E2016A0, &qword_23C88DBD0);
  v21 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E2016A0, &qword_23C88DBD0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E2016A0, &qword_23C88DBD0);
  v26 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t TranscriptProtoExecutorError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016A0, &qword_23C88DBD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E2016A0, &qword_23C88DBD0);
  v12 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    v13 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      result = sub_23C77C9B4(v3, a1, a2, a3, &qword_27E2016A0, &qword_23C88DBD0, type metadata accessor for TranscriptProtoExecutorErrorEnum, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C77C75C(v3, a1, a2, a3, &qword_27E2016A0, &qword_23C88DBD0, type metadata accessor for TranscriptProtoExecutorErrorEnum, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for TranscriptProtoExecutorError(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C77B788(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203558, type metadata accessor for TranscriptProtoExecutorError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77B828()
{
  sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError);

  return sub_23C8711F4();
}

uint64_t sub_23C77B894()
{
  sub_23C8314AC(&qword_27E202238, type metadata accessor for TranscriptProtoExecutorError);

  return sub_23C871204();
}

uint64_t sub_23C77B930()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200580);
  __swift_project_value_buffer(v0, qword_27E200580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "other";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "failedToPlan";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C77BB5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C77BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v48 = a2;
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v42 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v36 - v27;
  v43 = *(v6 + 56);
  v44 = v6 + 56;
  v43(&v36 - v27, 1, 1, v5);
  v39 = a1;
  sub_23C5855B0(a1, v14, &qword_27E2016B0, &unk_23C8A1210);
  v37 = v16;
  v38 = v15;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_23C585C34(v14, &qword_27E2016B0, &unk_23C8A1210);
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    if ((*(v6 + 48))(v20, 1, v5) == 1)
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoPlannerErrorEnum);
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
      v30 = v41;
      sub_23C83155C(v20, v41, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C83155C(v30, v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v43(v28, 0, 1, v5);
    }
  }

  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v31 = v45;
  sub_23C8711A4();
  if (v31)
  {
    return sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
  }

  v33 = v42;
  sub_23C5855B0(v28, v42, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v6 + 48))(v33, 1, v5) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    return sub_23C585C34(v33, &qword_27E203B08, &qword_23C8A0D28);
  }

  else
  {
    v34 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B08, &qword_23C8A0D28);
    v35 = v39;
    sub_23C585C34(v39, &qword_27E2016B0, &unk_23C8A1210);
    sub_23C83155C(v34, v35, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    v43(v35, 0, 1, v5);
    return (*(v37 + 56))(v35, 0, 1, v38);
  }
}

uint64_t sub_23C77C1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E2016B0, &unk_23C8A1210);
  v21 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E2016B0, &unk_23C8A1210);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E2016B0, &unk_23C8A1210);
  v26 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t TranscriptProtoPlannerError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016B0, &unk_23C8A1210);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E2016B0, &unk_23C8A1210);
  v12 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    v13 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      result = sub_23C77C9B4(v3, a1, a2, a3, &qword_27E2016B0, &unk_23C8A1210, type metadata accessor for TranscriptProtoPlannerErrorEnum, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C77C75C(v3, a1, a2, a3, &qword_27E2016B0, &unk_23C8A1210, type metadata accessor for TranscriptProtoPlannerErrorEnum, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for TranscriptProtoPlannerError(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C77C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v24 = a8;
  v25 = a3;
  v26 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v15, a5, a6);
  v21 = a7(0);
  if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
  {
    sub_23C585C34(v15, a5, a6);
    __break(1u);
  }

  else if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    sub_23C83155C(v15, v20, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
    sub_23C871304();
    return sub_23C8315C4(v20, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  }

  result = sub_23C8315C4(v15, v24);
  __break(1u);
  return result;
}

uint64_t sub_23C77C9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v26[2] = a3;
  v26[5] = a4;
  v26[1] = a2;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v26 - v20;
  sub_23C5855B0(a1, v26 - v20, a5, a6);
  v22 = a7(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    result = sub_23C585C34(v21, a5, a6);
  }

  else
  {
    v23 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
    v24 = (*(*(v23 - 8) + 48))(v21, 1, v23);
    result = sub_23C8315C4(v21, a8);
    if (v24 == 1)
    {
      sub_23C870E74();
      sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
      sub_23C871254();
      return (*(v14 + 8))(v17, v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C77CCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203550, type metadata accessor for TranscriptProtoPlannerError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77CD64()
{
  sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError);

  return sub_23C8711F4();
}

uint64_t sub_23C77CDD0()
{
  sub_23C8314AC(&qword_27E202250, type metadata accessor for TranscriptProtoPlannerError);

  return sub_23C871204();
}

uint64_t sub_23C77CE6C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200598);
  __swift_project_value_buffer(v0, qword_27E200598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "unsupported";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "appRequirement";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "permissionRequirement";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "systemRequirement";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          sub_23C77D7B4(v5, a1, a2, a3);
        }

        else if (result == 5)
        {
          sub_23C77DD70(v5, a1, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_23C745DD8(a1, v5, a2, a3, &qword_27E2016C0, &qword_23C88DBD8, type metadata accessor for TranscriptProtoActionRequirementEnum, 3);
      }

      else if (result == 3)
      {
        sub_23C77D204(v5, a1, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C77D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C60, &qword_23C8A0E50);
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
  sub_23C5855B0(a1, v14, &qword_27E2016C0, &qword_23C88DBD8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2016C0, &qword_23C88DBD8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203C60, &qword_23C8A0E50);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoAppRequirement);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoAppRequirement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203C60, &qword_23C8A0E50);
  }

  sub_23C5855B0(v28, v36, &qword_27E203C60, &qword_23C8A0E50);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203C60, &qword_23C8A0E50);
    return sub_23C585C34(v36, &qword_27E203C60, &qword_23C8A0E50);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoAppRequirement);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203C60, &qword_23C8A0E50);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2016C0, &qword_23C88DBD8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoAppRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C77D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C68, &qword_23C8A0E58);
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
  sub_23C5855B0(a1, v14, &qword_27E2016C0, &qword_23C88DBD8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2016C0, &qword_23C88DBD8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203C68, &qword_23C8A0E58);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPermissionRequirement);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPermissionRequirement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203C68, &qword_23C8A0E58);
  }

  sub_23C5855B0(v28, v36, &qword_27E203C68, &qword_23C8A0E58);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203C68, &qword_23C8A0E58);
    return sub_23C585C34(v36, &qword_27E203C68, &qword_23C8A0E58);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPermissionRequirement);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203C68, &qword_23C8A0E58);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2016C0, &qword_23C88DBD8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPermissionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C77DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C70, &qword_23C8A0E60);
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
  sub_23C5855B0(a1, v14, &qword_27E2016C0, &qword_23C88DBD8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2016C0, &qword_23C88DBD8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoActionRequirementEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203C70, &qword_23C8A0E60);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemRequirementMessage);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionRequirementEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203C70, &qword_23C8A0E60);
  }

  sub_23C5855B0(v28, v36, &qword_27E203C70, &qword_23C8A0E60);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203C70, &qword_23C8A0E60);
    return sub_23C585C34(v36, &qword_27E203C70, &qword_23C8A0E60);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203C70, &qword_23C8A0E60);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2016C0, &qword_23C88DBD8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoActionRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E2016C0, &qword_23C88DBD8);
  v12 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_23C77E504(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_23C77EBBC(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_23C77E984(v3, a1, a2, a3);
    }

    else
    {
      sub_23C77E750(v3, a1, a2, a3);
    }

    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  v15 = v3 + *(type metadata accessor for TranscriptProtoActionRequirement(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C77E504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E2016C0, &qword_23C88DBD8);
  v14 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E2016C0, &qword_23C88DBD8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (EnumCaseMultiPayload == 3)
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

uint64_t sub_23C77E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2016C0, &qword_23C88DBD8);
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2016C0, &qword_23C88DBD8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoAppRequirement);
    sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoAppRequirement);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77E984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2016C0, &qword_23C88DBD8);
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2016C0, &qword_23C88DBD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPermissionRequirement);
    sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPermissionRequirement);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77EBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016C0, &qword_23C88DBD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2016C0, &qword_23C88DBD8);
  v13 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2016C0, &qword_23C88DBD8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemRequirementMessage);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C77EEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203548, type metadata accessor for TranscriptProtoActionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C77EF44()
{
  sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C77EFB0()
{
  sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement);

  return sub_23C871204();
}

uint64_t sub_23C77F04C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2005B0);
  __swift_project_value_buffer(v0, qword_27E2005B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "deviceUnlockRequired";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appLaunchRequired";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "carPlayIncompatible";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "carBluetoothIncompatible";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "protectedAppApprovalRequired";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "userAuthenticationRequired";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemRequirementMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 5;
LABEL_5:
            sub_23C745DD8(v11, v12, v13, v14, &qword_27E2016D0, &unk_23C8A1220, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, v15);
            break;
          case 5:
            sub_23C77F4F4(v5, a1, a2, a3);
            break;
          case 7:
            sub_23C77FAA4(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 2;
            goto LABEL_5;
          case 2:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 3;
            goto LABEL_5;
          case 3:
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 4;
            goto LABEL_5;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C77F4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C48, &qword_23C8A0E38);
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
  sub_23C5855B0(a1, v14, &qword_27E2016D0, &unk_23C8A1220);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2016D0, &unk_23C8A1220);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203C48, &qword_23C8A0E38);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203C48, &qword_23C8A0E38);
  }

  sub_23C5855B0(v28, v36, &qword_27E203C48, &qword_23C8A0E38);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203C48, &qword_23C8A0E38);
    return sub_23C585C34(v36, &qword_27E203C48, &qword_23C8A0E38);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203C48, &qword_23C8A0E38);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2016D0, &unk_23C8A1220);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C77FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C50, &qword_23C8A0E40);
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
  sub_23C5855B0(a1, v14, &qword_27E2016D0, &unk_23C8A1220);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2016D0, &unk_23C8A1220);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203C50, &qword_23C8A0E40);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203C50, &qword_23C8A0E40);
  }

  sub_23C5855B0(v28, v36, &qword_27E203C50, &qword_23C8A0E40);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203C50, &qword_23C8A0E40);
    return sub_23C585C34(v36, &qword_27E203C50, &qword_23C8A0E40);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203C50, &qword_23C8A0E40);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2016D0, &unk_23C8A1220);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSystemRequirementMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E2016D0, &unk_23C8A1220);
  v12 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        result = sub_23C7B50D0(v3, a1, a2, a3, &qword_27E2016D0, &unk_23C8A1220, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
        if (v4)
        {
          return result;
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        result = sub_23C7802FC(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_23C780548(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          result = sub_23C7B4E9C(v3, a1, a2, a3, &qword_27E2016D0, &unk_23C8A1220, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
          if (v4)
          {
            return result;
          }

          goto LABEL_18;
        }

        sub_23C7809C8(v3, a1, a2, a3);
      }

      else
      {
        sub_23C780794(v3, a1, a2, a3);
      }

      result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      if (v4)
      {
        return result;
      }
    }
  }

LABEL_18:
  v15 = v3 + *(type metadata accessor for TranscriptProtoSystemRequirementMessage(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C7802FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E2016D0, &unk_23C8A1220);
  v14 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E2016D0, &unk_23C8A1220);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 4)
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

uint64_t sub_23C780548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E2016D0, &unk_23C8A1220);
  v14 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E2016D0, &unk_23C8A1220);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (EnumCaseMultiPayload == 5)
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

uint64_t sub_23C780794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2016D0, &unk_23C8A1220);
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2016D0, &unk_23C8A1220);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7809C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2016D0, &unk_23C8A1220);
  v13 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2016D0, &unk_23C8A1220);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C780CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203540, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C780D50()
{
  sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return sub_23C8711F4();
}

uint64_t sub_23C780DBC()
{
  sub_23C8314AC(&qword_27E202280, type metadata accessor for TranscriptProtoSystemRequirementMessage);

  return sub_23C871204();
}

uint64_t sub_23C780F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203538, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C780FF8()
{
  sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C781064()
{
  sub_23C8314AC(&qword_27E202298, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);

  return sub_23C871204();
}

uint64_t sub_23C7811D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C781260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C30, &qword_23C8A0E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203C30, &qword_23C8A0E20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203C30, &qword_23C8A0E20);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C8314AC(&qword_27E2022C8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
}

uint64_t sub_23C781520(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203530, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7815C0()
{
  sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C78162C()
{
  sub_23C8314AC(&qword_27E2022B0, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);

  return sub_23C871204();
}

uint64_t sub_23C7816C8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2005F8);
  __swift_project_value_buffer(v0, qword_27E2005F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "alternativeAuthenticationPermitted";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originDeviceAuthenticationRequired";
  *(v10 + 1) = 34;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_23C781958(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_23C781958(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_23C781958(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
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
  if (*v21 != 2)
  {
    sub_23C871054();
  }

  v18 = v22;
  result = sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  *v17 = v18;
  return result;
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 == 2)
  {
    goto LABEL_2;
  }

  if (v2)
  {
    result = sub_23C781D90(v0);
    if (!v1)
    {
LABEL_2:
      v3 = &v0[*(type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0) + 20)];
      return sub_23C870F14();
    }
  }

  else
  {
    result = sub_23C781C3C(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_23C781C3C(unsigned __int8 *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 == 2 || (v8 & 1) != 0)
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

uint64_t sub_23C781D90(unsigned __int8 *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (v8 == 2 || (v8 & 1) == 0)
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

uint64_t sub_23C781F30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 2;
  v2 = &a2[*(a1 + 20)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C781FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203528, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C782044()
{
  sub_23C8314AC(&qword_27E2022C8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_23C8711F4();
}

uint64_t sub_23C7820B0()
{
  sub_23C8314AC(&qword_27E2022C8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);

  return sub_23C871204();
}

uint64_t sub_23C78214C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200610);
  __swift_project_value_buffer(v0, qword_27E200610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "signInRequired";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "accountSetupRequired";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "userConfirmationRequired";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoAppRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v15 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 2;
LABEL_3:
        sub_23C78243C(v9, v10, v11, v12, v13);
        break;
      case 2:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 1;
        goto LABEL_3;
      case 1:
        v9 = a1;
        v10 = v5;
        v11 = a2;
        v12 = a3;
        v13 = 0;
        goto LABEL_3;
    }
  }
}

uint64_t sub_23C78243C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
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
  if (*v21 != 3)
  {
    sub_23C871054();
  }

  v18 = v22;
  result = sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  *v17 = v18;
  return result;
}

uint64_t TranscriptProtoAppRequirement.traverse<A>(visitor:)()
{
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {
      goto LABEL_7;
    }

    result = sub_23C7829DC(v0);
    if (!v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!*v0)
    {
      result = sub_23C782740(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_7;
    }

    result = sub_23C78288C(v0);
    if (!v1)
    {
LABEL_7:
      v3 = &v0[*(type metadata accessor for TranscriptProtoAppRequirement(0) + 20)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C782740(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
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

uint64_t sub_23C78288C(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
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

uint64_t sub_23C7829DC(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
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

uint64_t sub_23C782B78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 3;
  v2 = &a2[*(a1 + 20)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C782BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203520, type metadata accessor for TranscriptProtoAppRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C782C8C()
{
  sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C782CF8()
{
  sub_23C8314AC(&qword_27E2022E0, type metadata accessor for TranscriptProtoAppRequirement);

  return sub_23C871204();
}

uint64_t sub_23C782D94()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200628);
  __swift_project_value_buffer(v0, qword_27E200628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C87D6F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriPermissionRequired";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shortcutsPermissionRequired";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "preciseLocationPermissionRequired";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locationPermissionRequired";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "wifiPermissionRequired";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "bluetoothPermissionRequired";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "photosPermissionRequired";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "contactsPermissionRequired";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoPermissionRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 6;
          }

          else
          {
            if (result != 8)
            {
              goto LABEL_21;
            }

            v11 = a1;
            v12 = v5;
            v13 = a2;
            v14 = a3;
            v15 = 7;
          }
        }

        else if (result == 5)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
        }

        else
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
        }

        else
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
        }
      }

      else if (result == 1)
      {
        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 0;
      }

      else
      {
        if (result != 2)
        {
          goto LABEL_21;
        }

        v11 = a1;
        v12 = v5;
        v13 = a2;
        v14 = a3;
        v15 = 1;
      }

      sub_23C78327C(v11, v12, v13, v14, v15);
LABEL_21:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C78327C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, int a5)
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
  if (*v21 != 8)
  {
    sub_23C871054();
  }

  v18 = v22;
  result = sub_23C585C34(v13, &qword_27E1FEBC8, &qword_23C889840);
  *v17 = v18;
  return result;
}

uint64_t TranscriptProtoPermissionRequirement.traverse<A>(visitor:)()
{
  v2 = *v0;
  if (v2 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v2 == 2)
      {
        result = sub_23C7829DC(v0);
        if (v1)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_23C783604(v0);
      if (v1)
      {
        return result;
      }
    }

    else
    {
      if (!*v0)
      {
        result = sub_23C782740(v0);
        if (v1)
        {
          return result;
        }

        goto LABEL_18;
      }

      result = sub_23C78288C(v0);
      if (v1)
      {
        return result;
      }
    }

LABEL_18:
    v4 = &v0[*(type metadata accessor for TranscriptProtoPermissionRequirement(0) + 20)];
    return sub_23C870F14();
  }

  if (*v0 <= 5u)
  {
    if (v2 == 4)
    {
      result = sub_23C783754(v0);
      if (v1)
      {
        return result;
      }

      goto LABEL_18;
    }

    result = sub_23C7838A4(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v2 == 6)
  {
    result = sub_23C7839F4(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v2 != 7)
  {
    goto LABEL_18;
  }

  result = sub_23C783B44(v0);
  if (!v1)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_23C783604(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 3)
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

uint64_t sub_23C783754(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 4)
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

uint64_t sub_23C7838A4(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 5)
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

uint64_t sub_23C7839F4(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 6)
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

uint64_t sub_23C783B44(_BYTE *a1)
{
  v2 = sub_23C870E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 7)
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

uint64_t sub_23C783CE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 8;
  v2 = &a2[*(a1 + 20)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C783D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203518, type metadata accessor for TranscriptProtoPermissionRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C783DF4()
{
  sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C783E60()
{
  sub_23C8314AC(&qword_27E2022F8, type metadata accessor for TranscriptProtoPermissionRequirement);

  return sub_23C871204();
}

uint64_t sub_23C783EFC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200640);
  __swift_project_value_buffer(v0, qword_27E200640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "failure";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 8;
  *v10 = "concludesStreamingStatementID";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionFailure.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoActionFailureFailure(0);
        sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure);
        sub_23C8711A4();
      }

      else if (result == 8)
      {
        sub_23C7841EC();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7841EC()
{
  v0 = *(type metadata accessor for TranscriptProtoActionFailure(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7842F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C20, &unk_23C8A1230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203C20, &unk_23C8A1230);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203C20, &unk_23C8A1230);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoActionFailureFailure);
  sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailure);
}

uint64_t sub_23C784504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionFailure(0);
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

uint64_t sub_23C7847E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203510, type metadata accessor for TranscriptProtoActionFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C784884()
{
  sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure);

  return sub_23C8711F4();
}

uint64_t sub_23C7848F0()
{
  sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure);

  return sub_23C871204();
}

uint64_t sub_23C78498C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200658);
  __swift_project_value_buffer(v0, qword_27E200658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_23C87D710;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "preflightCheckFailure";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "preciseLocationDisabled";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "locationDisabled";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "wifiDisabled";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "bluetoothDisabled";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "networkFailure";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "partialFailure";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "unsupportedOnDevice";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "featureCurrentlyRestricted";
  *(v22 + 8) = 26;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "entityNotFound";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "actionNotAllowed";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "unableToUndo";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "actionCanceled";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "valueDisambiguationRejected";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "noMatchingTool";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "developerDefinedError";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "unableToCancel";
  *(v37 + 8) = 14;
  *(v37 + 16) = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionFailureFailure.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_23C785164(a1, v5, a2, a3);
        break;
      case 2:
        sub_23C7854E4(a1, v5, a2, a3);
        break;
      case 3:
        sub_23C785864(a1, v5, a2, a3);
        break;
      case 4:
        sub_23C785BE4(a1, v5, a2, a3);
        break;
      case 5:
        sub_23C785F64(a1, v5, a2, a3);
        break;
      case 6:
        sub_23C7862E4(a1, v5, a2, a3);
        break;
      case 7:
        sub_23C786664(a1, v5, a2, a3);
        break;
      case 8:
        sub_23C7869E4(a1, v5, a2, a3);
        break;
      case 9:
        sub_23C786D64(a1, v5, a2, a3);
        break;
      case 10:
        sub_23C7870E4(a1, v5, a2, a3);
        break;
      case 11:
        sub_23C787464(a1, v5, a2, a3);
        break;
      case 12:
        sub_23C7877E4(a1, v5, a2, a3);
        break;
      case 13:
        sub_23C787B64(a1, v5, a2, a3);
        break;
      case 14:
        sub_23C787EE4(a1, v5, a2, a3);
        break;
      case 15:
        sub_23C788264(a1, v5, a2, a3);
        break;
      case 16:
        sub_23C7885E4(v5, a1, a2, a3);
        break;
      case 17:
        sub_23C788BA4(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_23C785164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 1, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C7854E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 2, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C785864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 3, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C785BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 4, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C785F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 5, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C7862E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 6, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C786664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 7, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C7869E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 8, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C786D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 9, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C7870E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 10, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C787464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 11, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C7877E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 12, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C787B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 13, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C787EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 14, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C788264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 15, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t sub_23C7885E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v48 = a2;
  v5 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C18, &qword_23C8A0E10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v44 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v36 - v27;
  v42 = *(v6 + 56);
  v43 = v6 + 56;
  v42(&v36 - v27, 1, 1, v5);
  v39 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201710, &qword_23C88DBE0);
  v37 = v16;
  v38 = v15;
  v29 = (*(v16 + 48))(v14, 1, v15);
  if (v29 == 1)
  {
    sub_23C585C34(v14, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if ((*(v6 + 48))(v20, 16, v5))
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203C18, &qword_23C8A0E10);
      v30 = v40;
      sub_23C83155C(v20, v40, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      sub_23C83155C(v30, v28, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v42(v28, 0, 1, v5);
    }
  }

  sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  v31 = v45;
  sub_23C8711A4();
  if (v31)
  {
    return sub_23C585C34(v28, &qword_27E203C18, &qword_23C8A0E10);
  }

  v33 = v44;
  sub_23C5855B0(v28, v44, &qword_27E203C18, &qword_23C8A0E10);
  if ((*(v6 + 48))(v33, 1, v5) == 1)
  {
    sub_23C585C34(v28, &qword_27E203C18, &qword_23C8A0E10);
    return sub_23C585C34(v33, &qword_27E203C18, &qword_23C8A0E10);
  }

  else
  {
    v34 = v41;
    sub_23C83155C(v33, v41, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203C18, &qword_23C8A0E10);
    v35 = v39;
    sub_23C585C34(v39, &qword_27E201710, &qword_23C88DBE0);
    sub_23C83155C(v34, v35, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    v42(v35, 0, 16, v5);
    return (*(v37 + 56))(v35, 0, 1, v38);
  }
}

uint64_t sub_23C788BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEBC8, &qword_23C889840);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  v18 = sub_23C870E84();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v17, 1, 1, v18);
  sub_23C8314AC(&qword_27E1FEBC0, MEMORY[0x277D21560]);
  sub_23C871094();
  if (v4)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  v27[0] = a3;
  v27[1] = a4;
  sub_23C5855B0(v17, v15, &qword_27E1FEBC8, &qword_23C889840);
  v20 = (*(v19 + 48))(v15, 1, v18);
  sub_23C585C34(v15, &qword_27E1FEBC8, &qword_23C889840);
  if (v20 == 1)
  {
    return sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  }

  sub_23C5855B0(v28, v10, &qword_27E201710, &qword_23C88DBE0);
  v21 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  sub_23C585C34(v10, &qword_27E201710, &qword_23C88DBE0);
  if (v23 != 1)
  {
    sub_23C871054();
  }

  sub_23C585C34(v17, &qword_27E1FEBC8, &qword_23C889840);
  v25 = v28;
  sub_23C585C34(v28, &qword_27E201710, &qword_23C88DBE0);
  v26 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  (*(*(v26 - 8) + 56))(v25, 16, 16, v26);
  return (*(v22 + 56))(v25, 0, 1, v21);
}

uint64_t TranscriptProtoActionFailureFailure.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201710, &qword_23C88DBE0);
  v12 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
LABEL_36:
    v15 = v3 + *(type metadata accessor for TranscriptProtoActionFailureFailure(0) + 20);
    return sub_23C870F14();
  }

  else
  {
    v13 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    switch((*(*(v13 - 8) + 48))(v11, 16, v13))
    {
      case 1u:
        result = sub_23C7892E0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 2u:
        result = sub_23C789558(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 3u:
        result = sub_23C7897D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 4u:
        result = sub_23C789A48(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 5u:
        result = sub_23C789CC0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 6u:
        result = sub_23C789F38(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 7u:
        result = sub_23C78A1B0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 8u:
        result = sub_23C78A428(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 9u:
        result = sub_23C78A6A0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xAu:
        result = sub_23C78A918(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xBu:
        result = sub_23C78AB90(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xCu:
        result = sub_23C78AE08(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xDu:
        result = sub_23C78B080(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xEu:
        result = sub_23C78B2F8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0xFu:
        result = sub_23C78B570(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      case 0x10u:
        result = sub_23C78BA58(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
      default:
        sub_23C78B7E8(v3, a1, a2, a3);
        result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        if (!v4)
        {
          goto LABEL_36;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_23C7892E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 1)
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

uint64_t sub_23C789558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 2)
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

uint64_t sub_23C7897D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 3)
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

uint64_t sub_23C789A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 4)
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

uint64_t sub_23C789CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 5)
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

uint64_t sub_23C789F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 6)
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

uint64_t sub_23C78A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 7)
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

uint64_t sub_23C78A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 8)
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

uint64_t sub_23C78A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 9)
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

uint64_t sub_23C78A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 10)
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

uint64_t sub_23C78AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 11)
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

uint64_t sub_23C78AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 12)
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

uint64_t sub_23C78B080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 13)
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

uint64_t sub_23C78B2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 14)
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

uint64_t sub_23C78B570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 15)
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

uint64_t sub_23C78B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_23C585C34(v8, &qword_27E201710, &qword_23C88DBE0);
    __break(1u);
  }

  else if (!(*(v10 + 48))(v8, 16, v9))
  {
    sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
    sub_23C871304();
    return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C78BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201710, &qword_23C88DBE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - v12;
  sub_23C5855B0(a1, v18 - v12, &qword_27E201710, &qword_23C88DBE0);
  v14 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201710, &qword_23C88DBE0);
  }

  else
  {
    v15 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
    v16 = (*(*(v15 - 8) + 48))(v13, 16, v15);
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
    if (v16 == 16)
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

uint64_t sub_23C78BD80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203508, type metadata accessor for TranscriptProtoActionFailureFailure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78BE20()
{
  sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure);

  return sub_23C8711F4();
}

uint64_t sub_23C78BE8C()
{
  sub_23C8314AC(&qword_27E202328, type metadata accessor for TranscriptProtoActionFailureFailure);

  return sub_23C871204();
}

uint64_t sub_23C78BF28()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200670);
  __swift_project_value_buffer(v0, qword_27E200670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedString";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "domain";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "code";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.traverse<A>(visitor:)()
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
      if (!v0[4] || (result = sub_23C871294(), !v1))
      {
        v8 = v0 + *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C78C2D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  return result;
}

uint64_t sub_23C78C358(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203500, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78C3F8()
{
  sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_23C8711F4();
}

uint64_t sub_23C78C464()
{
  sub_23C8314AC(&qword_27E202340, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);

  return sub_23C871204();
}

uint64_t sub_23C78C500()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200688);
  __swift_project_value_buffer(v0, qword_27E200688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "returnValue";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 3;
  *v8 = "undoContext";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "didShowInAppResult";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "followUpAction";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "shouldOpen";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "inAppSearchString";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "concludesStreamingStatementID";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionSuccess.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 1:
          sub_23C78C980();
          break;
        case 3:
          sub_23C78CA34();
          break;
        case 4:
          goto LABEL_12;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36);
        sub_23C871154();
      }

      else if (result == 8)
      {
        sub_23C78CB9C();
      }
    }

    else if (result == 5)
    {
      sub_23C78CAE8();
    }

    else
    {
LABEL_12:
      sub_23C871084();
    }
  }
}

uint64_t sub_23C78C980()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C78CA34()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 28);
  type metadata accessor for TranscriptProtoUndoContext(0);
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext);
  return sub_23C8711A4();
}

uint64_t sub_23C78CAE8()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 32);
  type metadata accessor for TranscriptProtoFollowUpAction(0);
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction);
  return sub_23C8711A4();
}

uint64_t sub_23C78CB9C()
{
  v0 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 40);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C78CD7C(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C78CF98(v3, a1, a2, a3);
    if (*v3 == 1)
    {
      sub_23C871244();
    }

    sub_23C78D1B4(v3, a1, a2, a3);
    if (v3[1] == 1)
    {
      sub_23C871244();
    }

    sub_23C78D3D0(v3);
    sub_23C78D448(v3, a1, a2, a3);
    v9 = &v3[*(type metadata accessor for TranscriptProtoActionSuccess(0) + 44)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C78CD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C78CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C00, &unk_23C8A1240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoUndoContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E203C00, &unk_23C8A1240);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203C00, &unk_23C8A1240);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoUndoContext);
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoUndoContext);
}

uint64_t sub_23C78D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BF0, &qword_23C8A0DF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E203BF0, &qword_23C8A0DF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203BF0, &qword_23C8A0DF0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoFollowUpAction);
}

uint64_t sub_23C78D3D0(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoActionSuccess(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C78D448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_23C5855B0(a1 + *(v14 + 40), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C78D6B0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = a1[10];
  v11 = &a2[a1[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a2[v10], 1, 1, v12);
  v13 = &a2[a1[11]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C78D850(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034F8, type metadata accessor for TranscriptProtoActionSuccess);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78D8F0()
{
  sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess);

  return sub_23C8711F4();
}

uint64_t sub_23C78D95C()
{
  sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess);

  return sub_23C871204();
}

uint64_t sub_23C78DA94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_23C8711A4();
    }
  }

  return result;
}

uint64_t sub_23C78DC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034F0, type metadata accessor for TranscriptProtoSnippetStream);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78DD00()
{
  sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream);

  return sub_23C8711F4();
}

uint64_t sub_23C78DD6C()
{
  sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream);

  return sub_23C871204();
}

uint64_t sub_23C78DE08()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2006B8);
  __swift_project_value_buffer(v0, qword_27E2006B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
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
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "actionDescription";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C78E158(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034E8, type metadata accessor for TranscriptProtoUndoContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78E1F8()
{
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext);

  return sub_23C8711F4();
}

uint64_t sub_23C78E264()
{
  sub_23C8314AC(&qword_27E202388, type metadata accessor for TranscriptProtoUndoContext);

  return sub_23C871204();
}

uint64_t sub_23C78E408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BE0, &unk_23C8A1250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203BE0, &unk_23C8A1250);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203BE0, &unk_23C8A1250);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C8314AC(&qword_27E2023B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
}

uint64_t sub_23C78E6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034E0, type metadata accessor for TranscriptProtoFollowUpAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78E768()
{
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction);

  return sub_23C8711F4();
}

uint64_t sub_23C78E7D4()
{
  sub_23C8314AC(&qword_27E2023A0, type metadata accessor for TranscriptProtoFollowUpAction);

  return sub_23C871204();
}

uint64_t sub_23C78E8DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_23C78E960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC8, &qword_23C8A0DD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BD8, &qword_23C8A0DE0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E203BC8, &qword_23C8A0DD0);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E203BC8, &qword_23C8A0DD0);
    v30 = v44;
  }

  else
  {
    sub_23C83155C(v13, v21, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_23C83155C(v21, v19, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
    sub_23C585C34(v27, &qword_27E203BD8, &qword_23C8A0DE0);
    v31 = v42;
    sub_23C83155C(v19, v42, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    sub_23C83155C(v31, v27, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E203BD8, &qword_23C8A0DE0);
  }

  sub_23C5855B0(v27, v43, &qword_27E203BD8, &qword_23C8A0DE0);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E203BD8, &qword_23C8A0DE0);
    return sub_23C585C34(v33, &qword_27E203BD8, &qword_23C8A0DE0);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E203BD8, &qword_23C8A0DE0);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E203BC8, &qword_23C8A0DD0);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C78EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC8, &qword_23C8A0DD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203BC8, &qword_23C8A0DD0);
  v13 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203BC8, &qword_23C8A0DD0);
  }

  sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C871304();
  return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
}

uint64_t sub_23C78F19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034D8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78F23C()
{
  sub_23C8314AC(&qword_27E2023B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_23C8711F4();
}

uint64_t sub_23C78F2A8()
{
  sub_23C8314AC(&qword_27E2023B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);

  return sub_23C871204();
}

uint64_t sub_23C78F344()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200700);
  __swift_project_value_buffer(v0, qword_27E200700);
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
  *v10 = "linkAction";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkShowOutputActionOptions";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C78F5BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(v5 + 32, a2, a3);
        break;
      case 2:
        a4(v5 + 16, a2, a3);
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.traverse<A>(visitor:)()
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
    v6 = v0[2];
    v7 = v0[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_23C871264();
        if (v1)
        {
          return result;
        }

        goto LABEL_14;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (!v0[4] || (result = sub_23C8712E4(), !v1))
    {
      v11 = v0 + *(type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

double sub_23C78F7D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a2 + 16) = xmmword_23C87D700;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C78F868(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C78F908()
{
  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_23C8711F4();
}

uint64_t sub_23C78F974()
{
  sub_23C8314AC(&qword_27E2023D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);

  return sub_23C871204();
}

uint64_t sub_23C78FA10()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200718);
  __swift_project_value_buffer(v0, qword_27E200718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "item";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterConfirmation.decodeMessage<A>(decoder:)()
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
      case 5:
        sub_23C871104();
        break;
      case 2:
        sub_23C78FCF8();
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C78FCF8()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoParameterConfirmation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_23C78FE7C(v3, a1, a2, a3);
    if (!v4)
    {
      if ((*(v3 + 24) & 1) == 0)
      {
        v12 = *(v3 + 16);
        sub_23C871294();
      }

      v13 = v3 + *(type metadata accessor for TranscriptProtoParameterConfirmation(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C78FE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C790148(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034C8, type metadata accessor for TranscriptProtoParameterConfirmation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7901E8()
{
  sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation);

  return sub_23C8711F4();
}

uint64_t sub_23C790254()
{
  sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation);

  return sub_23C871204();
}

uint64_t sub_23C7902F0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200730);
  __swift_project_value_buffer(v0, qword_27E200730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "parameterIndex";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "items";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterDisambiguation.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          sub_23C871104();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C871194();
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

uint64_t TranscriptProtoParameterDisambiguation.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_23C8712C4(), !v1))
  {
    if (*(*(v0 + 16) + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
      result = sub_23C8712F4();
      if (v1)
      {
        return result;
      }

      if (*(v0 + 32))
      {
        goto LABEL_9;
      }
    }

    else if (*(v0 + 32))
    {
LABEL_9:
      if (!v1)
      {
        v6 = v0 + *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
        return sub_23C870F14();
      }

      return result;
    }

    v5 = *(v0 + 24);
    result = sub_23C871294();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_23C7907D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C79086C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034C0, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79090C()
{
  sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return sub_23C8711F4();
}

uint64_t sub_23C790978()
{
  sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation);

  return sub_23C871204();
}

uint64_t TranscriptProtoValueDisambiguation.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoValueDisambiguation(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C790C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034B8, type metadata accessor for TranscriptProtoValueDisambiguation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C790CDC()
{
  sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation);

  return sub_23C8711F4();
}

uint64_t sub_23C790D48()
{
  sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation);

  return sub_23C871204();
}

uint64_t sub_23C790DE0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200760);
  __swift_project_value_buffer(v0, qword_27E200760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23C875580;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "success";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v30 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "actionConfirmation";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v30 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "parameterNeedsValue";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v30 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parameterConfirmation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v30 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "parameterDisambiguation";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v8();
  v16 = (v30 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parameterNotAllowed";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v30 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "parameterCandidatesNotFound";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  v20 = (v30 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "actionRequirement";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v30 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "toolDisambiguation";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "failure";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "valueDisambiguation";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "snippetStream";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementOutcome.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 6)
    {
      if (result > 9)
      {
        switch(result)
        {
          case 10:
            sub_23C7947E0(v5, a1, a2, a3);
            break;
          case 11:
            sub_23C794D9C(v5, a1, a2, a3);
            break;
          case 12:
            sub_23C795358(v5, a1, a2, a3);
            break;
        }
      }

      else if (result == 7)
      {
        sub_23C7936AC(v5, a1, a2, a3);
      }

      else if (result == 8)
      {
        sub_23C793C68(v5, a1, a2, a3);
      }

      else
      {
        sub_23C794224(v5, a1, a2, a3);
      }
    }

    else if (result > 3)
    {
      if (result == 4)
      {
        sub_23C792578(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_23C792B34(v5, a1, a2, a3);
      }

      else
      {
        sub_23C7930F0(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C791450(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C791A00(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C791FBC(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C791450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B68, &qword_23C8A0D70);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203B68, &qword_23C8A0D70);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoActionSuccess);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoActionSuccess);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B68, &qword_23C8A0D70);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B68, &qword_23C8A0D70);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B68, &qword_23C8A0D70);
    return sub_23C585C34(v36, &qword_27E203B68, &qword_23C8A0D70);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoActionSuccess);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B68, &qword_23C8A0D70);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoActionSuccess);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C791A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B70, &qword_23C8A0D78);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203B70, &qword_23C8A0D78);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoActionConfirmation);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoActionConfirmation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B70, &qword_23C8A0D78);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B70, &qword_23C8A0D78);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B70, &qword_23C8A0D78);
    return sub_23C585C34(v36, &qword_27E203B70, &qword_23C8A0D78);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoActionConfirmation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B70, &qword_23C8A0D78);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoActionConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C791FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B78, &qword_23C8A0D80);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203B78, &qword_23C8A0D80);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoParameterNeedsValue);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoParameterNeedsValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B78, &qword_23C8A0D80);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B78, &qword_23C8A0D80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B78, &qword_23C8A0D80);
    return sub_23C585C34(v36, &qword_27E203B78, &qword_23C8A0D80);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoParameterNeedsValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B78, &qword_23C8A0D80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoParameterNeedsValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C792578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B80, &qword_23C8A0D88);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203B80, &qword_23C8A0D88);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoParameterConfirmation);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoParameterConfirmation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B80, &qword_23C8A0D88);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B80, &qword_23C8A0D88);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B80, &qword_23C8A0D88);
    return sub_23C585C34(v36, &qword_27E203B80, &qword_23C8A0D88);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoParameterConfirmation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B80, &qword_23C8A0D88);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoParameterConfirmation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C792B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B88, &qword_23C8A0D90);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E203B88, &qword_23C8A0D90);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoParameterDisambiguation);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoParameterDisambiguation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B88, &qword_23C8A0D90);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B88, &qword_23C8A0D90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B88, &qword_23C8A0D90);
    return sub_23C585C34(v36, &qword_27E203B88, &qword_23C8A0D90);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoParameterDisambiguation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B88, &qword_23C8A0D90);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoParameterDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7930F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B90, &qword_23C8A0D98);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E203B90, &qword_23C8A0D98);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoParameterNotAllowed);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoParameterNotAllowed);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B90, &qword_23C8A0D98);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B90, &qword_23C8A0D98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B90, &qword_23C8A0D98);
    return sub_23C585C34(v36, &qword_27E203B90, &qword_23C8A0D98);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoParameterNotAllowed);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B90, &qword_23C8A0D98);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoParameterNotAllowed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7936AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B98, &qword_23C8A0DA0);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E203B98, &qword_23C8A0DA0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203B98, &qword_23C8A0DA0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203B98, &qword_23C8A0DA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203B98, &qword_23C8A0DA0);
    return sub_23C585C34(v36, &qword_27E203B98, &qword_23C8A0DA0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203B98, &qword_23C8A0DA0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C793C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BA0, &qword_23C8A0DA8);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E203BA0, &qword_23C8A0DA8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoActionRequirement);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoActionRequirement);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203BA0, &qword_23C8A0DA8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203BA0, &qword_23C8A0DA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203BA0, &qword_23C8A0DA8);
    return sub_23C585C34(v36, &qword_27E203BA0, &qword_23C8A0DA8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoActionRequirement);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203BA0, &qword_23C8A0DA8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoActionRequirement);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C794224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BA8, &qword_23C8A0DB0);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E203BA8, &qword_23C8A0DB0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoToolDisambiguation);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoToolDisambiguation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203BA8, &qword_23C8A0DB0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203BA8, &qword_23C8A0DB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203BA8, &qword_23C8A0DB0);
    return sub_23C585C34(v36, &qword_27E203BA8, &qword_23C8A0DB0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoToolDisambiguation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203BA8, &qword_23C8A0DB0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoToolDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7947E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoActionFailure(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BB0, &qword_23C8A0DB8);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v28, &qword_27E203BB0, &qword_23C8A0DB8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoActionFailure);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoActionFailure);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203BB0, &qword_23C8A0DB8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203BB0, &qword_23C8A0DB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203BB0, &qword_23C8A0DB8);
    return sub_23C585C34(v36, &qword_27E203BB0, &qword_23C8A0DB8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoActionFailure);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203BB0, &qword_23C8A0DB8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoActionFailure);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C794D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BB8, &qword_23C8A0DC0);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v28, &qword_27E203BB8, &qword_23C8A0DC0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoValueDisambiguation);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoValueDisambiguation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203BB8, &qword_23C8A0DC0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203BB8, &qword_23C8A0DC0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203BB8, &qword_23C8A0DC0);
    return sub_23C585C34(v36, &qword_27E203BB8, &qword_23C8A0DC0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoValueDisambiguation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203BB8, &qword_23C8A0DC0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoValueDisambiguation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C795358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203BC0, &qword_23C8A0DC8);
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
  sub_23C5855B0(a1, v14, &qword_27E201770, &unk_23C8A1260);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201770, &unk_23C8A1260);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v28, &qword_27E203BC0, &qword_23C8A0DC8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSnippetStream);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSnippetStream);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203BC0, &qword_23C8A0DC8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203BC0, &qword_23C8A0DC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203BC0, &qword_23C8A0DC8);
    return sub_23C585C34(v36, &qword_27E203BC0, &qword_23C8A0DC8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSnippetStream);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203BC0, &qword_23C8A0DC8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201770, &unk_23C8A1260);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSnippetStream);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoStatementOutcome.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201770, &unk_23C8A1260);
  v12 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        sub_23C797058(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        sub_23C797290(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_23C7974C8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_23C7969B0(v3, a1, a2, a3);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_23C796BE8(v3, a1, a2, a3);
        goto LABEL_28;
      }

      sub_23C796E20(v3, a1, a2, a3);
      if (!v4)
      {
LABEL_31:
        sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_2:
        v13 = v3 + *(type metadata accessor for TranscriptProtoStatementOutcome(0) + 20);
        return sub_23C870F14();
      }
    }

    return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C796308(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C796540(v3, a1, a2, a3);
    }

    else
    {
      sub_23C796778(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C795E98(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7960D0(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C795C64(v3, a1, a2, a3);
  }

LABEL_28:
  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (!v4)
  {
    goto LABEL_2;
  }

  return result;
}

uint64_t sub_23C795C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoActionSuccess);
    sub_23C8314AC(&qword_27E202358, type metadata accessor for TranscriptProtoActionSuccess);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionSuccess);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C795E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoActionConfirmation);
    sub_23C8314AC(&qword_27E202028, type metadata accessor for TranscriptProtoActionConfirmation);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionConfirmation);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7960D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoParameterNeedsValue);
    sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoParameterNeedsValue);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_23C8314AC(&qword_27E2023E8, type metadata accessor for TranscriptProtoParameterConfirmation);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoParameterConfirmation);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoParameterDisambiguation);
    sub_23C8314AC(&qword_27E202400, type metadata accessor for TranscriptProtoParameterDisambiguation);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoParameterDisambiguation);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoParameterNotAllowed);
    sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoParameterNotAllowed);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7969B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoActionRequirement);
    sub_23C8314AC(&qword_27E202268, type metadata accessor for TranscriptProtoActionRequirement);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionRequirement);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C796E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoToolDisambiguation);
    sub_23C8314AC(&qword_27E202098, type metadata accessor for TranscriptProtoToolDisambiguation);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoToolDisambiguation);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C797058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoActionFailure(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoActionFailure);
    sub_23C8314AC(&qword_27E202310, type metadata accessor for TranscriptProtoActionFailure);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionFailure);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C797290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_23C8314AC(&qword_27E202418, type metadata accessor for TranscriptProtoValueDisambiguation);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoValueDisambiguation);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7974C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201770, &unk_23C8A1260);
  v13 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201770, &unk_23C8A1260);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSnippetStream);
    sub_23C8314AC(&qword_27E202370, type metadata accessor for TranscriptProtoSnippetStream);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSnippetStream);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7977B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034B0, type metadata accessor for TranscriptProtoStatementOutcome);

  return MEMORY[0x28217E230](a1, a2, v4);
}