uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseGenerationProtoStatementResultDigest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
  v4 = sub_23C870F34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_23C62DFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C62C6B4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.clientRequestID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.responseLocale.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.statementResultDigests.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.init(clientRequestID:utterance:responseMode:responseLocale:statementResultDigests:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a5;
  v18 = a9 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v17;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.undoOperation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ResponseGenerationProtoStatementResultDigest.init(toolDefinition:actionCreated:statementOutcome:undoOperation:responseManifest:returnValueTypeDisplayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = *a4;
  v11 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v11 - 8) + 56))(a7, 1, 1, v11);
  v12 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v13 = v12[5];
  v14 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v14 - 8) + 56))(a7 + v13, 1, 1, v14);
  v15 = v12[6];
  v16 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = v12[7];
  *(a7 + v17) = 2;
  v18 = v12[8];
  v19 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v19 - 8) + 56))(a7 + v18, 1, 1, v19);
  v20 = v12[9];
  v21 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v21 - 8) + 56))(a7 + v20, 1, 1, v21);
  v22 = a7 + v12[10];
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  sub_23C5842D0(a1, a7, &qword_27E1FACA8, &unk_23C87B940);
  sub_23C5842D0(a2, a7 + v13, &qword_27E1FBB28, &qword_23C87B928);
  sub_23C5842D0(a3, a7 + v15, &qword_27E1FBB18, &unk_23C87B950);
  *(a7 + v17) = v24;
  sub_23C5842D0(a5, a7 + v18, &qword_27E1FBB08, &unk_23C8A11D0);
  return sub_23C5842D0(a6, a7 + v20, &qword_27E1FBAF8, &qword_23C87B960);
}

unint64_t sub_23C62E9A8()
{
  result = qword_27E1FBB60;
  if (!qword_27E1FBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBB60);
  }

  return result;
}

unint64_t sub_23C62EA00()
{
  result = qword_27E1FBB68;
  if (!qword_27E1FBB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1FBB70, &qword_23C87BA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBB68);
  }

  return result;
}

void sub_23C62EA9C()
{
  sub_23C62ED80(319, &qword_27E1FBB88, type metadata accessor for ResponseGenerationProtoStatementResultDigest, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_23C870F34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23C62EB94()
{
  sub_23C62ED80(319, &qword_27E1FB208, type metadata accessor for ToolKitProtoToolDefinition.Version1, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_23C62ED80(319, &qword_27E1FBBA0, type metadata accessor for TranscriptProtoAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23C62ED80(319, &qword_27E1FBBA8, type metadata accessor for TranscriptProtoStatementOutcome, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_23C62EDE4();
        if (v3 <= 0x3F)
        {
          sub_23C62ED80(319, &qword_27E1FBBB8, type metadata accessor for TranscriptProtoResponseManifest, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_23C62ED80(319, &qword_27E1FBBC0, type metadata accessor for ToolKitProtoTypeDisplayRepresentation, MEMORY[0x277D83D88]);
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

void sub_23C62ED80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23C62EDE4()
{
  if (!qword_27E1FBBB0)
  {
    v0 = sub_23C871B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1FBBB0);
    }
  }
}

uint64_t sub_23C62EE34@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v58 = a8;
  v59 = a7;
  v60 = a6;
  v61 = a5;
  v55 = a2;
  v56 = a4;
  v54[1] = a1;
  v54[2] = a3;
  v68 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA10, &unk_23C87BB90);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12);
  v65 = v54 - v14;
  v15 = sub_23C870AE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v54 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v54 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v54 - v34;
  v36 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v57 = [v36 SELFProcessedEvent];
  swift_unknownObjectRelease();
  if (v55)
  {
    v37 = *(v16 + 56);
    v37(v35, 1, 1, v15);
  }

  else
  {
    sub_23C870A54();
    (*(v16 + 32))(v35, v22, v15);
    v37 = *(v16 + 56);
    v37(v35, 0, 1, v15);
  }

  if (v56)
  {
    v38 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v16 + 32))(v33, v20, v15);
    v38 = 0;
  }

  v37(v33, v38, 1, v15);
  sub_23C60D7E8(v35, v30);
  sub_23C60D7E8(v33, v27);
  v39 = *(v16 + 48);
  if (v39(v30, 1, v15) == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_23C870A84();
    (*(v16 + 8))(v30, v15);
  }

  if (v39(v27, 1, v15) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_23C870A84();
    (*(v16 + 8))(v27, v15);
  }

  if (v58)
  {
    v42 = 0;
  }

  else
  {
    v42 = v59;
  }

  if (v60)
  {
    v43 = 0;
  }

  else
  {
    v43 = v61;
  }

  v44 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v40 endDate:v41 maxEvents:v43 lastN:v42 reversed:0];

  v45 = v57;
  v46 = [v57 publisherWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
  v47 = v62;
  sub_23C870C14();
  v48 = type metadata accessor for AnteroEvent();
  sub_23C611604(&unk_2814FB1D0, &unk_27E2054E0, &unk_23C87B440);
  v49 = v64;
  v50 = v65;
  sub_23C870BB4();
  (*(v63 + 8))(v47, v49);
  sub_23C611604(&qword_27E1FBBC8, &qword_27E1FBA10, &unk_23C87BB90);
  v51 = v67;
  v52 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v52, v48);

  (*(v66 + 8))(v50, v51);
  sub_23C629578(v33);
  return sub_23C629578(v35);
}

id sub_23C62F468(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  v2 = a1;
  v3 = TimestampedOrderedEvent.init(biomeStoreEvent:)(v2);
  [v2 timestamp];
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for AnteroEvent());
  v7 = sub_23C585090(v3, v5);

  return v7;
}

uint64_t sub_23C62F564@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v58 = a8;
  v59 = a7;
  v60 = a6;
  v61 = a5;
  v55 = a2;
  v56 = a4;
  v54[1] = a1;
  v54[2] = a3;
  v68 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054E0, &unk_23C87B440);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBA30, &unk_23C87B530);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12);
  v65 = v54 - v14;
  v15 = sub_23C870AE4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2054F0, &unk_23C874DF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v54 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v54 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v54 - v34;
  v36 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v57 = [v36 SELFProcessedEvent];
  swift_unknownObjectRelease();
  if (v55)
  {
    v37 = *(v16 + 56);
    v37(v35, 1, 1, v15);
  }

  else
  {
    sub_23C870A54();
    (*(v16 + 32))(v35, v22, v15);
    v37 = *(v16 + 56);
    v37(v35, 0, 1, v15);
  }

  if (v56)
  {
    v38 = 1;
  }

  else
  {
    sub_23C870A54();
    (*(v16 + 32))(v33, v20, v15);
    v38 = 0;
  }

  v37(v33, v38, 1, v15);
  sub_23C60D7E8(v35, v30);
  sub_23C60D7E8(v33, v27);
  v39 = *(v16 + 48);
  if (v39(v30, 1, v15) == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_23C870A84();
    (*(v16 + 8))(v30, v15);
  }

  if (v39(v27, 1, v15) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_23C870A84();
    (*(v16 + 8))(v27, v15);
  }

  if (v58)
  {
    v42 = 0;
  }

  else
  {
    v42 = v59;
  }

  if (v60)
  {
    v43 = 0;
  }

  else
  {
    v43 = v61;
  }

  v44 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v40 endDate:v41 maxEvents:v43 lastN:v42 reversed:0];

  v45 = v57;
  v46 = [v57 publisherWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E205500, &qword_23C87B540);
  v47 = v62;
  sub_23C870C14();
  v48 = type metadata accessor for TimestampedOrderedEvent();
  sub_23C611604(&unk_2814FB1D0, &unk_27E2054E0, &unk_23C87B440);
  v49 = v64;
  v50 = v65;
  sub_23C870BB4();
  (*(v63 + 8))(v47, v49);
  sub_23C611604(&qword_27E1FBBD0, &qword_27E1FBA30, &unk_23C87B530);
  v51 = v67;
  v52 = sub_23C870BA4();
  MEMORY[0x23EED64F0](v52, v48);

  (*(v66 + 8))(v50, v51);
  sub_23C629578(v33);
  return sub_23C629578(v35);
}

NSObject *sub_23C62FB98(void *a1)
{
  type metadata accessor for TimestampedOrderedEvent();
  swift_allocObject();
  return TimestampedOrderedEvent.init(biomeStoreEvent:)(a1);
}

uint64_t sub_23C62FC3C()
{
  v13 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
LABEL_22:
    v2 = sub_23C871C34();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EED7610](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v8 = sub_23C870D04();

    ++v3;
    if (v8)
    {
      MEMORY[0x23EED7170]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23C8718D4();
      }

      sub_23C871904();
      v4 = v13;
      v3 = v7;
    }
  }

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v11 = MEMORY[0x23EED7610](0, v4);
    goto LABEL_19;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v4 + 32);
LABEL_19:
    v12 = v11;

    return v12;
  }

  __break(1u);
  return result;
}

void sub_23C62FF50()
{
  v1 = *(v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 < 0)
  {
    v4 = *(v0 + OBJC_IVAR___ISSiriConversation_turns);
  }

  if (!sub_23C871C34())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v2 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v1 + 32);
LABEL_6:
    v3 = *&v2[OBJC_IVAR___ISEventGraph_timestamp];

    return;
  }

  __break(1u);
}

uint64_t sub_23C630174()
{
  v1 = *(v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_23C871C34();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v3 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v3 = *(v1 + 32);
LABEL_6:
  v4 = *&v3[OBJC_IVAR___ISEventGraph_timestamp];

  return sub_23C870A54();
}

void sub_23C6303D0()
{
  v1 = *(v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v2 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v3 = v2;
  if (!EventGraph.uei.getter())
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = sub_23C62FC3C();

  sub_23C870E24();
}

id SiriConversation.__allocating_init(turns:)()
{
  v1 = objc_allocWithZone(v0);

  v5 = sub_23C5A3EBC(v2);
  sub_23C63084C(&v5);

  *&v1[OBJC_IVAR___ISSiriConversation_turns] = v5;
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, sel_init);
}

id SiriConversation.init(turns:)()
{

  v4 = sub_23C5A3EBC(v1);
  sub_23C63084C(&v4);

  *&v0[OBJC_IVAR___ISSiriConversation_turns] = v4;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SiriConversation();
  return objc_msgSendSuper2(&v3, sel_init);
}

id SiriConversation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriConversation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriConversation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23C630764()
{
  v1 = *(*v0 + OBJC_IVAR___ISSiriConversation_turns);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v2 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v3 = v2;
  if (!EventGraph.uei.getter())
  {
LABEL_14:
    __break(1u);
    return;
  }

  v4 = sub_23C62FC3C();

  sub_23C870E24();
}

uint64_t sub_23C63084C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23C64BCE4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23C6308C8(v6);
  return sub_23C871D64();
}

