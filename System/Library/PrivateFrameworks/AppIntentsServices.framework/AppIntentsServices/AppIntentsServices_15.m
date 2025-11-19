uint64_t sub_221AED4C4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  v9 = *(*(NextAsyncIteratorResultsRequest - 8) + 64);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsRequest);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4 & 0x1FF;
  sub_221AE8904(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  sub_221BCCB58();
  v12 = sub_221BCCB18();
  sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest);
  return v12;
}

uint64_t sub_221AED624()
{
  NextAsyncIteratorResultsResponse = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
  v2 = *(*(NextAsyncIteratorResultsResponse - 8) + 64);
  MEMORY[0x28223BE20](NextAsyncIteratorResultsResponse);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AF1F04();
  if (!v0)
  {
    sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
    NextAsyncIteratorResultsResponse = sub_221BCCB18();
    sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
  }

  return NextAsyncIteratorResultsResponse;
}

uint64_t sub_221AED778()
{
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v2 = *(*(restarted - 8) + 64);
  MEMORY[0x28223BE20](restarted);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest);
  return v5;
}

uint64_t sub_221AED8B0()
{
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  v2 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest);
  return v5;
}

uint64_t sub_221AED9E8()
{
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  v2 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB370, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse);
  return v5;
}

uint64_t sub_221AEDB20()
{
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest);
  return v5;
}

uint64_t sub_221AEDC70()
{
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221AFE910();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
  }

  return v0;
}

uint64_t sub_221AEDE10()
{
  v1 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_221AE8904(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  sub_221BCCB58();
  v5 = sub_221BCCB18();
  sub_221B22C2C(v4, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse);
  return v5;
}

uint64_t sub_221AEDF48()
{
  Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v3 = *(*(Request - 8) + 64);
  MEMORY[0x28223BE20](Request);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B06D58();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest);
  }

  return v0;
}

uint64_t sub_221AEE058()
{
  Response = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse(0);
  v3 = *(*(Response - 8) + 64);
  MEMORY[0x28223BE20](Response);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221B0996C();
  if (!v1)
  {
    sub_221AE8904(&unk_27CFBB150, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
    v0 = sub_221BCCB18();
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse);
  }

  return v0;
}

uint64_t sub_221AEE168(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1;
  v16 = a2;
  v17 = a3 & 0x1FF;
  v18 = a4;
  sub_221AE8904(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  sub_221BCCB58();
  v12 = sub_221BCCB18();
  sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest);
  return v12;
}

uint64_t sub_221AEE2C8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1;
  v14 = a2;
  v15 = a3 & 0x1FF;
  sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  sub_221BCCB58();
  v10 = sub_221BCCB18();
  sub_221B22C2C(v9, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return v10;
}

void sub_221AEE430()
{
  OUTLINED_FUNCTION_55_4();
  v66 = v0;
  v4 = v3;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = OUTLINED_FUNCTION_8_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_51_6();
  v14 = type metadata accessor for AppIntentsProtobuf_UUID(v13);
  v15 = OUTLINED_FUNCTION_2_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  v65 = v18;
  OUTLINED_FUNCTION_133_3();
  v19 = sub_221BCC558();
  v20 = OUTLINED_FUNCTION_8_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_8();
  v64[1] = v23;
  v24 = OUTLINED_FUNCTION_133_3();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(v24);
  v26 = OUTLINED_FUNCTION_2_1(AsyncIterator);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_30_8();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  OUTLINED_FUNCTION_8_1(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v34);
  v36 = v64 - v35;
  sub_2219A02E8(v4, v64 - v35, &unk_27CFBB9E0, &qword_221BE0D60);
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_39_8(v36);
  if (v42)
  {
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8138, &qword_221BD2A78);
    *v38 = sub_221BCD3D8();
    *(v38 + 8) = v39;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = 3;
    swift_willThrow();
    v40 = OUTLINED_FUNCTION_27_10();
LABEL_13:
    sub_221B22C2C(v40, v41);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_55_3();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_230_1();
  if (!v42)
  {
    v48 = v30;
    sub_221B229DC(v36, v30, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);
    sub_2219A02E8(v30 + *(AsyncIterator + 24), v2, &qword_27CFB9988, &qword_221BDAE20);
    OUTLINED_FUNCTION_145(v2);
    if (v49)
    {
      v51 = v65;
      *v65 = 0;
      v51[1] = 0;
      v50 = v51 + *(v14 + 24);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_145(v2);
      if (!v42)
      {
        sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v51 = v65;
      sub_221B229DC(v2, v65, v52);
    }

    v53 = v66;
    sub_221AE9E30(v51);
    if (!v53)
    {
      OUTLINED_FUNCTION_0_43();
      sub_221B22C2C(v51, v57);
      v58 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
      v59 = objc_allocWithZone(MEMORY[0x277D23B40]);
      v60 = OUTLINED_FUNCTION_171_0();
      sub_221B21A08(v60, v58);
      v61 = OUTLINED_FUNCTION_27_10();
      sub_221B22C2C(v61, v62);
      OUTLINED_FUNCTION_136_4();
      sub_221B22C2C(v48, v63);
      goto LABEL_14;
    }

    v54 = OUTLINED_FUNCTION_27_10();
    sub_221B22C2C(v54, v55);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v51, v56);
    OUTLINED_FUNCTION_136_4();
    v40 = v48;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_19();
  sub_221B229DC(v36, v1, v43);
  sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
  v44 = OUTLINED_FUNCTION_171_0();
  sub_221AEE828(v44);
  v45 = OUTLINED_FUNCTION_27_10();
  sub_221B22C2C(v45, v46);
  OUTLINED_FUNCTION_2_32();
  sub_221B22C2C(v1, v47);
LABEL_14:
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AEE828(uint64_t *a1)
{
  sub_221B14BC4(*a1, a1[1], &qword_27CFBAF28, 0x277CCA9B8);
  if (v1)
  {
    if (qword_27CFB73D0 != -1)
    {
      swift_once();
    }

    v2 = sub_221BCCD88();
    __swift_project_value_buffer(v2, qword_27CFDEEB8);
    v3 = v1;
    v4 = sub_221BCCD68();
    v5 = sub_221BCDA78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_221989000, v4, v5, "Failed to unarchive NSError: %@", v6, 0xCu);
      sub_2219A1CC8(v7, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v7, -1, -1);
      MEMORY[0x223DA4C00](v6, -1, -1);
    }

    v10 = sub_221BCC328();
    sub_2219ACB94();
    v11 = swift_allocError();
    *v12 = v10;
    *(v12 + 8) = 0;
    *(v12 + 16) = 7;
    sub_221BCC328();
  }
}

void sub_221AEEA04()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_158_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9E0, &qword_221BE0D60);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_62_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82_5();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(AsyncIterator);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v17);
    OUTLINED_FUNCTION_61_6();
    sub_221AE8904(&unk_27CFBB9F0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success);
    OUTLINED_FUNCTION_125_4();
    OUTLINED_FUNCTION_189_2();
    OUTLINED_FUNCTION_151_3();
    swift_storeEnumTagMultiPayload();
LABEL_6:
    v18 = OUTLINED_FUNCTION_80_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
    OUTLINED_FUNCTION_105_5();
    type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse(0);
    OUTLINED_FUNCTION_199_2();
    MEMORY[0x28223BE20](v21);
    OUTLINED_FUNCTION_60_7();
    sub_221AE8904(&unk_27CFBB5B0, type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse);
    OUTLINED_FUNCTION_205_2();
    OUTLINED_FUNCTION_143_3();
    v16 = OUTLINED_FUNCTION_96_6();
    goto LABEL_7;
  }

  type metadata accessor for AppIntentsProtobuf_Error(0);
  OUTLINED_FUNCTION_182_3();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_8_15();
  sub_221AE8904(v12, v13);
  OUTLINED_FUNCTION_126_4();
  OUTLINED_FUNCTION_189_2();
  if (!v0)
  {
    OUTLINED_FUNCTION_14();
    swift_storeEnumTagMultiPayload();
    goto LABEL_6;
  }

  v14 = &unk_27CFBB9E0;
  v15 = &qword_221BE0D60;
  v16 = v1;
LABEL_7:
  sub_2219A1CC8(v16, v14, v15);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEEC6C(void *a1, void *a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_221BCC558();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a2 iteratorIdentifier];
  v13 = [v12 longLongValue];

  *a1 = v13;
  v14 = [a2 sequenceIdentifier];
  sub_221BCC528();

  v18 = v11;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  (*(v8 + 8))(v11, v19);
  v15 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0) + 24);
  sub_2219A1CC8(a1 + v15, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v7, a1 + v15, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v15, 0, 1, v4);
}

uint64_t sub_221AEEF44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_221AECEBC();
}

void sub_221AEEF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_55_4();
  v13 = v12;
  v15 = v14;
  v16 = OUTLINED_FUNCTION_64_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_40_8();
  v23 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v22);
  v24 = OUTLINED_FUNCTION_2_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_16_12();
  v27 = v13[1];
  v28 = OUTLINED_FUNCTION_191_3(*v13);
  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(v28);
  sub_2219A02E8(v13 + *(AppDescriptionRequest + 24), v11, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_25_10(v11);
  if (v30)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_37_5();
    *(v31 + 4) = 1;
    OUTLINED_FUNCTION_115_3();
    OUTLINED_FUNCTION_25_10(v11);
    if (!v30)
    {
      sub_2219A1CC8(v11, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v32 = OUTLINED_FUNCTION_69_0();
    sub_221B229DC(v32, v33, v34);
  }

  sub_221AE9D08();
  v35 = OUTLINED_FUNCTION_53_3();
  sub_221B22C2C(v35, v36);
  if (v10)
  {

    OUTLINED_FUNCTION_225_1();
  }

  else
  {
    *v15 = a10;
    *(v15 + 8) = v27;
    *(v15 + 16) = xmmword_221BD0800;
    *(v15 + 32) = v37;
    *(v15 + 48) = v38;
    *(v15 + 49) = v39;
  }

  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEF108(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v12 = a2[1];
  v14 = a1[1];

  *a1 = v13;
  a1[1] = v12;
  v15 = a2[5];
  v16 = *(a2 + 49);
  if (v15)
  {
    v22[0] = a2[4];
    v22[1] = v15;
    sub_221AF6468();
  }

  v17 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0) + 24);
  sub_2219A02E8(a1 + v17, v7, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_221BCC8C8();
    v18 = &v11[v8[5]];
    *v18 = 0;
    *(v18 + 1) = 0;
    v19 = &v11[v8[6]];
    *v19 = 0;
    v19[4] = 1;
    v11[v8[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v7, v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v20 = &v11[v8[6]];
  *v20 = -(v16 & 1);
  v20[4] = 0;
  sub_2219A1CC8(a1 + v17, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v11, a1 + v17, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return __swift_storeEnumTagSinglePayload(a1 + v17, 0, 1, v8);
}

uint64_t sub_221AEF388(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  return sub_221AEBF04(a1);
}

uint64_t sub_221AEF3E4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 24);
  return sub_221AECFE0();
}

void sub_221AEF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_55_4();
  v16 = OUTLINED_FUNCTION_191_3(v15);
  v17 = type metadata accessor for AppIntentsProtobuf_Error(v16);
  v18 = OUTLINED_FUNCTION_8_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_16_12();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  v22 = OUTLINED_FUNCTION_8_1(AppDescription);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v25);
  v27 = &v54[-1] - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v29 = OUTLINED_FUNCTION_8_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_201_2();
  v33 = OUTLINED_FUNCTION_70_0();
  sub_2219A02E8(v33, v34, &qword_27CFBA890, &qword_221BE0DA0);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_145(v11);
  if (!v35)
  {
    sub_2219A02E8(v11, v14, &qword_27CFBA890, &qword_221BE0DA0);
    OUTLINED_FUNCTION_64_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_19();
      sub_221B229DC(v14, v12, v40);
      sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
      sub_221AEE828(v12);
      v42 = v41;
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_2_32();
      sub_221B22C2C(v12, v43);
      if (v10)
      {
        goto LABEL_6;
      }

      v47 = 0;
      v48 = 0;
      v49 = 0;
      v52 = 0x8000;
    }

    else
    {
      sub_221B229DC(v14, v27, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);
      v44 = OUTLINED_FUNCTION_97_5();
      sub_221B22BD0(v44, v13, v45);
      sub_221AEF6F8(v13, v54);
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_59_7();
      sub_221B22C2C(v27, v46);
      v42 = v54[0];
      v47 = v54[1];
      v48 = v54[2];
      v49 = v54[3];
      OUTLINED_FUNCTION_248_1();
      if (v35)
      {
        v51 = 0;
      }

      v52 = v51 | v50;
    }

    sub_2219A1CC8(v11, &qword_27CFBA890, &qword_221BE0DA0);
    *a10 = v42;
    *(a10 + 8) = v47;
    *(a10 + 16) = v48;
    *(a10 + 24) = v49;
    *(a10 + 32) = v52;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_153_3();
  sub_221A00FEC();
  OUTLINED_FUNCTION_15_0();
  swift_allocError();
  OUTLINED_FUNCTION_188_3(v36, &type metadata for AppIntentsProtocol.FetchAppDescription.Response);
  OUTLINED_FUNCTION_187_2(v37, v38);
  OUTLINED_FUNCTION_69_4();
LABEL_6:
  sub_2219A1CC8(v11, &qword_27CFBA890, &qword_221BE0DA0);
LABEL_13:
  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEF6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_69_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_83_6();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  v12 = OUTLINED_FUNCTION_2_1(AppDescription);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v17 = v16 - v15;
  v18 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v18;
  *(a2 + 16) = xmmword_221BD0800;
  v19 = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  sub_2219A02E8(a1 + *(v19 + 24), v2, &qword_27CFBB620, &qword_221BE0DC0);
  v20 = OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v20, v21, AppDescription) == 1)
  {
    *v17 = 0;
    v22 = *(AppDescription + 24);

    sub_221BCC8C8();
    OUTLINED_FUNCTION_59_7();
    sub_221B22C2C(a1, v23);
    v24 = OUTLINED_FUNCTION_9_1();
    if (__swift_getEnumTagSinglePayload(v24, v25, AppDescription) != 1)
    {
      sub_2219A1CC8(v2, &qword_27CFBB620, &qword_221BE0DC0);
    }
  }

  else
  {

    OUTLINED_FUNCTION_59_7();
    sub_221B22C2C(a1, v26);
    v27 = OUTLINED_FUNCTION_97_5();
    sub_221B229DC(v27, v17, v28);
  }

  v29 = *v17;
  v30 = *(v17 + 1);
  result = sub_221B22C2C(v17, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState);
  *(a2 + 32) = v29;
  *(a2 + 33) = v30;
  return result;
}

void sub_221AEF8AC()
{
  OUTLINED_FUNCTION_55_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA890, &qword_221BE0DA0);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_62_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82_5();
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v14 = *(v0 + 16);
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(AppDescription);
  if (v14 < 0)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v25);
    OUTLINED_FUNCTION_81_6();
    *(v26 - 16) = v10;
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v27, v28);
    OUTLINED_FUNCTION_156_1();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (v1)
    {
      v23 = &qword_27CFBA890;
      v24 = &qword_221BE0DA0;
      v22 = v2;
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_14();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    OUTLINED_FUNCTION_240_2();
    v29[33] = BYTE1(v14) & 1;
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_63_7();
    *(v17 - 16) = v29;
    sub_221AE8904(&unk_27CFBB640, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success);
    OUTLINED_FUNCTION_154_3();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    OUTLINED_FUNCTION_151_3();
    swift_storeEnumTagMultiPayload();
  }

  v18 = OUTLINED_FUNCTION_80_5();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v3);
  OUTLINED_FUNCTION_105_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse(0);
  OUTLINED_FUNCTION_74_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_60_7();
  sub_221AE8904(&unk_27CFBB550, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse);
  OUTLINED_FUNCTION_143_3();
  OUTLINED_FUNCTION_157_2();
  v22 = OUTLINED_FUNCTION_96_6();
LABEL_6:
  sub_2219A1CC8(v22, v23, v24);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEFB64(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  return sub_221AEBFC4(a1);
}

uint64_t sub_221AEFBB8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  return sub_221AED118();
}

void sub_221AEFBF4()
{
  OUTLINED_FUNCTION_55_4();
  v53 = v1;
  v4 = v3;
  v43 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v45 = v10;
  v11 = OUTLINED_FUNCTION_133_3();
  v44 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v11);
  v12 = OUTLINED_FUNCTION_2_1(v44);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_12();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9A0, &qword_221BE0C50);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_83_6();
  v19 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v23 = v4[3];
  v42 = v4[2];
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  sub_2219A02E8(v4 + *(DeferredPropertyValueRequest + 28), v0, &unk_27CFBB9A0, &qword_221BE0C50);
  OUTLINED_FUNCTION_25_10(v0);
  if (v25)
  {
    *v2 = 0;
    v2[1] = 0xE000000000000000;
    v2[2] = 0;
    v2[3] = 0xE000000000000000;
    v26 = *(v19 + 24);

    sub_221BCC8C8();
    OUTLINED_FUNCTION_25_10(v0);
    if (!v25)
    {
      sub_2219A1CC8(v0, &unk_27CFBB9A0, &qword_221BE0C50);
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_97_5();
    sub_221B229DC(v27, v2, v28);
  }

  v29 = *v2;
  v30 = v2[1];
  v31 = v2[2];
  v32 = v2[3];
  objc_allocWithZone(MEMORY[0x277D23800]);

  OUTLINED_FUNCTION_0_0();
  v33 = sub_2219A0230();
  sub_221B22C2C(v2, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  v51 = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  v52 = sub_2219A0334();
  *&v50 = v33;
  v34 = *v4;
  v35 = v4[1];
  sub_2219A02E8(v4 + *(DeferredPropertyValueRequest + 32), v45, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_42_9(v45, 1);
  if (v25)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_37_5();
    *(v36 + 4) = 1;
    OUTLINED_FUNCTION_115_3();
    OUTLINED_FUNCTION_25_10(v45);
    if (!v25)
    {
      sub_2219A1CC8(v45, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v37 = OUTLINED_FUNCTION_69_0();
    sub_221B229DC(v37, v38, v39);
  }

  sub_221AE9D08();
  v40 = OUTLINED_FUNCTION_93_3();
  sub_221B22C2C(v40, v41);
  if (v53)
  {

    OUTLINED_FUNCTION_225_1();

    __swift_destroy_boxed_opaque_existential_0(&v50);
  }

  else
  {
    *v43 = v42;
    *(v43 + 8) = v23;
    *(v43 + 16) = xmmword_221BD0800;
    sub_22198B358(&v50, v43 + 32);
    *(v43 + 72) = v34;
    *(v43 + 80) = v35;
    *(v43 + 88) = v46;
    *(v43 + 96) = v47;
    *(v43 + 104) = v48;
    *(v43 + 105) = v49;
  }

  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AEFF74(void *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v32 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v16 = a2[1];
  v18 = a1[3];

  a1[2] = v17;
  a1[3] = v16;
  v19 = a2[8];
  __swift_project_boxed_opaque_existential_0(a2 + 4, a2[7]);
  sub_221AF02CC();
  DeferredPropertyValueRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v21 = *(DeferredPropertyValueRequest + 28);
  sub_2219A1CC8(a1 + v21, &unk_27CFBB9A0, &qword_221BE0C50);
  sub_221B229DC(v15, a1 + v21, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v12);
  v22 = a2[12];
  if (v22)
  {
    v32[0] = a2[11];
    v32[1] = v22;
    sub_221AF0384();
  }

  v23 = *(a2 + 105);
  v24 = *(DeferredPropertyValueRequest + 32);
  sub_2219A02E8(a1 + v24, v7, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_221BCC8C8();
    v25 = &v11[v8[5]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v11[v8[6]];
    *v26 = 0;
    v26[4] = 1;
    v11[v8[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v7, v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v27 = &v11[v8[6]];
  *v27 = v23 << 31 >> 31;
  v27[4] = 0;
  sub_2219A1CC8(a1 + v24, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v11, a1 + v24, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v8);
  v29 = a2[9];
  v28 = a2[10];
  v30 = a1[1];

  *a1 = v29;
  a1[1] = v28;
  return result;
}

uint64_t sub_221AF02CC()
{
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  sub_221AE8904(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier);
  return sub_221BCCB58();
}

void sub_221AF0384()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_162_0();
  v5 = OUTLINED_FUNCTION_64_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_40_8();
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v11);
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v16 = *v3;
  v17 = v3[1];
  v18 = *(v4(0) + 32);
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_13_8(v2);
  if (v19)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_212_2(v20);
    *(v21 + 4) = 1;
    OUTLINED_FUNCTION_195_3(*(v12 + 28));
    OUTLINED_FUNCTION_13_8(v2);
    if (!v19)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_70_0();
    sub_221B229DC(v22, v23, v24);
  }

  OUTLINED_FUNCTION_224_1();
  *v2 = v16;
  v2[1] = v17;
  sub_2219A1CC8(v0 + v18, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_1_37();
  sub_221B229DC(v1, v0 + v18, v25);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v12);
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF0564()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v6 = OUTLINED_FUNCTION_8_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_51_6();
  v14 = type metadata accessor for AppIntentsProtobuf_Value(v13);
  v15 = OUTLINED_FUNCTION_2_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  v55 = v18;
  v19 = OUTLINED_FUNCTION_133_3();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(v19);
  v21 = OUTLINED_FUNCTION_2_1(DeferredPropertyValue);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_174_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v26 = OUTLINED_FUNCTION_8_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_82_5();
  v30 = OUTLINED_FUNCTION_172_3();
  sub_2219A02E8(v30, v31, &qword_27CFBA7C8, &qword_221BE0D10);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_39_8(v0);
  if (v39)
  {
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v32, &type metadata for AppIntentsProtocol.FetchDeferredPropertyValue.Response);
    *(v33 + 16) = 0x8000000221BF0560;
    *(v33 + 24) = 0;
    *(v33 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_56_8();
    sub_221B22C2C(v4, v34);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_131_3();
    sub_2219A02E8(v35, v36, v37, v38);
    swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_230_1();
    if (v39)
    {
      OUTLINED_FUNCTION_6_19();
      v40 = OUTLINED_FUNCTION_343();
      sub_221B229DC(v40, v41, v42);
      sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
      v43 = OUTLINED_FUNCTION_171_0();
      sub_221AEE828(v43);
      OUTLINED_FUNCTION_56_8();
      sub_221B22C2C(v4, v44);
      OUTLINED_FUNCTION_2_32();
      sub_221B22C2C(v1, v45);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_109_3();
      sub_221B229DC(v46, v54, v47);
      sub_2219A02E8(v54 + *(DeferredPropertyValue + 20), v2, &unk_27CFBB660, &qword_221BE4610);
      OUTLINED_FUNCTION_145(v2);
      if (v48)
      {
        v50 = v55;
        *v55 = xmmword_221BD8630;
        v49 = v55 + *(v14 + 20);
        sub_221BCC8C8();
        OUTLINED_FUNCTION_145(v2);
        if (!v39)
        {
          sub_2219A1CC8(v2, &unk_27CFBB660, &qword_221BE4610);
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_16();
        v50 = v55;
        sub_221B229DC(v2, v55, v51);
      }

      sub_221B14BC4(*v50, v50[1], &qword_27CFBB680, 0x277D23958);
      OUTLINED_FUNCTION_56_8();
      sub_221B22C2C(v4, v52);
      sub_221B22C2C(v54, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);
      OUTLINED_FUNCTION_4_20();
      sub_221B22C2C(v50, v53);
    }
  }

  sub_2219A1CC8(v0, &qword_27CFBA7C8, &qword_221BE0D10);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF0948()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_158_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7C8, &qword_221BE0D10);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82_5();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(DeferredPropertyValue);
  if (v3)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_61_6();
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v12, v13);
    OUTLINED_FUNCTION_125_4();
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v18 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse(0);
      OUTLINED_FUNCTION_199_2();
      MEMORY[0x28223BE20](v21);
      OUTLINED_FUNCTION_60_7();
      sub_221AE8904(&unk_27CFBB4F0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse);
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_143_3();
      v17 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  else
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v14);
    OUTLINED_FUNCTION_61_6();
    sub_221AE8904(&unk_27CFBB9B0, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success);
    OUTLINED_FUNCTION_126_4();
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  v15 = &qword_27CFBA7C8;
  v16 = &qword_221BE0D10;
  v17 = v1;
LABEL_8:
  sub_2219A1CC8(v17, v15, v16);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF0BA4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    MEMORY[0x28223BE20](v7);
    *(&v12 - 2) = a2;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
    v10 = a2;
    sub_221BCCB58();

    if (!v2)
    {
      v11 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0) + 20);
      sub_2219A1CC8(a1 + v11, &unk_27CFBB660, &qword_221BE4610);
      sub_221B229DC(v9, a1 + v11, type metadata accessor for AppIntentsProtobuf_Value);
      __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v5);
    }
  }
}

uint64_t sub_221AF0D64@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  result = sub_221AEAF54(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

uint64_t sub_221AF0DFC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_221AED268();
}

