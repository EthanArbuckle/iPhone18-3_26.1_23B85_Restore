unint64_t sub_23C827C44()
{
  result = qword_27E202468;
  if (!qword_27E202468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E202468);
  }

  return result;
}

unint64_t sub_23C827C9C()
{
  result = qword_27E202470;
  if (!qword_27E202470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E202470);
  }

  return result;
}

unint64_t sub_23C8313B0()
{
  result = qword_27E203A20;
  if (!qword_27E203A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203A20);
  }

  return result;
}

unint64_t sub_23C831404()
{
  result = qword_27E203B58;
  if (!qword_27E203B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203B58);
  }

  return result;
}

unint64_t sub_23C831458()
{
  result = qword_27E203CB0;
  if (!qword_27E203CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203CB0);
  }

  return result;
}

uint64_t sub_23C8314AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23C8314F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C83155C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C8315C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

AIMLInstrumentationStreams::TranscriptProtoCandidateSource_optional __swiftcall TranscriptProtoCandidateSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoPlanSource_optional __swiftcall TranscriptProtoPlanSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302040100uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoPrefixExpression_PrefixOp_optional __swiftcall TranscriptProtoPrefixExpression_PrefixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoInfixExpression_InfixOp_optional __swiftcall TranscriptProtoInfixExpression_InfixOp.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 19;
  if (rawValue < 0x13)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AIMLInstrumentationStreams::TranscriptProtoUpdateParameterExpression_UpdateKind_optional __swiftcall TranscriptProtoUpdateParameterExpression_UpdateKind.init(rawValue:)(Swift::Int rawValue)
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

unint64_t TranscriptProtoEvent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoEvent(0);
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[12]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = v2[13];
  v7 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[14];
  v9 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[15];
  v11 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[16]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0xE000000000000000;
  result = sub_23C599848(MEMORY[0x277D84F90]);
  *(a1 + 10) = result;
  return result;
}

