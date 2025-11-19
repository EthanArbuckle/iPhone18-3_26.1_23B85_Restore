uint64_t sub_23C7BE684()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_23C8314AC(&qword_27E202A10, type metadata accessor for TranscriptProtoASTPickType);
  return sub_23C8711A4();
}

uint64_t sub_23C7BE778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203928, &qword_23C8A0B88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTPickType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203928, &qword_23C8A0B88);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203928, &qword_23C8A0B88);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTPickType);
  sub_23C8314AC(&qword_27E202A10, type metadata accessor for TranscriptProtoASTPickType);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTPickType);
}

uint64_t sub_23C7BEA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032D0, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BEAE4()
{
  sub_23C8314AC(&qword_27E202980, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BEB50()
{
  sub_23C8314AC(&qword_27E202980, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032C8, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BED8C()
{
  sub_23C8314AC(&qword_27E202998, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BEDF8()
{
  sub_23C8314AC(&qword_27E202998, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BEEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (v4[1])
  {
    v7 = *v4;
    result = sub_23C8712C4();
  }

  if (!v5)
  {
    v9 = v4 + *(a4(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7BF040(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032C0, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BF0E0()
{
  sub_23C8314AC(&qword_27E2029B0, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BF14C()
{
  sub_23C8314AC(&qword_27E2029B0, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BF314(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032B8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BF3B4()
{
  sub_23C8314AC(&qword_27E2029C8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BF420()
{
  sub_23C8314AC(&qword_27E2029C8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BF5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032B0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BF658()
{
  sub_23C8314AC(&qword_27E2029E0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BF6C4()
{
  sub_23C8314AC(&qword_27E2029E0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BF7F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032A8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BF890()
{
  sub_23C8314AC(&qword_27E2029F8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7BF8FC()
{
  sub_23C8314AC(&qword_27E2029F8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return sub_23C871204();
}

uint64_t sub_23C7BF994()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200DD8);
  __swift_project_value_buffer(v0, qword_27E200DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoASTPickType.decodeMessage<A>(decoder:)()
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
      sub_23C7BFC18();
    }

    else if (result == 3)
    {
      sub_23C7BFCAC();
    }
  }

  return result;
}

uint64_t TranscriptProtoASTPickType.traverse<A>(visitor:)()
{
  v2 = *(v0 + 8);
  if (v2 == 255)
  {
    goto LABEL_4;
  }

  if (v2)
  {
    v3 = *v0;
    result = sub_23C871244();
    if (v1)
    {
      return result;
    }

    goto LABEL_4;
  }

  v6 = *v0;
  result = sub_23C871294();
  if (!v1)
  {
LABEL_4:
    v5 = v0 + *(type metadata accessor for TranscriptProtoASTPickType(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7BFE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = -1;
  v2 = a2 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7BFEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2032A0, type metadata accessor for TranscriptProtoASTPickType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7BFF54()
{
  sub_23C8314AC(&qword_27E202A10, type metadata accessor for TranscriptProtoASTPickType);

  return sub_23C8711F4();
}

uint64_t sub_23C7BFFC0()
{
  sub_23C8314AC(&qword_27E202A10, type metadata accessor for TranscriptProtoASTPickType);

  return sub_23C871204();
}

uint64_t sub_23C7C005C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200DF0);
  __swift_project_value_buffer(v0, qword_27E200DF0);
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
  *v11 = "pickOne";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7C02AC()
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
      sub_23C871084();
    }

    else if (result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C7C0378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
      if (*(v4 + 17) != 1 || (result = sub_23C871244(), !v5))
      {
        v11 = v4 + *(a4(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7C04E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C7C0550(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203298, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C05F0()
{
  sub_23C8314AC(&qword_27E202A28, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7C065C()
{
  sub_23C8314AC(&qword_27E202A28, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);

  return sub_23C871204();
}

uint64_t sub_23C7C07B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203290, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C0858()
{
  sub_23C8314AC(&qword_27E202A40, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7C08C4()
{
  sub_23C8314AC(&qword_27E202A40, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoASTFlatExprUpdateParametersVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0), sub_23C8314AC(&qword_27E201A40, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7C0B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203288, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C0C3C()
{
  sub_23C8314AC(&qword_27E202A58, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7C0CA8()
{
  sub_23C8314AC(&qword_27E202A58, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return sub_23C871204();
}

uint64_t sub_23C7C0DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203280, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C0E8C()
{
  sub_23C8314AC(&qword_27E202A70, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);

  return sub_23C8711F4();
}

uint64_t sub_23C7C0EF8()
{
  sub_23C8314AC(&qword_27E202A70, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);

  return sub_23C871204();
}

uint64_t sub_23C7C0F90()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200E50);
  __swift_project_value_buffer(v0, qword_27E200E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "path";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.decodeMessage<A>(decoder:)()
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
          sub_23C7C1414();
        }

        else if (result == 4)
        {
          sub_23C821BD8();
          sub_23C8710A4();
        }
      }

      else if (result == 1)
      {
        sub_23C7C1360();
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoASTFlatValue(0);
        sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7C1360()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 24);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t sub_23C7C1414()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 28);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C7C1624(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for TranscriptProtoASTFlatValue(0);
      sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8712F4();
    }

    sub_23C7C1840(v5, a1, a2, a3);
    if (v5[8] == 1)
    {
      sub_23C821BD8();
      sub_23C871254();
    }

    v11 = &v5[*(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 32)];
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7C1624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_23C5855B0(a1 + *(updated + 24), v8, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7C1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  sub_23C5855B0(a1 + *(updated + 28), v8, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7C1AA8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[7], 1, 1, v5);
  v7 = a2 + a1[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23C7C1BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203278, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C1C4C()
{
  sub_23C8314AC(&qword_27E201A40, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7C1CB8()
{
  sub_23C8314AC(&qword_27E201A40, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);

  return sub_23C871204();
}

uint64_t sub_23C7C1D94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_23C7C1E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    v11 = v4 + *(a4(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7C1F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203270, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C2018()
{
  sub_23C8314AC(&qword_27E202A98, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7C2084()
{
  sub_23C8314AC(&qword_27E202A98, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);

  return sub_23C871204();
}

uint64_t sub_23C7C2230(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203268, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C22D0()
{
  sub_23C8314AC(&qword_27E202AB0, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7C233C()
{
  sub_23C8314AC(&qword_27E202AB0, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);

  return sub_23C871204();
}

uint64_t sub_23C7C23D4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200E98);
  __swift_project_value_buffer(v0, qword_27E200E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7C25EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
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
      a4(a1, v7, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C7C268C()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t sub_23C7C2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = *v5;
    v10 = v5[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_23C8712C4();
    }

    v12 = v5 + *(a5(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7C2844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7C2B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203260, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7C2BB0()
{
  sub_23C8314AC(&qword_27E202AC8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7C2C1C()
{
  sub_23C8314AC(&qword_27E202AC8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);

  return sub_23C871204();
}

uint64_t sub_23C7C2CB8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200EB0);
  __swift_project_value_buffer(v0, qword_27E200EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_23C88DBA0;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v45 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prefix";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v45 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "infix";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v45 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dot";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v45 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "index";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v45 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "call";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v45 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "endOfPlan";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v45 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "say";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v45 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "pick";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v45 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "confirm";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v45 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "search";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v45 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "pickOne";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v8();
  v29 = (v45 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "noMatchingTool";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v45 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "undo";
  *(v32 + 1) = 4;
  v32[16] = 2;
  v8();
  v33 = (v45 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "resolveTool";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v45 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "reject";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v8();
  v37 = v45 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "cancel";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v45 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "continuePlanning";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v45 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "updateParameters";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v45 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "getMentionedApps";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoASTFlatExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C7C35F4(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C7C3BA4(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C7C4160(v5, a1, a2, a3);
          break;
        case 4:
          sub_23C7C471C(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C7C4CD8(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C7C5294(v5, a1, a2, a3);
          break;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 18;
          goto LABEL_18;
        case 9:
          sub_23C7C5850(v5, a1, a2, a3);
          break;
        case 10:
          sub_23C7C5E0C(v5, a1, a2, a3);
          break;
        case 11:
          sub_23C7C63C8(v5, a1, a2, a3);
          break;
        case 12:
          sub_23C7C6984(v5, a1, a2, a3);
          break;
        case 13:
          sub_23C7C6F40(v5, a1, a2, a3);
          break;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 19;
LABEL_18:
          sub_23C745DD8(v11, v12, v13, v14, &qword_27E201A80, &qword_23C88DBF0, type metadata accessor for TranscriptProtoAstflatExprEnum, v15);
          break;
        case 15:
          sub_23C7C74FC(v5, a1, a2, a3);
          break;
        case 16:
          sub_23C7C7AB8(v5, a1, a2, a3);
          break;
        case 17:
          sub_23C7C8074(v5, a1, a2, a3);
          break;
        case 18:
          sub_23C7C8630(v5, a1, a2, a3);
          break;
        case 19:
          sub_23C7C8BEC(v5, a1, a2, a3);
          break;
        case 20:
          sub_23C7C91A8(v5, a1, a2, a3);
          break;
        case 21:
          sub_23C7C9764(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7C35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E1FAB88, &unk_23C8A1350);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAB88, &unk_23C8A1350);
    return sub_23C585C34(v36, &qword_27E1FAB88, &unk_23C8A1350);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoASTFlatValue);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAB88, &unk_23C8A1350);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C3BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038A0, &qword_23C8A0B00);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E2038A0, &qword_23C8A0B00);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202BE0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038A0, &qword_23C8A0B00);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038A0, &qword_23C8A0B00);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038A0, &qword_23C8A0B00);
    return sub_23C585C34(v36, &qword_27E2038A0, &qword_23C8A0B00);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038A0, &qword_23C8A0B00);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C4160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038A8, &qword_23C8A0B08);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E2038A8, &qword_23C8A0B08);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202B50, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038A8, &qword_23C8A0B08);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038A8, &qword_23C8A0B08);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038A8, &qword_23C8A0B08);
    return sub_23C585C34(v36, &qword_27E2038A8, &qword_23C8A0B08);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038A8, &qword_23C8A0B08);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C471C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038B0, &qword_23C8A0B10);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E2038B0, &qword_23C8A0B10);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202AC8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038B0, &qword_23C8A0B10);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038B0, &qword_23C8A0B10);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038B0, &qword_23C8A0B10);
    return sub_23C585C34(v36, &qword_27E2038B0, &qword_23C8A0B10);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038B0, &qword_23C8A0B10);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C4CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038B8, &qword_23C8A0B18);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E2038B8, &qword_23C8A0B18);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202B38, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038B8, &qword_23C8A0B18);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038B8, &qword_23C8A0B18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038B8, &qword_23C8A0B18);
    return sub_23C585C34(v36, &qword_27E2038B8, &qword_23C8A0B18);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038B8, &qword_23C8A0B18);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C5294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038C0, &qword_23C8A0B20);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E2038C0, &qword_23C8A0B20);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202950, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038C0, &qword_23C8A0B20);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038C0, &qword_23C8A0B20);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038C0, &qword_23C8A0B20);
    return sub_23C585C34(v36, &qword_27E2038C0, &qword_23C8A0B20);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038C0, &qword_23C8A0B20);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C5850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038C8, &qword_23C8A0B28);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E2038C8, &qword_23C8A0B28);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202968, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038C8, &qword_23C8A0B28);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038C8, &qword_23C8A0B28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038C8, &qword_23C8A0B28);
    return sub_23C585C34(v36, &qword_27E2038C8, &qword_23C8A0B28);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038C8, &qword_23C8A0B28);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C5E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038D0, &qword_23C8A0B30);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E2038D0, &qword_23C8A0B30);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202980, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038D0, &qword_23C8A0B30);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038D0, &qword_23C8A0B30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038D0, &qword_23C8A0B30);
    return sub_23C585C34(v36, &qword_27E2038D0, &qword_23C8A0B30);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038D0, &qword_23C8A0B30);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C63C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038D8, &qword_23C8A0B38);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E2038D8, &qword_23C8A0B38);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202998, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038D8, &qword_23C8A0B38);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038D8, &qword_23C8A0B38);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038D8, &qword_23C8A0B38);
    return sub_23C585C34(v36, &qword_27E2038D8, &qword_23C8A0B38);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038D8, &qword_23C8A0B38);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C6984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038E0, &qword_23C8A0B40);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v28, &qword_27E2038E0, &qword_23C8A0B40);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202A28, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038E0, &qword_23C8A0B40);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038E0, &qword_23C8A0B40);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038E0, &qword_23C8A0B40);
    return sub_23C585C34(v36, &qword_27E2038E0, &qword_23C8A0B40);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038E0, &qword_23C8A0B40);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C6F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038E8, &qword_23C8A0B48);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v28, &qword_27E2038E8, &qword_23C8A0B48);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202A98, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038E8, &qword_23C8A0B48);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038E8, &qword_23C8A0B48);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038E8, &qword_23C8A0B48);
    return sub_23C585C34(v36, &qword_27E2038E8, &qword_23C8A0B48);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038E8, &qword_23C8A0B48);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C74FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038F0, &qword_23C8A0B50);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v28, &qword_27E2038F0, &qword_23C8A0B50);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2029B0, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038F0, &qword_23C8A0B50);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038F0, &qword_23C8A0B50);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038F0, &qword_23C8A0B50);
    return sub_23C585C34(v36, &qword_27E2038F0, &qword_23C8A0B50);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038F0, &qword_23C8A0B50);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C7AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2038F8, &qword_23C8A0B58);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v28, &qword_27E2038F8, &qword_23C8A0B58);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202AB0, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2038F8, &qword_23C8A0B58);
  }

  sub_23C5855B0(v28, v36, &qword_27E2038F8, &qword_23C8A0B58);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2038F8, &qword_23C8A0B58);
    return sub_23C585C34(v36, &qword_27E2038F8, &qword_23C8A0B58);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2038F8, &qword_23C8A0B58);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C8074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203900, &qword_23C8A0B60);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_23C585C34(v28, &qword_27E203900, &qword_23C8A0B60);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2029C8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203900, &qword_23C8A0B60);
  }

  sub_23C5855B0(v28, v36, &qword_27E203900, &qword_23C8A0B60);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203900, &qword_23C8A0B60);
    return sub_23C585C34(v36, &qword_27E203900, &qword_23C8A0B60);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203900, &qword_23C8A0B60);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C8630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203908, &qword_23C8A0B68);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_23C585C34(v28, &qword_27E203908, &qword_23C8A0B68);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E2029E0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203908, &qword_23C8A0B68);
  }

  sub_23C5855B0(v28, v36, &qword_27E203908, &qword_23C8A0B68);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203908, &qword_23C8A0B68);
    return sub_23C585C34(v36, &qword_27E203908, &qword_23C8A0B68);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203908, &qword_23C8A0B68);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C8BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203910, &qword_23C8A0B70);
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
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_23C585C34(v28, &qword_27E203910, &qword_23C8A0B70);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202A40, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203910, &qword_23C8A0B70);
  }

  sub_23C5855B0(v28, v36, &qword_27E203910, &qword_23C8A0B70);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203910, &qword_23C8A0B70);
    return sub_23C585C34(v36, &qword_27E203910, &qword_23C8A0B70);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203910, &qword_23C8A0B70);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](updated);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203918, &qword_23C8A0B78);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = updated;
  v30 = updated;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_23C585C34(v28, &qword_27E203918, &qword_23C8A0B78);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202A58, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203918, &qword_23C8A0B78);
  }

  sub_23C5855B0(v28, v36, &qword_27E203918, &qword_23C8A0B78);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203918, &qword_23C8A0B78);
    return sub_23C585C34(v36, &qword_27E203918, &qword_23C8A0B78);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203918, &qword_23C8A0B78);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7C9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v6 = *(MentionedApps - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](MentionedApps);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203920, &qword_23C8A0B80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = MentionedApps;
  v30 = MentionedApps;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201A80, &qword_23C88DBF0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201A80, &qword_23C88DBF0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatExprEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_23C585C34(v28, &qword_27E203920, &qword_23C8A0B80);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202A70, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203920, &qword_23C8A0B80);
  }

  sub_23C5855B0(v28, v36, &qword_27E203920, &qword_23C8A0B80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203920, &qword_23C8A0B80);
    return sub_23C585C34(v36, &qword_27E203920, &qword_23C8A0B80);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203920, &qword_23C8A0B80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201A80, &qword_23C88DBF0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoASTFlatExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E201A80, &qword_23C88DBF0);
  v12 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C7CA370(v3, a1, a2, a3);
        goto LABEL_29;
      case 2u:
        sub_23C7CA5A8(v3, a1, a2, a3);
        goto LABEL_29;
      case 3u:
        sub_23C7CA7E0(v3, a1, a2, a3);
        goto LABEL_29;
      case 4u:
        sub_23C7CAA18(v3, a1, a2, a3);
        goto LABEL_29;
      case 5u:
        sub_23C7CAC50(v3, a1, a2, a3);
        goto LABEL_29;
      case 6u:
        sub_23C7CB0D4(v3, a1, a2, a3);
        goto LABEL_29;
      case 7u:
        sub_23C7CB30C(v3, a1, a2, a3);
        goto LABEL_29;
      case 8u:
        sub_23C7CB544(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 9u:
        sub_23C7CB77C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xAu:
        sub_23C7CB9B4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xBu:
        sub_23C7CBE38(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xCu:
        sub_23C7CC070(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xDu:
        sub_23C7CC2A8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xEu:
        sub_23C7CC4E0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0xFu:
        sub_23C7CC718(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_9;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
      case 0x10u:
        sub_23C7CC950(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
        }

        goto LABEL_9;
      case 0x11u:
        sub_23C7CCB88(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
        }

LABEL_9:
        sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
        break;
      case 0x12u:
        result = sub_23C7CAE88(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x13u:
        result = sub_23C7CBBEC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C7CA13C(v3, a1, a2, a3);
LABEL_29:
        result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatExprEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v13 = v3 + *(type metadata accessor for TranscriptProtoASTFlatExpr(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C7CA13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatValue);
    sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatValue);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CA370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
    sub_23C8314AC(&qword_27E202BE0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CA5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
    sub_23C8314AC(&qword_27E202B50, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CA7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
    sub_23C8314AC(&qword_27E202AC8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CAA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
    sub_23C8314AC(&qword_27E202B38, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CAC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
    sub_23C8314AC(&qword_27E202950, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CAE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E201A80, &qword_23C88DBF0);
  v14 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201A80, &qword_23C88DBF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoAstflatExprEnum);
    if (EnumCaseMultiPayload == 18)
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

uint64_t sub_23C7CB0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
    sub_23C8314AC(&qword_27E202968, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
    sub_23C8314AC(&qword_27E202980, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CB544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
    sub_23C8314AC(&qword_27E202998, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CB77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
    sub_23C8314AC(&qword_27E202A28, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CB9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
    sub_23C8314AC(&qword_27E202A98, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CBBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E201A80, &qword_23C88DBF0);
  v14 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201A80, &qword_23C88DBF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoAstflatExprEnum);
    if (EnumCaseMultiPayload == 19)
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

uint64_t sub_23C7CBE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
    sub_23C8314AC(&qword_27E2029B0, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
    sub_23C8314AC(&qword_27E202AB0, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
    sub_23C8314AC(&qword_27E2029C8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CC4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
    sub_23C8314AC(&qword_27E2029E0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
    sub_23C8314AC(&qword_27E202A40, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CC950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    sub_23C8314AC(&qword_27E202A58, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CCB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201A80, &qword_23C88DBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v10 = *(*(MentionedApps - 8) + 64);
  MEMORY[0x28223BE20](MentionedApps);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201A80, &qword_23C88DBF0);
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201A80, &qword_23C88DBF0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
    sub_23C8314AC(&qword_27E202A70, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CCE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203258, type metadata accessor for TranscriptProtoASTFlatExpr);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7CCF10()
{
  sub_23C8314AC(&qword_27E202AE0, type metadata accessor for TranscriptProtoASTFlatExpr);

  return sub_23C8711F4();
}

uint64_t sub_23C7CCF7C()
{
  sub_23C8314AC(&qword_27E202AE0, type metadata accessor for TranscriptProtoASTFlatExpr);

  return sub_23C871204();
}

uint64_t sub_23C7CD018()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200EC8);
  __swift_project_value_buffer(v0, qword_27E200EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_23C8755C0;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "null";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "double";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "string";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "array";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dict";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "symbol";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "identifier";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "statement";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoASTFlatValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result <= 8)
        {
          if (result == 6)
          {
            sub_23C7CD89C(v5, a1, a2, a3);
          }

          else if (result == 7)
          {
            sub_23C7CDE58(v5, a1, a2, a3);
          }
        }

        else
        {
          switch(result)
          {
            case 9:
              v11 = a1;
              v12 = v5;
              v13 = a2;
              v14 = a3;
              v15 = 7;
LABEL_5:
              sub_23C7CE414(v11, v12, v13, v14, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, v15);
              break;
            case 10:
              v11 = a1;
              v12 = v5;
              v13 = a2;
              v14 = a3;
              v15 = 6;
              goto LABEL_5;
            case 11:
              sub_23C7CE610(v5, a1, a2, a3);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_23C745DD8(a1, v5, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, 9);
        }

        else if (result == 2)
        {
          sub_23C7BA388(a1, v5, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, 0);
        }
      }

      else if (result == 3)
      {
        sub_23C7CD6C0(a1, v5, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, 1);
      }

      else
      {
        if (result != 4)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_5;
        }

        sub_23C7DFB54(a1, v5, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7CD6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v31 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v24 - v17;
  v29 = 0;
  v30 = 1;
  result = sub_23C871104();
  if (!v8)
  {
    v28 = a2;
    if ((v30 & 1) == 0)
    {
      v24[0] = a3;
      v24[1] = a4;
      v26 = v29;
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
      *v23 = v26;
      swift_storeEnumTagMultiPayload();
      return (*(v25 + 56))(v23, 0, 1, v20);
    }
  }

  return result;
}

uint64_t sub_23C7CD89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203888, &qword_23C8A0AE8);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAB78, &unk_23C8A1360);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB78, &unk_23C8A1360);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatValueEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E203888, &qword_23C8A0AE8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202B08, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203888, &qword_23C8A0AE8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203888, &qword_23C8A0AE8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203888, &qword_23C8A0AE8);
    return sub_23C585C34(v36, &qword_27E203888, &qword_23C8A0AE8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203888, &qword_23C8A0AE8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB78, &unk_23C8A1360);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7CDE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203890, &qword_23C8A0AF0);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAB78, &unk_23C8A1360);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB78, &unk_23C8A1360);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatValueEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E203890, &qword_23C8A0AF0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202B20, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203890, &qword_23C8A0AF0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203890, &qword_23C8A0AF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203890, &qword_23C8A0AF0);
    return sub_23C585C34(v36, &qword_27E203890, &qword_23C8A0AF0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203890, &qword_23C8A0AF0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB78, &unk_23C8A1360);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7CE414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), int a8)
{
  v36 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v34 = 0;
  v35 = 0;
  result = sub_23C871154();
  if (v8)
  {
  }

  v31 = a3;
  v32 = a4;
  v33 = a2;
  if (v35)
  {
    v30 = v35;
    v28 = v34;
    sub_23C5855B0(v33, v18, a5, a6);
    v20 = a7(0);
    v27 = *(v20 - 8);
    v21 = *(v27 + 48);
    v29 = v20;
    v22 = v21(v18, 1);
    sub_23C585C34(v18, a5, a6);
    if (v22 != 1)
    {
      sub_23C871054();
    }

    v23 = v33;
    sub_23C585C34(v33, a5, a6);
    v24 = v29;
    v25 = v30;
    *v23 = v28;
    v23[1] = v25;
    swift_storeEnumTagMultiPayload();
    return (*(v27 + 56))(v23, 0, 1, v24);
  }

  return result;
}

uint64_t sub_23C7CE610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
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
  sub_23C5855B0(a1, v14, &qword_27E1FAB78, &unk_23C8A1360);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E1FAB78, &unk_23C8A1360);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoAstflatValueEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoAstflatValueEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoStatementID);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoStatementID);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
    return sub_23C585C34(v36, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoStatementID);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E1FAB78, &unk_23C8A1360);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoStatementID);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoASTFlatValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E1FAB78, &unk_23C8A1360);
  v12 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload != 5)
        {
          sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatValueEnum);
          result = sub_23C7CF7D8(v3);
          if (v4)
          {
            return result;
          }

          goto LABEL_29;
        }

        sub_23C7CF428(v3, a1, a2, a3);
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatValueEnum);
          result = sub_23C7CF660(v3);
          if (v4)
          {
            return result;
          }

          goto LABEL_29;
        }

        if (EnumCaseMultiPayload != 8)
        {
          result = sub_23C7CEFA4(v3, a1, a2, a3);
          if (v4)
          {
            return result;
          }

          goto LABEL_29;
        }

        sub_23C7CF950(v3, a1, a2, a3);
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          result = sub_23C7E09C8(v3, a1, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_23C7E0870(v3, a1, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
          if (v4)
          {
            return result;
          }
        }

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 2)
      {
        result = sub_23C7E0B24(v3, a1, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (v4)
        {
          return result;
        }

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 3)
      {
        sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatValueEnum);
        result = sub_23C7E0C80(v3, a1, a2, a3, &qword_27E1FAB78, &unk_23C8A1360, type metadata accessor for TranscriptProtoAstflatValueEnum, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (v4)
        {
          return result;
        }

        goto LABEL_29;
      }

      sub_23C7CF1F0(v3, a1, a2, a3);
    }

    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (v4)
    {
      return result;
    }
  }

