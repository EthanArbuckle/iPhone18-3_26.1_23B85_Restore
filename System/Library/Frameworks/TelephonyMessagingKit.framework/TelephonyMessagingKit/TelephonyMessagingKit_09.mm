uint64_t sub_1E4BAE2D0()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAE434, 0, 0);
  }

  else
  {
    v4 = v3[13];
    v5 = v3[11];
    v6 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1E4BAE434()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

uint64_t sub_1E4BAE4B0(uint64_t a1, uint64_t *a2)
{
  *(v3 + 120) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 64) = v2;
  *(v3 + 72) = v4;
  *(v3 + 121) = *(a1 + 24);
  v6 = *a2;
  v7 = a2[1];
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  *(v3 + 96) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAE4F0, 0, 0);
}

uint64_t sub_1E4BAE4F0()
{
  v25 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1ECF97018);

  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1E4B30548(v6, v5, &v24);
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Sending fetch-chatbot-render-information to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E6921800](v8, -1, -1);
    MEMORY[0x1E6921800](v7, -1, -1);
  }

  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 121);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 120);
  v15 = *(v0 + 64);
  v16 = v15[6];
  v17 = v15[7];
  __swift_project_boxed_opaque_existential_1(v15 + 3, v16);
  *(v0 + 16) = v14;
  *(v0 + 24) = v12;
  *(v0 + 32) = v13;
  *(v0 + 40) = v11;
  *(v0 + 48) = v10;
  *(v0 + 56) = v9;
  v18 = *(v17 + 32);

  v23 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v0 + 104) = v20;
  v21 = sub_1E4B9E59C();
  *v20 = v0;
  v20[1] = sub_1E4BAE798;

  return v23(v0 + 16, &type metadata for RCSChatbotFetchRenderInformationRequest, v21, v16, v17);
}

uint64_t sub_1E4BAE798()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BAE8E4, 0, 0);
  }

  else
  {
    v4 = v3[12];
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E4BAE8E4()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1E4BAE954(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v5 = type metadata accessor for RCSChatbotRenderInformationResponse();
  *(v3 + 64) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v3 + 41) = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *(v3 + 88) = v7;
  *(v3 + 96) = v8;
  *(v3 + 104) = v9;
  *(v3 + 42) = *(a2 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1E4BAEA1C, 0, 0);
}

uint64_t sub_1E4BAEA1C()
{
  v24 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1E4BEFB7C();
  *(v0 + 112) = __swift_project_value_buffer(v2, qword_1ECF97018);

  v3 = sub_1E4BEFB5C();
  v4 = sub_1E4BF04BC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1E4B30548(v6, v5, &v23);
    _os_log_impl(&dword_1E4AD3000, v3, v4, "Sending read-cached-chatbot-render-information to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E6921800](v8, -1, -1);
    MEMORY[0x1E6921800](v7, -1, -1);
  }

  v9 = *(v0 + 42);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 41);
  v13 = *(v0 + 56);
  v14 = v13[6];
  v15 = v13[7];
  __swift_project_boxed_opaque_existential_1(v13 + 3, v14);
  *(v0 + 16) = v12;
  *(v0 + 24) = v11;
  *(v0 + 32) = v10;
  *(v0 + 40) = v9;
  v16 = *(v15 + 24);

  v22 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 120) = v18;
  v19 = sub_1E4B9E5F0();
  *v18 = v0;
  v18[1] = sub_1E4BAECBC;
  v20 = *(v0 + 88);

  return v22(v20, v0 + 16, &type metadata for RCSChatbotReadCachedRenderInformationRequest, v19, v14, v15);
}

uint64_t sub_1E4BAECBC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1E4BAF000;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1E4BAEDD8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BAEDD8()
{
  v19 = v0;
  v1 = v0[14];
  sub_1E4BB0ED4(v0[11], v0[10], type metadata accessor for RCSChatbotRenderInformationResponse);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    sub_1E4BB0ED4(v5, v6, type metadata accessor for RCSChatbotRenderInformationResponse);
    v10 = sub_1E4BEFF0C();
    v12 = v11;
    sub_1E4BB0F3C(v5, type metadata accessor for RCSChatbotRenderInformationResponse);
    v13 = sub_1E4B30548(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Service responded with %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6921800](v9, -1, -1);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  else
  {

    sub_1E4BB0F3C(v5, type metadata accessor for RCSChatbotRenderInformationResponse);
  }

  v14 = v0[11];
  v15 = v0[9];
  sub_1E4AF1898(v14, v0[6], &qword_1ECF95F10, &qword_1E4C0E7F0);
  sub_1E4BB0F3C(v14, type metadata accessor for RCSChatbotRenderInformationResponse);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E4BAF000()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_1E4BAF08C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RCSService.SuggestionResponse(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for RCSSendSuggestionResponseRequest();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BAF150, 0, 0);
}

uint64_t sub_1E4BAF150()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1E4BB0ED4(v0[2], v2, type metadata accessor for RCSService.SuggestionResponse);
  v5 = *v2;
  v6 = *(v2 + 40);
  v22 = *(v2 + 48);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  v9 = *(v3 + 32);
  v10 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v20 = *(v2 + 24);
  v21 = *(v2 + 8);
  sub_1E4BB0F9C(v2 + v9, v1 + *(v10 + 32), type metadata accessor for RCSService.Business.Suggestion);
  *v1 = v5;
  *(v1 + 24) = v20;
  *(v1 + 8) = v21;
  *(v1 + 40) = v6;
  *(v1 + 48) = v22;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  v11 = v4[6];
  v12 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v11);
  v13 = *(v12 + 32);
  v23 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[8] = v15;
  v16 = sub_1E4BB0E8C(&qword_1EE2BD990, type metadata accessor for RCSSendSuggestionResponseRequest);
  *v15 = v0;
  v15[1] = sub_1E4BAF368;
  v18 = v0[6];
  v17 = v0[7];

  return v23(v17, v18, v16, v11, v12);
}

uint64_t sub_1E4BAF368()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E4BAF50C;
  }

  else
  {
    v3 = sub_1E4BAF47C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BAF47C()
{
  v1 = v0[5];
  sub_1E4BB0F3C(v0[7], type metadata accessor for RCSSendSuggestionResponseRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E4BAF50C()
{
  v1 = v0[5];
  sub_1E4BB0F3C(v0[7], type metadata accessor for RCSSendSuggestionResponseRequest);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1E4BAF59C(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v7 = type metadata accessor for RCSService.ReportSpamRequest(0);
  *(v4 + 32) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v9 = type metadata accessor for RCSReportSpamRequest();
  *(v4 + 48) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  *(v4 + 56) = v11;
  *(v4 + 64) = v12;
  *(v4 + 72) = v13;
  *(v4 + 96) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1E4BAF680, 0, 0);
}

uint64_t sub_1E4BAF680()
{
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97018);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Reporting RCS message as spam.", v4, 2u);
    MEMORY[0x1E6921800](v4, -1, -1);
  }

  v33 = *(v0 + 96);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v32 = v8;
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  sub_1E4BB0ED4(v11, v9, type metadata accessor for RCSService.ReportSpamRequest);
  v13 = (v7 + *(v8 + 20));
  *v13 = v6;
  v13[1] = v5;
  sub_1E4BB0ED4(v9, v7, type metadata accessor for RCSMessage);
  v14 = (v9 + v10[5]);
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v8) = *(v9 + v10[6]);
  v17 = (v9 + v10[7]);
  v19 = *v17;
  v18 = v17[1];

  sub_1E4AE4B24(v15, v16);

  sub_1E4BB0F3C(v9, type metadata accessor for RCSService.ReportSpamRequest);
  v20 = type metadata accessor for RCSService.ReportSpamRequest.CodableRepresentation(0);
  v21 = (v7 + v20[5]);
  *v21 = v15;
  v21[1] = v16;
  *(v7 + v20[6]) = v8;
  v22 = (v7 + v20[7]);
  *v22 = v19;
  v22[1] = v18;
  *(v7 + *(v32 + 24)) = v33;
  v23 = v12[6];
  v24 = v12[7];
  __swift_project_boxed_opaque_existential_1(v12 + 3, v23);
  v25 = *(v24 + 32);
  v34 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 80) = v27;
  v28 = sub_1E4BB0E8C(&qword_1EE2BDC90, type metadata accessor for RCSReportSpamRequest);
  *v27 = v0;
  v27[1] = sub_1E4BAF9A4;
  v30 = *(v0 + 48);
  v29 = *(v0 + 56);

  return v34(v29, v30, v28, v23, v24);
}

uint64_t sub_1E4BAF9A4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1E4BAFB48;
  }

  else
  {
    v3 = sub_1E4BAFAB8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BAFAB8()
{
  v1 = v0[5];
  sub_1E4BB0F3C(v0[7], type metadata accessor for RCSReportSpamRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E4BAFB48()
{
  v1 = v0[5];
  sub_1E4BB0F3C(v0[7], type metadata accessor for RCSReportSpamRequest);

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1E4BAFBD8(uint64_t a1, void *a2)
{
  *(v3 + 176) = v2;
  *(v3 + 264) = *a1;
  *(v3 + 184) = *(a1 + 8);
  *(v3 + 200) = *(a1 + 24);
  *(v3 + 265) = *(a1 + 40);
  v4 = *(a1 + 56);
  *(v3 + 216) = *(a1 + 48);
  *(v3 + 224) = v4;
  v5 = a2[1];
  *(v3 + 232) = *a2;
  *(v3 + 240) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1E4BAFC28, 0, 0);
}

uint64_t sub_1E4BAFC28()
{
  v37 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 265);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v7, qword_1ECF97018);
  sub_1E4ADD6D8(v6, v5, v4, v3, v2);

  v8 = sub_1E4BEFB5C();
  v9 = sub_1E4BF04BC();
  sub_1E4ADD764(v6, v5, v4, v3, v2);

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315138;

    sub_1E4BF069C();

    strcpy(v36, "RCSMessageID(");
    HIWORD(v36[1]) = -4864;
    MEMORY[0x1E69205B0](v11, v10);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v14 = sub_1E4B30548(v36[0], v36[1], &v35);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1E4AD3000, v8, v9, "[%s] Revoking RCS message", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E6921800](v13, -1, -1);
    MEMORY[0x1E6921800](v12, -1, -1);
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 240);
  v17 = *(v0 + 216);
  v18 = *(v0 + 224);
  v19 = *(v0 + 265);
  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 264);
  *(v0 + 24) = v22;
  *(v0 + 32) = v23;
  *(v0 + 40) = v21;
  *(v0 + 48) = v20;
  *(v0 + 56) = v19;
  *(v0 + 64) = v17;
  *(v0 + 72) = v18;
  *(v0 + 80) = v15;
  *(v0 + 88) = v16;
  v25 = v24[7];
  v34 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 3, v34);
  v26 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v26;
  *(v0 + 160) = *(v0 + 80);
  v27 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v27;
  v28 = *(v25 + 32);

  sub_1E4ADD6D8(v22, v23, v21, v20, v19);

  v33 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 248) = v30;
  v31 = sub_1E4B967F8();
  *v30 = v0;
  v30[1] = sub_1E4BAFFC4;

  return v33(v0 + 96, &type metadata for RCSRevokeMessageRequest, v31, v34, v25);
}

uint64_t sub_1E4BAFFC4()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  *(v3 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BB0100, 0, 0);
  }

  else
  {
    sub_1E4B9674C(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BB0100()
{
  sub_1E4B9674C(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 256);

  return v1();
}

uint64_t sub_1E4BB0164(uint64_t *a1, _BYTE *a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = v3;
  *(v4 + 64) = v5;
  *(v4 + 112) = *a2;
  v7 = *a3;
  v8 = a3[1];
  *(v4 + 72) = v6;
  *(v4 + 80) = v7;
  *(v4 + 88) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1E4BB019C, 0, 0);
}

uint64_t sub_1E4BB019C()
{
  v30 = v0;
  if (qword_1ECF92418 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1ECF97018);

  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 112);
    v8 = *(v0 + 64);
    v25 = *(v0 + 72);
    v27 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    v29[0] = 0;
    *v9 = 136315651;
    v29[1] = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v7);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v11 = sub_1E4B30548(v29[0], 0xE000000000000000, &v28);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2085;
    *(v9 + 14) = sub_1E4B30548(v8, v25, &v28);
    *(v9 + 22) = 2080;
    v29[0] = 0;
    v29[1] = 0xE000000000000000;

    sub_1E4BF069C();

    strcpy(v29, "RCSMessageID(");
    HIWORD(v29[1]) = -4864;
    MEMORY[0x1E69205B0](v27, v6);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);

    v12 = sub_1E4B30548(v29[0], v29[1], &v28);

    *(v9 + 24) = v12;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Sending device specifics for %s, to: %{sensitive}s, message ID: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v10, -1, -1);
    MEMORY[0x1E6921800](v9, -1, -1);
  }

  else
  {
    v7 = *(v0 + 112);
  }

  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 56);
  v18 = v17[6];
  v19 = v17[7];
  __swift_project_boxed_opaque_existential_1(v17 + 3, v18);
  *(v0 + 16) = v7;
  *(v0 + 24) = v14;
  *(v0 + 32) = v13;
  *(v0 + 40) = v16;
  *(v0 + 48) = v15;
  v20 = *(v19 + 32);

  v26 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 96) = v22;
  v23 = sub_1E4AE31BC();
  *v22 = v0;
  v22[1] = sub_1E4BB0584;

  return v26(v0 + 16, &type metadata for RCSSendDeviceSpecificsRequest, v23, v18, v19);
}

