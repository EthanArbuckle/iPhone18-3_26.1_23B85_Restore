uint64_t sub_23C797850()
{
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);

  return sub_23C8711F4();
}

uint64_t sub_23C7978BC()
{
  sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);

  return sub_23C871204();
}

uint64_t sub_23C797A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034A8, type metadata accessor for TranscriptProtoParameterNeedsValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C797AF8()
{
  sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue);

  return sub_23C8711F4();
}

uint64_t sub_23C797B64()
{
  sub_23C8314AC(&qword_27E202440, type metadata accessor for TranscriptProtoParameterNeedsValue);

  return sub_23C871204();
}

uint64_t sub_23C797BFC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200790);
  __swift_project_value_buffer(v0, qword_27E200790);
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
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "reason";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameterNotAllowed.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C821B30();
          sub_23C8710A4();
          break;
        case 2:
          sub_23C797F14();
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

uint64_t sub_23C797F14()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoParameterNotAllowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    result = sub_23C7980BC(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 16))
      {
        v13 = *(v3 + 16);
        sub_23C821B30();
        sub_23C871254();
      }

      v12 = v3 + *(type metadata accessor for TranscriptProtoParameterNotAllowed(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7980BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
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

uint64_t sub_23C79833C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(a3 + v5, 1, 1, v6);
  v7 = a3 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_23C798414(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2034A0, type metadata accessor for TranscriptProtoParameterNotAllowed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7984B4()
{
  sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed);

  return sub_23C8711F4();
}

uint64_t sub_23C798520()
{
  sub_23C8314AC(&qword_27E202458, type metadata accessor for TranscriptProtoParameterNotAllowed);

  return sub_23C871204();
}

uint64_t sub_23C7985A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2007A8);
  __swift_project_value_buffer(v0, qword_27E2007A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "missingRequiredPhoneNumber";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "missingRequiredEmailAddress";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C798818()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2007C0);
  __swift_project_value_buffer(v0, qword_27E2007C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
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
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C798A30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      sub_23C871164();
    }

    else if (result == 2)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C798AD0()
{
  v0 = *(type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C798BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_23C8712C4(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      v16 = v5 + *(a5(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C798C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
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

uint64_t sub_23C798F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203498, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C798FF4()
{
  sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);

  return sub_23C8711F4();
}

uint64_t sub_23C799060()
{
  sub_23C8314AC(&qword_27E202480, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);

  return sub_23C871204();
}

uint64_t sub_23C7991FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203490, type metadata accessor for TranscriptProtoParticipantID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79929C()
{
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID);

  return sub_23C8711F4();
}

uint64_t sub_23C799308()
{
  sub_23C8314AC(&qword_27E202498, type metadata accessor for TranscriptProtoParticipantID);

  return sub_23C871204();
}

uint64_t TranscriptProtoSpanID.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_23C8712E4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSpanID(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t static TranscriptProtoSpanID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoSpanID(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C799584@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C799600(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203488, type metadata accessor for TranscriptProtoSpanID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7996A0()
{
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID);

  return sub_23C8711F4();
}

uint64_t sub_23C79970C()
{
  sub_23C8314AC(&qword_27E2024B0, type metadata accessor for TranscriptProtoSpanID);

  return sub_23C871204();
}

uint64_t sub_23C799788(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C799850()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200808);
  __swift_project_value_buffer(v0, qword_27E200808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "prompt";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "promptResponse";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "statements";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "overrideId";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 11;
  *v15 = "planSource";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoPlan.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 8)
      {
        if (result == 3 || result == 4)
        {
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 9:
            type metadata accessor for TranscriptProtoProgramStatement(0);
            sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement);
            sub_23C871194();
            break;
          case 10:
            sub_23C871154();
            break;
          case 11:
            sub_23C831404();
            sub_23C871094();
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoPlan.traverse<A>(visitor:)()
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
    result = v0[2];
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_23C8712C4(), !v1))
    {
      if (*(v0[4] + 16))
      {
        type metadata accessor for TranscriptProtoProgramStatement(0);
        sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement);
        result = sub_23C8712F4();
        if (v1)
        {
          return result;
        }

        if (!v0[6])
        {
          goto LABEL_13;
        }
      }

      else if (!v0[6])
      {
LABEL_13:
        if (!v1)
        {
          sub_23C799E18(v0);
          v9 = v0 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
          return sub_23C870F14();
        }

        return result;
      }

      v8 = v0[5];
      result = sub_23C8712C4();
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_23C799E18(uint64_t result)
{
  if (*(result + 56) != 4)
  {
    sub_23C831404();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C799EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 4;
  v3 = a2 + *(a1 + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C799F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203480, type metadata accessor for TranscriptProtoPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79A020()
{
  sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan);

  return sub_23C8711F4();
}

uint64_t sub_23C79A08C()
{
  sub_23C8314AC(&qword_27E2024C8, type metadata accessor for TranscriptProtoPlan);

  return sub_23C871204();
}

uint64_t sub_23C79A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B40, &qword_23C8A0D50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B50, &qword_23C8A0D60);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E203B40, &qword_23C8A0D50);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E203B40, &qword_23C8A0D50);
    v30 = v44;
  }

  else
  {
    sub_23C83155C(v13, v21, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_23C83155C(v21, v19, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
    sub_23C585C34(v27, &qword_27E203B50, &qword_23C8A0D60);
    v31 = v42;
    sub_23C83155C(v19, v42, type metadata accessor for TranscriptProtoPlanGenerationError);
    sub_23C83155C(v31, v27, type metadata accessor for TranscriptProtoPlanGenerationError);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E203B50, &qword_23C8A0D60);
  }

  sub_23C5855B0(v27, v43, &qword_27E203B50, &qword_23C8A0D60);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E203B50, &qword_23C8A0D60);
    return sub_23C585C34(v33, &qword_27E203B50, &qword_23C8A0D60);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for TranscriptProtoPlanGenerationError);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E203B50, &qword_23C8A0D60);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E203B40, &qword_23C8A0D50);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPlanGenerationError);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C79A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B40, &qword_23C8A0D50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203B40, &qword_23C8A0D50);
  v13 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203B40, &qword_23C8A0D50);
  }

  sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C871304();
  return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPlanGenerationError);
}

uint64_t sub_23C79A9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203478, type metadata accessor for TranscriptProtoRecoverableError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79AA70()
{
  sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError);

  return sub_23C8711F4();
}

uint64_t sub_23C79AADC()
{
  sub_23C8314AC(&qword_27E2024E0, type metadata accessor for TranscriptProtoRecoverableError);

  return sub_23C871204();
}

uint64_t sub_23C79ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B20, &qword_23C8A0D38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B30, &qword_23C8A0D48);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E203B20, &qword_23C8A0D38);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E203B20, &qword_23C8A0D38);
    v30 = v44;
  }

  else
  {
    sub_23C83155C(v13, v21, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_23C83155C(v21, v19, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
    sub_23C585C34(v27, &qword_27E203B30, &qword_23C8A0D48);
    v31 = v42;
    sub_23C83155C(v19, v42, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    sub_23C83155C(v31, v27, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E203B30, &qword_23C8A0D48);
  }

  sub_23C5855B0(v27, v43, &qword_27E203B30, &qword_23C8A0D48);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E203B30, &qword_23C8A0D48);
    return sub_23C585C34(v33, &qword_27E203B30, &qword_23C8A0D48);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E203B30, &qword_23C8A0D48);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E203B20, &qword_23C8A0D38);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C79B170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B20, &qword_23C8A0D38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203B20, &qword_23C8A0D38);
  v13 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203B20, &qword_23C8A0D38);
  }

  sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C871304();
  return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
}

uint64_t sub_23C79B420(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203470, type metadata accessor for TranscriptProtoPlanGenerationError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79B4C0()
{
  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError);

  return sub_23C8711F4();
}

uint64_t sub_23C79B52C()
{
  sub_23C8314AC(&qword_27E2024F8, type metadata accessor for TranscriptProtoPlanGenerationError);

  return sub_23C871204();
}

uint64_t sub_23C79B5C8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200850);
  __swift_project_value_buffer(v0, qword_27E200850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawModelOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "error";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      sub_23C79B8A0();
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C79B8A0()
{
  v0 = *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 24);
  type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = v3[3];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 || (result = sub_23C8712C4(), !v4))
    {
      result = sub_23C79BA30(v3, a1, a2, a3);
      if (!v4)
      {
        v14 = v3 + *(type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C79BA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B08, &qword_23C8A0D28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E203B08, &qword_23C8A0D28);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203B08, &qword_23C8A0D28);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C8314AC(&qword_27E2021F0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
}

uint64_t sub_23C79BC98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C79BD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203468, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79BE0C()
{
  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_23C8711F4();
}

uint64_t sub_23C79BE78()
{
  sub_23C8314AC(&qword_27E202510, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryResults.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for TranscriptProtoCandidate(0);
        sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoQueryResults.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoCandidate(0), sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryResults(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79C1D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203460, type metadata accessor for TranscriptProtoQueryResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79C278()
{
  sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults);

  return sub_23C8711F4();
}

uint64_t sub_23C79C2E4()
{
  sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults);

  return sub_23C871204();
}

uint64_t sub_23C79C394()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200880);
  __swift_project_value_buffer(v0, qword_27E200880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 5;
  *v11 = "payload";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryStep.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          sub_23C79C79C();
          break;
        case 4:
          sub_23C79C6E8();
          break;
        case 2:
          type metadata accessor for TranscriptProtoStatementID(0);
          sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C79C6E8()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryStep(0) + 20);
  type metadata accessor for TranscriptProtoActionParameterContext(0);
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext);
  return sub_23C8711A4();
}