LABEL_29:
  v15 = v3 + *(type metadata accessor for TranscriptProtoASTFlatValue(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C7CEFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E1FAB78, &unk_23C8A1360);
  v14 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E1FAB78, &unk_23C8A1360);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (EnumCaseMultiPayload == 9)
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

uint64_t sub_23C7CF1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB78, &unk_23C8A1360);
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB78, &unk_23C8A1360);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
    sub_23C8314AC(&qword_27E202B08, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB78, &unk_23C8A1360);
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB78, &unk_23C8A1360);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
    sub_23C8314AC(&qword_27E202B20, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CF660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FAB78, &unk_23C8A1360);
  v6 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FAB78, &unk_23C8A1360);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C8315C4(v5, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CF7D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E1FAB78, &unk_23C8A1360);
  v6 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FAB78, &unk_23C8A1360);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C8315C4(v5, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CF950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB78, &unk_23C8A1360);
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E1FAB78, &unk_23C8A1360);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoAstflatValueEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7CFC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203250, type metadata accessor for TranscriptProtoASTFlatValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7CFCD8()
{
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);

  return sub_23C8711F4();
}

uint64_t sub_23C7CFD44()
{
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);

  return sub_23C871204();
}

uint64_t TranscriptProtoASTFlatValueArrayVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoASTFlatValue(0), sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7D0020(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203248, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7D00C0()
{
  sub_23C8314AC(&qword_27E202B08, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7D012C()
{
  sub_23C8314AC(&qword_27E202B08, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoASTFlatValueDictVariant.decodeMessage<A>(decoder:)()
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
      sub_23C7D0290();
    }
  }

  return result;
}

uint64_t sub_23C7D0290()
{
  sub_23C870EE4();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019E0, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C871024();
}

uint64_t TranscriptProtoASTFlatValueDictVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_23C870EE4(), type metadata accessor for TranscriptProtoASTFlatValue(0), sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue), sub_23C8314AC(&qword_27E2019E0, type metadata accessor for TranscriptProtoASTFlatValue), result = sub_23C871214(), !v3))
  {
    v2 = v0 + *(type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7D0550@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  v5 = a3 + *(a1 + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = a2(MEMORY[0x277D84F90]);
  *a3 = result;
  return result;
}

uint64_t sub_23C7D05E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203240, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7D0680()
{
  sub_23C8314AC(&qword_27E202B20, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7D06EC()
{
  sub_23C8314AC(&qword_27E202B20, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);

  return sub_23C871204();
}

uint64_t sub_23C7D079C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F10);
  __swift_project_value_buffer(v0, qword_27E200F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoASTFlatExprIndexVariant.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for TranscriptProtoASTFlatValue(0);
        sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C7D0A88();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7D0A88()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t sub_23C7D0B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7D0DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7D106C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203238, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7D110C()
{
  sub_23C8314AC(&qword_27E202B38, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7D1178()
{
  sub_23C8314AC(&qword_27E202B38, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);

  return sub_23C871204();
}

uint64_t sub_23C7D1214()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F28);
  __swift_project_value_buffer(v0, qword_27E200F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "third";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7D14A8()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t sub_23C7D155C()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0) + 24);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoASTFlatExprInfixVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, sub_23C821C2C(), result = sub_23C871254(), !v4))
  {
    result = sub_23C7D16EC(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C7D1908(v3, a1, a2, a3);
      v9 = &v3[*(type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0) + 28)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7D16EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7D1908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAB88, &unk_23C8A1350);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAB88, &unk_23C8A1350);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
}

uint64_t sub_23C7D1BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7D1C74()
{
  sub_23C8314AC(&qword_27E202B50, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7D1CE0()
{
  sub_23C8314AC(&qword_27E202B50, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);

  return sub_23C871204();
}

uint64_t sub_23C7D1D7C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F40);
  __swift_project_value_buffer(v0, qword_27E200F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_23C88DBB0;
  v4 = v55 + v3;
  v5 = v55 + v3 + v1[14];
  *(v55 + v3) = 1;
  *v5 = "value";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "statementId";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "prefix";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "infix";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "index";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "updateParameters";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "call";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "say";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "pick";
  *(v22 + 8) = 4;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "confirm";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "search";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 25;
  *v28 = "structuredSearch";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "pickOne";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "resolveTool";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "reject";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "cancel";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "noMatchingTool";
  *(v39 + 1) = 14;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "continuePlanning";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "endOfPlan";
  *(v43 + 1) = 9;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "getMentionedApps";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "open";
  *(v47 + 1) = 4;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "explicitResolutionRequest";
  *(v49 + 1) = 25;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 26;
  *v51 = "payload";
  *(v51 + 1) = 7;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 27;
  *v53 = "format";
  *(v53 + 1) = 6;
  v53[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_23C7D2830(v5, a1, a2, a3);
        break;
      case 2:
        sub_23C7D2DE0(v5, a1, a2, a3);
        break;
      case 3:
        sub_23C7D339C(v5, a1, a2, a3);
        break;
      case 4:
        sub_23C7D3958(v5, a1, a2, a3);
        break;
      case 6:
        sub_23C7D3F14(v5, a1, a2, a3);
        break;
      case 7:
        sub_23C7D44D0(v5, a1, a2, a3);
        break;
      case 8:
        sub_23C7D4A8C(v5, a1, a2, a3);
        break;
      case 9:
        sub_23C7D5048(v5, a1, a2, a3);
        break;
      case 10:
        sub_23C7D5604(v5, a1, a2, a3);
        break;
      case 12:
        sub_23C7D5BC0(v5, a1, a2, a3);
        break;
      case 13:
        sub_23C7D617C(v5, a1, a2, a3);
        break;
      case 14:
        sub_23C7D6738(v5, a1, a2, a3);
        break;
      case 15:
        sub_23C7D6CF4(v5, a1, a2, a3);
        break;
      case 16:
        sub_23C7D72B0(v5, a1, a2, a3);
        break;
      case 17:
        sub_23C7D786C(v5, a1, a2, a3);
        break;
      case 18:
        sub_23C7D7E28(v5, a1, a2, a3);
        break;
      case 19:
        sub_23C7D83E4(v5, a1, a2, a3);
        break;
      case 20:
        sub_23C7D89A0(v5, a1, a2, a3);
        break;
      case 21:
        sub_23C7D8F5C(v5, a1, a2, a3);
        break;
      case 22:
        sub_23C7D9518(v5, a1, a2, a3);
        break;
      case 23:
        sub_23C7D9AD4(v5, a1, a2, a3);
        break;
      case 24:
        sub_23C7DA090(v5, a1, a2, a3);
        break;
      case 25:
        sub_23C7DA64C(v5, a1, a2, a3);
        break;
      case 26:
        sub_23C7DAC08(v5, a1, a2, a3);
        break;
      case 27:
        sub_23C7DB1C4(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_23C7D2830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoValueExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037C8, &qword_23C8A0A28);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E2037C8, &qword_23C8A0A28);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoValueExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoValueExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037C8, &qword_23C8A0A28);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037C8, &qword_23C8A0A28);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037C8, &qword_23C8A0A28);
    return sub_23C585C34(v36, &qword_27E2037C8, &qword_23C8A0A28);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoValueExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037C8, &qword_23C8A0A28);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoValueExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D2DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoStatementID);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoStatementID);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C5855B0(v28, v36, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
    return sub_23C585C34(v36, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoStatementID);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E1FAAF8, &unk_23C8A1180);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoStatementID);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037D0, &qword_23C8A0A30);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E2037D0, &qword_23C8A0A30);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPrefixExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPrefixExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037D0, &qword_23C8A0A30);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037D0, &qword_23C8A0A30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037D0, &qword_23C8A0A30);
    return sub_23C585C34(v36, &qword_27E2037D0, &qword_23C8A0A30);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPrefixExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037D0, &qword_23C8A0A30);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPrefixExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D3958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037D8, &qword_23C8A0A38);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E2037D8, &qword_23C8A0A38);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoInfixExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoInfixExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037D8, &qword_23C8A0A38);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037D8, &qword_23C8A0A38);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037D8, &qword_23C8A0A38);
    return sub_23C585C34(v36, &qword_27E2037D8, &qword_23C8A0A38);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoInfixExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037D8, &qword_23C8A0A38);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoInfixExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D3F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037E0, &qword_23C8A0A40);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E2037E0, &qword_23C8A0A40);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoIndexExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoIndexExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037E0, &qword_23C8A0A40);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037E0, &qword_23C8A0A40);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037E0, &qword_23C8A0A40);
    return sub_23C585C34(v36, &qword_27E2037E0, &qword_23C8A0A40);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoIndexExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037E0, &qword_23C8A0A40);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoIndexExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](updated);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037E8, &qword_23C8A0A48);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = updated;
  v30 = updated;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E2037E8, &qword_23C8A0A48);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoUpdateParametersExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037E8, &qword_23C8A0A48);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037E8, &qword_23C8A0A48);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037E8, &qword_23C8A0A48);
    return sub_23C585C34(v36, &qword_27E2037E8, &qword_23C8A0A48);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037E8, &qword_23C8A0A48);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D4A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoCallExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037F0, &qword_23C8A0A50);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v28, &qword_27E2037F0, &qword_23C8A0A50);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoCallExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoCallExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037F0, &qword_23C8A0A50);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037F0, &qword_23C8A0A50);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037F0, &qword_23C8A0A50);
    return sub_23C585C34(v36, &qword_27E2037F0, &qword_23C8A0A50);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoCallExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037F0, &qword_23C8A0A50);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoCallExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D5048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSayExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037F8, &qword_23C8A0A58);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v28, &qword_27E2037F8, &qword_23C8A0A58);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSayExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSayExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037F8, &qword_23C8A0A58);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037F8, &qword_23C8A0A58);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037F8, &qword_23C8A0A58);
    return sub_23C585C34(v36, &qword_27E2037F8, &qword_23C8A0A58);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSayExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037F8, &qword_23C8A0A58);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSayExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D5604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPickExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203800, &qword_23C8A0A60);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v28, &qword_27E203800, &qword_23C8A0A60);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPickExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPickExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203800, &qword_23C8A0A60);
  }

  sub_23C5855B0(v28, v36, &qword_27E203800, &qword_23C8A0A60);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203800, &qword_23C8A0A60);
    return sub_23C585C34(v36, &qword_27E203800, &qword_23C8A0A60);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPickExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203800, &qword_23C8A0A60);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPickExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D5BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203808, &qword_23C8A0A68);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v28, &qword_27E203808, &qword_23C8A0A68);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoConfirmExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoConfirmExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203808, &qword_23C8A0A68);
  }

  sub_23C5855B0(v28, v36, &qword_27E203808, &qword_23C8A0A68);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203808, &qword_23C8A0A68);
    return sub_23C585C34(v36, &qword_27E203808, &qword_23C8A0A68);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoConfirmExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203808, &qword_23C8A0A68);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoConfirmExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203810, &qword_23C8A0A70);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v28, &qword_27E203810, &qword_23C8A0A70);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoSearchExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoSearchExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203810, &qword_23C8A0A70);
  }

  sub_23C5855B0(v28, v36, &qword_27E203810, &qword_23C8A0A70);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203810, &qword_23C8A0A70);
    return sub_23C585C34(v36, &qword_27E203810, &qword_23C8A0A70);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoSearchExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203810, &qword_23C8A0A70);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoSearchExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D6738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203818, &qword_23C8A0A78);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v28, &qword_27E203818, &qword_23C8A0A78);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPickOneExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPickOneExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203818, &qword_23C8A0A78);
  }

  sub_23C5855B0(v28, v36, &qword_27E203818, &qword_23C8A0A78);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203818, &qword_23C8A0A78);
    return sub_23C585C34(v36, &qword_27E203818, &qword_23C8A0A78);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPickOneExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203818, &qword_23C8A0A78);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPickOneExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D6CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203820, &qword_23C8A0A80);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_23C585C34(v28, &qword_27E203820, &qword_23C8A0A80);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoResolveToolExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoResolveToolExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203820, &qword_23C8A0A80);
  }

  sub_23C5855B0(v28, v36, &qword_27E203820, &qword_23C8A0A80);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203820, &qword_23C8A0A80);
    return sub_23C585C34(v36, &qword_27E203820, &qword_23C8A0A80);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoResolveToolExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203820, &qword_23C8A0A80);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoResolveToolExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D72B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203828, &qword_23C8A0A88);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_23C585C34(v28, &qword_27E203828, &qword_23C8A0A88);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoUndoExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoUndoExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203828, &qword_23C8A0A88);
  }

  sub_23C5855B0(v28, v36, &qword_27E203828, &qword_23C8A0A88);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203828, &qword_23C8A0A88);
    return sub_23C585C34(v36, &qword_27E203828, &qword_23C8A0A88);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoUndoExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203828, &qword_23C8A0A88);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoUndoExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203830, &qword_23C8A0A90);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_23C585C34(v28, &qword_27E203830, &qword_23C8A0A90);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoRejectExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoRejectExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203830, &qword_23C8A0A90);
  }

  sub_23C5855B0(v28, v36, &qword_27E203830, &qword_23C8A0A90);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203830, &qword_23C8A0A90);
    return sub_23C585C34(v36, &qword_27E203830, &qword_23C8A0A90);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoRejectExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203830, &qword_23C8A0A90);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoRejectExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D7E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203838, &qword_23C8A0A98);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_23C585C34(v28, &qword_27E203838, &qword_23C8A0A98);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoCancelExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoCancelExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203838, &qword_23C8A0A98);
  }

  sub_23C5855B0(v28, v36, &qword_27E203838, &qword_23C8A0A98);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203838, &qword_23C8A0A98);
    return sub_23C585C34(v36, &qword_27E203838, &qword_23C8A0A98);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoCancelExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203838, &qword_23C8A0A98);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoCancelExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D83E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203840, &qword_23C8A0AA0);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_23C585C34(v28, &qword_27E203840, &qword_23C8A0AA0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203840, &qword_23C8A0AA0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203840, &qword_23C8A0AA0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203840, &qword_23C8A0AA0);
    return sub_23C585C34(v36, &qword_27E203840, &qword_23C8A0AA0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203840, &qword_23C8A0AA0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D89A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203848, &qword_23C8A0AA8);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_23C585C34(v28, &qword_27E203848, &qword_23C8A0AA8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoContinuePlanningExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203848, &qword_23C8A0AA8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203848, &qword_23C8A0AA8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203848, &qword_23C8A0AA8);
    return sub_23C585C34(v36, &qword_27E203848, &qword_23C8A0AA8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203848, &qword_23C8A0AA8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D8F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203850, &qword_23C8A0AB0);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_23C585C34(v28, &qword_27E203850, &qword_23C8A0AB0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoEndOfPlanExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203850, &qword_23C8A0AB0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203850, &qword_23C8A0AB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203850, &qword_23C8A0AB0);
    return sub_23C585C34(v36, &qword_27E203850, &qword_23C8A0AB0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203850, &qword_23C8A0AB0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D9518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v6 = *(MentionedAppsExpression - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](MentionedAppsExpression);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203858, &qword_23C8A0AB8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = MentionedAppsExpression;
  v30 = MentionedAppsExpression;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_23C585C34(v28, &qword_27E203858, &qword_23C8A0AB8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203858, &qword_23C8A0AB8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203858, &qword_23C8A0AB8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203858, &qword_23C8A0AB8);
    return sub_23C585C34(v36, &qword_27E203858, &qword_23C8A0AB8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203858, &qword_23C8A0AB8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7D9AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203860, &qword_23C8A0AC0);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_23C585C34(v28, &qword_27E203860, &qword_23C8A0AC0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoOpenExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoOpenExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203860, &qword_23C8A0AC0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203860, &qword_23C8A0AC0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203860, &qword_23C8A0AC0);
    return sub_23C585C34(v36, &qword_27E203860, &qword_23C8A0AC0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoOpenExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203860, &qword_23C8A0AC0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoOpenExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7DA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203868, &qword_23C8A0AC8);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_23C585C34(v28, &qword_27E203868, &qword_23C8A0AC8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203868, &qword_23C8A0AC8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203868, &qword_23C8A0AC8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203868, &qword_23C8A0AC8);
    return sub_23C585C34(v36, &qword_27E203868, &qword_23C8A0AC8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203868, &qword_23C8A0AC8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7DA64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203870, &qword_23C8A0AD0);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v28, &qword_27E203870, &qword_23C8A0AD0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoStructuredSearchExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203870, &qword_23C8A0AD0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203870, &qword_23C8A0AD0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203870, &qword_23C8A0AD0);
    return sub_23C585C34(v36, &qword_27E203870, &qword_23C8A0AD0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203870, &qword_23C8A0AD0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7DAC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203878, &qword_23C8A0AD8);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_23C585C34(v28, &qword_27E203878, &qword_23C8A0AD8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoPayloadExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoPayloadExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203878, &qword_23C8A0AD8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203878, &qword_23C8A0AD8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203878, &qword_23C8A0AD8);
    return sub_23C585C34(v36, &qword_27E203878, &qword_23C8A0AD8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoPayloadExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203878, &qword_23C8A0AD8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoPayloadExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7DB1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203880, &qword_23C8A0AE0);
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
  sub_23C5855B0(a1, v14, &qword_27E201AB8, &qword_23C88DBF8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AB8, &qword_23C88DBF8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_23C585C34(v28, &qword_27E203880, &qword_23C8A0AE0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoFormatExpression);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoFormatExpression);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203880, &qword_23C8A0AE0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203880, &qword_23C8A0AE0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203880, &qword_23C8A0AE0);
    return sub_23C585C34(v36, &qword_27E203880, &qword_23C8A0AE0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoFormatExpression);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203880, &qword_23C8A0AE0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AB8, &qword_23C88DBF8);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoFormatExpression);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23C5855B0(v3, &v15 - v10, &qword_27E201AB8, &qword_23C88DBF8);
  v12 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C7DBE6C(v3, a1, a2, a3);
        goto LABEL_33;
      case 2u:
        sub_23C7DC0A4(v3, a1, a2, a3);
        goto LABEL_33;
      case 3u:
        sub_23C7DC2DC(v3, a1, a2, a3);
        goto LABEL_33;
      case 4u:
        sub_23C7DC514(v3, a1, a2, a3);
        goto LABEL_33;
      case 5u:
        sub_23C7DC74C(v3, a1, a2, a3);
        goto LABEL_33;
      case 6u:
        sub_23C7DC984(v3, a1, a2, a3);
        goto LABEL_33;
      case 7u:
        sub_23C7DCBBC(v3, a1, a2, a3);
        goto LABEL_33;
      case 8u:
        sub_23C7DCDF4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 9u:
        sub_23C7DD02C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xAu:
        sub_23C7DD264(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xBu:
        sub_23C7DED04(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xCu:
        sub_23C7DD49C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xDu:
        sub_23C7DD6D4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xEu:
        sub_23C7DD90C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0xFu:
        sub_23C7DDB44(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x10u:
        sub_23C7DDD7C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        }

        goto LABEL_7;
      case 0x11u:
        sub_23C7DDFB4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x12u:
        sub_23C7DE1EC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x13u:
        sub_23C7DE424(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x14u:
        sub_23C7DE65C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x15u:
        sub_23C7DE894(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x16u:
        sub_23C7DEACC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x17u:
        sub_23C7DEF3C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
      case 0x18u:
        sub_23C7DF174(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        }

LABEL_7:
        sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        break;
      default:
        sub_23C7DBC38(v3, a1, a2, a3);
LABEL_33:
        result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoExpressionEnum);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for TranscriptProtoExpression(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C7DBC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoValueExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoValueExpression);
    sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoValueExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DBE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPrefixExpression);
    sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPrefixExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoInfixExpression);
    sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoInfixExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoIndexExpression);
    sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoIndexExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DC984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoCallExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoCallExpression);
    sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoCallExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DCBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSayExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSayExpression);
    sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSayExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DCDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPickExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPickExpression);
    sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPickExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoConfirmExpression);
    sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoConfirmExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoSearchExpression);
    sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSearchExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPickOneExpression);
    sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPickOneExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoResolveToolExpression);
    sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoResolveToolExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DD90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoUndoExpression);
    sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoUndoExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DDB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoRejectExpression);
    sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRejectExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DDD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoCancelExpression);
    sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoCancelExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DDFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoContinuePlanningExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoEndOfPlanExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v10 = *(*(MentionedAppsExpression - 8) + 64);
  MEMORY[0x28223BE20](MentionedAppsExpression);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DE894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoOpenExpression);
    sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoOpenExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DEACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoPayloadExpression);
    sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoPayloadExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DF174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AB8, &qword_23C88DBF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AB8, &qword_23C88DBF8);
  v13 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AB8, &qword_23C88DBF8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoFormatExpression);
    sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoFormatExpression);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7DF45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203228, type metadata accessor for TranscriptProtoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7DF4FC()
{
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7DF568()
{
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression);

  return sub_23C871204();
}

