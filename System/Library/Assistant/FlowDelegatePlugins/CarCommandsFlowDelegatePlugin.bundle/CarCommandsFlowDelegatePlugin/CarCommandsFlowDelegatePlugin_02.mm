uint64_t sub_40AF4()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_40BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A80);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_40FE8()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *(v5 + 312);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v3 + 328) = v0;

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    sub_48308();

    sub_1677C();

    return v13();
  }
}

uint64_t sub_41138()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 352);
  v5 = *(v3 + 344);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  sub_48428(v8);

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_41248()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 384);
  v5 = *(v3 + 376);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  sub_48410(v8);

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_41358()
{
  sub_D2DC();
  sub_10824(*(v0 + 272) + 32, v0 + 56);
  v1 = swift_task_alloc();
  v2 = sub_47DE8(v1);
  *v2 = v3;
  sub_47B1C(v2);

  return sub_11A570();
}

uint64_t sub_413E8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_414E8()
{
  sub_1696C();
  v1 = *(v0 + 304);

  sub_36F84(v1);
  v2 = *(v0 + 368);
  sub_48580();

  sub_D37C();

  return v3();
}

uint64_t sub_4156C()
{
  sub_D2DC();
  sub_486DC(*(v2 + 360));

  sub_36F84(v1);
  v3 = *(v2 + 304);
  v4 = *(v2 + 280);
  v5 = *(v2 + 288);

  sub_1677C();

  return v6();
}

uint64_t sub_415EC()
{
  sub_1696C();
  sub_486DC(*(v2 + 360));

  sub_36F84(v1);
  v3 = *(v2 + 416);
  sub_48580();

  sub_D37C();

  return v4();
}

uint64_t sub_41670()
{
  sub_D2DC();
  sub_10824(*(v0 + 272) + 32, v0 + 16);
  v1 = swift_task_alloc();
  v2 = sub_47DF8(v1);
  *v2 = v3;
  sub_47B34(v2);

  return sub_11A570();
}

uint64_t sub_41700()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 432) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_41800()
{
  sub_1696C();
  v1 = *(v0 + 304);

  sub_36F84(v1);
  v2 = *(v0 + 400);
  sub_48580();

  sub_D37C();

  return v3();
}

uint64_t sub_41884()
{
  sub_D2DC();
  sub_486DC(*(v2 + 392));

  sub_36F84(v1);
  v3 = *(v2 + 304);
  v4 = *(v2 + 280);
  v5 = *(v2 + 288);

  sub_1677C();

  return v6();
}

uint64_t sub_41904()
{
  sub_1696C();
  sub_486DC(*(v2 + 392));

  sub_36F84(v1);
  v3 = *(v2 + 432);
  sub_48580();

  sub_D37C();

  return v4();
}

uint64_t sub_41988()
{
  sub_1696C();
  v1 = *(v0 + 328);
  sub_48580();

  sub_D37C();

  return v2();
}

uint64_t sub_419F8()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_41AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6A90);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_41EEC()
{
  sub_D2DC();
  v5 = sub_47E88(v1, v2, v3, v4);
  sub_D414(v5);
  v7 = *(v6 + 64);
  *(v0 + 280) = sub_D3C8();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v10 = *(v9 + 64);
  v11 = sub_D3C8();
  v12 = sub_48440(v11);
  sub_47E58(v12);
  v14 = *(v13 + 64);
  *(v0 + 304) = sub_D3C8();
  v15 = sub_D388();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_41FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v15 = *(v13 + 248);
  if (sub_11F404())
  {
    v16 = [*(v13 + 256) parametersByName];
    if (v16)
    {
      v17 = v16;
      sub_16A5B4();

      v18 = sub_47B4C();
      sub_4801C(v18);

      if (*(v13 + 160))
      {
        sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
        v19 = sub_47CA0();
        sub_47DD8(v19);
LABEL_10:
        v32 = [sub_480F8() userActivity];
        if (v32 && (v12 = v32, v33 = [v32 userInfo], v12, v33))
        {
          v12 = sub_48398();

          sub_47A4C();
          sub_48380();
          sub_48000();

          sub_472B0(v13 + 96);
          if (*(v13 + 192))
          {
            if (sub_47E68())
            {
              sub_47D88();
              if (!v17)
              {
LABEL_15:
                sub_480EC();
LABEL_28:
                v38 = sub_47C48();
                sub_4796C(v38);
                sub_47C14();
                if ([v14 _intentResponseCode])
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v39 = sub_47D14();
                  v40 = sub_48154(v39, qword_1E65C0);
                  sub_47AD4(v40);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v41 = sub_482C4();
                  sub_48128(v41);
                  v42 = swift_task_alloc();
                  v43 = sub_48110(v42);
                  *v43 = v44;
                  sub_47B08(v43);
                  sub_10B0C();

                  return sub_1570D4(v45);
                }

                else
                {
                  if (qword_1E58E8 != -1)
                  {
                    sub_9ED4();
                  }

                  v47 = sub_47D14();
                  v48 = sub_48154(v47, qword_1E65C0);
                  sub_47A74(v48);
                  type metadata accessor for CarCommandsCATPatternsExecutor(0);
                  sub_482AC();
                  v49 = sub_482C4();
                  sub_4811C(v49);
                  v50 = swift_task_alloc();
                  v51 = sub_48104(v50);
                  *v51 = v52;
                  sub_47B08(v51);
                  sub_10B0C();

                  return sub_1569A0(v53);
                }
              }

LABEL_19:
              v34 = [v17 spokenPhrase];
              sub_16A664();
              sub_483E0();
              sub_48368();
              sub_48070();
              if (&type metadata for Any)
              {
                sub_483F8();
                sub_48054();
                if (v34 == &stru_68.sectname[11] && v12 == 0xE100000000000000)
                {
                }

                else
                {
                  sub_47CC4();
                  sub_48350();
                }
              }

              v36 = *(v13 + 288);
              v37 = v17;
              sub_483B0();

              goto LABEL_28;
            }

LABEL_18:
            if (!v17)
            {
              goto LABEL_15;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_47D98();
        }

        sub_D188(v13 + 168, &qword_1E6A10, &unk_1744D0);
        goto LABEL_18;
      }
    }

    else
    {
      sub_47DA8();
    }

    sub_D188(v13 + 136, &qword_1E6A10, &unk_1744D0);
    v17 = 0;
    goto LABEL_10;
  }

  sub_48338();
  v20 = sub_48038();
  sub_47DC8(v20);
  v21 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v22 = swift_task_alloc();
  sub_480E0(v22);
  sub_48320(&qword_1E6AA0);
  sub_47DB8();
  *v14 = v23;
  sub_47B60();
  sub_10B0C();

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_423E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ActivateSignalRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_10A9C;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_424AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ActivateSignalRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_10A9C;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_42578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ActivateSignalRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_10A9C;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v12, a5);
}

uint64_t sub_42644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1039C;

  return sub_4271C(a1, a2, a3, a4);
}

uint64_t sub_4271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v7 = type metadata accessor for CarNameParameters(0);
  v5[28] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v9 = sub_168454();
  v5[30] = v9;
  v10 = *(v9 - 8);
  v5[31] = v10;
  v11 = *(v10 + 64) + 15;
  v5[32] = swift_task_alloc();

  return _swift_task_switch(sub_42870, 0, 0);
}

uint64_t sub_42870()
{
  sub_10BA4();
  sub_10B8C();
  sub_481EC();
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_47FC4();
  sub_168C94();
  if (sub_47EF0())
  {
    if (sub_48568() == 1307)
    {
      v5 = [sub_4847C() parametersByName];
      if (v5)
      {
        v2 = v5;
        v4 = sub_16A5B4();

        v6 = sub_47B4C();
        sub_48224(v6);

        if (*(v3 + 120))
        {
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          if (sub_47F14())
          {
            v2 = *(v0 + 16);
            v1 = [v2 spokenPhrase];
            sub_16A664();
            sub_485E0();
            sub_485C8();
            sub_48208();
            if (v4)
            {
              sub_485B0();
              sub_4825C();
              if (v0 == 115 && v1 == 0xE100000000000000)
              {

                sub_48458();
              }

              else
              {
                sub_47F38();
                sub_48520();
              }
            }

            goto LABEL_19;
          }

LABEL_18:
          sub_48464();
LABEL_19:
          v15 = sub_47ECC();
          sub_483C8(v15);
          sub_4808C();

          sub_169064();
          sub_48598();
          sub_169054();
          sub_4817C();
          v16 = sub_47FF0();
          v17(v16);
          v18 = sub_48278([objc_allocWithZone(SAAppsLaunchApp) init]);
          if (v19)
          {
            sub_16A644();
            sub_4808C();
          }

          else
          {
            v1 = 0;
          }

          sub_484C0(v18, "setLaunchId:");

          if (v2)
          {
            v20 = *(v3 + 216);
            v21 = v2;
            sub_48240();
          }

          v22 = sub_48508();
          sub_47D48(v22);
          if (v23)
          {
            sub_48538();
          }

          sub_47EA8();
          if (v4)
          {
            sub_481D0();
          }

          sub_47E1C();
          if (v24)
          {
            sub_48550();
          }

          sub_47B78();
          sub_47CE8();
          sub_481B4();
          sub_48198();
          sub_48098();
          v25 = swift_task_alloc();
          v26 = sub_48494(v25);
          *v26 = v27;
          sub_47E08(v26);
          sub_10B0C();

          return sub_15717C(v28);
        }
      }

      else
      {
        sub_48470();
      }

      sub_D188(v1, &qword_1E6A10, &unk_1744D0);
      goto LABEL_18;
    }
  }

  sub_47FA0();
  v8 = swift_task_alloc();
  v9 = sub_48488(v8);
  *v9 = v10;
  v9[1] = sub_42E38;
  sub_484A0();
  sub_10B0C();

  return sub_156570(v11, v12);
}

uint64_t sub_42BB0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 288);
  *v2 = *v0;
  sub_484F0(v5);
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_42CA8()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 56);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 312) = v2;
  *v2 = v3;
  sub_47C88(v2);

  return sub_11A570();
}

uint64_t sub_42D38()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 320) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_42E38()
{
  sub_48638();
  sub_D3A4();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 328);
  *v4 = *v1;
  sub_484D8(v7);
  if (v0)
  {
    sub_47FD0();

    sub_D37C();
    sub_484AC();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    sub_10B4C();
    sub_484AC();

    return _swift_task_switch(v17, v18, v19);
  }
}

uint64_t sub_42F84()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 16);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 344) = v2;
  *v2 = v3;
  sub_47C70(v2);

  return sub_11A570();
}

uint64_t sub_43014()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 352) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_43114()
{
  sub_D2DC();
  sub_480D0(v1, v2, v3, v4);
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v7 = *(v6 + 64);
  v8 = sub_486C4();
  v9 = sub_486AC(v8);
  v10 = sub_48694(v9);
  v11 = sub_4867C(v10);
  v12 = sub_48664(v11);
  v0[28] = v12;
  sub_D414(v12);
  v14 = *(v13 + 64);
  v15 = sub_D3C8();
  v16 = sub_4864C(v15);
  v0[30] = v16;
  sub_10AEC(v16);
  v0[31] = v17;
  v19 = *(v18 + 64);
  v0[32] = sub_D3C8();
  v20 = sub_D388();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_43204()
{
  sub_D2DC();
  sub_480D0(v1, v2, v3, v4);
  v5 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v5);
  v7 = *(v6 + 64);
  v8 = sub_486C4();
  v9 = sub_486AC(v8);
  v10 = sub_48694(v9);
  v11 = sub_4867C(v10);
  v12 = sub_48664(v11);
  v0[28] = v12;
  sub_D414(v12);
  v14 = *(v13 + 64);
  v15 = sub_D3C8();
  v16 = sub_4864C(v15);
  v0[30] = v16;
  sub_10AEC(v16);
  v0[31] = v17;
  v19 = *(v18 + 64);
  v0[32] = sub_D3C8();
  v20 = sub_D388();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_432F4()
{
  sub_10BA4();
  sub_10B8C();
  sub_481EC();
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_47FC4();
  sub_168C94();
  if (sub_47EF0())
  {
    if (sub_48568() == 1307)
    {
      v5 = [sub_4847C() parametersByName];
      if (v5)
      {
        v2 = v5;
        v4 = sub_16A5B4();

        v6 = sub_47B4C();
        sub_48224(v6);

        if (*(v3 + 120))
        {
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          if (sub_47F14())
          {
            v2 = *(v0 + 16);
            v1 = [v2 spokenPhrase];
            sub_16A664();
            sub_485E0();
            sub_485C8();
            sub_48208();
            if (v4)
            {
              sub_485B0();
              sub_4825C();
              if (v0 == 115 && v1 == 0xE100000000000000)
              {

                sub_48458();
              }

              else
              {
                sub_47F38();
                sub_48520();
              }
            }

            goto LABEL_19;
          }

LABEL_18:
          sub_48464();
LABEL_19:
          v15 = sub_47ECC();
          sub_483C8(v15);
          sub_4808C();

          sub_169064();
          sub_48598();
          sub_169054();
          sub_4817C();
          v16 = sub_47FF0();
          v17(v16);
          v18 = sub_48278([objc_allocWithZone(SAAppsLaunchApp) init]);
          if (v19)
          {
            sub_16A644();
            sub_4808C();
          }

          else
          {
            v1 = 0;
          }

          sub_484C0(v18, "setLaunchId:");

          if (v2)
          {
            v20 = *(v3 + 216);
            v21 = v2;
            sub_48240();
          }

          v22 = sub_48508();
          sub_47D48(v22);
          if (v23)
          {
            sub_48538();
          }

          sub_47EA8();
          if (v4)
          {
            sub_481D0();
          }

          sub_47E1C();
          if (v24)
          {
            sub_48550();
          }

          sub_47B78();
          sub_47CE8();
          sub_481B4();
          sub_48198();
          sub_48098();
          v25 = swift_task_alloc();
          v26 = sub_48494(v25);
          *v26 = v27;
          sub_47E08(v26);
          sub_10B0C();

          return sub_15717C(v28);
        }
      }

      else
      {
        sub_48470();
      }

      sub_D188(v1, &qword_1E6A10, &unk_1744D0);
      goto LABEL_18;
    }
  }

  sub_47FA0();
  v8 = swift_task_alloc();
  v9 = sub_48488(v8);
  *v9 = v10;
  v9[1] = sub_43AA8;
  sub_484A0();
  sub_10B0C();

  return sub_156570(v11, v12);
}

uint64_t sub_43634()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 288);
  *v2 = *v0;
  sub_484F0(v5);
  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4372C()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 56);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 312) = v2;
  *v2 = v3;
  sub_47C88(v2);

  return sub_11A570();
}

uint64_t sub_437BC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 320) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_438BC()
{
  sub_48638();
  sub_D3A4();
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[29];

  sub_36F84(v4);
  v5 = v0[38];
  sub_482DC();

  sub_D37C();
  sub_484AC();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_43964()
{
  sub_D3A4();
  sub_48618();

  sub_36F84(v1);
  sub_485F8();

  sub_1677C();

  return v4();
}

uint64_t sub_43A08()
{
  sub_48638();
  sub_D3A4();
  sub_48618();

  sub_36F84(v1);
  v5 = *(v3 + 320);
  sub_482DC();

  sub_D37C();
  sub_484AC();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_43AA8()
{
  sub_48638();
  sub_D3A4();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 328);
  *v4 = *v1;
  sub_484D8(v7);
  if (v0)
  {
    sub_47FD0();

    sub_D37C();
    sub_484AC();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    sub_10B4C();
    sub_484AC();

    return _swift_task_switch(v17, v18, v19);
  }
}

uint64_t sub_43BF4()
{
  sub_D2DC();
  v1 = sub_480B8();
  sub_10824(v1, v0 + 16);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 344) = v2;
  *v2 = v3;
  sub_47C70(v2);

  return sub_11A570();
}

