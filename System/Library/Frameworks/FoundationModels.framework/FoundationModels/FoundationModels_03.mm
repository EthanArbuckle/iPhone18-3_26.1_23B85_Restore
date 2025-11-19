uint64_t sub_238843F24()
{
  v15 = v0;
  v1 = v0[6];
  v2 = v1[10];
  v3 = v1[11];
  sub_238815878(v1 + 7, v2);
  swift_getKeyPath();
  v0[5] = v1;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_2388200D4(*(v4 + 16), 0);
    v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
    v8 = sub_2388254BC(&v14, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v4);
    swift_bridgeObjectRetain_n();

    if (v8 != v5)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v0[7] = v6;
  v10 = *(v3 + 64);
  v13 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_23884419C;

  return v13(v6, v2, v3);
}

uint64_t sub_23884419C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  if (!v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    __asm { BRAA            X4, X16 }
  }

  return MEMORY[0x2822009F8](sub_238844310, 0, 0);
}

uint64_t sub_238844310()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t LanguageModelSession.Response.rawContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 48);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v9 = *(v3 + 16);
  *(a2 + 16) = v9;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  sub_238814698(v4, v5, v9);
}

uint64_t LanguageModelSession.Response.transcriptEntries.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  return swift_unknownObjectRetain();
}

uint64_t LanguageModelSession.Response.usedDraftModel.getter(uint64_t a1)
{
  v3 = type metadata accessor for Transcript.Entry(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v11 = v23 - v10;
  v12 = (v1 + *(a1 + 52));
  v13 = v12[2];
  v14 = v12[3] >> 1;
  if (v13 == v14)
  {
    return 0;
  }

  if (v14 > v13)
  {
    sub_238857D9C(v12[1] + *(v9 + 72) * (v14 - 1), v23 - v10, type metadata accessor for Transcript.Entry);
    sub_238857D9C(v11, v7, type metadata accessor for Transcript.Entry);
    result = swift_getEnumCaseMultiPayload();
    if (result != 4)
    {
      sub_2388594C4(v11, type metadata accessor for Transcript.Entry);
      v15 = 0;
      v11 = v7;
LABEL_11:
      sub_2388594C4(v11, type metadata accessor for Transcript.Entry);
      return v15;
    }

    v16 = *(v7 + 1);
    v17 = *(v7 + 2);
    v23[0] = *(v7 + 3);
    v23[1] = v16;
    v18 = (v17 + 40);
    v19 = -*(v17 + 16);
    v20 = -1;
    while (1)
    {
      v15 = v19 + v20 != -1;
      if (v19 + v20 == -1)
      {
LABEL_9:

        goto LABEL_11;
      }

      if (++v20 >= *(v17 + 16))
      {
        break;
      }

      v21 = v18 + 2;
      v22 = *v18;
      v23[4] = *(v18 - 1);
      v23[5] = v22;
      v23[2] = 0x5F74666172642ELL;
      v23[3] = 0xE700000000000000;
      sub_238856678();
      result = sub_2388D2ED8();
      v18 = v21;
      if (result)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2388446A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = *(a6 + 16);
  v18 = *(a6 + 17);
  v19 = a6[3];
  v20 = a6[4];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  v21 = type metadata accessor for LanguageModelSession.Response();
  result = (*(*(a13 - 8) + 32))(a9 + v21[11], a5, a13);
  v23 = a9 + v21[12];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  *(v23 + 17) = v18;
  *(v23 + 24) = v19;
  *(v23 + 32) = v20;
  v24 = (a9 + v21[13]);
  *v24 = a7;
  v24[1] = a8;
  v24[2] = a11;
  v24[3] = a12;
  return result;
}

uint64_t sub_23884479C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a5;
  v10 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 2);
  v16 = v5[4];
  v28 = v5[3];
  v29 = v13;
  v18 = *(v17 + 44);

  a1(v5 + v18);
  if (v6)
  {
  }

  else
  {
    v20 = *(a2 + 52);
    v21 = v5 + *(a2 + 48);
    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = v21[17];
    v25 = *(v21 + 3);
    v27 = *(v21 + 4);
    v26 = v21[16];
    v32[0] = v22;
    v32[1] = v23;
    v33 = v26;
    v34 = v24;
    v35 = v25;
    v36 = v27;
    sub_2388446A0(v29, v14, v28, v16, v12, v32, *(v5 + v20), *(v5 + v20 + 8), v31, v15, *(v5 + v20 + 16), *(v5 + v20 + 24), a3);
    sub_238814698(v22, v23, v26);

    return swift_unknownObjectRetain();
  }
}

uint64_t LanguageModelSession.respond(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v6 + 264) = a1;
  *(v6 + 272) = v5;
  v10 = type metadata accessor for RawResponseStream();
  *(v6 + 280) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v12 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  v13 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v14 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v6 + 312) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *a4;
  *(v6 + 320) = v16;
  *(v6 + 328) = v17;
  v18 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v18;
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = *(a5 + 80);
  v19 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v19;
  if (a2)
  {
    swift_getObjectType();
    v20 = sub_2388D2B38();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v6 + 336) = v20;
  *(v6 + 344) = v22;

  return MEMORY[0x2822009F8](sub_238844AD4, v20);
}

uint64_t sub_238844AD4()
{
  v29 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v6 = *(v0 + 272);
  v26 = *(v0 + 280);
  v27 = *(v0 + 328);
  v7 = type metadata accessor for PromptTemplate();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = type metadata accessor for GenerationSchema(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v10 = v6[20];
  v9 = v6[21];
  v11 = sub_238815878(v6 + 17, v10);
  v28 = v27;

  sub_23884B7DC(&v28, v2, (v0 + 16), v11, v5, 0, 0, v4, sub_23884B648, 0, MEMORY[0x277D837D0], v10, v9);
  sub_238827E88(v5, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v2, &qword_27DF2FFC0, &unk_2388D5A80);
  v12 = *v4;
  v13 = v4[1];
  v14 = *(v26 + 20);
  v15 = v3[9];
  v16 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v16 - 8) + 32))(v1 + v15, v4 + v14, v16);
  v17 = *(v4 + *(v26 + 24));
  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  *v1 = v12;
  v1[1] = v13;
  *(v1 + v3[10]) = v17;
  v19 = (v1 + v3[11]);
  *v19 = sub_238830F10;
  v19[1] = 0;
  v20 = (v1 + v3[12]);
  *v20 = sub_238856704;
  v20[1] = v18;

  v21 = *(MEMORY[0x277D857C8] + 4);
  v22 = swift_task_alloc();
  *(v0 + 352) = v22;
  v23 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v22 = v0;
  v22[1] = sub_238844DAC;
  v24 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v17, &type metadata for ResponseEnvelope, v23, v24);
}

uint64_t sub_238844DAC()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v9 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[41];

    v5 = v2[42];
    v6 = v2[43];
    v7 = sub_238845028;
  }

  else
  {
    v5 = v2[42];
    v6 = v2[43];
    v7 = sub_238844EC8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_238844EC8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 264);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), v2, v3);
  v4 = *(v0 + 328);
  if (v1)
  {

    sub_238856720(v0 + 104);
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v7 = *(v0 + 288);
    sub_238827E88(*(v0 + 320), &qword_27DF2FFC8, &qword_2388D5D30);
  }

  else
  {
    v9 = *(v0 + 320);
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);
    v12 = *(v0 + 288);

    sub_238856720(v0 + 104);
    sub_238827E88(v9, &qword_27DF2FFC8, &qword_2388D5D30);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_238845028()
{
  v1 = v0[45];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  sub_238827E88(v0[40], &qword_27DF2FFC8, &qword_2388D5D30);

  v5 = v0[1];

  return v5();
}

uint64_t LanguageModelSession.respond(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 304) = a5;
  *(v7 + 312) = v6;
  *(v7 + 288) = a1;
  *(v7 + 296) = a4;
  v10 = type metadata accessor for RawResponseStream();
  *(v7 + 320) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  v12 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  v13 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v14 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v7 + 352) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  v16 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v16;
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = *(a6 + 80);
  v17 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v17;
  if (a2)
  {
    swift_getObjectType();
    v18 = sub_2388D2B38();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v7 + 368) = v18;
  *(v7 + 376) = v20;

  return MEMORY[0x2822009F8](sub_23884527C, v18);
}

uint64_t sub_23884527C()
{
  v36 = v0;
  v29 = *(v0 + 344);
  v30 = *(v0 + 336);
  v31 = *(v0 + 360);
  v32 = *(v0 + 328);
  v33 = *(v0 + 320);
  v34 = *(v0 + 352);
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  *(v0 + 264) = *(v0 + 296);
  *(v0 + 272) = v2;
  *(v0 + 280) = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D837D0];
  v4 = *(MEMORY[0x277D837D0] - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v0 + 264, v3);
  v7 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v7)(&v35);
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_23881FAF4(v35);

  v9 = *(v0 + 280);
  *(v0 + 384) = v9;
  v8(v0 + 264, v3);

  v10 = type metadata accessor for PromptTemplate();
  (*(*(v10 - 8) + 56))(v29, 1, 1, v10);
  v11 = type metadata accessor for GenerationSchema(0);
  (*(*(v11 - 8) + 56))(v30, 1, 1, v11);
  v13 = v1[20];
  v12 = v1[21];
  v14 = sub_238815878(v1 + 17, v13);
  v35 = v9;

  sub_23884B7DC(&v35, v29, (v0 + 16), v14, v30, 0, 0, v32, sub_23884B648, 0, v3, v13, v12);
  sub_238827E88(v30, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v29, &qword_27DF2FFC0, &unk_2388D5A80);
  v15 = *v32;
  v16 = v32[1];
  v17 = *(v33 + 20);
  v18 = v34[9];
  v19 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v19 - 8) + 32))(v31 + v18, v32 + v17, v19);
  v20 = *(v32 + *(v33 + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  *v31 = v15;
  v31[1] = v16;
  *(v31 + v34[10]) = v20;
  v22 = (v31 + v34[11]);
  *v22 = sub_238830F10;
  v22[1] = 0;
  v23 = (v31 + v34[12]);
  *v23 = sub_238859730;
  v23[1] = v21;

  v24 = *(MEMORY[0x277D857C8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 392) = v25;
  v26 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v25 = v0;
  v25[1] = sub_23884568C;
  v27 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v20, &type metadata for ResponseEnvelope, v26, v27);
}

uint64_t sub_23884568C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v9 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = v2[48];

    v5 = v2[46];
    v6 = v2[47];
    v7 = sub_23884591C;
  }

  else
  {
    v5 = v2[46];
    v6 = v2[47];
    v7 = sub_2388457A8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2388457A8()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 288);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), v2, v3);
  v4 = *(v0 + 384);
  if (v1)
  {

    sub_238856720(v0 + 104);
    v5 = *(v0 + 384);
    v6 = *(v0 + 360);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
  }

  else
  {
    v6 = *(v0 + 360);
    v12 = *(v0 + 336);
    v11 = *(v0 + 344);
    v13 = *(v0 + 328);
    v14 = *(v0 + 384);

    sub_238856720(v0 + 104);
  }

  sub_238827E88(v6, &qword_27DF2FFC8, &qword_2388D5D30);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23884591C()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[41];

  sub_238827E88(v3, &qword_27DF2FFC8, &qword_2388D5D30);

  v7 = v0[1];

  return v7();
}

uint64_t LanguageModelSession.respond(options:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 288) = a6;
  *(v7 + 296) = v6;
  *(v7 + 272) = a1;
  *(v7 + 280) = a5;
  v10 = type metadata accessor for RawResponseStream();
  *(v7 + 304) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  v12 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v7 + 320) = swift_task_alloc();
  v13 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v7 + 328) = swift_task_alloc();
  v14 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v7 + 336) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v16 = *(a4 + 48);
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = v16;
  *(v7 + 80) = *(a4 + 64);
  *(v7 + 96) = *(a4 + 80);
  v17 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v17;
  if (a2)
  {
    swift_getObjectType();
    v18 = sub_2388D2B38();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v7 + 352) = v18;
  *(v7 + 360) = v20;

  return MEMORY[0x2822009F8](sub_238845B78, v18);
}

uint64_t sub_238845B78()
{
  v34 = v0;
  v1 = *(v0 + 288);
  (*(v0 + 280))();
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  v29 = *(v0 + 304);
  v30 = *(v0 + 336);
  v7 = *(v0 + 264);
  *(v0 + 368) = v7;
  v8 = type metadata accessor for PromptTemplate();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = type metadata accessor for GenerationSchema(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = v6[20];
  v11 = v6[21];
  v12 = sub_238815878(v6 + 17, v10);
  v31 = v7;
  v13 = *(v0 + 64);
  v32[2] = *(v0 + 48);
  v32[3] = v13;
  v32[4] = *(v0 + 80);
  v33 = *(v0 + 96);
  v14 = *(v0 + 32);
  v32[0] = *(v0 + 16);
  v32[1] = v14;

  sub_23884B7DC(&v31, v3, v32, v12, v5, 0, 0, v4, sub_23884B648, 0, MEMORY[0x277D837D0], v10, v11);
  sub_238827E88(v5, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v3, &qword_27DF2FFC0, &unk_2388D5A80);
  v15 = *v4;
  v16 = v4[1];
  v17 = *(v29 + 20);
  v18 = v30[9];
  v19 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v19 - 8) + 32))(v2 + v18, v4 + v17, v19);
  v20 = *(v4 + *(v29 + 24));
  v21 = swift_allocObject();
  *(v21 + 16) = v7;
  *v2 = v15;
  v2[1] = v16;
  *(v2 + v30[10]) = v20;
  v22 = (v2 + v30[11]);
  *v22 = sub_238830F10;
  v22[1] = 0;
  v23 = (v2 + v30[12]);
  *v23 = sub_238859730;
  v23[1] = v21;

  v24 = *(MEMORY[0x277D857C8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 376) = v25;
  v26 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v25 = v0;
  v25[1] = sub_238845EF8;
  v27 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v20, &type metadata for ResponseEnvelope, v26, v27);
}

uint64_t sub_238845EF8()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = v2[46];

    v5 = v2[44];
    v6 = v2[45];
    v7 = sub_238846188;
  }

  else
  {
    v5 = v2[44];
    v6 = v2[45];
    v7 = sub_238846014;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_238846014()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v3 = *(v0 + 272);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), v2, v3);
  v4 = *(v0 + 368);
  if (v1)
  {

    sub_238856720(v0 + 104);
    v5 = *(v0 + 368);
    v6 = *(v0 + 344);

    sub_238827E88(v6, &qword_27DF2FFC8, &qword_2388D5D30);
    v7 = *(v0 + 344);
    v8 = *(v0 + 320);
    v9 = *(v0 + 328);
    v10 = *(v0 + 312);
  }

  else
  {
    v12 = *(v0 + 344);
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);
    v15 = *(v0 + 312);
    v16 = *(v0 + 368);

    sub_238856720(v0 + 104);

    sub_238827E88(v12, &qword_27DF2FFC8, &qword_2388D5D30);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_238846188()
{
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[43];

  sub_238827E88(v3, &qword_27DF2FFC8, &qword_2388D5D30);
  v4 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];

  v8 = v0[1];

  return v8();
}

uint64_t LanguageModelSession.respond(to:schema:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 272) = a5;
  *(v8 + 280) = v7;
  *(v8 + 98) = a6;
  *(v8 + 264) = a1;
  v12 = type metadata accessor for GenerationSchema(0);
  *(v8 + 288) = v12;
  v13 = *(v12 - 8);
  *(v8 + 296) = v13;
  *(v8 + 304) = *(v13 + 64);
  *(v8 + 312) = swift_task_alloc();
  v14 = type metadata accessor for RawResponseStream();
  *(v8 + 320) = v14;
  v15 = *(v14 - 8);
  *(v8 + 328) = v15;
  *(v8 + 336) = *(v15 + 64);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v16 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v17 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v8 + 368) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v19 = type metadata accessor for GenerationSchema.Kind(0);
  *(v8 + 384) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  v21 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  v22 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v8 + 408) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v24 = swift_task_alloc();
  v25 = *a4;
  *(v8 + 416) = v24;
  *(v8 + 424) = v25;
  v26 = *(a7 + 48);
  *(v8 + 48) = *(a7 + 32);
  *(v8 + 64) = v26;
  *(v8 + 80) = *(a7 + 64);
  *(v8 + 96) = *(a7 + 80);
  v27 = *(a7 + 16);
  *(v8 + 16) = *a7;
  *(v8 + 32) = v27;
  if (a2)
  {
    swift_getObjectType();
    v28 = sub_2388D2B38();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  *(v8 + 432) = v28;
  *(v8 + 440) = v30;

  return MEMORY[0x2822009F8](sub_238846500, v28);
}

uint64_t sub_238846500()
{
  v91 = v0;
  v83 = *(v0 + 424);
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 272);
  v5 = type metadata accessor for PromptTemplate();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_238857D9C(v4, v1, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v81 = *(v0 + 416);
    v77 = *(v0 + 424);
    v79 = *(v0 + 408);
    v6 = *(v0 + 392);
    v7 = *(v0 + 376);
    v75 = *(v0 + 368);
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v69 = *(v0 + 400);
    v73 = *(v0 + 320);
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v6 + 8);

    v15 = *(v6 + 24);

    v16 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v6 + *(v16 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v13, v9, type metadata accessor for GenerationSchema);
    (*(v10 + 56))(v9, 0, 1, v11);
    v18 = v12[20];
    v17 = v12[21];
    v19 = sub_238815878(v12 + 17, v18);
    v84 = v83;
    v20 = *(v0 + 64);
    v87 = *(v0 + 48);
    v88 = v20;
    v89 = *(v0 + 80);
    v90 = *(v0 + 96);
    v21 = *(v0 + 32);
    v85 = *(v0 + 16);
    v86 = v21;
    sub_23884B7DC(&v84, v69, &v85, v19, v9, 0, 0, v8, sub_23884B648, 0, MEMORY[0x277D837D0], v18, v17);
    sub_238827E88(v9, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v69, &qword_27DF2FFC0, &unk_2388D5A80);
    v22 = v8[1];
    v70 = *v8;
    v23 = *(v73 + 20);
    v24 = v75[9];
    v25 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v26 = *(v25 - 8);
    (*(v26 + 32))(v7 + v24, v8 + v23, v25);
    v27 = *(v8 + *(v73 + 24));
    v28 = swift_allocObject();
    *(v28 + 16) = v83;
    *v7 = v70;
    v7[1] = v22;
    *(v7 + v75[10]) = v27;
    v29 = (v7 + v75[11]);
    *v29 = sub_238830F10;
    v29[1] = 0;
    v30 = (v7 + v75[12]);
    *v30 = sub_238859730;
    v30[1] = v28;
    v32 = *v7;
    v31 = v7[1];
    (*(v26 + 16))(&v81[v79[9]], v7 + v24, v25);

    sub_238827E88(v7, &qword_27DF2FFC8, &qword_2388D5D30);
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v34 = swift_allocObject();
    *(v34 + 2) = v32;
    *(v34 + 3) = v31;
    *(v34 + 4) = v83;
    *v81 = v32;
    *(v81 + 1) = v31;
    *&v81[v79[10]] = v27;
    v35 = &v81[v79[11]];
    *v35 = sub_238856808;
    v35[1] = v33;
    v36 = &v81[v79[12]];
    v37 = sub_238856810;
    *v36 = sub_238856810;
    v36[1] = v34;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v39 = *(v0 + 416);
    v38 = *(v0 + 424);
    v40 = *(v0 + 392);
    v41 = *(v0 + 352);
    v42 = *(v0 + 360);
    v76 = *(v0 + 408);
    v78 = *(v0 + 344);
    v82 = *(v0 + 336);
    v80 = *(v0 + 328);
    v71 = *(v0 + 400);
    v74 = *(v0 + 320);
    v65 = *(v0 + 312);
    v66 = *(v0 + 304);
    v43 = *(v0 + 296);
    v64 = *(v0 + 288);
    v68 = *(v0 + 98);
    v45 = *(v0 + 272);
    v44 = *(v0 + 280);

    sub_2388594C4(v40, type metadata accessor for GenerationSchema.Kind);
    v47 = v44[15];
    v46 = v44[16];
    v67 = sub_238815878(v44 + 12, v47);
    v84 = v83;
    v48 = *(v0 + 64);
    v87 = *(v0 + 48);
    v88 = v48;
    v89 = *(v0 + 80);
    v90 = *(v0 + 96);
    v49 = *(v0 + 32);
    v85 = *(v0 + 16);
    v86 = v49;
    sub_238857D9C(v45, v42, type metadata accessor for GenerationSchema);
    (*(v43 + 56))(v42, 0, 1, v64);
    sub_238857D9C(v45, v65, type metadata accessor for GenerationSchema);
    v50 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v51 = swift_allocObject();
    sub_2388595CC(v65, v51 + v50, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v84, v71, &v85, v67, v42, v68, 0, v41, sub_2388567D8, v51, &type metadata for GeneratedContent, v47, v46);

    sub_238827E88(v42, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v71, &qword_27DF2FFC0, &unk_2388D5A80);
    v52 = v41[1];
    v72 = *v41;
    v53 = *(v74 + 20);
    v54 = v76[9];
    v55 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v55 - 8) + 16))(v39 + v54, v41 + v53, v55);
    v27 = *(v41 + *(v74 + 24));
    sub_2388595CC(v41, v78, type metadata accessor for RawResponseStream);
    v56 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v34 = swift_allocObject();
    sub_2388595CC(v78, v34 + v56, type metadata accessor for RawResponseStream);
    *(v34 + ((v82 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;
    *v39 = v72;
    v39[1] = v52;
    *(v39 + v76[10]) = v27;
    v57 = (v39 + v76[11]);
    *v57 = sub_2388313C0;
    v57[1] = 0;
    v58 = (v39 + v76[12]);
    v37 = sub_2388567F0;
    *v58 = sub_2388567F0;
    v58[1] = v34;
  }

  *(v0 + 448) = v37;
  *(v0 + 456) = v34;
  v59 = *(MEMORY[0x277D857C8] + 4);
  v60 = swift_task_alloc();
  *(v0 + 464) = v60;
  v61 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v60 = v0;
  v60[1] = sub_238846CAC;
  v62 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v27, &type metadata for ResponseEnvelope, v61, v62);
}

uint64_t sub_238846CAC()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 440);
  v6 = *(v2 + 432);
  if (v0)
  {
    v7 = sub_238846FEC;
  }

  else
  {
    v7 = sub_238846DE8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238846DE8()
{
  v28 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v26, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    v5 = *(v0 + 392);
    v4 = *(v0 + 400);
    v6 = *(v0 + 376);
    v8 = *(v0 + 352);
    v7 = *(v0 + 360);
    v9 = *(v0 + 344);
    v10 = *(v0 + 312);
    sub_238827E88(*(v0 + 416), &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v12 = *(v0 + 416);
    v14 = *(v0 + 392);
    v13 = *(v0 + 400);
    v15 = *(v0 + 376);
    v16 = *(v0 + 352);
    v17 = *(v0 + 360);
    v18 = *(v0 + 344);
    v19 = *(v0 + 312);
    v20 = *(v0 + 264);
    sub_238856720(v0 + 104);
    sub_238827E88(v12, &qword_27DF2FFD0, &qword_2388D6160);
    v21 = v26[7];
    *(v20 + 96) = v26[6];
    *(v20 + 112) = v21;
    *(v20 + 128) = v26[8];
    *(v20 + 144) = v27;
    v22 = v26[3];
    *(v20 + 32) = v26[2];
    *(v20 + 48) = v22;
    v23 = v26[5];
    *(v20 + 64) = v26[4];
    *(v20 + 80) = v23;
    v24 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v24;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_238846FEC()
{
  v1 = v0[59];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  v8 = v0[39];
  sub_238827E88(v0[52], &qword_27DF2FFD0, &qword_2388D6160);

  v9 = v0[1];

  return v9();
}

uint64_t LanguageModelSession.respond(to:schema:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 312) = a6;
  *(v9 + 320) = v8;
  *(v9 + 98) = a7;
  *(v9 + 296) = a4;
  *(v9 + 304) = a5;
  *(v9 + 288) = a1;
  v12 = type metadata accessor for GenerationSchema(0);
  *(v9 + 328) = v12;
  v13 = *(v12 - 8);
  *(v9 + 336) = v13;
  *(v9 + 344) = *(v13 + 64);
  *(v9 + 352) = swift_task_alloc();
  v14 = type metadata accessor for RawResponseStream();
  *(v9 + 360) = v14;
  v15 = *(v14 - 8);
  *(v9 + 368) = v15;
  *(v9 + 376) = *(v15 + 64);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v16 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  v17 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 408) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 416) = swift_task_alloc();
  v19 = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 424) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v9 + 432) = swift_task_alloc();
  v21 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  v22 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 448) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 456) = swift_task_alloc();
  v24 = *(a8 + 48);
  *(v9 + 48) = *(a8 + 32);
  *(v9 + 64) = v24;
  *(v9 + 80) = *(a8 + 64);
  *(v9 + 96) = *(a8 + 80);
  v25 = *(a8 + 16);
  *(v9 + 16) = *a8;
  *(v9 + 32) = v25;
  if (a2)
  {
    swift_getObjectType();
    v26 = sub_2388D2B38();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v9 + 464) = v26;
  *(v9 + 472) = v28;

  return MEMORY[0x2822009F8](sub_238847394, v26);
}