void sub_221AF0E1C()
{
  OUTLINED_FUNCTION_55_4();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_40_8();
  v13 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v12);
  v14 = OUTLINED_FUNCTION_2_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_12();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_8_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_45_9();
  v21 = sub_221BCC418();
  v22 = OUTLINED_FUNCTION_0_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21_10();
  v27 = *v5;
  v28 = v5[1];
  sub_221BCC3F8();
  OUTLINED_FUNCTION_48_8(v3);
  if (v38)
  {
    sub_2219A1CC8(v3, &qword_27CFB7DD0, &unk_221BD19F0);
    OUTLINED_FUNCTION_153_3();
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    v29 = swift_allocError();
    *v30 = v21;
    v30[1] = 0xD000000000000013;
    v30[2] = v24;
    v30[3] = 0;
    OUTLINED_FUNCTION_193_3(v29, v30);
    OUTLINED_FUNCTION_65_6();
  }

  else
  {
    v31 = *(v24 + 32);
    v32 = OUTLINED_FUNCTION_64_0();
    v33(v32);
    (*(v24 + 16))(v7, v2, v21);
    v34 = v5[2];
    File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
    *(v7 + *(File + 20)) = v34;
    v36 = File;
    *(v7 + *(File + 24)) = v5[3];
    FileChunkRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
    sub_2219A02E8(v5 + *(FileChunkRequest + 32), v1, &unk_27CFBB600, &qword_221BE44B0);
    OUTLINED_FUNCTION_25_10(v1);
    if (v38)
    {
      sub_221BCC8C8();
      OUTLINED_FUNCTION_37_5();
      *(v39 + 4) = 1;
      OUTLINED_FUNCTION_115_3();
      OUTLINED_FUNCTION_25_10(v1);
      if (!v38)
      {
        sub_2219A1CC8(v1, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      v40 = OUTLINED_FUNCTION_69_0();
      sub_221B229DC(v40, v41, v42);
    }

    sub_221AE9D08();
    if (v0)
    {
      v43 = *(v24 + 8);
      v43(v2, v21);
      OUTLINED_FUNCTION_65_6();
      v43(v7, v21);
    }

    else
    {
      (*(v24 + 8))(v2, v21);
      OUTLINED_FUNCTION_65_6();
      v44 = v7 + *(v36 + 28);
      *v44 = v45;
      *(v44 + 16) = v46;
      *(v44 + 17) = v47;
    }
  }

  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF1144(uint64_t *a1, uint64_t a2)
{
  v4 = sub_221BCC368();
  v6 = v5;
  v7 = a1[1];

  *a1 = v4;
  a1[1] = v6;
  File = type metadata accessor for AppIntentsProtocol.FetchFileChunk.Request(0);
  a1[2] = *(a2 + File[5]);
  a1[3] = *(a2 + File[6]);
  v9 = (a2 + File[7]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
    sub_221AF0384();
  }
}

void sub_221AF12B0()
{
  OUTLINED_FUNCTION_55_4();
  v5 = v4;
  v52 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104_2();
  v51 = v11;
  v12 = OUTLINED_FUNCTION_133_3();
  v49 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v12);
  v13 = OUTLINED_FUNCTION_2_1(v49);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_8();
  v50 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_156();
  v21 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v22 = OUTLINED_FUNCTION_2_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21_10();
  v25 = sub_221BCC558();
  v26 = OUTLINED_FUNCTION_8_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_0();
  v29 = OUTLINED_FUNCTION_45_9();
  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(v29);
  sub_2219A02E8(v5 + *(NextAsyncIteratorResultsRequest + 24), v1, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_20_8(v1);
  if (v31)
  {
    *v2 = 0;
    v2[1] = 0;
    v32 = v2 + *(v21 + 24);
    sub_221BCC8C8();
    OUTLINED_FUNCTION_20_8(v1);
    if (!v31)
    {
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v33 = OUTLINED_FUNCTION_3_4();
    sub_221B229DC(v33, v34, v35);
  }

  v36 = OUTLINED_FUNCTION_208_2();
  sub_221AE9E30(v36);
  if (v0)
  {
    v37 = OUTLINED_FUNCTION_93_3();
    sub_221B22C2C(v37, v38);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v39);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v40);
    v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v42 = objc_allocWithZone(MEMORY[0x277D23B40]);
    v43 = sub_221B21A08(v3, v41);
    sub_2219A02E8(v5 + *(NextAsyncIteratorResultsRequest + 28), v51, &unk_27CFBB600, &qword_221BE44B0);
    v44 = OUTLINED_FUNCTION_148_3();
    OUTLINED_FUNCTION_49_4(v44, v45, v49);
    if (v31)
    {
      sub_221BCC8C8();
      OUTLINED_FUNCTION_196_1(v49[5]);
      OUTLINED_FUNCTION_217_3(v50 + v49[6]);
      OUTLINED_FUNCTION_216_2(v49[7]);
      OUTLINED_FUNCTION_43_9(v51);
      if (!v31)
      {
        sub_2219A1CC8(v51, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      sub_221B229DC(v51, v50, v46);
    }

    sub_221AE9D08();
    v47 = OUTLINED_FUNCTION_93_3();
    sub_221B22C2C(v47, v48);
    *v52 = v43;
    *(v52 + 8) = v53;
    *(v52 + 24) = v54;
    *(v52 + 25) = v55;
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF1608(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v37 = a5;
  v36 = a3;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221BCC558();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  v23 = [a2 iteratorIdentifier];
  v24 = [v23 longLongValue];

  *a1 = v24;
  if (a4)
  {
    v42 = v36;
    v43 = a4;
    v25 = v44;
    sub_221AF5DAC();
    v44 = v25;
  }

  NextAsyncIteratorResultsRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  v27 = *(NextAsyncIteratorResultsRequest + 28);
  sub_2219A02E8(a1 + v27, v18, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_221BCC8C8();
    v28 = &v22[v19[5]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v22[v19[6]];
    *v29 = 0;
    v29[4] = 1;
    v22[v19[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
    {
      sub_2219A1CC8(v18, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v18, v22, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v30 = &v22[v19[6]];
  *v30 = v37 << 23 >> 31;
  v30[4] = 0;
  sub_2219A1CC8(a1 + v27, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v22, a1 + v27, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  __swift_storeEnumTagSinglePayload(a1 + v27, 0, 1, v19);
  v31 = [v38 sequenceIdentifier];
  sub_221BCC528();

  MEMORY[0x28223BE20](v32);
  *(&v36 - 2) = v14;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  v33 = v41;
  sub_221BCCB58();
  (*(v39 + 8))(v14, v40);
  v34 = *(NextAsyncIteratorResultsRequest + 24);
  sub_2219A1CC8(a1 + v34, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v33, a1 + v34, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v34, 0, 1, v8);
}

uint64_t sub_221AF1AA0(void *a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_221AEC144(a1, *v1, *(v1 + 8), *(v1 + 16), v2 | *(v1 + 24));
}

uint64_t sub_221AF1AF0()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_221AED4C4(*v0, *(v0 + 8), *(v0 + 16), v1 | *(v0 + 24));
}

void sub_221AF1B28()
{
  OUTLINED_FUNCTION_55_4();
  v6 = v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_21_10();
  v11 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v12 = OUTLINED_FUNCTION_18_4(v11);
  v52 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_12();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  v17 = OUTLINED_FUNCTION_8_1(NextAsyncIteratorResults);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  OUTLINED_FUNCTION_8_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_83_6();
  sub_2219A02E8(v6, v0, &qword_27CFBA858, &qword_221BE0D80);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_13_8(v0);
  if (v24)
  {
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBBA00, &qword_221BD2A68);
    *v26 = sub_221BCD3D8();
    *(v26 + 8) = v27;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_20_10();
    sub_221B22C2C(v6, v28);
LABEL_15:
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_53_5();
    return;
  }

  OUTLINED_FUNCTION_172_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_19();
    sub_221B229DC(v0, v4, v30);
    sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
    sub_221AEE828(v4);
    OUTLINED_FUNCTION_20_10();
    sub_221B22C2C(v6, v31);
    OUTLINED_FUNCTION_2_32();
    sub_221B22C2C(v4, v32);
    goto LABEL_15;
  }

  v33 = OUTLINED_FUNCTION_97_5();
  sub_221B229DC(v33, v3, v34);
  v35 = *v3;
  v36 = *(*v3 + 16);
  if (!v36)
  {
    OUTLINED_FUNCTION_20_10();
    sub_221B22C2C(v6, v45);
    OUTLINED_FUNCTION_53_9();
    sub_221B22C2C(v3, v46);
    goto LABEL_15;
  }

  v50 = v3;
  v51 = v6;
  v53 = MEMORY[0x277D84F90];
  sub_221BCDF28();
  v37 = 0;
  v38 = *(v52 + 80);
  OUTLINED_FUNCTION_176_2();
  v40 = v35 + v39;
  while (v37 < *(v35 + 16))
  {
    sub_221B22BD0(v40 + *(v52 + 72) * v37, v2, type metadata accessor for AppIntentsProtobuf_Value);
    sub_221B14BC4(*v2, v2[1], &qword_27CFBB680, 0x277D23958);
    if (v1)
    {
      OUTLINED_FUNCTION_20_10();
      sub_221B22C2C(v51, v47);
      OUTLINED_FUNCTION_4_20();
      sub_221B22C2C(v2, v48);
      OUTLINED_FUNCTION_53_9();
      sub_221B22C2C(v50, v49);

      goto LABEL_15;
    }

    ++v37;
    OUTLINED_FUNCTION_4_20();
    sub_221B22C2C(v2, v41);
    sub_221BCDEF8();
    v42 = *(v53 + 16);
    sub_221BCDF38();
    sub_221BCDF48();
    sub_221BCDF08();
    if (v36 == v37)
    {
      OUTLINED_FUNCTION_20_10();
      sub_221B22C2C(v51, v43);
      OUTLINED_FUNCTION_53_9();
      sub_221B22C2C(v50, v44);
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_221AF1F04()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_158_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA858, &qword_221BE0D80);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82_5();
  NextAsyncIteratorResults = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(NextAsyncIteratorResults);
  if (v3)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_61_6();
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v12, v13);
    OUTLINED_FUNCTION_125_4();
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v18 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse(0);
      OUTLINED_FUNCTION_199_2();
      MEMORY[0x28223BE20](v21);
      OUTLINED_FUNCTION_60_7();
      sub_221AE8904(&unk_27CFBB460, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse);
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_143_3();
      v17 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  else
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v14);
    OUTLINED_FUNCTION_61_6();
    sub_221AE8904(&qword_27CFB9DF8, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success);
    OUTLINED_FUNCTION_126_4();
    OUTLINED_FUNCTION_189_2();
    if (!v0)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  v15 = &qword_27CFBA858;
  v16 = &qword_221BE0D80;
  v17 = v1;
LABEL_8:
  sub_2219A1CC8(v17, v15, v16);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF2160(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221BCDDA8())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_17:
      v16 = *a1;

      *a1 = v10;
      return;
    }

    v23 = MEMORY[0x277D84F90];
    sub_2219A325C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v17 = a1;
    a1 = 0;
    v10 = v23;
    v20 = a2;
    v21 = a2 & 0xC000000000000001;
    v18 = a2 & 0xFFFFFFFFFFFFFF8;
    v19 = i;
    while (1)
    {
      v11 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v21)
      {
        v12 = MEMORY[0x223DA3BF0](a1, a2);
      }

      else
      {
        if (a1 >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(a2 + 8 * a1 + 32);
      }

      v13 = v12;
      *(&v17 - 2) = MEMORY[0x28223BE20](v12);
      sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
      sub_221BCCB58();
      if (v2)
      {

        return;
      }

      v23 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2219A325C(v14 > 1, v15 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v15 + 1;
      sub_221B229DC(v8, v10 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v15, type metadata accessor for AppIntentsProtobuf_Value);
      ++a1;
      a2 = v20;
      if (v11 == v19)
      {
        a1 = v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
}

uint64_t sub_221AF24B4@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_221AF24EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_221AED624();
}

void sub_221AF250C()
{
  OUTLINED_FUNCTION_55_4();
  v7 = v6;
  v84 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_40_8();
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v13);
  v15 = OUTLINED_FUNCTION_2_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_45_9();
  v23 = type metadata accessor for AppIntentsProtobuf_Environment(v22);
  v24 = OUTLINED_FUNCTION_2_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_10();
  v27 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v28 = OUTLINED_FUNCTION_8_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_16_12();
  sub_221A8B718(v2);
  sub_221AF2910(v2, v31, v32, v33, v34, v35, v36, v37, v66, v67, v69, v71, v73, v75, v77, *(&v77 + 1), v78, v79, v80, v81);
  if (v0)
  {
    OUTLINED_FUNCTION_52_8();
    sub_221B22C2C(v7, v38);
  }

  else
  {
    v68 = v1;
    v70 = v14;
    OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
    v40 = v7;
    sub_2219A02E8(v7 + *(OptionsForActionRequest + 32), v5, &unk_27CFBB650, &qword_221BE0A38);
    OUTLINED_FUNCTION_39_8(v5);
    if (v41)
    {
      *v4 = 0;
      v4[1] = 0xE000000000000000;
      v42 = v4 + *(v23 + 20);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_39_8(v5);
      v46 = v3;
      if (!v41)
      {
        sub_2219A1CC8(v5, &unk_27CFBB650, &qword_221BE0A38);
      }
    }

    else
    {
      OUTLINED_FUNCTION_140_3();
      v43 = OUTLINED_FUNCTION_235_1();
      sub_221B229DC(v43, v44, v45);
      v46 = v3;
    }

    v47 = sub_2219A1D20(0, &qword_27CFB7B18, 0x277D23C08);
    v49 = *v4;
    v48 = v4[1];

    v50 = sub_221AE9500(v49, v48, &selRef_initWithLocaleIdentifier_);
    OUTLINED_FUNCTION_139_3();
    sub_221B22C2C(v4, v51);
    v79 = v47;
    v80 = &protocol witness table for LNEnvironment;
    *&v77 = v50;
    v52 = v40;
    v53 = *v40;
    v54 = v52[1];
    sub_2219A02E8(v52 + *(OptionsForActionRequest + 36), v68, &unk_27CFBB600, &qword_221BE44B0);
    v55 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_44_5(v55, v56);
    if (v41)
    {

      sub_221BCC8C8();
      OUTLINED_FUNCTION_196_1(v70[5]);
      OUTLINED_FUNCTION_217_3(v46 + v70[6]);
      OUTLINED_FUNCTION_216_2(v70[7]);
      OUTLINED_FUNCTION_13_8(v68);
      if (!v41)
      {
        sub_2219A1CC8(v68, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      v57 = OUTLINED_FUNCTION_91();
      sub_221B229DC(v57, v58, v59);
    }

    sub_221AE9D08();
    v60 = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = sub_221AE9C28();
    v63 = v62;

    OUTLINED_FUNCTION_52_8();
    sub_221B22C2C(v60, v64);
    v65 = v82;
    *v84 = v81;
    *(v84 + 16) = v65;
    *(v84 + 32) = v83;
    sub_22198B358(&v77, v84 + 40);
    *(v84 + 80) = v53;
    *(v84 + 88) = v54;
    *(v84 + 96) = v72;
    *(v84 + 104) = v74;
    *(v84 + 112) = v76;
    *(v84 + 120) = v61;
    *(v84 + 128) = v63;
  }

  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF2910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v22;
  a20 = v23;
  v226 = v21;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for AppIntentsProtobuf_SystemProtocol(0);
  v29 = OUTLINED_FUNCTION_18_4(v28);
  v215 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v33 = OUTLINED_FUNCTION_79_2();
  v34 = type metadata accessor for AppIntentsProtobuf_Value(v33);
  v35 = OUTLINED_FUNCTION_2_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_111_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v41 = OUTLINED_FUNCTION_8_1(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_91_6();
  v220 = v48;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_132_2();
  v224 = v52;
  v53 = OUTLINED_FUNCTION_133_3();
  v222 = type metadata accessor for AppIntentsProtobuf_Property(v53);
  v54 = OUTLINED_FUNCTION_0_2(v222);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_51_4();
  v227 = v59;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_91_6();
  v232 = v61;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_91_6();
  v237 = v63;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_132_2();
  v234 = v65;
  v66 = OUTLINED_FUNCTION_133_3();
  v67 = type metadata accessor for AppIntentsProtobuf_Action(v66);
  v68 = v25 + *(v67 + 36);
  v223 = v34;
  if (*(v68 + 9))
  {
    goto LABEL_2;
  }

  if ((*(v68 + 8) & 1) == 0)
  {
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v177 = 0u;
    *(v177 + 16) = 0u;
    *(v177 + 32) = 4;
    swift_willThrow();
LABEL_54:
    v180 = OUTLINED_FUNCTION_53_3();
    sub_221B22C2C(v180, v181);
    OUTLINED_FUNCTION_180_2();
    OUTLINED_FUNCTION_53_5();
    return;
  }

  if (!*v68)
  {
LABEL_2:
    v69 = *(v25 + 8);
    v216 = *v25;
    v70 = *(v25 + 32);
    v214 = *(v25 + 24);
    v71 = *(v25 + 16);
    v72 = *(v71 + 16);
    if (v72)
    {
      v211 = v27;
      *&v239 = MEMORY[0x277D84F90];
      v209 = v70;

      sub_2219A2FF4(0, v72, 0);
      v73 = *(v56 + 80);
      OUTLINED_FUNCTION_176_2();
      v75 = v71 + v74;
      v76 = v239;
      v219 = *(v56 + 72);
      do
      {
        v228 = v72;
        sub_221B22BD0(v75, v234, type metadata accessor for AppIntentsProtobuf_Property);
        sub_221B22BD0(v234, v237, type metadata accessor for AppIntentsProtobuf_Property);
        v77 = v237[1];
        v230 = *v237;
        v78 = *(v222 + 24);
        OUTLINED_FUNCTION_145_2(&a17);
        sub_2219A02E8(v79, v80, &unk_27CFBB660, &qword_221BE4610);
        v81 = 1;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(type metadata accessor for AppIntentsProtobuf_Property, 1, v34);

        OUTLINED_FUNCTION_159_1();
        sub_2219A1CC8(v83, v84, v85);
        if (EnumTagSinglePayload != 1)
        {
          OUTLINED_FUNCTION_145_2(&a12);
          sub_2219A02E8(v86, v87, &unk_27CFBB660, &qword_221BE4610);
          OUTLINED_FUNCTION_145(type metadata accessor for AppIntentsProtobuf_Property);
          if (v88)
          {
            OUTLINED_FUNCTION_249_2(&a9);
            OUTLINED_FUNCTION_145(type metadata accessor for AppIntentsProtobuf_Property);
            if (!v88)
            {
              OUTLINED_FUNCTION_159_1();
              sub_2219A1CC8(v89, v90, v91);
            }
          }

          else
          {
            OUTLINED_FUNCTION_7_16();
            sub_221B229DC(type metadata accessor for AppIntentsProtobuf_Property, v224, v92);
          }

          v81 = 0;
        }

        OUTLINED_FUNCTION_211_3();
        __swift_storeEnumTagSinglePayload(v93, v94, v95, v34);
        sub_2219A02E8(v224, v220, &unk_27CFBB660, &qword_221BE4610);
        OUTLINED_FUNCTION_145(v220);
        if (v88)
        {
          OUTLINED_FUNCTION_159_1();
          sub_2219A1CC8(v96, v97, v98);
          v99 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          OUTLINED_FUNCTION_145_2(&a13);
          sub_221B229DC(v100, v101, v102);
          sub_221B14BC4(*v220, v220[1], &qword_27CFBB680, 0x277D23958);
          if (v226)
          {
            OUTLINED_FUNCTION_159_1();
            sub_2219A1CC8(v104, v105, v106);
            OUTLINED_FUNCTION_4_20();
            sub_221B22C2C(v220, v107);
            if (qword_27CFB73D0 != -1)
            {
              OUTLINED_FUNCTION_22_11();
              swift_once();
            }

            v108 = sub_221BCCD88();
            __swift_project_value_buffer(v108, qword_27CFDEEB8);
            v109 = v226;
            v81 = sub_221BCCD68();
            v110 = sub_221BCDA78();

            if (os_log_type_enabled(v81, v110))
            {
              OUTLINED_FUNCTION_288();
              v111 = swift_slowAlloc();
              OUTLINED_FUNCTION_227_2();
              v112 = swift_slowAlloc();
              *v111 = 138412290;
              v113 = v226;
              v114 = _swift_stdlib_bridgeErrorToNSError();
              *(v111 + 4) = v114;
              *v112 = v114;
              _os_log_impl(&dword_221989000, v81, v110, "Serialization error: %@", v111, 0xCu);
              sub_2219A1CC8(v112, &unk_27CFB7630, qword_221BD0790);
              OUTLINED_FUNCTION_29_1();
              MEMORY[0x223DA4C00]();
              OUTLINED_FUNCTION_29_1();
              MEMORY[0x223DA4C00]();
            }

            else
            {
            }

            v99 = 0;
            v226 = 0;
          }

          else
          {
            v99 = v103;
            v226 = 0;
            OUTLINED_FUNCTION_159_1();
            sub_2219A1CC8(v115, v116, v117);
            OUTLINED_FUNCTION_4_20();
            sub_221B22C2C(v220, v118);
          }
        }

        OUTLINED_FUNCTION_49_8();
        sub_221B22C2C(v234, v119);
        sub_221B22C2C(v237, v81);
        *&v239 = v76;
        v121 = *(v76 + 16);
        v120 = *(v76 + 24);
        if (v121 >= v120 >> 1)
        {
          v123 = OUTLINED_FUNCTION_90_3(v120);
          sub_2219A2FF4(v123, v121 + 1, 1);
          v76 = v239;
        }

        *(v76 + 16) = v121 + 1;
        v122 = (v76 + 40 * v121);
        v122[4] = v230;
        v122[5] = v77;
        v122[7] = 0;
        v122[8] = 0;
        v122[6] = v99;
        v75 += v219;
        v72 = v228 - 1;
        v34 = v223;
      }

      while (v228 != 1);
      OUTLINED_FUNCTION_190_2();
      v27 = v211;
      v175 = v69;
      v176 = v209;
    }

    else
    {
      v176 = *(v25 + 32);

      v76 = MEMORY[0x277D84F90];
      v175 = v69;
    }

    v240 = &type metadata for AnyAppIntentSpecification;
    v241 = &off_283513928;
    v178 = swift_allocObject();
    *&v239 = v178;
    *(v178 + 16) = v214;
    *(v178 + 24) = v176;
    *(v178 + 32) = xmmword_221BD0800;
    *(v178 + 48) = v216;
    *(v178 + 56) = v175;
    *(v178 + 64) = v76;
    sub_22198B358(&v239, &v242);
LABEL_53:
    v179 = v243;
    *v27 = v242;
    *(v27 + 16) = v179;
    *(v27 + 32) = v244;
    goto LABEL_54;
  }

  v124 = v67;
  v221 = v20;
  v212 = v27;
  v208 = *v25;
  v207 = *(v25 + 24);
  v213 = v25;
  v125 = *(v25 + 16);
  v126 = *(v125 + 16);
  v218 = *(v25 + 8);
  v210 = *(v25 + 32);
  if (v126)
  {
    v206 = v67;
    a10 = MEMORY[0x277D84F90];

    v25 = &a10;
    sub_2219A2FF4(0, v126, 0);
    v127 = *(v56 + 80);
    OUTLINED_FUNCTION_176_2();
    v129 = v125 + v128;
    v130 = a10;
    v225 = *(v56 + 72);
    v131 = v227;
    do
    {
      v229 = v126;
      OUTLINED_FUNCTION_134_4();
      sub_221B22BD0(v129, v232, v132);
      v133 = OUTLINED_FUNCTION_343();
      sub_221B22BD0(v133, v134, v25);
      v135 = v131[1];
      v235 = *v131;
      v136 = *(v222 + 24);
      OUTLINED_FUNCTION_245_2(&a9);
      sub_2219A02E8(v137, v138, &unk_27CFBB660, &qword_221BE4610);
      v25 = 1;
      v139 = OUTLINED_FUNCTION_141_3();
      v141 = __swift_getEnumTagSinglePayload(v139, v140, v34);

      v142 = v131;
      v131 = v227;
      sub_2219A1CC8(v142, &unk_27CFBB660, &qword_221BE4610);
      if (v141 != 1)
      {
        OUTLINED_FUNCTION_171_3(&v242 + 8);
        sub_2219A02E8(v143, v144, &unk_27CFBB660, &qword_221BE4610);
        OUTLINED_FUNCTION_145(1);
        if (v88)
        {
          OUTLINED_FUNCTION_249_2(&a17);
          OUTLINED_FUNCTION_145(1);
          if (!v88)
          {
            sub_2219A1CC8(1, &unk_27CFBB660, &qword_221BE4610);
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          v145 = OUTLINED_FUNCTION_91();
          sub_221B229DC(v145, v146, v147);
        }

        v25 = 0;
      }

      OUTLINED_FUNCTION_211_3();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v34);
      OUTLINED_FUNCTION_171_3(&a16);
      sub_2219A02E8(v151, v152, &unk_27CFBB660, &qword_221BE4610);
      OUTLINED_FUNCTION_145(v25);
      if (v88)
      {
        v153 = OUTLINED_FUNCTION_70_0();
        sub_2219A1CC8(v153, v154, &qword_221BE4610);
        v155 = 0;
        v156 = v235;
      }

      else
      {
        OUTLINED_FUNCTION_7_16();
        OUTLINED_FUNCTION_171_3(&v243);
        sub_221B229DC(v157, v158, v159);
        sub_221B14BC4(*v25, *(v25 + 8), &qword_27CFBB680, 0x277D23958);
        v156 = v235;
        if (v226)
        {
          sub_2219A1CC8(v217, &unk_27CFBB660, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v25, v161);
          if (qword_27CFB73D0 != -1)
          {
            OUTLINED_FUNCTION_22_11();
            swift_once();
          }

          v162 = sub_221BCCD88();
          __swift_project_value_buffer(v162, qword_27CFDEEB8);
          v163 = v226;
          v25 = sub_221BCCD68();
          v164 = sub_221BCDA78();

          if (os_log_type_enabled(v25, v164))
          {
            OUTLINED_FUNCTION_288();
            v165 = swift_slowAlloc();
            OUTLINED_FUNCTION_227_2();
            v166 = swift_slowAlloc();
            *v165 = 138412290;
            v167 = v226;
            v168 = _swift_stdlib_bridgeErrorToNSError();
            *(v165 + 4) = v168;
            *v166 = v168;
            _os_log_impl(&dword_221989000, v25, v164, "Serialization error: %@", v165, 0xCu);
            sub_2219A1CC8(v166, &unk_27CFB7630, qword_221BD0790);
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
            v131 = v227;
          }

          else
          {
          }

          v155 = 0;
          v226 = 0;
        }

        else
        {
          v155 = v160;
          v226 = 0;
          sub_2219A1CC8(v217, &unk_27CFBB660, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v25, v169);
        }
      }

      OUTLINED_FUNCTION_49_8();
      sub_221B22C2C(v232, v170);
      sub_221B22C2C(v131, v25);
      a10 = v130;
      v172 = *(v130 + 16);
      v171 = *(v130 + 24);
      if (v172 >= v171 >> 1)
      {
        v174 = OUTLINED_FUNCTION_90_3(v171);
        v25 = &a10;
        sub_2219A2FF4(v174, v172 + 1, 1);
        v130 = a10;
      }

      *(v130 + 16) = v172 + 1;
      v173 = (v130 + 40 * v172);
      v173[4] = v156;
      v173[5] = v135;
      v173[7] = 0;
      v173[8] = 0;
      v173[6] = v155;
      v34 = v223;
      v129 += v225;
      v126 = v229 - 1;
    }

    while (v229 != 1);
    v124 = v206;
  }

  else
  {

    v130 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_190_2();
  v182 = sub_221AE9C28();
  v184 = v183;

  v185 = *(v25 + *(v124 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_131_3();
  v186 = sub_221AE9BC4();
  v188 = v187;

  v238 = v184;
  v231 = v182;
  if (v188)
  {
    v236 = 0;
  }

  else
  {
    v189 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v236 = v189;
  }

  v190 = v221;
  MEMORY[0x28223BE20](v189);
  v233 = sub_221B0DCB0(0, sub_221B21D20);
  v191 = 0;
  v192 = *(v213 + 40);
  v193 = MEMORY[0x277D84F90];
  a10 = MEMORY[0x277D84F90];
  v194 = *(v192 + 16);
  while (1)
  {
    if (v194 == v191)
    {
      v240 = &type metadata for OpenURLIntentSpecification;
      v241 = &off_2835138F8;
      v203 = swift_allocObject();
      *&v239 = v203;
      *(v203 + 16) = v207;
      *(v203 + 24) = v210;
      *(v203 + 32) = xmmword_221BD0800;
      *(v203 + 48) = v208;
      *(v203 + 56) = v218;
      *(v203 + 64) = v130;
      *(v203 + 72) = v231;
      *(v203 + 80) = v238;
      *(v203 + 88) = v185 & 1;
      *(v203 + 96) = v236;
      *(v203 + 104) = v233;
      *(v203 + 112) = v193;
      sub_22198B358(&v239, &v242);
      OUTLINED_FUNCTION_190_2();
      v27 = v212;
      goto LABEL_53;
    }

    if (v191 >= *(v192 + 16))
    {
      break;
    }

    v195 = *(v215 + 80);
    OUTLINED_FUNCTION_176_2();
    sub_221B22BD0(v192 + v196 + *(v197 + 72) * v191, v190, type metadata accessor for AppIntentsProtobuf_SystemProtocol);
    sub_2219A1D20(0, &qword_27CFB7D70, 0x277D23938);
    v198 = OUTLINED_FUNCTION_164_1();
    sub_221B0DE28(v198);
    if (v226)
    {
      v204 = OUTLINED_FUNCTION_93_3();
      sub_221B22C2C(v204, v205);

      OUTLINED_FUNCTION_225_1();

      OUTLINED_FUNCTION_190_2();
      goto LABEL_54;
    }

    v199 = OUTLINED_FUNCTION_93_3();
    v201 = sub_221B22C2C(v199, v200);
    MEMORY[0x223DA3390](v201);
    v202 = *((a10 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((a10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v202 >> 1)
    {
      OUTLINED_FUNCTION_90_3(v202);
      sub_221BCD6B8();
    }

    sub_221BCD6F8();
    v193 = a10;
    ++v191;
    v190 = v221;
  }

  __break(1u);
}

uint64_t sub_221AF38BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_221A8B858();
}

uint64_t sub_221AF38FC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  sub_221AE8904(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action);
  v20 = v50;
  result = sub_221BCCB58();
  if (!v20)
  {
    v50 = 0;
    v45 = v7;
    v46 = v11;
    v47 = v8;
    OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
    v23 = OptionsForActionRequest[6];
    sub_2219A1CC8(a1 + v23, &unk_27CFBB690, &qword_221BDADD0);
    sub_221B229DC(v19, a1 + v23, type metadata accessor for AppIntentsProtobuf_Action);
    __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v16);
    v24 = *(a2 + 104);
    if (v24)
    {
      v49[0] = *(a2 + 96);
      v49[1] = v24;
      v25 = v50;
      sub_221AF3D68(v49, a1);
      v50 = v25;
    }

    v26 = v45;
    v27 = *(a2 + 72);
    __swift_project_boxed_opaque_existential_0((a2 + 40), *(a2 + 64));
    sub_221AF3F8C();
    v28 = OptionsForActionRequest[8];
    sub_2219A1CC8(a1 + v28, &unk_27CFBB650, &qword_221BE0A38);
    sub_221B229DC(v15, a1 + v28, type metadata accessor for AppIntentsProtobuf_Environment);
    __swift_storeEnumTagSinglePayload(a1 + v28, 0, 1, v12);
    v30 = *(a2 + 80);
    v29 = *(a2 + 88);
    v31 = a1[1];

    *a1 = v30;
    a1[1] = v29;
    v32 = *(a2 + 128);
    if (v32)
    {
      v33 = *(a2 + 120);
      v34 = (a1 + OptionsForActionRequest[7]);
      v35 = v34[1];
      v36 = *(a2 + 128);

      *v34 = v33;
      v34[1] = v32;
    }

    v37 = *(a2 + 113);
    v38 = OptionsForActionRequest[9];
    sub_2219A02E8(a1 + v38, v26, &unk_27CFBB600, &qword_221BE44B0);
    v39 = v47;
    if (__swift_getEnumTagSinglePayload(v26, 1, v47) == 1)
    {
      v40 = v46;
      sub_221BCC8C8();
      v41 = (v40 + v39[5]);
      *v41 = 0;
      v41[1] = 0;
      v42 = v40 + v39[6];
      *v42 = 0;
      *(v42 + 4) = 1;
      *(v40 + v39[7]) = 2;
      if (__swift_getEnumTagSinglePayload(v26, 1, v39) != 1)
      {
        sub_2219A1CC8(v26, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      v40 = v46;
      sub_221B229DC(v26, v46, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    }

    v43 = v40 + v39[6];
    *v43 = v37 << 31 >> 31;
    *(v43 + 4) = 0;
    sub_2219A1CC8(a1 + v38, &unk_27CFBB600, &qword_221BE44B0);
    sub_221B229DC(v40, a1 + v38, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    return __swift_storeEnumTagSinglePayload(a1 + v38, 0, 1, v39);
  }

  return result;
}

uint64_t sub_221AF3D68(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0) + 36);
  sub_2219A02E8(a2 + v14, v7, &unk_27CFBB600, &qword_221BE44B0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {

    sub_221BCC8C8();
    v15 = &v11[v8[5]];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = &v11[v8[6]];
    *v16 = 0;
    v16[4] = 1;
    v11[v8[7]] = 2;
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_2219A1CC8(v7, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    sub_221B229DC(v7, v11, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  }

  v17 = &v11[v8[5]];
  v18 = *(v17 + 1);

  *v17 = v12;
  *(v17 + 1) = v13;
  sub_2219A1CC8(a2 + v14, &unk_27CFBB600, &qword_221BE44B0);
  sub_221B229DC(v11, a2 + v14, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
  return __swift_storeEnumTagSinglePayload(a2 + v14, 0, 1, v8);
}

uint64_t sub_221AF3F8C()
{
  type metadata accessor for AppIntentsProtobuf_Environment(0);
  sub_221AE8904(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment);
  return sub_221BCCB58();
}

void sub_221AF40A4()
{
  OUTLINED_FUNCTION_55_4();
  v61 = v5;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_10();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA810, &qword_221BE0D50);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_104_2();
  v62 = v14;
  v15 = OUTLINED_FUNCTION_133_3();
  v16 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(v15);
  v17 = OUTLINED_FUNCTION_2_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v20 = OUTLINED_FUNCTION_85_3();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(v20);
  v22 = OUTLINED_FUNCTION_2_1(OptionsForAction);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v25);
  v26 = OUTLINED_FUNCTION_169_2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  v29 = OUTLINED_FUNCTION_8_1(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_201_2();
  v33 = OUTLINED_FUNCTION_202_2();
  sub_2219A02E8(v33, v34, v35, &qword_221BE0D30);
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_13_8(v2);
  if (v36)
  {
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v37, &type metadata for AppIntentsProtocol.FetchOptionsForAction.Response);
    *(v38 + 16) = 0x8000000221BF0650;
    *(v38 + 24) = 0;
    *(v38 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_68_4();
  }

  else
  {
    sub_2219A02E8(v2, v3, &unk_27CFBB6D0, &qword_221BE0D30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_19();
      v40 = OUTLINED_FUNCTION_214_1();
      sub_221B229DC(v40, v41, v42);
      sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
      v43 = OUTLINED_FUNCTION_208_2();
      sub_221AEE828(v43);
      v45 = v44;
      OUTLINED_FUNCTION_68_4();
      OUTLINED_FUNCTION_2_32();
      sub_221B22C2C(v4, v46);
      if (!v1)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0x80;
LABEL_15:
        sub_2219A1CC8(v2, &unk_27CFBB6D0, &qword_221BE0D30);
        *v61 = v45;
        *(v61 + 8) = v47;
        *(v61 + 16) = v48;
        *(v61 + 24) = v49;
        *(v61 + 32) = v50;
        goto LABEL_13;
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_109_3();
      sub_221B229DC(v51, v63, v52);
      sub_2219A02E8(v63 + *(OptionsForAction + 20), v62, &qword_27CFBA810, &qword_221BE0D50);
      OUTLINED_FUNCTION_145(v62);
      if (v36)
      {
        v53 = MEMORY[0x277D84F90];
        *v0 = MEMORY[0x277D84F90];
        v0[1] = v53;
        v54 = v0 + v16[6];
        sub_221BCC8C8();
        OUTLINED_FUNCTION_229_1(v16[7]);
        *(v0 + v16[8]) = 2;
        OUTLINED_FUNCTION_145(v62);
        if (!v36)
        {
          sub_2219A1CC8(v62, &qword_27CFBA810, &qword_221BE0D50);
        }
      }

      else
      {
        v55 = OUTLINED_FUNCTION_158_2();
        sub_221B229DC(v55, v0, v56);
      }

      sub_221AF4484(v0, v64);
      OUTLINED_FUNCTION_68_4();
      v57 = OUTLINED_FUNCTION_53_3();
      sub_221B22C2C(v57, v58);
      v59 = OUTLINED_FUNCTION_93_3();
      sub_221B22C2C(v59, v60);
      if (!v1)
      {
        v45 = v64[0];
        v47 = v64[1];
        v48 = v64[2];
        v49 = v64[3];
        v50 = v65;
        goto LABEL_15;
      }
    }
  }

  sub_2219A1CC8(v2, &unk_27CFBB6D0, &qword_221BE0D30);
LABEL_13:
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF4484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v108 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v131 = &v106 - v7;
  v8 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for AppIntentsProtobuf_DynamicOption(0);
  v134 = *(v141 - 1);
  v12 = *(v134 + 64);
  MEMORY[0x28223BE20](v141);
  v135 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v126 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v130 = &v106 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v136 = &v106 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v111 = &v106 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v117 = &v106 - v25;
  MEMORY[0x28223BE20](v24);
  v122 = &v106 - v26;
  v123 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection(0);
  v120 = *(v123 - 1);
  v27 = *(v120 + 64);
  MEMORY[0x28223BE20](v123);
  v29 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a1;
  if (*(*a1 + 16))
  {
    v113 = *a1;
  }

  else
  {
    v113 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v115;
  v107 = sub_221AE9C28();
  v112 = v31;

  v32 = v30[1];
  v33 = *(v32 + 16);
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v146 = MEMORY[0x277D84F90];
    v109 = v33;
    sub_2219A3054(0, v33, 0);
    v35 = v146;
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v143 = result;
    v37 = v35;
    v38 = 0;
    v116 = v32 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    v125 = xmmword_221BD8630;
    v124 = xmmword_221BD8640;
    v133 = v11;
    v118 = v29;
    v129 = v8;
    v110 = v32;
    while (v38 < *(v32 + 16))
    {
      v121 = v37;
      v39 = *(v120 + 72);
      v119 = v38;
      sub_221B22BD0(v116 + v39 * v38, v29, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
      v142 = v123[6];
      v40 = v117;
      sub_2219A02E8(&v29[v142], v117, &qword_27CFB85E8, &unk_221BD86E0);
      v41 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
      v42 = 1;
      v43 = v29;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v41);
      sub_2219A1CC8(v40, &qword_27CFB85E8, &unk_221BD86E0);
      v45 = EnumTagSinglePayload == 1;
      v46 = v43;
      v47 = v135;
      v144 = v41;
      if (!v45)
      {
        v48 = v111;
        sub_2219A02E8(&v43[v142], v111, &qword_27CFB85E8, &unk_221BD86E0);
        if (__swift_getEnumTagSinglePayload(v48, 1, v41) == 1)
        {
          v49 = v122;
          sub_221BCC8C8();
          *(v49 + v144[5]) = v124;
          v50 = v49 + v144[6];
          *v50 = 0;
          *(v50 + 8) = 1;
          v51 = v49 + v144[7];
          v41 = v144;
          *v51 = 0;
          *(v51 + 8) = 1;
          if (__swift_getEnumTagSinglePayload(v48, 1, v41) != 1)
          {
            sub_2219A1CC8(v48, &qword_27CFB85E8, &unk_221BD86E0);
          }
        }

        else
        {
          sub_221B229DC(v48, v122, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
        }

        v42 = 0;
      }

      v52 = v122;
      __swift_storeEnumTagSinglePayload(v122, v42, 1, v41);
      v53 = sub_221B0F228(v52);
      sub_2219A1CC8(v52, &qword_27CFB85E8, &unk_221BD86E0);
      v54 = *v46;
      v55 = *(*v46 + 16);
      if (v55)
      {
        v114 = v53;
        v145 = MEMORY[0x277D84F90];
        result = sub_2219A3074(0, v55, 0);
        v56 = 0;
        v58 = v144;
        v57 = v145;
        v132 = v54 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
        v127 = v55;
        v128 = v54;
        while (v56 < *(v54 + 16))
        {
          v142 = v57;
          sub_221B22BD0(v132 + *(v134 + 72) * v56, v47, type metadata accessor for AppIntentsProtobuf_DynamicOption);
          v59 = v141[7];
          v60 = v130;
          sub_2219A02E8(v47 + v59, v130, &qword_27CFB85E8, &unk_221BD86E0);
          v61 = 1;
          v62 = __swift_getEnumTagSinglePayload(v60, 1, v58);
          sub_2219A1CC8(v60, &qword_27CFB85E8, &unk_221BD86E0);
          v45 = v62 == 1;
          v63 = v144;
          if (!v45)
          {
            v64 = v126;
            sub_2219A02E8(v47 + v59, v126, &qword_27CFB85E8, &unk_221BD86E0);
            if (__swift_getEnumTagSinglePayload(v64, 1, v63) == 1)
            {
              v65 = v136;
              sub_221BCC8C8();
              *(v65 + v144[5]) = v124;
              v66 = v65 + v144[6];
              *v66 = 0;
              *(v66 + 8) = 1;
              v67 = v65 + v144[7];
              v63 = v144;
              *v67 = 0;
              *(v67 + 8) = 1;
              if (__swift_getEnumTagSinglePayload(v64, 1, v63) != 1)
              {
                sub_2219A1CC8(v64, &qword_27CFB85E8, &unk_221BD86E0);
              }
            }

            else
            {
              sub_221B229DC(v64, v136, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
            }

            v61 = 0;
          }

          v68 = v136;
          __swift_storeEnumTagSinglePayload(v136, v61, 1, v63);
          v139 = sub_221B0F228(v68);
          sub_2219A1CC8(v68, &qword_27CFB85E8, &unk_221BD86E0);
          v69 = v141[9];
          v70 = (v47 + v141[8]);
          v71 = *v70;
          v72 = v70[1];
          v138 = *v47;
          v73 = *(v47 + 16);
          v74 = v131;
          sub_2219A02E8(v47 + v69, v131, &unk_27CFBB660, &qword_221BE4610);
          v75 = v129;
          if (__swift_getEnumTagSinglePayload(v74, 1, v129) == 1)
          {
            *v11 = v125;
            v76 = *(v75 + 20);

            sub_221BCC8C8();
            if (__swift_getEnumTagSinglePayload(v74, 1, v75) != 1)
            {
              sub_2219A1CC8(v74, &unk_27CFBB660, &qword_221BE4610);
            }
          }

          else
          {
            sub_221B229DC(v74, v11, type metadata accessor for AppIntentsProtobuf_Value);
          }

          sub_221B14BC4(*v11, v11[1], &qword_27CFBB680, 0x277D23958);
          v58 = v144;
          if (v3)
          {
            sub_221B22C2C(v47, type metadata accessor for AppIntentsProtobuf_DynamicOption);

            sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_Value);
            sub_221B22C2C(v118, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
          }

          v78 = v77;
          v137 = v73;
          v79 = v72;
          v80 = v71;
          v140 = 0;
          sub_221B22C2C(v11, type metadata accessor for AppIntentsProtobuf_Value);
          result = sub_221B22C2C(v47, type metadata accessor for AppIntentsProtobuf_DynamicOption);
          v81 = v139;
          v57 = v142;
          if (v139)
          {
            v82 = v143;
          }

          else
          {
            v82 = 0;
          }

          if (v139)
          {
            v83 = &protocol witness table for LNImage;
          }

          else
          {
            v83 = 0;
          }

          v145 = v142;
          v85 = *(v142 + 16);
          v84 = *(v142 + 24);
          if (v85 >= v84 >> 1)
          {
            result = sub_2219A3074((v84 > 1), v85 + 1, 1);
            v81 = v139;
            v58 = v144;
            v57 = v145;
          }

          ++v56;
          *(v57 + 16) = v85 + 1;
          v86 = v57 + 88 * v85;
          *(v86 + 32) = v81;
          *(v86 + 40) = 0;
          *(v86 + 48) = 0;
          *(v86 + 56) = v82;
          *(&v87 + 1) = *(&v138 + 1);
          *&v88 = v138;
          *(&v88 + 1) = v80;
          *&v87 = v79;
          *(v86 + 64) = v83;
          *(v86 + 88) = v87;
          *(v86 + 72) = v88;
          *(v86 + 104) = v137;
          *(v86 + 112) = v78;
          v54 = v128;
          v3 = v140;
          v11 = v133;
          v47 = v135;
          if (v127 == v56)
          {
            v142 = v57;
            v46 = v118;
            v53 = v114;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v140 = v3;
      v142 = MEMORY[0x277D84F90];
LABEL_38:
      v89 = (v46 + v123[7]);
      v91 = *v89;
      v90 = v89[1];
      v92 = (v46 + v123[8]);
      v94 = *v92;
      v93 = v92[1];

      result = sub_221B22C2C(v46, type metadata accessor for AppIntentsProtobuf_DynamicOptionsSection);
      if (v53)
      {
        v95 = &protocol witness table for LNImage;
      }

      else
      {
        v95 = 0;
      }

      if (v53)
      {
        v96 = v143;
      }

      else
      {
        v96 = 0;
      }

      v37 = v121;
      v146 = v121;
      v98 = *(v121 + 16);
      v97 = *(v121 + 24);
      if (v98 >= v97 >> 1)
      {
        v114 = v53;
        result = sub_2219A3054((v97 > 1), v98 + 1, 1);
        v53 = v114;
        v37 = v146;
      }

      v38 = v119 + 1;
      *(v37 + 16) = v98 + 1;
      v99 = v37 + 80 * v98;
      *(v99 + 32) = v53;
      *(v99 + 40) = 0;
      *(v99 + 48) = 0;
      *(v99 + 56) = v96;
      v100 = v142;
      *(v99 + 64) = v95;
      *(v99 + 72) = v100;
      *&v101 = v91;
      *(&v101 + 1) = v90;
      *&v102 = v94;
      *(&v102 + 1) = v93;
      *(v99 + 80) = v101;
      *(v99 + 96) = v102;
      v3 = v140;
      v11 = v133;
      v29 = v118;
      v32 = v110;
      if (v38 == v109)
      {
        v34 = v37;
        goto LABEL_49;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_49:
    result = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
    v103 = *(v115 + *(result + 32));
    v104 = v108;
    v105 = v107;
    *v108 = v113;
    v104[1] = v105;
    v104[2] = v112;
    v104[3] = v34;
    *(v104 + 32) = v103 & 1;
  }

  return result;
}

void sub_221AF5110()
{
  OUTLINED_FUNCTION_55_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB6D0, &qword_221BE0D30);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_82_5();
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[2];
  v13 = v0[3];
  v14 = *(v0 + 32);
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_76_3(OptionsForAction);
  if (v14 < 0)
  {
    type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_63_7();
    *(v19 - 16) = v10;
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v20, v21);
    OUTLINED_FUNCTION_154_3();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_151_3();
      swift_storeEnumTagMultiPayload();
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_240_2();
    type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
    OUTLINED_FUNCTION_74_6();
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_81_6();
    *(v17 - 16) = &v29;
    sub_221AE8904(&qword_27CFB9E60, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success);
    OUTLINED_FUNCTION_156_1();
    sub_221BCCB58();
    OUTLINED_FUNCTION_157_2();
    if (!v1)
    {
      OUTLINED_FUNCTION_14();
      swift_storeEnumTagMultiPayload();
LABEL_7:
      v25 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v3);
      OUTLINED_FUNCTION_105_5();
      type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse(0);
      OUTLINED_FUNCTION_74_6();
      MEMORY[0x28223BE20](v28);
      OUTLINED_FUNCTION_60_7();
      sub_221AE8904(&unk_27CFBB400, type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse);
      OUTLINED_FUNCTION_143_3();
      OUTLINED_FUNCTION_157_2();
      v24 = OUTLINED_FUNCTION_96_6();
      goto LABEL_8;
    }
  }

  v22 = &unk_27CFBB6D0;
  v23 = &qword_221BE0D30;
  v24 = v2;
LABEL_8:
  sub_2219A1CC8(v24, v22, v23);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF539C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2;
  sub_221AE8904(&unk_27CFBB6F0, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);
  result = sub_221BCCB58();
  if (!v2)
  {
    v10 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0) + 20);
    sub_2219A1CC8(a1 + v10, &qword_27CFBA810, &qword_221BE0D50);
    sub_221B229DC(v8, a1 + v10, type metadata accessor for AppIntentsProtobuf_DynamicOptionsResult);
    return __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v5);
  }

  return result;
}

uint64_t sub_221AF5508(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 32);
  return sub_221AEC584(a1, sub_221B19858);
}

uint64_t sub_221AF5570()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_221AED760();
}

void sub_221AF55AC()
{
  OUTLINED_FUNCTION_55_4();
  v74 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_104_2();
  v67 = v12;
  v13 = OUTLINED_FUNCTION_133_3();
  v68 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v13);
  v14 = OUTLINED_FUNCTION_2_1(v68);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_8();
  v69 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_104_2();
  v72 = v22;
  v23 = OUTLINED_FUNCTION_133_3();
  v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v23);
  v25 = OUTLINED_FUNCTION_2_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_21_10();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_83_6();
  v32 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v33 = OUTLINED_FUNCTION_2_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57_7();
  v36 = sub_221BCC558();
  v37 = OUTLINED_FUNCTION_0_2(v36);
  v70 = v38;
  v71 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  restarted = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v79 = v7;
  sub_2219A02E8(v7 + restarted[6], v0, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_43_9(v0);
  if (v41)
  {
    *v3 = 0;
    v3[1] = 0;
    v42 = v3 + *(v32 + 24);
    sub_221BCC8C8();
    OUTLINED_FUNCTION_43_9(v0);
    if (!v41)
    {
      sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v43 = OUTLINED_FUNCTION_91();
    sub_221B229DC(v43, v44, v45);
  }

  sub_221AE9E30(v3);
  if (v1)
  {
    OUTLINED_FUNCTION_31_9();
    sub_221B22C2C(v7, v46);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v3, v47);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v3, v48);
    (*(v70 + 32))(v74, v2, v71);
    sub_2219A02E8(v7 + restarted[7], v72, &unk_27CFBB600, &qword_221BE44B0);
    OUTLINED_FUNCTION_145(v72);
    if (v41)
    {
      sub_221BCC8C8();
      v49 = (v4 + v24[5]);
      *v49 = 0;
      v49[1] = 0;
      OUTLINED_FUNCTION_217_3(v4 + v24[6]);
      *(v4 + v24[7]) = 2;
      OUTLINED_FUNCTION_145(v72);
      if (!v41)
      {
        sub_2219A1CC8(v72, &unk_27CFBB600, &qword_221BE44B0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_37();
      sub_221B229DC(v72, v4, v50);
    }

    sub_221AE9D08();
    v51 = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
    v52 = v74 + *(v51 + 20);
    *v52 = v75;
    *(v52 + 8) = v76;
    *(v52 + 16) = v77;
    *(v52 + 17) = v78;
    sub_2219A02E8(v7 + restarted[5], v67, &qword_27CFBA688, &unk_221BE50E0);
    v53 = OUTLINED_FUNCTION_148_3();
    OUTLINED_FUNCTION_44_5(v53, v54);
    if (v41)
    {
      v58 = v69;
      *v69 = 0;
      v69[1] = 0xE000000000000000;
      v55 = v69 + *(v68 + 20);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_31_9();
      sub_221B22C2C(v79, v56);
      OUTLINED_FUNCTION_194_2(*(v68 + 24));
      OUTLINED_FUNCTION_13_8(v67);
      if (!v41)
      {
        sub_2219A1CC8(v67, &qword_27CFBA688, &unk_221BE50E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_31_9();
      sub_221B22C2C(v7, v57);
      OUTLINED_FUNCTION_55_9();
      v58 = v69;
      sub_221B229DC(v67, v69, v59);
    }

    v61 = *v58;
    v60 = v58[1];
    v62 = (v58 + *(v68 + 24));
    v64 = *v62;
    v63 = v62[1];

    OUTLINED_FUNCTION_54_7();
    sub_221B22C2C(v58, v65);
    v66 = (v74 + *(v51 + 24));
    *v66 = v61;
    v66[1] = v60;
    v66[2] = v64;
    v66[3] = v63;
  }

  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF5A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
  v12 = restarted;
  v13 = (a2 + *(restarted + 20));
  v14 = v13[1];
  if (v14)
  {
    v28[0] = *v13;
    v28[1] = v14;
    sub_221AF5DAC();
  }

  MEMORY[0x28223BE20](restarted);
  v28[-2] = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v15 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  v16 = *(v15 + 24);
  sub_2219A1CC8(a1 + v16, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v10, a1 + v16, type metadata accessor for AppIntentsProtobuf_UUID);
  v17 = __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v7);
  v18 = (a2 + *(v12 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 1);
  *&v22 = MEMORY[0x28223BE20](v17);
  v28[-4] = v23;
  v28[-3] = v24;
  *&v28[-2] = v22;
  sub_221AE8904(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  v25 = v29;
  sub_221BCCB58();
  v26 = *(v15 + 20);
  sub_2219A1CC8(a1 + v26, &qword_27CFBA688, &unk_221BE50E0);
  sub_221B229DC(v25, a1 + v26, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return __swift_storeEnumTagSinglePayload(a1 + v26, 0, 1, v4);
}

void sub_221AF5DAC()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_162_0();
  v5 = OUTLINED_FUNCTION_64_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_40_8();
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v11);
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v16 = *v3;
  v17 = v3[1];
  v18 = *(v4(0) + 28);
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_13_8(v2);
  if (v19)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_212_2(v20);
    *(v21 + 4) = 1;
    OUTLINED_FUNCTION_195_3(*(v12 + 28));
    OUTLINED_FUNCTION_13_8(v2);
    if (!v19)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_70_0();
    sub_221B229DC(v22, v23, v24);
  }

  OUTLINED_FUNCTION_224_1();
  *v2 = v16;
  v2[1] = v17;
  sub_2219A1CC8(v0 + v18, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_1_37();
  sub_221B229DC(v1, v0 + v18, v25);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v12);
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

void sub_221AF5FDC()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_104_2();
  v11 = OUTLINED_FUNCTION_133_3();
  v50 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v11);
  v12 = OUTLINED_FUNCTION_2_1(v50);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_51_6();
  v23 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v22);
  v24 = OUTLINED_FUNCTION_2_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  v27 = OUTLINED_FUNCTION_45_9();
  started = type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(v27);
  sub_2219A02E8(v4 + *(started + 24), v1, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_43_9(v1);
  if (v29)
  {
    sub_221BCC8C8();
    v30 = (v2 + v23[5]);
    *v30 = 0;
    v30[1] = 0;
    v31 = v2 + v23[6];
    *v31 = 0;
    *(v31 + 4) = 1;
    *(v2 + v23[7]) = 2;
    OUTLINED_FUNCTION_43_9(v1);
    if (!v29)
    {
      sub_2219A1CC8(v1, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    v32 = OUTLINED_FUNCTION_64_0();
    sub_221B229DC(v32, v33, v34);
  }

  OUTLINED_FUNCTION_236_0();
  sub_221AE9D08();
  if (v0)
  {
    OUTLINED_FUNCTION_64_5();
  }

  else
  {
    v35 = *(started + 20);
    OUTLINED_FUNCTION_213_3();
    sub_2219A02E8(v36, v37, v38, v39);
    v40 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_72_6(v40, v41);
    if (v29)
    {
      *v17 = 0;
      v17[1] = 0xE000000000000000;
      v42 = v17 + *(v50 + 20);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_229_1(*(v50 + 24));
      OUTLINED_FUNCTION_48_8(1);
      if (!v29)
      {
        sub_2219A1CC8(1, &qword_27CFBA688, &unk_221BE50E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_64_5();
      OUTLINED_FUNCTION_55_9();
      sub_221B229DC(1, v17, v43);
    }

    v45 = *v17;
    v44 = v17[1];
    v46 = (v17 + *(v50 + 24));
    v48 = *v46;
    v47 = v46[1];

    OUTLINED_FUNCTION_54_7();
    sub_221B22C2C(v17, v49);
    *v6 = v51;
    *(v6 + 8) = v52;
    *(v6 + 16) = v53;
    *(v6 + 17) = v54;
    *(v6 + 24) = v45;
    *(v6 + 32) = v44;
    *(v6 + 40) = v48;
    *(v6 + 48) = v47;
  }

  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF62AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 8);
  if (v9)
  {
    v18[0] = *a2;
    v18[1] = v9;
    sub_221AF6468();
  }

  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  *&v13 = MEMORY[0x28223BE20](v6);
  v18[-4] = v14;
  v18[-3] = v15;
  *&v18[-2] = v13;
  sub_221AE8904(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  sub_221BCCB58();
  v16 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0) + 20);
  sub_2219A1CC8(a1 + v16, &qword_27CFBA688, &unk_221BE50E0);
  sub_221B229DC(v8, a1 + v16, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v4);
}

void sub_221AF6468()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_162_0();
  v5 = OUTLINED_FUNCTION_64_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_40_8();
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v11);
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v16 = *v3;
  v17 = v3[1];
  v18 = *(v4(0) + 24);
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_13_8(v2);
  if (v19)
  {

    sub_221BCC8C8();
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_212_2(v20);
    *(v21 + 4) = 1;
    OUTLINED_FUNCTION_195_3(*(v12 + 28));
    OUTLINED_FUNCTION_13_8(v2);
    if (!v19)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_70_0();
    sub_221B229DC(v22, v23, v24);
  }

  OUTLINED_FUNCTION_224_1();
  *v2 = v16;
  v2[1] = v17;
  sub_2219A1CC8(v0 + v18, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_1_37();
  sub_221B229DC(v1, v0 + v18, v25);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v12);
  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF6600(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_221AEC37C(a1);
}

uint64_t sub_221AF665C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_221AED8B0();
}

void sub_221AF66A0()
{
  OUTLINED_FUNCTION_55_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_156();
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57_7();
  v11 = sub_221BCC558();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_12();
  started = type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0);
  OUTLINED_FUNCTION_250_2(*(started + 20));
  v16 = OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_49_4(v16, v17, v7);
  if (v18)
  {
    *v1 = 0;
    v1[1] = 0;
    v19 = v1 + *(v7 + 24);
    sub_221BCC8C8();
    v20 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_49_4(v20, v21, v7);
    if (!v18)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v22 = OUTLINED_FUNCTION_151_3();
    sub_221B229DC(v22, v23, v24);
  }

  sub_221AE9E30(v1);
  v25 = OUTLINED_FUNCTION_53_3();
  sub_221B22C2C(v25, v26);
  OUTLINED_FUNCTION_0_43();
  sub_221B22C2C(v1, v27);
  if (!v0)
  {
    v28 = OUTLINED_FUNCTION_232_1();
    v29(v28);
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF6868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v8 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.StartObservingEventResponse(0) + 20);
  sub_2219A1CC8(a1 + v8, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v7, a1 + v8, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v4);
}

void sub_221AF6A68()
{
  OUTLINED_FUNCTION_55_4();
  v6 = v5;
  v75 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_104_2();
  v69 = v12;
  v13 = OUTLINED_FUNCTION_133_3();
  v70 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v13);
  v14 = OUTLINED_FUNCTION_2_1(v70);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_8();
  v71 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_45_9();
  v73 = type metadata accessor for AppIntentsProtobuf_UUID(v22);
  v23 = OUTLINED_FUNCTION_2_1(v73);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_16_12();
  v26 = sub_221BCC558();
  v27 = OUTLINED_FUNCTION_0_2(v26);
  v67 = v28;
  v68 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_83_6();
  v36 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v37 = OUTLINED_FUNCTION_2_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_21_10();
  v72 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v40 = v6;
  sub_2219A02E8(v6 + v72[7], v0, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_25_10(v0);
  if (v41)
  {
    sub_221BCC8C8();
    v42 = (v3 + v36[5]);
    *v42 = 0;
    v42[1] = 0;
    OUTLINED_FUNCTION_217_3(v3 + v36[6]);
    *(v3 + v36[7]) = 2;
    OUTLINED_FUNCTION_25_10(v0);
    if (!v41)
    {
      sub_2219A1CC8(v0, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    sub_221B229DC(v0, v3, v43);
  }

  OUTLINED_FUNCTION_208_2();
  sub_221AE9D08();
  if (v1)
  {
    OUTLINED_FUNCTION_30_9();
    sub_221B22C2C(v6, v44);
  }

  else
  {
    v80 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
    v45 = v75 + *(v80 + 20);
    *v45 = v76;
    *(v45 + 8) = v77;
    *(v45 + 16) = v78;
    *(v45 + 17) = v79;
    v46 = v6;
    sub_2219A02E8(v6 + v72[6], v4, &qword_27CFB9988, &qword_221BDAE20);
    v47 = OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_44_5(v47, v48);
    if (v41)
    {
      *v2 = 0;
      v2[1] = 0;
      v49 = v2 + *(v73 + 24);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_13_8(v4);
      v51 = v74;
      if (!v41)
      {
        sub_2219A1CC8(v4, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      sub_221B229DC(v4, v2, v50);
      v51 = v74;
    }

    sub_221AE9E30(v2);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v52);
    (*(v67 + 32))(v75, v51, v68);
    sub_2219A02E8(v40 + v72[5], v69, &qword_27CFBA688, &unk_221BE50E0);
    v53 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_73_6(v53, v54);
    if (v41)
    {
      v58 = v71;
      *v71 = 0;
      v71[1] = 0xE000000000000000;
      v55 = v71 + *(v70 + 20);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_30_9();
      sub_221B22C2C(v46, v56);
      OUTLINED_FUNCTION_196_1(*(v70 + 24));
      OUTLINED_FUNCTION_20_8(v69);
      if (!v41)
      {
        sub_2219A1CC8(v69, &qword_27CFBA688, &unk_221BE50E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_9();
      sub_221B22C2C(v40, v57);
      OUTLINED_FUNCTION_55_9();
      v58 = v71;
      sub_221B229DC(v69, v71, v59);
    }

    v61 = *v58;
    v60 = v58[1];
    v62 = (v58 + *(v70 + 24));
    v64 = *v62;
    v63 = v62[1];

    OUTLINED_FUNCTION_54_7();
    sub_221B22C2C(v58, v65);
    v66 = (v75 + *(v80 + 24));
    *v66 = v61;
    v66[1] = v60;
    v66[2] = v64;
    v66[3] = v63;
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF6F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
  v12 = v11;
  v13 = (a2 + *(v11 + 20));
  v14 = v13[1];
  if (v14)
  {
    v28[0] = *v13;
    v28[1] = v14;
    sub_221AF5DAC();
  }

  MEMORY[0x28223BE20](v11);
  v28[-2] = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v15 = type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  v16 = *(v15 + 24);
  sub_2219A1CC8(a1 + v16, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v10, a1 + v16, type metadata accessor for AppIntentsProtobuf_UUID);
  v17 = __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v7);
  v18 = (a2 + *(v12 + 24));
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 1);
  *&v22 = MEMORY[0x28223BE20](v17);
  v28[-4] = v23;
  v28[-3] = v24;
  *&v28[-2] = v22;
  sub_221AE8904(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  v25 = v29;
  sub_221BCCB58();
  v26 = *(v15 + 20);
  sub_2219A1CC8(a1 + v26, &qword_27CFBA688, &unk_221BE50E0);
  sub_221B229DC(v25, a1 + v26, type metadata accessor for AppIntentsProtobuf_NotificationTopic);
  return __swift_storeEnumTagSinglePayload(a1 + v26, 0, 1, v4);
}

void sub_221AF7304(uint64_t *a1, void *a2)
{
  v3 = v2;
  v101 = type metadata accessor for AppIntentsProtobuf_Property(0);
  v95 = *(v101 - 1);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v101);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  v9 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v11 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  v13 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v15 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  v17 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v19);
  (*(v20 + 8))(v96, v19, v20);
  v21 = v96[0];
  v22 = v96[1];
  sub_2219982C4(v96[2], v96[3]);
  v23 = a1[3];

  a1[2] = v21;
  a1[3] = v22;
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v24);
  v26 = (*(v25 + 16))(v24, v25);
  v28 = v27;
  v29 = a1[1];

  *a1 = v26;
  a1[1] = v28;
  v30 = a2[3];
  v31 = a2[4];
  v90 = a2;
  __swift_project_boxed_opaque_existential_0(a2, v30);
  v32 = (*(v31 + 24))(v30, v31);
  v33 = *(v32 + 16);
  if (v33)
  {
    v81 = a1;
    v97 = MEMORY[0x277D84F90];
    sub_2219A32B4(0, v33, 0);
    v35 = 0;
    v36 = 32;
    v37 = v97;
    v93 = v33;
    v94 = v32;
    while (v35 < *(v32 + 16))
    {
      v38 = *(v32 + v36);
      v39 = *(v32 + v36 + 16);
      v100 = *(v32 + v36 + 32);
      v99[0] = v38;
      v99[1] = v39;
      MEMORY[0x28223BE20](v34);
      *(&v81 - 2) = v40;
      sub_221B21DAC(v99, v96);
      sub_221AE8904(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property);
      sub_221BCCB58();
      if (v3)
      {

        sub_221B21E08(v99);

        return;
      }

      v41 = v8;
      sub_221B21E08(v99);
      v97 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_2219A32B4(v42 > 1, v43 + 1, 1);
        v37 = v97;
      }

      ++v35;
      *(v37 + 16) = v43 + 1;
      v44 = v37 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v43;
      v8 = v41;
      v34 = sub_221B229DC(v41, v44, type metadata accessor for AppIntentsProtobuf_Property);
      v36 += 40;
      v3 = 0;
      v32 = v94;
      if (v93 == v35)
      {

        a1 = v81;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
LABEL_11:
    v45 = a1[4];

    a1[4] = v37;
    v46 = v90;
    v47 = v90[9];
    __swift_project_boxed_opaque_existential_0(v90 + 5, v90[8]);
    v48 = v82;
    sub_221AF3F8C();
    v49 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
    v50 = *(v49 + 36);
    v95 = v49;
    sub_2219A1CC8(a1 + v50, &unk_27CFBB650, &qword_221BE0A38);
    sub_221B229DC(v48, a1 + v50, type metadata accessor for AppIntentsProtobuf_Environment);
    __swift_storeEnumTagSinglePayload(a1 + v50, 0, 1, v83);
    v101 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
    v51 = v46 + v101[6];
    MEMORY[0x28223BE20](v101);
    *(&v81 - 2) = v52;
    sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
    v53 = v84;
    v54 = v85;
    sub_221BCCB58();
    v94 = v3;
    v55 = *(v49 + 48);
    sub_2219A1CC8(a1 + v55, &qword_27CFB9988, &qword_221BDAE20);
    sub_221B229DC(v53, a1 + v55, type metadata accessor for AppIntentsProtobuf_UUID);
    __swift_storeEnumTagSinglePayload(a1 + v55, 0, 1, v54);
    v56 = v101;
    v57 = memcpy(v98, v46 + v101[7], sizeof(v98));
    v58 = a1;
    MEMORY[0x28223BE20](v57);
    *(&v81 - 2) = v98;
    sub_221AE8904(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
    v60 = v86;
    v59 = v87;
    v61 = v94;
    sub_221BCCB58();
    v94 = v61;
    v62 = v95;
    v63 = *(v95 + 32);
    sub_2219A1CC8(a1 + v63, &unk_27CFBB730, &unk_221BE0A40);
    sub_221B229DC(v60, a1 + v63, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
    v64 = __swift_storeEnumTagSinglePayload(a1 + v63, 0, 1, v59);
    v65 = v46 + v56[8];
    v66 = v65[16];
    v67 = v65[17];
    v68 = *v65;
    *&v69 = MEMORY[0x28223BE20](v64);
    *(&v81 - 2) = v69;
    *(&v81 - 16) = v70;
    *(&v81 - 15) = v71;
    sub_221AE8904(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    v73 = v88;
    v72 = v89;
    sub_221BCCB58();
    v74 = *(v62 + 44);
    sub_2219A1CC8(v58 + v74, &unk_27CFBB600, &qword_221BE44B0);
    sub_221B229DC(v73, v58 + v74, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata);
    v75 = __swift_storeEnumTagSinglePayload(v58 + v74, 0, 1, v72);
    v76 = *(v46 + v101[9]);
    MEMORY[0x28223BE20](v75);
    *(&v81 - 16) = v77;
    sub_221AE8904(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);
    v79 = v91;
    v78 = v92;
    sub_221BCCB58();
    v80 = *(v95 + 40);
    sub_2219A1CC8(v58 + v80, &qword_27CFBA3E8, &qword_221BE0A30);
    sub_221B229DC(v79, v58 + v80, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext);
    __swift_storeEnumTagSinglePayload(v58 + v80, 0, 1, v78);
  }
}

void sub_221AF7CB8()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3E8, &qword_221BE0A30);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_104_2();
  v14 = OUTLINED_FUNCTION_70_7(v13);
  v215 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(v14);
  v15 = OUTLINED_FUNCTION_2_1(v215);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_104_2();
  v24 = OUTLINED_FUNCTION_70_7(v23);
  v228 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v24);
  v25 = OUTLINED_FUNCTION_8_1(v228);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB730, &unk_221BE0A40);
  OUTLINED_FUNCTION_8_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_104_2();
  v34 = OUTLINED_FUNCTION_70_7(v33);
  v216 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v34);
  v35 = OUTLINED_FUNCTION_2_1(v216);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_0();
  v38 = OUTLINED_FUNCTION_45_9();
  v39 = type metadata accessor for AppIntentsProtobuf_UUID(v38);
  v40 = OUTLINED_FUNCTION_2_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v45 = OUTLINED_FUNCTION_8_1(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_70_7(v49);
  v226 = sub_221BCC558();
  v50 = OUTLINED_FUNCTION_0_2(v226);
  v225 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30_8();
  v55 = OUTLINED_FUNCTION_70_7(v54);
  v229 = type metadata accessor for AppIntentsProtobuf_Value(v55);
  v56 = OUTLINED_FUNCTION_2_1(v229);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_111_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v61 = OUTLINED_FUNCTION_8_1(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_132_2();
  v68 = OUTLINED_FUNCTION_70_7(v67);
  v231 = type metadata accessor for AppIntentsProtobuf_Property(v68);
  v69 = OUTLINED_FUNCTION_0_2(v231);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_132_2();
  v245 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_104_2();
  v81 = OUTLINED_FUNCTION_70_7(v80);
  v219 = type metadata accessor for AppIntentsProtobuf_Environment(v81);
  v82 = OUTLINED_FUNCTION_2_1(v219);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v85 = v6[3];
  v217 = v6[2];
  v86 = v6[1];
  v218 = *v6;
  v224 = v6;
  v87 = *(v6[4] + 16);
  v213 = v3;
  if (v87)
  {
    v206 = v1;
    v207 = v39;
    v234 = v4;
    v208 = v8;
    *&v244[0] = MEMORY[0x277D84F90];
    v205 = v85;

    v4 = v244;
    sub_2219A2FF4(0, v87, 0);
    v88 = *(v71 + 80);
    OUTLINED_FUNCTION_176_2();
    v89 = *&v244[0];
    v230 = *(v71 + 72);
    v90 = v229;
    do
    {
      v239 = v89;
      v240 = v87;
      OUTLINED_FUNCTION_134_4();
      v236 = v91;
      sub_221B22BD0(v91, v245, v92);
      v93 = OUTLINED_FUNCTION_131_3();
      sub_221B22BD0(v93, v94, v4);
      v95 = v2[1];
      v238 = *v2;
      sub_2219A02E8(v2 + *(v231 + 24), v233, &unk_27CFBB660, &qword_221BE4610);
      v4 = 1;
      OUTLINED_FUNCTION_98_4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v96, v97, v98);
      v237 = v95;

      OUTLINED_FUNCTION_192_3();
      sub_2219A1CC8(v100, v101, v102);
      if (EnumTagSinglePayload != 1)
      {
        OUTLINED_FUNCTION_171_3(&v244[7] + 8);
        sub_2219A02E8(v103, v104, &unk_27CFBB660, &qword_221BE4610);
        OUTLINED_FUNCTION_25_10(1);
        if (v105)
        {
          *v232 = xmmword_221BD8630;
          v106 = v232 + *(v90 + 20);
          sub_221BCC8C8();
          OUTLINED_FUNCTION_25_10(1);
          if (!v105)
          {
            OUTLINED_FUNCTION_192_3();
            sub_2219A1CC8(v107, v108, v109);
          }
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          v110 = OUTLINED_FUNCTION_172_3();
          sub_221B229DC(v110, v111, v112);
        }

        v4 = 0;
      }

      OUTLINED_FUNCTION_211_3();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v90);
      OUTLINED_FUNCTION_171_3(&v244[10] + 8);
      sub_2219A02E8(v116, v117, &unk_27CFBB660, &qword_221BE4610);
      OUTLINED_FUNCTION_25_10(v4);
      v89 = v239;
      if (v105)
      {
        v118 = OUTLINED_FUNCTION_169_2();
        sub_2219A1CC8(v118, v119, &qword_221BE4610);
        v120 = 0;
        v121 = v240;
      }

      else
      {
        OUTLINED_FUNCTION_7_16();
        OUTLINED_FUNCTION_171_3(&v244[8]);
        sub_221B229DC(v122, v123, v124);
        sub_221B14BC4(*v4, *(v4 + 8), &qword_27CFBB680, 0x277D23958);
        v121 = v240;
        if (v234)
        {
          v126 = OUTLINED_FUNCTION_169_2();
          sub_2219A1CC8(v126, v127, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v4, v128);
          if (qword_27CFB73D0 != -1)
          {
            OUTLINED_FUNCTION_22_11();
            swift_once();
          }

          v129 = sub_221BCCD88();
          __swift_project_value_buffer(v129, qword_27CFDEEB8);
          v130 = v234;
          v4 = sub_221BCCD68();
          v131 = sub_221BCDA78();

          if (os_log_type_enabled(v4, v131))
          {
            OUTLINED_FUNCTION_288();
            v132 = swift_slowAlloc();
            OUTLINED_FUNCTION_227_2();
            v133 = swift_slowAlloc();
            *v132 = 138412290;
            v134 = v234;
            v135 = _swift_stdlib_bridgeErrorToNSError();
            *(v132 + 4) = v135;
            *v133 = v135;
            _os_log_impl(&dword_221989000, v4, v131, "Serialization error: %@", v132, 0xCu);
            sub_2219A1CC8(v133, &unk_27CFB7630, qword_221BD0790);
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
            OUTLINED_FUNCTION_29_1();
            MEMORY[0x223DA4C00]();
          }

          else
          {
          }

          v120 = 0;
          v234 = 0;
          v90 = v229;
        }

        else
        {
          v120 = v125;
          v136 = OUTLINED_FUNCTION_169_2();
          sub_2219A1CC8(v136, v137, &qword_221BE4610);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v4, v138);
        }
      }

      OUTLINED_FUNCTION_49_8();
      sub_221B22C2C(v245, v139);
      sub_221B22C2C(v2, v4);
      *&v244[0] = v89;
      v141 = *(v89 + 16);
      v140 = *(v89 + 24);
      if (v141 >= v140 >> 1)
      {
        v144 = OUTLINED_FUNCTION_90_3(v140);
        v4 = v244;
        sub_2219A2FF4(v144, v141 + 1, 1);
        v89 = *&v244[0];
      }

      *(v89 + 16) = v141 + 1;
      v142 = (v89 + 40 * v141);
      v143 = v237;
      v142[4] = v238;
      v142[5] = v143;
      v142[7] = 0;
      v142[8] = 0;
      v142[6] = v120;
      v87 = v121 - 1;
    }

    while (v87);
    v8 = v208;
    OUTLINED_FUNCTION_190_2();
    v39 = v207;
    v1 = v206;
    v145 = v86;
    v146 = v205;
  }

  else
  {
    v146 = v85;

    v89 = MEMORY[0x277D84F90];
    v145 = v86;
  }

  v147 = swift_allocObject();
  *(v147 + 16) = v217;
  *(v147 + 24) = v146;
  *(v147 + 32) = xmmword_221BD0800;
  *(v147 + 48) = v218;
  *(v147 + 56) = v145;
  *(v147 + 64) = v89;
  *v8 = v147;
  *(v8 + 8) = v244[0];
  *(v8 + 24) = &type metadata for AnyAppIntentSpecification;
  *(v8 + 32) = &off_283513928;
  v148 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  sub_2219A02E8(v224 + v148[9], v220, &unk_27CFBB650, &qword_221BE0A38);
  v149 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v149, v150, v219);
  v235 = v4;
  if (v105)
  {
    *v1 = 0;
    v1[1] = 0xE000000000000000;
    v151 = v1 + *(v219 + 20);
    sub_221BCC8C8();
    v152 = OUTLINED_FUNCTION_56_6();
    OUTLINED_FUNCTION_49_4(v152, v153, v219);
    v155 = v221;
    if (!v105)
    {
      sub_2219A1CC8(v220, &unk_27CFBB650, &qword_221BE0A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_140_3();
    sub_221B229DC(v220, v1, v154);
    v155 = v221;
  }

  v156 = sub_2219A1D20(0, &qword_27CFB7B18, 0x277D23C08);
  v157 = *v1;
  v158 = v1[1];

  v159 = sub_221AE9500(v157, v158, &selRef_initWithLocaleIdentifier_);
  OUTLINED_FUNCTION_139_3();
  sub_221B22C2C(v1, v160);
  *&v244[2] = &protocol witness table for LNEnvironment;
  *(&v244[1] + 1) = v156;
  *&v244[0] = v159;
  sub_22198B358(v244, v8 + 40);
  v161 = v148[12];
  sub_2219A02E8(v224 + v161, v155, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_98_4();
  v165 = __swift_getEnumTagSinglePayload(v162, v163, v164);
  sub_2219A1CC8(v155, &qword_27CFB9988, &qword_221BDAE20);
  if (v165 == 1)
  {
    v166 = v222;
    sub_221BCC548();
    v167 = v223;
    v168 = v228;
    v169 = v227;
  }

  else
  {
    sub_2219A02E8(v224 + v161, v211, &qword_27CFB9988, &qword_221BDAE20);
    OUTLINED_FUNCTION_25_10(v211);
    v168 = v228;
    v169 = v227;
    if (v105)
    {
      v171 = v212;
      *v212 = 0;
      v212[1] = 0;
      v170 = v212 + *(v39 + 24);
      sub_221BCC8C8();
      OUTLINED_FUNCTION_20_8(v211);
      if (!v105)
      {
        sub_2219A1CC8(v211, &qword_27CFB9988, &qword_221BDAE20);
      }
    }

    else
    {
      OUTLINED_FUNCTION_5_20();
      v171 = v212;
      sub_221B229DC(v211, v212, v172);
    }

    v166 = v222;
    sub_221AE9E30(v171);
    v167 = v223;
    if (v235)
    {
      OUTLINED_FUNCTION_0_43();
      sub_221B22C2C(v173, v174);
      OUTLINED_FUNCTION_38_6();
      v175 = 0;
      goto LABEL_50;
    }

    v235 = 0;
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v176, v177);
  }

  v246 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  (*(v225 + 32))(v8 + v246[6], v166, v226);
  sub_2219A02E8(v224 + v148[8], v169, &unk_27CFBB730, &unk_221BE0A40);
  v178 = OUTLINED_FUNCTION_56_6();
  v179 = v216;
  OUTLINED_FUNCTION_73_6(v178, v180);
  if (v105)
  {
    sub_221BCC8C8();
    v181 = *(v216 + 20);
    if (qword_27CFB6E88 != -1)
    {
      swift_once();
    }

    *(v213 + v181) = qword_27CFB9B00;
    v179 = v227;
    v182 = OUTLINED_FUNCTION_9_1();
    v185 = __swift_getEnumTagSinglePayload(v182, v183, v184);

    v168 = v228;
    if (v185 != 1)
    {
      sub_2219A1CC8(v227, &unk_27CFBB730, &unk_221BE0A40);
    }
  }

  else
  {
    sub_221B229DC(v169, v213, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
  }

  sub_221AF8D3C(v213, v244);
  memcpy((v8 + v246[7]), v244, 0xD7uLL);
  sub_2219A02E8(v224 + v148[11], v167, &unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_48_8(v167);
  if (v105)
  {
    sub_221BCC8C8();
    OUTLINED_FUNCTION_194_2(v168[5]);
    v186 = v214 + v168[6];
    *v186 = 0;
    *(v186 + 4) = 1;
    OUTLINED_FUNCTION_215_1(v168[7]);
    OUTLINED_FUNCTION_48_8(v167);
    v190 = v215;
    v179 = v235;
    if (!v105)
    {
      sub_2219A1CC8(v167, &unk_27CFBB600, &qword_221BE44B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_245_2(&v240);
    sub_221B229DC(v187, v188, v189);
    v190 = v215;
    OUTLINED_FUNCTION_190_2();
  }

  sub_221AE9D08();
  if (v179)
  {
    OUTLINED_FUNCTION_38_6();
    v175 = 1;
LABEL_50:
    sub_2219B397C(v8);
    __swift_destroy_boxed_opaque_existential_0((v8 + 40));
    if (v175)
    {
      v191 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
      (*(v225 + 8))(v8 + *(v191 + 24), v226);
      memcpy(v244, (v8 + *(v191 + 28)), 0xD7uLL);
      sub_221A0E8E4(v244);
    }

    goto LABEL_60;
  }

  v192 = v242;
  v193 = v243;
  v194 = v8 + v246[8];
  *v194 = v241;
  *(v194 + 16) = v192;
  *(v194 + 17) = v193;
  sub_2219A02E8(v224 + v148[10], v209, &qword_27CFBA3E8, &qword_221BE0A30);
  OUTLINED_FUNCTION_13_8(v209);
  if (v105)
  {
    v148 = v210;
    sub_221BCC8C8();
    v195 = (v210 + *(v190 + 20));
    *v195 = 0;
    v195[1] = 0;
    OUTLINED_FUNCTION_13_8(v209);
    if (!v105)
    {
      sub_2219A1CC8(v209, &qword_27CFBA3E8, &qword_221BE0A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_145_2(&v236);
    sub_221B229DC(v196, v197, v198);
  }

  v199 = (v148 + *(v190 + 20));
  if (v199[1])
  {
    v200 = *v199;
    v201 = v199[1];

    IntentsServices.InterfaceIdiom.init(rawValue:)(&v241);
    OUTLINED_FUNCTION_38_6();
    v202 = OUTLINED_FUNCTION_93_3();
    sub_221B22C2C(v202, v203);
    v204 = v241;
  }

  else
  {
    OUTLINED_FUNCTION_38_6();
    OUTLINED_FUNCTION_183_2();
    v204 = 10;
  }

  *(v8 + v246[9]) = v204;
LABEL_60:
  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF8D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  *&v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  *&v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_221AE9B04();

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_221AE9B04();

  v15 = *(a1 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0) + 20));
  result = swift_beginAccess();
  v17 = 0;
  v18 = *(v15 + 136);
  if ((v18 & 1) == 0)
  {
    v17 = *(v15 + 128);
    if (v17 < 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v65 = v17;
  v72 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = sub_221AE9B5C();
  v20 = v19;

  v71 = v20 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v63 = sub_221AE9B04();

  swift_getKeyPath();
  swift_getKeyPath();
  v62 = sub_221AE9B04();

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = sub_221AE9C28();
  v61 = v22;

  result = swift_beginAccess();
  v23 = 0;
  if ((*(v15 + 56) & 1) == 0)
  {
    v23 = *(v15 + 48);
    if (v23 < 0)
    {
      goto LABEL_19;
    }
  }

  v70 = *(v15 + 56);
  result = swift_beginAccess();
  v24 = 0;
  v25 = *(v15 + 40);
  if ((v25 & 1) == 0)
  {
    v24 = *(v15 + 32);
    if (v24 < 0)
    {
      goto LABEL_20;
    }
  }

  v57 = v24;
  v58 = v23;
  v59 = v21;
  v60 = v14;
  v26 = v13;
  v69 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = sub_221AE9C28();
  v55 = v27;

  swift_getKeyPath();
  swift_getKeyPath();
  v54 = sub_221AE9B04();

  v28 = OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment;
  swift_beginAccess();
  sub_2219A02E8(v15 + v28, v12, &unk_27CFBB740, &qword_221BE09F8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v4);
  sub_2219A1CC8(v12, &unk_27CFBB740, &qword_221BE09F8);
  if (EnumTagSinglePayload == 1)
  {
    v53 = 0u;
    v30 = 2;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v31 = v26;
  }

  else
  {
    v32 = v53;
    sub_2219A02E8(v15 + v28, v53, &unk_27CFBB740, &qword_221BE09F8);
    if (__swift_getEnumTagSinglePayload(v32, 1, v4) == 1)
    {
      v33 = v52;
      *(v52 + 44) = 0u;
      v33[1] = 0u;
      v33[2] = 0u;
      *v33 = 0u;
      v34 = v33 + *(v4 + 60);
      sub_221BCC8C8();
      v35 = *(v4 + 64);
      v36 = type metadata accessor for AppIntentsProtobuf_Size(0);
      __swift_storeEnumTagSinglePayload(v33 + v35, 1, 1, v36);
      v31 = v26;
      if (__swift_getEnumTagSinglePayload(v32, 1, v4) != 1)
      {
        sub_2219A1CC8(v32, &unk_27CFBB740, &qword_221BE09F8);
      }
    }

    else
    {
      v33 = v52;
      sub_221B229DC(v32, v52, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
      v31 = v26;
    }

    sub_221B0A714(v33, v66);
    sub_221B22C2C(v33, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment);
    v52 = v66[1];
    v53 = v66[0];
    v50 = v66[3];
    v51 = v66[2];
    v48 = v66[5];
    v49 = v66[4];
    v30 = v67;
  }

  result = swift_beginAccess();
  v37 = *(v15 + 24);
  if (v37)
  {
    LOWORD(v38) = 0;
LABEL_17:
    result = sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options);
    v68 = v37;
    v39 = v72;
    v40 = v71;
    v41 = v70;
    v42 = v69;
    *a2 = v31;
    *(a2 + 1) = v60;
    *(a2 + 8) = v65;
    *(a2 + 16) = v39;
    *(a2 + 24) = v64;
    *(a2 + 32) = v40;
    *(a2 + 33) = v63;
    *(a2 + 34) = v62;
    v43 = v61;
    *(a2 + 40) = v59;
    *(a2 + 48) = v43;
    *(a2 + 56) = v58;
    *(a2 + 64) = v41;
    *(a2 + 72) = v57;
    *(a2 + 80) = v42;
    v44 = v55;
    *(a2 + 88) = v56;
    *(a2 + 96) = v44;
    *(a2 + 104) = v54;
    v45 = v52;
    *(a2 + 112) = v53;
    *(a2 + 128) = v45;
    v46 = v50;
    *(a2 + 144) = v51;
    *(a2 + 160) = v46;
    v47 = v48;
    *(a2 + 176) = v49;
    *(a2 + 192) = v47;
    *(a2 + 208) = v30;
    *(a2 + 212) = v38;
    *(a2 + 214) = v37;
    return result;
  }

  v38 = *(v15 + 16);
  if (!(v38 >> 16))
  {
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_221AF9560()
{
  OUTLINED_FUNCTION_55_4();
  v5 = v4;
  v188 = v6;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
  v8 = OUTLINED_FUNCTION_8_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_51_4();
  v184 = v11;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_132_2();
  v186 = v13;
  v14 = OUTLINED_FUNCTION_133_3();
  v15 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(v14);
  v16 = OUTLINED_FUNCTION_8_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_51_4();
  v182 = v19;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_132_2();
  v185 = v21;
  v22 = OUTLINED_FUNCTION_133_3();
  v23 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v22);
  v24 = OUTLINED_FUNCTION_8_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_51_4();
  v181 = v27;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_132_2();
  v183 = v29;
  v30 = OUTLINED_FUNCTION_133_3();
  v31 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v30);
  v32 = OUTLINED_FUNCTION_8_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_51_4();
  v178 = v35;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_132_2();
  v180 = v37;
  v38 = OUTLINED_FUNCTION_133_3();
  v39 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v38);
  v40 = OUTLINED_FUNCTION_8_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_51_4();
  v177 = v43;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_132_2();
  v179 = v45;
  v46 = OUTLINED_FUNCTION_133_3();
  v47 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v46);
  v48 = OUTLINED_FUNCTION_8_1(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_51_4();
  v173 = v51;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_132_2();
  v176 = v53;
  v54 = OUTLINED_FUNCTION_133_3();
  v55 = type metadata accessor for AppIntentsProtobuf_Error(v54);
  v56 = OUTLINED_FUNCTION_8_1(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_30_8();
  v172 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  OUTLINED_FUNCTION_8_1(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_104_2();
  v175 = v64;
  v65 = OUTLINED_FUNCTION_133_3();
  v171 = type metadata accessor for AppIntentsProtobuf_ActionOutput(v65);
  v66 = OUTLINED_FUNCTION_2_1(v171);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_30_8();
  v174 = v69;
  v70 = OUTLINED_FUNCTION_133_3();
  v71 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(v70);
  v72 = OUTLINED_FUNCTION_2_1(v71);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_51_4();
  v169 = v75;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_91_6();
  v168 = v77;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_75_7();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_242_2();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_132_2();
  v170 = v84;
  v85 = OUTLINED_FUNCTION_133_3();
  v86 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(v85);
  v87 = OUTLINED_FUNCTION_2_1(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_30_8();
  v187 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  OUTLINED_FUNCTION_8_1(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v94);
  v96 = v167 - v95;
  sub_2219A02E8(v5, v167 - v95, &unk_27CFBB780, &unk_221BDB150);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_48_8(v96);
  if (v97)
  {
    OUTLINED_FUNCTION_9_16();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v167[1] = v71;
    OUTLINED_FUNCTION_70_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_6_19();
        v135 = v172;
        sub_221B229DC(v96, v172, v136);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v137 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v137);
        v139 = v138;
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(v135, v140);
        if (!v1)
        {
          *v0 = v139;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_33_7();
          v142 = v0;
          goto LABEL_34;
        }

        break;
      case 2:
        v118 = OUTLINED_FUNCTION_109_3();
        sub_221B229DC(v118, v176, v119);
        v120 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v120, v173, v121);
        v122 = OUTLINED_FUNCTION_116_6();
        sub_221AFAD64(v122, v123);
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        if (!v1)
        {
          goto LABEL_14;
        }

        break;
      case 3:
        v124 = OUTLINED_FUNCTION_109_3();
        sub_221B229DC(v124, v180, v125);
        v126 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v126, v178, v127);
        v2 = v167[2];
        v128 = OUTLINED_FUNCTION_116_6();
        sub_221AFC9AC(v128, v129);
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        if (!v1)
        {
LABEL_14:
          OUTLINED_FUNCTION_118_5();
          goto LABEL_33;
        }

        break;
      case 4:
        v110 = OUTLINED_FUNCTION_109_3();
        v111 = v183;
        sub_221B229DC(v110, v183, v112);
        v113 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v113, v181, v114);
        v2 = v167[3];
        v115 = OUTLINED_FUNCTION_116_6();
        sub_221AFD44C(v115, v116);
        if (!v1)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_9_16();
        v117 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest;
        goto LABEL_25;
      case 5:
        v143 = OUTLINED_FUNCTION_109_3();
        v111 = v185;
        sub_221B229DC(v143, v185, v144);
        v145 = OUTLINED_FUNCTION_158_2();
        sub_221B22BD0(v145, v182, v146);
        v2 = v168;
        v147 = OUTLINED_FUNCTION_116_6();
        sub_221AFDE68(v147, v148);
        if (!v1)
        {
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_9_16();
        v117 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest;
        goto LABEL_25;
      case 6:
        v149 = OUTLINED_FUNCTION_109_3();
        v111 = v186;
        sub_221B229DC(v149, v186, v150);
        OUTLINED_FUNCTION_158_2();
        OUTLINED_FUNCTION_244_2();
        sub_221B22BD0(v151, v152, v153);
        v2 = v169;
        v154 = OUTLINED_FUNCTION_116_6();
        sub_221AFE3A8(v154, v155);
        if (v1)
        {
          OUTLINED_FUNCTION_9_16();
          v117 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest;
          goto LABEL_25;
        }

LABEL_32:
        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        OUTLINED_FUNCTION_118_5();
LABEL_33:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_33_7();
        v142 = v2;
        goto LABEL_34;
      case 7:
        v130 = OUTLINED_FUNCTION_109_3();
        v111 = v179;
        sub_221B229DC(v130, v179, v131);
        v132 = OUTLINED_FUNCTION_158_2();
        v133 = v177;
        sub_221B22BD0(v132, v177, v134);
        sub_221AFBF00(v133, v3);
        if (v1)
        {
          OUTLINED_FUNCTION_9_16();
          v117 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest;
LABEL_25:
          v156 = v117;
          v157 = v111;
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_9_16();
        OUTLINED_FUNCTION_183_2();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_33_7();
        v142 = v3;
LABEL_34:
        v166 = v188;
        goto LABEL_35;
      default:
        v99 = OUTLINED_FUNCTION_109_3();
        v100 = v187;
        sub_221B229DC(v99, v187, v101);
        v102 = v175;
        sub_2219A02E8(v100 + *(v86 + 24), v175, &qword_27CFB9D00, &unk_221BDB1B0);
        v103 = OUTLINED_FUNCTION_148_3();
        v104 = v171;
        OUTLINED_FUNCTION_49_4(v103, v105, v171);
        if (v97)
        {
          v158 = v174;
          sub_221BCC8C8();
          v106 = *(v104 + 20);
          v159 = v1;
          if (qword_27CFB6DA0 != -1)
          {
            swift_once();
          }

          *(v158 + v106) = qword_27CFB9450;
          v107 = OUTLINED_FUNCTION_148_3();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, v108, v104);

          if (EnumTagSinglePayload != 1)
          {
            sub_2219A1CC8(v102, &qword_27CFB9D00, &unk_221BDB1B0);
          }
        }

        else
        {
          v158 = v174;
          sub_221B229DC(v102, v174, type metadata accessor for AppIntentsProtobuf_ActionOutput);
          v159 = v1;
        }

        v160 = v170;
        sub_221AF9F84(v158, v170);
        if (v159)
        {
          OUTLINED_FUNCTION_9_16();
          OUTLINED_FUNCTION_142_3();
          v157 = v187;
LABEL_26:
          sub_221B22C2C(v157, v156);
        }

        else
        {
          OUTLINED_FUNCTION_9_16();
          v161 = v187;
          v162 = v160;
          v164 = *v187;
          v163 = v187[1];

          OUTLINED_FUNCTION_142_3();
          sub_221B22C2C(v161, v165);
          *(v162 + 224) = v164;
          *(v162 + 232) = v163;
          OUTLINED_FUNCTION_169_2();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_33_7();
          v142 = OUTLINED_FUNCTION_131_3();
LABEL_35:
          sub_221B229DC(v142, v166, v141);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AF9F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v139 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v3 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v134 = (&v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v138 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v140 = &v131 - v9;
  v151 = type metadata accessor for AppIntentsProtobuf_Action(0);
  v10 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v136 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v137 = &v131 - v13;
  MEMORY[0x28223BE20](v14);
  v143 = &v131 - v15;
  MEMORY[0x28223BE20](v16);
  v144 = &v131 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v145 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v152 = &v131 - v22;
  MEMORY[0x28223BE20](v23);
  v149 = &v131 - v24;
  MEMORY[0x28223BE20](v25);
  v150 = &v131 - v26;
  v147 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v27 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v141 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v142 = &v131 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v146 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v148 = &v131 - v35;
  v36 = type metadata accessor for AppIntentsProtobuf_ConfirmationActionName(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v39 = (&v131 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v42 = &v131 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9928, &qword_221BE4A20);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v131 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v131 - v48;
  KeyPath = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v153 = a1;
  sub_221AE9C84(KeyPath, v51, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);

  sub_2219A02E8(v49, v46, &qword_27CFB9928, &qword_221BE4A20);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  if (__swift_getEnumTagSinglePayload(v46, 1, v36) != 1)
  {
    sub_221B229DC(v46, v42, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    sub_221B22BD0(v42, v39, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    v55 = *(v36 + 32);
    v56 = (v39 + *(v36 + 28));
    v57 = *v56;
    v58 = v56[1];
    v59 = *v39;
    v60 = v39[1];
    v61 = *(v39 + v55 + 8);
    v132 = *(v39 + v55);
    v133 = v57;

    v131 = v42;
    sub_221B22C2C(v39, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    v52 = swift_allocObject();
    v62 = v132;
    v52[2] = v133;
    v52[3] = v58;
    v52[4] = v59;
    v52[5] = v62;
    v52[6] = v61;
    v52[7] = v60;
    sub_221B22C2C(v131, type metadata accessor for AppIntentsProtobuf_ConfirmationActionName);
    v54 = &off_283513A88;
    v53 = &type metadata for AnyConfirmationActionName;
  }

  sub_2219A1CC8(v49, &qword_27CFB9928, &qword_221BE4A20);
  v157[0] = v52;
  v157[1] = 0;
  v157[2] = 0;
  v157[3] = v53;
  v157[4] = v54;
  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  v65 = v148;
  v66 = v153;
  sub_221AE9C84(v63, v64, type metadata accessor for AppIntentsProtobuf_Dialog);

  v67 = v146;
  sub_2219A02E8(v65, v146, &unk_27CFBB790, &qword_221BDADD8);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  if (__swift_getEnumTagSinglePayload(v67, 1, v147) != 1)
  {
    v73 = v142;
    sub_221B229DC(v67, v142, type metadata accessor for AppIntentsProtobuf_Dialog);
    v74 = v141;
    sub_221B22BD0(v73, v141, type metadata accessor for AppIntentsProtobuf_Dialog);
    v72 = sub_221B0B9B8(v74);
    v71 = v75;
    v70 = v76;
    sub_221B22C2C(v73, type metadata accessor for AppIntentsProtobuf_Dialog);
    v69 = &type metadata for AnyDialog;
    v68 = &off_283512A28;
  }

  sub_2219A1CC8(v65, &unk_27CFBB790, &qword_221BDADD8);
  v158[0] = v72;
  v158[1] = v71;
  v158[2] = v70;
  v158[3] = v69;
  v158[4] = v68;
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  v79 = v150;
  sub_221AE9C84(v77, v78, type metadata accessor for AppIntentsProtobuf_Action);

  v80 = v149;
  sub_2219A02E8(v79, v149, &unk_27CFBB690, &qword_221BDADD0);
  v81 = v151;
  if (__swift_getEnumTagSinglePayload(v80, 1, v151) == 1)
  {
    sub_2219A1CC8(v79, &unk_27CFBB690, &qword_221BDADD0);
    v154 = 0u;
    v155 = 0u;
    v156 = 0;
    v82 = v152;
  }

  else
  {
    v83 = v80;
    v84 = v144;
    sub_221B229DC(v83, v144, type metadata accessor for AppIntentsProtobuf_Action);
    v85 = v143;
    sub_221B22BD0(v84, v143, type metadata accessor for AppIntentsProtobuf_Action);
    v86 = v171;
    sub_221AF2910(v85, v87, v88, v89, v90, v91, v92, v93, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
    v82 = v152;
    v171 = v86;
    if (v86)
    {
      sub_221B22C2C(v84, type metadata accessor for AppIntentsProtobuf_Action);
      sub_2219A1CC8(v79, &unk_27CFBB690, &qword_221BDADD0);
      v94 = 0;
      v95 = 0;
      goto LABEL_22;
    }

    sub_221B22C2C(v84, type metadata accessor for AppIntentsProtobuf_Action);
    sub_2219A1CC8(v79, &unk_27CFBB690, &qword_221BDADD0);
  }

  v159[0] = v154;
  v159[1] = v155;
  v160 = v156;
  v96 = *(v66 + *(type metadata accessor for AppIntentsProtobuf_ActionOutput(0) + 20));
  v97 = OBJC_IVAR____TtCV18AppIntentsServices31AppIntentsProtobuf_ActionOutputP33_D321C84350D2B5DD9AE571CCF7A1723513_StorageClass__shouldShowPrompt;
  swift_beginAccess();
  v161 = *(v96 + v97) & 1;
  v98 = swift_getKeyPath();
  v99 = swift_getKeyPath();
  sub_221AE9C84(v98, v99, type metadata accessor for AppIntentsProtobuf_Action);

  v100 = v145;
  sub_2219A02E8(v82, v145, &unk_27CFBB690, &qword_221BDADD0);
  if (__swift_getEnumTagSinglePayload(v100, 1, v81) == 1)
  {
    sub_2219A1CC8(v82, &unk_27CFBB690, &qword_221BDADD0);
    v154 = 0u;
    v155 = 0u;
    v156 = 0;
  }

  else
  {
    v101 = v100;
    v102 = v137;
    sub_221B229DC(v101, v137, type metadata accessor for AppIntentsProtobuf_Action);
    v103 = v136;
    sub_221B22BD0(v102, v136, type metadata accessor for AppIntentsProtobuf_Action);
    v104 = v171;
    sub_221AF2910(v103, v105, v106, v107, v108, v109, v110, v111, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
    v171 = v104;
    if (v104)
    {
      sub_221B22C2C(v102, type metadata accessor for AppIntentsProtobuf_Action);
      sub_2219A1CC8(v82, &unk_27CFBB690, &qword_221BDADD0);
      v95 = 0;
      v94 = 1;
      goto LABEL_22;
    }

    sub_221B22C2C(v102, type metadata accessor for AppIntentsProtobuf_Action);
    sub_2219A1CC8(v82, &unk_27CFBB690, &qword_221BDADD0);
  }

  v162[0] = v154;
  v162[1] = v155;
  v163 = v156;
  swift_getKeyPath();
  swift_getKeyPath();
  v112 = sub_221AE9BC4();
  v114 = v113;

  if (v114)
  {
    v115 = 0;
  }

  else
  {
    v115 = v112;
  }

  v164 = v115;
  v116 = swift_getKeyPath();
  v117 = swift_getKeyPath();
  v118 = v140;
  sub_221AE9C84(v116, v117, type metadata accessor for AppIntentsProtobuf_ViewSnippet);

  v119 = v138;
  sub_2219A02E8(v118, v138, &qword_27CFB9920, &unk_221BDADC0);
  if (__swift_getEnumTagSinglePayload(v119, 1, v139) == 1)
  {
    v120 = 0;
    v121 = 0;
    v122 = 0;
LABEL_27:
    v130 = sub_2219A1CC8(v118, &qword_27CFB9920, &unk_221BDADC0);
    v165 = v122;
    v166 = 0;
    v167 = 0;
    v168 = v121;
    v169 = v120;
    MEMORY[0x28223BE20](v130);
    *(&v131 - 2) = v66;
    v170 = sub_221B0DCB0(0, sub_221B220D8);
    sub_2219A02E8(v157, v135, &unk_27CFBB7A0, &qword_221BD2930);
    sub_221B22C2C(v66, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    v129 = v157;
    v127 = &unk_27CFBB7A0;
    v128 = &qword_221BD2930;
    return sub_2219A1CC8(v129, v127, v128);
  }

  v123 = v134;
  sub_221B229DC(v119, v134, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  v121 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
  v124 = v171;
  v125 = sub_221B0CC78(v123);
  v171 = v124;
  if (!v124)
  {
    v122 = v125;
    sub_221B22C2C(v123, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
    v120 = &protocol witness table for LNViewSnippet;
    goto LABEL_27;
  }

  sub_221B22C2C(v123, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
  sub_2219A1CC8(v118, &qword_27CFB9920, &unk_221BDADC0);
  v94 = 1;
  v95 = 1;
LABEL_22:
  sub_221B22C2C(v66, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  sub_2219A1CC8(v157, &unk_27CFBB7B0, &unk_221BE4C10);
  result = sub_2219A1CC8(v158, &qword_27CFB8320, &unk_221BD1D60);
  if (v94)
  {
    result = sub_2219A1CC8(v159, &unk_27CFBB7C0, &qword_221BE4C20);
  }

  if (v95)
  {
    v127 = &unk_27CFBB7C0;
    v128 = &qword_221BE4C20;
    v129 = v162;
    return sub_2219A1CC8(v129, v127, v128);
  }

  return result;
}

void *sub_221AFAD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v160 = type metadata accessor for AppIntentsProtobuf_Value(0);
  v3 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v150 = (&v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v159 = &v142 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E8, &unk_221BD86E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v148 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v158 = &v142 - v14;
  MEMORY[0x28223BE20](v15);
  v165 = &v142 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v157 = &v142 - v19;
  v156 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  v20 = *(*(v156 - 1) + 64);
  MEMORY[0x28223BE20](v156);
  v163 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  v161 = *(v173 - 8);
  v22 = *(v161 + 64);
  MEMORY[0x28223BE20](v173);
  v162 = &v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v184 = &v142 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v169 = &v142 - v28;
  *&v170 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v29 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v171 = (&v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v31 = *(*(v168 - 1) + 64);
  MEMORY[0x28223BE20](v168);
  v166 = (&v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v164 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v167 = &v142 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v142 - v40;
  v42 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v142 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_221BCC558();
  v142 = *(v46 - 8);
  v143 = v46;
  v47 = *(v142 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v142 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0) + 20);
  v147 = a1;
  v51 = *(a1 + v50);
  v52 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v51 + v52, v41, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    *v45 = 0;
    v45[1] = 0;
    v53 = v45 + *(v42 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
    {
      sub_2219A1CC8(v41, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v41, v45, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v54 = v172;
  sub_221AE9E30(v45);
  sub_221B22C2C(v45, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v54)
  {
    return sub_221B22C2C(v147, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
  }

  (*(v142 + 32))(v146, v49, v143);
  v56 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v57 = v167;
  sub_2219A02E8(v51 + v56, v167, &unk_27CFBB790, &qword_221BDADD8);
  v58 = v168;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v168);
  sub_2219A1CC8(v57, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v182 = 0;
    v180 = 0u;
    v181 = 0u;
    v60 = v169;
    v61 = v170;
  }

  else
  {
    v62 = v164;
    sub_2219A02E8(v51 + v56, v164, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v62, 1, v58) == 1)
    {
      v63 = MEMORY[0x277D84F90];
      v64 = v166;
      *v166 = 0;
      *(v64 + 8) = 1;
      v64[2] = v63;
      v64[3] = v63;
      v64[4] = v63;
      v64[5] = v63;
      v64[6] = v63;
      v64[7] = v63;
      v64[8] = v63;
      v64[9] = sub_221BCD2C8();
      v64[10] = v63;
      v64[11] = sub_221BCD2C8();
      v65 = v64 + v58[15];
      sub_221BCC8C8();
      v66 = (v64 + v58[16]);
      *v66 = 0;
      v66[1] = 0;
      *(v64 + v58[17]) = xmmword_221BD8640;
      v67 = (v64 + v58[18]);
      *v67 = 0;
      v67[1] = 0;
      v68 = (v64 + v58[19]);
      *v68 = 0;
      v68[1] = 0;
      v69 = __swift_getEnumTagSinglePayload(v62, 1, v58);
      v60 = v169;
      v61 = v170;
      if (v69 != 1)
      {
        sub_2219A1CC8(v62, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v64 = v166;
      sub_221B229DC(v62, v166, type metadata accessor for AppIntentsProtobuf_Dialog);
      v60 = v169;
      v61 = v170;
    }

    v70 = sub_221B0B9B8(v64);
    *(&v181 + 1) = &type metadata for AnyDialog;
    v182 = &off_283512A28;
    *&v180 = v70;
    *(&v180 + 1) = v71;
    *&v181 = v72;
  }

  v73 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  swift_beginAccess();
  sub_2219A02E8(v51 + v73, v60, &unk_27CFBB7D0, &unk_221BE4E60);
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
  {
    v74 = v171;
    *v171 = 0;
    v74[1] = 0xE000000000000000;
    v75 = v74 + v61[5];
    sub_221BCC8C8();
    v76 = (v74 + v61[6]);
    *v76 = 0;
    v76[1] = 0;
    v77 = (v74 + v61[7]);
    *v77 = 0;
    v77[1] = 0;
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) != 1)
    {
      sub_2219A1CC8(v60, &unk_27CFBB7D0, &unk_221BE4E60);
    }
  }

  else
  {
    sub_221B229DC(v60, v171, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  }

  v178 = &type metadata for AnyIntentParameterMetadata;
  v179 = &protocol witness table for AnyIntentParameterMetadata;
  v78 = swift_allocObject();
  *&v177 = v78;
  v79 = v171;
  v81 = *v171;
  v80 = v171[1];
  v82 = v61[6];
  v83 = (v171 + v61[7]);
  v84 = v83[1];
  v85 = (v171 + v82);
  v86 = v85[1];
  *&v87 = *v83;
  v172 = v87;
  *&v87 = *v85;
  v170 = v87;

  sub_221B22C2C(v79, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  *(v78 + 16) = v81;
  *(v78 + 24) = v80;
  *&v88 = v170;
  *(&v88 + 1) = v86;
  *&v89 = v172;
  *(&v89 + 1) = v84;
  *(v78 + 32) = v88;
  *(v78 + 48) = v89;
  v90 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
  swift_beginAccess();
  v91 = *(v51 + v90);
  v92 = *(v91 + 16);
  v93 = MEMORY[0x277D84F90];
  if (v92)
  {
    v155 = 0;
    v176 = MEMORY[0x277D84F90];

    sub_2219A3204(0, v92, 0);
    v93 = v176;
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v94 = 0;
    v95 = v162;
    v152 = v91 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v153 = result;
    v145 = xmmword_221BD8630;
    v144 = xmmword_221BD8640;
    v96 = v163;
    v154 = v91;
    v151 = v92;
    while (v94 < *(v91 + 16))
    {
      v97 = *(v161 + 72);
      v166 = v94;
      v98 = v184;
      sub_221B22BD0(v152 + v97 * v94, v184, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      sub_221B22BD0(v98, v95, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      v99 = v157;
      sub_2219A02E8(v95 + *(v173 + 24), v157, &qword_27CFB9C78, &qword_221BDB0F8);
      v100 = v156;
      v101 = __swift_getEnumTagSinglePayload(v99, 1, v156);
      *&v172 = v93;
      if (v101 == 1)
      {
        *v96 = 0;
        v96[1] = 0xE000000000000000;
        v96[2] = MEMORY[0x277D84F90];
        v102 = v96 + v100[6];
        sub_221BCC8C8();
        v103 = (v96 + v100[7]);
        *v103 = 0;
        v103[1] = 0;
        v104 = v100[8];
        v105 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
        __swift_storeEnumTagSinglePayload(v96 + v104, 1, 1, v105);
        if (__swift_getEnumTagSinglePayload(v99, 1, v100) != 1)
        {
          sub_2219A1CC8(v99, &qword_27CFB9C78, &qword_221BDB0F8);
        }
      }

      else
      {
        sub_221B229DC(v99, v96, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
      }

      v106 = v96[1];
      *&v170 = *v96;
      v107 = v100[8];
      v108 = (v96 + v100[7]);
      v109 = *v108;
      v110 = v108[1];
      v167 = v96[2];
      v168 = v109;
      v164 = v107;
      v111 = v96 + v107;
      v112 = v158;
      sub_2219A02E8(v111, v158, &qword_27CFB85E8, &unk_221BD86E0);
      v113 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage(0);
      v114 = 1;
      v115 = __swift_getEnumTagSinglePayload(v112, 1, v113);
      v169 = v110;

      v171 = v106;
      v116 = v167;

      v117 = v112;
      v96 = v163;
      sub_2219A1CC8(v117, &qword_27CFB85E8, &unk_221BD86E0);
      if (v115 != 1)
      {
        v118 = v148;
        sub_2219A02E8(v96 + v164, v148, &qword_27CFB85E8, &unk_221BD86E0);
        if (__swift_getEnumTagSinglePayload(v118, 1, v113) == 1)
        {
          v119 = v165;
          sub_221BCC8C8();
          *(v119 + v113[5]) = v144;
          v120 = v119 + v113[6];
          *v120 = 0;
          *(v120 + 8) = 1;
          v121 = v119 + v113[7];
          *v121 = 0;
          *(v121 + 8) = 1;
          if (__swift_getEnumTagSinglePayload(v118, 1, v113) != 1)
          {
            sub_2219A1CC8(v118, &qword_27CFB85E8, &unk_221BD86E0);
          }
        }

        else
        {
          sub_221B229DC(v118, v165, type metadata accessor for AppIntentsProtobuf_DisplayRepresentationImage);
        }

        v114 = 0;
      }

      v122 = v165;
      __swift_storeEnumTagSinglePayload(v165, v114, 1, v113);
      v123 = v153;
      v124 = sub_221B0F228(v122);
      sub_2219A1CC8(v122, &qword_27CFB85E8, &unk_221BD86E0);
      if (v124)
      {
        v125 = v123;
      }

      else
      {
        v125 = 0;
      }

      if (v124)
      {
        v126 = &protocol witness table for LNImage;
      }

      else
      {
        v126 = 0;
      }

      sub_221B22C2C(v96, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation);
      v174[0] = v170;
      v174[1] = v171;
      v174[2] = v168;
      v174[3] = v169;
      v174[4] = v116;
      v174[5] = v124;
      v174[6] = 0;
      v174[7] = 0;
      v174[8] = v125;
      v174[9] = v126;
      v127 = *(v173 + 28);
      v95 = v162;
      v128 = v159;
      sub_2219A02E8(&v162[v127], v159, &unk_27CFBB660, &qword_221BE4610);
      v129 = v160;
      if (__swift_getEnumTagSinglePayload(v128, 1, v160) == 1)
      {
        sub_221B22C2C(v184, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
        sub_2219A1CC8(v128, &unk_27CFBB660, &qword_221BE4610);
        v130 = 0;
        v93 = v172;
      }

      else
      {
        sub_2219A1CC8(v128, &unk_27CFBB660, &qword_221BE4610);
        v131 = v95 + v127;
        v132 = v149;
        sub_2219A02E8(v131, v149, &unk_27CFBB660, &qword_221BE4610);
        v133 = __swift_getEnumTagSinglePayload(v132, 1, v129);
        v93 = v172;
        if (v133 == 1)
        {
          v134 = v150;
          *v150 = v145;
          v135 = v134 + *(v129 + 20);
          sub_221BCC8C8();
          if (__swift_getEnumTagSinglePayload(v132, 1, v129) != 1)
          {
            sub_2219A1CC8(v132, &unk_27CFBB660, &qword_221BE4610);
          }
        }

        else
        {
          v134 = v150;
          sub_221B229DC(v132, v150, type metadata accessor for AppIntentsProtobuf_Value);
        }

        v136 = v155;
        sub_221B14BC4(*v134, v134[1], &qword_27CFBB680, 0x277D23958);
        v155 = v136;
        if (v136)
        {

          sub_221B22C2C(v95, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
          sub_221B22C2C(v184, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
          sub_221B22C2C(v134, type metadata accessor for AppIntentsProtobuf_Value);
          sub_221B220F4(v174);

          sub_221B22C2C(v147, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
          __swift_destroy_boxed_opaque_existential_0(&v177);
          sub_2219A1CC8(&v180, &qword_27CFB8320, &unk_221BD1D60);
          return (*(v142 + 8))(v146, v143);
        }

        v130 = v137;
        sub_221B22C2C(v184, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
        sub_221B22C2C(v134, type metadata accessor for AppIntentsProtobuf_Value);
      }

      v174[10] = v130;
      v138 = *v95;
      sub_221B22C2C(v95, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue);
      v174[11] = v138;
      memcpy(v175, v174, sizeof(v175));
      v176 = v93;
      v140 = *(v93 + 16);
      v139 = *(v93 + 24);
      if (v140 >= v139 >> 1)
      {
        sub_2219A3204((v139 > 1), v140 + 1, 1);
        v93 = v176;
      }

      v94 = v166 + 1;
      *(v93 + 16) = v140 + 1;
      result = memcpy((v93 + 96 * v140 + 32), v175, 0x60uLL);
      v91 = v154;
      if (v151 == v94)
      {

        goto LABEL_49;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_49:
    sub_221B22C2C(v147, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
    *__src = v180;
    *&__src[16] = v181;
    *&__src[32] = v182;
    sub_22198B358(&v177, &__src[40]);
    *&__src[80] = v93;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
    return memcpy((v146 + *(v141 + 28)), __src, 0x58uLL);
  }

  return result;
}

double sub_221AFBF00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v88 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v84 = (&v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
  v85 = *(v5 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v82 - v12;
  v86 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v13 = *(*(v86 - 1) + 64);
  MEMORY[0x28223BE20](v86);
  v83 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v82 - v23;
  v25 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_221BCC558();
  v90 = *(v91 - 8);
  v29 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0) + 20);
  v93 = a1;
  v33 = *(a1 + v32);
  v34 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v33 + v34, v24, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    *v28 = 0;
    v28[1] = 0;
    v35 = v28 + *(v25 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      sub_2219A1CC8(v24, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v24, v28, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v36 = v94;
  sub_221AE9E30(v28);
  v37 = v36;
  sub_221B22C2C(v28, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v36)
  {
    sub_221B22C2C(v93, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
    return result;
  }

  (*(v90 + 32))(v92, v31, v91);
  v39 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  sub_2219A02E8(v33 + v39, v20, &unk_27CFBB790, &qword_221BDADD8);
  v40 = v86;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v86);
  sub_2219A1CC8(v20, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
  }

  else
  {
    v42 = v82;
    sub_2219A02E8(v33 + v39, v82, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v42, 1, v40) == 1)
    {
      v43 = MEMORY[0x277D84F90];
      v44 = v83;
      *v83 = 0;
      *(v44 + 8) = 1;
      v44[2] = v43;
      v44[3] = v43;
      v44[4] = v43;
      v44[5] = v43;
      v44[6] = v43;
      v44[7] = v43;
      v44[8] = v43;
      v44[9] = sub_221BCD2C8();
      v44[10] = v43;
      v44[11] = sub_221BCD2C8();
      v45 = v44 + v40[15];
      sub_221BCC8C8();
      v46 = (v44 + v40[16]);
      *v46 = 0;
      v46[1] = 0;
      *(v44 + v40[17]) = xmmword_221BD8640;
      v47 = (v44 + v40[18]);
      *v47 = 0;
      v47[1] = 0;
      v48 = (v44 + v40[19]);
      *v48 = 0;
      v48[1] = 0;
      if (__swift_getEnumTagSinglePayload(v42, 1, v40) != 1)
      {
        sub_2219A1CC8(v42, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v44 = v83;
      sub_221B229DC(v42, v83, type metadata accessor for AppIntentsProtobuf_Dialog);
    }

    v49 = sub_221B0B9B8(v44);
    *(&v97 + 1) = &type metadata for AnyDialog;
    v98 = &off_283512A28;
    *&v96 = v49;
    *(&v96 + 1) = v50;
    *&v97 = v51;
  }

  v52 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
  swift_beginAccess();
  v53 = *(v33 + v52);
  v54 = v53[2];
  v55 = MEMORY[0x277D84F90];
  if (v54)
  {
    v86 = 0;
    v102 = MEMORY[0x277D84F90];

    sub_2219A3224(0, v54, 0);
    v55 = v102;
    v56 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v83 = v53;
    v57 = v53 + v56;
    v94 = *(v85 + 72);
    do
    {
      v58 = v95;
      sub_221B22BD0(v57, v95, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      v59 = *v58;
      v60 = *(v58 + 8);
      v61 = *(v58 + 16);
      v62 = *(v58 + 24);
      v63 = *(v58 + 32);

      sub_221B22C2C(v58, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption);
      if (v63)
      {
        v64 = 0x10002u >> (8 * v62);
      }

      else
      {
        v64 = 2;
      }

      v102 = v55;
      v66 = *(v55 + 16);
      v65 = *(v55 + 24);
      v67 = v55;
      if (v66 >= v65 >> 1)
      {
        sub_2219A3224(v65 > 1, v66 + 1, 1);
        v67 = v102;
      }

      *(v67 + 16) = v66 + 1;
      v68 = v67 + 32 * v66;
      *(v68 + 32) = v59;
      *(v68 + 40) = v60;
      *(v68 + 48) = v61;
      *(v68 + 56) = v64;
      v57 += v94;
      --v54;
      v55 = v67;
    }

    while (v54);

    v37 = v86;
  }

  KeyPath = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v71 = v89;
  v72 = v93;
  sub_221AE9C84(KeyPath, v70, type metadata accessor for AppIntentsProtobuf_ViewSnippet);

  v73 = v87;
  sub_2219A02E8(v71, v87, &qword_27CFB9920, &unk_221BDADC0);
  if (__swift_getEnumTagSinglePayload(v73, 1, v88) == 1)
  {
    v74 = 0;
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v77 = v84;
    sub_221B229DC(v73, v84, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
    v74 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v78 = sub_221B0CC78(v77);
    if (v37)
    {

      sub_221B22C2C(v77, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
      sub_2219A1CC8(v71, &qword_27CFB9920, &unk_221BDADC0);
      sub_221B22C2C(v72, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
      sub_2219A1CC8(&v96, &qword_27CFB8320, &unk_221BD1D60);
      (*(v90 + 8))(v92, v91);
      return result;
    }

    v76 = v78;
    sub_221B22C2C(v77, type metadata accessor for AppIntentsProtobuf_ViewSnippet);
    v75 = &protocol witness table for LNViewSnippet;
  }

  sub_2219A1CC8(v71, &qword_27CFB9920, &unk_221BDADC0);
  sub_221B22C2C(v72, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
  v99 = v96;
  v100 = v97;
  v101 = v98;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  v80 = v92 + *(v79 + 28);
  result = *&v99;
  v81 = v100;
  *v80 = v99;
  *(v80 + 16) = v81;
  *(v80 + 32) = v101;
  *(v80 + 40) = v55;
  *(v80 + 48) = v76;
  *(v80 + 56) = 0;
  *(v80 + 64) = 0;
  *(v80 + 72) = v74;
  *(v80 + 80) = v75;
  return result;
}

void *sub_221AFC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v101 = &v90 - v5;
  v100 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v6 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v102 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v90 - v10;
  *&v98 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v11 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  *&v99 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v13 = *(*(v96 - 1) + 64);
  MEMORY[0x28223BE20](v96);
  v93 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v94 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v90 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v90 - v22;
  v24 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_221BCC558();
  v103 = *(v28 - 8);
  v104 = v28;
  v29 = *(v103 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0) + 20);
  v114 = a1;
  v33 = *(a1 + v32);
  v34 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v33 + v34, v23, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    *v27 = 0;
    v27[1] = 0;
    v35 = v27 + *(v24 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
    {
      sub_2219A1CC8(v23, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v23, v27, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v36 = v106;
  sub_221AE9E30(v27);
  sub_221B22C2C(v27, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v36)
  {
    return sub_221B22C2C(v114, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
  }

  v92 = 0;
  (*(v103 + 32))(v105, v31, v104);
  v38 = (v33 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v39 = v38[1];
  v91 = *v38;
  v40 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v41 = v95;
  sub_2219A02E8(v33 + v40, v95, &unk_27CFBB790, &qword_221BDADD8);
  v42 = v96;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v96);
  v106 = v39;

  sub_2219A1CC8(v41, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v44 = v99;
    v45 = v98;
  }

  else
  {
    v46 = v94;
    sub_2219A02E8(v33 + v40, v94, &unk_27CFBB790, &qword_221BDADD8);
    v47 = __swift_getEnumTagSinglePayload(v46, 1, v42);
    v45 = v98;
    if (v47 == 1)
    {
      v48 = v93;
      *v93 = 0;
      *(v48 + 8) = 1;
      v49 = MEMORY[0x277D84F90];
      v48[2] = MEMORY[0x277D84F90];
      v48[3] = v49;
      v48[4] = v49;
      v48[5] = v49;
      v48[6] = v49;
      v48[7] = v49;
      v48[8] = v49;
      v48[9] = sub_221BCD2C8();
      v48[10] = v49;
      v50 = v94;
      v48[11] = sub_221BCD2C8();
      v51 = v48 + v42[15];
      sub_221BCC8C8();
      v52 = (v48 + v42[16]);
      *v52 = 0;
      v52[1] = 0;
      *(v48 + v42[17]) = xmmword_221BD8640;
      v53 = (v48 + v42[18]);
      *v53 = 0;
      v53[1] = 0;
      v54 = (v48 + v42[19]);
      *v54 = 0;
      v54[1] = 0;
      v55 = __swift_getEnumTagSinglePayload(v50, 1, v42);
      v44 = v99;
      if (v55 != 1)
      {
        sub_2219A1CC8(v50, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v48 = v93;
      sub_221B229DC(v46, v93, type metadata accessor for AppIntentsProtobuf_Dialog);
      v44 = v99;
    }

    v56 = sub_221B0B9B8(v48);
    *(&v111 + 1) = &type metadata for AnyDialog;
    v112 = &off_283512A28;
    *&v110 = v56;
    *(&v110 + 1) = v57;
    *&v111 = v58;
  }

  v59 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  swift_beginAccess();
  v60 = v33 + v59;
  v61 = v97;
  sub_2219A02E8(v60, v97, &unk_27CFBB7D0, &unk_221BE4E60);
  v62 = v33;
  if (__swift_getEnumTagSinglePayload(v61, 1, v45) == 1)
  {
    *v44 = 0;
    v44[1] = 0xE000000000000000;
    v63 = v44 + v45[5];
    sub_221BCC8C8();
    v64 = (v44 + v45[6]);
    *v64 = 0;
    v64[1] = 0;
    v65 = (v44 + v45[7]);
    *v65 = 0;
    v65[1] = 0;
    if (__swift_getEnumTagSinglePayload(v61, 1, v45) != 1)
    {
      sub_2219A1CC8(v61, &unk_27CFBB7D0, &unk_221BE4E60);
    }
  }

  else
  {
    sub_221B229DC(v61, v44, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  }

  v108 = &type metadata for AnyIntentParameterMetadata;
  v109 = &protocol witness table for AnyIntentParameterMetadata;
  v66 = swift_allocObject();
  *&v107 = v66;
  v68 = *v44;
  v67 = v44[1];
  v69 = (v44 + v45[7]);
  v70 = v69[1];
  v71 = (v44 + v45[6]);
  v72 = v71[1];
  *&v73 = *v69;
  v99 = v73;
  *&v73 = *v71;
  v98 = v73;

  sub_221B22C2C(v44, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  *(v66 + 16) = v68;
  *(v66 + 24) = v67;
  *&v75 = v98;
  *&v74 = v99;
  *(&v75 + 1) = v72;
  *(&v74 + 1) = v70;
  *(v66 + 32) = v75;
  *(v66 + 48) = v74;
  v76 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  swift_beginAccess();
  v77 = v62 + v76;
  v78 = v101;
  sub_2219A02E8(v77, v101, &qword_27CFB95E0, &qword_221BE0A10);
  v79 = v100;
  if (__swift_getEnumTagSinglePayload(v78, 1, v100) == 1)
  {
    v80 = v102;
    *v102 = xmmword_221BD8630;
    v81 = v80 + *(v79 + 20);
    sub_221BCC8C8();
    v82 = __swift_getEnumTagSinglePayload(v78, 1, v79);
    v83 = v92;
    if (v82 != 1)
    {
      sub_2219A1CC8(v78, &qword_27CFB95E0, &qword_221BE0A10);
    }
  }

  else
  {
    v80 = v102;
    sub_221B229DC(v78, v102, type metadata accessor for AppIntentsProtobuf_ValueType);
    v83 = v92;
  }

  sub_221B14BC4(*v80, v80[1], &unk_27CFBB670, 0x277D23960);
  if (v83)
  {

    sub_221B22C2C(v114, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
    sub_221B22C2C(v80, type metadata accessor for AppIntentsProtobuf_ValueType);
    __swift_destroy_boxed_opaque_existential_0(&v107);
    sub_2219A1CC8(&v110, &qword_27CFB8320, &unk_221BD1D60);
    return (*(v103 + 8))(v105, v104);
  }

  else
  {
    v85 = v84;
    sub_221B22C2C(v80, type metadata accessor for AppIntentsProtobuf_ValueType);
    v86 = (v62 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
    swift_beginAccess();
    v88 = *v86;
    v87 = v86[1];

    sub_221B22C2C(v114, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
    *__src = v91;
    *&__src[8] = v106;
    *&__src[16] = v110;
    *&__src[32] = v111;
    *&__src[48] = v112;
    sub_22198B358(&v107, &__src[56]);
    *&__src[96] = v85;
    *&__src[104] = v88;
    *&__src[112] = v87;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
    return memcpy((v105 + *(v89 + 28)), __src, 0x78uLL);
  }
}

void *sub_221AFD44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v82 - v5;
  v89 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  v6 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v91 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v82 - v10;
  v87 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v11 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  *&v88 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v13 = *(*(v85 - 1) + 64);
  MEMORY[0x28223BE20](v85);
  v83 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v84 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v82 - v22;
  v24 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_221BCC558();
  v92 = *(v28 - 8);
  v93 = v28;
  v29 = *(v92 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0) + 20);
  v106 = a1;
  v33 = *(a1 + v32);
  v34 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v33 + v34, v23, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    *v27 = 0;
    v27[1] = 0;
    v35 = v27 + *(v24 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
    {
      sub_2219A1CC8(v23, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v23, v27, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v36 = v95;
  sub_221AE9E30(v27);
  sub_221B22C2C(v27, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v36)
  {
    return sub_221B22C2C(v106, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);
  }

  (*(v92 + 32))(v94, v31, v93);
  v38 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v39 = v84;
  sub_2219A02E8(v33 + v38, v84, &unk_27CFBB790, &qword_221BDADD8);
  v40 = v85;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v85);
  sub_2219A1CC8(v39, &unk_27CFBB790, &qword_221BDADD8);
  if (EnumTagSinglePayload == 1)
  {
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v42 = v87;
    v43 = v88;
  }

  else
  {
    v44 = v33 + v38;
    v45 = v82;
    sub_2219A02E8(v44, v82, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v45, 1, v40) == 1)
    {
      v46 = v83;
      *v83 = 0;
      *(v46 + 8) = 1;
      v47 = MEMORY[0x277D84F90];
      v46[2] = MEMORY[0x277D84F90];
      v46[3] = v47;
      v46[4] = v47;
      v46[5] = v47;
      v46[6] = v47;
      v46[7] = v47;
      v46[8] = v47;
      v46[9] = sub_221BCD2C8();
      v46[10] = v47;
      v46[11] = sub_221BCD2C8();
      v48 = v46 + v40[15];
      sub_221BCC8C8();
      v49 = (v46 + v40[16]);
      *v49 = 0;
      v49[1] = 0;
      *(v46 + v40[17]) = xmmword_221BD8640;
      v50 = (v46 + v40[18]);
      *v50 = 0;
      v50[1] = 0;
      v51 = (v46 + v40[19]);
      *v51 = 0;
      v51[1] = 0;
      v52 = __swift_getEnumTagSinglePayload(v45, 1, v40) == 1;
      v53 = v45;
      v42 = v87;
      v43 = v88;
      if (!v52)
      {
        sub_2219A1CC8(v53, &unk_27CFBB790, &qword_221BDADD8);
      }
    }

    else
    {
      v46 = v83;
      sub_221B229DC(v45, v83, type metadata accessor for AppIntentsProtobuf_Dialog);
      v42 = v87;
      v43 = v88;
    }

    v54 = sub_221B0B9B8(v46);
    *(&v103 + 1) = &type metadata for AnyDialog;
    v104 = &off_283512A28;
    *&v102 = v54;
    *(&v102 + 1) = v55;
    *&v103 = v56;
  }

  v57 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  swift_beginAccess();
  v58 = v33 + v57;
  v59 = v86;
  sub_2219A02E8(v58, v86, &unk_27CFBB7D0, &unk_221BE4E60);
  v60 = v33;
  if (__swift_getEnumTagSinglePayload(v59, 1, v42) == 1)
  {
    *v43 = 0;
    v43[1] = 0xE000000000000000;
    v61 = v43 + v42[5];
    sub_221BCC8C8();
    v62 = (v43 + v42[6]);
    *v62 = 0;
    v62[1] = 0;
    v63 = (v43 + v42[7]);
    *v63 = 0;
    v63[1] = 0;
    if (__swift_getEnumTagSinglePayload(v59, 1, v42) != 1)
    {
      sub_2219A1CC8(v59, &unk_27CFBB7D0, &unk_221BE4E60);
    }
  }

  else
  {
    sub_221B229DC(v59, v43, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  }

  v100 = &type metadata for AnyIntentParameterMetadata;
  v101 = &protocol witness table for AnyIntentParameterMetadata;
  v64 = swift_allocObject();
  *&v99 = v64;
  v66 = *v43;
  v65 = v43[1];
  v67 = v42[6];
  v68 = (v43 + v42[7]);
  v69 = v68[1];
  v70 = (v43 + v67);
  v71 = v70[1];
  *&v72 = *v68;
  v95 = v72;
  *&v72 = *v70;
  v88 = v72;

  sub_221B22C2C(v43, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata);
  *(v64 + 16) = v66;
  *(v64 + 24) = v65;
  *&v73 = v88;
  *(&v73 + 1) = v71;
  *&v74 = v95;
  *(&v74 + 1) = v69;
  *(v64 + 32) = v73;
  *(v64 + 48) = v74;
  v75 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse19ConfirmationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__value;
  swift_beginAccess();
  v76 = v90;
  sub_2219A02E8(v60 + v75, v90, &unk_27CFBB7E0, &unk_221BE0A00);
  v77 = v89;
  if (__swift_getEnumTagSinglePayload(v76, 1, v89) == 1)
  {
    v78 = v91;
    sub_221BCC8C8();
    v79 = *(v77 + 20);
    v80 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
    __swift_storeEnumTagSinglePayload(v78 + v79, 1, 1, v80);
    if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
    {
      sub_2219A1CC8(v76, &unk_27CFBB7E0, &unk_221BE0A00);
    }
  }

  else
  {
    v78 = v91;
    sub_221B229DC(v76, v91, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value);
  }

  *(&v97 + 1) = &type metadata for AnyDisplayRepresentable;
  v98 = &off_28351B430;
  *&v96 = swift_allocObject();
  sub_221B0BAF0(v78, (v96 + 16));
  sub_221B22C2C(v106, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);
  *(&v105[7] + 8) = 0u;
  *(&v105[8] + 8) = 0u;
  v105[0] = v102;
  v105[1] = v103;
  *(&v105[9] + 1) = 0;
  *&v105[2] = v104;
  sub_22198B358(&v99, &v105[2] + 8);
  v105[5] = v96;
  v105[6] = v97;
  *&v105[7] = v98;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  return memcpy((v94 + *(v81 + 28)), v105, 0xA0uLL);
}

void *sub_221AFDE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v33 - v5;
  v34 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_221BCC558();
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v21 = a1;
  sub_2219A02E8(a1 + *(v20 + 20), v11, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    *v15 = 0;
    v15[1] = 0;
    v22 = v15 + *(v12 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_2219A1CC8(v11, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v11, v15, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v23 = v44;
  sub_221AE9E30(v15);
  if (v23)
  {
    sub_221B22C2C(a1, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);
    return sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  else
  {
    sub_221B22C2C(v15, type metadata accessor for AppIntentsProtobuf_UUID);
    v25 = v37;
    (*(v38 + 32))(v37, v19, v39);
    v26 = a1 + *(v20 + 24);
    v27 = v36;
    sub_2219A02E8(v26, v36, &qword_27CFB9D00, &unk_221BDB1B0);
    v28 = v34;
    if (__swift_getEnumTagSinglePayload(v27, 1, v34) == 1)
    {
      v29 = v35;
      sub_221BCC8C8();
      v30 = *(v28 + 20);
      if (qword_27CFB6DA0 != -1)
      {
        swift_once();
      }

      *(v29 + v30) = qword_27CFB9450;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);

      if (EnumTagSinglePayload != 1)
      {
        sub_2219A1CC8(v27, &qword_27CFB9D00, &unk_221BDB1B0);
      }
    }

    else
    {
      v29 = v35;
      sub_221B229DC(v27, v35, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    }

    sub_221AF9F84(v29, v40);
    sub_221B22C2C(v21, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);
    sub_2219A02E8(v41, __src, &qword_27CFB8320, &unk_221BD1D60);
    sub_2219A02E8(v40, &__src[40], &unk_27CFBB7B0, &unk_221BE4C10);
    __src[120] = v41[80];
    sub_2219A02E8(&v42, &__src[80], &unk_27CFB93B0, &qword_221BD1D70);
    sub_2219A1CC8(v40, &unk_27CFBB7A0, &qword_221BD2930);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
    return memcpy((v25 + *(v32 + 28)), __src, 0x79uLL);
  }
}

uint64_t sub_221AFE3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v49 - v5;
  v50 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v6 = *(*(v50 - 1) + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_221BCC558();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0) + 20);
  v53 = a1;
  v23 = *(a1 + v22);
  v24 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  swift_beginAccess();
  sub_2219A02E8(v23 + v24, v12, &qword_27CFB9988, &qword_221BDAE20);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    *v16 = 0;
    v16[1] = 0;
    v25 = v16 + *(v13 + 24);
    sub_221BCC8C8();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_2219A1CC8(v12, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v12, v16, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v26 = v54;
  sub_221AE9E30(v16);
  sub_221B22C2C(v16, type metadata accessor for AppIntentsProtobuf_UUID);
  if (v26)
  {
    return sub_221B22C2C(v53, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);
  }

  v28 = v52;
  (*(v18 + 32))(v52, v21, v17);
  v29 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  swift_beginAccess();
  v30 = v51;
  sub_2219A02E8(v23 + v29, v51, &unk_27CFBB790, &qword_221BDADD8);
  v31 = v50;
  if (__swift_getEnumTagSinglePayload(v30, 1, v50) == 1)
  {
    *v8 = 0;
    v8[8] = 1;
    v32 = MEMORY[0x277D84F90];
    *(v8 + 2) = MEMORY[0x277D84F90];
    *(v8 + 3) = v32;
    *(v8 + 4) = v32;
    *(v8 + 5) = v32;
    *(v8 + 6) = v32;
    *(v8 + 7) = v32;
    *(v8 + 8) = v32;
    *(v8 + 9) = sub_221BCD2C8();
    *(v8 + 10) = v32;
    *(v8 + 11) = sub_221BCD2C8();
    v33 = &v8[v31[15]];
    sub_221BCC8C8();
    v34 = &v8[v31[16]];
    *v34 = 0;
    *(v34 + 1) = 0;
    *&v8[v31[17]] = xmmword_221BD8640;
    v35 = &v8[v31[18]];
    *v35 = 0;
    *(v35 + 1) = 0;
    v36 = &v8[v31[19]];
    *v36 = 0;
    *(v36 + 1) = 0;
    if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
    {
      sub_2219A1CC8(v30, &unk_27CFBB790, &qword_221BDADD8);
    }
  }

  else
  {
    sub_221B229DC(v30, v8, type metadata accessor for AppIntentsProtobuf_Dialog);
  }

  v37 = sub_221B0B9B8(v8);
  v39 = v38;
  v41 = v40;
  v42 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__isThrowing;
  swift_beginAccess();
  v43 = *(v23 + v42);
  v44 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__requestConfirmation;
  swift_beginAccess();
  v45 = *(v23 + v44);
  v46 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse20ContinueInAppRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  result = swift_beginAccess();
  v47 = *(v23 + v46);
  if (v47 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_221B22C2C(v53, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
    v48 = v28 + *(result + 28);
    *v48 = v37;
    *(v48 + 8) = v39;
    *(v48 + 16) = v41;
    *(v48 + 24) = &type metadata for AnyDialog;
    *(v48 + 32) = &off_283512A28;
    *(v48 + 40) = v43;
    *(v48 + 41) = v45;
    *(v48 + 48) = v47;
  }

  return result;
}

void sub_221AFE910()
{
  OUTLINED_FUNCTION_55_4();
  v130 = v2;
  v129 = v1;
  v128 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  OUTLINED_FUNCTION_8_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  OUTLINED_FUNCTION_8_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  OUTLINED_FUNCTION_8_1(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  OUTLINED_FUNCTION_8_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_111_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
  OUTLINED_FUNCTION_8_1(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_104_2();
  v39 = OUTLINED_FUNCTION_70_7(v38);
  v40 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(v39);
  v41 = OUTLINED_FUNCTION_2_1(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  v45 = OUTLINED_FUNCTION_8_1(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_62_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_242_2();
  MEMORY[0x28223BE20](v51);
  v53 = v123 - v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x28223BE20](v56);
  v133 = v123 - v57;
  v127 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  __swift_storeEnumTagSinglePayload(v133, 1, 1, v127);
  sub_221B22BD0(v129, v4, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v95 = *v4;
      type metadata accessor for AppIntentsProtobuf_Error(0);
      OUTLINED_FUNCTION_200_1();
      MEMORY[0x28223BE20](v96);
      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_8_15();
      sub_221AE8904(v97, v98);
      OUTLINED_FUNCTION_128_3();

      if (v2)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v0);
      v79 = v3;
      goto LABEL_15;
    case 2u:
      v70 = v123[1];
      OUTLINED_FUNCTION_192_3();
      sub_2219A182C(v71, v72, v73, &qword_221BD2E18);
      v74 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
      MEMORY[0x28223BE20](v74);
      OUTLINED_FUNCTION_120_3();
      *(v75 - 16) = v70;
      sub_221AE8904(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest);
      OUTLINED_FUNCTION_128_3();
      OUTLINED_FUNCTION_221_3();
      if (v4)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, &qword_27CFB8348);
      v79 = v53;
      goto LABEL_15;
    case 3u:
      v80 = v125;
      OUTLINED_FUNCTION_192_3();
      sub_2219A182C(v81, v82, v83, &unk_221BD2E00);
      v84 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
      MEMORY[0x28223BE20](v84);
      OUTLINED_FUNCTION_120_3();
      *(v85 - 16) = v80;
      sub_221AE8904(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest);
      OUTLINED_FUNCTION_128_3();
      OUTLINED_FUNCTION_221_3();
      if (v4)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, &unk_27CFB93F0);
      v79 = v6;
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_245_2(&v131[23]);
      OUTLINED_FUNCTION_237_1();
      sub_2219A182C(v64, v65, v66, v67);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0);
      OUTLINED_FUNCTION_200_1();
      MEMORY[0x28223BE20](v68);
      OUTLINED_FUNCTION_120_3();
      *(v69 - 16) = v6;
      sub_221AE8904(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest);
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_128_3();
      OUTLINED_FUNCTION_222_3();
      OUTLINED_FUNCTION_171_3(&v132);
      goto LABEL_14;
    case 5u:
      OUTLINED_FUNCTION_245_2(&v131[24]);
      OUTLINED_FUNCTION_237_1();
      sub_2219A182C(v102, v103, v104, v105);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
      OUTLINED_FUNCTION_200_1();
      MEMORY[0x28223BE20](v106);
      OUTLINED_FUNCTION_120_3();
      *(v107 - 16) = v6;
      sub_221AE8904(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest);
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_128_3();
      OUTLINED_FUNCTION_222_3();
      OUTLINED_FUNCTION_171_3(&v132);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v40);
      v79 = v0;
      goto LABEL_15;
    case 6u:
      v89 = v124;
      sub_2219A182C(v4, v124, &qword_27CFB8340, &unk_221BE57E0);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v114);
      OUTLINED_FUNCTION_102_4();
      sub_221AE8904(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest);
      OUTLINED_FUNCTION_128_3();
      v61 = &qword_27CFB8340;
      v62 = &unk_221BE57E0;
      if (v2)
      {
        goto LABEL_18;
      }

      sub_2219A1CC8(v89, &qword_27CFB8340, &unk_221BE57E0);
      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v0);
      v79 = v7;
      goto LABEL_15;
    case 7u:
      v89 = v126;
      sub_2219A182C(v4, v126, &unk_27CFB93E0, &unk_221BD2DF0);
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0);
      OUTLINED_FUNCTION_178_3();
      MEMORY[0x28223BE20](v90);
      OUTLINED_FUNCTION_102_4();
      sub_221AE8904(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest);
      v91 = v123[0];
      OUTLINED_FUNCTION_128_3();
      v61 = &unk_27CFB93E0;
      v62 = &unk_221BD2DF0;
      if (v2)
      {
LABEL_18:
        v63 = v89;
        goto LABEL_19;
      }

      sub_2219A1CC8(v89, &unk_27CFB93E0, &unk_221BD2DF0);
      OUTLINED_FUNCTION_94_5();
      swift_storeEnumTagMultiPayload();
      v92 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v0);
      v79 = v91;
LABEL_15:
      v111 = v133;
      sub_221B22A38(v79, v133, &unk_27CFBB780, &unk_221BDB150);
      goto LABEL_16;
    case 8u:
      sub_221BCE058();
      __break(1u);
      return;
    default:
      v59 = v4[28];
      v58 = v4[29];
      memcpy(v131, v4, sizeof(v131));
      v60 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
      MEMORY[0x28223BE20](v60);
      v123[-4] = v131;
      v123[-3] = v59;
      v122 = v58;
      sub_221AE8904(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success);
      OUTLINED_FUNCTION_128_3();

      if (v2)
      {
        v61 = &unk_27CFBB7A0;
        v62 = &qword_221BD2930;
        v63 = v131;
LABEL_19:
        sub_2219A1CC8(v63, v61, v62);
LABEL_20:
        v113 = v133;
      }

      else
      {
        OUTLINED_FUNCTION_94_5();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v115, v116, v117, v58);
        v118 = v5;
        v111 = v133;
        sub_221B22A38(v118, v133, &unk_27CFBB780, &unk_221BDB150);
        sub_2219A1CC8(v131, &unk_27CFBB7A0, &qword_221BD2930);
LABEL_16:
        type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
        OUTLINED_FUNCTION_178_3();
        MEMORY[0x28223BE20](v112);
        OUTLINED_FUNCTION_102_4();
        sub_221AE8904(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse);
        sub_221BCCB58();
        v113 = v111;
      }

      sub_2219A1CC8(v113, &unk_27CFBB780, &unk_221BDB150);
      OUTLINED_FUNCTION_133_4();
      OUTLINED_FUNCTION_53_5();
      return;
  }
}

uint64_t sub_221AFF500(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a2;
  sub_221AE8904(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput);
  result = sub_221BCCB58();
  if (!v4)
  {
    v14 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0) + 24);
    sub_2219A1CC8(a1 + v14, &qword_27CFB9D00, &unk_221BDB1B0);
    sub_221B229DC(v12, a1 + v14, type metadata accessor for AppIntentsProtobuf_ActionOutput);
    __swift_storeEnumTagSinglePayload(a1 + v14, 0, 1, v9);
    v15 = a1[1];

    *a1 = a3;
    a1[1] = a4;
  }

  return result;
}

void sub_221AFF7DC()
{
  OUTLINED_FUNCTION_55_4();
  v56 = v3;
  v5 = v4;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  v12 = OUTLINED_FUNCTION_8_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_51_4();
  v55 = v15;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_174_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_40_8();
  v23 = type metadata accessor for AppIntentsProtobuf_UUID(v22);
  v24 = OUTLINED_FUNCTION_2_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_45_9();
  v57 = sub_221BCC558();
  v27 = OUTLINED_FUNCTION_0_2(v57);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = OUTLINED_FUNCTION_79_2();
  v31 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v30);
  v32 = v5;
  sub_2219A02E8(v5 + *(v31 + 24), v1, &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_43_9(v1);
  if (v44)
  {
    *v2 = 0;
    v2[1] = 0;
    v33 = v2 + *(v23 + 24);
    sub_221BCC8C8();
    OUTLINED_FUNCTION_43_9(v1);
    if (!v44)
    {
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    sub_221B229DC(v1, v2, type metadata accessor for AppIntentsProtobuf_UUID);
  }

  v34 = OUTLINED_FUNCTION_236_0();
  sub_221AE9E30(v34);
  if (v0)
  {
    sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v35);
  }

  else
  {
    sub_221B22C2C(v2, type metadata accessor for AppIntentsProtobuf_UUID);
    v36 = OUTLINED_FUNCTION_95_5();
    v38 = v37(v36);
    OUTLINED_FUNCTION_223_3(v38, v39, &qword_27CFBA488, &qword_221BE0AD8);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(v23);
    if (v44)
    {
      v56(0);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      v40 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v40, v41);
      OUTLINED_FUNCTION_187_2(v42, v43);
      OUTLINED_FUNCTION_32_9();
      sub_221B22C2C(v32, v46);
      sub_2219A1CC8(v23, &qword_27CFBA488, &qword_221BE0AD8);
      v47 = v2[1];
      v48 = OUTLINED_FUNCTION_343();
      v49(v48);
    }

    else
    {
      sub_2219A02E8(v23, v55, &qword_27CFBA488, &qword_221BE0AD8);
      OUTLINED_FUNCTION_70();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_230_1();
      if (v44)
      {
        sub_221B22C2C(v5, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse);
        v50 = *v55;
      }

      else
      {
        sub_221B229DC(v55, v54, type metadata accessor for AppIntentsProtobuf_Error);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v45 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v45);
        OUTLINED_FUNCTION_32_9();
        sub_221B22C2C(v5, v51);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(v54, v52);
      }

      v53 = (v56)(0);
      OUTLINED_FUNCTION_233_1(v53);
      sub_2219A1CC8(v23, &qword_27CFBA488, &qword_221BE0AD8);
    }
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221AFFC4C()
{
  OUTLINED_FUNCTION_55_4();
  v43 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_149_2();
  v14 = type metadata accessor for AppIntentsProtobuf_UUID(v13);
  v15 = OUTLINED_FUNCTION_2_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_165_0();
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v18 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0) + 24);
  sub_2219A1CC8(&v8[v18], &qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_5_20();
  sub_221B229DC(v1, &v8[v18], v19);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v14);
  v23 = v6 + *(v4(0) + 20);
  v24 = *v23;
  if (*(v23 + 8))
  {
    v25 = type metadata accessor for AppIntentsProtobuf_Error(0);
    OUTLINED_FUNCTION_182_3();
    MEMORY[0x28223BE20](v26);
    OUTLINED_FUNCTION_120_3();
    *(v27 - 16) = v24;
    OUTLINED_FUNCTION_8_15();
    sub_221AE8904(v28, v29);
    v30 = v24;
    sub_221BCCB58();
    v31 = OUTLINED_FUNCTION_141_3();
    v43(v31);
    if (!v0)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
      OUTLINED_FUNCTION_164_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v32, v33, v34, v25);
      v35 = OUTLINED_FUNCTION_55_3();
      sub_221B22A38(v35, v36, v37, v38);
    }
  }

  else
  {
    sub_2219A1CC8(v8, &qword_27CFBA488, &qword_221BE0AD8);
    *v8 = v24 & 1;
    v39 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_0_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221AFFF9C()
{
  OUTLINED_FUNCTION_55_4();
  v4 = OUTLINED_FUNCTION_185_2(v3);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  v10 = OUTLINED_FUNCTION_8_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_51_4();
  v72 = v13;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_174_3(v15);
  v16 = OUTLINED_FUNCTION_169_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_45_9();
  v23 = type metadata accessor for AppIntentsProtobuf_UUID(v22);
  v24 = OUTLINED_FUNCTION_2_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_10();
  v73 = sub_221BCC558();
  v27 = OUTLINED_FUNCTION_0_2(v73);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = OUTLINED_FUNCTION_79_2();
  v31 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(v30);
  v32 = OUTLINED_FUNCTION_198_2(v31);
  sub_2219A02E8(v32, v2, &qword_27CFB9988, &qword_221BDAE20);
  v33 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_49_4(v33, v34, v23);
  if (v35)
  {
    *v1 = 0;
    v1[1] = 0;
    v36 = v1 + *(v23 + 24);
    sub_221BCC8C8();
    v37 = OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_49_4(v37, v38, v23);
    if (!v35)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v39 = OUTLINED_FUNCTION_235_1();
    sub_221B229DC(v39, v40, v41);
  }

  v42 = OUTLINED_FUNCTION_208_2();
  sub_221AE9E30(v42);
  if (v0)
  {
    v43 = OUTLINED_FUNCTION_19_10();
    sub_221B22C2C(v43, v44);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v45);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v46);
    v47 = OUTLINED_FUNCTION_95_5();
    v49 = v48(v47);
    OUTLINED_FUNCTION_223_3(v49, v50, &unk_27CFBB890, &qword_221BE0AF0);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(&qword_221BDAE20);
    if (v35)
    {
      type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      v51 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v51, v52);
      OUTLINED_FUNCTION_187_2(v53, v54);
      v55 = OUTLINED_FUNCTION_19_10();
      sub_221B22C2C(v55, v64);
      sub_2219A1CC8(&qword_221BDAE20, &unk_27CFBB890, &qword_221BE0AF0);
      v65 = *(v2 + 8);
      v66 = OUTLINED_FUNCTION_214_1();
      v67(v66);
    }

    else
    {
      sub_2219A02E8(&qword_221BDAE20, v72, &unk_27CFBB890, &qword_221BE0AF0);
      OUTLINED_FUNCTION_70();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v57 = OUTLINED_FUNCTION_19_10();
        sub_221B22C2C(v57, v58);
        v59 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v60, v61, v62);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v63 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v63);
        v59 = v68;
        v69 = OUTLINED_FUNCTION_19_10();
        sub_221B22C2C(v69, v70);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(1, v71);
      }

      *(v23 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20)) = v59;
      sub_2219A1CC8(&qword_221BDAE20, &unk_27CFBB890, &qword_221BE0AF0);
    }
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B00364(_BYTE *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v13 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0) + 24);
  sub_2219A1CC8(&a1[v13], &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v12, &a1[v13], type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(&a1[v13], 0, 1, v9);
  v14 = *(a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20));
  if (v14)
  {
    v15 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v15);
    *&v19[-16] = v14;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
    v16 = v14;
    sub_221BCCB58();

    if (!v2)
    {
      v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
      sub_221B22A38(v8, a1, &unk_27CFBB890, &qword_221BE0AF0);
    }
  }

  else
  {
    sub_2219A1CC8(a1, &unk_27CFBB890, &qword_221BE0AF0);
    *a1 = 1;
    v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v18);
  }
}

void sub_221B0071C()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v82 = v5;
  v6 = type metadata accessor for AppIntentsProtobuf_Error(0);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v10 = OUTLINED_FUNCTION_133_3();
  v11 = type metadata accessor for AppIntentsProtobuf_Value(v10);
  v12 = OUTLINED_FUNCTION_8_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  v17 = OUTLINED_FUNCTION_8_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_51_4();
  v80 = v20;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_132_2();
  v81 = v22;
  v23 = OUTLINED_FUNCTION_131_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_8_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_79_2();
  v30 = type metadata accessor for AppIntentsProtobuf_UUID(v29);
  v31 = OUTLINED_FUNCTION_2_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_45_9();
  v34 = sub_221BCC558();
  v35 = OUTLINED_FUNCTION_0_2(v34);
  v83 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_147_2();
  v39 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0) + 24);
  v40 = v4;
  OUTLINED_FUNCTION_237_1();
  sub_2219A02E8(v41, v42, v43, v44);
  OUTLINED_FUNCTION_20_8(v0);
  if (v45)
  {
    *v2 = 0;
    v2[1] = 0;
    v46 = v2 + *(v30 + 24);
    sub_221BCC8C8();
    OUTLINED_FUNCTION_20_8(v0);
    if (!v45)
    {
      sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    sub_221B229DC(v0, v2, v47);
  }

  v48 = OUTLINED_FUNCTION_236_0();
  sub_221AE9E30(v48);
  if (v1)
  {
    OUTLINED_FUNCTION_13_13();
    sub_221B22C2C(v4, v49);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v50);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v2, v51);
    v52 = *(v83 + 32);
    v53 = OUTLINED_FUNCTION_343();
    v54(v53);
    sub_2219A02E8(v4, v81, &unk_27CFBB880, &unk_221BE4FA0);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(v81);
    if (v45)
    {
      type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0);
      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      v55 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v55, v56);
      *(v57 + 16) = 0x8000000221BF0740;
      *(v57 + 24) = 0;
      *(v57 + 32) = 1;
      swift_willThrow();
      OUTLINED_FUNCTION_13_13();
      sub_221B22C2C(v40, v58);
      sub_2219A1CC8(v81, &unk_27CFBB880, &unk_221BE4FA0);
      v59 = *(v83 + 8);
      v60 = OUTLINED_FUNCTION_214_1();
      v61(v60);
    }

    else
    {
      sub_2219A02E8(v81, v80, &unk_27CFBB880, &unk_221BE4FA0);
      OUTLINED_FUNCTION_55_3();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_13_13();
          sub_221B22C2C(v4, v63);
          v64 = 0;
          v65 = *v80;
        }

        else
        {
          OUTLINED_FUNCTION_7_16();
          OUTLINED_FUNCTION_244_2();
          sub_221B229DC(v70, v71, v72);
          sub_221B14BC4(MEMORY[1], MEMORY[9], &qword_27CFBB680, 0x277D23958);
          v65 = v76;
          OUTLINED_FUNCTION_13_13();
          sub_221B22C2C(v4, v77);
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(1, v78);
          v64 = 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v66, v67, v68);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v69 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v69);
        v65 = v73;
        OUTLINED_FUNCTION_13_13();
        sub_221B22C2C(v4, v74);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(v80, v75);
        v64 = 2;
      }

      v79 = v82 + *(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) + 20);
      *v79 = v65;
      *(v79 + 8) = v64;
      sub_2219A1CC8(v81, &unk_27CFBB880, &unk_221BE4FA0);
    }
  }

  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B00BFC(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v28[-v10];
  v12 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v16 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0) + 24);
  sub_2219A1CC8(a1 + v16, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v15, a1 + v16, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v12);
  v17 = a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) + 20);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (!v19)
  {
    sub_2219A1CC8(a1, &unk_27CFBB880, &unk_221BE4FA0);
    *a1 = v18;
    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v24);
    return;
  }

  if (v19 == 1)
  {
    v20 = type metadata accessor for AppIntentsProtobuf_Value(0);
    MEMORY[0x28223BE20](v20);
    *&v28[-16] = v18;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
    v21 = v18;
    sub_221BCCB58();
    sub_221A587E8(v18, 1u);
    if (v2)
    {
      return;
    }

    v22 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v22);
    v23 = v11;
  }

  else
  {
    v25 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v25);
    *&v28[-16] = v18;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
    v26 = v18;
    sub_221BCCB58();
    sub_221A587E8(v18, 2u);
    if (v2)
    {
      return;
    }

    v27 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v27);
    v23 = v8;
  }

  sub_221B22A38(v23, a1, &unk_27CFBB880, &unk_221BE4FA0);
}

void sub_221B010E4()
{
  OUTLINED_FUNCTION_55_4();
  v4 = OUTLINED_FUNCTION_185_2(v3);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_150_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  v10 = OUTLINED_FUNCTION_8_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_51_4();
  v71 = v13;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_132_2();
  OUTLINED_FUNCTION_174_3(v15);
  v16 = OUTLINED_FUNCTION_169_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_8_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_45_9();
  v23 = type metadata accessor for AppIntentsProtobuf_UUID(v22);
  v24 = OUTLINED_FUNCTION_2_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_10();
  v72 = sub_221BCC558();
  v27 = OUTLINED_FUNCTION_0_2(v72);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_0();
  v30 = OUTLINED_FUNCTION_79_2();
  v31 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(v30);
  v32 = OUTLINED_FUNCTION_198_2(v31);
  sub_2219A02E8(v32, v2, &qword_27CFB9988, &qword_221BDAE20);
  v33 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_49_4(v33, v34, v23);
  if (v55)
  {
    *v1 = 0;
    v1[1] = 0;
    v35 = v1 + *(v23 + 24);
    sub_221BCC8C8();
    v36 = OUTLINED_FUNCTION_226_1();
    OUTLINED_FUNCTION_49_4(v36, v37, v23);
    if (!v55)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v38 = OUTLINED_FUNCTION_235_1();
    sub_221B229DC(v38, v39, v40);
  }

  v41 = OUTLINED_FUNCTION_208_2();
  sub_221AE9E30(v41);
  if (v0)
  {
    v42 = OUTLINED_FUNCTION_18_11();
    sub_221B22C2C(v42, v43);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v44);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v1, v45);
    v46 = OUTLINED_FUNCTION_95_5();
    v48 = v47(v46);
    OUTLINED_FUNCTION_223_3(v48, v49, &qword_27CFBA448, &qword_221BE0AA8);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(&qword_221BDAE20);
    if (v55)
    {
      type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
      OUTLINED_FUNCTION_153_3();
      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      v50 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v50, v51);
      OUTLINED_FUNCTION_187_2(v52, v53);
      v54 = OUTLINED_FUNCTION_18_11();
      sub_221B22C2C(v54, v60);
      sub_2219A1CC8(&qword_221BDAE20, &qword_27CFBA448, &qword_221BE0AA8);
      v61 = *(v2 + 8);
      v62 = OUTLINED_FUNCTION_214_1();
      v63(v62);
    }

    else
    {
      sub_2219A02E8(&qword_221BDAE20, v71, &qword_27CFBA448, &qword_221BE0AA8);
      OUTLINED_FUNCTION_70();
      swift_getEnumCaseMultiPayload();
      OUTLINED_FUNCTION_230_1();
      if (v55)
      {
        v64 = OUTLINED_FUNCTION_18_11();
        sub_221B22C2C(v64, v65);
        v66 = *v71;
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v56, v57, v58);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v59 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v59);
        v67 = OUTLINED_FUNCTION_18_11();
        sub_221B22C2C(v67, v68);
        OUTLINED_FUNCTION_2_32();
        sub_221B22C2C(1, v69);
      }

      v70 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
      OUTLINED_FUNCTION_233_1(v70);
      sub_2219A1CC8(&qword_221BDAE20, &qword_27CFBA448, &qword_221BE0AA8);
    }
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B014B0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-v7];
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v13 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0) + 24);
  sub_2219A1CC8(a1 + v13, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v12, a1 + v13, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v13, 0, 1, v9);
  v14 = a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0) + 20);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v16);
    *&v20[-16] = v15;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
    v17 = v15;
    sub_221BCCB58();
    sub_22198EA78(v15, 1);
    if (!v2)
    {
      v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
      sub_221B22A38(v8, a1, &qword_27CFBA448, &qword_221BE0AA8);
    }
  }

  else
  {
    sub_2219A1CC8(a1, &qword_27CFBA448, &qword_221BE0AA8);
    *a1 = v15;
    v19 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v19);
  }
}

void sub_221B01874()
{
  OUTLINED_FUNCTION_55_4();
  v6 = OUTLINED_FUNCTION_185_2(v5);
  v7 = OUTLINED_FUNCTION_8_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_8();
  v10 = OUTLINED_FUNCTION_133_3();
  v11 = type metadata accessor for AppIntentsProtobuf_Value(v10);
  v12 = OUTLINED_FUNCTION_8_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  OUTLINED_FUNCTION_181_1(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  v17 = OUTLINED_FUNCTION_8_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_51_4();
  v72 = v20;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_132_2();
  v73 = v22;
  v23 = OUTLINED_FUNCTION_131_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_8_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_79_2();
  v30 = type metadata accessor for AppIntentsProtobuf_UUID(v29);
  v31 = OUTLINED_FUNCTION_2_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_45_9();
  v34 = sub_221BCC558();
  v35 = OUTLINED_FUNCTION_0_2(v34);
  v74 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_16_12();
  v39 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  OUTLINED_FUNCTION_198_2(v39);
  OUTLINED_FUNCTION_237_1();
  sub_2219A02E8(v40, v41, v42, v43);
  OUTLINED_FUNCTION_20_8(v0);
  if (v44)
  {
    *v4 = 0;
    v4[1] = 0;
    v45 = v4 + *(v30 + 24);
    sub_221BCC8C8();
    OUTLINED_FUNCTION_20_8(v0);
    if (!v44)
    {
      sub_2219A1CC8(v0, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    sub_221B229DC(v0, v4, v46);
  }

  v47 = OUTLINED_FUNCTION_236_0();
  sub_221AE9E30(v47);
  if (v1)
  {
    OUTLINED_FUNCTION_12_10();
    sub_221B22C2C(v2, v48);
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v4, v49);
  }

  else
  {
    OUTLINED_FUNCTION_0_43();
    sub_221B22C2C(v4, v50);
    (*(v74 + 32))(v75, v3, v34);
    sub_2219A02E8(v2, v73, &qword_27CFBA468, &qword_221BE0AC0);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_39_8(v73);
    if (v44)
    {
      type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0);
      sub_221A00FEC();
      OUTLINED_FUNCTION_15_0();
      v51 = swift_allocError();
      OUTLINED_FUNCTION_117_5(v51, v52);
      *(v53 + 16) = 0x8000000221BF0740;
      *(v53 + 24) = 0;
      *(v53 + 32) = 1;
      swift_willThrow();
      OUTLINED_FUNCTION_12_10();
      sub_221B22C2C(v2, v63);
      sub_2219A1CC8(v73, &qword_27CFBA468, &qword_221BE0AC0);
      (*(v74 + 8))(v75, v34);
    }

    else
    {
      sub_2219A02E8(v73, v72, &qword_27CFBA468, &qword_221BE0AC0);
      OUTLINED_FUNCTION_70();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_7_16();
        OUTLINED_FUNCTION_244_2();
        sub_221B229DC(v60, v61, v62);
        sub_221B14BC4(*v72, v72[1], &qword_27CFBB680, 0x277D23958);
        v65 = v69;
        OUTLINED_FUNCTION_12_10();
        sub_221B22C2C(v2, v70);
        OUTLINED_FUNCTION_4_20();
        v68 = v72;
      }

      else
      {
        OUTLINED_FUNCTION_6_19();
        OUTLINED_FUNCTION_213_3();
        sub_221B229DC(v56, v57, v58);
        sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
        v59 = OUTLINED_FUNCTION_164_1();
        sub_221AEE828(v59);
        v65 = v64;
        OUTLINED_FUNCTION_12_10();
        sub_221B22C2C(v2, v66);
        OUTLINED_FUNCTION_2_32();
        v68 = &qword_27CFB9988;
      }

      sub_221B22C2C(v68, v67);
      v71 = v75 + *(type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0) + 20);
      *v71 = v65;
      *(v71 + 8) = v55 != 1;
      sub_2219A1CC8(v73, &qword_27CFBA468, &qword_221BE0AC0);
    }
  }

  OUTLINED_FUNCTION_177_3();
  OUTLINED_FUNCTION_53_5();
}

void sub_221B01D20(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v16 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0) + 24);
  sub_2219A1CC8(a1 + v16, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v15, a1 + v16, type metadata accessor for AppIntentsProtobuf_UUID);
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v12);
  v17 = a2 + *(type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0) + 20);
  v18 = *v17;
  if (*(v17 + 8))
  {
    v19 = type metadata accessor for AppIntentsProtobuf_Error(0);
    MEMORY[0x28223BE20](v19);
    *&v25[-16] = v18;
    sub_221AE8904(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error);
    v20 = v18;
    sub_221BCCB58();

    if (v2)
    {
      return;
    }

    v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v21);
    v11 = v8;
  }

  else
  {
    v22 = type metadata accessor for AppIntentsProtobuf_Value(0);
    MEMORY[0x28223BE20](v22);
    *&v25[-16] = v18;
    sub_221AE8904(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value);
    v23 = v18;
    sub_221BCCB58();

    if (v2)
    {
      return;
    }

    v24 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v24);
  }

  sub_221B22A38(v11, a1, &qword_27CFBA468, &qword_221BE0AC0);
}

void sub_221B02198()
{
  OUTLINED_FUNCTION_55_4();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_156();
  v9 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v10 = OUTLINED_FUNCTION_2_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_57_7();
  v13 = sub_221BCC558();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_12();
  v17 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  OUTLINED_FUNCTION_250_2(*(v17 + 24));
  v18 = OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_49_4(v18, v19, v9);
  if (v20)
  {
    *v1 = 0;
    v1[1] = 0;
    v21 = v1 + *(v9 + 24);
    sub_221BCC8C8();
    v22 = OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_49_4(v22, v23, v9);
    if (!v20)
    {
      sub_2219A1CC8(v2, &qword_27CFB9988, &qword_221BDAE20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    v24 = OUTLINED_FUNCTION_151_3();
    sub_221B229DC(v24, v25, v26);
  }

  sub_221AE9E30(v1);
  OUTLINED_FUNCTION_12_10();
  sub_221B22C2C(v4, v27);
  OUTLINED_FUNCTION_0_43();
  sub_221B22C2C(v1, v28);
  if (!v0)
  {
    v29 = OUTLINED_FUNCTION_232_1();
    v30(v29);
  }

  OUTLINED_FUNCTION_180_2();
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B02354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;
  sub_221AE8904(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID);
  sub_221BCCB58();
  v8 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0) + 24);
  sub_2219A1CC8(a1 + v8, &qword_27CFB9988, &qword_221BDAE20);
  sub_221B229DC(v7, a1 + v8, type metadata accessor for AppIntentsProtobuf_UUID);
  return __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v4);
}

void sub_221B02554()
{
  OUTLINED_FUNCTION_55_4();
  v558 = v0;
  v3 = v2;
  v530 = v4;
  v516 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  v5 = OUTLINED_FUNCTION_2_1(v516);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_8();
  *&v526 = v8;
  v9 = OUTLINED_FUNCTION_133_3();
  v515 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(v9);
  v10 = OUTLINED_FUNCTION_2_1(v515);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_8();
  *&v525 = v13;
  v14 = OUTLINED_FUNCTION_133_3();
  v523 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(v14);
  v15 = OUTLINED_FUNCTION_2_1(v523);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  *&v524 = v18;
  v19 = OUTLINED_FUNCTION_133_3();
  v20 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(v19);
  v21 = OUTLINED_FUNCTION_18_4(v20);
  v509 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_51_4();
  v520 = v25;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_132_2();
  *&v528 = v27;
  v28 = OUTLINED_FUNCTION_133_3();
  v29 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(v28);
  v30 = OUTLINED_FUNCTION_8_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30_8();
  v507 = v33;
  v34 = OUTLINED_FUNCTION_133_3();
  v519 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(v34);
  v35 = OUTLINED_FUNCTION_2_1(v519);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30_8();
  v518 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_104_2();
  v508 = v43;
  v44 = OUTLINED_FUNCTION_133_3();
  v506 = type metadata accessor for AppIntentsProtobuf_Value(v44);
  v45 = OUTLINED_FUNCTION_2_1(v506);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_30_8();
  v496 = v48;
  v49 = OUTLINED_FUNCTION_133_3();
  v522 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(v49);
  v50 = OUTLINED_FUNCTION_2_1(v522);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_30_8();
  v529 = v53;
  v54 = OUTLINED_FUNCTION_133_3();
  v55 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(v54);
  v56 = OUTLINED_FUNCTION_18_4(v55);
  v517 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_4_0();
  v62 = (v61 - v60);
  v63 = OUTLINED_FUNCTION_149_2();
  v512 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(v63);
  v64 = OUTLINED_FUNCTION_2_1(v512);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_30_8();
  *&v527 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  v69 = OUTLINED_FUNCTION_8_1(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_51_4();
  v505 = v72;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_91_6();
  v504 = v74;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_91_6();
  v495 = v76;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_91_6();
  v494 = v78;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_91_6();
  v493 = v80;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_91_6();
  v514 = v82;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_132_2();
  v503 = v84;
  v85 = OUTLINED_FUNCTION_133_3();
  v531 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v85);
  v86 = OUTLINED_FUNCTION_2_1(v531);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_51_4();
  v492 = v89;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_91_6();
  v491 = v91;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_91_6();
  v490 = v93;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_91_6();
  v489 = v95;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_91_6();
  v488 = v97;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_91_6();
  v513 = v99;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_132_2();
  v487 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8A0, &qword_221BE0B10);
  v103 = OUTLINED_FUNCTION_8_1(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_51_4();
  v502 = v106;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_91_6();
  v501 = v108;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_91_6();
  v500 = v110;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_91_6();
  v499 = v112;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_91_6();
  v498 = v114;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_91_6();
  v511 = v116;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_132_2();
  v497 = v118;
  v119 = OUTLINED_FUNCTION_133_3();
  v532 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(v119);
  v120 = OUTLINED_FUNCTION_2_1(v532);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_51_4();
  v486 = v123;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_91_6();
  v485 = v125;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_91_6();
  v484 = v127;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_91_6();
  v483 = v129;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_91_6();
  v482 = v131;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_91_6();
  v510 = v133;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_201_2();
  v135 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  v136 = OUTLINED_FUNCTION_2_1(v135);
  v138 = *(v137 + 64);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_30_8();
  v521 = v139;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  v141 = OUTLINED_FUNCTION_8_1(v140);
  v143 = *(v142 + 64);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_9_5();
  v146 = v144 - v145;
  MEMORY[0x28223BE20](v147);
  v149 = &v480 - v148;
  v150 = OUTLINED_FUNCTION_151_3();
  sub_2219A02E8(v150, v151, &qword_27CFBA4C8, &qword_221BE0B08);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  OUTLINED_FUNCTION_43_9(v149);
  if (v152)
  {
    OUTLINED_FUNCTION_153_3();
    sub_221A00FEC();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    OUTLINED_FUNCTION_188_3(v153, &type metadata for AppIntentsProtocol.PerformQuery.Request);
    *(v154 + 16) = v146;
    *(v154 + 24) = 0;
    *(v154 + 32) = 1;
    swift_willThrow();
    v155 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest;
LABEL_4:
    v156 = v155;
    v157 = v3;
LABEL_22:
    sub_221B22C2C(v157, v156);
LABEL_23:
    sub_2219A1CC8(v149, &qword_27CFBA4C8, &qword_221BE0B08);
    OUTLINED_FUNCTION_175_1();
    OUTLINED_FUNCTION_53_5();
  }

  else
  {
    v533 = v3;
    sub_2219A02E8(v149, v146, &qword_27CFBA4C8, &qword_221BE0B08);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v185 = OUTLINED_FUNCTION_97_5();
        v169 = v524;
        sub_221B229DC(v185, v524, v186);
        v187 = *(v523 + 20);
        v188 = OUTLINED_FUNCTION_209_1();
        sub_221B056C4(v188, v189);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v190);
          v175 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString;
          goto LABEL_21;
        }

        v527 = v550;
        v528 = v549;
        LODWORD(v526) = v551;
        v230 = v169[1];
        v231 = OUTLINED_FUNCTION_191_3(*v169);
        Request = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v231);
        v233 = v533;
        v234 = v500;
        sub_2219A02E8(v533 + *(Request + 24), v500, &unk_27CFBB8A0, &qword_221BE0B10);
        v235 = OUTLINED_FUNCTION_226_1();
        v236 = v532;
        OUTLINED_FUNCTION_72_6(v235, v237);
        v481 = v149;
        v529 = v230;
        if (v152)
        {

          v357 = v484;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_196_1(*(v236 + 20));
          OUTLINED_FUNCTION_216_2(*(v236 + 24));
          OUTLINED_FUNCTION_48_8(v234);
          v359 = v495;
          if (!v152)
          {
            sub_2219A1CC8(v234, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v357 = v484;
          sub_221B229DC(v234, v484, v358);

          v359 = v495;
        }

        LODWORD(v525) = sub_221B06378();
        v361 = v360;
        v532 = v362;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v357, v363);
        sub_2219A02E8(v233 + *(Request + 28), v359, &unk_27CFBB600, &qword_221BE44B0);
        v364 = OUTLINED_FUNCTION_276();
        v365 = v531;
        OUTLINED_FUNCTION_49_4(v364, v366, v531);
        if (v152)
        {
          v367 = v490;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(v365[5]);
          v368 = v367 + v365[6];
          *v368 = 0;
          *(v368 + 4) = 1;
          OUTLINED_FUNCTION_215_1(v365[7]);
          OUTLINED_FUNCTION_43_9(v359);
          if (!v152)
          {
            sub_2219A1CC8(v359, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v359, v490, v369);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v233, v370);
        v371 = v535[0];
        v372 = v535[1];
        v373 = BYTE1(v535[1]);
        v374 = v524;
        v375 = (v524 + *(v523 + 24));
        v376 = *v375;
        v377 = v375[1];

        sub_221B22C2C(v374, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString);
        v378 = v530;
        v530[10] = v376;
        v378[11] = v377;
        v379 = v527;
        *(v378 + 6) = v528;
        *(v378 + 7) = v379;
        *(v378 + 128) = v526;
        *(v378 + 209) = 3;
        v380 = v529;
        *v378 = v558;
        v378[1] = v380;
        *(v378 + 1) = xmmword_221BD0800;
        *(v378 + 32) = v525 & 1;
        v381 = v532;
        v378[5] = v361;
        v378[6] = v381;
        *(v378 + 7) = v371;
        *(v378 + 72) = v372;
        *(v378 + 73) = v373;
        goto LABEL_93;
      case 2:
        v176 = OUTLINED_FUNCTION_97_5();
        v3 = v518;
        sub_221B229DC(v176, v518, v177);
        sub_221B05288(v3 + v519[5], v547);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v178);
          v155 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties;
          goto LABEL_4;
        }

        v211 = v3[1];
        *&v525 = *v3;
        v559 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
        v212 = OUTLINED_FUNCTION_207_3(*(v559 + 24));
        v213 = v499;
        sub_2219A02E8(v212, v499, v214, v215);
        v216 = OUTLINED_FUNCTION_226_1();
        v217 = v532;
        OUTLINED_FUNCTION_72_6(v216, v218);
        *&v527 = v211;
        if (v152)
        {

          v321 = v483;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_229_1(*(v217 + 20));
          *(v321 + *(v217 + 24)) = 2;
          OUTLINED_FUNCTION_48_8(v213);
          v323 = v531;
          v324 = v494;
          if (!v152)
          {
            sub_2219A1CC8(v213, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v321 = v483;
          sub_221B229DC(v213, v483, v322);

          v323 = v531;
          v324 = v494;
        }

        LODWORD(v523) = sub_221B06378();
        *&v524 = v325;
        *&v526 = v326;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v321, v327);
        v328 = OUTLINED_FUNCTION_207_3(*(v559 + 28));
        sub_2219A02E8(v328, v324, v329, v330);
        OUTLINED_FUNCTION_48_8(v324);
        if (v152)
        {
          v331 = v489;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_229_1(v323[5]);
          v332 = v331 + v323[6];
          *v332 = 0;
          *(v332 + 4) = 1;
          *(v331 + v323[7]) = 2;
          OUTLINED_FUNCTION_48_8(v324);
          v334 = v520;
          if (!v152)
          {
            sub_2219A1CC8(v324, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v324, v489, v333);
          v334 = v520;
        }

        sub_221AE9D08();
        v335 = *(&v536 + 1);
        v522 = v536;
        LODWORD(v521) = v537;
        LODWORD(v517) = v538;
        v336 = v507;
        sub_221A8A240();
        sub_221B06438(v336, v535);
        v516 = v335;
        v426 = v3 + v519[9];
        v427 = *v426;
        v428 = v426[8];
        if (v428)
        {
          v427 = 0;
        }

        *(&v535[4] + 1) = v427;
        LOBYTE(v535[5]) = v428;
        v429 = *(v3 + v519[6]);
        v430 = *(v429 + 16);
        if (!v430)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v454);
          OUTLINED_FUNCTION_58_8();
          sub_221B22C2C(v3, v455);
          v432 = MEMORY[0x277D84F90];
LABEL_125:
          v471 = v524;
          v472 = v523;
          v473 = v522;
          v474 = v521;
          v475 = v517;
          *(&v535[5] + 1) = v432;
          v535[6] = v547[0];
          v535[7] = v547[1];
          LOBYTE(v535[8]) = v548;
          BYTE1(v535[8]) = 4;
          v476 = v530;
          v477 = v527;
          *v530 = v525;
          v476[1] = v477;
          *(v476 + 1) = xmmword_221BD0800;
          *(v476 + 32) = v472 & 1;
          v478 = v526;
          v476[5] = v471;
          v476[6] = v478;
          v479 = v516;
          v476[7] = v473;
          v476[8] = v479;
          *(v476 + 72) = v474;
          *(v476 + 73) = v475;
          memcpy(v476 + 10, v535, 0x82uLL);
          goto LABEL_23;
        }

        v529 = 0;
        v534 = MEMORY[0x277D84F90];
        v531 = v430;
        sub_2219A31CC(0, v430, 0);
        v431 = 0;
        v432 = v534;
        v433 = *(v509 + 80);
        OUTLINED_FUNCTION_176_2();
        v562 = v429 + v434;
        v481 = v149;
        v532 = v429;
        while (v431 < *(v429 + 16))
        {
          v435 = v528;
          sub_221B22BD0(v562 + *(v509 + 72) * v431, v528, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          sub_221B22BD0(v435, v334, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          v436 = *(v334 + 32);
          if (v436 == 255)
          {
            v456 = v149;

            sub_2219ACA1C(v547);
            v462 = 0xEE00746567726174;
            v463 = 0x20676E697373694DLL;
            v464 = &type metadata for PropertyQuery.SortingOption;
            goto LABEL_124;
          }

          v437 = *(v334 + 16);
          v438 = *(v334 + 24);
          if (*(v334 + 8) != 1)
          {
            goto LABEL_122;
          }

          if (*v334 == 1)
          {
            v439 = 0;
          }

          else
          {
            if (*v334 != 2)
            {
LABEL_122:
              v456 = v149;
              v457 = OUTLINED_FUNCTION_120();
              sub_2219980F0(v457, v458, v459);

              sub_2219ACA1C(v547);
              v460 = OUTLINED_FUNCTION_120();
              sub_221AE00C4(v460, v461, v436);
              v462 = 0x8000000221BF0780;
              v463 = 0xD000000000000016;
              v464 = &type metadata for PropertyQuery.SortOrder;
LABEL_124:
              sub_221A00FEC();
              OUTLINED_FUNCTION_15_0();
              v465 = swift_allocError();
              *v466 = v464;
              v466[1] = v463;
              v466[2] = v462;
              v466[3] = 0;
              OUTLINED_FUNCTION_193_3(v465, v466);

              OUTLINED_FUNCTION_225_1();
              OUTLINED_FUNCTION_3_24();
              sub_221B22C2C(v533, v467);
              sub_221B22C2C(v520, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
              sub_221B22C2C(v528, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
              OUTLINED_FUNCTION_58_8();
              sub_221B22C2C(v518, v468);

              sub_2219ACB30(v535);
              v149 = v456;
              goto LABEL_23;
            }

            v439 = 1;
          }

          if (v436)
          {
            v440 = *(v334 + 24);
          }

          else
          {
            v440 = 0;
          }

          v441 = OUTLINED_FUNCTION_120();
          sub_2219980F0(v441, v442, v443);
          sub_221B22C2C(v334, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          sub_221B22C2C(v528, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions);
          v534 = v432;
          v445 = *(v432 + 16);
          v444 = *(v432 + 24);
          if (v445 >= v444 >> 1)
          {
            v447 = OUTLINED_FUNCTION_90_3(v444);
            sub_2219A31CC(v447, v445 + 1, 1);
            v432 = v534;
          }

          v431 = (v431 + 1);
          *(v432 + 16) = v445 + 1;
          v446 = v432 + 32 * v445;
          *(v446 + 32) = v439;
          *(v446 + 40) = v437;
          *(v446 + 48) = v440;
          *(v446 + 56) = v436 & 1;
          v429 = v532;
          v149 = v481;
          v334 = v520;
          if (v531 == v431)
          {
            OUTLINED_FUNCTION_3_24();
            sub_221B22C2C(v533, v469);
            OUTLINED_FUNCTION_58_8();
            sub_221B22C2C(v518, v470);
            goto LABEL_125;
          }
        }

        __break(1u);
        break;
      case 3:
        v179 = OUTLINED_FUNCTION_97_5();
        v169 = v521;
        sub_221B229DC(v179, v521, v180);
        v181 = *(v135 + 20);
        v182 = OUTLINED_FUNCTION_209_1();
        sub_221B045D4(v182, v183);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v184);
          v175 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities;
          goto LABEL_21;
        }

        v527 = v540;
        v528 = v539;
        LODWORD(v526) = v541;
        v219 = *v169;
        v220 = v169[1];
        v221 = OUTLINED_FUNCTION_191_3(v219);
        v222 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v221);
        v223 = OUTLINED_FUNCTION_207_3(*(v222 + 24));
        v224 = v497;
        sub_2219A02E8(v223, v497, v225, v226);
        v227 = OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_44_5(v227, v228);
        v481 = v149;
        v529 = 0;
        if (v152)
        {

          sub_221BCC8C8();
          OUTLINED_FUNCTION_100_4();
          OUTLINED_FUNCTION_195_3(v229);
          OUTLINED_FUNCTION_13_8(v224);
          if (!v152)
          {
            sub_2219A1CC8(v224, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          sub_221B229DC(v224, v1, v337);
        }

        v338 = sub_221B06378();
        v340 = v339;
        v342 = v341;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v1, v343);
        v344 = OUTLINED_FUNCTION_207_3(*(v222 + 28));
        v345 = v503;
        sub_2219A02E8(v344, v503, v346, v347);
        v348 = OUTLINED_FUNCTION_276();
        v349 = v531;
        OUTLINED_FUNCTION_42_9(v348, v350);
        if (v152)
        {
          v351 = v487;
          sub_221BCC8C8();
          v352 = (v351 + v349[5]);
          *v352 = 0;
          v352[1] = 0;
          OUTLINED_FUNCTION_212_2(v349[6]);
          *(v353 + 4) = 1;
          OUTLINED_FUNCTION_195_3(v349[7]);
          OUTLINED_FUNCTION_25_10(v345);
          if (!v152)
          {
            sub_2219A1CC8(v345, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v345, v487, v354);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v533, v355);
        sub_221B22C2C(v521, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities);
        OUTLINED_FUNCTION_203_1();
        v356 = v527;
        *(v320 + 80) = v528;
        *(v320 + 96) = v356;
        *(v320 + 112) = v526;
        *(v320 + 209) = 0;
        *v320 = v0;
        *(v320 + 8) = v220;
        *(v320 + 16) = xmmword_221BD0800;
        *(v320 + 32) = v338 & 1;
        *(v320 + 40) = v340;
        *(v320 + 48) = v342;
        goto LABEL_92;
      case 4:
        v168 = OUTLINED_FUNCTION_97_5();
        v169 = v525;
        sub_221B229DC(v168, v525, v170);
        v171 = *(v515 + 20);
        v172 = OUTLINED_FUNCTION_209_1();
        sub_221B05B00(v172, v173);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v174);
          v175 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities;
          goto LABEL_21;
        }

        v529 = 0;
        v526 = v553;
        v527 = v552;
        LODWORD(v524) = v554;
        v203 = v169[1];
        v204 = OUTLINED_FUNCTION_191_3(*v169);
        v205 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v204);
        v206 = v533;
        v207 = v501;
        sub_2219A02E8(v533 + *(v205 + 24), v501, &unk_27CFBB8A0, &qword_221BE0B10);
        v208 = OUTLINED_FUNCTION_56_6();
        v209 = v532;
        OUTLINED_FUNCTION_73_6(v208, v210);
        v481 = v149;
        *&v528 = v203;
        if (v152)
        {

          v302 = v485;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(*(v209 + 20));
          OUTLINED_FUNCTION_215_1(*(v209 + 24));
          OUTLINED_FUNCTION_20_8(v207);
          if (!v152)
          {
            sub_2219A1CC8(v207, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v302 = v485;
          sub_221B229DC(v207, v485, v303);
        }

        v304 = sub_221B06378();
        v306 = v305;
        v308 = v307;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v302, v309);
        v310 = v504;
        sub_2219A02E8(v206 + *(v205 + 28), v504, &unk_27CFBB600, &qword_221BE44B0);
        v311 = OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_42_9(v311, v312);
        if (v152)
        {
          sub_221BCC8C8();
          OUTLINED_FUNCTION_37_5();
          *(v313 + 4) = 1;
          OUTLINED_FUNCTION_115_3();
          OUTLINED_FUNCTION_25_10(v310);
          if (!v152)
          {
            sub_2219A1CC8(v310, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v310, v491, v314);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v206, v315);
        sub_221B22C2C(v525, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities);
        OUTLINED_FUNCTION_203_1();
        v316 = v526;
        *(v317 + 80) = v527;
        *(v317 + 96) = v316;
        *(v317 + 112) = v524;
        OUTLINED_FUNCTION_219_3();
        *(v320 + 16) = xmmword_221BD0800;
        *(v320 + 32) = v304 & 1;
        *(v320 + 40) = v306;
        goto LABEL_91;
      case 5:
        v191 = OUTLINED_FUNCTION_97_5();
        v169 = v526;
        sub_221B229DC(v191, v526, v192);
        v193 = *(v516 + 20);
        v194 = OUTLINED_FUNCTION_209_1();
        sub_221B05F3C(v194, v195);
        if (v0)
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v196);
          v175 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity;
          goto LABEL_21;
        }

        v529 = 0;
        v525 = v556;
        v527 = v555;
        LODWORD(v524) = v557;
        v238 = v169[1];
        v239 = OUTLINED_FUNCTION_191_3(*v169);
        v240 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(v239);
        v241 = v533;
        v242 = v502;
        sub_2219A02E8(v533 + *(v240 + 24), v502, &unk_27CFBB8A0, &qword_221BE0B10);
        v243 = OUTLINED_FUNCTION_9_1();
        v244 = v532;
        OUTLINED_FUNCTION_44_5(v243, v245);
        v481 = v149;
        *&v528 = v238;
        if (v152)
        {

          v382 = v486;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(*(v244 + 20));
          OUTLINED_FUNCTION_215_1(*(v244 + 24));
          OUTLINED_FUNCTION_13_8(v242);
          if (!v152)
          {
            sub_2219A1CC8(v242, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v382 = v486;
          sub_221B229DC(v242, v486, v383);
        }

        v384 = sub_221B06378();
        v386 = v385;
        v308 = v387;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v382, v388);
        v389 = v505;
        sub_2219A02E8(v241 + *(v240 + 28), v505, &unk_27CFBB600, &qword_221BE44B0);
        v390 = OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_42_9(v390, v391);
        if (v152)
        {
          sub_221BCC8C8();
          OUTLINED_FUNCTION_37_5();
          *(v392 + 4) = 1;
          OUTLINED_FUNCTION_115_3();
          OUTLINED_FUNCTION_25_10(v389);
          if (!v152)
          {
            sub_2219A1CC8(v389, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v389, v492, v393);
        }

        sub_221AE9D08();
        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v241, v394);
        sub_221B22C2C(v526, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity);
        OUTLINED_FUNCTION_203_1();
        v395 = v525;
        *(v396 + 80) = v527;
        *(v396 + 96) = v395;
        *(v396 + 112) = v524;
        OUTLINED_FUNCTION_219_3();
        *(v320 + 16) = xmmword_221BD0800;
        *(v320 + 32) = v384 & 1;
        *(v320 + 40) = v386;
LABEL_91:
        *(v320 + 48) = v308;
LABEL_92:
        *(v320 + 56) = v535[0];
        *(v320 + 72) = v318;
        *(v320 + 73) = v319;
LABEL_93:
        v149 = v481;
        goto LABEL_23;
      case 6:
        v197 = OUTLINED_FUNCTION_97_5();
        v169 = v529;
        sub_221B229DC(v197, v529, v198);
        v199 = v522[5];
        v200 = OUTLINED_FUNCTION_209_1();
        sub_221B04E4C(v200, v201);
        if (!v0)
        {
          v527 = v545;
          v528 = v544;
          LODWORD(v526) = v546;
          v246 = *v169;
          v247 = v169[1];
          *&v525 = v246;
          v248 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
          v249 = v533;
          v250 = v498;
          sub_2219A02E8(v533 + *(v248 + 24), v498, &unk_27CFBB8A0, &qword_221BE0B10);
          v251 = OUTLINED_FUNCTION_226_1();
          v252 = v532;
          OUTLINED_FUNCTION_44_5(v251, v253);
          v481 = v149;
          v560 = v247;
          if (v152)
          {

            v397 = v482;
            sub_221BCC8C8();
            OUTLINED_FUNCTION_196_1(*(v252 + 20));
            OUTLINED_FUNCTION_216_2(*(v252 + 24));
            OUTLINED_FUNCTION_13_8(v250);
            v399 = v493;
            v254 = v250;
            v400 = v488;
            if (!v152)
            {
              sub_2219A1CC8(v254, &unk_27CFBB8A0, &qword_221BE0B10);
            }
          }

          else
          {
            OUTLINED_FUNCTION_11_15();
            v397 = v482;
            sub_221B229DC(v250, v482, v398);

            v399 = v493;
            v400 = v488;
          }

          LODWORD(v524) = sub_221B06378();
          v532 = v401;
          v403 = v402;
          OUTLINED_FUNCTION_10_15();
          sub_221B22C2C(v397, v404);
          sub_2219A02E8(v249 + *(v248 + 28), v399, &unk_27CFBB600, &qword_221BE44B0);
          v405 = OUTLINED_FUNCTION_141_3();
          v406 = v531;
          OUTLINED_FUNCTION_49_4(v405, v407, v531);
          v408 = v529;
          if (v152)
          {
            sub_221BCC8C8();
            v409 = (v400 + v406[5]);
            *v409 = 0;
            v409[1] = 0;
            v410 = v400 + v406[6];
            *v410 = 0;
            *(v410 + 4) = 1;
            *(v400 + v406[7]) = 2;
            v411 = OUTLINED_FUNCTION_141_3();
            OUTLINED_FUNCTION_49_4(v411, v412, v406);
            v414 = v496;
            if (!v152)
            {
              sub_2219A1CC8(v399, &unk_27CFBB600, &qword_221BE44B0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_1_37();
            sub_221B229DC(v399, v400, v413);
            v414 = v496;
          }

          sub_221AE9D08();
          v415 = v535[0];
          v416 = v535[1];
          LODWORD(v531) = BYTE1(v535[1]);
          v417 = v408 + v522[7];
          v418 = v508;
          sub_2219A02E8(v417, v508, &unk_27CFBB660, &qword_221BE4610);
          v419 = OUTLINED_FUNCTION_56_6();
          v420 = v506;
          OUTLINED_FUNCTION_72_6(v419, v421);
          if (v152)
          {
            *v414 = xmmword_221BD8630;
            v422 = v414 + *(v420 + 20);
            sub_221BCC8C8();
            OUTLINED_FUNCTION_48_8(v418);
            if (!v152)
            {
              sub_2219A1CC8(v418, &unk_27CFBB660, &qword_221BE4610);
            }
          }

          else
          {
            OUTLINED_FUNCTION_7_16();
            v423 = OUTLINED_FUNCTION_169_2();
            sub_221B229DC(v423, v424, v425);
          }

          sub_221B14BC4(*v414, v414[1], &qword_27CFBB680, 0x277D23958);
          v449 = v448;
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v450);
          OUTLINED_FUNCTION_152_4();
          OUTLINED_FUNCTION_4_20();
          sub_221B22C2C(v414, v451);
          v452 = v530;
          *v530 = v525;
          v452[1] = v560;
          *(v452 + 1) = xmmword_221BD0800;
          *(v452 + 32) = v524 & 1;
          v452[5] = v532;
          v452[6] = v403;
          *(v452 + 7) = v415;
          *(v452 + 72) = v416;
          *(v452 + 73) = v531;
          v452[10] = v449;
          v453 = v528;
          *(v452 + 13) = v527;
          *(v452 + 11) = v453;
          *(v452 + 120) = v526;
          *(v452 + 209) = 2;
          v149 = v481;
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_3_24();
        sub_221B22C2C(v533, v202);
        v175 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue;
LABEL_21:
        v156 = v175;
        v157 = v169;
        goto LABEL_22;
      default:
        v481 = v149;
        v159 = OUTLINED_FUNCTION_97_5();
        v160 = v527;
        sub_221B229DC(v159, v527, v161);
        sub_221B04A10(v160 + *(v512 + 24), v542);
        if (v0)
        {

          v162 = v160[2];
          v164 = v532;
          v163 = v533;
          v165 = v531;
          if (*(v162 + 16))
          {
            v166 = (v162 + ((*(v517 + 80) + 32) & ~*(v517 + 80)));
            v167 = *v166;
            v522 = v166[1];

            v520 = 0;
            v521 = 0;
            LODWORD(v519) = 0;
          }

          else
          {
            v167 = 0;
            v520 = 0;
            v521 = 0;
            LODWORD(v519) = 0;
            v522 = 0xE000000000000000;
          }
        }

        else
        {
          v167 = v542[0];
          v521 = v542[2];
          v522 = v542[1];
          v520 = v542[3];
          LODWORD(v519) = v543;
          v164 = v532;
          v163 = v533;
          v165 = v531;
        }

        v255 = v160[1];
        v531 = *v160;
        v256 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
        v257 = v163 + *(v256 + 24);
        v258 = v511;
        sub_2219A02E8(v257, v511, &unk_27CFBB8A0, &qword_221BE0B10);
        OUTLINED_FUNCTION_145(v258);
        v532 = v167;
        if (v152)
        {

          v260 = v510;
          sub_221BCC8C8();
          OUTLINED_FUNCTION_194_2(*(v164 + 20));
          OUTLINED_FUNCTION_215_1(*(v164 + 24));
          OUTLINED_FUNCTION_145(v258);
          v259 = v258;
          v262 = v255;
          if (!v152)
          {
            sub_2219A1CC8(v259, &unk_27CFBB8A0, &qword_221BE0B10);
          }
        }

        else
        {
          OUTLINED_FUNCTION_11_15();
          v260 = v510;
          sub_221B229DC(v258, v510, v261);

          v262 = v255;
        }

        LODWORD(v525) = sub_221B06378();
        *&v528 = v263;
        *&v526 = v264;
        OUTLINED_FUNCTION_10_15();
        sub_221B22C2C(v260, v265);
        v266 = OUTLINED_FUNCTION_207_3(*(v256 + 28));
        v267 = v514;
        sub_2219A02E8(v266, v514, v268, v269);
        OUTLINED_FUNCTION_43_9(v267);
        if (v152)
        {
          v270 = v513;
          sub_221BCC8C8();
          v271 = (v270 + v165[5]);
          *v271 = 0;
          v271[1] = 0;
          OUTLINED_FUNCTION_212_2(v165[6]);
          *(v272 + 4) = 1;
          OUTLINED_FUNCTION_195_3(v165[7]);
          OUTLINED_FUNCTION_43_9(v267);
          if (!v152)
          {
            sub_2219A1CC8(v267, &unk_27CFBB600, &qword_221BE44B0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_37();
          sub_221B229DC(v267, v513, v273);
        }

        sub_221AE9D08();
        v524 = v536;
        v274 = v537;
        LODWORD(v523) = v538;
        v275 = v160[2];
        v276 = *(v275 + 16);
        if (v276)
        {
          LODWORD(v516) = v537;
          v518 = v262;
          v529 = 0;
          v534 = MEMORY[0x277D84F90];
          sub_2219A3014(0, v276, 0);
          v277 = v534;
          v278 = *(v517 + 80);
          OUTLINED_FUNCTION_176_2();
          v280 = v275 + v279;
          v561 = *(v281 + 72);
          do
          {
            v282 = OUTLINED_FUNCTION_109_3();
            sub_221B22BD0(v282, v62, v283);
            v284 = *v62;
            v285 = v62[1];
            v287 = v62[2];
            v286 = v62[3];
            objc_allocWithZone(MEMORY[0x277D23800]);

            v288 = sub_2219A0230();
            v289 = OUTLINED_FUNCTION_93_3();
            sub_221B22C2C(v289, v290);
            v534 = v277;
            v292 = *(v277 + 16);
            v291 = *(v277 + 24);
            if (v292 >= v291 >> 1)
            {
              v293 = OUTLINED_FUNCTION_90_3(v291);
              sub_2219A3014(v293, v292 + 1, 1);
              v277 = v534;
            }

            *(&v535[1] + 1) = sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
            *&v535[2] = sub_2219A0334();
            *&v535[0] = v288;
            *(v277 + 16) = v292 + 1;
            sub_22198B358(v535, v277 + 40 * v292 + 32);
            v280 += v561;
            --v276;
          }

          while (v276);
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v294);
          OUTLINED_FUNCTION_132_4();
          sub_221B22C2C(v527, v295);
          v262 = v518;
          v274 = v516;
        }

        else
        {
          OUTLINED_FUNCTION_3_24();
          sub_221B22C2C(v533, v296);
          OUTLINED_FUNCTION_132_4();
          sub_221B22C2C(v160, v297);
          v277 = MEMORY[0x277D84F90];
        }

        v298 = v530;
        *v530 = v531;
        v298[1] = v262;
        *(v298 + 1) = xmmword_221BD0800;
        *(v298 + 32) = v525 & 1;
        v299 = v526;
        v298[5] = v528;
        v298[6] = v299;
        *(v298 + 7) = v524;
        *(v298 + 72) = v274;
        *(v298 + 73) = v523;
        v300 = v532;
        v298[10] = v277;
        v298[11] = v300;
        v301 = v521;
        v298[12] = v522;
        v298[13] = v301;
        v298[14] = v520;
        *(v298 + 120) = v519;
        memcpy(v298 + 121, v535, 0x58uLL);
        *(v298 + 209) = 1;
        goto LABEL_93;
    }
  }
}