uint64_t sub_43C84()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 352) = v0;

  sub_D13C((v3 + 16));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_43D84()
{
  sub_D3A4();

  sub_485F8();

  sub_1677C();

  return v1();
}

uint64_t sub_43E18()
{
  sub_48638();
  sub_D3A4();

  v1 = *(v0 + 352);
  sub_482DC();

  sub_D37C();
  sub_484AC();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_43EA8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_43F64;

  return sub_441D0(a1, a2);
}

uint64_t sub_43F64()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = sub_120EC();

  return v6(v5);
}

uint64_t sub_44120(uint64_t a1, uint64_t a2)
{
  result = sub_478F4(&qword_1E69E8, a2, type metadata accessor for ActivateSignalRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_44178(uint64_t a1, uint64_t a2)
{
  result = sub_478F4(&qword_1E69F8, a2, type metadata accessor for ActivateSignalRCHFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_441D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_168A24();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_44294, 0, 0);
}

uint64_t sub_44408()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_44600()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_447F8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_449F4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_44C00()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_44E0C()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_45004()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_451FC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_453F8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_455F0()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_457EC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_459E4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_45BDC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_45DE8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_45FF4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_461EC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_463E8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_465E0()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_467D8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_469D0()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_46BDC()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_46DD8()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_46FD4()
{
  sub_D2DC();
  v3 = sub_47F5C(v1, v2);
  sub_47AC0(v3);
  *(v0 + 48) = v4;
  v6 = *(v5 + 64);
  *(v0 + 56) = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_471CC()
{
  v0 = sub_16A1B4();
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v0 == 0xD000000000000012 && v1 == 0x800000000017F6B0)
  {
    goto LABEL_14;
  }

  v3 = sub_16AE54();

  if ((v3 & 1) == 0)
  {
LABEL_8:
    v5 = sub_16A1B4();
    if (!v6)
    {
      v4 = 0;
      return v4 & 1;
    }

    if (v5 != 0xD00000000000002CLL || v6 != 0x80000000001821B0)
    {
      v4 = sub_16AE54();
LABEL_15:

      return v4 & 1;
    }

LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_47304(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_37130(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_47358(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  v7 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39ActivateSignalConfirmIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t sub_47600()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_47640(uint64_t *a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for FeatureFlagHelper();
  v34[3] = v6;
  v34[4] = &off_1D9AF0;
  v34[0] = a2;
  v7 = type metadata accessor for ActivateSignalHandleIntentFlowStrategy();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_2F8D0(v34, v6);
  v12 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v33[3] = v6;
  v33[4] = &off_1D9AF0;
  v33[0] = v16;
  v17 = (v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy_commonPatterns);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  *(v10 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38ActivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v32);
  sub_10824(v33, v30);
  v20 = v31;
  v21 = sub_2F8D0(v30, v31);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  sub_1668CC();
  v28 = v27;
  sub_D13C(a1);
  sub_D13C(v33);
  sub_D13C(v30);
  sub_D13C(v34);
  return v28;
}

uint64_t sub_478F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_4796C(uint64_t a1)
{
  sub_5370(v3, v1, 1, a1);
  sub_5370(v2 + v4[7], 1, 1, a1);
  sub_5370(v2 + v4[8], 1, 1, a1);
  sub_5370(v2 + v4[9], 1, 1, a1);

  return sub_16304(v3, v2);
}

void sub_479F8(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, 0xD000000000000085, v3 | 0x8000000000000000, 0xD000000000000028, (v2 | 0x8000000000000000), 33, 0xD000000000000026, v1);
}

void sub_47A74(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v4 + 66, v2 | 0x8000000000000000, 0xD00000000000003FLL, (v1 | 0x8000000000000000), 38, 0xD00000000000003FLL, v3);
}

uint64_t sub_47AC0(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void sub_47AD4(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v4 + 66, v2 | 0x8000000000000000, 0xD00000000000003FLL, (v1 | 0x8000000000000000), 43, v4 + 29, v3);
}

uint64_t sub_47B1C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 360);
  return *(v2 + 240);
}

uint64_t sub_47B34(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 392);
  return *(v2 + 240);
}

uint64_t sub_47B60()
{
  *(v2 + 8) = v0;
  v3 = v1[32];
  v4 = v1[33];
  result = v1[30];
  v6 = v1[31];
  return result;
}

uint64_t sub_47B78()
{
  v4 = v1[28];
  v3 = v1[29];
  v6 = v1[26];
  v5 = v1[27];
  v7 = v1[25];
  v8 = v1[23];
  sub_5370(v1[24], v2, 1, v0);

  return sub_16304(v5, v3);
}

uint64_t sub_47BCC(uint64_t a1)
{

  return SiriKitIntentHandler.init<A>(app:intentHandler:intent:)(v2, v1, a1, v3);
}

uint64_t sub_47BF0()
{
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v8 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_16A584();
}

uint64_t sub_47C48()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[33];

  return sub_16A0C4();
}

uint64_t sub_47C70(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 336);
  return *(v2 + 152);
}

uint64_t sub_47C88(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 296);
  return *(v2 + 152);
}

uint64_t sub_47CA0()
{

  return swift_dynamicCast();
}

uint64_t sub_47CC4()
{

  return sub_16AE54();
}

uint64_t sub_47CE8()
{
  *(v0 + v3[5]) = 0;
  *(v0 + v3[6]) = v1;
  v5 = v0 + v3[7];

  return sub_16304(v2, v5);
}

uint64_t sub_47D14()
{
  v2 = *(v0 + 280);

  return sub_16A584();
}

uint64_t sub_47D48(uint64_t a1)
{
  sub_5370(v2, v1, 1, a1);

  return sub_16AAE4();
}

double sub_47D98()
{
  result = 0.0;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  return result;
}

double sub_47DA8()
{
  result = 0.0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  return result;
}

uint64_t sub_47DC8(uint64_t result)
{
  *(v1 + 312) = result;
  *(v1 + 216) = result;
  return result;
}

uint64_t sub_47DD8(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 232);
  }

  return result;
}

uint64_t sub_47E1C()
{
  v3 = *(v1 + 168);
  sub_5370(*(v1 + 200), v2, 1, v0);

  return sub_16A1B4();
}

uint64_t sub_47E58(uint64_t a1)
{
  *(v1 + 296) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_47E68()
{

  return swift_dynamicCast();
}

uint64_t sub_47E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[33] = a4;
  v5[34] = v4;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;

  return sub_16A164();
}

uint64_t sub_47EA8()
{
  v4 = *(v1 + 208);

  return sub_5370(v4, v2, 1, v0);
}

uint64_t sub_47ECC()
{
  v1[34] = v0;
  v4 = v1[31];
  v3 = v1[32];
  v5 = v1[30];
  v6 = v1[21];

  return sub_169074();
}

uint64_t sub_47EF0()
{

  return swift_dynamicCast();
}

uint64_t sub_47F14()
{

  return swift_dynamicCast();
}

uint64_t sub_47F38()
{

  return sub_16AE54();
}

uint64_t sub_47F5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return sub_168A24();
}

uint64_t sub_47F84()
{
  v2 = *(v0 + 16);

  return sub_471CC();
}

uint64_t *sub_47FA0()
{
  result = sub_D084((*(v0 + 184) + 16), *(*(v0 + 184) + 40));
  v2 = *result;
  return result;
}

uint64_t sub_47FD0()
{
  v2 = v0[32];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v8 = v0 + 24;
  v6 = v0[24];
  v7 = v8[1];
}

double sub_48000()
{

  return sub_13F658(v1 + 96, v0, (v1 + 168));
}

double sub_4801C(uint64_t a1)
{

  return sub_13F530(a1, 0xE700000000000000, v1, (v2 + 136));
}

uint64_t sub_48038()
{

  return swift_allocObject();
}

uint64_t sub_48054()
{
}

uint64_t sub_48070()
{
}

uint64_t *sub_48098()
{
  result = sub_D084((v0 + 16), *(v0 + 40));
  v2 = *result;
  return result;
}

uint64_t sub_480D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = result;
  return result;
}

uint64_t sub_48134()
{

  return swift_once();
}

uint64_t sub_48154(uint64_t a1, uint64_t a2)
{
  sub_9DA0(a1, a2);

  return sub_16A9A4();
}

uint64_t sub_4817C()
{
}

uint64_t sub_48198()
{
  v4 = v0 + *(v2 + 36);

  return sub_16304(v1, v4);
}

uint64_t sub_481B4()
{
  v4 = v0 + *(v2 + 32);

  return sub_16304(v1, v4);
}

uint64_t sub_481D0()
{
  v2 = *(v0 + 200);

  return sub_16A6E4();
}

uint64_t sub_481EC()
{
  *(v0 + 128) = *(v0 + 160);

  return swift_errorRetain();
}

uint64_t sub_48208()
{
}

double sub_48224(uint64_t a1)
{

  return sub_13F530(a1, 0xE700000000000000, v2, v1);
}

uint64_t sub_48240()
{

  return sub_99C94();
}

uint64_t sub_4825C()
{
}

uint64_t sub_48278(uint64_t a1)
{
  *(v1 + 280) = a1;

  return sub_16A1B4();
}

uint64_t sub_48294()
{

  return static SiriKitIntentExecutionBehavior.embeddedIntentHandler(intentHandler:)(v0);
}

uint64_t sub_482AC()
{

  return sub_16A154();
}

uint64_t sub_482C4()
{

  return sub_16A094();
}

uint64_t sub_482DC()
{
  v2 = v0[32];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
}

uint64_t sub_48308()
{
  v2 = *(v0 + 304);
  v5 = v0 + 280;
  v3 = *(v0 + 280);
  v4 = *(v5 + 8);
}

uint64_t sub_48320(unint64_t *a1)
{

  return sub_47304(a1, v2, v1);
}

uint64_t sub_48338()
{

  return sub_5758(v1, v0);
}

uint64_t sub_48350()
{
}

uint64_t sub_48368()
{

  return sub_15B48(v0, v1);
}

uint64_t sub_48380()
{

  return sub_16AC84();
}

uint64_t sub_48398()
{

  return sub_16A5B4();
}

uint64_t sub_483B0()
{

  return sub_99C94();
}

uint64_t sub_483C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void sub_483E0()
{
}

uint64_t sub_483F8()
{

  return sub_16A5D4();
}

uint64_t sub_48410(uint64_t a1)
{
  *(v1 + 392) = a1;
  *(v1 + 400) = v2;
}

uint64_t sub_48428(uint64_t a1)
{
  *(v1 + 360) = a1;
  *(v1 + 368) = v2;
}

uint64_t sub_48440(uint64_t a1)
{
  *(v1 + 288) = a1;

  return type metadata accessor for CarNameParameters(0);
}

double sub_48470()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

id sub_484C0(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_484D8(uint64_t a1)
{
  *(v1 + 336) = a1;
}

uint64_t sub_484F0(uint64_t a1)
{
  *(v1 + 296) = a1;
  *(v1 + 304) = v2;
}

uint64_t sub_48508()
{
  v2 = *(v0 + 216);

  return sub_16A0C4();
}

uint64_t sub_48520()
{
}

uint64_t sub_48538()
{
  v2 = *(v0 + 208);

  return sub_16A6E4();
}

uint64_t sub_48550()
{
  v2 = *(v0 + 192);

  return sub_16A6E4();
}

uint64_t sub_48568()
{
  *(v0 + 264) = *(v0 + 136);

  return CommandFailure.errorCode.getter();
}

uint64_t sub_48580()
{
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
}

uint64_t sub_48598()
{

  return sub_168444();
}

uint64_t sub_485B0()
{

  return sub_16A5D4();
}

uint64_t sub_485C8()
{

  return sub_15B48(v0, v1);
}

void sub_485E0()
{
}

uint64_t sub_485F8()
{
  v2 = v0[32];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
}

uint64_t sub_48618()
{
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];
  v6 = v0[29];
}

uint64_t sub_4864C(uint64_t a1)
{
  *(v1 + 232) = a1;

  return sub_168454();
}

uint64_t sub_48664(uint64_t a1)
{
  *(v1 + 216) = a1;

  return type metadata accessor for CarNameParameters(0);
}

uint64_t sub_4867C(uint64_t a1)
{
  *(v1 + 208) = a1;

  return swift_task_alloc();
}

uint64_t sub_48694(uint64_t a1)
{
  *(v1 + 200) = a1;

  return swift_task_alloc();
}

uint64_t sub_486AC(uint64_t a1)
{
  *(v1 + 192) = a1;

  return swift_task_alloc();
}

uint64_t sub_486C4()
{

  return swift_task_alloc();
}

void sub_486DC(void *a1@<X8>)
{
  v3 = *(v1 + 336);
  v4 = *(v1 + 304);
}

CarCommandsFlowDelegatePlugin::CarCommandsUseCase_optional __swiftcall CarCommandsUseCase.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_16AE64();

  if (v1 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v1;
  }
}