uint64_t sub_1E4BB0584()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BB06D0, 0, 0);
  }

  else
  {
    v4 = v3[11];
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E4BB06D0()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1E4BB0740()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF97018);
  v1 = __swift_project_value_buffer(v0, qword_1ECF97018);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BB0808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E4BB09F4(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v13 + 16);
      v6 = *(v13 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_1E4BB09F4((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      v8 = v13 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92FE0, &qword_1E4BFDD48);
  sub_1E4BB0A14();
  v9 = sub_1E4BEFDEC();
  v11 = v10;

  MEMORY[0x1E69205B0](v9, v11);

  MEMORY[0x1E69205B0](93, 0xE100000000000000);
  return 91;
}

size_t sub_1E4BB0954(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4BB0B98(a1, a2, a3, *v3, &qword_1ECF92EB0, &unk_1E4BFDC40, &qword_1ECF92EB8, &qword_1E4C063F0);
  *v3 = result;
  return result;
}

char *sub_1E4BB0994(char *a1, int64_t a2, char a3)
{
  result = sub_1E4BB0A78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E4BB09B4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E4BB0B98(a1, a2, a3, *v3, &qword_1ECF92F38, &qword_1E4BFDCC8, &qword_1ECF92F40, &qword_1E4BFDCD0);
  *v3 = result;
  return result;
}

char *sub_1E4BB09F4(char *a1, int64_t a2, char a3)
{
  result = sub_1E4BB0D80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E4BB0A14()
{
  result = qword_1ECF97030;
  if (!qword_1ECF97030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF92FE0, &qword_1E4BFDD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97030);
  }

  return result;
}

char *sub_1E4BB0A78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97040, &qword_1E4C14468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E4BB0B98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1E4BB0D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97038, &qword_1E4C14410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E4BB0E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BB0ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BB0F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BB0F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BB1004(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1E4BF06FC();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1E4BB1304(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unsigned __int8 *sub_1E4BB1304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1E4BEFFFC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E4BB1890();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E4BF06FC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E4BB1890()
{
  v0 = sub_1E4BF000C();
  v4 = sub_1E4BB1910(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1E4BB1910(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E4BEFF3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1E4BF054C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1E4B30988(v9, 0);
  v12 = sub_1E4BB1A68(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1E4BEFF3C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1E4BF06FC();
LABEL_4:

  return sub_1E4BEFF3C();
}

unint64_t sub_1E4BB1A68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1E4BB1C88(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E4BEFFBC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E4BF06FC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1E4BB1C88(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E4BEFF9C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1E4BB1C88(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E4BEFFCC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E69205F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1E4BB1D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97048, &qword_1E4C14470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v83 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97050, &qword_1E4C14478);
  v89 = *(v87 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v10 = &v83 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97058, &qword_1E4C14480);
  v86 = *(v88 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v13 = &v83 - v12;
  v14 = sub_1E4BEF9BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4BEFEEC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);

  v22 = sub_1E4B201AC(a1, a2);
  result = 0;
  if (v21 >> 60 != 15)
  {
    v24 = v21;
    sub_1E4BEFEDC();
    v25 = sub_1E4BEFEBC();
    if (!v26)
    {
      sub_1E4AE4BD4(v22, v24);
      return 0;
    }

    v85 = v22;
    v91 = v25;
    v92 = v26;
    sub_1E4BEF9AC();
    sub_1E4B20460();
    sub_1E4BF056C();
    (*(v15 + 8))(v18, v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97060, &qword_1E4C14488);
    sub_1E4BEFB1C();
    v27 = v88;
    sub_1E4BEFB2C();

    v28 = v89;
    v29 = v87;
    v30 = (*(v89 + 48))(v7, 1, v87);
    if (v30 == 1)
    {
      (*(v86 + 8))(v13, v27);
      sub_1E4AE4BD4(v85, v24);
      sub_1E4BB274C(v7);
      return 0;
    }

    (*(v28 + 32))(v10, v7, v29);
    sub_1E4BEFB3C();
    v31 = v93;
    v32 = v94;
    v33 = v95;
    v34 = v96;

    v35 = MEMORY[0x1E6920570](v31, v32, v33, v34);
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    v39 = v35 & 0xFFFFFFFFFFFFLL;
    if ((v37 & 0x2000000000000000) != 0)
    {
      v40 = HIBYTE(v37) & 0xF;
    }

    else
    {
      v40 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40)
    {
      sub_1E4AE4BD4(v85, v24);

      v61 = v89;
      v41 = v10;
      goto LABEL_73;
    }

    if ((v37 & 0x1000000000000000) != 0)
    {
      v90 = 0;
      v84 = sub_1E4BB1304(v35, v37, 10);
      v64 = v63;

      v41 = v10;
      if (v64)
      {
        goto LABEL_72;
      }

      goto LABEL_78;
    }

    v41 = v10;
    if ((v37 & 0x2000000000000000) != 0)
    {
      v91 = v35;
      v92 = v37 & 0xFFFFFFFFFFFFFFLL;
      if (v35 == 43)
      {
        if (v38)
        {
          if (--v38)
          {
            v84 = 0;
            v52 = &v91 + 1;
            while (1)
            {
              v53 = *v52 - 48;
              if (v53 > 9)
              {
                break;
              }

              v54 = 10 * v84;
              if ((v84 * 10) >> 64 != (10 * v84) >> 63)
              {
                break;
              }

              v84 = v54 + v53;
              if (__OFADD__(v54, v53))
              {
                break;
              }

              ++v52;
              if (!--v38)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_86:
        __break(1u);
        return result;
      }

      if (v35 != 45)
      {
        if (v38)
        {
          v84 = 0;
          v57 = &v91;
          while (1)
          {
            v58 = *v57 - 48;
            if (v58 > 9)
            {
              break;
            }

            v59 = 10 * v84;
            if ((v84 * 10) >> 64 != (10 * v84) >> 63)
            {
              break;
            }

            v84 = v59 + v58;
            if (__OFADD__(v59, v58))
            {
              break;
            }

            v57 = (v57 + 1);
            if (!--v38)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v38)
      {
        if (--v38)
        {
          v84 = 0;
          v46 = &v91 + 1;
          while (1)
          {
            v47 = *v46 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = 10 * v84;
            if ((v84 * 10) >> 64 != (10 * v84) >> 63)
            {
              break;
            }

            v84 = v48 - v47;
            if (__OFSUB__(v48, v47))
            {
              break;
            }

            ++v46;
            if (!--v38)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v35 & 0x1000000000000000) != 0)
      {
        result = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1E4BF06FC();
      }

      v42 = *result;
      if (v42 == 43)
      {
        if (v39 >= 1)
        {
          v38 = v39 - 1;
          if (v39 != 1)
          {
            if (result)
            {
              v84 = 0;
              v49 = result + 1;
              while (1)
              {
                v50 = *v49 - 48;
                if (v50 > 9)
                {
                  goto LABEL_70;
                }

                v51 = 10 * v84;
                if ((v84 * 10) >> 64 != (10 * v84) >> 63)
                {
                  goto LABEL_70;
                }

                v84 = v51 + v50;
                if (__OFADD__(v51, v50))
                {
                  goto LABEL_70;
                }

                ++v49;
                if (!--v38)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_70;
        }

        goto LABEL_85;
      }

      if (v42 != 45)
      {
        if (v39)
        {
          if (result)
          {
            v84 = 0;
            while (1)
            {
              v55 = *result - 48;
              if (v55 > 9)
              {
                goto LABEL_70;
              }

              v56 = 10 * v84;
              if ((v84 * 10) >> 64 != (10 * v84) >> 63)
              {
                goto LABEL_70;
              }

              v84 = v56 + v55;
              if (__OFADD__(v56, v55))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v39)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_70:
        v84 = 0;
        LOBYTE(v38) = 1;
        goto LABEL_71;
      }

      if (v39 >= 1)
      {
        v38 = v39 - 1;
        if (v39 != 1)
        {
          if (result)
          {
            v84 = 0;
            v43 = result + 1;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                goto LABEL_70;
              }

              v45 = 10 * v84;
              if ((v84 * 10) >> 64 != (10 * v84) >> 63)
              {
                goto LABEL_70;
              }

              v84 = v45 - v44;
              if (__OFSUB__(v45, v44))
              {
                goto LABEL_70;
              }

              ++v43;
              if (!--v38)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_74:
          v84 = 0;
LABEL_75:
          LOBYTE(v38) = 0;
LABEL_71:
          v90 = v38;
          v60 = v38;

          if (v60)
          {
LABEL_72:
            sub_1E4AE4BD4(v85, v24);
            v61 = v89;
LABEL_73:
            v62 = v88;
            (*(v61 + 8))(v41, v87);
            (*(v86 + 8))(v13, v62);
            return 0;
          }

LABEL_78:
          v65 = v87;
          sub_1E4BEFB3C();
          v66 = v97;
          v67 = v41;
          v68 = v98;
          v69 = v99;
          v70 = v100;

          v71 = MEMORY[0x1E6920570](v66, v68, v69, v70);
          v73 = v72;

          v74 = sub_1E4BB1004(v71, v73);
          if ((v75 & 1) == 0)
          {
            v76 = v74;
            sub_1E4BEFB3C();

            v77 = MEMORY[0x1E6920570](v101, v102, v103, v104);
            v79 = v78;

            v80 = sub_1E4BB1004(v77, v79);
            if ((v81 & 1) == 0)
            {
              GenericRGB = CGColorCreateGenericRGB(v84 / 255.0, v76 / 255.0, v80 / 255.0, 1.0);
              sub_1E4AE4BD4(v85, v24);
              (*(v89 + 8))(v67, v65);
              (*(v86 + 8))(v13, v88);
              return GenericRGB;
            }
          }

          sub_1E4AE4BD4(v85, v24);
          (*(v89 + 8))(v67, v65);
          (*(v86 + 8))(v13, v88);
          return 0;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  return result;
}

uint64_t sub_1E4BB274C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97048, &qword_1E4C14470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4BB27B4()
{
  if (*v0)
  {
    return 7305076;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_1E4BB27D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6647407 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7305076 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

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

uint64_t sub_1E4BB28B4(uint64_t a1)
{
  v2 = sub_1E4BB2CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB28F0(uint64_t a1)
{
  v2 = sub_1E4BB2CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB292C(uint64_t a1)
{
  v2 = sub_1E4BB2D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB2968(uint64_t a1)
{
  v2 = sub_1E4BB2D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB29A4(uint64_t a1)
{
  v2 = sub_1E4BB2D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB29E0(uint64_t a1)
{
  v2 = sub_1E4BB2D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellularServiceID.SimSlot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97068, &qword_1E4C14490);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97070, &qword_1E4C14498);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97078, &qword_1E4C144A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB2CCC();
  sub_1E4BF0ACC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1E4BB2D20();
    v18 = v22;
    sub_1E4BF08BC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1E4BB2D74();
    sub_1E4BF08BC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1E4BB2CCC()
{
  result = qword_1ECF97080;
  if (!qword_1ECF97080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97080);
  }

  return result;
}

unint64_t sub_1E4BB2D20()
{
  result = qword_1ECF97088;
  if (!qword_1ECF97088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97088);
  }

  return result;
}

unint64_t sub_1E4BB2D74()
{
  result = qword_1ECF97090;
  if (!qword_1ECF97090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97090);
  }

  return result;
}

uint64_t CellularServiceID.SimSlot.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97098, &qword_1E4C144A8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970A0, &qword_1E4C144B0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970A8, &unk_1E4C144B8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB2CCC();
  v16 = v36;
  sub_1E4BF0ABC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1E4BF088C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1E4AE0F10();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v26 = &type metadata for CellularServiceID.SimSlot;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1E4BB2D20();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1E4BB2D74();
        sub_1E4BF07EC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1E4BB3300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746F6C536D6973 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BB3388(uint64_t a1)
{
  v2 = sub_1E4BB354C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB33C4(uint64_t a1)
{
  v2 = sub_1E4BB354C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CellularServiceID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970B0, &qword_1E4C144C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB354C();
  sub_1E4BF0ACC();
  v12 = v8;
  sub_1E4BB35A0();
  sub_1E4BF093C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4BB354C()
{
  result = qword_1ECF970B8;
  if (!qword_1ECF970B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970B8);
  }

  return result;
}

unint64_t sub_1E4BB35A0()
{
  result = qword_1ECF970C0;
  if (!qword_1ECF970C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970C0);
  }

  return result;
}

uint64_t CellularServiceID.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF970C8, &unk_1E4C144D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB354C();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4BB37BC();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4BB37BC()
{
  result = qword_1ECF970D0;
  if (!qword_1ECF970D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970D0);
  }

  return result;
}

uint64_t CellularServiceID.description.getter()
{
  v1 = *v0;
  sub_1E4BF069C();
  MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
  sub_1E4AEC058(v1);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1E4BB3894()
{
  v1 = *v0;
  sub_1E4BF069C();
  MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
  sub_1E4AEC058(v1);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0;
}

uint64_t CellularServiceID.SimSlot.description.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F78, &unk_1E4C05E60);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 16) = xmmword_1E4BFCCE0;
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v5 = 1;
  if (v1)
  {
    v5 = 2;
  }

  *(v2 + 32) = v5;

  return sub_1E4BEFECC();
}

unint64_t sub_1E4BB39C0()
{
  result = qword_1ECF970D8;
  if (!qword_1ECF970D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970D8);
  }

  return result;
}

unint64_t sub_1E4BB3A18()
{
  result = qword_1ECF970E0;
  if (!qword_1ECF970E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970E0);
  }

  return result;
}

unint64_t sub_1E4BB3AD4()
{
  result = qword_1ECF970E8;
  if (!qword_1ECF970E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970E8);
  }

  return result;
}

unint64_t sub_1E4BB3B2C()
{
  result = qword_1ECF970F0;
  if (!qword_1ECF970F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970F0);
  }

  return result;
}

unint64_t sub_1E4BB3B84()
{
  result = qword_1ECF970F8;
  if (!qword_1ECF970F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF970F8);
  }

  return result;
}

unint64_t sub_1E4BB3BDC()
{
  result = qword_1ECF97100;
  if (!qword_1ECF97100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97100);
  }

  return result;
}

unint64_t sub_1E4BB3C34()
{
  result = qword_1ECF97108;
  if (!qword_1ECF97108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97108);
  }

  return result;
}

unint64_t sub_1E4BB3C8C()
{
  result = qword_1ECF97110;
  if (!qword_1ECF97110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97110);
  }

  return result;
}

unint64_t sub_1E4BB3CE4()
{
  result = qword_1ECF97118;
  if (!qword_1ECF97118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97118);
  }

  return result;
}

unint64_t sub_1E4BB3D3C()
{
  result = qword_1ECF97120;
  if (!qword_1ECF97120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97120);
  }

  return result;
}

unint64_t sub_1E4BB3D94()
{
  result = qword_1ECF97128;
  if (!qword_1ECF97128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97128);
  }

  return result;
}

unint64_t sub_1E4BB3DEC()
{
  result = qword_1ECF97130;
  if (!qword_1ECF97130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97130);
  }

  return result;
}

uint64_t sub_1E4BB3E4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4BB3E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4BB3EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  *(a4 + 32) = a2;
  *(a4 + 40) = *(a3 + 8);
  *(a4 + 56) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 8));
  v9 = *(a2 - 8);
  (*(v9 + 16))(boxed_opaque_existential_1, a1, a2);
  LOBYTE(v4) = (*(v4 + 32))(a2, v4);
  result = (*(v9 + 8))(a1, a2);
  *a4 = v4;
  return result;
}

uint64_t sub_1E4BB3FCC(void *a1, int a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971F0, &qword_1E4C14D60);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971F8, &qword_1E4C14D68);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97200, &qword_1E4C14D70);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97208, &qword_1E4C14D78);
  v40 = *(v12 - 8);
  v41 = v12;
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97210, &qword_1E4C14D80);
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97218, &qword_1E4C14D88);
  v37 = *(v20 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36 - v22;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97220, &unk_1E4C14D90);
  v24 = *(v51 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v27 = &v36 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB5FE8();
  sub_1E4BF0ACC();
  v29 = (v24 + 8);
  if (v52 > 2u)
  {
    if (v52 == 3)
    {
      v56 = 3;
      sub_1E4BB60E4();
      v32 = v42;
      v33 = v51;
      sub_1E4BF08BC();
      v35 = v43;
      v34 = v44;
    }

    else if (v52 == 4)
    {
      v57 = 4;
      sub_1E4BB6090();
      v32 = v45;
      v33 = v51;
      sub_1E4BF08BC();
      v35 = v46;
      v34 = v47;
    }

    else
    {
      v58 = 5;
      sub_1E4BB603C();
      v32 = v48;
      v33 = v51;
      sub_1E4BF08BC();
      v35 = v49;
      v34 = v50;
    }

    (*(v35 + 8))(v32, v34);
  }

  else if (v52)
  {
    if (v52 == 1)
    {
      v54 = 1;
      sub_1E4BB618C();
      v30 = v51;
      sub_1E4BF08BC();
      (*(v38 + 8))(v19, v39);
      return (*v29)(v27, v30);
    }

    v55 = 2;
    sub_1E4BB6138();
    v33 = v51;
    sub_1E4BF08BC();
    (*(v40 + 8))(v15, v41);
  }

  else
  {
    v53 = 0;
    sub_1E4BB61E0();
    v33 = v51;
    sub_1E4BF08BC();
    (*(v37 + 8))(v23, v20);
  }

  return (*v29)(v27, v33);
}

uint64_t sub_1E4BB45C0()
{
  v1 = *v0;
  v2 = 0x696C707041637078;
  v3 = 0x6976726553736D6DLL;
  v4 = 0x4350586B6D74;
  if (v1 == 4)
  {
    v4 = 0x6976726553736372;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6976726553736D73;
  if (v1 == 1)
  {
    v5 = 0x6E6F6973736573;
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

uint64_t sub_1E4BB4688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BB5604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BB46B0(uint64_t a1)
{
  v2 = sub_1E4BB5FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB46EC(uint64_t a1)
{
  v2 = sub_1E4BB5FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4728(uint64_t a1)
{
  v2 = sub_1E4BB60E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4764(uint64_t a1)
{
  v2 = sub_1E4BB60E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB47A0(uint64_t a1)
{
  v2 = sub_1E4BB6090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB47DC(uint64_t a1)
{
  v2 = sub_1E4BB6090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4818(uint64_t a1)
{
  v2 = sub_1E4BB618C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4854(uint64_t a1)
{
  v2 = sub_1E4BB618C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4890(uint64_t a1)
{
  v2 = sub_1E4BB6138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB48CC(uint64_t a1)
{
  v2 = sub_1E4BB6138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4908(uint64_t a1)
{
  v2 = sub_1E4BB603C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4944(uint64_t a1)
{
  v2 = sub_1E4BB603C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4980(uint64_t a1)
{
  v2 = sub_1E4BB61E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB49BC(uint64_t a1)
{
  v2 = sub_1E4BB61E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB49F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E4BB5800(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E4BB4A40(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x64657070617277;
  }

  else
  {
    v2 = 0x4449726F727265;
  }

  if (*a2)
  {
    v3 = 0x64657070617277;
  }

  else
  {
    v3 = 0x4449726F727265;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E4BF099C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E4BB4AC8()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4BB4B40()
{
  *v0;
  sub_1E4BEFF4C();
}

uint64_t sub_1E4BB4B9C()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4BB4C10@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E4BF07DC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1E4BB4C70(uint64_t *a1@<X8>)
{
  v2 = 0x4449726F727265;
  if (*v1)
  {
    v2 = 0x64657070617277;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_1E4BB4CA8()
{
  if (*v0)
  {
    return 0x64657070617277;
  }

  else
  {
    return 0x4449726F727265;
  }
}

uint64_t sub_1E4BB4CDC@<X0>(char *a1@<X8>)
{
  v2 = sub_1E4BF07DC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1E4BB4D40(uint64_t a1)
{
  v2 = sub_1E4BB5318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB4D7C(uint64_t a1)
{
  v2 = sub_1E4BB5318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB4DB8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97138, &qword_1E4C14B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB5318();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v26 = 0;
    sub_1E4BB536C();
    sub_1E4BF087C();
    v25 = v19;
    if (v19 > 2u)
    {
      if (v19 == 3)
      {
        v11 = sub_1E4B0DC58();
        v12 = sub_1E4B0D9E8();
        v13 = &type metadata for MMSService.Error;
        v14 = sub_1E4B33840();
      }

      else if (v19 == 4)
      {
        v11 = sub_1E4B1B7E8();
        v12 = sub_1E4B1B740();
        v13 = &type metadata for RCSService.Error;
        v14 = sub_1E4B843DC();
      }

      else
      {
        v11 = sub_1E4B71030();
        v12 = sub_1E4B71084();
        v13 = &type metadata for TMKXPCError;
        v14 = sub_1E4B14264();
      }
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        v11 = sub_1E4B39338();
        v12 = sub_1E4B3938C();
        v13 = &type metadata for TelephonyMessagingSession.Error;
        v14 = sub_1E4B304F4();
      }

      else
      {
        v11 = sub_1E4B861BC();
        v12 = sub_1E4B85F4C();
        v13 = &type metadata for SMSService.Error;
        v14 = sub_1E4B84F0C();
      }
    }

    else
    {
      v11 = sub_1E4B6781C();
      v12 = sub_1E4B67870();
      v13 = &type metadata for XPCApplicationError;
      v14 = sub_1E4B678C4();
    }

    v20 = v13;
    v21 = v11;
    v22 = v12;
    v23 = v14;
    __swift_allocate_boxed_opaque_existential_1(&v19);
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97138, &qword_1E4C14B08);
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    LOBYTE(v24[0]) = v25;
    sub_1E4BB5410(&v19, v24 + 8);
    v15 = v24[1];
    *a2 = v24[0];
    a2[1] = v15;
    v16 = v24[3];
    a2[2] = v24[2];
    a2[3] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4BB50BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97150, &qword_1E4C14B10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB5318();
  sub_1E4BF0ACC();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1E4BB5430();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 48);
    __swift_project_boxed_opaque_existential_1((v3 + 8), *(v3 + 32));
    sub_1E4BB5240();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4BB5240()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97150, &qword_1E4C14B10);
  sub_1E4BF093C();
  return swift_endAccess();
}

unint64_t sub_1E4BB5318()
{
  result = qword_1ECF97140;
  if (!qword_1ECF97140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97140);
  }

  return result;
}

unint64_t sub_1E4BB536C()
{
  result = qword_1ECF97148;
  if (!qword_1ECF97148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97148);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_3(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E6921800);
  }

  return result;
}

uint64_t sub_1E4BB5410(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

unint64_t sub_1E4BB5430()
{
  result = qword_1ECF97158;
  if (!qword_1ECF97158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97158);
  }

  return result;
}

unint64_t sub_1E4BB54A8()
{
  result = qword_1ECF97160;
  if (!qword_1ECF97160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97160);
  }

  return result;
}

unint64_t sub_1E4BB5500()
{
  result = qword_1ECF97168;
  if (!qword_1ECF97168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97168);
  }

  return result;
}

unint64_t sub_1E4BB5558()
{
  result = qword_1ECF97170;
  if (!qword_1ECF97170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97170);
  }

  return result;
}

unint64_t sub_1E4BB55B0()
{
  result = qword_1ECF97178;
  if (!qword_1ECF97178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97178);
  }

  return result;
}

uint64_t sub_1E4BB5604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C707041637078 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6976726553736D73 && a2 == 0xEA00000000006563 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6976726553736D6DLL && a2 == 0xEA00000000006563 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6976726553736372 && a2 == 0xEA00000000006563 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4350586B6D74 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4BB5800(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97180, &qword_1E4C14D20);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97188, &qword_1E4C14D28);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v48 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97190, &qword_1E4C14D30);
  v56 = *(v53 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97198, &qword_1E4C14D38);
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971A0, &qword_1E4C14D40);
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971A8, &qword_1E4C14D48);
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF971B0, &unk_1E4C14D50);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1E4BB5FE8();
  v29 = v65;
  sub_1E4BF0ABC();
  if (!v29)
  {
    v30 = v21;
    v48 = v18;
    v49 = v17;
    v31 = v62;
    v32 = v63;
    v33 = v64;
    v65 = v23;
    v34 = sub_1E4BF088C();
    v35 = (2 * *(v34 + 16)) | 1;
    v67 = v34;
    v68 = v34 + 32;
    v69 = 0;
    v70 = v35;
    v36 = sub_1E4ADD58C();
    v37 = v26;
    if (v36 != 6 && v69 == v70 >> 1)
    {
      v23 = v36;
      if (v36 > 2u)
      {
        if (v36 != 3)
        {
          v46 = v65;
          if (v36 == 4)
          {
            v71 = 4;
            sub_1E4BB6090();
            sub_1E4BF07EC();
            (*(v58 + 8))(v33, v57);
          }

          else
          {
            v71 = 5;
            sub_1E4BB603C();
            v47 = v61;
            sub_1E4BF07EC();
            (*(v59 + 8))(v47, v60);
          }

          (*(v46 + 8))(v37, v22);
          goto LABEL_21;
        }

        v71 = 3;
        sub_1E4BB60E4();
        sub_1E4BF07EC();
        v38 = v65;
        (*(v56 + 8))(v32, v53);
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v71 = 1;
          sub_1E4BB618C();
          v31 = v49;
          sub_1E4BF07EC();
          v38 = v65;
          v40 = v51;
          v39 = v52;
        }

        else
        {
          v71 = 2;
          sub_1E4BB6138();
          sub_1E4BF07EC();
          v38 = v65;
          v40 = v54;
          v39 = v55;
        }

        (*(v40 + 8))(v31, v39);
      }

      else
      {
        v71 = 0;
        sub_1E4BB61E0();
        sub_1E4BF07EC();
        (*(v50 + 8))(v30, v48);
        v38 = v65;
      }

      (*(v38 + 8))(v26, v22);
LABEL_21:
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v66);
      return v23;
    }

    v41 = sub_1E4BF06EC();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v43 = &type metadata for BoxedCodableError.ID;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v65 + 8))(v26, v22);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v66);
  return v23;
}

unint64_t sub_1E4BB5FE8()
{
  result = qword_1ECF971B8;
  if (!qword_1ECF971B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971B8);
  }

  return result;
}

unint64_t sub_1E4BB603C()
{
  result = qword_1ECF971C0;
  if (!qword_1ECF971C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971C0);
  }

  return result;
}

unint64_t sub_1E4BB6090()
{
  result = qword_1ECF971C8;
  if (!qword_1ECF971C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971C8);
  }

  return result;
}

unint64_t sub_1E4BB60E4()
{
  result = qword_1ECF971D0;
  if (!qword_1ECF971D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971D0);
  }

  return result;
}

unint64_t sub_1E4BB6138()
{
  result = qword_1ECF971D8;
  if (!qword_1ECF971D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971D8);
  }

  return result;
}

