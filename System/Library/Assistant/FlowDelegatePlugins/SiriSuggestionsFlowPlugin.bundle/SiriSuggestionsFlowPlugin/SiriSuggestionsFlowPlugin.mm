uint64_t sub_18D8()
{
  sub_4140();
  [*(v0 + 16) donateInteractionWithCompletion:0];
  sub_4108();

  return v1();
}

BOOL sub_193C()
{
  v1 = v0;
  v2 = sub_104D4();
  v3 = sub_414C(v2);
  v37 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3B68(&qword_18678, &qword_10B10);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_FEE4();
  v14 = sub_414C(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FEA4();
  v21 = (*(v16 + 88))(v20, v13);
  v22 = enum case for Parse.directInvocation(_:);
  if (v21 == enum case for Parse.directInvocation(_:))
  {
    (*(v16 + 96))(v20, v13);
    v23 = sub_FED4();
    sub_4118(v23);
    (*(v24 + 32))(v12, v20, v23);
    sub_39C0(v12, 0, 1, v23);
    v25 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
    sub_4188();
    sub_4004(v12, v1 + v25);
    swift_endAccess();
  }

  else
  {
    v36 = v2;
    sub_10304();
    v26 = sub_104C4();
    v27 = sub_105B4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = v1;
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "SiriSuggestionsInvocationFlow :: Unhandled parse type", v28, 2u);
      v1 = v35;
      sub_41A8();
    }

    (*(v37 + 8))(v8, v36);
    sub_FED4();
    sub_4134();
    sub_39C0(v29, v30, v31, v32);
    v33 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
    sub_4188();
    sub_4004(v12, v1 + v33);
    swift_endAccess();
    (*(v16 + 8))(v20, v13);
  }

  return v21 == v22;
}

uint64_t sub_1C5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_3B68(&qword_18668, &qword_10AF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_10574();
  sub_4134();
  sub_39C0(v10, v11, v12, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = v5;

  sub_325C(0, 0, v9, &unk_10B00, v14);
}

uint64_t sub_1D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = sub_FE64();
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v10 = *(v9 + 64) + 15;
  v7[23] = swift_task_alloc();
  v11 = *(*(sub_3B68(&qword_18670, &qword_10B80) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v12 = sub_10244();
  v7[25] = v12;
  v13 = *(v12 - 8);
  v7[26] = v13;
  v14 = *(v13 + 64) + 15;
  v7[27] = swift_task_alloc();
  v15 = sub_10154();
  v7[28] = v15;
  v16 = *(v15 - 8);
  v7[29] = v16;
  v17 = *(v16 + 64) + 15;
  v7[30] = swift_task_alloc();
  v18 = sub_10214();
  v7[31] = v18;
  v19 = *(v18 - 8);
  v7[32] = v19;
  v20 = *(v19 + 64) + 15;
  v7[33] = swift_task_alloc();
  v21 = sub_10264();
  v7[34] = v21;
  v22 = *(v21 - 8);
  v7[35] = v22;
  v23 = *(v22 + 64) + 15;
  v7[36] = swift_task_alloc();
  v24 = sub_104D4();
  v7[37] = v24;
  v25 = *(v24 - 8);
  v7[38] = v25;
  v26 = *(v25 + 64) + 15;
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v27 = sub_FED4();
  v7[41] = v27;
  v28 = *(v27 - 8);
  v7[42] = v28;
  v29 = *(v28 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v30 = *(*(sub_3B68(&qword_18678, &qword_10B10) - 8) + 64) + 15;
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v31 = *(*(sub_3B68(&qword_18680, &qword_10B18) - 8) + 64) + 15;
  v7[47] = swift_task_alloc();
  v32 = sub_101E4();
  v7[48] = v32;
  v33 = *(v32 - 8);
  v7[49] = v33;
  v34 = *(v33 + 64) + 15;
  v7[50] = swift_task_alloc();

  return _swift_task_switch(sub_2194, 0, 0);
}

uint64_t sub_2194()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 328);
  v3 = *(v0 + 136);
  v4 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
  *(v0 + 408) = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
  swift_beginAccess();
  sub_3CF4(v3 + v4, v1, &qword_18678, &qword_10B10);
  v5 = sub_3CCC(v1, 1, v2);
  v6 = *(v0 + 368);
  if (v5)
  {
    sub_3D54(*(v0 + 368), &qword_18678, &qword_10B10);
LABEL_3:
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_4:
    sub_3D54(v0 + 56, &qword_18688, &unk_10B20);
LABEL_5:
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    sub_4134();
    sub_39C0(v9, v10, v11, v12);
    goto LABEL_6;
  }

  v30 = *(v0 + 352);
  v31 = *(v0 + 328);
  v32 = *(v0 + 336);
  v33 = *(v32 + 16);
  *(v0 + 416) = v33;
  *(v0 + 424) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v33(v30, v6, v31);
  sub_3D54(v6, &qword_18678, &qword_10B10);
  v34 = sub_FEC4();
  *(v0 + 432) = *(v32 + 8);
  *(v0 + 440) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35 = sub_4160();
  v36(v35);
  if (!v34)
  {
    goto LABEL_3;
  }

  sub_30DC(0x6974736567677573, 0xEA00000000006E6FLL, v34, (v0 + 56));

  if (!*(v0 + 80))
  {
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v37 = *(v0 + 376);
  v38 = *(v0 + 384);
  v39 = *(v0 + 112);
  v40 = *(v0 + 120);
  sub_3DAC();
  sub_10524();

  if (sub_3CCC(v37, 1, v38) == 1)
  {
LABEL_6:
    v13 = *(v0 + 320);
    sub_3D54(*(v0 + 376), &qword_18680, &qword_10B18);
    sub_10304();
    v14 = sub_104C4();
    v15 = sub_105B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "SiriSuggestionsInvocationFlow :: Unable to get encoded suggestion for invocation", v16, 2u);
      sub_41A8();
    }

    v17 = *(v0 + 320);
    v18 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v0 + 168);
    v24 = *(v0 + 144);
    v23 = *(v0 + 152);

    v25 = *(v19 + 8);
    v26 = sub_4160();
    v27(v26);
    sub_FE44();
    v24(v20);
    (*(v21 + 8))(v20, v22);
    sub_40D0();
    v61 = *(v0 + 192);
    v63 = *(v0 + 184);

    sub_4108();
    sub_416C();

    __asm { BRAA            X1, X16 }
  }

  v41 = *(v0 + 288);
  v42 = *(v0 + 256);
  v43 = *(v0 + 264);
  v44 = *(v0 + 248);
  v45 = *(v0 + 208);
  v60 = *(v0 + 216);
  v46 = *(v0 + 192);
  v62 = *(v0 + 200);
  v64 = *(v0 + 240);
  v47 = *(v0 + 136);
  (*(*(v0 + 392) + 32))(*(v0 + 400), *(v0 + 376), *(v0 + 384));
  type metadata accessor for InvocationContextHolder();
  sub_101D4();
  sub_10204();
  (*(v42 + 8))(v43, v44);
  sub_312C();

  v48 = *(v47 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory + 32);
  sub_3E04((v47 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory), *(v47 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory + 24));
  sub_10194();
  v49 = *(v0 + 48);
  sub_3E04((v0 + 16), *(v0 + 40));
  (*(v45 + 104))(v60, enum case for InvocationType.unknown(_:), v62);
  sub_FD54();
  sub_4134();
  sub_39C0(v50, v51, v52, v53);
  sub_10114();
  v54 = async function pointer to dispatch thunk of SuggestionDispatcher.dispatch(suggestion:presentationContext:)[1];
  v55 = swift_task_alloc();
  *(v0 + 448) = v55;
  *v55 = v0;
  v55[1] = sub_26BC;
  v56 = *(v0 + 400);
  v57 = *(v0 + 240);
  sub_416C();

  return dispatch thunk of SuggestionDispatcher.dispatch(suggestion:presentationContext:)();
}

uint64_t sub_26BC()
{
  sub_4128();
  v3 = v2[56];
  v4 = v2[30];
  v5 = v2[29];
  v6 = v2[28];
  v7 = *v1;
  sub_40F8();
  *v8 = v7;
  *(v9 + 456) = v0;

  v10 = *(v5 + 8);
  v11 = sub_4160();
  v12(v11);
  if (v0)
  {
    v13 = sub_2CA4;
  }

  else
  {
    v13 = sub_281C;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_281C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  sub_FE44();
  v8(v4);
  v10 = *(v5 + 8);
  v11 = sub_4160();
  v12(v11);
  v14 = *(v9 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_interactionDonator);
  v13 = *(v9 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_interactionDonator + 8);
  sub_3CF4(v9 + v1, v2, &qword_18678, &qword_10B10);
  if (sub_3CCC(v2, 1, v3))
  {
    sub_3D54(*(v0 + 360), &qword_18678, &qword_10B10);
LABEL_3:
    sub_104E4();

    goto LABEL_5;
  }

  v16 = *(v0 + 432);
  v15 = *(v0 + 440);
  v17 = *(v0 + 424);
  v18 = *(v0 + 360);
  v19 = *(v0 + 344);
  v20 = *(v0 + 328);
  (*(v0 + 416))(v19, v18, v20);
  sub_3D54(v18, &qword_18678, &qword_10B10);
  v21 = sub_FEC4();
  v16(v19, v20);
  if (!v21)
  {
    goto LABEL_3;
  }

LABEL_5:
  v22 = *(v0 + 400);
  v23 = *(v0 + 160);
  v24.super.isa = sub_31C0().super.isa;
  *(v0 + 464) = v24;

  v28 = (v14 + *v14);
  v25 = v14[1];
  v26 = swift_task_alloc();
  *(v0 + 472) = v26;
  *v26 = v0;
  v26[1] = sub_2A74;

  return v28(v24.super.isa);
}

uint64_t sub_2A74()
{
  sub_4140();
  sub_4128();
  v3 = v2;
  v4 = *(v2 + 472);
  v5 = *v1;
  sub_40F8();
  *v6 = v5;
  *(v3 + 480) = v0;

  if (v0)
  {
    v7 = sub_2DFC;
  }

  else
  {

    v7 = sub_2B80;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_2B80()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v2 + 8))(v1, v3);
  sub_3E48(v0 + 2);
  sub_40D0();
  v6 = v0[24];
  v7 = v0[23];

  sub_4108();
  sub_416C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2CA4()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v13 = v0[40];
  v14 = v0[39];
  v15 = v0[33];
  v16 = v0[30];
  v9 = v0[27];
  v17 = v0[24];
  v18 = v0[23];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v1 + 8))(v2, v3);
  sub_3E48(v0 + 2);

  v10 = v0[1];
  v11 = v0[57];

  return v10();
}

uint64_t sub_2DFC()
{
  v35 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 312);

  sub_10304();
  swift_errorRetain();
  v3 = sub_104C4();
  v4 = sub_105B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 480);
    v28 = *(v0 + 384);
    v31 = *(v0 + 400);
    v6 = *(v0 + 304);
    v23 = *(v0 + 296);
    v24 = *(v0 + 312);
    v26 = *(v0 + 288);
    v27 = *(v0 + 392);
    v7 = *(v0 + 280);
    v25 = *(v0 + 272);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    *(v0 + 128) = v5;
    swift_errorRetain();
    sub_3B68(&qword_18698, &qword_10B60);
    v10 = sub_10504();
    v12 = sub_B5DC(v10, v11, &v34);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "SiriSuggestionsInvocationFlow :: Error when donating interaction: %s", v8, 0xCu);
    sub_3E48(v9);
    sub_41A8();
    sub_41A8();

    (*(v6 + 8))(v24, v23);
    (*(v7 + 8))(v26, v25);
    (*(v27 + 8))(v31, v28);
  }

  else
  {
    v13 = *(v0 + 480);
    v14 = *(v0 + 392);
    v29 = *(v0 + 384);
    v32 = *(v0 + 400);
    v15 = *(v0 + 304);
    v16 = *(v0 + 312);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);

    (*(v15 + 8))(v16, v17);
    (*(v19 + 8))(v18, v20);
    (*(v14 + 8))(v32, v29);
  }

  sub_3E48((v0 + 16));
  sub_40D0();
  v30 = *(v0 + 192);
  v33 = *(v0 + 184);

  sub_4108();

  return v21();
}