uint64_t sub_238847394()
{
  v97 = v0;
  v1 = *(v0 + 432);
  v87 = *(v0 + 424);
  v2 = *(v0 + 304);
  v81 = *(v0 + 440);
  v84 = *(v0 + 312);
  *(v0 + 264) = *(v0 + 296);
  *(v0 + 272) = v2;
  *(v0 + 280) = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D837D0];
  v4 = *(MEMORY[0x277D837D0] - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v0 + 264, v3);
  v7 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v7)(&v91);
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_23881FAF4(v91);

  v9 = *(v0 + 280);
  *(v0 + 480) = v9;
  v8(v0 + 264, v3);

  v10 = type metadata accessor for PromptTemplate();
  (*(*(v10 - 8) + 56))(v81, 1, 1, v10);
  sub_238857D9C(v84, v1, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v85 = *(v0 + 448);
    v88 = *(v0 + 456);
    v11 = *(v0 + 432);
    v12 = *(v0 + 416);
    v82 = *(v0 + 408);
    v13 = *(v0 + 392);
    v14 = *(v0 + 400);
    v76 = *(v0 + 440);
    v79 = *(v0 + 360);
    v15 = *(v0 + 336);
    v72 = *(v0 + 328);
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v11 + 8);

    v19 = *(v11 + 24);

    v20 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v11 + *(v20 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v17, v14, type metadata accessor for GenerationSchema);
    (*(v15 + 56))(v14, 0, 1, v72);
    v22 = v16[20];
    v21 = v16[21];
    v23 = sub_238815878(v16 + 17, v22);
    v90 = v9;
    v24 = *(v0 + 64);
    v93 = *(v0 + 48);
    v94 = v24;
    v95 = *(v0 + 80);
    v96 = *(v0 + 96);
    v25 = *(v0 + 32);
    v91 = *(v0 + 16);
    v92 = v25;
    sub_23884B7DC(&v90, v76, &v91, v23, v14, 0, 0, v13, sub_23884B648, 0, MEMORY[0x277D837D0], v22, v21);
    sub_238827E88(v14, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v76, &qword_27DF2FFC0, &unk_2388D5A80);
    v26 = v13[1];
    v27 = *(v79 + 20);
    v28 = v82[9];
    v73 = *v13;
    v77 = v28;
    v29 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v30 = *(v29 - 8);
    (*(v30 + 32))(v12 + v28, v13 + v27, v29);
    v31 = *(v13 + *(v79 + 24));
    v32 = swift_allocObject();
    *(v32 + 16) = v9;
    *v12 = v73;
    v12[1] = v26;
    *(v12 + v82[10]) = v31;
    v33 = (v12 + v82[11]);
    *v33 = sub_238830F10;
    v33[1] = 0;
    v34 = (v12 + v82[12]);
    *v34 = sub_238859730;
    v34[1] = v32;
    v35 = *v12;
    v36 = v12[1];
    (*(v30 + 16))(&v88[v85[9]], v12 + v77, v29);

    sub_238827E88(v12, &qword_27DF2FFC8, &qword_2388D5D30);
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 2) = v35;
    *(v38 + 3) = v36;
    *(v38 + 4) = v9;
    *v88 = v35;
    *(v88 + 1) = v36;
    *&v88[v85[10]] = v31;
    v39 = &v88[v85[11]];
    *v39 = sub_2388596B0;
    v39[1] = v37;
    v40 = &v88[v85[12]];
    v41 = sub_238859748;
    *v40 = sub_238859748;
    v40[1] = v38;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v42 = *(v0 + 456);
    v43 = *(v0 + 432);
    v44 = *(v0 + 392);
    v45 = *(v0 + 400);
    v80 = *(v0 + 448);
    v83 = *(v0 + 384);
    v89 = *(v0 + 376);
    v86 = *(v0 + 368);
    v74 = *(v0 + 440);
    v78 = *(v0 + 360);
    v46 = *(v0 + 352);
    v69 = *(v0 + 344);
    v47 = *(v0 + 336);
    v67 = *(v0 + 328);
    v71 = *(v0 + 98);
    v49 = *(v0 + 312);
    v48 = *(v0 + 320);

    sub_2388594C4(v43, type metadata accessor for GenerationSchema.Kind);
    v50 = v48[15];
    v68 = v48[16];
    v70 = sub_238815878(v48 + 12, v50);
    v90 = v9;
    v51 = *(v0 + 64);
    v93 = *(v0 + 48);
    v94 = v51;
    v95 = *(v0 + 80);
    v96 = *(v0 + 96);
    v52 = *(v0 + 32);
    v91 = *(v0 + 16);
    v92 = v52;
    sub_238857D9C(v49, v45, type metadata accessor for GenerationSchema);
    (*(v47 + 56))(v45, 0, 1, v67);
    sub_238857D9C(v49, v46, type metadata accessor for GenerationSchema);
    v53 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v54 = swift_allocObject();
    sub_2388595CC(v46, v54 + v53, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v90, v74, &v91, v70, v45, v71, 0, v44, sub_238859698, v54, &type metadata for GeneratedContent, v50, v68);

    sub_238827E88(v45, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v74, &qword_27DF2FFC0, &unk_2388D5A80);
    v55 = v44[1];
    v75 = *v44;
    v56 = *(v78 + 20);
    v57 = v80[9];
    v58 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v58 - 8) + 16))(v42 + v57, v44 + v56, v58);
    v31 = *(v44 + *(v78 + 24));
    sub_2388595CC(v44, v83, type metadata accessor for RawResponseStream);
    v59 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v38 = swift_allocObject();
    sub_2388595CC(v83, v38 + v59, type metadata accessor for RawResponseStream);
    *(v38 + ((v89 + v59 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
    *v42 = v75;
    v42[1] = v55;
    *(v42 + v80[10]) = v31;
    v60 = (v42 + v80[11]);
    *v60 = sub_2388313C0;
    v60[1] = 0;
    v61 = (v42 + v80[12]);
    v41 = sub_2388596B4;
    *v61 = sub_2388596B4;
    v61[1] = v38;
  }

  *(v0 + 488) = v41;
  *(v0 + 496) = v38;
  v62 = *(MEMORY[0x277D857C8] + 4);
  v63 = swift_task_alloc();
  *(v0 + 504) = v63;
  v64 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v63 = v0;
  v63[1] = sub_238847C58;
  v65 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v31, &type metadata for ResponseEnvelope, v64, v65);
}

uint64_t sub_238847C58()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 472);
  v6 = *(v2 + 464);
  if (v0)
  {
    v7 = sub_238847FB0;
  }

  else
  {
    v7 = sub_238847D94;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238847D94()
{
  v31 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v29, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    v4 = *(v0 + 480);
    v5 = *(v0 + 456);
    v7 = *(v0 + 432);
    v6 = *(v0 + 440);
    v8 = *(v0 + 416);
    v10 = *(v0 + 392);
    v9 = *(v0 + 400);
    v11 = *(v0 + 384);
    v12 = *(v0 + 352);

    sub_238827E88(v5, &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v14 = *(v0 + 480);
    v15 = *(v0 + 456);
    v17 = *(v0 + 432);
    v16 = *(v0 + 440);
    v18 = *(v0 + 416);
    v19 = *(v0 + 392);
    v20 = *(v0 + 400);
    v21 = *(v0 + 384);
    v28 = *(v0 + 352);
    v22 = *(v0 + 288);
    sub_238856720(v0 + 104);

    sub_238827E88(v15, &qword_27DF2FFD0, &qword_2388D6160);
    v23 = v29[7];
    *(v22 + 96) = v29[6];
    *(v22 + 112) = v23;
    *(v22 + 128) = v29[8];
    *(v22 + 144) = v30;
    v24 = v29[3];
    *(v22 + 32) = v29[2];
    *(v22 + 48) = v24;
    v25 = v29[5];
    *(v22 + 64) = v29[4];
    *(v22 + 80) = v25;
    v26 = v29[1];
    *v22 = v29[0];
    *(v22 + 16) = v26;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_238847FB0()
{
  v1 = v0[64];
  v2 = v0[60];
  v3 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[48];
  v10 = v0[44];

  sub_238827E88(v3, &qword_27DF2FFD0, &qword_2388D6160);

  v11 = v0[1];

  return v11();
}

uint64_t LanguageModelSession.respond(schema:includeSchemaInPrompt:options:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 296) = a8;
  *(v9 + 304) = v8;
  *(v9 + 280) = a4;
  *(v9 + 288) = a7;
  *(v9 + 98) = a5;
  *(v9 + 272) = a1;
  v12 = type metadata accessor for GenerationSchema(0);
  *(v9 + 312) = v12;
  v13 = *(v12 - 8);
  *(v9 + 320) = v13;
  *(v9 + 328) = *(v13 + 64);
  *(v9 + 336) = swift_task_alloc();
  v14 = type metadata accessor for RawResponseStream();
  *(v9 + 344) = v14;
  v15 = *(v14 - 8);
  *(v9 + 352) = v15;
  *(v9 + 360) = *(v15 + 64);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  v16 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  v17 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 392) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  v19 = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 408) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v9 + 416) = swift_task_alloc();
  v21 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v9 + 424) = swift_task_alloc();
  v22 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 432) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  v24 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v24;
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = *(a6 + 80);
  v25 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v25;
  if (a2)
  {
    swift_getObjectType();
    v26 = sub_2388D2B38();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v9 + 448) = v26;
  *(v9 + 456) = v28;

  return MEMORY[0x2822009F8](sub_238848360, v26);
}

uint64_t sub_238848360()
{
  v92 = v0;
  v1 = *(v0 + 296);
  (*(v0 + 288))();
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  *(v0 + 464) = v6;
  v7 = type metadata accessor for PromptTemplate();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_238857D9C(v5, v3, type metadata accessor for GenerationSchema.Kind);
  v84 = v6;
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v80 = *(v0 + 432);
    v82 = *(v0 + 440);
    v8 = *(v0 + 416);
    v9 = *(v0 + 400);
    v78 = *(v0 + 392);
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    v73 = *(v0 + 424);
    v76 = *(v0 + 344);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    v14 = *(v0 + 304);
    v15 = *(v0 + 280);
    v16 = *(v8 + 8);

    v17 = *(v8 + 24);

    v18 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v8 + *(v18 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v15, v11, type metadata accessor for GenerationSchema);
    (*(v12 + 56))(v11, 0, 1, v13);
    v20 = v14[20];
    v19 = v14[21];
    v21 = sub_238815878(v14 + 17, v20);
    v85 = v84;
    v22 = *(v0 + 64);
    v88 = *(v0 + 48);
    v89 = v22;
    v90 = *(v0 + 80);
    v91 = *(v0 + 96);
    v23 = *(v0 + 32);
    v86 = *(v0 + 16);
    v87 = v23;
    sub_23884B7DC(&v85, v73, &v86, v21, v11, 0, 0, v10, sub_23884B648, 0, MEMORY[0x277D837D0], v20, v19);
    sub_238827E88(v11, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v73, &qword_27DF2FFC0, &unk_2388D5A80);
    v24 = v10[1];
    v25 = *(v76 + 20);
    v26 = v78[9];
    v70 = *v10;
    v74 = v26;
    v27 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v28 = *(v27 - 8);
    (*(v28 + 32))(v9 + v26, v10 + v25, v27);
    v29 = *(v10 + *(v76 + 24));
    v30 = swift_allocObject();
    *(v30 + 16) = v84;
    *v9 = v70;
    v9[1] = v24;
    *(v9 + v78[10]) = v29;
    v31 = (v9 + v78[11]);
    *v31 = sub_238830F10;
    v31[1] = 0;
    v32 = (v9 + v78[12]);
    *v32 = sub_238859730;
    v32[1] = v30;
    v33 = *v9;
    v34 = v9[1];
    (*(v28 + 16))(&v82[v80[9]], v9 + v74, v27);

    sub_238827E88(v9, &qword_27DF2FFC8, &qword_2388D5D30);
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    v36 = swift_allocObject();
    *(v36 + 2) = v33;
    *(v36 + 3) = v34;
    *(v36 + 4) = v84;
    *v82 = v33;
    *(v82 + 1) = v34;
    *&v82[v80[10]] = v29;
    v37 = &v82[v80[11]];
    *v37 = sub_2388596B0;
    v37[1] = v35;
    v38 = &v82[v80[12]];
    v39 = sub_238859748;
    *v38 = sub_238859748;
    v38[1] = v36;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v40 = *(v0 + 440);
    v41 = *(v0 + 416);
    v42 = *(v0 + 376);
    v43 = *(v0 + 384);
    v77 = *(v0 + 432);
    v79 = *(v0 + 368);
    v83 = *(v0 + 360);
    v81 = *(v0 + 352);
    v71 = *(v0 + 424);
    v75 = *(v0 + 344);
    v44 = *(v0 + 336);
    v67 = *(v0 + 328);
    v45 = *(v0 + 320);
    v65 = *(v0 + 312);
    v46 = *(v0 + 304);
    v69 = *(v0 + 98);
    v47 = *(v0 + 280);

    sub_2388594C4(v41, type metadata accessor for GenerationSchema.Kind);
    v48 = v46[15];
    v66 = v46[16];
    v68 = sub_238815878(v46 + 12, v48);
    v85 = v6;
    v49 = *(v0 + 64);
    v88 = *(v0 + 48);
    v89 = v49;
    v90 = *(v0 + 80);
    v91 = *(v0 + 96);
    v50 = *(v0 + 32);
    v86 = *(v0 + 16);
    v87 = v50;
    sub_238857D9C(v47, v43, type metadata accessor for GenerationSchema);
    (*(v45 + 56))(v43, 0, 1, v65);
    sub_238857D9C(v47, v44, type metadata accessor for GenerationSchema);
    v51 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v52 = swift_allocObject();
    sub_2388595CC(v44, v52 + v51, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v85, v71, &v86, v68, v43, v69, 0, v42, sub_238859698, v52, &type metadata for GeneratedContent, v48, v66);

    sub_238827E88(v43, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v71, &qword_27DF2FFC0, &unk_2388D5A80);
    v53 = v42[1];
    v72 = *v42;
    v54 = *(v75 + 20);
    v55 = v77[9];
    v56 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v56 - 8) + 16))(v40 + v55, v42 + v54, v56);
    v29 = *(v42 + *(v75 + 24));
    sub_2388595CC(v42, v79, type metadata accessor for RawResponseStream);
    v57 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v36 = swift_allocObject();
    sub_2388595CC(v79, v36 + v57, type metadata accessor for RawResponseStream);
    *(v36 + ((v83 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    *v40 = v72;
    v40[1] = v53;
    *(v40 + v77[10]) = v29;
    v58 = (v40 + v77[11]);
    *v58 = sub_2388313C0;
    v58[1] = 0;
    v59 = (v40 + v77[12]);
    v39 = sub_2388596B4;
    *v59 = sub_2388596B4;
    v59[1] = v36;
  }

  *(v0 + 472) = v39;
  *(v0 + 480) = v36;
  v60 = *(MEMORY[0x277D857C8] + 4);
  v61 = swift_task_alloc();
  *(v0 + 488) = v61;
  v62 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v61 = v0;
  v61[1] = sub_238848BC8;
  v63 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v29, &type metadata for ResponseEnvelope, v62, v63);
}

uint64_t sub_238848BC8()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 456);
  v6 = *(v2 + 448);
  if (v0)
  {
    v7 = sub_238848F20;
  }

  else
  {
    v7 = sub_238848D04;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238848D04()
{
  v32 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v30, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    v4 = *(v0 + 464);
    v5 = *(v0 + 440);

    sub_238827E88(v5, &qword_27DF2FFD0, &qword_2388D6160);
    v6 = *(v0 + 440);
    v7 = *(v0 + 416);
    v8 = *(v0 + 424);
    v9 = *(v0 + 400);
    v11 = *(v0 + 376);
    v10 = *(v0 + 384);
    v12 = *(v0 + 368);
    v13 = *(v0 + 336);
  }

  else
  {
    v15 = *(v0 + 464);
    v16 = *(v0 + 440);
    v18 = *(v0 + 416);
    v17 = *(v0 + 424);
    v19 = *(v0 + 400);
    v20 = *(v0 + 376);
    v21 = *(v0 + 384);
    v22 = *(v0 + 368);
    v29 = *(v0 + 336);
    v23 = *(v0 + 272);
    sub_238856720(v0 + 104);

    sub_238827E88(v16, &qword_27DF2FFD0, &qword_2388D6160);
    v24 = v30[7];
    *(v23 + 96) = v30[6];
    *(v23 + 112) = v24;
    *(v23 + 128) = v30[8];
    *(v23 + 144) = v31;
    v25 = v30[3];
    *(v23 + 32) = v30[2];
    *(v23 + 48) = v25;
    v26 = v30[5];
    *(v23 + 64) = v30[4];
    *(v23 + 80) = v26;
    v27 = v30[1];
    *v23 = v30[0];
    *(v23 + 16) = v27;
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_238848F20()
{
  v1 = v0[62];
  v2 = v0[58];
  v3 = v0[55];

  sub_238827E88(v3, &qword_27DF2FFD0, &qword_2388D6160);
  v4 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[50];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[46];
  v11 = v0[42];

  v12 = v0[1];

  return v12();
}

uint64_t LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 896) = v8;
  *(v9 + 888) = v32;
  *(v9 + 880) = a8;
  *(v9 + 706) = a6;
  *(v9 + 872) = a1;
  v13 = type metadata accessor for RawResponseStream();
  *(v9 + 904) = v13;
  v14 = *(v13 - 8);
  *(v9 + 912) = v14;
  *(v9 + 920) = *(v14 + 64);
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  v15 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v9 + 944) = swift_task_alloc();
  v16 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 952) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v9 + 960) = swift_task_alloc();
  v18 = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 968) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v9 + 976) = swift_task_alloc();
  v20 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v9 + 984) = swift_task_alloc();
  v21 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 992) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v9 + 1000) = swift_task_alloc();
  v23 = type metadata accessor for GenerationSchema(0);
  *(v9 + 1008) = v23;
  v24 = *(v23 - 8);
  *(v9 + 1016) = v24;
  *(v9 + 1024) = *(v24 + 64);
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = swift_task_alloc();
  *(v9 + 1048) = *a4;
  v25 = *(a7 + 48);
  *(v9 + 656) = *(a7 + 32);
  *(v9 + 672) = v25;
  *(v9 + 688) = *(a7 + 64);
  *(v9 + 704) = *(a7 + 80);
  v26 = *(a7 + 16);
  *(v9 + 624) = *a7;
  *(v9 + 640) = v26;
  if (a2)
  {
    swift_getObjectType();
    v27 = sub_2388D2B38();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  *(v9 + 1064) = v29;
  *(v9 + 1056) = v27;

  return MEMORY[0x2822009F8](sub_2388492F8, v27);
}

uint64_t sub_2388492F8()
{
  v93 = v0;
  v85 = *(v0 + 1048);
  v1 = *(v0 + 1040);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 880);
  (*(*(v0 + 888) + 40))();
  v6 = type metadata accessor for PromptTemplate();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_238857D9C(v1, v3, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = *(v0 + 1040);
    v8 = *(v0 + 1016);
    v83 = *(v0 + 1000);
    v79 = *(v0 + 1048);
    v81 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = *(v0 + 976);
    v11 = *(v0 + 960);
    v77 = *(v0 + 952);
    v12 = *(v0 + 944);
    v13 = *(v0 + 936);
    v71 = *(v0 + 1008);
    v75 = *(v0 + 904);
    v14 = *(v0 + 896);
    v15 = *(v10 + 8);

    v16 = *(v10 + 24);

    v17 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v10 + *(v17 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v7, v12, type metadata accessor for GenerationSchema);
    (*(v8 + 56))(v12, 0, 1, v71);
    v19 = v14[20];
    v18 = v14[21];
    v20 = sub_238815878(v14 + 17, v19);
    v86 = v85;
    v21 = *(v0 + 672);
    v89 = *(v0 + 656);
    v90 = v21;
    v91 = *(v0 + 688);
    v92 = *(v0 + 704);
    v22 = *(v0 + 640);
    v87 = *(v0 + 624);
    v88 = v22;
    sub_23884B7DC(&v86, v9, &v87, v20, v12, 0, 0, v13, sub_23884B648, 0, MEMORY[0x277D837D0], v19, v18);
    sub_238827E88(v12, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v9, &qword_27DF2FFC0, &unk_2388D5A80);
    v23 = v13[1];
    v24 = *(v75 + 20);
    v25 = v77[9];
    v69 = *v13;
    v72 = v25;
    v26 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v27 = *(v26 - 8);
    (*(v27 + 32))(v11 + v25, v13 + v24, v26);
    v28 = *(v13 + *(v75 + 24));
    v29 = swift_allocObject();
    *(v29 + 16) = v85;
    *v11 = v69;
    v11[1] = v23;
    *(v11 + v77[10]) = v28;
    v30 = (v11 + v77[11]);
    *v30 = sub_238830F10;
    v30[1] = 0;
    v31 = (v11 + v77[12]);
    *v31 = sub_238859730;
    v31[1] = v29;
    v33 = *v11;
    v32 = v11[1];
    (*(v27 + 16))(&v83[v81[9]], v11 + v72, v26);

    sub_238827E88(v11, &qword_27DF2FFC8, &qword_2388D5D30);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v35 = swift_allocObject();
    *(v35 + 2) = v33;
    *(v35 + 3) = v32;
    *(v35 + 4) = v85;
    *v83 = v33;
    *(v83 + 1) = v32;
    *&v83[v81[10]] = v28;
    v36 = &v83[v81[11]];
    *v36 = sub_2388596B0;
    v36[1] = v34;
    v37 = &v83[v81[12]];
    v38 = sub_238859748;
    *v37 = sub_238859748;
    v37[1] = v35;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v39 = *(v0 + 1048);
    v40 = *(v0 + 1040);
    v41 = *(v0 + 1032);
    v67 = *(v0 + 1024);
    v42 = *(v0 + 1016);
    v65 = *(v0 + 1008);
    v43 = *(v0 + 1000);
    v44 = *(v0 + 976);
    v45 = *(v0 + 944);
    v46 = *(v0 + 936);
    v78 = *(v0 + 992);
    v80 = *(v0 + 928);
    v82 = *(v0 + 912);
    v84 = *(v0 + 920);
    v73 = *(v0 + 984);
    v76 = *(v0 + 904);
    v47 = *(v0 + 896);
    v70 = *(v0 + 706);

    sub_2388594C4(v44, type metadata accessor for GenerationSchema.Kind);
    v48 = v47[15];
    v66 = v47[16];
    v68 = sub_238815878(v47 + 12, v48);
    v86 = v85;
    v49 = *(v0 + 672);
    v89 = *(v0 + 656);
    v90 = v49;
    v91 = *(v0 + 688);
    v92 = *(v0 + 704);
    v50 = *(v0 + 640);
    v87 = *(v0 + 624);
    v88 = v50;
    sub_238857D9C(v40, v45, type metadata accessor for GenerationSchema);
    (*(v42 + 56))(v45, 0, 1, v65);
    sub_238857D9C(v40, v41, type metadata accessor for GenerationSchema);
    v51 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v52 = swift_allocObject();
    sub_2388595CC(v41, v52 + v51, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v86, v73, &v87, v68, v45, v70, 0, v46, sub_238859698, v52, &type metadata for GeneratedContent, v48, v66);

    sub_238827E88(v45, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v73, &qword_27DF2FFC0, &unk_2388D5A80);
    v53 = v46[1];
    v74 = *v46;
    v54 = *(v76 + 20);
    v55 = v78[9];
    v56 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v56 - 8) + 16))(v43 + v55, v46 + v54, v56);
    v28 = *(v46 + *(v76 + 24));
    sub_2388595CC(v46, v80, type metadata accessor for RawResponseStream);
    v57 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v35 = swift_allocObject();
    sub_2388595CC(v80, v35 + v57, type metadata accessor for RawResponseStream);
    *(v35 + ((v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v85;
    *v43 = v74;
    v43[1] = v53;
    *(v43 + v78[10]) = v28;
    v58 = (v43 + v78[11]);
    *v58 = sub_2388313C0;
    v58[1] = 0;
    v59 = (v43 + v78[12]);
    v38 = sub_2388596B4;
    *v59 = sub_2388596B4;
    v59[1] = v35;
  }

  *(v0 + 1080) = v35;
  *(v0 + 1072) = v38;
  v60 = *(MEMORY[0x277D857C8] + 4);
  v61 = swift_task_alloc();
  *(v0 + 1088) = v61;
  v62 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v61 = v0;
  v61[1] = sub_238849B08;
  v63 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 792, v28, &type metadata for ResponseEnvelope, v62, v63);
}