unint64_t sub_1E4BB618C()
{
  result = qword_1ECF971E0;
  if (!qword_1ECF971E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971E0);
  }

  return result;
}

unint64_t sub_1E4BB61E0()
{
  result = qword_1ECF971E8;
  if (!qword_1ECF971E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF971E8);
  }

  return result;
}

unint64_t sub_1E4BB62A8()
{
  result = qword_1ECF97228;
  if (!qword_1ECF97228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97228);
  }

  return result;
}

unint64_t sub_1E4BB6300()
{
  result = qword_1ECF97230;
  if (!qword_1ECF97230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97230);
  }

  return result;
}

unint64_t sub_1E4BB6358()
{
  result = qword_1ECF97238;
  if (!qword_1ECF97238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97238);
  }

  return result;
}

unint64_t sub_1E4BB63B0()
{
  result = qword_1ECF97240;
  if (!qword_1ECF97240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97240);
  }

  return result;
}

unint64_t sub_1E4BB6408()
{
  result = qword_1ECF97248;
  if (!qword_1ECF97248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97248);
  }

  return result;
}

unint64_t sub_1E4BB6460()
{
  result = qword_1ECF97250;
  if (!qword_1ECF97250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97250);
  }

  return result;
}

unint64_t sub_1E4BB64B8()
{
  result = qword_1ECF97258;
  if (!qword_1ECF97258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97258);
  }

  return result;
}