unint64_t CarCommandsUseCase.rawValue.getter(char a1)
{
  result = 0x536B636F4C746567;
  switch(a1)
  {
    case 1:
      return 0x536B636F4C746573;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 0x7265776F50746567;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x6B6E757254746573;
    case 6:
      v3 = 9;
      goto LABEL_22;
    case 7:
      return 0x6F72666544746573;
    case 8:
      return 0x6F69646152746573;
    case 9:
      return 0x616D696C43746573;
    case 10:
      return 0x616D696C43746567;
    case 11:
      return 0x65706D6554746573;
    case 12:
      return 0x434178614D746573;
    case 13:
      return 0x6B6E757254746567;
    case 14:
      return 0x5374616553746573;
    case 15:
      v3 = 11;
      goto LABEL_22;
    case 16:
      v3 = 5;
LABEL_22:
      result = v3 | 0xD000000000000010;
      break;
    case 17:
      result = 0x65536E6146746573;
      break;
    case 18:
      result = 0x6D756C6F56746573;
      break;
    case 19:
      result = 0x4D6F747541746573;
      break;
    case 20:
      result = 0x616D696C43746573;
      break;
    case 21:
      result = 0x4D746E6556746573;
      break;
    case 22:
      result = 0x6E496E6146746573;
      break;
    case 23:
    case 27:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0xD000000000000018;
      break;
    case 25:
      result = 0x507261436E65706FLL;
      break;
    case 26:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0x6E776F6E6B6E75;
      break;
    case 29:
      result = 0x7265646E7573696DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_48B70()
{
  result = qword_1E6AC8;
  if (!qword_1E6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6AC8);
  }

  return result;
}

CarCommandsFlowDelegatePlugin::CarCommandsUseCase_optional sub_48BDC@<W0>(Swift::String *a1@<X0>, CarCommandsFlowDelegatePlugin::CarCommandsUseCase_optional *a2@<X8>)
{
  result.value = CarCommandsUseCase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_48C0C@<X0>(unint64_t *a1@<X8>)
{
  result = CarCommandsUseCase.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_48C3C()
{
  result = qword_1E6AD0;
  if (!qword_1E6AD0)
  {
    sub_37130(&qword_1E6AD8, &qword_16E890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6AD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE3)
  {
    if (a2 + 29 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 29) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 30;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v5 = v6 - 30;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE2)
  {
    v6 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x48E04);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 29;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsSetAutoModeCATsSimple()
{
  result = qword_1E6AE0;
  if (!qword_1E6AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_48EC8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_48EEC, 0, 0);
}

uint64_t sub_48EEC()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x64656C62616E65;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_49014;
  v5 = *(v0 + 16);

  return v7(0xD00000000000002CLL, 0x80000000001822C0, v2);
}

uint64_t sub_49014(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_4916C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_4916C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_491D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_49224(a1, a2);
}

uint64_t sub_49224(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_49380(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_49488(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D1D10;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_494D4(char a1)
{
  result = 0x7473756A6461;
  switch(a1)
  {
    case 1:
      result = 0x74736575516B7361;
      break;
    case 2:
      result = 0x65736F6C63;
      break;
    case 3:
      result = 1953069157;
      break;
    case 4:
      result = 1801678700;
      break;
    case 5:
      result = 1852141679;
      break;
    case 6:
      result = 1802658160;
      break;
    case 7:
      result = 0x66664F6E727574;
      break;
    case 8:
      result = 0x6E4F6E727574;
      break;
    case 9:
      result = 1702257011;
      break;
    case 10:
      result = 0x61636F4C646E6573;
      break;
    case 11:
      result = 0x6B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_4963C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_49488(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_4966C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_494D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for CarCommandsVerbNLv3Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CarCommandsVerbNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x497ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_49828()
{
  result = qword_1E6B30;
  if (!qword_1E6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B30);
  }

  return result;
}

uint64_t sub_4988C(uint64_t a1, uint64_t a2)
{
  v4 = sub_49A18();
  v5 = sub_49A6C();
  v6 = sub_49AC0();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_49904()
{
  result = qword_1E6B38;
  if (!qword_1E6B38)
  {
    sub_37130(&qword_1E6B40, &qword_16E9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B38);
  }

  return result;
}

unint64_t sub_4996C()
{
  result = qword_1E6B48;
  if (!qword_1E6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B48);
  }

  return result;
}

unint64_t sub_499C4()
{
  result = qword_1E6B50;
  if (!qword_1E6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B50);
  }

  return result;
}

unint64_t sub_49A18()
{
  result = qword_1E6B58;
  if (!qword_1E6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B58);
  }

  return result;
}

unint64_t sub_49A6C()
{
  result = qword_1E6B60;
  if (!qword_1E6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B60);
  }

  return result;
}

unint64_t sub_49AC0()
{
  result = qword_1E6B68;
  if (!qword_1E6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6B68);
  }

  return result;
}

uint64_t sub_49B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_16A204();
  v4[6] = v5;
  sub_10AEC(v5);
  v4[7] = v6;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = sub_16A1F4();
  v4[9] = v9;
  sub_10AEC(v9);
  v4[10] = v10;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = sub_16A224();
  v4[12] = v13;
  sub_10AEC(v13);
  v4[13] = v14;
  v16 = *(v15 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_49C78, 0, 0);
}

uint64_t sub_49C78()
{
  v16 = v0[14];
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  *v1 = sub_49F74(v10);
  (*(v2 + 104))(v1, enum case for AppSupportQuery.AllowedSiriAuthorizationStatuses.only(_:), v3);
  (*(v5 + 104))(v4, enum case for AppSupportQuery.AllowedExtensionPointIdentifiers.all(_:), v6);
  sub_16A214();
  v11 = *(&async function pointer to dispatch thunk of AppSupportService.findApps(matching:) + 1);
  v17 = (&async function pointer to dispatch thunk of AppSupportService.findApps(matching:) + async function pointer to dispatch thunk of AppSupportService.findApps(matching:));
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_49DD8;
  v13 = v0[14];
  v14 = v0[5];

  return v17(v13);
}

uint64_t sub_49DD8(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_49ED8, 0, 0);
}

uint64_t sub_49ED8()
{
  v1 = v0[11];
  v2 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v3 = v0[1];
  v4 = v0[16];

  return v3(v4);
}

void *sub_49F74(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_108E64(*(a1 + 16), 0);
  v4 = sub_1485D8(&v6, v3 + 4, v2, a1);
  sub_4A004();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

id sub_4A00C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_ECCCC(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_4A0A8()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for SignalActivationParameters(0);
  v1[41] = v5;
  v6 = *(*(v5 - 8) + 64);
  v1[42] = sub_D3C8();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_4A170()
{
  v75 = v0;
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E6DC0, &qword_16ECE8);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD0000000000000AALL;
  v0[32] = 0x80000000001824B0;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  v8 = sub_15AE4(v7);
  v10 = v9;

  if (v10)
  {
    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    sub_16A744(v76);
    v77._countAndFlagsBits = 0xD000000000000025;
    v77._object = 0x8000000000182560;
    sub_16A744(v77);
    v11 = v8;
    v4 = v10;
  }

  else
  {
    v11 = 0xD000000000000025;
  }

  v73 = v11;
  v74._countAndFlagsBits = 58;
  v74._object = 0xE100000000000000;
  v0[35] = 26;
  v78._countAndFlagsBits = sub_16AE24();
  sub_16A744(v78);

  sub_16A744(v74);

  v12._countAndFlagsBits = sub_378D0(0x8002uLL);
  if (v12._object)
  {
    v74._countAndFlagsBits = 32;
    v74._object = 0xE100000000000000;
    sub_16A744(v12);

    v79._countAndFlagsBits = 32;
    v79._object = 0xE100000000000000;
    sub_16A744(v79);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v74._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v73, v4, &v74._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v6, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v17 = v0[38];
  swift_beginAccess();
  v18 = *sub_D084((v17 + 136), *(v17 + 160));
  v19 = sub_11B5C0();
  v20 = v0[37];
  if (v19)
  {
    sub_169094();
    sub_16A1B4();
    v22 = v21;

    v0[43] = v22;
    if (!v22)
    {
      type metadata accessor for CarCommandsError();
      sub_4BE94(&qword_1E92F0, type metadata accessor for CarCommandsError);
      swift_allocError();
      *v33 = 0xD00000000000002DLL;
      v33[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v34 = v0[42];
      v36 = v0[39];
      v35 = v0[40];

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v23 = v0[37];
    v24 = sub_1690A4();
    v0[44] = [v24 carName];

    v25 = sub_169084();
    v26 = [v25 carSignal];

    if (v26)
    {
      [v26 unsignedIntegerValue];
    }

    v64 = v0[37];
    v65 = sub_169084();
    v66 = [v65 signalActivated];

    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    v67.super.super.isa = sub_16AAB4(1).super.super.isa;
    isa = v67.super.super.isa;
    if (v66)
    {
      sub_16AAD4();
    }

    else
    {
    }

    v69 = v0[38];
    type metadata accessor for SignalStatusSnippetFactory();
    swift_beginAccess();
    sub_10824(v69 + 184, (v0 + 17));
    v70 = swift_task_alloc();
    v0[45] = v70;
    *v70 = v0;
    v70[1] = sub_4A99C;
    v71 = v0[36];
    sub_D2C0();

    return sub_126E58();
  }

  else
  {
    v27 = sub_1690A4();
    v0[47] = v27;
    v28 = sub_169084();
    v0[48] = v28;
    v29 = [v27 carName];
    if (v29)
    {
      v30 = v29;
      v31 = v0[40];
      sub_99C94();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v39 = v0[40];
    v40 = sub_16A0C4();
    sub_5370(v39, v32, 1, v40);
    v41 = [v28 signalActivated];
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    v42.super.super.isa = sub_16AAB4(1).super.super.isa;
    if (v41)
    {
      v43 = sub_16AAD4();
    }

    else
    {
      v43 = 0;
    }

    v44 = [v28 carSignal];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 unsignedIntegerValue];

      v47 = v46 == &dword_0 + 2;
    }

    else
    {
      v47 = 0;
    }

    v48 = v0[37];
    sub_169094();
    sub_16A1B4();
    v50 = v49;

    if (v50)
    {
      v51 = v0[39];
      sub_16A6E4();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v54 = v0[41];
    v53 = v0[42];
    v56 = v0[39];
    v55 = v0[40];
    v57 = v0[38];
    sub_5370(v56, v52, 1, v40);
    sub_16304(v55, v53);
    *(v53 + v54[5]) = v43 & 1;
    *(v53 + v54[6]) = v47;
    sub_16304(v56, v53 + v54[7]);
    v58 = *sub_D084((v57 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns), *(v57 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns + 24));
    v59 = swift_task_alloc();
    v0[49] = v59;
    *v59 = v0;
    v59[1] = sub_4AB40;
    v60 = v0[42];
    sub_D2C0();

    return sub_156C3C(v61);
  }
}

uint64_t sub_4A99C()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = v2[45];
  v6 = *v1;
  *v4 = *v1;
  v3[46] = v0;

  v7 = v2[44];
  v8 = v2[43];
  sub_D13C(v3 + 17);

  if (v0)
  {

    return _swift_task_switch(sub_4AF4C, 0, 0);
  }

  else
  {
    v9 = v3[42];
    v11 = v3[39];
    v10 = v3[40];

    v12 = v6[1];

    return v12();
  }
}

uint64_t sub_4AB40()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 392);
  v8 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  if (v0)
  {
    v6 = sub_4AE14;
  }

  else
  {
    v6 = sub_4AC4C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_4AC4C()
{
  sub_D2DC();
  v1 = v0[38];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_4AD08;
  v3 = v0[50];

  return sub_11A570();
}

uint64_t sub_4AD08()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 416);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  if (v0)
  {
    v7 = sub_4AFC4;
  }

  else
  {
    v7 = sub_4AEA4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_4AE14()
{
  sub_1696C();
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);

  sub_4BE38(v2);
  v3 = *(v0 + 408);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);

  sub_D37C();

  return v7();
}

uint64_t sub_4AEA4()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);

  sub_4BE38(v3);
  sub_D250((v0 + 56), v4);
  v5 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);

  sub_D37C();

  return v8();
}

uint64_t sub_4AF4C()
{
  sub_1696C();
  v1 = v0[46];
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];

  sub_D37C();

  return v5();
}

uint64_t sub_4AFC4()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);

  sub_4BE38(v3);
  v4 = *(v0 + 424);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);

  sub_D37C();

  return v8();
}

void sub_4B05C()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