uint64_t sub_238849B08()
{
  v2 = *v1;
  v3 = *(*v1 + 1088);
  v4 = *v1;
  *(*v1 + 1096) = v0;

  v5 = *(v2 + 1064);
  v6 = *(v2 + 1056);
  if (v0)
  {
    v7 = sub_238849FA8;
  }

  else
  {
    v7 = sub_238849C44;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238849C44()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 840);
  *(v0 + 744) = *(v0 + 824);
  *(v0 + 760) = v4;
  *(v0 + 776) = *(v0 + 856);
  v5 = *(v0 + 808);
  *(v0 + 712) = *(v0 + 792);
  *(v0 + 728) = v5;
  v3(v0 + 712);
  if (v1)
  {
    sub_238856720(v0 + 712);
    v6 = *(v0 + 1000);
    sub_2388594C4(*(v0 + 1040), type metadata accessor for GenerationSchema);
    sub_238827E88(v6, &qword_27DF2FFD0, &qword_2388D6160);
    v18 = *(v0 + 1040);
    v19 = *(v0 + 1032);
    v20 = *(v0 + 1000);
    v21 = *(v0 + 984);
    v22 = *(v0 + 976);
    v23 = *(v0 + 960);
    v24 = *(v0 + 944);
    v25 = *(v0 + 936);
    v26 = *(v0 + 928);
  }

  else
  {
    v7 = *(v0 + 1040);
    v8 = *(v0 + 1000);
    v9 = *(v0 + 888);
    v10 = *(v0 + 880);
    v11 = *(v0 + 872);
    sub_238856720(v0 + 712);
    sub_2388594C4(v7, type metadata accessor for GenerationSchema);
    sub_238827E88(v8, &qword_27DF2FFD0, &qword_2388D6160);
    v12 = *(v0 + 128);
    *(v0 + 264) = *(v0 + 112);
    *(v0 + 280) = v12;
    *(v0 + 296) = *(v0 + 144);
    *(v0 + 312) = *(v0 + 160);
    v13 = *(v0 + 64);
    *(v0 + 200) = *(v0 + 48);
    *(v0 + 216) = v13;
    v14 = *(v0 + 96);
    *(v0 + 232) = *(v0 + 80);
    *(v0 + 248) = v14;
    v15 = *(v0 + 32);
    *(v0 + 168) = *(v0 + 16);
    *(v0 + 184) = v15;
    v16 = swift_task_alloc();
    v16[2] = v10;
    v16[3] = v9;
    v16[4] = v10;
    v17 = sub_238810E44(&qword_27DF2FFD8, &unk_2388D6170);
    sub_23884479C(sub_238856830, v17, v10, v9, v11);
    v29 = *(v0 + 1040);
    v30 = *(v0 + 1032);
    v31 = *(v0 + 1000);
    v32 = *(v0 + 984);
    v33 = *(v0 + 976);
    v34 = *(v0 + 960);
    v35 = *(v0 + 944);
    v40 = *(v0 + 936);
    v41 = *(v0 + 928);
    v36 = *(v0 + 280);
    *(v0 + 568) = *(v0 + 264);
    *(v0 + 584) = v36;
    *(v0 + 600) = *(v0 + 296);
    *(v0 + 616) = *(v0 + 312);
    v37 = *(v0 + 216);
    *(v0 + 504) = *(v0 + 200);
    *(v0 + 520) = v37;
    v38 = *(v0 + 248);
    *(v0 + 536) = *(v0 + 232);
    *(v0 + 552) = v38;
    v39 = *(v0 + 184);
    *(v0 + 472) = *(v0 + 168);
    *(v0 + 488) = v39;
    sub_238827E88(v0 + 472, &qword_27DF2FFD8, &unk_2388D6170);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_238849FA8()
{
  v1 = v0[137];
  v2 = v0[125];
  sub_2388594C4(v0[130], type metadata accessor for GenerationSchema);
  sub_238827E88(v2, &qword_27DF2FFD0, &qword_2388D6160);
  v3 = v0[130];
  v4 = v0[129];
  v5 = v0[125];
  v6 = v0[123];
  v7 = v0[122];
  v8 = v0[120];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[116];

  v12 = v0[1];

  return v12();
}

uint64_t sub_23884A0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v14 = v9;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v10 = *(a4 + 8);
  v11 = *(v10 + 8);
  sub_238814698(v13[0], v5, v9);

  return v11(v13, a3, v10);
}

uint64_t LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 200) = v16;
  *(v9 + 208) = v8;
  *(v9 + 184) = a8;
  *(v9 + 192) = v15;
  *(v9 + 98) = a7;
  *(v9 + 168) = a5;
  *(v9 + 176) = a6;
  *(v9 + 152) = a3;
  *(v9 + 160) = a4;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  if (a2)
  {
    swift_getObjectType();
    v10 = sub_2388D2B38();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v9 + 216) = v10;
  *(v9 + 224) = v12;

  return MEMORY[0x2822009F8](sub_23884A21C, v10);
}

uint64_t sub_23884A21C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  *(v0 + 104) = *(v0 + 160);
  *(v0 + 112) = v2;
  *(v0 + 120) = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D837D0];
  v4 = *(MEMORY[0x277D837D0] - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v0 + 104, v3);
  v7 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v7)(&v26);
  v8 = *(v4 + 8);
  v9 = MEMORY[0x277D837D0];
  v8(v6, MEMORY[0x277D837D0]);
  sub_23881FAF4(v26);

  v10 = *(v0 + 120);
  v8(v0 + 104, v9);

  *(v0 + 128) = v10;
  v11 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v11;
  v12 = *(v1 + 32);
  v13 = *(v1 + 48);
  v14 = *(v1 + 64);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v13;
  *(v0 + 80) = v14;
  *(v0 + 48) = v12;
  v16 = swift_task_alloc();
  *(v0 + 232) = v16;
  *v16 = v0;
  v16[1] = sub_23884A444;
  v17 = *(v0 + 208);
  v18 = *(v0 + 192);
  v19 = *(v0 + 98);
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 136);
  v25 = *(v0 + 200);

  return LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(v22, v20, v21, (v0 + 128), v15, v19, v0 + 16, v18);
}

uint64_t sub_23884A444()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  v2[30] = v0;

  v4 = v2[16];

  v5 = v2[27];
  v6 = v2[28];
  if (v0)
  {
    v7 = sub_23884A57C;
  }

  else
  {
    v7 = sub_23884A564;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t LanguageModelSession.respond<A>(generating:includeSchemaInPrompt:options:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 184) = v16;
  *(v9 + 192) = v8;
  *(v9 + 168) = a8;
  *(v9 + 176) = v15;
  *(v9 + 152) = a6;
  *(v9 + 160) = a7;
  *(v9 + 98) = a5;
  *(v9 + 136) = a3;
  *(v9 + 144) = a4;
  *(v9 + 120) = a1;
  *(v9 + 128) = a2;
  if (a2)
  {
    swift_getObjectType();
    v10 = sub_2388D2B38();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v9 + 200) = v10;
  *(v9 + 208) = v12;

  return MEMORY[0x2822009F8](sub_23884A644, v10);
}

uint64_t sub_23884A644()
{
  v1 = *(v0 + 168);
  (*(v0 + 160))();
  v2 = *(v0 + 152);
  *(v0 + 112) = *(v0 + 104);
  v3 = *(v2 + 32);
  v4 = *(v2 + 48);
  v5 = *(v2 + 64);
  *(v0 + 96) = *(v2 + 80);
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 48) = v3;
  v6 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v6;
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = sub_23884A780;
  v9 = *(v0 + 192);
  v10 = *(v0 + 176);
  v11 = *(v0 + 98);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v17 = *(v0 + 184);

  return LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(v14, v12, v13, (v0 + 112), v7, v11, v0 + 16, v10);
}