uint64_t sub_23C7DF604()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F58);
  __swift_project_value_buffer(v0, qword_27E200F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C875590;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23C871314();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "BOOL";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "double";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "string";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "array";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "symbol";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v7();
  return sub_23C871324();
}

uint64_t TranscriptProtoValueExpression.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_23C745DD8(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, 6);
            break;
          case 2:
            sub_23C7BA388(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, 0);
            break;
          case 3:
            sub_23C7CD6C0(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, 1);
            break;
        }
      }

      else if (result > 5)
      {
        if (result != 6)
        {
          if (result != 7)
          {
            goto LABEL_5;
          }

          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_18;
        }

        sub_23C7DFD24(v5, a1, a2, a3);
      }

      else
      {
        if (result != 4)
        {
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
LABEL_18:
          sub_23C7CE414(v11, v12, v13, v14, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, v15);
          goto LABEL_5;
        }

        sub_23C7DFB54(a1, v5, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum);
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7DFB54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v23 = 0;
  v24 = 1;
  result = sub_23C871134();
  if (!v7 && (v24 & 1) == 0)
  {
    v22 = 0;
    v17 = v23;
    sub_23C5855B0(a2, v15, a5, a6);
    v18 = a7(0);
    v21 = *(v18 - 8);
    v19 = (*(v21 + 48))(v15, 1, v18);
    sub_23C585C34(v15, a5, a6);
    if (v19 != 1)
    {
      v20 = v22;
      result = sub_23C871054();
      if (v20)
      {
        return result;
      }

      v22 = 0;
    }

    sub_23C585C34(a2, a5, a6);
    *a2 = v17;
    swift_storeEnumTagMultiPayload();
    return (*(v21 + 56))(a2, 0, 1, v18);
  }

  return result;
}