uint64_t *sub_4B09C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin49GetSignalActivationStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_4B0E4()
{
  v0 = sub_4B09C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy()
{
  result = qword_1E6BA0;
  if (!qword_1E6BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4B1D8(uint64_t a1)
{
  result = sub_4BE94(&qword_1E6DB0, type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_4B234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4B2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4B3C4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10A9C;

  return sub_4B484(a1);
}

uint64_t sub_4B484(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_168414();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_4BEDC, 0, 0);
}

uint64_t sub_4B544()
{
  sub_D2DC();
  v2 = sub_4BEF4(v1);
  sub_4BEE0(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4B5DC()
{
  sub_D2DC();
  v2 = sub_4BEF4(v1);
  sub_4BEE0(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_4B674()
{
  if (*(*(v0[3] + 224) + 16) == 1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v1 = v0[2];
    v2 = sub_16A584();
    sub_9DA0(v2, qword_1E65C0);
    v3 = sub_16A9A4();
    sub_386D8(v3, 2uLL, 0xD00000000000008DLL, 0x8000000000182350, 0xD000000000000025, 0x80000000001823E0, 13, 0xD000000000000049, 0x8000000000182460);
    sub_168BB4();
    sub_168BA4();
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 2uLL, 0xD00000000000008DLL, 0x8000000000182350, 0xD000000000000025, 0x80000000001823E0, 17, 0xD000000000000047, 0x8000000000182410);
    sub_168404();
    sub_1683D4();
    (*(v5 + 8))(v4, v6);
    v10 = [objc_allocWithZone(SAUIAddViews) init];
    v11 = sub_16A644();
    [v10 setAceId:v11];

    v12 = [objc_allocWithZone(SAAceView) init];
    v13 = sub_16A644();

    [v12 setRefId:v13];

    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_16D440;
    *(v14 + 32) = v12;
    sub_16484(0, &qword_1E6DB8, SAAceView_ptr);
    v15 = v12;
    isa = sub_16A7C4().super.isa;

    [v10 setViews:isa];

    [v10 setDialogPhase:SAUIDialogPhaseClarificationValue];
    [v10 setTemporary:1];
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_16D440;
    *(v17 + 32) = v10;
    v7[3] = sub_169434();
    v7[4] = &protocol witness table for AceOutput;
    sub_10888(v7);
    v18 = v10;
    sub_169424();
  }

  v19 = v0[6];

  sub_D37C();

  return v20();
}

uint64_t sub_4BA30()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4A0A8();
}

uint64_t sub_4BADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4BBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4BC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  SignalActivationStatusHandleIntentFlowStrategy = type metadata accessor for GetSignalActivationStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, SignalActivationStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_4BD34()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_44408();
}

uint64_t sub_4BE38(uint64_t a1)
{
  v2 = type metadata accessor for SignalActivationParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4BE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4BEE0(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_4BEF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_168414();
}

uint64_t sub_4BF0C(uint64_t a1, unsigned __int8 a2)
{
  v4 = v2;
  sub_D084(v4 + 5, v4[8]);
  v7 = sub_5A52C(a1, a2);
  switch(a2)
  {
    case 1u:
      v34 = v4[3];
      v35 = v4[4];
      sub_4C840();
      sub_4C818(v35);
      v37 = v36(v34, v35);
      if (v37 <= a1)
      {
        v39 = a1;
      }

      else
      {
        v39 = v37;
      }

      if (v38 <= a1)
      {
        v19 = v38;
      }

      else
      {
        v19 = v39;
      }

      goto LABEL_26;
    case 2u:
      v33 = sub_4C40C(a1);
      goto LABEL_19;
    case 3u:
      v33 = sub_4C52C(a1);
LABEL_19:
      v19 = v33;
      goto LABEL_26;
    case 4u:
      v20 = v7;
      switch(a1)
      {
        case 1:
          sub_4C7D4();
          v60 = *(v59 + 40);
          v61 = sub_4C7F8();
          v63 = v62(v61);
          v64 = v4[3];
          v65 = v4[4];
          sub_4C840();
          sub_4C818(v65);
          v67 = v66(v64, v65);
          if (v68 <= 0)
          {
            v19 = v68;
          }

          else
          {
            v19 = v67 & ~(v67 >> 63);
          }

          if (v63)
          {
            return v19;
          }

          goto LABEL_26;
        case 2:
        case 3:
        case 4:
          sub_4C824();
          v44 = *(v3 + 8);
          v45 = sub_4C808();
          v47 = v46(v45);
          sub_4C608(v20, 0, 10, v47, v48);
          goto LABEL_19;
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          sub_4C824();
          v21 = *(v3 + 8);
          v22 = sub_4C808();
          v24 = v23(v22);
          v26 = v25;
          v27 = v4[3];
          v28 = v4[4];
          sub_D084(v4, v27);
          v29 = (*(v28 + 16))(v27, v28);
          sub_4C608(v20, 0, 10, v24, v26);
          v31 = v29 + v30;
          if (__OFADD__(v29, v30))
          {
            goto LABEL_46;
          }

          if (v24 <= v31)
          {
            v32 = v29 + v30;
          }

          else
          {
            v32 = v24;
          }

          if (v31 >= v26)
          {
            v19 = v26;
          }

          else
          {
            v19 = v32;
          }

          goto LABEL_26;
        default:
          sub_4C7D4();
          v50 = *(v49 + 16);
          v51 = sub_4C7F8();
          v53 = v52(v51);
          v54 = v4[3];
          v55 = v4[4];
          sub_4C840();
          if (!v53)
          {
            v69 = (*(v55 + 8))(v54, v55);
            v71 = v70;
            sub_4C608(2, 0, 10, v69, v70);
            if (v69 <= v72)
            {
              v73 = v72;
            }

            else
            {
              v73 = v69;
            }

            if (v72 >= v71)
            {
              v19 = v71;
            }

            else
            {
              v19 = v73;
            }

            goto LABEL_26;
          }

          v19 = (*(v55 + 16))(v54, v55);
          sub_4C824();
          v56 = *(v53 + 32);
          v57 = sub_4C808();
          if ((v58(v57) & 1) == 0)
          {
            goto LABEL_26;
          }

          break;
      }

      return v19;
    default:
      v8 = v4[3];
      v9 = v4[4];
      sub_4C840();
      v10 = (*(v9 + 16))(v8, v9);
      v11 = a1 + v10;
      if (__OFADD__(a1, v10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        JUMPOUT(0x4C3C4);
      }

      sub_4C7D4();
      v13 = *(v12 + 8);
      v14 = sub_4C7F8();
      v16 = v15(v14);
      if (v16 <= v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = v16;
      }

      if (v11 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

LABEL_26:
      sub_16ACF4(16);
      v74._countAndFlagsBits = 0x20676E6974746553;
      v74._object = 0xE800000000000000;
      sub_16A744(v74);
      sub_16AD84();
      v75._countAndFlagsBits = 544175136;
      v75._object = 0xE400000000000000;
      sub_16A744(v75);
      v76._countAndFlagsBits = sub_16AE24();
      sub_16A744(v76);

      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v40 = sub_16A584();
      v41 = sub_9DA0(v40, qword_1E65C0);
      v42 = sub_16A9A4();
      sub_386D8(v42, 0x400000uLL, 0xD00000000000007ELL, 0x80000000001825C0, 0x2865747563657865, 0xEB00000000293A5FLL, 49, 0, 0xE000000000000000);

      sub_4C824();
      (*(v41 + 24))(v19, 0xE000000000000000, v41);
      return v19;
  }
}

uint64_t sub_4C40C(uint64_t a1)
{
  v3 = v1[4];
  sub_D084(v1, v1[3]);
  v4 = *(v3 + 8);
  v5 = sub_4C808();
  v7 = v6(v5);
  v8 = v1[3];
  v9 = v1[4];
  sub_D084(v1, v8);
  sub_4C818(v9);
  v10(v8, v9);
  v12 = v11;
  v13 = v1[3];
  v14 = v1[4];
  sub_D084(v1, v13);
  sub_4C818(v14);
  result = v15(v13, v14);
  if (__OFSUB__(v12, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_4C6D4((a1 / 100.0) * (v12 - result));
  v17 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_4C7D4();
  v19 = *(v18 + 8);
  v20 = sub_4C7F8();
  v22 = v21(v20);
  if (v22 <= v17)
  {
    v24 = v17;
  }

  else
  {
    v24 = v22;
  }

  if (v17 >= v23)
  {
    return v23;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_4C52C(uint64_t a1)
{
  v3 = a1 / 100.0;
  v4 = v1[4];
  sub_D084(v1, v1[3]);
  v5 = *(v4 + 16);
  v6 = sub_4C808();
  v8 = v7(v6);
  v9 = sub_4C6D4(v3 * v8);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = (a1 >> 63) | 1;
  }

  sub_4C7D4();
  v12 = *(v11 + 16);
  v13 = sub_4C7F8();
  result = v14(v13);
  v16 = __OFADD__(result, v10);
  v17 = result + v10;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_4C7D4();
    v19 = *(v18 + 8);
    v20 = sub_4C7F8();
    v22 = v21(v20);
    if (v22 <= v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = v22;
    }

    if (v17 >= v23)
    {
      return v23;
    }

    else
    {
      return v24;
    }
  }

  return result;
}

void sub_4C608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (((a1 - a2) / (a3 - a2)) * (a5 - a4)) + a4;
  if (v5 < 0.0)
  {
    v5 = floorf(v5);
    if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (v5 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v5 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v6 = ceilf(v5);
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_4C6D4(float a1)
{
  v1 = roundf((a1 / 10.0) * 10.0);
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.2234e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_4C730(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4C770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_4C824()
{
  v2 = v0[4];
  v3 = v0[3];

  return sub_D084(v0, v3);
}

void *sub_4C840()
{

  return sub_D084(v0, v1);
}

uint64_t sub_4C858()
{
  v1 = sub_168F64();
  v2 = sub_9F48(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow;
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow))
  {
    v10 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow);
  }

  else
  {
    sub_5758(&qword_1E6F80, &qword_16EE38);
    v11 = *(sub_1687C4() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_16D9A0;
    (*(v4 + 16))(v8, v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy, v1);
    sub_1687B4();
    (*(v4 + 8))(v8, v1);
    v10 = sub_168484();

    v14 = *(v0 + v9);
    *(v0 + v9) = v10;
  }

  return v10;
}

uint64_t sub_4CA24(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input;
  v10 = sub_1693A4();
  sub_5370(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow) = 0;
  *(v4 + 16) = a1;
  sub_D124(a2, v4 + 24);
  sub_D124(a3, v4 + 64);
  v11 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy;
  v12 = sub_168F64();
  sub_10AFC(v12);
  (*(v13 + 32))(v4 + v11, a4);
  return v4;
}

uint64_t sub_4CAEC(uint64_t a1)
{
  v3 = sub_5758(&qword_1E6F70, &qword_16EE30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_1693A4();
  sub_10AFC(v7);
  (*(v8 + 16))(v6, a1, v7);
  sub_5370(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input;
  swift_beginAccess();
  sub_4DBA0(v6, v1 + v9);
  swift_endAccess();
  return 1;
}

uint64_t sub_4CBE8()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 2uLL, 0xD00000000000007FLL, 0x80000000001826D0, 0xD000000000000014, 0x8000000000182830, 37, 0xD000000000000025, 0x8000000000182850);
  type metadata accessor for CommonCheckLockScreenFlow();
  sub_4DB48();
  return sub_168934();
}

uint64_t sub_4CCF4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_168F64();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_4CDB4, 0, 0);
}

uint64_t sub_4CDB4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_10824(v4 + 24, (v0 + 2));
  v5 = v0[6];
  sub_D084(v0 + 2, v0[5]);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy, v3);
  v6 = sub_168AE4();
  (*(v2 + 8))(v1, v3);
  sub_D13C(v0 + 2);
  v7 = v0[7];
  v8 = v0[8];
  if (v6)
  {
    sub_4CEC4();
  }

  else
  {
    sub_4D1D0();
  }

  v9 = v0[11];

  v10 = v0[1];

  return v10();
}

uint64_t sub_4CEC4()
{
  v1 = v0;
  v2 = sub_5758(&qword_1E6F70, &qword_16EE30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1693A4();
  v7 = sub_9F48(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input;
  swift_beginAccess();
  sub_4DA70(v1 + v14, v5);
  if (sub_9E2C(v5, 1, v6) == 1)
  {
    sub_4DAE0(v5);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    sub_386D8(v16, 2uLL, 0xD00000000000007FLL, 0x80000000001826D0, 0xD000000000000011, 0x80000000001827C0, 51, 0xD00000000000001CLL, 0x80000000001827E0);
    return sub_168D54();
  }

  else
  {
    (*(v9 + 32))(v13, v5, v6);
    v18 = *(v1 + 16);

    v19 = sub_168794();

    if (v19)
    {
      v20 = *(v1 + 16);

      sub_168D44();
    }

    else
    {
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v21 = sub_16A584();
      sub_9DA0(v21, qword_1E65C0);
      v22 = sub_16A9A4();
      sub_386D8(v22, 2uLL, 0xD00000000000007FLL, 0x80000000001826D0, 0xD000000000000011, 0x80000000001827C0, 56, 0xD00000000000002ALL, 0x8000000000182800);
      sub_168D54();
    }

    return (*(v9 + 8))(v13, v6);
  }
}

uint64_t sub_4D1D0()
{
  sub_4C858();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_4DA00;
  *(v1 + 24) = v0;
  sub_1687A4();

  sub_168D34();
}

void sub_4D2B0(char a1)
{
  if (a1)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    sub_16A9A4();
    sub_4DC10();
    v9 = 70;
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_4DC10();
    v9 = 72;
  }

  sub_386D8(v2, v3, v4, v5, v6, v7, v9, v8, v11);
}

void *sub_4D3B8()
{
  v1 = v0[2];

  sub_D13C(v0 + 3);
  sub_D13C(v0 + 8);
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_unlockDevicePolicy;
  v3 = sub_168F64();
  sub_10AFC(v3);
  (*(v4 + 8))(v0 + v2);
  sub_4DAE0(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow_input);
  v5 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin25CommonCheckLockScreenFlow____lazy_storage___unlockFlow);

  return v0;
}

uint64_t sub_4D448()
{
  sub_4D3B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CommonCheckLockScreenFlow()
{
  result = qword_1E6DF8;
  if (!qword_1E6DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4D4F4()
{
  v0 = sub_168F64();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_4D5E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_4D5E4()
{
  if (!qword_1E6E08)
  {
    sub_1693A4();
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1E6E08);
    }
  }
}

uint64_t sub_4D63C(uint64_t a1)
{
  v2 = *v1;
  sub_4CAEC(a1);
  return 1;
}

uint64_t sub_4D664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4D714;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4D714(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_4D834(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4D8D0;

  return sub_4CCF4(a1);
}

uint64_t sub_4D8D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4D9C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CommonCheckLockScreenFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_4DA0C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4DA44(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_4DA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6F70, &qword_16EE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4DAE0(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6F70, &qword_16EE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4DB48()
{
  result = qword_1E6F78;
  if (!qword_1E6F78)
  {
    type metadata accessor for CommonCheckLockScreenFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E6F78);
  }

  return result;
}

uint64_t sub_4DBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6F70, &qword_16EE30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_4DC30(char a1, uint64_t a2)
{
  *(v2 + 128) = a2;
  *(v2 + 200) = a1;
  return _swift_task_switch(sub_4DC54, 0, 0);
}

uint64_t sub_4DC54()
{
  sub_10824(*(v0 + 128), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_4DCF8;
  v2 = *(v0 + 200);

  return sub_13D110(v2, v0 + 16);
}

uint64_t sub_4DCF8()
{
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v5;
  v2[15] = v0;
  v7 = *(v6 + 136);
  v8 = *v1;
  sub_D2A4();
  *v9 = v8;
  v2[18] = v10;
  v2[19] = v0;

  sub_4E194((v2 + 2));
  if (v0)
  {
    v11 = sub_4E184;
  }

  else
  {
    v11 = sub_4DE14;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_4DE14()
{
  sub_10824(*(v0 + 128), v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_4DEB8;
  v2 = *(v0 + 200);

  return sub_13D398(v2, v0 + 56);
}

uint64_t sub_4DEB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_D2A4();
  *v7 = v6;
  v9 = *(v8 + 160);
  v10 = *v3;
  sub_D2A4();
  *v11 = v10;
  v6[21] = v2;

  if (v2)
  {
    v12 = v6[18];
    sub_4E194((v6 + 7));

    v13 = sub_4E18C;
  }

  else
  {
    v14 = v6[13];
    v6[22] = a2;
    v6[23] = a1;
    v6[24] = v14;
    sub_4E194((v6 + 7));
    v13 = sub_4E008;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_4E008()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  sub_16484(0, &qword_1EA2C0, SAUIConfirmationOption_ptr);
  v5 = sub_16A664();
  v7 = sub_B7618(v2, v3, v5, v6);
  v8 = sub_16A664();
  v10 = sub_B7618(v1, v4, v8, v9);
  sub_16484(0, &qword_1E6F88, SAUIConfirmationView_ptr);
  v11 = v7;
  v12 = v10;
  v13 = sub_B7704(v11, v12);
  [v13 setCanUseServerTTS:0];
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_16D440;
  *(v14 + 32) = v13;

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_4E194(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6030, &unk_173620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CarCommandsGetLockStatusCATsSimple()
{
  result = qword_1E6F90;
  if (!qword_1E6F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4E288(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  v5 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_4E338, 0, 0);
}

uint64_t sub_4E338()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_16EE50;
  *(v3 + 32) = 0x656D614E726163;
  *(v3 + 40) = 0xE700000000000000;
  sub_4EA90(v2, v1, &qword_1E6300, &qword_16ECE0);
  v4 = sub_16A0C4();
  v5 = sub_9E2C(v1, 1, v4);
  v6 = *(v0 + 48);
  if (v5 == 1)
  {
    sub_4EAF4(*(v0 + 48), &qword_1E6300, &qword_16ECE0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    sub_10888((v3 + 48));
    sub_4EB50(v4);
    (*(v7 + 32))();
  }

  v8 = *(v0 + 40);
  v9 = *(v0 + 24);
  v10 = *(v0 + 80);
  *(v3 + 80) = 0x64656B636F6CLL;
  *(v3 + 88) = 0xE600000000000000;
  *(v3 + 96) = v10;
  *(v3 + 120) = &type metadata for Bool;
  strcpy((v3 + 128), "appIdentifer");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  sub_4EA90(v9, v8, &qword_1E6300, &qword_16ECE0);
  v11 = sub_9E2C(v8, 1, v4);
  v12 = *(v0 + 40);
  if (v11 == 1)
  {
    sub_4EAF4(*(v0 + 40), &qword_1E6300, &qword_16ECE0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    sub_10888((v3 + 144));
    sub_4EB50(v4);
    (*(v13 + 32))();
  }

  v14 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v18 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_4E5D8;
  v16 = *(v0 + 32);

  return v18(0xD00000000000002ELL, 0x80000000001828D0, v3);
}

uint64_t sub_4E5D8(uint64_t a1)
{
  v4 = *(*v2 + 64);
  v5 = *v2;
  v5[9] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_4E740, 0, 0);
  }

  else
  {
    v7 = v5[6];
    v6 = v5[7];
    v8 = v5[5];

    v9 = v5[1];

    return v9(a1);
  }
}

uint64_t sub_4E740()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_4E7B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_4E80C(a1, a2);
}

uint64_t sub_4E80C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_4EA90(a1, &v18 - v15, &qword_1E5B48, &unk_16DDB0);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_4EAF4(a1, &qword_1E5B48, &unk_16DDB0);
  return v16;
}

uint64_t sub_4E988(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_4EA90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5758(a3, a4);
  sub_4EB50(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_4EAF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5758(a2, a3);
  sub_4EB50(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_4EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v9 = sub_4FB90(a1, a2, a3, a4, a5, a6);
  v8[15] = v9;
  sub_10AEC(v9);
  v8[16] = v10;
  v12 = *(v11 + 64);
  v8[17] = sub_D3C8();
  v13 = sub_16A2A4();
  v8[18] = v13;
  sub_10AEC(v13);
  v8[19] = v14;
  v16 = *(v15 + 64);
  v8[20] = sub_D3C8();
  v17 = sub_D388();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_4EC80()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  v24 = v0[17];
  v25 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  sub_16A294();
  v10 = v4[3];
  v11 = v4[4];
  sub_D084(v4, v10);
  v12 = sub_16A284();
  v0[5] = v12;
  v0[6] = sub_4FB1C();
  v13 = sub_10888(v0 + 2);
  (*(v1 + 16))(v13, v2, v3);
  (*(*(v12 - 8) + 104))(v13, enum case for CarCommandsSnippetsPluginModel.appPunchout(_:), v12);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v14 = swift_allocObject();
  v0[21] = v14;
  *(v14 + 16) = xmmword_16D440;
  *(v14 + 32) = v6;
  v15 = v6;
  sub_4F068();
  v16 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v17 = swift_task_alloc();
  v0[22] = v17;
  *v17 = v0;
  v17[1] = sub_4EE70;
  v18 = v0[17];
  v19 = sub_4FB7C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v19, v20, v21, v22, v10, v11);
}

uint64_t sub_4EE70()
{
  sub_D3A4();
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 120);
  v11 = *v0;
  sub_D254();
  *v6 = v11;

  (*(v4 + 8))(v3, v5);
  sub_D13C((v11 + 16));
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_4EFE0()
{
  v1 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_4F068()
{
  v0 = sub_168B74();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_168B34();
  return sub_169164();
}

uint64_t sub_4F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v25;
  v9[16] = v8;
  v9[13] = a7;
  v9[14] = a8;
  v10 = sub_4FB90(a1, a2, a3, a4, a5, a6);
  v9[17] = v10;
  sub_10AEC(v10);
  v9[18] = v11;
  v13 = *(v12 + 64);
  v9[19] = sub_D3C8();
  v14 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v15 = *(*(sub_16A164() - 8) + 64);
  v9[22] = sub_D3C8();
  v16 = sub_16A2A4();
  v9[23] = v16;
  sub_10AEC(v16);
  v9[24] = v17;
  v19 = *(v18 + 64);
  v9[25] = sub_D3C8();
  v20 = sub_D388();

  return _swift_task_switch(v20, v21, v22);
}

uint64_t sub_4F278()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
  v16 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[12];

  sub_16A294();
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[26] = sub_16A0F4();
  sub_16A6E4();
  v11 = sub_16A0C4();
  sub_5370(v3, 0, 1, v11);
  sub_16A6E4();
  sub_5370(v4, 0, 1, v11);
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = sub_4F408;
  v13 = v0[20];
  v14 = v0[21];

  return sub_DFC94();
}

uint64_t sub_4F408()
{
  sub_D3A4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  v7 = v4[27];
  v8 = v4[26];
  *v6 = *v1;
  v5[28] = v0;

  v9 = v4[21];
  v10 = v4[20];
  if (v0)
  {
    sub_4FAB4(v10);
    sub_4FAB4(v9);
    v11 = sub_4F97C;
  }

  else
  {
    v5[29] = v3;
    sub_4FAB4(v10);
    sub_4FAB4(v9);
    v11 = sub_4F584;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_4F584()
{
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v6[3];
  v21 = v6[4];
  sub_D084(v6, v8);
  v9 = sub_16A284();
  v0[5] = v9;
  v0[6] = sub_4FB1C();
  v10 = sub_10888(v0 + 2);
  (*(v2 + 16))(v10, v3, v4);
  (*(*(v9 - 8) + 104))(v10, enum case for CarCommandsSnippetsPluginModel.appPunchout(_:), v9);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v11 = swift_allocObject();
  v0[30] = v11;
  *(v11 + 16) = xmmword_16D440;
  *(v11 + 32) = v1;
  v12 = v1;
  sub_4F068();
  v13 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_4F740;
  v15 = v0[19];
  v16 = sub_4FB7C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v17, v18, v19, v8, v21);
}

uint64_t sub_4F740()
{
  sub_D3A4();
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);
  v5 = *(*v0 + 136);
  v11 = *v0;
  sub_D254();
  *v6 = v11;

  (*(v4 + 8))(v3, v5);
  sub_D13C((v11 + 16));
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_4F8B0()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_4F97C()
{
  sub_D3A4();
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_4FA30()
{

  sub_169194();

  sub_169184();
  return sub_1691D4();
}

uint64_t sub_4FAB4(uint64_t a1)
{
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_4FB1C()
{
  result = qword_1E7118;
  if (!qword_1E7118)
  {
    sub_16A284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E7118);
  }

  return result;
}

uint64_t sub_4FB74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_4FA30();
}

uint64_t sub_4FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;

  return sub_1691E4();
}

uint64_t sub_4FBB0()
{
  sub_D2DC();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_4FC3C, 0, 0);
}

uint64_t sub_4FC3C()
{
  sub_D2DC();
  v1 = v0[9];
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v0[10] = sub_16A094();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_4FD00;

  return sub_156570(12, _swiftEmptyArrayStorage);
}

uint64_t sub_4FD00()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  v2[12] = v6;
  v2[13] = v0;

  if (v0)
  {
    v7 = sub_4FFD4;
  }

  else
  {
    v8 = v2[10];

    v7 = sub_4FE14;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_4FE14()
{
  sub_D2DC();
  sub_10824(v0[8] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator, (v0 + 2));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_4FEC4;
  v2 = v0[12];
  v3 = v0[7];

  return sub_11A570();
}

uint64_t sub_4FEC4()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v2 + 120) = v0;

  sub_D13C((v2 + 16));
  if (v0)
  {
    v8 = sub_500A0;
  }

  else
  {
    v8 = sub_50038;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_4FFD4()
{
  sub_D2DC();
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[9];

  sub_D37C();

  return v4();
}

uint64_t sub_50038()
{
  sub_D2DC();
  v1 = *(v0 + 72);

  sub_D37C();

  return v2();
}

uint64_t sub_500A0()
{
  sub_D2DC();

  v1 = *(v0 + 120);
  v2 = *(v0 + 72);

  sub_D37C();

  return v3();
}

uint64_t sub_50104(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_featureFlagHelper);
  v7 = type metadata accessor for FeatureFlagHelper();
  v8 = swift_allocObject();
  v6[3] = v7;
  v6[4] = &off_1D9AF0;
  *v6 = v8;
  v9 = (v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator);
  v10 = sub_168E34();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_168E24();
  v9[3] = v10;
  v9[4] = &protocol witness table for ResponseFactory;
  *v9 = v13;

  return sub_74260(a1, a2);
}

uint64_t sub_501C4()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_featureFlagHelper));
  v1 = (v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator);

  return sub_D13C(v1);
}

uint64_t sub_50204()
{
  v0 = sub_735DC();
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_featureFlagHelper;

  sub_D13C((v2 + v1));
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin23CommonMisunderstoodFlow_responseGenerator));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CommonMisunderstoodFlow()
{
  result = qword_1E7148;
  if (!qword_1E7148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5032C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C8;

  return sub_4FBB0();
}

uint64_t sub_503C8()
{
  sub_D2DC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_D2A4();
  *v3 = v2;

  sub_D37C();

  return v4();
}

uint64_t sub_504E4()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 249) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 248) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  v9 = *(*(sub_5758(&qword_1E5F78, &unk_16D400) - 8) + 64);
  *(v1 + 144) = sub_D3C8();
  v10 = sub_1691E4();
  *(v1 + 152) = v10;
  v11 = *(v10 - 8);
  *(v1 + 160) = v11;
  v12 = *(v11 + 64);
  *(v1 + 168) = sub_D3C8();
  v13 = sub_16A284();
  *(v1 + 176) = v13;
  v14 = *(v13 - 8);
  *(v1 + 184) = v14;
  v15 = *(v14 + 64);
  *(v1 + 192) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_50628()
{
  v1 = *(v0 + 248);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v16 = swift_task_alloc();
    *(v0 + 200) = v16;
    *v16 = v0;
    v16[1] = sub_50930;
    v17 = *(v0 + 136);
    v18 = *(v0 + 249);
    v19 = *(v0 + 112);
    v20 = *(v0 + 120);
    v21 = *(v0 + 104);
    v22 = *(v0 + 248);

    return sub_51044(v22, v21, v19, v20, v18);
  }

  else
  {
    sub_16ACF4(24);

    sub_5244C();
    v24 = v2;
    v25 = v3;
    v4 = qword_1E7340;
    v5 = off_1E7348;

    v27._countAndFlagsBits = v4;
    v27._object = v5;
    sub_16A744(v27);

    v28._countAndFlagsBits = 0x6873657266657220;
    v28._object = 0xEF74757074754F20;
    sub_16A744(v28);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = *(v0 + 128);
    v7 = *(v0 + 249);
    v8 = *(v0 + 96);
    v9 = sub_16A584();
    sub_9DA0(v9, qword_1E65C0);
    v10 = sub_16A9A4();
    sub_386D8(v10, 2uLL, 0xD000000000000092, 0x8000000000182AA0, 0xD00000000000004CLL, 0x8000000000182B90, 30, v24, v25);

    v11 = v6[4];
    sub_D084(v6, v6[3]);
    *(v0 + 80) = sub_16A2E4();
    *(v0 + 88) = sub_52248(&qword_1E7408, &type metadata accessor for CarCommandsToggleSnippetUpdateValue);
    sub_10888((v0 + 56));

    sub_16A2D4();
    sub_168F04();

    sub_D13C((v0 + 56));
    v12 = *(v0 + 192);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);

    sub_D37C();

    return v15();
  }
}

uint64_t sub_50930()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 208) = v8;

  if (v0)
  {
    v9 = *(v3 + 192);
    v10 = *(v3 + 168);
    v11 = *(v3 + 144);

    v12 = *(v7 + 8);

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    *(v3 + 216) = v14;
    *v14 = v7;
    v14[1] = sub_50AC8;
    v15 = *(v3 + 192);
    v16 = *(v3 + 136);
    v17 = *(v3 + 249);
    v18 = *(v3 + 112);
    v19 = *(v3 + 120);
    v20 = *(v3 + 104);

    return sub_517FC(v15, v20, v18, v19, v17);
  }
}

uint64_t sub_50AC8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_50BC4()
{
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  v9 = v8[3];
  v19 = v8[4];
  sub_D084(v8, v9);
  v0[5] = v5;
  v0[6] = sub_52248(&qword_1E7118, &type metadata accessor for CarCommandsSnippetsPluginModel);
  v10 = sub_10888(v0 + 2);
  (*(v3 + 16))(v10, v2, v5);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v11 = swift_allocObject();
  v0[29] = v11;
  *(v11 + 16) = xmmword_16D440;
  *(v11 + 32) = v1;
  v12 = sub_168E14();
  sub_5370(v7, 1, 1, v12);
  v13 = v1;

  sub_67D38();

  sub_D188(v7, &qword_1E5F78, &unk_16D400);
  v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_50DB8;
  v16 = v0[21];
  v17 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v17, v0 + 2, v11, v16, v9, v19);
}

uint64_t sub_50DB8()
{
  sub_10BC0();
  sub_D3A4();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[30];
  v6 = v4[29];
  v7 = v4[21];
  v8 = v4[20];
  v9 = v4[19];
  v10 = *v0;
  sub_D254();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_D13C((v2 + 16));
  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_50F1C()
{
  sub_1696C();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);

  sub_D37C();

  return v7();
}

uint64_t sub_50FC0()
{
  sub_1696C();

  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  sub_D37C();

  return v5();
}

uint64_t sub_51044(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 169) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 64) = a2;
  *(v5 + 168) = a1;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v7 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_51130, 0, 0);
}

uint64_t sub_51130()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  if (*(v0 + 168) == 2)
  {
    type metadata accessor for CarCommandsGetTrunkStatusCATsSimple();
    sub_16A154();
    *(v0 + 120) = sub_52464();
    if (v1)
    {
      v3 = *(v0 + 104);
      v4 = *(v0 + 80);
      sub_99C94();
    }

    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = sub_16A0C4();
    v12 = sub_5243C();
    sub_5370(v12, v13, v14, v11);
    sub_16A6E4();
    sub_5370(v8, 0, 1, v11);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = sub_51338;
    v16 = *(v0 + 96);
    v17 = *(v0 + 169);
    v18 = sub_5242C(*(v0 + 104));

    return sub_128E14(v18, v19, v20);
  }

  else
  {
    type metadata accessor for CarCommandsSetTrunkStatusCATsSimple();
    sub_16A154();
    *(v0 + 144) = sub_52464();
    if (v1)
    {
      v6 = *(v0 + 80);
      v5 = *(v0 + 88);
      sub_99C94();
    }

    v22 = *(v0 + 88);
    sub_16A0C4();
    v23 = sub_5243C();
    sub_5370(v23, v24, v25, v26);
    v27 = swift_task_alloc();
    *(v0 + 152) = v27;
    *v27 = v0;
    v27[1] = sub_51528;
    v28 = *(v0 + 169);
    sub_5242C(*(v0 + 88));

    return sub_C33EC();
  }
}

uint64_t sub_51338()
{
  sub_10BC0();
  sub_D3A4();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = v5[16];
  v7 = v5[13];
  v8 = v5[12];
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  *(v11 + 136) = v0;

  sub_D188(v8, &qword_1E6300, &qword_16ECE0);
  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();
  sub_10BD4();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_5149C()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[3];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  sub_302B8();
  sub_10BD4();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_51528()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 152);
  v7 = *(v5 + 88);
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v10 + 160) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_51658()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[6];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  sub_302B8();
  sub_10BD4();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_516E4()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  sub_D37C();
  sub_10BD4();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_51770()
{
  sub_10BC0();
  sub_D3A4();
  v1 = v0[20];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];

  sub_D37C();
  sub_10BD4();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_517FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 100) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_518CC, 0, 0);
}