uint64_t sub_23C79C79C()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryStep(0) + 24);
  type metadata accessor for TranscriptProtoQueryPayload(0);
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload);
  return sub_23C8711A4();
}

uint64_t sub_23C79C8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    a6(v7, a1, a2, a3);
    v16 = v7 + *(a7(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_23C79CB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AF8, &unk_23C8A1290);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_23C5855B0(a1 + *(Step + 20), v8, &qword_27E203AF8, &unk_23C8A1290);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203AF8, &unk_23C8A1290);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_23C8314AC(&qword_27E2021D8, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoActionParameterContext);
}

uint64_t sub_23C79CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AE8, &qword_23C8A0D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v10 = *(Payload - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](Payload);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  sub_23C5855B0(a1 + *(Step + 24), v8, &qword_27E203AE8, &qword_23C8A0D10);
  if ((*(v10 + 48))(v8, 1, Payload) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203AE8, &qword_23C8A0D10);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoQueryPayload);
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoQueryPayload);
}

uint64_t sub_23C79D0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203458, type metadata accessor for TranscriptProtoQueryStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79D148()
{
  sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep);

  return sub_23C8711F4();
}

uint64_t sub_23C79D1B4()
{
  sub_23C8314AC(&qword_27E202538, type metadata accessor for TranscriptProtoQueryStep);

  return sub_23C871204();
}

uint64_t sub_23C79D250()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200898);
  __swift_project_value_buffer(v0, qword_27E200898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "searchTool";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "person";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "string";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "id";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C79D520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AC8, &qword_23C8A0CF0);
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
  sub_23C5855B0(a1, v14, &qword_27E2017F0, &unk_23C8A12A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2017F0, &unk_23C8A12A0);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203AC8, &qword_23C8A0CF0);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203AC8, &qword_23C8A0CF0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203AC8, &qword_23C8A0CF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203AC8, &qword_23C8A0CF0);
    return sub_23C585C34(v36, &qword_27E203AC8, &qword_23C8A0CF0);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203AC8, &qword_23C8A0CF0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C79DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
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
  sub_23C5855B0(a1, v14, &qword_27E2017F0, &unk_23C8A12A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2017F0, &unk_23C8A12A0);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 1)
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
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
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
    sub_23C585C34(v42, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPersonQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C79E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AD8, &qword_23C8A0D00);
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
  sub_23C5855B0(a1, v14, &qword_27E2017F0, &unk_23C8A12A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2017F0, &unk_23C8A12A0);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203AD8, &qword_23C8A0D00);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203AD8, &qword_23C8A0D00);
  }

  sub_23C5855B0(v28, v36, &qword_27E203AD8, &qword_23C8A0D00);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203AD8, &qword_23C8A0D00);
    return sub_23C585C34(v36, &qword_27E203AD8, &qword_23C8A0D00);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203AD8, &qword_23C8A0D00);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C79E648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(PayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](PayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AE0, &qword_23C8A0D08);
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
  sub_23C5855B0(a1, v14, &qword_27E2017F0, &unk_23C8A12A0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, PayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2017F0, &unk_23C8A12A0);
    v33 = v48;
    v34 = PayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    v34 = PayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203AE0, &qword_23C8A0D08);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203AE0, &qword_23C8A0D08);
  }

  sub_23C5855B0(v28, v36, &qword_27E203AE0, &qword_23C8A0D08);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203AE0, &qword_23C8A0D08);
    return sub_23C585C34(v36, &qword_27E203AE0, &qword_23C8A0D08);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203AE0, &qword_23C8A0D08);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2017F0, &unk_23C8A12A0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoQueryPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v11, 1, PayloadEnum) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C79F244(v3, a1, a2, a3);
    }

    else
    {
      sub_23C79F47C(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C79F00C(v3, a1, a2, a3);
  }

  else
  {
    sub_23C79EDD8(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoQueryPayload(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPersonQuery);
    sub_23C8314AC(&qword_27E202180, type metadata accessor for TranscriptProtoPersonQuery);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPersonQuery);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2017F0, &unk_23C8A12A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2017F0, &unk_23C8A12A0);
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  if ((*(*(PayloadEnum - 8) + 48))(v8, 1, PayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E2017F0, &unk_23C8A12A0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C79F764(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203450, type metadata accessor for TranscriptProtoQueryPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79F804()
{
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C79F870()
{
  sub_23C8314AC(&qword_27E202550, type metadata accessor for TranscriptProtoQueryPayload);

  return sub_23C871204();
}

uint64_t sub_23C79F8F0()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8B2150);
  qword_27E2008B0 = 0xD000000000000017;
  *algn_27E2008B8 = 0x800000023C8B0400;
  return result;
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.decodeMessage<A>(decoder:)()
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
      sub_23C79FA40();
    }
  }

  return result;
}

uint64_t sub_23C79FA40()
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C871024();
}

uint64_t TranscriptProtoQueryPayload.SearchToolQuery.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_23C870EE4(), type metadata accessor for ToolKitProtoTypedValue(0), sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C871214(), !v3))
  {
    v2 = v0 + *(type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C79FD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203448, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C79FDF8()
{
  sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C79FE64()
{
  sub_23C8314AC(&qword_27E202568, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);

  return sub_23C871204();
}

uint64_t sub_23C79FEF8()
{
  result = MEMORY[0x23EED7100](0x51676E697274532ELL, 0xEC00000079726575);
  qword_27E2008D8 = 0xD000000000000017;
  unk_27E2008E0 = 0x800000023C8B0400;
  return result;
}

uint64_t sub_23C79FF94()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2008E8);
  __swift_project_value_buffer(v0, qword_27E2008E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7A01AC()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t sub_23C7A02A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C7A0578(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203440, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A0618()
{
  sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C7A0684()
{
  sub_23C8314AC(&qword_27E202580, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);

  return sub_23C871204();
}

uint64_t sub_23C7A0704()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8B2130);
  qword_27E200900 = 0xD000000000000017;
  *algn_27E200908 = 0x800000023C8B0400;
  return result;
}

uint64_t sub_23C7A07A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200910);
  __swift_project_value_buffer(v0, qword_27E200910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ids";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7A09CC()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryPayload.IdentifierQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7A0B20(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_23C8712A4();
    }

    v6 = v3 + *(type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7A0B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB38, &unk_23C8791E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB38, &unk_23C8791E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB38, &unk_23C8791E0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C8314AC(&qword_27E1FACA0, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_23C7A0E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203438, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A0EA0()
{
  sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C7A0F0C()
{
  sub_23C8314AC(&qword_27E202598, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);

  return sub_23C871204();
}

uint64_t sub_23C7A0FA8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200928);
  __swift_project_value_buffer(v0, qword_27E200928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "queryResults";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originStatementId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rawQueryEventId";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryStepResults.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C871164();
          break;
        case 2:
          sub_23C7A1300();
          break;
        case 1:
          type metadata accessor for TranscriptProtoQueryResults(0);
          sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults);
          sub_23C871194();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7A1300()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryStepResults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoQueryResults(0), sub_23C8314AC(&qword_27E201818, type metadata accessor for TranscriptProtoQueryResults), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C7A14E0(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3[2];
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v3[1] & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_23C8712C4();
      }

      v11 = v3 + *(type metadata accessor for TranscriptProtoQueryStepResults(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7A14E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  sub_23C5855B0(a1 + *(StepResults + 24), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7A1748@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7A1824(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203430, type metadata accessor for TranscriptProtoQueryStepResults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A18C4()
{
  sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults);

  return sub_23C8711F4();
}

uint64_t sub_23C7A1930()
{
  sub_23C8314AC(&qword_27E2025B0, type metadata accessor for TranscriptProtoQueryStepResults);

  return sub_23C871204();
}

uint64_t sub_23C7A19CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200940);
  __swift_project_value_buffer(v0, qword_27E200940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fullPrint";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fullSpeak";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportingPrint";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supportingSpeak";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoResponseDialog.decodeMessage<A>(decoder:)()
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
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_23C871154();
      }
    }

    else if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t TranscriptProtoResponseDialog.traverse<A>(visitor:)()
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
    if (v0[3])
    {
      v5 = v0[2];
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      if (v0[5])
      {
        v6 = v0[4];
        sub_23C8712C4();
      }

      if (v0[7])
      {
        v7 = v0[6];
        sub_23C8712C4();
      }

      v8 = v0 + *(type metadata accessor for TranscriptProtoResponseDialog(0) + 32);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7A1E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 16) = 0u;
  v3 = a2 + *(a1 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7A1ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203428, type metadata accessor for TranscriptProtoResponseDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A1F6C()
{
  sub_23C8314AC(&qword_27E2025C8, type metadata accessor for TranscriptProtoResponseDialog);

  return sub_23C8711F4();
}

uint64_t sub_23C7A1FD8()
{
  sub_23C8314AC(&qword_27E2025C8, type metadata accessor for TranscriptProtoResponseDialog);

  return sub_23C871204();
}

uint64_t sub_23C7A2074()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200958);
  __swift_project_value_buffer(v0, qword_27E200958);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "visualOutput";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "printedDialogOutput";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "spokenDialogOutput";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "responseType";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "resultStatementIds";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "options";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "attribution";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "dialogIdentifier";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoResponseOutput.decodeMessage<A>(decoder:)()
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

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            sub_23C7A279C();
            goto LABEL_5;
          }

          v4 = v0;
          type metadata accessor for TranscriptProtoStatementID(0);
          sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
          goto LABEL_22;
        }

        if (result == 7)
        {
          sub_23C7A2850();
        }

        else if (result == 8)
        {
          v3 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44);
          sub_23C871154();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          sub_23C7A26E8();
        }

        else
        {
          sub_23C821B84();
          sub_23C8710A4();
        }
      }

      else
      {
        if (result == 1)
        {
          v4 = v0;
          type metadata accessor for TranscriptProtoVisualOutput(0);
          sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput);
LABEL_22:
          v0 = v4;
          sub_23C871194();
          goto LABEL_5;
        }

        if (result == 2)
        {
          sub_23C7A2634();
        }
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7A2634()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 28);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType);
  return sub_23C8711A4();
}