uint64_t sub_23884A780()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  v4 = v2[14];

  v5 = v2[25];
  v6 = v2[26];
  if (v0)
  {
    v7 = sub_23884A8A4;
  }

  else
  {
    v7 = sub_23884A564;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t LanguageModelSession.streamResponse(to:schema:includeSchemaInPrompt:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v91 = a3;
  v100 = a5;
  v97 = type metadata accessor for GenerationSchema(0);
  v96 = *(v97 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v88[1] = v9;
  v89 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for RawResponseStream();
  v92 = *(v99 - 8);
  v10 = *(v92 + 64);
  v11 = MEMORY[0x28223BE20](v99);
  v94 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = (v88 - v13);
  v15 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v88 - v17;
  v90 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v19 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v21 = (v88 - v20);
  v22 = type metadata accessor for GenerationSchema.Kind(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = v88 - v28;
  v30 = *a1;
  v31 = *(a4 + 48);
  v110 = *(a4 + 32);
  v111 = v31;
  v112 = *(a4 + 64);
  v113 = *(a4 + 80);
  v32 = *(a4 + 16);
  v108 = *a4;
  v109 = v32;
  v33 = type metadata accessor for PromptTemplate();
  (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
  v34 = a2;
  sub_238857D9C(a2, v25, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v95 = v30;
  if (EnumCaseMultiPayload == 4)
  {
    v36 = *(v25 + 1);

    v37 = *(v25 + 3);

    v38 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(&v25[*(v38 + 64)], type metadata accessor for StringGuides);
    sub_238857D9C(v34, v18, type metadata accessor for GenerationSchema);
    (*(v96 + 56))(v18, 0, 1, v97);
    v39 = *(v98 + 20);
    v40 = *(v98 + 21);
    v41 = sub_238815878(v98 + 17, v39);
    v107 = v30;
    v103 = v110;
    v104 = v111;
    v105 = v112;
    v106 = v113;
    v101 = v108;
    v102 = v109;
    sub_23884B7DC(&v107, v29, &v101, v41, v18, 0, 1, v14, sub_23884B648, 0, MEMORY[0x277D837D0], v39, v40);
    sub_238827E88(v18, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v29, &qword_27DF2FFC0, &unk_2388D5A80);
    v42 = *v14;
    v43 = v14[1];
    v44 = v99;
    v45 = *(v99 + 20);
    v46 = v90;
    v47 = *(v90 + 36);
    v98 = v47;
    v48 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v49 = *(v48 - 8);
    (*(v49 + 32))(&v47[v21], v14 + v45, v48);
    v50 = *(v14 + *(v44 + 24));
    v51 = swift_allocObject();
    v52 = v95;
    *(v51 + 16) = v95;
    *v21 = v42;
    v21[1] = v43;
    *(v21 + v46[10]) = v50;
    v53 = (v21 + v46[11]);
    *v53 = sub_238830F10;
    v53[1] = 0;
    v54 = (v21 + v46[12]);
    *v54 = sub_238859730;
    v54[1] = v51;
    v56 = *v21;
    v55 = v21[1];
    v57 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v58 = v100;
    (*(v49 + 16))(v100 + v57[9], &v98[v21], v48);

    sub_238827E88(v21, &qword_27DF2FFC8, &qword_2388D5D30);
    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    *(v59 + 24) = v55;
    v60 = swift_allocObject();
    *(v60 + 2) = v56;
    *(v60 + 3) = v55;
    *(v60 + 4) = v52;
    *v58 = v56;
    v58[1] = v55;
    *(v58 + v57[10]) = v50;
    v61 = (v58 + v57[11]);
    *v61 = sub_2388596B0;
    v61[1] = v59;
    v62 = (v58 + v57[12]);
    *v62 = sub_238859748;
    v62[1] = v60;
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    v64 = v30;

    sub_2388594C4(v25, type metadata accessor for GenerationSchema.Kind);
    v65 = *(v98 + 15);
    v66 = *(v98 + 16);
    v67 = sub_238815878(v98 + 12, v65);
    v107 = v64;
    v103 = v110;
    v104 = v111;
    v105 = v112;
    v106 = v113;
    v101 = v108;
    v102 = v109;
    sub_238857D9C(v34, v18, type metadata accessor for GenerationSchema);
    v68 = v96 + 56;
    (*(v96 + 56))(v18, 0, 1, v97);
    v69 = v34;
    v70 = v89;
    sub_238857D9C(v69, v89, type metadata accessor for GenerationSchema);
    v71 = (*(v68 + 24) + 16) & ~*(v68 + 24);
    v72 = swift_allocObject();
    sub_2388595CC(v70, v72 + v71, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v107, v29, &v101, v67, v18, v91 & 1, 1, v14, sub_238859698, v72, &type metadata for GeneratedContent, v65, v66);

    sub_238827E88(v18, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v29, &qword_27DF2FFC0, &unk_2388D5A80);
    v74 = *v14;
    v73 = v14[1];
    v75 = v99;
    v76 = *(v99 + 20);
    v77 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v78 = v77[9];
    v79 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v80 = v100;
    (*(*(v79 - 8) + 16))(v100 + v78, v14 + v76, v79);
    v81 = *(v14 + *(v75 + 24));
    v82 = v94;
    sub_2388595CC(v14, v94, type metadata accessor for RawResponseStream);
    v83 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v84 = (v93 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    sub_2388595CC(v82, v85 + v83, type metadata accessor for RawResponseStream);
    *(v85 + v84) = v95;
    *v80 = v74;
    v80[1] = v73;
    *(v80 + v77[10]) = v81;
    v86 = (v80 + v77[11]);
    *v86 = sub_2388313C0;
    v86[1] = 0;
    v87 = (v80 + v77[12]);
    *v87 = sub_2388596B4;
    v87[1] = v85;
  }
}

uint64_t sub_23884B2B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v8 < 0)
  {
    a2 = a1[3];
    a3 = a1[4];
    v14 = a1[2] & 0x1FF;
    sub_238814698(*a1, v6, v8);
  }

  else
  {
    v15[0] = *a1;
    v15[1] = v6;
    v16 = 2;

    v7 = sub_23881EF9C(v15);
    v6 = v10;
    v12 = v11;

    result = swift_bridgeObjectRelease_n();
    v14 = v12 & 0x1FF;
  }

  *a4 = v7;
  a4[1] = v6;
  a4[2] = v14;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

uint64_t sub_23884B368@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = a1[4];
  v10 = a1[5];
  *&v44 = v11;
  *(&v44 + 1) = v10;
  LOBYTE(v45) = 2;

  v12 = sub_23881EF9C(&v44);
  v41 = v13;
  v42 = v12;
  v40 = v14;

  swift_bridgeObjectRelease_n();
  v15 = MEMORY[0x277D84F90];
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v38 = a1[1];
  v39 = *a1;
  v46 = *(a1 + 1);
  v17 = *(a1 + 4);
  v44 = *(a1 + 3);
  v45 = v17;
  v18 = *(v16 + 16);

  sub_238827E14(&v46, v43, &qword_27DF2FD18, &unk_2388D5400);
  result = sub_238827E14(&v44, v43, &qword_27DF2FD20, &unk_2388D5C40);
  v20 = 0;
LABEL_5:
  v21 = 24 * v20;
  while (1)
  {
    if (v18 == v20)
    {

      v29 = (v40 >> 8) & 1;
      v43[0] = v15;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
      v30 = sub_2388D27B8();
      v32 = v31;

      v33 = sub_2388D3578();
      sub_2388D3578();
      *(a5 + 40) = v42;
      *(a5 + 48) = v41;
      *(a5 + 56) = v40;
      *(a5 + 57) = v29;
      *(a5 + 64) = a2;
      *(a5 + 72) = a3;
      *a5 = v30;
      *(a5 + 8) = v32;
      *(a5 + 16) = v34 / 1.0e18 + v33;
      *(a5 + 24) = v46;
      *(a5 + 80) = v42;
      *(a5 + 88) = v41;
      *(a5 + 96) = v40;
      *(a5 + 97) = v29;
      *(a5 + 104) = a2;
      *(a5 + 112) = a3;
      v35 = v45;
      *(a5 + 120) = v44;
      *(a5 + 136) = v35;
      sub_238814698(v42, v41, v40);
    }

    if (v20 >= *(v16 + 16))
    {
      break;
    }

    ++v20;
    v22 = v21 + 24;
    v23 = *(v16 + v21 + 48);
    v21 += 24;
    if ((v23 & 1) == 0)
    {
      v24 = *(v16 + v22 + 16);
      v36 = *(v16 + v22 + 8);
      v37 = a2;

      result = swift_isUniquelyReferenced_nonNull_native();
      v25 = a3;
      if ((result & 1) == 0)
      {
        result = sub_2388B686C(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_2388B686C((v26 > 1), v27 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v27 + 1;
      v28 = v15 + 16 * v27;
      *(v28 + 32) = v36;
      *(v28 + 40) = v24;
      a3 = v25;
      a2 = v37;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23884B648@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = a2;
  v23 = a6;
  v14 = type metadata accessor for Transcript.Entry(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2388D3F70;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v20 = v22;
  *(v19 + 48) = v23;
  *(v19 + 56) = a7;
  *(v19 + 80) = 0;
  *v18 = v20;
  v18[1] = a3;
  v18[2] = a1;
  v18[3] = v19;
  swift_storeEnumTagMultiPayload();
  sub_2388595CC(v18, a8, type metadata accessor for Transcript.Entry);
  (*(v15 + 56))(a8, 0, 1, v14);
}

uint64_t sub_23884B7DC@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v167 = a7;
  v138 = a6;
  v171 = a5;
  v157 = a4;
  v158 = a2;
  v182 = a8;
  v163 = a13;
  v162 = a11;
  v168 = a10;
  v166 = a9;
  v17 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v159 = *(v17 - 8);
  v160 = *(v159 + 64);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v179 = &v130 - v19;
  v165 = a12;
  v161 = *(a12 - 8);
  v20 = *(v161 + 64);
  MEMORY[0x28223BE20](v18);
  v156 = v21;
  v177 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v180 = &v130 - v24;
  v151 = sub_238810E44(&qword_27DF300A0, &qword_2388D5C60);
  v150 = *(v151 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = &v130 - v26;
  v181 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  v164 = *(v181 - 8);
  v27 = *(v164 + 64);
  v28 = MEMORY[0x28223BE20](v181);
  v176 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v29;
  MEMORY[0x28223BE20](v28);
  v178 = &v130 - v30;
  v137 = type metadata accessor for Transcript.Entry(0);
  v140 = *(v137 - 8);
  v31 = *(v140 + 64);
  v32 = MEMORY[0x28223BE20](v137);
  v139 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v141 = &v130 - v34;
  v136 = type metadata accessor for Transcript.Prompt(0);
  v35 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v37 = &v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for GenerationSchema(0);
  v134 = *(v135 - 8);
  v38 = *(v134 + 64);
  v39 = MEMORY[0x28223BE20](v135);
  v131 = &v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v132 = &v130 - v41;
  v42 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v147 = *(v42 - 8);
  v43 = *(v147 + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v173 = &v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v130 - v46;
  v48 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v169 = &v130 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v170 = (&v130 - v52);
  v175 = sub_2388D3088();
  v154 = *(v175 - 8);
  v53 = *(v154 + 64);
  v54 = MEMORY[0x28223BE20](v175);
  v172 = &v130 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v130 - v56;
  v58 = sub_2388D1058();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v62 = &v130 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *a1;
  v64 = a3[3];
  v190 = a3[2];
  v191 = v64;
  v192 = a3[4];
  v193 = *(a3 + 40);
  v65 = a3[1];
  v188 = *a3;
  v189 = v65;
  sub_2388D1048();
  v153 = sub_2388D1038();
  v152 = v66;
  v67 = *(v59 + 8);
  v67(v62, v58);
  sub_2388D1048();
  v145 = sub_2388D1038();
  v144 = v68;
  v133 = v67;
  v67(v62, v58);
  v69 = v63;
  v174 = v57;
  v70 = v171;
  sub_2388D3058();
  v143 = sub_238842970();
  if (v63)
  {
    v142 = v14;
    sub_238827E14(v70, v47, &qword_27DF2FE20, &qword_2388D5740);
    v71 = 1;
    v72 = v135;
    if ((*(v134 + 48))(v47, 1, v135) != 1)
    {
      v73 = v47;
      v74 = v132;
      sub_2388595CC(v73, v132, type metadata accessor for GenerationSchema);
      v75 = v131;
      sub_238857D9C(v74, v131, type metadata accessor for GenerationSchema);
      v76 = (v75 + *(v72 + 20));
      v77 = v76[1];
      v135 = *v76;

      sub_2388C24EC();
      v134 = v78;
      v130 = v79;
      v80 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
      v81 = v170;
      GenerationSchema.jsonSchema()(v170 + *(v80 + 24));
      sub_2388594C4(v75, type metadata accessor for GenerationSchema);
      sub_2388594C4(v74, type metadata accessor for GenerationSchema);
      v71 = 0;
      *v81 = v135;
      v81[1] = v77;
      v82 = v130;
      v81[2] = v134;
      v81[3] = v82;
    }

    v83 = type metadata accessor for Transcript.ResponseFormat(0);
    v84 = *(*(v83 - 8) + 56);
    v85 = v170;
    v84(v170, v71, 1, v83);
    v187 = v69;
    v135 = sub_238856398(&v187, sub_2388596CC, sub_2388596D0);
    if (v138)
    {
      sub_238827E14(v85, v169, &qword_27DF2FF00, &qword_2388D57E0);
    }

    else
    {
      v84(v169, 1, 1, v83);
    }

    sub_2388D1048();
    v86 = sub_2388D1038();
    v88 = v87;
    v133(v62, v58);
    LOBYTE(v186[0]) = 1;
    LOBYTE(v185[0]) = 1;
    LOBYTE(v187) = 1;
    LOBYTE(v184[0]) = 1;
    v89 = *(v136 + 28);
    v84(&v37[v89], 1, 1, v83);
    *v37 = v86;
    *(v37 + 1) = v88;
    *(v37 + 3) = 0;
    *(v37 + 4) = 0;
    *(v37 + 2) = v135;
    v37[40] = -2;
    *(v37 + 41) = v186[0];
    *(v37 + 11) = *(v186 + 3);
    *(v37 + 6) = 0;
    v37[56] = 1;
    *(v37 + 57) = v185[0];
    *(v37 + 15) = *(v185 + 3);
    *(v37 + 8) = 0;
    v37[72] = 1;
    v90 = v184[0];
    *(v37 + 19) = *(v184 + 3);
    *(v37 + 73) = v90;
    *(v37 + 10) = 0;
    v37[88] = 1;
    *(v37 + 89) = *v183;
    *(v37 + 23) = *&v183[3];
    *(v37 + 12) = 0;
    *(v37 + 52) = 1;
    sub_238856608(v169, &v37[v89]);
    v91 = v141;
    sub_238857D9C(v37, v141, type metadata accessor for Transcript.Prompt);
    swift_storeEnumTagMultiPayload();
    v92 = v139;
    sub_238857D9C(v91, v139, type metadata accessor for Transcript.Entry);
    swift_getKeyPath();
    v93 = v142;
    v187 = v142;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
    sub_2388D1158();

    v187 = v93;
    swift_getKeyPath();
    sub_2388D1178();

    swift_beginAccess();
    v94 = *(v93 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v93 + 16) = v94;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v94 = sub_2388B7500(0, v94[2] + 1, 1, v94);
      *(v142 + 16) = v94;
    }

    v97 = v94[2];
    v96 = v94[3];
    if (v97 >= v96 >> 1)
    {
      v94 = sub_2388B7500(v96 > 1, v97 + 1, 1, v94);
      *(v142 + 16) = v94;
    }

    v94[2] = v97 + 1;
    sub_2388595CC(v92, v94 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v97, type metadata accessor for Transcript.Entry);
    v98 = v142;
    *(v142 + 16) = v94;
    swift_endAccess();
    v187 = v98;
    swift_getKeyPath();
    v14 = v98;
    sub_2388D1168();

    sub_2388594C4(v91, type metadata accessor for Transcript.Entry);
    sub_238827E88(v170, &qword_27DF2FF00, &qword_2388D57E0);
    sub_2388594C4(v37, type metadata accessor for Transcript.Prompt);
    v70 = v171;
  }

  v99 = v150;
  v100 = v149;
  v101 = v151;
  (*(v150 + 104))(v149, *MEMORY[0x277D858A0], v151);
  v171 = type metadata accessor for RawResponseStream();
  v102 = v182 + *(v171 + 20);
  v103 = v178;
  sub_2388D2C78();
  (*(v99 + 8))(v100, v101);
  swift_getKeyPath();
  v187 = v14;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v170 = *(*(v14 + 16) + 16);
  v104 = sub_2388D2BE8();
  (*(*(v104 - 8) + 56))(v180, 1, 1, v104);
  v105 = v161;
  v106 = v165;
  (*(v161 + 16))(v177, v157, v165);
  sub_238827E14(v70, v173, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E14(v158, v179, &qword_27DF2FFC0, &unk_2388D5A80);
  v107 = v164;
  (*(v164 + 16))(v176, v103, v181);
  v108 = v154;
  (*(v154 + 16))(v172, v174, v175);
  v109 = (*(v105 + 80) + 88) & ~*(v105 + 80);
  v110 = (v156 + *(v147 + 80) + v109) & ~*(v147 + 80);
  v111 = (v148 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = (*(v159 + 80) + v111 + 82) & ~*(v159 + 80);
  v159 = (v112 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
  v158 = (v112 + v160 + 31) & 0xFFFFFFFFFFFFFFF8;
  v160 = (*(v107 + 80) + v158 + 16) & ~*(v107 + 80);
  v169 = (v155 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
  v157 = (*(v108 + 80) + v169 + 8) & ~*(v108 + 80);
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  *(v113 + 24) = 0;
  *(v113 + 32) = v162;
  *(v113 + 40) = v106;
  *(v113 + 48) = v163;
  *(v113 + 56) = v14;
  *(v113 + 64) = v143 & 1;
  v114 = v144;
  *(v113 + 72) = v145;
  *(v113 + 80) = v114;
  (*(v105 + 32))(v113 + v109, v177, v106);
  sub_238840FB4(v173, v113 + v110, &qword_27DF2FE20, &qword_2388D5740);
  v115 = v113 + v111;
  v116 = v191;
  *(v115 + 32) = v190;
  *(v115 + 48) = v116;
  *(v115 + 64) = v192;
  *(v115 + 80) = v193;
  v117 = v189;
  *v115 = v188;
  *(v115 + 16) = v117;
  sub_238840FB4(v179, v113 + v112, &qword_27DF2FFC0, &unk_2388D5A80);
  v118 = v113 + v159;
  v119 = v153;
  v120 = v152;
  *v118 = v153;
  *(v118 + 8) = v120;
  *(v118 + 16) = v167 & 1;
  v121 = (v113 + v158);
  v122 = v168;
  *v121 = v166;
  v121[1] = v122;
  v123 = v181;
  (*(v107 + 32))(v113 + v160, v176, v181);
  *(v113 + v169) = v170;
  v124 = v175;
  (*(v108 + 32))(v113 + v157, v172, v175);

  v125 = sub_2388535B0(0, 0, v180, &unk_2388D5C78, v113);
  v126 = swift_allocObject();
  *(v126 + 16) = v14;
  *(v126 + 24) = v125;

  v127 = v178;
  sub_2388D2CA8();
  (*(v107 + 8))(v127, v123);
  result = (*(v108 + 8))(v174, v124);
  v129 = v182;
  *v182 = v119;
  v129[1] = v120;
  *(v129 + *(v171 + 24)) = v125;
  return result;
}

uint64_t sub_23884CB84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v63 = a4;
  v64 = a6;
  v60 = a5;
  v61 = a2;
  v62 = a3;
  v66 = a9;
  v67 = type metadata accessor for Transcript.Entry(0);
  v65 = *(v67 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_2388D0D88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = a1[1];
  v68[0] = *a1;
  v68[1] = v20;

  GeneratedContent.init(id:text:)(v68, a7, a8, &v69);
  if (v10)
  {

    return (*(v65 + 56))(v66, 1, 1, v67);
  }

  else
  {
    v22 = v69;
    v23 = v70;
    v52 = v69;
    v51 = v70;
    v50 = v71;
    v55 = v72;
    v59 = v73;
    v54 = v74;
    v56 = 0;
    v24 = (a10 + *(type metadata accessor for GenerationSchema(0) + 20));
    v25 = *v24;
    v57 = v24[1];
    v58 = v25;
    v26 = sub_2388D0DC8();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = v23;
    v30 = v50;
    sub_238814698(v22, v29, v50);

    v31 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v32 = *(v18 + 72);
    v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v34 = swift_allocObject();
    v53 = xmmword_2388D3F70;
    *(v34 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v75 = v34;
    sub_238859634(&qword_27DF2FA08, MEMORY[0x277CC8718]);
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
    sub_2388D2F08();
    sub_2388D0D98();
    if (v55)
    {
      v35 = 0x4000000000000100;
    }

    else
    {
      v35 = 0x4000000000000000;
    }

    v36 = v52;
    v37 = v51;
    v38 = sub_238819C1C(v52, v51, v30, v31);
    v40 = v39;

    sub_238810DC4(v36, v37, v30);
    v41 = v54;

    sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
    v42 = swift_allocObject();
    *(v42 + 16) = v53;
    v43 = v64;
    *(v42 + 32) = v60;
    *(v42 + 40) = v43;
    v44 = v57;
    *(v42 + 48) = v58;
    *(v42 + 56) = v44;
    *(v42 + 64) = v36;
    *(v42 + 72) = v37;
    v45 = v59;
    *(v42 + 80) = v35 & 0xFFFFFFFFFFFFFFF8 | v30 & 7;
    *(v42 + 88) = v45;
    *(v42 + 96) = v41;
    *(v42 + 104) = v38;
    *(v42 + 112) = v40;
    v46 = v63;
    *v16 = v62;
    v16[1] = v46;
    v16[2] = v61;
    v16[3] = v42;
    v47 = v67;
    swift_storeEnumTagMultiPayload();
    v48 = v66;
    sub_2388595CC(v16, v66, type metadata accessor for Transcript.Entry);
    (*(v65 + 56))(v48, 0, 1, v47);
  }
}

uint64_t sub_23884D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = v26;
  *(v8 + 336) = v27;
  *(v8 + 312) = v24;
  *(v8 + 320) = v25;
  *(v8 + 296) = v22;
  *(v8 + 304) = v23;
  *(v8 + 280) = v20;
  *(v8 + 288) = v21;
  *(v8 + 50) = v19;
  *(v8 + 272) = v18;
  *(v8 + 240) = v16;
  *(v8 + 256) = v17;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a4;
  *(v8 + 216) = a6;
  *(v8 + 49) = a5;
  *(v8 + 200) = a1;
  v9 = *(*(sub_238810E44(&qword_27DF300B8, &unk_2388D5D20) - 8) + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v10 = *(*(sub_238810E44(&qword_27DF2FE30, &unk_2388D5750) - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v11 = sub_2388D2358();
  *(v8 + 368) = v11;
  v12 = *(v11 - 8);
  *(v8 + 376) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23884D1B4, 0, 0);
}

uint64_t sub_23884D1B4()
{
  v1 = 0xD000000000000014;
  v2 = *(v0 + 208);
  v3 = v2[10];
  v4 = v2[11];
  sub_238815878(v2 + 7, v3);
  if (((*(v4 + 32))(v3, v4) & 1) == 0)
  {
    v12 = "_$observationRegistrar";
    v13 = 1;
    goto LABEL_8;
  }

  if (*(v0 + 49) != 1)
  {
    v12 = "Model is unavailable";
    v1 = 0xD000000000000076;
    v13 = 7;
LABEL_8:
    v14 = v12 | 0x8000000000000000;
    sub_2388151C8();
    v15 = swift_allocError();
    *v16 = v1;
    *(v16 + 8) = v14;
    *(v16 + 16) = MEMORY[0x277D84F90];
    *(v16 + 24) = 0;
    *(v16 + 32) = v13;
    swift_willThrow();
    *(v0 + 120) = v15;
    v17 = v15;
    v18 = v15;
    v19 = v15;
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 352);
      v21 = *(v0 + 360);
      v22 = *(v0 + 344);
      v23 = *(v0 + 208);
      v74 = *(v0 + 112);
      v75 = *(v0 + 104);
      swift_getKeyPath();
      *(v0 + 184) = v23;
      sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
      sub_2388D1158();

      swift_beginAccess();
      v24 = *(v23 + 16);

      sub_2388D10A8();
      v25 = sub_2388D1138();
      (*(*(v25 - 8) + 56))(v21, 0, 1, v25);
      v26 = v20;
      sub_238827E14(v21, v20, &qword_27DF2FE30, &unk_2388D5750);
      v27 = _s15GenerationErrorO7RefusalV16TranscriptRecordCMa();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      v30 = swift_allocObject();
      v31 = (v30 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
      v32 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
      (*(*(v32 - 8) + 56))(v22, 1, 1, v32);
      *v31 = 0;
      v33 = *(sub_238810E44(&qword_27DF300C0, &qword_2388D5C88) + 28);
      v34 = sub_238810E44(&qword_27DF300C8, &qword_2388D5C90);
      bzero(v31 + v33, *(*(v34 - 8) + 64));
      sub_238840FB4(v22, v31 + v33, &qword_27DF300B8, &unk_2388D5D20);
      sub_238827E88(v21, &qword_27DF2FE30, &unk_2388D5750);
      *(v30 + 16) = v24;
      sub_238840FB4(v26, v30 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
      sub_2388151C8();
      v19 = swift_allocError();
      *v35 = v30;
      *(v35 + 8) = v75;
      *(v35 + 16) = v74;
      *(v35 + 24) = MEMORY[0x277D84F90];
      *(v35 + 32) = 8;
    }

    v36 = *(v0 + 256);
    v37 = type metadata accessor for PromptTemplate();
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) != 1)
    {
LABEL_19:
      v54 = *(v0 + 296);
      *(v0 + 168) = v19;
      v55 = v19;
      v56 = v19;
      sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
      sub_2388D2CD8();
      *(v0 + 176) = v19;
      if (swift_dynamicCast())
      {
        v57 = *(v0 + 16);
        v58 = *(v0 + 24);
        v59 = *(v0 + 32);
        v60 = *(v0 + 40);
        v61 = *(v0 + 48);
        if (v61 == 2)
        {
          sub_238858588();
          v62 = v57;
          v63 = v58;
          v64 = v59;
          v65 = v60;
          LOBYTE(v61) = 2;
        }

        else
        {
          v62 = *(v0 + 16);
          v63 = *(v0 + 24);
          v64 = *(v0 + 32);
          v65 = *(v0 + 40);
        }

        sub_238857E3C(v62, v63, v64, v65, v61);
      }

      v67 = *(v0 + 384);
      v66 = *(v0 + 392);
      v69 = *(v0 + 352);
      v68 = *(v0 + 360);
      v70 = *(v0 + 344);
      swift_willThrow();

      v71 = *(v0 + 8);

      __asm { BRAA            X1, X16 }
    }

    v38 = *(v0 + 304);
    v39 = *(v0 + 208);
    os_unfair_lock_lock((v39 + 32));
    v40 = *(v39 + 40);

    swift_getKeyPath();
    *(v0 + 128) = v39;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
    sub_2388D1158();

    v9 = swift_beginAccess();
    v41 = __OFSUB__(v38, 1);
    v42 = v38 - 1;
    if (v41)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v39 + 16);
      v44 = *(v43 + 16);
      if (v44 >= v42)
      {
        if ((v42 & 0x8000000000000000) == 0)
        {
          v45 = *(v0 + 208);
          v46 = *(v39 + 16);

          v47 = sub_238853D50(v42, v44, v43);

          *(v39 + 40) = v47;
          os_unfair_lock_unlock((v39 + 32));
          swift_getKeyPath();
          *(v0 + 136) = v45;
          sub_2388D1158();

          v48 = *(v39 + 16);
          v49 = *(v48 + 16);
          if (v49 >= v42)
          {
            v73 = v15;
            if (v49 == v42)
            {
            }

            else
            {
              v50 = *(type metadata accessor for Transcript.Entry(0) - 8);
              sub_238853E48(v48, v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), 0, (2 * v42) | 1);
              v48 = v51;
            }

            v52 = *(v0 + 208);
            swift_getKeyPath();
            *(v0 + 144) = v52;
            sub_2388D1158();

            *(v0 + 152) = v52;
            swift_getKeyPath();
            sub_2388D1178();

            v53 = *(v39 + 16);
            *(v39 + 16) = v48;

            *(v0 + 160) = v52;
            swift_getKeyPath();
            sub_2388D1168();

            v15 = v73;
            goto LABEL_19;
          }

LABEL_30:
          __break(1u);
          return MEMORY[0x2822009F8](v9, v10, v11);
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v5 = *(v0 + 392);
  v6 = v2[10];
  v7 = v2[11];
  sub_238815878(v2 + 7, v6);
  *(v0 + 400) = (*(v7 + 24))(v6, v7);
  *(v0 + 408) = v8;
  sub_2388D2348();
  v9 = sub_23884D9A0;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23884D9A0()
{
  v35 = v0;
  if (qword_27DF2F9F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = *(v0 + 224);
  v3 = sub_2388D2388();
  sub_2388413AC(v3, qword_27DF3F910);

  v4 = sub_2388D2368();
  v5 = sub_2388D2E38();

  if (sub_2388D2E68())
  {
    v6 = *(v0 + 400);
    v7 = *(v0 + 408);
    v8 = *(v0 + 392);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_2388C0770(v6, v7, &v34);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_2388C0770(v10, v9, &v34);
    v13 = sub_2388D2338();
    _os_signpost_emit_with_name_impl(&dword_23880E000, v4, v5, v13, "PromptCompletion", "SessionID=%{public}s RequestID=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE68030](v12, -1, -1);
    MEMORY[0x23EE68030](v11, -1, -1);
  }

  (*(*(v0 + 376) + 16))(*(v0 + 384), *(v0 + 392), *(v0 + 368));
  v14 = sub_2388D23C8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 416) = sub_2388D23B8();
  v17 = swift_task_alloc();
  *(v0 + 424) = v17;
  *v17 = v0;
  v17[1] = sub_23884DC58;
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 296);
  v21 = *(v0 + 280);
  v22 = *(v0 + 50);
  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v25 = *(v0 + 248);
  v26 = *(v0 + 256);
  v27 = *(v0 + 232);
  v28 = *(v0 + 240);
  v29 = *(v0 + 216);
  v30 = *(v0 + 224);
  v31 = *(v0 + 200);
  v32 = *(v0 + 208);
  v44 = *(v0 + 336);
  v45 = v0 + 192;
  v43 = v18;
  v42 = v19;
  v41 = v20;
  v40 = v21;
  v39 = v22;
  v37 = v24;
  v38 = v23;

  return sub_23884E5E8(v31, v32, v27, v28, v25, v26, v29, v30);
}

uint64_t sub_23884DC58()
{
  v2 = *(*v1 + 424);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_23884DE58;
  }

  else
  {
    v3 = sub_23884DD68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23884DD68()
{
  v1 = v0[49];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  sub_2388CEFF0(v0[52], v0[50], v0[51], v0[27], v0[28]);

  (*(v3 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_23884DE58()
{
  v1 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[27];
  v8 = v0[28];
  v0[54] = v0[24];
  sub_2388CEFF0(v2, v3, v1, v7, v8);

  (*(v6 + 8))(v4, v5);

  return MEMORY[0x2822009F8](sub_23884DF14, 0, 0);
}

uint64_t sub_23884DF14()
{
  v1 = *(v0 + 432);
  *(v0 + 120) = v1;
  v2 = v1;
  v3 = v1;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  v4 = v1;
  v61 = v1;
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 352);
    v6 = *(v0 + 360);
    v7 = *(v0 + 344);
    v8 = *(v0 + 208);
    v59 = *(v0 + 104);
    v60 = *(v0 + 112);
    swift_getKeyPath();
    *(v0 + 184) = v8;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
    sub_2388D1158();

    swift_beginAccess();
    v9 = *(v8 + 16);

    sub_2388D10A8();
    v10 = sub_2388D1138();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    v11 = v5;
    sub_238827E14(v6, v5, &qword_27DF2FE30, &unk_2388D5750);
    v12 = _s15GenerationErrorO7RefusalV16TranscriptRecordCMa();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = (v15 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
    v17 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    *v16 = 0;
    v18 = *(sub_238810E44(&qword_27DF300C0, &qword_2388D5C88) + 28);
    v19 = sub_238810E44(&qword_27DF300C8, &qword_2388D5C90);
    bzero(v16 + v18, *(*(v19 - 8) + 64));
    v20 = v16 + v18;
    v1 = v61;
    sub_238840FB4(v7, v20, &qword_27DF300B8, &unk_2388D5D20);
    sub_238827E88(v6, &qword_27DF2FE30, &unk_2388D5750);
    *(v15 + 16) = v9;
    sub_238840FB4(v11, v15 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
    sub_2388151C8();
    v4 = swift_allocError();
    *v21 = v15;
    *(v21 + 8) = v59;
    v22 = MEMORY[0x277D84F90];
    *(v21 + 16) = v60;
    *(v21 + 24) = v22;
    *(v21 + 32) = 8;
  }

  v23 = *(v0 + 256);
  v24 = type metadata accessor for PromptTemplate();
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
  {
    goto LABEL_12;
  }

  v25 = *(v0 + 304);
  v26 = *(v0 + 208);
  os_unfair_lock_lock((v26 + 32));
  v27 = *(v26 + 40);

  swift_getKeyPath();
  *(v0 + 128) = v26;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  result = swift_beginAccess();
  v29 = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v30 = *(v26 + 16);
  v31 = *(v30 + 16);
  if (v31 < v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = *(v0 + 208);
  v33 = *(v26 + 16);

  v34 = sub_238853D50(v29, v31, v30);

  *(v26 + 40) = v34;
  os_unfair_lock_unlock((v26 + 32));
  swift_getKeyPath();
  *(v0 + 136) = v32;
  sub_2388D1158();

  v35 = *(v26 + 16);
  v36 = *(v35 + 16);
  if (v36 < v29)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v36 == v29)
  {
  }

  else
  {
    v37 = *(type metadata accessor for Transcript.Entry(0) - 8);
    sub_238853E48(v35, v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), 0, (2 * v29) | 1);
    v35 = v38;
  }

  v39 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 144) = v39;
  sub_2388D1158();

  *(v0 + 152) = v39;
  swift_getKeyPath();
  sub_2388D1178();

  v40 = *(v26 + 16);
  *(v26 + 16) = v35;

  *(v0 + 160) = v39;
  swift_getKeyPath();
  sub_2388D1168();

  v1 = v61;
LABEL_12:
  v41 = *(v0 + 296);
  *(v0 + 168) = v4;
  v42 = v4;
  v43 = v4;
  sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  sub_2388D2CD8();
  *(v0 + 176) = v4;
  if (swift_dynamicCast())
  {
    v44 = *(v0 + 16);
    v45 = *(v0 + 24);
    v46 = *(v0 + 32);
    v47 = *(v0 + 40);
    v48 = *(v0 + 48);
    if (v48 == 2)
    {
      sub_238858588();
      v49 = v44;
      v50 = v45;
      v51 = v46;
      v52 = v47;
      LOBYTE(v48) = 2;
    }

    else
    {
      v49 = *(v0 + 16);
      v50 = *(v0 + 24);
      v51 = *(v0 + 32);
      v52 = *(v0 + 40);
    }

    sub_238857E3C(v49, v50, v51, v52, v48);
  }

  v54 = *(v0 + 384);
  v53 = *(v0 + 392);
  v56 = *(v0 + 352);
  v55 = *(v0 + 360);
  v57 = *(v0 + 344);
  swift_willThrow();

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_23884E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v35;
  *(v8 + 528) = v34;
  *(v8 + 520) = v33;
  *(v8 + 504) = v31;
  *(v8 + 512) = v32;
  *(v8 + 488) = v30;
  *(v8 + 472) = v29;
  *(v8 + 840) = v28;
  *(v8 + 456) = v27;
  *(v8 + 440) = a7;
  *(v8 + 448) = a8;
  *(v8 + 424) = a5;
  *(v8 + 432) = a6;
  *(v8 + 408) = a3;
  *(v8 + 416) = a4;
  *(v8 + 392) = a1;
  *(v8 + 400) = a2;
  v9 = sub_2388D3088();
  *(v8 + 544) = v9;
  v10 = *(v9 - 8);
  *(v8 + 552) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  v12 = sub_2388D2E78();
  *(v8 + 568) = v12;
  v13 = *(v12 - 8);
  *(v8 + 576) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  v15 = *(v32 - 8);
  *(v8 + 600) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v17 = sub_2388D15A8();
  *(v8 + 624) = v17;
  v18 = *(v17 - 8);
  *(v8 + 632) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 640) = swift_task_alloc();
  v20 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  *(v8 + 648) = v20;
  v21 = *(v20 - 8);
  *(v8 + 656) = v21;
  *(v8 + 664) = *(v21 + 64);
  *(v8 + 672) = swift_task_alloc();
  v22 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  *(v8 + 680) = v22;
  *(v8 + 688) = *(v22 + 64);
  *(v8 + 696) = swift_task_alloc();
  v23 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  *(v8 + 704) = v23;
  *(v8 + 712) = *(v23 + 64);
  *(v8 + 720) = swift_task_alloc();
  v24 = *(v33 - 8);
  *(v8 + 728) = v24;
  *(v8 + 736) = *(v24 + 64);
  *(v8 + 744) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23884E9CC, 0, 0);
}

uint64_t sub_23884E9CC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v57 = v3;
  v60 = *(v0 + 712);
  v62 = *(v0 + 736);
  v58 = v1;
  v59 = *(v0 + 704);
  v79 = *(v0 + 696);
  v64 = *(v0 + 680);
  v66 = *(v0 + 688);
  v81 = *(v0 + 672);
  v68 = *(v0 + 664);
  v77 = *(v0 + 656);
  v82 = *(v0 + 648);
  v69 = *(v0 + 512);
  v56 = *(v0 + 488);
  v76 = *(v0 + 480);
  v74 = *(v0 + 840);
  v75 = *(v0 + 472);
  v72 = *(v0 + 456);
  v73 = *(v0 + 464);
  v71 = *(v0 + 448);
  v70 = *(v0 + 440);
  v4 = *(v0 + 424);
  v54 = *(v0 + 416);
  v55 = *(v0 + 432);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v67 = v6[6];
  v78 = *(v0 + 520);
  v7 = v6[10];
  v8 = v6[11];
  sub_238815878(v6 + 7, v7);
  v9 = (*(v8 + 24))(v7, v8);
  v52 = v10;
  v53 = v9;
  *(v0 + 752) = v10;
  (*(v2 + 16))(v1, v5);
  sub_238827E14(v54, v3, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E14(v55, v79, &qword_27DF2FFC0, &unk_2388D5A80);
  (*(v77 + 16))(v81, v56, v82);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = (v62 + *(v59 + 80) + v11) & ~*(v59 + 80);
  v13 = (v60 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (*(v64 + 80) + v14 + 82) & ~*(v64 + 80);
  v15 = (v66 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v63 = (*(v77 + 80) + v65 + 16) & ~*(v77 + 80);
  v16 = swift_allocObject();
  *(v0 + 760) = v16;
  *(v16 + 16) = v69;
  *(v16 + 24) = v78;
  (*(v2 + 32))(v16 + v11, v58, v78);
  sub_238840FB4(v57, v16 + v12, &qword_27DF2FE20, &qword_2388D5740);
  *(v16 + v13) = v6;
  v17 = v16 + v14;
  v18 = *(v4 + 16);
  *v17 = *v4;
  *(v17 + 16) = v18;
  v20 = *(v4 + 48);
  v19 = *(v4 + 64);
  v21 = *(v4 + 32);
  *(v17 + 80) = *(v4 + 80);
  *(v17 + 48) = v20;
  *(v17 + 64) = v19;
  *(v17 + 32) = v21;
  sub_238840FB4(v79, v16 + v61, &qword_27DF2FFC0, &unk_2388D5A80);
  v22 = (v16 + v15);
  *v22 = v70;
  v22[1] = v71;
  v23 = v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = v72;
  *(v23 + 8) = v73;
  *(v23 + 16) = v74;
  v24 = (v16 + v65);
  *v24 = v75;
  v24[1] = v76;
  v80 = v16;
  (*(v77 + 32))(v16 + v63, v81, v82);
  swift_retain_n();

  v26 = sub_238857EA8(v25);

  v27 = sub_2388543CC(v26);

  v28 = sub_238841F00(v27);

  v29 = *(v28 + 16);

  if (v29)
  {
    __break(1u);
  }

  else
  {
    v31 = *(v67 + 16);
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      v83 = MEMORY[0x277D84F90];
      sub_2388B8224(0, v31, 0);
      v32 = v83;
      v33 = v67 + 32;
      do
      {
        sub_238815814(v33, v0 + 264);
        v34 = *(v0 + 288);
        v35 = *(v0 + 296);
        sub_238815878((v0 + 264), v34);
        *(v0 + 248) = (*(v35 + 40))(v34, v35);
        *(v0 + 256) = v36;
        v38 = *(v83 + 16);
        v37 = *(v83 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_2388B8224((v37 > 1), v38 + 1, 1);
        }

        *(v83 + 16) = v38 + 1;
        v39 = v83 + 56 * v38;
        v40 = *(v0 + 248);
        v41 = *(v0 + 264);
        v42 = *(v0 + 280);
        *(v39 + 80) = *(v0 + 296);
        *(v39 + 48) = v41;
        *(v39 + 64) = v42;
        *(v39 + 32) = v40;
        v33 += 40;
        --v31;
      }

      while (v31);
    }

    v43 = sub_238833F44(v32);

    if (*(v43 + 16))
    {
      sub_238810E44(&qword_27DF2FB60, &qword_2388D5CB0);
      v44 = sub_2388D3128();
    }

    else
    {
      v44 = MEMORY[0x277D84F98];
    }

    *(v0 + 368) = v44;

    sub_238853FE8(v45, 1, (v0 + 368));
    v46 = *(v0 + 400);

    v47 = *(v0 + 368);
    *(v0 + 768) = v47;
    *(v0 + 176) = v47;
    *(v0 + 184) = sub_238858670;
    *(v0 + 192) = v46;
    *(v0 + 200) = sub_238858678;
    *(v0 + 208) = v46;
    *(v0 + 216) = &unk_2388D5CA8;
    *(v0 + 224) = v80;
    *(v0 + 232) = v53;
    *(v0 + 240) = v52;
    v48 = swift_task_alloc();
    *(v0 + 776) = v48;
    *v48 = v0;
    v48[1] = sub_23884F008;
    v49 = *(v0 + 640);
    v50 = *(v0 + 440);
    v51 = *(v0 + 448);

    return sub_2388AABA4(v49, 0, 0, v50, v51);
  }

  return result;
}

uint64_t sub_23884F008()
{
  v2 = *(*v1 + 776);
  v5 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = sub_23884FB74;
  }

  else
  {
    v3 = sub_23884F11C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23884F11C()
{
  v62 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 640);
  v3 = *(v0 + 592);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v7 = sub_23885810C();
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 792) = AssociatedConformanceWitness;
  v61[0] = 0;
  v61[1] = 0;
  (*(AssociatedConformanceWitness + 40))(v61, v7, v9, v6, AssociatedConformanceWitness);
  if (v1)
  {
    v11 = (v0 + 592);
    v12 = *(v0 + 600);
    v13 = *(v0 + 592);
    v14 = *(v0 + 512);

    (*(v12 + 56))(v13, 1, 1, v14);
LABEL_5:
    v22 = *v11;
    v23 = *(v0 + 768);
    v24 = *(v0 + 760);
    v25 = *(v0 + 752);
    v26 = *(v0 + 640);
    v27 = *(v0 + 632);
    v28 = *(v0 + 624);
    v29 = *(v0 + 400);
    (*(*(v0 + 576) + 8))(v22, *(v0 + 568));
    sub_2388151C8();
    v30 = swift_allocError();
    *v31 = 0xD000000000000019;
    *(v31 + 8) = 0x80000002388DE880;
    *(v31 + 16) = MEMORY[0x277D84F90];
    *(v31 + 24) = 0;
    *(v31 + 32) = 5;
    swift_willThrow();

    (*(v27 + 8))(v26, v28);
    v32 = *(v0 + 744);
    v33 = *(v0 + 720);
    v34 = *(v0 + 696);
    v35 = *(v0 + 672);
    v36 = *(v0 + 640);
    v37 = *(v0 + 616);
    v38 = *(v0 + 608);
    v39 = *(v0 + 592);
    v40 = *(v0 + 584);
    v59 = *(v0 + 560);
    **(v0 + 536) = v30;

    v41 = *(v0 + 8);

    return v41();
  }

  v15 = *(v0 + 616);
  v16 = *(v0 + 600);
  v17 = *(v0 + 592);
  v18 = *(v0 + 584);
  v19 = *(v0 + 528);
  v58 = *(v0 + 520);
  v20 = *(v0 + 512);
  v21 = *(v0 + 408);
  (*(v16 + 56))(v17, 0, 1, v20);
  v57 = *(v16 + 32);
  v57(v15, v17, v20);
  (*(v19 + 32))(v15, v58, v19);
  if ((*(v16 + 48))(v18, 1, v20) == 1)
  {
    v11 = (v0 + 584);
    (*(*(v0 + 600) + 8))(*(v0 + 616), *(v0 + 512));
    goto LABEL_5;
  }

  v43 = *(v0 + 512);
  v44 = *(v0 + 416);
  v45 = *(v0 + 400);
  v57(*(v0 + 608), *(v0 + 584), v43);
  sub_238815814(v45 + 56, v0 + 304);
  v46 = *(v0 + 328);
  v47 = *(v0 + 336);
  sub_238815878((v0 + 304), v46);
  v48 = *(AssociatedConformanceWitness + 32);
  *(v0 + 800) = v48;
  *(v0 + 808) = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0x8578000000000000;
  v49 = v48(v43, AssociatedConformanceWitness);
  v51 = v50;
  *(v0 + 816) = v50;
  v52 = type metadata accessor for GenerationSchema(0);
  v53 = (*(*(v52 - 8) + 48))(v44, 1, v52) != 1;
  v54 = *(v47 + 56);
  v60 = (v54 + *v54);
  v55 = v54[1];
  v56 = swift_task_alloc();
  *(v0 + 824) = v56;
  *v56 = v0;
  v56[1] = sub_23884F640;

  return v60(v49, v51, v53, v46, v47);
}

uint64_t sub_23884F640()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = *(v2 + 816);

  if (v0)
  {
    v6 = sub_23884FCA0;
  }

  else
  {
    v6 = sub_23884F774;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23884F774()
{
  v1 = v0[62];
  v2 = v0[50];
  sub_2388158BC(v0 + 38);
  swift_getKeyPath();
  v0[47] = v2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  result = swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5 < v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v0[62] & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(*(type metadata accessor for Transcript.Entry(0) - 8) + 80);

  v7 = sub_2388CB7FC();
  v8 = 0;
  v9 = 0;
  if (v7)
  {
    v10 = v0[50];
    v8 = sub_2388C7420();
  }

  v27 = v9;
  v36 = v8;
  v34 = v0[100];
  v35 = v0[101];
  v33 = v0[99];
  v38 = v0[96];
  v39 = v0[95];
  v40 = v0[94];
  v46 = v0[93];
  v47 = v0[90];
  v48 = v0[87];
  v49 = v0[84];
  v37 = v0[81];
  v45 = v0[80];
  v43 = v0[79];
  v44 = v0[78];
  v30 = v0[76];
  v41 = v0[75];
  v42 = v0[77];
  v50 = v0[74];
  v51 = v0[73];
  v11 = v0[69];
  v12 = v0[64];
  v32 = v0[62];
  v31 = (2 * v5) | 1;
  v28 = v0[68];
  v29 = v4 + ((v6 + 32) & ~v6);
  v13 = v0[49];
  v14 = v0[50];
  v15 = v0[70];
  sub_2388D3068();
  v16 = sub_2388D3078();
  v18 = v17;
  (*(v11 + 8))(v15, v28);
  v19 = v34(v12, v33);
  v0[2] = v16;
  v0[3] = v18;
  v0[4] = v36;
  v0[5] = v27;
  v0[6] = v19;
  v0[7] = v20;
  v0[8] = v4;
  v0[9] = v29;
  v0[10] = v32;
  v0[11] = v31;
  v21 = *(v0 + 4);
  v22 = *(v0 + 5);
  v23 = *(v0 + 3);
  v13[1] = *(v0 + 2);
  v13[2] = v23;
  v13[3] = v21;
  v13[4] = v22;
  *v13 = *(v0 + 1);

  sub_238858EE0((v0 + 2), (v0 + 12));
  os_unfair_lock_lock((v14 + 32));
  v24 = *(v14 + 40);

  *(v14 + 40) = MEMORY[0x277D84F90];
  os_unfair_lock_unlock((v14 + 32));
  v0[48] = 0;
  sub_2388D2CD8();

  sub_238856720((v0 + 2));

  v25 = *(v41 + 8);
  v25(v30, v12);
  v25(v42, v12);
  (*(v43 + 8))(v45, v44);

  v26 = v0[1];

  return v26();
}

uint64_t sub_23884FB74()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v4 = *(v0 + 400);

  v5 = *(v0 + 744);
  v6 = *(v0 + 720);
  v7 = *(v0 + 696);
  v8 = *(v0 + 672);
  v9 = *(v0 + 640);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  v12 = *(v0 + 592);
  v13 = *(v0 + 584);
  v14 = *(v0 + 560);
  **(v0 + 536) = *(v0 + 784);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_23884FCA0()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 752);
  v24 = *(v0 + 640);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);
  v9 = *(v0 + 512);
  v10 = *(v0 + 400);

  v11 = *(v8 + 8);
  v11(v7, v9);
  v11(v6, v9);
  (*(v4 + 8))(v24, v5);
  sub_2388158BC((v0 + 304));
  v12 = *(v0 + 744);
  v13 = *(v0 + 720);
  v14 = *(v0 + 696);
  v15 = *(v0 + 672);
  v16 = *(v0 + 640);
  v17 = *(v0 + 616);
  v18 = *(v0 + 608);
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 560);
  **(v0 + 536) = *(v0 + 832);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_23884FE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238857D9C(a1, v8, type metadata accessor for Transcript.Entry);
  swift_getKeyPath();
  v15 = a2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  v15 = a2;
  swift_getKeyPath();
  sub_2388D1178();

  swift_beginAccess();
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_2388B7500(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_2388B7500(v11 > 1, v12 + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v9[2] = v12 + 1;
  sub_2388595CC(v8, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for Transcript.Entry);
  *(a2 + 16) = v9;
  swift_endAccess();
  v15 = a2;
  swift_getKeyPath();
  sub_2388D1168();
}

uint64_t sub_2388500A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  *a2 = *(a1 + 16);
}

uint64_t sub_238850160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 696) = v52;
  *(v8 + 688) = v51;
  *(v8 + 680) = v50;
  *(v8 + 672) = v49;
  *(v8 + 98) = v47;
  *(v8 + 640) = v46;
  *(v8 + 656) = v48;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  v9 = sub_238810E44(&qword_27DF300E0, &qword_2388D5CD8);
  *(v8 + 704) = v9;
  v10 = *(v9 - 8);
  *(v8 + 712) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 720) = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v8 + 728) = AssociatedConformanceWitness;
  v13 = type metadata accessor for StreamSnapshot();
  *(v8 + 736) = v13;
  v14 = *(v13 - 8);
  *(v8 + 744) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 752) = swift_task_alloc();
  v16 = *(*(sub_2388D2E78() - 8) + 64) + 15;
  *(v8 + 760) = swift_task_alloc();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v17 = sub_2388D2D18();
  *(v8 + 768) = v17;
  *(v8 + 776) = swift_getWitnessTable();
  v18 = sub_2388D3418();
  *(v8 + 784) = v18;
  WitnessTable = swift_getWitnessTable();
  *(v8 + 792) = WitnessTable;
  *(v8 + 408) = v18;
  *(v8 + 416) = v50;
  *(v8 + 424) = WitnessTable;
  *(v8 + 432) = AssociatedConformanceWitness;
  ElementAsCompleteSequence = type metadata accessor for MarkLastElementAsCompleteSequence();
  *(v8 + 800) = ElementAsCompleteSequence;
  v21 = swift_getWitnessTable();
  *(v8 + 808) = v21;
  *(v8 + 440) = ElementAsCompleteSequence;
  *(v8 + 448) = v50;
  *(v8 + 456) = v21;
  *(v8 + 464) = AssociatedConformanceWitness;
  OneInEachChunkSequence = type metadata accessor for KeepLastOneInEachChunkSequence();
  *(v8 + 816) = OneInEachChunkSequence;
  v23 = swift_getWitnessTable();
  *(v8 + 824) = v23;
  *(v8 + 472) = OneInEachChunkSequence;
  *(v8 + 480) = v50;
  *(v8 + 488) = v23;
  *(v8 + 496) = AssociatedConformanceWitness;
  v24 = type metadata accessor for SafetyCheckedStream.AsyncIterator();
  *(v8 + 832) = v24;
  v25 = *(v24 - 8);
  *(v8 + 840) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 504) = OneInEachChunkSequence;
  *(v8 + 512) = v50;
  *(v8 + 520) = v23;
  *(v8 + 528) = AssociatedConformanceWitness;
  v27 = type metadata accessor for SafetyCheckedStream();
  *(v8 + 856) = v27;
  v28 = *(v27 - 8);
  *(v8 + 864) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 872) = swift_task_alloc();
  v30 = *(OneInEachChunkSequence - 8);
  *(v8 + 880) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  v32 = *(ElementAsCompleteSequence - 8);
  *(v8 + 904) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 912) = swift_task_alloc();
  v34 = *(v51 - 8);
  *(v8 + 920) = v34;
  *(v8 + 928) = *(v34 + 64);
  *(v8 + 936) = swift_task_alloc();
  v35 = *(v18 - 8);
  *(v8 + 944) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 952) = swift_task_alloc();
  v37 = *(v17 - 8);
  *(v8 + 960) = v37;
  v38 = *(v37 + 64) + 15;
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  v39 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v8 + 984) = swift_task_alloc();
  v40 = type metadata accessor for PromptTemplate();
  *(v8 + 992) = v40;
  v41 = *(v40 - 8);
  *(v8 + 1000) = v41;
  v42 = *(v41 + 64) + 15;
  *(v8 + 1008) = swift_task_alloc();
  v43 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  *(v8 + 1016) = v43;
  *(v8 + 1024) = *(v43 + 64);
  *(v8 + 1032) = swift_task_alloc();
  *(v8 + 1040) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388507F0, 0, 0);
}

uint64_t sub_2388507F0()
{
  v69 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 600);
  v5 = *(v0 + 584);
  (*(v2 + 24))(*(v0 + 592), v3, v2);
  swift_getKeyPath();
  *(v0 + 560) = v4;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v6 = *(v4 + 16);

  *(v0 + 1048) = sub_2388CF954(v7, v3, v2);
  v20 = *(v0 + 608);

  if (*(v20 + 81))
  {
    goto LABEL_7;
  }

  v21 = *(v0 + 600);
  v22 = v21[10];
  v23 = v21[11];
  sub_238815878(v21 + 7, v22);
  swift_getKeyPath();
  *(v0 + 568) = v21;
  sub_2388D1158();

  v68 = *(v4 + 16);

  LOBYTE(v21) = sub_2388414B4(&v68, v22, v23);

  if (v21)
  {
LABEL_7:
    v24 = *(v0 + 1000);
    v25 = *(v0 + 992);
    v26 = *(v0 + 984);
    sub_238827E14(*(v0 + 616), v26, &qword_27DF2FFC0, &unk_2388D5A80);
    if ((*(v24 + 48))(v26, 1, v25) == 1)
    {
      v27 = *(v0 + 608);
      v28 = *(v0 + 600);
      sub_238827E88(*(v0 + 984), &qword_27DF2FFC0, &unk_2388D5A80);
      v29 = v28[11];
      sub_238815878(v28 + 7, v28[10]);
      v30 = v28[6];
      v31 = *(v27 + 32);
      v32 = *(v27 + 48);
      v33 = *(v27 + 64);
      *(v0 + 96) = *(v27 + 80);
      *(v0 + 64) = v32;
      *(v0 + 80) = v33;
      *(v0 + 48) = v31;
      v34 = *(v27 + 16);
      *(v0 + 16) = *v27;
      *(v0 + 32) = v34;
      v35 = *(v29 + 72);
      *(v0 + 352) = swift_getAssociatedTypeWitness();
      *(v0 + 360) = swift_getAssociatedConformanceWitness();
      sub_238841100((v0 + 328));
      v66 = v35 + *v35;
      v36 = v35[1];
      v37 = swift_task_alloc();
      *(v0 + 1056) = v37;
      *v37 = v0;
      v37[1] = sub_238850F40;
      v38 = *(v0 + 1040);
      v39 = *(v0 + 632);
      v40 = *(v0 + 624);
      v71 = v29;

      __asm { BRAA            X8, X16 }
    }

    v41 = *(v0 + 1008);
    v42 = *(v0 + 984);
    v43 = *(v0 + 608);
    v44 = *(v0 + 600);

    sub_2388595CC(v42, v41, type metadata accessor for PromptTemplate);
    v45 = v44[11];
    sub_238815878(v44 + 7, v44[10]);
    v46 = v44[6];
    v47 = v43[2];
    v48 = v43[3];
    v49 = v43[4];
    *(v0 + 184) = *(v43 + 40);
    *(v0 + 168) = v49;
    *(v0 + 152) = v48;
    *(v0 + 136) = v47;
    v50 = *v43;
    *(v0 + 120) = v43[1];
    *(v0 + 104) = v50;
    v51 = *(v45 + 80);
    *(v0 + 352) = swift_getAssociatedTypeWitness();
    *(v0 + 360) = swift_getAssociatedConformanceWitness();
    sub_238841100((v0 + 328));
    v67 = v51 + *v51;
    v52 = v51[1];
    v53 = swift_task_alloc();
    *(v0 + 1072) = v53;
    *v53 = v0;
    v53[1] = sub_238851064;
    v54 = *(v0 + 1040);
    v55 = *(v0 + 1008);
    v56 = *(v0 + 632);
    v57 = *(v0 + 624);
    v71 = v45;

    __asm { BRAA            X8, X16 }
  }

  v58 = *(v0 + 1040);

  sub_2388151C8();
  swift_allocError();
  *v59 = 0xD000000000000015;
  *(v59 + 8) = 0x80000002388DE8A0;
  *(v59 + 16) = MEMORY[0x277D84F90];
  *(v59 + 24) = 0;
  *(v59 + 32) = 4;
  swift_willThrow();
  sub_238827E88(v58, &qword_27DF2FE20, &qword_2388D5740);
  v8 = *(v0 + 1040);
  v9 = *(v0 + 1032);
  v10 = *(v0 + 1008);
  v11 = *(v0 + 984);
  v12 = *(v0 + 976);
  v13 = *(v0 + 968);
  v14 = *(v0 + 952);
  v15 = *(v0 + 936);
  v16 = *(v0 + 912);
  v17 = *(v0 + 896);
  v60 = *(v0 + 888);
  v61 = *(v0 + 872);
  v62 = *(v0 + 848);
  v63 = *(v0 + 760);
  v64 = *(v0 + 752);
  v65 = *(v0 + 720);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_238850F40()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v7 = *v1;
  *(*v1 + 1064) = v0;

  v4 = *(v2 + 1048);

  if (v0)
  {
    v5 = sub_238852564;
  }

  else
  {
    v5 = sub_2388515E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_238851064()
{
  v2 = *(*v1 + 1072);
  v5 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = sub_2388523D8;
  }

  else
  {
    v3 = sub_238851178;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238851178()
{
  v51 = v0;
  sub_2388594C4(*(v0 + 1008), type metadata accessor for PromptTemplate);
  v1 = *(v0 + 960);
  v34 = *(v0 + 968);
  v35 = *(v0 + 936);
  v2 = *(v0 + 920);
  v42 = *(v0 + 912);
  v44 = *(v0 + 792);
  v39 = *(v0 + 952);
  v40 = *(v0 + 784);
  v38 = *(v0 + 776);
  v31 = *(v0 + 976);
  v32 = *(v0 + 768);
  v36 = *(v0 + 928);
  v37 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 680);
  v46 = *(v0 + 98);
  v29 = *(v0 + 648);
  v5 = *(v0 + 640);
  v33 = *(v0 + 584);
  v48 = *(v0 + 688);
  sub_238826B08((v0 + 328), v0 + 288);
  v6 = *(v0 + 312);
  v30 = *(v0 + 320);
  v7 = sub_238815878((v0 + 288), v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v6);
  v50[0] = v5;
  v50[1] = v29;
  *(v0 + 1088) = sub_2388317A0(v31, v10, v50, v4, v4, v6, v3, v30);

  (*(v1 + 16))(v34, v31, v32);
  (*(v2 + 16))(v35, v33, v48);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v48;
  (*(v2 + 32))(v12 + v11, v35, v48);
  sub_2388D2C68();

  sub_2388661AC(v40, v42);
  v13 = *(v0 + 912);
  v14 = *(v0 + 888);
  if (v46 == 1)
  {
    sub_238866284(10, *(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v14);
  }

  else
  {
    sub_2388663A4(*(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v14);
  }

  v15 = *(v0 + 1032);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 1016);
  v18 = *(v0 + 872);
  v49 = *(v0 + 856);
  v45 = *(v0 + 824);
  v47 = *(v0 + 848);
  v19 = *(v0 + 816);
  v41 = *(v0 + 680);
  v43 = *(v0 + 728);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  (*(*(v0 + 880) + 32))(*(v0 + 896), *(v0 + 888), v19);
  sub_238815814(v20 + 56, v0 + 368);
  sub_238827E14(v21, v15, &qword_27DF2FE20, &qword_2388D5740);
  v22 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v23 = swift_allocObject();
  sub_238826B08((v0 + 368), v23 + 16);
  sub_238840FB4(v15, v23 + v22, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388664BC(&unk_2388D5CF8, v23, v19, v41, v45, v43, v18);

  sub_2388665F4(v49, v47);
  v24 = swift_task_alloc();
  *(v0 + 1096) = v24;
  *v24 = v0;
  v24[1] = sub_238851A3C;
  v25 = *(v0 + 848);
  v26 = *(v0 + 832);
  v27 = *(v0 + 760);

  return sub_238866778(v27, 0, 0, v26);
}

uint64_t sub_2388515E8()
{
  v51 = v0;
  v1 = *(v0 + 960);
  v34 = *(v0 + 968);
  v35 = *(v0 + 936);
  v2 = *(v0 + 920);
  v42 = *(v0 + 912);
  v44 = *(v0 + 792);
  v39 = *(v0 + 952);
  v40 = *(v0 + 784);
  v38 = *(v0 + 776);
  v31 = *(v0 + 976);
  v32 = *(v0 + 768);
  v36 = *(v0 + 928);
  v37 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 680);
  v46 = *(v0 + 98);
  v29 = *(v0 + 648);
  v5 = *(v0 + 640);
  v33 = *(v0 + 584);
  v48 = *(v0 + 688);
  sub_238826B08((v0 + 328), v0 + 288);
  v6 = *(v0 + 312);
  v30 = *(v0 + 320);
  v7 = sub_238815878((v0 + 288), v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v6);
  v50[0] = v5;
  v50[1] = v29;
  *(v0 + 1088) = sub_2388317A0(v31, v10, v50, v4, v4, v6, v3, v30);

  (*(v1 + 16))(v34, v31, v32);
  (*(v2 + 16))(v35, v33, v48);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v48;
  (*(v2 + 32))(v12 + v11, v35, v48);
  sub_2388D2C68();

  sub_2388661AC(v40, v42);
  v13 = *(v0 + 912);
  v14 = *(v0 + 888);
  if (v46 == 1)
  {
    sub_238866284(10, *(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v14);
  }

  else
  {
    sub_2388663A4(*(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v14);
  }

  v15 = *(v0 + 1032);
  v16 = *(v0 + 1024);
  v17 = *(v0 + 1016);
  v18 = *(v0 + 872);
  v49 = *(v0 + 856);
  v45 = *(v0 + 824);
  v47 = *(v0 + 848);
  v19 = *(v0 + 816);
  v41 = *(v0 + 680);
  v43 = *(v0 + 728);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  (*(*(v0 + 880) + 32))(*(v0 + 896), *(v0 + 888), v19);
  sub_238815814(v20 + 56, v0 + 368);
  sub_238827E14(v21, v15, &qword_27DF2FE20, &qword_2388D5740);
  v22 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v23 = swift_allocObject();
  sub_238826B08((v0 + 368), v23 + 16);
  sub_238840FB4(v15, v23 + v22, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388664BC(&unk_2388D5CF8, v23, v19, v41, v45, v43, v18);

  sub_2388665F4(v49, v47);
  v24 = swift_task_alloc();
  *(v0 + 1096) = v24;
  *v24 = v0;
  v24[1] = sub_238851A3C;
  v25 = *(v0 + 848);
  v26 = *(v0 + 832);
  v27 = *(v0 + 760);

  return sub_238866778(v27, 0, 0, v26);
}

uint64_t sub_238851A3C()
{
  v2 = *(*v1 + 1096);
  v5 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v3 = sub_2388526D0;
  }

  else
  {
    v3 = sub_238851B50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_238851B50()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 840) + 8))(*(v0 + 848), *(v0 + 832));
    v4 = *(MEMORY[0x277D857E0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 1112) = v5;
    v6 = sub_2388D15A8();
    *v5 = v0;
    v5[1] = sub_238852098;
    v7 = *(v0 + 1088);
    v8 = *(v0 + 576);

    return MEMORY[0x282200460](v8, v7, v6);
  }

  else
  {
    v75 = *(v0 + 1104);
    v9 = *(v0 + 752);
    v10 = *(v0 + 696);
    v63 = *(v0 + 688);
    v72 = *(v0 + 680);
    v11 = *(v0 + 656);
    v66 = *(v0 + 648);
    v69 = *(v0 + 664);
    v12 = *(v0 + 640);
    v13 = *(v0 + 616);
    v14 = *(v0 + 600);
    (*(v2 + 32))(v9, v1, v3);
    sub_238852E48(v9, v13, v11, v69, v12, v66, v14, v72);
    if (v75)
    {
      v15 = *(v0 + 1088);
      v73 = *(v0 + 1040);
      v67 = *(v0 + 960);
      v70 = *(v0 + 976);
      v64 = *(v0 + 952);
      v16 = *(v0 + 944);
      v17 = *(v0 + 904);
      v18 = *(v0 + 880);
      v19 = *(v0 + 864);
      v53 = *(v0 + 856);
      v54 = *(v0 + 872);
      v52 = *(v0 + 848);
      v20 = *(v0 + 840);
      v21 = *(v0 + 832);
      v55 = *(v0 + 816);
      v56 = *(v0 + 800);
      v57 = *(v0 + 896);
      v58 = *(v0 + 784);
      v59 = *(v0 + 912);
      v61 = *(v0 + 768);
      v22 = *(v0 + 752);
      v23 = *(v0 + 744);
      v24 = *(v0 + 736);

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v52, v21);
      (*(v19 + 8))(v54, v53);
      (*(v18 + 8))(v57, v55);
      (*(v17 + 8))(v59, v56);
      (*(v16 + 8))(v64, v58);
      (*(v67 + 8))(v70, v61);
      sub_238827E88(v73, &qword_27DF2FE20, &qword_2388D5740);
      sub_2388158BC((v0 + 288));
      v25 = *(v0 + 1040);
      v26 = *(v0 + 1032);
      v27 = *(v0 + 1008);
      v28 = *(v0 + 984);
      v29 = *(v0 + 976);
      v30 = *(v0 + 968);
      v31 = *(v0 + 952);
      v32 = *(v0 + 936);
      v33 = *(v0 + 912);
      v34 = *(v0 + 896);
      v60 = *(v0 + 888);
      v62 = *(v0 + 872);
      v65 = *(v0 + 848);
      v68 = *(v0 + 760);
      v71 = *(v0 + 752);
      v74 = *(v0 + 720);

      v35 = *(v0 + 8);

      return v35();
    }

    else
    {
      v36 = *(v0 + 752);
      v37 = *(v0 + 744);
      v38 = *(v0 + 736);
      v39 = *(v0 + 720);
      v40 = *(v0 + 712);
      v41 = *(v0 + 704);
      v42 = *(v0 + 672);
      v43 = v36 + *(v38 + 48);
      (*(*(v0 + 728) + 48))(*(v36 + *(v38 + 56)), *(v0 + 680));
      v44 = *(v0 + 224);
      v45 = *(v0 + 232);
      v46 = *(v0 + 208);
      *(v0 + 240) = *(v0 + 192);
      *(v0 + 256) = v46;
      *(v0 + 272) = v44;
      *(v0 + 280) = v45;
      sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
      sub_2388D2CC8();
      (*(v40 + 8))(v39, v41);
      (*(v37 + 8))(v36, v38);
      v47 = swift_task_alloc();
      *(v0 + 1096) = v47;
      *v47 = v0;
      v47[1] = sub_238851A3C;
      v48 = *(v0 + 848);
      v49 = *(v0 + 832);
      v50 = *(v0 + 760);

      return sub_238866778(v50, 0, 0, v49);
    }
  }
}

uint64_t sub_238852098()
{
  v1 = *(*v0 + 1112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_238852194, 0, 0);
}

uint64_t sub_238852194()
{
  v1 = v0[136];
  v19 = v0[130];
  v20 = v0[129];
  v21 = v0[126];
  v22 = v0[123];
  v2 = v0[120];
  v17 = v0[119];
  v18 = v0[122];
  v3 = v0[118];
  v23 = v0[121];
  v24 = v0[117];
  v15 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v25 = v0[111];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];
  v9 = v0[107];
  v27 = v0[106];
  v10 = v0[102];
  v13 = v0[100];
  v14 = v0[98];
  v16 = v0[96];
  v26 = v0[95];
  v28 = v0[94];
  v29 = v0[90];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v10);
  (*(v4 + 8))(v15, v13);
  (*(v3 + 8))(v17, v14);
  (*(v2 + 8))(v18, v16);
  sub_238827E88(v19, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388158BC(v0 + 36);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2388523D8()
{
  v1 = v0[130];
  sub_2388594C4(v0[126], type metadata accessor for PromptTemplate);
  sub_238827E88(v1, &qword_27DF2FE20, &qword_2388D5740);
  sub_238858F3C(v0 + 41);
  v20 = v0[135];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[126];
  v5 = v0[123];
  v6 = v0[122];
  v7 = v0[121];
  v8 = v0[119];
  v9 = v0[117];
  v10 = v0[114];
  v11 = v0[112];
  v14 = v0[111];
  v15 = v0[109];
  v16 = v0[106];
  v17 = v0[95];
  v18 = v0[94];
  v19 = v0[90];

  v12 = v0[1];

  return v12();
}

uint64_t sub_238852564()
{
  sub_238827E88(v0[130], &qword_27DF2FE20, &qword_2388D5740);
  sub_238858F3C(v0 + 41);
  v19 = v0[133];
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[126];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[119];
  v8 = v0[117];
  v9 = v0[114];
  v10 = v0[112];
  v13 = v0[111];
  v14 = v0[109];
  v15 = v0[106];
  v16 = v0[95];
  v17 = v0[94];
  v18 = v0[90];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2388526D0()
{
  v1 = v0[136];
  v36 = v0[122];
  v38 = v0[130];
  v2 = v0[120];
  v34 = v0[119];
  v3 = v0[118];
  v4 = v0[113];
  v5 = v0[110];
  v6 = v0[108];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[105];
  v10 = v0[104];
  v23 = v0[109];
  v24 = v0[102];
  v25 = v0[100];
  v26 = v0[112];
  v28 = v0[98];
  v30 = v0[114];
  v32 = v0[96];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v23, v7);
  (*(v5 + 8))(v26, v24);
  (*(v4 + 8))(v30, v25);
  (*(v3 + 8))(v34, v28);
  (*(v2 + 8))(v36, v32);
  sub_238827E88(v38, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388158BC(v0 + 36);
  v39 = v0[138];
  v11 = v0[130];
  v12 = v0[129];
  v13 = v0[126];
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[121];
  v17 = v0[119];
  v18 = v0[117];
  v19 = v0[114];
  v20 = v0[112];
  v27 = v0[111];
  v29 = v0[109];
  v31 = v0[106];
  v33 = v0[95];
  v35 = v0[94];
  v37 = v0[90];

  v21 = v0[1];

  return v21();
}

uint64_t sub_238852938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_2388D2E78();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238852A04, 0, 0);
}

uint64_t sub_238852A04()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for StreamSnapshot();
  v7 = *(v6 + 48);
  (*(v1 + 40))(v5 + v7, v2, v1);
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[7];
  v11 = v0[6];
  v12 = v0[4];
  v17 = v0[5];
  v18 = v0[3];
  v19 = v0[2];
  v20 = v0[8];
  (*(v10 + 32))(v5 + v7, v11, v10);
  v13 = swift_task_alloc();
  v13[2] = v17;
  v13[3] = v11;
  v13[4] = v10;
  v13[5] = v18;
  sub_2388122EC(sub_238859588, v13, MEMORY[0x277D84A98], v6, v14, v19);
  (*(v9 + 8))(v8, v20);

  v15 = v0[1];

  return v15();
}

uint64_t sub_238852BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for StreamSnapshot();
  (*(*(v8 - 8) + 16))(a4, a2, v8);
  return (*(*(a3 - 8) + 24))(a4 + *(v8 + 48), a1, a3);
}

uint64_t sub_238852CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238852CCC, 0, 0);
}