uint64_t sub_518CC()
{
  sub_1696C();
  v1 = v0[7];
  v2 = v0[5];
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[8] = sub_52464();
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    sub_99C94();
  }

  v5 = v0[6];
  sub_16A0C4();
  v6 = sub_5243C();
  sub_5370(v6, v7, v8, v9);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_519B8;
  sub_5242C(v0[6]);

  return sub_DE7E8();
}

uint64_t sub_519B8()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[6];
  v8 = *v1;
  sub_D254();
  *v9 = v8;
  *(v11 + 80) = v10;
  *(v11 + 88) = v0;

  sub_D188(v7, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_51B08()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  *(v0 + 96) = 0;
  sub_16A134();
  *(v0 + 97) = 2;
  sub_16A134();
  *(v0 + 98) = 1;
  sub_16A134();
  *(v0 + 99) = 3;
  sub_16A134();
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);

    v5 = [v4 spokenPhrase];
    sub_16A664();

    v6 = *(v0 + 32);
  }

  else
  {
    v7 = *(v0 + 32);
  }

  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 16);
  v17 = *(v0 + 24);
  v16 = (*(v0 + 100) & 1) == 0;
  sub_16A264();

  v12 = enum case for CarCommandsSnippetsPluginModel.trunkStatusModel(_:);
  v13 = sub_16A284();
  (*(*(v13 - 8) + 104))(v11, v12, v13);

  sub_D37C();

  return v14();
}

uint64_t sub_51CD4()
{
  sub_D2DC();
  v2 = v0[6];
  v1 = v0[7];

  sub_D37C();
  v4 = v0[11];

  return v3();
}

uint64_t sub_51D38()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  v3 = *(*(sub_16A164() - 8) + 64);
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_51DB8()
{
  sub_16ACF4(31);

  sub_5244C();
  v10 = v1;
  v11 = v2;
  v3 = qword_1E7340;
  v4 = off_1E7348;

  v13._countAndFlagsBits = v3;
  v13._object = v4;
  sub_16A744(v13);

  v14._object = 0x8000000000182B70;
  v14._countAndFlagsBits = 0xD000000000000016;
  sub_16A744(v14);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = v0[9];
  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  v7 = sub_16A9A4();
  sub_386D8(v7, 2uLL, 0xD000000000000092, 0x8000000000182AA0, 0xD00000000000002BLL, 0x8000000000182B40, 56, v10, v11);

  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  v0[10] = sub_16A0F4();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_51F88;

  return sub_DDC04();
}