uint64_t sub_23C7DFD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037B8, &qword_23C8A0A18);
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
  sub_23C5855B0(a1, v14, &qword_27E201AC8, &unk_23C8A1370);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201AC8, &unk_23C8A1370);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoValueExpressionEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E2037B8, &qword_23C8A0A18);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E2037B8, &qword_23C8A0A18);
  }

  sub_23C5855B0(v28, v36, &qword_27E2037B8, &qword_23C8A0A18);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E2037B8, &qword_23C8A0A18);
    return sub_23C585C34(v36, &qword_27E2037B8, &qword_23C8A0A18);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E2037B8, &qword_23C8A0A18);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201AC8, &unk_23C8A1370);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoValueExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201AC8, &unk_23C8A1370);
  v12 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          result = sub_23C7E09C8(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_23C7E0B24(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
          if (v4)
          {
            return result;
          }
        }
      }

      else
      {
        result = sub_23C7E0870(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_23C8315C4(v11, type metadata accessor for TranscriptProtoValueExpressionEnum);
        result = sub_23C7E1024(v3);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        result = sub_23C7E0624(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_23C8315C4(v11, type metadata accessor for TranscriptProtoValueExpressionEnum);
      result = sub_23C7E0C80(v3, a1, a2, a3, &qword_27E201AC8, &unk_23C8A1370, type metadata accessor for TranscriptProtoValueExpressionEnum, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      sub_23C7E0DEC(v3, a1, a2, a3);
      result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for TranscriptProtoValueExpression(0) + 20);
  return sub_23C870F14();
}

uint64_t sub_23C7E0624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_23C5855B0(a1, v17 - v12, &qword_27E201AC8, &unk_23C8A1370);
  v14 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_23C585C34(v13, &qword_27E201AC8, &unk_23C8A1370);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C8315C4(v13, type metadata accessor for TranscriptProtoValueExpressionEnum);
    if (EnumCaseMultiPayload == 6)
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

uint64_t sub_23C7E0870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  sub_23C5855B0(a1, &v19 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_23C585C34(v15, a5, a6);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v17 = *v15;
    return sub_23C871244();
  }

  result = sub_23C8315C4(v15, v20);
  __break(1u);
  return result;
}

uint64_t sub_23C7E09C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v19 - v14);
  sub_23C5855B0(a1, &v19 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_23C585C34(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v15;
    return sub_23C871294();
  }

  result = sub_23C8315C4(v15, v20);
  __break(1u);
  return result;
}