uint64_t sub_23C6308C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SiriTurn();
        v6 = sub_23C8718F4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_23C630A44(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23C6309CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C6309CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + OBJC_IVAR___ISEventGraph_timestamp) >= *(*v9 + OBJC_IVAR___ISEventGraph_timestamp))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C630A44(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_23C6473A0(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_23C630FE0((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23C6473A0(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_23C647314(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v7) + OBJC_IVAR___ISEventGraph_timestamp);
      v11 = *(*(*a3 + 8 * v9) + OBJC_IVAR___ISEventGraph_timestamp);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR___ISEventGraph_timestamp);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_23C584338((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_23C630FE0((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23C6473A0(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_23C647314(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(v25 + OBJC_IVAR___ISEventGraph_timestamp) >= *(*v27 + OBJC_IVAR___ISEventGraph_timestamp))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_23C630FE0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(v21 + OBJC_IVAR___ISEventGraph_timestamp) < *(*v17 + OBJC_IVAR___ISEventGraph_timestamp))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v6 + OBJC_IVAR___ISEventGraph_timestamp) >= *(*v4 + OBJC_IVAR___ISEventGraph_timestamp))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t sub_23C63122C()
{
  result = qword_27E1FBC90;
  if (!qword_27E1FBC90)
  {
    sub_23C870B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBC90);
  }

  return result;
}

uint64_t sub_23C631384(uint64_t a1)
{
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_23C871C34();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v28 = MEMORY[0x277D84F90];
    sub_23C871D84();
    result = sub_23C871BE4();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v28 = MEMORY[0x277D84F90];
  sub_23C871D84();
  v5 = -1 << *(a1 + 32);
  result = sub_23C871BB4();
  v6 = *(a1 + 36);
  v25 = result;
  v26 = v6;
  v27 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v25;
    v10 = v26;
    v12 = v27;
    sub_23C648EFC(v25, v26, v27, a1);
    sub_23C871D54();
    v13 = *(v28 + 16);
    sub_23C871D94();
    sub_23C871DA4();
    result = sub_23C871D64();
    if (v23)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_23C871C04())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDA0, &qword_23C87BE78);
      v8 = sub_23C871A04();
      sub_23C871C84();
      result = v8(v24, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_23C606430(v25, v26, v27);
        return v28;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v14 = 1 << *(a1 + 32);
      if (v11 >= v14)
      {
        goto LABEL_32;
      }

      v15 = v11 >> 6;
      v16 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v16 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v11 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v15 << 6;
        v19 = v15 + 1;
        v20 = (a1 + 64 + 8 * v15);
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_23C606430(v11, v10, 0);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_27;
          }
        }

        result = sub_23C606430(v11, v10, 0);
      }

LABEL_27:
      v25 = v14;
      v26 = v10;
      v27 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_23C631680(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v32 = MEMORY[0x277D84F90];
  sub_23C592C24(0, v1, 0);
  v2 = v32;
  v4 = v3 + 56;
  v5 = -1 << *(v3 + 32);
  result = sub_23C871BB4();
  v7 = result;
  v8 = 0;
  v25 = v3 + 64;
  v26 = v1;
  v27 = v3 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v8;
    v29 = *(v3 + 36);
    v11 = (*(v3 + 48) + 32 * v7);
    v12 = v11[1];
    v30 = v11[2];
    v31 = *v11;
    v13 = v3;
    v14 = v11[3];
    v15 = *(v32 + 16);
    v16 = *(v32 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_23C592C24((v16 > 1), v15 + 1, 1);
    }

    *(v32 + 16) = v15 + 1;
    v17 = (v32 + 32 * v15);
    v17[4] = v31;
    v17[5] = v12;
    v17[6] = v30;
    v17[7] = v14;
    v9 = 1 << *(v13 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v3 = v13;
    v4 = v27;
    v18 = *(v27 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v3 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_23C606430(v7, v29, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_23C606430(v7, v29, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v9;
    if (v28 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_23C6318C0(uint64_t a1)
{
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v31 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_23C592CC8(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v37 = a1 + 56;
    v38 = v39;
    result = sub_23C871BB4();
    v11 = result;
    v12 = 0;
    v32 = a1 + 64;
    v33 = v8;
    v34 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v37 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a1 + 36);
      v35 = v12;
      v36 = v16;
      v17 = *(a1 + 48);
      v18 = *(v4 + 72);
      sub_23C600748(v17 + v18 * v11, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v19 = v38;
      v39 = v38;
      v20 = v7;
      v22 = *(v38 + 16);
      v21 = *(v38 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_23C592CC8(v21 > 1, v22 + 1, 1);
        v19 = v39;
      }

      *(v19 + 16) = v22 + 1;
      v23 = *(v4 + 80);
      v38 = v19;
      result = sub_23C64BB10(v20, v19 + ((v23 + 32) & ~v23) + v22 * v18, type metadata accessor for SiriConversationPublisher.GraphUUID);
      a1 = v34;
      v13 = 1 << *(v34 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v24 = *(v37 + 8 * v15);
      if ((v24 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (v36 != *(v34 + 36))
      {
        goto LABEL_25;
      }

      v7 = v20;
      v25 = v24 & (-2 << (v11 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v33;
      }

      else
      {
        v26 = v15 << 6;
        v27 = v15 + 1;
        v14 = v33;
        v28 = (v32 + 8 * v15);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_23C606430(v11, v36, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_23C606430(v11, v36, 0);
      }

LABEL_4:
      v12 = v35 + 1;
      v11 = v13;
      if (v35 + 1 == v14)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23C631BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a2)
  {
    v18 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v8;
    sub_23C594470(a1, a2, a3, a4, a5, a6, a7, a8, isUniquelyReferenced_nonNull_native);

    *v8 = v33;
  }

  else
  {
    v21 = *v8;
    v22 = sub_23C5FFB88(a5, a6, a7, a8);
    LOBYTE(v21) = v23;

    if (v21)
    {
      v24 = *v9;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v9;
      v34 = *v9;
      if (!v25)
      {
        sub_23C643E14();
        v26 = v34;
      }

      v27 = *(v26 + 48) + 32 * v22;
      v28 = *(v27 + 8);
      v29 = *(v27 + 24);

      v30 = *(v26 + 56) + 32 * v22;
      v31 = *(v30 + 8);
      v32 = *(v30 + 24);

      result = sub_23C641BC4(v22, v26);
      *v9 = v26;
    }
  }

  return result;
}

uint64_t sub_23C631D24(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_23C585C34(a1, &qword_27E1FBCA8, &qword_23C87BDB8);
    sub_23C64DC30(a2, v8);
    sub_23C64BB78(a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return sub_23C585C34(v8, &qword_27E1FBCA8, &qword_23C87BDB8);
  }

  else
  {
    sub_23C64BB10(a1, v12, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_23C594BB8(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_23C64BB78(a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
    *v2 = v18;
  }

  return result;
}

void sub_23C631F00(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_23C871BF4();
    sub_23C870E34();
    sub_23C64B2C8(&qword_27E1F9B00, MEMORY[0x277D56708]);
    sub_23C871A14();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_23C56EF08();
      return;
    }

    while (1)
    {
      sub_23C64E050(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_23C871C64())
      {
        sub_23C870E34();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_23C6320F4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_23C64E414(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6321F8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_23C64E73C(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6322D8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_23C64E73C(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_23C6323B8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_23C871E14();

    if (v4)
    {
      sub_23C870E34();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_23C5FFA08(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_23C63246C(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23C871BF4();
    sub_23C870E34();
    sub_23C64B2C8(&qword_27E1F9B00, MEMORY[0x277D56708]);
    sub_23C871A14();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_23C871C64())
        {
          break;
        }

        sub_23C870E34();
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_23C56EF08();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23C63269C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v17[0] = *v13;
      v17[1] = v14;
      v17[2] = v15;
      v17[3] = v16;

      v18(v17);
      if (v3)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C6327F4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_23C600748(*(a3 + 48) + *(v6 + 72) * (v17 | (v16 << 6)), v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v19(v9);
    result = sub_23C64BB78(v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
    if (v3)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(a3 + 56 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6329A0(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_23C5FFA4C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C6434EC();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for EventTypeIdPair();
  sub_23C64BB78(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for EventTypeIdPair);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_23C641580(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_23C632A64(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_23C5FFA4C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C6432B0();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for EventTypeIdPair();
  sub_23C64BB78(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for EventTypeIdPair);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_23C641580(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_23C632B3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_23C5FFCB8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C644B24();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  sub_23C64BB78(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_23C641F78(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_23C632C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23C5FFCB8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C644D60();
      v11 = v22;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v21 = *(v13 - 8);
    v14 = *(v21 + 72) * v8;
    sub_23C64BB78(v12 + v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB10(*(v11 + 56) + v14, a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C642290(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v13;
  }

  else
  {
    v19 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_23C632D90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_23C5FFCB8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C644FD8(&unk_27E1FBCC0, &unk_23C87BDD0);
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  sub_23C64BB78(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_23C641F78(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_23C632E64()
{
  v0 = sub_23C871654();
  __swift_allocate_value_buffer(v0, qword_27E1FBBE0);
  __swift_project_value_buffer(v0, qword_27E1FBBE0);
  sub_23C588EAC();
  sub_23C871B54();
  return sub_23C871664();
}

void sub_23C632EF8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_trackingTag;
  v3 = *(v0 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_trackingTag);
  v4 = *(v2 + 8);
  v5 = objc_allocWithZone(type metadata accessor for SiriConversationPublisher.SiriConversationSubscriber(0));

  v6 = swift_unknownObjectRetain();
  v7 = sub_23C64B39C(v6, v3, v4);
  swift_unknownObjectRelease();
  v8 = *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_inner);
  *(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_inner) = v7;
  v9 = v7;

  [*(v1 + OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_upstream) subscribe_];
}

uint64_t sub_23C63316C()
{
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C6331F4()
{
  sub_23C870B74();
  sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);

  return sub_23C8716F4();
}

uint64_t sub_23C633278()
{
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
  sub_23C8716F4();
  return sub_23C872124();
}

uint64_t sub_23C633450(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CoreAnalyticsTracker();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished) = 1;
  sub_23C633E80();
  [*(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream) receiveCompletion_];
  v12 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v1 + v12, v6, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_23C585C34(v6, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C64BB10(v6, v11, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(0, 0, 1, 0, 1, 0, 1, *(v1 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount), 0);
  return sub_23C64BB78(v11, type metadata accessor for CoreAnalyticsTracker);
}

uint64_t sub_23C6336CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for CoreAnalyticsTracker();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished) = 1;
  [*(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream) cancel];
  v10 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker;
  swift_beginAccess();
  sub_23C5855B0(v0 + v10, v4, &unk_27E1FB5D0, &unk_23C874EE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_23C585C34(v4, &unk_27E1FB5D0, &unk_23C874EE0);
  }

  sub_23C64BB10(v4, v9, type metadata accessor for CoreAnalyticsTracker);
  sub_23C5FCF78(1, 0, 1, 0, 1, 0, 1, *(v0 + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount), 0);
  return sub_23C64BB78(v9, type metadata accessor for CoreAnalyticsTracker);
}

uint64_t sub_23C63391C()
{
  v1 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v42 = *(v1 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23C870B74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = v39 - v11;
  if (qword_27E1F8338 != -1)
  {
    swift_once();
  }

  v12 = sub_23C871654();
  __swift_project_value_buffer(v12, qword_27E1FBBE0);
  v13 = v0;
  v14 = sub_23C871634();
  v15 = sub_23C871AC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = v10;
    v17 = v16;
    *v16 = 67109376;
    v16[1] = *(&v13->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished);

    *(v17 + 4) = 2048;
    *(v17 + 10) = *(&v13->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp) + -300.0;
    _os_log_impl(&dword_23C56D000, v14, v15, "Conversation builder upstream finished %{BOOL}d expiry time: %f", v17, 0x12u);
    v18 = v17;
    v10 = v41;
    MEMORY[0x23EED8240](v18, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  v19 = *(&v13->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder);
  if (*(&v13->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished) == 1)
  {
    v20 = *(&v13->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder);

    v21 = sub_23C638774();

    v22 = *(v21 + 16);
    if (v22)
    {
      v43 = MEMORY[0x277D84F90];
      sub_23C592B60(0, v22, 0);
      v23 = v43;
      v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v39[1] = v21;
      v25 = v21 + v24;
      v26 = *(v42 + 72);
      v41 = (v6 + 32);
      v42 = v26;
      v27 = v40;
      do
      {
        sub_23C600748(v25, v4, type metadata accessor for SiriConversationPublisher.GraphUUID);
        (*(v6 + 16))(v27, v4, v5);
        sub_23C64BB78(v4, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v43 = v23;
        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_23C592B60(v28 > 1, v29 + 1, 1);
          v23 = v43;
        }

        *(v23 + 16) = v29 + 1;
        (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v27, v5);
        v25 += v42;
        --v22;
      }

      while (v22);
LABEL_20:

      return v23;
    }
  }

  else
  {
    v30 = *(&v13->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp) + -300.0;
    v31 = *(&v13->isa + OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder);

    v32 = sub_23C6381B4(v30);

    v33 = *(v32 + 16);
    if (v33)
    {
      v43 = MEMORY[0x277D84F90];
      sub_23C592B60(0, v33, 0);
      v23 = v43;
      v34 = v32 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v42 = *(v42 + 72);
      v40 = v32;
      v41 = (v6 + 32);
      do
      {
        sub_23C600748(v34, v4, type metadata accessor for SiriConversationPublisher.GraphUUID);
        (*(v6 + 16))(v10, v4, v5);
        sub_23C64BB78(v4, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v43 = v23;
        v35 = v10;
        v37 = *(v23 + 16);
        v36 = *(v23 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_23C592B60(v36 > 1, v37 + 1, 1);
          v23 = v43;
        }

        *(v23 + 16) = v37 + 1;
        (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37, v35, v5);
        v34 += v42;
        --v33;
        v10 = v35;
      }

      while (v33);
      goto LABEL_20;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C633E80()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_23C870B74();
  v6 = *(v109 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v109);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v84 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v97 = &v84 - v15;
  MEMORY[0x28223BE20](v14);
  v102 = &v84 - v16;
  v93 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream;
  v92 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount;
  v96 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder;
  v17 = sub_23C63391C();
  if (!*(v17 + 16))
  {
  }

  v94 = *(v6 + 16);
  v95 = v6 + 16;
  v108 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v107 = (v6 + 32);
  v100 = (v6 + 8);
  v101 = 0;
  *&v18 = 136315394;
  v88 = v18;
  v105 = v10;
  v87 = v0;
  v86 = v5;
  v85 = v13;
  v104 = v6;
  while (1)
  {
    v19 = v109;
    v20 = v97;
    v21 = v94;
    v94(v97, (v17 + v108), v109);

    v22 = v102;
    v106 = *v107;
    v106(v102, v20, v19);
    v23 = *(v1 + v96);
    v21(v5, v22, v19);

    sub_23C63906C(v5);
    v25 = v24;

    sub_23C64BB78(v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
    if (!v25)
    {
      return (*v100)(v102, v109);
    }

    v26 = type metadata accessor for SiriConversation();
    v27 = objc_allocWithZone(v26);
    v28 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      v64 = sub_23C871C34();
      if (v64)
      {
        v65 = v64;
        v28 = sub_23C65368C(v64, 0);

        sub_23C648C84(v28 + 32, v65, v25);
        v66 = v13;
        v68 = v67;

        v69 = v68 == v65;
        v13 = v66;
        if (!v69)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }
    }

    else
    {
    }

    v112 = v28;
    v29 = v101;
    sub_23C63084C(&v112);
    v101 = v29;
    if (v29)
    {
      goto LABEL_61;
    }

    *&v27[OBJC_IVAR___ISSiriConversation_turns] = v112;
    v111.receiver = v27;
    v111.super_class = v26;
    v30 = objc_msgSendSuper2(&v111, sel_init);
    v31 = *v100;
    result = (*v100)(v102, v109);
    if (!v30)
    {
      return result;
    }

    if (qword_27E1F8338 != -1)
    {
      swift_once();
    }

    v33 = sub_23C871654();
    __swift_project_value_buffer(v33, qword_27E1FBBE0);
    v34 = v30;
    v35 = sub_23C871634();
    v36 = sub_23C871AC4();

    if (!os_log_type_enabled(v35, v36))
    {

      v63 = v92;
      goto LABEL_45;
    }

    v91 = v36;
    v37 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v112 = v90;
    v99 = v37;
    *v37 = v88;
    v38 = OBJC_IVAR___ISSiriConversation_turns;
    v39 = *&v34[OBJC_IVAR___ISSiriConversation_turns];
    if (v39 >> 62)
    {
      if (v39 < 0)
      {
        v70 = *&v34[OBJC_IVAR___ISSiriConversation_turns];
      }

      if (!sub_23C871C34())
      {
        goto LABEL_55;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_55;
    }

    v89 = v35;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x23EED7610](0, v39);
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v40 = *(v39 + 32);
    }

    v41 = v40;
    v98 = v34;
    if (!EventGraph.uei.getter())
    {
      goto LABEL_59;
    }

    v42 = sub_23C62FC3C();

    sub_23C870E24();

    sub_23C64B2C8(&qword_27E1FBCA0, MEMORY[0x277CC95F0]);
    v43 = v109;
    v44 = sub_23C871FD4();
    v46 = v45;
    v31(v13, v43);
    v47 = sub_23C63C388(v44, v46, &v112);

    v48 = v99;
    *(v99 + 1) = v47;
    *(v48 + 6) = 2080;
    v49 = *&v98[v38];
    if (!(v49 >> 62))
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
        break;
      }

      goto LABEL_43;
    }

    if (v49 < 0)
    {
      v71 = *&v98[v38];
    }

    v72 = *&v98[v38];
    v73 = sub_23C871C34();
    v49 = v72;
    v50 = v73;
    if (v73)
    {
      break;
    }

LABEL_43:
    v53 = MEMORY[0x277D84F90];
LABEL_44:
    v74 = MEMORY[0x23EED71B0](v53, v109);
    v76 = v75;

    v77 = sub_23C63C388(v74, v76, &v112);

    v78 = v99;
    *(v99 + 14) = v77;
    v79 = v89;
    _os_log_impl(&dword_23C56D000, v89, v91, "Generated conversation id: %s with turns: %s", v78, 0x16u);
    v80 = v90;
    swift_arrayDestroy();
    MEMORY[0x23EED8240](v80, -1, -1);
    MEMORY[0x23EED8240](v78, -1, -1);

    v63 = v92;
    v34 = v98;
LABEL_45:
    [*(v1 + v93) receiveInput_];

    v81 = *(v1 + v63);
    v82 = __OFADD__(v81, 1);
    v83 = v81 + 1;
    if (v82)
    {
      goto LABEL_54;
    }

    *(v1 + v63) = v83;
    v17 = sub_23C63391C();
    if (!*(v17 + 16))
    {
    }
  }

  v51 = v49;
  v110 = MEMORY[0x277D84F90];
  sub_23C592B60(0, v50 & ~(v50 >> 63), 0);
  if (v50 < 0)
  {
    goto LABEL_57;
  }

  v52 = 0;
  v53 = v110;
  v54 = v51;
  v103 = v51 & 0xFFFFFFFFFFFFFF8;
  v55 = v50;
  while (1)
  {
    v56 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if ((v51 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x23EED7610](v52, v54);
    }

    else
    {
      if (v52 >= *(v103 + 16))
      {
        goto LABEL_53;
      }

      v57 = *(v54 + 8 * v52 + 32);
    }

    v58 = v57;
    if (!EventGraph.uei.getter())
    {
      goto LABEL_58;
    }

    v59 = sub_23C62FC3C();

    v60 = v105;
    sub_23C870E24();

    v110 = v53;
    v62 = *(v53 + 16);
    v61 = *(v53 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_23C592B60(v61 > 1, v62 + 1, 1);
      v53 = v110;
    }

    *(v53 + 16) = v62 + 1;
    v106((v53 + v108 + *(v104 + 72) * v62), v60, v109);
    ++v52;
    v54 = v51;
    if (v56 == v55)
    {
      v1 = v87;
      v5 = v86;
      v13 = v85;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:

  __break(1u);
  return result;
}

uint64_t sub_23C634718(char *a1)
{
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v89 = &v80[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v92 = &v80[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v80[-v10];
  v12 = sub_23C870B74();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v80[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v90 = &v80[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v80[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v93 = &v80[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v80[-v25];
  v27 = *&a1[OBJC_IVAR___ISEventGraph_timestamp];
  v28 = *&v1[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp];
  if (v27 > v28)
  {
    v28 = *&a1[OBJC_IVAR___ISEventGraph_timestamp];
  }

  v29 = v1;
  v88 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp;
  *&v1[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp] = v28;
  result = EventGraph.uei.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v31 = sub_23C62FC3C();

  sub_23C870E24();

  result = EventGraph.uei.getter();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  ComponentGroup<>.previousTurnId.getter(v11);

  v32 = (*(v13 + 48))(v11, 1, v12);
  v33 = v93;
  v91 = v26;
  if (v32 == 1)
  {
    sub_23C585C34(v11, &qword_27E1F92A0, &qword_23C8734E0);
    v34 = v29;
    if (qword_27E1F8338 != -1)
    {
      swift_once();
    }

    v35 = sub_23C871654();
    __swift_project_value_buffer(v35, qword_27E1FBBE0);
    v36 = *(v13 + 16);
    (v36)(v17, v26, v12);
    v37 = v34;
    v38 = sub_23C871634();
    v39 = sub_23C871AC4();
    v93 = v37;

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v87 = a1;
      v41 = v40;
      v89 = swift_slowAlloc();
      v94 = v89;
      *v41 = 136315394;
      sub_23C64B2C8(&qword_27E1FBCA0, MEMORY[0x277CC95F0]);
      LODWORD(v86) = v39;
      v42 = sub_23C871FD4();
      v90 = v36;
      v44 = v43;
      v45 = *(v13 + 8);
      v85 = v34;
      v45(v17, v12);
      v46 = sub_23C63C388(v42, v44, &v94);
      v36 = v90;

      *(v41 + 4) = v46;
      *(v41 + 12) = 2048;
      *(v41 + 14) = *&v85[v88];
      _os_log_impl(&dword_23C56D000, v38, v86, "Ingesting turn: %s with no previousTurnId last received timestamp: %f", v41, 0x16u);
      v47 = v89;
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x23EED8240](v47, -1, -1);
      v48 = v41;
      a1 = v87;
      MEMORY[0x23EED8240](v48, -1, -1);
    }

    else
    {

      v45 = *(v13 + 8);
      v45(v17, v12);
    }

    v71 = v92;
    v72 = *&v93[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder];
    v73 = v91;
    (v36)(v92, v91, v12);

    sub_23C635B9C(a1, v71, v27);

    sub_23C64BB78(v71, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return (v45)(v73, v12);
  }

  else
  {
    (*(v13 + 32))(v93, v11, v12);
    v49 = v29;
    if (qword_27E1F8338 != -1)
    {
      swift_once();
    }

    v87 = a1;
    v50 = sub_23C871654();
    __swift_project_value_buffer(v50, qword_27E1FBBE0);
    v51 = *(v13 + 16);
    v51(v22, v26, v12);
    v52 = v90;
    v86 = v51;
    v51(v90, v33, v12);
    v53 = v49;
    v54 = sub_23C871634();
    v55 = sub_23C871AC4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v84 = v53;
      v57 = v56;
      v83 = swift_slowAlloc();
      v94 = v83;
      *v57 = 136315650;
      sub_23C64B2C8(&qword_27E1FBCA0, MEMORY[0x277CC95F0]);
      v82 = v54;
      v58 = sub_23C871FD4();
      v85 = v49;
      v60 = v59;
      v81 = v55;
      v61 = *(v13 + 8);
      v61(v22, v12);
      v62 = sub_23C63C388(v58, v60, &v94);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v63 = v90;
      v64 = sub_23C871FD4();
      v66 = v65;
      v61(v63, v12);
      v67 = sub_23C63C388(v64, v66, &v94);

      *(v57 + 14) = v67;
      *(v57 + 22) = 2048;
      *(v57 + 24) = *&v85[v88];
      v68 = v82;
      _os_log_impl(&dword_23C56D000, v82, v81, "Ingesting turn: %s with previousTurnId: %s last received timestamp: %f", v57, 0x20u);
      v69 = v83;
      swift_arrayDestroy();
      MEMORY[0x23EED8240](v69, -1, -1);
      v70 = v57;
      v53 = v84;
      MEMORY[0x23EED8240](v70, -1, -1);
    }

    else
    {

      v61 = *(v13 + 8);
      v61(v52, v12);
      v61(v22, v12);
    }

    v74 = *&v53[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder];
    v75 = v91;
    v76 = v92;
    v77 = v86;
    v86(v92, v91, v12);
    v78 = v89;
    v79 = v93;
    v77(v89, v93, v12);

    sub_23C6370F8(v87, v76, v78, v27);

    sub_23C64BB78(v78, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB78(v76, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v61(v79, v12);
    return (v61)(v75, v12);
  }
}

id sub_23C6350F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_23C6351D4()
{
  sub_23C5A795C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23C6352E0()
{
  result = sub_23C870B74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23C63534C(unint64_t a1, void *a2, double a3)
{
  v8 = v3;
  v9 = v3[6];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3;
  v4 = a2;
  v12 = a1;
  v8[6] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  v44 = xmmword_23C874E20;
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = v12;
  swift_beginAccess();

  v13 = v8[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v8[3];
  v15 = v46[0];
  v8[3] = 0x8000000000000000;
  a1 = sub_23C5FFA08(v4);
  v17 = v15[2];
  v18 = (v16 & 1) == 0;
  v10 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v16;
  if (v15[3] < v19)
  {
    sub_23C63F7B8(v19, isUniquelyReferenced_nonNull_native, &qword_27E1F9B08, &unk_23C87BE60);
    v15 = v46[0];
    a1 = sub_23C5FFA08(v4);
    if ((v6 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

    sub_23C870E34();
    a1 = sub_23C872064();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_22:
    v42 = a1;
    sub_23C644870(&qword_27E1F9B08, &unk_23C87BE60);
    a1 = v42;
    v15 = v46[0];
    v8[3] = v46[0];
    if (v6)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_7:
  v8[3] = v15;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_8:
  v15[(a1 >> 6) + 8] |= 1 << a1;
  *(v15[6] + 8 * a1) = v4;
  *(v15[7] + 8 * a1) = MEMORY[0x277D84F90];
  v21 = v15[2];
  v10 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15[2] = v22;
  v23 = a1;
  v24 = v4;
  a1 = v23;
LABEL_10:
  v25 = v15[7] + 8 * a1;
  sub_23C6360F8(inited, sub_23C6487D4);
  swift_endAccess();
  swift_beginAccess();
  v26 = v8[5];

  v27 = sub_23C6323B8(v4, v26);

  if (v27)
  {
  }

  else
  {
    v28 = v8[4];
    v29 = swift_initStackObject();
    *(v29 + 16) = v44;
    *(v29 + 32) = v4;
    v30 = v4;

    v31 = MEMORY[0x277D84FA0];
    do
    {
      while (1)
      {

        v31 = sub_23C64913C(v32, v31);

        v46[0] = v31;

        v33 = sub_23C649230(v29, v28);

        v29 = sub_23C6495EC(v33, v46);

        if (v29 >> 62)
        {
          break;
        }

        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }
      }
    }

    while (sub_23C871C34());
LABEL_17:

    sub_23C5916F4(v31);
    v35 = v34;
    v46[0] = v34;
    MEMORY[0x28223BE20](v34);
    v43[2] = v8;
    v43[3] = v46;
    sub_23C63246C(sub_23C64BCCC, v43, v31);
  }

  v36 = v8[5];

  v37 = sub_23C6323B8(v4, v36);
  if (v37)
  {
    v38 = v37;

    swift_beginAccess();
    v39 = v38;
    v40 = v8[2];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v8[2];
    v8[2] = 0x8000000000000000;
    sub_23C593F08(v39, v41, v7);

    v8[2] = v45;
    swift_endAccess();

    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_23C63576C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v14 = v6;
  v15 = v6[6];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = a6;
  v8 = a5;
  v10 = a4;
  v9 = a3;
  v12 = a2;
  v18 = result;
  v14[6] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = v18;
  swift_beginAccess();
  v19 = v18;
  v20 = v14[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v14[3];
  v22 = v61;
  v14[3] = 0x8000000000000000;
  result = sub_23C5FFB88(v12, v9, v10, v8);
  v24 = v22[2];
  v25 = (v23 & 1) == 0;
  v16 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  LOBYTE(v11) = v23;
  if (v22[3] < v26)
  {
    sub_23C63EA50(v26, isUniquelyReferenced_nonNull_native, &unk_27E1FBDD0, &unk_23C874D10);
    v22 = v61;
    result = sub_23C5FFB88(v12, v9, v10, v8);
    if ((v11 & 1) == (v27 & 1))
    {
      goto LABEL_7;
    }

    result = sub_23C872064();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  for (v14[3] = v22; (v11 & 1) != 0; v14[3] = v61)
  {
LABEL_10:
    v32 = v22[7] + 8 * result;
    sub_23C6360F8(inited, sub_23C648964);
    swift_endAccess();
    swift_beginAccess();
    if (!*(v14[5] + 16) || (v33 = v14[5], , sub_23C5FFB88(v12, v9, v10, v8), inited = v34, result = , (inited & 1) == 0))
    {
      v35 = v14[4];

      v11 = sub_23C63BA88(v12, v9, v10, v8);

      v36 = sub_23C591B98(v11);
      v38 = v37;
      v54 = v12;
      v55 = v9;
      v57 = v36;
      v58 = v37;
      v59 = v39;
      v60 = v40;
      MEMORY[0x28223BE20](v36);
      v53[2] = v14;
      v53[3] = v41;
      inited = 0;
      sub_23C63269C(sub_23C64BBFC, v53, v11);

      v12 = v54;
      result = sub_23C58428C(v36, v38);
      v9 = v55;
    }

    v42 = v14[5];
    if (*(v42 + 16))
    {
      v43 = v14[5];

      result = sub_23C5FFB88(v12, v9, v10, v8);
      if (v44)
      {
        v45 = (*(v42 + 56) + 32 * result);
        v47 = *v45;
        v46 = v45[1];
        v48 = v45[2];
        v49 = v45[3];

        swift_beginAccess();
        v50 = v14[2];
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v56 = v14[2];
        v14[2] = 0x8000000000000000;
        sub_23C59461C(v47, v46, v48, v49, v51, v13);
        v14[2] = v56;
        swift_endAccess();
      }
    }

    else
    {
LABEL_18:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    v52 = result;
    sub_23C644140(&unk_27E1FBDD0, &unk_23C874D10);
    result = v52;
    v22 = v61;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v28 = (v22[6] + 32 * result);
  *v28 = v12;
  v28[1] = v9;
  v28[2] = v10;
  v28[3] = v8;
  *(v22[7] + 8 * result) = MEMORY[0x277D84F90];
  v29 = v22[2];
  v16 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v16)
  {
    v22[2] = v30;
    v31 = result;

    result = v31;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C635B9C(void *a1, uint64_t a2, double a3)
{
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v6[6];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_18;
  }

  v52 = v14;
  v53 = v20;
  v6[6] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = a1;
  swift_beginAccess();
  v26 = a1;
  v27 = v6[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v6[3];
  v29 = v55;
  v6[3] = 0x8000000000000000;
  v5 = sub_23C5FFCB8(a2);
  v31 = v29[2];
  v32 = (v30 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v14) = v30;
  if (v29[3] >= v33)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_7:
      v36 = v18;
      v6[3] = v29;
      if ((v14 & 1) == 0)
      {
        sub_23C600748(a2, v22, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C642D24(v5, v22, MEMORY[0x277D84F90], v29, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      v37 = v29[7] + 8 * v5;
      sub_23C6360F8(inited, sub_23C648C84);
      swift_endAccess();
      swift_beginAccess();
      v38 = v6[5];
      if (*(v38 + 16))
      {
        v39 = v6[5];

        v40 = sub_23C5FFCB8(a2);
        if (v41)
        {
          sub_23C600748(*(v38 + 56) + *(v18 + 72) * v40, v16, type metadata accessor for SiriConversationPublisher.GraphUUID);

          (*(v18 + 56))(v16, 0, 1, v53);
          goto LABEL_14;
        }
      }

      (*(v18 + 56))(v16, 1, 1, v53);
      sub_23C585C34(v16, &qword_27E1FBCA8, &qword_23C87BDB8);
      v42 = v6[4];

      v14 = sub_23C63BD68(a2);

      v18 = v52;
      v43 = sub_23C591DB0(v14, v52);
      MEMORY[0x28223BE20](v43);
      *(&v51 - 2) = v6;
      *(&v51 - 1) = v18;
      sub_23C6327F4(sub_23C64BCAC, (&v51 - 4), v14);

      v16 = v18;
LABEL_14:
      sub_23C585C34(v16, &qword_27E1FBCA8, &qword_23C87BDB8);
      v44 = v6[5];
      if (*(v44 + 16))
      {
        v45 = v6[5];

        v46 = sub_23C5FFCB8(a2);
        if (v47)
        {
          sub_23C600748(*(v44 + 56) + *(v36 + 72) * v46, v22, type metadata accessor for SiriConversationPublisher.GraphUUID);

          swift_beginAccess();
          v48 = v6[2];
          v49 = swift_isUniquelyReferenced_nonNull_native();
          v54 = v6[2];
          v6[2] = 0x8000000000000000;
          sub_23C594A44(v22, v49, a3);
          v6[2] = v54;
          swift_endAccess();
          return sub_23C64BB78(v22, type metadata accessor for SiriConversationPublisher.GraphUUID);
        }
      }

      else
      {
LABEL_19:
        __break(1u);
      }

      __break(1u);
LABEL_21:
      sub_23C644FD8(&unk_27E1FBCC0, &unk_23C87BDD0);
      v29 = v55;
    }
  }

  sub_23C640768(v33, isUniquelyReferenced_nonNull_native, &unk_27E1FBCC0, &unk_23C87BDD0);
  v29 = v55;
  v34 = sub_23C5FFCB8(a2);
  if ((v14 & 1) == (v35 & 1))
  {
    v5 = v34;
    goto LABEL_7;
  }

  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C6360F8(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_23C871C34();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_23C871C34();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_23C63C930(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_23C6361F0(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v11 = v4;
  v12 = v4[6];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_30;
  }

  v10 = a4;
  v6 = a3;
  v11[6] = v14;
  v61 = a2;
  v16 = sub_23C649848(a2, a3);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  v59 = xmmword_23C874E20;
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = a1;
  swift_beginAccess();
  v7 = v16;

  v17 = v11[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = v11[3];
  v19 = v63[0];
  v11[3] = 0x8000000000000000;
  v8 = sub_23C5FFA08(v7);
  v9 = v20;
  v21 = v19[2];
  v22 = (v20 & 1) == 0;
  sub_23C870E34();
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19[3] < v23)
  {
    sub_23C63F7B8(v23, isUniquelyReferenced_nonNull_native, &qword_27E1F9B08, &unk_23C87BE60);
    v19 = v63[0];
    v24 = sub_23C5FFA08(v7);
    if ((v9 & 1) != (v25 & 1))
    {
LABEL_35:
      sub_23C872064();
      __break(1u);
      return;
    }

    v8 = v24;
    v11[3] = v63[0];
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v11[3] = v19;
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_31:
  sub_23C644870(&qword_27E1F9B08, &unk_23C87BE60);
  v19 = v63[0];
  v11[3] = v63[0];
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = v7;
  *(v19[7] + 8 * v8) = MEMORY[0x277D84F90];
  v26 = v19[2];
  v13 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v13)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v19[2] = v27;
  v28 = v7;
LABEL_11:
  v29 = v19[7] + 8 * v8;
  sub_23C6360F8(inited, sub_23C6487D4);

  swift_endAccess();
  v30 = v11[4];

  v31 = v61;
  sub_23C63AD1C(v61, v6);

  swift_beginAccess();
  v32 = v11[5];

  v33 = sub_23C6323B8(v61, v32);

  v34 = v11[5];

  v35 = sub_23C6323B8(v6, v34);

  if (!v33 || !v35 || (v36 = v33, v37 = v35, v38 = sub_23C871B34(), v36, v37, (v38 & 1) == 0))
  {
    v39 = v11[4];
    v40 = swift_initStackObject();
    *(v40 + 16) = v59;
    *(v40 + 32) = v31;

    v41 = v31;
    v42 = MEMORY[0x277D84FA0];
    do
    {
      while (1)
      {

        v42 = sub_23C64913C(v43, v42);

        v63[0] = v42;

        v44 = sub_23C649230(v40, v39);

        v40 = sub_23C6495EC(v44, v63);

        if (v40 >> 62)
        {
          break;
        }

        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }
      }
    }

    while (sub_23C871C34());
LABEL_19:

    sub_23C5916F4(v42);
    v46 = v45;
    v63[0] = v45;
    MEMORY[0x28223BE20](v45);
    v58[2] = v11;
    v58[3] = v63;
    sub_23C63246C(sub_23C64BBD8, v58, v42);
  }

  v47 = v11[5];

  v48 = sub_23C6323B8(v31, v47);
  if (!v48)
  {
    goto LABEL_34;
  }

  v49 = v48;

  swift_beginAccess();
  v50 = v11[2];
  if (*(v50 + 16))
  {
    v51 = v11[2];

    v52 = sub_23C5FFA08(v49);
    v53 = 0.0;
    if (v54)
    {
      v53 = *(*(v50 + 56) + 8 * v52);
    }
  }

  else
  {
    v53 = 0.0;
  }

  if (v53 > v10)
  {
    v10 = v53;
  }

  swift_beginAccess();
  v55 = v49;
  v56 = v11[2];
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v11[2];
  v11[2] = 0x8000000000000000;
  sub_23C593F08(v55, v57, v10);

  v11[2] = v62;
  swift_endAccess();
}

uint64_t sub_23C636734(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v18 = v10;
  v19 = v10[6];
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_44;
  }

  v17 = a9;
  v15 = a3;
  v18[6] = v21;
  v119 = a2;
  v120 = a4;
  v121 = a6;
  v122 = a8;
  v25 = sub_23C637C60(a2, a3, a4, a5, a6, a7, a8, a10);
  v27 = v26;
  v118 = v28;
  v14 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  v114 = inited;
  *(inited + 32) = a1;
  swift_beginAccess();
  v115 = v15;

  v116 = a5;

  v117 = a7;

  v123 = a10;
  v16 = v25;

  v31 = a1;
  v32 = v18[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v142[0] = v18[3];
  v34 = v142[0];
  v18[3] = 0x8000000000000000;
  v35 = v25;
  v12 = v27;
  v36 = v27;
  v11 = v118;
  v13 = sub_23C5FFB88(v35, v36, v118, v14);
  v38 = *(v34 + 16);
  v39 = (v37 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  LOBYTE(v15) = v37;
  if (*(v34 + 24) >= v40)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_47;
    }

    while (1)
    {
LABEL_7:
      v43 = v142[0];
      v18[3] = v142[0];
      if ((v15 & 1) == 0)
      {
        v43[(v13 >> 6) + 8] |= 1 << v13;
        v44 = (v43[6] + 32 * v13);
        *v44 = v16;
        v44[1] = v12;
        v44[2] = v11;
        v44[3] = v14;
        *(v43[7] + 8 * v13) = MEMORY[0x277D84F90];
        v45 = v43[2];
        v20 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v20)
        {
          __break(1u);
          goto LABEL_49;
        }

        v43[2] = v46;
      }

      v47 = v43[7] + 8 * v13;
      sub_23C6360F8(v114, sub_23C648964);

      swift_endAccess();
      v48 = v18[4];
      v113 = v18;
      v49 = v119;
      v50 = v120;
      v52 = v115;
      v51 = v116;
      v142[0] = v119;
      v142[1] = v115;
      v142[2] = v120;
      v142[3] = v116;
      v54 = v121;
      v53 = v122;
      v55 = v117;
      v142[4] = v121;
      v142[5] = v117;
      v56 = v123;
      v142[6] = v122;
      v142[7] = v123;

      sub_23C5855B0(v142, v143, &qword_27E1F9DD0, &unk_23C874ED0);
      sub_23C63B034(v49, v52, v50, v51, v54, v55, v53, v56);

      v143[0] = v49;
      v143[1] = v52;
      v143[2] = v50;
      v143[3] = v51;
      v143[4] = v54;
      v143[5] = v55;
      v57 = v55;
      v143[6] = v53;
      v143[7] = v56;
      v58 = v113;
      swift_beginAccess();
      v59 = v58;
      v60 = *(v58 + 40);
      if (*(v60 + 16))
      {
        sub_23C5855B0(v143, &v134, &qword_27E1F9DD0, &unk_23C874ED0);

        v61 = v119;
        v14 = v52;
        v62 = v51;
        v63 = sub_23C5FFB88(v119, v52, v50, v51);
        v64 = v61;
        if (v65)
        {
          v66 = (*(v60 + 56) + 32 * v63);
          v67 = v66[1];
          v114 = *v66;
          v68 = v66[3];
          v112 = v66[2];
          v118 = v67;

          v110 = v68;
        }

        else
        {

          v114 = 0;
          v118 = 0;
          v112 = 0;
          v110 = 0;
        }
      }

      else
      {
        v14 = v52;
        v62 = v51;
        sub_23C5855B0(v143, &v134, &qword_27E1F9DD0, &unk_23C874ED0);
        v114 = 0;
        v118 = 0;
        v112 = 0;
        v110 = 0;
        v64 = v119;
      }

      v18 = v59;
      v69 = v57;

      v134 = v64;
      v135 = v14;
      v70 = v121;
      v136 = v120;
      v137 = v62;
      v138 = v121;
      v139 = v57;
      v72 = v122;
      v71 = v123;
      v140 = v122;
      v141 = v123;
      v73 = v18[5];
      v15 = v64;
      if (!*(v73 + 16))
      {
        break;
      }

      sub_23C5855B0(&v134, &v126, &qword_27E1F9DD0, &unk_23C874ED0);

      v74 = sub_23C5FFB88(v70, v69, v72, v71);
      if ((v75 & 1) == 0)
      {

        goto LABEL_20;
      }

      v76 = (*(v73 + 56) + 32 * v74);
      v16 = v76[1];
      v113 = *v76;
      v77 = v76[3];
      v111 = v76[2];

      v109 = v77;

LABEL_21:
      v78 = v135;
      v79 = v137;
      v107 = v136;
      v108 = v134;

      if (!v118 || !v16)
      {
        goto LABEL_32;
      }

      if ((v114 != v113 || v118 != v16) && (sub_23C872014() & 1) == 0)
      {
        sub_23C5A79B4(v114, v118);
        sub_23C5A79B4(v113, v16);

LABEL_32:
        v80 = v18[4];

        v81 = sub_23C63BA88(v108, v78, v107, v79);

        v82 = sub_23C591B98(v81);
        v84 = v83;
        v13 = v85;
        v14 = v16;
        v126 = v82;
        v127 = v83;
        v128 = v85;
        v129 = v86;
        MEMORY[0x28223BE20](v82);
        v105[2] = v18;
        v105[3] = &v126;
        sub_23C63269C(sub_23C64BCF0, v105, v81);

        v15 = v119;
        sub_23C58428C(v82, v84);
        goto LABEL_33;
      }

      v13 = v109;
      if (v112 == v111 && v110 == v109)
      {
        sub_23C5A79B4(v114, v118);
        sub_23C5A79B4(v113, v16);

        goto LABEL_33;
      }

      v14 = v112;
      v106 = sub_23C872014();
      v13 = v118;
      sub_23C5A79B4(v114, v118);
      sub_23C5A79B4(v113, v16);

      if ((v106 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_33:
      v87 = v115;
      v11 = v116;
      v126 = v15;
      v127 = v115;
      v12 = v120;
      v128 = v120;
      v129 = v116;
      v130 = v121;
      v131 = v117;
      v132 = v122;
      v133 = v123;
      v88 = v18[5];
      if (*(v88 + 16))
      {
        sub_23C5855B0(&v126, v125, &qword_27E1F9DD0, &unk_23C874ED0);

        v89 = sub_23C5FFB88(v15, v87, v12, v11);
        if (v90)
        {
          v108 = v16;
          v91 = (*(v88 + 56) + 32 * v89);
          v92 = *v91;
          v93 = v91[1];
          v95 = v91[2];
          v94 = v91[3];

          swift_beginAccess();
          v96 = v18[2];
          if (*(v96 + 16))
          {
            v97 = v18[2];

            v98 = sub_23C5FFB88(v92, v93, v95, v94);
            v99 = 0.0;
            v100 = v117;
            if (v101)
            {
              v99 = *(*(v96 + 56) + 8 * v98);
            }
          }

          else
          {
            v99 = 0.0;
            v100 = v117;
          }

          if (v99 > v17)
          {
            v17 = v99;
          }

          swift_beginAccess();
          v102 = v18[2];
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v124 = v18[2];
          v18[2] = 0x8000000000000000;
          sub_23C59461C(v92, v93, v95, v94, v103, v17);
          v18[2] = v124;
          swift_endAccess();
          sub_23C58428C(v113, v108);
          sub_23C58428C(v114, v118);

          v125[0] = v119;
          v125[1] = v115;
          v125[2] = v120;
          v125[3] = v116;
          v125[4] = v121;
          v125[5] = v100;
          v125[6] = v122;
          v125[7] = v123;
          return sub_23C585C34(v125, &qword_27E1F9DD0, &unk_23C874ED0);
        }
      }

      else
      {
LABEL_45:
        __break(1u);
      }

      __break(1u);
LABEL_47:
      sub_23C644140(&unk_27E1FBDD0, &unk_23C874D10);
    }

    sub_23C5855B0(&v134, &v126, &qword_27E1F9DD0, &unk_23C874ED0);
LABEL_20:
    v113 = 0;
    v16 = 0;
    v111 = 0;
    v109 = 0;
    goto LABEL_21;
  }

  sub_23C63EA50(v40, isUniquelyReferenced_nonNull_native, &unk_27E1FBDD0, &unk_23C874D10);
  v41 = sub_23C5FFB88(v16, v12, v118, v14);
  if ((v15 & 1) == (v42 & 1))
  {
    v13 = v41;
    goto LABEL_7;
  }

LABEL_49:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C6370F8(void *a1, uint64_t a2, unint64_t inited, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v104 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v101 = &v100 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v100 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v107 = &v100 - v19;
  MEMORY[0x28223BE20](v18);
  v108 = &v100 - v20;
  v110 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v112 = *(v110 - 8);
  v21 = v112[8];
  v22 = MEMORY[0x28223BE20](v110);
  v105 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v100 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v103 = &v100 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCB0, &unk_23C87BDC0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v100 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v100 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v100 - v40;
  v42 = type metadata accessor for SiriConversationPublisher.GraphUUID;
  sub_23C600748(a2, &v100 - v40, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v111 = v30;
  v43 = &v41[*(v30 + 48)];
  sub_23C600748(inited, v43, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v44 = v5[6];
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v5[6] = v46;
  if (MEMORY[0x23EED6420](v43, v41))
  {
    v47 = v43;
  }

  else
  {
    v47 = v41;
  }

  sub_23C600748(v47, v29, type metadata accessor for SiriConversationPublisher.GraphUUID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = a1;
  swift_beginAccess();
  v48 = a1;
  v49 = v5[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v114 = v5[3];
  v51 = v114;
  v5[3] = 0x8000000000000000;
  a2 = sub_23C5FFCB8(v29);
  v53 = v51[2];
  v54 = (v52 & 1) == 0;
  v55 = v53 + v54;
  if (__OFADD__(v53, v54))
  {
    goto LABEL_42;
  }

  LOBYTE(v42) = v52;
  if (v51[3] >= v55)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_45;
    }

    v5[3] = v51;
    if ((v52 & 1) == 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
LABEL_13:
      v59 = v51[7] + 8 * a2;
      sub_23C6360F8(inited, sub_23C648C84);
      sub_23C64BB78(v29, type metadata accessor for SiriConversationPublisher.GraphUUID);
      swift_endAccess();
      v60 = v5[4];
      sub_23C5855B0(v41, v39, &unk_27E1FBCB0, &unk_23C87BDC0);
      v61 = *(v111 + 48);

      sub_23C63B4B0(v39, &v39[v61]);

      sub_23C64BB78(&v39[v61], type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(v39, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C5855B0(v41, v36, &unk_27E1FBCB0, &unk_23C87BDC0);
      swift_beginAccess();
      v62 = v5[5];
      if (*(v62 + 16))
      {
        v63 = v5[5];

        v64 = sub_23C5FFCB8(v36);
        v29 = v108;
        if (v65)
        {
          sub_23C600748(*(v62 + 56) + v112[9] * v64, v108, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v66 = 0;
        }

        else
        {
          v66 = 1;
        }
      }

      else
      {
        v66 = 1;
        v29 = v108;
      }

      v67 = v112[7];
      v68 = 1;
      v67(v29, v66, 1, v110);
      v69 = v111;
      sub_23C64BB78(&v36[*(v111 + 48)], type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(v36, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v70 = v109;
      sub_23C5855B0(v41, v109, &unk_27E1FBCB0, &unk_23C87BDC0);
      v71 = *(v69 + 48);
      v72 = v5[5];
      if (*(v72 + 16))
      {
        v73 = v5[5];

        v74 = sub_23C5FFCB8(v70 + v71);
        v36 = v107;
        if (v75)
        {
          sub_23C600748(*(v72 + 56) + v112[9] * v74, v107, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v68 = 0;
        }

        else
        {
          v68 = 1;
        }
      }

      else
      {
        v36 = v107;
      }

      v76 = v68;
      v77 = v110;
      v67(v36, v76, 1, v110);
      v78 = v109;
      sub_23C64BB78(v109 + v71, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(v78, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v79 = v112[6];
      v80 = v79(v29, 1, v77);
      v42 = v106;
      if (v80 == 1 || v79(v36, 1, v77) == 1)
      {
        goto LABEL_30;
      }

      a2 = v102;
      sub_23C5855B0(v29, v102, &qword_27E1FBCA8, &qword_23C87BDB8);
      if (v79(a2, 1, v77) == 1)
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v81 = v101;
      sub_23C5855B0(v36, v101, &qword_27E1FBCA8, &qword_23C87BDB8);
      if (v79(v81, 1, v77) == 1)
      {
        goto LABEL_48;
      }

      v82 = sub_23C870B44();
      inited = type metadata accessor for SiriConversationPublisher.GraphUUID;
      sub_23C64BB78(v81, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64BB78(a2, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v29 = v108;
      if ((v82 & 1) == 0)
      {
LABEL_30:
        v83 = v5[4];

        v84 = sub_23C63BD68(v41);

        a2 = v104;
        v85 = sub_23C591DB0(v84, v104);
        MEMORY[0x28223BE20](v85);
        *(&v100 - 2) = v5;
        *(&v100 - 1) = a2;
        inited = 0;
        sub_23C6327F4(sub_23C64B310, (&v100 - 4), v84);

        sub_23C585C34(a2, &qword_27E1FBCA8, &qword_23C87BDB8);
      }

      sub_23C5855B0(v41, v39, &unk_27E1FBCB0, &unk_23C87BDC0);
      v86 = v5[5];
      if (*(v86 + 16))
      {
        v87 = *(v111 + 48);
        v88 = v5[5];

        v89 = sub_23C5FFCB8(v39);
        if (v90)
        {
          sub_23C600748(*(v86 + 56) + v112[9] * v89, v42, type metadata accessor for SiriConversationPublisher.GraphUUID);

          sub_23C64BB78(&v39[v87], type metadata accessor for SiriConversationPublisher.GraphUUID);
          sub_23C64BB78(v39, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v91 = v105;
          sub_23C600748(v42, v105, type metadata accessor for SiriConversationPublisher.GraphUUID);
          swift_beginAccess();
          v92 = v5[2];
          if (*(v92 + 16))
          {
            v93 = v5[2];

            v94 = sub_23C5FFCB8(v42);
            v95 = 0.0;
            if (v96)
            {
              v95 = *(*(v92 + 56) + 8 * v94);
            }
          }

          else
          {
            v95 = 0.0;
          }

          if (v95 > a4)
          {
            a4 = v95;
          }

          swift_beginAccess();
          v97 = v5[2];
          v98 = swift_isUniquelyReferenced_nonNull_native();
          v113 = v5[2];
          v5[2] = 0x8000000000000000;
          sub_23C594A44(v91, v98, a4);
          sub_23C64BB78(v91, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v5[2] = v113;
          swift_endAccess();
          sub_23C64BB78(v42, type metadata accessor for SiriConversationPublisher.GraphUUID);
          sub_23C585C34(v41, &unk_27E1FBCB0, &unk_23C87BDC0);
          sub_23C585C34(v36, &qword_27E1FBCA8, &qword_23C87BDB8);
          return sub_23C585C34(v29, &qword_27E1FBCA8, &qword_23C87BDB8);
        }
      }

      else
      {
LABEL_43:
        __break(1u);
      }

      __break(1u);
LABEL_45:
      sub_23C644FD8(&unk_27E1FBCC0, &unk_23C87BDD0);
      v51 = v114;
      v5[3] = v114;
      if ((v42 & 1) == 0)
      {
LABEL_12:
        v58 = v103;
        sub_23C600748(v29, v103, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C642D24(a2, v58, MEMORY[0x277D84F90], v51, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }
    }
  }

  sub_23C640768(v55, isUniquelyReferenced_nonNull_native, &unk_27E1FBCC0, &unk_23C87BDD0);
  v51 = v114;
  v56 = sub_23C5FFCB8(v29);
  if ((v42 & 1) == (v57 & 1))
  {
    a2 = v56;
    v5[3] = v51;
    if ((v42 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_49:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C637C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a7 == a3 && a8 == a4 || (sub_23C872014()) && a5 == a1 && a6 == a2 || (sub_23C872014() & 1) == 0)
  {
    a5 = a1;
  }

  return a5;
}

uint64_t sub_23C637D50(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v26 = a1;

  v5 = 0;
  v6 = sub_23C64B010(v4, sub_23C60C740, v25, sub_23C64AD24, sub_23C64AD24);

  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = sub_23C64D4F0(*(v6 + 16), 0);
    v10 = sub_23C652C14(&v27, v9 + 4, v7, v6);

    sub_23C56EF08();
    if (v10 != v7)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v27 = v9;
  sub_23C6456D0(&v27);

  v11 = v27;
  v5 = v27[2];
  if (v5)
  {
    v27 = v8;
    sub_23C592C24(0, v5, 0);
    v12 = 0;
    v13 = v27;
    v14 = v11 + 7;
    v23 = v5;
    v24 = v11;
    while (v12 < v11[2])
    {
      v16 = *(v14 - 3);
      v15 = *(v14 - 2);
      v18 = *(v14 - 1);
      v17 = *v14;
      v27 = v13;
      v19 = v13[2];
      v20 = v13[3];

      if (v19 >= v20 >> 1)
      {
        sub_23C592C24((v20 > 1), v19 + 1, 1);
        v13 = v27;
      }

      ++v12;
      v13[2] = v19 + 1;
      v21 = &v13[4 * v19];
      v21[4] = v16;
      v21[5] = v15;
      v21[6] = v18;
      v21[7] = v17;
      v14 += 5;
      v5 = v23;
      v11 = v24;
      if (v23 == v12)
      {

        return v13;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

void *sub_23C637F9C(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *&v17[2] = a1;

  v5 = 0;
  v6 = sub_23C64B010(v4, sub_23C60BFE8, v17, sub_23C64AEAC, sub_23C64AEAC);

  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = sub_23C64D3D0(*(v6 + 16), 0);
    v10 = sub_23C6527F4(&v18, v9 + 4, v7, v6);

    sub_23C56EF08();
    if (v10 != v7)
    {
      goto LABEL_12;
    }

    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v18 = v9;
  sub_23C60922C(&v18);

  v11 = v18;
  v5 = v18[2];
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v18 = v8;
  sub_23C871D84();
  v12 = 0;
  v13 = 4;
  while (v12 < v11[2])
  {
    ++v12;
    v14 = v11[v13];
    sub_23C871D54();
    v15 = v18[2];
    sub_23C871D94();
    sub_23C871DA4();
    sub_23C871D64();
    v13 += 2;
    if (v5 == v12)
    {

      return v18;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_23C6381B4(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v1 + 16);
  v33 = a1;

  v14 = sub_23C64B010(v13, sub_23C60C740, v32, sub_23C64B910, sub_23C64B910);

  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = sub_23C64D650(*(v14 + 16), 0);
    v18 = sub_23C653078(v34, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v15, v14);
    v19 = v34[2];
    v29 = v34[3];
    v30 = v18;
    v28 = v34[4];

    sub_23C56EF08();
    if (v30 != v15)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v34[0] = v17;
  sub_23C645848(v34);

  v20 = v34[0];
  v19 = v34[0][2];
  if (v19)
  {
    v21 = v11;
    v34[0] = v16;
    sub_23C592CC8(0, v19, 0);
    v22 = 0;
    v23 = v34[0];
    v29 = (v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
    v30 = v4;
    while (v22 < v20[2])
    {
      v24 = v20;
      sub_23C5855B0(v29 + *(v30 + 72) * v22, v7, &qword_27E1F9A98, &qword_23C874AF0);
      sub_23C600748(v7, v21, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C585C34(v7, &qword_27E1F9A98, &qword_23C874AF0);
      v34[0] = v23;
      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        sub_23C592CC8(v25 > 1, v26 + 1, 1);
        v23 = v34[0];
      }

      ++v22;
      v23[2] = v26 + 1;
      sub_23C64BB10(v21, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v20 = v24;
      if (v19 == v22)
      {

        return v23;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C63858C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_23C64D4F0(*(v1 + 16), 0);
    v4 = sub_23C652C14(&v20, v3 + 4, v2, v1);
    swift_bridgeObjectRetain_n();
    sub_23C56EF08();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v20 = v3;
  sub_23C6456D0(&v20);

  v5 = v20;
  v6 = v20[2];
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_23C592C24(0, v6, 0);
    v7 = 0;
    v8 = v20;
    v9 = v5 + 7;
    v18 = v6;
    v19 = v5;
    while (v7 < v5[2])
    {
      v11 = *(v9 - 3);
      v10 = *(v9 - 2);
      v13 = *(v9 - 1);
      v12 = *v9;
      v20 = v8;
      v14 = v8[2];
      v15 = v8[3];

      if (v14 >= v15 >> 1)
      {
        sub_23C592C24((v15 > 1), v14 + 1, 1);
        v8 = v20;
      }

      ++v7;
      v8[2] = v14 + 1;
      v16 = &v8[4 * v14];
      v16[4] = v11;
      v16[5] = v10;
      v16[6] = v13;
      v16[7] = v12;
      v9 += 5;
      v6 = v18;
      v5 = v19;
      if (v18 == v7)
      {

        return v8;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_23C638774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  v23 = v2;
  if (v11)
  {
    v12 = sub_23C64D650(v11, 0);
    v13 = sub_23C653078(v24, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v11, v10);
    v21 = v24[4];
    swift_bridgeObjectRetain_n();
    sub_23C56EF08();
    if (v13 != v11)
    {
LABEL_15:
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v23;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v24[0] = v12;
  v12 = 0;
  sub_23C645848(v24);

  v14 = v24[0];
  v15 = v24[0][2];
  if (v15)
  {
    v24[0] = MEMORY[0x277D84F90];
    v21 = v15;
    sub_23C592CC8(0, v15, 0);
    v16 = 0;
    v17 = v24[0];
    v18 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v16 < v14[2])
    {
      sub_23C5855B0(&v18[*(v2 + 72) * v16], v5, &qword_27E1F9A98, &qword_23C874AF0);
      sub_23C600748(v5, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C585C34(v5, &qword_27E1F9A98, &qword_23C874AF0);
      v24[0] = v17;
      v12 = v17[2];
      v19 = v17[3];
      if (v12 >= v19 >> 1)
      {
        sub_23C592CC8(v19 > 1, v12 + 1, 1);
        v17 = v24[0];
      }

      ++v16;
      v17[2] = v12 + 1;
      sub_23C64BB10(v9, v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v12, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v2 = v23;
      if (v21 == v16)
      {

        return v17;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C638AD4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);

  v5 = sub_23C6323B8(a1, v4);

  if (!v5)
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
LABEL_18:

    return 0;
  }

  v7 = *(v2 + 16);

  v8 = sub_23C5FFA08(v5);
  if ((v9 & 1) == 0)
  {

    goto LABEL_18;
  }

  v23 = *(*(v6 + 56) + 8 * v8);

  v10 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C874E20;
  *(inited + 32) = a1;

  v12 = a1;
  v13 = MEMORY[0x277D84FA0];
  do
  {
    while (1)
    {

      v13 = sub_23C64913C(v14, v13);

      v24 = v13;

      v15 = sub_23C649230(inited, v10);

      inited = sub_23C6495EC(v15, &v24);

      if (inited >> 62)
      {
        break;
      }

      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }
    }
  }

  while (sub_23C871C34());
LABEL_9:

  v16 = sub_23C631384(v13);

  sub_23C6499B8(v16, v2);

  if (v16 >> 62)
  {
    v17 = sub_23C871C34();
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_23:

    v22 = MEMORY[0x277D84F90];
LABEL_24:
    sub_23C6393EC(v22);

    return v23;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_11:
  v24 = MEMORY[0x277D84F90];
  result = sub_23C871D84();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EED7610](v19, v16);
      }

      else
      {
        v21 = *(v16 + 8 * v19 + 32);
      }

      ++v19;
      sub_23C871D54();
      v20 = v24[2];
      sub_23C871D94();
      sub_23C871DA4();
      sub_23C871D64();
    }

    while (v17 != v19);

    v22 = v24;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C638DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 40);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v12 & 1) == 0)
  {
LABEL_14:

    return 0;
  }

  v13 = (*(v10 + 56) + 32 * v11);
  v15 = *v13;
  v14 = v13[1];
  v17 = v13[2];
  v16 = v13[3];

  swift_beginAccess();
  v18 = *(v5 + 16);
  if (!*(v18 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v19 = *(v5 + 16);

  v20 = sub_23C5FFB88(v15, v14, v17, v16);
  if ((v21 & 1) == 0)
  {

    goto LABEL_13;
  }

  v36 = *(*(v18 + 56) + 8 * v20);

  v22 = *(v5 + 32);

  v23 = sub_23C63BA88(a1, a2, a3, a4);

  v24 = sub_23C631680(v23);

  sub_23C649DE0(v24, v5);

  v25 = *(v24 + 16);
  if (v25)
  {
    v37 = MEMORY[0x277D84F90];
    sub_23C592C24(0, v25, 0);
    v26 = v37;
    v27 = (v24 + 56);
    do
    {
      v28 = *(v27 - 3);
      v29 = *(v27 - 2);
      v30 = *(v27 - 1);
      v31 = *v27;
      v32 = *(v37 + 16);
      v33 = *(v37 + 24);

      if (v32 >= v33 >> 1)
      {
        sub_23C592C24((v33 > 1), v32 + 1, 1);
      }

      *(v37 + 16) = v32 + 1;
      v34 = (v37 + 32 * v32);
      v34[4] = v28;
      v34[5] = v29;
      v34[6] = v30;
      v34[7] = v31;
      v27 += 4;
      --v25;
    }

    while (v25);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  sub_23C6394F0(v26);

  return v36;
}

uint64_t sub_23C63906C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  swift_beginAccess();
  v15 = *(v1 + 40);
  if (!*(v15 + 16))
  {
    return 0;
  }

  v16 = sub_23C5FFCB8(a1);
  if ((v17 & 1) == 0)
  {

    return 0;
  }

  v18 = *(v5 + 72);
  sub_23C600748(*(v15 + 56) + v18 * v16, v12, type metadata accessor for SiriConversationPublisher.GraphUUID);

  sub_23C64BB10(v12, v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
  swift_beginAccess();
  v19 = *(v2 + 16);
  if (!*(v19 + 16))
  {
LABEL_13:
    sub_23C64BB78(v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return 0;
  }

  v20 = *(v2 + 16);

  v21 = sub_23C5FFCB8(v14);
  if ((v22 & 1) == 0)
  {

    goto LABEL_13;
  }

  v36 = *(*(v19 + 56) + 8 * v21);

  v23 = *(v2 + 32);

  v24 = sub_23C63BD68(a1);

  v25 = sub_23C6318C0(v24);

  v35 = sub_23C64A144(v25, v2);

  v26 = *(v25 + 16);
  if (v26)
  {
    v34 = v14;
    v37 = MEMORY[0x277D84F90];
    sub_23C592CC8(0, v26, 0);
    v27 = v37;
    v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v33 = v25;
    v29 = v25 + v28;
    do
    {
      sub_23C600748(v29, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v37 = v27;
      v31 = *(v27 + 16);
      v30 = *(v27 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_23C592CC8(v30 > 1, v31 + 1, 1);
        v27 = v37;
      }

      *(v27 + 16) = v31 + 1;
      sub_23C64BB10(v9, v27 + v28 + v31 * v18, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v29 += v18;
      --v26;
    }

    while (v26);

    v14 = v34;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  sub_23C6395AC(v27);

  sub_23C64BB78(v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
  return v36;
}

void sub_23C6393EC(unint64_t a1)
{
  v2 = v1;
  v4 = v1[4];

  sub_23C63C0DC(a1);

  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EED7610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_23C6397EC(v7, v2);

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_23C6394F0(uint64_t a1)
{
  v2 = v1;
  v4 = v1[4];

  sub_23C63C248(a1);

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 56);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);

      sub_23C63999C(v11, v10, v9, v8, v2);

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_23C6395AC(uint64_t a1)
{
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[4];
  v9 = *(a1 + 16);

  if (v9)
  {
    v24 = v1;
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v12 = v10;
    v13 = v9;
    do
    {
      sub_23C600748(v12, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      swift_beginAccess();
      v15 = *(v8 + 16);
      v16 = sub_23C5FFCB8(v7);
      if (v17)
      {
        v18 = v16;
        v19 = *(v8 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v8 + 16);
        v25 = v21;
        *(v8 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C644FD8(&qword_27E1F9AB8, &qword_23C874B18);
          v21 = v25;
        }

        sub_23C64BB78(*(v21 + 48) + v18 * v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v14 = *(*(v21 + 56) + 8 * v18);
        sub_23C641F78(v18, v21);
        *(v8 + 16) = v21;
      }

      swift_endAccess();
      sub_23C64BB78(v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v12 += v11;
      --v13;
    }

    while (v13);

    v22 = v24;
    do
    {
      result = sub_23C639BF8(v10, v22);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  return result;
}

uint64_t sub_23C6397EC(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a2[5];

  v5 = sub_23C6323B8(a1, v4);

  if (v5)
  {
    swift_beginAccess();
    sub_23C64D774(v5);
    swift_endAccess();
  }

  swift_beginAccess();
  v6 = sub_23C64D81C(a1);
  swift_endAccess();

  swift_beginAccess();
  v7 = a2[3];
  if (!*(v7 + 16))
  {
    goto LABEL_9;
  }

  v8 = a2[3];

  v9 = sub_23C5FFA08(a1);
  if ((v10 & 1) == 0)
  {

LABEL_9:
    i = 0;
    goto LABEL_10;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  if (v11 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

LABEL_10:
    v13 = a2[6];
    v14 = __OFSUB__(v13, i);
    v15 = v13 - i;
    if (!v14)
    {
      break;
    }

    __break(1u);
LABEL_13:
    ;
  }

  a2[6] = v15;
  swift_beginAccess();
  sub_23C64D968(a1);
  swift_endAccess();
}

uint64_t sub_23C63999C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v10 = a5[5];
  if (*(v10 + 16))
  {
    v11 = a5[5];

    v12 = sub_23C5FFB88(a1, a2, a3, a4);
    if (v13)
    {
      v14 = (*(v10 + 56) + 32 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[3];
      v31 = v14[2];

      swift_beginAccess();
      sub_23C64DAD4(v15, v16, v31, v17);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v18 = sub_23C64D9FC(a1, a2, a3, a4);
  v20 = v19;
  swift_endAccess();
  sub_23C58428C(v18, v20);
  swift_beginAccess();
  v21 = a5[3];
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  v22 = a5[3];

  v23 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v24 & 1) == 0)
  {

LABEL_11:
    i = 0;
    goto LABEL_12;
  }

  v25 = *(*(v21 + 56) + 8 * v23);

  if (v25 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

LABEL_12:
    v27 = a5[6];
    v28 = __OFSUB__(v27, i);
    v29 = v27 - i;
    if (!v28)
    {
      break;
    }

    __break(1u);
LABEL_15:
    ;
  }

  a5[6] = v29;
  swift_beginAccess();
  sub_23C64DB8C(a1, a2, a3, a4);
  swift_endAccess();
}

uint64_t sub_23C639BF8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  swift_beginAccess();
  v16 = a2[5];
  if (*(v16 + 16))
  {
    v17 = a2[5];

    v18 = sub_23C5FFCB8(a1);
    if (v19)
    {
      sub_23C600748(*(v16 + 56) + *(v9 + 72) * v18, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);

      sub_23C64BB10(v13, v15, type metadata accessor for SiriConversationPublisher.GraphUUID);
      swift_beginAccess();
      sub_23C632B3C(v15);
      swift_endAccess();
      sub_23C64BB78(v15, type metadata accessor for SiriConversationPublisher.GraphUUID);
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_23C632C14(a1, v7);
  sub_23C585C34(v7, &qword_27E1FBCA8, &qword_23C87BDB8);
  swift_endAccess();
  swift_beginAccess();
  v20 = a2[3];
  if (!*(v20 + 16))
  {
    goto LABEL_11;
  }

  v21 = a2[3];

  v22 = sub_23C5FFCB8(a1);
  if ((v23 & 1) == 0)
  {

LABEL_11:
    i = 0;
    goto LABEL_12;
  }

  v24 = *(*(v20 + 56) + 8 * v22);

  if (v24 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {

LABEL_12:
    v26 = a2[6];
    v27 = __OFSUB__(v26, i);
    v28 = v26 - i;
    if (!v27)
    {
      break;
    }

    __break(1u);
LABEL_15:
    ;
  }

  a2[6] = v28;
  swift_beginAccess();
  sub_23C632D90(a1);
  swift_endAccess();
}

uint64_t sub_23C639F00(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 40);

  v7 = sub_23C6323B8(a1, v6);

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(a2 + 40);

  v9 = sub_23C6323B8(a1, v8);

  if (!v9)
  {
    if (!a3)
    {
      swift_beginAccess();
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (!a3)
  {

    goto LABEL_9;
  }

  sub_23C870E34();
  v10 = v9;
  v11 = a3;
  v12 = sub_23C871B34();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    v13 = *(a2 + 40);

    result = sub_23C6323B8(a1, v13);
    if (!result)
    {
      goto LABEL_23;
    }

    v15 = result;

    swift_beginAccess();
    sub_23C64D774(v15);
    swift_endAccess();

LABEL_11:
    swift_beginAccess();
    if (a3)
    {
      goto LABEL_12;
    }

LABEL_18:

    return swift_endAccess();
  }

  swift_beginAccess();
LABEL_12:
  v16 = *(a2 + 40);
  if ((v16 & 0xC000000000000001) == 0)
  {
    v19 = *(a2 + 40);
    v18 = a3;
    goto LABEL_20;
  }

  if (v16 < 0)
  {
    v17 = *(a2 + 40);
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = a3;
  result = sub_23C871C34();
  if (!__OFADD__(result, 1))
  {
    *(a2 + 40) = sub_23C64DE34(v17, result + 1);
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a2 + 40);
    sub_23C594024(v18, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 40) = v21;
    return swift_endAccess();
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_23C63A13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  if (!*(*(a5 + 40) + 16))
  {
    goto LABEL_27;
  }

  v15 = *(a5 + 40);

  sub_23C5FFB88(a1, a2, a3, a4);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

  v46 = a1;
  v47 = a3;
  v18 = *(a5 + 40);
  if (!*(v18 + 16))
  {
LABEL_19:
    v24 = 0;
    if (!a7)
    {
LABEL_27:
      swift_beginAccess();
      sub_23C5A79B4(a6, a7);

      sub_23C631BBC(a6, a7, a8, a9, a1, a2, a3, a4);
      return swift_endAccess();
    }

    goto LABEL_20;
  }

  v19 = *(a5 + 40);

  v20 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v21 & 1) == 0)
  {

    goto LABEL_19;
  }

  v22 = (*(v18 + 56) + 32 * v20);
  v24 = *v22;
  v23 = v22[1];
  v25 = v22[2];
  v26 = v22[3];

  if (!v23)
  {
    a1 = v46;
    a3 = v47;
    if (!a7)
    {
      goto LABEL_27;
    }

LABEL_20:
    v45 = v24;
    v32 = 0;
    v33 = a6;
LABEL_21:
    sub_23C5A79B4(v33, a7);
    sub_23C58428C(v45, v32);
    v34 = v33;
    v35 = a7;
LABEL_22:
    result = sub_23C58428C(v34, v35);
    goto LABEL_23;
  }

  if (!a7)
  {
    v45 = v24;
    sub_23C5A79B4(v24, v23);

    v33 = a6;
    v32 = v23;
    goto LABEL_21;
  }

  v27 = v24 == a6 && v23 == a7;
  v28 = a8;
  if (!v27)
  {
    v29 = sub_23C872014();
    v28 = a8;
    if ((v29 & 1) == 0)
    {
      sub_23C5A79B4(v24, v23);
      sub_23C5A79B4(v24, v23);
      sub_23C5A79B4(a6, a7);

      sub_23C58428C(v24, v23);

      v34 = v24;
      v35 = v23;
      goto LABEL_22;
    }
  }

  if (v25 == v28 && v26 == a9)
  {
    sub_23C5A79B4(v24, v23);
    sub_23C5A79B4(v24, v23);
    sub_23C5A79B4(a6, a7);

    sub_23C58428C(v24, v23);

    sub_23C58428C(v24, v23);
    goto LABEL_26;
  }

  v44 = sub_23C872014();
  sub_23C5A79B4(v24, v23);
  sub_23C5A79B4(v24, v23);
  sub_23C5A79B4(a6, a7);

  sub_23C58428C(v24, v23);

  result = sub_23C58428C(v24, v23);
  a1 = v46;
  a3 = v47;
  if (v44)
  {
    goto LABEL_27;
  }

LABEL_23:
  v36 = *(a5 + 40);
  if (*(v36 + 16))
  {
    v37 = *(a5 + 40);

    result = sub_23C5FFB88(v46, a2, v47, a4);
    if (v38)
    {
      v39 = (*(v36 + 56) + 32 * result);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[2];
      v43 = v39[3];

      swift_beginAccess();
      sub_23C64DAD4(v40, v41, v42, v43);
      swift_endAccess();

LABEL_26:
      a1 = v46;
      a3 = v47;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C63A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v66 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCD0, &unk_23C87BDE0);
  v13 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCA8, &qword_23C87BDB8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v65 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v62 = &v58 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  swift_beginAccess();
  v26 = *(a2 + 40);
  v27 = *(v26 + 16);
  v67 = a1;
  if (!v27)
  {
    v29 = a3;
    (*(v7 + 56))(v25, 1, 1, v6);
LABEL_7:
    sub_23C585C34(v25, &qword_27E1FBCA8, &qword_23C87BDB8);
    v33 = v29;
    v34 = v66;
    v35 = v67;
LABEL_23:
    sub_23C600748(v35, v34, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v53 = v65;
    sub_23C5855B0(v33, v65, &qword_27E1FBCA8, &qword_23C87BDB8);
    swift_beginAccess();
    sub_23C631D24(v53, v34);
    return swift_endAccess();
  }

  v28 = sub_23C5FFCB8(a1);
  v59 = v12;
  v29 = a3;
  if (v30)
  {
    sub_23C600748(*(v26 + 56) + *(v7 + 72) * v28, v25, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v7 + 56);
  v32(v25, v31, 1, v6);

  v61 = v7;
  v60 = *(v7 + 48);
  if (v60(v25, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  sub_23C585C34(v25, &qword_27E1FBCA8, &qword_23C87BDB8);
  v36 = *(a2 + 40);
  if (*(v36 + 16))
  {
    v37 = *(a2 + 40);

    v38 = sub_23C5FFCB8(v67);
    if (v39)
    {
      sub_23C600748(*(v36 + 56) + *(v61 + 72) * v38, v23, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v40 = v23;
      v41 = 0;
    }

    else
    {
      v40 = v23;
      v41 = 1;
    }

    v32(v40, v41, 1, v6);
  }

  else
  {
    v32(v23, 1, 1, v6);
  }

  v42 = v64;
  v43 = *(v63 + 48);
  sub_23C5855B0(v23, v64, &qword_27E1FBCA8, &qword_23C87BDB8);
  v63 = a3;
  sub_23C5855B0(a3, v42 + v43, &qword_27E1FBCA8, &qword_23C87BDB8);
  v44 = v60;
  if (v60(v42, 1, v6) == 1)
  {
    sub_23C585C34(v23, &qword_27E1FBCA8, &qword_23C87BDB8);
    v45 = v44(v42 + v43, 1, v6);
    v34 = v66;
    v35 = v67;
    if (v45 == 1)
    {
      sub_23C585C34(v42, &qword_27E1FBCA8, &qword_23C87BDB8);
      v33 = v63;
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v46 = v62;
  sub_23C5855B0(v42, v62, &qword_27E1FBCA8, &qword_23C87BDB8);
  v47 = v44(v42 + v43, 1, v6);
  v35 = v67;
  if (v47 == 1)
  {
    sub_23C585C34(v23, &qword_27E1FBCA8, &qword_23C87BDB8);
    sub_23C64BB78(v46, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v34 = v66;
LABEL_19:
    result = sub_23C585C34(v42, &unk_27E1FBCD0, &unk_23C87BDE0);
    v49 = v61;
    v33 = v63;
    goto LABEL_20;
  }

  v54 = v42 + v43;
  v55 = v59;
  sub_23C64BB10(v54, v59, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v56 = v42;
  v57 = sub_23C870B44();
  sub_23C64BB78(v55, type metadata accessor for SiriConversationPublisher.GraphUUID);
  sub_23C585C34(v23, &qword_27E1FBCA8, &qword_23C87BDB8);
  sub_23C64BB78(v46, type metadata accessor for SiriConversationPublisher.GraphUUID);
  result = sub_23C585C34(v56, &qword_27E1FBCA8, &qword_23C87BDB8);
  v34 = v66;
  v49 = v61;
  v33 = v63;
  if (v57)
  {
    goto LABEL_23;
  }

LABEL_20:
  v50 = *(a2 + 40);
  if (*(v50 + 16))
  {
    v51 = *(a2 + 40);

    result = sub_23C5FFCB8(v35);
    if (v52)
    {
      sub_23C600748(*(v50 + 56) + *(v49 + 72) * result, v34, type metadata accessor for SiriConversationPublisher.GraphUUID);

      swift_beginAccess();
      sub_23C632B3C(v34);
      swift_endAccess();
      sub_23C64BB78(v34, type metadata accessor for SiriConversationPublisher.GraphUUID);
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23C63AD1C(void *a1, id a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  v35 = v8;
  *(v3 + 16) = 0x8000000000000000;
  v9 = sub_23C5FFA08(a1);
  v11 = v10;
  v12 = v8[2];
  v13 = (v10 & 1) == 0;
  sub_23C870E34();
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v8[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v8;
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    while (1)
    {
      v20 = v8[7] + 8 * v9;
      a2 = a2;
      sub_23C64E050(&v35, a2);
      v21 = v35;
      swift_endAccess();

      swift_beginAccess();
      v22 = *(v3 + 16);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v3 + 16);
      v8 = v35;
      *(v3 + 16) = 0x8000000000000000;
      v14 = sub_23C5FFA08(a2);
      v24 = v8[2];
      v25 = (v23 & 1) == 0;
      v17 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (!v17)
      {
        break;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      v14 = sub_23C644870(&qword_27E1F9BE8, &qword_23C87BE70);
      v8 = v35;
      *(v3 + 16) = v35;
      if ((v11 & 1) == 0)
      {
LABEL_8:
        v8[(v9 >> 6) + 8] |= 1 << v9;
        *(v8[6] + 8 * v9) = a1;
        *(v8[7] + 8 * v9) = MEMORY[0x277D84FA0];
        v16 = v8[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          __break(1u);
          goto LABEL_24;
        }

        v8[2] = v18;
        v19 = a1;
      }
    }

    LOBYTE(v9) = v23;
    if (v8[3] >= v26)
    {
      goto LABEL_14;
    }

    sub_23C63F7B8(v26, v11, &qword_27E1F9BE8, &qword_23C87BE70);
    v8 = v35;
    v14 = sub_23C5FFA08(a2);
    if ((v9 & 1) == (v27 & 1))
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_23C63F7B8(v14, isUniquelyReferenced_nonNull_native, &qword_27E1F9BE8, &qword_23C87BE70);
    v8 = v35;
    v14 = sub_23C5FFA08(a1);
    if ((v11 & 1) == (v15 & 1))
    {
      v9 = v14;
      *(v3 + 16) = v35;
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  v14 = sub_23C872064();
  __break(1u);
LABEL_14:
  if ((v11 & 1) == 0)
  {
LABEL_24:
    v34 = v14;
    sub_23C644870(&qword_27E1F9BE8, &qword_23C87BE70);
    v14 = v34;
    v8 = v35;
    *(v3 + 16) = v35;
    if (v9)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v3 + 16) = v8;
  if (v9)
  {
LABEL_18:
    v32 = v8[7] + 8 * v14;
    sub_23C64E050(&v35, a1);
    v33 = v35;
    swift_endAccess();

    return;
  }

LABEL_16:
  v8[(v14 >> 6) + 8] |= 1 << v14;
  *(v8[6] + 8 * v14) = a2;
  *(v8[7] + 8 * v14) = MEMORY[0x277D84FA0];
  v28 = v8[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v8[2] = v29;
    v30 = v14;
    v31 = a2;
    v14 = v30;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_23C63B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = *(v8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v8 + 16);
  v47[0] = v18;
  *(v9 + 16) = 0x8000000000000000;
  v46 = a1;
  v19 = a3;
  v21 = sub_23C5FFB88(a1, a2, a3, a4);
  v22 = v18[2];
  v23 = (v20 & 1) == 0;
  result = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(a1) = v20;
  if (v18[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_6;
  }

  sub_23C63EA50(result, isUniquelyReferenced_nonNull_native, &qword_27E1F9C48, &qword_23C874D08);
  v18 = v47[0];
  v25 = v19;
  result = sub_23C5FFB88(v46, a2, v19, a4);
  if ((a1 & 1) == (v26 & 1))
  {
    v21 = result;
    while (1)
    {
      v19 = a7;
      *(v9 + 16) = v18;
      if ((a1 & 1) == 0)
      {
        v18[(v21 >> 6) + 8] |= 1 << v21;
        v27 = (v18[6] + 32 * v21);
        *v27 = v46;
        v27[1] = a2;
        v27[2] = v25;
        v27[3] = a4;
        *(v18[7] + 8 * v21) = MEMORY[0x277D84FA0];
        v28 = v18[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          __break(1u);
          goto LABEL_23;
        }

        v18[2] = v30;
      }

      a7 = v25;
      v31 = v18[7] + 8 * v21;
      sub_23C64E564(v47, a5, a6, v19, a8);
      v21 = v47[3];
      swift_endAccess();

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v32 = *(v9 + 16);
      LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = *(v9 + 16);
      v18 = v47[0];
      *(v9 + 16) = 0x8000000000000000;
      result = sub_23C5FFB88(a5, a6, v19, a8);
      v34 = v18[2];
      v35 = (v33 & 1) == 0;
      v29 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (!v29)
      {
        break;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      result = sub_23C644140(&qword_27E1F9C48, &qword_23C874D08);
      v18 = v47[0];
LABEL_6:
      v25 = v19;
    }

    LOBYTE(v21) = v33;
    if (v18[3] >= v36)
    {
      goto LABEL_14;
    }

    sub_23C63EA50(v36, a1, &qword_27E1F9C48, &qword_23C874D08);
    v18 = v47[0];
    result = sub_23C5FFB88(a5, a6, v19, a8);
    if ((v21 & 1) == (v37 & 1))
    {
      goto LABEL_15;
    }
  }

  result = sub_23C872064();
  __break(1u);
LABEL_14:
  v25 = a7;
  if (a1)
  {
LABEL_15:
    *(v9 + 16) = v18;
    if (v21)
    {
LABEL_18:
      v42 = v18[7] + 8 * result;
      sub_23C64E564(v47, v46, a2, v25, a4);
      swift_endAccess();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_23:
    v43 = result;
    sub_23C644140(&qword_27E1F9C48, &qword_23C874D08);
    result = v43;
    v18 = v47[0];
    *(v9 + 16) = v47[0];
    if (v21)
    {
      goto LABEL_18;
    }
  }

  v18[(result >> 6) + 8] |= 1 << result;
  v38 = (v18[6] + 32 * result);
  *v38 = a5;
  v38[1] = a6;
  v38[2] = v19;
  v38[3] = a8;
  *(v18[7] + 8 * result) = MEMORY[0x277D84FA0];
  v39 = v18[2];
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v29)
  {
    v18[2] = v40;
    v41 = result;

    result = v41;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_23C63B4B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v6 = *(*(v57 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v57);
  v58 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v60 = &v56 - v11;
  v12 = &unk_27E1FBCB0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCB0, &unk_23C87BDC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v63 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v61 = (&v56 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  v27 = type metadata accessor for SiriConversationPublisher.GraphUUID;
  sub_23C600748(a1, &v56 - v25, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v62 = v13;
  sub_23C600748(a2, &v26[*(v13 + 48)], type metadata accessor for SiriConversationPublisher.GraphUUID);
  sub_23C5855B0(v26, v24, &unk_27E1FBCB0, &unk_23C87BDC0);
  sub_23C5855B0(v26, v21, &unk_27E1FBCB0, &unk_23C87BDC0);
  swift_beginAccess();
  v28 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v3 + 16);
  v30 = v64;
  *(v3 + 16) = 0x8000000000000000;
  v32 = sub_23C5FFCB8(v24);
  v33 = v30[2];
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
    goto LABEL_18;
  }

  LOBYTE(v12) = v31;
  if (v30[3] >= v35)
  {
    v27 = v61;
    v13 = v62;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_23C640768(v35, isUniquelyReferenced_nonNull_native, &qword_27E1F9AB8, &qword_23C874B18);
    v30 = v64;
    v36 = sub_23C5FFCB8(v24);
    v27 = v61;
    v13 = v62;
    if ((v12 & 1) != (v37 & 1))
    {
      goto LABEL_20;
    }

    v32 = v36;
  }

  while (1)
  {
    v38 = v60;
    *(v3 + 16) = v30;
    if ((v12 & 1) == 0)
    {
      v39 = v59;
      sub_23C600748(v24, v59, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C642D24(v32, v39, MEMORY[0x277D84FA0], v30, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
    }

    v12 = *(v13 + 48);
    v40 = v30[7] + 8 * v32;
    sub_23C64EAC8(v38, v12 + v21);
    sub_23C64BB78(v38, type metadata accessor for SiriConversationPublisher.GraphUUID);
    swift_endAccess();
    sub_23C64BB78(v21, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB78(v12 + v24, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C64BB78(v24, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C5855B0(v26, v27, &unk_27E1FBCB0, &unk_23C87BDC0);
    v41 = *(v13 + 48);
    v24 = v63;
    sub_23C5855B0(v26, v63, &unk_27E1FBCB0, &unk_23C87BDC0);
    swift_beginAccess();
    v42 = *(v3 + 16);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v3 + 16);
    v43 = v64;
    *(v3 + 16) = 0x8000000000000000;
    v21 = sub_23C5FFCB8(v27 + v41);
    v45 = v43[2];
    v46 = (v44 & 1) == 0;
    v47 = v45 + v46;
    if (!__OFADD__(v45, v46))
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    sub_23C644FD8(&qword_27E1F9AB8, &qword_23C874B18);
    v30 = v64;
  }

  v48 = v44;
  if (v43[3] >= v47)
  {
    if ((v32 & 1) == 0)
    {
      sub_23C644FD8(&qword_27E1F9AB8, &qword_23C874B18);
      v43 = v64;
    }

    goto LABEL_14;
  }

  sub_23C640768(v47, v32, &qword_27E1F9AB8, &qword_23C874B18);
  v43 = v64;
  v49 = sub_23C5FFCB8(v27 + v41);
  if ((v48 & 1) != (v50 & 1))
  {
LABEL_20:
    result = sub_23C872064();
    __break(1u);
    return result;
  }

  v21 = v49;
LABEL_14:
  v51 = v58;
  *(v3 + 16) = v43;
  if ((v48 & 1) == 0)
  {
    v52 = v59;
    sub_23C600748(v27 + v41, v59, type metadata accessor for SiriConversationPublisher.GraphUUID);
    sub_23C642D24(v21, v52, MEMORY[0x277D84FA0], v43, type metadata accessor for SiriConversationPublisher.GraphUUID, type metadata accessor for SiriConversationPublisher.GraphUUID);
  }

  v53 = *(v13 + 48);
  v54 = v43[7] + 8 * v21;
  sub_23C64EAC8(v51, v24);
  sub_23C64BB78(v51, type metadata accessor for SiriConversationPublisher.GraphUUID);
  swift_endAccess();
  sub_23C585C34(v26, &unk_27E1FBCB0, &unk_23C87BDC0);
  sub_23C64BB78(&v24[v53], type metadata accessor for SiriConversationPublisher.GraphUUID);
  sub_23C64BB78(v27 + v41, type metadata accessor for SiriConversationPublisher.GraphUUID);
  return sub_23C64BB78(v27, type metadata accessor for SiriConversationPublisher.GraphUUID);
}

uint64_t sub_23C63BA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9510, &qword_23C873A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = a4;

  v9 = MEMORY[0x277D84FA0];
  while (1)
  {

    v12 = sub_23C64A4C4(v11, v9);

    v35 = v12;
    v38 = v12;
    v13 = *(inited + 16);
    result = swift_beginAccess();
    v36 = v13;
    if (v13)
    {
      break;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_3:

    inited = sub_23C64A6B4(v10, &v38);

    v9 = v35;
    if (!*(inited + 16))
    {

      return v35;
    }
  }

  v15 = 0;
  v16 = (inited + 56);
  v10 = MEMORY[0x277D84F90];
  while (v15 < *(inited + 16))
  {
    v17 = *(v16 - 2);
    v18 = *v16;
    v19 = *(v37 + 16);
    if (*(v19 + 16))
    {
      v20 = *(v16 - 1);
      v21 = *(v16 - 3);
      v22 = *(v16 - 2);

      v23 = sub_23C5FFB88(v21, v17, v20, v18);
      if (v24)
      {
        v25 = *(*(v19 + 56) + 8 * v23);

        goto LABEL_15;
      }
    }

    else
    {
      v26 = *(v16 - 2);
    }

    v25 = MEMORY[0x277D84FA0];
LABEL_15:
    v27 = sub_23C631680(v25);

    v28 = *(v27 + 16);
    v29 = *(v10 + 16);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v30 <= *(v10 + 24) >> 1)
    {
      if (*(v27 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      result = sub_23C584180(result, v31, 1, v10);
      v10 = result;
      if (*(v27 + 16))
      {
LABEL_24:
        if ((*(v10 + 24) >> 1) - *(v10 + 16) < v28)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v28)
        {
          v32 = *(v10 + 16);
          v33 = __OFADD__(v32, v28);
          v34 = v32 + v28;
          if (v33)
          {
            goto LABEL_33;
          }

          *(v10 + 16) = v34;
        }

        goto LABEL_7;
      }
    }

    if (v28)
    {
      goto LABEL_31;
    }

LABEL_7:
    ++v15;
    v16 += 4;
    if (v36 == v15)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

size_t sub_23C63BD68(uint64_t a1)
{
  v31 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9420, &qword_23C8739B0);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v35 = *(v2 + 72);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23C873D10;
  v32 = v6;
  sub_23C600748(a1, v7 + v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v8 = MEMORY[0x277D84FA0];
  while (1)
  {

    v11 = sub_23C64A568(v10, v8);

    v30 = v11;
    v36 = v11;
    v12 = *(v7 + 16);
    result = swift_beginAccess();
    v33 = v12;
    if (v12)
    {
      break;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_3:

    v7 = sub_23C64A99C(v9, &v36);

    v8 = v30;
    if (!*(v7 + 16))
    {

      return v8;
    }
  }

  v14 = 0;
  v15 = v7 + v32;
  v9 = MEMORY[0x277D84F90];
  while (v14 < *(v7 + 16))
  {
    sub_23C600748(v15, v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v16 = *(v34 + 16);
    if (*(v16 + 16))
    {
      v17 = *(v34 + 16);

      v18 = sub_23C5FFCB8(v5);
      v19 = MEMORY[0x277D84FA0];
      if (v20)
      {
        v19 = *(*(v16 + 56) + 8 * v18);
      }
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }

    v21 = sub_23C6318C0(v19);

    result = sub_23C64BB78(v5, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v22 = *(v21 + 16);
    v23 = v9[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      goto LABEL_29;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v24 <= v9[3] >> 1)
    {
      if (*(v21 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      result = sub_23C584D68(result, v25, 1, v9);
      v9 = result;
      if (*(v21 + 16))
      {
LABEL_23:
        if ((v9[3] >> 1) - v9[2] < v22)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v22)
        {
          v26 = v9[2];
          v27 = __OFADD__(v26, v22);
          v28 = v26 + v22;
          if (v27)
          {
            goto LABEL_32;
          }

          v9[2] = v28;
        }

        goto LABEL_7;
      }
    }

    if (v22)
    {
      goto LABEL_30;
    }

LABEL_7:
    ++v14;
    v15 += v35;
    if (v33 == v14)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_23C63C0DC(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23C871C34())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EED7610](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      swift_beginAccess();
      v10 = *(v2 + 16);
      v11 = sub_23C5FFA08(v8);
      if (v12)
      {
        v13 = v11;
        v14 = *(v2 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C644870(&qword_27E1F9BE8, &qword_23C87BE70);
        }

        v6 = *(*(v16 + 56) + 8 * v13);

        sub_23C6413F0(v13, v16);
        *(v2 + 16) = v16;
      }

      swift_endAccess();

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_23C63C248(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (result + 56);
    do
    {
      v10 = *(v4 - 1);
      v9 = *v4;
      v12 = *(v4 - 3);
      v11 = *(v4 - 2);
      swift_beginAccess();
      v13 = *(v3 + 16);

      v14 = sub_23C5FFB88(v12, v11, v10, v9);
      if (v15)
      {
        v16 = v14;
        v17 = *(v3 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v3 + 16);
        *(v3 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23C644140(&qword_27E1F9C48, &qword_23C874D08);
        }

        v5 = *(v19 + 48) + 32 * v16;
        v6 = *(v5 + 8);
        v7 = *(v5 + 24);

        v8 = *(*(v19 + 56) + 8 * v16);

        sub_23C641D9C(v16, v19);
        *(v3 + 16) = v19;
      }

      swift_endAccess();

      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_23C63C388(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C63C454(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23C588DC0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23C63C454(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23C63C560(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23C871D44();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23C63C560(uint64_t a1, unint64_t a2)
{
  v4 = sub_23C63C5AC(a1, a2);
  sub_23C63C6DC(&unk_284F2D750);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23C63C5AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23C63C7C8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23C871D44();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23C871824();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C63C7C8(v10, 0);
        result = sub_23C871D04();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23C63C6DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23C63C83C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23C63C7C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCF0, &qword_23C87BDF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C63C83C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBCF0, &qword_23C87BDF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23C63C930(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_23C871C34();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_23C871D34();
  *v1 = result;
  return result;
}

uint64_t sub_23C63C9D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_23C59A4B0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_23C59A4C0(v24, &v38);
        sub_23C588DC0(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_23C871C94();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_23C59A4B0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23C63CC88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_23C871B24();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23C63CEF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_23C871B24();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_23C63D16C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventTypeIdPair();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
  v44 = a2;
  result = sub_23C871E74();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v41 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48);
      v45 = *(v42 + 72);
      v27 = v26 + v45 * v25;
      if (v44)
      {
        sub_23C64BB10(v27, v9, type metadata accessor for EventTypeIdPair);
      }

      else
      {
        sub_23C600748(v27, v9, type metadata accessor for EventTypeIdPair);
      }

      v28 = *(*(v10 + 56) + 8 * v25);
      v29 = *(v13 + 40);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](*v9);
      v30 = *(v43 + 20);
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      sub_23C8716F4();
      result = sub_23C872124();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v10 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v10 = v41;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_23C64BB10(v9, *(v13 + 48) + v45 * v21, type metadata accessor for EventTypeIdPair);
      *(*(v13 + 56) + 8 * v21) = v28;
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_23C63D550(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for EventTypeIdPair();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD70, &qword_23C874C58);
  v44 = a2;
  result = sub_23C871E74();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v41 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v42 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v44)
      {
        sub_23C64BB10(v28, v9, type metadata accessor for EventTypeIdPair);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      else
      {
        sub_23C600748(v28, v9, type metadata accessor for EventTypeIdPair);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](*v9);
      v30 = *(v43 + 20);
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      sub_23C8716F4();
      result = sub_23C872124();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v13 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v13 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_23C64BB10(v9, *(v14 + 48) + v27 * v22, type metadata accessor for EventTypeIdPair);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v13 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23C63D934(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23C870B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
  v43 = a2;
  result = sub_23C871E74();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      result = sub_23C8716E4();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23C63DCF8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23C870B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD8, &qword_23C874C78);
  v43 = a2;
  result = sub_23C871E74();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      result = sub_23C8716E4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23C63E0FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE58, &unk_23C87BF10);
  v43 = a2;
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 96 * v22;
      if (v43)
      {
        v44 = *(v26 + 8);
        v45 = *v26;
        v48 = *(v26 + 16);
        v27 = *(v26 + 24);
        v46 = *(v26 + 32);
        v47 = *(v26 + 48);
        v49 = *(v26 + 64);
        v50 = *(v26 + 80);
      }

      else
      {
        v28 = *(v26 + 32);
        v29 = *(v26 + 48);
        v30 = *(v26 + 80);
        v54 = *(v26 + 64);
        v55 = v30;
        v52[2] = v28;
        v53 = v29;
        v31 = *(v26 + 16);
        v52[0] = *v26;
        v52[1] = v31;
        v49 = v54;
        v50 = v30;
        v46 = v28;
        v47 = v53;
        v48 = v31;
        v27 = BYTE8(v31);
        v44 = *(&v52[0] + 1);
        v45 = *&v52[0];

        sub_23C58BBD4(v52, v51);
      }

      v32 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v52[0]) = v27;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 96 * v16;
      *v18 = v45;
      *(v18 + 8) = v44;
      *(v18 + 16) = v48;
      *(v18 + 24) = v27;
      *(v18 + 32) = v46;
      *(v18 + 48) = v47;
      *(v18 + 64) = v49;
      *(v18 + 80) = v50;
      ++*(v8 + 16);
      v5 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23C63E460(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBDE0, &qword_23C874D00);
  v42 = a2;
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
LABEL_17:
      v23 = 32 * (v20 | (v9 << 6));
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + v23);
      v26 = v25[1];
      v47 = *v25;
      v27 = v25[3];
      v28 = (v24 + v23);
      v29 = v28[1];
      v45 = *v28;
      v46 = v25[2];
      v30 = v28[3];
      v44 = v28[2];
      if ((v42 & 1) == 0)
      {
      }

      v31 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 32 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v47;
      v18[1] = v26;
      v18[2] = v46;
      v18[3] = v27;
      v19 = (*(v8 + 56) + v17);
      *v19 = v45;
      v19[1] = v29;
      v19[2] = v44;
      v19[3] = v30;
      ++*(v8 + 16);
      v5 = v41;
      v13 = v43;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23C63E768(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
  v39 = a2;
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v40 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v40;
      v17[3] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23C63EA50(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_23C871E74();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(v7 + 56);
      v25 = (*(v7 + 48) + 32 * v23);
      v26 = v25[1];
      v41 = *v25;
      v27 = v25[3];
      v40 = v25[2];
      v28 = *(v24 + 8 * v23);
      if ((v39 & 1) == 0)
      {
      }

      v29 = *(v10 + 40);
      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 32 * v18);
      *v19 = v41;
      v19[1] = v26;
      v19[2] = v40;
      v19[3] = v27;
      *(*(v10 + 56) + 8 * v18) = v28;
      ++*(v10 + 16);
      v7 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v4;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23C63ED18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C40, &unk_23C87BE90);
  v37 = a2;
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}