unint64_t sub_1E4BB6510()
{
  result = qword_1ECF97260;
  if (!qword_1ECF97260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97260);
  }

  return result;
}

unint64_t sub_1E4BB6568()
{
  result = qword_1ECF97268;
  if (!qword_1ECF97268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97268);
  }

  return result;
}

unint64_t sub_1E4BB65C0()
{
  result = qword_1ECF97270;
  if (!qword_1ECF97270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97270);
  }

  return result;
}

unint64_t sub_1E4BB6618()
{
  result = qword_1ECF97278;
  if (!qword_1ECF97278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97278);
  }

  return result;
}

unint64_t sub_1E4BB6670()
{
  result = qword_1ECF97280;
  if (!qword_1ECF97280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97280);
  }

  return result;
}

unint64_t sub_1E4BB66C8()
{
  result = qword_1ECF97288;
  if (!qword_1ECF97288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97288);
  }

  return result;
}

unint64_t sub_1E4BB6720()
{
  result = qword_1ECF97290;
  if (!qword_1ECF97290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97290);
  }

  return result;
}

unint64_t sub_1E4BB6778()
{
  result = qword_1ECF97298;
  if (!qword_1ECF97298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97298);
  }

  return result;
}

uint64_t sub_1E4BB67E4(uint64_t a1)
{
  v2 = sub_1E4BB68A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB6820(uint64_t a1)
{
  v2 = sub_1E4BB68A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4BB68A0()
{
  result = qword_1ECF972A8;
  if (!qword_1ECF972A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972A8);
  }

  return result;
}

uint64_t SMSContent.body.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1E4BB69CC(uint64_t a1)
{
  v2 = sub_1E4BB6BD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB6A08(uint64_t a1)
{
  v2 = sub_1E4BB6BD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BB6A88(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = v4[1];
  v14 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1E4BB6BD0()
{
  result = qword_1ECF972C0;
  if (!qword_1ECF972C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972C0);
  }

  return result;
}

uint64_t sub_1E4BB6C68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1E4BF0ABC();
  if (!v5)
  {
    v13 = v20;
    v14 = v21;
    v15 = sub_1E4BF083C();
    v17 = v16;
    (*(v13 + 8))(v11, v8);
    *v14 = v15;
    v14[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4BB6E44(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v9 + 8))(v12, v8);
}

unint64_t SMSMessageID.description.getter()
{
  v1 = *v0;
  sub_1E4BF069C();

  v2 = sub_1E4BF096C();
  MEMORY[0x1E69205B0](v2);

  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t SMSMessage.handle.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t SMSMessage.content.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t SMSMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SMSMessage() + 32);
  v4 = sub_1E4BEFABC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SMSMessage()
{
  result = qword_1EE2BE078;
  if (!qword_1EE2BE078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SMSMessage.init(cellularServiceID:handle:messageID:content:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  v8 = *a4;
  v9 = a4[1];
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = v9;
  v10 = a5 + *(type metadata accessor for SMSMessage() + 32);
  return sub_1E4BEFAAC();
}

unint64_t sub_1E4BB7240()
{
  v1 = *v0;
  v2 = 0x656C646E6168;
  v3 = 0x496567617373656DLL;
  v4 = 0x746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4BB72E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BB80F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BB7308(uint64_t a1)
{
  v2 = sub_1E4BB7624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB7344(uint64_t a1)
{
  v2 = sub_1E4BB7624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF972D0, &qword_1E4C15390);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB7624();
  sub_1E4BF0ACC();
  LOBYTE(v16) = *v3;
  v18 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v16 = *(v3 + 8);
    v17 = v11;
    v18 = 1;
    sub_1E4BB7678();

    sub_1E4BF093C();

    LODWORD(v16) = *(v3 + 24);
    v18 = 2;
    sub_1E4B4824C();
    sub_1E4BF093C();
    v12 = *(v3 + 40);
    v16 = *(v3 + 32);
    v17 = v12;
    v18 = 3;
    sub_1E4BB76CC();

    sub_1E4BF093C();

    v13 = *(type metadata accessor for SMSMessage() + 32);
    LOBYTE(v16) = 4;
    sub_1E4BEFABC();
    sub_1E4AE0B44(&qword_1ECF925B0);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4BB7624()
{
  result = qword_1ECF972D8;
  if (!qword_1ECF972D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972D8);
  }

  return result;
}

unint64_t sub_1E4BB7678()
{
  result = qword_1ECF972E0;
  if (!qword_1ECF972E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972E0);
  }

  return result;
}

unint64_t sub_1E4BB76CC()
{
  result = qword_1ECF972E8;
  if (!qword_1ECF972E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972E8);
  }

  return result;
}

uint64_t SMSMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1E4BEFABC();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF972F0, &qword_1E4C15398);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for SMSMessage();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1E4BB7624();
  v17 = v30;
  sub_1E4BF0ABC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v18 = v14;
  v19 = v6;
  v20 = v28;
  v34 = 0;
  sub_1E4ADBF38();
  v21 = v29;
  sub_1E4BF087C();
  *v18 = v32;
  v34 = 1;
  sub_1E4BB7B34();
  sub_1E4BF087C();
  v22 = v20;
  v23 = v33;
  *(v18 + 8) = v32;
  *(v18 + 16) = v23;
  v34 = 2;
  sub_1E4B48474();
  sub_1E4BF087C();
  *(v18 + 24) = v32;
  v34 = 3;
  sub_1E4BB7B88();
  sub_1E4BF087C();
  v24 = v33;
  *(v18 + 32) = v32;
  *(v18 + 40) = v24;
  LOBYTE(v32) = 4;
  sub_1E4AE0B44(&qword_1ECF925D8);
  sub_1E4BF087C();
  (*(v22 + 8))(v10, v21);
  (*(v26 + 32))(v18 + *(v11 + 32), v19, v3);
  sub_1E4B6FEF8(v18, v27);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1E4BB7BDC(v18);
}

unint64_t sub_1E4BB7B34()
{
  result = qword_1ECF972F8;
  if (!qword_1ECF972F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF972F8);
  }

  return result;
}

unint64_t sub_1E4BB7B88()
{
  result = qword_1ECF97300;
  if (!qword_1ECF97300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97300);
  }

  return result;
}

uint64_t sub_1E4BB7BDC(uint64_t a1)
{
  v2 = type metadata accessor for SMSMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4BB7C3C()
{
  result = qword_1ECF97308;
  if (!qword_1ECF97308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97308);
  }

  return result;
}

uint64_t sub_1E4BB7D18()
{
  result = sub_1E4BEFABC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BB7DE4()
{
  result = qword_1ECF97310;
  if (!qword_1ECF97310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97310);
  }

  return result;
}

unint64_t sub_1E4BB7E3C()
{
  result = qword_1ECF97318;
  if (!qword_1ECF97318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97318);
  }

  return result;
}

unint64_t sub_1E4BB7E94()
{
  result = qword_1ECF97320;
  if (!qword_1ECF97320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97320);
  }

  return result;
}

unint64_t sub_1E4BB7EEC()
{
  result = qword_1ECF97328;
  if (!qword_1ECF97328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97328);
  }

  return result;
}

unint64_t sub_1E4BB7F44()
{
  result = qword_1ECF97330;
  if (!qword_1ECF97330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97330);
  }

  return result;
}

unint64_t sub_1E4BB7F9C()
{
  result = qword_1ECF97338;
  if (!qword_1ECF97338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97338);
  }

  return result;
}

unint64_t sub_1E4BB7FF4()
{
  result = qword_1ECF97340;
  if (!qword_1ECF97340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97340);
  }

  return result;
}

unint64_t sub_1E4BB804C()
{
  result = qword_1ECF97348;
  if (!qword_1ECF97348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97348);
  }

  return result;
}

unint64_t sub_1E4BB80A4()
{
  result = qword_1ECF97350;
  if (!qword_1ECF97350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97350);
  }

  return result;
}

uint64_t sub_1E4BB80F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1E4BB82BC()
{
  result = qword_1ECF97358;
  if (!qword_1ECF97358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97358);
  }

  return result;
}

uint64_t RCSService.RevokeMessageRequest.handle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

__n128 RCSService.RevokeMessageRequest.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

uint64_t RCSService.RevokeMessageRequest.messageID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t RCSService.RevokeMessageRequest.messageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

__n128 RCSService.RevokeMessageRequest.init(cellularServiceID:handle:messageID:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = *a2;
  v5 = *(a2 + 16);
  *(a4 + 8) = *a2;
  v6 = *(a2 + 32);
  v7 = *a3;
  v8 = a3[1];
  *a4 = *a1;
  *(a4 + 24) = v5;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;
  *(a4 + 56) = v8;
  return result;
}

uint64_t sub_1E4BB8490(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97360, &qword_1E4C15AA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v22 = *(v1 + 2);
  v23 = v9;
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  v30 = v1[40];
  v12 = *(v1 + 7);
  v20 = *(v1 + 6);
  v21 = v10;
  v19 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8AF0();
  sub_1E4BF0ACC();
  LOBYTE(v25) = v8;
  v31 = 0;
  sub_1E4ADBE98();
  v14 = v24;
  sub_1E4BF093C();
  if (!v14)
  {
    v15 = v19;
    v16 = v20;
    v25 = v23;
    v26 = v22;
    v27 = v21;
    v28 = v11;
    v29 = v30;
    v31 = 1;
    sub_1E4ADD6D8(v23, v22, v21, v11, v30);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v25, v26, v27, v28, v29);
    v25 = v16;
    v26 = v15;
    v31 = 2;
    sub_1E4AE2DEC();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E4BB86C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97370, &qword_1E4C15AB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8AF0();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25[0]) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v28;
  LOBYTE(v25[0]) = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v22 = v28;
  v23 = *v29;
  v24 = *&v29[16];
  v35 = v30;
  v36 = 2;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v20 = *(&v34 + 1);
  v21 = v34;
  LOBYTE(v25[0]) = v11;
  v12 = v22;
  v13 = v23;
  *(&v25[0] + 1) = v22;
  v25[1] = v23;
  v14 = v24;
  *&v26 = v24;
  v15 = v35;
  BYTE8(v26) = v35;
  v27 = v34;
  v16 = v23;
  *a2 = v25[0];
  a2[1] = v16;
  v17 = v27;
  a2[2] = v26;
  a2[3] = v17;
  sub_1E4B96568(v25, &v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v28) = v11;
  *v29 = v12;
  *&v29[8] = v13;
  v30 = v14;
  v31 = v15;
  v32 = v21;
  v33 = v20;
  return sub_1E4B9666C(&v28);
}

unint64_t sub_1E4BB89C0()
{
  v1 = 0x656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x496567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4BB8A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BB8C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BB8A48(uint64_t a1)
{
  v2 = sub_1E4BB8AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB8A84(uint64_t a1)
{
  v2 = sub_1E4BB8AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4BB8AF0()
{
  result = qword_1ECF97368;
  if (!qword_1ECF97368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97368);
  }

  return result;
}

unint64_t sub_1E4BB8B58()
{
  result = qword_1ECF97378;
  if (!qword_1ECF97378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97378);
  }

  return result;
}

unint64_t sub_1E4BB8BB0()
{
  result = qword_1ECF97380;
  if (!qword_1ECF97380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97380);
  }

  return result;
}

unint64_t sub_1E4BB8C08()
{
  result = qword_1ECF97388;
  if (!qword_1ECF97388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97388);
  }

  return result;
}