uint64_t sub_23C7E0B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v19 - v14);
  sub_23C5855B0(a1, &v19 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_23C585C34(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *v15;
    return sub_23C8712B4();
  }

  result = sub_23C8315C4(v15, v20);
  __break(1u);
  return result;
}

uint64_t sub_23C7E0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v21 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v20 - v14);
  sub_23C5855B0(a1, &v20 - v14, a5, a6);
  v16 = a7(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_23C585C34(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v17 = *v15;
    v18 = v15[1];
    sub_23C8712C4();
  }

  result = sub_23C8315C4(v15, v21);
  __break(1u);
  return result;
}

uint64_t sub_23C7E0DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201AC8, &unk_23C8A1370);
  v13 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_23C585C34(v8, &qword_27E201AC8, &unk_23C8A1370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoValueExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7E1024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201AC8, &unk_23C8A1370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_23C5855B0(a1, &v10 - v4, &qword_27E201AC8, &unk_23C8A1370);
  v6 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_23C585C34(v5, &qword_27E201AC8, &unk_23C8A1370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_23C8712C4();
  }

  result = sub_23C8315C4(v5, type metadata accessor for TranscriptProtoValueExpressionEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7E124C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203220, type metadata accessor for TranscriptProtoValueExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E12EC()
{
  sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E1358()
{
  sub_23C8314AC(&qword_27E202B80, type metadata accessor for TranscriptProtoValueExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoValueExpressionArrayVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E15C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203218, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E1660()
{
  sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7E16CC()
{
  sub_23C8314AC(&qword_27E202B98, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);

  return sub_23C871204();
}

uint64_t sub_23C7E1764()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200F88);
  __swift_project_value_buffer(v0, qword_27E200F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prefixOp";
  *(v6 + 8) = 8;
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

uint64_t sub_23C7E1998()
{
  v0 = *(type metadata accessor for TranscriptProtoPrefixExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7E1AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoPrefixExpression(0);
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

uint64_t sub_23C7E1D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203210, type metadata accessor for TranscriptProtoPrefixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E1E14()
{
  sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E1E80()
{
  sub_23C8314AC(&qword_27E202BB0, type metadata accessor for TranscriptProtoPrefixExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E1F1C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FA0);
  __swift_project_value_buffer(v0, qword_27E200FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "infixOp";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lhs";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rhs";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E21A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v7;
  while (1)
  {
    result = sub_23C871044();
    if (v8 || (v17 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a7(a1, v12, a2, a3);
        break;
      case 2:
        a6(a1, v12, a2, a3);
        break;
      case 1:
        a4();
        sub_23C8710A4();
        break;
    }
  }

  return result;
}

uint64_t sub_23C7E22A4()
{
  v0 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7E2358()
{
  v0 = *(type metadata accessor for TranscriptProtoInfixExpression(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoInfixExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, sub_23C821CD4(), result = sub_23C871254(), !v4))
  {
    result = sub_23C7E24E8(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C7E2704(v3, a1, a2, a3);
      v9 = &v3[*(type metadata accessor for TranscriptProtoInfixExpression(0) + 28)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7E24E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInfixExpression(0);
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

uint64_t sub_23C7E2704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInfixExpression(0);
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

uint64_t sub_23C7E2984@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  v5 = a1[5];
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a3[v5], 1, 1, v6);
  v7(&a3[a1[6]], 1, 1, v6);
  v8 = &a3[a1[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_23C7E2A80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203208, type metadata accessor for TranscriptProtoInfixExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E2B20()
{
  sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E2B8C()
{
  sub_23C8314AC(&qword_27E202BC8, type metadata accessor for TranscriptProtoInfixExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E2C28()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FB8);
  __swift_project_value_buffer(v0, qword_27E200FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}