uint64_t sub_23C7A26E8()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 32);
  type metadata accessor for TranscriptProtoDialogType(0);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType);
  return sub_23C8711A4();
}

uint64_t sub_23C7A279C()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 36);
  type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions);
  return sub_23C8711A4();
}

uint64_t sub_23C7A2850()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseOutput(0) + 40);
  type metadata accessor for TranscriptProtoVisualOutput(0);
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoResponseOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoVisualOutput(0), sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C7A2B1C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C7A2D38(v3, a1, a2, a3);
      if (*(v3 + 8))
      {
        v10 = *(v3 + 8);
        sub_23C821B84();
        sub_23C871254();
      }

      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
        sub_23C8712F4();
      }

      sub_23C7A2F54(v3, a1, a2, a3);
      sub_23C7A3170(v3, a1, a2, a3);
      sub_23C7A338C(v3);
      v9 = v3 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 48);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7A2B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA0, &unk_23C8A12B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDialogType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E203AA0, &unk_23C8A12B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203AA0, &unk_23C8A12B0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_23C7A2D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AA0, &unk_23C8A12B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDialogType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E203AA0, &unk_23C8A12B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203AA0, &unk_23C8A12B0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoDialogType);
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoDialogType);
}

uint64_t sub_23C7A2F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A90, &qword_23C8A0CC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E203A90, &qword_23C8A0CC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203A90, &qword_23C8A0CC0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoVisualOutputOptions);
}

uint64_t sub_23C7A3170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A80, &unk_23C8A12C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C5855B0(a1 + *(v14 + 40), v8, &qword_27E203A80, &unk_23C8A12C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203A80, &unk_23C8A12C0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoVisualOutput);
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoVisualOutput);
}

uint64_t sub_23C7A338C(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoResponseOutput(0);
  v3 = (a1 + *(result + 44));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7A3450@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoDialogType(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a1[9];
  v8 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[10];
  v10 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[12];
  v12 = (a2 + a1[11]);
  *v12 = 0;
  v12[1] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v14 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  return result;
}

uint64_t sub_23C7A35E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203420, type metadata accessor for TranscriptProtoResponseOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A3688()
{
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C7A36F4()
{
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput);

  return sub_23C871204();
}

uint64_t sub_23C7A3890(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203418, type metadata accessor for TranscriptProtoVisualOutputOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A3930()
{
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions);

  return sub_23C8711F4();
}

uint64_t sub_23C7A399C()
{
  sub_23C8314AC(&qword_27E2025F8, type metadata accessor for TranscriptProtoVisualOutputOptions);

  return sub_23C871204();
}

uint64_t sub_23C7A3A34()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200988);
  __swift_project_value_buffer(v0, qword_27E200988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "liveActivity";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inAppResponse";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "pluginSnippet";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoVisualOutput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C7A48F0(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_23C7A4EAC(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C7A3D84(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C7A4334(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7A3D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A60, &qword_23C8A0C98);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABF0, &qword_23C878F88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABF0, &qword_23C878F88);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203A60, &qword_23C8A0C98);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A60, &qword_23C8A0C98);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A60, &qword_23C8A0C98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A60, &qword_23C8A0C98);
    return sub_23C585C34(v36, &qword_27E203A60, &qword_23C8A0C98);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A60, &qword_23C8A0C98);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A4334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A68, &qword_23C8A0CA0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABF0, &qword_23C878F88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABF0, &qword_23C878F88);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203A68, &qword_23C8A0CA0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A68, &qword_23C8A0CA0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A68, &qword_23C8A0CA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A68, &qword_23C8A0CA0);
    return sub_23C585C34(v36, &qword_27E203A68, &qword_23C8A0CA0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A68, &qword_23C8A0CA0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A48F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A70, &qword_23C8A0CA8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABF0, &qword_23C878F88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABF0, &qword_23C878F88);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203A70, &qword_23C8A0CA8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A70, &qword_23C8A0CA8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A70, &qword_23C8A0CA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A70, &qword_23C8A0CA8);
    return sub_23C585C34(v36, &qword_27E203A70, &qword_23C8A0CA8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A70, &qword_23C8A0CA8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A78, &qword_23C8A0CB0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABF0, &qword_23C878F88);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABF0, &qword_23C878F88);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoVisualOutputType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203A78, &qword_23C8A0CB0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoVisualOutputType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A78, &qword_23C8A0CB0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A78, &qword_23C8A0CB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A78, &qword_23C8A0CB0);
    return sub_23C585C34(v36, &qword_27E203A78, &qword_23C8A0CB0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A78, &qword_23C8A0CB0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABF0, &qword_23C878F88);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoVisualOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FABF0, &qword_23C878F88);
  v12 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C7A5AA8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7A5CE0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C7A5870(v3, a1, a2, a3);
  }

  else
  {
    sub_23C7A563C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoVisualOutput(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7A563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABF0, &qword_23C878F88);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABF0, &qword_23C878F88);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABF0, &qword_23C878F88);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABF0, &qword_23C878F88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABF0, &qword_23C878F88);
  v13 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABF0, &qword_23C878F88);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  __break(1u);
  return result;
}

uint64_t sub_23C7A5FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203410, type metadata accessor for TranscriptProtoVisualOutput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6068()
{
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput);

  return sub_23C8711F4();
}

uint64_t sub_23C7A60D4()
{
  sub_23C8314AC(&qword_27E201830, type metadata accessor for TranscriptProtoVisualOutput);

  return sub_23C871204();
}

uint64_t sub_23C7A6270(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203408, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6310()
{
  sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A637C()
{
  sub_23C8314AC(&qword_27E202620, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A63F8(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7A65D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203400, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6670()
{
  sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A66DC()
{
  sub_23C8314AC(&qword_27E202638, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A6874(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033F8, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6914()
{
  sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A6980()
{
  sub_23C8314AC(&qword_27E202650, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A6A18()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2009E8);
  __swift_project_value_buffer(v0, qword_27E2009E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7A6CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033F0, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7A6D64()
{
  sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7A6DD0()
{
  sub_23C8314AC(&qword_27E202668, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);

  return sub_23C871204();
}

uint64_t sub_23C7A6E68()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200A00);
  __swift_project_value_buffer(v0, qword_27E200A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "staticText";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sonicText";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "generatedText";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "unableToGenerate";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suppressed";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "catDialog";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoDialogType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_23C7A83AC(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C7A8968(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C7A8F24(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C7A7284(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C7A7834(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C7A7DF0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C7A7284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStaticText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A30, &qword_23C8A0C68);
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
  sub_23C5855B0(a1, v14, &qword_27E201880, &unk_23C8A12D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203A30, &qword_23C8A0C68);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoStaticText);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoStaticText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202698, type metadata accessor for TranscriptProtoStaticText);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A30, &qword_23C8A0C68);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A30, &qword_23C8A0C68);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A30, &qword_23C8A0C68);
    return sub_23C585C34(v36, &qword_27E203A30, &qword_23C8A0C68);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoStaticText);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A30, &qword_23C8A0C68);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoStaticText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A7834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSonicText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A38, &qword_23C8A0C70);
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
  sub_23C5855B0(a1, v14, &qword_27E201880, &unk_23C8A12D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203A38, &qword_23C8A0C70);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSonicText);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSonicText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2026C8, type metadata accessor for TranscriptProtoSonicText);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A38, &qword_23C8A0C70);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A38, &qword_23C8A0C70);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A38, &qword_23C8A0C70);
    return sub_23C585C34(v36, &qword_27E203A38, &qword_23C8A0C70);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSonicText);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A38, &qword_23C8A0C70);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSonicText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A40, &qword_23C8A0C78);
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
  sub_23C5855B0(a1, v14, &qword_27E201880, &unk_23C8A12D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203A40, &qword_23C8A0C78);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoGeneratedText);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoGeneratedText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2026E0, type metadata accessor for TranscriptProtoGeneratedText);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A40, &qword_23C8A0C78);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A40, &qword_23C8A0C78);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A40, &qword_23C8A0C78);
    return sub_23C585C34(v36, &qword_27E203A40, &qword_23C8A0C78);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoGeneratedText);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A40, &qword_23C8A0C78);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoGeneratedText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A83AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A48, &qword_23C8A0C80);
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
  sub_23C5855B0(a1, v14, &qword_27E201880, &unk_23C8A12D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203A48, &qword_23C8A0C80);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoUnableToGenerate);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoUnableToGenerate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2026F8, type metadata accessor for TranscriptProtoUnableToGenerate);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A48, &qword_23C8A0C80);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A48, &qword_23C8A0C80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A48, &qword_23C8A0C80);
    return sub_23C585C34(v36, &qword_27E203A48, &qword_23C8A0C80);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoUnableToGenerate);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A48, &qword_23C8A0C80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoUnableToGenerate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A8968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSuppressed(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A50, &qword_23C8A0C88);
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
  sub_23C5855B0(a1, v14, &qword_27E201880, &unk_23C8A12D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E203A50, &qword_23C8A0C88);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSuppressed);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSuppressed);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202710, type metadata accessor for TranscriptProtoSuppressed);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A50, &qword_23C8A0C88);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A50, &qword_23C8A0C88);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A50, &qword_23C8A0C88);
    return sub_23C585C34(v36, &qword_27E203A50, &qword_23C8A0C88);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSuppressed);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A50, &qword_23C8A0C88);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSuppressed);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7A8F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoCATDialog(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A58, &qword_23C8A0C90);
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
  sub_23C5855B0(a1, v14, &qword_27E201880, &unk_23C8A12D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201880, &unk_23C8A12D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoDialogFormat);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoDialogFormat);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E203A58, &qword_23C8A0C90);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoCATDialog);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoCATDialog);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoDialogFormat);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2026B0, type metadata accessor for TranscriptProtoCATDialog);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203A58, &qword_23C8A0C90);
  }

  sub_23C5855B0(v28, v36, &qword_27E203A58, &qword_23C8A0C90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203A58, &qword_23C8A0C90);
    return sub_23C585C34(v36, &qword_27E203A58, &qword_23C8A0C90);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoCATDialog);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203A58, &qword_23C8A0C90);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201880, &unk_23C8A12D0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoCATDialog);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoDialogType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201880, &unk_23C8A12D0);
  v12 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C7A9DA0(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C7A9FD8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7AA210(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C7A9930(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7A9B68(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C7A96FC(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoDialogFormat);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for TranscriptProtoDialogType(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7A96FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStaticText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201880, &unk_23C8A12D0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoStaticText);
    sub_23C8314AC(&qword_27E202698, type metadata accessor for TranscriptProtoStaticText);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStaticText);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSonicText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201880, &unk_23C8A12D0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSonicText);
    sub_23C8314AC(&qword_27E2026C8, type metadata accessor for TranscriptProtoSonicText);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSonicText);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201880, &unk_23C8A12D0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoGeneratedText);
    sub_23C8314AC(&qword_27E2026E0, type metadata accessor for TranscriptProtoGeneratedText);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoGeneratedText);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201880, &unk_23C8A12D0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_23C8314AC(&qword_27E2026F8, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoUnableToGenerate);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7A9FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSuppressed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201880, &unk_23C8A12D0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSuppressed);
    sub_23C8314AC(&qword_27E202710, type metadata accessor for TranscriptProtoSuppressed);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSuppressed);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7AA210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201880, &unk_23C8A12D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoCATDialog(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201880, &unk_23C8A12D0);
  v13 = type metadata accessor for TranscriptProtoDialogFormat(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201880, &unk_23C8A12D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoCATDialog);
    sub_23C8314AC(&qword_27E2026B0, type metadata accessor for TranscriptProtoCATDialog);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoCATDialog);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoDialogFormat);
  __break(1u);
  return result;
}

