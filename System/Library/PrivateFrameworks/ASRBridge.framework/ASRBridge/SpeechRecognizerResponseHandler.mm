@interface SpeechRecognizerResponseHandler
- (_TtC9ASRBridge31SpeechRecognizerResponseHandler)init;
- (void)localSpeechRecognizerClient:didAcceptedEagerResultWithRequestId:rcId:mitigationSignal:featuresToLog:;
- (void)localSpeechRecognizerClient:receivedContinuityEndDetected:;
- (void)localSpeechRecognizerClient:receivedFinalResultCandidateWithRequestId:speechPackage:;
- (void)localSpeechRecognizerClient:receivedFinalResultWithRequestId:speechPackage:;
- (void)localSpeechRecognizerClient:receivedFinalResultWithRequestId:speechPackage:metadata:;
- (void)localSpeechRecognizerClient:receivedMultiUserTRPCandidatePackage:;
- (void)localSpeechRecognizerClient:receivedPartialResultWithRequestId:language:speechPackage:metadata:;
- (void)localSpeechRecognizerClient:receivedPartialResultWithRequestId:language:tokens:;
- (void)localSpeechRecognizerClient:receivedPartialResultWithRequestId:language:tokens:metadata:;
- (void)localSpeechRecognizerClient:receivedTRPCandidatePackage:;
- (void)localSpeechRecognizerClient:receivedTRPDetected:;
- (void)localSpeechRecognizerClient:receivedVoiceCommandCandidateWithRequestId:speechPackage:metadata:;
- (void)localSpeechRecognizerClient:receivedVoiceIdScoreCard:;
- (void)localSpeechRecognizerClient:requestAttentionAssetDownload:;
@end

@implementation SpeechRecognizerResponseHandler

- (_TtC9ASRBridge31SpeechRecognizerResponseHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)localSpeechRecognizerClient:receivedPartialResultWithRequestId:language:tokens:metadata:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD00000000000005BLL, 0x80000002232AE770, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedPartialResultWithRequestId:language:speechPackage:metadata:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000062, 0x80000002232AE700, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedFinalResultWithRequestId:speechPackage:metadata:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000057, 0x80000002232AE6A0, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedFinalResultCandidateWithRequestId:speechPackage:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000057, 0x80000002232AE640, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedVoiceCommandCandidateWithRequestId:speechPackage:metadata:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000061, 0x80000002232AE5D0, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:didAcceptedEagerResultWithRequestId:rcId:mitigationSignal:featuresToLog:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000067, 0x80000002232AE810, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedVoiceIdScoreCard:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000038, 0x80000002232AE7D0, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedContinuityEndDetected:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD00000000000003DLL, 0x80000002232AE590, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedTRPDetected:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000033, 0x80000002232AE550, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedTRPCandidatePackage:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD00000000000003BLL, 0x80000002232AE510, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:requestAttentionAssetDownload:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD00000000000003DLL, 0x80000002232AE4D0, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedMultiUserTRPCandidatePackage:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000044, 0x80000002232AE480, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedPartialResultWithRequestId:language:tokens:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD000000000000052, 0x80000002232AE8D0, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

- (void)localSpeechRecognizerClient:receivedFinalResultWithRequestId:speechPackage:
{
  if (qword_28131D338 != -1)
  {
    swift_once();
  }

  v0 = sub_2232AAAD4();
  __swift_project_value_buffer(v0, qword_28131DB88);
  oslog = sub_2232AAAC4();
  v1 = sub_2232AAD94();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_2232603D0(0xD00000000000004ELL, 0x80000002232AE880, &v5);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_2232603D0(0xD00000000000001FLL, 0x80000002232ACE90, &v5);
    _os_log_impl(&dword_22325E000, oslog, v1, "Unexpected %s called on base %s class", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DD8AC0](v3, -1, -1);
    MEMORY[0x223DD8AC0](v2, -1, -1);
  }
}

@end