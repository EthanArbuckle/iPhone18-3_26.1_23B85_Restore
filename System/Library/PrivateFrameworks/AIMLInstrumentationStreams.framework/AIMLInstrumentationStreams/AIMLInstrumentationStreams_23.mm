uint64_t sub_23C7E2E5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v15 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      sub_23C8710A4();
    }

    else if (result == 2)
    {
      a6(a1, v10, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7E2F24()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_23C8314AC(&qword_27E2019D8, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_23C8711A4();
}

uint64_t sub_23C7E3034(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  if (!*v7 || (v16 = *v7, a4(), result = sub_23C871254(), !v8))
  {
    result = a6(v7, a1, a2, a3);
    if (!v8)
    {
      v15 = &v7[*(a7(0) + 24)];
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7E3114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
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

uint64_t sub_23C7E3394@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_23C7E3464(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203200, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E3504()
{
  sub_23C8314AC(&qword_27E202BE0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7E3570()
{
  sub_23C8314AC(&qword_27E202BE0, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);

  return sub_23C871204();
}

uint64_t sub_23C7E360C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FD0);
  __swift_project_value_buffer(v0, qword_27E200FD0);
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

uint64_t TranscriptProtoIndexExpression.decodeMessage<A>(decoder:)()
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
        sub_23C7E38F8();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E38F8()
{
  v0 = *(type metadata accessor for TranscriptProtoIndexExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7E3A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoIndexExpression(0);
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

uint64_t sub_23C7E3C94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a3, 1, 1, v5);
  v6(a3 + *(a1 + 20), 1, 1, v5);
  v7 = a3 + *(a1 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7E3D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031F8, type metadata accessor for TranscriptProtoIndexExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E3E28()
{
  sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E3E94()
{
  sub_23C8314AC(&qword_27E202BF8, type metadata accessor for TranscriptProtoIndexExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E3F5C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E200FE8);
  __swift_project_value_buffer(v0, qword_27E200FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "callStatementId";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "updates";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoUpdateParametersExpression.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C7E4248();
      }

      else if (result == 2)
      {
        type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
        sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E4248()
{
  v0 = *(type metadata accessor for TranscriptProtoUpdateParametersExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoUpdateParametersExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C7E43F8(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
      sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
      sub_23C8712F4();
    }

    v8 = v5 + *(type metadata accessor for TranscriptProtoUpdateParametersExpression(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E43F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  sub_23C5855B0(a1 + *(updated + 20), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E46AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031F0, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E474C()
{
  sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E47B8()
{
  sub_23C8314AC(&qword_27E202C10, type metadata accessor for TranscriptProtoUpdateParametersExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E4854()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201000);
  __swift_project_value_buffer(v0, qword_27E201000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "parameterId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "kind";
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
  *v14 = "parameterIndex";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.decodeMessage<A>(decoder:)()
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
          sub_23C7E4BDC();
        }

        else if (result == 4)
        {
          v3 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 28);
          sub_23C871104();
        }
      }

      else if (result == 1)
      {
        sub_23C871164();
      }

      else if (result == 2)
      {
        sub_23C821D7C();
        sub_23C8710A4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E4BDC()
{
  v0 = *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(v3 + 16) != 1 || (sub_23C821D7C(), result = sub_23C871254(), !v4))
    {
      result = sub_23C7E4DA0(v3, a1, a2, a3);
      if (!v4)
      {
        sub_23C7E4FBC(v3);
        v12 = v3 + *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 32);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7E4DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  sub_23C5855B0(a1 + *(updated + 24), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7E4FBC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C7E5080@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = a2 + a1[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C7E5164(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031E8, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E5204()
{
  sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_23C8711F4();
}

uint64_t sub_23C7E5270()
{
  sub_23C8314AC(&qword_27E201B18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);

  return sub_23C871204();
}

uint64_t sub_23C7E530C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201018);
  __swift_project_value_buffer(v0, qword_27E201018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolId";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdsId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E5610(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031E0, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E56B0()
{
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return sub_23C8711F4();
}

uint64_t sub_23C7E571C()
{
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);

  return sub_23C871204();
}

uint64_t sub_23C7E57B8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201030);
  __swift_project_value_buffer(v0, qword_27E201030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "tool";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoCallExpression.decodeMessage<A>(decoder:)()
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
      sub_23C57A5BC();
    }

    else if (result == 3)
    {
      sub_23C7E5A38();
    }
  }

  return result;
}

uint64_t sub_23C7E5A38()
{
  v0 = *(type metadata accessor for TranscriptProtoCallExpression(0) + 20);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoCallExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_23C870EE4(), type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID), sub_23C8314AC(&qword_27E201B40, type metadata accessor for TranscriptProtoStatementID), v4 = v10, result = sub_23C871214(), !v10))
  {
    result = sub_23C7E5C40(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for TranscriptProtoCallExpression(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7E5C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoCallExpression(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E2037A0, &qword_23C8A0A00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E2037A0, &qword_23C8A0A00);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
}

uint64_t sub_23C7E5ED4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(a4 + v7, 1, 1, v8);
  v9 = a4 + *(a1 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = a3(MEMORY[0x277D84F90]);
  *a4 = result;
  return result;
}

uint64_t sub_23C7E5FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031D8, type metadata accessor for TranscriptProtoCallExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6058()
{
  sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E60C4()
{
  sub_23C8314AC(&qword_27E202C48, type metadata accessor for TranscriptProtoCallExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoSayExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoSayExpression(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E6388(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031D0, type metadata accessor for TranscriptProtoSayExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6428()
{
  sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E6494()
{
  sub_23C8314AC(&qword_27E202C60, type metadata accessor for TranscriptProtoSayExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E652C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201060);
  __swift_project_value_buffer(v0, qword_27E201060);
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
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E6758(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
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
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7E6800()
{
  v0 = *(type metadata accessor for TranscriptProtoPickExpression(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoPickExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7E6950(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_23C871294();
    }

    v6 = v3 + *(type metadata accessor for TranscriptProtoPickExpression(0) + 24);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoPickExpression(0);
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

uint64_t sub_23C7E6BD4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v7 = *(a1 + 20);
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  v9 = &a4[*(a1 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a3;
  return result;
}

uint64_t sub_23C7E6CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031C8, type metadata accessor for TranscriptProtoPickExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6D48()
{
  sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E6DB4()
{
  sub_23C8314AC(&qword_27E202C78, type metadata accessor for TranscriptProtoPickExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E6F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031C0, type metadata accessor for TranscriptProtoConfirmExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E6FF0()
{
  sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E705C()
{
  sub_23C8314AC(&qword_27E202C90, type metadata accessor for TranscriptProtoConfirmExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E70F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201090);
  __swift_project_value_buffer(v0, qword_27E201090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
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
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pickOne";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shouldOpenResultIfApplicable";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSearchExpression.decodeMessage<A>(decoder:)()
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
        sub_23C871084();
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

uint64_t TranscriptProtoSearchExpression.traverse<A>(visitor:)()
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
      if (*(v0 + 17) != 1 || (result = sub_23C871244(), !v1))
      {
        if (*(v0 + 18) != 1 || (result = sub_23C871244(), !v1))
        {
          v6 = v0 + *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
          return sub_23C870F14();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C7E7570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 18) = 0;
  return result;
}

uint64_t sub_23C7E75F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031B8, type metadata accessor for TranscriptProtoSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E7698()
{
  sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E7704()
{
  sub_23C8314AC(&qword_27E202CA8, type metadata accessor for TranscriptProtoSearchExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E77A0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2010A8);
  __swift_project_value_buffer(v0, qword_27E2010A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "parameters";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "returnType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 5;
  *v11 = "properties";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoStructuredSearchExpression.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 5:
          type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
          sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
          sub_23C871194();
          break;
        case 2:
          sub_23C7E7AF8();
          break;
        case 1:
          sub_23C57A5BC();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7E7AF8()
{
  v0 = *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 24);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoStructuredSearchExpression.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (*(*v3 + 16))
  {
    sub_23C870EE4();
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
    sub_23C8314AC(&qword_27E201B40, type metadata accessor for TranscriptProtoStatementID);
    result = sub_23C871214();
    if (v4)
    {
      return result;
    }

    v5 = v3;
  }

  result = sub_23C7E7D98(v5, a1, a2, a3);
  if (!v4)
  {
    if (*(*(v5 + 8) + 16))
    {
      type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
      sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
      sub_23C8712F4();
    }

    v10 = v5 + *(type metadata accessor for TranscriptProtoStructuredSearchExpression(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  sub_23C5855B0(a1 + *(v14 + 24), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

unint64_t sub_23C7E8000@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v7 = MEMORY[0x277D84F90];
  result = sub_23C59A2C8(MEMORY[0x277D84F90]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_23C7E80DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031B0, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E817C()
{
  sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E81E8()
{
  sub_23C8314AC(&qword_27E202CC0, type metadata accessor for TranscriptProtoStructuredSearchExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E8268()
{
  result = MEMORY[0x23EED7100](0xD000000000000019, 0x800000023C8B1A10);
  qword_27E2010C0 = 0xD000000000000025;
  *algn_27E2010C8 = 0x800000023C8B10A0;
  return result;
}

uint64_t sub_23C7E8304()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2010D0);
  __swift_project_value_buffer(v0, qword_27E2010D0);
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
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7E84F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_23C7E85C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_23C7E8740(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031A8, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E87E0()
{
  sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_23C8711F4();
}

uint64_t sub_23C7E884C()
{
  sub_23C8314AC(&qword_27E201B70, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);

  return sub_23C871204();
}

uint64_t sub_23C7E8A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2031A0, type metadata accessor for TranscriptProtoPickOneExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E8AB4()
{
  sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E8B20()
{
  sub_23C8314AC(&qword_27E202CE8, type metadata accessor for TranscriptProtoPickOneExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoResolveToolExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoGlobalToolIdentifier(0), sub_23C8314AC(&qword_27E201B90, type metadata accessor for TranscriptProtoGlobalToolIdentifier), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoResolveToolExpression(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7E8DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203198, type metadata accessor for TranscriptProtoResolveToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E8E9C()
{
  sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E8F08()
{
  sub_23C8314AC(&qword_27E202D00, type metadata accessor for TranscriptProtoResolveToolExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E90B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203190, type metadata accessor for TranscriptProtoUndoExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9158()
{
  sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E91C4()
{
  sub_23C8314AC(&qword_27E202D18, type metadata accessor for TranscriptProtoUndoExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9360(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203188, type metadata accessor for TranscriptProtoRejectExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9400()
{
  sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E946C()
{
  sub_23C8314AC(&qword_27E202D30, type metadata accessor for TranscriptProtoRejectExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9608(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203180, type metadata accessor for TranscriptProtoCancelExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E96A8()
{
  sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9714()
{
  sub_23C8314AC(&qword_27E202D48, type metadata accessor for TranscriptProtoCancelExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9844(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203178, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E98E4()
{
  sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9950()
{
  sub_23C8314AC(&qword_27E202D60, type metadata accessor for TranscriptProtoNoMatchingToolExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203170, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9B1C()
{
  sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9B88()
{
  sub_23C8314AC(&qword_27E202D78, type metadata accessor for TranscriptProtoContinuePlanningExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203168, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9D54()
{
  sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9DC0()
{
  sub_23C8314AC(&qword_27E202D90, type metadata accessor for TranscriptProtoEndOfPlanExpression);

  return sub_23C871204();
}

uint64_t sub_23C7E9EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203160, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7E9F8C()
{
  sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7E9FF8()
{
  sub_23C8314AC(&qword_27E202DA8, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);

  return sub_23C871204();
}

uint64_t sub_23C7EA190(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203158, type metadata accessor for TranscriptProtoOpenExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EA230()
{
  sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7EA29C()
{
  sub_23C8314AC(&qword_27E202DC0, type metadata accessor for TranscriptProtoOpenExpression);

  return sub_23C871204();
}

uint64_t sub_23C7EA3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203150, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EA46C()
{
  sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7EA4D8()
{
  sub_23C8314AC(&qword_27E202DD8, type metadata accessor for TranscriptProtoExplicitResolutionRequest);

  return sub_23C871204();
}

uint64_t TranscriptProtoPayloadExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoPayloadExpression(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EA73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203148, type metadata accessor for TranscriptProtoPayloadExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EA7DC()
{
  sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7EA848()
{
  sub_23C8314AC(&qword_27E202DF0, type metadata accessor for TranscriptProtoPayloadExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoFormatExpression.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for TranscriptProtoStatementID(0), sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoFormatExpression(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EAAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203140, type metadata accessor for TranscriptProtoFormatExpression);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EAB4C()
{
  sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression);

  return sub_23C8711F4();
}

uint64_t sub_23C7EABB8()
{
  sub_23C8314AC(&qword_27E202E08, type metadata accessor for TranscriptProtoFormatExpression);

  return sub_23C871204();
}

uint64_t TranscriptProtoToolParameterValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_23C7EAD04(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C7EAD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_23C5855B0(v49, v13, &qword_27E203780, &unk_23C8A1380);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_23C585C34(v13, &qword_27E203780, &unk_23C8A1380);
    v30 = v44;
  }

  else
  {
    sub_23C83155C(v13, v21, type metadata accessor for TranscriptProtoToolParameterValueEnum);
    sub_23C83155C(v21, v19, type metadata accessor for TranscriptProtoToolParameterValueEnum);
    sub_23C585C34(v27, &qword_27E1FAB68, &unk_23C879140);
    v31 = v42;
    sub_23C83155C(v19, v42, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C83155C(v31, v27, type metadata accessor for ToolKitProtoTypedValue);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  v32 = v45;
  sub_23C8711A4();
  v33 = v43;
  if (v32)
  {
    return sub_23C585C34(v27, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v27, v43, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_23C585C34(v27, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v33, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v40;
    sub_23C83155C(v33, v40, type metadata accessor for ToolKitProtoTypedValue);
    if (v29 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v27, &qword_27E1FAB68, &unk_23C879140);
    v36 = v49;
    sub_23C585C34(v49, &qword_27E203780, &unk_23C8A1380);
    sub_23C83155C(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_23C7EB290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E203780, &unk_23C8A1380);
  v13 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203780, &unk_23C8A1380);
  }

  sub_23C83155C(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C7EB540(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203138, type metadata accessor for TranscriptProtoToolParameterValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EB5E0()
{
  sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue);

  return sub_23C8711F4();
}

uint64_t sub_23C7EB64C()
{
  sub_23C8314AC(&qword_27E202E20, type metadata accessor for TranscriptProtoToolParameterValue);

  return sub_23C871204();
}

uint64_t TranscriptProtoEntitySpanMatchResult.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoEntitySpanMatchResult(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EB910(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203130, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EB9B0()
{
  sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7EBA1C()
{
  sub_23C8314AC(&qword_27E202E38, type metadata accessor for TranscriptProtoEntitySpanMatchResult);

  return sub_23C871204();
}

uint64_t sub_23C7EBAB4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201250);
  __swift_project_value_buffer(v0, qword_27E201250);
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

uint64_t TranscriptProtoToolRetrievalResponse.decodeMessage<A>(decoder:)()
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
            sub_23C8314AC(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool);
            break;
          case 5:
            v3 = v0;
            type metadata accessor for ContextProtoToolRetrievalType(0);
            sub_23C8314AC(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType);
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

uint64_t TranscriptProtoToolRetrievalResponse.traverse<A>(visitor:)()
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
        if (!*(*(v0 + 5) + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_23C8314AC(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool), result = sub_23C8712F4(), !v1))
        {
          if (!*(*(v0 + 6) + 16) || (type metadata accessor for ContextProtoToolRetrievalType(0), sub_23C8314AC(&qword_27E1FA580, type metadata accessor for ContextProtoToolRetrievalType), result = sub_23C8712F4(), !v1))
          {
            v8 = v0 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
            return sub_23C870F14();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C7EC17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203128, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EC21C()
{
  sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return sub_23C8711F4();
}

uint64_t sub_23C7EC288()
{
  sub_23C8314AC(&qword_27E202E50, type metadata accessor for TranscriptProtoToolRetrievalResponse);

  return sub_23C871204();
}

uint64_t sub_23C7EC324()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201268);
  __swift_project_value_buffer(v0, qword_27E201268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 5;
  *v6 = "responseOutput";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 7;
  *v10 = "clientQueryId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 8;
  *v11 = "interpretedStatementResults";
  *(v11 + 8) = 27;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoSystemResponse.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 8:
          type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
          sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult);
          sub_23C871194();
          break;
        case 7:
          v3 = *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24);
          sub_23C871154();
          break;
        case 5:
          sub_23C7EC698();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7EC698()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemResponse(0) + 20);
  type metadata accessor for TranscriptProtoResponseOutput(0);
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoSystemResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C7EC860(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C7ECA7C(v3);
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
      sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult);
      sub_23C8712F4();
    }

    v8 = v5 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EC860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203768, &unk_23C8A1390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoSystemResponse(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203768, &unk_23C8A1390);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203768, &unk_23C8A1390);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoResponseOutput);
  sub_23C8314AC(&qword_27E2025E0, type metadata accessor for TranscriptProtoResponseOutput);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoResponseOutput);
}

uint64_t sub_23C7ECA7C(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoSystemResponse(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7ECB40@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  *(v7 + 1) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C7ECC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203120, type metadata accessor for TranscriptProtoSystemResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7ECCBC()
{
  sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse);

  return sub_23C8711F4();
}

uint64_t sub_23C7ECD28()
{
  sub_23C8314AC(&qword_27E202E68, type metadata accessor for TranscriptProtoSystemResponse);

  return sub_23C871204();
}

uint64_t sub_23C7ECDC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201280);
  __swift_project_value_buffer(v0, qword_27E201280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23C875550;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "outcome";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "resultStatementId";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "originProgramStatementId";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actionEventId";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "toolId";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "originTaskStatementId";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t TranscriptProtoInterpretedStatementResult.decodeMessage<A>(decoder:)()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            v4 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 28);
LABEL_19:
            v0 = v3;
            sub_23C871154();
            break;
          case 5:
            v3 = v0;
            v5 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 32);
            goto LABEL_19;
          case 6:
            sub_23C7ED3B4();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for TranscriptProtoStatementOutcome(0);
            sub_23C8314AC(&qword_27E1FBB50, type metadata accessor for TranscriptProtoStatementOutcome);
            sub_23C8711A4();
            break;
          case 2:
            sub_23C7ED24C();
            break;
          case 3:
            sub_23C7ED300();
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7ED24C()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7ED300()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7ED3B4()
{
  v0 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 36);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoInterpretedStatementResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C579BC0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C7ED588(v3, a1, a2, a3);
    sub_23C7ED7A4(v3, a1, a2, a3);
    sub_23C7ED9C0(v3, a1, a2, a3, type metadata accessor for TranscriptProtoInterpretedStatementResult);
    sub_23C7EDA44(v3, a1, a2, a3, type metadata accessor for TranscriptProtoInterpretedStatementResult);
    sub_23C7EDAC8(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) + 40);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7ED588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

uint64_t sub_23C7ED7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
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

uint64_t sub_23C7ED9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7EDA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C7EDAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  sub_23C5855B0(a1 + *(v14 + 36), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7EDD30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + a1[6], 1, 1, v6);
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v7(a2 + a1[9], 1, 1, v6);
  v11 = a2 + a1[10];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7EDE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203118, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EDF38()
{
  sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7EDFA4()
{
  sub_23C8314AC(&qword_27E201C10, type metadata accessor for TranscriptProtoInterpretedStatementResult);

  return sub_23C871204();
}

uint64_t sub_23C7EE040()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201298);
  __swift_project_value_buffer(v0, qword_27E201298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "expression";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "isRoot";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "isExpanded";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoProgramStatement.decodeMessage<A>(decoder:)()
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
        if (result == 5)
        {
          v3 = v0;
          v5 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 24);
        }

        else
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

          v3 = v0;
          v4 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 28);
        }

        v0 = v3;
        sub_23C871074();
      }

      else if (result == 1)
      {
        type metadata accessor for TranscriptProtoStatementID(0);
        sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
        sub_23C8711A4();
      }

      else if (result == 4)
      {
        sub_23C7EE40C();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7EE40C()
{
  v0 = *(type metadata accessor for TranscriptProtoProgramStatement(0) + 20);
  type metadata accessor for TranscriptProtoExpression(0);
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoProgramStatement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C57A160(v3, a1, a2, a3);
  if (!v4)
  {
    sub_23C7EE580(v3, a1, a2, a3);
    sub_23C7EE79C(v3);
    sub_23C7EE814(v3);
    v9 = v3 + *(type metadata accessor for TranscriptProtoProgramStatement(0) + 32);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7EE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203758, &qword_23C8A09C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoExpression(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoProgramStatement(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203758, &qword_23C8A09C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203758, &qword_23C8A09C8);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoExpression);
  sub_23C8314AC(&qword_27E202B68, type metadata accessor for TranscriptProtoExpression);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoExpression);
}

uint64_t sub_23C7EE79C(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C7EE814(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_23C871244();
  }

  return result;
}

uint64_t sub_23C7EE8D8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v7) = 2;
  v8 = a2 + a1[8];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7EE9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203110, type metadata accessor for TranscriptProtoProgramStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EEA90()
{
  sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement);

  return sub_23C8711F4();
}

uint64_t sub_23C7EEAFC()
{
  sub_23C8314AC(&qword_27E2017B0, type metadata accessor for TranscriptProtoProgramStatement);

  return sub_23C871204();
}

uint64_t sub_23C7EEB98()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2012B0);
  __swift_project_value_buffer(v0, qword_27E2012B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceLocale";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userLocale";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "responseLocale";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7EEDD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v11 = v5 + 32;
LABEL_3:
        a5(v11, a2, a3);
        break;
      case 2:
        v11 = v5 + 16;
        goto LABEL_3;
      case 1:
        a4(v5, a2, a3);
        break;
    }
  }
}

uint64_t sub_23C7EEEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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
    v11 = v4[3];
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = sub_23C8712C4(), !v5))
    {
      v13 = v4[5];
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v4[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v14 || (result = sub_23C8712C4(), !v5))
      {
        v15 = v4 + *(a4(0) + 28);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7EF064(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203108, type metadata accessor for TranscriptProtoLocaleSettings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EF104()
{
  sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings);

  return sub_23C8711F4();
}

uint64_t sub_23C7EF170()
{
  sub_23C8314AC(&qword_27E202EA0, type metadata accessor for TranscriptProtoLocaleSettings);

  return sub_23C871204();
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.decodeMessage<A>(decoder:)()
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
      sub_23C8710F4();
    }
  }

  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_23C871284(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t static TranscriptProtoDeviceDetailsDeviceType.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C7EF434@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a2 + *(a1 + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C7EF4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203100, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EF550()
{
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_23C8711F4();
}

uint64_t sub_23C7EF5BC()
{
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);

  return sub_23C871204();
}

uint64_t sub_23C7EF638(_DWORD *a1, _DWORD *a2, uint64_t a3)
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

uint64_t sub_23C7EF6F8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2012E0);
  __swift_project_value_buffer(v0, qword_27E2012E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "deviceIdsId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7EF910()
{
  v0 = *(type metadata accessor for TranscriptProtoDeviceDetails(0) + 20);
  type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  return sub_23C8711A4();
}

uint64_t sub_23C7EFA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203748, &unk_23C8A13A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E203748, &unk_23C8A13A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203748, &unk_23C8A13A0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_23C8314AC(&qword_27E202EB8, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
}

uint64_t sub_23C7EFC84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
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

uint64_t sub_23C7EFD58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030F8, type metadata accessor for TranscriptProtoDeviceDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7EFDF8()
{
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails);

  return sub_23C8711F4();
}

uint64_t sub_23C7EFE64()
{
  sub_23C8314AC(&qword_27E202ED0, type metadata accessor for TranscriptProtoDeviceDetails);

  return sub_23C871204();
}

uint64_t sub_23C7EFF00()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2012F8);
  __swift_project_value_buffer(v0, qword_27E2012F8);
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
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoStatementID.decodeMessage<A>(decoder:)()
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
      sub_23C871174();
    }

    else if (result == 2)
    {
      sub_23C871154();
    }
  }

  return result;
}

uint64_t TranscriptProtoStatementID.traverse<A>(visitor:)()
{
  result = *v0;
  if (!result || (result = sub_23C8712D4(), !v1))
  {
    if (*(v0 + 2))
    {
      v3 = *(v0 + 1);
      result = sub_23C8712C4();
    }

    if (!v1)
    {
      v4 = v0 + *(type metadata accessor for TranscriptProtoStatementID(0) + 24);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7F026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = a2 + *(a1 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C7F02EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030F0, type metadata accessor for TranscriptProtoStatementID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F038C()
{
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);

  return sub_23C8711F4();
}

uint64_t sub_23C7F03F8()
{
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);

  return sub_23C871204();
}

uint64_t sub_23C7F0494()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201310);
  __swift_project_value_buffer(v0, qword_27E201310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tool";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originProgramStatementId";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoToolResolution.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C7F08A4();
          break;
        case 2:
          sub_23C7F07F0();
          break;
        case 1:
          type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
          sub_23C8314AC(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F07F0()
{
  v0 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F08A4()
{
  v0 = *(type metadata accessor for TranscriptProtoToolResolution(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F09C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACA8, &unk_23C87B940);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E1FACA8, &unk_23C87B940);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACA8, &unk_23C87B940);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C8314AC(&qword_27E1FACB8, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_23C7F0BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoToolResolution(0);
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

uint64_t sub_23C7F0DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoToolResolution(0);
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

uint64_t sub_23C7F10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030E8, type metadata accessor for TranscriptProtoToolResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F1158()
{
  sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution);

  return sub_23C8711F4();
}

uint64_t sub_23C7F11C4()
{
  sub_23C8314AC(&qword_27E202EF8, type metadata accessor for TranscriptProtoToolResolution);

  return sub_23C871204();
}

uint64_t sub_23C7F1260()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201328);
  __swift_project_value_buffer(v0, qword_27E201328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "operation";
  *(v12 + 1) = 9;
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
  *(v5 + 4 * v2) = 5;
  *v15 = "statementIdToUndo";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoUndoRedoRequest.decodeMessage<A>(decoder:)()
{
  result = sub_23C871044();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_23C871164();
        }

        else if (result == 2)
        {
          sub_23C871154();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_23C62DA20();
            sub_23C8710A4();
            break;
          case 4:
            sub_23C7F1644();
            break;
          case 5:
            sub_23C7F16F8();
            break;
        }
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F1644()
{
  v0 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F16F8()
{
  v0 = *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(v3 + 32))
    {
      v11 = *(v3 + 24);
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      if (*(v3 + 16) == 1)
      {
        sub_23C62DA20();
        sub_23C871254();
      }

      sub_23C7F18E0(v3, a1, a2, a3);
      sub_23C7F1AFC(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for TranscriptProtoUndoRedoRequest(0) + 36);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7F18E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
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

uint64_t sub_23C7F1AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
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

uint64_t sub_23C7F1D64@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = a1[7];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[8], 1, 1, v5);
  v7 = a2 + a1[9];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C7F1E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030E0, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F1F08()
{
  sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7F1F74()
{
  sub_23C8314AC(&qword_27E202F10, type metadata accessor for TranscriptProtoUndoRedoRequest);

  return sub_23C871204();
}

uint64_t sub_23C7F2010()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201340);
  __swift_project_value_buffer(v0, qword_27E201340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operation";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statementId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementIdToUndo";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoClientUndoRedoRequest.decodeMessage<A>(decoder:)()
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
          sub_23C7F2388();
        }

        else if (result == 4)
        {
          sub_23C7F243C();
        }
      }

      else if (result == 1)
      {
        sub_23C871164();
      }

      else if (result == 2)
      {
        sub_23C62DA20();
        sub_23C8710A4();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F2388()
{
  v0 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F243C()
{
  v0 = *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoClientUndoRedoRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(v3 + 16) != 1 || (sub_23C62DA20(), result = sub_23C871254(), !v4))
    {
      result = sub_23C7F2600(v3, a1, a2, a3);
      if (!v4)
      {
        sub_23C7F281C(v3, a1, a2, a3);
        v12 = v3 + *(type metadata accessor for TranscriptProtoClientUndoRedoRequest(0) + 32);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C7F2600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
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

uint64_t sub_23C7F281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
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

uint64_t sub_23C7F2A84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[7], 1, 1, v5);
  v7 = a2 + a1[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C7F2B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030D8, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F2C24()
{
  sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7F2C90()
{
  sub_23C8314AC(&qword_27E202F28, type metadata accessor for TranscriptProtoClientUndoRedoRequest);

  return sub_23C871204();
}

uint64_t sub_23C7F2D2C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201358);
  __swift_project_value_buffer(v0, qword_27E201358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
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
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "statementId";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7F2FA4()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3058()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionRequest(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  sub_23C5855B0(a1 + *(v14 + 20), v8, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C8314AC(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_23C7F3390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
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

uint64_t sub_23C7F3638@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a5, 1, 1, v9);
  v10 = a1[5];
  v11 = a3(0);
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  v12 = a1[6];
  v13 = a4(0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  v14 = a5 + a1[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7F37A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030D0, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F3840()
{
  sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return sub_23C8711F4();
}

uint64_t sub_23C7F38AC()
{
  sub_23C8314AC(&qword_27E202F40, type metadata accessor for TranscriptProtoTypeConversionRequest);

  return sub_23C871204();
}

uint64_t sub_23C7F3948()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201370);
  __swift_project_value_buffer(v0, qword_27E201370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
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
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originStatementId";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C7F3BC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  result = sub_23C871044();
  if (!v6)
  {
    while ((v14 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          a5(a1, v9, a2, a3);
          break;
        case 2:
          a4(a1, v9, a2, a3);
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypedValue(0);
          sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C8711A4();
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F3CFC()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3DB0()
{
  v0 = *(type metadata accessor for TranscriptProtoTypeConversionResult(0) + 24);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F3ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
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

uint64_t sub_23C7F40E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
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

uint64_t sub_23C7F4368@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a1[5];
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(*(v7 - 8) + 56);
  v8(a3 + v6, 1, 1, v7);
  v8(a3 + a1[6], 1, 1, v7);
  v9 = a3 + a1[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7F44A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030C8, type metadata accessor for TranscriptProtoTypeConversionResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F4540()
{
  sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7F45AC()
{
  sub_23C8314AC(&qword_27E202F58, type metadata accessor for TranscriptProtoTypeConversionResult);

  return sub_23C871204();
}

uint64_t sub_23C7F4648()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201388);
  __swift_project_value_buffer(v0, qword_27E201388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "spans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requiredContext";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "utteranceContext";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "toolRetrievalResponse";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "dynamicEnumerationEntities";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryDecorationResult.decodeMessage<A>(decoder:)()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_23C7F4BA8();
            break;
          case 5:
            v3 = v0;
            type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
            sub_23C8314AC(&qword_27E201C70, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
            goto LABEL_5;
          case 6:
            goto LABEL_12;
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          type metadata accessor for ContextProtoSpanMatchedEntity(0);
          sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_5:
          v0 = v3;
          sub_23C871194();
          goto LABEL_6;
        }

        if (result == 2 || result == 3)
        {
LABEL_12:
          v3 = v0;
          type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
          sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement);
          goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C7F4BA8()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 36);
  type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  sub_23C8314AC(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryDecorationResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for ContextProtoSpanMatchedEntity(0);
    sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity);
    result = sub_23C8712F4();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
    sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement);
    v10 = v5;
    result = sub_23C8712F4();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement), result = sub_23C8712F4(), !v10))
  {
    result = sub_23C7F4F44(v3, a1, a2, a3);
    if (!v10)
    {
      if (*(v3[3] + 16))
      {
        type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
        sub_23C8314AC(&qword_27E201C70, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
        sub_23C8712F4();
      }

      if (*(v3[4] + 16))
      {
        type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
        sub_23C8314AC(&qword_27E201958, type metadata accessor for TranscriptProtoRetrievedContextStatement);
        sub_23C8712F4();
      }

      v11 = v3 + *(type metadata accessor for TranscriptProtoQueryDecorationResult(0) + 40);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C7F4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v10 = *(DecorationToolRetrievalResponse - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  sub_23C5855B0(a1 + *(DecorationResult + 36), v8, &qword_27E1FACE0, &unk_23C8A13B0);
  if ((*(v10 + 48))(v8, 1, DecorationToolRetrievalResponse) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FACE0, &unk_23C8A13B0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C8314AC(&qword_27E1FA948, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
}

uint64_t sub_23C7F51AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 36);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a2[v4], 1, 1, DecorationToolRetrievalResponse);
  v6 = &a2[*(a1 + 40)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v8 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v8;
  *(a2 + 2) = v8;
  *(a2 + 3) = v8;
  *(a2 + 4) = v8;
  return result;
}

uint64_t sub_23C7F5288(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030C0, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F5328()
{
  sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7F5394()
{
  sub_23C8314AC(&qword_27E202F70, type metadata accessor for TranscriptProtoQueryDecorationResult);

  return sub_23C871204();
}

uint64_t sub_23C7F5430()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E2013A0);
  __swift_project_value_buffer(v0, qword_27E2013A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
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
  *v10 = "dataSource";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "payload";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.decodeMessage<A>(decoder:)()
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
        sub_23C7F57D0();
        break;
      case 2:
        sub_23C871164();
        break;
      case 1:
        sub_23C7F571C();
        break;
    }
  }

  return result;
}

uint64_t sub_23C7F571C()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  return sub_23C8711A4();
}

uint64_t sub_23C7F57D0()
{
  v0 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 24);
  type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  return sub_23C8711A4();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C7F594C(v3, a1, a2, a3);
  if (!v4)
  {
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

    sub_23C7F5B68(v3, a1, a2, a3);
    v12 = v3 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0) + 28);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_23C5855B0(a1 + *(DecorationPrePlannerResult + 20), v8, &qword_27E1FAAF8, &unk_23C8A1180);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_23C585C34(v8, &qword_27E1FAAF8, &unk_23C8A1180);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8314AC(&qword_27E201840, type metadata accessor for TranscriptProtoStatementID);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_23C7F5B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203738, &qword_23C8A09B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v10 = *(DecorationPrePlannerResultPayload - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  sub_23C5855B0(a1 + *(DecorationPrePlannerResult + 24), v8, &qword_27E203738, &qword_23C8A09B0);
  if ((*(v10 + 48))(v8, 1, DecorationPrePlannerResultPayload) == 1)
  {
    return sub_23C585C34(v8, &qword_27E203738, &qword_23C8A09B0);
  }

  sub_23C83155C(v8, v13, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C871304();
  return sub_23C8315C4(v13, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
}

uint64_t sub_23C7F5DFC@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v7 = a1[5];
  v8 = a2(0);
  (*(*(v8 - 8) + 56))(&a4[v7], 1, 1, v8);
  v9 = a1[6];
  v10 = a3(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[a1[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = 0;
  *(a4 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C7F5F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F5FBC()
{
  sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_23C8711F4();
}

uint64_t sub_23C7F6028()
{
  sub_23C8314AC(&qword_27E202F88, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);

  return sub_23C871204();
}

uint64_t sub_23C7F6104(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_23C7F61B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_23C8712A4(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F62F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030B0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6390()
{
  sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F63FC()
{
  sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypedValue(0), sub_23C8314AC(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F6660(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030A8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6700()
{
  sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F676C()
{
  sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoRetrievedContext(0), sub_23C8314AC(&qword_27E1FA4F0, type metadata accessor for ContextProtoRetrievedContext), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F6A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E2030A0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6AE4()
{
  sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F6B50()
{
  sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoSpanMatchedEntity(0), sub_23C8314AC(&qword_27E1FA4E0, type metadata accessor for ContextProtoSpanMatchedEntity), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F6DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203098, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F6E6C()
{
  sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F6ED8()
{
  sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoRetrievedTool(0), sub_23C8314AC(&qword_27E1FA578, type metadata accessor for ContextProtoRetrievedTool), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F71B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203090, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F7250()
{
  sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F72BC()
{
  sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);

  return sub_23C871204();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ContextProtoToolQueryOutput(0), sub_23C8314AC(&qword_27E1FA930, type metadata accessor for ContextProtoToolQueryOutput), result = sub_23C8712F4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F75AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203088, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7F764C()
{
  sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_23C8711F4();
}

uint64_t sub_23C7F76B8()
{
  sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);

  return sub_23C871204();
}

uint64_t sub_23C7F7768()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E201448);
  __swift_project_value_buffer(v0, qword_27E201448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875550;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "strings";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typedValues";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "retrievedContexts";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entitySpanMatchResults";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "retrievedTools";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "toolQueryOutputs";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_23C7F8CAC(v5, a1, a2, a3);
          break;
        case 5:
          sub_23C7F9268(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C7F9824(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_23C7F7B84(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C7F8134(v5, a1, a2, a3);
          break;
        case 3:
          sub_23C7F86F0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23C7F7B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203708, &qword_23C8A0980);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedStringVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedStringVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201CB8, &qword_23C8A13C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }

    else
    {
      sub_23C585C34(v28, &qword_27E203708, &qword_23C8A0980);
      v35 = v43;
      sub_23C83155C(v20, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203708, &qword_23C8A0980);
  }

  sub_23C5855B0(v28, v36, &qword_27E203708, &qword_23C8A0980);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203708, &qword_23C8A0980);
    return sub_23C585C34(v36, &qword_27E203708, &qword_23C8A0980);
  }

  else
  {
    v39 = v44;
    sub_23C83155C(v36, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203708, &qword_23C8A0980);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7F8134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203710, &qword_23C8A0988);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201CB8, &qword_23C8A13C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v28, &qword_27E203710, &qword_23C8A0988);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203710, &qword_23C8A0988);
  }

  sub_23C5855B0(v28, v36, &qword_27E203710, &qword_23C8A0988);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203710, &qword_23C8A0988);
    return sub_23C585C34(v36, &qword_27E203710, &qword_23C8A0988);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203710, &qword_23C8A0988);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7F86F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203718, &qword_23C8A0990);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201CB8, &qword_23C8A13C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v28, &qword_27E203718, &qword_23C8A0990);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203718, &qword_23C8A0990);
  }

  sub_23C5855B0(v28, v36, &qword_27E203718, &qword_23C8A0990);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203718, &qword_23C8A0990);
    return sub_23C585C34(v36, &qword_27E203718, &qword_23C8A0990);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203718, &qword_23C8A0990);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7F8CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203720, &qword_23C8A0998);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201CB8, &qword_23C8A13C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v28, &qword_27E203720, &qword_23C8A0998);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203720, &qword_23C8A0998);
  }

  sub_23C5855B0(v28, v36, &qword_27E203720, &qword_23C8A0998);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203720, &qword_23C8A0998);
    return sub_23C585C34(v36, &qword_27E203720, &qword_23C8A0998);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203720, &qword_23C8A0998);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7F9268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203728, &qword_23C8A09A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201CB8, &qword_23C8A13C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v28, &qword_27E203728, &qword_23C8A09A0);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203728, &qword_23C8A09A0);
  }

  sub_23C5855B0(v28, v36, &qword_27E203728, &qword_23C8A09A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203728, &qword_23C8A09A0);
    return sub_23C585C34(v36, &qword_27E203728, &qword_23C8A09A0);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203728, &qword_23C8A09A0);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_23C7F9824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v6 = *(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v16 = *(DecorationPrePlannerPayloadEnum - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203730, &qword_23C8A09A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
  v30 = DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_23C5855B0(a1, v14, &qword_27E201CB8, &qword_23C8A13C0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, DecorationPrePlannerPayloadEnum);
  if (v32 == 1)
  {
    sub_23C585C34(v14, &qword_27E201CB8, &qword_23C8A13C0);
    v33 = v48;
    v34 = DecorationPrePlannerPayloadEnum;
  }

  else
  {
    sub_23C83155C(v14, v22, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    sub_23C83155C(v22, v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    v34 = DecorationPrePlannerPayloadEnum;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v28, &qword_27E203730, &qword_23C8A09A8);
      v35 = v44;
      sub_23C83155C(v20, v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      sub_23C83155C(v35, v28, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v37 = v47;
  sub_23C8711A4();
  if (v37)
  {
    return sub_23C585C34(v28, &qword_27E203730, &qword_23C8A09A8);
  }

  sub_23C5855B0(v28, v36, &qword_27E203730, &qword_23C8A09A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_23C585C34(v28, &qword_27E203730, &qword_23C8A09A8);
    return sub_23C585C34(v36, &qword_27E203730, &qword_23C8A09A8);
  }

  else
  {
    v39 = v43;
    sub_23C83155C(v36, v43, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    if (v32 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v28, &qword_27E203730, &qword_23C8A09A8);
    v40 = v42;
    sub_23C585C34(v42, &qword_27E201CB8, &qword_23C8A13C0);
    sub_23C83155C(v39, v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_23C5855B0(v3, &v16 - v10, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v11, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C7FA6A0(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C7FA8D8(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7FAB10(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C7FA230(v3, a1, a2, a3);
    }

    else
    {
      sub_23C7FA468(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_23C7F9FFC(v3, a1, a2, a3);
  }

  result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0) + 20);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C7F9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    sub_23C8314AC(&qword_27E202FA0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    sub_23C8314AC(&qword_27E202FB8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    sub_23C8314AC(&qword_27E202FD0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    sub_23C8314AC(&qword_27E202FE8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FA8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    sub_23C8314AC(&qword_27E203000, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FAB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v8, &qword_27E201CB8, &qword_23C8A13C0);
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  if ((*(*(DecorationPrePlannerPayloadEnum - 8) + 48))(v8, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C585C34(v8, &qword_27E201CB8, &qword_23C8A13C0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C83155C(v8, v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    sub_23C8314AC(&qword_27E203018, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
    sub_23C871304();
    return sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  }

  result = sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  __break(1u);
  return result;
}

uint64_t sub_23C7FADF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203080, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7FAE98()
{
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_23C8711F4();
}

uint64_t sub_23C7FAF04()
{
  sub_23C8314AC(&qword_27E203030, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);

  return sub_23C871204();
}

uint64_t sub_23C7FB034(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203078, type metadata accessor for TranscriptProtoContinuePlanning);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7FB0D4()
{
  sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning);

  return sub_23C8711F4();
}

uint64_t sub_23C7FB140()
{
  sub_23C8314AC(&qword_27E203048, type metadata accessor for TranscriptProtoContinuePlanning);

  return sub_23C871204();
}

uint64_t sub_23C7FB300@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C7FB3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8314AC(&qword_27E203070, type metadata accessor for TranscriptProtoSkipStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C7FB448()
{
  sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement);

  return sub_23C8711F4();
}

uint64_t sub_23C7FB4B4()
{
  sub_23C8314AC(&qword_27E203060, type metadata accessor for TranscriptProtoSkipStatement);

  return sub_23C871204();
}

uint64_t sub_23C7FB534(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v64);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v62 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203790, &qword_23C8A09F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  result = MEMORY[0x28223BE20](v15);
  v65 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v65 + 16))
  {
    return 0;
  }

  v60 = a1;
  v61 = &v59 - v17;
  v63 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v59 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v66 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_18:
    v33 = (*(v60 + 48) + 16 * v27);
    v35 = *v33;
    v34 = v33[1];
    v36 = v62;
    sub_23C8314F4(*(v60 + 56) + *(v4 + 72) * v27, v62, type metadata accessor for TranscriptProtoStatementID);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203798, &qword_23C8A09F8);
    v38 = *(v37 + 48);
    v39 = v63;
    *v63 = v35;
    v39[1] = v34;
    v40 = v36;
    v30 = v39;
    sub_23C83155C(v40, v39 + v38, type metadata accessor for TranscriptProtoStatementID);
    (*(*(v37 - 8) + 56))(v30, 0, 1, v37);

LABEL_19:
    v41 = v30;
    v42 = v61;
    sub_23C60C610(v41, v61, &qword_27E203790, &qword_23C8A09F0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203798, &qword_23C8A09F8);
    v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
    v45 = v44 == 1;
    if (v44 == 1)
    {
      return v45;
    }

    v46 = v42;
    v47 = v8;
    v48 = *(v43 + 48);
    v49 = *v46;
    v50 = v46[1];
    sub_23C83155C(v46 + v48, v11, type metadata accessor for TranscriptProtoStatementID);
    v51 = v49;
    v52 = v65;
    v53 = sub_23C5FF898(v51, v50);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_31;
    }

    v8 = v47;
    sub_23C8314F4(*(v52 + 56) + *(v4 + 72) * v53, v47, type metadata accessor for TranscriptProtoStatementID);
    if (*v47 != *v11)
    {
      goto LABEL_30;
    }

    v56 = *(v47 + 16);
    v57 = *(v11 + 2);
    if (v56)
    {
      if (!v57 || (*(v47 + 8) != *(v11 + 1) || v56 != v57) && (sub_23C872014() & 1) == 0)
      {
LABEL_30:
        sub_23C8315C4(v47, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
        return 0;
      }
    }

    else if (v57)
    {
      goto LABEL_30;
    }

    v25 = *(v64 + 24);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v26 = sub_23C871754();
    sub_23C8315C4(v47, type metadata accessor for TranscriptProtoStatementID);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoStatementID);
    v23 = v66;
    if ((v26 & 1) == 0)
    {
      return v45;
    }
  }

  if (v24 <= v19 + 1)
  {
    v28 = v19 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  v30 = v63;
  while (1)
  {
    v31 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v31 >= v24)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203798, &qword_23C8A09F8);
      (*(*(v58 - 8) + 56))(v30, 1, 1, v58);
      v66 = 0;
      v19 = v29;
      goto LABEL_19;
    }

    v32 = *(v59 + 8 * v31);
    ++v19;
    if (v32)
    {
      v66 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v19 = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FBAD0(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v91 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v91);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB78, &unk_23C8A1360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v74 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB80, &qword_23C878F30);
  v11 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v13 = &v74 - v12;
  v82 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v89 = *(v82 - 8);
  v14 = *(v89 + 64);
  v15 = MEMORY[0x28223BE20](v82);
  v90 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v81 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203938, &qword_23C8A0B98);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v23);
  v84 = (&v74 - v27);
  v85 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v85 + 16))
  {
    return 0;
  }

  v28 = 0;
  v78 = a1;
  v29 = *(a1 + 64);
  v75 = a1 + 64;
  v76 = v10;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v88 = (v4 + 48);
  v34 = &unk_23C8A1360;
  v79 = v25;
  v80 = v33;
  while (v32)
  {
    v87 = (v32 - 1) & v32;
    v38 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
    v44 = (*(v78 + 48) + 16 * v38);
    v46 = *v44;
    v45 = v44[1];
    v47 = v81;
    sub_23C8314F4(*(v78 + 56) + *(v89 + 72) * v38, v81, type metadata accessor for TranscriptProtoASTFlatValue);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203940, &qword_23C8A0BA0);
    v49 = *(v48 + 48);
    *v25 = v46;
    v25[1] = v45;
    sub_23C83155C(v47, v25 + v49, type metadata accessor for TranscriptProtoASTFlatValue);
    (*(*(v48 - 8) + 56))(v25, 0, 1, v48);

    v41 = v84;
LABEL_18:
    sub_23C60C610(v25, v41, &qword_27E203938, &qword_23C8A0B98);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203940, &qword_23C8A0BA0);
    v51 = (*(*(v50 - 8) + 48))(v41, 1, v50);
    v86 = v51 == 1;
    if (v51 == 1)
    {
      return v86;
    }

    v52 = v34;
    v53 = v88;
    v54 = v13;
    v55 = v91;
    v56 = *(v50 + 48);
    v57 = *v41;
    v58 = v41[1];
    sub_23C83155C(v41 + v56, v19, type metadata accessor for TranscriptProtoASTFlatValue);
    v59 = v85;
    v60 = sub_23C5FF898(v57, v58);
    v61 = v19;
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      goto LABEL_31;
    }

    v64 = v90;
    sub_23C8314F4(*(v59 + 56) + *(v89 + 72) * v60, v90, type metadata accessor for TranscriptProtoASTFlatValue);
    v65 = *(v83 + 48);
    v13 = v54;
    v66 = v54;
    v34 = v52;
    sub_23C5855B0(v64, v66, &qword_27E1FAB78, v52);
    sub_23C5855B0(v61, &v13[v65], &qword_27E1FAB78, v52);
    v67 = *v53;
    v19 = v61;
    if ((*v53)(v13, 1, v55) == 1)
    {
      if (v67(&v13[v65], 1, v91) != 1)
      {
        goto LABEL_29;
      }

      v34 = v52;
      sub_23C585C34(v13, &qword_27E1FAB78, v52);
    }

    else
    {
      v68 = v13;
      v69 = v13;
      v70 = v76;
      sub_23C5855B0(v68, v76, &qword_27E1FAB78, v52);
      if (v67((v69 + v65), 1, v91) == 1)
      {
        sub_23C8315C4(v70, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v13 = v69;
        v19 = v61;
LABEL_29:
        sub_23C585C34(v13, &qword_27E1FAB80, &qword_23C878F30);
LABEL_30:
        sub_23C8315C4(v90, type metadata accessor for TranscriptProtoASTFlatValue);
        v61 = v19;
LABEL_31:
        sub_23C8315C4(v61, type metadata accessor for TranscriptProtoASTFlatValue);
        return 0;
      }

      v71 = v77;
      sub_23C83155C(v69 + v65, v77, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v72 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v70, v71);
      sub_23C8315C4(v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C8315C4(v70, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_23C585C34(v69, &qword_27E1FAB78, v52);
      v13 = v69;
      v19 = v61;
      if ((v72 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v35 = *(v82 + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v36 = v90;
    v37 = sub_23C871754();
    sub_23C8315C4(v36, type metadata accessor for TranscriptProtoASTFlatValue);
    result = sub_23C8315C4(v19, type metadata accessor for TranscriptProtoASTFlatValue);
    v25 = v79;
    v33 = v80;
    v32 = v87;
    if ((v37 & 1) == 0)
    {
      return v86;
    }
  }

  if (v33 <= v28 + 1)
  {
    v39 = v28 + 1;
  }

  else
  {
    v39 = v33;
  }

  v40 = v39 - 1;
  v41 = v84;
  while (1)
  {
    v42 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v42 >= v33)
    {
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203940, &qword_23C8A0BA0);
      (*(*(v73 - 8) + 56))(v25, 1, 1, v73);
      v87 = 0;
      v28 = v40;
      goto LABEL_18;
    }

    v43 = *(v75 + 8 * v42);
    ++v28;
    if (v43)
    {
      v87 = (v43 - 1) & v43;
      v38 = __clz(__rbit64(v43)) | (v42 << 6);
      v28 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FC320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v122 = (&v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v105 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  v12 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v14 = &v105 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v118 = (&v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v105 - v21);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v23 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v125 = &v105 - v24;
  v25 = type metadata accessor for TranscriptProtoParameterValue(0);
  v26 = *(v25 - 8);
  v127 = v25;
  v128 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v129 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v126 = &v105 - v31;
  MEMORY[0x28223BE20](v30);
  v115 = &v105 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D48, &qword_23C8A0F18);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v121 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v35);
  v120 = (&v105 - v38);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v110 = v22;
  v112 = a2;
  v113 = v11;
  v39 = 0;
  v108 = a1;
  v117 = v15;
  v40 = *(a1 + 64);
  v107 = a1 + 64;
  v41 = 1 << *(a1 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v106 = (v41 + 63) >> 6;
  v111 = (v16 + 48);
  v109 = (v5 + 48);
  v114 = v4;
  while (v43)
  {
    v124 = (v43 - 1) & v43;
    v50 = __clz(__rbit64(v43)) | (v39 << 6);
    v51 = v121;
LABEL_20:
    v56 = (*(v108 + 48) + 16 * v50);
    v58 = *v56;
    v57 = v56[1];
    v59 = v115;
    sub_23C8314F4(*(v108 + 56) + *(v128 + 72) * v50, v115, type metadata accessor for TranscriptProtoParameterValue);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D50, &qword_23C8A0F20);
    v61 = *(v60 + 48);
    *v51 = v58;
    v51[1] = v57;
    sub_23C83155C(v59, v51 + v61, type metadata accessor for TranscriptProtoParameterValue);
    (*(*(v60 - 8) + 56))(v51, 0, 1, v60);

LABEL_21:
    v62 = v120;
    sub_23C60C610(v51, v120, &qword_27E203D48, &qword_23C8A0F18);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D50, &qword_23C8A0F20);
    v64 = (*(*(v63 - 8) + 48))(v62, 1, v63) == 1;
    result = v64;
    if (v64)
    {
      return result;
    }

    v123 = v64;
    v65 = v14;
    v66 = *(v63 + 48);
    v67 = *v62;
    v68 = v62[1];
    v47 = v126;
    sub_23C83155C(v62 + v66, v126, type metadata accessor for TranscriptProtoParameterValue);
    v69 = v112;
    v70 = sub_23C5FF898(v67, v68);
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      goto LABEL_60;
    }

    v73 = *(v69 + 56);
    v74 = v129;
    sub_23C8314F4(v73 + *(v128 + 72) * v70, v129, type metadata accessor for TranscriptProtoParameterValue);
    v75 = *(v119 + 48);
    v76 = v125;
    sub_23C5855B0(v74, v125, &qword_27E1FAB68, &unk_23C879140);
    sub_23C5855B0(v47, v76 + v75, &qword_27E1FAB68, &unk_23C879140);
    v77 = *v111;
    v78 = v117;
    if ((*v111)(v76, 1, v117) == 1)
    {
      v79 = v77(v76 + v75, 1, v78);
      v80 = v114;
      if (v79 != 1)
      {
        goto LABEL_52;
      }

      v14 = v65;
      sub_23C585C34(v76, &qword_27E1FAB68, &unk_23C879140);
    }

    else
    {
      v81 = v110;
      sub_23C5855B0(v76, v110, &qword_27E1FAB68, &unk_23C879140);
      v82 = v77(v76 + v75, 1, v78);
      v80 = v114;
      if (v82 == 1)
      {
        sub_23C8315C4(v81, type metadata accessor for ToolKitProtoTypedValue);
LABEL_52:
        v102 = &qword_27E1FAB70;
        v103 = &qword_23C878F28;
        v104 = v76;
LABEL_58:
        sub_23C585C34(v104, v102, v103);
        goto LABEL_59;
      }

      v14 = v65;
      v83 = v76 + v75;
      v84 = v118;
      sub_23C83155C(v83, v118, type metadata accessor for ToolKitProtoTypedValue);
      v85 = *v81;
      v86 = *v84;
      if ((~*v81 & 0xF000000000000007) != 0)
      {
        v131 = *v81;
        if ((~v86 & 0xF000000000000007) == 0)
        {
          sub_23C5EDE04(v85);
          sub_23C5EDE04(v86);
          sub_23C5EDE04(v85);

LABEL_56:
          sub_23C5EDE08(v85);
          sub_23C5EDE08(v86);
          v47 = v126;
LABEL_57:
          sub_23C8315C4(v118, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C8315C4(v110, type metadata accessor for ToolKitProtoTypedValue);
          v102 = &qword_27E1FAB68;
          v103 = &unk_23C879140;
          v104 = v125;
          goto LABEL_58;
        }

        v130 = v86;
        sub_23C5EDE04(v85);
        sub_23C5EDE04(v86);
        sub_23C5EDE04(v85);
        v87 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v131, &v130);

        sub_23C5EDE08(v85);
        if ((v87 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_23C5EDE04(*v81);
        sub_23C5EDE04(v86);
        if ((~v86 & 0xF000000000000007) != 0)
        {
          goto LABEL_56;
        }

        sub_23C5EDE08(v85);
        v80 = v114;
        v47 = v126;
      }

      v88 = *(v117 + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v89 = v110;
      v90 = v118;
      LOBYTE(v88) = sub_23C871754();
      sub_23C8315C4(v90, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C8315C4(v89, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C585C34(v125, &qword_27E1FAB68, &unk_23C879140);
      if ((v88 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v91 = *(v127 + 20);
    v92 = *(v116 + 48);
    sub_23C5855B0(v129 + v91, v14, &qword_27E203CF8, &qword_23C8A0ED8);
    sub_23C5855B0(v47 + v91, &v14[v92], &qword_27E203CF8, &qword_23C8A0ED8);
    v93 = *v109;
    if ((*v109)(v14, 1, v80) == 1)
    {
      if (v93(&v14[v92], 1, v80) != 1)
      {
        goto LABEL_54;
      }

      sub_23C585C34(v14, &qword_27E203CF8, &qword_23C8A0ED8);
    }

    else
    {
      v94 = v113;
      sub_23C5855B0(v14, v113, &qword_27E203CF8, &qword_23C8A0ED8);
      if (v93(&v14[v92], 1, v80) == 1)
      {
        sub_23C8315C4(v94, type metadata accessor for TranscriptProtoPromptSelection);
        v47 = v126;
LABEL_54:
        v102 = &qword_27E203D00;
        v103 = &qword_23C8A0EE0;
        v104 = v14;
        goto LABEL_58;
      }

      v95 = &v14[v92];
      v96 = v122;
      sub_23C83155C(v95, v122, type metadata accessor for TranscriptProtoPromptSelection);
      v97 = *(v96 + 9);
      if (*(v94 + 9))
      {
        if ((*(v96 + 9) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (*(v96 + 9))
        {
          goto LABEL_50;
        }

        v98 = *v113;
        v99 = *v122;
        v100 = *(v122 + 8);
        if (v113[8])
        {
          if (v98)
          {
            if ((v122[1] & 1) == 0 || !v99)
            {
              goto LABEL_50;
            }
          }

          else if ((v122[1] & 1) == 0 || v99)
          {
            goto LABEL_50;
          }
        }

        else if ((v122[1] & 1) != 0 || v98 != v99)
        {
LABEL_50:
          sub_23C8315C4(v122, type metadata accessor for TranscriptProtoPromptSelection);
          sub_23C8315C4(v113, type metadata accessor for TranscriptProtoPromptSelection);
          sub_23C585C34(v14, &qword_27E203CF8, &qword_23C8A0ED8);
          v47 = v126;
LABEL_59:
          sub_23C8315C4(v129, type metadata accessor for TranscriptProtoParameterValue);
LABEL_60:
          sub_23C8315C4(v47, type metadata accessor for TranscriptProtoParameterValue);
          return 0;
        }
      }

      v44 = *(v80 + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v45 = v113;
      v46 = v122;
      LOBYTE(v44) = sub_23C871754();
      sub_23C8315C4(v46, type metadata accessor for TranscriptProtoPromptSelection);
      sub_23C8315C4(v45, type metadata accessor for TranscriptProtoPromptSelection);
      sub_23C585C34(v14, &qword_27E203CF8, &qword_23C8A0ED8);
      v47 = v126;
      if ((v44 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v48 = *(v127 + 24);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v49 = v129;
    LOBYTE(v48) = sub_23C871754();
    sub_23C8315C4(v49, type metadata accessor for TranscriptProtoParameterValue);
    sub_23C8315C4(v47, type metadata accessor for TranscriptProtoParameterValue);
    v43 = v124;
    result = v123;
    if ((v48 & 1) == 0)
    {
      return result;
    }
  }

  if (v106 <= v39 + 1)
  {
    v52 = v39 + 1;
  }

  else
  {
    v52 = v106;
  }

  v53 = v52 - 1;
  v51 = v121;
  while (1)
  {
    v54 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v54 >= v106)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D50, &qword_23C8A0F20);
      (*(*(v101 - 8) + 56))(v51, 1, 1, v101);
      v124 = 0;
      v39 = v53;
      goto LABEL_21;
    }

    v55 = *(v107 + 8 * v54);
    ++v39;
    if (v55)
    {
      v124 = (v55 - 1) & v55;
      v50 = __clz(__rbit64(v55)) | (v54 << 6);
      v39 = v54;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FD0C0(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v57);
  v59 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v50 - v9);
  MEMORY[0x28223BE20](v8);
  v56 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203948, &qword_23C8A0BA8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v16);
  v55 = v17;
  v18 = 0;
  v51 = a1;
  v52 = v4;
  v19 = *(a1 + 64);
  v50 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v53 = v10;
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v18 << 6);
    v28 = v55;
LABEL_17:
    v33 = *(*(v51 + 48) + 4 * v27);
    v34 = v56;
    sub_23C8314F4(*(v51 + 56) + *(v4 + 72) * v27, v56, type metadata accessor for ToolKitProtoTypedValue);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203950, &qword_23C8A0BB0);
    v36 = *(v35 + 48);
    *v28 = v33;
    sub_23C83155C(v34, v28 + v36, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);
LABEL_18:
    v37 = v54;
    sub_23C60C610(v28, v54, &qword_27E203948, &qword_23C8A0BA8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203950, &qword_23C8A0BB0);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = *v37;
    sub_23C83155C(v37 + v41, v10, type metadata accessor for ToolKitProtoTypedValue);
    v43 = sub_23C5FF910(v42);
    if ((v44 & 1) == 0)
    {
      goto LABEL_31;
    }

    v45 = v59;
    sub_23C8314F4(*(a2 + 56) + *(v4 + 72) * v43, v59, type metadata accessor for ToolKitProtoTypedValue);
    v46 = *v45;
    v47 = *v10;
    if ((~v46 & 0xF000000000000007) != 0)
    {
      v61 = v46;
      if ((~v47 & 0xF000000000000007) == 0)
      {
        sub_23C5EDE04(v46);
        sub_23C5EDE04(v47);
        sub_23C5EDE04(v46);

LABEL_29:
        sub_23C5EDE08(v46);
        sub_23C5EDE08(v47);
LABEL_30:
        sub_23C8315C4(v59, type metadata accessor for ToolKitProtoTypedValue);
        v10 = v53;
LABEL_31:
        sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v60 = v47;
      sub_23C5EDE04(v46);
      sub_23C5EDE04(v47);
      sub_23C5EDE04(v46);
      v48 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v61, &v60);

      sub_23C5EDE08(v46);
      if ((v48 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_23C5EDE04(v46);
      sub_23C5EDE04(v47);
      if ((~v47 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_23C5EDE08(v46);
    }

    v24 = *(v57 + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v25 = v59;
    v10 = v53;
    v26 = sub_23C871754();
    sub_23C8315C4(v25, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_23C8315C4(v10, type metadata accessor for ToolKitProtoTypedValue);
    v4 = v52;
    v22 = v58;
    if ((v26 & 1) == 0)
    {
      return v40;
    }
  }

  if (v23 <= v18 + 1)
  {
    v29 = v18 + 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29 - 1;
  v28 = v55;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v23)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203950, &qword_23C8A0BB0);
      (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
      v58 = 0;
      v18 = v30;
      goto LABEL_18;
    }

    v32 = *(v50 + 8 * v31);
    ++v18;
    if (v32)
    {
      v58 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FD6C0(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for ToolKitProtoTypedValue(0);
  v64 = *(v62 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v65 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v56 - v8);
  MEMORY[0x28223BE20](v7);
  v60 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB0, &qword_23C8A0CD8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = (&v56 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = v16;
  v18 = 0;
  v57 = (&v56 - v15);
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v59 = a2;
  while (v24)
  {
    v63 = (v24 - 1) & v24;
    v29 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_17:
    v35 = (*(v58 + 48) + 16 * v29);
    v37 = *v35;
    v36 = v35[1];
    v38 = v60;
    sub_23C8314F4(*(v58 + 56) + *(v64 + 72) * v29, v60, type metadata accessor for ToolKitProtoTypedValue);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB8, &qword_23C8A0CE0);
    v40 = *(v39 + 48);
    v41 = v61;
    *v61 = v37;
    v41[1] = v36;
    v32 = v41;
    sub_23C83155C(v38, v41 + v40, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v39 - 8) + 56))(v32, 0, 1, v39);

    v17 = v57;
LABEL_18:
    sub_23C60C610(v32, v17, &qword_27E203AB0, &qword_23C8A0CD8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB8, &qword_23C8A0CE0);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v42 + 48);
    v46 = *v17;
    v47 = v17[1];
    sub_23C83155C(v17 + v45, v9, type metadata accessor for ToolKitProtoTypedValue);
    v48 = sub_23C5FF898(v46, v47);
    LOBYTE(v46) = v49;

    if ((v46 & 1) == 0)
    {
      goto LABEL_31;
    }

    v50 = v65;
    sub_23C8314F4(*(a2 + 56) + *(v64 + 72) * v48, v65, type metadata accessor for ToolKitProtoTypedValue);
    v51 = *v50;
    v52 = *v9;
    if ((~*v50 & 0xF000000000000007) != 0)
    {
      v67 = *v50;
      if ((~v52 & 0xF000000000000007) == 0)
      {
        v53 = v9;
        sub_23C5EDE04(v51);
        sub_23C5EDE04(v52);
        sub_23C5EDE04(v51);

LABEL_29:
        sub_23C5EDE08(v51);
        sub_23C5EDE08(v52);
        v9 = v53;
LABEL_30:
        sub_23C8315C4(v65, type metadata accessor for ToolKitProtoTypedValue);
LABEL_31:
        sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v66 = v52;
      sub_23C5EDE04(v51);
      sub_23C5EDE04(v52);
      sub_23C5EDE04(v51);
      v54 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v67, &v66);

      sub_23C5EDE08(v51);
      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v53 = v9;
      sub_23C5EDE04(v51);
      sub_23C5EDE04(v52);
      if ((~v52 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_23C5EDE08(v51);
    }

    v26 = *(v62 + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v27 = v65;
    v28 = sub_23C871754();
    sub_23C8315C4(v27, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_23C8315C4(v9, type metadata accessor for ToolKitProtoTypedValue);
    a2 = v59;
    v24 = v63;
    if ((v28 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v30 = v18 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  v32 = v61;
  while (1)
  {
    v33 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v33 >= v25)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203AB8, &qword_23C8A0CE0);
      (*(*(v55 - 8) + 56))(v32, 1, 1, v55);
      v63 = 0;
      v18 = v31;
      goto LABEL_18;
    }

    v34 = *(v20 + 8 * v33);
    ++v18;
    if (v34)
    {
      v63 = (v34 - 1) & v34;
      v29 = __clz(__rbit64(v34)) | (v33 << 6);
      v18 = v33;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FDCDC(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoShimParameters(0);
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v61);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v57 - v10);
  MEMORY[0x28223BE20](v9);
  v60 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CD8, &qword_23C8A0EB8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  result = MEMORY[0x28223BE20](v15);
  v63 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v63 + 16))
  {
    return 0;
  }

  v58 = a1;
  v59 = &v57 - v17;
  v62 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v57 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = (*(v58 + 48) + 16 * v25);
    v33 = *v31;
    v32 = v31[1];
    v34 = v60;
    sub_23C8314F4(*(v58 + 56) + *(v4 + 72) * v25, v60, type metadata accessor for TranscriptProtoShimParameters);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE0, &qword_23C8A0EC0);
    v36 = *(v35 + 48);
    v37 = v62;
    *v62 = v33;
    v37[1] = v32;
    v38 = v34;
    v28 = v37;
    sub_23C83155C(v38, v37 + v36, type metadata accessor for TranscriptProtoShimParameters);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);

LABEL_17:
    v39 = v28;
    v40 = v59;
    sub_23C60C610(v39, v59, &qword_27E203CD8, &qword_23C8A0EB8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE0, &qword_23C8A0EC0);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = v40;
    v45 = v8;
    v46 = *(v41 + 48);
    v47 = *v44;
    v48 = v44[1];
    sub_23C83155C(v44 + v46, v11, type metadata accessor for TranscriptProtoShimParameters);
    v49 = v47;
    v50 = v63;
    v51 = sub_23C5FF898(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_25;
    }

    v8 = v45;
    sub_23C8314F4(*(v50 + 56) + *(v4 + 72) * v51, v45, type metadata accessor for TranscriptProtoShimParameters);
    if ((sub_23C5DA9B4(*v45, *v11) & 1) == 0)
    {
      sub_23C8315C4(v45, type metadata accessor for TranscriptProtoShimParameters);
LABEL_25:
      sub_23C8315C4(v11, type metadata accessor for TranscriptProtoShimParameters);
      return 0;
    }

    v54 = *(v61 + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v55 = sub_23C871754();
    sub_23C8315C4(v45, type metadata accessor for TranscriptProtoShimParameters);
    result = sub_23C8315C4(v11, type metadata accessor for TranscriptProtoShimParameters);
    v23 = v64;
    if ((v55 & 1) == 0)
    {
      return v43;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v62;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE0, &qword_23C8A0EC0);
      (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
      v64 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v30 = *(v57 + 8 * v29);
    ++v19;
    if (v30)
    {
      v64 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FE23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v168 = *(v4 - 8);
  v5 = *(v168 + 8);
  MEMORY[0x28223BE20](v4);
  v164 = (&v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CF8, &qword_23C8A0ED8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v171 = (&v142 - v9);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D00, &qword_23C8A0EE0);
  v10 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v167 = &v142 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  v12 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v14 = (&v142 - v13);
  v155 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v15 = *(v155 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v155);
  v152 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203780, &unk_23C8A1380);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v142 - v20;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203788, &qword_23C8A09E8);
  v22 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v156 = &v142 - v23;
  v169 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v24 = *(v169 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v169);
  v160 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D58, &unk_23C8A11A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v142 - v29;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D60, &qword_23C8A0F28);
  v31 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v170 = &v142 - v32;
  v33 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v34 = *(v33 - 8);
  v172 = v33;
  v173 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v174 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v142 - v39;
  MEMORY[0x28223BE20](v38);
  v158 = &v142 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D68, &qword_23C8A0F30);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v165 = &v142 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v44);
  v162 = (&v142 - v47);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v145 = v21;
  v151 = v30;
  v144 = v14;
  v157 = v4;
  v48 = 0;
  v148 = a1;
  v49 = *(a1 + 64);
  v143 = a1 + 64;
  v50 = 1 << *(a1 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v49;
  v142 = (v50 + 63) >> 6;
  v153 = (v24 + 48);
  v146 = (v15 + 48);
  v150 = (v168 + 48);
  v168 = v40;
  v53 = a2;
  v54 = v165;
  v149 = a2;
  while (1)
  {
    if (!v52)
    {
      if (v142 <= v48 + 1)
      {
        v64 = v48 + 1;
      }

      else
      {
        v64 = v142;
      }

      v65 = v64 - 1;
      while (1)
      {
        v66 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v66 >= v142)
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D70, &qword_23C8A0F38);
          (*(*(v110 - 8) + 56))(v54, 1, 1, v110);
          v166 = 0;
          v48 = v65;
          goto LABEL_21;
        }

        v67 = *(v143 + 8 * v66);
        ++v48;
        if (v67)
        {
          v166 = (v67 - 1) & v67;
          v63 = __clz(__rbit64(v67)) | (v66 << 6);
          v48 = v66;
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }

    v166 = (v52 - 1) & v52;
    v63 = __clz(__rbit64(v52)) | (v48 << 6);
LABEL_20:
    v68 = (*(v148 + 48) + 16 * v63);
    v70 = *v68;
    v69 = v68[1];
    v71 = v158;
    sub_23C8314F4(*(v148 + 56) + *(v173 + 72) * v63, v158, type metadata accessor for TranscriptProtoActionParameterValue);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D70, &qword_23C8A0F38);
    v73 = *(v72 + 48);
    *v54 = v70;
    v54[1] = v69;
    sub_23C83155C(v71, v54 + v73, type metadata accessor for TranscriptProtoActionParameterValue);
    (*(*(v72 - 8) + 56))(v54, 0, 1, v72);

LABEL_21:
    v74 = v162;
    sub_23C60C610(v54, v162, &qword_27E203D68, &qword_23C8A0F30);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D70, &qword_23C8A0F38);
    v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
    v55 = v76 == 1;
    if (v76 == 1)
    {
      return v55;
    }

    v77 = *(v75 + 48);
    v78 = *v74;
    v79 = v74[1];
    sub_23C83155C(v74 + v77, v40, type metadata accessor for TranscriptProtoActionParameterValue);
    v80 = sub_23C5FF898(v78, v79);
    v82 = v81;

    if ((v82 & 1) == 0)
    {
      v134 = v40;
      goto LABEL_73;
    }

    v163 = v55;
    v83 = v174;
    sub_23C8314F4(*(v53 + 56) + *(v173 + 72) * v80, v174, type metadata accessor for TranscriptProtoActionParameterValue);
    v84 = *(v161 + 48);
    v85 = v170;
    sub_23C5855B0(v83, v170, &qword_27E203D58, &unk_23C8A11A0);
    sub_23C5855B0(v40, v85 + v84, &qword_27E203D58, &unk_23C8A11A0);
    v86 = *v153;
    v87 = v169;
    if ((*v153)(v85, 1, v169) != 1)
    {
      v93 = v151;
      sub_23C5855B0(v85, v151, &qword_27E203D58, &unk_23C8A11A0);
      v94 = v86(v85 + v84, 1, v87);
      v95 = v85;
      v90 = v167;
      if (v94 == 1)
      {
        sub_23C8315C4(v174, type metadata accessor for TranscriptProtoActionParameterValue);
        sub_23C8315C4(v40, type metadata accessor for TranscriptProtoActionParameterValue);
        v136 = type metadata accessor for TranscriptProtoToolParameterValue;
        v135 = v93;
        goto LABEL_59;
      }

      v96 = v160;
      sub_23C83155C(v95 + v84, v160, type metadata accessor for TranscriptProtoToolParameterValue);
      v97 = *(v154 + 48);
      v98 = v156;
      sub_23C5855B0(v93, v156, &qword_27E203780, &unk_23C8A1380);
      sub_23C5855B0(v96, v98 + v97, &qword_27E203780, &unk_23C8A1380);
      v99 = *v146;
      v100 = v155;
      if ((*v146)(v98, 1, v155) == 1)
      {
        if (v99(v98 + v97, 1, v100) == 1)
        {
          v101 = v172;
          sub_23C585C34(v98, &qword_27E203780, &unk_23C8A1380);
          v92 = v171;
          goto LABEL_39;
        }

        v139 = type metadata accessor for TranscriptProtoToolParameterValue;
        v140 = v160;
      }

      else
      {
        v102 = v145;
        sub_23C5855B0(v98, v145, &qword_27E203780, &unk_23C8A1380);
        v103 = v99(v98 + v97, 1, v100);
        v104 = v172;
        if (v103 != 1)
        {
          v105 = v152;
          sub_23C83155C(v98 + v97, v152, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v106 = v144;
          v107 = (v144 + *(v147 + 48));
          sub_23C8314F4(v102, v144, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_23C8314F4(v105, v107, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v108 = *v106;
          v109 = *v107;
          if ((~*v106 & 0xF000000000000007) != 0)
          {
            v176 = *v106;
            if ((~v109 & 0xF000000000000007) == 0)
            {
              sub_23C5EDE04(v108);
              sub_23C5EDE04(v109);
              sub_23C5EDE04(v108);

LABEL_67:
              sub_23C5EDE08(v108);
              sub_23C5EDE08(v109);
LABEL_68:
              sub_23C8315C4(v152, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_23C8315C4(v107, type metadata accessor for ToolKitProtoTypedValue);
              sub_23C8315C4(v144, type metadata accessor for ToolKitProtoTypedValue);
              sub_23C8315C4(v145, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_23C585C34(v156, &qword_27E203780, &unk_23C8A1380);
LABEL_69:
              sub_23C8315C4(v160, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_70:
              v141 = v170;
              sub_23C8315C4(v151, type metadata accessor for TranscriptProtoToolParameterValue);
              v131 = &qword_27E203D58;
              v132 = &unk_23C8A11A0;
              v133 = v141;
LABEL_71:
              sub_23C585C34(v133, v131, v132);
LABEL_72:
              sub_23C8315C4(v174, type metadata accessor for TranscriptProtoActionParameterValue);
              v134 = v168;
LABEL_73:
              sub_23C8315C4(v134, type metadata accessor for TranscriptProtoActionParameterValue);
              return 0;
            }

            v101 = v104;
            v175 = v109;
            sub_23C5EDE04(v108);
            sub_23C5EDE04(v109);
            sub_23C5EDE04(v108);
            v111 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v176, &v175);

            sub_23C5EDE08(v108);
            if ((v111 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_23C5EDE04(*v106);
            sub_23C5EDE04(v109);
            if ((~v109 & 0xF000000000000007) != 0)
            {
              goto LABEL_67;
            }

            v101 = v104;
            sub_23C5EDE08(v108);
          }

          v112 = *(type metadata accessor for ToolKitProtoTypedValue(0) + 20);
          sub_23C870F34();
          sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
          v113 = v144;
          v114 = sub_23C871754();
          sub_23C8315C4(v152, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_23C8315C4(v107, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C8315C4(v113, type metadata accessor for ToolKitProtoTypedValue);
          sub_23C8315C4(v145, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_23C585C34(v156, &qword_27E203780, &unk_23C8A1380);
          v90 = v167;
          v92 = v171;
          if ((v114 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_39:
          v115 = *(v169 + 20);
          sub_23C870F34();
          sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
          v116 = v151;
          v117 = v160;
          v118 = sub_23C871754();
          sub_23C8315C4(v117, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_23C8315C4(v116, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_23C585C34(v170, &qword_27E203D58, &unk_23C8A11A0);
          v91 = v101;
          if ((v118 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_40;
        }

        sub_23C8315C4(v160, type metadata accessor for TranscriptProtoToolParameterValue);
        v139 = type metadata accessor for TranscriptProtoToolParameterValueEnum;
        v140 = v102;
      }

      sub_23C8315C4(v140, v139);
      sub_23C585C34(v98, &qword_27E203788, &qword_23C8A09E8);
      goto LABEL_70;
    }

    v88 = v86(v85 + v84, 1, v87) == 1;
    v89 = v85;
    v90 = v167;
    if (!v88)
    {
      sub_23C8315C4(v174, type metadata accessor for TranscriptProtoActionParameterValue);
      v135 = v168;
      v136 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_59:
      sub_23C8315C4(v135, v136);
      sub_23C585C34(v170, &qword_27E203D60, &qword_23C8A0F28);
      return 0;
    }

    sub_23C585C34(v89, &qword_27E203D58, &unk_23C8A11A0);
    v92 = v171;
    v91 = v172;
LABEL_40:
    v119 = *(v91 + 20);
    v120 = *(v159 + 48);
    sub_23C5855B0(v174 + v119, v90, &qword_27E203CF8, &qword_23C8A0ED8);
    sub_23C5855B0(&v168[v119], v90 + v120, &qword_27E203CF8, &qword_23C8A0ED8);
    v121 = *v150;
    v122 = v157;
    if ((*v150)(v90, 1, v157) == 1)
    {
      break;
    }

    sub_23C5855B0(v90, v92, &qword_27E203CF8, &qword_23C8A0ED8);
    v124 = v121(v90 + v120, 1, v122);
    v54 = v165;
    if (v124 == 1)
    {
      sub_23C8315C4(v174, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_23C8315C4(v168, type metadata accessor for TranscriptProtoActionParameterValue);
      v137 = type metadata accessor for TranscriptProtoPromptSelection;
      v138 = v92;
      goto LABEL_62;
    }

    v125 = v90 + v120;
    v126 = v164;
    sub_23C83155C(v125, v164, type metadata accessor for TranscriptProtoPromptSelection);
    v127 = *(v126 + 9);
    if (*(v92 + 9))
    {
      v53 = v149;
      if ((*(v126 + 9) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v53 = v149;
      if (*(v126 + 9))
      {
        goto LABEL_56;
      }

      v128 = *v171;
      v129 = *v164;
      v130 = *(v164 + 8);
      if (v171[1])
      {
        if (v128)
        {
          if ((v164[1] & 1) == 0 || !v129)
          {
            goto LABEL_56;
          }
        }

        else if ((v164[1] & 1) == 0 || v129)
        {
          goto LABEL_56;
        }
      }

      else if ((v164[1] & 1) != 0 || v128 != v129)
      {
LABEL_56:
        sub_23C8315C4(v164, type metadata accessor for TranscriptProtoPromptSelection);
        sub_23C8315C4(v171, type metadata accessor for TranscriptProtoPromptSelection);
        v131 = &qword_27E203CF8;
        v132 = &qword_23C8A0ED8;
        v133 = v90;
        goto LABEL_71;
      }
    }

    v56 = *(v157 + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v57 = v171;
    v58 = v164;
    v59 = sub_23C871754();
    sub_23C8315C4(v58, type metadata accessor for TranscriptProtoPromptSelection);
    sub_23C8315C4(v57, type metadata accessor for TranscriptProtoPromptSelection);
    sub_23C585C34(v90, &qword_27E203CF8, &qword_23C8A0ED8);
    if ((v59 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_9:
    v60 = *(v172 + 24);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v61 = v174;
    v40 = v168;
    v62 = sub_23C871754();
    sub_23C8315C4(v61, type metadata accessor for TranscriptProtoActionParameterValue);
    result = sub_23C8315C4(v40, type metadata accessor for TranscriptProtoActionParameterValue);
    v52 = v166;
    v55 = v163;
    if ((v62 & 1) == 0)
    {
      return v55;
    }
  }

  v123 = v121(v90 + v120, 1, v122);
  v54 = v165;
  if (v123 == 1)
  {
    sub_23C585C34(v90, &qword_27E203CF8, &qword_23C8A0ED8);
    v53 = v149;
    goto LABEL_9;
  }

  sub_23C8315C4(v174, type metadata accessor for TranscriptProtoActionParameterValue);
  v138 = v168;
  v137 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_62:
  sub_23C8315C4(v138, v137);
  sub_23C585C34(v90, &qword_27E203D00, &qword_23C8A0EE0);
  return 0;
}

uint64_t sub_23C7FF5DC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_23C5FF898(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C7FF710(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v61);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v57 - v10);
  MEMORY[0x28223BE20](v9);
  v60 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F60, &qword_23C8A1108);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  result = MEMORY[0x28223BE20](v15);
  v63 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v63 + 16))
  {
    return 0;
  }

  v58 = a1;
  v59 = &v57 - v17;
  v62 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v57 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = (*(v58 + 48) + 16 * v25);
    v33 = *v31;
    v32 = v31[1];
    v34 = v60;
    sub_23C8314F4(*(v58 + 56) + *(v4 + 72) * v25, v60, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F68, &qword_23C8A1110);
    v36 = *(v35 + 48);
    v37 = v62;
    *v62 = v33;
    v37[1] = v32;
    v38 = v34;
    v28 = v37;
    sub_23C83155C(v38, v37 + v36, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);

LABEL_17:
    v39 = v28;
    v40 = v59;
    sub_23C60C610(v39, v59, &qword_27E203F60, &qword_23C8A1108);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F68, &qword_23C8A1110);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = v40;
    v45 = v8;
    v46 = *(v41 + 48);
    v47 = *v44;
    v48 = v44[1];
    sub_23C83155C(v44 + v46, v11, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v49 = v47;
    v50 = v63;
    v51 = sub_23C5FF898(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_25;
    }

    v8 = v45;
    sub_23C8314F4(*(v50 + 56) + *(v4 + 72) * v51, v45, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if ((sub_23C5DF35C(*v45, *v11) & 1) == 0)
    {
      sub_23C8315C4(v45, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
LABEL_25:
      sub_23C8315C4(v11, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
      return 0;
    }

    v54 = *(v61 + 20);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v55 = sub_23C871754();
    sub_23C8315C4(v45, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    result = sub_23C8315C4(v11, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v23 = v64;
    if ((v55 & 1) == 0)
    {
      return v43;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v62;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203F68, &qword_23C8A1110);
      (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
      v64 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v30 = *(v57 + 8 * v29);
    ++v19;
    if (v30)
    {
      v64 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s26AIMLInstrumentationStreams53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C30, &qword_23C8A0E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C38, &qword_23C8A0E28);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E203C30, &qword_23C8A0E20);
  sub_23C5855B0(a2, &v17[v18], &qword_27E203C30, &qword_23C8A0E20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E203C30, &qword_23C8A0E20);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E203C30, &qword_23C8A0E20);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C38, &qword_23C8A0E28);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  v21 = _s26AIMLInstrumentationStreams053TranscriptProtoSystemRequirementAuthenticationRequestG5LevelV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_23C585C34(v17, &qword_27E203C30, &qword_23C8A0E20);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_23C7FFFB4(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_23C872014() & 1) == 0 || (a3(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a4(0) + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams49TranscriptProtoActionFailureDeveloperDefinedErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_23C872014() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v6 = *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0) + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams48TranscriptProtoDynamicEnumerationEntityStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAE8, &unk_23C8A1330);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF0, &qword_23C878ED0);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E1FAAF8, &unk_23C8A1180);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementID);
      v31 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_23C8315C4(v16, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v25, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v28 = &qword_27E1FAB00;
    v29 = &qword_23C878ED8;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FAAE8, &unk_23C8A1330);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FAAE8, &unk_23C8A1330);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FAAE8, &unk_23C8A1330);
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
  sub_23C5855B0(v35, v46, &qword_27E1FAAE8, &unk_23C8A1330);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_13:
    v28 = &qword_27E1FAAF0;
    v29 = &qword_23C878ED0;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C83155C(v41, v45, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  v43 = static ContextProtoDynamicEnumerationEntity.== infix(_:_:)(v38, v42);
  sub_23C8315C4(v42, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_23C8315C4(v38, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_23C585C34(v35, &qword_27E1FAAE8, &unk_23C8A1330);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v5 = *(DecorationPrePlannerPayloadEnum - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201CB8, &qword_23C8A13C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203700, &qword_23C8A0978);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201CB8, &qword_23C8A13C0);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201CB8, &qword_23C8A13C0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    if (v19(&v17[v18], 1, DecorationPrePlannerPayloadEnum) == 1)
    {
      sub_23C585C34(v17, &qword_27E201CB8, &qword_23C8A13C0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201CB8, &qword_23C8A13C0);
  if (v19(&v17[v18], 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203700, &qword_23C8A0978);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_23C585C34(v17, &qword_27E201CB8, &qword_23C8A13C0);
  if (DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v52 = *(DecorationPrePlannerResultPayload - 8);
  v53 = DecorationPrePlannerResultPayload;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203738, &qword_23C8A09B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203740, &qword_23C8A09B8);
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
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v25 = *(DecorationPrePlannerResult + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_23C5855B0(a1 + v25, v24, &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = v56;
  sub_23C5855B0(v56 + v25, &v24[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_23C5855B0(v24, v19, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_23C83155C(&v24[v26], v15, type metadata accessor for TranscriptProtoStatementID);
      v32 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v19, v15);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v19, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v19, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v29 = &qword_27E1FAB00;
    v30 = &qword_23C878ED8;
    v31 = v24;
LABEL_17:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v24, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = DecorationPrePlannerResult;
  v35 = *(DecorationPrePlannerResult + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_23C5855B0(v33 + v35, v54, &qword_27E203738, &qword_23C8A09B0);
  sub_23C5855B0(v27 + v35, v37 + v36, &qword_27E203738, &qword_23C8A09B0);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_23C585C34(v37, &qword_27E203738, &qword_23C8A09B0);
LABEL_21:
      v46 = *(v34 + 28);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v41 = sub_23C871754();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_23C5855B0(v37, v49, &qword_27E203738, &qword_23C8A09B0);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_23C8315C4(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
LABEL_16:
    v29 = &qword_27E203740;
    v30 = &qword_23C8A09B8;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_23C83155C(v43, v48, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_23C8315C4(v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C8315C4(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_23C585C34(v37, &qword_27E203738, &qword_23C8A09B0);
  if (DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s26AIMLInstrumentationStreams44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v30 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v30 - v16, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5855B0(a2, &v17[v18], &qword_27E1FAAF8, &unk_23C8A1180);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_23C5855B0(v17, v12, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
      v22 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_23C8315C4(v8, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_23C585C34(v17, &qword_27E1FAB00, &qword_23C878ED8);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v17, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_10:
  v23 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v24 = *(v23 + 20);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (v28)
    {
LABEL_16:
      v29 = *(v23 + 24);
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
      goto LABEL_16;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0) + 20);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D08, &qword_23C8A0EE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D10, &qword_23C8A0EF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_12;
  }

  v26 = v8;
  v25 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v17 = *(v25 + 24);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E203D08, &qword_23C8A0EE8);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E203D08, &qword_23C8A0EE8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23C5855B0(v16, v12, &qword_27E203D08, &qword_23C8A0EE8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v26;
      sub_23C83155C(&v16[v18], v26, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      v21 = _s26AIMLInstrumentationStreams67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(v12, v20);
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_23C585C34(v16, &qword_27E203D08, &qword_23C8A0EE8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
LABEL_9:
    sub_23C585C34(v16, &qword_27E203D10, &qword_23C8A0EF0);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v16, &qword_27E203D08, &qword_23C8A0EE8);
LABEL_11:
  if (*(a1 + 16) == *(a2 + 16))
  {
    v24 = *(v25 + 28);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v22 = sub_23C871754();
    return v22 & 1;
  }

LABEL_12:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D18, &unk_23C8A11C0);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D20, &qword_23C8A0EF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D28, &qword_23C8A0F00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_23C5855B0(a1, &v29 - v18, &qword_27E203D20, &qword_23C8A0EF8);
  v32 = a2;
  sub_23C5855B0(a2, &v19[v20], &qword_27E203D20, &qword_23C8A0EF8);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_23C585C34(v19, &qword_27E203D20, &qword_23C8A0EF8);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v22 = sub_23C871754();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v19, v14, &qword_27E203D20, &qword_23C8A0EF8);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_23C8315C4(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
LABEL_6:
    sub_23C585C34(v19, &qword_27E203D28, &qword_23C8A0F00);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_23C83155C(v23, v29, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v25 = *(v30 + 48);
  sub_23C8314F4(v14, v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C8314F4(v24, &v6[v25], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v26 = _s26AIMLInstrumentationStreams61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v6, &v6[v25]);
  sub_23C8315C4(v24, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C8315C4(&v6[v25], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C8315C4(v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C8315C4(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C585C34(v19, &qword_27E203D20, &qword_23C8A0EF8);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s26AIMLInstrumentationStreams42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201938, &qword_23C88DBE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203980, &qword_23C8A0BD8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201938, &qword_23C88DBE8);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201938, &qword_23C88DBE8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201938, &qword_23C88DBE8);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201938, &qword_23C88DBE8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203980, &qword_23C8A0BD8);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v21 = _s26AIMLInstrumentationStreams46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_23C585C34(v17, &qword_27E201938, &qword_23C88DBE8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
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
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E1FAB68, &unk_23C879140);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
LABEL_12:
      v23 = *(v26 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAB68, &unk_23C879140);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
LABEL_9:
    sub_23C585C34(v16, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_10;
  }

  v21 = v25;
  sub_23C83155C(&v16[v18], v25, type metadata accessor for ToolKitProtoTypedValue);
  v22 = static ToolKitProtoTypedValue.== infix(_:_:)(v12, v21);
  sub_23C8315C4(v21, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams41TranscriptProtoUpdateParametersExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
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
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v17 = *(updated + 20);
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
  if ((sub_23C5D3A24(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(updated + 24);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v23 = sub_23C871754();
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((sub_23C7FB534(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v18 = *(v17 + 24);
  v19 = a1;
  v20 = *(v13 + 48);
  v26 = v17;
  v27 = v19;
  sub_23C5855B0(v19 + v18, v16, &qword_27E1FAC40, &unk_23C8791C0);
  sub_23C5855B0(a2 + v18, &v16[v20], &qword_27E1FAC40, &unk_23C8791C0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAC40, &unk_23C8791C0);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAC48, &qword_23C878FD0);
LABEL_11:
    v24 = 0;
    return v24 & 1;
  }

  sub_23C83155C(&v16[v20], v8, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = static ToolKitProtoTypeInstance.== infix(_:_:)(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_23C585C34(v16, &qword_27E1FAC40, &unk_23C8791C0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_23C5D4094(v27[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(v26 + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v24 = sub_23C871754();
  return v24 & 1;
}

uint64_t _s26AIMLInstrumentationStreams40TranscriptProtoRetrievedContextStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABA8, &qword_23C878F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABB0, &qword_23C878F58);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_23C5855B0(a1, &v45 - v24, &qword_27E1FAAF8, &unk_23C8A1180);
  v52 = a2;
  sub_23C5855B0(a2, &v25[v26], &qword_27E1FAAF8, &unk_23C8A1180);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_23C5855B0(v25, v20, &qword_27E1FAAF8, &unk_23C8A1180);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_23C83155C(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementID);
      v31 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_23C8315C4(v16, type metadata accessor for TranscriptProtoStatementID);
      sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
      sub_23C585C34(v25, &qword_27E1FAAF8, &unk_23C8A1180);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v20, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v28 = &qword_27E1FAB00;
    v29 = &qword_23C878ED8;
    v30 = v25;
LABEL_14:
    sub_23C585C34(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v25, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_23C5855B0(v51 + v33, v50, &qword_27E1FABA8, &qword_23C878F50);
  sub_23C5855B0(v52 + v33, v35 + v34, &qword_27E1FABA8, &qword_23C878F50);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_23C585C34(v35, &qword_27E1FABA8, &qword_23C878F50);
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
  sub_23C5855B0(v35, v46, &qword_27E1FABA8, &qword_23C878F50);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_23C8315C4(v38, type metadata accessor for ContextProtoRetrievedContext);
LABEL_13:
    v28 = &qword_27E1FABB0;
    v29 = &qword_23C878F58;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_23C83155C(v41, v45, type metadata accessor for ContextProtoRetrievedContext);
  v43 = static ContextProtoRetrievedContext.== infix(_:_:)(v38, v42);
  sub_23C8315C4(v42, type metadata accessor for ContextProtoRetrievedContext);
  sub_23C8315C4(v38, type metadata accessor for ContextProtoRetrievedContext);
  sub_23C585C34(v35, &qword_27E1FABA8, &qword_23C878F50);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2016D0, &unk_23C8A1220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C40, &qword_23C8A0E30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E2016D0, &unk_23C8A1220);
  sub_23C5855B0(a2, &v17[v18], &qword_27E2016D0, &unk_23C8A1220);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E2016D0, &unk_23C8A1220);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemRequirementMessage(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E2016D0, &unk_23C8A1220);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C40, &qword_23C8A0E30);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  v21 = _s26AIMLInstrumentationStreams43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_23C585C34(v17, &qword_27E2016D0, &unk_23C8A1220);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams39TranscriptProtoASTFlatExprUpdateVariantV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v43 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v20 = updated[6];
  v42 = v14;
  v21 = *(v14 + 48);
  v46 = a1;
  sub_23C5855B0(a1 + v20, v19, &qword_27E1FAB88, &unk_23C8A1350);
  v47 = a2;
  sub_23C5855B0(a2 + v20, &v19[v21], &qword_27E1FAB88, &unk_23C8A1350);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_23C585C34(v19, &qword_27E1FAB88, &unk_23C8A1350);
      goto LABEL_9;
    }

LABEL_6:
    v23 = v19;
LABEL_7:
    sub_23C585C34(v23, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_18;
  }

  sub_23C5855B0(v19, v13, &qword_27E1FAB88, &unk_23C8A1350);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_6;
  }

  v24 = &v19[v21];
  v25 = v45;
  sub_23C83155C(v24, v45, type metadata accessor for TranscriptProtoASTFlatValue);
  v26 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v13, v25);
  sub_23C8315C4(v25, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v19, &qword_27E1FAB88, &unk_23C8A1350);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v27 = v46;
  v28 = v47;
  if ((sub_23C5D4D58(*v46, *v47) & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = v43;
  v30 = updated[7];
  v31 = *(v42 + 48);
  sub_23C5855B0(v27 + v30, v43, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(v28 + v30, v29 + v31, &qword_27E1FAB88, &unk_23C8A1350);
  v32 = v4;
  if (v22(v29, 1, v4) != 1)
  {
    v33 = v41;
    sub_23C5855B0(v29, v41, &qword_27E1FAB88, &unk_23C8A1350);
    if (v22((v29 + v31), 1, v32) != 1)
    {
      v34 = v29 + v31;
      v35 = v45;
      sub_23C83155C(v34, v45, type metadata accessor for TranscriptProtoASTFlatValue);
      v36 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v33, v35);
      sub_23C8315C4(v35, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v33, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v29, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    sub_23C8315C4(v33, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_15;
  }

  if (v22((v29 + v31), 1, v4) != 1)
  {
LABEL_15:
    v23 = v29;
    goto LABEL_7;
  }

  sub_23C585C34(v29, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_17:
  if (*(v27 + 8) == *(v28 + 8))
  {
    v39 = updated[8];
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    v37 = sub_23C871754();
    return v37 & 1;
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_23C8039BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_23C872014() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v8 = *(a3(0) + 28);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_23C5855B0(&v18[v20], v16, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(&v19[v20], &v16[v21], &qword_27E1FAB88, &unk_23C8A1350);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v23 = sub_23C871754();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAB88, &unk_23C8A1350);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    sub_23C585C34(v16, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_8;
  }

  sub_23C83155C(&v16[v21], v8, type metadata accessor for TranscriptProtoASTFlatValue);
  v25 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v16, &qword_27E1FAB88, &unk_23C8A1350);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201690, &unk_23C8A1200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203C88, &qword_23C8A0E78);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201690, &unk_23C8A1200);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201690, &unk_23C8A1200);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201690, &unk_23C8A1200);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSessionCoordinatorError(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201690, &unk_23C8A1200);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203C88, &qword_23C8A0E78);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  v21 = _s26AIMLInstrumentationStreams42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_23C585C34(v17, &qword_27E201690, &unk_23C8A1200);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
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

  if (sub_23C5D15A4(*(a1 + 16), *(a2 + 16)))
  {
    v6 = *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
    sub_23C870F34();
    sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
    return sub_23C871754() & 1;
  }

  return 0;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
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
  v23 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v45 = a2;
  v24 = a1;
  v43 = v23;
  v44 = a1;
  v25 = *(v23 + 20);
  v26 = *(v16 + 48);
  sub_23C5855B0(&v24[v25], v22, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(&v45[v25], &v22[v26], &qword_27E1FAB88, &unk_23C8A1350);
  v27 = *(v5 + 48);
  if (v27(v22, 1, v4) != 1)
  {
    sub_23C5855B0(v22, v15, &qword_27E1FAB88, &unk_23C8A1350);
    if (v27(&v22[v26], 1, v4) != 1)
    {
      v29 = v42;
      sub_23C83155C(&v22[v26], v42, type metadata accessor for TranscriptProtoASTFlatValue);
      v30 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v15, v29);
      sub_23C8315C4(v29, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v15, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v22, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_23C8315C4(v15, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    v28 = v22;
LABEL_15:
    sub_23C585C34(v28, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_16;
  }

  if (v27(&v22[v26], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v22, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_9:
  v31 = v43;
  v32 = *(v43 + 24);
  v33 = *(v16 + 48);
  sub_23C5855B0(&v44[v32], v20, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(&v45[v32], &v20[v33], &qword_27E1FAB88, &unk_23C8A1350);
  if (v27(v20, 1, v4) == 1)
  {
    if (v27(&v20[v33], 1, v4) == 1)
    {
      sub_23C585C34(v20, &qword_27E1FAB88, &unk_23C8A1350);
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
  sub_23C5855B0(v20, v41, &qword_27E1FAB88, &unk_23C8A1350);
  if (v27(&v20[v33], 1, v4) == 1)
  {
    sub_23C8315C4(v34, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_14:
    v28 = v20;
    goto LABEL_15;
  }

  v37 = v42;
  sub_23C83155C(&v20[v33], v42, type metadata accessor for TranscriptProtoASTFlatValue);
  v38 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v34, v37);
  sub_23C8315C4(v37, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v34, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v20, &qword_27E1FAB88, &unk_23C8A1350);
  if (v38)
  {
    goto LABEL_19;
  }

LABEL_16:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB88, &unk_23C8A1350);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB90, &qword_23C878F38);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v40 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *(v18 + 48);
  v41 = a1;
  sub_23C5855B0(a1, &v37 - v19, &qword_27E1FAB88, &unk_23C8A1350);
  v42 = a2;
  sub_23C5855B0(a2, &v20[v21], &qword_27E1FAB88, &unk_23C8A1350);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_23C5855B0(v20, v13, &qword_27E1FAB88, &unk_23C8A1350);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      v24 = &v20[v21];
      v25 = v39;
      sub_23C83155C(v24, v39, type metadata accessor for TranscriptProtoASTFlatValue);
      v26 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v13, v25);
      sub_23C8315C4(v25, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_23C585C34(v20, &qword_27E1FAB88, &unk_23C8A1350);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_23C8315C4(v13, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    v23 = v20;
LABEL_14:
    sub_23C585C34(v23, &qword_27E1FAB90, &qword_23C878F38);
    goto LABEL_15;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23C585C34(v20, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_8:
  v27 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v28 = *(v27 + 20);
  v29 = *(v14 + 48);
  v30 = v40;
  sub_23C5855B0(v41 + v28, v40, &qword_27E1FAB88, &unk_23C8A1350);
  sub_23C5855B0(v42 + v28, v30 + v29, &qword_27E1FAB88, &unk_23C8A1350);
  if (v22(v30, 1, v4) == 1)
  {
    if (v22((v30 + v29), 1, v4) == 1)
    {
      sub_23C585C34(v30, &qword_27E1FAB88, &unk_23C8A1350);
LABEL_18:
      v36 = *(v27 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v32 = sub_23C871754();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_23C5855B0(v30, v38, &qword_27E1FAB88, &unk_23C8A1350);
  if (v22((v30 + v29), 1, v4) == 1)
  {
    sub_23C8315C4(v31, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_13:
    v23 = v30;
    goto LABEL_14;
  }

  v34 = v39;
  sub_23C83155C(v30 + v29, v39, type metadata accessor for TranscriptProtoASTFlatValue);
  v35 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v31, v34);
  sub_23C8315C4(v34, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C8315C4(v31, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_23C585C34(v30, &qword_27E1FAB88, &unk_23C8A1350);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s26AIMLInstrumentationStreams37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTPickType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203928, &qword_23C8A0B88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203930, &qword_23C8A0B90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23C872014() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_23C5855B0(a1 + v17, v16, &qword_27E203928, &qword_23C8A0B88);
  sub_23C5855B0(a2 + v17, &v16[v18], &qword_27E203928, &qword_23C8A0B88);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E203928, &qword_23C8A0B88);
LABEL_12:
      v23 = *(v26 + 24);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_23C5855B0(v16, v12, &qword_27E203928, &qword_23C8A0B88);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTPickType);
LABEL_9:
    sub_23C585C34(v16, &qword_27E203930, &qword_23C8A0B90);
    goto LABEL_10;
  }

  v21 = v25;
  sub_23C83155C(&v16[v18], v25, type metadata accessor for TranscriptProtoASTPickType);
  v22 = _s26AIMLInstrumentationStreams26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_23C8315C4(v21, type metadata accessor for TranscriptProtoASTPickType);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoASTPickType);
  sub_23C585C34(v16, &qword_27E203928, &qword_23C8A0B88);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v66 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB00, &qword_23C878ED8);
  v10 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v66 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = (&v66 - v17);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC48, &qword_23C878FD0);
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v66 - v19;
  v20 = type metadata accessor for ToolKitProtoTypedValue(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v66 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v66 - v32;
  v34 = *(v31 + 56);
  v78 = a1;
  sub_23C5855B0(a1, &v66 - v32, &qword_27E1FAB68, &unk_23C879140);
  v79 = a2;
  sub_23C5855B0(a2, &v33[v34], &qword_27E1FAB68, &unk_23C879140);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_23C585C34(v33, &qword_27E1FAB68, &unk_23C879140);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_27E1FAB70;
    v37 = &qword_23C878F28;
    v38 = v33;
LABEL_21:
    sub_23C585C34(v38, v36, v37);
    goto LABEL_22;
  }

  sub_23C5855B0(v33, v28, &qword_27E1FAB68, &unk_23C879140);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_23C8315C4(v28, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_23C83155C(&v33[v34], v24, type metadata accessor for ToolKitProtoTypedValue);
  v39 = static ToolKitProtoTypedValue.== infix(_:_:)(v28, v24);
  sub_23C8315C4(v24, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v28, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v33, &qword_27E1FAB68, &unk_23C879140);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v41 = v40[5];
  v42 = *(v74 + 48);
  v44 = v77;
  v43 = v78;
  sub_23C5855B0(v78 + v41, v77, &qword_27E1FAC40, &unk_23C8791C0);
  v45 = v79;
  sub_23C5855B0(v79 + v41, v44 + v42, &qword_27E1FAC40, &unk_23C8791C0);
  v46 = v76;
  v47 = *(v75 + 48);
  if (v47(v44, 1, v76) != 1)
  {
    v48 = v73;
    sub_23C5855B0(v44, v73, &qword_27E1FAC40, &unk_23C8791C0);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v49 = v44 + v42;
      v50 = v68;
      sub_23C83155C(v49, v68, type metadata accessor for ToolKitProtoTypeInstance);
      v51 = static ToolKitProtoTypeInstance.== infix(_:_:)(v48, v50);
      sub_23C8315C4(v50, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C8315C4(v48, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C585C34(v44, &qword_27E1FAC40, &unk_23C8791C0);
      if ((v51 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_23C8315C4(v48, type metadata accessor for ToolKitProtoTypeInstance);
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
  v52 = v40[6];
  v53 = *(v69 + 48);
  v54 = v72;
  sub_23C5855B0(v43 + v52, v72, &qword_27E1FAAF8, &unk_23C8A1180);
  v55 = v45 + v52;
  v56 = v54;
  sub_23C5855B0(v55, v54 + v53, &qword_27E1FAAF8, &unk_23C8A1180);
  v57 = v71;
  v58 = *(v70 + 48);
  if (v58(v54, 1, v71) == 1)
  {
    if (v58(v54 + v53, 1, v57) == 1)
    {
      sub_23C585C34(v54, &qword_27E1FAAF8, &unk_23C8A1180);
LABEL_25:
      v65 = v40[7];
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v60 = sub_23C871754();
      return v60 & 1;
    }

    goto LABEL_20;
  }

  v59 = v67;
  sub_23C5855B0(v56, v67, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v58(v56 + v53, 1, v57) == 1)
  {
    sub_23C8315C4(v59, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v36 = &qword_27E1FAB00;
    v37 = &qword_23C878ED8;
    v38 = v56;
    goto LABEL_21;
  }

  v62 = v56 + v53;
  v63 = v66;
  sub_23C83155C(v62, v66, type metadata accessor for TranscriptProtoStatementID);
  v64 = _s26AIMLInstrumentationStreams26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v59, v63);
  sub_23C8315C4(v63, type metadata accessor for TranscriptProtoStatementID);
  sub_23C8315C4(v59, type metadata accessor for TranscriptProtoStatementID);
  sub_23C585C34(v56, &qword_27E1FAAF8, &unk_23C8A1180);
  if (v64)
  {
    goto LABEL_25;
  }

LABEL_22:
  v60 = 0;
  return v60 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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

  v6 = *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  return sub_23C871754() & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201530, &unk_23C8A1190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D78, &qword_23C8A0F40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C5855B0(a1, &v24 - v16, &qword_27E201530, &unk_23C8A1190);
  sub_23C5855B0(a2, &v17[v18], &qword_27E201530, &unk_23C8A1190);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_23C585C34(v17, &qword_27E201530, &unk_23C8A1190);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlan(0) + 20);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v20 = sub_23C871754();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_23C5855B0(v17, v12, &qword_27E201530, &unk_23C8A1190);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
LABEL_6:
    sub_23C585C34(v17, &qword_27E203D78, &qword_23C8A0F40);
    goto LABEL_7;
  }

  sub_23C83155C(&v17[v18], v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  v21 = _s26AIMLInstrumentationStreams40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_23C8315C4(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_23C8315C4(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_23C585C34(v17, &qword_27E201530, &unk_23C8A1190);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE0, &unk_23C8A13B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACE8, &qword_23C879020);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((sub_23C5CF590(*a1, *a2) & 1) == 0 || (sub_23C5D6494(a1[1], a2[1]) & 1) == 0 || (sub_23C5D6494(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_14;
  }

  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v17 = *(DecorationResult + 36);
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
      sub_23C83155C(&v16[v20], v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_23C8315C4(v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C8315C4(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_23C585C34(v16, &qword_27E1FACE0, &unk_23C8A13B0);
      if (DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0)
      {
        goto LABEL_11;
      }

LABEL_14:
      v24 = 0;
      return v24 & 1;
    }

    sub_23C8315C4(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_9:
    sub_23C585C34(v16, &qword_27E1FACE8, &qword_23C879020);
    goto LABEL_14;
  }

  if (v21(&v16[v20], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_9;
  }

  sub_23C585C34(v16, &qword_27E1FACE0, &unk_23C8A13B0);
LABEL_11:
  if ((sub_23C5D6DAC(a1[3], a2[3]) & 1) == 0 || (sub_23C5D6494(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = *(DecorationResult + 40);
  sub_23C870F34();
  sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
  v24 = sub_23C871754();
  return v24 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB70, &qword_23C878F28);
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
  v27 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v18 = *(v27 + 24);
  v19 = *(v13 + 48);
  sub_23C5855B0(a1 + v18, v16, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5855B0(a2 + v18, &v16[v19], &qword_27E1FAB68, &unk_23C879140);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
LABEL_19:
      v25 = *(v27 + 28);
      sub_23C870F34();
      sub_23C8314AC(&qword_27E1FA448, MEMORY[0x277D216C8]);
      v21 = sub_23C871754();
      return v21 & 1;
    }

    goto LABEL_15;
  }

  sub_23C5855B0(v16, v12, &qword_27E1FAB68, &unk_23C879140);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
LABEL_15:
    sub_23C585C34(v16, &qword_27E1FAB70, &qword_23C878F28);
    goto LABEL_16;
  }

  v23 = v26;
  sub_23C83155C(&v16[v19], v26, type metadata accessor for ToolKitProtoTypedValue);
  v24 = static ToolKitProtoTypedValue.== infix(_:_:)(v12, v23);
  sub_23C8315C4(v23, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C8315C4(v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C585C34(v16, &qword_27E1FAB68, &unk_23C879140);
  if (v24)
  {
    goto LABEL_19;
  }

LABEL_16:
  v21 = 0;
  return v21 & 1;
}