uint64_t sub_23C7AA4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033E8, type metadata accessor for TranscriptProtoDialogType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AA598()
{
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType);

  return sub_23C8711F4();
}

uint64_t sub_23C7AA604()
{
  sub_23C8314AC(&qword_27E202680, type metadata accessor for TranscriptProtoDialogType);

  return sub_23C871204();
}

uint64_t sub_23C7AA7A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033E0, type metadata accessor for TranscriptProtoStaticText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AA840()
{
  sub_23C8314AC(&qword_27E202698, type metadata accessor for TranscriptProtoStaticText);

  return sub_23C8711F4();
}

uint64_t sub_23C7AA8AC()
{
  sub_23C8314AC(&qword_27E202698, type metadata accessor for TranscriptProtoStaticText);

  return sub_23C871204();
}

uint64_t sub_23C7AAA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033D8, type metadata accessor for TranscriptProtoCATDialog);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AAB10()
{
  sub_23C8314AC(&qword_27E2026B0, type metadata accessor for TranscriptProtoCATDialog);

  return sub_23C8711F4();
}

uint64_t sub_23C7AAB7C()
{
  sub_23C8314AC(&qword_27E2026B0, type metadata accessor for TranscriptProtoCATDialog);

  return sub_23C871204();
}

uint64_t sub_23C7AAD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033D0, type metadata accessor for TranscriptProtoSonicText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AADB4()
{
  sub_23C8314AC(&qword_27E2026C8, type metadata accessor for TranscriptProtoSonicText);

  return sub_23C8711F4();
}

uint64_t sub_23C7AAE20()
{
  sub_23C8314AC(&qword_27E2026C8, type metadata accessor for TranscriptProtoSonicText);

  return sub_23C871204();
}

uint64_t sub_23C7AAFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033C8, type metadata accessor for TranscriptProtoGeneratedText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AB058()
{
  sub_23C8314AC(&qword_27E2026E0, type metadata accessor for TranscriptProtoGeneratedText);

  return sub_23C8711F4();
}

uint64_t sub_23C7AB0C4()
{
  sub_23C8314AC(&qword_27E2026E0, type metadata accessor for TranscriptProtoGeneratedText);

  return sub_23C871204();
}

uint64_t _s26AIMLInstrumentationStreams033TranscriptProtoRequestContentStopF0V2eeoiySbAC_ACtFZ_0()
{
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7AB278(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033C0, type metadata accessor for TranscriptProtoUnableToGenerate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AB318()
{
  sub_23C8314AC(&qword_27E2026F8, type metadata accessor for TranscriptProtoUnableToGenerate);

  return sub_23C8711F4();
}

uint64_t sub_23C7AB384()
{
  sub_23C8314AC(&qword_27E2026F8, type metadata accessor for TranscriptProtoUnableToGenerate);

  return sub_23C871204();
}

uint64_t sub_23C7AB4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033B8, type metadata accessor for TranscriptProtoSuppressed);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AB550()
{
  sub_23C8314AC(&qword_27E202710, type metadata accessor for TranscriptProtoSuppressed);

  return sub_23C8711F4();
}

uint64_t sub_23C7AB5BC()
{
  sub_23C8314AC(&qword_27E202710, type metadata accessor for TranscriptProtoSuppressed);

  return sub_23C871204();
}

uint64_t sub_23C7AB654()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200AA8);
  __swift_project_value_buffer(v0, qword_27E200AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "parameters";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "dialog";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "visual";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "templateId";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "templateLocation";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "useTemplateAsFallback";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dialogPresentationHint";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "attribution";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoResponseManifest.decodeMessage<A>(decoder:)()
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

      if (result > 4)
      {
        if (result <= 6)
        {
          if (result != 5)
          {
            v3 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 36);
            sub_23C871074();
            goto LABEL_5;
          }

          v4 = v0;
          v6 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 32);
          goto LABEL_21;
        }

        if (result == 7)
        {
          sub_23C7ABD2C();
        }

        else if (result == 8)
        {
          sub_23C7ABDA0();
        }
      }

      else if (result > 2)
      {
        if (result != 3)
        {
          v4 = v0;
          v5 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 28);
LABEL_21:
          v0 = v4;
          sub_23C871154();
          goto LABEL_5;
        }

        sub_23C7ABC78();
      }

      else if (result == 1)
      {
        type metadata accessor for TranscriptProtoResponseParameter(0);
        sub_23C8314AC(&qword_27E2018C0, type metadata accessor for TranscriptProtoResponseParameter);
        sub_23C871194();
      }

      else if (result == 2)
      {
        sub_23C7ABBC4();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7ABBC4()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 20);
  type metadata accessor for TranscriptProtoResponseDialog(0);
  sub_23C8314AC(&qword_27E2025C8, type metadata accessor for TranscriptProtoResponseDialog);
  return sub_23C8711A4();
}

uint64_t sub_23C7ABC78()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 24);
  type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_23C8314AC(&qword_27E202748, type metadata accessor for TranscriptProtoResponseVisual);
  return sub_23C8711A4();
}

uint64_t sub_23C7ABD2C()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 40);
  sub_23C8313B0();
  return sub_23C871094();
}

uint64_t sub_23C7ABDA0()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseManifest(0) + 44);
  type metadata accessor for TranscriptProtoUIType(0);
  sub_23C8314AC(&qword_27E2018D8, type metadata accessor for TranscriptProtoUIType);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoResponseManifest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoResponseParameter(0), sub_23C8314AC(&qword_27E2018C0, type metadata accessor for TranscriptProtoResponseParameter), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C7AC010(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C7AC22C(v3, a1, a2, a3);
      sub_23C7ED9C0(v3, a1, a2, a3, type metadata accessor for TranscriptProtoResponseManifest);
      sub_23C7EDA44(v3, a1, a2, a3, type metadata accessor for TranscriptProtoResponseManifest);
      sub_23C7AC448(v3);
      sub_23C7AC4C0(v3);
      sub_23C7AC550(v3, a1, a2, a3);
      v9 = v3 + *(type metadata accessor for TranscriptProtoResponseManifest(0) + 48);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7AC010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A10, &qword_23C8A0C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203A10, &qword_23C8A0C50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203A10, &qword_23C8A0C50);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoResponseDialog);
  sub_23C8314AC(&qword_27E2025C8, type metadata accessor for TranscriptProtoResponseDialog);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoResponseDialog);
}

uint64_t sub_23C7AC22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203A00, &unk_23C8A12E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E203A00, &unk_23C8A12E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203A00, &unk_23C8A12E0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoResponseVisual);
  sub_23C8314AC(&qword_27E202748, type metadata accessor for TranscriptProtoResponseVisual);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoResponseVisual);
}

uint64_t sub_23C7AC448(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C7AC4C0(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    sub_23C8313B0();
    return sub_23C871254();
  }

  return result;
}

uint64_t sub_23C7AC550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039F0, &qword_23C8A0C38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoUIType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_23C5855B0(a1 + *(v14 + 44), v8, &qword_27E2039F0, &qword_23C8A0C38);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E2039F0, &qword_23C8A0C38);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoUIType);
  sub_23C8314AC(&qword_27E2018D8, type metadata accessor for TranscriptProtoUIType);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoUIType);
}