uint64_t sub_1E4BB8C5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BB8DD4(uint64_t a1)
{
  v2 = sub_1E4BB8FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB8E10(uint64_t a1)
{
  v2 = sub_1E4BB8FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSReceivedNotification.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97390, &qword_1E4C15BD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8FC4();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage();
  sub_1E4BB941C(&qword_1ECF95C98, type metadata accessor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BB8FC4()
{
  result = qword_1ECF97398;
  if (!qword_1ECF97398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97398);
  }

  return result;
}

uint64_t SMSReceivedNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for SMSMessage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973A0, &qword_1E4C15BD8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SMSReceivedNotification();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8FC4();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = v19;
    sub_1E4BB941C(&qword_1ECF95CA8, type metadata accessor for SMSMessage);
    v17 = v21;
    sub_1E4BF087C();
    (*(v20 + 8))(v10, v7);
    sub_1E4BB92D8(v17, v14, type metadata accessor for SMSMessage);
    sub_1E4BB92D8(v14, v16, type metadata accessor for SMSReceivedNotification);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SMSReceivedNotification()
{
  result = qword_1ECF973B8;
  if (!qword_1ECF973B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BB92D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BB9340(uint64_t a1)
{
  result = sub_1E4BB941C(&qword_1ECF94880, type metadata accessor for SMSReceivedNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BB9398(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BB941C(&qword_1ECF973A8, type metadata accessor for SMSReceivedNotification);
  result = sub_1E4BB941C(&qword_1ECF973B0, type metadata accessor for SMSReceivedNotification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BB941C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BB947C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97390, &qword_1E4C15BD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB8FC4();
  sub_1E4BF0ACC();
  type metadata accessor for SMSMessage();
  sub_1E4BB941C(&qword_1ECF95C98, type metadata accessor for SMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BB9630()
{
  result = qword_1ECF973C8;
  if (!qword_1ECF973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973C8);
  }

  return result;
}

unint64_t sub_1E4BB9688()
{
  result = qword_1ECF973D0;
  if (!qword_1ECF973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973D0);
  }

  return result;
}

unint64_t sub_1E4BB96E0()
{
  result = qword_1ECF973D8;
  if (!qword_1ECF973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973D8);
  }

  return result;
}

uint64_t RCSChatbotReadCachedRenderInformationRequest.init(request:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t RCSChatbotFetchRenderInformationRequest.init(request:operationID:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *a2;
  v7 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  return result;
}

uint64_t RCSChatbotReadCachedRenderInformationRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

uint64_t sub_1E4BB97B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747365757165725FLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BB983C(uint64_t a1)
{
  v2 = sub_1E4BB9A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB9878(uint64_t a1)
{
  v2 = sub_1E4BB9A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSChatbotReadCachedRenderInformationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973E0, &qword_1E4C15DB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v13 = *(v1 + 1);
  HIDWORD(v12) = v1[24];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9A38();

  sub_1E4BF0ACC();
  v14 = v8;
  v15 = v13;
  v16 = v9;
  v17 = BYTE4(v12);
  sub_1E4B463E8();
  sub_1E4BF093C();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4BB9A38()
{
  result = qword_1ECF973E8;
  if (!qword_1ECF973E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF973E8);
  }

  return result;
}

uint64_t RCSChatbotReadCachedRenderInformationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973F0, &qword_1E4C15DB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9A38();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4B46390();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v17;
    v13 = v18;
    *a2 = v15[0];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RCSChatbotFetchRenderInformationRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

uint64_t RCSChatbotFetchRenderInformationRequest.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t sub_1E4BB9C7C(uint64_t a1)
{
  v2 = sub_1E4BB9ED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BB9CB8(uint64_t a1)
{
  v2 = sub_1E4BB9ED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSChatbotFetchRenderInformationRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF973F8, &qword_1E4C15DC0);
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v22 = v1[24];
  v10 = *(v1 + 5);
  v14 = *(v1 + 4);
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9ED8();

  sub_1E4BF0ACC();
  LOBYTE(v18) = v7;
  v19 = v8;
  v20 = v9;
  v21 = v22;
  v23 = 0;
  sub_1E4B463E8();
  v12 = v16;
  sub_1E4BF093C();

  if (!v12)
  {
    v18 = v14;
    v19 = v15;
    v23 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();
  }

  return (*(v17 + 8))(v6, v3);
}

unint64_t sub_1E4BB9ED8()
{
  result = qword_1ECF97400;
  if (!qword_1ECF97400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97400);
  }

  return result;
}

uint64_t RCSChatbotFetchRenderInformationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97408, &unk_1E4C15DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BB9ED8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_1E4B46390();
  sub_1E4BF087C();
  v11 = v18;
  v12 = v20;
  v17 = v19;
  v22 = v21;
  v23 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v18;
  v14 = v19;
  *a2 = v11;
  *(a2 + 8) = v17;
  *(a2 + 16) = v12;
  *(a2 + 24) = v22;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4BBA1C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RCSChatbotRenderInformationResponse.operationID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RCSChatbotRenderInformationResponse() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t type metadata accessor for RCSChatbotRenderInformationResponse()
{
  result = qword_1ECF97448;
  if (!qword_1ECF97448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RCSChatbotRenderInformationResponse.error.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSChatbotRenderInformationResponse();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RCSChatbotRenderInformationResponse.init(renderInfo:operationID:error:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *a3;
  sub_1E4BBA350(a1, a4);
  result = type metadata accessor for RCSChatbotRenderInformationResponse();
  v9 = (a4 + *(result + 20));
  *v9 = v5;
  v9[1] = v6;
  *(a4 + *(result + 24)) = v7;
  return result;
}

uint64_t sub_1E4BBA350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BBA3C0()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E497265646E6572;
  }
}

uint64_t sub_1E4BBA424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BBB4B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BBA44C(uint64_t a1)
{
  v2 = sub_1E4BBA6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBA488(uint64_t a1)
{
  v2 = sub_1E4BBA6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSChatbotRenderInformationResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97410, &qword_1E4C15DD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBA6F4();
  sub_1E4BF0ACC();
  LOBYTE(v17) = 0;
  type metadata accessor for RCSService.Business(0);
  sub_1E4BBAF08(&qword_1ECF97420, type metadata accessor for RCSService.Business);
  sub_1E4BF08EC();
  if (!v2)
  {
    v11 = type metadata accessor for RCSChatbotRenderInformationResponse();
    v12 = (v3 + *(v11 + 20));
    v13 = v12[1];
    v17 = *v12;
    v18 = v13;
    v16 = 1;
    sub_1E4B1AC54();

    sub_1E4BF08EC();

    LOBYTE(v17) = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4BBA6F4()
{
  result = qword_1ECF97418;
  if (!qword_1ECF97418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97418);
  }

  return result;
}

uint64_t RCSChatbotRenderInformationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97428, &qword_1E4C15DE0);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for RCSChatbotRenderInformationResponse();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBA6F4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v15;
  v18 = v23;
  type metadata accessor for RCSService.Business(0);
  LOBYTE(v25) = 0;
  sub_1E4BBAF08(&qword_1ECF97430, type metadata accessor for RCSService.Business);
  v19 = v24;
  sub_1E4BF082C();
  sub_1E4BBA350(v7, v17);
  v26 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF082C();
  *(v17 + *(v12 + 20)) = v25;
  v26 = 2;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  (*(v18 + 8))(v11, v19);
  *(v17 + *(v12 + 24)) = v25;
  sub_1E4BBAB2C(v17, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4BBAB90(v17);
}

uint64_t sub_1E4BBAAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4BBAB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSChatbotRenderInformationResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BBAB90(uint64_t a1)
{
  v2 = type metadata accessor for RCSChatbotRenderInformationResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4BBABEC(uint64_t a1)
{
  result = sub_1E4B9E5F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BBACD0()
{
  result = qword_1EE2BD888;
  if (!qword_1EE2BD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD888);
  }

  return result;
}

unint64_t sub_1E4BBAD24()
{
  result = qword_1EE2BD890;
  if (!qword_1EE2BD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD890);
  }

  return result;
}

unint64_t sub_1E4BBAD78(uint64_t a1)
{
  result = sub_1E4B9E59C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BBADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BBAE08()
{
  result = qword_1EE2BD8C0;
  if (!qword_1EE2BD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD8C0);
  }

  return result;
}

unint64_t sub_1E4BBAE5C()
{
  result = qword_1EE2BD8C8;
  if (!qword_1EE2BD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BD8C8);
  }

  return result;
}

uint64_t sub_1E4BBAEB0(uint64_t a1)
{
  result = sub_1E4BBAF08(&qword_1ECF95F28, type metadata accessor for RCSChatbotRenderInformationResponse);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BBAF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BBAF5C(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BBAF08(&qword_1ECF97438, type metadata accessor for RCSChatbotRenderInformationResponse);
  result = sub_1E4BBAF08(&qword_1ECF97440, type metadata accessor for RCSChatbotRenderInformationResponse);
  *(a1 + 16) = result;
  return result;
}

void sub_1E4BBB058()
{
  sub_1E4BBB114();
  if (v0 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1ECF97460);
    if (v1 <= 0x3F)
    {
      sub_1E4AE5B08(319, &qword_1ECF96D48);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4BBB114()
{
  if (!qword_1ECF97458)
  {
    type metadata accessor for RCSService.Business(255);
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF97458);
    }
  }
}

unint64_t sub_1E4BBB1A0()
{
  result = qword_1ECF97468;
  if (!qword_1ECF97468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97468);
  }

  return result;
}

unint64_t sub_1E4BBB1F8()
{
  result = qword_1ECF97470;
  if (!qword_1ECF97470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97470);
  }

  return result;
}

unint64_t sub_1E4BBB250()
{
  result = qword_1ECF97478;
  if (!qword_1ECF97478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97478);
  }

  return result;
}

unint64_t sub_1E4BBB2A8()
{
  result = qword_1ECF97480;
  if (!qword_1ECF97480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97480);
  }

  return result;
}

unint64_t sub_1E4BBB300()
{
  result = qword_1ECF97488;
  if (!qword_1ECF97488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97488);
  }

  return result;
}

unint64_t sub_1E4BBB358()
{
  result = qword_1ECF97490;
  if (!qword_1ECF97490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97490);
  }

  return result;
}

unint64_t sub_1E4BBB3B0()
{
  result = qword_1ECF97498;
  if (!qword_1ECF97498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97498);
  }

  return result;
}

unint64_t sub_1E4BBB408()
{
  result = qword_1ECF974A0;
  if (!qword_1ECF974A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974A0);
  }

  return result;
}

unint64_t sub_1E4BBB460()
{
  result = qword_1ECF974A8;
  if (!qword_1ECF974A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974A8);
  }

  return result;
}

uint64_t sub_1E4BBB4B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E497265646E6572 && a2 == 0xEA00000000006F66;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4BBB5D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SendSMSRequest();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SMSMessage() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BBB694, 0, 0);
}

uint64_t sub_1E4BBB694()
{
  v25 = v0;
  if (qword_1ECF92420 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v3, qword_1ECF974B0);
  sub_1E4B6FEF8(v2, v1);
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04BC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    v10 = *(v7 + 8);
    v11 = *(v7 + 16);

    sub_1E4BBC1A4(v7, type metadata accessor for SMSMessage);
    v12 = sub_1E4B30548(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Sending SMS to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6921800](v9, -1, -1);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  else
  {

    sub_1E4BBC1A4(v7, type metadata accessor for SMSMessage);
  }

  v13 = v0[3];
  sub_1E4B6FEF8(v0[2], v0[5]);
  v14 = v13[6];
  v15 = v13[7];
  __swift_project_boxed_opaque_existential_1(v13 + 3, v14);
  v16 = *(v15 + 32);
  v23 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[7] = v18;
  v19 = sub_1E4BBC15C(&qword_1EE2BDE10, type metadata accessor for SendSMSRequest);
  *v18 = v0;
  v18[1] = sub_1E4BBB984;
  v21 = v0[4];
  v20 = v0[5];

  return v23(v20, v21, v19, v14, v15);
}