uint64_t sub_51F88()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (!v0)
  {
    v8 = v3[10];
  }

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_52094()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v3[4];
  sub_D084(v3, v3[3]);

  sub_16A134();
  v0[5] = sub_16A354();
  v0[6] = sub_52248(&qword_1E7400, &type metadata accessor for CarCommandsToggleSnippetUpdateFailure);
  sub_10888(v0 + 2);
  sub_16A344();
  sub_168F04();
  v6 = v0[12];
  if (v2)
  {

    sub_D13C(v0 + 2);
    v7 = v0[9];
  }

  else
  {
    v9 = v0[9];

    sub_D13C(v0 + 2);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_52248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TrunkStatusSnippetFactory.TrunkStatusParameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TrunkStatusSnippetFactory.TrunkStatusParameters(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x523F4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_52464()
{

  return sub_16A0F4();
}

uint64_t sub_52480()
{
  sub_D2DC();
  v1[63] = v2;
  v1[64] = v0;
  v1[62] = v3;
  v4 = sub_168454();
  v1[65] = v4;
  v5 = *(v4 - 8);
  v1[66] = v5;
  v6 = *(v5 + 64);
  v1[67] = sub_D3C8();
  v7 = sub_5758(&qword_1E7630, &qword_173610);
  v1[68] = v7;
  v8 = *(v7 - 8);
  v1[69] = v8;
  v9 = *(v8 + 64);
  v1[70] = sub_D3C8();
  v10 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v10);
  v12 = *(v11 + 64) + 15;
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  PowerLevelHandleIntentParemeters = type metadata accessor for GetPowerLevelHandleIntentParemeters(0);
  v1[73] = PowerLevelHandleIntentParemeters;
  sub_D414(PowerLevelHandleIntentParemeters);
  v15 = *(v14 + 64);
  v1[74] = sub_D3C8();
  v16 = type metadata accessor for CarCommandsError();
  v1[75] = v16;
  sub_D414(v16);
  v18 = *(v17 + 64);
  v1[76] = sub_D3C8();
  v19 = sub_5758(&qword_1E7638, &qword_16F148);
  sub_D414(v19);
  v21 = *(v20 + 64) + 15;
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v22, v23, v24);
}

uint64_t sub_52668()
{
  v123 = v0;
  v1 = *(v0 + 504);
  sub_10824(*(v0 + 512) + 16, v0 + 64);
  v2 = sub_D084((v0 + 64), *(v0 + 88));
  sub_5758(&qword_1E7640, &unk_16F150);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C((v0 + 64));
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  *(v0 + 440) = 0xD000000000000096;
  *(v0 + 448) = 0x8000000000182C30;
  *(v0 + 456) = 47;
  *(v0 + 464) = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  v7 = sub_15AE4(v6);
  v9 = v8;

  if (v9)
  {
    v124._countAndFlagsBits = 32;
    v124._object = 0xE100000000000000;
    sub_16A744(v124);
    v125._countAndFlagsBits = 0xD000000000000025;
    v125._object = 0x8000000000182560;
    sub_16A744(v125);
    v10 = v7;
    v11 = v9;
  }

  else
  {
    v10 = 0xD000000000000025;
    v11 = 0x8000000000182560;
  }

  v120 = v10;
  v121 = v11;
  v122._countAndFlagsBits = 58;
  v122._object = 0xE100000000000000;
  *(v0 + 472) = 22;
  v126._countAndFlagsBits = sub_16AE24();
  sub_16A744(v126);

  sub_16A744(v122);

  v12._countAndFlagsBits = sub_378D0(0x12uLL);
  if (v12._object)
  {
    v122._countAndFlagsBits = 32;
    v122._object = 0xE100000000000000;
    sub_16A744(v12);

    v127._countAndFlagsBits = 32;
    v127._object = 0xE100000000000000;
    sub_16A744(v127);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v5))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v122._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v120, v121, &v122._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v5, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v17 = *(v0 + 504);
  v18 = sub_1690A4();
  *(v0 + 640) = v18;
  v19 = sub_169084();
  *(v0 + 648) = v19;
  v113 = sub_169094();
  *(v0 + 656) = v113;
  v112 = v18;
  v114 = v19;
  if (sub_16AA74() == 2)
  {
    v20 = [v19 distanceRemaining];
    v21 = v19;
    v22 = *(v0 + 632);
    v23 = *(v0 + 544);
    if (v20)
    {
      v24 = v20;
      sub_549EC();
      sub_1682E4();

      sub_5370(v22, 0, 1, v23);
      sub_109A0(v22, &qword_1E7638, &qword_16F148);
      v19 = v21;
    }

    else
    {
      sub_5370(*(v0 + 632), 1, 1, *(v0 + 544));
      sub_109A0(v22, &qword_1E7638, &qword_16F148);
      if ((sub_16AA64() & 0x100000000) != 0 && (sub_16AA54() & 0x100000000) != 0)
      {
        v91 = *(v0 + 608);
        v92 = *(v0 + 600);
        v122._countAndFlagsBits = 0;
        v122._object = 0xE000000000000000;
        sub_16ACF4(48);

        sub_54B5C();
        v122._countAndFlagsBits = v94 - 7;
        v122._object = v93;
        *(v0 + 480) = v113;
        sub_16A1C4();
        sub_54888(qword_1E5FA8, &type metadata accessor for App);
        v128._countAndFlagsBits = sub_16AE24();
        sub_16A744(v128);

        v129._countAndFlagsBits = 0x206F6E2073616820;
        v129._object = 0xEE00203A61746164;
        sub_16A744(v129);
        v95 = [v19 description];
        v96 = sub_16A664();
        v98 = v97;

        v130._countAndFlagsBits = v96;
        v130._object = v98;
        sub_16A744(v130);

        object = v122._object;
        *v91 = v122._countAndFlagsBits;
        v91[1] = object;
        swift_storeEnumTagMultiPayload();
        sub_54AF0();
        sub_54888(v100, v101);
        sub_54B8C();
        sub_548D0(v91, v102);
        v103 = sub_16A9A4();
        swift_getErrorValue();
        v105 = *(v0 + 344);
        v104 = *(v0 + 352);
        v106 = *(v0 + 360);
        v107 = sub_16AEB4();
        sub_386D8(v103, 0x10uLL, 0xD000000000000096, 0x8000000000182C30, 0xD000000000000025, 0x8000000000182560, 30, v107, v108);

        sub_54B8C();
        sub_548D0(v91, v109);
        swift_willThrow();

        v90 = type metadata accessor for CarCommandsError;
        v89 = v91;
        goto LABEL_46;
      }
    }
  }

  v25 = [v18 carName];
  if (v25)
  {
    v26 = v25;
    v27 = *(v0 + 576);
    sub_99C94();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = *(v0 + 576);
  v30 = sub_16A0C4();
  v31 = 1;
  sub_5370(v29, v28, 1, v30);
  v32 = [v19 distanceRemaining];
  if (v32)
  {
    v33 = v32;
    v34 = *(v0 + 616);
    sub_549EC();
    sub_1682E4();

    v31 = 0;
  }

  v35 = *(v0 + 624);
  v36 = *(v0 + 616);
  v37 = *(v0 + 544);
  sub_5370(v36, v31, 1, v37);
  sub_54934(v36, v35, &qword_1E7638, &qword_16F148);
  v38 = sub_9E2C(v35, 1, v37);
  v39 = *(v0 + 624);
  if (v38)
  {
    sub_109A0(*(v0 + 624), &qword_1E7638, &qword_16F148);
    v40 = 0;
  }

  else
  {
    v41 = *(v0 + 560);
    v118 = v30;
    v42 = *(v0 + 552);
    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    v46 = *(v0 + 520);
    v47 = *(v0 + 512);
    (*(v42 + 16))(v41, v39, v43);
    sub_109A0(v39, &qword_1E7638, &qword_16F148);
    sub_10824(v47 + 96, v0 + 264);
    v48 = *(v0 + 296);
    sub_D084((v0 + 264), *(v0 + 288));
    sub_168AD4();
    *(v0 + 336) = 0;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    v40 = sub_53C0C(v44, v0 + 304);
    sub_109A0(v0 + 304, &qword_1E6030, &unk_173620);
    (*(v45 + 8))(v44, v46);
    (*(v42 + 8))(v41, v43);
    v30 = v118;
    sub_D13C((v0 + 264));
  }

  *(v0 + 664) = v40;
  if ((sub_16AA54() & 0x100000000) != 0)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_15DA34();
  }

  v117 = v49;
  *(v0 + 672) = v49;
  if ((sub_16AA64() & 0x100000000) != 0)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_15DA34();
  }

  v116 = v50;
  *(v0 + 680) = v50;
  v115 = sub_16AA74();
  v51 = sub_16AA44();
  v119 = v40;
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_7706C(v51);
  }

  *(v0 + 688) = v53;
  v55 = *(v0 + 504);
  v54 = *(v0 + 512);
  sub_16A124();
  sub_10824(v54 + 96, v0 + 104);
  v56 = sub_16A114();
  *(v0 + 696) = v56;
  sub_169094();
  sub_16A1B4();
  v58 = v57;

  if (v58)
  {
    v59 = *(v0 + 568);
    sub_16A6E4();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = *(v0 + 592);
  v62 = *(v0 + 584);
  v63 = *(v0 + 576);
  v64 = *(v0 + 568);
  v65 = *(v0 + 512);
  sub_5370(v64, v60, 1, v30);
  sub_54934(v63, v61, &qword_1E6300, &qword_16ECE0);
  *(v61 + v62[5]) = v119;
  *(v61 + v62[6]) = v117;
  *(v61 + v62[7]) = v116;
  *(v61 + v62[8]) = v115;
  *(v61 + v62[9]) = v53;
  *(v61 + v62[10]) = v56;
  sub_54934(v64, v61 + v62[11], &qword_1E6300, &qword_16ECE0);
  swift_beginAccess();
  v66 = *sub_D084((v65 + 136), *(v65 + 160));
  if (sub_11B5C0())
  {
    v67 = *(v0 + 504);
    sub_169094();
    sub_16A1B4();
    v69 = v68;

    *(v0 + 704) = v69;
    if (v69)
    {
      v70 = *(v0 + 504);
      v71 = *(v0 + 512);
      type metadata accessor for PowerLevelStatusSnippetFactory();
      v72 = sub_1690A4();
      *(v0 + 712) = [v72 carName];

      *(v0 + 16) = v119;
      *(v0 + 24) = v117;
      *(v0 + 32) = v116;
      *(v0 + 40) = v115;
      *(v0 + 48) = v53;
      *(v0 + 56) = v56;
      swift_beginAccess();
      sub_10824(v71 + 184, v0 + 224);

      v73 = swift_task_alloc();
      *(v0 + 720) = v73;
      *v73 = v0;
      v73[1] = sub_53368;
      v74 = *(v0 + 496);
      sub_54B70();

      return sub_D3870();
    }

    v82 = *(v0 + 600);
    v83 = *(v0 + 592);
    sub_54AF0();
    sub_54888(v84, v85);
    swift_allocError();
    sub_54B5C();
    *v87 = v86 + 8;
    v87[1] = v88;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v89 = sub_54AA0();
LABEL_46:
    sub_54994(v89, v90);
    sub_54ABC();

    sub_D37C();
    sub_54B70();

    __asm { BRAA            X1, X16 }
  }

  v77 = *sub_D084((*(v0 + 512) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns), *(*(v0 + 512) + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns + 24));
  v78 = swift_task_alloc();
  *(v0 + 736) = v78;
  *v78 = v0;
  v78[1] = sub_53608;
  v79 = *(v0 + 592);
  sub_54B70();

  return sub_156CE4(v80);
}

uint64_t sub_53368()
{
  sub_10BA4();
  sub_10B8C();
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = v2[90];
  *v4 = *v1;
  v3[91] = v0;

  v6 = v2[89];
  v7 = v2[88];
  v8 = v2[87];
  v9 = v2[86];
  v10 = v2[85];
  v11 = v2[84];
  v12 = v2[83];
  sub_D13C(v3 + 28);

  sub_10B4C();
  sub_10B0C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_5353C()
{
  sub_54B3C();

  v1 = sub_54AA0();
  sub_54994(v1, v2);
  sub_54B08();

  sub_D37C();

  return v3();
}

uint64_t sub_53608()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 736);
  v10 = *v1;
  *(v3 + 744) = v5;
  *(v3 + 752) = v0;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_53714()
{
  sub_D2DC();
  v1 = v0[64];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 23));
  v2 = swift_task_alloc();
  v0[95] = v2;
  *v2 = v0;
  v2[1] = sub_537D0;
  v3 = v0[93];

  return sub_11A570();
}

uint64_t sub_537D0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 760);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 768) = v0;

  sub_D13C((v3 + 184));
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_538D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_54B3C();

  v14 = sub_54AA0();
  sub_54994(v14, v15);
  v16 = *(v13 + 752);
  sub_54ABC();

  sub_D37C();
  sub_10B0C();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_53990()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 656);
  v3 = *(v0 + 640);
  v4 = *(v0 + 592);
  v5 = *(v0 + 496);

  v6 = sub_54AA0();
  sub_54994(v6, v7);
  sub_D124((v0 + 144), v5);
  sub_54B08();

  sub_D37C();

  return v8();
}

uint64_t sub_53A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_54B3C();

  v14 = sub_54AA0();
  sub_54994(v14, v15);
  v16 = *(v13 + 728);
  sub_54ABC();

  sub_D37C();
  sub_10B0C();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_53B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 744);
  v14 = *(v12 + 656);
  v15 = *(v12 + 640);
  v16 = *(v12 + 592);

  v17 = sub_54AA0();
  sub_54994(v17, v18);
  v19 = *(v12 + 768);
  sub_54ABC();

  sub_D37C();
  sub_10B0C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_53C0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_5758(&qword_1E7630, &qword_173610);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v39 - v5;
  v7 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v8 = sub_D414(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = sub_1520B0();
  sub_549EC();
  v14 = objc_opt_self();
  v15 = [v14 kilometers];
  v16 = sub_16AAD4();

  if (v16)
  {
    v40 = a2;
LABEL_5:
    sub_168314();
    v19 = sub_1682F4();
    v20 = sub_16AAD4();

    if ((v20 & 1) == 0)
    {
      v21 = v13;
      sub_168344();
      sub_168314();

      (*(v39 + 8))(v6, v3);
    }

    v22 = sub_169FC4();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_169FB4();
    sub_169F64();

    sub_16A6E4();

    v25 = sub_16A0C4();
    sub_5370(v12, 0, 1, v25);
    sub_169F54();

    sub_109A0(v12, &qword_1E6300, &qword_16ECE0);
    v26 = sub_169F44();

    sub_54A30(v40, &v41);
    if (v42)
    {
      sub_D124(&v41, &v43);
      sub_16A074();
      sub_10824(&v43, &v41);
      v27 = sub_16A064();

      v28 = v27;
      sub_169F24();

      sub_D13C(&v43);
    }

    else
    {

      sub_109A0(&v41, &qword_1E6030, &unk_173620);
    }

    return v26;
  }

  v17 = [v14 miles];
  v18 = sub_16AAD4();

  if (v18)
  {
    v40 = a2;
    goto LABEL_5;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  sub_16ACF4(17);

  v43 = 0x656C646E61686E55;
  v44 = 0xEF2074696E752064;
  v29 = sub_1682F4();
  v30 = [v29 description];
  v31 = sub_16A664();
  v33 = v32;

  v45._countAndFlagsBits = v31;
  v45._object = v33;
  sub_16A744(v45);

  v34 = v43;
  v35 = v44;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v36 = sub_16A584();
  sub_9DA0(v36, qword_1E65C0);
  v37 = sub_16A9A4();
  sub_386D8(v37, 0x10uLL, 0xD00000000000007BLL, 0x8000000000182CF0, 0xD00000000000002ALL, 0x8000000000182D70, 31, v34, v35);

  return 0;
}

uint64_t sub_54118()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetPowerLevelHandleIntentFlowStrategy_commonPatterns));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetPowerLevelHandleIntentFlowStrategy()
{
  result = qword_1E7438;
  if (!qword_1E7438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_54224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_542EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_543B4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_54474()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_52480();
}

uint64_t sub_54520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_545E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_546B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_54778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  PowerLevelHandleIntentFlowStrategy = type metadata accessor for GetPowerLevelHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_36648;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, PowerLevelHandleIntentFlowStrategy, a4);
}