uint64_t sub_238852CCC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  sub_238815878(v1, v3);
  v5 = type metadata accessor for GenerationSchema(0);
  v6 = (*(*(v5 - 8) + 48))(v2, 1, v5) != 1;
  v7 = *(v4 + 56);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_23883ED94;
  v11 = v0[2];
  v10 = v0[3];

  return v13(v11, v10, v6, v3, v4);
}

uint64_t sub_238852E48(uint64_t *a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a4;
  v73 = a3;
  v15 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v61 - v17;
  v19 = type metadata accessor for Transcript.Entry(0);
  v20 = *(v19 - 8);
  v68 = v19;
  v69 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v66 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v67 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  v28 = type metadata accessor for PromptTemplate();
  result = (*(*(v28 - 8) + 48))(a2, 1, v28);
  if (result == 1)
  {
    v61 = a7;
    v62 = v27;
    v65 = v8;
    v72[0] = a5;
    v72[1] = a6;
    v30 = *a1;
    v63 = a1[1];
    v64 = v30;
    v31 = a1[2];
    v71 = a1[3];
    v32 = sub_2388D32F8();
    v34 = v33;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = *(type metadata accessor for StreamSnapshot() + 48);
    v37 = (*(AssociatedConformanceWitness + 32))(a8, AssociatedConformanceWitness);
    v38 = v63;
    v39 = v65;
    v73(v72, v64, v63, v31, v32, v34, v37, v40);
    if (v39)
    {
    }

    v41 = v69;
    if ((*(v69 + 48))(v18, 1, v68) == 1)
    {
      return sub_238827E88(v18, &qword_27DF300E8, &qword_2388D5D00);
    }

    sub_2388595CC(v18, v62, type metadata accessor for Transcript.Entry);
    swift_getKeyPath();
    v42 = v61;
    v72[0] = v61;
    v73 = sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
    sub_2388D1158();

    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v43 + 16);
    if (v44)
    {
      v70 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v68 = *(v41 + 72);
      v45 = v67;
      sub_238857D9C(v43 + v70 + v68 * (v44 - 1), v67, type metadata accessor for Transcript.Entry);
      v46 = Transcript.Entry.id.getter();
      v48 = v47;
      sub_2388594C4(v45, type metadata accessor for Transcript.Entry);
      if (v46 == v38 && v48 == v31)
      {

        goto LABEL_11;
      }

      v49 = sub_2388D3368();

      if (v49)
      {
LABEL_11:
        swift_getKeyPath();
        v71 = v42;
        sub_2388D1158();

        v50 = v42;
        v51 = *(*(v42 + 16) + 16);
        swift_getKeyPath();
        v71 = v50;
        sub_2388D1158();

        v71 = v50;
        swift_getKeyPath();
        sub_2388D1178();

        swift_beginAccess();
        v52 = *(v50 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v50 + 16) = v52;
        if (result)
        {
          if (v51)
          {
            goto LABEL_13;
          }
        }

        else
        {
          result = sub_238895348(v52);
          v52 = result;
          *(v61 + 16) = result;
          if (v51)
          {
LABEL_13:
            if (v51 <= v52[2])
            {
              v53 = v62;
              sub_238859524(v62, v52 + v70 + (v51 - 1) * v68);
              v54 = v61;
              *(v61 + 16) = v52;
              swift_endAccess();
              v71 = v54;
              swift_getKeyPath();
              sub_2388D1168();

              v55 = v53;
              return sub_2388594C4(v55, type metadata accessor for Transcript.Entry);
            }

LABEL_24:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    v56 = v66;
    sub_238857D9C(v62, v66, type metadata accessor for Transcript.Entry);
    swift_getKeyPath();
    v71 = v42;
    sub_2388D1158();

    v71 = v42;
    swift_getKeyPath();
    sub_2388D1178();

    swift_beginAccess();
    v57 = *(v42 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 16) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_2388B7500(0, v57[2] + 1, 1, v57);
      *(v42 + 16) = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      v57 = sub_2388B7500(v59 > 1, v60 + 1, 1, v57);
      *(v42 + 16) = v57;
    }

    v57[2] = v60 + 1;
    sub_2388595CC(v56, v57 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v60, type metadata accessor for Transcript.Entry);
    *(v42 + 16) = v57;
    swift_endAccess();
    v71 = v42;
    swift_getKeyPath();
    sub_2388D1168();

    v55 = v62;
    return sub_2388594C4(v55, type metadata accessor for Transcript.Entry);
  }

  return result;
}

uint64_t sub_2388535B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_238827E14(a3, v24 - v10, &qword_27DF2FD28, &qword_2388D8CE0);
  v12 = sub_2388D2BE8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238827E88(v11, &qword_27DF2FD28, &qword_2388D8CE0);
  }

  else
  {
    sub_2388D2BD8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2388D2B38();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2388D28C8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_238853854(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF300B0, &qword_2388D5C80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  swift_getKeyPath();
  v11[1] = a2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
  sub_2388D1148();

  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  LODWORD(a2) = *MEMORY[0x277D85870];
  result = (*(v5 + 8))(v8, v4);
  if (v9 == a2)
  {
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    return sub_2388D2C08();
  }

  return result;
}

uint64_t *LanguageModelSession.deinit()
{
  v1 = v0[2];

  sub_238827E88((v0 + 5), &qword_27DF2FFE0, &qword_2388D5AE0);
  v2 = v0[6];

  sub_2388158BC(v0 + 7);
  sub_2388158BC(v0 + 12);
  sub_2388158BC(v0 + 17);
  v3 = OBJC_IVAR____TtC16FoundationModels20LanguageModelSession___observationRegistrar;
  v4 = sub_2388D1198();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LanguageModelSession.__deallocating_deinit()
{
  v1 = v0[2];

  sub_238827E88((v0 + 5), &qword_27DF2FFE0, &qword_2388D5AE0);
  v2 = v0[6];

  sub_2388158BC(v0 + 7);
  sub_2388158BC(v0 + 12);
  sub_2388158BC(v0 + 17);
  v3 = OBJC_IVAR____TtC16FoundationModels20LanguageModelSession___observationRegistrar;
  v4 = sub_2388D1198();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_238853BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = sub_23882003C(*(a3 + 16), 0);
  v8 = sub_23882539C(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v7;
}

size_t sub_238853C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2388200D4(*(a1 + 16), 0);
  v4 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v5 = sub_2388254BC(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t sub_238853D50(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = a2 - result;
  if (a2 == result)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = sub_2388200D4(a2 - result, 0);
  v10 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v11 = sub_238855930(&v12, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v7, v6, a2, a3);

  if (v11 != v7)
  {
    goto LABEL_11;
  }

  return v9;
}

void sub_238853E48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
      v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for Transcript.Entry(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_238853FE8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_238827E14(a1 + 32, &v46, &qword_27DF2FF88, &unk_2388D5CC0);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_238826B08(v48, v43);
  v9 = *a3;
  v10 = sub_238820AA8(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_238822C64(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_238820AA8(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_2388D3438();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_2388215D0();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_2388158BC(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_238826B08(v43, v22[7] + 40 * v10);
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 88;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_238827E14(v26, &v46, &qword_27DF2FF88, &unk_2388D5CC0);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_238826B08(v48, v43);
      v30 = *a3;
      v31 = sub_238820AA8(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_238822C64(v35, 1);
        v37 = *a3;
        v31 = sub_238820AA8(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_238826B08(v43, v39[7] + 40 * v31);
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 56;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
  sub_2388D30A8();
  MEMORY[0x23EE66C20](39, 0xE100000000000000);
  sub_2388D30B8();
  __break(1u);
}

uint64_t sub_2388543CC(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_23885452C(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_23885461C(v9, v4, v2);
  result = MEMORY[0x23EE68030](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_23885452C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_238854694(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_238854694(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_23885461C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_23885452C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_238854694(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_238810E44(&qword_27DF2FB68, &unk_2388D4970);
  result = sub_2388D3128();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_2388D34A8();

    sub_2388D2938();
    result = sub_2388D34E8();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2388548D8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v67 = a5;
  v66 = a4;
  v71 = type metadata accessor for GenerationSchema.Kind(0);
  v10 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerationSchema(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v70 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for GenerativeModelInferenceSession();
  v84 = sub_238859634(&qword_27DF30118, type metadata accessor for GenerativeModelInferenceSession);
  *&v82 = a1;
  *(a6 + 24) = 0;
  *(a6 + 28) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = MEMORY[0x277D84F90];
  sub_2388D1188();
  v81 = MEMORY[0x277D84FA0];
  v16 = *(a2 + 16);
  if (!v16)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v64 = a3;
  v65 = a6;
  v17 = MEMORY[0x277D84F90];
  v63[1] = a2;
  v18 = a2 + 32;
  v19 = 0x27DF2F000;
  *&v15 = 136315394;
  v68 = v15;
  *&v15 = 136446210;
  v69 = v15;
  do
  {
    sub_238815814(v18, v78);
    v28 = v79;
    v29 = v80;
    sub_238815878(v78, v79);
    v30 = (*(v29 + 40))(v28, v29);
    LOBYTE(v28) = sub_2388BA540(&v75, v30, v31);

    if (v28)
    {
      sub_238815814(v78, &v75);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2388B74DC(0, v17[2] + 1, 1, v17);
      }

      v33 = v17[2];
      v32 = v17[3];
      if (v33 >= v32 >> 1)
      {
        v17 = sub_2388B74DC((v32 > 1), v33 + 1, 1, v17);
      }

      v17[2] = v33 + 1;
      sub_238826B08(&v75, &v17[5 * v33 + 4]);
      v34 = v79;
      v35 = v80;
      sub_238815878(v78, v79);
      v36 = v70;
      (*(v35 + 56))(v34, v35);
      sub_238857D9C(v36, v72, type metadata accessor for GenerationSchema.Kind);
      sub_2388594C4(v36, type metadata accessor for GenerationSchema);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v45 = type metadata accessor for GenerationSchema.Kind;
          v46 = v72;
        }

        else
        {
          if (EnumCaseMultiPayload != 4)
          {
            goto LABEL_28;
          }

          v41 = v72;
          v42 = *(v72 + 8);

          v43 = *(v41 + 24);

          v44 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
          v45 = type metadata accessor for StringGuides;
          v46 = v41 + *(v44 + 64);
        }

        sub_2388594C4(v46, v45);
      }

      else if ((EnumCaseMultiPayload - 5) >= 2 && EnumCaseMultiPayload != 8)
      {
LABEL_28:
        sub_2388594C4(v72, type metadata accessor for GenerationSchema.Kind);
        goto LABEL_4;
      }

      if (*(v19 + 2528) != -1)
      {
        swift_once();
      }

      v47 = sub_2388D2408();
      sub_2388413AC(v47, qword_27DF3F8E0);
      sub_238815814(v78, &v75);
      sub_238815814(v78, v74);
      v48 = sub_2388D23E8();
      v49 = sub_2388D2E18();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v73 = v51;
        *v50 = v68;
        v52 = v76;
        v53 = v77;
        sub_238815878(&v75, v76);
        v54 = (*(v53 + 40))(v52, v53);
        v56 = v55;
        sub_2388158BC(&v75);
        v57 = sub_2388C0770(v54, v56, &v73);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2080;
        sub_238815878(v74, v74[3]);
        v58 = sub_238855A9C();
        v60 = v59;
        sub_2388158BC(v74);
        v61 = sub_2388C0770(v58, v60, &v73);
        v19 = 0x27DF2F000;

        *(v50 + 14) = v61;
        _os_log_impl(&dword_23880E000, v48, v49, "The arguments to 'Tool' should be a struct or enum. '%s' takes 'arguments' of primitive type '%s', which may not be properly called by the model.", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE68030](v51, -1, -1);
        MEMORY[0x23EE68030](v50, -1, -1);
      }

      else
      {

        sub_2388158BC(&v75);
        sub_2388158BC(v74);
      }
    }

    else
    {
      if (*(v19 + 2528) != -1)
      {
        swift_once();
      }

      v38 = sub_2388D2408();
      sub_2388413AC(v38, qword_27DF3F8E0);
      sub_238815814(v78, &v75);
      v39 = sub_2388D23E8();
      v40 = sub_2388D2E18();
      if (os_log_type_enabled(v39, v40))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v74[0] = v21;
        *v20 = v69;
        v22 = v76;
        v23 = v77;
        sub_238815878(&v75, v76);
        v24 = (*(v23 + 40))(v22, v23);
        v26 = v25;
        sub_2388158BC(&v75);
        v27 = sub_2388C0770(v24, v26, v74);
        v19 = 0x27DF2F000uLL;

        *(v20 + 4) = v27;
        _os_log_impl(&dword_23880E000, v39, v40, "Duplicate tool name (%{public}s). Only the first will be used.", v20, 0xCu);
        sub_2388158BC(v21);
        MEMORY[0x23EE68030](v21, -1, -1);
        MEMORY[0x23EE68030](v20, -1, -1);
      }

      else
      {

        sub_2388158BC(&v75);
      }
    }

LABEL_4:
    sub_2388158BC(v78);
    v18 += 40;
    --v16;
  }

  while (v16);

  a6 = v65;
  a3 = v64;
LABEL_31:

  sub_238826B08(v66, a6 + 96);
  sub_238826B08(v67, a6 + 136);
  *(a6 + 16) = a3;
  *(a6 + 48) = v17;
  sub_238826B08(&v82, a6 + 56);
  return a6;
}

uint64_t sub_2388550CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = type metadata accessor for GenerationSchema.Kind(0);
  v8 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerationSchema(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_238810E44(&qword_27DF300F0, &qword_2388D5D08);
  v97 = sub_238815180(&qword_27DF300F8, &qword_27DF300F0, &qword_2388D5D08);
  v93 = sub_238810E44(&qword_27DF30100, &unk_2388D5D10);
  v94 = sub_238815180(&qword_27DF30108, &qword_27DF30100, &unk_2388D5D10);
  v90 = type metadata accessor for ServerModelInferenceSession(0);
  v91 = sub_238859634(&qword_27DF30110, type metadata accessor for ServerModelInferenceSession);
  v13 = sub_238841100(&v89);
  sub_2388595CC(a1, v13, type metadata accessor for ServerModelInferenceSession);
  *(a4 + 24) = 0;
  *(a4 + 28) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = MEMORY[0x277D84F90];
  sub_2388D1188();
  v88 = MEMORY[0x277D84FA0];
  v15 = *(a2 + 16);
  if (!v15)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v72 = a3;
  v73 = a4;
  v71[1] = a2;
  v16 = a2 + 32;
  v17 = MEMORY[0x277D84F90];
  v18 = 0x27DF2F000;
  *&v14 = 136315394;
  v74 = v14;
  *&v14 = 136446210;
  v75 = v14;
  do
  {
    sub_238815814(v16, v85);
    v32 = v86;
    v33 = v87;
    sub_238815878(v85, v86);
    v34 = (*(v33 + 40))(v32, v33);
    v36 = sub_2388BA540(&v82, v34, v35);

    if (v36)
    {
      sub_238815814(v85, &v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2388B74DC(0, v17[2] + 1, 1, v17);
      }

      v38 = v17[2];
      v37 = v17[3];
      if (v38 >= v37 >> 1)
      {
        v17 = sub_2388B74DC((v37 > 1), v38 + 1, 1, v17);
      }

      v17[2] = v38 + 1;
      sub_238826B08(&v82, &v17[5 * v38 + 4]);
      v39 = v86;
      v40 = v87;
      sub_238815878(v85, v86);
      v41 = v77;
      (*(v40 + 56))(v39, v40);
      sub_238857D9C(v41, v79, type metadata accessor for GenerationSchema.Kind);
      sub_2388594C4(v41, type metadata accessor for GenerationSchema);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v50 = type metadata accessor for GenerationSchema.Kind;
          v51 = v79;
        }

        else
        {
          if (EnumCaseMultiPayload != 4)
          {
            goto LABEL_28;
          }

          v46 = v79;
          v47 = *(v79 + 8);

          v48 = *(v46 + 24);

          v49 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
          v50 = type metadata accessor for StringGuides;
          v51 = v46 + *(v49 + 64);
        }

        sub_2388594C4(v51, v50);
      }

      else if ((EnumCaseMultiPayload - 5) >= 2 && EnumCaseMultiPayload != 8)
      {
LABEL_28:
        sub_2388594C4(v79, type metadata accessor for GenerationSchema.Kind);
        goto LABEL_4;
      }

      if (*(v18 + 2528) != -1)
      {
        swift_once();
      }

      v52 = sub_2388D2408();
      sub_2388413AC(v52, qword_27DF3F8E0);
      sub_238815814(v85, &v82);
      sub_238815814(v85, v81);
      v53 = sub_2388D23E8();
      v54 = sub_2388D2E18();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v80 = v76;
        *v55 = v74;
        v56 = v17;
        v57 = v83;
        v58 = v84;
        sub_238815878(&v82, v83);
        v59 = *(v58 + 40);
        v60 = v58;
        v17 = v56;
        v18 = 0x27DF2F000;
        v61 = v59(v57, v60);
        v63 = v62;
        sub_2388158BC(&v82);
        v64 = sub_2388C0770(v61, v63, &v80);

        *(v55 + 4) = v64;
        *(v55 + 12) = 2080;
        sub_238815878(v81, v81[3]);
        v65 = sub_238855A9C();
        v67 = v66;
        sub_2388158BC(v81);
        v68 = sub_2388C0770(v65, v67, &v80);

        *(v55 + 14) = v68;
        _os_log_impl(&dword_23880E000, v53, v54, "The arguments to 'Tool' should be a struct or enum. '%s' takes 'arguments' of primitive type '%s', which may not be properly called by the model.", v55, 0x16u);
        v69 = v76;
        swift_arrayDestroy();
        MEMORY[0x23EE68030](v69, -1, -1);
        MEMORY[0x23EE68030](v55, -1, -1);
      }

      else
      {

        sub_2388158BC(&v82);
        sub_2388158BC(v81);
      }
    }

    else
    {
      if (*(v18 + 2528) != -1)
      {
        swift_once();
      }

      v43 = sub_2388D2408();
      sub_2388413AC(v43, qword_27DF3F8E0);
      sub_238815814(v85, &v82);
      v44 = sub_2388D23E8();
      v45 = sub_2388D2E18();
      if (os_log_type_enabled(v44, v45))
      {
        v19 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v81[0] = v76;
        *v19 = v75;
        v20 = v16;
        v21 = v15;
        v22 = v17;
        v23 = v83;
        v24 = v84;
        sub_238815878(&v82, v83);
        v25 = *(v24 + 40);
        v26 = v24;
        v17 = v22;
        v15 = v21;
        v16 = v20;
        v18 = 0x27DF2F000uLL;
        v27 = v25(v23, v26);
        v29 = v28;
        sub_2388158BC(&v82);
        v30 = sub_2388C0770(v27, v29, v81);

        *(v19 + 4) = v30;
        _os_log_impl(&dword_23880E000, v44, v45, "Duplicate tool name (%{public}s). Only the first will be used.", v19, 0xCu);
        v31 = v76;
        sub_2388158BC(v76);
        MEMORY[0x23EE68030](v31, -1, -1);
        MEMORY[0x23EE68030](v19, -1, -1);
      }

      else
      {

        sub_2388158BC(&v82);
      }
    }

LABEL_4:
    sub_2388158BC(v85);
    v16 += 40;
    --v15;
  }

  while (v15);

  a3 = v72;
  a4 = v73;
LABEL_31:

  sub_238826B08(&v95, a4 + 96);
  sub_238826B08(&v92, a4 + 136);
  *(a4 + 16) = a3;
  *(a4 + 48) = v17;
  sub_238826B08(&v89, a4 + 56);
  return a4;
}

uint64_t sub_238855930(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    v11 = a4;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a5 <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = a5;
    }

    if (a5 != a4)
    {
      v12 = a2;
      v17 = a5 - a4;
      v18 = a3;
      v13 = a3 - 1;
      v14 = a4;
      while (v10 != v14)
      {
        if (a4 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(a6 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(type metadata accessor for Transcript.Entry(0) - 8);
        v16 = *(v15 + 72);
        v11 = v14 + 1;
        result = sub_238857D9C(a6 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * v14, v12, type metadata accessor for Transcript.Entry);
        if (!v13)
        {
          a3 = v18;
          goto LABEL_12;
        }

        v12 += v16;
        --v13;
        ++v14;
        if (a5 == v11)
        {
          v11 = a5;
          a3 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = a5;
    a3 = a5 - a4;
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v11;
    return a3;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_238855A9C()
{
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  return sub_2388D28B8();
}

uint64_t sub_238855AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase);
  v19 = sub_238810E44(&qword_27DF300F0, &qword_2388D5D08);
  v20 = sub_238815180(&qword_27DF300F8, &qword_27DF300F0, &qword_2388D5D08);
  sub_238826B08(&v18, v21);
  if (v7)
  {
    v8 = &off_281992D00;
    v9 = &type metadata for ContentTaggingAugmentator;
  }

  else
  {
    v9 = sub_238810E44(&qword_27DF30100, &unk_2388D5D10);
    v8 = sub_238815180(&qword_27DF30108, &qword_27DF30100, &unk_2388D5D10);
  }

  v16 = v9;
  v17 = v8;
  sub_238826B08(&v15, &v18);
  v10 = type metadata accessor for LanguageModelSession();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  return sub_2388548D8(a2, a3, a4, v21, &v18, v13);
}

uint64_t _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for Transcript.ToolDefinition(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2388D1058();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Transcript.Entry(0);
  v62 = *(v58 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v58);
  v61 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a3;
  v17 = type metadata accessor for GenerativeModelInferenceSession();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v21 = sub_23883435C(v20);

  v22 = sub_238855AE8(a1, v21, a2, MEMORY[0x277D84F90]);

  v23 = *(a2 + 16);

  if (!(v23 | v16))
  {

    goto LABEL_28;
  }

  v55 = v21;
  v56 = a1;
  if (v16)
  {
    *&v64 = v16;
    v53 = sub_238856398(&v64, sub_2388596CC, sub_2388596D0);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v54 = v22;
  v22 = *(v22 + 48);
  v24 = *(v22 + 16);

  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v26 = 0;
    v27 = v22 + 32;
    while (v26 < *(v22 + 16))
    {
      sub_238815814(v27, &v64);
      v29 = v65;
      v28 = v66;
      v21 = sub_238815878(&v64, v65);
      if ((*(v28 + 64))(v29, v28))
      {
        sub_238826B08(&v64, v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67[0] = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = v67;
          sub_2388B8184(0, *(v25 + 16) + 1, 1);
          v25 = v67[0];
        }

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          v21 = v67;
          sub_2388B8184((v31 > 1), v32 + 1, 1);
          v25 = v67[0];
        }

        *(v25 + 16) = v32 + 1;
        sub_238826B08(v63, v25 + 40 * v32 + 32);
      }

      else
      {
        sub_2388158BC(&v64);
      }

      ++v26;
      v27 += 40;
      if (v24 == v26)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v33 = *(v25 + 16);
    if (v33)
    {
      *&v63[0] = MEMORY[0x277D84F90];
      sub_2388B8140(0, v33, 0);
      v34 = *&v63[0];
      v35 = v25 + 32;
      do
      {
        sub_238815814(v35, &v64);
        v36 = v65;
        v37 = v66;
        v38 = sub_238815878(&v64, v65);
        v39 = *(*(v36 - 8) + 64);
        MEMORY[0x28223BE20](v38);
        v41 = &v53 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v42 + 16))(v41);
        Transcript.ToolDefinition.init<A>(tool:)(v41, v36, v37, v10);
        sub_2388158BC(&v64);
        *&v63[0] = v34;
        v44 = *(v34 + 16);
        v43 = *(v34 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2388B8140(v43 > 1, v44 + 1, 1);
          v34 = *&v63[0];
        }

        *(v34 + 16) = v44 + 1;
        sub_2388595CC(v10, v34 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v44, type metadata accessor for Transcript.ToolDefinition);
        v35 += 40;
        --v33;
      }

      while (v33);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v45 = v57;
    sub_2388D1048();
    v46 = sub_2388D1038();
    v48 = v47;
    (*(v59 + 8))(v45, v60);
    v7 = v61;
    *v61 = v46;
    *(v7 + 8) = v48;
    *(v7 + 16) = v53;
    *(v7 + 24) = v34;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v22 = v54;
    *&v64 = v54;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession);
    sub_2388D1158();

    *&v64 = v22;
    swift_getKeyPath();
    sub_2388D1178();

    swift_beginAccess();
    v21 = *(v22 + 16);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *(v22 + 16) = v21;
    if (v49)
    {
      goto LABEL_25;
    }
  }

  v21 = sub_2388B7500(0, v21[2] + 1, 1, v21);
  *(v22 + 16) = v21;
LABEL_25:
  v51 = v21[2];
  v50 = v21[3];
  if (v51 >= v50 >> 1)
  {
    v21 = sub_2388B7500(v50 > 1, v51 + 1, 1, v21);
    *(v22 + 16) = v21;
  }

  v21[2] = v51 + 1;
  sub_2388595CC(v7, v21 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v51, type metadata accessor for Transcript.Entry);
  *(v22 + 16) = v21;
  swift_endAccess();
  *&v64 = v22;
  swift_getKeyPath();
  sub_2388D1168();

LABEL_28:

  return v22;
}

uint64_t sub_238856398(uint64_t *a1, void (*a2)(void, void, uint64_t), void (*a3)(void *, uint64_t, uint64_t))
{
  v30 = a2;
  v31 = a3;
  v29 = sub_2388D1058();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v33 = MEMORY[0x277D84F90];
    sub_2388B81C4(0, v8, 0);
    v9 = v33;
    v27 = (v4 + 8);
    v10 = (v7 + 48);
    do
    {
      v12 = *(v10 - 2);
      v11 = *(v10 - 1);
      if (*v10)
      {
        v30(*(v10 - 2), *(v10 - 1), 1);
        v13 = v12;
        v14 = v28;
        sub_2388D1048();
        v32 = sub_2388D1038();
        v16 = v15;
        v31(v12, v11, 1);
        (*v27)(v14, v29);
        v17 = v26 & 0x107 | 0x8000000000000000;
        v26 = v17;
      }

      else
      {
        v30(*(v10 - 2), *(v10 - 1), 0);

        v18 = v28;
        sub_2388D1048();
        v32 = sub_2388D1038();
        v16 = v19;
        v31(v12, v11, 0);
        (*v27)(v18, v29);
        v17 = v25 & 0x107;
        v25 = v17;
      }

      v33 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2388B81C4((v20 > 1), v21 + 1, 1);
        v9 = v33;
      }

      *(v9 + 16) = v21 + 1;
      v22 = (v9 + 88 * v21);
      v22[4] = v32;
      v22[5] = v16;
      v22[6] = v12;
      v22[7] = v11;
      v22[10] = v17;
      v10 += 24;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_238856608(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_238856678()
{
  result = qword_27DF2FFB8;
  if (!qword_27DF2FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FFB8);
  }

  return result;
}

uint64_t sub_2388566CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238856774(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else
  {
    if (a4)
    {
      return result;
    }
  }
}

uint64_t sub_238856858()
{
  v1 = type metadata accessor for GenerationSchema(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  type metadata accessor for GenerationSchema.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = *(v5 + 16);

        break;
      case 4:
        v18 = *(v5 + 8);

        v19 = *(v5 + 24);

        v20 = (v5 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64));
        v21 = *v20;

        v22 = *(type metadata accessor for StringGuides(0) + 20);
        v23 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
        v24 = *(v23 - 8);
        if (!(*(v24 + 48))(&v20[v22], 1, v23))
        {
          (*(v24 + 8))(&v20[v22], v23);
        }

        break;
      case 7:
        sub_238856774(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
        v8 = *(v5 + 40);

        v9 = *(v5 + 48);

        v10 = type metadata accessor for DynamicGenerationSchema(0);
        v11 = *(v10 + 28);
        v12 = sub_2388D2328();
        (*(*(v12 - 8) + 8))(v5 + v11, v12);
        v13 = *(v5 + *(v10 + 32));

        break;
    }
  }

  else if (EnumCaseMultiPayload < 2)
  {
    v14 = *(v5 + 8);

    v15 = *(v5 + 24);

    v16 = *(v5 + 32);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = *(v5 + 48);
  }

  v25 = *(v5 + *(v1 + 20) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238856B9C()
{
  v1 = (type metadata accessor for RawResponseStream() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[8]);

  v10 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_238856CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RawResponseStream() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2388314A4(a1, (v2 + v6), *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_238856D58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238856D90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238856DD8()
{
  result = sub_2388D1198();
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

uint64_t sub_238856EB4()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF2FFF8, &qword_2388D5BD0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238856EE4()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(qword_27DF30000, qword_2388D5BD8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_238856F1C(uint64_t a1)
{
  sub_23885733C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_23885738C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238856FDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 40) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_23885713C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_23885733C()
{
  if (!qword_27DF30088)
  {
    v0 = sub_2388D2E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30088);
    }
  }
}

void sub_23885738C()
{
  if (!qword_27DF30090)
  {
    type metadata accessor for Transcript.Entry(255);
    v0 = sub_2388D2EF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30090);
    }
  }
}

uint64_t sub_2388573E4()
{
  v1 = *(v0 + 5);
  v2 = *(v1 - 8);
  v65 = *(v2 + 80);
  v3 = (v65 + 88) & ~v65;
  v4 = *(v2 + 64);
  v5 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v64 = *(v5 + 80);
  v6 = (v3 + v4 + v64) & ~v64;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  v60 = *(v8 + 80);
  v9 = (v7 + v60 + 82) & ~v60;
  v59 = *(v8 + 64);
  v63 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  v10 = *(v63 - 8);
  v11 = *(v10 + 80);
  v58 = *(v10 + 64);
  v62 = sub_2388D3088();
  v12 = *(v62 - 8);
  v13 = *(v12 + 80);
  v61 = *(v12 + 64);
  v14 = *(v0 + 2);
  swift_unknownObjectRelease();
  v15 = *(v0 + 7);

  v16 = *(v0 + 10);

  (*(v2 + 8))(&v0[v3], v1);
  v17 = &v0[v6];
  v18 = type metadata accessor for GenerationSchema(0);
  if (!(*(*(v18 - 8) + 48))(&v0[v6], 1, v18))
  {
    v57 = v9;
    type metadata accessor for GenerationSchema.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v30 = *(v17 + 2);

          break;
        case 4:
          v31 = *(v17 + 1);

          v32 = *(v17 + 3);

          v33 = &v17[*(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64)];
          v34 = *v33;

          v35 = *(type metadata accessor for StringGuides(0) + 20);
          v36 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
          v37 = *(v36 - 8);
          v56 = v35;
          v38 = &v33[v35];
          v39 = v36;
          if (!(*(v37 + 48))(v38, 1, v36))
          {
            (*(v37 + 8))(&v33[v56], v39);
          }

          break;
        case 7:
          sub_238856774(*v17, *(v17 + 1), *(v17 + 2), v17[24]);
          v21 = *(v17 + 5);

          v22 = *(v17 + 6);

          v23 = type metadata accessor for DynamicGenerationSchema(0);
          v24 = *(v23 + 28);
          v25 = sub_2388D2328();
          (*(*(v25 - 8) + 8))(&v17[v24], v25);
          v26 = *&v17[*(v23 + 32)];

          break;
      }
    }

    else if (EnumCaseMultiPayload < 2)
    {
      v27 = *(v17 + 1);

      v28 = *(v17 + 3);

      v29 = *(v17 + 4);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v20 = *(v17 + 6);
    }

    v40 = *&v17[*(v18 + 20) + 8];

    v9 = v57;
  }

  v41 = v9;
  v42 = &v0[v9];
  v43 = type metadata accessor for PromptTemplate();
  if (!(*(*(v43 - 8) + 48))(&v0[v9], 1, v43))
  {
    v44 = *(v42 + 1);

    v45 = *(v42 + 2);

    v46 = *(v43 + 24);
    v47 = sub_2388D1138();
    v48 = *(v47 - 8);
    if (!(*(v48 + 48))(&v42[v46], 1, v47))
    {
      (*(v48 + 8))(&v42[v46], v47);
    }
  }

  v49 = v65 | v64 | v60 | v11 | v13;
  v50 = (v41 + v59 + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + v11 + 16) & ~v11;
  v52 = (((v58 + v51 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
  v53 = *&v0[((v41 + v59 + 7) & 0xFFFFFFFFFFFFFFF8) + 8];

  v54 = *&v0[v50 + 8];

  (*(v10 + 8))(&v0[v51], v63);
  (*(v12 + 8))(&v0[v52], v62);

  return MEMORY[0x2821FE8E8](v0, v52 + v61, v49 | 7);
}

uint64_t sub_2388579F8(uint64_t a1)
{
  v32 = *(v1 + 32);
  v31 = *(v1 + 48);
  v2 = *(*(v1 + 40) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v5 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v6 = (*(v5 + 64) + ((v4 + v3 + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  v8 = ((v6 + *(v7 + 80) + 82) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 31) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_238810E44(&qword_27DF300A8, &qword_2388D5C68) - 8);
  v12 = (*(v11 + 64) + ((v10 + *(v11 + 80) + 16) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_2388D3088() - 8);
  v28 = *(v1 + 24);
  v29 = *(v1 + 16);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v27 = *(v1 + 56);
  v35 = *(v1 + 64);
  v25 = *(v1 + 80);
  v26 = *(v1 + 72);
  v15 = v1 + v9;
  v16 = *(v1 + v9);
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = v1 + v10;
  v20 = *(v1 + v10);
  v21 = *(v19 + 8);
  v22 = *(v1 + v12);
  v23 = swift_task_alloc();
  *(v30 + 16) = v23;
  *v23 = v30;
  v23[1] = sub_2388414A0;

  return sub_23884D024(a1, v29, v28, v27, v35, v26, v25, v1 + v4);
}

uint64_t sub_238857D54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238857D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_238857E04()
{
  os_unfair_lock_lock((v0 + 24));
  *(v0 + 28) = 0;
  os_unfair_lock_unlock((v0 + 24));
}

uint64_t sub_238857E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 8u)
  {
    if (a5 != 8)
    {
      return result;
    }
  }
}

uint64_t sub_238857EA8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_238815814(i, &v29);
    v4 = v30;
    v5 = v31;
    sub_238815878(&v29, v30);
    v6 = (*(v5 + 40))(v4, v5);
    v8 = v7;
    v10 = sub_238820AA8(v6, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_238822F5C(v13, 1);
      v1 = v32;
      v15 = sub_238820AA8(v6, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      sub_238826B08(&v29, v28);
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2388B74DC(0, v18[2] + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_2388B74DC((v20 > 1), v21 + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v18[2] = v21 + 1;
      sub_238826B08(v28, &v18[5 * v21 + 4]);
    }

    else
    {
      sub_238810E44(&qword_27DF300D8, &qword_2388D5CD0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2388D3F70;
      sub_238826B08(&v29, v22 + 32);
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v23 = (v1[6] + 16 * v10);
      *v23 = v6;
      v23[1] = v8;
      *(v1[7] + 8 * v10) = v22;
      v24 = v1[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v1[2] = v26;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2388D3438();
  __break(1u);
  return result;
}

uint64_t sub_23885810C()
{
  v0 = sub_2388D1538();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2388D1598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2388D1568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238810E44(&qword_27DF300D0, &qword_2388D5CB8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = sub_2388D1518();
  if (*(v21 + 16) && ((*(v5 + 16))(v8, v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4), , v22 = sub_2388D1578(), (*(v5 + 8))(v8, v4), *(v22 + 16)))
  {
    (*(v10 + 16))(v13, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    sub_2388D1558();
    (*(v10 + 8))(v13, v9);
    v23 = sub_2388D1548();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v20, 0, 1, v23);
    sub_238840FB4(v20, v18, &qword_27DF300D0, &qword_2388D5CB8);
    if ((*(v24 + 88))(v18, v23) == *MEMORY[0x277D71C10])
    {
      (*(v24 + 96))(v18, v23);
      v26 = v30;
      v25 = v31;
      (*(v30 + 32))(v3, v18, v31);
      v27 = sub_2388D1528();
      (*(v26 + 8))(v3, v25);
      return v27;
    }

    (*(v24 + 8))(v18, v23);
  }

  else
  {

    v29 = sub_2388D1548();
    (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
    sub_238827E88(v20, &qword_27DF300D0, &qword_2388D5CB8);
  }

  return 0;
}

void sub_238858588()
{
  if (qword_27DF2F9E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2388D2408();
  sub_2388413AC(v0, qword_27DF3F8E0);
  oslog = sub_2388D23E8();
  v1 = sub_2388D2E18();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    MEMORY[0x23EE68030](v2, -1, -1);
  }
}

uint64_t sub_238858680()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v56 = *(v2 + 80);
  v3 = (v56 + 40) & ~v56;
  v4 = *(v2 + 64);
  v5 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v55 = *(v5 + 80);
  v6 = (v3 + v4 + v55) & ~v55;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  v9 = *(v8 + 80);
  v10 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 82) & ~v9;
  v54 = *(v8 + 64);
  v58 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  v11 = *(v58 - 8);
  v12 = *(v11 + 80);
  v57 = *(v11 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v13 = v0 + v6;
  v14 = type metadata accessor for GenerationSchema(0);
  if (!(*(*(v14 - 8) + 48))(v0 + v6, 1, v14))
  {
    type metadata accessor for GenerationSchema.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v26 = *(v13 + 16);

          break;
        case 4:
          v27 = *(v13 + 8);

          v28 = *(v13 + 24);

          v29 = (v13 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64));
          v30 = *v29;

          v31 = *(type metadata accessor for StringGuides(0) + 20);
          v32 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
          v33 = *(v32 - 8);
          v53 = v31;
          v34 = &v29[v31];
          v35 = v32;
          if (!(*(v33 + 48))(v34, 1, v32))
          {
            (*(v33 + 8))(&v29[v53], v35);
          }

          break;
        case 7:
          sub_238856774(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));
          v17 = *(v13 + 40);

          v18 = *(v13 + 48);

          v19 = type metadata accessor for DynamicGenerationSchema(0);
          v20 = *(v19 + 28);
          v21 = sub_2388D2328();
          (*(*(v21 - 8) + 8))(v13 + v20, v21);
          v22 = *(v13 + *(v19 + 32));

          break;
      }
    }

    else if (EnumCaseMultiPayload < 2)
    {
      v23 = *(v13 + 8);

      v24 = *(v13 + 24);

      v25 = *(v13 + 32);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v16 = *(v13 + 48);
    }

    v36 = *(v13 + *(v14 + 20) + 8);

    v10 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 82) & ~v9;
  }

  v37 = *(v0 + v7);

  v38 = v0 + v10;
  v39 = type metadata accessor for PromptTemplate();
  if (!(*(*(v39 - 8) + 48))(v0 + v10, 1, v39))
  {
    v40 = *(v38 + 8);

    v41 = *(v38 + 16);

    v42 = *(v39 + 24);
    v43 = sub_2388D1138();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v38 + v42, 1, v43))
    {
      (*(v44 + 8))(v38 + v42, v43);
    }
  }

  v45 = (v54 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 47) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v12 + v46 + 16) & ~v12;
  v48 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = *(v0 + v45 + 8);

  v50 = *(v0 + v48 + 8);

  v51 = *(v0 + v46 + 8);

  (*(v11 + 8))(v0 + v47, v58);

  return MEMORY[0x2821FE8E8](v0, v47 + v57, v56 | v55 | v9 | v12 | 7);
}

uint64_t sub_238858C08(uint64_t a1)
{
  v30 = v1[2];
  v29 = v1[4];
  v2 = *(v1[3] - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v27 = v4;
  v5 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v26 = (v4 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = (*(v5 + 64) + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  v8 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 82) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_238810E44(&qword_27DF300A8, &qword_2388D5C68) - 8);
  v13 = (*(v12 + 80) + v11 + 16) & ~*(v12 + 80);
  v25 = *(v1 + v6);
  v14 = v1 + v9;
  v15 = *(v1 + v9);
  v16 = *(v14 + 1);
  v17 = v1 + v10;
  v19 = *(v1 + v10);
  v18 = *(v17 + 1);
  LOBYTE(v3) = v17[16];
  v20 = v1 + v11;
  v22 = *(v1 + v11);
  v21 = *(v20 + 1);
  v23 = swift_task_alloc();
  *(v28 + 16) = v23;
  *v23 = v28;
  v23[1] = sub_2388414A0;

  return sub_238850160(a1, v1 + v27, v1 + v26, v25, v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + v8, v15, v16);
}

uint64_t *sub_238858F3C(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x23EE68030);
  }

  return result;
}

uint64_t sub_238858F8C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23885900C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v7 - 8) + 80) + 40) & ~*(*(v7 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_238833668;

  return sub_238852938(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t sub_23885910C()
{
  v1 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  sub_2388158BC((v0 + 16));
  v5 = v0 + v3;
  v6 = type metadata accessor for GenerationSchema(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    type metadata accessor for GenerationSchema.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v18 = *(v5 + 16);

          break;
        case 4:
          v19 = *(v5 + 8);

          v20 = *(v5 + 24);

          v21 = (v5 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64));
          v22 = *v21;

          v23 = *(type metadata accessor for StringGuides(0) + 20);
          v24 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
          v25 = *(v24 - 8);
          if (!(*(v25 + 48))(&v21[v23], 1, v24))
          {
            (*(v25 + 8))(&v21[v23], v24);
          }

          break;
        case 7:
          sub_238856774(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
          v9 = *(v5 + 40);

          v10 = *(v5 + 48);

          v11 = type metadata accessor for DynamicGenerationSchema(0);
          v12 = *(v11 + 28);
          v13 = sub_2388D2328();
          (*(*(v13 - 8) + 8))(v5 + v12, v13);
          v14 = *(v5 + *(v11 + 32));

          break;
      }
    }

    else if (EnumCaseMultiPayload < 2)
    {
      v15 = *(v5 + 8);

      v16 = *(v5 + 24);

      v17 = *(v5 + 32);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v8 = *(v5 + 48);
    }

    v26 = *(v5 + *(v6 + 20) + 8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2388593D4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2388414A0;

  return sub_238852CA8(a1, a2, v2 + 16, v2 + v7);
}

uint64_t sub_2388594C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238859524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_238859588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_238852BC0(a1, v2[5], v2[2], a2);
}

id sub_2388595AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2388595BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2388595CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238859634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LanguageModelSession.GenerationError.Context.init(debugDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t LanguageModelSession.GenerationError.Context.init(debugDescription:underlyingErrors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t LanguageModelSession.GenerationError.Refusal.init(transcriptEntries:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_238810E44(&qword_27DF300B8, &unk_2388D5D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_2388D10A8();
  v15 = sub_2388D1138();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_238827E14(v14, v12, &qword_27DF2FE30, &unk_2388D5750);
  v16 = _s15GenerationErrorO7RefusalV16TranscriptRecordCMa();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = (v19 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
  v21 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  *v20 = 0;
  v22 = *(sub_238810E44(&qword_27DF300C0, &qword_2388D5C88) + 28);
  v23 = sub_238810E44(&qword_27DF300C8, &qword_2388D5C90);
  bzero(v20 + v22, *(*(v23 - 8) + 64));
  sub_238840FB4(v7, v20 + v22, &qword_27DF300B8, &unk_2388D5D20);
  sub_238827E88(v14, &qword_27DF2FE30, &unk_2388D5750);
  *(v19 + 16) = a1;
  result = sub_238840FB4(v12, v19 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
  *a2 = v19;
  return result;
}

uint64_t _s15GenerationErrorO7RefusalV16TranscriptRecordCMa()
{
  result = qword_27DF30138;
  if (!qword_27DF30138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LanguageModelSession.GenerationError.Context.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_238859A78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - v7);
  v9 = sub_238810E44(&qword_27DF300B8, &unk_2388D5D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  sub_238827E14(a1, &v24 - v11, &qword_27DF300B8, &unk_2388D5D20);
  v25 = v5;
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    return sub_238840FB4(v12, a2, &qword_27DF2FFC8, &qword_2388D5D30);
  }

  sub_238827E88(a1, &qword_27DF300B8, &unk_2388D5D20);
  sub_238827E88(v12, &qword_27DF300B8, &unk_2388D5D20);
  LOBYTE(v26[0]) = 2;
  LOBYTE(v39) = 0;
  v13 = _s16FoundationModels19SystemLanguageModelC7useCase10guardrailsA2C03UseG0V_AC10GuardrailsVtcfC_0(&v39, v26);
  v26[0] = 0;
  _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(v13, MEMORY[0x277D84F90], v26);
  v39 = &unk_284B3AC20;
  v38 = 1;
  v37 = 1;
  v36 = 1;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0x80;
  v28 = 0;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = 0;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  LanguageModelSession.streamResponse(to:options:)(&v39, v26, v8);

  v14 = v8[1];
  v24 = *v8;
  v15 = v4[9];
  v16 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v16 - 8) + 16))(a2 + v15, v8 + v15, v16);
  v17 = v4[11];
  v18 = *(v8 + v4[10]);
  v19 = *(v8 + v17);
  v20 = *(v8 + v17 + 8);

  sub_238827E88(v8, &qword_27DF2FFC8, &qword_2388D5D30);
  *a2 = v24;
  a2[1] = v14;
  *(a2 + v4[10]) = v18;
  v21 = (a2 + v4[11]);
  *v21 = v19;
  v21[1] = v20;
  v22 = (a2 + v4[12]);
  *v22 = sub_238865198;
  v22[1] = 0;
  sub_238827E14(a2, a1, &qword_27DF2FFC8, &qword_2388D5D30);
  return (*(v25 + 56))(a1, 0, 1, v4);
}

uint64_t sub_238859DDC()
{
  v1 = v0[2];

  sub_238827E88(v0 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
  v2 = v0 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream;
  v3 = sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  sub_238827E88(&v2[*(v3 + 28)], &qword_27DF300B8, &unk_2388D5D20);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t LanguageModelSession.GenerationError.Refusal.explanation.getter(uint64_t a1)
{
  v2[22] = a1;
  v3 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v2[23] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v1;
  v2[24] = v5;
  v2[25] = v6;

  return MEMORY[0x2822009F8](sub_238859F40, 0, 0);
}

uint64_t sub_238859F40()
{
  v1 = v0[24];
  v2 = (v0[25] + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
  os_unfair_lock_lock(v2);
  v3 = sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  sub_238859A78(v2 + *(v3 + 28), v1);
  v5 = v0[23];
  v4 = v0[24];
  os_unfair_lock_unlock(v2);
  v6 = (v4 + *(v5 + 48));
  v0[26] = *v6;
  v0[27] = v6[1];
  v7 = *(v4 + *(v5 + 40));
  v8 = *(MEMORY[0x277D857C8] + 4);
  v9 = swift_task_alloc();
  v0[28] = v9;
  v10 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v9 = v0;
  v9[1] = sub_23885A0A4;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 12, v7, &type metadata for ResponseEnvelope, v10, v11);
}

uint64_t sub_23885A0A4()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_23885A2DC;
  }

  else
  {
    v3 = sub_23885A1B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23885A1B8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v5;
  *(v0 + 80) = *(v0 + 160);
  v6 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v6;
  v2(v0 + 16);
  if (!v1)
  {
    v7 = *(v0 + 192);
    sub_238856720(v0 + 16);
    sub_238827E88(v7, &qword_27DF2FFC8, &qword_2388D5D30);

    v8 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_238856720(v0 + 16);
  *(v0 + 240) = v1;
  sub_238827E88(*(v0 + 192), &qword_27DF2FFC8, &qword_2388D5D30);

  return MEMORY[0x2822009F8](sub_23885A35C, 0, 0);
}

uint64_t sub_23885A2DC()
{
  v0[30] = v0[29];
  sub_238827E88(v0[24], &qword_27DF2FFC8, &qword_2388D5D30);

  return MEMORY[0x2822009F8](sub_23885A35C, 0, 0);
}

uint64_t sub_23885A35C()
{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[30];

  return v2();
}

void LanguageModelSession.GenerationError.Refusal.explanationStream.getter(uint64_t *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
  os_unfair_lock_lock(v3);
  v4 = sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  sub_238859A78(v3 + *(v4 + 28), a1);

  os_unfair_lock_unlock(v3);
}

unint64_t LanguageModelSession.GenerationError.errorDescription.getter()
{
  result = 0xD000000000000013;
  v2 = *(v0 + 32);
  if (v2 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v2 == 2)
      {
        return 0xD000000000000024;
      }

      return 0xD000000000000028;
    }

    else
    {
      if (*(v0 + 32))
      {
        result = 0xD00000000000001CLL;
      }

      else
      {
        result = 0xD000000000000022;
      }

      *(v0 + 32);
    }
  }

  else if (*(v0 + 32) <= 5u)
  {
    if (v2 == 4)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD000000000000038;
    }
  }

  else if (v2 != 6)
  {
    if (v2 == 7)
    {
      return 0xD0000000000000F5;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t LanguageModelSession.GenerationError.recoverySuggestion.getter()
{
  v1 = *(v0 + 32);
  if (v1 <= 3)
  {
    if (*(v0 + 32) <= 1u)
    {
      return 0xD000000000000036;
    }

    if (v1 == 2)
    {
      return 0xD000000000000016;
    }

    return 0xD000000000000042;
  }

  else if (*(v0 + 32) <= 5u)
  {
    if (v1 == 4)
    {
      return 0xD000000000000022;
    }

    else
    {
      return 0xD000000000000042;
    }
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        return 0xD00000000000008ALL;
      }

      return 0xD000000000000016;
    }

    return 0x6961676120797254;
  }
}

unint64_t LanguageModelSession.GenerationError.failureReason.getter()
{
  result = 0xD000000000000013;
  v2 = *(v0 + 32);
  if (v2 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v2 == 2)
      {
        return 0xD000000000000024;
      }

      return 0xD00000000000002DLL;
    }

    else
    {
      if (*(v0 + 32))
      {
        result = 0xD00000000000001CLL;
      }

      else
      {
        result = 0xD000000000000022;
      }

      *(v0 + 32);
    }
  }

  else if (*(v0 + 32) <= 5u)
  {
    if (v2 == 4)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD000000000000036;
    }
  }

  else if (v2 != 6)
  {
    if (v2 == 7)
    {
      return 0xD000000000000069;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t LanguageModelSession.ToolCallError.tool.setter(__int128 *a1)
{
  sub_2388158BC(v1);

  return sub_238828174(a1, v1);
}

void *LanguageModelSession.ToolCallError.underlyingError.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t LanguageModelSession.ToolCallError.init(tool:underlyingError:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_238828174(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t LanguageModelSession.ToolCallError.errorDescription.getter()
{
  v1 = v0;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000002BLL, 0x80000002388DEDE0);
  v2 = v0[3];
  v3 = sub_238815878(v1, v1[3]);
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2388D28B8();
  MEMORY[0x23EE66C20](v7);

  MEMORY[0x23EE66C20](0xD000000000000013, 0x80000002388DEE10);
  v8 = v1[5];
  swift_getErrorValue();
  v9 = sub_2388D3448();
  MEMORY[0x23EE66C20](v9);

  return v12;
}

unint64_t sub_23885AA1C()
{
  result = qword_27DF30130;
  if (!qword_27DF30130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30130);
  }

  return result;
}

__n128 sub_23885AA88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23885AA9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 33))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 32);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23885AAE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23885AB44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23885AB8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23885ABF4()
{
  sub_23885ACD0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23885AD28();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23885ACD0()
{
  if (!qword_27DF30148)
  {
    sub_2388D1138();
    v0 = sub_2388D2E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30148);
    }
  }
}

void sub_23885AD28()
{
  if (!qword_27DF30150)
  {
    sub_238810E8C(&qword_27DF300B8, &unk_2388D5D20);
    v0 = sub_2388D1378();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30150);
    }
  }
}

uint64_t sub_23885AD8C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 sub_23885ADBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23885ADD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23885AE18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PromptTemplate.init(id:variables:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for PromptTemplate() + 24);
  v11 = sub_2388D1138();
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;

  return sub_23885AF7C(a4, &a5[v10]);
}

uint64_t type metadata accessor for PromptTemplate()
{
  result = qword_27DF30158;
  if (!qword_27DF30158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23885AF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LanguageModelSession.respond(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 272) = a4;
  *(v6 + 280) = v5;
  *(v6 + 264) = a1;
  v9 = type metadata accessor for RawResponseStream();
  *(v6 + 288) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  v11 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v12 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  v13 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v6 + 320) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  v15 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v15;
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = *(a5 + 80);
  v16 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v16;
  if (a2)
  {
    swift_getObjectType();
    v17 = sub_2388D2B38();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  *(v6 + 336) = v17;
  *(v6 + 344) = v19;

  return MEMORY[0x2822009F8](sub_23885B190, v17);
}

uint64_t sub_23885B190()
{
  v29 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  sub_23885B7B0();
  sub_23885F5A4(v8, v3, type metadata accessor for PromptTemplate);
  v9 = type metadata accessor for PromptTemplate();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  v10 = type metadata accessor for GenerationSchema(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v7[20];
  v12 = v7[21];
  v13 = sub_238815878(v7 + 17, v11);
  v28 = 0;
  sub_23884B7DC(&v28, v3, (v0 + 16), v13, v4, 0, 0, v5, sub_23884B648, 0, MEMORY[0x277D837D0], v11, v12);
  sub_238827E88(v4, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v3, &qword_27DF2FFC0, &unk_2388D5A80);
  v14 = *v5;
  v15 = v5[1];
  v16 = *(v6 + 20);
  v17 = v2[9];
  v18 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v18 - 8) + 32))(v1 + v17, v5 + v16, v18);
  v19 = *(v5 + *(v6 + 24));
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *v1 = v14;
  v1[1] = v15;
  *(v1 + v2[10]) = v19;
  v21 = (v1 + v2[11]);
  *v21 = sub_238830F10;
  v21[1] = 0;
  v22 = (v1 + v2[12]);
  *v22 = sub_238856704;
  v22[1] = v20;
  v23 = *(MEMORY[0x277D857C8] + 4);
  v24 = swift_task_alloc();
  *(v0 + 352) = v24;
  v25 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v24 = v0;
  v24[1] = sub_23885B46C;
  v26 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v19, &type metadata for ResponseEnvelope, v25, v26);
}

uint64_t sub_23885B46C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 336);
  if (v0)
  {
    v7 = sub_23885B700;
  }

  else
  {
    v7 = sub_23885B5A8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23885B5A8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), 0, v2);
  if (v1)
  {
    sub_238856720(v0 + 104);
    v4 = *(v0 + 304);
    v3 = *(v0 + 312);
    v5 = *(v0 + 296);
    sub_238827E88(*(v0 + 328), &qword_27DF2FFC8, &qword_2388D5D30);
  }

  else
  {
    v7 = *(v0 + 328);
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 296);
    sub_238856720(v0 + 104);
    sub_238827E88(v7, &qword_27DF2FFC8, &qword_2388D5D30);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23885B700()
{
  v1 = v0[45];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  sub_238827E88(v0[41], &qword_27DF2FFC8, &qword_2388D5D30);

  v5 = v0[1];

  return v5();
}

void sub_23885B7B0()
{
  v1 = type metadata accessor for Transcript.Entry(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  swift_getKeyPath();
  v22 = v0;
  sub_23885F54C();
  sub_2388D1158();

  swift_beginAccess();
  v9 = *(v0 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

    v12 = 0;
    v13 = v10;
    while (1)
    {
      if (v12 >= v13)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      sub_23885F5A4(v11 + *(v2 + 72) * v12, v8, type metadata accessor for Transcript.Entry);
      if (v10 == v12)
      {
        goto LABEL_15;
      }

      sub_23885F60C(v8, v6, type metadata accessor for Transcript.Entry);
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      ++v12;
      sub_23885F674(v6, type metadata accessor for Transcript.Entry);
      v13 = *(v9 + 16);
      if (v12 == v13)
      {
        goto LABEL_9;
      }
    }

    v14 = v6[1];
    v15 = v6[2];
    v16 = v6[3];

    if (qword_27DF2F9E0 == -1)
    {
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
LABEL_11:
    v17 = sub_2388D2408();
    sub_2388413AC(v17, qword_27DF3F8E0);
    v18 = sub_2388D23E8();
    v19 = sub_2388D2E08();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23880E000, v18, v19, "You initialized a session with instructions and then used a prompt\ntemplate with it. The instructions passed in the initializer will be\nignored.", v20, 2u);
      MEMORY[0x23EE68030](v20, -1, -1);
    }
  }

  else
  {

LABEL_9:
  }
}

uint64_t sub_23885BA90()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t LanguageModelSession.respond(to:schema:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 280) = a5;
  *(v7 + 288) = v6;
  *(v7 + 264) = a1;
  *(v7 + 272) = a4;
  v10 = type metadata accessor for GenerationSchema(0);
  *(v7 + 296) = v10;
  v11 = *(v10 - 8);
  *(v7 + 304) = v11;
  *(v7 + 312) = *(v11 + 64);
  *(v7 + 320) = swift_task_alloc();
  v12 = type metadata accessor for RawResponseStream();
  *(v7 + 328) = v12;
  v13 = *(v12 - 8);
  *(v7 + 336) = v13;
  *(v7 + 344) = *(v13 + 64);
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  v14 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v7 + 368) = swift_task_alloc();
  v15 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v7 + 376) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v7 + 384) = swift_task_alloc();
  v17 = type metadata accessor for GenerationSchema.Kind(0);
  *(v7 + 392) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v7 + 400) = swift_task_alloc();
  v19 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v7 + 408) = swift_task_alloc();
  v20 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v7 + 416) = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  v22 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v22;
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = *(a6 + 80);
  v23 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v23;
  if (a2)
  {
    swift_getObjectType();
    v24 = sub_2388D2B38();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(v7 + 432) = v24;
  *(v7 + 440) = v26;

  return MEMORY[0x2822009F8](sub_23885BD7C, v24);
}