uint64_t sub_1E4BBB984()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E4BBBB24;
  }

  else
  {
    v3 = sub_1E4BBBA98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BBBA98()
{
  v1 = v0[6];
  sub_1E4BBC1A4(v0[5], type metadata accessor for SendSMSRequest);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E4BBBB24()
{
  v1 = v0[6];
  sub_1E4BBC1A4(v0[5], type metadata accessor for SendSMSRequest);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1E4BBBBB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SMSReportSpamRequest();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BBBC44, 0, 0);
}

uint64_t sub_1E4BBBC44()
{
  if (qword_1ECF92420 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF974B0);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Reporting SMS message as spam.", v4, 2u);
    MEMORY[0x1E6921800](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  sub_1E4B6FEF8(v6, v5);
  v8 = v7[6];
  v9 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v8);
  v10 = *(v9 + 32);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  v13 = sub_1E4BBC15C(&qword_1EE2BDBE0, type metadata accessor for SMSReportSpamRequest);
  *v12 = v0;
  v12[1] = sub_1E4BBBE78;
  v15 = v0[4];
  v14 = v0[5];

  return v17(v14, v15, v13, v8, v9);
}

uint64_t sub_1E4BBBE78()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1E4BBC010;
  }

  else
  {
    v3 = sub_1E4BBBF8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BBBF8C()
{
  sub_1E4BBC1A4(*(v0 + 40), type metadata accessor for SMSReportSpamRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BBC010()
{
  sub_1E4BBC1A4(v0[5], type metadata accessor for SMSReportSpamRequest);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_1E4BBC094()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF974B0);
  v1 = __swift_project_value_buffer(v0, qword_1ECF974B0);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BBC15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BBC1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BBC210(uint64_t a1)
{
  v2 = sub_1E4BBC39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBC24C(uint64_t a1)
{
  v2 = sub_1E4BBC39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceStatusRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF974C8, &qword_1E4C163F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBC39C();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BBC39C()
{
  result = qword_1ECF974D0;
  if (!qword_1ECF974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974D0);
  }

  return result;
}

unint64_t sub_1E4BBC418(uint64_t a1)
{
  result = sub_1E4B3A788();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BBC444()
{
  result = qword_1ECF974D8;
  if (!qword_1ECF974D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974D8);
  }

  return result;
}

unint64_t sub_1E4BBC49C()
{
  result = qword_1ECF974E0;
  if (!qword_1ECF974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974E0);
  }

  return result;
}

unint64_t sub_1E4BBC4F0(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BBC520();
  result = sub_1E4BBC574();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BBC520()
{
  result = qword_1EE2BDB40;
  if (!qword_1EE2BDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB40);
  }

  return result;
}

unint64_t sub_1E4BBC574()
{
  result = qword_1EE2BDB48;
  if (!qword_1EE2BDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB48);
  }

  return result;
}

uint64_t sub_1E4BBC5C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF974C8, &qword_1E4C163F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBC39C();
  sub_1E4BF0ACC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BBC700()
{
  result = qword_1ECF974E8;
  if (!qword_1ECF974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974E8);
  }

  return result;
}

unint64_t sub_1E4BBC758()
{
  result = qword_1ECF974F0;
  if (!qword_1ECF974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF974F0);
  }

  return result;
}