double sub_30DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_3ED8(a1, a2), (v7 & 1) != 0))
  {
    sub_4074(*(a3 + 56) + 32 * v6, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_312C()
{
  sub_FEF4();
  sub_3E04(v1, v1[3]);
  sub_FE24();
  sub_3E48(v1);

  return sub_10254();
}

INInteraction sub_31C0()
{
  v0 = [objc_allocWithZone(sub_10374()) init];
  v1 = sub_101C4();
  [v0 setSuggestion:v1];

  v2 = [objc_allocWithZone(sub_10384()) init];
  sub_3E94();
  v3.super.isa = v0;
  v4.super.isa = v2;
  return sub_10584(v3, v4, 1);
}

uint64_t sub_325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_3B68(&qword_18668, &qword_10AF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_3CF4(a3, v23 - v10, &qword_18668, &qword_10AF0);
  v12 = sub_10574();
  v13 = sub_3CCC(v11, 1, v12);

  if (v13 == 1)
  {
    sub_3D54(v11, &qword_18668, &qword_10AF0);
  }

  else
  {
    sub_10564();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10554();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10514() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_3D54(a3, &qword_18668, &qword_10AF0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_3D54(a3, &qword_18668, &qword_10AF0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_34EC()
{
  sub_3D54(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation, &qword_18678, &qword_10B10);
  v1 = *(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_interactionDonator + 8);

  sub_3E48((v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory));
  return v0;
}

uint64_t sub_3548()
{
  sub_34EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_35C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_3678;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_3678()
{
  sub_4140();
  v2 = v1;
  sub_4128();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_40F8();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_3788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.execute()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_383C;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_383C()
{
  sub_4140();
  sub_4128();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_40F8();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_3920(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriSuggestionsInvocationFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t variable initialization expression of SiriSuggestionsFlow.intentProperties()
{
  sub_10424();
  sub_4134();

  return sub_39C0(v0, v1, v2, v3);
}

uint64_t type metadata accessor for SiriSuggestionsInvocationFlow()
{
  result = qword_18508;
  if (!qword_18508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3A44()
{
  sub_3AEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_3AEC()
{
  if (!qword_18518)
  {
    sub_FED4();
    v0 = sub_105C4();
    if (!v1)
    {
      atomic_store(v0, &qword_18518);
    }
  }
}

uint64_t sub_3B68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3BB0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_383C;

  return sub_1D80(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3B68(a3, a4);
  sub_4118(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_3D54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3B68(a2, a3);
  sub_4118(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_3DAC()
{
  result = qword_18690;
  if (!qword_18690)
  {
    sub_101E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18690);
  }

  return result;
}

void *sub_3E04(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3E48(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_3E94()
{
  result = qword_186A0;
  if (!qword_186A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_186A0);
  }

  return result;
}

unint64_t sub_3ED8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10624();
  sub_10534();
  v6 = sub_10634();

  return sub_3F50(a1, a2, v6);
}

unint64_t sub_3F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10604() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_4004(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B68(&qword_18678, &qword_10B10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_4074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_40D0()
{
  result = v0[50];
  v2 = v0[46];
  v3 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[43];
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[30];
  v12 = v0[27];
  return result;
}

uint64_t sub_4108()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_4188()
{

  return swift_beginAccess();
}

uint64_t sub_41A8()
{
}

uint64_t sub_41C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for EnvironmentRequestIdProvider();
  sub_D170();
  v6 = swift_allocObject();
  v7 = type metadata accessor for SiriSuggestionsFlow();
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = (v10 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider);
  *(v10 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider + 24) = v5;
  v11[4] = sub_C010(&qword_18938, v12, type metadata accessor for EnvironmentRequestIdProvider);
  *v11 = v6;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_10424();
  sub_4134();
  sub_39C0(v13, v14, v15, v16);
  *(v10 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionsFacade) = a1;
  *(v10 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionDispatcherFactory) = a2;
  v17 = (v10 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_enabled);
  *v17 = sub_4374;
  v17[1] = 0;
  v22 = v2;
  sub_CA14();
  v23 = sub_C010(v18, 255, v19);
  v21[0] = v10;
  swift_beginAccess();

  sub_C058(v21, v6 + 16, &qword_18930, &qword_10D88);
  swift_endAccess();

  return v10;
}

uint64_t sub_43A4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = sub_10154();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3B68(&qword_186B0, &qword_10B48);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v19 - v14;
  sub_C0A4(v5, v19 - v14, &qword_186B0, &qword_10B48);
  v16 = 1;
  if (sub_3CCC(v15, 1, v7) == 1)
  {
    v17 = a3;
    return sub_39C0(v17, v16, 1, v7);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = a3;
  v20(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    return sub_39C0(v17, v16, 1, v7);
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t SiriSuggestionsFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v180 = a1;
  v3 = sub_3B68(&qword_186A8, &qword_10B40);
  v4 = sub_CBA0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v165 = &v159 - v7;
  v8 = sub_3B68(&qword_186B0, &qword_10B48);
  v9 = sub_CBA0(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_C8A4();
  sub_C644();
  __chkstk_darwin(v12);
  v167 = &v159 - v13;
  v14 = sub_10424();
  v15 = sub_414C(v14);
  v175 = v16;
  v176 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_C8A4();
  sub_C644();
  __chkstk_darwin(v19);
  v177 = &v159 - v20;
  v21 = sub_104D4();
  v181 = sub_414C(v21);
  v182 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v181);
  sub_C8A4();
  v179 = v25;
  v27 = __chkstk_darwin(v26);
  v29 = &v159 - v28;
  __chkstk_darwin(v27);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v30);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v31);
  sub_CB94();
  v178 = v32;
  __chkstk_darwin(v33);
  v171 = &v159 - v34;
  v35 = sub_FEE4();
  v36 = sub_414C(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  v42 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_3B68(&qword_186B8, &unk_10B50);
  v44 = sub_414C(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  __chkstk_darwin(v44);
  v50 = &v159 - v49;
  v172 = sub_3B68(&qword_186C0, &qword_10DF0);
  v51 = sub_4118(v172);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51);
  sub_C8A4();
  sub_C644();
  __chkstk_darwin(v54);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v55);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v56);
  sub_CB94();
  v174 = v57;
  __chkstk_darwin(v58);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v59);
  sub_CB94();
  sub_C644();
  __chkstk_darwin(v60);
  sub_CB94();
  sub_C644();
  v62 = __chkstk_darwin(v61);
  v64 = &v159 - v63;
  v65 = *(v1 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_enabled);
  v66 = *(v1 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_enabled + 8);
  if (v65(v62))
  {
    v160 = v2;
    sub_FF94();
    v67 = sub_FFB4();
    (*(v46 + 8))(v50, v43);
    sub_FEA4();
    LOBYTE(v43) = 0;
    v67(v42);
    v180 = v64;
    v76 = *(v38 + 8);
    v77 = sub_D164();
    v78(v77);

    v79 = v171;
    sub_10304();
    v80 = v160;

    v81 = sub_104C4();
    v82 = sub_105A4();

    v83 = os_log_type_enabled(v81, v82);
    v84 = v181;
    if (v83)
    {
      v43 = sub_CEEC();
      v85 = sub_CED4();
      v183[0] = v85;
      *v43 = 136315138;
      v86 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties;
      sub_D120();
      sub_C0A4(v80 + v86, v169, &qword_186C0, &qword_10DF0);
      v87 = sub_10504();
      v89 = sub_B5DC(v87, v88, v183);

      *(v43 + 4) = v89;
      sub_CF24();
      _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
      sub_3E48(v85);
      sub_41A8();
      sub_C9D0();
    }

    v95 = *(v182 + 8);
    v95(v79, v84);
    v96 = v178;
    v97 = v170;
    sub_10304();
    sub_C0A4(v180, v97, &qword_186C0, &qword_10DF0);
    v98 = sub_104C4();
    v99 = sub_105A4();
    if (sub_CEB8(v99))
    {
      v100 = sub_CEEC();
      v101 = sub_CED4();
      v183[0] = v101;
      *v100 = 136315138;
      sub_C0A4(v97, v169, &qword_186C0, &qword_10DF0);
      v102 = sub_10504();
      v103 = v95;
      v104 = v84;
      v106 = v105;
      sub_C928();
      sub_3D54(v107, v108, v109);
      v110 = sub_B5DC(v102, v106, v183);
      v84 = v104;
      v95 = v103;

      *(v100 + 4) = v110;
      _os_log_impl(&dword_0, v98, v43, "new intentProperties calculated as %s", v100, 0xCu);
      sub_3E48(v101);
      sub_41A8();
      sub_41A8();

      v103(v178, v84);
    }

    else
    {

      sub_3D54(v97, &qword_186C0, &qword_10DF0);
      v95(v96, v84);
    }

    v113 = v160;
    v114 = v174;
    v115 = v175;
    v116 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties;
    sub_D120();
    v117 = v173;
    sub_C0A4(v113 + v116, v173, &qword_186C0, &qword_10DF0);
    v118 = v176;
    if (sub_3CCC(v117, 1, v176) == 1)
    {
      v119 = v117;
LABEL_16:
      sub_3D54(v119, &qword_186C0, &qword_10DF0);
LABEL_17:
      v123 = v168;
      sub_10304();
      v124 = sub_104C4();
      sub_105A4();
      sub_CC6C();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = sub_CCE8();
        sub_CC98(v126);
        sub_CF24();
        _os_log_impl(v127, v128, v129, v130, v131, 2u);
        sub_C9D0();
      }

      v95(v123, v84);
      sub_D1BC();
      v132 = v180;
      sub_BB58(v180, v113 + v116);
      swift_endAccess();
      sub_3D54(v132, &qword_186C0, &qword_10DF0);
      return 1;
    }

    (*(v115 + 32))(v177, v117, v118);
    sub_C0A4(v180, v114, &qword_186C0, &qword_10DF0);
    if (sub_3CCC(v114, 1, v118) == 1)
    {
      v120 = *(v115 + 8);
      v121 = sub_4160();
      v122(v121);
      v119 = v114;
      goto LABEL_16;
    }

    v133 = v84;
    v134 = v167;
    sub_103F4();
    v135 = *(v115 + 8);
    v136 = sub_CC44();
    v135(v136);
    v137 = sub_10154();
    sub_C654(v134);
    if (v138)
    {
      (v135)(v177, v118);
      sub_3D54(v134, &qword_186B0, &qword_10B48);
    }

    else
    {
      v139 = sub_10124();
      (*(*(v137 - 8) + 8))(v134, v137);
      if (v139)
      {
        sub_10304();
        v140 = sub_104C4();
        v141 = sub_105A4();
        if (os_log_type_enabled(v140, v141))
        {
          v142 = sub_CCE8();
          *v142 = 0;
          _os_log_impl(&dword_0, v140, v141, "Reusing previous turn's intentProperties as this is a show more request", v142, 2u);
          sub_41A8();
        }

        v95(v166, v133);
        v182 = sub_103E4();
        sub_10404();
        sub_10414();
        v143 = v162;
        sub_C0A4(v180, v162, &qword_186C0, &qword_10DF0);
        v144 = v176;
        if (sub_3CCC(v143, 1, v176) == 1)
        {
          sub_3D54(v143, &qword_186C0, &qword_10DF0);
          sub_4134();
          sub_39C0(v145, v146, v147, v137);
        }

        else
        {
          sub_103F4();
          (v135)(v143, v144);
        }

        v148 = v163;
        sub_C0A4(v160 + v116, v163, &qword_186C0, &qword_10DF0);
        if (sub_3CCC(v148, 1, v144))
        {
          sub_3D54(v148, &qword_186C0, &qword_10DF0);
          sub_101F4();
          sub_4134();
          sub_39C0(v149, v150, v151, v152);
        }

        else
        {
          v153 = v161;
          (*(v175 + 16))(v161, v148, v144);
          sub_3D54(v148, &qword_186C0, &qword_10DF0);
          sub_103C4();
          (v135)(v153, v144);
        }

        v154 = v164;
        sub_103D4();
        (v135)(v177, v144);
        sub_3D54(v180, &qword_186C0, &qword_10DF0);
        v111 = 1;
        v155 = sub_CB28();
        sub_39C0(v155, v156, v157, v144);
        v158 = v160;
        sub_D1BC();
        sub_C058(v154, v158 + v116, &qword_186C0, &qword_10DF0);
        swift_endAccess();
        return v111;
      }

      (v135)(v177, v118);
    }

    v113 = v160;
    v84 = v133;
    goto LABEL_17;
  }

  sub_10304();
  v68 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = sub_CCE8();
    sub_CC98(v70);
    sub_CF24();
    _os_log_impl(v71, v72, v73, v74, v75, 2u);
    sub_C9D0();
  }

  (*(v182 + 8))(v29, v181);
  return 0;
}

uint64_t SiriSuggestionsFlow.execute()()
{
  sub_4140();
  v1[45] = v2;
  v1[46] = v0;
  v1[47] = *v0;
  v3 = sub_FDD4();
  v1[48] = v3;
  sub_C5EC(v3);
  v1[49] = v4;
  v6 = *(v5 + 64);
  v1[50] = sub_CF44();
  v7 = sub_3B68(&qword_186D0, &unk_10B70);
  v1[51] = v7;
  sub_CBA0(v7);
  v9 = *(v8 + 64);
  v1[52] = sub_CF44();
  v10 = sub_3B68(&qword_186D8, &qword_10DE0);
  v1[53] = v10;
  sub_CBA0(v10);
  v12 = *(v11 + 64);
  v1[54] = sub_D020();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v13 = sub_10394();
  v1[58] = v13;
  sub_C5EC(v13);
  v1[59] = v14;
  v16 = *(v15 + 64);
  v1[60] = sub_CF44();
  v17 = sub_10244();
  v1[61] = v17;
  sub_C5EC(v17);
  v1[62] = v18;
  v20 = *(v19 + 64);
  v1[63] = sub_CF44();
  v21 = sub_10154();
  v1[64] = v21;
  sub_C5EC(v21);
  v1[65] = v22;
  v24 = *(v23 + 64);
  v1[66] = sub_CF44();
  v25 = sub_3B68(&qword_186A8, &qword_10B40);
  sub_CBA0(v25);
  v27 = *(v26 + 64);
  v1[67] = sub_D020();
  v1[68] = swift_task_alloc();
  v28 = sub_10224();
  v1[69] = v28;
  sub_C5EC(v28);
  v1[70] = v29;
  v31 = *(v30 + 64);
  v1[71] = sub_CF44();
  v32 = sub_101F4();
  v1[72] = v32;
  sub_C5EC(v32);
  v1[73] = v33;
  v35 = *(v34 + 64);
  v1[74] = sub_D020();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v36 = sub_10424();
  v1[78] = v36;
  sub_C5EC(v36);
  v1[79] = v37;
  v39 = *(v38 + 64);
  v1[80] = sub_D020();
  v1[81] = swift_task_alloc();
  v40 = sub_3B68(&qword_186B0, &qword_10B48);
  v1[82] = v40;
  sub_CBA0(v40);
  v42 = *(v41 + 64);
  v1[83] = sub_D020();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v43 = sub_3B68(&qword_18670, &qword_10B80);
  sub_CBA0(v43);
  v45 = *(v44 + 64);
  v1[90] = sub_D020();
  v1[91] = swift_task_alloc();
  v46 = sub_FD54();
  v1[92] = v46;
  sub_C5EC(v46);
  v1[93] = v47;
  v49 = *(v48 + 64);
  v1[94] = sub_CF44();
  v50 = sub_3B68(&qword_186C0, &qword_10DF0);
  v1[95] = v50;
  sub_CBA0(v50);
  v52 = *(v51 + 64);
  v1[96] = sub_D020();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v53 = sub_104D4();
  v1[102] = v53;
  sub_C5EC(v53);
  v1[103] = v54;
  v56 = *(v55 + 64);
  v1[104] = sub_D020();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v57 = sub_104B4();
  v1[118] = v57;
  sub_C5EC(v57);
  v1[119] = v58;
  v60 = *(v59 + 64);
  v1[120] = sub_CF44();
  v61 = sub_C934();

  return _swift_task_switch(v61, v62, v63);
}

uint64_t sub_5A4C()
{
  v173 = v0;
  v1 = *(v0 + 368);
  v2 = *(v1 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionsFacade);
  *(v0 + 968) = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionDispatcherFactory), (*(v0 + 976) = v3) != 0))
  {
    v4 = *(v0 + 960);
    v5 = *(v0 + 936);

    v170 = v3;

    v6 = sub_10334();
    sub_10314();

    sub_10234();
    v7 = sub_10334();
    sub_CCD0();
    sub_10344();

    sub_10304();

    v8 = sub_104C4();
    sub_105A4();

    v9 = sub_D214();
    v10 = *(v0 + 936);
    v11 = *(v0 + 824);
    v12 = *(v0 + 816);
    if (v9)
    {
      v13 = *(v0 + 808);
      v158 = *(v0 + 760);
      v167 = *(v0 + 936);
      v14 = *(v0 + 368);
      v161 = *(v0 + 816);
      v15 = sub_CEEC();
      v172[0] = sub_CED4();
      *v15 = 136315138;
      v16 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties;
      sub_D120();
      sub_C0A4(v14 + v16, v13, &qword_186C0, &qword_10DF0);
      v17 = sub_10504();
      v19 = sub_B5DC(v17, v18, v172);

      *(v15 + 4) = v19;
      sub_CAC0(&dword_0, v20, v21, "Using intentProperties: %s");
      sub_CC04();
      sub_41A8();

      v22 = *(v11 + 8);
      v22(v167, v161);
    }

    else
    {

      v22 = *(v11 + 8);
      v22(v10, v12);
    }

    *(v0 + 984) = v22;
    v36 = *(v0 + 928);
    sub_10304();
    v37 = sub_104C4();
    v38 = sub_10594();
    if (sub_CC50(v38))
    {
      v39 = sub_CCE8();
      sub_CCDC(v39);
      sub_D19C(&dword_0, v40, v41, "SiriSuggestionsFlow :: Getting suggestions from sirisuggestions");
      sub_CA38();
    }

    v42 = *(v0 + 928);
    v43 = *(v0 + 824);
    v44 = *(v0 + 816);
    v45 = *(v0 + 368);

    v46 = sub_CCC4();
    (v22)(v46);
    v47 = *(v45 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider + 32);
    sub_3E04((v45 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider), *(v45 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider + 24));
    sub_CCC4();
    sub_10434();
    v168 = v22;
    if (v48)
    {
      v49 = *(v0 + 736);
      v50 = *(v0 + 728);
      sub_FD34();

      sub_C654(v50);
      if (!v96)
      {
        v70 = (v0 + 1096);
        v71 = *(v0 + 920);
        v72 = *(v0 + 368);
        (*(*(v0 + 744) + 32))(*(v0 + 752), *(v0 + 728), *(v0 + 736));
        *(v0 + 1096) = 0;
        type metadata accessor for SiriSuggestionsFlow();
        sub_CA14();
        sub_C010(v73, 255, v74);
        sub_FF74();
        sub_FF14();

        v165 = sub_10364();
        v76 = v75;

        sub_10304();

        v77 = sub_104C4();
        v78 = sub_105A4();

        v79 = os_log_type_enabled(v77, v78);
        v80 = *(v0 + 824);
        v81 = *(v0 + 816);
        if (v79)
        {
          v160 = *(v0 + 920);
          v82 = *(v0 + 368);
          v83 = swift_slowAlloc();
          v172[0] = swift_slowAlloc();
          *v83 = 136315394;
          v84 = *(v82 + 24);
          *(v0 + 288) = *(v82 + 16);
          *(v0 + 296) = v84;

          sub_3B68(&qword_18730, &unk_10BB0);
          v85 = sub_10504();
          v157 = v81;
          v87 = sub_B5DC(v85, v86, v172);

          *(v83 + 4) = v87;
          *(v83 + 12) = 2080;
          v88 = v165;
          *(v0 + 304) = v165;
          *(v0 + 312) = v76;

          v89 = sub_10504();
          v91 = sub_B5DC(v89, v90, v172);

          *(v83 + 14) = v91;
          _os_log_impl(&dword_0, v77, v78, "SiriSuggestionsFlow :: previousExecutionSessionId: %s, currentSessionId: %s", v83, 0x16u);
          swift_arrayDestroy();
          v70 = (v0 + 1096);
          sub_41A8();
          v22 = v168;
          sub_41A8();

          v168(v160, v157);
          v92 = &SiriSuggestionsInvocationFlow;
          if (!v76)
          {
            goto LABEL_33;
          }
        }

        else
        {

          v93 = sub_CCC4();
          (v22)(v93);
          v92 = &SiriSuggestionsInvocationFlow;
          v88 = v165;
          if (!v76)
          {
LABEL_33:
            v98 = *(v0 + 800);
            v99 = *(v0 + 624);
            v100 = *(v0 + 368);
            v101 = *&v92[50].flags;
            *(v0 + 992) = v101;
            sub_D120();
            sub_C0A4(v100 + v101, v98, &qword_186C0, &qword_10DF0);
            v102 = sub_C9EC();
            v103 = *(v0 + 800);
            if (v102)
            {
              v104 = *(v0 + 712);
              v105 = *(v0 + 512);
              sub_3D54(*(v0 + 800), &qword_186C0, &qword_10DF0);
              sub_4134();
              sub_39C0(v106, v107, v108, v105);
            }

            else
            {
              v109 = *(v0 + 752);
              v110 = *(v0 + 712);
              v111 = *(v0 + 704);
              v112 = *(v0 + 648);
              v113 = *(v0 + 632);
              v114 = *(v0 + 624);
              v115 = *(v113 + 16);
              v116 = sub_CBAC();
              v117(v116);
              sub_3D54(v103, &qword_186C0, &qword_10DF0);
              sub_103F4();
              (*(v113 + 8))(v112, v114);
              v118 = swift_task_alloc();
              *(v118 + 16) = v109;
              *(v118 + 24) = v70;
              sub_43A4(sub_BCD8, v118, v110);

              sub_3D54(v111, &qword_186B0, &qword_10B48);
            }

            v119 = *(v0 + 912);
            v120 = *(v0 + 712);
            v121 = *(v0 + 696);
            sub_10304();
            v122 = sub_4160();
            sub_C0A4(v122, v123, v124, v125);
            v126 = sub_104C4();
            v127 = sub_10594();
            v128 = os_log_type_enabled(v126, v127);
            v129 = *(v0 + 816);
            if (v128)
            {
              v166 = *(v0 + 912);
              v130 = *(v0 + 704);
              v131 = *(v0 + 696);
              v132 = *(v0 + 656);
              v163 = *(v0 + 824);
              v133 = sub_CEEC();
              v134 = sub_CED4();
              v172[0] = v134;
              *v133 = 136315138;
              sub_C0A4(v131, v130, &qword_186B0, &qword_10B48);
              sub_D164();
              sub_10504();
              sub_3D54(v131, &qword_186B0, &qword_10B48);
              v135 = sub_D164();
              v138 = sub_B5DC(v135, v136, v137);

              *(v133 + 4) = v138;
              _os_log_impl(&dword_0, v126, v127, "Using presentationContext as: %s", v133, 0xCu);
              sub_3E48(v134);
              sub_41A8();
              sub_41A8();

              v168(v166, v129);
            }

            else
            {
              v139 = *(v0 + 696);

              sub_3D54(v139, &qword_186B0, &qword_10B48);
              v140 = sub_4160();
              (v22)(v140);
            }

            *(v0 + 320) = v170;
            v141 = sub_3B68(&qword_18700, &qword_10B88);
            v142 = *(v141 + 48);
            v143 = *(v141 + 52);
            swift_allocObject();
            v144 = async function pointer to SinkDispatcherProvider.init(suggestionDispatcherFactory:)[1];

            swift_task_alloc();
            sub_CC38();
            *(v0 + 1000) = v145;
            *v145 = v146;
            v145[1] = sub_66A8;

            return SinkDispatcherProvider.init(suggestionDispatcherFactory:)(v0 + 320);
          }
        }

        v94 = *(v0 + 368);
        v95 = *(v94 + 24);
        if (v95 && (*(v94 + 16) == v88 ? (v96 = v95 == v76) : (v96 = 0), v96 || (v97 = *(v94 + 24), (sub_10604() & 1) != 0)))
        {

          *v70 = 1;
        }

        else
        {
          *(v94 + 16) = v88;
          *(v94 + 24) = v76;
        }

        goto LABEL_33;
      }

      sub_3D54(*(v0 + 728), &qword_18670, &qword_10B80);
    }

    v51 = *(v0 + 864);
    sub_10304();
    v52 = sub_104C4();
    v53 = sub_105B4();
    if (sub_CC50(v53))
    {
      v54 = sub_CCE8();
      sub_CCDC(v54);
      sub_D19C(&dword_0, v55, v56, "SiriSuggestionsFlow :: No requestId set. Skipping suggestions");
      sub_CA38();
    }

    v57 = *(v0 + 960);
    v58 = *(v0 + 952);
    v59 = *(v0 + 944);
    v60 = *(v0 + 864);
    v61 = *(v0 + 824);
    v62 = *(v0 + 816);
    v63 = *(v0 + 360);

    v168(v60, v62);
    sub_FE44();
    sub_10234();
    v64 = sub_10334();
    sub_CE68();
    sub_10324();

    v65 = *(v58 + 8);
    v66 = sub_CCC4();
    v67(v66);
  }

  else
  {
    v23 = *(v0 + 856);
    sub_10304();
    v24 = sub_104C4();
    v25 = sub_105B4();
    if (sub_CE74(v25))
    {
      v26 = sub_CCE8();
      sub_CC98(v26);
      sub_CAA0(&dword_0, v27, v28, "No suggestions facade set. Cannot continue");
      sub_C9D0();
    }

    v29 = *(v0 + 856);
    v30 = *(v0 + 824);
    v31 = *(v0 + 816);
    v32 = *(v0 + 360);

    v33 = *(v30 + 8);
    v34 = sub_4160();
    v35(v34);
    sub_FE44();
  }

  sub_C408();
  sub_C7C0();
  v147 = *(v0 + 608);
  v148 = *(v0 + 600);
  v149 = *(v0 + 592);
  v150 = *(v0 + 568);
  v151 = *(v0 + 544);
  v152 = *(v0 + 536);
  v153 = *(v0 + 528);
  v154 = *(v0 + 504);
  v155 = *(v0 + 480);
  v156 = *(v0 + 456);
  v159 = *(v0 + 448);
  v162 = *(v0 + 440);
  v164 = *(v0 + 432);
  v169 = *(v0 + 416);
  v171 = *(v0 + 400);

  sub_CA08();

  return v68();
}

uint64_t sub_66A8()
{
  sub_D06C();
  v2 = v1;
  sub_4128();
  v4 = v3;
  sub_CF6C();
  *v5 = v4;
  v7 = *(v6 + 1000);
  v8 = *v0;
  sub_40F8();
  *v9 = v8;
  *(v4 + 1008) = v2;

  v10 = *(&async function pointer to dispatch thunk of SinkDispatcherProvider.getDispatcher() + 1);
  v14 = (&async function pointer to dispatch thunk of SinkDispatcherProvider.getDispatcher() + async function pointer to dispatch thunk of SinkDispatcherProvider.getDispatcher());
  swift_task_alloc();
  sub_CC38();
  *(v4 + 1016) = v11;
  *v11 = v12;
  v11[1] = sub_67DC;

  return v14(v4 + 16);
}

uint64_t sub_67DC()
{
  sub_4140();
  sub_4128();
  v2 = *(v1 + 1016);
  v3 = *v0;
  sub_40F8();
  *v4 = v3;

  v5 = sub_C934();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_68C0()
{
  v5 = v0[78];
  sub_C0A4(v0[46] + v0[124], v0[99], &qword_186C0, &qword_10DF0);
  v6 = sub_C9EC();
  v7 = v0[99];
  if (v6)
  {
    sub_3D54(v0[99], &qword_186C0, &qword_10DF0);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v1 = v0[81];
    v10 = v0[79];
    v2 = v0[78];
    (*(v10 + 16))(v1, v0[99], v2);
    sub_3D54(v7, &qword_186C0, &qword_10DF0);
    v8 = sub_10404();
    v9 = v11;
    v12 = *(v10 + 8);
    v3 = v10 + 8;
    v13 = sub_C974();
    v14(v13);
  }

  sub_FFF4();
  v15 = sub_FFE4();
  v17 = v16;
  if (v9)
  {
    v18 = v8 == v15 && v9 == v16;
    if (v18)
    {

LABEL_15:
      v26 = v0[113];
      sub_10304();
      v27 = sub_104C4();
      v28 = sub_105A4();
      if (sub_CE74(v28))
      {
        v29 = sub_CCE8();
        sub_CC98(v29);
        sub_CAA0(&dword_0, v30, v31, "Logging siri help engagement");
        sub_C9D0();
      }

      v32 = v0[123];
      v33 = v0[121];
      v34 = v0[113];
      v35 = v0[103];
      v36 = v0[102];
      v37 = v0[101];
      v38 = v0[71];
      v39 = v0[70];
      v100 = v0[124];
      v103 = v0[69];
      v99 = v0[47];
      v40 = v27;
      v41 = v0[46];

      v42 = sub_4160();
      v32(v42);
      v0[43] = v33;
      sub_C0A4(v41 + v100, v37, &qword_186C0, &qword_10DF0);
      sub_9E4C(v37, v38);
      v43 = sub_D138();
      sub_3D54(v43, v44, &qword_10DF0);
      (*(v39 + 104))(v38, enum case for SiriSuggestions.Intent.action(_:), v103);
      v45 = async function pointer to SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:submitEngagement:)[1];
      v46 = swift_task_alloc();
      v0[128] = v46;
      sub_100D4();
      *v46 = v0;
      v46[1] = sub_6F88;
      v47 = v0[94];
      v48 = v0[71];
      sub_CB68();

      return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:submitEngagement:)();
    }

    v8 = sub_10604();

    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_D150();
  sub_C0A4(v20 + v19, v17, &qword_186C0, &qword_10DF0);
  v21 = sub_C9EC();
  v22 = v0[98];
  if (v21)
  {
    v9 = v0[72];
    v8 = v0[68];
    sub_3D54(v0[98], &qword_186C0, &qword_10DF0);
    sub_4134();
    sub_39C0(v23, v24, v25, v9);
LABEL_21:
    v56 = sub_D054();
    sub_3D54(v56, &qword_186A8, &qword_10B40);
    sub_C0A4(v1 + v8, v9, &qword_186C0, &qword_10DF0);
    swift_task_alloc();
    sub_CC38();
    v0[130] = v57;
    *v57 = v58;
    sub_C8F8(v57);
    sub_CB68();

    return sub_A408();
  }

  v50 = sub_CA74();
  v51(v50);
  sub_3D54(v22, &qword_186C0, &qword_10DF0);
  sub_103C4();
  v53 = *(v3 + 8);
  v52 = (v3 + 8);
  v54 = sub_4160();
  v55(v54);
  if (sub_3CCC(v2, 1, v1) == 1)
  {
    goto LABEL_21;
  }

  v60 = sub_CC78();
  v61(v60);
  sub_10304();
  v62 = sub_104C4();
  v63 = sub_105A4();
  if (sub_CE74(v63))
  {
    v64 = sub_CCE8();
    sub_CC98(v64);
    sub_CAA0(&dword_0, v65, v66, "Using precomputed suggestions from the intent");
    sub_C9D0();
  }

  sub_CE3C();
  v67 = sub_4160();
  v4(v67);
  v68 = sub_C974();
  v102(v68);
  sub_C0A4((v0 + 2), (v0 + 12), &qword_18708, &qword_10B98);
  if (v0[15])
  {
    sub_C84C();
    sub_3E04(v0 + 7, v9);
    v69 = sub_C944();
    v70(v69);
    v71 = sub_C974();
    sub_C0A4(v71, v72, v73, v74);
    sub_C8D8(v2);
    if (v18)
    {
      sub_C888();
      v101 = v75;
      sub_CF14();
      (*(v76 + 104))(v8, enum case for InvocationType.siriHelp(_:));
      v77 = *(v62 + 16);
      sub_C928();
      v78();
      sub_C770();
      sub_C8D8(v101);
      if (!v18)
      {
        sub_3D54(v0[86], &qword_186B0, &qword_10B48);
      }
    }

    else
    {
      v92 = sub_C95C();
      v93(v92);
    }

    v94 = async function pointer to dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)[1];
    v95 = swift_task_alloc();
    v0[132] = v95;
    *v95 = v0;
    sub_C54C(v95);
    sub_CB68();

    return dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)(v96);
  }

  else
  {
    v79 = v0[111];
    sub_3D54((v0 + 12), &qword_18708, &qword_10B98);
    sub_10304();
    v80 = sub_104C4();
    v81 = sub_105B4();
    sub_CC50(v81);
    sub_CAE0();
    if (v82)
    {
      *sub_CCE8() = 0;
      sub_CDB0(&dword_0, v83, v84, "No dispatcher returned from factory!");
      sub_CB4C();
    }

    v85 = sub_4160();
    v52(v85);
    v86 = v0[126];
    v87 = sub_10184();
    sub_D190(v87);
    sub_3B68(&qword_18718, &qword_10BA0);
    sub_BC14();
    sub_D1FC();
    sub_C43C();
    sub_CB68();

    return _swift_task_switch(v88, v89, v90);
  }
}

uint64_t sub_6F88()
{
  sub_4140();
  sub_4128();
  v3 = v2;
  sub_CF6C();
  *v4 = v3;
  v6 = *(v5 + 1024);
  v7 = *v1;
  sub_40F8();
  *v8 = v7;
  *(v3 + 1032) = v0;

  v9 = sub_D17C();
  v10(v9);
  sub_CB08();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_70A0()
{
  sub_D150();
  sub_C0A4(v9 + v8, v1, &qword_186C0, &qword_10DF0);
  v10 = sub_C9EC();
  v11 = v3[98];
  if (v10)
  {
    v0 = v3[72];
    v2 = v3[68];
    sub_3D54(v3[98], &qword_186C0, &qword_10DF0);
    sub_4134();
    sub_39C0(v12, v13, v14, v0);
LABEL_4:
    v21 = sub_D054();
    sub_3D54(v21, &qword_186A8, &qword_10B40);
    sub_C0A4(v4 + v2, v0, &qword_186C0, &qword_10DF0);
    swift_task_alloc();
    sub_CC38();
    v3[130] = v22;
    *v22 = v23;
    sub_C8F8(v22);
    sub_CB68();

    return sub_A408();
  }

  v15 = sub_CA74();
  v16(v15);
  sub_3D54(v11, &qword_186C0, &qword_10DF0);
  sub_103C4();
  v18 = *(v6 + 8);
  v17 = (v6 + 8);
  v19 = sub_4160();
  v20(v19);
  if (sub_3CCC(v5, 1, v4) == 1)
  {
    goto LABEL_4;
  }

  v26 = sub_CC78();
  v27(v26);
  sub_10304();
  v28 = sub_104C4();
  v29 = sub_105A4();
  if (sub_CE74(v29))
  {
    v30 = sub_CCE8();
    sub_CC98(v30);
    sub_CAA0(&dword_0, v31, v32, "Using precomputed suggestions from the intent");
    sub_C9D0();
  }

  sub_CE3C();
  v33 = sub_4160();
  v7(v33);
  v34 = sub_C974();
  v66(v34);
  sub_C0A4((v3 + 2), (v3 + 12), &qword_18708, &qword_10B98);
  if (v3[15])
  {
    sub_C84C();
    sub_3E04(v3 + 7, v0);
    v35 = sub_C944();
    v36(v35);
    v37 = sub_C974();
    sub_C0A4(v37, v38, v39, v40);
    sub_C8D8(v5);
    if (v41)
    {
      sub_C888();
      v65 = v42;
      sub_CF14();
      (*(v43 + 104))(v2, enum case for InvocationType.siriHelp(_:));
      v44 = *(v28 + 16);
      sub_C928();
      v45();
      sub_C770();
      sub_C8D8(v65);
      if (!v41)
      {
        sub_3D54(v3[86], &qword_186B0, &qword_10B48);
      }
    }

    else
    {
      v59 = sub_C95C();
      v60(v59);
    }

    v61 = async function pointer to dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)[1];
    v62 = swift_task_alloc();
    v3[132] = v62;
    *v62 = v3;
    sub_C54C(v62);
    sub_CB68();

    return dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)(v63);
  }

  else
  {
    v46 = v3[111];
    sub_3D54((v3 + 12), &qword_18708, &qword_10B98);
    sub_10304();
    v47 = sub_104C4();
    v48 = sub_105B4();
    sub_CC50(v48);
    sub_CAE0();
    if (v49)
    {
      *sub_CCE8() = 0;
      sub_CDB0(&dword_0, v50, v51, "No dispatcher returned from factory!");
      sub_CB4C();
    }

    v52 = sub_4160();
    v17(v52);
    v53 = v3[126];
    v54 = sub_10184();
    sub_D190(v54);
    sub_3B68(&qword_18718, &qword_10BA0);
    sub_BC14();
    sub_D1FC();
    sub_C43C();
    sub_CB68();

    return _swift_task_switch(v55, v56, v57);
  }
}

uint64_t sub_74A0()
{
  sub_D06C();
  v2 = *v1;
  sub_CF6C();
  *v4 = v3;
  v5 = *(v2 + 1040);
  *v4 = *v1;
  *(v3 + 1048) = v0;

  sub_3D54(*(v2 + 776), &qword_186C0, &qword_10DF0);
  sub_CB08();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_75D4()
{
  v3 = v0[124];
  v4 = v0[96];
  v5 = v0[78];
  v6 = v0[46];
  (*(v0[73] + 32))(v0[77], v0[75], v0[72]);
  sub_C0A4(v6 + v3, v4, &qword_186C0, &qword_10DF0);
  sub_C654(v4);
  if (v7)
  {
    sub_3D54(v0[96], &qword_186C0, &qword_10DF0);
  }

  else
  {
    v48 = v0[101];
    v8 = v0[88];
    v9 = v0[79];
    v3 = v0[78];
    v47 = v0[77];
    v10 = v0[73];
    v11 = v0[72];
    v1 = v0[67];
    v12 = v0[64];
    v49 = v0[46];
    v51 = v0[124];
    (*(v9 + 32))(v0[80], v0[96], v3);
    sub_103E4();
    sub_10404();
    sub_10414();
    sub_4134();
    sub_39C0(v13, v14, v15, v12);
    (*(v10 + 16))(v1, v47, v11);
    sub_39C0(v1, 0, 1, v11);
    v2 = v48;
    sub_103D4();
    v16 = *(v9 + 8);
    v17 = sub_CC44();
    v18(v17);
    sub_39C0(v48, 0, 1, v3);
    v5 = v49;
    v4 = v51;
    swift_beginAccess();
    sub_C058(v48, v49 + v51, &qword_186C0, &qword_10DF0);
    swift_endAccess();
  }

  sub_C0A4((v0 + 2), (v0 + 12), &qword_18708, &qword_10B98);
  if (v0[15])
  {
    sub_C84C();
    sub_3E04(v0 + 7, v5);
    v19 = sub_C944();
    v20(v19);
    v21 = sub_C974();
    sub_C0A4(v21, v22, v23, v24);
    sub_C8D8(v1);
    if (v7)
    {
      sub_C888();
      v50 = v25;
      sub_CF14();
      (*(v26 + 104))(v3, enum case for InvocationType.siriHelp(_:));
      v27 = *(v4 + 16);
      sub_C928();
      v28();
      sub_C770();
      sub_C8D8(v50);
      if (!v7)
      {
        sub_3D54(v0[86], &qword_186B0, &qword_10B48);
      }
    }

    else
    {
      v41 = sub_C95C();
      v42(v41);
    }

    v43 = async function pointer to dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)[1];
    v44 = swift_task_alloc();
    v0[132] = v44;
    *v44 = v0;
    v45 = sub_C54C(v44);

    return dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)(v45);
  }

  else
  {
    v29 = v0[111];
    sub_3D54((v0 + 12), &qword_18708, &qword_10B98);
    sub_10304();
    v30 = sub_104C4();
    v31 = sub_105B4();
    sub_CC50(v31);
    sub_CAE0();
    if (v32)
    {
      *sub_CCE8() = 0;
      sub_CDB0(&dword_0, v33, v34, "No dispatcher returned from factory!");
      sub_CB4C();
    }

    v35 = sub_4160();
    v2(v35);
    v36 = v0[126];
    v37 = sub_10184();
    sub_D190(v37);
    sub_3B68(&qword_18718, &qword_10BA0);
    sub_BC14();
    sub_D1FC();
    v38 = sub_C43C();

    return _swift_task_switch(v38, v39, v40);
  }
}

uint64_t sub_79E0()
{
  v2 = *v1;
  v3 = *v1;
  sub_40F8();
  *v4 = v3;
  v5 = v2[132];
  *v4 = *v1;
  v3[133] = v0;

  v6 = v2[74];
  v7 = v2[73];
  v8 = v2[72];
  (*(v2[65] + 8))(v2[66], v2[64]);
  v11 = *(v7 + 8);
  v10 = v7 + 8;
  v9 = v11;
  if (v0)
  {
    v3[135] = v9;
    v3[136] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v12 = sub_C974();
  v13(v12);
  sub_CB08();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_7BBC()
{
  sub_4140();
  sub_3E48((v0 + 56));
  v1 = *(v0 + 1008);
  v2 = sub_10184();
  sub_D190(v2);
  sub_3B68(&qword_18718, &qword_10BA0);
  sub_BC14();
  sub_D1FC();
  v3 = sub_C43C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_7C38()
{
  sub_4140();
  v1 = *(v0 + 1072);
  sub_100E4();

  v2 = sub_C934();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  sub_D038();
  sub_D144();
  if (*(v53 + 200))
  {
    v54 = *(v53 + 880);
    sub_BCC0((v53 + 176), v53 + 136);
    sub_10304();
    v55 = sub_104C4();
    sub_10594();
    sub_CC6C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = sub_CCE8();
      sub_CCDC(v57);
      _os_log_impl(&dword_0, v55, v54, "found flow from dispatcher. Returning nextFlow", v52, 2u);
      sub_CA38();
    }

    v102 = *(v53 + 1008);
    v58 = *(v53 + 984);
    v117 = *(v53 + 968);
    v120 = *(v53 + 976);
    v123 = *(v53 + 952);
    v126 = *(v53 + 944);
    v59 = *(v53 + 880);
    v60 = *(v53 + 824);
    v61 = *(v53 + 816);
    v111 = *(v53 + 752);
    v114 = *(v53 + 960);
    v62 = *(v53 + 744);
    v105 = *(v53 + 712);
    v108 = *(v53 + 736);
    v100 = *(v53 + 616);
    v63 = *(v53 + 584);
    v64 = *(v53 + 576);
    v65 = *(v53 + 360);

    v66 = sub_CB84();
    v58(v66);
    v67 = *(v53 + 168);
    sub_3E04((v53 + 136), *(v53 + 160));
    sub_FE34();

    (*(v63 + 8))(v100, v64);
    sub_3D54(v53 + 16, &qword_18708, &qword_10B98);
    sub_3D54(v105, &qword_186B0, &qword_10B48);
    sub_3E48((v53 + 136));
    (*(v62 + 8))(v111, v108);
    sub_10234();
    v68 = sub_CE9C();
    sub_C748();

    (*(v123 + 8))(v114, v126);
  }

  else
  {
    v69 = *(v53 + 872);
    sub_3D54(v53 + 176, &qword_18728, &qword_10BA8);
    sub_10304();
    v70 = sub_104C4();
    sub_10594();
    sub_CC6C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = sub_CCE8();
      sub_CCDC(v72);
      sub_CA54(&dword_0, v73, v74, "no flow was returned from the dispatcher");
      sub_CA38();
    }

    v103 = *(v53 + 1008);
    v75 = v70;
    v76 = *(v53 + 984);
    v118 = *(v53 + 968);
    v121 = *(v53 + 976);
    v124 = *(v53 + 952);
    v127 = *(v53 + 944);
    v77 = *(v53 + 872);
    v78 = *(v53 + 824);
    v79 = *(v53 + 816);
    v112 = *(v53 + 752);
    v115 = *(v53 + 960);
    v80 = *(v53 + 744);
    v106 = *(v53 + 712);
    v109 = *(v53 + 736);
    v81 = *(v53 + 616);
    v82 = *(v53 + 584);
    v83 = *(v53 + 576);
    v84 = *(v53 + 360);

    v76(v77, v79);
    sub_FE44();

    (*(v82 + 8))(v81, v83);
    sub_3D54(v53 + 16, &qword_18708, &qword_10B98);
    sub_3D54(v106, &qword_186B0, &qword_10B48);
    (*(v80 + 8))(v112, v109);
    sub_10234();
    v85 = sub_10334();
    sub_10324();

    (*(v124 + 8))(v115, v127);
  }

  sub_C408();
  sub_C7C0();
  v95 = *(v53 + 608);
  v96 = *(v53 + 600);
  v97 = *(v53 + 592);
  v98 = *(v53 + 568);
  v99 = *(v53 + 544);
  v101 = *(v53 + 536);
  v104 = *(v53 + 528);
  v107 = *(v53 + 504);
  v110 = *(v53 + 480);
  v113 = *(v53 + 456);
  v116 = *(v53 + 448);
  v119 = *(v53 + 440);
  v122 = *(v53 + 432);
  v125 = *(v53 + 416);
  v128 = *(v53 + 400);

  sub_CA08();
  sub_D004();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v95, v96, v97, v98, v99, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, a49, a50, a51, a52);
}

uint64_t sub_822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60)
{
  sub_D038();
  a59 = v67;
  a60 = v68;
  sub_D144();
  a58 = v62;
  v69 = v62[129];
  sub_CD90();
  sub_3B68(&qword_18698, &qword_10B60);
  if ((sub_C980() & 1) == 0)
  {
LABEL_7:
    v79 = v62[104];
    v80 = v62[41];

    sub_10304();
    swift_errorRetain();
    v81 = sub_104C4();
    sub_105B4();

    sub_D214();
    sub_CAF4();
    if (v82)
    {
      sub_CEEC();
      v83 = sub_CD50();
      sub_CF04(v83);
      sub_D0CC(4.8149e-34);
      v84 = sub_10504();
      v61 = v85;
      v66 = sub_B5DC(v84, v85, &a48);

      *(v65 + 4) = v66;
      sub_CAC0(&dword_0, v86, v87, "Unable to execute sirisuggestions: %s");
      sub_CC04();
      sub_41A8();

      v88 = sub_CFE4();
      v89(v88);
    }

    else
    {

      v90 = sub_CFD4();
      (v65)(v90);
    }

    sub_C674();

    sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
    sub_3D54(v66, &qword_186B0, &qword_10B48);
    v91 = sub_CF34();
    v92(v91);
    sub_10234();
    v93 = sub_D0E8();
    sub_CA2C();
    sub_C8B8();

    v94 = *(v61 + 8);
    v95 = sub_CE90();
    v96(v95);
    goto LABEL_11;
  }

  v70 = sub_CE30();
  if ((*(v71 + 88))(v70) != enum case for SiriHelpDispatcherErrors.notEnoughSuggestions(_:))
  {
    v77 = sub_CE30();
    (*(v78 + 8))(v77);
    goto LABEL_7;
  }

  sub_CD70();
  v72 = sub_CC44();
  sub_C0A4(v72, v73, v74, v75);
  sub_CD00();
  if (v76)
  {
    v109 = sub_3D54(v60, &qword_186B0, &qword_10B48);
    v110 = 1;
  }

  else
  {
    sub_D0B0();
    v106 = *(v61 + 8);
    v61 += 8;
    v107 = sub_CA2C();
    v109 = v108(v107);
    v110 = 0;
  }

  sub_C9A8(v109, v110);
  v111 = sub_CFF4();
  v112(v111);
  v113 = sub_CB28();
  sub_39C0(v113, v114, v115, v69);
  v116 = *(v64 + 48);
  v117 = sub_CBAC();
  sub_C0A4(v117, v118, v119, &qword_10DE0);
  sub_CDF0();
  v120 = sub_C9EC();
  v121 = v62[61];
  if (v120 == 1)
  {
    v122 = v62[56];
    v123 = v62[57];
    v63 = &qword_186D8;
    v124 = &qword_10DE0;
    sub_C928();
    sub_3D54(v125, v126, v127);
    sub_C928();
    sub_3D54(v128, v129, v130);
    sub_C654(v60 + v116);
    if (!v76)
    {
      goto LABEL_21;
    }

    sub_3D54(v62[52], &qword_186D8, &qword_10DE0);
  }

  else
  {
    sub_C0A4(v62[52], v62[55], &qword_186D8, &qword_10DE0);
    sub_C654(v60 + v116);
    if (v76)
    {
      sub_CFAC();
      v63 = &qword_186D8;
      v124 = &qword_10DE0;
      sub_C928();
      sub_3D54(v131, v132, v133);
      sub_C928();
      sub_3D54(v134, v135, v136);
      v137 = sub_CF9C();
      v138(v137);
LABEL_21:
      sub_3D54(v62[52], &qword_186D0, &unk_10B70);
LABEL_22:
      sub_CDD0();
      v139 = sub_4160();
      sub_C0A4(v139, v140, v141, v142);
      v143 = sub_104C4();
      v144 = sub_10594();
      if (sub_CEB8(v144))
      {
        v145 = sub_CBE0();
        v146 = sub_CED4();
        a48 = v146;
        *v145 = 136315138;
        v147 = sub_CCD0();
        sub_C0A4(v147, v148, v149, v150);
        sub_CD28();
        if (v76)
        {
          v177 = sub_3D54(v60, &qword_186B0, &qword_10B48);
          v178 = 1;
        }

        else
        {
          sub_D094();
          v174 = *(v65 + 8);
          v65 += 8;
          v175 = sub_CCD0();
          v177 = v176(v175);
          v178 = 0;
        }

        v116 = sub_C6F4(v177, v178);
        v66 = v179;
        sub_3D54(v65, &qword_186B0, &qword_10B48);
        v180 = sub_D078();

        *(v145 + 4) = v180;
        sub_CE10(&dword_0, v181, v182, "No suggestions for invocation type: %s. Marking flow as complete");
        sub_3E48(v146);
        sub_CB4C();
        sub_41A8();

        v183 = sub_CF5C();
        v184(v183);
      }

      else
      {
        sub_CBBC();
        sub_3D54(v63, &qword_186B0, &qword_10B48);
        v151 = sub_CC44();
        (v124)(v151);
      }

      sub_C6B4();

      sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
      sub_3D54(v116, &qword_186B0, &qword_10B48);
      v185 = v62[41];

      v186 = sub_CF8C();
      v187(v186);
      sub_10234();
      v188 = sub_D104();
      sub_C8B8();

      v189 = *(v66 + 8);
      v190 = sub_CE90();
      v191(v190);
      goto LABEL_11;
    }

    v152 = sub_C614();
    v153(v152);
    sub_C5FC();
    sub_C010(v154, 255, v155);
    sub_C974();
    v60 = v121;
    sub_104F4();
    v156 = sub_CB14();
    (v61)(v156);
    v124 = &qword_186D8;
    v116 = &qword_10DE0;
    sub_CFBC(v65);
    sub_CFBC(&qword_10DE0);
    v157 = sub_D138();
    (v61)(v157);
    sub_CFBC(a47);
    if ((v121 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v158 = v62[106];
  sub_10304();
  v159 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = sub_CCE8();
    sub_CCDC(v161);
    sub_CA54(&dword_0, v162, v163, "Unable to render suggestions as there isnt enough for the sirihelp experience. Falling back to server");
    sub_CA38();
  }

  sub_C580();
  v164 = sub_CB84();
  v158(v164);
  v165 = sub_CB38();
  v166(v165);
  sub_FE54();

  v167 = *(v65 + 8);
  v168 = sub_C974();
  v169(v168);
  sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
  sub_3D54(a40, &qword_186B0, &qword_10B48);
  v170 = v62[41];

  (*(v159 + 8))(a42, a41);
  sub_10234();
  v171 = sub_CE9C();
  sub_C748();

  v172 = sub_CF7C();
  v173(v172);
LABEL_11:
  sub_C408();
  sub_C460();

  sub_CA08();
  sub_D004();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_8AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60)
{
  sub_D038();
  a59 = v67;
  a60 = v68;
  sub_D144();
  a58 = v62;
  v69 = v62[131];
  sub_CD90();
  sub_3B68(&qword_18698, &qword_10B60);
  if ((sub_C980() & 1) == 0)
  {
LABEL_7:
    v79 = v62[104];
    v80 = v62[41];

    sub_10304();
    swift_errorRetain();
    v81 = sub_104C4();
    sub_105B4();

    sub_D214();
    sub_CAF4();
    if (v82)
    {
      sub_CEEC();
      v83 = sub_CD50();
      sub_CF04(v83);
      sub_D0CC(4.8149e-34);
      v84 = sub_10504();
      v61 = v85;
      v66 = sub_B5DC(v84, v85, &a48);

      *(v65 + 4) = v66;
      sub_CAC0(&dword_0, v86, v87, "Unable to execute sirisuggestions: %s");
      sub_CC04();
      sub_41A8();

      v88 = sub_CFE4();
      v89(v88);
    }

    else
    {

      v90 = sub_CFD4();
      (v65)(v90);
    }

    sub_C674();

    sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
    sub_3D54(v66, &qword_186B0, &qword_10B48);
    v91 = sub_CF34();
    v92(v91);
    sub_10234();
    v93 = sub_D0E8();
    sub_CA2C();
    sub_C8B8();

    v94 = *(v61 + 8);
    v95 = sub_CE90();
    v96(v95);
    goto LABEL_11;
  }

  v70 = sub_CE30();
  if ((*(v71 + 88))(v70) != enum case for SiriHelpDispatcherErrors.notEnoughSuggestions(_:))
  {
    v77 = sub_CE30();
    (*(v78 + 8))(v77);
    goto LABEL_7;
  }

  sub_CD70();
  v72 = sub_CC44();
  sub_C0A4(v72, v73, v74, v75);
  sub_CD00();
  if (v76)
  {
    v109 = sub_3D54(v60, &qword_186B0, &qword_10B48);
    v110 = 1;
  }

  else
  {
    sub_D0B0();
    v106 = *(v61 + 8);
    v61 += 8;
    v107 = sub_CA2C();
    v109 = v108(v107);
    v110 = 0;
  }

  sub_C9A8(v109, v110);
  v111 = sub_CFF4();
  v112(v111);
  v113 = sub_CB28();
  sub_39C0(v113, v114, v115, v69);
  v116 = *(v64 + 48);
  v117 = sub_CBAC();
  sub_C0A4(v117, v118, v119, &qword_10DE0);
  sub_CDF0();
  v120 = sub_C9EC();
  v121 = v62[61];
  if (v120 == 1)
  {
    v122 = v62[56];
    v123 = v62[57];
    v63 = &qword_186D8;
    v124 = &qword_10DE0;
    sub_C928();
    sub_3D54(v125, v126, v127);
    sub_C928();
    sub_3D54(v128, v129, v130);
    sub_C654(v60 + v116);
    if (!v76)
    {
      goto LABEL_21;
    }

    sub_3D54(v62[52], &qword_186D8, &qword_10DE0);
  }

  else
  {
    sub_C0A4(v62[52], v62[55], &qword_186D8, &qword_10DE0);
    sub_C654(v60 + v116);
    if (v76)
    {
      sub_CFAC();
      v63 = &qword_186D8;
      v124 = &qword_10DE0;
      sub_C928();
      sub_3D54(v131, v132, v133);
      sub_C928();
      sub_3D54(v134, v135, v136);
      v137 = sub_CF9C();
      v138(v137);
LABEL_21:
      sub_3D54(v62[52], &qword_186D0, &unk_10B70);
LABEL_22:
      sub_CDD0();
      v139 = sub_4160();
      sub_C0A4(v139, v140, v141, v142);
      v143 = sub_104C4();
      v144 = sub_10594();
      if (sub_CEB8(v144))
      {
        v145 = sub_CBE0();
        v146 = sub_CED4();
        a48 = v146;
        *v145 = 136315138;
        v147 = sub_CCD0();
        sub_C0A4(v147, v148, v149, v150);
        sub_CD28();
        if (v76)
        {
          v177 = sub_3D54(v60, &qword_186B0, &qword_10B48);
          v178 = 1;
        }

        else
        {
          sub_D094();
          v174 = *(v65 + 8);
          v65 += 8;
          v175 = sub_CCD0();
          v177 = v176(v175);
          v178 = 0;
        }

        v116 = sub_C6F4(v177, v178);
        v66 = v179;
        sub_3D54(v65, &qword_186B0, &qword_10B48);
        v180 = sub_D078();

        *(v145 + 4) = v180;
        sub_CE10(&dword_0, v181, v182, "No suggestions for invocation type: %s. Marking flow as complete");
        sub_3E48(v146);
        sub_CB4C();
        sub_41A8();

        v183 = sub_CF5C();
        v184(v183);
      }

      else
      {
        sub_CBBC();
        sub_3D54(v63, &qword_186B0, &qword_10B48);
        v151 = sub_CC44();
        (v124)(v151);
      }

      sub_C6B4();

      sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
      sub_3D54(v116, &qword_186B0, &qword_10B48);
      v185 = v62[41];

      v186 = sub_CF8C();
      v187(v186);
      sub_10234();
      v188 = sub_D104();
      sub_C8B8();

      v189 = *(v66 + 8);
      v190 = sub_CE90();
      v191(v190);
      goto LABEL_11;
    }

    v152 = sub_C614();
    v153(v152);
    sub_C5FC();
    sub_C010(v154, 255, v155);
    sub_C974();
    v60 = v121;
    sub_104F4();
    v156 = sub_CB14();
    (v61)(v156);
    v124 = &qword_186D8;
    v116 = &qword_10DE0;
    sub_CFBC(v65);
    sub_CFBC(&qword_10DE0);
    v157 = sub_D138();
    (v61)(v157);
    sub_CFBC(a47);
    if ((v121 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v158 = v62[106];
  sub_10304();
  v159 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = sub_CCE8();
    sub_CCDC(v161);
    sub_CA54(&dword_0, v162, v163, "Unable to render suggestions as there isnt enough for the sirihelp experience. Falling back to server");
    sub_CA38();
  }

  sub_C580();
  v164 = sub_CB84();
  v158(v164);
  v165 = sub_CB38();
  v166(v165);
  sub_FE54();

  v167 = *(v65 + 8);
  v168 = sub_C974();
  v169(v168);
  sub_3D54((v62 + 2), &qword_18708, &qword_10B98);
  sub_3D54(a40, &qword_186B0, &qword_10B48);
  v170 = v62[41];

  (*(v159 + 8))(a42, a41);
  sub_10234();
  v171 = sub_CE9C();
  sub_C748();

  v172 = sub_CF7C();
  v173(v172);
LABEL_11:
  sub_C408();
  sub_C460();

  sub_CA08();
  sub_D004();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_93CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  sub_D038();
  a59 = v67;
  a60 = v68;
  sub_D144();
  a58 = v62;
  v69 = *(v62 + 1088);
  (*(v62 + 1080))(*(v62 + 616), *(v62 + 576));
  sub_3E48((v62 + 56));
  v70 = *(v62 + 1064);
  sub_CD90();
  sub_3B68(&qword_18698, &qword_10B60);
  if ((sub_C980() & 1) == 0)
  {
LABEL_7:
    v80 = *(v62 + 832);
    v81 = *(v62 + 328);

    sub_10304();
    swift_errorRetain();
    v82 = sub_104C4();
    sub_105B4();

    sub_D214();
    sub_CAF4();
    if (v83)
    {
      sub_CEEC();
      v84 = sub_CD50();
      sub_CF04(v84);
      sub_D0CC(4.8149e-34);
      v85 = sub_10504();
      v61 = v86;
      v66 = sub_B5DC(v85, v86, &a48);

      *(v65 + 4) = v66;
      sub_CAC0(&dword_0, v87, v88, "Unable to execute sirisuggestions: %s");
      sub_CC04();
      sub_41A8();

      v89 = sub_CFE4();
      v90(v89);
    }

    else
    {

      v91 = sub_CFD4();
      (v65)(v91);
    }

    sub_C674();

    sub_3D54(v62 + 16, &qword_18708, &qword_10B98);
    sub_3D54(v66, &qword_186B0, &qword_10B48);
    v92 = sub_CF34();
    v93(v92);
    sub_10234();
    v94 = sub_D0E8();
    sub_CA2C();
    sub_C8B8();

    v95 = *(v61 + 8);
    v96 = sub_CE90();
    v97(v96);
    goto LABEL_11;
  }

  v71 = sub_CE30();
  if ((*(v72 + 88))(v71) != enum case for SiriHelpDispatcherErrors.notEnoughSuggestions(_:))
  {
    v78 = sub_CE30();
    (*(v79 + 8))(v78);
    goto LABEL_7;
  }

  sub_CD70();
  v73 = sub_CC44();
  sub_C0A4(v73, v74, v75, v76);
  sub_CD00();
  if (v77)
  {
    v110 = sub_3D54(v60, &qword_186B0, &qword_10B48);
    v111 = 1;
  }

  else
  {
    sub_D0B0();
    v107 = *(v61 + 8);
    v61 += 8;
    v108 = sub_CA2C();
    v110 = v109(v108);
    v111 = 0;
  }

  sub_C9A8(v110, v111);
  v112 = sub_CFF4();
  v113(v112);
  v114 = sub_CB28();
  sub_39C0(v114, v115, v116, v70);
  v117 = *(v64 + 48);
  v118 = sub_CBAC();
  sub_C0A4(v118, v119, v120, &qword_10DE0);
  sub_CDF0();
  v121 = sub_C9EC();
  v122 = *(v62 + 488);
  if (v121 == 1)
  {
    v123 = *(v62 + 448);
    v124 = *(v62 + 456);
    v63 = &qword_186D8;
    v125 = &qword_10DE0;
    sub_C928();
    sub_3D54(v126, v127, v128);
    sub_C928();
    sub_3D54(v129, v130, v131);
    sub_C654(v60 + v117);
    if (!v77)
    {
      goto LABEL_21;
    }

    sub_3D54(*(v62 + 416), &qword_186D8, &qword_10DE0);
  }

  else
  {
    sub_C0A4(*(v62 + 416), *(v62 + 440), &qword_186D8, &qword_10DE0);
    sub_C654(v60 + v117);
    if (v77)
    {
      sub_CFAC();
      v63 = &qword_186D8;
      v125 = &qword_10DE0;
      sub_C928();
      sub_3D54(v132, v133, v134);
      sub_C928();
      sub_3D54(v135, v136, v137);
      v138 = sub_CF9C();
      v139(v138);
LABEL_21:
      sub_3D54(*(v62 + 416), &qword_186D0, &unk_10B70);
LABEL_22:
      sub_CDD0();
      v140 = sub_4160();
      sub_C0A4(v140, v141, v142, v143);
      v144 = sub_104C4();
      v145 = sub_10594();
      if (sub_CEB8(v145))
      {
        v146 = sub_CBE0();
        v147 = sub_CED4();
        a48 = v147;
        *v146 = 136315138;
        v148 = sub_CCD0();
        sub_C0A4(v148, v149, v150, v151);
        sub_CD28();
        if (v77)
        {
          v178 = sub_3D54(v60, &qword_186B0, &qword_10B48);
          v179 = 1;
        }

        else
        {
          sub_D094();
          v175 = *(v65 + 8);
          v65 += 8;
          v176 = sub_CCD0();
          v178 = v177(v176);
          v179 = 0;
        }

        v117 = sub_C6F4(v178, v179);
        v66 = v180;
        sub_3D54(v65, &qword_186B0, &qword_10B48);
        v181 = sub_D078();

        *(v146 + 4) = v181;
        sub_CE10(&dword_0, v182, v183, "No suggestions for invocation type: %s. Marking flow as complete");
        sub_3E48(v147);
        sub_CB4C();
        sub_41A8();

        v184 = sub_CF5C();
        v185(v184);
      }

      else
      {
        sub_CBBC();
        sub_3D54(v63, &qword_186B0, &qword_10B48);
        v152 = sub_CC44();
        (v125)(v152);
      }

      sub_C6B4();

      sub_3D54(v62 + 16, &qword_18708, &qword_10B98);
      sub_3D54(v117, &qword_186B0, &qword_10B48);
      v186 = *(v62 + 328);

      v187 = sub_CF8C();
      v188(v187);
      sub_10234();
      v189 = sub_D104();
      sub_C8B8();

      v190 = *(v66 + 8);
      v191 = sub_CE90();
      v192(v191);
      goto LABEL_11;
    }

    v153 = sub_C614();
    v154(v153);
    sub_C5FC();
    sub_C010(v155, 255, v156);
    sub_C974();
    v60 = v122;
    sub_104F4();
    v157 = sub_CB14();
    (v61)(v157);
    v125 = &qword_186D8;
    v117 = &qword_10DE0;
    sub_CFBC(v65);
    sub_CFBC(&qword_10DE0);
    v158 = sub_D138();
    (v61)(v158);
    sub_CFBC(a47);
    if ((v122 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v159 = *(v62 + 848);
  sub_10304();
  v160 = sub_104C4();
  sub_10594();
  sub_CC6C();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = sub_CCE8();
    sub_CCDC(v162);
    sub_CA54(&dword_0, v163, v164, "Unable to render suggestions as there isnt enough for the sirihelp experience. Falling back to server");
    sub_CA38();
  }

  sub_C580();
  v165 = sub_CB84();
  v159(v165);
  v166 = sub_CB38();
  v167(v166);
  sub_FE54();

  v168 = *(v65 + 8);
  v169 = sub_C974();
  v170(v169);
  sub_3D54(v62 + 16, &qword_18708, &qword_10B98);
  sub_3D54(a40, &qword_186B0, &qword_10B48);
  v171 = *(v62 + 328);

  (*(v160 + 8))(a42, a41);
  sub_10234();
  v172 = sub_CE9C();
  sub_C748();

  v173 = sub_CF7C();
  v174(v173);
LABEL_11:
  sub_C408();
  sub_C460();

  sub_CA08();
  sub_D004();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_9CB8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = sub_3B68(&qword_18670, &qword_10B80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v17 - v8;
  v10 = sub_10154();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  (*(v13 + 16))(v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v14 = sub_FD54();
  (*(*(v14 - 8) + 16))(v9, a2, v14);
  sub_39C0(v9, 0, 1, v14);
  v15 = *a3;
  return sub_10144();
}

uint64_t sub_9E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_FFD4();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3B68(&qword_186A8, &qword_10B40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v41 - v9;
  v11 = sub_10474();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_3B68(&qword_186C0, &qword_10DF0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v41 - v21;
  v42 = a1;
  sub_C0A4(a1, &v41 - v21, &qword_186C0, &qword_10DF0);
  v23 = sub_10424();
  if (sub_3CCC(v22, 1, v23) == 1)
  {
    sub_3D54(v22, &qword_186C0, &qword_10DF0);
    v47 = 0u;
    v48 = 0u;
LABEL_7:
    sub_3D54(&v47, &qword_18940, &qword_10DA8);
    goto LABEL_8;
  }

  v24 = sub_103E4();
  (*(*(v23 - 8) + 8))(v22, v23);
  (*(v12 + 104))(v15, enum case for IntentPropertiesConstants.mentionedAppId(_:), v11);
  v25 = sub_10464();
  v27 = v26;
  (*(v12 + 8))(v15, v11);
  sub_30D8(&v47, v25, v27, v24);

  if (!*(&v48 + 1))
  {
    goto LABEL_7;
  }

  sub_3B68(&qword_18948, &qword_10DB0);
  sub_3B68(&qword_18950, &qword_10DB8);
  if (swift_dynamicCast())
  {
    if (v46[2])
    {
      v29 = v46[4];
      v28 = v46[5];

      goto LABEL_9;
    }
  }

LABEL_8:
  v29 = 0;
  v28 = 0;
LABEL_9:
  v30 = sub_104E4();
  if (v28)
  {
    sub_10054();
    v31 = sub_10044();
    v33 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47 = v30;
    sub_C258(v29, v28, v31, v33, isUniquelyReferenced_nonNull_native);

    v30 = v47;
  }

  sub_C0A4(v42, v20, &qword_186C0, &qword_10DF0);
  if (sub_3CCC(v20, 1, v23) == 1)
  {
    sub_3D54(v20, &qword_186C0, &qword_10DF0);
    v35 = sub_101F4();
    sub_39C0(v10, 1, 1, v35);
  }

  else
  {
    sub_103C4();
    (*(*(v23 - 8) + 8))(v20, v23);
    v36 = sub_101F4();
    if (sub_3CCC(v10, 1, v36) != 1)
    {
      sub_3D54(v10, &qword_186A8, &qword_10B40);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      *&v47 = v30;
      sub_C258(1702195828, 0xE400000000000000, 0x65726F4D776F6873, 0xE800000000000000, v37);
      goto LABEL_16;
    }
  }

  sub_3D54(v10, &qword_186A8, &qword_10B40);
LABEL_16:
  v39 = v43;
  v38 = v44;
  (*(v43 + 104))(v6, enum case for EducationalSuggestions.suggestHelp(_:), v44);
  sub_FFC4();
  (*(v39 + 8))(v6, v38);
  return sub_102F4();
}

uint64_t sub_A408()
{
  sub_4140();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_104D4();
  v0[5] = v4;
  sub_C5EC(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = sub_CF44();
  v8 = sub_C934();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_A4B0()
{
  v2 = v1[7];
  sub_10304();
  v3 = sub_104C4();
  v4 = sub_10594();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_CCE8();
    sub_CC98(v5);
    _os_log_impl(&dword_0, v3, v4, "No preGeneration suggestions found on intent. Executing suggestions service...", v0, 2u);
    sub_C9D0();
  }

  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[5];
  v9 = v1[3];

  v10 = *(v7 + 8);
  v11 = sub_4160();
  v12(v11);
  v13 = sub_FD44();
  v15 = v14;
  v1[8] = v14;
  v16 = async function pointer to SiriSuggestionsFacade.getNextSuggestions(requestId:)[1];
  swift_task_alloc();
  sub_CC38();
  v1[9] = v17;
  *v17 = v18;
  v17[1] = sub_A5F0;
  v19 = v1[4];
  v20 = v1[2];

  return SiriSuggestionsFacade.getNextSuggestions(requestId:)(v20, v13, v15);
}

uint64_t sub_A5F0()
{
  sub_4140();
  sub_4128();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = *v0;
  sub_40F8();
  *v6 = v5;

  sub_CA08();

  return v7();
}

uint64_t SiriSuggestionsFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_3B68(&qword_18668, &qword_10AF0);
  v6 = sub_CBA0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_10574();
  sub_4134();
  sub_39C0(v11, v12, v13, v14);
  sub_D170();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  v15[5] = a1;
  v15[6] = a2;

  sub_AA6C(0, 0, v10, &unk_10BC8, v15);
}

uint64_t sub_A800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_FE64();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_A8FC;

  return SiriSuggestionsFlow.execute()();
}

uint64_t sub_A8FC()
{
  sub_4140();
  sub_4128();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_40F8();
  *v4 = v3;

  v5 = sub_C934();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_A9E0()
{
  sub_D06C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  (*(v0 + 16))(*(v0 + 48));
  v4 = *(v1 + 8);
  v5 = sub_4160();
  v6(v5);

  sub_CA08();

  return v7();
}

uint64_t sub_AA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3B68(&qword_18668, &qword_10AF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_C0A4(a3, v26 - v11, &qword_18668, &qword_10AF0);
  v13 = sub_10574();
  v14 = sub_3CCC(v12, 1, v13);

  if (v14 == 1)
  {
    sub_3D54(v12, &qword_18668, &qword_10AF0);
  }

  else
  {
    sub_10564();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10554();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10514() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_3D54(a3, &qword_18668, &qword_10AF0);

      return v24;
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

  sub_3D54(a3, &qword_18668, &qword_10AF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t SiriSuggestionsFlow.deinit()
{
  v1 = *(v0 + 24);

  sub_3D54(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_intentProperties, &qword_186C0, &qword_10DF0);
  v2 = *(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionsFacade);

  v3 = *(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_suggestionDispatcherFactory);

  sub_3E48((v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_requestIdProvider));
  v4 = *(v0 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin19SiriSuggestionsFlow_enabled + 8);

  return v0;
}

uint64_t SiriSuggestionsFlow.__deallocating_deinit()
{
  SiriSuggestionsFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void (*sub_AE74(void *a1))(void *a1)
{
  v3 = sub_BFDC(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_FF64();
  return sub_AEEC;
}

void sub_AEEC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_AF80()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B01C;

  return SiriSuggestionsFlow.execute()();
}

uint64_t sub_B01C()
{
  sub_4140();
  sub_4128();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_40F8();
  *v4 = v3;

  sub_CA08();

  return v5();
}

uint64_t sub_B0FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriSuggestionsFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_B138()
{
  sub_D120();
  sub_C0A4(v0 + 16, v11, &qword_18930, &qword_10D88);
  v1 = v12;
  if (v12)
  {
    v2 = sub_3E04(v11, v12);
    v3 = *(v1 - 8);
    v4 = *(v3 + 64);
    __chkstk_darwin(v2);
    (*(v3 + 16))(&v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_3D54(v11, &qword_18930, &qword_10D88);
    sub_4160();
    sub_FF54();
    v6 = *(v3 + 8);
    v7 = sub_CA2C();
    v8(v7);
    sub_FF14();

    sub_10354();
  }

  else
  {
    sub_3D54(v11, &qword_18930, &qword_10D88);
  }

  return sub_CE68();
}

uint64_t sub_B2C8()
{
  sub_3D54(v0 + 16, &qword_18930, &qword_10D88);
  sub_D170();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_B330(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_B37C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B474;

  return v7(a1);
}

uint64_t sub_B474()
{
  sub_4140();
  sub_4128();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_40F8();
  *v4 = v3;

  sub_CA08();

  return v5();
}

uint64_t sub_B580(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_B5DC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_B5DC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_CB08();
  v9 = sub_B69C(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_4074(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_3E48(v14);
  return v10;
}

unint64_t sub_B69C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_B79C(a5, a6);
    *a1 = v9;
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
    result = sub_105E4();
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

char *sub_B79C(uint64_t a1, unint64_t a2)
{
  v4 = sub_B7E8(a1, a2);
  sub_B900(&off_14A40);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_B7E8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10544())
  {
    result = sub_B9E4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_105D4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_105E4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_B900(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_BA54(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_B9E4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_3B68(&qword_18960, qword_10DC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_BA54(char *result, int64_t a2, char a3, char *a4)
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
    sub_3B68(&qword_18960, qword_10DC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_BB48(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_BB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B68(&qword_186C0, &qword_10DF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SiriSuggestionsFlow()
{
  result = qword_18768;
  if (!qword_18768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_BC14()
{
  result = qword_18720;
  if (!qword_18720)
  {
    sub_BC78(&qword_18718, &qword_10BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18720);
  }

  return result;
}

uint64_t sub_BC78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_BCC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_BCF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  sub_D170();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_BD3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  swift_task_alloc();
  sub_CC38();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_B01C;

  return sub_A800(a1, v4, v5, v6, v7, v8);
}

void sub_BEA0()
{
  sub_BF60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_BF60()
{
  if (!qword_18778)
  {
    sub_10424();
    v0 = sub_105C4();
    if (!v1)
    {
      atomic_store(v0, &qword_18778);
    }
  }
}

void *sub_BFDC(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_C010(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_C058(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_D1DC(a1, a2, a3, a4);
  sub_4118(v5);
  v7 = *(v6 + 40);
  v8 = sub_CE68();
  v9(v8);
  return v4;
}

uint64_t sub_C0A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_D1DC(a1, a2, a3, a4);
  sub_4118(v5);
  v7 = *(v6 + 16);
  v8 = sub_CE68();
  v9(v8);
  return v4;
}

uint64_t sub_C0F0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C128()
{
  sub_D06C();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_CC38();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_CCA4(v4);

  return v7(v6);
}

uint64_t sub_C1C0()
{
  sub_D06C();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_CC38();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_CCA4(v4);

  return v7(v6);
}

uint64_t sub_C258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_3ED8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  sub_3B68(&qword_18958, &qword_10DC0);
  if (!sub_105F4(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = sub_3ED8(a3, a4);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_10614();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_C3AC(v18, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_C3AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_C408()
{
  result = v0[120];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[112];
  v8 = v0[111];
  v9 = v0[110];
  v10 = v0[109];
  v11 = v0[108];
  v12 = v0[107];
  return result;
}

uint64_t sub_C460()
{
  v12 = v0[106];
  v13 = v0[105];
  v14 = v0[104];
  v15 = v0[101];
  v16 = v0[100];
  v17 = v0[99];
  v18 = v0[98];
  v19 = v0[97];
  v20 = v0[96];
  v21 = v0[94];
  v22 = v0[91];
  v23 = v0[90];
  v24 = v0[89];
  v25 = v0[88];
  v26 = v0[87];
  v27 = v0[86];
  v28 = v0[85];
  v29 = v0[84];
  v30 = v0[83];
  v31 = v0[81];
  v32 = v0[80];
  v33 = v0[77];
  v34 = v0[76];
  v35 = v0[75];
  v3 = v0[71];
  *(v1 - 192) = v0[74];
  *(v1 - 184) = v3;
  v4 = v0[67];
  *(v1 - 176) = v0[68];
  *(v1 - 168) = v4;
  v5 = v0[63];
  *(v1 - 160) = v0[66];
  *(v1 - 152) = v5;
  v7 = v0[56];
  v6 = v0[57];
  *(v1 - 144) = v0[60];
  *(v1 - 136) = v6;
  v9 = v0[54];
  v8 = v0[55];
  *(v1 - 128) = v7;
  *(v1 - 120) = v8;
  v10 = v0[52];
  *(v1 - 112) = v9;
  *(v1 - 104) = v10;
  *(v1 - 96) = v0[50];
}

uint64_t sub_C54C(uint64_t a1)
{
  *(a1 + 8) = sub_79E0;
  v2 = *(v1 + 528);
  return *(v1 + 592);
}

void sub_C580()
{
  *(v2 - 160) = v1[126];
  v4 = v1[123];
  v5 = v1[122];
  *(v2 - 120) = v1[121];
  *(v2 - 112) = v5;
  v6 = v1[120];
  v7 = v1[118];
  *(v2 - 104) = v1[119];
  *(v2 - 96) = v7;
  v8 = v1[106];
  v9 = v1[103];
  v10 = v1[102];
  *(v2 - 136) = v1[94];
  *(v2 - 128) = v6;
  v11 = v0;
  v12 = v1[93];
  v13 = v1[92];
  *(v2 - 152) = v1[89];
  *(v2 - 144) = v13;
  v15 = v1[49];
  v14 = v1[50];
  v16 = v1[48];
  v17 = v1[45];
}

uint64_t sub_C614()
{
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[61];
  v6 = v0[56];
  v5 = v0[57];
  v7 = v0[55];
  *(v1 - 96) = v0[52];
  v8 = *(v3 + 32);
  return v2;
}

uint64_t sub_C674()
{
  v3 = v0[126];
  v4 = v0[121];
  v5 = v0[120];
  v6 = v0[119];
  v7 = v0[118];
  *(v1 - 104) = v0[122];
  *(v1 - 96) = v7;
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[89];
  v12 = v0[45];

  return sub_FE44();
}

uint64_t sub_C6B4()
{
  v3 = v0[126];
  v4 = v0[122];
  v5 = v0[121];
  v6 = v0[120];
  v7 = v0[119];
  *(v1 - 96) = v0[118];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[89];
  v12 = v0[45];

  return sub_FE44();
}

uint64_t sub_C6F4(uint64_t a1, uint64_t a2)
{
  v4 = v2[123];
  *(v3 - 104) = v2[105];
  *(v3 - 96) = v4;
  v5 = v2[103];
  v6 = v2[102];
  v7 = v2[84];
  v8 = v2[53];
  sub_39C0(v2[54], a2, 1, v2[61]);

  return sub_10504();
}

uint64_t sub_C748()
{

  return sub_10324();
}

uint64_t sub_C770()
{
  sub_39C0(v1, 0, 1, v0);

  return sub_10114();
}

void sub_C7C0()
{
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[97];
  v10 = v0[96];
  v11 = v0[94];
  v12 = v0[91];
  v13 = v0[90];
  v14 = v0[89];
  v15 = v0[88];
  v16 = v0[87];
  v17 = v0[86];
  v18 = v0[85];
  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[81];
  v1 = v0[80];
  v22 = v0[77];
}

uint64_t sub_C84C()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v3 = *(v0 + 616);
  v4 = *(v0 + 592);
  v5 = *(v0 + 584);
  v6 = *(v0 + 576);
  v7 = *(v0 + 512);
  result = sub_BCC0((v0 + 96), v0 + 56);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  return result;
}

void sub_C888()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[90];
  v5 = v0[86];
}

uint64_t sub_C8B8()
{

  return sub_10324();
}

uint64_t sub_C8F8(uint64_t a1)
{
  *(a1 + 8) = sub_74A0;
  v2 = *(v1 + 752);
  return *(v1 + 600);
}

uint64_t sub_C95C()
{
  v1 = v0[86];
  result = v0[66];
  v3 = v0[64];
  v4 = *(v0[65] + 32);
  return result;
}

uint64_t sub_C980()
{

  return swift_dynamicCast();
}

uint64_t sub_C9A8(uint64_t a1, uint64_t a2)
{
  v4 = v2[62];
  v5 = v2[56];
  v7 = v2[51];
  v6 = v2[52];
  v8 = v2[57];
  v9 = v2[61];

  return sub_39C0(v8, a2, 1, v9);
}

uint64_t sub_C9D0()
{
}

uint64_t sub_C9EC()
{

  return sub_3CCC(v1, 1, v0);
}

uint64_t sub_CA08()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_CA38()
{
}

void sub_CA54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t sub_CA74()
{
  v1 = v0[78];
  v2 = v0[72];
  v3 = v0[68];
  v4 = *(v0[79] + 16);
  return v0[81];
}

void sub_CAA0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_CAC0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_CAE0()
{
  v1 = v0[123];
  v2 = v0[111];
  v3 = v0[103];
  v4 = v0[102];
}

void sub_CAF4()
{
  v1 = v0[123];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
}

uint64_t sub_CB4C()
{
}

void sub_CBBC()
{
  v3 = v1[123];
  v4 = v1[105];
  v5 = v1[103];
  v6 = v1[102];
  v7 = v1[84];
}

uint64_t sub_CBE0()
{
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[64];

  return swift_slowAlloc();
}

uint64_t sub_CC04()
{
  sub_3E48(v0);
}

BOOL sub_CC50(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_CC78()
{
  v1 = v0[112];
  result = v0[76];
  v3 = v0[72];
  v4 = v0[68];
  v5 = *(v0[73] + 32);
  return result;
}

uint64_t sub_CCA4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_CCE8()
{

  return swift_slowAlloc();
}

uint64_t sub_CD00()
{
  result = sub_3CCC(v0, 1, v2);
  v4 = *(v1 + 680);
  return result;
}

uint64_t sub_CD28()
{
  result = sub_3CCC(v1, 1, v2);
  v4 = *(v0 + 664);
  return result;
}

uint64_t sub_CD50()
{
  *(v1 - 96) = v0;

  return swift_slowAlloc();
}

uint64_t sub_CD70()
{
  v2 = v0[89];
  v3 = v0[85];
  v4 = v0[64];
}

uint64_t sub_CD90()
{
  v3 = v1[60];
  v4 = v1[58];
  v1[41] = v0;

  return swift_errorRetain();
}

void sub_CDB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_CDD0()
{
  v2 = v0[105];
  v3 = v0[89];
  v4 = v0[84];

  return sub_10304();
}

uint64_t sub_CDF0()
{

  return sub_C0A4(v1, v0 + v4, v2, v3);
}

void sub_CE10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_CE30()
{
  v2 = v0[59];
  result = v0[60];
  v3 = v0[58];
  return result;
}

void sub_CE3C()
{
  v3 = v1[123];
  v4 = v1[112];
  v5 = v1[103];
  v6 = v1[102];
  v7 = v1[77];
  v8 = v1[76];
  v9 = v1[72];
}

BOOL sub_CE74(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_CE90()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t sub_CE9C()
{

  return sub_10334();
}

BOOL sub_CEB8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_CED4()
{

  return swift_slowAlloc();
}

uint64_t sub_CEEC()
{

  return swift_slowAlloc();
}

uint64_t sub_CF04(uint64_t result)
{
  *(v2 - 104) = v1;
  *(v2 - 88) = result;
  return result;
}

void sub_CF14()
{
  v1 = v0[66];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[62];
}

uint64_t sub_CF44()
{

  return swift_task_alloc();
}

uint64_t sub_CF5C()
{
  result = *(v0 - 104);
  v2 = *(v0 - 96);
  return result;
}

uint64_t sub_CF7C()
{
  v2 = *(v1 - 96);
  v3 = *(*(v1 - 104) + 8);
  return v0;
}

uint64_t sub_CFAC()
{
  v1 = v0[61];
  v2 = v0[62];
  result = v0[56];
  v4 = v0[57];
  v5 = v0[55];
  return result;
}

uint64_t sub_CFBC(uint64_t a1)
{

  return sub_3D54(a1, v1, v2);
}

uint64_t sub_CFE4()
{
  result = *(v0 - 104);
  v2 = *(v0 - 96);
  return result;
}

uint64_t sub_D020()
{

  return swift_task_alloc();
}

uint64_t sub_D054()
{
  v1 = v0[124];
  v2 = v0[121];
  v3 = v0[97];
  result = v0[68];
  v5 = v0[46];
  return result;
}

uint64_t sub_D078()
{

  return sub_B5DC(v0, v1, (v2 - 88));
}

uint64_t sub_D094()
{
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[54];

  return sub_10134();
}

uint64_t sub_D0B0()
{
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[57];

  return sub_10134();
}

uint64_t sub_D0CC(float a1)
{
  *v3 = a1;
  *(v2 + 336) = v1;

  return swift_errorRetain();
}

uint64_t sub_D0E8()
{

  return sub_10334();
}

uint64_t sub_D104()
{

  return sub_10334();
}

uint64_t sub_D120()
{

  return swift_beginAccess();
}

void sub_D150()
{
  v1 = v0[124];
  v2 = v0[98];
  v3 = v0[78];
  v4 = v0[46];
}

uint64_t sub_D17C()
{
  result = v0[71];
  v2 = v0[69];
  v3 = *(v0[70] + 8);
  return result;
}

void sub_D19C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_D1BC()
{

  return swift_beginAccess();
}

uint64_t sub_D1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_3B68(a3, a4);
}

uint64_t sub_D1FC()
{

  return sub_10554();
}

BOOL sub_D214()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_D22C@<X0>(uint64_t *a1@<X8>)
{
  sub_FE94();
  v2 = sub_FE84();
  sub_FC00(v2);
  swift_allocObject();
  sub_FE74();
  v3 = sub_FD74();
  sub_FC00(v3);
  swift_allocObject();
  result = sub_FD64();
  a1[3] = v3;
  a1[4] = &protocol witness table for PatternFlowProvider;
  *a1 = result;
  return result;
}

void *SiriSuggestionsFlowPlugin.__allocating_init()()
{
  sub_102B4();
  v0 = sub_102A4();
  sub_100D4();

  v1 = sub_100B4();

  return sub_F570(v0, v1, 0);
}

uint64_t sub_D368(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriSuggestionsFlow();

  return sub_41C0(v3, a2);
}

uint64_t sub_D3C4(uint64_t a1)
{
  v2 = v1;
  v109 = a1;
  v112 = sub_104D4();
  v3 = sub_414C(v112);
  v114 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_FBE4();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_CB94();
  v105 = v11;
  sub_FC54();
  __chkstk_darwin(v12);
  sub_CB94();
  v107 = v13;
  sub_FC54();
  __chkstk_darwin(v14);
  sub_CB94();
  v111 = v15;
  sub_FC54();
  __chkstk_darwin(v16);
  sub_FCA0();
  v104 = v17;
  v18 = sub_3B68(&qword_186C0, &qword_10DF0);
  sub_CBA0(v18);
  v20 = *(v19 + 64);
  sub_FC94();
  __chkstk_darwin(v21);
  v23 = &v103 - v22;
  v24 = sub_3B68(&qword_186B0, &qword_10B48);
  sub_CBA0(v24);
  v26 = *(v25 + 64);
  sub_FC94();
  __chkstk_darwin(v27);
  v29 = &v103 - v28;
  v110 = sub_10154();
  v30 = sub_414C(v110);
  v106 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_FBC4();
  v108 = v35 - v34;
  v36 = v1[9];
  sub_3E04(v1 + 5, v1[8]);
  sub_FF44();
  sub_FF34();
  sub_FF24();

  v37 = sub_10274();

  if ((v37 & 1) == 0)
  {
    sub_10304();
    v44 = sub_104C4();
    v45 = sub_105A4();
    if (sub_FC0C(v45))
    {
      v46 = sub_CCE8();
      sub_FC88(v46);
      sub_FC28(&dword_0, v47, v48, "SiriHelp feature flag NOT enabled");
      sub_FBF4();
    }

    (*(v114 + 8))(v9, v112);
    v49 = sub_104A4();
    sub_FBD4(v49);
    v50 = swift_allocObject();
    v115 = sub_10494();
    sub_FB94();
    sub_FA90(v51, v52);
    sub_FCAC();
    sub_FCE0();

    return v50;
  }

  v38 = v1[9];
  sub_3E04(v1 + 5, v1[8]);
  v39 = sub_10284();
  v41 = v112;
  v40 = v113;
  v42 = v114;
  if ((v39 & 1) == 0)
  {
    sub_FA2C(v109, v23, &qword_186C0, &qword_10DF0);
    v43 = sub_10424();
    if (sub_3CCC(v23, 1, v43) == 1)
    {
      sub_F9D0(v23, &qword_186C0, &qword_10DF0);
      sub_39C0(v29, 1, 1, v110);
    }

    else
    {
      sub_103F4();
      sub_FC48(v43);
      v54 = *(v53 + 8);
      v55 = sub_FCD4();
      v56(v55);
      v57 = v110;
      if (sub_3CCC(v29, 1, v110) != 1)
      {
        v88 = v106;
        v89 = v108;
        (*(v106 + 32))(v108, v29, v57);
        if (sub_10124())
        {
          v90 = v2[2];
          if (v90)
          {
            v91 = v2[2];

            v92 = v104;
            sub_10304();
            v93 = sub_104C4();
            v94 = sub_105A4();
            if (os_log_type_enabled(v93, v94))
            {
              v95 = sub_CCE8();
              *v95 = 0;
              _os_log_impl(&dword_0, v93, v94, "See more request. Using previous request flow", v95, 2u);
              sub_FBF4();
            }

            (*(v42 + 8))(v92, v41);
            v115 = v90;
            type metadata accessor for SiriSuggestionsFlow();
            sub_FBAC();
            sub_FA90(v96, v97);
            v50 = sub_FCAC();
            (*(v106 + 8))(v108, v57);
            goto LABEL_30;
          }

          (*(v88 + 8))(v108, v57);
        }

        else
        {
          (*(v88 + 8))(v89, v57);
        }

        goto LABEL_10;
      }
    }

    sub_F9D0(v29, &qword_186B0, &qword_10B48);
  }

LABEL_10:
  v58 = v111;
  sub_10304();
  v59 = sub_104C4();
  v60 = sub_105A4();
  if (sub_FC0C(v60))
  {
    v61 = sub_CCE8();
    sub_FC88(v61);
    sub_FC28(&dword_0, v62, v63, "Normal flow request. Creating new flow from factory");
    sub_FBF4();
  }

  v66 = *(v42 + 8);
  v65 = v42 + 8;
  v64 = v66;
  v67 = (v66)(v58, v41);
  v50 = v2[4];
  v68 = (v2[3])(v67);
  if (!v40)
  {
    v69 = v68;
    if (v68)
    {
      v70 = v2[2];
      if (v70)
      {
        v71 = *(v70 + 24);
        if (v71)
        {
          v114 = v65;
          v111 = *(v70 + 16);

          sub_10304();

          v72 = sub_104C4();
          v73 = sub_105A4();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v113 = 0;
            v75 = v74;
            v76 = swift_slowAlloc();
            v115 = v76;
            *v75 = 136315138;
            *(v75 + 4) = sub_B5DC(v111, v71, &v115);
            _os_log_impl(&dword_0, v72, v73, "SiriSuggestionsFlow :: existingSuggestionsFlow has sessionId: %s", v75, 0xCu);
            sub_3E48(v76);
            sub_FBF4();

            sub_FBF4();

            v77 = v107;
            v78 = v112;
          }

          else
          {

            v77 = v107;
            v78 = v41;
          }

          v64(v77, v78);
          v98 = *(v69 + 24);
          *(v69 + 16) = v111;
          *(v69 + 24) = v71;

          v99 = v2[2];
        }
      }

      v2[2] = v69;

      v115 = v69;
      type metadata accessor for SiriSuggestionsFlow();
      sub_FBAC();
      sub_FA90(v100, v101);
      v50 = sub_FD84();
    }

    else
    {
      v79 = v105;
      sub_10304();
      v80 = sub_104C4();
      v81 = sub_105A4();
      if (sub_FC0C(v81))
      {
        v82 = sub_CCE8();
        sub_FC88(v82);
        sub_FC28(&dword_0, v83, v84, "No flow could be constructed");
        sub_FBF4();
      }

      v64(v79, v41);
      v85 = sub_104A4();
      sub_FBD4(v85);
      swift_allocObject();
      v115 = sub_10494();
      sub_FB94();
      sub_FA90(v86, v87);
      v50 = sub_FCAC();
    }

LABEL_30:
  }

  return v50;
}

uint64_t SiriSuggestionsFlowPlugin.makeFlowFor(parse:)(uint64_t a1)
{
  v139 = a1;
  v133 = sub_10244();
  v1 = sub_414C(v133);
  v131 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_FBC4();
  v126 = v6 - v5;
  v129 = sub_3B68(&qword_186D0, &unk_10B70);
  sub_FC48(v129);
  v8 = *(v7 + 64);
  sub_FC94();
  __chkstk_darwin(v9);
  v132 = &v125 - v10;
  v11 = sub_3B68(&qword_186B0, &qword_10B48);
  sub_CBA0(v11);
  v13 = *(v12 + 64);
  sub_FC94();
  __chkstk_darwin(v14);
  v127 = &v125 - v15;
  v16 = sub_3B68(&qword_186D8, &qword_10DE0);
  v17 = sub_CBA0(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_FBE4();
  v128 = v20 - v21;
  sub_FC54();
  __chkstk_darwin(v22);
  sub_CB94();
  v134 = v23;
  sub_FC54();
  __chkstk_darwin(v24);
  sub_FCA0();
  v130 = v25;
  v26 = sub_3B68(&qword_18968, &qword_10DE8);
  sub_414C(v26);
  v135 = v27;
  v29 = *(v28 + 64);
  sub_FC94();
  __chkstk_darwin(v30);
  v32 = &v125 - v31;
  v33 = sub_3B68(&qword_186C0, &qword_10DF0);
  v34 = sub_CBA0(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_FBE4();
  v39 = v37 - v38;
  __chkstk_darwin(v40);
  sub_FCA0();
  v137 = v41;
  v42 = sub_FF04();
  v43 = sub_414C(v42);
  v136 = v44;
  v46 = *(v45 + 64);
  __chkstk_darwin(v43);
  sub_FBC4();
  v138 = v48 - v47;
  v49 = sub_FED4();
  v50 = sub_414C(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  __chkstk_darwin(v50);
  sub_FBC4();
  v57 = v56 - v55;
  v58 = sub_FEE4();
  v59 = sub_414C(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  __chkstk_darwin(v59);
  sub_FBC4();
  v66 = v65 - v64;
  (*(v61 + 16))(v65 - v64, v139, v58);
  v67 = *(v61 + 88);
  v68 = sub_FC7C();
  v70 = v69(v68);
  if (v70 != enum case for Parse.directInvocation(_:))
  {
    if (v70 != enum case for Parse.uso(_:))
    {
      v82 = sub_104A4();
      sub_FC00(v82);
      swift_allocObject();
      v140 = sub_10494();
      sub_FB94();
      sub_FA90(v83, v84);
      v88 = sub_FD84();

      v85 = *(v61 + 8);
      v86 = sub_FC7C();
      v87(v86);
      return v88;
    }

    v74 = *(v61 + 96);
    v75 = sub_FC7C();
    v76(v75);
    v77 = v136;
    v78 = v138;
    v79 = v42;
    (*(v136 + 32))(v138, v66, v42);
    sub_FFA4();
    v80 = sub_FFB4();
    (*(v135 + 8))(v32, v26);
    v81 = v137;
    v80(v78);

    sub_FA2C(v81, v39, &qword_186C0, &qword_10DF0);
    v89 = sub_10424();
    v90 = sub_3CCC(v39, 1, v89);
    v125 = v79;
    if (v90 == 1)
    {
      sub_F9D0(v39, &qword_186C0, &qword_10DF0);
      v91 = 1;
      v93 = v132;
      v92 = v133;
      v94 = v130;
      v95 = v131;
      v96 = v134;
    }

    else
    {
      v97 = v127;
      sub_103F4();
      sub_FC48(v89);
      v99 = v97;
      (*(v98 + 8))(v39, v89);
      v100 = sub_10154();
      v101 = sub_3CCC(v97, 1, v100);
      v92 = v133;
      v96 = v134;
      v95 = v131;
      if (v101 == 1)
      {
        sub_F9D0(v99, &qword_186B0, &qword_10B48);
        v91 = 1;
        v93 = v132;
        v94 = v130;
      }

      else
      {
        v94 = v130;
        sub_10134();
        sub_FC48(v100);
        (*(v102 + 8))(v99, v100);
        v91 = 0;
        v93 = v132;
      }
    }

    sub_39C0(v94, v91, 1, v92);
    (*(v95 + 104))(v96, enum case for InvocationType.siriHelp(_:), v92);
    sub_39C0(v96, 0, 1, v92);
    v103 = *(v129 + 48);
    sub_FA2C(v94, v93, &qword_186D8, &qword_10DE0);
    sub_FA2C(v96, v93 + v103, &qword_186D8, &qword_10DE0);
    sub_FCC8();
    if (sub_3CCC(v104, v105, v106) == 1)
    {
      sub_FCEC(v96);
      sub_FCEC(v94);
      sub_FCC8();
      if (sub_3CCC(v107, v108, v109) == 1)
      {
        sub_F9D0(v93, &qword_186D8, &qword_10DE0);
        v110 = v137;
LABEL_21:
        v88 = sub_D3C4(v110);
        goto LABEL_18;
      }
    }

    else
    {
      v111 = v128;
      sub_FA2C(v93, v128, &qword_186D8, &qword_10DE0);
      sub_FCC8();
      if (sub_3CCC(v112, v113, v114) != 1)
      {
        v122 = v126;
        (*(v95 + 32))(v126, v93 + v103, v92);
        sub_FA90(&qword_18710, &type metadata accessor for InvocationType);
        sub_FC7C();
        v123 = sub_104F4();
        v124 = *(v95 + 8);
        v124(v122, v92);
        sub_F9D0(v134, &qword_186D8, &qword_10DE0);
        sub_F9D0(v94, &qword_186D8, &qword_10DE0);
        v124(v111, v92);
        v77 = v136;
        sub_F9D0(v93, &qword_186D8, &qword_10DE0);
        v110 = v137;
        if (v123)
        {
          goto LABEL_21;
        }

LABEL_17:
        v115 = sub_104A4();
        sub_FBD4(v115);
        swift_allocObject();
        v140 = sub_10494();
        sub_FB94();
        sub_FA90(v116, v117);
        v88 = sub_FD84();

LABEL_18:
        sub_F9D0(v110, &qword_186C0, &qword_10DF0);
        v118 = *(v77 + 8);
        v119 = sub_FCD4();
        v120(v119);
        return v88;
      }

      sub_FCEC(v134);
      sub_FCEC(v94);
      (*(v95 + 8))(v111, v92);
    }

    sub_F9D0(v93, &qword_186D0, &unk_10B70);
    v110 = v137;
    goto LABEL_17;
  }

  v71 = *(v61 + 96);
  v72 = sub_FC7C();
  v73(v72);
  (*(v52 + 32))(v57, v66, v49);
  v88 = sub_E8D4();
  (*(v52 + 8))(v57, v49);
  return v88;
}

uint64_t sub_E6B8()
{
  v0 = sub_104D4();
  v1 = sub_414C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_FBC4();
  v8 = v7 - v6;
  sub_10304();
  swift_errorRetain();
  v9 = sub_104C4();
  v10 = sub_105B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    swift_errorRetain();
    sub_3B68(&qword_18698, &qword_10B60);
    v13 = sub_10504();
    v15 = sub_B5DC(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v9, v10, "Unable to obtain suggestions client: %s. Returning no op flow", v11, 0xCu);
    sub_3E48(v12);
    sub_FBF4();

    sub_FBF4();
  }

  (*(v3 + 8))(v8, v0);
  v16 = sub_104A4();
  sub_FBD4(v16);
  swift_allocObject();
  v21 = sub_10494();
  sub_FB94();
  sub_FA90(v17, v18);
  v19 = sub_FD84();

  return v19;
}

uint64_t sub_E8D4()
{
  v0 = sub_3B68(&qword_186C0, &qword_10DF0);
  sub_CBA0(v0);
  v2 = *(v1 + 64);
  sub_FC94();
  __chkstk_darwin(v3);
  v5 = &v98 - v4;
  v6 = sub_104D4();
  v7 = sub_414C(v6);
  v102 = v8;
  v103 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_FBE4();
  v13 = v11 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v98 - v16;
  __chkstk_darwin(v15);
  sub_CB94();
  v100 = v18;
  sub_FC54();
  __chkstk_darwin(v19);
  sub_CB94();
  v98 = v20;
  sub_FC54();
  __chkstk_darwin(v21);
  sub_FCA0();
  v99 = v22;
  v23 = sub_3B68(&qword_18A68, &qword_10EC0);
  v24 = sub_CBA0(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_FBE4();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  sub_FCA0();
  v32 = v31;
  v33 = sub_10484();
  v34 = sub_414C(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_FBC4();
  v41 = v40 - v39;
  (*(v36 + 104))(v40 - v39, enum case for DirectInvocationUserDataKey.action(_:), v33);
  sub_FEB4();
  (*(v36 + 8))(v41, v33);
  if (v106[3])
  {
    if (swift_dynamicCast())
    {
      v43 = v104;
      v42 = v105;

      sub_10444();
      v44 = sub_10454();
      if (sub_3CCC(v32, 1, v44) == 1)
      {
LABEL_4:
        sub_10304();

        v45 = sub_104C4();
        v46 = sub_105B4();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v106[0] = v48;
          *v47 = 136315138;
          v49 = sub_B5DC(v43, v42, v106);

          *(v47 + 4) = v49;
          _os_log_impl(&dword_0, v45, v46, "Unsupported direct invocation action: %s. Returning no op flow", v47, 0xCu);
          sub_3E48(v48);
          sub_FBF4();

          sub_FBF4();
        }

        else
        {
        }

        (*(v102 + 8))(v17, v103);
        goto LABEL_14;
      }

      sub_FA2C(v32, v29, &qword_18A68, &qword_10EC0);
      v57 = *(v44 - 8);
      v58 = (*(v57 + 88))(v29, v44);
      if (v58 == enum case for DirectInvocationAction.executeSuggestion(_:))
      {

        v59 = sub_101B4();
        sub_FC00(v59);
        swift_allocObject();
        v60 = sub_101A4();
        v61 = type metadata accessor for SiriSuggestionsInvocationFlow();
        sub_FBD4(v61);
        v62 = swift_allocObject();
        v63 = (v62 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_dispatcherFactory);
        v63[3] = v59;
        v63[4] = &protocol witness table for DefaultACECommandSuggestionDispatcherFactory;
        *v63 = v60;
        v54 = OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_directInvocation;
        v64 = sub_FED4();
        sub_39C0(v62 + v54, 1, 1, v64);
        v65 = (v62 + OBJC_IVAR____TtC25SiriSuggestionsFlowPlugin29SiriSuggestionsInvocationFlow_interactionDonator);
        *v65 = &unk_10B30;
        v65[1] = 0;
        v106[0] = v62;
        sub_FA90(&qword_18A70, type metadata accessor for SiriSuggestionsInvocationFlow);
        sub_FC60();
        sub_FCE0();

        sub_F9D0(v32, &qword_18A68, &qword_10EC0);
        return v54;
      }

      if (v58 == enum case for DirectInvocationAction.showSiriHelp(_:))
      {

        v70 = sub_10424();
        sub_39C0(v5, 1, 1, v70);
        v54 = sub_D3C4(v5);
        sub_F9D0(v5, &qword_186C0, &qword_10DF0);
        goto LABEL_16;
      }

      if (v58 == enum case for DirectInvocationAction.showMoreSuggestions(_:))
      {

        v71 = v101;
        v72 = v101[9];
        sub_3E04(v101 + 5, v101[8]);
        sub_FC7C();
        if ((sub_10284() & 1) == 0)
        {
          goto LABEL_45;
        }

        v54 = v71[4];
        v73 = v107;
        v74 = (v71[3])();
        if (v73)
        {
          goto LABEL_16;
        }

        v75 = v74;
        if (!v74)
        {
LABEL_45:
          if (v71[2])
          {
            v106[0] = v71[2];
            type metadata accessor for SiriSuggestionsFlow();
            sub_FBAC();
            sub_FA90(v83, v84);
            v54 = sub_FC60();
            goto LABEL_16;
          }

          v85 = v99;
          sub_10304();
          v86 = sub_104C4();
          v92 = sub_105B4();
          if (!sub_FC0C(v92))
          {
            goto LABEL_38;
          }

          v93 = sub_CCE8();
          sub_FC88(v93);
          v91 = "No current suggestions flow. Returning no op flow";
          goto LABEL_37;
        }
      }

      else
      {
        if (v58 != enum case for DirectInvocationAction.conversationGetSuggestions(_:))
        {
          (*(v57 + 8))(v29, v44);
          goto LABEL_4;
        }

        v76 = v101;
        v77 = v101[9];
        sub_3E04(v101 + 5, v101[8]);
        sub_FF44();
        sub_FF34();
        sub_FF24();

        v78 = sub_10294();

        if ((v78 & 1) == 0)
        {
          v85 = v100;
          sub_10304();
          v86 = sub_104C4();
          v87 = sub_105A4();
          if (!sub_FC0C(v87))
          {
LABEL_38:

            (*(v102 + 8))(v85, v103);
LABEL_14:
            v66 = sub_104A4();
            sub_FBD4(v66);
            v54 = swift_allocObject();
            v106[0] = sub_10494();
            sub_FB94();
            sub_FA90(v67, v68);
            sub_FC60();
            sub_FCE0();
LABEL_15:

LABEL_16:
            sub_F9D0(v32, &qword_18A68, &qword_10EC0);
            return v54;
          }

          v88 = sub_CCE8();
          sub_FC88(v88);
          v91 = "Continuers feature flag NOT enabled. Returning no op flow";
LABEL_37:
          sub_FC28(&dword_0, v89, v90, v91);
          sub_FBF4();

          goto LABEL_38;
        }

        v80 = v76[4];
        v81 = v107;
        v82 = (v76[3])(v79);
        if (v81)
        {
          v54 = sub_E6B8();

          sub_F9D0(v32, &qword_18A68, &qword_10EC0);
          return v54;
        }

        v75 = v82;
        if (!v82)
        {
          v85 = v98;
          sub_10304();
          v86 = sub_104C4();
          v96 = sub_105A4();
          if (!sub_FC0C(v96))
          {
            goto LABEL_38;
          }

          v97 = sub_CCE8();
          sub_FC88(v97);
          v91 = "Unable to construct flow";
          goto LABEL_37;
        }
      }

      v106[0] = v75;
      type metadata accessor for SiriSuggestionsFlow();
      sub_FBAC();
      sub_FA90(v94, v95);
      v54 = sub_FD84();
      goto LABEL_15;
    }
  }

  else
  {
    sub_F9D0(v106, &qword_18688, &unk_10B20);
  }

  sub_10304();
  v50 = sub_104C4();
  v51 = sub_105B4();
  if (sub_FC0C(v51))
  {
    v52 = sub_CCE8();
    *v52 = 0;
    _os_log_impl(&dword_0, v50, v13, "Unavailable direct invocation action. Returning no op flow", v52, 2u);
    sub_FBF4();
  }

  (*(v102 + 8))(v13, v103);
  v53 = sub_104A4();
  sub_FBD4(v53);
  v54 = swift_allocObject();
  v106[0] = sub_10494();
  sub_FB94();
  sub_FA90(v55, v56);
  sub_FC60();
  sub_FCE0();

  return v54;
}

void *SiriSuggestionsFlowPlugin.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_3E48(v0 + 5);
  return v0;
}

uint64_t SiriSuggestionsFlowPlugin.__deallocating_deinit()
{
  SiriSuggestionsFlowPlugin.deinit();

  return _swift_deallocClassInstance(v0, 80, 7);
}

void *sub_F354@<X0>(void *a1@<X8>)
{
  result = SiriSuggestionsFlowPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

void (*sub_F3B0(void *a1))(void *a1)
{
  v3 = sub_BFDC(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_FF64();
  return sub_AEEC;
}

uint64_t Optional.unwrap(errorIfNotSet:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  sub_FBC4();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v8, a2);
  v9 = *(a2 + 16);
  sub_FCC8();
  if (sub_3CCC(v10, v11, v12) == 1)
  {
    (*(v3 + 8))(v7, a2);
    swift_willThrow();
    return swift_errorRetain();
  }

  else
  {
    sub_FC48(v9);
    v15 = *(v14 + 32);
    v16 = sub_FCD4();
    return v17(v16);
  }
}

void *sub_F570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_FD24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = sub_102D4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  if (!a3)
  {
    sub_3B68(&qword_18A78, &qword_10EC8);
    sub_3B68(&qword_18A80, &unk_10ED0);
    sub_104E4();
    sub_102E4();
    sub_102C4();
    v14 = sub_10014();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_10004();
    sub_10104();
    v18 = sub_100F4();
    sub_FE94();
    sub_D22C(v39);
    v38[3] = v14;
    v38[4] = sub_FA90(&qword_18A88, &type metadata accessor for AppUtilsService);
    v38[0] = v17;
    if (a2)
    {
      type metadata accessor for SiriSuggestionsFlow();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34[1] = v18;
      v20 = ObjCClassFromMetadata;
      v21 = objc_opt_self();

      v22 = [v21 bundleForClass:v20];
      v23 = [v22 bundleURL];

      sub_FD14();
      sub_FD04();
      (*(v7 + 8))(v11, v6);
      sub_FB34(v38, &v37);
      sub_100C4();
      v24 = sub_10084();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_10074();
      v36[8] = v24;
      v36[9] = &protocol witness table for SuggestionsOverXPCLogger;
      v36[5] = v27;
      sub_FB34(v40, v36);
      sub_FB34(v39, &v35);
      v28 = sub_103B4();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      a3 = sub_103A4();

      sub_3E48(v39);
      sub_3E48(v40);
      sub_3E48(v38);
    }

    else
    {

      sub_3E48(v39);
      sub_3E48(v40);
      sub_3E48(v38);
      a3 = 0;
    }
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  type metadata accessor for SiriSuggestionsFlowPlugin();
  v32 = swift_allocObject();
  v32[8] = sub_102B4();
  v32[9] = &protocol witness table for OSFeatureFlagProvider;
  v32[4] = v31;
  v32[5] = a1;
  v32[2] = 0;
  v32[3] = sub_FB18;
  return v32;
}

uint64_t sub_F9D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3B68(a2, a3);
  sub_FC48(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_FA2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3B68(a3, a4);
  sub_FC48(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_FA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FAD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_FB34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_FC48(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_FBD4(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t sub_FC00(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

BOOL sub_FC0C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_FC28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_FC60()
{

  return sub_FD84();
}

uint64_t sub_FCAC()
{

  return sub_FD84();
}

uint64_t sub_FCEC(uint64_t a1)
{

  return sub_F9D0(a1, v1, v2);
}