uint64_t sub_23C7AC7B8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = &a2[a1[7]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[v8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = a1[10];
  a2[a1[9]] = 2;
  a2[v11] = 2;
  v12 = a1[11];
  v13 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = &a2[a1[12]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C7AC938(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033B0, type metadata accessor for TranscriptProtoResponseManifest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AC9D8()
{
  sub_23C8314AC(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest);

  return sub_23C8711F4();
}

uint64_t sub_23C7ACA44()
{
  sub_23C8314AC(&qword_27E1FBB40, type metadata accessor for TranscriptProtoResponseManifest);

  return sub_23C871204();
}

uint64_t sub_23C7ACAE0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200AC0);
  __swift_project_value_buffer(v0, qword_27E200AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "key";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "required";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "format";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "profanityFilter";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoResponseParameter.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23C871044();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          goto LABEL_13;
        case 5:
          goto LABEL_15;
        case 6:
LABEL_13:
          sub_23C871074();
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
          sub_23C8710B4();
          break;
        case 3:
LABEL_15:
          sub_23C871154();
          break;
      }
    }
  }
}

uint64_t TranscriptProtoResponseParameter.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
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
      if (*(v0 + 40))
      {
        v6 = *(v0 + 32);
        sub_23C8712C4();
      }

      if (*(v0 + 48) != 2)
      {
        sub_23C871244();
      }

      if (*(v0 + 64))
      {
        v7 = *(v0 + 56);
        sub_23C8712C4();
      }

      if (*(v0 + 72) != 2)
      {
        sub_23C871244();
      }

      v8 = v0 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7AD048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = xmmword_23C879130;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 2;
  v3 = a2 + *(a1 + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7AD0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033A8, type metadata accessor for TranscriptProtoResponseParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7AD188()
{
  sub_23C8314AC(&qword_27E2018C0, type metadata accessor for TranscriptProtoResponseParameter);

  return sub_23C8711F4();
}

uint64_t sub_23C7AD1F4()
{
  sub_23C8314AC(&qword_27E2018C0, type metadata accessor for TranscriptProtoResponseParameter);

  return sub_23C871204();
}

uint64_t sub_23C7AD290()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200AD8);
  __swift_project_value_buffer(v0, qword_27E200AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "views";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "options";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoResponseVisual.decodeMessage<A>(decoder:)()
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

      switch(result)
      {
        case 6:
          sub_23C7AD620();
          goto LABEL_5;
        case 5:
          v3 = v0;
          type metadata accessor for TranscriptProtoUILabel(0);
          sub_23C8314AC(&qword_27E2018E0, type metadata accessor for TranscriptProtoUILabel);
          break;
        case 4:
          v3 = v0;
          type metadata accessor for TranscriptProtoUIType(0);
          sub_23C8314AC(&qword_27E2018D8, type metadata accessor for TranscriptProtoUIType);
          break;
        default:
          goto LABEL_5;
      }

      v0 = v3;
      sub_23C871194();
LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7AD620()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_23C8314AC(&qword_27E202760, type metadata accessor for TranscriptProtoResponseVisualOptions);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoResponseVisual.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoUIType(0), sub_23C8314AC(&qword_27E2018D8, type metadata accessor for TranscriptProtoUIType), result = sub_23C8712F4(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for TranscriptProtoUILabel(0), sub_23C8314AC(&qword_27E2018E0, type metadata accessor for TranscriptProtoUILabel), result = sub_23C8712F4(), !v4))
    {
      result = sub_23C7AD848(v3, a1, a2, a3);
      if (!v4)
      {
        v9 = v3 + *(type metadata accessor for TranscriptProtoResponseVisual(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7AD848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039E0, &unk_23C8A12F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E2039E0, &unk_23C8A12F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E2039E0, &unk_23C8A12F0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoResponseVisualOptions);
  sub_23C8314AC(&qword_27E202760, type metadata accessor for TranscriptProtoResponseVisualOptions);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoResponseVisualOptions);
}

uint64_t sub_23C7ADAB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v8;
  return result;
}

uint64_t sub_23C7ADB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2033A0, type metadata accessor for TranscriptProtoResponseVisual);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7ADC24()
{
  sub_23C8314AC(&qword_27E202748, type metadata accessor for TranscriptProtoResponseVisual);

  return sub_23C8711F4();
}

uint64_t sub_23C7ADC90()
{
  sub_23C8314AC(&qword_27E202748, type metadata accessor for TranscriptProtoResponseVisual);

  return sub_23C871204();
}

uint64_t sub_23C7ADDB0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7ADEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203398, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7ADF7C()
{
  sub_23C8314AC(&qword_27E202760, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return sub_23C8711F4();
}

uint64_t sub_23C7ADFE8()
{
  sub_23C8314AC(&qword_27E202760, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return sub_23C871204();
}

uint64_t sub_23C7AE064(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7AE124()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200B08);
  __swift_project_value_buffer(v0, qword_27E200B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "archiveView";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "liveActivity";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "pluginSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "controlSnippet";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoUIType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        sub_23C7AEFE0(v5, a1, a2, a3);
      }

      else if (result == 5)
      {
        sub_23C7AF59C(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C7AE474(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C7AEA24(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7AE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039C0, &qword_23C8A0C10);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABE0, &qword_23C878F78);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABE0, &qword_23C878F78);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E2039C0, &qword_23C8A0C10);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoArchiveViewPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoArchiveViewPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2027B0, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2039C0, &qword_23C8A0C10);
  }

  sub_23C5855B0(v28, v36, &qword_27E2039C0, &qword_23C8A0C10);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2039C0, &qword_23C8A0C10);
    return sub_23C585C34(v36, &qword_27E2039C0, &qword_23C8A0C10);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoArchiveViewPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2039C0, &qword_23C8A0C10);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABE0, &qword_23C878F78);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoArchiveViewPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7AEA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039C8, &qword_23C8A0C18);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABE0, &qword_23C878F78);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABE0, &qword_23C878F78);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E2039C8, &qword_23C8A0C18);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoLiveActivityPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoLiveActivityPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2027C8, type metadata accessor for TranscriptProtoLiveActivityPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2039C8, &qword_23C8A0C18);
  }

  sub_23C5855B0(v28, v36, &qword_27E2039C8, &qword_23C8A0C18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2039C8, &qword_23C8A0C18);
    return sub_23C585C34(v36, &qword_27E2039C8, &qword_23C8A0C18);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoLiveActivityPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2039C8, &qword_23C8A0C18);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABE0, &qword_23C878F78);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoLiveActivityPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7AEFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039D0, &qword_23C8A0C20);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABE0, &qword_23C878F78);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABE0, &qword_23C878F78);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E2039D0, &qword_23C8A0C20);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2027E0, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2039D0, &qword_23C8A0C20);
  }

  sub_23C5855B0(v28, v36, &qword_27E2039D0, &qword_23C8A0C20);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2039D0, &qword_23C8A0C20);
    return sub_23C585C34(v36, &qword_27E2039D0, &qword_23C8A0C20);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2039D0, &qword_23C8A0C20);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABE0, &qword_23C878F78);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7AF59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoControlPayload(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoUitype(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039D8, &qword_23C8A0C28);
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
  sub_23C5855B0(a1, v14, &qword_27E1FABE0, &qword_23C878F78);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FABE0, &qword_23C878F78);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoUitype);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoUitype);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E2039D8, &qword_23C8A0C28);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoControlPayload);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoControlPayload);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoUitype);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2027F8, type metadata accessor for TranscriptProtoControlPayload);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2039D8, &qword_23C8A0C28);
  }

  sub_23C5855B0(v28, v36, &qword_27E2039D8, &qword_23C8A0C28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2039D8, &qword_23C8A0C28);
    return sub_23C585C34(v36, &qword_27E2039D8, &qword_23C8A0C28);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoControlPayload);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2039D8, &qword_23C8A0C28);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FABE0, &qword_23C878F78);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoControlPayload);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoUIType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FABE0, &qword_23C878F78);
  v12 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_10;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C7B0198(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7B03D0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C7AFF60(v3, a1, a2, a3);
  }

  else
  {
    sub_23C7AFD2C(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoUitype);
  if (!v4)
  {
LABEL_10:
    v15 = v3 + *(type metadata accessor for TranscriptProtoUIType(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7AFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABE0, &qword_23C878F78);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABE0, &qword_23C878F78);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
    sub_23C8314AC(&qword_27E2027B0, type metadata accessor for TranscriptProtoArchiveViewPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_23C7AFF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABE0, &qword_23C878F78);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABE0, &qword_23C878F78);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoLiveActivityPayload);
    sub_23C8314AC(&qword_27E2027C8, type metadata accessor for TranscriptProtoLiveActivityPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoLiveActivityPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_23C7B0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABE0, &qword_23C878F78);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABE0, &qword_23C878F78);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    sub_23C8314AC(&qword_27E2027E0, type metadata accessor for TranscriptProtoPluginSnippetPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_23C7B03D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABE0, &qword_23C878F78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoControlPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABE0, &qword_23C878F78);
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FABE0, &qword_23C878F78);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoControlPayload);
    sub_23C8314AC(&qword_27E2027F8, type metadata accessor for TranscriptProtoControlPayload);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoControlPayload);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoUitype);
  __break(1u);
  return result;
}

uint64_t sub_23C7B06B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203390, type metadata accessor for TranscriptProtoUIType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B0758()
{
  sub_23C8314AC(&qword_27E2018D8, type metadata accessor for TranscriptProtoUIType);

  return sub_23C8711F4();
}

uint64_t sub_23C7B07C4()
{
  sub_23C8314AC(&qword_27E2018D8, type metadata accessor for TranscriptProtoUIType);

  return sub_23C871204();
}