uint64_t RCSService.FileUploadRequest.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.FileUploadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.FileUploadRequest.fileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSService.FileUploadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSService.FileUploadRequest.init(cellularServiceID:fileURL:contentType:thumbnailURL:thumbnailContentType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v16 = *a1;
  v7 = type metadata accessor for RCSService.FileUploadRequest(0);
  v8 = v7[6];
  v9 = sub_1E4BEFB4C();
  v10 = *(*(v9 - 8) + 56);
  v10(&a6[v8], 1, 1, v9);
  v11 = v7[7];
  v12 = sub_1E4BEFA6C();
  v13 = *(v12 - 8);
  (*(v13 + 56))(&a6[v11], 1, 1, v12);
  v14 = v7[8];
  v10(&a6[v14], 1, 1, v9);
  *a6 = v16;
  (*(v13 + 32))(&a6[v7[5]], a2, v12);
  sub_1E4AF1900(a3, &a6[v8], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AF1900(a4, &a6[v11], &qword_1ECF92F88, &qword_1E4BFDD20);
  return sub_1E4AF1900(a5, &a6[v14], &qword_1ECF92700, &qword_1E4BFB090);
}

uint64_t RCSService.FileUploadRequest.Metadata.transactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4BEFAFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RCSService.FileUploadRequest.Metadata.init(transactionID:fileMetadata:thumbnailMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1E4BEFAFC();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for RCSService.FileUploadRequest.Metadata(0);
  sub_1E4BBCF50(a2, a4 + *(v9 + 20));
  return sub_1E4AFD6D0(a3, a4 + *(v9 + 24), &qword_1ECF93730, qword_1E4C16550);
}

uint64_t sub_1E4BBCF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSFileTransferMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BBD064(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E4BBD1AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4BF053C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_12Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4BEFAFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RCSFileTransferMetadata();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t __swift_store_extra_inhabitant_index_13Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E4BEFAFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for RCSFileTransferMetadata();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1E4BBD4CC()
{
  sub_1E4BEFAFC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RCSFileTransferMetadata();
    if (v1 <= 0x3F)
    {
      sub_1E4BBD1AC(319, qword_1EE2BDAC0, type metadata accessor for RCSFileTransferMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(unsigned __int8 *a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_1E4BEFA6C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

_BYTE *__swift_store_extra_inhabitant_indexTm_3(_BYTE *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
    return result;
  }

  v8 = sub_1E4BEFA6C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_1E4BBD8A8()
{
  sub_1E4BEFA6C();
  if (v0 <= 0x3F)
  {
    sub_1E4BBD1AC(319, qword_1EE2BD758, MEMORY[0x1EEE9A700]);
    if (v1 <= 0x3F)
    {
      sub_1E4BBD1AC(319, &qword_1EE2BECC8, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E4BBD984(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97580, &qword_1E4C166B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBED80();
  sub_1E4BF0ACC();
  v28 = *v3;
  v27 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v11 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
    v12 = *(v11 + 20);
    v26 = 1;
    sub_1E4BEFA6C();
    sub_1E4BBD064(&qword_1ECF92FF0, MEMORY[0x1E6968FB0]);
    sub_1E4BF093C();
    v13 = *(v11 + 24);
    v21 = v11;
    v22 = v13;
    v25 = 2;
    v14 = sub_1E4BEFB4C();
    v15 = sub_1E4AF109C(&qword_1ECF92C08);
    v22 = v14;
    sub_1E4BF08EC();
    v20[1] = v15;
    v16 = v21;
    v17 = *(v21 + 28);
    v24 = 3;
    sub_1E4BF08EC();
    v18 = *(v16 + 32);
    v23 = 4;
    sub_1E4BF08EC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1E4BBDC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = v35 - v5;
  v6 = sub_1E4BEFA6C();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97590, &qword_1E4C166C0);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v35 - v12;
  v14 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBED80();
  v44 = v13;
  v19 = v45;
  sub_1E4BF0ABC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v42;
  v38 = v14;
  v50 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v21 = v17;
  *v17 = v51;
  v49 = 1;
  v22 = v9;
  v23 = v6;
  v24 = sub_1E4BBD064(&qword_1ECF93050, MEMORY[0x1E6968FB0]);
  sub_1E4BF087C();
  v37 = v24;
  (*(v41 + 32))(v21 + v38[5], v22, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v45 = v35;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v35 - v27;
  v29 = sub_1E4BEFB4C();
  v48 = 2;
  v30 = sub_1E4AF109C(&qword_1ECF92C38);
  v36 = v28;
  sub_1E4BF082C();
  v35[0] = v30;
  v35[1] = v29;
  v31 = v38;
  sub_1E4AFD6D0(v36, v21 + v38[6], &qword_1ECF92700, &qword_1E4BFB090);
  v47 = 3;
  v32 = v40;
  v45 = 0;
  sub_1E4BF082C();
  v33 = sub_1E4AFD6D0(v32, v21 + v31[7], &qword_1ECF92F88, &qword_1E4BFDD20);
  MEMORY[0x1EEE9AC00](v33);
  v46 = 4;
  sub_1E4BF082C();
  (*(v20 + 8))(v44, v43);
  sub_1E4AFD6D0(v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v38[8], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4BBECB8(v21, v39, _s17FileUploadRequestV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4BBED20(v21, _s17FileUploadRequestV21CodableRepresentationVMa);
}

unint64_t sub_1E4BBE260()
{
  v1 = *v0;
  v2 = 0x4C5255656C6966;
  v3 = 0x54746E65746E6F63;
  v4 = 0x69616E626D756874;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4BBE318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BBF004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BBE340(uint64_t a1)
{
  v2 = sub_1E4BBED80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBE37C(uint64_t a1)
{
  v2 = sub_1E4BBED80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BBE3E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97558, &qword_1E4C166A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBEC64();
  sub_1E4BF0ACC();
  v16 = 0;
  sub_1E4BEFAFC();
  sub_1E4BBD064(&qword_1ECF97568, MEMORY[0x1E69695A8]);
  sub_1E4BF093C();
  if (!v1)
  {
    v9 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
    v10 = *(v9 + 20);
    v15 = 1;
    type metadata accessor for RCSFileTransferMetadata();
    sub_1E4BBD064(&qword_1ECF93748, type metadata accessor for RCSFileTransferMetadata);
    sub_1E4BF093C();
    v11 = *(v9 + 24);
    v14 = 2;
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E4BBE628@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93730, qword_1E4C16550);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v27 - v5;
  v34 = type metadata accessor for RCSFileTransferMetadata();
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4BEFAFC();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97570, &qword_1E4C166B0);
  v33 = *(v36 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v27 - v13;
  v15 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBEC64();
  v37 = v14;
  v20 = v38;
  sub_1E4BF0ABC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v15;
  v29 = v18;
  v21 = v33;
  v38 = a1;
  v41 = 0;
  sub_1E4BBD064(&qword_1ECF97578, MEMORY[0x1E69695A8]);
  v22 = v35;
  sub_1E4BF087C();
  (*(v32 + 32))(v29, v22, v9);
  v40 = 1;
  sub_1E4BBD064(&qword_1ECF93758, type metadata accessor for RCSFileTransferMetadata);
  sub_1E4BF087C();
  v35 = v9;
  v23 = v29;
  sub_1E4BBCF50(v8, &v29[*(v28 + 20)]);
  v39 = 2;
  v24 = v31;
  sub_1E4BF082C();
  v25 = v38;
  (*(v21 + 8))(v37, v36);
  sub_1E4AFD6D0(v24, v23 + *(v28 + 24), &qword_1ECF93730, qword_1E4C16550);
  sub_1E4BBECB8(v23, v30, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1E4BBED20(v23, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
}

uint64_t sub_1E4BBEB20()
{
  v1 = 0x6174654D656C6966;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_1E4BBEB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BBF1CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BBEBBC(uint64_t a1)
{
  v2 = sub_1E4BBEC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBEBF8(uint64_t a1)
{
  v2 = sub_1E4BBEC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4BBEC64()
{
  result = qword_1ECF97560;
  if (!qword_1ECF97560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97560);
  }

  return result;
}

uint64_t sub_1E4BBECB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BBED20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4BBED80()
{
  result = qword_1ECF97588;
  if (!qword_1ECF97588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97588);
  }

  return result;
}

unint64_t sub_1E4BBEDF8()
{
  result = qword_1ECF97598;
  if (!qword_1ECF97598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97598);
  }

  return result;
}

unint64_t sub_1E4BBEE50()
{
  result = qword_1ECF975A0;
  if (!qword_1ECF975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975A0);
  }

  return result;
}

unint64_t sub_1E4BBEEA8()
{
  result = qword_1ECF975A8;
  if (!qword_1ECF975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975A8);
  }

  return result;
}

unint64_t sub_1E4BBEF00()
{
  result = qword_1ECF975B0;
  if (!qword_1ECF975B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975B0);
  }

  return result;
}

unint64_t sub_1E4BBEF58()
{
  result = qword_1ECF975B8;
  if (!qword_1ECF975B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975B8);
  }

  return result;
}

unint64_t sub_1E4BBEFB0()
{
  result = qword_1ECF975C0;
  if (!qword_1ECF975C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975C0);
  }

  return result;
}

uint64_t sub_1E4BBF004(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1ED0 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4BBF1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174654D656C6966 && a2 == 0xEC00000061746164 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF1720 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

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

uint64_t sub_1E4BBF384(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E4BEFB6C();
}

uint64_t sub_1E4BBF444(uint64_t a1)
{
  v2 = sub_1E4BBF634();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BBF480(uint64_t a1)
{
  v2 = sub_1E4BBF634();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSReceivedNotification.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF975C8, &qword_1E4C168F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBF634();
  sub_1E4BF0ACC();
  type metadata accessor for MMSMessage(0);
  sub_1E4BBFA8C(&qword_1ECF94180, type metadata accessor for MMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BBF634()
{
  result = qword_1ECF975D0;
  if (!qword_1ECF975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF975D0);
  }

  return result;
}

uint64_t MMSReceivedNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF975D8, &qword_1E4C168F8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MMSReceivedNotification();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBF634();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = v19;
    sub_1E4BBFA8C(&qword_1ECF94178, type metadata accessor for MMSMessage);
    v17 = v21;
    sub_1E4BF087C();
    (*(v20 + 8))(v10, v7);
    sub_1E4BBF948(v17, v14, type metadata accessor for MMSMessage);
    sub_1E4BBF948(v14, v16, type metadata accessor for MMSReceivedNotification);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MMSReceivedNotification()
{
  result = qword_1ECF975F0;
  if (!qword_1ECF975F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BBF948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BBF9B0(uint64_t a1)
{
  result = sub_1E4BBFA8C(&qword_1ECF94888, type metadata accessor for MMSReceivedNotification);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BBFA08(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BBFA8C(&qword_1ECF975E0, type metadata accessor for MMSReceivedNotification);
  result = sub_1E4BBFA8C(&qword_1ECF975E8, type metadata accessor for MMSReceivedNotification);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BBFA8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BBFAEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF975C8, &qword_1E4C168F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BBF634();
  sub_1E4BF0ACC();
  type metadata accessor for MMSMessage(0);
  sub_1E4BBFA8C(&qword_1ECF94180, type metadata accessor for MMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E4BBFC8C()
{
  result = type metadata accessor for MMSMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BBFD0C()
{
  result = qword_1ECF97600;
  if (!qword_1ECF97600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97600);
  }

  return result;
}

unint64_t sub_1E4BBFD64()
{
  result = qword_1ECF97608;
  if (!qword_1ECF97608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97608);
  }

  return result;
}

unint64_t sub_1E4BBFDBC()
{
  result = qword_1ECF97610;
  if (!qword_1ECF97610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97610);
  }

  return result;
}

uint64_t RCSOperationID.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

TelephonyMessagingKit::RCSOperationID __swiftcall RCSOperationID.init()()
{
  v1 = v0;
  v2 = sub_1E4BEFAFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEFAEC();
  v7 = sub_1E4BEFACC();
  v9 = v8;
  v10 = (*(v3 + 8))(v6, v2);
  *v1 = v7;
  v1[1] = v9;
  result.rawValue._object = v11;
  result.rawValue._countAndFlagsBits = v10;
  return result;
}

uint64_t RCSOperationID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF069C();

  MEMORY[0x1E69205B0](v1, v2);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0x617265704F534352;
}

unint64_t sub_1E4BBFFBC()
{
  result = qword_1ECF97618;
  if (!qword_1ECF97618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97618);
  }

  return result;
}

uint64_t sub_1E4BC00C0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4BF069C();

  MEMORY[0x1E69205B0](v1, v2);
  MEMORY[0x1E69205B0](41, 0xE100000000000000);
  return 0x617265704F534352;
}

unint64_t sub_1E4BC0158()
{
  result = qword_1ECF97620;
  if (!qword_1ECF97620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97620);
  }

  return result;
}

unint64_t sub_1E4BC01B0()
{
  result = qword_1ECF97628;
  if (!qword_1ECF97628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97628);
  }

  return result;
}

unint64_t sub_1E4BC0214()
{
  result = qword_1ECF97630;
  if (!qword_1ECF97630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97630);
  }

  return result;
}

uint64_t sub_1E4BC028C()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF97638);
  v1 = __swift_project_value_buffer(v0, qword_1ECF97638);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1E4BC0368()
{
  v1 = 0x6F70707553746F6ELL;
  if (*v0 != 2)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E4BC03F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BC3CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BC041C(uint64_t a1)
{
  v2 = sub_1E4BC0AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC0458(uint64_t a1)
{
  v2 = sub_1E4BC0AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC0494(uint64_t a1)
{
  v2 = sub_1E4BC0B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC04D0(uint64_t a1)
{
  v2 = sub_1E4BC0B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC050C(uint64_t a1)
{
  v2 = sub_1E4BC0BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC0548(uint64_t a1)
{
  v2 = sub_1E4BC0BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC0584(uint64_t a1)
{
  v2 = sub_1E4BC0BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC05C0(uint64_t a1)
{
  v2 = sub_1E4BC0BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BC05FC(uint64_t a1)
{
  v2 = sub_1E4BC0B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC0638(uint64_t a1)
{
  v2 = sub_1E4BC0B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SMSService.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97650, &qword_1E4C16D70);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97658, &qword_1E4C16D78);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97660, &qword_1E4C16D80);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97668, &qword_1E4C16D88);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97670, &qword_1E4C16D90);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC0AAC();
  sub_1E4BF0ACC();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1E4BC0B54();
      v24 = v33;
      sub_1E4BF08BC();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1E4BC0B00();
      v24 = v36;
      sub_1E4BF08BC();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1E4BC0BA8();
    v24 = v30;
    sub_1E4BF08BC();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1E4BC0BFC();
  sub_1E4BF08BC();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1E4BC0AAC()
{
  result = qword_1ECF97678;
  if (!qword_1ECF97678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97678);
  }

  return result;
}

unint64_t sub_1E4BC0B00()
{
  result = qword_1ECF97680;
  if (!qword_1ECF97680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97680);
  }

  return result;
}

unint64_t sub_1E4BC0B54()
{
  result = qword_1ECF97688;
  if (!qword_1ECF97688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97688);
  }

  return result;
}

unint64_t sub_1E4BC0BA8()
{
  result = qword_1ECF97690;
  if (!qword_1ECF97690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97690);
  }

  return result;
}

unint64_t sub_1E4BC0BFC()
{
  result = qword_1ECF97698;
  if (!qword_1ECF97698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97698);
  }

  return result;
}

uint64_t SMSService.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t SMSService.Error.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976A0, &qword_1E4C16D98);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976A8, &qword_1E4C16DA0);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976B0, &qword_1E4C16DA8);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976B8, &qword_1E4C16DB0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF976C0, &unk_1E4C16DB8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E4BC0AAC();
  v21 = v53;
  sub_1E4BF0ABC();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1E4BF088C();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1E4AE0F20();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1E4BF06EC();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
      *v34 = &type metadata for SMSService.Error;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1E4BC0BA8();
        v39 = v42;
        sub_1E4BF07EC();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1E4BC0BFC();
        v31 = v42;
        sub_1E4BF07EC();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1E4BC0B54();
      v38 = v42;
      sub_1E4BF07EC();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1E4BC0B00();
      v40 = v42;
      sub_1E4BF07EC();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t SMSService.CriticalMessageStateNotification.State.hashValue.getter()
{
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](0);
  return sub_1E4BF0A9C();
}

uint64_t SMSService.viabilityNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v3 + 6);
  if (Strong)
  {
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = *(Strong + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);

    os_unfair_lock_lock((v6 + 96));
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1E4BC1760;
    *(v7 + 24) = v5;

    v8 = *(v6 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + 40);
    *(v6 + 40) = 0x8000000000000000;
    sub_1E4B31A54(sub_1E4BC1768, v7, 0, isUniquelyReferenced_nonNull_native);
    *(v6 + 40) = v13;
    os_unfair_lock_unlock((v6 + 96));

    v10 = *(v1 + 32);
    return sub_1E4B2A52C(a1);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1E4BC16E4(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 32);
    if (a2)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    sub_1E4B752F4(v6 | v3);
  }

  return result;
}

uint64_t SMSService.sendMessage(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(type metadata accessor for SMSMessage() - 8);
  v2[9] = v3;
  v2[10] = *(v3 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BC1864, 0, 0);
}

uint64_t sub_1E4BC1864()
{
  v57 = v0;
  v1 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);
    v11 = *(v0 + 64);

    v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v13 = swift_allocObject();
    swift_weakInit();
    sub_1E4B7CABC(*v12, v13);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_1ECF92438 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 56);
    v19 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v19, qword_1ECF97638);
    sub_1E4BC3E28(v18, v15, type metadata accessor for SMSMessage);
    sub_1E4BC3E28(v18, v14, type metadata accessor for SMSMessage);
    sub_1E4BC3E28(v18, v16, type metadata accessor for SMSMessage);
    sub_1E4BC3E28(v18, v17, type metadata accessor for SMSMessage);
    v20 = sub_1E4BEFB5C();
    v21 = sub_1E4BF04BC();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    if (v22)
    {
      v27 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = v53;
      *v27 = 136315907;
      v28 = *v23;
      v55 = 0;
      v56 = 0xE000000000000000;
      v52 = v21;
      sub_1E4BF069C();
      MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
      sub_1E4AEC058(v28);
      MEMORY[0x1E69205B0](41, 0xE100000000000000);
      sub_1E4BC3E90(v23, type metadata accessor for SMSMessage);
      v29 = sub_1E4B30548(0, 0xE000000000000000, &v54);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = *(v24 + 8);
      v31 = *(v24 + 16);

      sub_1E4BC3E90(v24, type metadata accessor for SMSMessage);
      v32 = sub_1E4B30548(v30, v31, &v54);

      *(v27 + 14) = v32;
      *(v27 + 22) = 2080;
      LODWORD(v31) = *(v26 + 24);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1E4BF069C();

      v55 = 0xD000000000000017;
      v56 = 0x80000001E4BF2670;
      *(v0 + 172) = v31;
      v33 = sub_1E4BF096C();
      MEMORY[0x1E69205B0](v33);

      MEMORY[0x1E69205B0](41, 0xE100000000000000);
      v34 = v55;
      v35 = v56;
      sub_1E4BC3E90(v26, type metadata accessor for SMSMessage);
      v36 = sub_1E4B30548(v34, v35, &v54);

      *(v27 + 24) = v36;
      *(v27 + 32) = 2085;
      v37 = *(v25 + 32);
      v38 = *(v25 + 40);

      sub_1E4BC3E90(v25, type metadata accessor for SMSMessage);
      v39 = sub_1E4B30548(v37, v38, &v54);

      *(v27 + 34) = v39;
      _os_log_impl(&dword_1E4AD3000, v20, v52, "[%s] Sending SMS to [%s], [%s] with content [%{sensitive}s]", v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E6921800](v53, -1, -1);
      MEMORY[0x1E6921800](v27, -1, -1);
    }

    else
    {

      sub_1E4BC3E90(v25, type metadata accessor for SMSMessage);
      sub_1E4BC3E90(v26, type metadata accessor for SMSMessage);
      sub_1E4BC3E90(v24, type metadata accessor for SMSMessage);
      sub_1E4BC3E90(v23, type metadata accessor for SMSMessage);
    }

    v40 = *(v0 + 88);
    v41 = *(v0 + 64);
    v42 = *(v0 + 72);
    v43 = *(v0 + 56);
    v44 = *(v41 + 48);
    v45 = *(v43 + 24);
    sub_1E4BC3E28(v43, v40, type metadata accessor for SMSMessage);
    v46 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v47 = swift_allocObject();
    *(v0 + 128) = v47;
    *(v47 + 16) = v41;
    sub_1E4BC3444(v40, v47 + v46);
    *(v0 + 168) = v45;

    v48 = swift_task_alloc();
    *(v0 + 136) = v48;
    v48[2] = v44;
    v48[3] = v0 + 168;
    v48[4] = &unk_1E4C16DD8;
    v48[5] = v47;
    v49 = swift_task_alloc();
    *(v0 + 144) = v49;
    *(v49 + 16) = v44;
    *(v49 + 24) = v0 + 168;
    v50 = *(MEMORY[0x1E69E88F0] + 4);
    v51 = swift_task_alloc();
    *(v0 + 152) = v51;
    *v51 = v0;
    v51[1] = sub_1E4BC1EE4;

    return MEMORY[0x1EEE6DE18]();
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E4BC1EE4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1E4BC20B0;
  }

  else
  {
    v6 = v2[17];
    v5 = v2[18];
    v7 = v2[16];

    v4 = sub_1E4BC201C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E4BC201C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E4BC20B0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  v4 = v0[20];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E4BC2168(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E4BC2188, 0, 0);
}

uint64_t sub_1E4BC2188()
{
  v1 = *(v0[7] + 16);
  os_unfair_lock_lock(v1 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v1 + 6);
  if (Strong)
  {
    sub_1E4B35420((v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1E4B28C68;
    v5 = v0[8];

    return sub_1E4BBB5D4(v5);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t SMSService.reportSpam(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for SMSMessage();
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BC2398, 0, 0);
}

uint64_t sub_1E4BC2398()
{
  v47 = v0;
  if (qword_1ECF92438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 56);
  v6 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v6, qword_1ECF97638);
  sub_1E4BC3E28(v5, v2, type metadata accessor for SMSMessage);
  sub_1E4BC3E28(v5, v1, type metadata accessor for SMSMessage);
  sub_1E4BC3E28(v5, v3, type metadata accessor for SMSMessage);
  sub_1E4BC3E28(v5, v4, type metadata accessor for SMSMessage);
  v7 = sub_1E4BEFB5C();
  v8 = sub_1E4BF04BC();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  if (v9)
  {
    v41 = *(v0 + 72);
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v14 = 136315906;
    v15 = *v10;
    v45 = 0;
    v46 = 0xE000000000000000;
    v42 = v8;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v15);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    sub_1E4BC3E90(v10, type metadata accessor for SMSMessage);
    v16 = sub_1E4B30548(0, 0xE000000000000000, &v44);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    v17 = *(v11 + 8);
    v18 = *(v11 + 16);

    sub_1E4BC3E90(v11, type metadata accessor for SMSMessage);
    v19 = sub_1E4B30548(v17, v18, &v44);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2080;
    LODWORD(v18) = *(v13 + 24);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1E4BF069C();

    v45 = 0xD000000000000017;
    v46 = 0x80000001E4BF2670;
    *(v0 + 128) = v18;
    v20 = sub_1E4BF096C();
    MEMORY[0x1E69205B0](v20);

    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v21 = v45;
    v22 = v46;
    sub_1E4BC3E90(v13, type metadata accessor for SMSMessage);
    v23 = sub_1E4B30548(v21, v22, &v44);

    *(v14 + 24) = v23;
    *(v14 + 32) = 2080;
    v24 = *(v41 + 32);
    sub_1E4BEFABC();
    sub_1E4BC3EF0(&qword_1ECF94378, MEMORY[0x1E6969530]);
    v25 = sub_1E4BF096C();
    v27 = v26;
    sub_1E4BC3E90(v12, type metadata accessor for SMSMessage);
    v28 = sub_1E4B30548(v25, v27, &v44);

    *(v14 + 34) = v28;
    _os_log_impl(&dword_1E4AD3000, v7, v42, "[%s] Reporting SMS message as spam. (SMSMessage: phoneNumber: [%s], messageID: [%s], receivedAt: [%s])", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v43, -1, -1);
    MEMORY[0x1E6921800](v14, -1, -1);
  }

  else
  {

    sub_1E4BC3E90(v12, type metadata accessor for SMSMessage);
    sub_1E4BC3E90(v13, type metadata accessor for SMSMessage);
    sub_1E4BC3E90(v11, type metadata accessor for SMSMessage);
    sub_1E4BC3E90(v10, type metadata accessor for SMSMessage);
  }

  v29 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock(v29 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v29 + 6);
  if (Strong)
  {
    sub_1E4B35420(v0 + 16);

    v31 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v32 = swift_task_alloc();
    *(v0 + 112) = v32;
    *v32 = v0;
    v32[1] = sub_1E4BC2920;
    v33 = *(v0 + 56);

    return sub_1E4BBBBB0(v33);
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    v37 = *(v0 + 96);
    v36 = *(v0 + 104);
    v39 = *(v0 + 80);
    v38 = *(v0 + 88);

    v40 = *(v0 + 8);

    return v40();
  }
}

uint64_t sub_1E4BC2920()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E4BC2AC8;
  }

  else
  {
    v3 = sub_1E4BC2A34;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BC2A34()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E4BC2AC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t SMSService.incomingMessageNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 16);
  os_unfair_lock_lock(v5 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v5 + 6);
  if (Strong)
  {
    sub_1E4B35420(v12);

    if (!v2)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_1E4B7D378(*v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v12);
      v10 = *(v3 + 24);
      return sub_1E4B2AC20(a1);
    }
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4BC2C6C(uint64_t a1)
{
  v2 = type metadata accessor for SMSReceivedNotification();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SMSService.IncomingMessageNotification();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1E4BC3E28(a1, v5, type metadata accessor for SMSReceivedNotification);
    sub_1E4BC3444(v5, v9);
    v12 = *(v11 + 24);
    sub_1E4B75628(v9);
    sub_1E4BC3E90(v9, type metadata accessor for SMSService.IncomingMessageNotification);
  }

  return result;
}

uint64_t SMSService.criticalMessageStateNotifications.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 16);
  os_unfair_lock_lock(v5 + 6);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v5 + 6);
  if (Strong)
  {
    sub_1E4B35420(v12);

    if (!v2)
    {
      v8 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v9 = swift_allocObject();
      swift_weakInit();
      sub_1E4B7DE70(*v8, v9);

      __swift_destroy_boxed_opaque_existential_1(v12);
      v10 = *(v3 + 40);
      return sub_1E4B2B31C(a1);
    }
  }

  else
  {
    sub_1E4B304F4();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4BC2EBC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);
    sub_1E4B759C0(v1 | (v2 << 32));
  }

  return result;
}