uint64_t sub_23885BD7C()
{
  v86 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  sub_23885B7B0();
  sub_23885F5A4(v6, v1, type metadata accessor for PromptTemplate);
  v7 = type metadata accessor for PromptTemplate();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  sub_23885F5A4(v5, v2, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v78 = *(v0 + 416);
  v9 = *(v0 + 400);
  v74 = *(v0 + 424);
  v75 = *(v0 + 408);
  if (EnumCaseMultiPayload == 4)
  {
    v11 = *(v0 + 376);
    v10 = *(v0 + 384);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368);
    v72 = *(v0 + 328);
    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v9 + 8);

    v19 = *(v9 + 24);

    v20 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(v9 + *(v20 + 64), type metadata accessor for StringGuides);
    sub_23885F5A4(v17, v13, type metadata accessor for GenerationSchema);
    (*(v14 + 56))(v13, 0, 1, v15);
    v22 = v16[20];
    v21 = v16[21];
    v23 = sub_238815878(v16 + 17, v22);
    v79 = 0;
    v24 = *(v0 + 64);
    v82 = *(v0 + 48);
    v83 = v24;
    v84 = *(v0 + 80);
    v85 = *(v0 + 96);
    v25 = *(v0 + 32);
    v80 = *(v0 + 16);
    v81 = v25;
    sub_23884B7DC(&v79, v75, &v80, v23, v13, 0, 0, v12, sub_23884B648, 0, MEMORY[0x277D837D0], v22, v21);
    sub_238827E88(v13, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v75, &qword_27DF2FFC0, &unk_2388D5A80);
    v26 = v12[1];
    v70 = *v12;
    v27 = *(v72 + 20);
    v76 = v11[9];
    v28 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v29 = *(v28 - 8);
    (*(v29 + 32))(v10 + v76, v12 + v27, v28);
    v30 = *(v12 + *(v72 + 24));
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *v10 = v70;
    v10[1] = v26;
    *(v10 + v11[10]) = v30;
    v32 = (v10 + v11[11]);
    *v32 = sub_238830F10;
    v32[1] = 0;
    v33 = (v10 + v11[12]);
    *v33 = sub_238859730;
    v33[1] = v31;
    v35 = *v10;
    v34 = v10[1];
    (*(v29 + 16))(v74 + v78[9], v10 + v76, v28);

    sub_238827E88(v10, &qword_27DF2FFC8, &qword_2388D5D30);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v34;
    v37 = swift_allocObject();
    *(v37 + 2) = v35;
    *(v37 + 3) = v34;
    *(v37 + 4) = 0;
    *v74 = v35;
    v74[1] = v34;
    *(v74 + v78[10]) = v30;
    v38 = (v74 + v78[11]);
    *v38 = sub_238856808;
    v38[1] = v36;
    v39 = (v74 + v78[12]);
    v40 = sub_238856810;
    *v39 = sub_238856810;
    v39[1] = v37;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v41 = *(v0 + 360);
    v42 = *(v0 + 368);
    v73 = *(v0 + 344);
    v43 = *(v0 + 328);
    v69 = *(v0 + 352);
    v71 = *(v0 + 336);
    v44 = *(v0 + 320);
    v45 = *(v0 + 304);
    v65 = *(v0 + 296);
    v66 = *(v0 + 312);
    v47 = *(v0 + 280);
    v46 = *(v0 + 288);
    sub_23885F674(v9, type metadata accessor for GenerationSchema.Kind);
    v48 = v46[15];
    v67 = v46[16];
    v68 = sub_238815878(v46 + 12, v48);
    v79 = 0;
    v49 = *(v0 + 64);
    v82 = *(v0 + 48);
    v83 = v49;
    v84 = *(v0 + 80);
    v85 = *(v0 + 96);
    v50 = *(v0 + 32);
    v80 = *(v0 + 16);
    v81 = v50;
    sub_23885F5A4(v47, v42, type metadata accessor for GenerationSchema);
    (*(v45 + 56))(v42, 0, 1, v65);
    sub_23885F5A4(v47, v44, type metadata accessor for GenerationSchema);
    v51 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v52 = swift_allocObject();
    sub_23885F60C(v44, v52 + v51, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v79, v75, &v80, v68, v42, 0, 0, v41, sub_2388567D8, v52, &type metadata for GeneratedContent, v48, v67);

    sub_238827E88(v42, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v75, &qword_27DF2FFC0, &unk_2388D5A80);
    v53 = v41[1];
    v77 = *v41;
    v54 = *(v43 + 20);
    v55 = v78[9];
    v56 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v56 - 8) + 16))(v74 + v55, v41 + v54, v56);
    v30 = *(v41 + *(v43 + 24));
    sub_23885F60C(v41, v69, type metadata accessor for RawResponseStream);
    v57 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v37 = swift_allocObject();
    sub_23885F60C(v69, v37 + v57, type metadata accessor for RawResponseStream);
    *(v37 + ((v73 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
    *v74 = v77;
    v74[1] = v53;
    *(v74 + v78[10]) = v30;
    v58 = (v74 + v78[11]);
    *v58 = sub_2388313C0;
    v58[1] = 0;
    v59 = (v74 + v78[12]);
    v40 = sub_2388567F0;
    *v59 = sub_2388567F0;
    v59[1] = v37;
  }

  *(v0 + 448) = v40;
  *(v0 + 456) = v37;
  v60 = *(MEMORY[0x277D857C8] + 4);
  v61 = swift_task_alloc();
  *(v0 + 464) = v61;
  v62 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v61 = v0;
  v61[1] = sub_23885C510;
  v63 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v30, &type metadata for ResponseEnvelope, v62, v63);
}