uint64_t sub_23C7B08CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD0, &unk_23C8A1300);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoLabel(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039B8, &qword_23C8A0C08);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E1FABD0, &unk_23C8A1300);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E1FABD0, &unk_23C8A1300);
    v30 = v44;
  }

  else
  {
    sub_23C83155C(v13, v21, type metadata accessor for TranscriptProtoLabel);
    sub_23C83155C(v21, v19, type metadata accessor for TranscriptProtoLabel);
    sub_23C585C34(v27, &qword_27E2039B8, &qword_23C8A0C08);
    v31 = v42;
    sub_23C83155C(v19, v42, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    sub_23C83155C(v31, v27, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C8314AC(&qword_27E202798, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E2039B8, &qword_23C8A0C08);
  }

  sub_23C5855B0(v27, v43, &qword_27E2039B8, &qword_23C8A0C08);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E2039B8, &qword_23C8A0C08);
    return sub_23C585C34(v33, &qword_27E2039B8, &qword_23C8A0C08);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E2039B8, &qword_23C8A0C08);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E1FABD0, &unk_23C8A1300);
    sub_23C83155C(v35, v36, type metadata accessor for TranscriptProtoUIConfirmationLabel);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C7B0E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABD0, &unk_23C8A1300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FABD0, &unk_23C8A1300);
  v13 = type metadata accessor for TranscriptProtoLabel(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FABD0, &unk_23C8A1300);
  }

  sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_23C8314AC(&qword_27E202798, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_23C871304();
  return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoUIConfirmationLabel);
}