uint64_t sub_54888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_548D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarCommandsError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_54934(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5758(a3, a4);
  sub_10AFC(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t sub_54994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10AFC(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_549EC()
{
  result = qword_1E7648;
  if (!qword_1E7648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E7648);
  }

  return result;
}

uint64_t sub_54A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6030, &unk_173620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_54ABC()
{
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[74];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[67];
}

uint64_t sub_54B08()
{
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[74];
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[67];
}

void sub_54B3C()
{
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[74];
}

uint64_t sub_54B8C()
{

  return swift_allocError();
}

uint64_t type metadata accessor for CarCommandsSetLockStatusCATs()
{
  result = qword_1E7650;
  if (!qword_1E7650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_54C38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_54C8C(a1, a2);
}

uint64_t sub_54C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16A084();
  (*(v5 + 8))(a2, v4);
  sub_5810(a1);
  return v12;
}

void sub_54E00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = a1;
  v2 = sub_5758(&qword_1E76A0, &qword_172B00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - v5;
  sub_55158();
  v7 = sub_1682F4();
  v8 = objc_opt_self();
  v9 = [v8 celsius];
  v10 = sub_16AAD4();

  if ((v10 & 1) == 0)
  {
    v11 = sub_1682F4();
    v12 = [v8 kelvin];
    v13 = sub_16AAD4();

    if ((v13 & 1) == 0)
    {
      v16 = [v8 fahrenheit];
      sub_168344();

      sub_168314();
      v18 = v17;
      v19 = *(v3 + 8);
      v19(v6, v2);
      v20 = round(v18);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v20 > -9.22337204e18)
      {
        if (v20 < 9.22337204e18)
        {
          v21 = [v8 fahrenheit];
          sub_168344();

          sub_168314();
          v23 = v22;
          v19(v6, v2);
          v24 = round(v23);
          if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v24 > -9.22337204e18)
            {
              if (v24 < 9.22337204e18)
              {
                v25 = v20;
                v26 = v24;
                if (v30 == 3)
                {
                  v27 = __OFADD__(v25, v26);
                  v25 += v26;
                  if (!v27)
                  {
                    goto LABEL_21;
                  }

                  __break(1u);
                }

                if (!__OFSUB__(v25, v26))
                {
LABEL_21:
                  v28 = [v8 fahrenheit];
                  sub_168304();
                  sub_551B4();
                  return;
                }

LABEL_28:
                __break(1u);
LABEL_29:
                static Measurement<>.+ infix(_:_:)();
                return;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  if (v30 == 3)
  {
    sub_5519C();
    sub_551B4();

    goto LABEL_29;
  }

  sub_5519C();
  sub_551B4();

  static Measurement<>.- infix(_:_:)();
}

unint64_t sub_55158()
{
  result = qword_1E76A8;
  if (!qword_1E76A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E76A8);
  }

  return result;
}

uint64_t sub_55230()
{
  v1 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11 - v3;
  v5 = qword_1E76B0;
  if (*(v0 + qword_1E76B0))
  {
    v6 = *(v0 + qword_1E76B0);
  }

  else
  {
    v7 = sub_16A884();
    sub_5370(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;

    v6 = sub_64240(0, 0, v4, &unk_16F408, v8);
    v9 = *(v0 + v5);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_55348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  v7 = *(v5 + 416);
  v8 = type metadata accessor for CarCommandsAppResolutionFlowStrategy();
  WitnessTable = swift_getWitnessTable();
  *v6 = v4;
  v6[1] = sub_55430;

  return sub_BE1C(v8, WitnessTable);
}

uint64_t sub_55430()
{
  sub_D2DC();
  sub_D358();
  v2 = v1;
  v3 = *(v1 + 24);
  v9 = *v0;
  *(v2 + 32) = v4;

  v5 = sub_D388();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_55520()
{
  **(v0 + 16) = *(v0 + 32);
  sub_D37C();
  return v1();
}

uint64_t sub_5554C()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = *(*(sub_168B74() - 8) + 64);
  v1[13] = sub_D3C8();
  v5 = sub_1691E4();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64);
  v1[16] = sub_D3C8();
  v8 = *(*(sub_16A164() - 8) + 64);
  v1[17] = sub_D3C8();
  v9 = sub_D388();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_55644()
{
  sub_1696C();
  v1 = v0[11];
  sub_168FB4();
  sub_168F74();
  v2 = sub_168F94();

  if (v2)
  {
    v3 = v0[17];
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[18] = sub_16A094();
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_557B8;

    return sub_156570(19, _swiftEmptyArrayStorage);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_55C50;
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[10];

    return sub_5554C(v9, v7);
  }
}

uint64_t sub_557B8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = v2[19];
  v9 = *v1;
  v3[20] = v5;
  v3[21] = v0;

  if (v0)
  {
    v6 = sub_55B50;
  }

  else
  {
    v7 = v3[18];

    v6 = sub_558CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_558CC()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  swift_beginAccess();
  sub_10824(v3 + 184, (v0 + 2));
  v4 = v0[6];
  sub_D084(v0 + 2, v0[5]);
  sub_168B34();
  sub_169164();
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_559F0;
  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v9);
}

uint64_t sub_559F0()
{
  sub_1696C();
  sub_D358();
  v3 = v2[22];
  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 184) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v10 = sub_55D94;
  }

  else
  {
    v10 = sub_55BD0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_55B50()
{
  sub_1696C();
  v1 = v0[18];

  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];

  sub_D37C();

  return v6();
}

uint64_t sub_55BD0()
{
  sub_D2DC();

  sub_D13C((v0 + 16));
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);

  sub_D37C();

  return v4();
}

uint64_t sub_55C50()
{
  sub_1696C();
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  v5 = v1[17];
  v6 = v1[16];
  v7 = v1[13];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_55D94()
{
  sub_1696C();

  sub_D13C((v0 + 16));
  v1 = *(v0 + 184);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);

  sub_D37C();

  return v5();
}

uint64_t sub_55E1C()
{
  sub_D2DC();
  v1[24] = v2;
  v1[25] = v0;
  v1[26] = *v0;
  v3 = sub_1693E4();
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v5 = *(v4 + 64);
  v1[29] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_55EF0()
{
  v1 = v0[25];
  v59 = *(v1 + 176);
  sub_16ACF4(29);

  sub_D434();
  v60 = v2;
  v3 = v1 + qword_1F0AE0;
  v63._countAndFlagsBits = *(v1 + qword_1F0AE0);
  v0[30] = v63._countAndFlagsBits;
  v4 = *(v3 + 8);
  v0[31] = v4;
  countAndFlagsBits = v63._countAndFlagsBits;
  v63._object = v4;
  sub_16A744(v63);
  sub_57C30();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = sub_16A584();
  v0[32] = sub_9DA0(v9, qword_1E65C0);
  sub_16A9A4();
  sub_57C10();
  sub_57C04();
  sub_386D8(v10, v11, v12, v13, v14, v15, 35, 0xD00000000000001ALL, v60);

  sub_169384();
  sub_86E4(v6, &_swiftEmptySetSingleton, v0 + 15);
  (*(v5 + 8))(v6, v7);
  if (!v0[18])
  {
    sub_57A80((v0 + 15));
    v33 = *(v1 + 176);
    sub_16A9A4();
    sub_57C10();
    sub_57C04();
    sub_386D8(v34, v35, v36, v37, v38, v39, 38, v40, 0x8000000000182F10);
    sub_168FB4();
    sub_168F74();
    goto LABEL_10;
  }

  sub_D124((v0 + 15), (v0 + 10));
  v16 = v0[13];
  v17 = v0[14];
  sub_D084(v0 + 10, v16);
  v18 = (*(v17 + 16))(v16, v17);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    v22 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = v0[26];
      v58 = v0[25];
      v24 = *(v1 + 176);
      sub_16ACF4(21);

      sub_D434();
      v61 = v25;
      v64._countAndFlagsBits = v20;
      v64._object = v21;
      sub_16A744(v64);
      sub_57C30();
      sub_16A9A4();
      sub_57C04();
      sub_386D8(v26, v27, v28, v29, v30, v31, 44, 0xD000000000000012, v61);

      v32 = *(v23 + 416);
      type metadata accessor for CarCommandsAppResolutionFlowStrategy();
      sub_57BD8();
      sub_BB40(v20, v21);

      sub_D13C(v0 + 10);
LABEL_10:
      v41 = v0[29];

      v42 = sub_120EC();

      return v43(v42);
    }
  }

  v45 = v0[25];
  v46 = *(v1 + 176);
  sub_16ACF4(64);
  v65._countAndFlagsBits = 0xD00000000000003DLL;
  v65._object = 0x8000000000182F30;
  sub_16A744(v65);
  v66._countAndFlagsBits = countAndFlagsBits;
  v66._object = v4;
  sub_16A744(v66);
  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v47, v48, v49, v50, v51, v52, 48, 0, 0xE000000000000000);

  v53 = sub_55230();
  v0[33] = v53;
  v54 = async function pointer to Task<>.value.getter[1];
  v55 = swift_task_alloc();
  v0[34] = v55;
  v56 = sub_5758(&qword_1E77D0, &unk_179A60);
  *v55 = v0;
  v55[1] = sub_563B4;

  return Task<>.value.getter(v0 + 22, v53, v56);
}

uint64_t sub_563B4()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 272);
  v3 = *(v1 + 264);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_564B4()
{
  v103 = v0 + 20;
  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[22];
  v4 = *(v2 + 176);
  sub_9F6C();
  sub_16ACF4(18);

  sub_16A1C4();
  v111._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v111);

  sub_57C30();
  sub_16A9A4();
  v5 = v3;
  sub_57C04();
  sub_386D8(v6, v7, v8, v9, v10, v11, 51, 0x6574726F70707553, 0xEF3A737070612064);

  v12 = sub_11B48C(v3);
  v13 = 0;
  v14 = v3 & 0xC000000000000001;
  v15 = (v3 & 0xFFFFFFFFFFFFFF8);
  sub_D434();
  v102 = v16;
LABEL_2:
  for (i = v13; v12 != i; ++i)
  {
    if (v14)
    {
      sub_16AD04();
    }

    else
    {
      if (i >= v15[2])
      {
        goto LABEL_37;
      }

      v18 = *(v5 + 8 * i + 32);
    }

    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_16AD04();
      goto LABEL_19;
    }

    v19 = sub_16A1B4();
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D3A0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = v102;
      *(inited + 48) = 0x6C7070612E6D6F63;
      *(inited + 56) = 0xEF64737361702E65;
      v106[20] = v21;
      v106[21] = v22;
      v24 = swift_task_alloc();
      *(v24 + 16) = v103;
      v101 = sub_100D74(sub_D010, v24, inited);
      swift_setDeallocating();
      sub_EFFB0();

      if (v101)
      {
      }

      else
      {
        sub_16AD34();
        v25 = _swiftEmptyArrayStorage[2];
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
      }

      goto LABEL_2;
    }
  }

  v26 = v5;
  v15 = v106;
  v27 = v106[32];
  v28 = *(v106[25] + 176);

  sub_16ACF4(20);

  sub_D434();
  v107 = v29;
  v112._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v112);

  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v30, v31, v32, v33, v34, v35, 60, 0xD000000000000011, v107);

  v36 = sub_11B48C(_swiftEmptyArrayStorage);

  if (v36)
  {
    if (v36 != 1)
    {
      v67 = sub_11B48C(v5);

      if (sub_11B48C(_swiftEmptyArrayStorage) < v67)
      {
        v68 = *(v106[25] + qword_1F0AE8);

        sub_16A7B4();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_16A7F4();
        }

        sub_16A814();
      }

      v70 = v106[31];
      v69 = v106[32];
      v71 = v106[30];
      v72 = *(v106[25] + 176);
      sub_9F6C();
      sub_16ACF4(53);
      v114._countAndFlagsBits = 0x20646E756F46;
      v114._object = 0xE600000000000000;
      sub_16A744(v114);
      v106[23] = sub_11B48C(_swiftEmptyArrayStorage);

      v115._countAndFlagsBits = sub_16AE24();
      sub_16A744(v115);

      v116._countAndFlagsBits = 0xD00000000000001ALL;
      v116._object = 0x8000000000182F90;
      sub_16A744(v116);
      v117._countAndFlagsBits = v71;
      v117._object = v70;
      sub_16A744(v117);
      v118._object = 0x8000000000182FB0;
      v118._countAndFlagsBits = 0xD000000000000011;
      sub_16A744(v118);
      sub_16A9A4();
      sub_57C20();
      sub_57C04();
      sub_386D8(v73, v74, v75, v76, v77, v78, 83, 0xD000000000000011, v107);

      sub_168FB4();
      sub_168F84();
      goto LABEL_28;
    }

    if (sub_11B48C(_swiftEmptyArrayStorage))
    {
      sub_1487EC(0, (_swiftEmptyArrayStorage & 0xC000000000000001) == 0, _swiftEmptyArrayStorage);
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        goto LABEL_38;
      }

      v37 = _swiftEmptyArrayStorage[4];

LABEL_19:

      v38 = sub_16A1B4();
      v40 = v39;

      if (v40)
      {
        v41 = v15[31];
        v42 = v15[30];
        v104 = v15[32];
        v105 = v15[26];
        v43 = *(v15[25] + 176);
        sub_9F6C();
        sub_16ACF4(47);

        sub_D434();
        v108 = v44;
        v113._countAndFlagsBits = v42;
        v113._object = v41;
        sub_16A744(v113);
        sub_57C30();
        sub_16A9A4();
        sub_57C20();
        sub_57C04();
        sub_386D8(v45, v46, v47, v48, v49, v50, 73, 0xD00000000000002CLL, v108);

        v51 = *(v105 + 416);
        type metadata accessor for CarCommandsAppResolutionFlowStrategy();
        sub_57BD8();
        sub_BB40(v38, v40);
LABEL_28:

        goto LABEL_33;
      }
    }

    else
    {
    }

    v88 = v15[32];
    v89 = *(v15[25] + 176);
    sub_16A9A4();
    sub_57C10();
    sub_57C04();
    sub_386D8(v90, v91, v92, v93, v94, v95, 76, v96, 0x8000000000182FD0);
  }

  else
  {
    v52 = v106[25];

    v53 = sub_11B48C(v26);

    v54 = *(v52 + 176);
    v55 = v106[32];
    if (v53 == 1)
    {
      v56 = v106[25];
      v57 = v106[26];
      sub_16A9A4();
      sub_57C10();
      sub_57C04();
      sub_386D8(v58, v59, v60, v61, v62, v63, 65, v64, 0x8000000000183060);
      v65 = *(v57 + 416);
      type metadata accessor for CarCommandsAppResolutionFlowStrategy();
      v66 = sub_57BD8();
      sub_BB0C(v55, v66);
      goto LABEL_33;
    }

    v80 = v106[30];
    v79 = v106[31];
    sub_9F6C();
    sub_16ACF4(45);

    sub_D434();
    v109 = v81;
    v119._countAndFlagsBits = v80;
    v119._object = v79;
    sub_16A744(v119);
    sub_57C30();
    sub_16A9A4();
    sub_57C20();
    sub_57C04();
    sub_386D8(v82, v83, v84, v85, v86, v87, 68, 0xD00000000000002ALL, v109);
  }

  sub_168FB4();
  sub_168F74();