uint64_t TranscriptProtoEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoEvent(0) + 64);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TranscriptProtoTranscript.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoTranscript(0);
  a1[3] = 0;
  a1[4] = 0;
  v3 = a1 + *(v2 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoTimepoint.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoTimepoint(0);
  v3 = *(v2 + 28);
  v4 = sub_23C870EC4();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 32)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoRequest.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[8];
  v9 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = &a1[v2[9]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C8327DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C832878@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C832914(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C832A4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C832AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C832C08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C832CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C832E24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a1(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a2;
  return result;
}

double TranscriptProtoSpeechPackage.Token.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_23C832FD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C833070(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoExternalAgentRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v4 = (a1 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v3[6];
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v3[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C833584@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v4 = a1 + *(v3 + 20);
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + *(v3 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = a1 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

unint64_t TranscriptProtoAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoAction(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[10];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  result = sub_23C599950(MEMORY[0x277D84F90]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23C833AC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
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

uint64_t TranscriptProtoExternalAgentOutcome.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoStatementResult.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementResult(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 56);
  v7(&a1[v5], 1, 1, v6);
  v7(&a1[v2[7]], 1, 1, v6);
  v7(&a1[v2[8]], 1, 1, v6);
  v8 = v2[9];
  v9 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = &a1[v2[10]];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C8344A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C834540(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 40);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoCandidate.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoCandidate(0);
  v3 = v2[5];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[8]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t sub_23C8347C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C834864(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_23C834944@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  v2 = a2 + *(a1(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

unint64_t TranscriptProtoClientAction.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientAction(0);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = *(v2 + 36);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 40);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  *(a1 + 16) = sub_23C599478(MEMORY[0x277D84F90]);
  result = sub_23C599D20(v6);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_23C834C84@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoPersonQuery(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v2[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoPersonQuery.Handle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 3;
  v2 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v3 = a1 + *(v2 + 28);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C834F28@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  a2[1] = 0;
  a2[2] = 0;
  v4 = a2 + *(v3 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = a1 + v2[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C835154@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a1(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = a2;
  return result;
}

uint64_t sub_23C835740@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v3 = &a3[*(a2(0) + 20)];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoActionFailureDeveloperDefinedError.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v3 = v2[6];
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = v2[10];
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[v2[11]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoActionSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranscriptProtoActionSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranscriptProtoActionSuccess(0) + 44);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double TranscriptProtoFollowUpActionExecutableActionLinkAction.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0) + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_23C87D700;
  *(a1 + 32) = 0;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = a1 + *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C83647C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 24);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a3 + *(v5 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_23C8365C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
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

uint64_t TranscriptProtoPlan.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 4;
  v2 = a1 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init()@<X0>(char *a1@<X8>)
{
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v3 = *(StepResults + 24);
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(StepResults + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseDialog(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v3 = a1 + *(v2 + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoDialogType(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  v6 = v2[9];
  v7 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v8 = v2[10];
  v9 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = (a1 + v2[11]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v2[12];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v13 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  return result;
}

uint64_t TranscriptProtoResponseManifest.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a1[v2[8]];
  *v8 = 0;
  *(v8 + 1) = 0;
  a1[v2[9]] = 2;
  a1[v2[10]] = 2;
  v9 = v2[11];
  v10 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  v11 = &a1[v2[12]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C837AA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23C837B44(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 48);
  v5 = sub_23C870F34();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TranscriptProtoResponseParameter.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = xmmword_23C879130;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  v2 = a1 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v7;
  return result;
}

uint64_t sub_23C837E00@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  v3 = &a2[*(a1(0) + 20)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t TranscriptProtoUIConfirmationLabel.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoUIConfirmationLabel(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return result;
}

double TranscriptProtoArchiveViewPayload.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  a1[1] = 0u;
  a1[2] = 0u;
  v3 = a1 + *(v2 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a1 = xmmword_23C87D700;
  return result;
}

double sub_23C838220@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  return result;
}

double sub_23C838300@<D0>(uint64_t (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = 0.0;
  *a2 = xmmword_23C87D700;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[7];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[9]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoActionResolverRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = a1 + v2[10];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t TranscriptProtoContextRetrieved.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoContextRetrieved(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v4 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v4;
  return result;
}

uint64_t sub_23C838B24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  v5 = a1(0);
  v6 = *(v5 + 24);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a3 + *(v5 + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C838DD8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = a3(MEMORY[0x277D84F90]);
  *a4 = result;
  return result;
}

uint64_t sub_23C838F38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  v10 = &a4[*(v7 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a3;
  return result;
}

unint64_t TranscriptProtoASTFlatExprCallVariant.init()@<X0>(void *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0) + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  result = sub_23C59A0E0(MEMORY[0x277D84F90]);
  a1[2] = result;
  return result;
}

uint64_t sub_23C8392FC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + *(v3 + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoASTPickType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  v1 = a1 + *(type metadata accessor for TranscriptProtoASTPickType(0) + 20);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C8395C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v3 = updated[6];
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + updated[7], 1, 1, v4);
  v6 = a1 + updated[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_23C839C6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v5 = a3 + *(a1(0) + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = a2(MEMORY[0x277D84F90]);
  *a3 = result;
  return result;
}

uint64_t sub_23C839D64@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a3, 1, 1, v5);
  v7 = a2(0);
  v6(a3 + *(v7 + 20), 1, 1, v5);
  v8 = a3 + *(v7 + 24);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C83A1EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1(0);
  v6 = v5[5];
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);
  v8(&a3[v6], 1, 1, v7);
  v8(&a3[v5[6]], 1, 1, v7);
  v9 = &a3[v5[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t sub_23C83A354@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = a1(0);
  v6 = *(v5 + 20);
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = &a3[*(v5 + 24)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v3 = updated[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + updated[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + updated[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  return result;
}

unint64_t TranscriptProtoStructuredSearchExpression.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v6 = MEMORY[0x277D84F90];
  result = sub_23C59A2C8(MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_23C83ABE0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
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

uint64_t TranscriptProtoToolRetrievalResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
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

uint64_t TranscriptProtoSystemResponse.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v3 = v2[5];
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &a1[v2[7]];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a1 + v4, 1, 1, v5);
  v6(a1 + v3[6], 1, 1, v5);
  v7 = (a1 + v3[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[8]);
  *v8 = 0;
  v8[1] = 0;
  v6(a1 + v3[9], 1, 1, v5);
  v9 = a1 + v3[10];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoProgramStatement.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v4 = v3[5];
  v5 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[6]) = 2;
  *(a1 + v3[7]) = 2;
  v6 = a1 + v3[8];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C83B85C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoStatementID.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = v2[7];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[8], 1, 1, v4);
  v6 = a1 + v2[9];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t TranscriptProtoClientUndoRedoRequest.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v3 = v2[6];
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  v5(a1 + v2[7], 1, 1, v4);
  v6 = a1 + v2[8];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_23C83BE8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = a1(0);
  (*(*(v9 - 8) + 56))(a5, 1, 1, v9);
  v10 = a2(0);
  v11 = v10[5];
  v12 = a3(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = v10[6];
  v14 = a4(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = a5 + v10[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C83C060@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a2(0);
  v7 = v6[5];
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 56);
  v9(a3 + v7, 1, 1, v8);
  v9(a3 + v6[6], 1, 1, v8);
  v10 = a3 + v6[7];
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t TranscriptProtoQueryDecorationResult.init()@<X0>(char *a1@<X8>)
{
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v3 = *(DecorationResult + 36);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a1[v3], 1, 1, DecorationToolRetrievalResponse);
  v5 = &a1[*(DecorationResult + 40)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v7 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v7;
  *(a1 + 2) = v7;
  *(a1 + 3) = v7;
  *(a1 + 4) = v7;
  return result;
}

uint64_t sub_23C83C328@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
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

uint64_t sub_23C83C99C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821A88();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C831404();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821B84();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C8313B0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821BD8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821C80();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821CD4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821C2C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CD20(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821D28();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821D7C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821ADC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23C83CE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62DA20();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoEvent.clientRequestID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TranscriptProtoEvent.clientRequestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientSessionID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TranscriptProtoEvent.clientSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientApplicationID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t TranscriptProtoEvent.clientApplicationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.rawInitiatedSpans.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t TranscriptProtoEvent.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t TranscriptProtoEvent.clientGroupID.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoEvent.clientGroupID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoEvent(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoEvent.init(rawID:rawSessionID:rawQueryEventID:rawPayload:clientRequestID:clientSessionID:clientApplicationID:clientGroupID:timepoint:sender:postingSpan:rawInitiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v22 = type metadata accessor for TranscriptProtoEvent(0);
  v23 = v22[11];
  v24 = type metadata accessor for TranscriptProtoPayload(0);
  (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  v25 = v22[13];
  v26 = (a9 + v22[12]);
  v27 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v27 - 8) + 56))(a9 + v25, 1, 1, v27);
  v28 = v22[14];
  v29 = type metadata accessor for TranscriptProtoParticipantID(0);
  (*(*(v29 - 8) + 56))(a9 + v28, 1, 1, v29);
  v30 = v22[15];
  v31 = type metadata accessor for TranscriptProtoSpanID(0);
  (*(*(v31 - 8) + 56))(a9 + v30, 1, 1, v31);
  v32 = a9 + v22[16];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  sub_23C5842D0(a7, a9 + v23, &qword_27E1F9950, &unk_23C87CFF0);
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 56) = a11;
  *(a9 + 72) = a12;
  *v26 = a13;
  v26[1] = a14;
  sub_23C5842D0(a15, a9 + v25, &qword_27E1F9D08, &qword_23C87D090);
  sub_23C5842D0(a16, a9 + v28, &qword_27E1FBF48, &unk_23C8A1140);
  result = sub_23C5842D0(a17, a9 + v30, &qword_27E1FBF40, &qword_23C87D088);
  *(a9 + 80) = a18;
  return result;
}

uint64_t TranscriptProtoTranscript.sessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TranscriptProtoTranscript.sessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.events.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TranscriptProtoTranscript.clientSessionID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TranscriptProtoTranscript.clientSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TranscriptProtoTranscript.init(sessionID:clientSessionID:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for TranscriptProtoTranscript(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[2] = a5;
  return result;
}

uint64_t TranscriptProtoTimepoint.init(rawDate:suspendingClockInstantNs:continuousClockInstantNs:rawBootSessionUuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoTimepoint(0);
  v13 = *(v12 + 28);
  v14 = sub_23C870EC4();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 32)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a6[v13], &unk_27E1F9D10, &qword_23C874E00);
  *a6 = a2;
  *(a6 + 1) = a3;
  *(a6 + 2) = a4;
  *(a6 + 3) = a5;
  return result;
}

uint64_t TranscriptProtoSessionStart.init(initialLocaleSettings:originatingDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoSessionStart(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E203E28, &unk_23C8A1150);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E203E18, &qword_23C8A0FD0);
}

uint64_t TranscriptProtoRequest.init(content:safetyMode:prescribedPlan:rawRewriteMetadataEventID:rewriteMetadataInlined:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoRequest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v14 - 8) + 56))(&a7[v13], 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = v12[8];
  v18 = &a7[v12[7]];
  v19 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v19 - 8) + 56))(&a7[v17], 1, 1, v19);
  v20 = &a7[v12[9]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a7[v13], &qword_27E203DD0, &unk_23C8A1160);
  *a7 = a2;
  sub_23C5842D0(a3, &a7[v15], &qword_27E203E08, &qword_23C8A0FC0);
  *v18 = a4;
  v18[1] = a5;
  return sub_23C5842D0(a6, &a7[v17], &qword_27E203DC0, &unk_23C8A1170);
}

uint64_t TranscriptProtoRequestContentSpeechContent.init(text:speechPackage:statementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v11 = v10[5];
  v12 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = &a5[v10[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_23C5842D0(a3, &a5[v11], &qword_27E203DE0, &qword_23C8A0F98);
  return sub_23C5842D0(a4, &a5[v13], &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t sub_23C83E7F0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v5 = a3 + *(a2(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t TranscriptProtoSpeechPackage.Token.init(text:confidenceScore:startTime:silenceStartTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = a4 + *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoExternalAgentRequest.rawRewriteMetadataEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoExternalAgentRequest.init(content:rawRewriteMetadataEventID:rewriteMetadataInlined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoRequestContent(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v12 = v11[6];
  v13 = (a5 + v11[5]);
  v14 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  (*(*(v14 - 8) + 56))(a5 + v12, 1, 1, v14);
  v15 = a5 + v11[7];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a5, &qword_27E203DD0, &unk_23C8A1160);
  *v13 = a2;
  v13[1] = a3;
  return sub_23C5842D0(a4, a5 + v12, &qword_27E203DC0, &unk_23C8A1170);
}

uint64_t sub_23C83EEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = a5 + *(a4(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.elementAtIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenTool.init(resultStatementID:elementAtIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v10 = *(v9 + 24);
  v11 = a4 + *(v9 + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, a4, &qword_27E1FAAF8, &unk_23C8A1180);
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.elementAtIndex.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.elementAtIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  *(a3 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoAction.parameterValues.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_23C83F33C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_23C83F39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoAction.init(statementID:bundleID:isConfirmed:parameterValues:planEventID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoAction(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a9 + v15, 1, 1, v16);
  v17 = (a9 + v14[7]);
  v18 = (a9 + v14[8]);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = a9 + v14[10];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a9 + v15, &qword_27E1FAAF8, &unk_23C8A1180);
  *v17 = a2;
  v17[1] = a3;
  *a9 = a4;
  *(a9 + 8) = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_23C5842D0(a8, a9 + v19, &qword_27E2037A0, &qword_23C8A0A00);
}

uint64_t TranscriptProtoActionParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E203D58, &unk_23C8A11A0);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E203CF8, &qword_23C8A0ED8);
}

void TranscriptProtoPromptSelection.promptSelectionValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t TranscriptProtoPromptSelection.promptSelectionValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t static TranscriptProtoPromptSelectionEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
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

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t static TranscriptProtoActionConfirmationSystemStyleEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D18, &unk_23C8A11C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C85C9E8(a2, &v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = _s26AIMLInstrumentationStreams61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v8, &v8[v9]);
  sub_23C85CA50(&v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t sub_23C83FCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203D18, &unk_23C8A11C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_23C85C9E8(a2, &v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  LOBYTE(a2) = static TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.== infix(_:_:)(v8, &v8[v9]);
  sub_23C85CA50(&v8[v9], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return a2 & 1;
}

uint64_t TranscriptProtoActionConfirmationSystemStyleMontaraEnablement.init(bundleIdentifier:source:isExplicitRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = a5 + *(v10 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_23C5842D0(a3, a5 + v11, &qword_27E203D08, &qword_23C8A0EE8);
  *(a5 + 16) = a4;
  return result;
}

uint64_t TranscriptProtoParameterValue.init(value:promptSelection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoParameterValue(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAB68, &unk_23C879140);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E203CF8, &qword_23C8A0ED8);
}

uint64_t TranscriptProtoExternalAgentOutcome.init(responseText:statementID:statementOutcome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v9 = v8[5];
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = v8[6];
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  v13 = &a4[v8[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  sub_23C5842D0(a2, &a4[v9], &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a3, &a4[v11], &qword_27E1FBB18, &unk_23C87B950);
}

uint64_t TranscriptProtoStatementResultPayload.init(outcome:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FBB18, &unk_23C87B950);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FBB08, &unk_23C8A11D0);
}

uint64_t TranscriptProtoStatementResult.actionEventID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TranscriptProtoStatementResult.actionEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TranscriptProtoStatementResult.init(actionEventID:payload:resultStatementID:originProgramStatementID:originTaskStatementID:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoStatementResult(0);
  v11 = v10[5];
  v12 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  (*(*(v12 - 8) + 56))(&a8[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a8[v13], 1, 1, v14);
  v16 = v10[7];
  v15(&a8[v16], 1, 1, v14);
  v17 = v10[8];
  v15(&a8[v17], 1, 1, v14);
  v18 = v10[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(&a8[v18], 1, 1, v19);
  v20 = &a8[v10[10]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 1) = a2;
  sub_23C5842D0(a3, &a8[v11], &qword_27E203CE8, &qword_23C8A0EC8);
  sub_23C5842D0(a4, &a8[v13], &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a5, &a8[v16], &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a6, &a8[v17], &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a7, &a8[v18], &qword_27E2037A0, &qword_23C8A0A00);
}

uint64_t TranscriptProtoCandidate.init(value:source:promptStatus:statementID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for TranscriptProtoCandidate(0);
  v11 = v10[5];
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[6];
  v14 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  v15 = v10[7];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(&a5[v15], 1, 1, v16);
  v17 = &a5[v10[8]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a5[v11], &qword_27E1FAB68, &unk_23C879140);
  *a5 = v9;
  sub_23C5842D0(a3, &a5[v13], &qword_27E1FABB8, &unk_23C8A11E0);
  return sub_23C5842D0(a4, &a5[v15], &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t static TranscriptProtoCandidatePromptStatusEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
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

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t TranscriptProtoClientAction.shimParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t TranscriptProtoClientAction.clientQueryID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TranscriptProtoClientAction.clientQueryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.planEventID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t TranscriptProtoClientAction.planEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t TranscriptProtoClientAction.init(toolID:parameters:clientQueryID:planEventID:statementID:shimParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for TranscriptProtoClientAction(0);
  v19 = *(v18 + 36);
  v20 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = &a9[*(v18 + 40)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 4) = a4;
  *(a9 + 5) = a5;
  *(a9 + 6) = a6;
  *(a9 + 7) = a7;
  result = sub_23C5842D0(a8, &a9[v19], &qword_27E1FAAF8, &unk_23C8A1180);
  *(a9 + 3) = a10;
  return result;
}

uint64_t sub_23C8415DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v7 = a4 + *(a3(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  a4[1] = a2;
  return result;
}

uint64_t TranscriptProtoPersonQuery.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoPersonQuery.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_23C84186C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C831458();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoPersonQuery.Handle.init(kind:label:value:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  *a6 = 3;
  v12 = a6 + *(type metadata accessor for TranscriptProtoPersonQuery.Handle(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = v11;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t TranscriptProtoPersonQuery.init(name:handle:isMe:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v14[8];
  v18 = (a7 + v14[7]);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a7 + 8) = a1;
  *(a7 + 16) = a2;
  result = sub_23C5842D0(a3, a7 + v15, &qword_27E203CB8, &unk_23C8A11F0);
  *a7 = a4;
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_23C841A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = a5 + *(a4(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  a5[1] = a1;
  a5[2] = a2;
  *a5 = a3;
  return result;
}

uint64_t TranscriptProtoActionParameterContext.init(statementID:parameterID:tool:actionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v13 = v12[6];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = v12[7];
  v16 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  v17 = a6 + v12[8];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a6 + v13, &qword_27E1FAAF8, &unk_23C8A1180);
  *a6 = a2;
  *(a6 + 8) = a3;
  result = sub_23C5842D0(a4, a6 + v15, &qword_27E2037A0, &qword_23C8A0A00);
  *(a6 + 16) = v11;
  return result;
}

uint64_t sub_23C841DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v9 = a5 + *(a4(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return result;
}

uint64_t TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevelEnum.hashValue.getter()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t TranscriptProtoActionFailure.init(failure:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoActionFailure(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E203C20, &unk_23C8A1230);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoActionSuccess.inAppSearchString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoActionSuccess(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoActionSuccess.init(returnValue:undoContext:didShowInAppResult:followUpAction:shouldOpen:inAppSearchString:concludesStreamingStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v14 = v13[6];
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[7];
  v17 = type metadata accessor for TranscriptProtoUndoContext(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = v13[8];
  v19 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = v13[10];
  v21 = &a9[v13[9]];
  v22 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v22 - 8) + 56))(&a9[v20], 1, 1, v22);
  v23 = &a9[v13[11]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a9[v14], &qword_27E1FAB68, &unk_23C879140);
  sub_23C5842D0(a2, &a9[v16], &qword_27E203C00, &unk_23C8A1240);
  *a9 = a3;
  sub_23C5842D0(a4, &a9[v18], &qword_27E203BF0, &qword_23C8A0DF0);
  a9[1] = a5;
  *v21 = a6;
  v21[1] = a7;
  return sub_23C5842D0(a8, &a9[v20], &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t sub_23C842CC8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2(0);
  (*(*(v11 - 8) + 56))(a6, 1, 1, v11);
  v12 = a6 + *(a3(0) + 20);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  return sub_23C5842D0(a1, a6, a4, a5);
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.getter()
{
  v1 = *(v0 + 16);
  sub_23C5ACFC8(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoFollowUpActionExecutableActionLinkAction.linkAction.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C595090(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_23C843020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, void *a7@<X8>)
{
  v13 = a7 + *(a6(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.parameterIndex.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.parameterIndex.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoParameterDisambiguation.init(parameterID:parameterIndex:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 32) = a4 & 1;
  *(a6 + 16) = a5;
  *(a6 + 24) = a3;
  return result;
}

uint64_t sub_23C843490(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C821B30();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t TranscriptProtoParameterNotAllowed.init(parameterID:value:reason:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = a5 + *(v10 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  result = sub_23C5842D0(a3, a5 + v11, &qword_27E1FAB68, &unk_23C879140);
  *(a5 + 16) = v9;
  return result;
}

uint64_t sub_23C8436A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
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

uint64_t TranscriptProtoPlan.promptResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptProtoPlan.promptResponse.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoPlan.statements.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t TranscriptProtoPlan.overrideID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t TranscriptProtoPlan.overrideID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TranscriptProtoPlan.init(prompt:promptResponse:statements:overrideID:planSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a8;
  *(a9 + 56) = 4;
  v18 = a9 + *(type metadata accessor for TranscriptProtoPlan(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v17;
  return result;
}

uint64_t static TranscriptProtoRecoverableErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B38, &unk_23C8A1270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C85C9E8(a2, &v8[v9], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = _s26AIMLInstrumentationStreams34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v8, &v8[v9]);
  sub_23C85CA50(&v8[v9], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t sub_23C843BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B38, &unk_23C8A1270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v11 - v7;
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_23C85C9E8(a2, &v8[v9], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationError.== infix(_:_:)(v8, &v8[v9]);
  sub_23C85CA50(&v8[v9], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoPlanGenerationError);
  return a2 & 1;
}

uint64_t static TranscriptProtoPlanGenerationErrorEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B18, &unk_23C8A1280);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C85C9E8(a2, v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = _s26AIMLInstrumentationStreams45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v8, (v8 + v9));
  sub_23C85CA50(v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t sub_23C843E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203B18, &unk_23C8A1280);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_23C85C9E8(a2, v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  LOBYTE(a2) = static TranscriptProtoPlanGenerationModelOutputError.== infix(_:_:)(v8, (v8 + v9));
  sub_23C85CA50(v8 + v9, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  return a2 & 1;
}

uint64_t TranscriptProtoPlanGenerationModelOutputError.init(rawModelOutput:prompt:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 28)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  return sub_23C5842D0(a5, &a6[v13], &qword_27E203B08, &qword_23C8A0D28);
}

uint64_t TranscriptProtoQueryStep.init(statementID:context:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v10 = Step[5];
  v11 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = Step[6];
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  (*(*(Payload - 8) + 56))(a4 + v12, 1, 1, Payload);
  v14 = a4 + Step[7];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a4, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a2, a4 + v10, &qword_27E203AF8, &unk_23C8A1290);
  return sub_23C5842D0(a3, a4 + v12, &qword_27E203AE8, &qword_23C8A0D10);
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptProtoQueryStepResults.rawQueryEventID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t TranscriptProtoQueryStepResults.init(queryResults:originStatementID:rawQueryEventID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v11 = *(StepResults + 24);
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = &a5[*(StepResults + 28)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a5 = a1;
  result = sub_23C5842D0(a2, &a5[v11], &qword_27E1FAAF8, &unk_23C8A1180);
  *(a5 + 1) = a3;
  *(a5 + 2) = a4;
  return result;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptProtoResponseDialog.fullSpeak.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v18 = a9 + *(type metadata accessor for TranscriptProtoResponseDialog(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoResponseOutput.dialogIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoResponseOutput(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseOutput.init(visualOutput:printedDialogOutput:spokenDialogOutput:responseType:resultStatementIds:options:attribution:dialogIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = *a4;
  v14 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v15 = v14[7];
  v16 = type metadata accessor for TranscriptProtoDialogType(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v18 = v14[8];
  v17(a9 + v18, 1, 1, v16);
  v19 = v14[9];
  v20 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  (*(*(v20 - 8) + 56))(a9 + v19, 1, 1, v20);
  v21 = v14[10];
  v22 = type metadata accessor for TranscriptProtoVisualOutput(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  v23 = v14[12];
  v24 = (a9 + v14[11]);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  sub_23C5842D0(a2, a9 + v15, &qword_27E203AA0, &unk_23C8A12B0);
  sub_23C5842D0(a3, a9 + v18, &qword_27E203AA0, &unk_23C8A12B0);
  *(a9 + 8) = v26;
  *(a9 + 16) = a5;
  sub_23C5842D0(a6, a9 + v19, &qword_27E203A90, &qword_23C8A0CC0);
  result = sub_23C5842D0(a7, a9 + v21, &qword_27E203A80, &unk_23C8A12C0);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

uint64_t sub_23C8455A0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_23C845600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.useTemplateAsFallback.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t TranscriptProtoResponseManifest.dialogPresentationHint.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TranscriptProtoResponseManifest(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t TranscriptProtoResponseManifest.init(parameters:dialog:visual:templateID:templateLocation:useTemplateAsFallback:dialogPresentationHint:attribution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char *a10, uint64_t a11)
{
  v28 = *a10;
  v13 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v14 = v13[5];
  v15 = type metadata accessor for TranscriptProtoResponseDialog(0);
  (*(*(v15 - 8) + 56))(&a9[v14], 1, 1, v15);
  v16 = v13[6];
  v17 = type metadata accessor for TranscriptProtoResponseVisual(0);
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = &a9[v13[7]];
  v19 = &a9[v13[8]];
  v20 = v13[9];
  v21 = v13[10];
  a9[v21] = 2;
  v22 = v13[11];
  v23 = type metadata accessor for TranscriptProtoUIType(0);
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v13[12]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  sub_23C5842D0(a2, &a9[v14], &qword_27E203A10, &qword_23C8A0C50);
  sub_23C5842D0(a3, &a9[v16], &qword_27E203A00, &unk_23C8A12E0);
  *v18 = a4;
  *(v18 + 1) = a5;
  *v19 = a6;
  *(v19 + 1) = a7;
  a9[v20] = a8;
  a9[v21] = v28;
  return sub_23C5842D0(a11, &a9[v22], &qword_27E2039F0, &qword_23C8A0C38);
}

uint64_t TranscriptProtoResponseParameter.value.getter()
{
  v1 = *(v0 + 16);
  sub_23C5EDBA0(v1, *(v0 + 24));
  return v1;
}

uint64_t TranscriptProtoResponseParameter.value.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C5AD0AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.format.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t TranscriptProtoResponseParameter.format.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t TranscriptProtoResponseParameter.init(key:value:type:required:format:profanityFilter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *(a9 + 16) = xmmword_23C879130;
  v19 = a9 + *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_23C5AD0AC(*(a9 + 16), *(a9 + 24));
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t TranscriptProtoResponseVisual.init(views:labels:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 28)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_23C5842D0(a3, &a4[v9], &qword_27E2039E0, &unk_23C8A12F0);
}

uint64_t sub_23C845F38@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = &a3[*(a2(0) + 20)];
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  return result;
}

uint64_t sub_23C8460D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = a6 + *(a5(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t TranscriptProtoArchiveViewPayload.init(viewData:containerBundleID:targetBundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = a7 + *(type metadata accessor for TranscriptProtoArchiveViewPayload(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.getter()
{
  v1 = *v0;
  sub_23C5ACFC8(*v0, *(v0 + 8));
  return v1;
}

uint64_t TranscriptProtoControlPayload.controlMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_23C595090(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t TranscriptProtoSystemPromptResolution.init(actionEventID:userAction:systemResponseEventID:statementID:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v15 = v14[6];
  v16 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[7];
  v18 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v18 - 8) + 56))(&a8[v17], 1, 1, v18);
  v19 = v14[8];
  v20 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  (*(*(v20 - 8) + 56))(&a8[v19], 1, 1, v20);
  v21 = &a8[v14[9]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a8 + 2) = a1;
  *(a8 + 3) = a2;
  sub_23C5842D0(a3, &a8[v15], &qword_27E2039A8, &qword_23C8A0BF8);
  *a8 = a4;
  *(a8 + 1) = a5;
  sub_23C5842D0(a6, &a8[v17], &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a7, &a8[v19], &qword_27E203998, &unk_23C8A1310);
}

uint64_t TranscriptProtoActionResolverRequest.init(resolvedParameters:unresolvedParameterSets:isConfirmed:statementID:isAuthenticated:tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v14 = v13[7];
  v15 = type metadata accessor for TranscriptProtoParameterSet(0);
  (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  v16 = v13[8];
  v17 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  v18 = v13[9];
  v19 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  v20 = a7 + v13[10];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7 + v14, &qword_27E203970, &unk_23C8A1320);
  *a7 = a2;
  *(a7 + 8) = a3;
  sub_23C5842D0(a4, a7 + v16, &qword_27E1FAAF8, &unk_23C8A1180);
  *(a7 + 9) = a5;
  return sub_23C5842D0(a6, a7 + v18, &qword_27E2037A0, &qword_23C8A0A00);
}

uint64_t TranscriptProtoContextRetrieved.init(requiredContext:utteranceContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for TranscriptProtoContextRetrieved(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t TranscriptProtoRetrievedContextStatement.init(statementID:retrievedContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ContextProtoRetrievedContext(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FABA8, &qword_23C878F50);
}

uint64_t TranscriptProtoDynamicEnumerationEntityStatement.init(statementID:dynamicEnumerationEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = a3 + *(v7 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a3, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a2, a3 + v8, &qword_27E1FAAE8, &unk_23C8A1330);
}

uint64_t TranscriptProtoParameter.collectionIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TranscriptProtoParameter.collectionIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_23C847124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v17 = a6(0);
  v18 = *(v17 + 24);
  v19 = a7(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = a9 + *(v17 + 28);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  return sub_23C5842D0(a5, a9 + v18, a8, a10);
}

uint64_t sub_23C8473D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
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

uint64_t sub_23C847590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = a3(0);
  v14 = *(v13 + 20);
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[*(v13 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  return sub_23C5842D0(a2, &a7[v14], a5, a6);
}

void TranscriptProtoASTPickType.astpickTypeValues.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TranscriptProtoASTPickType.astpickTypeValues.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t static TranscriptProtoAstpickTypeEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_23C847940(uint64_t a1, uint64_t a2)
{
  v2 = *a2 ^ *a1 ^ 1;
  if ((*(a2 + 8) & 1) == 0)
  {
    LOBYTE(v2) = 0;
  }

  if (*(a1 + 8) != 1)
  {
    LOBYTE(v2) = (*a1 == *a2) & ~*(a2 + 8);
  }

  return v2 & 1;
}

uint64_t sub_23C8479F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = a6 + *(a5(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  return result;
}

uint64_t TranscriptProtoASTFlatExprUpdateVariant.init(lhs:path:value:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v16 = *a4;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v10 = updated[6];
  v11 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a5 + v10, 1, 1, v11);
  v13 = updated[7];
  v12(a5 + v13, 1, 1, v11);
  v14 = a5 + updated[8];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a5 + v10, &qword_27E1FAB88, &unk_23C8A1350);
  *a5 = a2;
  result = sub_23C5842D0(a3, a5 + v13, &qword_27E1FAB88, &unk_23C8A1350);
  *(a5 + 8) = v16;
  return result;
}

uint64_t sub_23C847E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X8>)
{
  v15 = a4(0);
  v16 = *(v15 + 20);
  v17 = a5(0);
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  v18 = &a8[*(v15 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a8[v16], a6, a7);
  *a8 = a2;
  *(a8 + 1) = a3;
  return result;
}

uint64_t sub_23C848238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 56);
  v14(a7, 1, 1, v13);
  v15 = a4(0);
  v16 = *(v15 + 20);
  v14(a7 + v16, 1, 1, v13);
  v17 = a7 + *(v15 + 24);
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7, a5, a6);
  return sub_23C5842D0(a2, a7 + v16, a5, a6);
}

uint64_t sub_23C848884@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, _BYTE *a8@<X8>)
{
  v12 = *a1;
  v13 = a4(0);
  v14 = v13[5];
  v15 = a5(0);
  v16 = *(*(v15 - 8) + 56);
  v16(&a8[v14], 1, 1, v15);
  v17 = v13[6];
  v16(&a8[v17], 1, 1, v15);
  v18 = &a8[v13[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = v12;
  sub_23C5842D0(a2, &a8[v14], a6, a7);
  return sub_23C5842D0(a3, &a8[v17], a6, a7);
}

uint64_t sub_23C848A88@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, _BYTE *a7@<X8>)
{
  v12 = *a1;
  v13 = a3(0);
  v14 = *(v13 + 20);
  v15 = a4(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = &a7[*(v13 + 24)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = v12;
  return sub_23C5842D0(a2, &a7[v14], a5, a6);
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.parameterIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TranscriptProtoUpdateParameterExpression_UpdateParameter.init(parameterID:kind:value:parameterIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v15 = updated[6];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = updated[8];
  v18 = a7 + updated[7];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v13;
  result = sub_23C5842D0(a4, a7 + v15, &qword_27E1FAAF8, &unk_23C8A1180);
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  return result;
}

uint64_t TranscriptProtoSearchExpression.init(query:isLowConfidenceKnowledge:pickOne:shouldOpenResultIfApplicable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a6 + *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t sub_23C8494E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v11 = a6 + *(a5(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  return result;
}

uint64_t TranscriptProtoStructuredSearchExpression.init(parameters:returnType:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = &a4[*(v8 + 28)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  result = sub_23C5842D0(a2, &a4[v9], &qword_27E1FAC40, &unk_23C8791C0);
  *(a4 + 1) = a3;
  return result;
}

uint64_t static TranscriptProtoToolParameterValueEnum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C85C9E8(a2, v8 + v9, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = sub_23C707370(v8, (v8 + v9));
  sub_23C85CA50(v8 + v9, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C85CA50(v8, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t sub_23C8499F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203778, &qword_23C8A09E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v11 - v7);
  v9 = *(v6 + 56);
  sub_23C85C9E8(a1, &v11 - v7, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_23C85C9E8(a2, v8 + v9, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  LOBYTE(a2) = static ToolKitProtoTypedValue.== infix(_:_:)(v8, (v8 + v9));
  sub_23C85CA50(v8 + v9, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C85CA50(v8, type metadata accessor for ToolKitProtoTypedValue);
  return a2 & 1;
}

uint64_t TranscriptProtoToolRetrievalResponse.retrievedTools.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.types.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t TranscriptProtoToolRetrievalResponse.init(originalSubQuery:rewrittenQuery:confidence:retrievedTools:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, float a8@<S0>)
{
  v16 = a7 + *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
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

uint64_t TranscriptProtoSystemResponse.clientQueryID.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TranscriptProtoSystemResponse.clientQueryID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TranscriptProtoSystemResponse(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TranscriptProtoSystemResponse.init(responseOutput:clientQueryID:interpretedStatementResults:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v11 = v10[5];
  v12 = type metadata accessor for TranscriptProtoResponseOutput(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = v10[7];
  v14 = &a5[v10[6]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  result = sub_23C5842D0(a1, &a5[v11], &qword_27E203768, &unk_23C8A1390);
  *v14 = a2;
  *(v14 + 1) = a3;
  *a5 = a4;
  return result;
}

uint64_t TranscriptProtoInterpretedStatementResult.init(outcome:resultStatementID:originProgramStatementID:actionEventID:toolID:originTaskStatementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v11 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v11 - 8) + 56))(a9, 1, 1, v11);
  v12 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v13 = v12[5];
  v22 = v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a9 + v13, 1, 1, v14);
  v16 = v12[6];
  v15(a9 + v16, 1, 1, v14);
  v17 = (a9 + v12[7]);
  v18 = (a9 + v12[8]);
  v19 = v12[9];
  v15(a9 + v19, 1, 1, v14);
  v20 = a9 + v12[10];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a9, &qword_27E1FBB18, &unk_23C87B950);
  sub_23C5842D0(a2, a9 + v22, &qword_27E1FAAF8, &unk_23C8A1180);
  sub_23C5842D0(a3, a9 + v16, &qword_27E1FAAF8, &unk_23C8A1180);
  *v17 = a4;
  v17[1] = a5;
  *v18 = a6;
  v18[1] = a7;
  return sub_23C5842D0(a8, a9 + v19, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoProgramStatement.isRoot.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.isExpanded.setter(char a1)
{
  result = type metadata accessor for TranscriptProtoProgramStatement(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TranscriptProtoProgramStatement.init(id:expression:isRoot:isExpanded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v12 = v11[5];
  v13 = type metadata accessor for TranscriptProtoExpression(0);
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  v14 = v11[6];
  v15 = v11[7];
  v16 = a5 + v11[8];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a5, &qword_27E1FAAF8, &unk_23C8A1180);
  result = sub_23C5842D0(a2, a5 + v12, &qword_27E203758, &qword_23C8A09C8);
  *(a5 + v14) = a3;
  *(a5 + v15) = a4;
  return result;
}

uint64_t sub_23C84A744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, void *a8@<X8>)
{
  v15 = a8 + *(a7(0) + 28);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

uint64_t TranscriptProtoDeviceDetailsDeviceType.init(rawValue:)@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0) + 20);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t TranscriptProtoStatementID.init(index:name:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for TranscriptProtoStatementID(0) + 24);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TranscriptProtoUndoRedoRequest.init(bundleIdentifier:token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v13 = v12[7];
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(a8 + v13, 1, 1, v14);
  v16 = v12[8];
  v15(a8 + v16, 1, 1, v14);
  v17 = a8 + v12[9];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 16) = v11;
  sub_23C5842D0(a6, a8 + v13, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a7, a8 + v16, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoClientUndoRedoRequest.init(token:operation:statementID:statementIDToUndo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v11 = v10[6];
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a6 + v11, 1, 1, v12);
  v14 = v10[7];
  v13(a6 + v14, 1, 1, v12);
  v15 = a6 + v10[8];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  sub_23C5842D0(a4, a6 + v11, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a5, a6 + v14, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoTypeConversionRequest.init(value:target:statementID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v10 = v9[5];
  v11 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  v14 = a4 + v9[7];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a4, &qword_27E1FAB68, &unk_23C879140);
  sub_23C5842D0(a2, a4 + v10, &qword_27E1FAC40, &unk_23C8791C0);
  return sub_23C5842D0(a3, a4 + v12, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t sub_23C84B530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = a4(0);
  (*(*(v13 - 8) + 56))(a8, 1, 1, v13);
  v14 = a5(0);
  v15 = v14[5];
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a8 + v15, 1, 1, v16);
  v18 = v14[6];
  v17(a8 + v18, 1, 1, v16);
  v19 = a8 + v14[7];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a8, a6, a7);
  sub_23C5842D0(a2, a8 + v15, &qword_27E1FAAF8, &unk_23C8A1180);
  return sub_23C5842D0(a3, a8 + v18, &qword_27E1FAAF8, &unk_23C8A1180);
}

uint64_t TranscriptProtoQueryDecorationResult.init(spans:requiredContext:utteranceContext:toolRetrievalResponse:dynamicEnumerationEntities:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v15 = *(DecorationResult + 36);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  (*(*(DecorationToolRetrievalResponse - 8) + 56))(&a7[v15], 1, 1, DecorationToolRetrievalResponse);
  v17 = &a7[*(DecorationResult + 40)];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  result = sub_23C5842D0(a4, &a7[v15], &qword_27E1FACE0, &unk_23C8A13B0);
  *(a7 + 3) = a5;
  *(a7 + 4) = a6;
  return result;
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResult.init(statementID:dataSource:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v11 = DecorationPrePlannerResult[5];
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = DecorationPrePlannerResult[6];
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  (*(*(DecorationPrePlannerResultPayload - 8) + 56))(&a5[v13], 1, 1, DecorationPrePlannerResultPayload);
  v15 = &a5[DecorationPrePlannerResult[7]];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, &a5[v11], &qword_27E1FAAF8, &unk_23C8A1180);
  *a5 = a2;
  *(a5 + 1) = a3;
  return sub_23C5842D0(a4, &a5[v13], &qword_27E203738, &qword_23C8A09B0);
}

uint64_t TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _s26AIMLInstrumentationStreams51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v74 = a1;
  v75 = a2;
  DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(0);
  v2 = *(*(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
  v73 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(0);
  v4 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
  v72 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(0);
  v6 = *(*(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
  v71 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(0);
  v8 = *(*(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
  v70 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedTypedValueVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(0);
  v10 = *(*(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
  v69 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResultPayloadRepeatedStringVariant = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(0);
  v12 = *(*(DecorationPrePlannerResultPayloadRepeatedStringVariant - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayloadRepeatedStringVariant);
  v68 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v15 = *(*(DecorationPrePlannerPayloadEnum - 8) + 64);
  v16 = MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v18 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v29);
  MEMORY[0x28223BE20](v28);
  v32 = (&DecorationPrePlannerResultPayloadRepeatedStringVariant - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205370, &qword_23C8A6720);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &DecorationPrePlannerResultPayloadRepeatedStringVariant - v36;
  v38 = *(v35 + 56);
  sub_23C85C9E8(v74, &DecorationPrePlannerResultPayloadRepeatedStringVariant - v36, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_23C85C9E8(v75, &v37[v38], type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_23C85C9E8(v37, v21, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v44 = v72;
          sub_23C868210(&v37[v38], v72, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          if (sub_23C5D0A74(*v21, *v44))
          {
            v45 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant + 20);
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
              sub_23C85CA50(v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
              v43 = v21;
              goto LABEL_37;
            }
          }

          v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
          sub_23C85CA50(v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant);
          v60 = v21;
          goto LABEL_44;
        }

        v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant;
        v47 = v21;
      }

      else
      {
        sub_23C85C9E8(v37, v18, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v52 = v73;
          sub_23C868210(&v37[v38], v73, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          if (sub_23C5D2670(*v18, *v52))
          {
            v53 = *(DecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant + 20);
            sub_23C870F34();
            sub_23C73EA18();
            v54 = sub_23C871754();
            sub_23C85CA50(v52, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
            if (v54)
            {
              v55 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
              v43 = v18;
LABEL_38:
              sub_23C85CA50(v43, v55);
              sub_23C85CA50(v37, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
              return 1;
            }
          }

          else
          {
            sub_23C85CA50(v52, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant);
          }

          v61 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
          v60 = v18;
          goto LABEL_45;
        }

        v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant;
        v47 = v18;
      }

      goto LABEL_33;
    }

    sub_23C85C9E8(v37, v24, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
      v47 = v24;
      goto LABEL_33;
    }

    v48 = v71;
    sub_23C868210(&v37[v38], v71, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    if (sub_23C5CF590(*v24, *v48))
    {
      v49 = *(DecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
        sub_23C85CA50(v48, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
        v43 = v24;
        goto LABEL_37;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant;
    sub_23C85CA50(v48, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant);
    v60 = v24;
LABEL_44:
    v61 = v59;
LABEL_45:
    sub_23C85CA50(v60, v61);
    sub_23C85CA50(v37, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v37, v32, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
      v47 = v32;
      goto LABEL_33;
    }

    v56 = v68;
    sub_23C868210(&v37[v38], v68, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    if (sub_23C5D25E0(*v32, *v56))
    {
      v57 = *(DecorationPrePlannerResultPayloadRepeatedStringVariant + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
        sub_23C85CA50(v56, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
        v43 = v32;
        goto LABEL_37;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant;
    sub_23C85CA50(v56, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant);
    v60 = v32;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_23C85C9E8(v37, v27, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
      v47 = v27;
      goto LABEL_33;
    }

    v50 = v70;
    sub_23C868210(&v37[v38], v70, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    if (sub_23C5D0880(*v27, *v50))
    {
      v51 = *(DecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
        sub_23C85CA50(v50, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
        v43 = v27;
        goto LABEL_37;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant;
    sub_23C85CA50(v50, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant);
    v60 = v27;
    goto LABEL_44;
  }

  sub_23C85C9E8(v37, v30, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v69;
    sub_23C868210(&v37[v38], v69, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    if (sub_23C5D15A4(*v30, *v40))
    {
      v41 = *(DecorationPrePlannerResultPayloadRepeatedTypedValueVariant + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v42 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
        sub_23C85CA50(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
        v43 = v30;
LABEL_37:
        v55 = v42;
        goto LABEL_38;
      }
    }

    v59 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
    sub_23C85CA50(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant);
    v60 = v30;
    goto LABEL_44;
  }

  v46 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant;
  v47 = v30;
LABEL_33:
  sub_23C85CA50(v47, v46);
  sub_23C585C34(v37, &qword_27E205370, &qword_23C8A6720);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v32 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053A0, &unk_23C8A6750);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v32 - v22;
  v24 = *(v21 + 56);
  sub_23C85C9E8(a1, &v32 - v22, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_23C85C9E8(a2, &v23[v24], type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v23, v16, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v26 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
        v27 = v16;
        goto LABEL_13;
      }

      sub_23C868210(&v23[v24], v7, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v28 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)(v16, v7);
      sub_23C85CA50(v7, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      v29 = v16;
      v30 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    }

    else
    {
      sub_23C85C9E8(v23, v18, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v26 = type metadata accessor for TranscriptProtoRequestContentTextContent;
        v27 = v18;
LABEL_13:
        sub_23C85CA50(v27, v26);
        goto LABEL_14;
      }

      sub_23C868210(&v23[v24], v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v28 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)(v18, v11);
      sub_23C85CA50(v11, type metadata accessor for TranscriptProtoRequestContentTextContent);
      v29 = v18;
      v30 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    }

    sub_23C85CA50(v29, v30);
    sub_23C85CA50(v23, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
    return v28 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_14;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_14:
    sub_23C585C34(v23, &qword_27E2053A0, &unk_23C8A6750);
    v28 = 0;
    return v28 & 1;
  }

  sub_23C85CA50(v23, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v28 = 1;
  return v28 & 1;
}

uint64_t _s26AIMLInstrumentationStreams43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest(0);
  v8 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v31 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053E0, &qword_23C8A6798);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  sub_23C85C9E8(a1, &v31 - v21, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_23C85C9E8(a2, &v22[v23], type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_29;
        }

        goto LABEL_20;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_20;
      }
    }

LABEL_29:
    sub_23C85CA50(v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    v25 = 1;
    return v25 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v22, v17, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v26 = type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest;
      v27 = v17;
LABEL_19:
      sub_23C85CA50(v27, v26);
      goto LABEL_20;
    }

    sub_23C868210(&v22[v23], v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    v28 = *v17 == *v10 && v17[1] == v10[1];
    if (!v28 && (sub_23C872014() & 1) == 0 || (v29 = *(v32 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      sub_23C85CA50(v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_23C85CA50(v17, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
      sub_23C85CA50(v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
      goto LABEL_21;
    }

    sub_23C85CA50(v10, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    sub_23C85CA50(v17, type metadata accessor for TranscriptProtoSystemRequirementProtectedAppRequest);
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_29;
    }

LABEL_20:
    sub_23C585C34(v22, &qword_27E2053E0, &qword_23C8A6798);
LABEL_21:
    v25 = 0;
    return v25 & 1;
  }

  sub_23C85C9E8(v22, v15, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest;
    v27 = v15;
    goto LABEL_19;
  }

  sub_23C868210(&v22[v23], v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  v25 = _s26AIMLInstrumentationStreams53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(v15, v7);
  sub_23C85CA50(v7, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  sub_23C85CA50(v15, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest);
  sub_23C85CA50(v22, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  return v25 & 1;
}

uint64_t _s26AIMLInstrumentationStreams42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v4 = *(*(v42 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v42);
  v41 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v40 = (&v39 - v8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v39 - v9);
  v11 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v39 - v17);
  MEMORY[0x28223BE20](v16);
  v20 = (&v39 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205400, &qword_23C8A67B8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v39 - v24;
  v26 = *(v23 + 56);
  sub_23C85C9E8(a1, &v39 - v24, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_23C85C9E8(a2, &v25[v26], type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C85C9E8(v25, v18, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v40;
        sub_23C868210(&v25[v26], v40, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v29 = *v18 == *v28 && v18[1] == v28[1];
        if (v29 || (sub_23C872014()) && v18[2] == v28[2])
        {
          v30 = *(v42 + 24);
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            sub_23C85CA50(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v31 = v18;
LABEL_35:
            sub_23C85CA50(v31, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_23C85CA50(v25, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
            return 1;
          }
        }

        sub_23C85CA50(v28, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v35 = v18;
        goto LABEL_37;
      }

      v15 = v18;
    }

    else
    {
      sub_23C85C9E8(v25, v15, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v41;
        sub_23C868210(&v25[v26], v41, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v33 = *v15 == *v32 && v15[1] == v32[1];
        if (v33 || (sub_23C872014()) && v15[2] == v32[2])
        {
          v34 = *(v42 + 24);
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            sub_23C85CA50(v32, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v31 = v15;
            goto LABEL_35;
          }
        }

        sub_23C85CA50(v32, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        v35 = v15;
        goto LABEL_37;
      }
    }
  }

  else
  {
    sub_23C85C9E8(v25, v20, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23C868210(&v25[v26], v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v36 = *v20 == *v10 && v20[1] == v10[1];
      if (v36 || (sub_23C872014()) && v20[2] == v10[2])
      {
        v37 = *(v42 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v31 = v20;
          goto LABEL_35;
        }
      }

      sub_23C85CA50(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v35 = v20;
LABEL_37:
      sub_23C85CA50(v35, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C85CA50(v25, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
      return 0;
    }

    v15 = v20;
  }

  sub_23C85CA50(v15, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C585C34(v25, &qword_27E205400, &qword_23C8A67B8);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v95 = a1;
  v96 = a2;
  v83 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v2 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v92 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v7 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v9 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v89 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v13 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v15 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v86 = (&v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v17 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v78 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v94 = &v78 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v78 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v78 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v78 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v78 - v38);
  MEMORY[0x28223BE20](v37);
  v41 = &v78 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205418, &qword_23C8A67D0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v46 = &v78 - v45;
  v47 = *(v44 + 56);
  sub_23C85C9E8(v95, &v78 - v45, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_23C85C9E8(v96, &v46[v47], type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23C85C9E8(v46, v41, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
        if (swift_getEnumCaseMultiPayload())
        {
          v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
          v50 = v41;
LABEL_58:
          sub_23C85CA50(v50, v49);
          sub_23C585C34(v46, &qword_27E205418, &qword_23C8A67D0);
LABEL_84:
          v58 = 0;
          return v58 & 1;
        }

        v74 = v85;
        sub_23C868210(&v46[v47], v85, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        if (*v41 == *v74 && *(v41 + 1) == *(v74 + 8) || (sub_23C872014()) && v41[16] == *(v74 + 16) && v41[17] == *(v74 + 17))
        {
          v75 = *(v78 + 28);
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
            sub_23C85CA50(v74, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
            v54 = v41;
            goto LABEL_78;
          }
        }

        v70 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool;
        sub_23C85CA50(v74, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
        v71 = v41;
        goto LABEL_82;
      }

      sub_23C85C9E8(v46, v39, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
        v50 = v39;
        goto LABEL_58;
      }

      v59 = v86;
      sub_23C868210(&v46[v47], v86, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      if (*v39 == *v59 && v39[1] == v59[1] || (sub_23C872014() & 1) != 0)
      {
        v60 = *(v84 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
          sub_23C85CA50(v59, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
          v54 = v39;
          goto LABEL_78;
        }
      }

      v70 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool;
      sub_23C85CA50(v59, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
      v71 = v39;
LABEL_82:
      v73 = v70;
      goto LABEL_83;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_23C85C9E8(v46, v33, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
        v50 = v33;
        goto LABEL_58;
      }

      v65 = v89;
      sub_23C868210(&v46[v47], v89, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      if (*v33 == *v65 && *(v33 + 1) == *(v65 + 8) || (sub_23C872014()) && v33[16] == *(v65 + 16))
      {
        v66 = *(v80 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          sub_23C85CA50(v65, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
          v54 = v33;
          v67 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
LABEL_79:
          sub_23C85CA50(v54, v67);
          sub_23C85CA50(v46, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
          v58 = 1;
          return v58 & 1;
        }
      }

      sub_23C85CA50(v65, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
      v71 = v33;
      v73 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool;
LABEL_83:
      sub_23C85CA50(v71, v73);
      sub_23C85CA50(v46, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      goto LABEL_84;
    }

    sub_23C85C9E8(v46, v36, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      v50 = v36;
      goto LABEL_58;
    }

    v55 = v87;
    sub_23C868210(&v46[v47], v87, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    if ((*v36 != *v55 || *(v36 + 1) != *(v55 + 8)) && (sub_23C872014() & 1) == 0 || v36[16] != *(v55 + 16) || (v56 = *(v79 + 24), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      v70 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
      sub_23C85CA50(v55, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
      v71 = v36;
      goto LABEL_82;
    }

    v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool;
    sub_23C85CA50(v55, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    v54 = v36;
    goto LABEL_78;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_23C85C9E8(v46, v30, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
        v50 = v30;
        goto LABEL_58;
      }

      v51 = v90;
      sub_23C868210(&v46[v47], v90, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      if ((*v30 != *v51 || *(v30 + 1) != *(v51 + 8)) && (sub_23C872014() & 1) == 0 || v30[16] != *(v51 + 16) || (v52 = *(v81 + 24), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v70 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
        sub_23C85CA50(v51, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
        v71 = v30;
        goto LABEL_82;
      }

      v53 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool;
      sub_23C85CA50(v51, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
      v54 = v30;
LABEL_78:
      v67 = v53;
      goto LABEL_79;
    }

    v61 = v94;
    sub_23C85C9E8(v46, v94, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v62 = v91;
      sub_23C868210(&v46[v47], v91, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
      if (*v61 == *v62 && *(v61 + 8) == *(v62 + 8) || (sub_23C872014()) && *(v61 + 16) == *(v62 + 16))
      {
        v63 = *(v82 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v64 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
LABEL_77:
          v53 = v64;
          sub_23C85CA50(v62, v64);
          v54 = v61;
          goto LABEL_78;
        }
      }

      v72 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
LABEL_81:
      v70 = v72;
      sub_23C85CA50(v62, v72);
      v71 = v61;
      goto LABEL_82;
    }

    v69 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool;
LABEL_57:
    v49 = v69;
    v50 = v61;
    goto LABEL_58;
  }

  if (EnumCaseMultiPayload != 6)
  {
    v61 = v93;
    sub_23C85C9E8(v46, v93, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v69 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_57;
    }

    v62 = v92;
    sub_23C868210(&v46[v47], v92, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    v68 = *(v62 + 8);
    if (*(v61 + 8))
    {
      if (!*(v62 + 8))
      {
LABEL_80:
        v72 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
        goto LABEL_81;
      }
    }

    else
    {
      if (*v61 != *v62)
      {
        v68 = 1;
      }

      if (v68)
      {
        goto LABEL_80;
      }
    }

    v76 = *(v83 + 20);
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      v64 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool;
      goto LABEL_77;
    }

    goto LABEL_80;
  }

  sub_23C85C9E8(v46, v25, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v49 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool;
    v50 = v25;
    goto LABEL_58;
  }

  v57 = v88;
  sub_23C868210(&v46[v47], v88, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v58 = _s26AIMLInstrumentationStreams44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(v25, v57);
  sub_23C85CA50(v57, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  sub_23C85CA50(v25, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  sub_23C85CA50(v46, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  return v58 & 1;
}

uint64_t _s26AIMLInstrumentationStreams36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for TranscriptProtoSystemRequirementMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoPermissionRequirement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TranscriptProtoAppRequirement(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053E8, &qword_23C8A67A0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  sub_23C85C9E8(a1, &v38 - v27, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_23C85C9E8(v39, &v28[v29], type metadata accessor for TranscriptProtoActionRequirementEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v28, v21, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v31 = type metadata accessor for TranscriptProtoPermissionRequirement;
        v32 = v21;
        goto LABEL_14;
      }

      sub_23C868210(&v28[v29], v9, type metadata accessor for TranscriptProtoPermissionRequirement);
      v34 = _s26AIMLInstrumentationStreams36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(v21, v9);
      v35 = type metadata accessor for TranscriptProtoPermissionRequirement;
      sub_23C85CA50(v9, type metadata accessor for TranscriptProtoPermissionRequirement);
      v36 = v21;
    }

    else
    {
      sub_23C85C9E8(v28, v23, type metadata accessor for TranscriptProtoActionRequirementEnum);
      if (swift_getEnumCaseMultiPayload())
      {
        v31 = type metadata accessor for TranscriptProtoAppRequirement;
        v32 = v23;
LABEL_14:
        sub_23C85CA50(v32, v31);
        goto LABEL_15;
      }

      sub_23C868210(&v28[v29], v13, type metadata accessor for TranscriptProtoAppRequirement);
      v34 = static TranscriptProtoAppRequirement.== infix(_:_:)(v23, v13);
      v35 = type metadata accessor for TranscriptProtoAppRequirement;
      sub_23C85CA50(v13, type metadata accessor for TranscriptProtoAppRequirement);
      v36 = v23;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C85C9E8(v28, v18, type metadata accessor for TranscriptProtoActionRequirementEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v31 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
      v32 = v18;
      goto LABEL_14;
    }

    v33 = v38;
    sub_23C868210(&v28[v29], v38, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v34 = _s26AIMLInstrumentationStreams39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(v18, v33);
    v35 = type metadata accessor for TranscriptProtoSystemRequirementMessage;
    sub_23C85CA50(v33, type metadata accessor for TranscriptProtoSystemRequirementMessage);
    v36 = v18;
LABEL_17:
    sub_23C85CA50(v36, v35);
    sub_23C85CA50(v28, type metadata accessor for TranscriptProtoActionRequirementEnum);
    return v34 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_15:
    sub_23C585C34(v28, &qword_27E2053E8, &qword_23C8A67A0);
    v34 = 0;
    return v34 & 1;
  }

  sub_23C85CA50(v28, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v34 = 1;
  return v34 & 1;
}

uint64_t _s26AIMLInstrumentationStreams35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v3 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v6 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v112 = (&v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoActionFailure(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v110 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TranscriptProtoToolDisambiguation(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v109 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v108 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v107 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v106 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v104 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v103 = (&v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v29 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v105 = (&v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v102 = (&v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v100 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v118 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v119 = (&v98 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v116 = &v98 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v115 = (&v98 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v114 = (&v98 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v113 = (&v98 - v50);
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v98 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v98 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = (&v98 - v58);
  v60 = MEMORY[0x28223BE20](v57);
  v117 = (&v98 - v61);
  v62 = MEMORY[0x28223BE20](v60);
  v64 = (&v98 - v63);
  MEMORY[0x28223BE20](v62);
  v66 = &v98 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053C8, &qword_23C8A6780);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v67 - 8);
  v71 = &v98 - v70;
  v72 = *(v69 + 56);
  sub_23C85C9E8(a1, &v98 - v70, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_23C85C9E8(v120, &v71[v72], type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23C85C9E8(v71, v66, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (!swift_getEnumCaseMultiPayload())
        {
          v94 = v100;
          sub_23C868210(&v71[v72], v100, type metadata accessor for TranscriptProtoActionSuccess);
          found = static TranscriptProtoActionSuccess.== infix(_:_:)(v66, v94);
          v76 = type metadata accessor for TranscriptProtoActionSuccess;
          sub_23C85CA50(v94, type metadata accessor for TranscriptProtoActionSuccess);
          v77 = v66;
          goto LABEL_61;
        }

        v84 = type metadata accessor for TranscriptProtoActionSuccess;
        v85 = v66;
        goto LABEL_58;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_23C85C9E8(v71, v64, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v74 = v102;
          sub_23C868210(&v71[v72], v102, type metadata accessor for TranscriptProtoActionConfirmation);
          found = _s26AIMLInstrumentationStreams33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(v64, v74);
          v76 = type metadata accessor for TranscriptProtoActionConfirmation;
          sub_23C85CA50(v74, type metadata accessor for TranscriptProtoActionConfirmation);
          v77 = v64;
LABEL_61:
          sub_23C85CA50(v77, v76);
          sub_23C85CA50(v71, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return found & 1;
        }

        v84 = type metadata accessor for TranscriptProtoActionConfirmation;
        v85 = v64;
        goto LABEL_58;
      }

      v59 = v117;
      sub_23C85C9E8(v71, v117, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v81 = v105;
        sub_23C868210(&v71[v72], v105, type metadata accessor for TranscriptProtoParameterNeedsValue);
        if (*v59 == *v81 && v59[1] == v81[1] || (sub_23C872014() & 1) != 0)
        {
          v89 = *(v101 + 20);
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v83 = type metadata accessor for TranscriptProtoParameterNeedsValue;
            goto LABEL_36;
          }
        }

        v96 = type metadata accessor for TranscriptProtoParameterNeedsValue;
LABEL_65:
        v97 = v96;
        sub_23C85CA50(v81, v96);
        sub_23C85CA50(v59, v97);
        sub_23C85CA50(v71, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        goto LABEL_59;
      }

      v92 = type metadata accessor for TranscriptProtoParameterNeedsValue;
      goto LABEL_54;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_23C85C9E8(v71, v56, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v80 = v104;
          sub_23C868210(&v71[v72], v104, type metadata accessor for TranscriptProtoParameterDisambiguation);
          found = _s26AIMLInstrumentationStreams38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(v56, v80);
          v76 = type metadata accessor for TranscriptProtoParameterDisambiguation;
          sub_23C85CA50(v80, type metadata accessor for TranscriptProtoParameterDisambiguation);
          v77 = v56;
          goto LABEL_61;
        }

        v84 = type metadata accessor for TranscriptProtoParameterDisambiguation;
        v85 = v56;
      }

      else
      {
        sub_23C85C9E8(v71, v53, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v91 = v106;
          sub_23C868210(&v71[v72], v106, type metadata accessor for TranscriptProtoParameterNotAllowed);
          found = _s26AIMLInstrumentationStreams34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(v53, v91);
          v76 = type metadata accessor for TranscriptProtoParameterNotAllowed;
          sub_23C85CA50(v91, type metadata accessor for TranscriptProtoParameterNotAllowed);
          v77 = v53;
          goto LABEL_61;
        }

        v84 = type metadata accessor for TranscriptProtoParameterNotAllowed;
        v85 = v53;
      }

      goto LABEL_58;
    }

    sub_23C85C9E8(v71, v59, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v78 = v103;
      sub_23C868210(&v71[v72], v103, type metadata accessor for TranscriptProtoParameterConfirmation);
      found = _s26AIMLInstrumentationStreams36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(v59, v78);
      v79 = type metadata accessor for TranscriptProtoParameterConfirmation;
      goto LABEL_39;
    }

    v92 = type metadata accessor for TranscriptProtoParameterConfirmation;
LABEL_54:
    v84 = v92;
    v85 = v59;
LABEL_58:
    sub_23C85CA50(v85, v84);
    sub_23C585C34(v71, &qword_27E2053C8, &qword_23C8A6780);
LABEL_59:
    found = 0;
    return found & 1;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v59 = v113;
      sub_23C85C9E8(v71, v113, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v92 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
        goto LABEL_54;
      }

      v78 = v107;
      sub_23C868210(&v71[v72], v107, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
      found = _s26AIMLInstrumentationStreams42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(v59, v78);
      v79 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        v59 = v115;
        sub_23C85C9E8(v71, v115, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v78 = v109;
          sub_23C868210(&v71[v72], v109, type metadata accessor for TranscriptProtoToolDisambiguation);
          found = sub_23C809D04(v59, v78);
          v79 = type metadata accessor for TranscriptProtoToolDisambiguation;
          goto LABEL_39;
        }

        v92 = type metadata accessor for TranscriptProtoToolDisambiguation;
        goto LABEL_54;
      }

      v59 = v114;
      sub_23C85C9E8(v71, v114, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v92 = type metadata accessor for TranscriptProtoActionRequirement;
        goto LABEL_54;
      }

      v78 = v108;
      sub_23C868210(&v71[v72], v108, type metadata accessor for TranscriptProtoActionRequirement);
      found = _s26AIMLInstrumentationStreams32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(v59, v78);
      v79 = type metadata accessor for TranscriptProtoActionRequirement;
    }

LABEL_39:
    v76 = v79;
    sub_23C85CA50(v78, v79);
    v77 = v59;
    goto LABEL_61;
  }

  if (EnumCaseMultiPayload == 9)
  {
    v86 = v116;
    sub_23C85C9E8(v71, v116, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v87 = v110;
      sub_23C868210(&v71[v72], v110, type metadata accessor for TranscriptProtoActionFailure);
      found = static TranscriptProtoActionFailure.== infix(_:_:)(v86, v87);
      v88 = type metadata accessor for TranscriptProtoActionFailure;
LABEL_44:
      v76 = v88;
      sub_23C85CA50(v87, v88);
      v77 = v86;
      goto LABEL_61;
    }

    v93 = type metadata accessor for TranscriptProtoActionFailure;
LABEL_57:
    v84 = v93;
    v85 = v86;
    goto LABEL_58;
  }

  if (EnumCaseMultiPayload != 10)
  {
    v86 = v118;
    sub_23C85C9E8(v71, v118, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v87 = v111;
      sub_23C868210(&v71[v72], v111, type metadata accessor for TranscriptProtoSnippetStream);
      found = static TranscriptProtoSnippetStream.== infix(_:_:)(v86, v87);
      v88 = type metadata accessor for TranscriptProtoSnippetStream;
      goto LABEL_44;
    }

    v93 = type metadata accessor for TranscriptProtoSnippetStream;
    goto LABEL_57;
  }

  v59 = v119;
  sub_23C85C9E8(v71, v119, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  if (swift_getEnumCaseMultiPayload() != 10)
  {
    v92 = type metadata accessor for TranscriptProtoValueDisambiguation;
    goto LABEL_54;
  }

  v81 = v112;
  sub_23C868210(&v71[v72], v112, type metadata accessor for TranscriptProtoValueDisambiguation);
  if ((sub_23C5D15A4(*v59, *v81) & 1) == 0 || (v82 = *(v99 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
  {
    v96 = type metadata accessor for TranscriptProtoValueDisambiguation;
    goto LABEL_65;
  }

  v83 = type metadata accessor for TranscriptProtoValueDisambiguation;
LABEL_36:
  v90 = v83;
  sub_23C85CA50(v81, v83);
  sub_23C85CA50(v59, v90);
  sub_23C85CA50(v71, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  found = 1;
  return found & 1;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053F8, &qword_23C8A67B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_23C85C9E8(a1, &v23 - v16, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_23C85C9E8(a2, &v17[v18], type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
LABEL_3:
      sub_23C85CA50(v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
      return 1;
    }

    goto LABEL_6;
  }

  sub_23C85C9E8(v17, v12, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C85CA50(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_6:
    sub_23C585C34(v17, &qword_27E2053F8, &qword_23C8A67B0);
    return 0;
  }

  sub_23C868210(&v17[v18], v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v21 = *v12 == *v8 && v12[1] == v8[1];
  if (v21 || (sub_23C872014()) && v12[2] == v8[2])
  {
    v22 = *(v4 + 24);
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      sub_23C85CA50(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C85CA50(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      goto LABEL_3;
    }
  }

  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v17, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v46 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v52 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload(0);
  v5 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v9 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v46 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = (&v46 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053B8, &qword_23C8A6770);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v46 - v28;
  v30 = *(v27 + 56);
  sub_23C85C9E8(a1, &v46 - v28, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_23C85C9E8(v53, &v29[v30], type metadata accessor for TranscriptProtoVisualOutputType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v29, v19, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v32 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        v33 = v19;
        goto LABEL_26;
      }

      v34 = v51;
      sub_23C868210(&v29[v30], v51, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      if ((sub_23C6F73FC(*v19, *(v19 + 1), *v34, *(v34 + 8)) & 1) == 0 || (v35 = *(v47 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v42 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
        sub_23C85CA50(v34, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
        v43 = v19;
        goto LABEL_37;
      }

      v36 = type metadata accessor for TranscriptProtoSystemSnippetOutputPayload;
      sub_23C85CA50(v34, type metadata accessor for TranscriptProtoSystemSnippetOutputPayload);
      v37 = v19;
    }

    else
    {
      sub_23C85C9E8(v29, v16, type metadata accessor for TranscriptProtoVisualOutputType);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v32 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        v33 = v16;
        goto LABEL_26;
      }

      v40 = v52;
      sub_23C868210(&v29[v30], v52, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      if ((sub_23C6F73FC(*v16, v16[1], *v40, v40[1]) & 1) == 0 || (v16[2] != v40[2] || v16[3] != v40[3]) && (sub_23C872014() & 1) == 0 || (v41 = *(v46 + 24), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
      {
        v42 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
        sub_23C85CA50(v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
        v43 = v16;
        goto LABEL_37;
      }

      v36 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload;
      sub_23C85CA50(v40, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
      v37 = v16;
    }

LABEL_33:
    sub_23C85CA50(v37, v36);
    sub_23C85CA50(v29, type metadata accessor for TranscriptProtoVisualOutputType);
    return 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v29, v22, type metadata accessor for TranscriptProtoVisualOutputType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v32 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      v33 = v22;
      goto LABEL_26;
    }

    v38 = v50;
    sub_23C868210(&v29[v30], v50, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    if ((*v22 != *v38 || v22[1] != v38[1]) && (sub_23C872014() & 1) == 0 || (v39 = *(v49 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
    {
      v42 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
      sub_23C85CA50(v38, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
      v43 = v22;
      goto LABEL_37;
    }

    v36 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload;
    sub_23C85CA50(v38, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
    v37 = v22;
    goto LABEL_33;
  }

  sub_23C85C9E8(v29, v24, type metadata accessor for TranscriptProtoVisualOutputType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C868210(&v29[v30], v11, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    if (*v24 == *v11 && v24[1] == v11[1] || (sub_23C872014() & 1) != 0)
    {
      v44 = *(v48 + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v36 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
        sub_23C85CA50(v11, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
        v37 = v24;
        goto LABEL_33;
      }
    }

    v42 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
    sub_23C85CA50(v11, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
    v43 = v24;
LABEL_37:
    sub_23C85CA50(v43, v42);
    sub_23C85CA50(v29, type metadata accessor for TranscriptProtoVisualOutputType);
    return 0;
  }

  v32 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload;
  v33 = v24;
LABEL_26:
  sub_23C85CA50(v33, v32);
  sub_23C585C34(v29, &qword_27E2053B8, &qword_23C8A6770);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for TranscriptProtoExecutorError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoPlannerError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v13 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v45 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205408, &qword_23C8A67C0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v45 - v31;
  v33 = *(v30 + 56);
  sub_23C85C9E8(v49, &v45 - v31, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_23C85C9E8(v50, &v32[v33], type metadata accessor for TranscriptProtoSessionErrorEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v32, v27, type metadata accessor for TranscriptProtoSessionErrorEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        v43 = v47;
        sub_23C868210(&v32[v33], v47, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        if (*v27 == *v43 && v27[1] == v43[1] || (sub_23C872014()) && v27[2] == v43[2])
        {
          v44 = *(v46 + 24);
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            sub_23C85CA50(v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_23C85CA50(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            sub_23C85CA50(v32, type metadata accessor for TranscriptProtoSessionErrorEnum);
            v37 = 1;
            return v37 & 1;
          }
        }

        sub_23C85CA50(v43, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C85CA50(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_23C85CA50(v32, type metadata accessor for TranscriptProtoSessionErrorEnum);
        goto LABEL_18;
      }

      v35 = type metadata accessor for TranscriptProtoIntelligenceFlowError;
      v36 = v27;
LABEL_17:
      sub_23C85CA50(v36, v35);
      sub_23C585C34(v32, &qword_27E205408, &qword_23C8A67C0);
LABEL_18:
      v37 = 0;
      return v37 & 1;
    }

    sub_23C85C9E8(v32, v25, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
      v36 = v25;
      goto LABEL_17;
    }

    sub_23C868210(&v32[v33], v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v37 = _s26AIMLInstrumentationStreams38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(v25, v12);
    v40 = type metadata accessor for TranscriptProtoSessionCoordinatorError;
    sub_23C85CA50(v12, type metadata accessor for TranscriptProtoSessionCoordinatorError);
    v38 = v25;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_23C85C9E8(v32, v19, type metadata accessor for TranscriptProtoSessionErrorEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v35 = type metadata accessor for TranscriptProtoExecutorError;
      v36 = v19;
      goto LABEL_17;
    }

    v41 = v48;
    sub_23C868210(&v32[v33], v48, type metadata accessor for TranscriptProtoExecutorError);
    v37 = _s26AIMLInstrumentationStreams28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(v19, v41);
    v40 = type metadata accessor for TranscriptProtoExecutorError;
    sub_23C85CA50(v41, type metadata accessor for TranscriptProtoExecutorError);
    v38 = v19;
LABEL_12:
    v39 = v40;
    goto LABEL_13;
  }

  sub_23C85C9E8(v32, v22, type metadata accessor for TranscriptProtoSessionErrorEnum);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v35 = type metadata accessor for TranscriptProtoPlannerError;
    v36 = v22;
    goto LABEL_17;
  }

  sub_23C868210(&v32[v33], v8, type metadata accessor for TranscriptProtoPlannerError);
  v37 = static TranscriptProtoPlannerError.== infix(_:_:)(v22, v8);
  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoPlannerError);
  v38 = v22;
  v39 = type metadata accessor for TranscriptProtoPlannerError;
LABEL_13:
  sub_23C85CA50(v38, v39);
  sub_23C85CA50(v32, type metadata accessor for TranscriptProtoSessionErrorEnum);
  return v37 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v16 = *(*(PayloadEnum - 8) + 64);
  v17 = MEMORY[0x28223BE20](PayloadEnum);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v47 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v47 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v47 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053C0, &qword_23C8A6778);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v47 - v31;
  v33 = *(v30 + 56);
  sub_23C85C9E8(v51, &v47 - v31, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_23C85C9E8(v52, &v32[v33], type metadata accessor for TranscriptProtoQueryPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_23C85C9E8(v32, v27, type metadata accessor for TranscriptProtoQueryPayloadEnum);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_23C868210(&v32[v33], v14, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        if (sub_23C7FD6C0(*v27, *v14))
        {
          v45 = *(v48 + 20);
          sub_23C870F34();
          sub_23C73EA18();
          v46 = sub_23C871754();
          sub_23C85CA50(v14, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
          if (v46)
          {
            sub_23C85CA50(v27, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
            sub_23C85CA50(v32, type metadata accessor for TranscriptProtoQueryPayloadEnum);
            v39 = 1;
            return v39 & 1;
          }
        }

        else
        {
          sub_23C85CA50(v14, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        }

        sub_23C85CA50(v27, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
        sub_23C85CA50(v32, type metadata accessor for TranscriptProtoQueryPayloadEnum);
        goto LABEL_18;
      }

      v35 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery;
      v36 = v27;
LABEL_17:
      sub_23C85CA50(v36, v35);
      sub_23C585C34(v32, &qword_27E2053C0, &qword_23C8A6778);
LABEL_18:
      v39 = 0;
      return v39 & 1;
    }

    sub_23C85C9E8(v32, v25, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = type metadata accessor for TranscriptProtoPersonQuery;
      v36 = v25;
      goto LABEL_17;
    }

    sub_23C868210(&v32[v33], v11, type metadata accessor for TranscriptProtoPersonQuery);
    v39 = static TranscriptProtoPersonQuery.== infix(_:_:)(v25, v11);
    v40 = type metadata accessor for TranscriptProtoPersonQuery;
    sub_23C85CA50(v11, type metadata accessor for TranscriptProtoPersonQuery);
    v41 = v25;
LABEL_10:
    v42 = v40;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23C85C9E8(v32, v22, type metadata accessor for TranscriptProtoQueryPayloadEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v35 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
      v36 = v22;
      goto LABEL_17;
    }

    v37 = &v32[v33];
    v38 = v49;
    sub_23C868210(v37, v49, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v39 = static TranscriptProtoQueryPayload.StringQuery.== infix(_:_:)(v22, v38);
    v40 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery;
    sub_23C85CA50(v38, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
    v41 = v22;
    goto LABEL_10;
  }

  sub_23C85C9E8(v32, v19, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v35 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
    v36 = v19;
    goto LABEL_17;
  }

  v43 = v50;
  sub_23C868210(&v32[v33], v50, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v39 = static TranscriptProtoQueryPayload.IdentifierQuery.== infix(_:_:)(v19, v43);
  sub_23C85CA50(v43, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v41 = v19;
  v42 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery;
LABEL_13:
  sub_23C85CA50(v41, v42);
  sub_23C85CA50(v32, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  return v39 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053F0, &qword_23C8A67A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_23C85C9E8(a1, &v23 - v16, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_23C85C9E8(a2, &v17[v18], type metadata accessor for TranscriptProtoPlannerErrorEnum);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
LABEL_3:
      sub_23C85CA50(v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
      return 1;
    }

    goto LABEL_6;
  }

  sub_23C85C9E8(v17, v12, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_23C85CA50(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_6:
    sub_23C585C34(v17, &qword_27E2053F0, &qword_23C8A67A8);
    return 0;
  }

  sub_23C868210(&v17[v18], v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  v21 = *v12 == *v8 && v12[1] == v8[1];
  if (v21 || (sub_23C872014()) && v12[2] == v8[2])
  {
    v22 = *(v4 + 24);
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      sub_23C85CA50(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_23C85CA50(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      goto LABEL_3;
    }
  }

  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_23C85CA50(v17, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  return 0;
}

uint64_t _s26AIMLInstrumentationStreams32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v2 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TranscriptProtoShimParameter.StringQuery(0);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v49 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ToolKitProtoTypedValue(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v46 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v46 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205410, &qword_23C8A67C8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v46 - v31;
  v33 = *(v30 + 56);
  sub_23C85C9E8(v50, &v46 - v31, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_23C85C9E8(v51, &v32[v33], type metadata accessor for TranscriptProtoShimParameterEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v32, v22, type metadata accessor for TranscriptProtoShimParameterEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v35 = type metadata accessor for TranscriptProtoPersonQuery;
        v36 = v22;
        goto LABEL_19;
      }

      sub_23C868210(&v32[v33], v8, type metadata accessor for TranscriptProtoPersonQuery);
      v37 = static TranscriptProtoPersonQuery.== infix(_:_:)(v22, v8);
      sub_23C85CA50(v8, type metadata accessor for TranscriptProtoPersonQuery);
      v38 = v22;
      v39 = type metadata accessor for TranscriptProtoPersonQuery;
LABEL_23:
      sub_23C85CA50(v38, v39);
      sub_23C85CA50(v32, type metadata accessor for TranscriptProtoShimParameterEnum);
      return v37 & 1;
    }

    sub_23C85C9E8(v32, v19, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v35 = type metadata accessor for TranscriptProtoPhotosCandidates;
      v36 = v19;
      goto LABEL_19;
    }

    v43 = v48;
    sub_23C868210(&v32[v33], v48, type metadata accessor for TranscriptProtoPhotosCandidates);
    v37 = sub_23C80BFC0(v19, v43);
    v44 = type metadata accessor for TranscriptProtoPhotosCandidates;
    sub_23C85CA50(v43, type metadata accessor for TranscriptProtoPhotosCandidates);
    v38 = v19;
LABEL_22:
    v39 = v44;
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v32, v27, type metadata accessor for TranscriptProtoShimParameterEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      v35 = type metadata accessor for ToolKitProtoTypedValue;
      v36 = v27;
LABEL_19:
      sub_23C85CA50(v36, v35);
      sub_23C585C34(v32, &qword_27E205410, &qword_23C8A67C8);
LABEL_20:
      v37 = 0;
      return v37 & 1;
    }

    sub_23C868210(&v32[v33], v14, type metadata accessor for ToolKitProtoTypedValue);
    v37 = static ToolKitProtoTypedValue.== infix(_:_:)(v27, v14);
    v44 = type metadata accessor for ToolKitProtoTypedValue;
    sub_23C85CA50(v14, type metadata accessor for ToolKitProtoTypedValue);
    v38 = v27;
    goto LABEL_22;
  }

  sub_23C85C9E8(v32, v25, type metadata accessor for TranscriptProtoShimParameterEnum);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v35 = type metadata accessor for TranscriptProtoShimParameter.StringQuery;
    v36 = v25;
    goto LABEL_19;
  }

  v40 = v49;
  sub_23C868210(&v32[v33], v49, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((*v25 != *v40 || v25[1] != v40[1]) && (sub_23C872014() & 1) == 0)
  {
    sub_23C85CA50(v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    goto LABEL_26;
  }

  v41 = *(v47 + 20);
  sub_23C870F34();
  sub_23C73EA18();
  v42 = sub_23C871754();
  sub_23C85CA50(v40, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  if ((v42 & 1) == 0)
  {
LABEL_26:
    sub_23C85CA50(v25, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
    sub_23C85CA50(v32, type metadata accessor for TranscriptProtoShimParameterEnum);
    goto LABEL_20;
  }

  sub_23C85CA50(v25, type metadata accessor for TranscriptProtoShimParameter.StringQuery);
  sub_23C85CA50(v32, type metadata accessor for TranscriptProtoShimParameterEnum);
  v37 = 1;
  return v37 & 1;
}

uint64_t _s26AIMLInstrumentationStreams31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v67 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  v7 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v63 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v63 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v70 = (&v63 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v69 = (&v63 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v63 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v63 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v63 - v30);
  MEMORY[0x28223BE20](v29);
  v33 = &v63 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205388, &qword_23C8A6738);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v63 - v37;
  v39 = (&v63 + *(v36 + 56) - v37);
  sub_23C85C9E8(v71, &v63 - v37, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_23C85C9E8(v72, v39, type metadata accessor for TranscriptProtoAstflatValueEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v43 = v70;
        sub_23C85C9E8(v38, v70, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v48 = v39;
          v49 = v67;
          sub_23C868210(v48, v67, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
          if (sub_23C7FBAD0(*v43, *v49))
          {
            v50 = *(v64 + 20);
            sub_23C870F34();
            sub_23C73EA18();
            if (sub_23C871754())
            {
              v51 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_30:
              v56 = v51;
              sub_23C85CA50(v49, v51);
              sub_23C85CA50(v43, v56);
              goto LABEL_42;
            }
          }

          v61 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_52:
          v62 = v61;
          sub_23C85CA50(v49, v61);
          sub_23C85CA50(v43, v62);
          goto LABEL_53;
        }

        v59 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant;
LABEL_46:
        sub_23C85CA50(v43, v59);
        goto LABEL_47;
      }

      sub_23C85C9E8(v38, v18, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v42 = *v18;
      v41 = v18[1];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload != 8)
        {
          if (swift_getEnumCaseMultiPayload() != 9)
          {
            goto LABEL_47;
          }

          goto LABEL_42;
        }

        v43 = v68;
        sub_23C85C9E8(v38, v68, type metadata accessor for TranscriptProtoAstflatValueEnum);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          v59 = type metadata accessor for TranscriptProtoStatementID;
          goto LABEL_46;
        }

        v44 = v39;
        v45 = v66;
        sub_23C868210(v44, v66, type metadata accessor for TranscriptProtoStatementID);
        v46 = static TranscriptProtoStatementID.== infix(_:_:)(v43, v45);
        sub_23C85CA50(v45, type metadata accessor for TranscriptProtoStatementID);
        sub_23C85CA50(v43, type metadata accessor for TranscriptProtoStatementID);
        goto LABEL_38;
      }

      sub_23C85C9E8(v38, v15, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v42 = *v15;
      v41 = v15[1];
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_6;
      }
    }

LABEL_23:
    if (v42 == *v39 && v41 == *(v39 + 1))
    {
      v53 = *(v39 + 1);

LABEL_42:
      sub_23C85CA50(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v46 = 1;
      return v46 & 1;
    }

    v57 = *(v39 + 1);
    v58 = sub_23C872014();

    if (v58)
    {
      goto LABEL_42;
    }

LABEL_53:
    sub_23C85CA50(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
    goto LABEL_48;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_23C85C9E8(v38, v25, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v42 = *v25;
        v41 = v25[1];
        if (swift_getEnumCaseMultiPayload() != 3)
        {
LABEL_6:

LABEL_47:
          sub_23C585C34(v38, &qword_27E205388, &qword_23C8A6738);
LABEL_48:
          v46 = 0;
          return v46 & 1;
        }

        goto LABEL_23;
      }

      v43 = v69;
      sub_23C85C9E8(v38, v69, type metadata accessor for TranscriptProtoAstflatValueEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v54 = v39;
        v49 = v65;
        sub_23C868210(v54, v65, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
        if (sub_23C5D4D58(*v43, *v49))
        {
          v55 = *(v63 + 20);
          sub_23C870F34();
          sub_23C73EA18();
          if (sub_23C871754())
          {
            v51 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
            goto LABEL_30;
          }
        }

        v61 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
        goto LABEL_52;
      }

      v59 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant;
      goto LABEL_46;
    }

    sub_23C85C9E8(v38, v28, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_47;
    }

    v52 = *v28 == *v39;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v38, v31, type metadata accessor for TranscriptProtoAstflatValueEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_47;
    }

    v52 = *v31 == *v39;
LABEL_35:
    v46 = v52;
LABEL_38:
    sub_23C85CA50(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
    return v46 & 1;
  }

  sub_23C85C9E8(v38, v33, type metadata accessor for TranscriptProtoAstflatValueEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_47;
  }

  v47 = *v33 ^ *v39;
  sub_23C85CA50(v38, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v46 = v47 ^ 1;
  return v46 & 1;
}

uint64_t _s26AIMLInstrumentationStreams30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v188 = a1;
  v189 = a2;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v3 = *(*(MentionedApps - 8) + 64);
  MEMORY[0x28223BE20](MentionedApps - 8);
  v175 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v174 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v172 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  v10 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v173 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  v12 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v171 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  v14 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v169 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  v16 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v170 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  v18 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v168 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  v20 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v167 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  v22 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v166 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v163 = (&v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  v27 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v164 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  v29 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v165 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v162 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v161 = (&v147 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v160 = &v147 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v159 = &v147 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v154 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v183 = &v147 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v186 = &v147 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v179 = &v147 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v187 = &v147 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v185 = &v147 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v180 = &v147 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v184 = &v147 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v181 = &v147 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v182 = &v147 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v178 = &v147 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v70 = (&v147 - v69);
  v71 = MEMORY[0x28223BE20](v68);
  v176 = &v147 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v177 = &v147 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v77 = &v147 - v76;
  v78 = MEMORY[0x28223BE20](v75);
  v80 = (&v147 - v79);
  v81 = MEMORY[0x28223BE20](v78);
  v83 = &v147 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v86 = &v147 - v85;
  MEMORY[0x28223BE20](v84);
  v88 = &v147 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205390, &qword_23C8A6740);
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x28223BE20](v89 - 8);
  v93 = &v147 - v92;
  v94 = *(v91 + 56);
  sub_23C85C9E8(v188, &v147 - v92, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v188 = v94;
  sub_23C85C9E8(v189, &v93[v94], type metadata accessor for TranscriptProtoAstflatExprEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C85C9E8(v93, v86, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v127 = v188;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v128 = v159;
        sub_23C868210(&v93[v127], v159, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v109 = _s26AIMLInstrumentationStreams39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(v86, v128);
        v111 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
        sub_23C85CA50(v128, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
        v119 = v86;
        goto LABEL_49;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant;
      v97 = v86;
      goto LABEL_102;
    case 2u:
      sub_23C85C9E8(v93, v83, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v117 = v188;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v118 = v160;
        sub_23C868210(&v93[v117], v160, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v109 = _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(v83, v118);
        v111 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
        sub_23C85CA50(v118, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
        v119 = v83;
        goto LABEL_49;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant;
      v97 = v83;
      goto LABEL_102;
    case 3u:
      sub_23C85C9E8(v93, v80, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v122 = v188;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v123 = v161;
        sub_23C868210(&v93[v122], v161, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v109 = _s26AIMLInstrumentationStreams36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(v80, v123);
        sub_23C85CA50(v123, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
        v119 = v80;
        v124 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
        goto LABEL_50;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant;
      v97 = v80;
      goto LABEL_102;
    case 4u:
      sub_23C85C9E8(v93, v77, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v107 = v188;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v108 = v162;
        sub_23C868210(&v93[v107], v162, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
        v109 = _s26AIMLInstrumentationStreams38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(v77, v108);
        v110 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v111 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
        v112 = v108;
        goto LABEL_48;
      }

      v140 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant;
      goto LABEL_101;
    case 5u:
      v77 = v177;
      sub_23C85C9E8(v93, v177, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v130 = v188;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
        goto LABEL_101;
      }

      v99 = v165;
      sub_23C868210(&v93[v130], v165, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_23C872014()) && (sub_23C7FBAD0(*(v77 + 2), *(v99 + 16)))
      {
        v131 = *(v149 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant;
      goto LABEL_120;
    case 6u:
      v77 = v176;
      sub_23C85C9E8(v93, v176, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v134 = v188;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
        goto LABEL_101;
      }

      v99 = v164;
      sub_23C868210(&v93[v134], v164, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      if (sub_23C5D25E0(*v77, *v99))
      {
        v135 = *(v151 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant;
      goto LABEL_120;
    case 7u:
      sub_23C85C9E8(v93, v70, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v125 = v188;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v126 = v163;
        sub_23C868210(&v93[v125], v163, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v109 = _s26AIMLInstrumentationStreams37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(v70, v126);
        v111 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
        sub_23C85CA50(v126, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
        v119 = v70;
        goto LABEL_49;
      }

      v96 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant;
      v97 = v70;
      goto LABEL_102;
    case 8u:
      v77 = v178;
      sub_23C85C9E8(v93, v178, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v138 = v188;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
        goto LABEL_101;
      }

      v99 = v166;
      sub_23C868210(&v93[v138], v166, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_23C872014() & 1) != 0)
      {
        v139 = *(v155 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant;
      goto LABEL_120;
    case 9u:
      v77 = v182;
      sub_23C85C9E8(v93, v182, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v115 = v188;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
        goto LABEL_101;
      }

      v99 = v167;
      sub_23C868210(&v93[v115], v167, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_23C872014()) && v77[16] == *(v99 + 16) && v77[17] == *(v99 + 17))
      {
        v116 = *(v148 + 28);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant;
      goto LABEL_120;
    case 0xAu:
      v77 = v181;
      sub_23C85C9E8(v93, v181, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v136 = v188;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
        goto LABEL_101;
      }

      v99 = v168;
      sub_23C868210(&v93[v136], v168, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_23C872014() & 1) != 0)
      {
        v137 = *(v156 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant;
      goto LABEL_120;
    case 0xBu:
      v77 = v184;
      sub_23C85C9E8(v93, v184, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v104 = v188;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_101;
      }

      v99 = v170;
      sub_23C868210(&v93[v104], v170, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      v105 = *(v77 + 1);
      v106 = *(v99 + 8);
      if (v105)
      {
        if (!v106 || (*v77 != *v99 || v105 != v106) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_119;
        }
      }

      else if (v106)
      {
        goto LABEL_119;
      }

      v143 = *(v150 + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v101 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
        goto LABEL_117;
      }

LABEL_119:
      v141 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant;
      goto LABEL_120;
    case 0xCu:
      v77 = v180;
      sub_23C85C9E8(v93, v180, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v113 = v188;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
        goto LABEL_101;
      }

      v99 = v169;
      sub_23C868210(&v93[v113], v169, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      if (sub_23C5D25E0(*v77, *v99))
      {
        v114 = *(v152 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant;
      goto LABEL_120;
    case 0xDu:
      v77 = v185;
      sub_23C85C9E8(v93, v185, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v132 = v188;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
        goto LABEL_101;
      }

      v99 = v171;
      sub_23C868210(&v93[v132], v171, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_23C872014() & 1) != 0)
      {
        v133 = *(v157 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant;
      goto LABEL_120;
    case 0xEu:
      v77 = v187;
      sub_23C85C9E8(v93, v187, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v102 = v188;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
        goto LABEL_101;
      }

      v99 = v173;
      sub_23C868210(&v93[v102], v173, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      if (*v77 == *v99 && *(v77 + 1) == *(v99 + 8) || (sub_23C872014() & 1) != 0)
      {
        v103 = *(v158 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
          goto LABEL_117;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant;
      goto LABEL_120;
    case 0xFu:
      v77 = v179;
      sub_23C85C9E8(v93, v179, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v120 = v188;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v121 = v172;
        sub_23C868210(&v93[v120], v172, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
        sub_23C870F34();
        sub_23C73EA18();
        v109 = sub_23C871754();
        v110 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
        goto LABEL_47;
      }

      v140 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant;
      goto LABEL_101;
    case 0x10u:
      v77 = v186;
      sub_23C85C9E8(v93, v186, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v98 = v188;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        v140 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
        goto LABEL_101;
      }

      v99 = v174;
      sub_23C868210(&v93[v98], v174, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      if (sub_23C5D18B4(*v77, *v99))
      {
        v100 = *(updated + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v101 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_117:
          v144 = v101;
          sub_23C85CA50(v99, v101);
          sub_23C85CA50(v77, v144);
LABEL_118:
          sub_23C85CA50(v93, type metadata accessor for TranscriptProtoAstflatExprEnum);
          v109 = 1;
          return v109 & 1;
        }
      }

      v141 = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant;
LABEL_120:
      v145 = v141;
      sub_23C85CA50(v99, v141);
      sub_23C85CA50(v77, v145);
      sub_23C85CA50(v93, type metadata accessor for TranscriptProtoAstflatExprEnum);
      goto LABEL_121;
    case 0x11u:
      v77 = v183;
      sub_23C85C9E8(v93, v183, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v129 = v188;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v121 = v175;
        sub_23C868210(&v93[v129], v175, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
        sub_23C870F34();
        sub_23C73EA18();
        v109 = sub_23C871754();
        v110 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_47:
        v111 = v110;
        v112 = v121;
LABEL_48:
        sub_23C85CA50(v112, v110);
        v119 = v77;
        goto LABEL_49;
      }

      v140 = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps;
LABEL_101:
      v96 = v140;
      v97 = v77;
      goto LABEL_102;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_118;
      }

      goto LABEL_103;
    default:
      sub_23C85C9E8(v93, v88, type metadata accessor for TranscriptProtoAstflatExprEnum);
      v95 = v188;
      if (swift_getEnumCaseMultiPayload())
      {
        v96 = type metadata accessor for TranscriptProtoASTFlatValue;
        v97 = v88;
LABEL_102:
        sub_23C85CA50(v97, v96);
LABEL_103:
        sub_23C585C34(v93, &qword_27E205390, &qword_23C8A6740);
LABEL_121:
        v109 = 0;
      }

      else
      {
        v142 = v154;
        sub_23C868210(&v93[v95], v154, type metadata accessor for TranscriptProtoASTFlatValue);
        v109 = _s26AIMLInstrumentationStreams27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v88, v142);
        v111 = type metadata accessor for TranscriptProtoASTFlatValue;
        sub_23C85CA50(v142, type metadata accessor for TranscriptProtoASTFlatValue);
        v119 = v88;
LABEL_49:
        v124 = v111;
LABEL_50:
        sub_23C85CA50(v119, v124);
        sub_23C85CA50(v93, type metadata accessor for TranscriptProtoAstflatExprEnum);
      }

      return v109 & 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v70 = type metadata accessor for TranscriptProtoCATDialog(0);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v75 = (&v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TranscriptProtoSuppressed(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoUnableToGenerate(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for TranscriptProtoGeneratedText(0);
  v10 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v74 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for TranscriptProtoSonicText(0);
  v12 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v72 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for TranscriptProtoStaticText(0);
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v66 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v66 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v66 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v66 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = (&v66 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053B0, &qword_23C8A6768);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v66 - v38;
  v40 = *(v37 + 56);
  sub_23C85C9E8(v76, &v66 - v38, type metadata accessor for TranscriptProtoDialogFormat);
  sub_23C85C9E8(v77, &v39[v40], type metadata accessor for TranscriptProtoDialogFormat);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_23C85C9E8(v39, v32, type metadata accessor for TranscriptProtoDialogFormat);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = v72;
          sub_23C868210(&v39[v40], v72, type metadata accessor for TranscriptProtoSonicText);
          if (*v32 == *v42 && v32[1] == v42[1] || (sub_23C872014() & 1) != 0)
          {
            v43 = *(v68 + 20);
            sub_23C870F34();
            sub_23C73EA18();
            v44 = sub_23C871754();
            sub_23C85CA50(v42, type metadata accessor for TranscriptProtoSonicText);
            if (v44)
            {
              v45 = type metadata accessor for TranscriptProtoSonicText;
              v46 = v32;
LABEL_43:
              sub_23C85CA50(v46, v45);
              sub_23C85CA50(v39, type metadata accessor for TranscriptProtoDialogFormat);
              v48 = 1;
              return v48 & 1;
            }
          }

          else
          {
            sub_23C85CA50(v42, type metadata accessor for TranscriptProtoSonicText);
          }

          v64 = type metadata accessor for TranscriptProtoSonicText;
          v63 = v32;
          goto LABEL_51;
        }

        v51 = type metadata accessor for TranscriptProtoSonicText;
        v52 = v32;
LABEL_36:
        sub_23C85CA50(v52, v51);
        sub_23C585C34(v39, &qword_27E2053B0, &qword_23C8A6768);
LABEL_52:
        v48 = 0;
        return v48 & 1;
      }

      sub_23C85C9E8(v39, v29, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v51 = type metadata accessor for TranscriptProtoGeneratedText;
        v52 = v29;
        goto LABEL_36;
      }

      v54 = v74;
      sub_23C868210(&v39[v40], v74, type metadata accessor for TranscriptProtoGeneratedText);
      if (*v29 == *v54 && v29[1] == v54[1] || (sub_23C872014() & 1) != 0)
      {
        v55 = *(v69 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v56 = type metadata accessor for TranscriptProtoGeneratedText;
          sub_23C85CA50(v54, type metadata accessor for TranscriptProtoGeneratedText);
          v46 = v29;
LABEL_42:
          v45 = v56;
          goto LABEL_43;
        }
      }

      v62 = type metadata accessor for TranscriptProtoGeneratedText;
      sub_23C85CA50(v54, type metadata accessor for TranscriptProtoGeneratedText);
      v63 = v29;
    }

    else
    {
      sub_23C85C9E8(v39, v34, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload())
      {
        v51 = type metadata accessor for TranscriptProtoStaticText;
        v52 = v34;
        goto LABEL_36;
      }

      v60 = v67;
      sub_23C868210(&v39[v40], v67, type metadata accessor for TranscriptProtoStaticText);
      if (*v34 == *v60 && v34[1] == v60[1] || (sub_23C872014() & 1) != 0)
      {
        v61 = *(v66 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v56 = type metadata accessor for TranscriptProtoStaticText;
          sub_23C85CA50(v60, type metadata accessor for TranscriptProtoStaticText);
          v46 = v34;
          goto LABEL_42;
        }
      }

      v62 = type metadata accessor for TranscriptProtoStaticText;
      sub_23C85CA50(v60, type metadata accessor for TranscriptProtoStaticText);
      v63 = v34;
    }

    v64 = v62;
LABEL_51:
    sub_23C85CA50(v63, v64);
    sub_23C85CA50(v39, type metadata accessor for TranscriptProtoDialogFormat);
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_23C85C9E8(v39, v26, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v51 = type metadata accessor for TranscriptProtoUnableToGenerate;
      v52 = v26;
      goto LABEL_36;
    }

    v53 = v71;
    sub_23C868210(&v39[v40], v71, type metadata accessor for TranscriptProtoUnableToGenerate);
    sub_23C870F34();
    sub_23C73EA18();
    v48 = sub_23C871754();
    v49 = type metadata accessor for TranscriptProtoUnableToGenerate;
    sub_23C85CA50(v53, type metadata accessor for TranscriptProtoUnableToGenerate);
    v50 = v26;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_23C85C9E8(v39, v20, type metadata accessor for TranscriptProtoDialogFormat);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v57 = v75;
        sub_23C868210(&v39[v40], v75, type metadata accessor for TranscriptProtoCATDialog);
        if (*v20 == *v57 && v20[1] == v57[1] || (sub_23C872014() & 1) != 0)
        {
          v58 = *(v70 + 20);
          sub_23C870F34();
          sub_23C73EA18();
          v59 = sub_23C871754();
          sub_23C85CA50(v57, type metadata accessor for TranscriptProtoCATDialog);
          if (v59)
          {
            v45 = type metadata accessor for TranscriptProtoCATDialog;
            v46 = v20;
            goto LABEL_43;
          }
        }

        else
        {
          sub_23C85CA50(v57, type metadata accessor for TranscriptProtoCATDialog);
        }

        v64 = type metadata accessor for TranscriptProtoCATDialog;
        v63 = v20;
        goto LABEL_51;
      }

      v51 = type metadata accessor for TranscriptProtoCATDialog;
      v52 = v20;
      goto LABEL_36;
    }

    sub_23C85C9E8(v39, v23, type metadata accessor for TranscriptProtoDialogFormat);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v51 = type metadata accessor for TranscriptProtoSuppressed;
      v52 = v23;
      goto LABEL_36;
    }

    v47 = v73;
    sub_23C868210(&v39[v40], v73, type metadata accessor for TranscriptProtoSuppressed);
    sub_23C870F34();
    sub_23C73EA18();
    v48 = sub_23C871754();
    v49 = type metadata accessor for TranscriptProtoSuppressed;
    sub_23C85CA50(v47, type metadata accessor for TranscriptProtoSuppressed);
    v50 = v23;
  }

  sub_23C85CA50(v50, v49);
  sub_23C85CA50(v39, type metadata accessor for TranscriptProtoDialogFormat);
  return v48 & 1;
}

uint64_t _s26AIMLInstrumentationStreams51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolKitProtoTypedValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v52 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v49 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v49 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205398, &qword_23C8A6748);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v49 - v32;
  v34 = *(v31 + 56);
  sub_23C85C9E8(v53, &v49 - v32, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_23C85C9E8(v54, &v33[v34], type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_23C85C9E8(v33, v20, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v36 = *v20 == *&v33[v34];
LABEL_21:
        sub_23C85CA50(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        return v36 & 1;
      }

      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v39 = v52;
      sub_23C85C9E8(v33, v52, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v40 = v50;
        sub_23C868210(&v33[v34], v50, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        if (*v39 == *v40)
        {
          v47 = *(v49 + 20);
          sub_23C870F34();
          sub_23C73EA18();
          v48 = sub_23C871754();
          sub_23C85CA50(v40, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
          if (v48)
          {
            sub_23C85CA50(v39, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
            sub_23C85CA50(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
            v36 = 1;
            return v36 & 1;
          }
        }

        else
        {
          sub_23C85CA50(v40, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        }

        sub_23C85CA50(v39, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
        sub_23C85CA50(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
        goto LABEL_27;
      }

      v44 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution;
      v45 = v39;
    }

    else
    {
      sub_23C85C9E8(v33, v15, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v43 = v51;
        sub_23C868210(&v33[v34], v51, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
        sub_23C870F34();
        sub_23C73EA18();
        v36 = sub_23C871754();
        sub_23C85CA50(v43, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
        v37 = v15;
        v38 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation;
        goto LABEL_20;
      }

      v44 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation;
      v45 = v15;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C85C9E8(v33, v26, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_23C868210(&v33[v34], v10, type metadata accessor for ToolKitProtoTypedValue);
        v36 = static ToolKitProtoTypedValue.== infix(_:_:)(v26, v10);
        sub_23C85CA50(v10, type metadata accessor for ToolKitProtoTypedValue);
        v37 = v26;
        v38 = type metadata accessor for ToolKitProtoTypedValue;
LABEL_20:
        sub_23C85CA50(v37, v38);
        goto LABEL_21;
      }

      v44 = type metadata accessor for ToolKitProtoTypedValue;
      v45 = v26;
LABEL_25:
      sub_23C85CA50(v45, v44);
      goto LABEL_26;
    }

    sub_23C85C9E8(v33, v23, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v41 = *v23;
      goto LABEL_17;
    }

LABEL_26:
    sub_23C585C34(v33, &qword_27E205398, &qword_23C8A6748);
LABEL_27:
    v36 = 0;
    return v36 & 1;
  }

  sub_23C85C9E8(v33, v28, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_26;
  }

  v41 = *v28;
LABEL_17:
  v42 = v41 ^ v33[v34];
  sub_23C85CA50(v33, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v36 = v42 ^ 1;
  return v36 & 1;
}

uint64_t _s26AIMLInstrumentationStreams33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v46 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v46 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = (&v46 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205420, &qword_23C8A67D8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v46 - v32;
  v34 = *(v31 + 56);
  sub_23C85C9E8(v48, &v46 - v32, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_23C85C9E8(v49, &v33[v34], type metadata accessor for TranscriptProtoRequestContentEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v33, v23, type metadata accessor for TranscriptProtoRequestContentEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for TranscriptProtoSystemPromptResolution;
        v37 = v23;
        goto LABEL_15;
      }

      v38 = &v33[v34];
      v39 = v46;
      sub_23C868210(v38, v46, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v40 = _s26AIMLInstrumentationStreams37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(v23, v39);
      sub_23C85CA50(v39, type metadata accessor for TranscriptProtoSystemPromptResolution);
      v41 = v23;
      v42 = type metadata accessor for TranscriptProtoSystemPromptResolution;
LABEL_18:
      sub_23C85CA50(v41, v42);
      sub_23C85CA50(v33, type metadata accessor for TranscriptProtoRequestContentEnum);
      return v40 & 1;
    }

    sub_23C85C9E8(v33, v20, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v36 = type metadata accessor for TranscriptProtoRequestContentStopContent;
      v37 = v20;
      goto LABEL_15;
    }

    v44 = v47;
    sub_23C868210(&v33[v34], v47, type metadata accessor for TranscriptProtoRequestContentStopContent);
    sub_23C870F34();
    sub_23C73EA18();
    v40 = sub_23C871754();
    v43 = type metadata accessor for TranscriptProtoRequestContentStopContent;
    sub_23C85CA50(v44, type metadata accessor for TranscriptProtoRequestContentStopContent);
    v41 = v20;
LABEL_17:
    v42 = v43;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v33, v26, type metadata accessor for TranscriptProtoRequestContentEnum);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
      v37 = v26;
      goto LABEL_15;
    }

    sub_23C868210(&v33[v34], v11, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v40 = static TranscriptProtoRequestContentSpeechContent.== infix(_:_:)(v26, v11);
    v43 = type metadata accessor for TranscriptProtoRequestContentSpeechContent;
    sub_23C85CA50(v11, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v41 = v26;
    goto LABEL_17;
  }

  sub_23C85C9E8(v33, v28, type metadata accessor for TranscriptProtoRequestContentEnum);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C868210(&v33[v34], v15, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v40 = static TranscriptProtoRequestContentTextContent.== infix(_:_:)(v28, v15);
    v43 = type metadata accessor for TranscriptProtoRequestContentTextContent;
    sub_23C85CA50(v15, type metadata accessor for TranscriptProtoRequestContentTextContent);
    v41 = v28;
    goto LABEL_17;
  }

  v36 = type metadata accessor for TranscriptProtoRequestContentTextContent;
  v37 = v28;
LABEL_15:
  sub_23C85CA50(v37, v36);
  sub_23C585C34(v33, &qword_27E205420, &qword_23C8A67D8);
  v40 = 0;
  return v40 & 1;
}

uint64_t _s26AIMLInstrumentationStreams21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v49 = type metadata accessor for TranscriptProtoControlPayload(0);
  v3 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v53 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v47 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v47 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = (&v47 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053A8, &qword_23C8A6760);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v47 - v29;
  v31 = *(v28 + 56);
  sub_23C85C9E8(a1, &v47 - v29, type metadata accessor for TranscriptProtoUitype);
  sub_23C85C9E8(v54, &v30[v31], type metadata accessor for TranscriptProtoUitype);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C85C9E8(v30, v20, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v33 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
        v34 = v20;
        goto LABEL_27;
      }

      v35 = v53;
      sub_23C868210(&v30[v31], v53, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      if (sub_23C6F73FC(*v20, v20[1], *v35, v35[1]) & 1) != 0 && (v20[2] == v35[2] && v20[3] == v35[3] || (sub_23C872014()))
      {
        v36 = *(v48 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v37 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
          sub_23C85CA50(v35, type metadata accessor for TranscriptProtoPluginSnippetPayload);
          v38 = v20;
LABEL_23:
          sub_23C85CA50(v38, v37);
          sub_23C85CA50(v30, type metadata accessor for TranscriptProtoUitype);
          v43 = 1;
          return v43 & 1;
        }
      }

      v44 = type metadata accessor for TranscriptProtoPluginSnippetPayload;
      sub_23C85CA50(v35, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      v45 = v20;
    }

    else
    {
      sub_23C85C9E8(v30, v17, type metadata accessor for TranscriptProtoUitype);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v33 = type metadata accessor for TranscriptProtoControlPayload;
        v34 = v17;
        goto LABEL_27;
      }

      v41 = v52;
      sub_23C868210(&v30[v31], v52, type metadata accessor for TranscriptProtoControlPayload);
      if (sub_23C6F73FC(*v17, *(v17 + 1), *v41, *(v41 + 8)))
      {
        v42 = *(v49 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v37 = type metadata accessor for TranscriptProtoControlPayload;
          sub_23C85CA50(v41, type metadata accessor for TranscriptProtoControlPayload);
          v38 = v17;
          goto LABEL_23;
        }
      }

      v44 = type metadata accessor for TranscriptProtoControlPayload;
      sub_23C85CA50(v41, type metadata accessor for TranscriptProtoControlPayload);
      v45 = v17;
    }

LABEL_32:
    sub_23C85CA50(v45, v44);
    sub_23C85CA50(v30, type metadata accessor for TranscriptProtoUitype);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23C85C9E8(v30, v23, type metadata accessor for TranscriptProtoUitype);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = type metadata accessor for TranscriptProtoLiveActivityPayload;
      v34 = v23;
      goto LABEL_27;
    }

    v39 = v51;
    sub_23C868210(&v30[v31], v51, type metadata accessor for TranscriptProtoLiveActivityPayload);
    if (*v23 == *v39 && v23[1] == v39[1] || (sub_23C872014() & 1) != 0)
    {
      v40 = *(v50 + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v37 = type metadata accessor for TranscriptProtoLiveActivityPayload;
        sub_23C85CA50(v39, type metadata accessor for TranscriptProtoLiveActivityPayload);
        v38 = v23;
        goto LABEL_23;
      }
    }

    v44 = type metadata accessor for TranscriptProtoLiveActivityPayload;
    sub_23C85CA50(v39, type metadata accessor for TranscriptProtoLiveActivityPayload);
    v45 = v23;
    goto LABEL_32;
  }

  sub_23C85C9E8(v30, v25, type metadata accessor for TranscriptProtoUitype);
  if (swift_getEnumCaseMultiPayload())
  {
    v33 = type metadata accessor for TranscriptProtoArchiveViewPayload;
    v34 = v25;
LABEL_27:
    sub_23C85CA50(v34, v33);
    sub_23C585C34(v30, &qword_27E2053A8, &qword_23C8A6760);
LABEL_33:
    v43 = 0;
    return v43 & 1;
  }

  sub_23C868210(&v30[v31], v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v43 = _s26AIMLInstrumentationStreams33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(v25, v12);
  sub_23C85CA50(v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_23C85CA50(v25, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_23C85CA50(v30, type metadata accessor for TranscriptProtoUitype);
  return v43 & 1;
}

BOOL _s26AIMLInstrumentationStreams20TranscriptProtoLabelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FABC8, &qword_23C878F68);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - v14;
  v16 = *(v13 + 56);
  sub_23C85C9E8(a1, &v22 - v14, type metadata accessor for TranscriptProtoLabel);
  sub_23C85C9E8(a2, &v15[v16], type metadata accessor for TranscriptProtoLabel);
  sub_23C868210(v15, v10, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_23C868210(&v15[v16], v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v17 = *v10 == *v8 && v10[1] == v8[1];
  v20 = 0;
  if (v17 || (sub_23C872014() & 1) != 0)
  {
    v18 = v10[2] == v8[2] && v10[3] == v8[3];
    if (v18 || (sub_23C872014() & 1) != 0)
    {
      v19 = *(v4 + 24);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v20 = 1;
      }
    }
  }

  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_23C85CA50(v10, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  return v20;
}

uint64_t _s26AIMLInstrumentationStreams34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v43 = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(0);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v44 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v45 = (&v43 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v43 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v43 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v43 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205378, &qword_23C8A6728);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v43 - v26;
  v28 = (&v43 + *(v25 + 56) - v26);
  sub_23C85C9E8(a1, &v43 - v26, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_23C85C9E8(v46, v28, type metadata accessor for TranscriptProtoValueExpressionEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_23C85C9E8(v27, v9, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v31 = *v9;
        v30 = v9[1];
        if (swift_getEnumCaseMultiPayload() == 5)
        {
LABEL_5:
          if (v31 == *v28 && v30 == *(v28 + 1))
          {
            v41 = *(v28 + 1);
          }

          else
          {
            v33 = *(v28 + 1);
            v34 = sub_23C872014();

            if ((v34 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_33;
        }

        goto LABEL_17;
      }

      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_33:
        sub_23C85CA50(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v37 = 1;
        return v37 & 1;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_23C85C9E8(v27, v14, type metadata accessor for TranscriptProtoValueExpressionEnum);
        v31 = *v14;
        v30 = v14[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_5;
        }

LABEL_17:

        goto LABEL_35;
      }

      v38 = v45;
      sub_23C85C9E8(v27, v45, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v39 = v44;
        sub_23C868210(v28, v44, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        if ((sub_23C5D9488(*v38, *v39) & 1) == 0 || (v40 = *(v43 + 20), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0))
        {
          sub_23C85CA50(v39, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
          sub_23C85CA50(v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
LABEL_39:
          sub_23C85CA50(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
          goto LABEL_36;
        }

        sub_23C85CA50(v39, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        sub_23C85CA50(v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
        goto LABEL_33;
      }

      sub_23C85CA50(v38, type metadata accessor for TranscriptProtoValueExpressionArrayVariant);
    }

LABEL_35:
    sub_23C585C34(v27, &qword_27E205378, &qword_23C8A6728);
LABEL_36:
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23C85C9E8(v27, v20, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_35;
      }

      v35 = *v20 == *v28;
    }

    else
    {
      sub_23C85C9E8(v27, v17, type metadata accessor for TranscriptProtoValueExpressionEnum);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_35;
      }

      v35 = *v17 == *v28;
    }

    v37 = v35;
    sub_23C85CA50(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
  }

  else
  {
    sub_23C85C9E8(v27, v22, type metadata accessor for TranscriptProtoValueExpressionEnum);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_35;
    }

    v36 = *v22 ^ *v28;
    sub_23C85CA50(v27, type metadata accessor for TranscriptProtoValueExpressionEnum);
    v37 = v36 ^ 1;
  }

  return v37 & 1;
}

uint64_t _s26AIMLInstrumentationStreams29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v239 = a1;
  v240 = a2;
  v194 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v2 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v219 = (&v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v4 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v218 = (&v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TranscriptProtoExplicitResolutionRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v217 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v216 = (&v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MentionedAppsExpression = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(0);
  v13 = *(*(MentionedAppsExpression - 8) + 64);
  MEMORY[0x28223BE20](MentionedAppsExpression - 8);
  v215 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TranscriptProtoEndOfPlanExpression(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v214 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TranscriptProtoContinuePlanningExpression(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v213 = &v190 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TranscriptProtoNoMatchingToolExpression(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v212 = &v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v211 = (&v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v210 = (&v190 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v208 = (&v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v33 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v209 = (&v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v207 = (&v190 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v206 = (&v190 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v205 = (&v190 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v204 = (&v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = type metadata accessor for TranscriptProtoPickExpression(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v202 = (&v190 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v191 = type metadata accessor for TranscriptProtoSayExpression(0);
  v50 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v203 = (&v190 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for TranscriptProtoCallExpression(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v201 = (&v190 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v56 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  v200 = (&v190 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v199 = &v190 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8);
  v198 = &v190 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v197 = &v190 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for TranscriptProtoStatementID(0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v196 = (&v190 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for TranscriptProtoValueExpression(0);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70 - 8);
  v195 = &v190 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v73 = *(*(v238 - 8) + 64);
  v74 = MEMORY[0x28223BE20](v238);
  v237 = (&v190 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = MEMORY[0x28223BE20](v74);
  v236 = (&v190 - v77);
  v78 = MEMORY[0x28223BE20](v76);
  v235 = (&v190 - v79);
  v80 = MEMORY[0x28223BE20](v78);
  v233 = (&v190 - v81);
  v82 = MEMORY[0x28223BE20](v80);
  v234 = (&v190 - v83);
  v84 = MEMORY[0x28223BE20](v82);
  v232 = (&v190 - v85);
  v86 = MEMORY[0x28223BE20](v84);
  v231 = (&v190 - v87);
  v88 = MEMORY[0x28223BE20](v86);
  v230 = (&v190 - v89);
  v90 = MEMORY[0x28223BE20](v88);
  v228 = (&v190 - v91);
  v92 = MEMORY[0x28223BE20](v90);
  v227 = (&v190 - v93);
  v94 = MEMORY[0x28223BE20](v92);
  v226 = (&v190 - v95);
  v96 = MEMORY[0x28223BE20](v94);
  v229 = (&v190 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v225 = (&v190 - v99);
  v100 = MEMORY[0x28223BE20](v98);
  v223 = (&v190 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v222 = (&v190 - v103);
  v104 = MEMORY[0x28223BE20](v102);
  v221 = (&v190 - v105);
  v106 = MEMORY[0x28223BE20](v104);
  v220 = (&v190 - v107);
  v108 = MEMORY[0x28223BE20](v106);
  v224 = (&v190 - v109);
  v110 = MEMORY[0x28223BE20](v108);
  v112 = (&v190 - v111);
  v113 = MEMORY[0x28223BE20](v110);
  v115 = (&v190 - v114);
  v116 = MEMORY[0x28223BE20](v113);
  v118 = &v190 - v117;
  v119 = MEMORY[0x28223BE20](v116);
  v121 = &v190 - v120;
  v122 = MEMORY[0x28223BE20](v119);
  v124 = &v190 - v123;
  v125 = MEMORY[0x28223BE20](v122);
  v127 = (&v190 - v126);
  MEMORY[0x28223BE20](v125);
  v129 = (&v190 - v128);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205380, &qword_23C8A6730);
  v131 = *(*(v130 - 8) + 64);
  v132 = MEMORY[0x28223BE20](v130 - 8);
  v134 = &v190 - v133;
  v135 = *(v132 + 56);
  sub_23C85C9E8(v239, &v190 - v133, type metadata accessor for TranscriptProtoExpressionEnum);
  v239 = v135;
  sub_23C85C9E8(v240, &v134[v135], type metadata accessor for TranscriptProtoExpressionEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C85C9E8(v134, v127, type metadata accessor for TranscriptProtoExpressionEnum);
      v162 = v239;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v139 = v196;
        sub_23C868210(&v134[v162], v196, type metadata accessor for TranscriptProtoStatementID);
        v140 = static TranscriptProtoStatementID.== infix(_:_:)(v127, v139);
        v141 = type metadata accessor for TranscriptProtoStatementID;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoStatementID;
      goto LABEL_87;
    case 2u:
      sub_23C85C9E8(v134, v124, type metadata accessor for TranscriptProtoExpressionEnum);
      v154 = v239;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v155 = v197;
        sub_23C868210(&v134[v154], v197, type metadata accessor for TranscriptProtoPrefixExpression);
        v140 = _s26AIMLInstrumentationStreams31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(v124, v155);
        v156 = type metadata accessor for TranscriptProtoPrefixExpression;
        sub_23C85CA50(v155, type metadata accessor for TranscriptProtoPrefixExpression);
        v146 = v124;
        goto LABEL_59;
      }

      v184 = type metadata accessor for TranscriptProtoPrefixExpression;
      v185 = v124;
      goto LABEL_92;
    case 3u:
      sub_23C85C9E8(v134, v121, type metadata accessor for TranscriptProtoExpressionEnum);
      v158 = v239;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v159 = v198;
        sub_23C868210(&v134[v158], v198, type metadata accessor for TranscriptProtoInfixExpression);
        v140 = _s26AIMLInstrumentationStreams30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(v121, v159);
        v156 = type metadata accessor for TranscriptProtoInfixExpression;
        sub_23C85CA50(v159, type metadata accessor for TranscriptProtoInfixExpression);
        v146 = v121;
        goto LABEL_59;
      }

      v184 = type metadata accessor for TranscriptProtoInfixExpression;
      v185 = v121;
      goto LABEL_92;
    case 4u:
      sub_23C85C9E8(v134, v118, type metadata accessor for TranscriptProtoExpressionEnum);
      v144 = v239;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v145 = v199;
        sub_23C868210(&v134[v144], v199, type metadata accessor for TranscriptProtoIndexExpression);
        v140 = sub_23C80EEA8(v118, v145);
        sub_23C85CA50(v145, type metadata accessor for TranscriptProtoIndexExpression);
        v146 = v118;
        v147 = type metadata accessor for TranscriptProtoIndexExpression;
        goto LABEL_60;
      }

      v184 = type metadata accessor for TranscriptProtoIndexExpression;
      v185 = v118;
      goto LABEL_92;
    case 5u:
      sub_23C85C9E8(v134, v115, type metadata accessor for TranscriptProtoExpressionEnum);
      v167 = v239;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v168 = v200;
        sub_23C868210(&v134[v167], v200, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v140 = _s26AIMLInstrumentationStreams41TranscriptProtoUpdateParametersExpressionV2eeoiySbAC_ACtFZ_0(v115, v168);
        v156 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
        sub_23C85CA50(v168, type metadata accessor for TranscriptProtoUpdateParametersExpression);
        v146 = v115;
        goto LABEL_59;
      }

      v184 = type metadata accessor for TranscriptProtoUpdateParametersExpression;
      v185 = v115;
      goto LABEL_92;
    case 6u:
      sub_23C85C9E8(v134, v112, type metadata accessor for TranscriptProtoExpressionEnum);
      v172 = v239;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v173 = v201;
        sub_23C868210(&v134[v172], v201, type metadata accessor for TranscriptProtoCallExpression);
        v140 = _s26AIMLInstrumentationStreams29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(v112, v173);
        v156 = type metadata accessor for TranscriptProtoCallExpression;
        sub_23C85CA50(v173, type metadata accessor for TranscriptProtoCallExpression);
        v146 = v112;
        goto LABEL_59;
      }

      v184 = type metadata accessor for TranscriptProtoCallExpression;
      v185 = v112;
      goto LABEL_92;
    case 7u:
      v129 = v224;
      sub_23C85C9E8(v134, v224, type metadata accessor for TranscriptProtoExpressionEnum);
      v160 = v239;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v137 = type metadata accessor for TranscriptProtoSayExpression;
        goto LABEL_91;
      }

      v151 = v203;
      sub_23C868210(&v134[v160], v203, type metadata accessor for TranscriptProtoSayExpression);
      if (sub_23C5D9488(*v129, *v151))
      {
        v161 = *(v191 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v153 = type metadata accessor for TranscriptProtoSayExpression;
          goto LABEL_65;
        }
      }

      v187 = type metadata accessor for TranscriptProtoSayExpression;
      goto LABEL_100;
    case 8u:
      v127 = v220;
      sub_23C85C9E8(v134, v220, type metadata accessor for TranscriptProtoExpressionEnum);
      v176 = v239;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v139 = v202;
        sub_23C868210(&v134[v176], v202, type metadata accessor for TranscriptProtoPickExpression);
        v140 = _s26AIMLInstrumentationStreams29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoPickExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoPickExpression;
      goto LABEL_87;
    case 9u:
      v127 = v221;
      sub_23C85C9E8(v134, v221, type metadata accessor for TranscriptProtoExpressionEnum);
      v149 = v239;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v139 = v204;
        sub_23C868210(&v134[v149], v204, type metadata accessor for TranscriptProtoConfirmExpression);
        v140 = _s26AIMLInstrumentationStreams32TranscriptProtoConfirmExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoConfirmExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoConfirmExpression;
      goto LABEL_87;
    case 0xAu:
      v127 = v222;
      sub_23C85C9E8(v134, v222, type metadata accessor for TranscriptProtoExpressionEnum);
      v175 = v239;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v139 = v205;
        sub_23C868210(&v134[v175], v205, type metadata accessor for TranscriptProtoSearchExpression);
        v140 = _s26AIMLInstrumentationStreams31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoSearchExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoSearchExpression;
      goto LABEL_87;
    case 0xBu:
      v127 = v223;
      sub_23C85C9E8(v134, v223, type metadata accessor for TranscriptProtoExpressionEnum);
      v143 = v239;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v139 = v206;
        sub_23C868210(&v134[v143], v206, type metadata accessor for TranscriptProtoStructuredSearchExpression);
        v140 = _s26AIMLInstrumentationStreams41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoStructuredSearchExpression;
      goto LABEL_87;
    case 0xCu:
      v127 = v225;
      sub_23C85C9E8(v134, v225, type metadata accessor for TranscriptProtoExpressionEnum);
      v148 = v239;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v139 = v207;
        sub_23C868210(&v134[v148], v207, type metadata accessor for TranscriptProtoPickOneExpression);
        v140 = _s26AIMLInstrumentationStreams32TranscriptProtoPickOneExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoPickOneExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoPickOneExpression;
      goto LABEL_87;
    case 0xDu:
      v129 = v229;
      sub_23C85C9E8(v134, v229, type metadata accessor for TranscriptProtoExpressionEnum);
      v170 = v239;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v137 = type metadata accessor for TranscriptProtoResolveToolExpression;
        goto LABEL_91;
      }

      v151 = v209;
      sub_23C868210(&v134[v170], v209, type metadata accessor for TranscriptProtoResolveToolExpression);
      if (sub_23C5D61EC(*v129, *v151))
      {
        v171 = *(v192 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v153 = type metadata accessor for TranscriptProtoResolveToolExpression;
          goto LABEL_65;
        }
      }

      v187 = type metadata accessor for TranscriptProtoResolveToolExpression;
      goto LABEL_100;
    case 0xEu:
      v127 = v226;
      sub_23C85C9E8(v134, v226, type metadata accessor for TranscriptProtoExpressionEnum);
      v142 = v239;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v139 = v208;
        sub_23C868210(&v134[v142], v208, type metadata accessor for TranscriptProtoUndoExpression);
        v140 = _s26AIMLInstrumentationStreams29TranscriptProtoUndoExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoUndoExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoUndoExpression;
      goto LABEL_87;
    case 0xFu:
      v127 = v227;
      sub_23C85C9E8(v134, v227, type metadata accessor for TranscriptProtoExpressionEnum);
      v157 = v239;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v139 = v210;
        sub_23C868210(&v134[v157], v210, type metadata accessor for TranscriptProtoRejectExpression);
        v140 = _s26AIMLInstrumentationStreams31TranscriptProtoRejectExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoRejectExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoRejectExpression;
      goto LABEL_87;
    case 0x10u:
      v127 = v228;
      sub_23C85C9E8(v134, v228, type metadata accessor for TranscriptProtoExpressionEnum);
      v138 = v239;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v139 = v211;
        sub_23C868210(&v134[v138], v211, type metadata accessor for TranscriptProtoCancelExpression);
        v140 = _s26AIMLInstrumentationStreams31TranscriptProtoCancelExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoCancelExpression;
        goto LABEL_52;
      }

      v183 = type metadata accessor for TranscriptProtoCancelExpression;
      goto LABEL_87;
    case 0x11u:
      v129 = v230;
      sub_23C85C9E8(v134, v230, type metadata accessor for TranscriptProtoExpressionEnum);
      v163 = v239;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v164 = v212;
        sub_23C868210(&v134[v163], v212, type metadata accessor for TranscriptProtoNoMatchingToolExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v140 = sub_23C871754();
        v165 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
        goto LABEL_57;
      }

      v137 = type metadata accessor for TranscriptProtoNoMatchingToolExpression;
      goto LABEL_91;
    case 0x12u:
      v129 = v231;
      sub_23C85C9E8(v134, v231, type metadata accessor for TranscriptProtoExpressionEnum);
      v174 = v239;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v164 = v213;
        sub_23C868210(&v134[v174], v213, type metadata accessor for TranscriptProtoContinuePlanningExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v140 = sub_23C871754();
        v165 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
        goto LABEL_57;
      }

      v137 = type metadata accessor for TranscriptProtoContinuePlanningExpression;
      goto LABEL_91;
    case 0x13u:
      v129 = v232;
      sub_23C85C9E8(v134, v232, type metadata accessor for TranscriptProtoExpressionEnum);
      v178 = v239;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v164 = v214;
        sub_23C868210(&v134[v178], v214, type metadata accessor for TranscriptProtoEndOfPlanExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v140 = sub_23C871754();
        v165 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
        goto LABEL_57;
      }

      v137 = type metadata accessor for TranscriptProtoEndOfPlanExpression;
      goto LABEL_91;
    case 0x14u:
      v129 = v234;
      sub_23C85C9E8(v134, v234, type metadata accessor for TranscriptProtoExpressionEnum);
      v166 = v239;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v164 = v215;
        sub_23C868210(&v134[v166], v215, type metadata accessor for TranscriptProtoGetMentionedAppsExpression);
        sub_23C870F34();
        sub_23C73EA18();
        v140 = sub_23C871754();
        v165 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
        goto LABEL_57;
      }

      v137 = type metadata accessor for TranscriptProtoGetMentionedAppsExpression;
      goto LABEL_91;
    case 0x15u:
      v127 = v233;
      sub_23C85C9E8(v134, v233, type metadata accessor for TranscriptProtoExpressionEnum);
      v169 = v239;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v139 = v216;
        sub_23C868210(&v134[v169], v216, type metadata accessor for TranscriptProtoOpenExpression);
        v140 = _s26AIMLInstrumentationStreams29TranscriptProtoOpenExpressionV2eeoiySbAC_ACtFZ_0(v127, v139);
        v141 = type metadata accessor for TranscriptProtoOpenExpression;
LABEL_52:
        v156 = v141;
        sub_23C85CA50(v139, v141);
        v146 = v127;
        goto LABEL_59;
      }

      v183 = type metadata accessor for TranscriptProtoOpenExpression;
LABEL_87:
      v184 = v183;
      v185 = v127;
      goto LABEL_92;
    case 0x16u:
      v129 = v235;
      sub_23C85C9E8(v134, v235, type metadata accessor for TranscriptProtoExpressionEnum);
      v177 = v239;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v137 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
        goto LABEL_91;
      }

      v164 = v217;
      sub_23C868210(&v134[v177], v217, type metadata accessor for TranscriptProtoExplicitResolutionRequest);
      sub_23C870F34();
      sub_23C73EA18();
      v140 = sub_23C871754();
      v165 = type metadata accessor for TranscriptProtoExplicitResolutionRequest;
LABEL_57:
      v156 = v165;
      v179 = v164;
      goto LABEL_58;
    case 0x17u:
      v129 = v236;
      sub_23C85C9E8(v134, v236, type metadata accessor for TranscriptProtoExpressionEnum);
      v180 = v239;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        v137 = type metadata accessor for TranscriptProtoPayloadExpression;
        goto LABEL_91;
      }

      v151 = v218;
      sub_23C868210(&v134[v180], v218, type metadata accessor for TranscriptProtoPayloadExpression);
      if (sub_23C5D9488(*v129, *v151))
      {
        v181 = *(v193 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v153 = type metadata accessor for TranscriptProtoPayloadExpression;
          goto LABEL_65;
        }
      }

      v187 = type metadata accessor for TranscriptProtoPayloadExpression;
      goto LABEL_100;
    case 0x18u:
      v129 = v237;
      sub_23C85C9E8(v134, v237, type metadata accessor for TranscriptProtoExpressionEnum);
      v150 = v239;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        v137 = type metadata accessor for TranscriptProtoFormatExpression;
        goto LABEL_91;
      }

      v151 = v219;
      sub_23C868210(&v134[v150], v219, type metadata accessor for TranscriptProtoFormatExpression);
      if (sub_23C5D9488(*v129, *v151))
      {
        v152 = *(v194 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v153 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_65:
          v182 = v153;
          sub_23C85CA50(v151, v153);
          sub_23C85CA50(v129, v182);
          sub_23C85CA50(v134, type metadata accessor for TranscriptProtoExpressionEnum);
          v140 = 1;
          return v140 & 1;
        }
      }

      v187 = type metadata accessor for TranscriptProtoFormatExpression;
LABEL_100:
      v189 = v187;
      sub_23C85CA50(v151, v187);
      sub_23C85CA50(v129, v189);
      sub_23C85CA50(v134, type metadata accessor for TranscriptProtoExpressionEnum);
      goto LABEL_93;
    default:
      sub_23C85C9E8(v134, v129, type metadata accessor for TranscriptProtoExpressionEnum);
      v136 = v239;
      if (swift_getEnumCaseMultiPayload())
      {
        v137 = type metadata accessor for TranscriptProtoValueExpression;
LABEL_91:
        v184 = v137;
        v185 = v129;
LABEL_92:
        sub_23C85CA50(v185, v184);
        sub_23C585C34(v134, &qword_27E205380, &qword_23C8A6730);
LABEL_93:
        v140 = 0;
      }

      else
      {
        v188 = v195;
        sub_23C868210(&v134[v136], v195, type metadata accessor for TranscriptProtoValueExpression);
        v140 = _s26AIMLInstrumentationStreams30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(v129, v188);
        v165 = type metadata accessor for TranscriptProtoValueExpression;
        v156 = type metadata accessor for TranscriptProtoValueExpression;
        v179 = v188;
LABEL_58:
        sub_23C85CA50(v179, v165);
        v146 = v129;
LABEL_59:
        v147 = v156;
LABEL_60:
        sub_23C85CA50(v146, v147);
        sub_23C85CA50(v134, type metadata accessor for TranscriptProtoExpressionEnum);
      }

      return v140 & 1;
  }
}

BOOL _s26AIMLInstrumentationStreams039TranscriptProtoFollowUpActionExecutableG4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053D0, &qword_23C8A6788);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v21 - v14;
  v16 = *(v13 + 56);
  sub_23C85C9E8(a1, &v21 - v14, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C85C9E8(a2, &v15[v16], type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_23C868210(v15, v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C868210(&v15[v16], v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  v17 = *v10 == *v8 && v10[1] == v8[1];
  v19 = 0;
  if (v17 || (sub_23C872014()) && (sub_23C6F73FC(v10[2], v10[3], v8[2], v8[3]) & 1) != 0 && v10[4] == v8[4])
  {
    v18 = *(v4 + 28);
    sub_23C870F34();
    sub_23C73EA18();
    if (sub_23C871754())
    {
      v19 = 1;
    }
  }

  sub_23C85CA50(v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_23C85CA50(v10, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  return v19;
}

uint64_t _s26AIMLInstrumentationStreams028TranscriptProtoActionFailureF4EnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2053D8, &qword_23C8A6790);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_23C85C9E8(a1, &v24 - v16, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_23C85C9E8(a2, &v17[v18], type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v19 = *(v5 + 48);
  switch(v19(v17, 16, v4))
  {
    case 1u:
      if (v19(&v17[v18], 16, v4) == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    case 2u:
      if (v19(&v17[v18], 16, v4) != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 3u:
      if (v19(&v17[v18], 16, v4) != 3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 4u:
      if (v19(&v17[v18], 16, v4) != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 5u:
      if (v19(&v17[v18], 16, v4) != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 6u:
      if (v19(&v17[v18], 16, v4) != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 7u:
      if (v19(&v17[v18], 16, v4) != 7)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 8u:
      if (v19(&v17[v18], 16, v4) == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    case 9u:
      if (v19(&v17[v18], 16, v4) != 9)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xAu:
      if (v19(&v17[v18], 16, v4) != 10)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xBu:
      if (v19(&v17[v18], 16, v4) != 11)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xCu:
      if (v19(&v17[v18], 16, v4) != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xDu:
      if (v19(&v17[v18], 16, v4) != 13)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xEu:
      if (v19(&v17[v18], 16, v4) != 14)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0xFu:
      if (v19(&v17[v18], 16, v4) != 15)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    case 0x10u:
      if (v19(&v17[v18], 16, v4) != 16)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    default:
      sub_23C85C9E8(v17, v12, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      if (v19(&v17[v18], 16, v4))
      {
        sub_23C85CA50(v12, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
LABEL_36:
        sub_23C585C34(v17, &qword_27E2053D8, &qword_23C8A6790);
        return 0;
      }

      sub_23C868210(&v17[v18], v8, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      v21 = *v12 == *v8 && v12[1] == v8[1];
      if (!v21 && (sub_23C872014() & 1) == 0 || (v12[2] == v8[2] ? (v22 = v12[3] == v8[3]) : (v22 = 0), !v22 && (sub_23C872014() & 1) == 0 || v12[4] != v8[4] || (v23 = *(v4 + 28), sub_23C870F34(), sub_23C73EA18(), (sub_23C871754() & 1) == 0)))
      {
        sub_23C85CA50(v8, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
        sub_23C85CA50(v12, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
        sub_23C85CA50(v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
        return 0;
      }

      sub_23C85CA50(v8, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
      sub_23C85CA50(v12, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
LABEL_35:
      sub_23C85CA50(v17, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
      return 1;
  }
}

uint64_t _s26AIMLInstrumentationStreams26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v297 = a2;
  v298 = a1;
  v2 = type metadata accessor for TranscriptProtoSkipStatement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v270 = (&v234 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v6 = *(*(DecorationPrePlannerResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResult - 8);
  v269 = (&v234 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TranscriptProtoContinuePlanning(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v268 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v12 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult - 8);
  v267 = (&v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v266 = (&v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v265 = (&v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v263 = (&v234 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v262 = (&v234 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for TranscriptProtoToolResolution(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v261 = (&v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v235 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v29 = *(*(v235 - 8) + 64);
  MEMORY[0x28223BE20](v235);
  v264 = (&v234 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v260 = (&v234 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v259 = (&v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for TranscriptProtoStatementResult(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v258 = (&v234 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v257 = (&v234 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v255 = (&v234 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v254 = (&v234 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v49 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v256 = (&v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v51 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v253 = (&v234 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v237 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v53 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237);
  v251 = (&v234 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v236 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v55 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v252 = (&v234 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v250 = &v234 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v249 = (&v234 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v64 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults - 8);
  v248 = (&v234 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v247 = (&v234 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for TranscriptProtoSessionError(0);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69 - 8);
  v246 = (&v234 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for TranscriptProtoVariableStep(0);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72 - 8);
  v245 = (&v234 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v76 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step - 8);
  v244 = &v234 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TranscriptProtoClientAction(0);
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78 - 8);
  v243 = (&v234 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for TranscriptProtoAction(0);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v242 = &v234 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TranscriptProtoPlan(0);
  v85 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84 - 8);
  v241 = &v234 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for TranscriptProtoRequest(0);
  v88 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87 - 8);
  v240 = &v234 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TranscriptProtoSessionStart(0);
  v91 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90 - 8);
  v239 = &v234 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v93 = *(*(v296 - 8) + 64);
  v94 = MEMORY[0x28223BE20](v296);
  v295 = (&v234 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = MEMORY[0x28223BE20](v94);
  v292 = (&v234 - v97);
  v98 = MEMORY[0x28223BE20](v96);
  v294 = &v234 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v291 = (&v234 - v101);
  v102 = MEMORY[0x28223BE20](v100);
  v290 = (&v234 - v103);
  v104 = MEMORY[0x28223BE20](v102);
  v289 = (&v234 - v105);
  v106 = MEMORY[0x28223BE20](v104);
  v288 = (&v234 - v107);
  v108 = MEMORY[0x28223BE20](v106);
  v287 = (&v234 - v109);
  v110 = MEMORY[0x28223BE20](v108);
  v286 = (&v234 - v111);
  v112 = MEMORY[0x28223BE20](v110);
  v293 = &v234 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v284 = (&v234 - v115);
  v116 = MEMORY[0x28223BE20](v114);
  v282 = (&v234 - v117);
  v118 = MEMORY[0x28223BE20](v116);
  v281 = (&v234 - v119);
  v120 = MEMORY[0x28223BE20](v118);
  v279 = (&v234 - v121);
  v122 = MEMORY[0x28223BE20](v120);
  v277 = (&v234 - v123);
  v124 = MEMORY[0x28223BE20](v122);
  v276 = (&v234 - v125);
  v126 = MEMORY[0x28223BE20](v124);
  v285 = &v234 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v280 = &v234 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v278 = &v234 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v283 = &v234 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v275 = &v234 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v274 = (&v234 - v137);
  v138 = MEMORY[0x28223BE20](v136);
  v273 = (&v234 - v139);
  v140 = MEMORY[0x28223BE20](v138);
  v272 = (&v234 - v141);
  v142 = MEMORY[0x28223BE20](v140);
  v271 = (&v234 - v143);
  v144 = MEMORY[0x28223BE20](v142);
  v146 = (&v234 - v145);
  v147 = MEMORY[0x28223BE20](v144);
  v149 = &v234 - v148;
  v150 = MEMORY[0x28223BE20](v147);
  v152 = (&v234 - v151);
  v153 = MEMORY[0x28223BE20](v150);
  v155 = &v234 - v154;
  v156 = MEMORY[0x28223BE20](v153);
  v158 = &v234 - v157;
  v159 = MEMORY[0x28223BE20](v156);
  v161 = &v234 - v160;
  MEMORY[0x28223BE20](v159);
  v163 = &v234 - v162;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205428, &unk_23C8A67E0);
  v165 = *(*(v164 - 8) + 64);
  v166 = MEMORY[0x28223BE20](v164 - 8);
  v168 = &v234 - v167;
  v169 = *(v166 + 56);
  sub_23C85C9E8(v298, &v234 - v167, type metadata accessor for TranscriptProtoPayloadEnum);
  v298 = v169;
  sub_23C85C9E8(v297, &v168[v169], type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C85C9E8(v168, v161, type metadata accessor for TranscriptProtoPayloadEnum);
      v203 = v298;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v204 = v240;
        sub_23C868210(&v168[v203], v240, type metadata accessor for TranscriptProtoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(v161, v204);
        v187 = type metadata accessor for TranscriptProtoRequest;
        sub_23C85CA50(v204, type metadata accessor for TranscriptProtoRequest);
        v188 = v161;
        goto LABEL_90;
      }

      v171 = type metadata accessor for TranscriptProtoRequest;
      v172 = v161;
      goto LABEL_125;
    case 2u:
      sub_23C85C9E8(v168, v158, type metadata accessor for TranscriptProtoPayloadEnum);
      v195 = v298;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v196 = v241;
        sub_23C868210(&v168[v195], v241, type metadata accessor for TranscriptProtoPlan);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(v158, v196);
        v187 = type metadata accessor for TranscriptProtoPlan;
        sub_23C85CA50(v196, type metadata accessor for TranscriptProtoPlan);
        v188 = v158;
        goto LABEL_90;
      }

      v171 = type metadata accessor for TranscriptProtoPlan;
      v172 = v158;
      goto LABEL_125;
    case 3u:
      sub_23C85C9E8(v168, v155, type metadata accessor for TranscriptProtoPayloadEnum);
      v199 = v298;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v200 = v242;
        sub_23C868210(&v168[v199], v242, type metadata accessor for TranscriptProtoAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v155, v200);
        v184 = type metadata accessor for TranscriptProtoAction;
        v187 = type metadata accessor for TranscriptProtoAction;
        v201 = v200;
        goto LABEL_86;
      }

      v227 = type metadata accessor for TranscriptProtoAction;
      goto LABEL_122;
    case 4u:
      sub_23C85C9E8(v168, v152, type metadata accessor for TranscriptProtoPayloadEnum);
      v185 = v298;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v186 = v243;
        sub_23C868210(&v168[v185], v243, type metadata accessor for TranscriptProtoClientAction);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(v152, v186);
        v187 = type metadata accessor for TranscriptProtoClientAction;
        sub_23C85CA50(v186, type metadata accessor for TranscriptProtoClientAction);
        v188 = v152;
        goto LABEL_90;
      }

      v171 = type metadata accessor for TranscriptProtoClientAction;
      v172 = v152;
      goto LABEL_125;
    case 5u:
      sub_23C85C9E8(v168, v149, type metadata accessor for TranscriptProtoPayloadEnum);
      v208 = v298;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v209 = v244;
        sub_23C868210(&v168[v208], v244, type metadata accessor for TranscriptProtoQueryStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(v149, v209);
        sub_23C85CA50(v209, type metadata accessor for TranscriptProtoQueryStep);
        v188 = v149;
        v210 = type metadata accessor for TranscriptProtoQueryStep;
        goto LABEL_91;
      }

      v171 = type metadata accessor for TranscriptProtoQueryStep;
      v172 = v149;
      goto LABEL_125;
    case 6u:
      sub_23C85C9E8(v168, v146, type metadata accessor for TranscriptProtoPayloadEnum);
      v214 = v298;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v174 = v245;
        sub_23C868210(&v168[v214], v245, type metadata accessor for TranscriptProtoVariableStep);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoVariableStep;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_124;
    case 7u:
      v146 = v271;
      sub_23C85C9E8(v168, v271, type metadata accessor for TranscriptProtoPayloadEnum);
      v202 = v298;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v174 = v246;
        sub_23C868210(&v168[v202], v246, type metadata accessor for TranscriptProtoSessionError);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoSessionError;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoSessionError;
      goto LABEL_124;
    case 8u:
      v146 = v272;
      sub_23C85C9E8(v168, v272, type metadata accessor for TranscriptProtoPayloadEnum);
      v217 = v298;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v174 = v247;
        sub_23C868210(&v168[v217], v247, type metadata accessor for TranscriptProtoRecoverableError);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoRecoverableError;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoRecoverableError;
      goto LABEL_124;
    case 9u:
      v146 = v273;
      sub_23C85C9E8(v168, v273, type metadata accessor for TranscriptProtoPayloadEnum);
      v192 = v298;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v174 = v248;
        sub_23C868210(&v168[v192], v248, type metadata accessor for TranscriptProtoQueryStepResults);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoQueryStepResults;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoQueryStepResults;
      goto LABEL_124;
    case 0xAu:
      v146 = v274;
      sub_23C85C9E8(v168, v274, type metadata accessor for TranscriptProtoPayloadEnum);
      v216 = v298;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v174 = v249;
        sub_23C868210(&v168[v216], v249, type metadata accessor for TranscriptProtoActionResolverRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoActionResolverRequest;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoActionResolverRequest;
      goto LABEL_124;
    case 0xBu:
      v155 = v275;
      sub_23C85C9E8(v168, v275, type metadata accessor for TranscriptProtoPayloadEnum);
      v182 = v298;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v183 = v250;
        sub_23C868210(&v168[v182], v250, type metadata accessor for TranscriptProtoSafetyModeRelease);
        sub_23C870F34();
        sub_23C73EA18();
        StepV2eeoiySbAC_ACtFZ_0 = sub_23C871754();
        v184 = type metadata accessor for TranscriptProtoSafetyModeRelease;
        goto LABEL_85;
      }

      v227 = type metadata accessor for TranscriptProtoSafetyModeRelease;
      goto LABEL_122;
    case 0xCu:
      v155 = v283;
      sub_23C85C9E8(v168, v283, type metadata accessor for TranscriptProtoPayloadEnum);
      v189 = v298;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v227 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_122;
      }

      v179 = v252;
      sub_23C868210(&v168[v189], v252, type metadata accessor for TranscriptProtoSafetyModeException);
      v190 = *(v155 + 1);
      v191 = v179[1];
      if (v190)
      {
        if (!v191 || (*v155 != *v179 || v190 != v191) && (sub_23C872014() & 1) == 0)
        {
          goto LABEL_139;
        }
      }

      else if (v191)
      {
        goto LABEL_139;
      }

      v231 = *(v236 + 20);
      sub_23C870F34();
      sub_23C73EA18();
      if (sub_23C871754())
      {
        v181 = type metadata accessor for TranscriptProtoSafetyModeException;
        goto LABEL_137;
      }

LABEL_139:
      v229 = type metadata accessor for TranscriptProtoSafetyModeException;
      goto LABEL_140;
    case 0xDu:
      v155 = v278;
      sub_23C85C9E8(v168, v278, type metadata accessor for TranscriptProtoPayloadEnum);
      v212 = v298;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v227 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
        goto LABEL_122;
      }

      v179 = v251;
      sub_23C868210(&v168[v212], v251, type metadata accessor for TranscriptProtoResponseGenerationRequest);
      if (sub_23C5D4D04(*v155, *v179))
      {
        v213 = *(v237 + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v181 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
          goto LABEL_137;
        }
      }

      v229 = type metadata accessor for TranscriptProtoResponseGenerationRequest;
      goto LABEL_140;
    case 0xEu:
      v155 = v280;
      sub_23C85C9E8(v168, v280, type metadata accessor for TranscriptProtoPayloadEnum);
      v178 = v298;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v227 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
        goto LABEL_122;
      }

      v179 = v253;
      sub_23C868210(&v168[v178], v253, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      if (sub_23C5CF590(*v155, *v179))
      {
        v180 = *(matched + 20);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v181 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
          goto LABEL_137;
        }
      }

      v229 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_140;
    case 0xFu:
      v155 = v285;
      sub_23C85C9E8(v168, v285, type metadata accessor for TranscriptProtoPayloadEnum);
      v197 = v298;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        v227 = type metadata accessor for TranscriptProtoContextRetrieved;
        goto LABEL_122;
      }

      v179 = v256;
      sub_23C868210(&v168[v197], v256, type metadata accessor for TranscriptProtoContextRetrieved);
      if (sub_23C5D6494(*v155, *v179) & 1) != 0 && (sub_23C5D6494(*(v155 + 1), v179[1]))
      {
        v198 = *(v234 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v181 = type metadata accessor for TranscriptProtoContextRetrieved;
          goto LABEL_137;
        }
      }

      v229 = type metadata accessor for TranscriptProtoContextRetrieved;
      goto LABEL_140;
    case 0x10u:
      v146 = v276;
      sub_23C85C9E8(v168, v276, type metadata accessor for TranscriptProtoPayloadEnum);
      v177 = v298;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v174 = v254;
        sub_23C868210(&v168[v177], v254, type metadata accessor for TranscriptProtoActionCancellation);
        StepV2eeoiySbAC_ACtFZ_0 = sub_23C809D30(v146, v174);
        v176 = type metadata accessor for TranscriptProtoActionCancellation;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoActionCancellation;
      goto LABEL_124;
    case 0x11u:
      v146 = v277;
      sub_23C85C9E8(v168, v277, type metadata accessor for TranscriptProtoPayloadEnum);
      v206 = v298;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v174 = v255;
        sub_23C868210(&v168[v206], v255, type metadata accessor for TranscriptProtoToolRetrievalResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoToolRetrievalResponse;
      goto LABEL_124;
    case 0x12u:
      v146 = v279;
      sub_23C85C9E8(v168, v279, type metadata accessor for TranscriptProtoPayloadEnum);
      v215 = v298;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v174 = v257;
        sub_23C868210(&v168[v215], v257, type metadata accessor for TranscriptProtoSystemResponse);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoSystemResponse;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoSystemResponse;
      goto LABEL_124;
    case 0x13u:
      v146 = v281;
      sub_23C85C9E8(v168, v281, type metadata accessor for TranscriptProtoPayloadEnum);
      v221 = v298;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v174 = v258;
        sub_23C868210(&v168[v221], v258, type metadata accessor for TranscriptProtoStatementResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoStatementResult;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoStatementResult;
      goto LABEL_124;
    case 0x14u:
      v146 = v282;
      sub_23C85C9E8(v168, v282, type metadata accessor for TranscriptProtoPayloadEnum);
      v207 = v298;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v174 = v259;
        sub_23C868210(&v168[v207], v259, type metadata accessor for TranscriptProtoExternalAgentRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoExternalAgentRequest;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoExternalAgentRequest;
      goto LABEL_124;
    case 0x15u:
      v146 = v284;
      sub_23C85C9E8(v168, v284, type metadata accessor for TranscriptProtoPayloadEnum);
      v211 = v298;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v174 = v260;
        sub_23C868210(&v168[v211], v260, type metadata accessor for TranscriptProtoExternalAgentOutcome);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoExternalAgentOutcome;
      goto LABEL_124;
    case 0x16u:
      v155 = v293;
      sub_23C85C9E8(v168, v293, type metadata accessor for TranscriptProtoPayloadEnum);
      v219 = v298;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
        v227 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
        goto LABEL_122;
      }

      v179 = v264;
      sub_23C868210(&v168[v219], v264, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      if (*v155 == *v179 && *(v155 + 1) == v179[1] || (sub_23C872014()) && (sub_23C5D25E0(*(v155 + 2), v179[2]))
      {
        v220 = *(v235 + 24);
        sub_23C870F34();
        sub_23C73EA18();
        if (sub_23C871754())
        {
          v181 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
LABEL_137:
          v232 = v181;
          sub_23C85CA50(v179, v181);
          sub_23C85CA50(v155, v232);
LABEL_138:
          sub_23C85CA50(v168, type metadata accessor for TranscriptProtoPayloadEnum);
          StepV2eeoiySbAC_ACtFZ_0 = 1;
          return StepV2eeoiySbAC_ACtFZ_0 & 1;
        }
      }

      v229 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata;
LABEL_140:
      v233 = v229;
      sub_23C85CA50(v179, v229);
      sub_23C85CA50(v155, v233);
      sub_23C85CA50(v168, type metadata accessor for TranscriptProtoPayloadEnum);
      goto LABEL_127;
    case 0x17u:
      v146 = v286;
      sub_23C85C9E8(v168, v286, type metadata accessor for TranscriptProtoPayloadEnum);
      v222 = v298;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v174 = v261;
        sub_23C868210(&v168[v222], v261, type metadata accessor for TranscriptProtoToolResolution);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoToolResolution;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoToolResolution;
      goto LABEL_124;
    case 0x18u:
      v146 = v287;
      sub_23C85C9E8(v168, v287, type metadata accessor for TranscriptProtoPayloadEnum);
      v194 = v298;
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        v174 = v262;
        sub_23C868210(&v168[v194], v262, type metadata accessor for TranscriptProtoUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoUndoRedoRequest;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoUndoRedoRequest;
      goto LABEL_124;
    case 0x19u:
      v146 = v288;
      sub_23C85C9E8(v168, v288, type metadata accessor for TranscriptProtoPayloadEnum);
      v193 = v298;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v174 = v263;
        sub_23C868210(&v168[v193], v263, type metadata accessor for TranscriptProtoClientUndoRedoRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoClientUndoRedoRequest;
      goto LABEL_124;
    case 0x1Au:
      v146 = v289;
      sub_23C85C9E8(v168, v289, type metadata accessor for TranscriptProtoPayloadEnum);
      v225 = v298;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v174 = v265;
        sub_23C868210(&v168[v225], v265, type metadata accessor for TranscriptProtoTypeConversionRequest);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoTypeConversionRequest;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoTypeConversionRequest;
      goto LABEL_124;
    case 0x1Bu:
      v146 = v290;
      sub_23C85C9E8(v168, v290, type metadata accessor for TranscriptProtoPayloadEnum);
      v173 = v298;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        v174 = v266;
        sub_23C868210(&v168[v173], v266, type metadata accessor for TranscriptProtoTypeConversionResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoTypeConversionResult;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoTypeConversionResult;
      goto LABEL_124;
    case 0x1Cu:
      v146 = v291;
      sub_23C85C9E8(v168, v291, type metadata accessor for TranscriptProtoPayloadEnum);
      v223 = v298;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        v174 = v267;
        sub_23C868210(&v168[v223], v267, type metadata accessor for TranscriptProtoQueryDecorationResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoQueryDecorationResult;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoQueryDecorationResult;
      goto LABEL_124;
    case 0x1Du:
      v155 = v294;
      sub_23C85C9E8(v168, v294, type metadata accessor for TranscriptProtoPayloadEnum);
      v224 = v298;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        v183 = v268;
        sub_23C868210(&v168[v224], v268, type metadata accessor for TranscriptProtoContinuePlanning);
        sub_23C870F34();
        sub_23C73EA18();
        StepV2eeoiySbAC_ACtFZ_0 = sub_23C871754();
        v184 = type metadata accessor for TranscriptProtoContinuePlanning;
LABEL_85:
        v187 = v184;
        v201 = v183;
LABEL_86:
        sub_23C85CA50(v201, v184);
        v188 = v155;
        goto LABEL_90;
      }

      v227 = type metadata accessor for TranscriptProtoContinuePlanning;
LABEL_122:
      v171 = v227;
      v172 = v155;
      goto LABEL_125;
    case 0x1Eu:
      v146 = v292;
      sub_23C85C9E8(v168, v292, type metadata accessor for TranscriptProtoPayloadEnum);
      v218 = v298;
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        v174 = v269;
        sub_23C868210(&v168[v218], v269, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
        goto LABEL_89;
      }

      v226 = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult;
      goto LABEL_124;
    case 0x1Fu:
      v146 = v295;
      sub_23C85C9E8(v168, v295, type metadata accessor for TranscriptProtoPayloadEnum);
      v205 = v298;
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        v174 = v270;
        sub_23C868210(&v168[v205], v270, type metadata accessor for TranscriptProtoSkipStatement);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams28TranscriptProtoSkipStatementV2eeoiySbAC_ACtFZ_0(v146, v174);
        v176 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_89:
        v187 = v176;
        sub_23C85CA50(v174, v176);
        v188 = v146;
        goto LABEL_90;
      }

      v226 = type metadata accessor for TranscriptProtoSkipStatement;
LABEL_124:
      v171 = v226;
      v172 = v146;
      goto LABEL_125;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        goto LABEL_138;
      }

      goto LABEL_126;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        goto LABEL_138;
      }

      goto LABEL_126;
    default:
      sub_23C85C9E8(v168, v163, type metadata accessor for TranscriptProtoPayloadEnum);
      v170 = v298;
      if (swift_getEnumCaseMultiPayload())
      {
        v171 = type metadata accessor for TranscriptProtoSessionStart;
        v172 = v163;
LABEL_125:
        sub_23C85CA50(v172, v171);
LABEL_126:
        sub_23C585C34(v168, &qword_27E205428, &unk_23C8A67E0);
LABEL_127:
        StepV2eeoiySbAC_ACtFZ_0 = 0;
      }

      else
      {
        v230 = v239;
        sub_23C868210(&v168[v170], v239, type metadata accessor for TranscriptProtoSessionStart);
        StepV2eeoiySbAC_ACtFZ_0 = _s26AIMLInstrumentationStreams27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(v163, v230);
        v187 = type metadata accessor for TranscriptProtoSessionStart;
        sub_23C85CA50(v230, type metadata accessor for TranscriptProtoSessionStart);
        v188 = v163;
LABEL_90:
        v210 = v187;
LABEL_91:
        sub_23C85CA50(v188, v210);
        sub_23C85CA50(v168, type metadata accessor for TranscriptProtoPayloadEnum);
      }

      return StepV2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_23C85C9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C85CA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C85CAB4()
{
  result = qword_27E203F70;
  if (!qword_27E203F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203F70);
  }

  return result;
}

unint64_t sub_23C85CB3C()
{
  result = qword_27E203F88;
  if (!qword_27E203F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203F88);
  }

  return result;
}

unint64_t sub_23C85CBC4()
{
  result = qword_27E203FA0;
  if (!qword_27E203FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FA0);
  }

  return result;
}

unint64_t sub_23C85CC4C()
{
  result = qword_27E203FB8;
  if (!qword_27E203FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FB8);
  }

  return result;
}

unint64_t sub_23C85CCD4()
{
  result = qword_27E203FD0;
  if (!qword_27E203FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FD0);
  }

  return result;
}

unint64_t sub_23C85CD5C()
{
  result = qword_27E203FE8;
  if (!qword_27E203FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E203FE8);
  }

  return result;
}

unint64_t sub_23C85CDE4()
{
  result = qword_27E204000;
  if (!qword_27E204000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204000);
  }

  return result;
}

unint64_t sub_23C85CE6C()
{
  result = qword_27E204018;
  if (!qword_27E204018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204018);
  }

  return result;
}

unint64_t sub_23C85CEF4()
{
  result = qword_27E204030;
  if (!qword_27E204030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204030);
  }

  return result;
}

unint64_t sub_23C85CF7C()
{
  result = qword_27E204048;
  if (!qword_27E204048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204048);
  }

  return result;
}

unint64_t sub_23C85D004()
{
  result = qword_27E204060;
  if (!qword_27E204060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204060);
  }

  return result;
}

unint64_t sub_23C85D08C()
{
  result = qword_27E204078;
  if (!qword_27E204078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204078);
  }

  return result;
}

unint64_t sub_23C85D114()
{
  result = qword_27E204090;
  if (!qword_27E204090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204090);
  }

  return result;
}

unint64_t sub_23C85D16C()
{
  result = qword_27E204098;
  if (!qword_27E204098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E204098);
  }

  return result;
}

unint64_t sub_23C85D1F4()
{
  result = qword_27E2040B0;
  if (!qword_27E2040B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040B0);
  }

  return result;
}

unint64_t sub_23C85D24C()
{
  result = qword_27E2040B8;
  if (!qword_27E2040B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040B8);
  }

  return result;
}

unint64_t sub_23C85D2A4()
{
  result = qword_27E2040C0;
  if (!qword_27E2040C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040C0);
  }

  return result;
}

unint64_t sub_23C85D2FC()
{
  result = qword_27E2040C8;
  if (!qword_27E2040C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2040C8);
  }

  return result;
}

uint64_t sub_23C85D3F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_23C85D480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23C85D5A8()
{
  sub_23C85D7A8();
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2040E8, type metadata accessor for TranscriptProtoPayload, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2040F0, type metadata accessor for TranscriptProtoTimepoint, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C85D808(319, &qword_27E2040F8, type metadata accessor for TranscriptProtoParticipantID, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C85D808(319, &qword_27E204100, type metadata accessor for TranscriptProtoSpanID, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23C870F34();
              if (v6 <= 0x3F)
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

void sub_23C85D7A8()
{
  if (!qword_27E2040E0)
  {
    v0 = sub_23C8716D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2040E0);
    }
  }
}

void sub_23C85D808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23C85D8C8()
{
  result = type metadata accessor for TranscriptProtoSessionStart(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequest(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoPlan(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoAction(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoClientAction(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoQueryStep(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoVariableStep(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoSessionError(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoRecoverableError(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoQueryStepResults(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoActionResolverRequest(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoSafetyModeRelease(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoSafetyModeException(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoResponseGenerationRequest(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoEntitySpanMatchResult(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoContextRetrieved(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoActionCancellation(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoToolRetrievalResponse(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoSystemResponse(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoStatementResult(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoExternalAgentRequest(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoExternalAgentOutcome(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoToolResolution(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoUndoRedoRequest(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for TranscriptProtoClientUndoRedoRequest(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for TranscriptProtoTypeConversionRequest(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for TranscriptProtoTypeConversionResult(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for TranscriptProtoQueryDecorationResult(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for TranscriptProtoContinuePlanning(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for TranscriptProtoSkipStatement(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                  return 0;
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

  return result;
}

void sub_23C85DBFC()
{
  sub_23C85D808(319, &qword_27E204140, type metadata accessor for TranscriptProtoEvent, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C85DD24()
{
  sub_23C85D808(319, &qword_27E204158, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C85DE20()
{
  sub_23C85D808(319, &qword_27E204170, type metadata accessor for TranscriptProtoLocaleSettings, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204178, type metadata accessor for TranscriptProtoDeviceDetails, MEMORY[0x277D83D88]);
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

void sub_23C85DF44()
{
  sub_23C85D808(319, &qword_27E204190, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204198, type metadata accessor for TranscriptProtoRequestPrescribedPlan, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2041A0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C85E244()
{
  sub_23C85D808(319, &qword_27E204208, type metadata accessor for TranscriptProtoSpeechPackage, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

uint64_t sub_23C85E48C()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C85E54C()
{
  sub_23C85D808(319, &qword_27E204190, type metadata accessor for TranscriptProtoRequestContent, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041A0, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, MEMORY[0x277D83D88]);
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

void sub_23C85E6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(void, uint64_t))
{
  sub_23C8643D8(319, a5, MEMORY[0x277D837D0], a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C85E7CC()
{
  result = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C85E9D0()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
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

void sub_23C85EB10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(void, uint64_t))
{
  sub_23C8643D8(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C85EBC8()
{
  sub_23C85EF64(319, &qword_27E204340, type metadata accessor for TranscriptProtoActionParameterValue);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C85ED7C()
{
  sub_23C85D808(319, &qword_27E204360, type metadata accessor for TranscriptProtoToolParameterValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204368, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
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

void sub_23C85EF64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23C8716D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23C85F02C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57BBA8);
}

uint64_t sub_23C85F084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C57BBBC);
}

void sub_23C85F1DC()
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204368, type metadata accessor for TranscriptProtoPromptSelection, MEMORY[0x277D83D88]);
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

void sub_23C85F300()
{
  sub_23C85D808(319, &qword_27E204430, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C85F418()
{
  sub_23C8643D8(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
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

void sub_23C85F578()
{
  sub_23C85D808(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FBBB8, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
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

void sub_23C85F69C()
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204468, type metadata accessor for TranscriptProtoStatementResultPayload, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C85F8A8()
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204498, type metadata accessor for TranscriptProtoCandidatePromptStatus, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

void sub_23C85FA84()
{
  sub_23C85EF64(319, &qword_27E1FF558, type metadata accessor for ToolKitProtoTypedValue);
  if (v0 <= 0x3F)
  {
    sub_23C85EF64(319, &qword_27E2044C8, type metadata accessor for TranscriptProtoShimParameters);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23C85FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  result = a4(319);
  if (v11 <= 0x3F)
  {
    result = a5(319);
    if (v12 <= 0x3F)
    {
      result = a6(319);
      if (v13 <= 0x3F)
      {
        result = a7(319);
        if (v14 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_23C85FE20()
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204530, type metadata accessor for TranscriptProtoPersonQuery.Handle, MEMORY[0x277D83D88]);
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

void sub_23C85FF4C()
{
  sub_23C8643D8(319, &qword_27E204548, &type metadata for TranscriptProtoPersonQuery.Handle.Kind, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C860068()
{
  sub_23C85D808(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C860180()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
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

uint64_t sub_23C8603DC()
{
  result = type metadata accessor for TranscriptProtoIntelligenceFlowError(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_696Tm_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_697Tm_0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23C860634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_23C8606F0()
{
  result = type metadata accessor for TranscriptProtoAppRequirement(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoPermissionRequirement(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSystemRequirementMessage(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C8609CC()
{
  sub_23C85D808(319, &qword_27E2046F0, type metadata accessor for TranscriptProtoActionFailureFailure, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

void sub_23C860BCC()
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204740, type metadata accessor for TranscriptProtoUndoContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204748, type metadata accessor for TranscriptProtoFollowUpAction, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

uint64_t sub_23C860EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_300Tm_0_0_3);
}

uint64_t sub_23C860F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_301Tm_0_0_3);
}

uint64_t sub_23C860FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_23C8610C4()
{
  sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
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

void sub_23C8611EC()
{
  sub_23C85D808(319, &qword_27E1FF570, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
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

uint64_t sub_23C861370()
{
  result = type metadata accessor for TranscriptProtoActionSuccess(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoActionConfirmation(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoParameterNeedsValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoParameterConfirmation(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoParameterDisambiguation(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoParameterNotAllowed(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoActionRequirement(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoToolDisambiguation(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoActionFailure(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoValueDisambiguation(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoSnippetStream(319);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          return 0;
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
  }

  return result;
}

void sub_23C861608()
{
  sub_23C85D808(319, &qword_27E204878, type metadata accessor for TranscriptProtoProgramStatement, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_27E204880, &type metadata for TranscriptProtoPlanSource, MEMORY[0x277D83D88]);
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

uint64_t sub_23C8617A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57DDE4);
}

uint64_t sub_23C8617F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C57DDF8);
}

uint64_t sub_23C8618D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57DE0C);
}

uint64_t sub_23C86192C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C57DE20);
}

void sub_23C8619FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_23C85D808(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C861B30()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204918, type metadata accessor for TranscriptProtoActionParameterContext, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204920, type metadata accessor for TranscriptProtoQueryPayload, MEMORY[0x277D83D88]);
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

void sub_23C861D90()
{
  sub_23C8643D8(319, &qword_27E1FB008, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FB230, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x277D83D88]);
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

void sub_23C861EFC()
{
  sub_23C85D808(319, &qword_27E204990, type metadata accessor for TranscriptProtoQueryResults, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

void sub_23C862028()
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C862108()
{
  sub_23C85D808(319, &qword_27E2049B8, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2049C0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2049C8, type metadata accessor for TranscriptProtoDialogType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E2049D0, type metadata accessor for TranscriptProtoVisualOutputOptions, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C85D808(319, &qword_27E2049D8, type metadata accessor for TranscriptProtoVisualOutput, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23C870F34();
              if (v6 <= 0x3F)
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

uint64_t sub_23C8624F4()
{
  result = type metadata accessor for TranscriptProtoStaticText(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSonicText(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoGeneratedText(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoUnableToGenerate(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoSuppressed(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoCATDialog(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C862710()
{
  sub_23C85D808(319, &qword_27E204AF0, type metadata accessor for TranscriptProtoResponseParameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204AF8, type metadata accessor for TranscriptProtoResponseDialog, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204B00, type metadata accessor for TranscriptProtoResponseVisual, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C8643D8(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C8643D8(319, &qword_27E204B08, &type metadata for TranscriptProtoResponseDialogPresentationHint, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_23C85D808(319, &qword_27E204B10, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_23C870F34();
                if (v7 <= 0x3F)
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

void sub_23C862978()
{
  sub_23C8643D8(319, &qword_27E1FB018, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
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

void sub_23C862ADC()
{
  sub_23C85D808(319, &qword_27E204B38, type metadata accessor for TranscriptProtoUIType, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204B40, type metadata accessor for TranscriptProtoUILabel, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E204B48, type metadata accessor for TranscriptProtoResponseVisualOptions, MEMORY[0x277D83D88]);
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

uint64_t sub_23C862D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_index_401Tm_1);
}

uint64_t sub_23C862DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_402Tm_1);
}

void sub_23C862E7C()
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C862FD4()
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C10, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204C18, type metadata accessor for TranscriptProtoSystemPromptResolutionInput, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23C8631E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23C86328C()
{
  sub_23C85D808(319, &qword_27E204C58, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C60, type metadata accessor for TranscriptProtoParameterSet, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E204348, type metadata accessor for TranscriptProtoGlobalToolIdentifier, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C8634AC()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C90, type metadata accessor for ContextProtoRetrievedContext, MEMORY[0x277D83D88]);
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

void sub_23C8635D0()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204CA8, type metadata accessor for ContextProtoDynamicEnumerationEntity, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_444Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_445Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C8639F0()
{
  sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204CF8, type metadata accessor for TranscriptProtoCandidate, MEMORY[0x277D83D88]);
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

uint64_t sub_23C863B4C()
{
  result = type metadata accessor for ToolKitProtoTypedValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1165Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_23C870F34();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1166Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C863DD0()
{
  sub_23C85EF64(319, &qword_27E204D58, type metadata accessor for ToolKitProtoTypedValue);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
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

void sub_23C863EF0()
{
  sub_23C85D808(319, &qword_27E204D70, type metadata accessor for TranscriptProtoVariableSetter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

void sub_23C864014()
{
  sub_23C85EF64(319, &qword_27E204D88, type metadata accessor for TranscriptProtoASTFlatValue);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1489Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23C870F34();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1490Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_23C870F34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C8643D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TranscriptProtoAstpickTypeEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_23C864614()
{
  sub_23C85D808(319, &qword_27E204E78, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204E80, type metadata accessor for TranscriptProtoASTFlatValue, MEMORY[0x277D83D88]);
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

uint64_t sub_23C864814()
{
  result = type metadata accessor for TranscriptProtoASTFlatValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(319);
                                    if (v18 <= 0x3F)
                                    {
                                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                      return 0;
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
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C864A24()
{
  result = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoStatementID(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_23C864B7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_23C85EF64(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_23C870F34();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C864D20()
{
  result = type metadata accessor for TranscriptProtoValueExpression(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoStatementID(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoPrefixExpression(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoInfixExpression(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoIndexExpression(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoUpdateParametersExpression(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TranscriptProtoCallExpression(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for TranscriptProtoSayExpression(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for TranscriptProtoPickExpression(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for TranscriptProtoConfirmExpression(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for TranscriptProtoSearchExpression(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for TranscriptProtoStructuredSearchExpression(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for TranscriptProtoPickOneExpression(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for TranscriptProtoResolveToolExpression(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for TranscriptProtoUndoExpression(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for TranscriptProtoRejectExpression(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for TranscriptProtoCancelExpression(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for TranscriptProtoNoMatchingToolExpression(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for TranscriptProtoContinuePlanningExpression(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for TranscriptProtoEndOfPlanExpression(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for TranscriptProtoGetMentionedAppsExpression(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for TranscriptProtoOpenExpression(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for TranscriptProtoExplicitResolutionRequest(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for TranscriptProtoPayloadExpression(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for TranscriptProtoFormatExpression(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                    return 0;
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
      }
    }
  }

  return result;
}

uint64_t sub_23C86505C()
{
  result = type metadata accessor for TranscriptProtoValueExpressionArrayVariant(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1792Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 237)
  {
    v6 = *a1;
    if (v6 >= 0x13)
    {
      return v6 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 28)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1793Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 237)
  {
    *result = a2 + 18;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = &v7[*(a4 + 20)];

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 28)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C8653F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_23C85D808(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1846Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 253)
  {
    v6 = *a1;
    if (v6 >= 3)
    {
      return v6 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *__swift_store_extra_inhabitant_index_1847Tm(_BYTE *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = &v7[*(a4 + 20)];

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = &v7[*(a4 + 24)];

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_367Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
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
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_368Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
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
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_23C865948(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_23C85D808(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C865A00()
{
  sub_23C85D808(319, &qword_27E204FF8, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

void sub_23C865B24()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C8643D8(319, &qword_27E1FB2C0, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
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

void sub_23C865CB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_23C85EF64(319, a4, a5);
  if (v9 <= 0x3F)
  {
    sub_23C85D808(319, a6, a7, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_1147Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_1148Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C865FB0()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1138Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

void *__swift_store_extra_inhabitant_index_1139Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 24);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_23C870F34();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 28);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_23C8662B0()
{
  sub_23C85EF64(319, &qword_27E205030, type metadata accessor for TranscriptProtoStatementID);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E205088, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
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

uint64_t sub_23C8666B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_23C57FF68);
}

uint64_t sub_23C866708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolKitProtoTypedValue(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_23C580020);
}

uint64_t __swift_get_extra_inhabitant_index_268Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_269Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23C866928()
{
  sub_23C85D808(319, &qword_27E1FB270, type metadata accessor for ContextProtoRetrievedTool, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FB278, type metadata accessor for ContextProtoToolRetrievalType, MEMORY[0x277D83940]);
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

void sub_23C866A6C()
{
  sub_23C85D808(319, &qword_27E2051D0, type metadata accessor for TranscriptProtoInterpretedStatementResult, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2051D8, type metadata accessor for TranscriptProtoResponseOutput, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C866BCC()
{
  sub_23C85D808(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
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

void sub_23C866D38()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E205200, type metadata accessor for TranscriptProtoExpression, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C8643D8(319, &qword_27E1FAF68, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
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

uint64_t sub_23C866E98()
{
  result = sub_23C870F34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_376Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_23C870F34();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_377Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_23C870F34();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_23C867094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_23C85D808(319, a5, a6, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C8671FC()
{
  sub_23C8643D8(319, &qword_2814FAF78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_1891Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_23C870F34();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_1892Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_23C870F34();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23C867584()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C867678()
{
  sub_23C85D808(319, &qword_27E1FAF28, type metadata accessor for ToolKitProtoTypedValue, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E1FB1A8, type metadata accessor for ToolKitProtoTypeInstance, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
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

uint64_t __swift_get_extra_inhabitant_index_2188Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(v9 + 48);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v11 = *(v14 + 48);
    v12 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v16 = sub_23C870F34();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + *(a3 + 28);

  return v17(v18, a2, v16);
}

uint64_t __swift_store_extra_inhabitant_index_2189Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = *(v11 + 56);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, a2, v12);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a3)
  {
    v12 = v15;
    v13 = *(v16 + 56);
    v14 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v18 = sub_23C870F34();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + *(a4 + 28);

  return v19(v20, a2, a2, v18);
}

void sub_23C867AB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_23C85D808(319, a4, a5, MEMORY[0x277D83D88]);
  if (v5 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      sub_23C870F34();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23C867BC0()
{
  sub_23C85D808(319, &qword_27E1FB150, type metadata accessor for ContextProtoSpanMatchedEntity, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E204C78, type metadata accessor for TranscriptProtoRetrievedContextStatement, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_23C85D808(319, &qword_27E2052A0, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_23C85D808(319, &qword_27E1FB168, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_23C870F34();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23C867D78()
{
  sub_23C85D808(319, &qword_27E2041F0, type metadata accessor for TranscriptProtoStatementID, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C85D808(319, &qword_27E2052B8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload, MEMORY[0x277D83D88]);
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

uint64_t sub_23C86806C()
{
  result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedStringVariant(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedTypedValueVariant(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedContextVariant(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedSpanMatchedEntityVariant(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedRetrievedToolVariant(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayloadRepeatedToolQueryOutputVariant(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_23C868180(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_23C85D808(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_23C870F34();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23C868210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TranscriptProtoEvent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v52 - v12;
  v13 = sub_23C870AE4();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v52 - v23;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_23C871D14();
  MEMORY[0x23EED7100](0x206E6F6973736553, 0xEC000000203A4449);
  MEMORY[0x23EED7100](v1[2], v1[3]);
  MEMORY[0x23EED7100](0xD000000000000014, 0x800000023C8B3600);
  MEMORY[0x23EED7100](v1[6], v1[7]);
  MEMORY[0x23EED7100](0xD000000000000014, 0x800000023C8B3620);
  MEMORY[0x23EED7100](v1[4], v1[5]);
  MEMORY[0x23EED7100](0x646574616572430ALL, 0xED0000203A746120);
  v25 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v0 + v25[13], v20, &qword_27E1F9D08, &qword_23C87D090);
  v26 = type metadata accessor for TranscriptProtoTimepoint(0);
  if ((*(*(v26 - 8) + 48))(v20, 1, v26) == 1)
  {
    v27 = &qword_27E1F9D08;
    v28 = &qword_23C87D090;
    v29 = v20;
LABEL_5:
    sub_23C585C34(v29, v27, v28);
    v32 = 0xE300000000000000;
    v33 = 7104878;
    goto LABEL_7;
  }

  sub_23C5855B0(&v20[*(v26 + 28)], v24, &unk_27E1F9D10, &qword_23C874E00);
  sub_23C86C254(v20, type metadata accessor for TranscriptProtoTimepoint);
  v30 = sub_23C870EC4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v24, 1, v30) == 1)
  {
    v27 = &unk_27E1F9D10;
    v28 = &qword_23C874E00;
    v29 = v24;
    goto LABEL_5;
  }

  sub_23C870EB4();
  (*(v31 + 8))(v24, v30);
  v34 = sub_23C870A74();
  v32 = v35;
  (*(v53 + 8))(v16, v54);
  v33 = v34;
LABEL_7:
  MEMORY[0x23EED7100](v33, v32);

  MEMORY[0x23EED7100](0x64616F6C7961500ALL, 0xEA0000000000203ALL);
  sub_23C5855B0(v1 + v25[11], v9, &qword_27E1F9950, &unk_23C87CFF0);
  v36 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v36 - 8) + 48))(v9, 1, v36) == 1)
  {
    v37 = &qword_27E1F9950;
    v38 = &unk_23C87CFF0;
    v39 = v9;
LABEL_11:
    sub_23C585C34(v39, v37, v38);
    v42 = 0xE300000000000000;
    v43 = 7104878;
    goto LABEL_13;
  }

  v40 = v55;
  sub_23C5855B0(v9, v55, &qword_27E1F9958, &qword_23C873E10);
  sub_23C86C254(v9, type metadata accessor for TranscriptProtoPayload);
  v41 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
  {
    v37 = &qword_27E1F9958;
    v38 = &qword_23C873E10;
    v39 = v40;
    goto LABEL_11;
  }

  v44 = TranscriptProtoPayloadEnum.eventTypeString.getter();
  v42 = v45;
  sub_23C86C254(v40, type metadata accessor for TranscriptProtoPayloadEnum);
  v43 = v44;
LABEL_13:
  MEMORY[0x23EED7100](v43, v42);

  MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8B3640);
  sub_23C5855B0(v1 + v25[15], v5, &qword_27E1FBF40, &qword_23C87D088);
  v46 = type metadata accessor for TranscriptProtoSpanID(0);
  if ((*(*(v46 - 8) + 48))(v5, 1, v46) == 1)
  {
    sub_23C585C34(v5, &qword_27E1FBF40, &qword_23C87D088);
    v47 = 0xE300000000000000;
    v48 = 7104878;
  }

  else
  {
    sub_23C869164();
    v49 = sub_23C8711F4();
    v47 = v50;
    sub_23C86C254(v5, type metadata accessor for TranscriptProtoSpanID);
    v48 = v49;
  }

  MEMORY[0x23EED7100](v48, v47);

  return v56;
}

unint64_t sub_23C869164()
{
  result = qword_27E2024B0;
  if (!qword_27E2024B0)
  {
    type metadata accessor for TranscriptProtoSpanID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2024B0);
  }

  return result;
}

unint64_t TranscriptProtoPayloadEnum.eventTypeString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v1, v5, type metadata accessor for TranscriptProtoPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x616C50664F646E45;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x74736575716552;
      break;
    case 2:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x616572436E616C50;
      break;
    case 3:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x72436E6F69746341;
      break;
    case 4:
    case 12:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000013;
      break;
    case 5:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4373656972657551;
      break;
    case 6:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x656C626169726156;
      break;
    case 7:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6C61636974697243;
      break;
    case 8:
    case 15:
    case 29:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000010;
      break;
    case 9:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4573656972657551;
      break;
    case 10:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 14:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000011;
      break;
    case 13:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      v8 = 9;
      goto LABEL_27;
    case 16:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x61436E6F69746341;
      break;
    case 17:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x746552736C6F6F54;
      break;
    case 18:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000017;
      break;
    case 19:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000012;
      break;
    case 20:
    case 21:
    case 27:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000014;
      break;
    case 22:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000023;
      break;
    case 23:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F7365526C6F6F54;
      break;
    case 24:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F6465526F646E55;
      break;
    case 25:
    case 26:
    case 28:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      v8 = 5;
LABEL_27:
      result = v8 | 0xD000000000000010;
      break;
    case 30:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001FLL;
      break;
    case 31:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x7461745370696B53;
      break;
    case 32:
      return result;
    case 33:
      result = 0x74616E696D726554;
      break;
    default:
      sub_23C86C254(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x536E6F6973736553;
      break;
  }

  return result;
}

uint64_t TranscriptProtoPayloadEnum.description.getter()
{
  v126 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v0 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v112 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v2 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v4 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v6 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v8 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v10 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v12 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v114 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E203CE8, &qword_23C8A0EC8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v133 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBB18, &unk_23C87B950);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v129 = &v112 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E201770, &unk_23C8A1260);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v136 = &v112 - v22;
  v23 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v134 = *(v23 - 8);
  v135 = v23;
  v24 = *(v134 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v127 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v128 = &v112 - v27;
  v28 = type metadata accessor for TranscriptProtoStatementResult(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v137 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v31 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v35 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched - 8);
  v131 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TranscriptProtoSessionError(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v130 = *(Results - 8);
  v42 = *(v130 + 64);
  MEMORY[0x28223BE20](Results - 8);
  v44 = (&v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v46 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults - 8);
  v138 = &v112 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TranscriptProtoVariableStep(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v112 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TranscriptProtoClientAction(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v112 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TranscriptProtoAction(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v59 = &v112 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v112 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v139, v63, type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x74736575716552;
    case 2u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x616572436E616C50;
    case 3u:
      sub_23C86C184(v63, v59, type metadata accessor for TranscriptProtoAction);
      v66 = TranscriptProtoAction.description.getter();
      v68 = type metadata accessor for TranscriptProtoAction;
      v69 = v59;
      goto LABEL_28;
    case 4u:
      sub_23C86C184(v63, v55, type metadata accessor for TranscriptProtoClientAction);
      v66 = TranscriptProtoClientAction.description.getter();
      v68 = type metadata accessor for TranscriptProtoClientAction;
      v69 = v55;
      goto LABEL_28;
    case 5u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x4373656972657551;
    case 6u:
      sub_23C86C184(v63, v51, type metadata accessor for TranscriptProtoVariableStep);
      v87 = *v51;
      v88 = type metadata accessor for TranscriptProtoVariableSetter(0);
      v66 = MEMORY[0x23EED71B0](v87, v88);
      v67 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_27;
    case 7u:
      sub_23C86C184(v63, v40, type metadata accessor for TranscriptProtoSessionError);
      v141 = 0;
      v142 = 0xE000000000000000;
      MEMORY[0x23EED7100](0x6F6261203A6D6C6CLL, 0xEC00000028207472);
      sub_23C871DE4();
      MEMORY[0x23EED7100](41, 0xE100000000000000);
      v66 = v141;
      v68 = type metadata accessor for TranscriptProtoSessionError;
      v69 = v40;
      goto LABEL_28;
    case 8u:
    case 0x1Du:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000010;
    case 9u:
      v70 = v138;
      sub_23C86C184(v63, v138, type metadata accessor for TranscriptProtoQueryStepResults);
      v71 = *v70;
      v72 = *(*v70 + 16);
      v73 = MEMORY[0x277D84F90];
      if (v72)
      {
        v140 = MEMORY[0x277D84F90];
        sub_23C592B40(0, v72, 0);
        v73 = v140;
        v74 = v71 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
        v75 = *(v130 + 72);
        do
        {
          sub_23C86C1EC(v74, v44, type metadata accessor for TranscriptProtoQueryResults);
          v141 = 0x203A646E756F66;
          v142 = 0xE700000000000000;
          v76 = *v44;
          v77 = type metadata accessor for TranscriptProtoCandidate(0);
          v78 = MEMORY[0x23EED71B0](v76, v77);
          MEMORY[0x23EED7100](v78);

          v80 = v141;
          v79 = v142;
          sub_23C86C254(v44, type metadata accessor for TranscriptProtoQueryResults);
          v140 = v73;
          v82 = *(v73 + 16);
          v81 = *(v73 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_23C592B40((v81 > 1), v82 + 1, 1);
            v73 = v140;
          }

          *(v73 + 16) = v82 + 1;
          v83 = v73 + 16 * v82;
          *(v83 + 32) = v80;
          *(v83 + 40) = v79;
          v74 += v75;
          --v72;
        }

        while (v72);
      }

      v141 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
      sub_23C59502C();
      v84 = sub_23C871704();

      sub_23C86C254(v138, type metadata accessor for TranscriptProtoQueryStepResults);
      return v84;
    case 0xAu:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001CLL;
    case 0xBu:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000011;
    case 0xCu:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000013;
    case 0xDu:
      v85 = type metadata accessor for TranscriptProtoPayloadEnum;
      v86 = v63;
      goto LABEL_25;
    case 0xEu:
      v51 = v131;
      sub_23C86C184(v63, v131, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v141 = 0;
      v142 = 0xE000000000000000;
      sub_23C871D14();

      v141 = 0x20646E756F66;
      v142 = 0xE600000000000000;
      v140 = *(*v51 + 16);
      v65 = sub_23C871FD4();
      MEMORY[0x23EED7100](v65);

      MEMORY[0x23EED7100](0x616D206E61707320, 0xED00007365686374);
      v66 = v141;
      v67 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_27;
    case 0xFu:
      sub_23C86C184(v63, v33, type metadata accessor for TranscriptProtoContextRetrieved);
      v141 = 0;
      v142 = 0xE000000000000000;
      sub_23C871D14();
      MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8B3930);
      sub_23C871DE4();
      v66 = v141;
      v68 = type metadata accessor for TranscriptProtoContextRetrieved;
      v69 = v33;
      goto LABEL_28;
    case 0x10u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x43206E6F69746361;
    case 0x11u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x657220736C6F6F54;
    case 0x12u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000017;
    case 0x13u:
      v51 = v137;
      sub_23C86C184(v63, v137, type metadata accessor for TranscriptProtoStatementResult);
      v89 = v133;
      sub_23C5855B0(&v51[*(v28 + 20)], v133, &qword_27E203CE8, &qword_23C8A0EC8);
      v90 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
      if ((*(*(v90 - 8) + 48))(v89, 1, v90) == 1)
      {
        sub_23C585C34(v89, &qword_27E203CE8, &qword_23C8A0EC8);
        v91 = v135;
        v92 = v136;
LABEL_43:
        (*(v134 + 56))(v92, 1, 1, v91);
LABEL_44:
        sub_23C585C34(v92, &qword_27E201770, &unk_23C8A1260);
        sub_23C86C254(v51, type metadata accessor for TranscriptProtoStatementResult);
        return 0x203A746C75736572;
      }

      v95 = v129;
      sub_23C5855B0(v89, v129, &qword_27E1FBB18, &unk_23C87B950);
      sub_23C86C254(v89, type metadata accessor for TranscriptProtoStatementResultPayload);
      v96 = type metadata accessor for TranscriptProtoStatementOutcome(0);
      v97 = (*(*(v96 - 8) + 48))(v95, 1, v96);
      v91 = v135;
      v92 = v136;
      if (v97 == 1)
      {
        sub_23C585C34(v95, &qword_27E1FBB18, &unk_23C87B950);
        goto LABEL_43;
      }

      sub_23C5855B0(v95, v136, &qword_27E201770, &unk_23C8A1260);
      sub_23C86C254(v95, type metadata accessor for TranscriptProtoStatementOutcome);
      if ((*(v134 + 48))(v92, 1, v91) == 1)
      {
        goto LABEL_44;
      }

      v98 = v128;
      sub_23C86C184(v92, v128, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v99 = v127;
      sub_23C86C1EC(v98, v127, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload > 2)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v109 = v99;
            v102 = v119;
            sub_23C86C184(v109, v119, type metadata accessor for TranscriptProtoParameterConfirmation);
            v141 = 0;
            v142 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v66 = v141;
            v103 = type metadata accessor for TranscriptProtoParameterConfirmation;
          }

          else if (EnumCaseMultiPayload == 4)
          {
            v104 = v99;
            v102 = v121;
            sub_23C86C184(v104, v121, type metadata accessor for TranscriptProtoParameterDisambiguation);
            v141 = 0;
            v142 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v66 = v141;
            v103 = type metadata accessor for TranscriptProtoParameterDisambiguation;
          }

          else
          {
            v111 = v99;
            v102 = v123;
            sub_23C86C184(v111, v123, type metadata accessor for TranscriptProtoParameterNotAllowed);
            v141 = 0;
            v142 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v66 = v141;
            v103 = type metadata accessor for TranscriptProtoParameterNotAllowed;
          }
        }

        else if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v101 = v99;
            v102 = v115;
            sub_23C86C184(v101, v115, type metadata accessor for TranscriptProtoActionConfirmation);
            v141 = 0;
            v142 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v66 = v141;
            v103 = type metadata accessor for TranscriptProtoActionConfirmation;
          }

          else
          {
            v110 = v99;
            v102 = v117;
            sub_23C86C184(v110, v117, type metadata accessor for TranscriptProtoParameterNeedsValue);
            v141 = 0;
            v142 = 0xE000000000000000;
            MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
            sub_23C871DE4();
            v66 = v141;
            v103 = type metadata accessor for TranscriptProtoParameterNeedsValue;
          }
        }

        else
        {
          v105 = v99;
          v102 = v114;
          sub_23C86C184(v105, v114, type metadata accessor for TranscriptProtoActionSuccess);
          v141 = 0x203A746C75736572;
          v142 = 0xE800000000000000;
          v106 = *(v113 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
          v107 = sub_23C871B64();
          MEMORY[0x23EED7100](v107);

          v66 = v141;
          v103 = type metadata accessor for TranscriptProtoActionSuccess;
        }

LABEL_69:
        sub_23C86C254(v102, v103);
        sub_23C86C254(v98, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        v67 = type metadata accessor for TranscriptProtoStatementResult;
LABEL_27:
        v68 = v67;
        v69 = v51;
LABEL_28:
        sub_23C86C254(v69, v68);
        return v66;
      }

      if (EnumCaseMultiPayload > 8)
      {
        if (EnumCaseMultiPayload == 9)
        {
          sub_23C86C254(v98, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v51, type metadata accessor for TranscriptProtoStatementResult);
          sub_23C86C254(v99, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return 0x203A746C75736572;
        }

        else if (EnumCaseMultiPayload == 10)
        {
          sub_23C86C254(v98, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v51, type metadata accessor for TranscriptProtoStatementResult);
          sub_23C86C254(v99, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return 0xD00000000000001BLL;
        }

        else
        {
          sub_23C86C254(v98, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v51, type metadata accessor for TranscriptProtoStatementResult);
          v94 = v99;
          v93 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_40:
          sub_23C86C254(v94, v93);
          return 0xD000000000000015;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 6)
        {
          v108 = v99;
          v102 = v125;
          sub_23C86C184(v108, v125, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
          v141 = 0;
          v142 = 0xE000000000000000;
          MEMORY[0x23EED7100](0x203A746C75736572, 0xE800000000000000);
          sub_23C871DE4();
          v66 = v141;
          v103 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
          goto LABEL_69;
        }

        if (EnumCaseMultiPayload == 7)
        {
          sub_23C86C254(v98, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v51, type metadata accessor for TranscriptProtoStatementResult);
          v86 = v99;
          v85 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_25:
          sub_23C86C254(v86, v85);
          return 0xD000000000000019;
        }

        else
        {
          sub_23C86C254(v98, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_23C86C254(v51, type metadata accessor for TranscriptProtoStatementResult);
          sub_23C86C254(v99, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          return 0xD00000000000001ALL;
        }
      }

    case 0x14u:
    case 0x15u:
    case 0x1Bu:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000014;
    case 0x16u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000023;
    case 0x17u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F7365526C6F6F54;
    case 0x18u:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F6465526F646E55;
    case 0x19u:
    case 0x1Au:
    case 0x1Cu:
      v93 = type metadata accessor for TranscriptProtoPayloadEnum;
      v94 = v63;
      goto LABEL_40;
    case 0x1Eu:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001FLL;
    case 0x1Fu:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x7461745370696B53;
    case 0x20u:
      return 0xD00000000000001FLL;
    case 0x21u:
      return 0xD00000000000001CLL;
    default:
      sub_23C86C254(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x536E6F6973736553;
  }
}

uint64_t TranscriptProtoAction.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2037A0, &qword_23C8A0A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (v26 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAAF8, &unk_23C8A1180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v26 - v8);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_23C871D14();
  MEMORY[0x23EED7100](0x65286E6F69746341, 0xEF203A6449727078);
  v10 = type metadata accessor for TranscriptProtoAction(0);
  sub_23C5855B0(v0 + v10[6], v9, &qword_27E1FAAF8, &unk_23C8A1180);
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_23C585C34(v9, &qword_27E1FAAF8, &unk_23C8A1180);
    v12 = 0xE300000000000000;
    v13 = 4999502;
  }

  else
  {
    v27 = 101;
    v28 = 0xE100000000000000;
    v26[1] = *v9 - 1;
    v14 = sub_23C871FD4();
    MEMORY[0x23EED7100](v14);

    v13 = v27;
    v12 = v28;
    sub_23C86C254(v9, type metadata accessor for TranscriptProtoStatementID);
  }

  MEMORY[0x23EED7100](v13, v12);

  MEMORY[0x23EED7100](0x64496C6F6F74202CLL, 0xEA0000000000203ALL);
  sub_23C5855B0(v0 + v10[9], v5, &qword_27E2037A0, &qword_23C8A0A00);
  v15 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  if ((*(*(v15 - 8) + 48))(v5, 1, v15) == 1)
  {
    sub_23C585C34(v5, &qword_27E2037A0, &qword_23C8A0A00);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = *v5;
    v17 = v5[1];

    sub_23C86C254(v5, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  }

  v27 = v16;
  v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C871DE4();

  MEMORY[0x23EED7100](0x656C646E7562202CLL, 0xEC000000203A6449);
  v18 = (v1 + v10[7]);
  if (v18[1])
  {
    v19 = *v18;
    v20 = v18[1];
  }

  else
  {
    v20 = 0xE300000000000000;
    v19 = 7104878;
  }

  MEMORY[0x23EED7100](v19, v20);

  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8B3990);
  v21 = *(v1 + 8);
  type metadata accessor for TranscriptProtoActionParameterValue(0);
  v22 = sub_23C8716C4();
  MEMORY[0x23EED7100](v22);

  MEMORY[0x23EED7100](0x666E6F437369202CLL, 0xEF203A64656D7269);
  if (*v1)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*v1)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x23EED7100](v23, v24);

  MEMORY[0x23EED7100](41, 0xE100000000000000);
  return v29;
}

unint64_t TranscriptProtoClientAction.description.getter()
{
  sub_23C871D14();

  MEMORY[0x23EED7100](*v0, v0[1]);
  MEMORY[0x23EED7100](0x656D61726170202CLL, 0xEE00203A73726574);
  v1 = v0[2];
  type metadata accessor for ToolKitProtoTypedValue(0);
  v2 = sub_23C8716C4();
  MEMORY[0x23EED7100](v2);

  MEMORY[0x23EED7100](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t TranscriptProtoPayloadEnum.PayloadType.hashValue.getter()
{
  v1 = *v0;
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v1);
  return sub_23C872124();
}

uint64_t TranscriptProtoPayloadEnum.payloadType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v2, v7, type metadata accessor for TranscriptProtoPayloadEnum);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v9 = 39;
      goto LABEL_36;
    case 2:
      v9 = 2;
      goto LABEL_36;
    case 3:
      v9 = 3;
      goto LABEL_36;
    case 4:
      v9 = 4;
      goto LABEL_36;
    case 5:
      v9 = 5;
      goto LABEL_36;
    case 6:
      v9 = 6;
      goto LABEL_36;
    case 7:
      v9 = 9;
      goto LABEL_36;
    case 8:
      v9 = 44;
      goto LABEL_36;
    case 9:
      v9 = 15;
      goto LABEL_36;
    case 10:
      v9 = 17;
      goto LABEL_36;
    case 11:
      v9 = 21;
      goto LABEL_36;
    case 12:
      v9 = 22;
      goto LABEL_36;
    case 13:
      v9 = 24;
      goto LABEL_36;
    case 14:
      v9 = 23;
      goto LABEL_36;
    case 15:
      v9 = 25;
      goto LABEL_36;
    case 16:
      v9 = 27;
      goto LABEL_36;
    case 17:
      v9 = 26;
      goto LABEL_36;
    case 18:
      v9 = 28;
      goto LABEL_36;
    case 19:
      v9 = 29;
      goto LABEL_36;
    case 20:
      v9 = 40;
      goto LABEL_36;
    case 21:
      v9 = 32;
      goto LABEL_36;
    case 22:
      v9 = 33;
      goto LABEL_36;
    case 23:
      v9 = 34;
      goto LABEL_36;
    case 24:
      v9 = 35;
      goto LABEL_36;
    case 25:
      v9 = 36;
      goto LABEL_36;
    case 26:
      v9 = 37;
      goto LABEL_36;
    case 27:
      v9 = 38;
      goto LABEL_36;
    case 28:
      v9 = 45;
      goto LABEL_36;
    case 29:
      v9 = 46;
      goto LABEL_36;
    case 30:
      v9 = 47;
      goto LABEL_36;
    case 31:
      v9 = 48;
      goto LABEL_36;
    case 32:
      *a1 = 11;
      return result;
    case 33:
      *a1 = 12;
      return result;
    default:
      v9 = 43;
LABEL_36:
      *a1 = v9;
      return sub_23C86C254(v7, type metadata accessor for TranscriptProtoPayloadEnum);
  }
}

uint64_t TranscriptProtoStatementID.asExprID.getter()
{
  v3 = *v0 - 1;
  v1 = sub_23C871FD4();
  MEMORY[0x23EED7100](v1);

  return 101;
}

uint64_t TranscriptProtoSystemPromptResolution.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2039A8, &qword_23C8A0BF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_23C871D14();
  MEMORY[0x23EED7100](0xD000000000000020, 0x800000023C8B39D0);
  v8 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E68, &qword_23C8750A8);
  sub_23C871DE4();
  MEMORY[0x23EED7100](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  sub_23C5855B0(v0 + *(v5 + 24), v4, &qword_27E2039A8, &qword_23C8A0BF8);
  v6 = sub_23C8717D4();
  MEMORY[0x23EED7100](v6);

  MEMORY[0x23EED7100](41, 0xE100000000000000);
  return v9;
}

uint64_t TranscriptProtoActionFailureFailureEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v0, v4, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v5 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 16, v5);
  result = 0x6173694469666977;
  switch(v6)
  {
    case 1:
      goto LABEL_10;
    case 2:
      return 0xD000000000000017;
    case 3:
      return 0xD000000000000010;
    case 4:
      return result;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0x466B726F7774656ELL;
    case 7:
      return 0x466C616974726170;
    case 8:
      return 0xD000000000000013;
    case 9:
      v8 = 10;
      return v8 | 0xD000000000000010;
    case 10:
      return 0x6F4E797469746E65;
    case 11:
      return 0xD000000000000010;
    case 12:
      return 0x6F54656C62616E75;
    case 13:
      return 0x61436E6F69746361;
    case 14:
      v8 = 11;
      return v8 | 0xD000000000000010;
    case 15:
      return 0x69686374614D6F6ELL;
    case 16:
      return 0x54656C62616E752ELL;
    default:
      sub_23C86C254(v4, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
LABEL_10:
      v8 = 5;
      return v8 | 0xD000000000000010;
  }
}

unint64_t TranscriptProtoStatementOutcomeEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C86C1EC(v0, v4, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v10 = 0x6572756C696146;
    v11 = 0x5374657070696E53;
    if (EnumCaseMultiPayload == 10)
    {
      v11 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload != 9)
    {
      v10 = v11;
    }

    v12 = 0xD000000000000012;
    if (EnumCaseMultiPayload == 7)
    {
      v12 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v12 = 0xD00000000000001BLL;
    }

    if (EnumCaseMultiPayload <= 8)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v6 = 0x73736563637553;
    v7 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 4)
    {
      v7 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v7 = 0xD000000000000015;
    }

    v8 = 0xD000000000000012;
    if (EnumCaseMultiPayload != 1)
    {
      v8 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload)
    {
      v6 = v8;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }
  }

  sub_23C86C254(v4, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  return v9;
}

uint64_t sub_23C86C184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C86C1EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C86C254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23C86C2B8()
{
  result = qword_27E205430;
  if (!qword_27E205430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E205430);
  }

  return result;
}

uint64_t _s11PayloadTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 48;
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

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11PayloadTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
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
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s26AIMLInstrumentationStreams20TranscriptProtoEventV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = sub_23C870AE4();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v53 = &v46 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22);
  v57 = &v46 - v25;
  v26 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(a1 + *(v26 + 52), v9, &qword_27E1F9D08, &qword_23C87D090);
  v27 = type metadata accessor for TranscriptProtoTimepoint(0);
  v28 = *(*(v27 - 8) + 48);
  if (v28(v9, 1, v27) == 1)
  {
    v29 = &qword_27E1F9D08;
    v30 = &qword_23C87D090;
    v31 = v9;
LABEL_5:
    sub_23C585C34(v31, v29, v30);
    goto LABEL_6;
  }

  v51 = v16;
  sub_23C5855B0(&v9[*(v27 + 28)], v15, &unk_27E1F9D10, &qword_23C874E00);
  sub_23C86CA24(v9);
  v32 = sub_23C870EC4();
  v33 = *(v32 - 8);
  v50 = *(v33 + 48);
  if (v50(v15, 1, v32) == 1)
  {
    v29 = &unk_27E1F9D10;
    v30 = &qword_23C874E00;
    v31 = v15;
    goto LABEL_5;
  }

  sub_23C870EB4();
  v49 = *(v33 + 8);
  v49(v15, v32);
  v36 = v56;
  v47 = *(v56 + 32);
  v48 = v56 + 32;
  v47(v57, v24, v51);
  sub_23C5855B0(v55 + *(v26 + 52), v7, &qword_27E1F9D08, &qword_23C87D090);
  if (v28(v7, 1, v27) == 1)
  {
    v37 = &qword_27E1F9D08;
    v38 = &qword_23C87D090;
    v39 = v7;
  }

  else
  {
    v40 = v54;
    sub_23C5855B0(&v7[*(v27 + 28)], v54, &unk_27E1F9D10, &qword_23C874E00);
    sub_23C86CA24(v7);
    if (v50(v40, 1, v32) != 1)
    {
      v41 = v52;
      sub_23C870EB4();
      v49(v40, v32);
      v42 = v53;
      v43 = v51;
      v47(v53, v41, v51);
      v44 = v57;
      v34 = sub_23C870A94();
      v45 = *(v36 + 8);
      v45(v42, v43);
      v45(v44, v43);
      return v34 & 1;
    }

    v37 = &unk_27E1F9D10;
    v38 = &qword_23C874E00;
    v39 = v40;
  }

  sub_23C585C34(v39, v37, v38);
  (*(v36 + 8))(v57, v51);
LABEL_6:
  v34 = 1;
  return v34 & 1;
}

unint64_t sub_23C86C9CC()
{
  result = qword_27E201DA0;
  if (!qword_27E201DA0)
  {
    type metadata accessor for TranscriptProtoEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201DA0);
  }

  return result;
}

uint64_t sub_23C86CA24(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoTimepoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TranscriptProtoEvent.getRequest()@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v31[-v12];
  v14 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v1 + *(v14 + 44), v6, &qword_27E1F9950, &unk_23C87CFF0);
  v15 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v15 - 8) + 48))(v6, 1, v15) == 1)
  {
    sub_23C585C34(v6, &qword_27E1F9950, &unk_23C87CFF0);
    v16 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
LABEL_11:
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    sub_23C585C34(v13, &qword_27E1F9958, &qword_23C873E10);
    return result;
  }

  sub_23C5855B0(v6, v13, &qword_27E1F9958, &qword_23C873E10);
  sub_23C86CE40(v6, type metadata accessor for TranscriptProtoPayload);
  v17 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
  {
    goto LABEL_11;
  }

  sub_23C5855B0(v13, v11, &qword_27E1F9958, &qword_23C873E10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 20)
  {
    sub_23C86CE40(v11, type metadata accessor for TranscriptProtoPayloadEnum);
    goto LABEL_11;
  }

  sub_23C86CE40(v11, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_23C585C34(v13, &qword_27E1F9958, &qword_23C873E10);
  v20 = sub_23C86D0C0();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v25 = *v1;
    v24 = v1[1];

    v26 = TranscriptProtoEvent.getEventType()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9960, &qword_23C873E18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23C873D10;
    *(inited + 32) = 1954047348;
    v28 = inited + 32;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v22;
    *(inited + 56) = v23;
    v29 = sub_23C5967FC(inited);
    swift_setDeallocating();
    sub_23C585C34(v28, &qword_27E1F9968, &unk_23C873E20);
    *a1 = v25;
    *(a1 + 8) = v24;
    *(a1 + 16) = v26;
    *&result = 1954047348;
    *(a1 + 32) = xmmword_23C873D00;
    *(a1 + 48) = v29;
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_23C86CE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String_optional __swiftcall TranscriptProtoEvent.getEventType()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v0 + *(v9 + 44), v4, &qword_27E1F9950, &unk_23C87CFF0);
  v10 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    v11 = &qword_27E1F9950;
    v12 = &unk_23C87CFF0;
    v13 = v4;
  }

  else
  {
    sub_23C5855B0(v4, v8, &qword_27E1F9958, &qword_23C873E10);
    sub_23C86CE40(v4, type metadata accessor for TranscriptProtoPayload);
    v14 = type metadata accessor for TranscriptProtoPayloadEnum(0);
    if ((*(*(v14 - 8) + 48))(v8, 1, v14) != 1)
    {
      v17 = TranscriptProtoPayloadEnum.eventTypeString.getter();
      v19 = v18;
      sub_23C86CE40(v8, type metadata accessor for TranscriptProtoPayloadEnum);
      v16 = v19;
      v15 = v17;
      goto LABEL_7;
    }

    v11 = &qword_27E1F9958;
    v12 = &qword_23C873E10;
    v13 = v8;
  }

  sub_23C585C34(v13, v11, v12);
  v15 = 0;
  v16 = 0;
LABEL_7:
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

uint64_t sub_23C86D0C0()
{
  v58[4] = *MEMORY[0x277D85DE8];
  v1 = sub_23C870FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v58 - v8 + 8;
  v10 = type metadata accessor for TranscriptProtoEvent(0);
  sub_23C5855B0(v0 + *(v10 + 44), v9, &qword_27E1F9950, &unk_23C87CFF0);
  v11 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) != 1)
  {
    sub_23C870FB4();
    sub_23C86D8A0();
    v14 = sub_23C8711C4();
    v16 = v15;
    (*(v2 + 8))(v5, v1);
    sub_23C86CE40(v9, type metadata accessor for TranscriptProtoPayload);
    v17 = objc_opt_self();
    v18 = sub_23C870A14();
    v58[0] = 0;
    v19 = [v17 JSONObjectWithData:v18 options:0 error:v58];

    if (!v19)
    {
      v33 = v58[0];
      v34 = sub_23C8709B4();

      swift_willThrow();
      sub_23C595090(v14, v16);

      goto LABEL_4;
    }

    v20 = v58[0];
    sub_23C871BA4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB360, &unk_23C87AB30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_50;
    }

    v21 = v57;
    if (!*(v57 + 16))
    {
      goto LABEL_23;
    }

    v22 = sub_23C5FF898(0x74736575716572, 0xE700000000000000);
    if ((v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_23C588DC0(*(v21 + 56) + 32 * v22, v58);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v24 = v57;
    if (*(v57 + 16))
    {
      v25 = sub_23C5FF898(0x746E65746E6F63, 0xE700000000000000);
      if (v26)
      {
        sub_23C588DC0(*(v24 + 56) + 32 * v25, v58);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_23;
        }

        v27 = v57;
        if (*(v57 + 16))
        {
          v28 = sub_23C5FF898(0x686365657073, 0xE600000000000000);
          if (v29)
          {
            sub_23C588DC0(*(v27 + 56) + 32 * v28, v58);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_23;
            }

            v30 = v57;
            if (*(v57 + 16))
            {
              v31 = sub_23C5FF898(1954047348, 0xE400000000000000);
              if (v32)
              {
                sub_23C588DC0(*(v30 + 56) + 32 * v31, v58);

                if (swift_dynamicCast())
                {
                  goto LABEL_35;
                }

                goto LABEL_23;
              }
            }
          }
        }
      }
    }

LABEL_23:
    if (!*(v21 + 16))
    {
      goto LABEL_37;
    }

    v35 = sub_23C5FF898(0x74736575716572, 0xE700000000000000);
    if ((v36 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_23C588DC0(*(v21 + 56) + 32 * v35, v58);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v37 = v57;
    if (*(v57 + 16))
    {
      v38 = sub_23C5FF898(0x746E65746E6F63, 0xE700000000000000);
      if (v39)
      {
        sub_23C588DC0(*(v37 + 56) + 32 * v38, v58);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_37;
        }

        v40 = v57;
        if (*(v57 + 16))
        {
          v41 = sub_23C5FF898(1954047348, 0xE400000000000000);
          if (v42)
          {
            sub_23C588DC0(*(v40 + 56) + 32 * v41, v58);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_37;
            }

            v43 = v57;
            if (*(v57 + 16))
            {
              v44 = sub_23C5FF898(1954047348, 0xE400000000000000);
              if (v45)
              {
                sub_23C588DC0(*(v43 + 56) + 32 * v44, v58);

                if (swift_dynamicCast())
                {
LABEL_35:
                  sub_23C595090(v14, v16);

                  goto LABEL_49;
                }

                goto LABEL_37;
              }
            }
          }
        }
      }
    }

LABEL_37:
    if (!*(v21 + 16))
    {
      goto LABEL_51;
    }

    v46 = sub_23C5FF898(0xD000000000000014, 0x800000023C8B2FA0);
    if ((v47 & 1) == 0)
    {
      goto LABEL_51;
    }

    sub_23C588DC0(*(v21 + 56) + 32 * v46, v58);

    if (swift_dynamicCast())
    {
      v48 = v57;
      if (!*(v57 + 16))
      {
        goto LABEL_51;
      }

      v49 = sub_23C5FF898(0x746E65746E6F63, 0xE700000000000000);
      if ((v50 & 1) == 0)
      {
        goto LABEL_51;
      }

      sub_23C588DC0(*(v48 + 56) + 32 * v49, v58);

      if (swift_dynamicCast())
      {
        v51 = v57;
        if (!*(v57 + 16))
        {
          goto LABEL_51;
        }

        v52 = sub_23C5FF898(1954047348, 0xE400000000000000);
        if ((v53 & 1) == 0)
        {
          goto LABEL_51;
        }

        sub_23C588DC0(*(v51 + 56) + 32 * v52, v58);

        if (swift_dynamicCast())
        {
          v54 = v57;
          if (*(v57 + 16))
          {
            v55 = sub_23C5FF898(1954047348, 0xE400000000000000);
            if (v56)
            {
              sub_23C588DC0(*(v54 + 56) + 32 * v55, v58);
              sub_23C595090(v14, v16);

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_4;
              }

LABEL_49:
              result = v57;
              goto LABEL_5;
            }
          }

LABEL_51:
          sub_23C595090(v14, v16);

          goto LABEL_4;
        }
      }
    }

LABEL_50:
    sub_23C595090(v14, v16);
    goto LABEL_4;
  }

  sub_23C585C34(v9, &qword_27E1F9950, &unk_23C87CFF0);
LABEL_4:
  result = 0;
LABEL_5:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23C86D8A0()
{
  result = qword_27E201DB0;
  if (!qword_27E201DB0)
  {
    type metadata accessor for TranscriptProtoPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E201DB0);
  }

  return result;
}

uint64_t sub_23C86D8F8@<X0>(char a1@<W1>, char a2@<W3>, uint64_t a3@<X4>, int a4@<W5>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>)
{
  LODWORD(v57) = a6;
  v56 = a5;
  v47 = a4;
  v48 = a3;
  v54 = a7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB628, &unk_23C87AF70);
  v53 = *(v55 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v24 = swift_allocObject();
  v50 = v24;
  *(v24 + 16) = MEMORY[0x277D84F90];
  v49 = v24 + 16;
  if (a1)
  {
    v25 = sub_23C870AE4();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  }

  else
  {
    sub_23C870A54();
    v26 = sub_23C870AE4();
    (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
  }

  if (a2)
  {
    v27 = 1;
  }

  else
  {
    sub_23C870A54();
    v27 = 0;
  }

  v28 = sub_23C870AE4();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, v27, 1, v28);
  sub_23C60D7E8(v23, v18);
  v51 = v21;
  sub_23C60D7E8(v21, v15);
  v30 = v48;
  if (v47)
  {
    v30 = 0;
  }

  v48 = v30;
  v31 = v56;
  if (v57)
  {
    v31 = 0;
  }

  v57 = v31;
  v32 = *(v29 + 48);
  v33 = 0;
  if (v32(v18, 1, v28) != 1)
  {
    v33 = sub_23C870A84();
    (*(v29 + 8))(v18, v28);
  }

  if (v32(v15, 1, v28) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_23C870A84();
    (*(v29 + 8))(v15, v28);
  }

  v35 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v36 = [v35 initWithStartDate:v33 endDate:v34 maxEvents:v48 lastN:v57 reversed:0];

  sub_23C8714B4();
  sub_23C86E4BC();

  v37 = v36;
  sub_23C871544();

  __swift_project_boxed_opaque_existential_0(v58, v58[3]);
  v38 = v50;

  sub_23C871684();

  __swift_destroy_boxed_opaque_existential_0(v58);
  v39 = v51;
  swift_beginAccess();
  v40 = *(v38 + 16);
  v41 = type metadata accessor for AnteroEvent();

  v42 = v52;
  sub_23C8718B4();

  sub_23C60D8B0();
  v43 = v55;
  v44 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v44, v41);

  (*(v53 + 8))(v42, v43);
  sub_23C585C34(v39, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v23, &unk_27E2054F0, &unk_23C874DF0);
}

uint64_t sub_23C86DFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92B8, &qword_23C8734F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = sub_23C870AE4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_23C871484();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_23C585C34(v11, &unk_27E2054F0, &unk_23C874DF0);
  }

  (*(v13 + 32))(v19, v11, v12);
  v21 = sub_23C8714A4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v7, a1, v21);
  (*(v22 + 56))(v7, 0, 1, v21);
  (*(v13 + 16))(v17, v19, v12);
  v23 = objc_allocWithZone(type metadata accessor for AnteroEvent());
  AnteroEvent.init(intelligenceFlowEvent:timestamp:)(v7, v17);
  v24 = swift_beginAccess();
  MEMORY[0x23EED7170](v24);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v25 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23C8718D4();
  }

  sub_23C871904();
  swift_endAccess();
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_23C86E2D8()
{
  v1 = OBJC_IVAR____TtC26AIMLInstrumentationStreams16TranscriptStream_logger;
  v2 = sub_23C871654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptStream()
{
  result = qword_27E205438;
  if (!qword_27E205438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C86E3C8()
{
  result = sub_23C871654();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_23C86E4BC()
{
  result = qword_27E205448;
  if (!qword_27E205448)
  {
    sub_23C8714B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E205448);
  }

  return result;
}

uint64_t SiriTurn.ttsBegin.getter()
{
  result = SiriTurn.tts.getter();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v16 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EED7610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_23C86E734();
      v8 = sub_23C870D44();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 startedOrChanged];
        if (v10)
        {
          v11 = v10;

          sub_23C871D54();
          v12 = *(v16 + 16);
          sub_23C871D94();
          sub_23C871DA4();
          sub_23C871D64();
        }

        else
        {
        }
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v13 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_19:

  if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_22;
    }

LABEL_30:

    return 0;
  }

  result = *(v13 + 16);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_22:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x23EED7610](0, v13);
    goto LABEL_25;
  }

  if (*(v13 + 16))
  {
    v14 = *(v13 + 32);
LABEL_25:
    v15 = v14;

    return v15;
  }

  __break(1u);
  return result;
}

unint64_t sub_23C86E734()
{
  result = qword_27E1FB7F0;
  if (!qword_27E1FB7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1FB7F0);
  }

  return result;
}

uint64_t sub_23C86E780()
{
  v0 = EventGraph.uei.getter();
  if (!v0)
  {
    return sub_23C65537C();
  }

  v1 = v0;
  v14 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EED7610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_23C86E968();
      v8 = sub_23C870D44();
      if (v8)
      {

        sub_23C871D54();
        v9 = *(v14 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        v10 = v14;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    result = sub_23C871C34();
    if (result)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  result = *(v10 + 16);
  if (!result)
  {
LABEL_28:

    return sub_23C65537C();
  }

LABEL_20:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x23EED7610](0, v10);
    goto LABEL_23;
  }

  if (*(v10 + 16))
  {
    v12 = *(v10 + 32);
LABEL_23:
    v13 = v12;

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_23C86E968()
{
  result = qword_27E205450;
  if (!qword_27E205450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E205450);
  }

  return result;
}

uint64_t ComponentGroup<>.previousTurnId.getter@<X0>(unint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v34 - v5;
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6 >> 62)
  {
LABEL_32:
    v7 = sub_23C871C34();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    v38 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v8 = 0;
  v38 = MEMORY[0x277D84F90];
  v36 = a1;
  do
  {
    a1 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x23EED7610](a1, v6);
      }

      else
      {
        if (a1 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v10 = *(v6 + 8 * a1 + 32);
      }

      v9 = v10;
      v8 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_23C5A3FDC(0, &qword_27E205458, 0x277D5A830);
      v11 = sub_23C870D44();
      if (v11)
      {
        break;
      }

LABEL_7:

      ++a1;
      if (v8 == v7)
      {
        a1 = v36;
        goto LABEL_24;
      }
    }

    v12 = v11;
    v13 = [v11 previousTurnID];
    if (!v13)
    {

      v9 = v12;
      goto LABEL_7;
    }

    v14 = v13;
    v35 = sub_23C870A34();
    v16 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_23C584C5C(0, *(v38 + 2) + 1, 1, v38);
    }

    v19 = *(v38 + 2);
    v18 = *(v38 + 3);
    if (v19 >= v18 >> 1)
    {
      v38 = sub_23C584C5C((v18 > 1), v19 + 1, 1, v38);
    }

    v20 = v38;
    *(v38 + 2) = v19 + 1;
    v21 = &v20[16 * v19];
    *(v21 + 4) = v35;
    *(v21 + 5) = v16;
    a1 = v36;
  }

  while (v8 != v7);
LABEL_24:

  if (*(v38 + 2))
  {
    v22 = *(v38 + 4);
    v23 = *(v38 + 5);
    sub_23C5ACFC8(v22, v23);

    v24 = objc_allocWithZone(MEMORY[0x277CBEA90]);
    sub_23C5ACFC8(v22, v23);
    v25 = sub_23C870A14();
    v26 = [v24 initWithData_];

    v27 = [v26 si_asNSUUID];
    if (v27)
    {
      v28 = v37;
      v29 = v27;
      sub_23C870B54();

      v30 = 0;
      v26 = v29;
    }

    else
    {
      v30 = 1;
      v28 = v37;
    }

    v33 = sub_23C870B74();
    (*(*(v33 - 8) + 56))(v28, v30, 1, v33);
    sub_23C5AD03C(v28, a1);
    sub_23C595090(v22, v23);
    return sub_23C595090(v22, v23);
  }

  else
  {

    v31 = sub_23C870B74();
    return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
  }
}

uint64_t ComponentGroup<>.timeIntervalSince1970.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_27:
    v2 = sub_23C871C34();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x23EED7610](v5, v1);
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_23C5A3FDC(0, &qword_27E205460, 0x277D5A840);
        v8 = sub_23C870D44();
        if (v8)
        {
          break;
        }

        ++v5;
        if (v3 == v2)
        {
          goto LABEL_21;
        }
      }

      v9 = v8;
      [v8 timeIntervalSince1970];
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_23C5845FC(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_23C5845FC((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      *&v4[8 * v13 + 32] = v11;
    }

    while (v3 != v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_21:

  if (*(v4 + 2))
  {
    v14 = *(v4 + 4);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

unint64_t sub_23C86EFC0(unint64_t *a1, uint64_t *a2, SEL *a3, unint64_t a4)
{
  swift_beginAccess();
  v7 = *(v4 + 16);
  if (v7 >> 62)
  {
LABEL_27:
    v8 = sub_23C871C34();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v23 = a4;
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      v25 = v10;
      v11 = v9;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23EED7610](v11, v7);
        }

        else
        {
          if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v12 = *(v7 + 8 * v11 + 32);
        }

        v13 = v12;
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_23C5A3FDC(0, a1, a2);
        v14 = sub_23C870D44();
        if (v14)
        {
          break;
        }

        ++v11;
        if (v9 == v8)
        {
          v10 = v25;
          goto LABEL_21;
        }
      }

      v15 = v14;
      v16 = [v14 *a3];

      v17 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = v23(0, *(v25 + 16) + 1, 1, v25);
      }

      a4 = *(v17 + 16);
      v18 = *(v17 + 24);
      v19 = v17;
      if (a4 >= v18 >> 1)
      {
        v19 = v23(v18 > 1, a4 + 1, 1, v17);
      }

      *(v19 + 16) = a4 + 1;
      v10 = v19;
      *(v19 + 4 * a4 + 32) = v16;
    }

    while (v9 != v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

LABEL_21:

  v20 = *(v10 + 16);
  if (v20)
  {
    v21 = *(v10 + 32);
  }

  else
  {

    v21 = 0;
  }

  return v21 | ((v20 == 0) << 32);
}

uint64_t sub_23C86F228(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_23C871A54();
  if (!v26)
  {
    return sub_23C8718E4();
  }

  v48 = v26;
  v52 = sub_23C871DC4();
  v39 = sub_23C871DD4();
  sub_23C871D74();
  result = sub_23C871A44();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_23C871A94();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_23C871DB4();
      result = sub_23C871A64();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23C86F648()
{
  v1 = *v0;
  swift_beginAccess();
  v15 = v0[2];
  v12 = v1[10];
  v13 = v1[11];
  v14 = v1[12];
  v10[2] = v12;
  v10[3] = v13;
  v10[4] = v14;
  v10[5] = sub_23C86FA30;
  v10[6] = &v11;
  sub_23C871A24();
  v2 = sub_23C8716D4();

  WitnessTable = swift_getWitnessTable();
  v5 = sub_23C86F228(sub_23C86FA3C, v10, v2, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);

  v15 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C59502C();
  v6 = sub_23C871704();
  v8 = v7;

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_23C871D14();

  v15 = 0xD000000000000028;
  v16 = 0x800000023C8B3B70;
  MEMORY[0x23EED7100](v6, v8);

  MEMORY[0x23EED7100](10506, 0xE200000000000000);
  return v15;
}

uint64_t sub_23C86F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = 538976288;
  v21 = 0xE400000000000000;
  v9 = sub_23C871FD4();
  MEMORY[0x23EED7100](v9);

  MEMORY[0x23EED7100](8250, 0xE200000000000000);
  v19 = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = swift_getKeyPath();
  v10 = sub_23C871A24();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_23C86F228(sub_23C86FAC4, v18, v10, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C59502C();
  v14 = sub_23C871704();
  v16 = v15;

  MEMORY[0x23EED7100](v14, v16);

  return v20;
}

uint64_t sub_23C86F9BC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23C86FA3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  sub_23C871A24();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v7(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a2 = result;
  a2[1] = v11;
  return result;
}

id sub_23C86FAF0()
{
  sub_23C870C84();
  sub_23C870C64();
  sub_23C8709D4();
  v0 = objc_allocWithZone(MEMORY[0x277CF17F8]);
  v1 = sub_23C871774();

  v2 = [v0 initWithStoreBasePath:v1 segmentSize:0x100000 protectionClass:3];

  sub_23C5AE59C();
  v3 = objc_allocWithZone(MEMORY[0x277CF1B30]);
  v4 = sub_23C871774();

  v5 = [v3 initWithPrivateStreamIdentifier:v4 storeConfig:v2 eventDataClass:swift_getObjCClassFromMetadata()];

  return v5;
}

uint64_t type metadata accessor for UnifiedBiomeStream()
{
  result = qword_27E205470;
  if (!qword_27E205470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23C86FC70()
{
  result = sub_23C8709E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static SIOrderedEvent.event(with:dataVersion:)(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v6 = objc_allocWithZone(MEMORY[0x277D5A690]);
    v4 = sub_23C870A14();
    v5 = [v6 initWithData_];
  }

  else
  {
    if (a3 != 1)
    {
      return 0;
    }

    v3 = objc_opt_self();
    v4 = sub_23C870A14();
    v5 = [v3 deserializeFromData_];
  }

  v7 = v5;

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id sub_23C86FDC0(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = a3;
  v6 = sub_23C870A34();
  v8 = v7;

  swift_getObjCClassMetadata();
  v9 = static SIOrderedEvent.event(with:dataVersion:)(v6, v8, a4);
  sub_23C595090(v6, v8);

  return v9;
}

uint64_t sub_23C86FE54()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    sub_23C65E890(*(v0 + 16), *(v0 + 24) & 1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_23C86FEC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v85 = a8;
  v86 = a7;
  v87 = a6;
  v88 = a5;
  v82 = a4;
  v77 = a1;
  v78 = a3;
  v79 = a2;
  v97 = a9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v92 = *(v94 - 8);
  v10 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA30, &unk_23C87B530);
  v95 = *(v12 - 8);
  v96 = v12;
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v12);
  v93 = &v75 - v14;
  v15 = sub_23C870AE4();
  v83 = *(v15 - 8);
  v16 = *(v83 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v75 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v81 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v80 = &v75 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v90 = &v75 - v27;
  MEMORY[0x28223BE20](v26);
  v89 = &v75 - v28;
  v29 = sub_23C8709E4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB650, &qword_23C87B020);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v75 - v39;
  v41 = type metadata accessor for UnifiedBiomeStream();
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v45 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v84 = &v75 - v46;
  sub_23C5855B0(a10, v40, &qword_27E1FB650, &qword_23C87B020);
  sub_23C5855B0(v40, v38, &qword_27E1FB650, &qword_23C87B020);
  v47 = *(v30 + 48);
  if (v47(v38, 1, v29) == 1)
  {
    sub_23C870C84();
    sub_23C870C74();
    sub_23C585C34(v40, &qword_27E1FB650, &qword_23C87B020);
    if (v47(v38, 1, v29) != 1)
    {
      sub_23C585C34(v38, &qword_27E1FB650, &qword_23C87B020);
    }
  }

  else
  {
    sub_23C585C34(v40, &qword_27E1FB650, &qword_23C87B020);
    (*(v30 + 32))(v33, v38, v29);
  }

  (*(v30 + 32))(v45, v33, v29);
  v48 = v84;
  sub_23C870884(v45, v84);
  v49 = v83;
  if (v79)
  {
    v50 = 1;
    v52 = v89;
    v51 = v90;
  }

  else
  {
    v53 = v75;
    sub_23C870A54();
    v52 = v89;
    (*(v49 + 32))(v89, v53, v15);
    v50 = 0;
    v51 = v90;
  }

  v54 = v81;
  v55 = *(v49 + 56);
  v56 = 1;
  v55(v52, v50, 1, v15);
  if ((v82 & 1) == 0)
  {
    v57 = v76;
    sub_23C870A54();
    (*(v49 + 32))(v51, v57, v15);
    v56 = 0;
  }

  v55(v51, v56, 1, v15);
  v58 = v80;
  sub_23C5855B0(v52, v80, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C5855B0(v51, v54, &unk_27E2054F0, &unk_23C874DF0);
  v59 = *(v49 + 48);
  if (v59(v58, 1, v15) == 1)
  {
    v60 = 0;
  }

  else
  {
    v60 = sub_23C870A84();
    (*(v49 + 8))(v58, v15);
  }

  if (v59(v54, 1, v15) == 1)
  {
    v61 = 0;
  }

  else
  {
    v61 = sub_23C870A84();
    (*(v49 + 8))(v54, v15);
  }

  if (v85)
  {
    v62 = 0;
  }

  else
  {
    v62 = v86;
  }

  if (v87)
  {
    v63 = 0;
  }

  else
  {
    v63 = v88;
  }

  v64 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v60 endDate:v61 maxEvents:v63 lastN:v62 reversed:0];

  v65 = sub_23C86FAF0();
  v66 = [v65 publisherWithOptions_];

  v67 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
  v68 = v91;
  sub_23C870C14();
  v69 = type metadata accessor for TimestampedOrderedEvent();
  sub_23C611604(&qword_27E205508, &unk_27E2054E0, &unk_23C87B440);
  v71 = v93;
  v70 = v94;
  sub_23C870BB4();
  (*(v92 + 8))(v68, v70);
  sub_23C611604(&unk_27E205510, &qword_27E1FBA30, &unk_23C87B530);
  v72 = v96;
  v73 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v73, v69);

  (*(v95 + 8))(v71, v72);
  sub_23C585C34(v51, &unk_27E2054F0, &unk_23C874DF0);
  sub_23C585C34(v52, &unk_27E2054F0, &unk_23C874DF0);
  return sub_23C8708E8(v48);
}

id sub_23C8707AC(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v3 = result;
    sub_23C870D74();
    v4 = v3;
    v5 = sub_23C870D84();
    [a1 timestamp];
    v7 = v6;

    type metadata accessor for TimestampedOrderedEvent();
    result = swift_allocObject();
    *(result + 2) = v7;
    *(result + 3) = v5;
  }

  return result;
}

uint64_t sub_23C870884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedBiomeStream();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C8708E8(uint64_t a1)
{
  v2 = type metadata accessor for UnifiedBiomeStream();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}