uint64_t sub_23C7B1108(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203388, type metadata accessor for TranscriptProtoUILabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B11A8()
{
  sub_23C8314AC(&qword_27E2018E0, type metadata accessor for TranscriptProtoUILabel);

  return sub_23C8711F4();
}

uint64_t sub_23C7B1214()
{
  sub_23C8314AC(&qword_27E2018E0, type metadata accessor for TranscriptProtoUILabel);

  return sub_23C871204();
}

uint64_t sub_23C7B12B0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200B38);
  __swift_project_value_buffer(v0, qword_27E200B38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "affirmative";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "negative";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoUIConfirmationLabel.traverse<A>(visitor:)()
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
      v8 = v0 + *(type metadata accessor for TranscriptProtoUIConfirmationLabel(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7B1638(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203380, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B16D8()
{
  sub_23C8314AC(&qword_27E202798, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return sub_23C8711F4();
}

uint64_t sub_23C7B1744()
{
  sub_23C8314AC(&qword_27E202798, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return sub_23C871204();
}

uint64_t sub_23C7B17E0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200B50);
  __swift_project_value_buffer(v0, qword_27E200B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "viewData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "containerBundleId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "targetBundleId";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoArchiveViewPayload.traverse<A>(visitor:)()
{
  result = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(result + 16);
    v6 = *(result + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      result = sub_23C871264();
      if (v1)
      {
        return result;
      }

      goto LABEL_10;
    }

    v5 = result;
    v6 = result >> 32;
  }

  if (v5 != v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v0[3])
  {
    v7 = v0[2];
    result = sub_23C8712C4();
  }

  if (!v1)
  {
    if (v0[5])
    {
      v8 = v0[4];
      sub_23C8712C4();
    }

    v9 = v0 + *(type metadata accessor for TranscriptProtoArchiveViewPayload(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

double sub_23C7B1BA8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  v3 = a2 + *(a1 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  return result;
}

uint64_t sub_23C7B1C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203378, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B1CD4()
{
  sub_23C8314AC(&qword_27E2027B0, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7B1D40()
{
  sub_23C8314AC(&qword_27E2027B0, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return sub_23C871204();
}

uint64_t sub_23C7B1EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203370, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B1F7C()
{
  sub_23C8314AC(&qword_27E2027C8, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7B1FE8()
{
  sub_23C8314AC(&qword_27E2027C8, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return sub_23C871204();
}

uint64_t sub_23C7B2080()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200B80);
  __swift_project_value_buffer(v0, qword_27E200B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7B22D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_23C7B23EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
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
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7B2540(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203368, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B25E0()
{
  sub_23C8314AC(&qword_27E2027E0, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7B264C()
{
  sub_23C8314AC(&qword_27E2027E0, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return sub_23C871204();
}

uint64_t sub_23C7B26C8(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7B2848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_23C7B2940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7B2A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203360, type metadata accessor for TranscriptProtoControlPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B2B14()
{
  sub_23C8314AC(&qword_27E2027F8, type metadata accessor for TranscriptProtoControlPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7B2B80()
{
  sub_23C8314AC(&qword_27E2027F8, type metadata accessor for TranscriptProtoControlPayload);

  return sub_23C871204();
}

uint64_t sub_23C7B2BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_23C6F73FC(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7B2CC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200BB0);
  __swift_project_value_buffer(v0, qword_27E200BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
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
  *(v5 + v2) = 2;
  *v10 = "userAction";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemResponseEventId";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "input";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemPromptResolution.decodeMessage<A>(decoder:)()
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
        sub_23C871154();
      }

      else if (result == 2)
      {
        sub_23C7B307C();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_23C871164();
          break;
        case 4:
          sub_23C7B3130();
          break;
        case 6:
          sub_23C7B31E4();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C7B307C()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 24);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_23C8314AC(&qword_27E2028E0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  return sub_23C8711A4();
}

uint64_t sub_23C7B3130()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7B31E4()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 32);
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_23C8314AC(&qword_27E202828, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoSystemPromptResolution.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (v3[3])
  {
    v8 = v3[2];
    result = sub_23C8712C4();
  }

  if (!v4)
  {
    sub_23C7B339C(v3, v7, a2, a3);
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_23C8712C4();
    }

    sub_23C7B35B8(v3, v7, a2, a3);
    sub_23C7B37D4(v3, v7, a2, a3);
    v12 = v3 + *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 36);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7B339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039A8, &qword_23C8A0BF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E2039A8, &qword_23C8A0BF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E2039A8, &qword_23C8A0BF8);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_23C8314AC(&qword_27E2028E0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
}

uint64_t sub_23C7B35B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
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

uint64_t sub_23C7B37D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203998, &unk_23C8A1310);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_23C5855B0(a1 + *(v14 + 32), v8, &qword_27E203998, &unk_23C8A1310);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203998, &unk_23C8A1310);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_23C8314AC(&qword_27E202828, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
}

uint64_t sub_23C7B3A3C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = &a2[a1[9]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7B3B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203358, type metadata accessor for TranscriptProtoSystemPromptResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B3C38()
{
  sub_23C8314AC(&qword_27E202810, type metadata accessor for TranscriptProtoSystemPromptResolution);

  return sub_23C8711F4();
}

uint64_t sub_23C7B3CA4()
{
  sub_23C8314AC(&qword_27E202810, type metadata accessor for TranscriptProtoSystemPromptResolution);

  return sub_23C871204();
}

uint64_t sub_23C7B3D40()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200BC8);
  __swift_project_value_buffer(v0, qword_27E200BC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "touch";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "headGesture";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "speech";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemPromptResolutionInput.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3)
        {
          sub_23C7B40F4(v5, a1, a2, a3);
        }

        else if (result == 4)
        {
          sub_23C7B46A4(v5, a1, a2, a3);
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
          v15 = 2;
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
          v15 = 3;
        }

        sub_23C745DD8(v11, v12, v13, v14, &qword_27E201938, &qword_23C88DBE8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum, v15);
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7B40F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201938, &qword_23C88DBE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
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
  sub_23C5855B0(a1, v14, &qword_27E201938, &qword_23C88DBE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201938, &qword_23C88DBE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
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
    sub_23C585C34(v42, &qword_27E201938, &qword_23C88DBE8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestContentTextContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7B46A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201938, &qword_23C88DBE8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
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
  sub_23C5855B0(a1, v14, &qword_27E201938, &qword_23C88DBE8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201938, &qword_23C88DBE8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
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
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
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
    sub_23C585C34(v42, &qword_27E201938, &qword_23C88DBE8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSystemPromptResolutionInput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201938, &qword_23C88DBE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201938, &qword_23C88DBE8);
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      result = sub_23C7B4E9C(v3, a1, a2, a3, &qword_27E201938, &qword_23C88DBE8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_23C7B50D0(v3, a1, a2, a3, &qword_27E201938, &qword_23C88DBE8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (v4)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C7B5538(v3, a1, a2, a3);
  }

  else
  {
    sub_23C7B5304(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7B4E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v25[2] = a3;
  v25[5] = a4;
  v25[1] = a2;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v25 - v20;
  sub_23C5855B0(a1, v25 - v20, a5, a6);
  v22 = a7(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    result = sub_23C585C34(v21, a5, a6);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v21, a8);
    if (EnumCaseMultiPayload == 2)
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

uint64_t sub_23C7B50D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v25[2] = a3;
  v25[5] = a4;
  v25[1] = a2;
  v13 = sub_23C870E84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v25 - v20;
  sub_23C5855B0(a1, v25 - v20, a5, a6);
  v22 = a7(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    result = sub_23C585C34(v21, a5, a6);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v21, a8);
    if (EnumCaseMultiPayload == 3)
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

uint64_t sub_23C7B5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201938, &qword_23C88DBE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201938, &qword_23C88DBE8);
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201938, &qword_23C88DBE8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_23C8314AC(&qword_27E201E58, type metadata accessor for TranscriptProtoRequestContentTextContent);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContentTextContent);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7B5538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201938, &qword_23C88DBE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201938, &qword_23C88DBE8);
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201938, &qword_23C88DBE8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_23C8314AC(&qword_27E201E70, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7B5820(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203350, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B58C0()
{
  sub_23C8314AC(&qword_27E202828, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);

  return sub_23C8711F4();
}

uint64_t sub_23C7B592C()
{
  sub_23C8314AC(&qword_27E202828, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);

  return sub_23C871204();
}

uint64_t sub_23C7B59C8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200BE0);
  __swift_project_value_buffer(v0, qword_27E200BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C875550;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 3;
  *v4 = "resolvedParameters";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 4;
  *v8 = "unresolvedParameterSets";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 6;
  *v10 = "isConfirmed";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 8;
  *v14 = "isAuthenticated";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "tool";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t TranscriptProtoActionResolverRequest.decodeMessage<A>(decoder:)()
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

      if (result <= 6)
      {
        break;
      }

      switch(result)
      {
        case 7:
          sub_23C7B5EE8();
          break;
        case 8:
          goto LABEL_18;
        case 9:
          sub_23C7B5F9C();
          break;
      }

LABEL_5:
      result = sub_23C871044();
    }

    if (result == 3)
    {
      sub_23C7B5E34();
      goto LABEL_5;
    }

    if (result == 4)
    {
      type metadata accessor for TranscriptProtoParameterSet(0);
      sub_23C8314AC(&qword_27E201948, type metadata accessor for TranscriptProtoParameterSet);
      sub_23C871194();
      goto LABEL_5;
    }

    if (result != 6)
    {
      goto LABEL_5;
    }

LABEL_18:
    sub_23C871084();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_23C7B5E34()
{
  v0 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 28);
  type metadata accessor for TranscriptProtoParameterSet(0);
  sub_23C8314AC(&qword_27E201948, type metadata accessor for TranscriptProtoParameterSet);
  return sub_23C8711A4();
}

uint64_t sub_23C7B5EE8()
{
  v0 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7B5F9C()
{
  v0 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoActionResolverRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C7B61D0(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for TranscriptProtoParameterSet(0);
      sub_23C8314AC(&qword_27E201948, type metadata accessor for TranscriptProtoParameterSet);
      sub_23C8712F4();
    }

    if (v5[8] == 1)
    {
      sub_23C871244();
    }

    sub_23C7B63EC(v5, a1, a2, a3);
    if (v5[9] == 1)
    {
      sub_23C871244();
    }

    sub_23C7B6608(v5, a1, a2, a3);
    v11 = &v5[*(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 40)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7B61D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203970, &unk_23C8A1320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoParameterSet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  sub_23C5855B0(a1 + *(v14 + 28), v8, &qword_27E203970, &unk_23C8A1320);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203970, &unk_23C8A1320);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoParameterSet);
  sub_23C8314AC(&qword_27E201948, type metadata accessor for TranscriptProtoParameterSet);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoParameterSet);
}

uint64_t sub_23C7B63EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
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

uint64_t sub_23C7B6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
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

uint64_t sub_23C7B6870@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = a2 + a1[10];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23C7B69D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203348, type metadata accessor for TranscriptProtoActionResolverRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B6A70()
{
  sub_23C8314AC(&qword_27E202840, type metadata accessor for TranscriptProtoActionResolverRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7B6ADC()
{
  sub_23C8314AC(&qword_27E202840, type metadata accessor for TranscriptProtoActionResolverRequest);

  return sub_23C871204();
}

uint64_t sub_23C7B6B78()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200BF8);
  __swift_project_value_buffer(v0, qword_27E200BF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "requiredContext";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "utteranceContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoContextRetrieved.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3 || result == 4)
      {
        type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
        sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t TranscriptProtoContextRetrieved.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement), result = sub_23C8712F4(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement), result = sub_23C8712F4(), !v1))
    {
      v3 = v0 + *(type metadata accessor for TranscriptProtoContextRetrieved(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static TranscriptProtoContextRetrieved.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_23C5D6494(*a1, *a2) & 1) == 0 || (sub_23C5D6494(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TranscriptProtoContextRetrieved(0) + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7B70F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v5;
  return result;
}

uint64_t sub_23C7B717C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203340, type metadata accessor for TranscriptProtoContextRetrieved);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B721C()
{
  sub_23C8314AC(&qword_27E202858, type metadata accessor for TranscriptProtoContextRetrieved);

  return sub_23C8711F4();
}

uint64_t sub_23C7B7288()
{
  sub_23C8314AC(&qword_27E202858, type metadata accessor for TranscriptProtoContextRetrieved);

  return sub_23C871204();
}

uint64_t sub_23C7B7304(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_23C5D6494(*a1, *a2) & 1) == 0 || (sub_23C5D6494(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7B73D8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200C10);
  __swift_project_value_buffer(v0, qword_27E200C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "retrievedContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoRetrievedContextStatement.decodeMessage<A>(decoder:)()
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
        sub_23C7B76C4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7B76C4()
{
  v0 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(0) + 20);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_23C8314AC(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);
  return sub_23C8711A4();
}

uint64_t sub_23C7B77CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA8, &qword_23C878F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoRetrievedContext(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FABA8, &qword_23C878F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FABA8, &qword_23C878F50);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ContextProtoRetrievedContext);
  sub_23C8314AC(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ContextProtoRetrievedContext);
}

uint64_t sub_23C7B7AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203338, type metadata accessor for TranscriptProtoRetrievedContextStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B7B4C()
{
  sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement);

  return sub_23C8711F4();
}

uint64_t sub_23C7B7BB8()
{
  sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement);

  return sub_23C871204();
}

uint64_t sub_23C7B7C54()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200C28);
  __swift_project_value_buffer(v0, qword_27E200C28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumerationEntity";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.decodeMessage<A>(decoder:)()
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
        sub_23C7B7F40();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7B7F40()
{
  v0 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0) + 20);
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_23C8314AC(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  return sub_23C8711A4();
}

uint64_t sub_23C7B8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE8, &unk_23C8A1330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAAE8, &unk_23C8A1330);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAE8, &unk_23C8A1330);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_23C8314AC(&qword_27E1FA4E8, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ContextProtoDynamicEnumerationEntity);
}

uint64_t sub_23C7B82DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(a1 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7B83F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203330, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B8490()
{
  sub_23C8314AC(&qword_27E201C70, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);

  return sub_23C8711F4();
}

uint64_t sub_23C7B84FC()
{
  sub_23C8314AC(&qword_27E201C70, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);

  return sub_23C871204();
}

uint64_t sub_23C7B862C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203328, type metadata accessor for TranscriptProtoSafetyModeRelease);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B86CC()
{
  sub_23C8314AC(&qword_27E202890, type metadata accessor for TranscriptProtoSafetyModeRelease);

  return sub_23C8711F4();
}

uint64_t sub_23C7B8738()
{
  sub_23C8314AC(&qword_27E202890, type metadata accessor for TranscriptProtoSafetyModeRelease);

  return sub_23C871204();
}

uint64_t sub_23C7B8914(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203320, type metadata accessor for TranscriptProtoSafetyModeException);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B89B4()
{
  sub_23C8314AC(&qword_27E2028A8, type metadata accessor for TranscriptProtoSafetyModeException);

  return sub_23C8711F4();
}

uint64_t sub_23C7B8A20()
{
  sub_23C8314AC(&qword_27E2028A8, type metadata accessor for TranscriptProtoSafetyModeException);

  return sub_23C871204();
}

uint64_t sub_23C7B8B84(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(0);
      sub_23C8314AC(a5, a6);
      sub_23C871194();
    }
  }

  return result;
}

uint64_t TranscriptProtoParameterSet.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoParameter(0), sub_23C8314AC(&qword_27E201988, type metadata accessor for TranscriptProtoParameter), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoParameterSet(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7B8E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203318, type metadata accessor for TranscriptProtoParameterSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B8EA4()
{
  sub_23C8314AC(&qword_27E201948, type metadata accessor for TranscriptProtoParameterSet);

  return sub_23C8711F4();
}

uint64_t sub_23C7B8F10()
{
  sub_23C8314AC(&qword_27E201948, type metadata accessor for TranscriptProtoParameterSet);

  return sub_23C871204();
}

uint64_t sub_23C7B8FC0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200C88);
  __swift_project_value_buffer(v0, qword_27E200C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
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
  *v10 = "collectionIndex";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "candidate";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoParameter.decodeMessage<A>(decoder:)()
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
        sub_23C7B92A8();
        break;
      case 2:
        sub_23C871104();
        break;
      case 1:
        sub_23C871164();
        break;
    }
  }

  return result;
}

uint64_t sub_23C7B92A8()
{
  v0 = *(type metadata accessor for TranscriptProtoParameter(0) + 24);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v9 = *(v3 + 8);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_23C8712C4(), !v4))
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      v11 = *(v3 + 16);
      result = sub_23C871294();
    }

    if (!v4)
    {
      sub_23C7B942C(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for TranscriptProtoParameter(0) + 28);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7B942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB98, &qword_23C878F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoCandidate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoParameter(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAB98, &qword_23C878F40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB98, &qword_23C878F40);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoCandidate);
  sub_23C8314AC(&qword_27E2017D8, type metadata accessor for TranscriptProtoCandidate);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoCandidate);
}

uint64_t sub_23C7B96AC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v5 = *(a1 + 24);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(a3 + v5, 1, 1, v6);
  v7 = a3 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7B978C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203310, type metadata accessor for TranscriptProtoParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7B982C()
{
  sub_23C8314AC(&qword_27E201988, type metadata accessor for TranscriptProtoParameter);

  return sub_23C8711F4();
}

uint64_t sub_23C7B9898()
{
  sub_23C8314AC(&qword_27E201988, type metadata accessor for TranscriptProtoParameter);

  return sub_23C871204();
}

uint64_t sub_23C7B9934()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200CA0);
  __swift_project_value_buffer(v0, qword_27E200CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionConfirmed";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterValueSelected";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameterConfirmed";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "disambiguationIndexSelected";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "requirementAddressed";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "actionCanceled";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemPromptResolutionUserAction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 5)
      {
        switch(result)
        {
          case 6:
            sub_23C7CD6C0(a1, v5, a2, a3, &qword_27E2019A0, &unk_23C8A1340, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum, 3);
            break;
          case 7:
            sub_23C7BA568(v5, a1, a2, a3);
            break;
          case 8:
            sub_23C7BAB24(v5, a1, a2, a3);
            break;
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
          v15 = 0;
LABEL_17:
          sub_23C7BA388(v11, v12, v13, v14, &qword_27E2019A0, &unk_23C8A1340, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum, v15);
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
          goto LABEL_17;
        }

        sub_23C7B9DCC(v5, a1, a2, a3);
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7B9DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
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
  sub_23C5855B0(a1, v14, &qword_27E2019A0, &unk_23C8A1340);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2019A0, &unk_23C8A1340);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C83155C(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      v33 = v48;
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
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB68, &unk_23C879140);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2019A0, &unk_23C8A1340);
    sub_23C83155C(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7BA388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v29 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v24 - v17;
  v30 = 2;
  result = sub_23C871074();
  if (!v8)
  {
    v28 = a2;
    if (v30 != 2)
    {
      v24[0] = a3;
      v24[1] = a4;
      v26 = v30;
      v27 = 0;
      sub_23C5855B0(v28, v18, a5, a6);
      v20 = a7(0);
      v25 = *(v20 - 8);
      v21 = (*(v25 + 48))(v18, 1, v20);
      sub_23C585C34(v18, a5, a6);
      if (v21 != 1)
      {
        v22 = v27;
        result = sub_23C871054();
        if (v22)
        {
          return result;
        }

        v27 = 0;
      }

      v23 = v28;
      sub_23C585C34(v28, a5, a6);
      *v23 = v26 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v25 + 56))(v23, 0, 1, v20);
    }
  }

  return result;
}

uint64_t sub_23C7BA568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203960, &qword_23C8A0BC0);
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
  sub_23C5855B0(a1, v14, &qword_27E2019A0, &unk_23C8A1340);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2019A0, &unk_23C8A1340);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E203960, &qword_23C8A0BC0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202910, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203960, &qword_23C8A0BC0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203960, &qword_23C8A0BC0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203960, &qword_23C8A0BC0);
    return sub_23C585C34(v36, &qword_27E203960, &qword_23C8A0BC0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203960, &qword_23C8A0BC0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2019A0, &unk_23C8A1340);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7BAB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203968, &qword_23C8A0BC8);
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
  sub_23C5855B0(a1, v14, &qword_27E2019A0, &unk_23C8A1340);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E2019A0, &unk_23C8A1340);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E203968, &qword_23C8A0BC8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2028F8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203968, &qword_23C8A0BC8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203968, &qword_23C8A0BC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203968, &qword_23C8A0BC8);
    return sub_23C585C34(v36, &qword_27E203968, &qword_23C8A0BC8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203968, &qword_23C8A0BC8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E2019A0, &unk_23C8A1340);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoSystemPromptResolutionUserAction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E2019A0, &unk_23C8A1340);
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          sub_23C7BB968(v3, a1, a2, a3);
        }

        else
        {
          sub_23C7BBBA0(v3, a1, a2, a3);
        }