uint64_t sub_23885C510()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 440);
  v6 = *(v2 + 432);
  if (v0)
  {
    v7 = sub_23885C850;
  }

  else
  {
    v7 = sub_23885C64C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23885C64C()
{
  v28 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v26, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 384);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    v9 = *(v0 + 352);
    v10 = *(v0 + 320);
    sub_238827E88(*(v0 + 424), &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v12 = *(v0 + 424);
    v14 = *(v0 + 400);
    v13 = *(v0 + 408);
    v15 = *(v0 + 384);
    v16 = *(v0 + 360);
    v17 = *(v0 + 368);
    v18 = *(v0 + 352);
    v19 = *(v0 + 320);
    v20 = *(v0 + 264);
    sub_238856720(v0 + 104);
    sub_238827E88(v12, &qword_27DF2FFD0, &qword_2388D6160);
    v21 = v26[7];
    *(v20 + 96) = v26[6];
    *(v20 + 112) = v21;
    *(v20 + 128) = v26[8];
    *(v20 + 144) = v27;
    v22 = v26[3];
    *(v20 + 32) = v26[2];
    *(v20 + 48) = v22;
    v23 = v26[5];
    *(v20 + 64) = v26[4];
    *(v20 + 80) = v23;
    v24 = v26[1];
    *v20 = v26[0];
    *(v20 + 16) = v24;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23885C850()
{
  v1 = v0[59];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  v8 = v0[40];
  sub_238827E88(v0[53], &qword_27DF2FFD0, &qword_2388D6160);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23885C93C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LanguageModelSession.respond<A>(to:generating:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 904) = v8;
  *(v9 + 896) = a8;
  *(v9 + 888) = a7;
  *(v9 + 880) = a4;
  *(v9 + 872) = a1;
  v12 = type metadata accessor for RawResponseStream();
  *(v9 + 912) = v12;
  v13 = *(v12 - 8);
  *(v9 + 920) = v13;
  *(v9 + 928) = *(v13 + 64);
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = swift_task_alloc();
  v14 = *(*(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8) + 64) + 15;
  *(v9 + 952) = swift_task_alloc();
  v15 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 960) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v9 + 968) = swift_task_alloc();
  v17 = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 976) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v9 + 984) = swift_task_alloc();
  v19 = type metadata accessor for GenerationSchema(0);
  *(v9 + 992) = v19;
  v20 = *(v19 - 8);
  *(v9 + 1000) = v20;
  *(v9 + 1008) = *(v20 + 64);
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  v21 = *(*(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8) + 64) + 15;
  *(v9 + 1032) = swift_task_alloc();
  v22 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 1040) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v9 + 1048) = swift_task_alloc();
  v24 = *(a6 + 48);
  *(v9 + 656) = *(a6 + 32);
  *(v9 + 672) = v24;
  *(v9 + 688) = *(a6 + 64);
  *(v9 + 704) = *(a6 + 80);
  v25 = *(a6 + 16);
  *(v9 + 624) = *a6;
  *(v9 + 640) = v25;
  if (a2)
  {
    swift_getObjectType();
    v26 = sub_2388D2B38();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v9 + 1064) = v28;
  *(v9 + 1056) = v26;

  return MEMORY[0x2822009F8](sub_23885CC48, v26);
}