LABEL_33:
  sub_D13C(v15 + 10);
  v97 = v15[29];

  v98 = sub_120EC();

  return v99(v98);
}

uint64_t sub_56D04()
{
  v1 = *(v0 + qword_1F0AE0 + 8);

  v2 = *(v0 + qword_1E76B0);

  v3 = *(v0 + qword_1F0AE8);
}

uint64_t *sub_56D58()
{
  v0 = sub_3D044();
  v1 = *(v0 + qword_1F0AE0 + 8);

  v2 = *(v0 + qword_1E76B0);

  v3 = *(v0 + qword_1F0AE8);

  return v0;
}

uint64_t sub_56DB4()
{
  v0 = sub_56D58();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_56E20()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_43F64;

  return sub_55E1C();
}

uint64_t sub_56EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_56F7C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_5554C();
}

uint64_t sub_57028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppResolutionOnDeviceFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_570EC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_B838();
}

uint64_t sub_57144()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_B93C();
}

uint64_t sub_57220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeRepromptOnEmptyParse(app:)(a1, a2, a3, a4);
}

uint64_t sub_572E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeRepromptOnLowConfidence(app:)(a1, a2, a3, a4);
}

uint64_t sub_573A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeConfirmationRejectedResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_5746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppConfirmationStrategyAsync.makeConfirmationCancelledResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_57530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1039C;

  return AppConfirmationStrategyAsync.makeConfirmationErrorResponse(error:app:)(a1, a2, a3, a4, a5);
}

uint64_t sub_575FC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_B1B4();
}

uint64_t sub_57654()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_A2A8();
}

uint64_t sub_57730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeRepromptOnEmptyParse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_577F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeRepromptOnLowConfidence(apps:)(a1, a2, a3, a4);
}

uint64_t sub_578B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeDisambiguationCancelResponse(apps:)(a1, a2, a3, a4);
}

uint64_t sub_5797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10A9C;

  return AppDisambiguationStrategyAsync.makeDisambiguationErrorResponse(error:apps:)(a1, a2, a3, a4, a5);
}

uint64_t sub_57A80(uint64_t a1)
{
  v2 = sub_5758(&qword_1E5F80, &unk_16E7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_57AE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_57B28()
{
  sub_1696C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1039C;

  return sub_55348(v3, v4, v5, v6);
}

uint64_t sub_57BD8()
{

  return swift_getWitnessTable();
}

void sub_57C30()
{
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;

  sub_16A744(v1);
}

id sub_57C48()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_BF964(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_57CE4()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  TrunkStatusParameters = type metadata accessor for GetTrunkStatusParameters(0);
  v1[41] = TrunkStatusParameters;
  v6 = *(*(TrunkStatusParameters - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_57DB8()
{
  v64 = v0;
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E7A20, &qword_16F5B8);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD000000000000094;
  v0[32] = 0x8000000000183110;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  v8 = sub_15AE4(v7);
  v10 = v9;

  if (v10)
  {
    v65._countAndFlagsBits = 32;
    v65._object = 0xE100000000000000;
    sub_16A744(v65);
    v66._countAndFlagsBits = 0xD000000000000025;
    v66._object = 0x8000000000182560;
    sub_16A744(v66);
    v11 = v8;
    v4 = v10;
  }

  else
  {
    v11 = 0xD000000000000025;
  }

  v62 = v11;
  v63._countAndFlagsBits = 58;
  v63._object = 0xE100000000000000;
  v0[35] = 26;
  v67._countAndFlagsBits = sub_16AE24();
  sub_16A744(v67);

  sub_16A744(v63);

  v12._countAndFlagsBits = sub_378D0(0x10002uLL);
  if (v12._object)
  {
    v63._countAndFlagsBits = 32;
    v63._object = 0xE100000000000000;
    sub_16A744(v12);

    v68._countAndFlagsBits = 32;
    v68._object = 0xE100000000000000;
    sub_16A744(v68);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v63._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v62, v4, &v63._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v6, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v17 = v0[38];
  swift_beginAccess();
  v18 = *sub_D084((v17 + 136), *(v17 + 160));
  v19 = sub_11B5C0();
  v20 = v0[37];
  if (v19)
  {
    sub_169094();
    sub_16A1B4();
    v22 = v21;

    v0[43] = v22;
    if (!v22)
    {
      type metadata accessor for CarCommandsError();
      sub_59360(&qword_1E92F0, type metadata accessor for CarCommandsError);
      swift_allocError();
      *v38 = 0xD00000000000002DLL;
      v38[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v39 = v0[42];
      v41 = v0[39];
      v40 = v0[40];

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v23 = v0[37];
    v24 = v0[38];
    type metadata accessor for TrunkStatusSnippetFactory();
    v25 = sub_1690A4();
    v0[44] = [v25 carName];

    v26 = sub_169084();
    [v26 trunkStatus];

    swift_beginAccess();
    sub_10824(v24 + 184, (v0 + 17));
    v27 = swift_task_alloc();
    v0[45] = v27;
    *v27 = v0;
    v27[1] = sub_584A8;
    v28 = v0[36];
    sub_D2C0();

    return sub_504E4();
  }

  else
  {
    v31 = sub_1690A4();
    v0[47] = v31;
    v32 = sub_169084();
    v33 = [v32 trunkStatus];

    v34 = [v31 carName];
    if (v34)
    {
      v35 = v34;
      v36 = v0[40];
      sub_99C94();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v44 = v0[40];
    v45 = v0[37];
    v46 = sub_16A0C4();
    v47 = 1;
    sub_5370(v44, v37, 1, v46);
    sub_169094();
    sub_16A1B4();
    v49 = v48;

    if (v49)
    {
      v50 = v0[39];
      sub_16A6E4();

      v47 = 0;
    }

    v51 = v33 == &dword_0 + 2;
    v53 = v0[41];
    v52 = v0[42];
    v55 = v0[39];
    v54 = v0[40];
    v56 = v0[38];
    sub_5370(v55, v47, 1, v46);
    sub_16304(v54, v52);
    *(v52 + *(v53 + 20)) = v51;
    sub_16304(v55, v52 + *(v53 + 24));
    v57 = *sub_D084((v56 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns), *(v56 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns + 24));
    v58 = swift_task_alloc();
    v0[48] = v58;
    *v58 = v0;
    v58[1] = sub_58648;
    v59 = v0[42];
    sub_D2C0();

    return sub_1574C0(v60);
  }
}

uint64_t sub_584A8()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = v2[45];
  v6 = *v1;
  *v4 = *v1;
  v3[46] = v0;

  v7 = v2[44];
  v8 = v2[43];
  sub_D13C(v3 + 17);

  if (v0)
  {
    sub_10B4C();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = v3[42];
    v14 = v3[39];
    v13 = v3[40];

    v15 = v6[1];

    return v15();
  }
}

uint64_t sub_58648()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 384);
  v10 = *v1;
  *(v3 + 392) = v5;
  *(v3 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_58750()
{
  sub_D2DC();
  v1 = v0[38];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_5880C;
  v3 = v0[49];

  return sub_11A570();
}

uint64_t sub_5880C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 408);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 416) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_58914()
{
  sub_1696C();
  v1 = *(v0 + 336);

  sub_59304(v1);
  v2 = *(v0 + 400);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);

  sub_D37C();

  return v6();
}

uint64_t sub_589A0()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);
  v3 = *(v0 + 288);

  sub_59304(v2);
  sub_D250((v0 + 56), v3);
  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);

  sub_D37C();

  return v7();
}

uint64_t sub_58A44()
{
  sub_1696C();
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);

  sub_59304(v2);
  v3 = *(v0 + 416);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);

  sub_D37C();

  return v7();
}

void sub_58AD8()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

uint64_t *sub_58B18()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38GetTrunkStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_58B60()
{
  v0 = sub_58B18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy()
{
  result = qword_1E7808;
  if (!qword_1E7808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_58C54(uint64_t a1)
{
  result = sub_59360(&qword_1E7A18, type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_58CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_58D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_58E3C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_58EFC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_57CE4();
}

uint64_t sub_58FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_59070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_59138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  TrunkStatusHandleIntentFlowStrategy = type metadata accessor for GetTrunkStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, TrunkStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_59200()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_44600();
}

uint64_t sub_59304(uint64_t a1)
{
  TrunkStatusParameters = type metadata accessor for GetTrunkStatusParameters(0);
  (*(*(TrunkStatusParameters - 8) + 8))(a1, TrunkStatusParameters);
  return a1;
}

uint64_t sub_59360(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_593A8(char *a1, char a2)
{
  v4 = v2;
  v7 = type metadata accessor for CarCommandsError();
  v8 = sub_10AFC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_5A0F8();
  if ((a2 & 0xF0) != 0x50)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    sub_386D8(v15, 0x4000uLL, 0xD0000000000000A0, 0x80000000001831B0, 0xD000000000000018, 0x8000000000183260, 10, 0xD000000000000026, 0x8000000000183280);
    goto LABEL_18;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v28);
  if (!v28[3])
  {
    sub_109A0(v28, &qword_1E5F80, &unk_16E7E0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    goto LABEL_15;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E7A30, &unk_16F5D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_15;
  }

  if (!*(&v30 + 1))
  {
LABEL_15:
    sub_109A0(&v29, &qword_1E7A28, &qword_16F5D0);
    v16 = sub_1693E4();
    sub_10AFC(v16);
    (*(v17 + 16))(v3, a1);
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v3, v18);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v19 = sub_16A584();
    sub_9DA0(v19, qword_1E65C0);
    v20 = sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    sub_5A130();
    sub_386D8(v20, 0x4000uLL, v21, 0x80000000001831B0, 0xD000000000000018, 0x8000000000183260, 16, v22, v27);

    sub_5A09C(v3);
LABEL_18:
    v23 = v2;
    return v4;
  }

  sub_D124(&v29, v32);
  v11 = v33;
  v12 = v34;
  sub_D084(v32, v33);
  if ((a2 & 0xF) != 0)
  {
    if ((a2 & 0xF) == 1)
    {
      v13 = (*(v12 + 16))(v11, v12);
      if (!v13)
      {
        v13 = [v4 enabled];
      }

      [v4 setEnabled:v13];
    }

    else
    {
      v13 = (*(v12 + 24))(v11, v12);
      if (!v13)
      {
        v13 = [v4 isSetCarActivationStatusRequest];
      }

      [v4 setIsSetCarActivationStatusRequest:v13];
    }
  }

  else
  {
    (*(*(v12 + 8) + 8))(v11);
    if (v25)
    {
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      v13 = sub_99BFC();
    }

    else
    {
      v13 = 0;
    }

    [v4 setCarName:v13];
  }

  v26 = v4;
  sub_D13C(v32);
  return v4;
}

id sub_59804(uint64_t a1, char a2)
{
  v6 = type metadata accessor for CarCommandsError();
  v7 = sub_10AFC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_5A0F8();
  if ((a2 & 0xF0) == 0x50)
  {
    if ((a2 & 0xF) == 0)
    {
      sub_16138(a1, v24);
      sub_5758(&qword_1E5FA0, &qword_172DD0);
      if (swift_dynamicCast())
      {
        v11 = v23;
        if (v23)
        {
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v11 = sub_99BFC();
        }
      }

      else
      {
        v11 = 0;
      }

      [v21 setCarName:v11];
      goto LABEL_20;
    }

    if ((a2 & 0xF) == 1)
    {
      sub_16138(a1, v24);
      if (sub_5A110())
      {
        v10 = [objc_allocWithZone(NSNumber) initWithBool:v22];
        [v21 setEnabled:v10];
      }

      sub_16138(a1, v24);
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_5A110())
      {
        v11 = v22;
        [v21 setEnabled:v22];
LABEL_20:
      }
    }

    else
    {
      sub_16138(a1, v24);
      if (sub_5A110())
      {
        v18 = [objc_allocWithZone(NSNumber) initWithBool:v22];
        [v21 setIsSetCarActivationStatusRequest:v18];
      }

      sub_16138(a1, v24);
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_5A110())
      {
        v11 = v22;
        [v21 setIsSetCarActivationStatusRequest:v22];
        goto LABEL_20;
      }
    }
  }

  else
  {
    v24[0] = a2;
    *v2 = sub_16A694();
    v2[1] = v12;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    sub_5A144();
    sub_548D0(v2, v13);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    v15 = sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    sub_5A130();
    sub_386D8(v15, 0x1000uLL, v16, 0x80000000001831B0, 0xD000000000000018, 0x8000000000183260, 35, v17, v20);

    sub_5A09C(v2);
  }

  return v21;
}

double sub_59B80@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x50)
  {
    if ((a1 & 0xF) != 0)
    {
      if ((a1 & 0xF) == 1)
      {
        v4 = [v2 enabled];
      }

      else
      {
        v4 = [v2 isSetCarActivationStatusRequest];
      }

      v9 = v4;
      if (v9)
      {
        v6 = v9;
        v7 = &qword_1E6310;
        v8 = NSNumber_ptr;
        goto LABEL_10;
      }
    }

    else
    {
      v5 = [v2 carName];
      if (v5)
      {
        v6 = v5;
        v7 = &qword_1E6378;
        v8 = INSpeakableString_ptr;
LABEL_10:
        *(a2 + 24) = sub_16484(0, v7, v8);
        *a2 = v6;
        return result;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_59C58(char *a1)
{
  v4 = type metadata accessor for CarCommandsError();
  v5 = sub_10AFC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_5A0F8();
  sub_86E4(a1, &_swiftEmptySetSingleton, v32);
  if (v32[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E7A30, &unk_16F5D8);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1))
      {
        sub_D124(&v33, v36);
        v8 = [objc_allocWithZone(v1) init];
        v10 = v37;
        v9 = v38;
        sub_D084(v36, v37);
        v11 = *(v9 + 8);
        v12 = *(v11 + 8);
        v13 = v8;
        v12(v10, v11);
        if (v14)
        {
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v15 = sub_99BFC();
        }

        else
        {
          v15 = 0;
        }

        [v13 setCarName:v15];

        v24 = v37;
        v25 = v38;
        sub_D084(v36, v37);
        v26 = (*(v25 + 16))(v24, v25);
        [v13 setEnabled:v26];

        v27 = v37;
        v28 = v38;
        sub_D084(v36, v37);
        v29 = (*(v28 + 24))(v27, v28);
        [v13 setIsSetCarActivationStatusRequest:v29];

        v30 = sub_1693E4();
        sub_10AFC(v30);
        (*(v31 + 8))(a1);
        sub_D13C(v36);
        return v13;
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    sub_109A0(v32, &qword_1E5F80, &unk_16E7E0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  sub_109A0(&v33, &qword_1E7A28, &qword_16F5D0);
  v16 = sub_1693E4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v2, a1, v16);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v2, v18);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  swift_getErrorValue();
  v21 = sub_16AEB4();
  sub_386D8(v20, 0x4000uLL, 0xD0000000000000A0, 0x80000000001831B0, 0x293A5F2874696E69, 0xE800000000000000, 76, v21, v22);

  (*(v17 + 8))(a1, v16);
  sub_5A09C(v2);
  return 0;
}

uint64_t sub_5A09C(uint64_t a1)
{
  v2 = type metadata accessor for CarCommandsError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A110()
{

  return swift_dynamicCast();
}