LABEL_16:
        result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        if (v4)
        {
          return result;
        }

        goto LABEL_17;
      }

      result = sub_23C7BB804(v3);
      if (v4)
      {
        return result;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_23C7BB468(v3, a1, a2, a3);
        goto LABEL_16;
      }

      result = sub_23C7BB6A0(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_23C7BB308(v3);
      if (v4)
      {
        return result;
      }
    }
  }

LABEL_17:
  v15 = v3 + *(type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C7BB308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_23C5855B0(a1, &v9 - v4, &qword_27E2019A0, &unk_23C8A1340);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E2019A0, &unk_23C8A1340);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    return sub_23C871244();
  }

  result = sub_23C8315C4(v5, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7BB468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2019A0, &unk_23C8A1340);
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2019A0, &unk_23C8A1340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7BB6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_23C5855B0(a1, &v9 - v4, &qword_27E2019A0, &unk_23C8A1340);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E2019A0, &unk_23C8A1340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    return sub_23C871244();
  }

  result = sub_23C8315C4(v5, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7BB804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - v4);
  sub_23C5855B0(a1, &v9 - v4, &qword_27E2019A0, &unk_23C8A1340);
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E2019A0, &unk_23C8A1340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = *v5;
    return sub_23C871294();
  }

  result = sub_23C8315C4(v5, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7BB968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2019A0, &unk_23C8A1340);
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2019A0, &unk_23C8A1340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    sub_23C8314AC(&qword_27E202910, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7BBBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2019A0, &unk_23C8A1340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E2019A0, &unk_23C8A1340);
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E2019A0, &unk_23C8A1340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
    sub_23C8314AC(&qword_27E2028F8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7BBE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203308, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BBF28()
{
  sub_23C8314AC(&qword_27E2028E0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);

  return sub_23C8711F4();
}

uint64_t sub_23C7BBF94()
{
  sub_23C8314AC(&qword_27E2028E0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);

  return sub_23C871204();
}

uint64_t sub_23C7BC0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203300, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BC164()
{
  sub_23C8314AC(&qword_27E2028F8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return sub_23C8711F4();
}

uint64_t sub_23C7BC1D0()
{
  sub_23C8314AC(&qword_27E2028F8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return sub_23C871204();
}

uint64_t sub_23C7BC2C0()
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

uint64_t sub_23C7BC35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (*v4 == 1)
  {
    result = sub_23C871244();
    if (v5)
    {
      return result;
    }

    v8 = a4(0);
  }

  else
  {
    v8 = a4(0);
  }

  v9 = &v4[*(v8 + 20)];
  return sub_23C870F14();
}

uint64_t sub_23C7BC49C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032F8, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BC53C()
{
  sub_23C8314AC(&qword_27E202910, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return sub_23C8711F4();
}

uint64_t sub_23C7BC5A8()
{
  sub_23C8314AC(&qword_27E202910, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return sub_23C871204();
}

uint64_t sub_23C7BC640()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200CE8);
  __swift_project_value_buffer(v0, qword_27E200CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "dependencies";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7BC870(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 4)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7BC91C()
{
  v0 = *(type metadata accessor for TranscriptProtoVariableSetter(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C7BC9D0()
{
  sub_23C870EF4();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue);
  return sub_23C871024();
}

uint64_t TranscriptProtoVariableSetter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C7BCC1C(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      sub_23C870EF4();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8314AC(&qword_27E1FD568, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C871214();
    }

    v8 = v5 + *(type metadata accessor for TranscriptProtoVariableSetter(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7BCC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoVariableSetter(0);
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

uint64_t sub_23C7BCEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032F0, type metadata accessor for TranscriptProtoVariableSetter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BCF9C()
{
  sub_23C8314AC(&qword_27E2019C8, type metadata accessor for TranscriptProtoVariableSetter);

  return sub_23C8711F4();
}

uint64_t sub_23C7BD008()
{
  sub_23C8314AC(&qword_27E2019C8, type metadata accessor for TranscriptProtoVariableSetter);

  return sub_23C871204();
}

uint64_t sub_23C7BD0A4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200D00);
  __swift_project_value_buffer(v0, qword_27E200D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "setters";
  *(v6 + 8) = 7;
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
  return sub_23C871324();
}

uint64_t TranscriptProtoVariableStep.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for TranscriptProtoVariableSetter(0);
        sub_23C8314AC(&qword_27E2019C8, type metadata accessor for TranscriptProtoVariableSetter);
        sub_23C871194();
      }

      else if (result == 3)
      {
        sub_23C7BD390();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7BD390()
{
  v0 = *(type metadata accessor for TranscriptProtoVariableStep(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoVariableStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TranscriptProtoVariableSetter(0), sub_23C8314AC(&qword_27E2019C8, type metadata accessor for TranscriptProtoVariableSetter), result = sub_23C8712F4(), !v4))
  {
    result = sub_23C7BD540(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for TranscriptProtoVariableStep(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7BD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoVariableStep(0);
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

uint64_t sub_23C7BD7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032E8, type metadata accessor for TranscriptProtoVariableStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BD894()
{
  sub_23C8314AC(&qword_27E202938, type metadata accessor for TranscriptProtoVariableStep);

  return sub_23C8711F4();
}

uint64_t sub_23C7BD900()
{
  sub_23C8314AC(&qword_27E202938, type metadata accessor for TranscriptProtoVariableStep);

  return sub_23C871204();
}

uint64_t sub_23C7BD99C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200D18);
  __swift_project_value_buffer(v0, qword_27E200D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fn";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7BDBB0()
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019E0, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C871024();
}

uint64_t TranscriptProtoASTFlatExprCallVariant.traverse<A>(visitor:)()
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
    if (!*(v0[2] + 16) || (sub_23C870EE4(), type metadata accessor for TranscriptProtoASTFlatValue(0), sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue), sub_23C8314AC(&qword_27E2019E0, type metadata accessor for TranscriptProtoASTFlatValue), result = sub_23C871214(), !v1))
    {
      v6 = v0 + *(type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

unint64_t sub_23C7BDE88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  result = sub_23C59A0E0(MEMORY[0x277D84F90]);
  a2[2] = result;
  return result;
}

uint64_t sub_23C7BDF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032E0, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BDFB8()
{
  sub_23C8314AC(&qword_27E202950, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BE024()
{
  sub_23C8314AC(&qword_27E202950, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BE0A0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_23C872014() & 1) == 0 || (sub_23C7FBAD0(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7BE2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032D8, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BE368()
{
  sub_23C8314AC(&qword_27E202968, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BE3D4()
{
  sub_23C8314AC(&qword_27E202968, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BE46C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200D48);
  __swift_project_value_buffer(v0, qword_27E200D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawEventId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pickType";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}