void *SMSService.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t SMSService.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1E4BC2FC8(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    if (v2 == 4)
    {
      sub_1E4B7417C(v1);
    }

    else
    {
      sub_1E4B84F0C();
      v5 = swift_allocError();
      *v6 = v2;
      sub_1E4BC8010(v1, v5);
    }
  }
}

uint64_t sub_1E4BC308C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 72) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1E4BC30B8, 0, 0);
}

uint64_t sub_1E4BC30B8()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 72;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1E4B32E40;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BC3F38, v2, v7);
}

void sub_1E4BC31C0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_1E4BF01DC();
  sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
  v3 = swift_allocError();
  sub_1E4BEFD9C();
  sub_1E4BC8010(v2, v3);
}

void *sub_1E4BC326C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97758, &qword_1E4C17580);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97760, &qword_1E4C17588);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97768, &qword_1E4C17590);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97770, &qword_1E4C17598);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v3;
  *(v4 + 16) = v5;
  v0[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97778, &qword_1E4C175A0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97780, &qword_1E4C175A8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v3;
  *(v6 + 16) = v7;
  v0[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97788, &qword_1E4C175B0);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97790, &qword_1E4C175B8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = MEMORY[0x1E69E7CC8];
  *(v8 + 16) = v9;
  v0[6] = v8;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97798, &unk_1E4C175C0);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  sub_1E4BC3F48(v12, v10 + 16);
  v0[2] = v10;
  return v0;
}

uint64_t sub_1E4BC3444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BC34A8()
{
  v2 = *(type metadata accessor for SMSMessage() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B33678;

  return sub_1E4BC2168(v4, v0 + v3);
}

uint64_t sub_1E4BC3580(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BC308C(a1, v4, v5, v7, v6);
}

unint64_t sub_1E4BC3658()
{
  result = qword_1ECF976C8;
  if (!qword_1ECF976C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF976C8);
  }

  return result;
}

unint64_t sub_1E4BC36B4()
{
  result = qword_1ECF976D0;
  if (!qword_1ECF976D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF976D0);
  }

  return result;
}

unint64_t sub_1E4BC3708(void *a1)
{
  a1[1] = sub_1E4B861BC();
  a1[2] = sub_1E4B85F4C();
  result = sub_1E4B84F0C();
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for SMSService.IncomingMessageNotification()
{
  result = qword_1ECF976D8;
  if (!qword_1ECF976D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BC3830(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4BC38E8()
{
  result = qword_1ECF97700;
  if (!qword_1ECF97700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97700);
  }

  return result;
}

unint64_t sub_1E4BC3940()
{
  result = qword_1ECF97708;
  if (!qword_1ECF97708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97708);
  }

  return result;
}

unint64_t sub_1E4BC3998()
{
  result = qword_1ECF97710;
  if (!qword_1ECF97710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97710);
  }

  return result;
}

unint64_t sub_1E4BC39F0()
{
  result = qword_1ECF97718;
  if (!qword_1ECF97718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97718);
  }

  return result;
}

unint64_t sub_1E4BC3A48()
{
  result = qword_1ECF97720;
  if (!qword_1ECF97720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97720);
  }

  return result;
}

unint64_t sub_1E4BC3AA0()
{
  result = qword_1ECF97728;
  if (!qword_1ECF97728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97728);
  }

  return result;
}

unint64_t sub_1E4BC3AF8()
{
  result = qword_1ECF97730;
  if (!qword_1ECF97730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97730);
  }

  return result;
}

unint64_t sub_1E4BC3B50()
{
  result = qword_1ECF97738;
  if (!qword_1ECF97738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97738);
  }

  return result;
}

unint64_t sub_1E4BC3BA8()
{
  result = qword_1ECF97740;
  if (!qword_1ECF97740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97740);
  }

  return result;
}

unint64_t sub_1E4BC3C00()
{
  result = qword_1ECF97748;
  if (!qword_1ECF97748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97748);
  }

  return result;
}

unint64_t sub_1E4BC3C58()
{
  result = qword_1ECF97750;
  if (!qword_1ECF97750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97750);
  }

  return result;
}

uint64_t sub_1E4BC3CAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E4BF2730 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4BF2750 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E4BC3E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BC3E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BC3EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BC3FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5365636976726573 && a2 == 0xED00007375746174)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BC4060(uint64_t a1)
{
  v2 = sub_1E4BC4238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC409C(uint64_t a1)
{
  v2 = sub_1E4BC4238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceStatusNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977A0, &qword_1E4C175D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC4238();

  sub_1E4BF0ACC();
  v11[1] = v8;
  sub_1E4BBC49C();
  sub_1E4BF093C();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4BC4238()
{
  result = qword_1ECF977A8;
  if (!qword_1ECF977A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977A8);
  }

  return result;
}

uint64_t ServiceStatusNotification.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977B0, &qword_1E4C175D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC4238();
  sub_1E4BF0ABC();
  if (!v2)
  {
    sub_1E4BBC444();
    sub_1E4BF087C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4BC43F8(uint64_t a1)
{
  result = sub_1E4B8519C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BC4420(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BC4450();
  result = sub_1E4BC44A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BC4450()
{
  result = qword_1ECF977B8;
  if (!qword_1ECF977B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977B8);
  }

  return result;
}

unint64_t sub_1E4BC44A4()
{
  result = qword_1ECF977C0;
  if (!qword_1ECF977C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977C0);
  }

  return result;
}

unint64_t sub_1E4BC454C()
{
  result = qword_1ECF977C8;
  if (!qword_1ECF977C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977C8);
  }

  return result;
}

unint64_t sub_1E4BC45A4()
{
  result = qword_1ECF977D0;
  if (!qword_1ECF977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977D0);
  }

  return result;
}

unint64_t sub_1E4BC45FC()
{
  result = qword_1ECF977D8;
  if (!qword_1ECF977D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977D8);
  }

  return result;
}

uint64_t RCSReportSpamResultNotification.operationID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

unint64_t sub_1E4BC469C()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4BC4700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BC4E90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BC4728(uint64_t a1)
{
  v2 = sub_1E4BC499C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BC4764(uint64_t a1)
{
  v2 = sub_1E4BC499C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSReportSpamResultNotification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977E0, &qword_1E4C177C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v14[0] = *(v1 + 1);
  v17 = v1[24];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC499C();
  sub_1E4BF0ACC();
  LOBYTE(v15) = v8;
  v18 = 0;
  sub_1E4ADBE98();
  v11 = v14[1];
  sub_1E4BF093C();
  if (!v11)
  {
    v12 = v17;
    v15 = v14[0];
    v16 = v9;
    v18 = 1;
    sub_1E4B1AC54();

    sub_1E4BF093C();

    LOBYTE(v15) = v12;
    v18 = 2;
    sub_1E4B1B740();
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4BC499C()
{
  result = qword_1ECF977E8;
  if (!qword_1ECF977E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977E8);
  }

  return result;
}

uint64_t RCSReportSpamResultNotification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF977F0, &qword_1E4C177C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BC499C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v17;
  v19 = 1;
  sub_1E4B1ACFC();
  sub_1E4BF087C();
  v12 = v18;
  v16 = v17;
  v19 = 2;
  sub_1E4B1B7E8();
  sub_1E4BF082C();
  (*(v6 + 8))(v9, v5);
  v13 = v17;
  *a2 = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4BC4C2C(uint64_t a1)
{
  result = sub_1E4B84488();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4BC4C60(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BC4C90();
  result = sub_1E4BC4CE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4BC4C90()
{
  result = qword_1ECF977F8;
  if (!qword_1ECF977F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF977F8);
  }

  return result;
}

unint64_t sub_1E4BC4CE4()
{
  result = qword_1ECF97800;
  if (!qword_1ECF97800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97800);
  }

  return result;
}

unint64_t sub_1E4BC4D8C()
{
  result = qword_1ECF97808;
  if (!qword_1ECF97808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97808);
  }

  return result;
}

unint64_t sub_1E4BC4DE4()
{
  result = qword_1ECF97810;
  if (!qword_1ECF97810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97810);
  }

  return result;
}

unint64_t sub_1E4BC4E3C()
{
  result = qword_1ECF97818[0];
  if (!qword_1ECF97818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF97818);
  }

  return result;
}

uint64_t sub_1E4BC4E90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xEB0000000044496ELL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BC4FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 64))(a2, a3);
  swift_getAssociatedConformanceWitness();
  v8 = (a4 + *(type metadata accessor for XPCBoxedMessage() + 36));
  v8[3] = a2;
  v8[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  v10 = *(*(a2 - 8) + 32);

  return v10(boxed_opaque_existential_1, a1, a2);
}

uint64_t sub_1E4BC508C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for XPCBoxedMessage() + 36);

  return sub_1E4ADB544(a2, v6);
}

uint64_t sub_1E4BC511C()
{
  v0 = sub_1E4BF07DC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4BC5170(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x496567617373656DLL;
  }
}

uint64_t sub_1E4BC51AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4BC5220(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1E4BC528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4BC52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1E4BC536C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E4BC511C();
  *a2 = result;
  return result;
}

uint64_t sub_1E4BC539C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4BC5170(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4BC53D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4BC511C();
  *a1 = result;
  return result;
}

uint64_t sub_1E4BC53F8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E4B67BD8();
  *a2 = result;
  return result;
}

uint64_t sub_1E4BC5424(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E4BC5478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E4BC54CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = *(a2 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v27 - v9;
  v33 = v11;
  v34 = v10;
  type metadata accessor for XPCBoxedMessage.CodingKeys();
  swift_getWitnessTable();
  v12 = sub_1E4BF08AC();
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BF0ABC();
  if (v3)
  {
    v26 = a1;
  }

  else
  {
    v29 = a1;
    v17 = v31;
    LOBYTE(v36[0]) = 0;
    v18 = v33;
    v19 = *(v33 + 8);
    sub_1E4BF087C();
    v28 = v12;
    v20 = (*(v18 + 32))(v34, v18);
    v22 = v21;
    v36[3] = v20;
    v36[4] = v21;
    __swift_allocate_boxed_opaque_existential_1(v36);
    v23 = *(v22 + 8);
    sub_1E4BC5814();
    (*(v32 + 8))(v15, v28);
    v25 = v34;
    (*(v17 + 32))(v8, v37, v34);
    sub_1E4B14334(v36, v35);
    sub_1E4BC508C(v8, v35, v25, v30);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v26 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1E4BC5814()
{
  type metadata accessor for XPCBoxedMessage.CodingKeys();
  swift_getWitnessTable();
  sub_1E4BF08AC();
  return sub_1E4BF087C();
}

uint64_t sub_1E4BC58CC(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for XPCBoxedMessage.CodingKeys();
  swift_getWitnessTable();
  v22 = sub_1E4BF094C();
  v20 = *(v22 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v8 = v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v19[1];
  sub_1E4BF0ACC();
  v11 = (v10 + *(a2 + 36));
  v12 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v13 = *(v12 + 16);
  v14 = v21;
  sub_1E4BC5AC8();
  if (v14)
  {
    return (*(v20 + 8))(v8, v22);
  }

  v16 = v20;
  v23 = 0;
  swift_beginAccess();
  v17 = *(v4 + 16);
  v18 = v22;
  sub_1E4BF093C();
  swift_endAccess();
  return (*(v16 + 8))(v8, v18);
}