uint64_t sub_23885CC48()
{
  v85 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 984);
  v4 = *(v0 + 976);
  v5 = *(v0 + 904);
  v6 = *(v0 + 896);
  v7 = *(v0 + 888);
  v8 = *(v0 + 880);
  sub_23885B7B0();
  sub_23885F5A4(v8, v1, type metadata accessor for PromptTemplate);
  v9 = type metadata accessor for PromptTemplate();
  (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
  (*(v6 + 40))(v7, v6);
  sub_23885F5A4(v2, v3, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v76 = *(v0 + 1040);
  v77 = *(v0 + 1048);
  v73 = *(v0 + 1032);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 952);
  v13 = *(v0 + 944);
  if (EnumCaseMultiPayload == 4)
  {
    v14 = *(v0 + 1000);
    v15 = *(v0 + 992);
    v16 = *(v0 + 984);
    v17 = *(v0 + 968);
    v18 = *(v0 + 960);
    v71 = *(v0 + 912);
    v19 = *(v0 + 904);
    v20 = *(v16 + 8);

    v21 = *(v16 + 24);

    v22 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(v16 + *(v22 + 64), type metadata accessor for StringGuides);
    sub_23885F5A4(v11, v12, type metadata accessor for GenerationSchema);
    (*(v14 + 56))(v12, 0, 1, v15);
    v24 = v19[20];
    v23 = v19[21];
    v25 = sub_238815878(v19 + 17, v24);
    v78 = 0;
    v26 = *(v0 + 672);
    v81 = *(v0 + 656);
    v82 = v26;
    v83 = *(v0 + 688);
    v84 = *(v0 + 704);
    v27 = *(v0 + 640);
    v79 = *(v0 + 624);
    v80 = v27;
    sub_23884B7DC(&v78, v73, &v79, v25, v12, 0, 0, v13, sub_23884B648, 0, MEMORY[0x277D837D0], v24, v23);
    sub_238827E88(v12, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v11, type metadata accessor for GenerationSchema);
    sub_238827E88(v73, &qword_27DF2FFC0, &unk_2388D5A80);
    v28 = v13[1];
    v69 = *v13;
    v29 = *(v71 + 20);
    v74 = v18[9];
    v30 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v31 = *(v30 - 8);
    (*(v31 + 32))(v17 + v74, v13 + v29, v30);
    v32 = *(v13 + *(v71 + 24));
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *v17 = v69;
    v17[1] = v28;
    *(v17 + v18[10]) = v32;
    v34 = (v17 + v18[11]);
    *v34 = sub_238830F10;
    v34[1] = 0;
    v35 = (v17 + v18[12]);
    *v35 = sub_238859730;
    v35[1] = v33;
    v37 = *v17;
    v36 = v17[1];
    (*(v31 + 16))(v77 + v76[9], v17 + v74, v30);

    sub_238827E88(v17, &qword_27DF2FFC8, &qword_2388D5D30);
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    v39 = swift_allocObject();
    *(v39 + 2) = v37;
    *(v39 + 3) = v36;
    *(v39 + 4) = 0;
    *v77 = v37;
    v77[1] = v36;
    *(v77 + v76[10]) = v32;
    v40 = (v77 + v76[11]);
    *v40 = sub_2388596B0;
    v40[1] = v38;
    v41 = (v77 + v76[12]);
    v42 = sub_238859748;
    *v41 = sub_238859748;
    v41[1] = v39;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v43 = *(v0 + 1016);
    v64 = *(v0 + 1008);
    v44 = *(v0 + 1000);
    v45 = *(v0 + 992);
    v72 = *(v0 + 928);
    v68 = *(v0 + 936);
    v70 = *(v0 + 920);
    v67 = *(v0 + 912);
    v46 = *(v0 + 904);
    sub_23885F674(*(v0 + 984), type metadata accessor for GenerationSchema.Kind);
    v47 = v46[15];
    v65 = v46[16];
    v66 = sub_238815878(v46 + 12, v47);
    v78 = 0;
    v48 = *(v0 + 672);
    v81 = *(v0 + 656);
    v82 = v48;
    v83 = *(v0 + 688);
    v84 = *(v0 + 704);
    v49 = *(v0 + 640);
    v79 = *(v0 + 624);
    v80 = v49;
    sub_23885F5A4(v11, v12, type metadata accessor for GenerationSchema);
    (*(v44 + 56))(v12, 0, 1, v45);
    sub_23885F5A4(v11, v43, type metadata accessor for GenerationSchema);
    v50 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v51 = swift_allocObject();
    sub_23885F60C(v43, v51 + v50, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v78, v73, &v79, v66, v12, 0, 0, v13, sub_238859698, v51, &type metadata for GeneratedContent, v47, v65);

    sub_238827E88(v12, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v11, type metadata accessor for GenerationSchema);
    sub_238827E88(v73, &qword_27DF2FFC0, &unk_2388D5A80);
    v52 = v13[1];
    v75 = *v13;
    v53 = *(v67 + 20);
    v54 = v76[9];
    v55 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v55 - 8) + 16))(v77 + v54, v13 + v53, v55);
    v32 = *(v13 + *(v67 + 24));
    sub_23885F60C(v13, v68, type metadata accessor for RawResponseStream);
    v56 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v39 = swift_allocObject();
    sub_23885F60C(v68, v39 + v56, type metadata accessor for RawResponseStream);
    *(v39 + ((v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
    *v77 = v75;
    v77[1] = v52;
    *(v77 + v76[10]) = v32;
    v57 = (v77 + v76[11]);
    *v57 = sub_2388313C0;
    v57[1] = 0;
    v58 = (v77 + v76[12]);
    v42 = sub_2388596B4;
    *v58 = sub_2388596B4;
    v58[1] = v39;
  }

  *(v0 + 1080) = v39;
  *(v0 + 1072) = v42;
  v59 = *(MEMORY[0x277D857C8] + 4);
  v60 = swift_task_alloc();
  *(v0 + 1088) = v60;
  v61 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v60 = v0;
  v60[1] = sub_23885D470;
  v62 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 792, v32, &type metadata for ResponseEnvelope, v61, v62);
}