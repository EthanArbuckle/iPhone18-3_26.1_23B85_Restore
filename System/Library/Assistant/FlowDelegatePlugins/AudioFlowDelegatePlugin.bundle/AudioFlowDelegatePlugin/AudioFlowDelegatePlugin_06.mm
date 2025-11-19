uint64_t sub_AAC5C()
{
  v1 = *(*v0 + 1232);
  v3 = *v0;

  return _swift_task_switch(sub_AAD58, 0, 0);
}

uint64_t sub_AAD58()
{
  v1 = v0[140];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[127];
  v9 = v0[60];
  sub_2C9EB0();

  sub_A41AC(v1, 1);
  (*(v7 + 8))(v6, v8);
  v10 = v0[129];
  v11 = v0[126];
  v12 = v0[125];
  v13 = v0[124];
  v14 = v0[123];
  v15 = v0[122];
  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[118];
  v22 = v0[117];
  v23 = v0[116];
  v24 = v0[115];
  v25 = v0[114];
  v26 = v0[113];
  v27 = v0[112];
  v28 = v0[111];
  v29 = v0[110];
  v30 = v0[107];
  v31 = v0[106];
  v32 = v0[105];
  v33 = v0[104];
  v34 = v0[101];
  v35 = v0[100];
  v36 = v0[97];
  v37 = v0[96];
  v38 = v0[95];
  v39 = v0[94];
  v40 = v0[93];
  v41 = v0[92];
  v42 = v0[91];
  v43 = v0[88];
  v44 = v0[85];
  v45 = v0[82];
  v46 = v0[79];
  v47 = v0[76];
  v48 = v0[73];
  v49 = v0[72];
  v50 = v0[71];
  v51 = v0[70];
  v52 = v0[69];
  v53 = v0[68];
  v54 = v0[67];
  v55 = v0[66];
  v56 = v0[65];
  v57 = v0[64];
  v58 = v0[63];
  v59 = v0[62];

  v20 = v0[1];

  return v20();
}

uint64_t sub_AB0B8()
{
  v1 = *(*v0 + 1240);
  v3 = *v0;

  return _swift_task_switch(sub_AB1B4, 0, 0);
}

uint64_t sub_AB1B4()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[106];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = v0[140];
  v10 = v0[137];
  v11 = v0[136];
  v12 = v0[135];
  v13 = v0[134];
  v14 = v0[129];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[60];
  sub_2C9EB0();

  sub_A41AC(v9, 1);
  (*(v15 + 8))(v14, v16);
  v18 = v0[129];
  v19 = v0[126];
  v20 = v0[125];
  v21 = v0[124];
  v22 = v0[123];
  v23 = v0[122];
  v24 = v0[121];
  v25 = v0[120];
  v26 = v0[119];
  v27 = v0[118];
  v30 = v0[117];
  v31 = v0[116];
  v32 = v0[115];
  v33 = v0[114];
  v34 = v0[113];
  v35 = v0[112];
  v36 = v0[111];
  v37 = v0[110];
  v38 = v0[107];
  v39 = v0[106];
  v40 = v0[105];
  v41 = v0[104];
  v42 = v0[101];
  v43 = v0[100];
  v44 = v0[97];
  v45 = v0[96];
  v46 = v0[95];
  v47 = v0[94];
  v48 = v0[93];
  v49 = v0[92];
  v50 = v0[91];
  v51 = v0[88];
  v52 = v0[85];
  v53 = v0[82];
  v54 = v0[79];
  v55 = v0[76];
  v56 = v0[73];
  v57 = v0[72];
  v58 = v0[71];
  v59 = v0[70];
  v60 = v0[69];
  v61 = v0[68];
  v62 = v0[67];
  v63 = v0[66];
  v64 = v0[65];
  v65 = v0[64];
  v66 = v0[63];
  v67 = v0[62];

  v28 = v0[1];

  return v28();
}

uint64_t sub_AB56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_AB58C, 0, 0);
}

uint64_t sub_AB58C()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = sub_20410(&qword_34CCC0, &unk_2D0DE0);
  *v2 = v0;
  v2[1] = sub_AB670;
  v4 = v0[2];
  v5 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_B1588, v5, v3);
}

uint64_t sub_AB670()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_AB764(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E750, &unk_2D26F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_nowPlayingProvider + 32);
  sub_35E0((a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_nowPlayingProvider), *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_nowPlayingProvider + 24));
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  sub_2CC2F0();
}

uint64_t sub_AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34E4B0, &qword_2D3520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_F3F4(a3, v27 - v11, &qword_34E4B0, &qword_2D3520);
  v13 = sub_2CE4D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_30B8(v12, &qword_34E4B0, &qword_2D3520);
  }

  else
  {
    sub_2CE4C0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2CE490();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2CE2D0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_30B8(a3, &qword_34E4B0, &qword_2D3520);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_30B8(a3, &qword_34E4B0, &qword_2D3520);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_20410(&qword_34CCC0, &unk_2D0DE0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_ABBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34E4B0, &qword_2D3520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_F3F4(a3, v27 - v11, &qword_34E4B0, &qword_2D3520);
  v13 = sub_2CE4D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_30B8(v12, &qword_34E4B0, &qword_2D3520);
  }

  else
  {
    sub_2CE4C0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2CE490();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2CE2D0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_30B8(a3, &qword_34E4B0, &qword_2D3520);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_30B8(a3, &qword_34E4B0, &qword_2D3520);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_ABEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_ABF0C, 0, 0);
}

uint64_t sub_ABF0C()
{
  v1 = v0[3];
  v3 = v1[11];
  v2 = v1[12];
  sub_35E0(v1 + 8, v3);
  v4 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  v6 = sub_334A0(0, &qword_34E4C8, SAExecuteOnRemoteResponse_ptr);
  *v5 = v0;
  v5[1] = sub_ABFEC;
  v7 = v0[4];

  return AceServiceInvokerAsync.submit<A>(_:)(v7, v3, v6, v2);
}

uint64_t sub_ABFEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_AC138, 0, 0);
  }
}

uint64_t sub_AC15C(uint64_t result, unint64_t a2)
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
        result = sub_2CECF0();
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

  v6 = sub_AF38C(result, a2, 10);
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

id ExecuteMusicOnRemoteFlow.makeExecuteOnRemoteRequest(input:targetDeviceId:currentRequest:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62[1] = a2;
  v73 = sub_2CD460();
  v74 = *(v73 - 8);
  v4 = *(v74 + 64);
  __chkstk_darwin(v73);
  v62[0] = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CD430();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v67 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2CB260();
  v64 = *(v66 - 8);
  v9 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2CE000();
  v65 = *(v71 - 8);
  v11 = v65[8];
  v12 = __chkstk_darwin(v71);
  __chkstk_darwin(v12);
  v14 = v62 - v13;
  v15 = sub_2C8D10();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2C8D00();
  sub_2CA7B0();
  sub_B0E78(&qword_34E500, &type metadata accessor for Input);
  v19 = sub_2C8CF0();
  v21 = v20;
  v22 = v2[2];
  v23 = v3[3];
  v24 = objc_allocWithZone(SKIDirectInvocationPayload);
  v25 = sub_2CE260();
  v26 = [v24 initWithIdentifier:v25];

  sub_20410(&qword_34E508, &unk_2D2320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  v28 = v3[5];
  v76 = v3[4];
  v77 = v28;

  sub_2CEC60();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = v19;
  *(inited + 80) = v21;
  sub_525D4(v19, v21);
  sub_9082C(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34E1B8, &qword_2D1F18);
  isa = sub_2CE1F0().super.isa;

  [v26 setUserData:isa];

  v30 = objc_opt_self();
  v31 = sub_2CB5D0();
  v68 = v26;
  v72 = [v30 runSiriKitExecutorCommandWithContext:v31 payload:v26];

  v32 = [objc_allocWithZone(SAIntentGroupSiriKitRemoteExecution) init];
  v33 = sub_2CE260();
  [v32 setExecutionDeviceAssistantId:v33];

  sub_2CD400();
  v34 = sub_2CE260();

  [v32 setInvocationDeviceAssistantId:v34];

  [v32 setRunLocation:SAIntentGroupSiriKitRunLocationExecutionDeviceValue];
  v35 = v32;
  sub_2CD410();
  v36 = v19;
  if (v37)
  {
    v38 = sub_2CE260();
  }

  else
  {
    v38 = 0;
  }

  v39 = v71;
  v40 = v65;
  [v35 setRefId:v38];

  v65 = v35;
  [v72 setRemoteExecution:v35];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = sub_3ED0(v39, static Logger.default);
  swift_beginAccess();
  (v40[2])(v14, v41, v39);

  v42 = sub_2CDFE0();
  v43 = sub_2CE670();

  v44 = os_log_type_enabled(v42, v43);
  v70 = v18;
  v69 = v21;
  if (v44)
  {
    v45 = v36;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v75 = v47;
    *v46 = 136315138;
    v76 = sub_2CD410();
    v77 = v48;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v49 = sub_2CE2A0();
    v51 = sub_3F08(v49, v50, &v75);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_0, v42, v43, "Setting refID for RSKE to %s", v46, 0xCu);
    sub_306C(v47);

    v36 = v45;

    (v40[1])(v14, v71);
  }

  else
  {

    (v40[1])(v14, v39);
  }

  v52 = v72;
  sub_2CD410();
  v53 = v65;
  if (v54)
  {
    v55 = sub_2CE260();
  }

  else
  {
    v55 = 0;
  }

  [v52 setRefId:v55];

  v56 = v63;
  sub_2CD3C0();
  sub_2CB240();
  (*(v64 + 8))(v56, v66);
  v57 = sub_2CE260();

  [v52 setMode:v57];

  v58 = v67;
  sub_2CD3D0();
  if ((*(v74 + 48))(v58, 1, v73) == 1)
  {
    [v52 setMultiUser:0];
    sub_52628(v36, v69);
  }

  else
  {
    v59 = v62[0];
    (*(v74 + 32))(v62[0], v58, v73);
    [v52 setMultiUser:1];
    sub_2CD450();
    v60 = v78;
    if (v78)
    {
      sub_35E0(&v76, v78);
      v60 = sub_2CD380();
      if (v60)
      {
        sub_334A0(0, &qword_34E518, SAPerson_ptr);
        v60 = sub_2CEB50();
      }

      sub_306C(&v76);
    }

    else
    {
      sub_30B8(&v76, &qword_34E510, &unk_2D2330);
    }

    [v52 setIdentifiedUserMeCard:v60];

    [v52 setRequiresConditionalMultiUserGrounding:sub_2CD440() & 1];

    sub_52628(v36, v69);
    (*(v74 + 8))(v59, v73);
  }

  return v52;
}

uint64_t ExecuteMusicOnRemoteFlow.execute(completion:)()
{
  type metadata accessor for ExecuteMusicOnRemoteFlow();
  sub_B0E78(&qword_34E520, type metadata accessor for ExecuteMusicOnRemoteFlow);
  return sub_2C97C0();
}

uint64_t (*sub_AD040(char a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_playMediaCatDialogService);

  return off_333A18[a1];
}

uint64_t sub_AD088(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a2;
  *(v4 + 344) = a1;
  v5 = sub_2C9EC0();
  *(v4 + 168) = v5;
  v6 = *(v5 - 8);
  *(v4 + 176) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v8 = *(*(sub_20410(&qword_34CB78, &unk_2D0D80) - 8) + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v9 = *(*(sub_20410(&qword_34CB80, &unk_2D0B30) - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v10 = *(*(sub_20410(&qword_34CB88, &unk_2D0D90) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v11 = sub_2CCB30();
  *(v4 + 216) = v11;
  v12 = *(v11 - 8);
  *(v4 + 224) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v14 = sub_2CCAC0();
  *(v4 + 240) = v14;
  v15 = *(v14 - 8);
  *(v4 + 248) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v17 = sub_2CE000();
  *(v4 + 264) = v17;
  v18 = *(v17 - 8);
  *(v4 + 272) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v20 = *(*(sub_20410(&qword_34E480, &qword_2D2280) - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_AD350, 0, 0);
}

uint64_t sub_AD350()
{
  v1 = v0[37];
  v2 = v0[20];
  v3 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_F3F4(v2 + v3, v1, &qword_34E480, &qword_2D2280);
  v4 = sub_2CA7B0();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_30B8(v1, &qword_34E480, &qword_2D2280);
  if (v2 == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v6 = v0[34];
    v5 = v0[35];
    v7 = v0[33];
    v8 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_2CDFE0();
    v10 = sub_2CE680();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[33];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v9, v10, "ExecuteMusicOnRemoteFlow#generateDialog input is nil", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);
    v17 = v0[36];
    v16 = v0[37];
    v18 = v0[35];
    v19 = v0[32];
    v20 = v0[29];
    v22 = v0[25];
    v21 = v0[26];
    v24 = v0[23];
    v23 = v0[24];

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = v0[20];
    v28 = sub_A48F8();
    v0[38] = v28;
    v29 = swift_task_alloc();
    v0[39] = v29;
    *v29 = v0;
    v29[1] = sub_AD644;

    return sub_B096C(v28);
  }
}

uint64_t sub_AD644(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_AD744, 0, 0);
}

uint64_t sub_AD744()
{
  v1 = *(v0 + 160) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload;
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 24);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 344);

  v7 = v2(v6, v4, v5);
  if (!v7)
  {
    sub_B0EC0(v2);
    v21 = *(v0 + 160);
LABEL_9:
    v22 = *(v0 + 152);
    *(v0 + 128) = sub_AD040(*(v0 + 344));
    *(v0 + 136) = v23;

    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 288);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v11, v14, v13);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "ExecuteMusicOnRemoteFlow#generateDialog Found valid error dialog override. Using that instead", v17, 2u);
  }

  v18 = *(v0 + 288);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  sub_B0EC0(v2);

  (*(v19 + 8))(v18, v20);
  *(v0 + 128) = v9;
  *(v0 + 136) = v10;
LABEL_10:
  v26 = *(v0 + 304);
  v27 = *(v0 + 248);
  v28 = *(v0 + 256);
  v30 = *(v0 + 232);
  v29 = *(v0 + 240);
  v31 = *(v0 + 216);
  v32 = *(v0 + 224);
  v54 = *(v0 + 208);
  v55 = *(v0 + 200);
  v57 = *(v0 + 160);
  v58 = *(v0 + 192);
  (*(v27 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v29);
  (*(v32 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v31);
  sub_2CCAE0();
  v33 = v26;

  (*(v32 + 8))(v30, v31);
  (*(v27 + 8))(v28, v29);
  sub_EEAC(v57 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 16);
  v56 = *(v0 + 48);
  sub_35E0((v0 + 16), *(v0 + 40));
  v34 = enum case for ActivityType.failed(_:);
  v35 = sub_2C9C20();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v54, v34, v35);
  (*(v36 + 56))(v54, 0, 1, v35);
  v37 = sub_2CA130();
  (*(*(v37 - 8) + 56))(v55, 1, 1, v37);
  v38 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v39 = sub_2C98F0();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v58, v38, v39);
  (*(v40 + 56))(v58, 0, 1, v39);
  if (v26)
  {
    v41 = v26;
    sub_2CE710();
  }

  v42 = *(v0 + 320);
  v43 = *(v0 + 304);
  v45 = *(v0 + 200);
  v44 = *(v0 + 208);
  v46 = *(v0 + 192);
  v47 = *(v0 + 160);
  sub_2CB4E0();

  sub_30B8(v46, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v45, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v44, &qword_34CB88, &unk_2D0D90);
  sub_306C((v0 + 16));
  v48 = swift_task_alloc();
  *(v0 + 328) = v48;
  v48[2] = v0 + 128;
  v48[3] = v42;
  v48[4] = v43;
  v48[5] = v47;
  v49 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v50 = swift_task_alloc();
  *(v0 + 336) = v50;
  *v50 = v0;
  v50[1] = sub_ADD08;
  v51 = *(v0 + 184);
  v52 = *(v0 + 168);

  return withCheckedContinuation<A>(isolation:function:_:)(v51, 0, 0, 0xD000000000000023, 0x80000000002DBD80, sub_B13C8, v48, v52);
}

uint64_t sub_ADD08()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 168);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_ADE7C, 0, 0);
}

uint64_t sub_ADE7C()
{
  v1 = *(v0 + 320);

  v2 = *(v0 + 136);

  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_ADF64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v25 = a5;
  v9 = sub_20410(&qword_34E738, &qword_2D26C8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = *(a2 + 8);
  v24 = *a2;

  v23 = sub_112C0(_swiftEmptyArrayStorage);
  if (!a3)
  {
    sub_2CCFB0();
    v15 = sub_2CCF80();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v26[1] = 0;
    v26[2] = 0;
    goto LABEL_6;
  }

  v15 = a3;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v17 = &off_3381B8;
  v18 = a4;
LABEL_6:
  v26[0] = v18;
  v26[3] = v16;
  v26[4] = v17;
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  (*(v10 + 32))(v20 + v19, v13, v9);

  v21 = a4;

  v24(v23, v15, v26, sub_B13D4, v20);

  return sub_30B8(v26, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_AE1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20410(&qword_34E738, &qword_2D26C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a3, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_AE3E4(a1, sub_B1454, v11);
}

uint64_t sub_AE304(uint64_t a1)
{
  v2 = sub_2C9EC0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_20410(&qword_34E738, &qword_2D26C8);
  return sub_2CE4A0();
}

uint64_t sub_AE3E4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v56 = a1;
  v3 = sub_2C9EC0();
  v62 = *(v3 - 8);
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v59 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v50 - v8;
  v55 = sub_20410(&unk_3519A0, &qword_2D0980);
  v10 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v12 = (&v50 - v11);
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v57 = (&v50 - v19);
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v53 = v14[2];
  v54 = v22;
  v53(v21, v22, v13);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "ExecuteMusicOnRemoteFlow#handleDialogResult Handling dialog Result...", v25, 2u);
  }

  v26 = v14[1];
  v58 = v14 + 1;
  v26(v21, v13);
  sub_F3F4(v56, v12, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v12;
    v28 = v52;
    v53(v52, v54, v13);
    swift_errorRetain();
    v29 = sub_2CDFE0();
    v30 = sub_2CE680();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v3;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v57 = v26;
      v34 = v33;
      v65 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v63 = sub_2CEEF0();
      v64 = v35;
      v36 = sub_2CE3C0();
      v38 = sub_3F08(v36, v37, &v65);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_0, v29, v30, "ExecuteMusicOnRemoteFlow#handleDialogResult Could not properly create dialog %s, silently failing...", v32, 0xCu);
      sub_306C(v34);

      v3 = v31;

      v57(v28, v13);
    }

    else
    {

      v26(v28, v13);
    }

    v49 = v59;
    sub_2C9EB0();
    v61(v49);

    return (*(v62 + 8))(v49, v3);
  }

  else
  {
    sub_24BE0(v12, v9);
    sub_2CB5B0();
    v39 = sub_2C9C10();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_2C9BF0();
    v42 = sub_2C9BD0();
    v43 = v51[12];
    sub_35E0(v51 + 8, v51[11]);
    sub_2CA3E0();
    v53(v57, v54, v13);
    v44 = sub_2CDFE0();
    v45 = sub_2CE670();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "ExecuteMusicOnRemoteFlow#handleDialogResult Dialog successfully generated, responding and exiting...", v46, 2u);
    }

    v26(v57, v13);
    v47 = v59;
    sub_2C9EB0();
    v61(v47);

    (*(v62 + 8))(v47, v3);
    return sub_30B8(v9, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t ExecuteMusicOnRemoteFlow.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_A46E8(*(v0 + 48), *(v0 + 56));
  sub_306C((v0 + 64));
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute, &qword_34E480, &qword_2D2280);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_outputPublisher));
  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 8);
  v4 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 16);
  v5 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 24);

  sub_B0EC0(v4);
  v6 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_catService);

  v7 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_playMediaCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_appNameResolver));
  v8 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_viewFactory);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_encryptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_mediaRemoteProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_nowPlayingProvider));
  v9 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionNotInRangeErrorCodes);

  v10 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionWifiMismatchErrorCodes);

  v11 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionConnectionTimedOut);

  return v0;
}

uint64_t ExecuteMusicOnRemoteFlow.__deallocating_deinit()
{
  ExecuteMusicOnRemoteFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void (*sub_AEC8C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2CB190();
  return sub_AED18;
}

void sub_AED18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_AED60(uint64_t a1)
{
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(*v1 + 56);
  if (v8 != 2 && (v8 != 4 || *(v7 + 48)))
  {
    return 0;
  }

  v10 = sub_2CA7B0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a1, v10);
  v9 = 1;
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_A4888(v6, v7 + v12);
  swift_endAccess();
  return v9;
}

uint64_t sub_AEED0()
{
  v2 = *v0;
  type metadata accessor for ExecuteMusicOnRemoteFlow();
  return sub_2C97C0();
}

uint64_t sub_AEF30(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E664;

  return ExecuteMusicOnRemoteFlow.execute()(a1);
}

void sub_AEFCC(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(v3 + 56);
  sub_A46B4(v4, v5);
  v6 = sub_A4408(v4, v5);
  v8 = v7;
  sub_A46E8(v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
}

uint64_t sub_AF03C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_AF06C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_AF164;

  return v7(a1);
}

uint64_t sub_AF164()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_AF25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_E664;

  return sub_AB56C(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ExecuteMusicOnRemoteFlow()
{
  result = qword_34E590;
  if (!qword_34E590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AF35C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unsigned __int8 *sub_AF38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2CE3C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_AF918();
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
      result = sub_2CECF0();
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

uint64_t sub_AF918()
{
  v0 = sub_2CE3D0();
  v4 = sub_AF998(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_AF998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2CE300();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_2CEBB0();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_E8CC(v9, 0);
  v12 = sub_AFAF0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_2CE300();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_2CECF0();
LABEL_4:

  return sub_2CE300();
}

unint64_t sub_AFAF0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_AFD10(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2CE390();
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
          result = sub_2CECF0();
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

    result = sub_AFD10(v12, a6, a7);
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

    result = sub_2CE370();
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

uint64_t sub_AFD10(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2CE3A0();
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
    v5 = sub_2CE380();
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

uint64_t sub_AFD8C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_AFE80;

  return v6(v2 + 16);
}

uint64_t sub_AFE80()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_AFF94(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v26[-v8];
  v10 = [a1 dictionary];
  if (v10)
  {
    v11 = v10;
    v12 = objc_opt_self();
    v27[0] = 0;
    v13 = [v12 dataWithPropertyList:v11 format:200 options:0 error:v27];
    v14 = v27[0];
    if (v13)
    {
      v15 = sub_2C8DC0();

      return v15;
    }

    v21 = v14;
    sub_2C8D30();

    swift_willThrow();

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v9, v22, v2);
    v23 = sub_2CDFE0();
    v24 = sub_2CE680();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "ExecuteMusicOnRemoteFlow#serializeCommandAsPList failed to serialize command to pList", v25, 2u);
    }

    else
    {
    }

    (*(v3 + 8))(v9, v2);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v7, v17, v2);
    v18 = sub_2CDFE0();
    v19 = sub_2CE680();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "ExecuteMusicOnRemoteFlow#serializeCommandAsPList failed to serialize command to dictionary", v20, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }

  return 0;
}

id sub_B0340(void *a1, uint64_t a2, unint64_t a3)
{
  v47 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v45 - v11;
  if (a3)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v13 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v12, v13, v5);
    v14 = v47;

    v15 = sub_2CDFE0();
    v16 = sub_2CE660();

    if (os_log_type_enabled(v15, v16))
    {
      v46 = v16;
      v17 = 0x3E4C494E3CLL;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45[1] = v19;
      *v18 = 136315650;
      v47 = a2;
      v48 = v19;
      *(v18 + 4) = sub_3F08(a2, a3, &v48);
      *(v18 + 12) = 2080;
      v20 = [v14 refId];
      if (v20)
      {
        v21 = v20;
        v17 = sub_2CE270();
        v23 = v22;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      v30 = sub_3F08(v17, v23, &v48);

      *(v18 + 14) = v30;
      *(v18 + 22) = 2080;
      v31 = [v14 aceId];
      if (v31)
      {
        v32 = v31;
        v33 = sub_2CE270();
        v35 = v34;
      }

      else
      {
        v35 = 0xE500000000000000;
        v33 = 0x3E4C494E3CLL;
      }

      v36 = sub_3F08(v33, v35, &v48);

      *(v18 + 24) = v36;
      _os_log_impl(&dword_0, v15, v46, "ExecuteMusicOnRemoteFlow#wrapCommandForExecution wrapping command for remote execution with assistantID: '%s', refID: '%s', aceID: '%s'", v18, 0x20u);
      swift_arrayDestroy();

      (*(v6 + 8))(v12, v5);
      a2 = v47;
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    v37 = [objc_allocWithZone(SAExecuteOnRemoteRequest) init];
    v38 = sub_AFF94(v14);
    v40 = v39;
    isa = sub_2C8DB0().super.isa;
    sub_52628(v38, v40);
    [v37 setSerializedCommand:isa];

    v42 = [objc_allocWithZone(SARemoteDevice) init];
    v43 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v43 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      v44 = sub_2CE260();
      [v42 setAssistantId:v44];
    }

    [v42 setSiriEnabled:1];
    [v37 setRemoteDevice:v42];
    [v37 setShouldFallbackOnAWDL:0];

    return v37;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v10, v24, v5);
    v25 = sub_2CDFE0();
    v26 = sub_2CE660();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "ExecuteMusicOnRemoteFlow#wrapCommandForExecution wrapping command for remote execution skipped because of null assistantID", v27, 2u);
    }

    (*(v6 + 8))(v10, v5);
    v28 = v47;

    return v28;
  }
}

uint64_t sub_B08C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E664;

  return sub_ABEE8(a1, v5, v4);
}

uint64_t sub_B096C(uint64_t a1)
{
  v1[22] = a1;
  v2 = sub_20410(&qword_34E740, &unk_2D68F0);
  v1[23] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_B0A18, 0, 0);
}

uint64_t sub_B0A18()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(*(v0 + 184) + 48);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 80) = sub_2CC810();
    *(v0 + 88) = &protocol witness table for UserPreferenceProvider;
    sub_F390((v0 + 56));
    v1;
    sub_2CC800();
    *(v0 + 120) = sub_2CB9E0();
    *(v0 + 128) = &protocol witness table for DeviceProvider;
    sub_F390((v0 + 96));
    sub_2CB9C0();
    *(v0 + 160) = sub_2CC2B0();
    *(v0 + 168) = &protocol witness table for FeatureFlagProvider;
    sub_F390((v0 + 136));
    sub_2CC2A0();
    v4 = async function pointer to INIntent.targetBundleIdentifier(userPreferenceProvider:deviceProvider:featureFlagProvider:internalSearchResults:alwaysInferAppFromSearchResults:nowPlaying:)[1];
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *v5 = v0;
    v5[1] = sub_B0BC8;

    return INIntent.targetBundleIdentifier(userPreferenceProvider:deviceProvider:featureFlagProvider:internalSearchResults:alwaysInferAppFromSearchResults:nowPlaying:)(v2 + v3, v0 + 56, v0 + 96, v0 + 136, 0, 0, v0 + 16);
  }

  else
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_B0BC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2)[26];
  v6 = *v2;
  v3[27] = a1;
  v3[28] = a2;

  sub_30B8((v3 + 2), &qword_34E748, &qword_2D26D0);
  sub_306C(v3 + 17);
  sub_306C(v3 + 12);
  sub_306C(v3 + 7);

  return _swift_task_switch(sub_B0CF8, 0, 0);
}

uint64_t sub_B0CF8()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  *v2 = v0[27];
  v2[1] = v1;
  sub_2CCFB0();
  sub_F3F4(v2, v3, &qword_34E740, &unk_2D68F0);
  v6 = *v3;
  v7 = *(v3 + 1);
  v8 = *(v4 + 48);
  v9 = sub_2CCF80();

  sub_30B8(v2, &qword_34E740, &unk_2D68F0);
  v10 = sub_2CC5F0();
  (*(*(v10 - 8) + 8))(&v3[v8], v10);
  v12 = v0[24];
  v11 = v0[25];

  v13 = v0[1];

  return v13(v9);
}

uint64_t sub_B0E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B0E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B0EC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_B0F68()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_B104C()
{
  if (!qword_34E5A0)
  {
    sub_2CA7B0();
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34E5A0);
    }
  }
}

uint64_t sub_B10A4(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_B10C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B1108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_B114C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_B1174(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_B118C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_B1198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_B11E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B1230(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_B124C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B1294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_B12D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_B1300(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24C84;

  return sub_AF06C(a1, v5);
}

uint64_t sub_B13D4(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34E738, &qword_2D26C8) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_AE1B4(a1, v4, v5);
}

uint64_t sub_B1454(uint64_t a1)
{
  v2 = *(*(sub_20410(&qword_34E738, &qword_2D26C8) - 8) + 80);

  return sub_AE304(a1);
}

uint64_t sub_B14D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24C84;

  return sub_AFD8C(a1, v5);
}

uint64_t sub_B1590(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_20410(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_B1614()
{
  v0 = *(sub_20410(&qword_34E750, &unk_2D26F0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);

  sub_20410(&qword_34E750, &unk_2D26F0);
  return sub_2CE4A0();
}

uint64_t getEnumTagSinglePayload for ExecuteOnRemoteError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecuteOnRemoteError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_B1818()
{
  result = qword_34E758;
  if (!qword_34E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34E758);
  }

  return result;
}

void *Determine.UnsupportedValueStrategy.deinit()
{
  v1 = v0[2];

  sub_306C(v0 + 3);
  sub_306C(v0 + 8);
  return v0;
}

unint64_t sub_B18E4(uint64_t a1)
{
  result = sub_B190C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B190C()
{
  result = qword_34E760;
  if (!qword_34E760)
  {
    type metadata accessor for AddMedia.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34E760);
  }

  return result;
}

uint64_t sub_B19C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a8;
  v36 = a6;
  v37 = a3;
  v33 = a4;
  v38 = a10;
  v39 = a5;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput", v21, 2u);
  }

  (*(v14 + 8))(v17, v13);
  v22 = v35;
  v23 = *(v35 + 16);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = a7;
  v25 = v33;
  v27 = v36;
  v26 = v37;
  v24[6] = v34;
  v24[7] = v26;
  v24[8] = v25;
  v24[9] = v27;
  v32 = *(*v23 + 200);

  v28 = a2;

  v29 = v27;
  v32(a1, v26, v25, v29, v28, v39, 0, v38, v24);
}

uint64_t sub_B1C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for AddMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_B1CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for AddMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_B1D8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  v107 = a8;
  v105 = a7;
  v122 = a5;
  v123 = a6;
  v124 = a4;
  v121 = a3;
  v117 = a2;
  v109 = a1;
  v106 = sub_2CCB20();
  v104 = *(v106 - 8);
  v10 = *(v104 + 64);
  __chkstk_darwin(v106);
  v103 = v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&unk_353020, &unk_2D0970);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v111 = v102 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v120 = v102 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v119 = v102 - v20;
  v21 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v118 = v102 - v23;
  v116 = sub_2CCB30();
  v115 = *(v116 - 8);
  v24 = v115[8];
  __chkstk_darwin(v116);
  v112 = v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_2CCAC0();
  v113 = *(v114 - 8);
  v26 = *(v113 + 64);
  __chkstk_darwin(v114);
  v28 = v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v29 = *(*(v110 - 8) + 64);
  v30 = __chkstk_darwin(v110);
  v108 = v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = v102 - v32;
  v34 = sub_2CE000();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = v102 - v40;
  v42 = sub_20410(&unk_3519A0, &qword_2D0980);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = (v102 - v44);
  sub_F3F4(v109, v102 - v44, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = *v45;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v47 = sub_3ED0(v34, static Logger.default);
    swift_beginAccess();
    (*(v35 + 16))(v41, v47, v34);
    swift_errorRetain();
    v48 = sub_2CDFE0();
    v49 = sub_2CE680();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&dword_0, v48, v49, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput dialog provider failed with error: %@", v50, 0xCu);
      sub_30B8(v51, &unk_34FC00, &unk_2D0150);
    }

    (*(v35 + 8))(v41, v34);
    v53 = v113;
    v54 = v114;
    (*(v113 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v114);
    v55 = v115;
    v56 = v112;
    v57 = v116;
    (v115[13])(v112, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v116);
    swift_getErrorValue();
    sub_2CEEF0();
    v111 = sub_2CCAE0();

    (v55[1])(v56, v57);
    (*(v53 + 8))(v28, v54);
    v58 = v117[7];
    v117 = sub_35E0(v117 + 3, v117[6]);
    v59 = enum case for ActivityType.failed(_:);
    v60 = sub_2C9C20();
    v61 = *(v60 - 8);
    v62 = v118;
    (*(v61 + 104))(v118, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    v63 = sub_2CA130();
    v64 = v119;
    (*(*(v63 - 8) + 56))(v119, 1, 1, v63);
    v65 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v66 = sub_2C98F0();
    v67 = *(v66 - 8);
    v68 = v120;
    (*(v67 + 104))(v120, v65, v66);
    (*(v67 + 56))(v68, 0, 1, v66);
    sub_2CB4E0();

    sub_30B8(v68, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v64, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v62, &qword_34CB88, &unk_2D0D90);
    v125[0] = v46;
    v126 = 1;
    swift_errorRetain();
    v122(v125);

    return sub_30B8(v125, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v102[1] = a9;
    sub_24BE0(v45, v33);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v109 = v33;
    v70 = sub_3ED0(v34, static Logger.default);
    swift_beginAccess();
    (*(v35 + 16))(v39, v70, v34);
    v71 = sub_2CDFE0();
    v72 = sub_2CE690();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput acquired dialog.", v73, 2u);
    }

    (*(v35 + 8))(v39, v34);
    a10(v124);
    v74 = v113;
    v75 = v114;
    (*(v113 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.cuvs(_:), v114);
    v76 = v115;
    v77 = v112;
    v78 = v116;
    (v115[13])(v112, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v116);
    v79 = v104;
    v80 = v103;
    v81 = v106;
    (*(v104 + 104))(v103, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v106);
    v107 = sub_2CCB00();
    v105 = v82;
    (*(v79 + 8))(v80, v81);
    (v76[1])(v77, v78);
    (*(v74 + 8))(v28, v75);
    v83 = v117;
    v84 = v117[6];
    v114 = v117[7];
    v115 = sub_35E0(v117 + 3, v84);
    v85 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v86 = sub_2C9C20();
    v87 = *(v86 - 8);
    v88 = v118;
    (*(v87 + 104))(v118, v85, v86);
    (*(v87 + 56))(v88, 0, 1, v86);
    v89 = v108;
    sub_F3F4(v109, v108, &qword_34C6E8, &unk_2D0FF0);

    v90 = sub_2CA130();
    v116 = v90;
    v91 = *(v90 - 8);
    v92 = v119;
    (*(v91 + 32))(v119, v89, v90);
    (*(v91 + 56))(v92, 0, 1, v90);
    v93 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
    v94 = sub_2C98F0();
    v95 = *(v94 - 8);
    v96 = v120;
    (*(v95 + 104))(v120, v93, v94);
    (*(v95 + 56))(v96, 0, 1, v94);
    sub_2CB4E0();

    sub_30B8(v96, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v92, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v88, &qword_34CB88, &unk_2D0D90);
    v97 = sub_35E0(v83 + 8, v83[11]);
    v98 = v109;
    sub_F3F4(v109, v89, &qword_34C6E8, &unk_2D0FF0);
    v99 = *(v89 + *(v110 + 48));
    v100 = *v97;
    v101 = v111;
    sub_1C077C(v89, v99, v111, _swiftEmptyArrayStorage, v122, v123);

    sub_30B8(v101, &unk_353020, &unk_2D0970);
    sub_30B8(v98, &qword_34C6E8, &unk_2D0FF0);
    return (*(v91 + 8))(v89, v116);
  }
}

uint64_t sub_B2CD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_B2D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v99 = a4;
  v100 = a5;
  v96 = a3;
  v82 = a6;
  v8 = sub_20410(&qword_34E938, &qword_2D28E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v95 = &v75 - v10;
  v11 = sub_20410(&qword_34E940, &qword_2D28E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v75 - v13;
  v101 = sub_2CE050();
  isa = v101[-1].isa;
  v15 = *(isa + 8);
  v16 = __chkstk_darwin(v101);
  v94 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v86 = &v75 - v18;
  v84 = sub_2CE000();
  v80 = *(v84 - 8);
  v19 = *(v80 + 64);
  __chkstk_darwin(v84);
  v83 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2CA000();
  v79 = *(v81 - 8);
  v21 = *(v79 + 64);
  v22 = __chkstk_darwin(v81);
  v76 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v78 = &v75 - v25;
  __chkstk_darwin(v24);
  v85 = &v75 - v26;
  v93 = sub_20410(&qword_34CCA0, &unk_2D0DD0);
  v27 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v29 = &v75 - v28;
  v30 = sub_2C8E80();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = 0;
  v102 = _swiftEmptyArrayStorage;
  v35 = *(a2 + 16);
  v97 = v35;
  if (v35)
  {
    v92 = v30;
    v98 = v14;
    v36 = *(sub_2CE0A0() - 8);
    v37 = a2 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v38 = *(v36 + 72);
    do
    {
      sub_B6518(v37, &v104, a2, a1, v99, v100, &v103);
      sub_80C08(v103);
      v37 += v38;
      --v35;
    }

    while (v35);
    v77 = v102;
    v35 = v97;
    v14 = v98;
    v30 = v92;
  }

  else
  {
    v77 = _swiftEmptyArrayStorage;
  }

  sub_2C8E70();
  v92 = sub_2C8E50();
  v98 = v39;
  (*(v31 + 8))(v34, v30);
  if (v35)
  {
    v40 = 0;
    v91 = sub_2CE0A0();
    v41 = *(v91 - 8);
    v42 = *(v41 + 16);
    v41 += 16;
    v90 = v42;
    v43 = (isa + 48);
    v44 = (isa + 32);
    v45 = _swiftEmptyArrayStorage;
    v46 = a2 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v88 = *(v41 + 56);
    v89 = v41;
    do
    {
      v47 = *(v93 + 48);
      *v29 = v40;
      v90(&v29[v47], v46, v91);

      v48 = v95;
      sub_2CE020();
      v49 = sub_2CE030();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_2CE070();
      sub_30B8(v48, &qword_34E938, &qword_2D28E0);
      sub_30B8(v29, &qword_34CCA0, &unk_2D0DD0);
      v50 = v101;
      if ((*v43)(v14, 1, v101) == 1)
      {
        sub_30B8(v14, &qword_34E940, &qword_2D28E8);
      }

      else
      {
        v51 = v14;
        v52 = *v44;
        v53 = v86;
        v54 = v51;
        (*v44)(v86);
        (v52)(v94, v53, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_B94C4(0, v45[2] + 1, 1, v45, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v56 = v45[2];
        v55 = v45[3];
        if (v56 >= v55 >> 1)
        {
          v45 = sub_B94C4(v55 > 1, v56 + 1, 1, v45, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v45[2] = v56 + 1;
        (v52)(v45 + ((*(isa + 80) + 32) & ~*(isa + 80)) + *(isa + 9) * v56, v94, v101);
        v14 = v54;
      }

      ++v40;
      v46 += v88;
    }

    while (v97 != v40);
  }

  v57 = v85;
  sub_B6238(v85);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v58 = v84;
  v59 = sub_3ED0(v84, static Logger.default);
  swift_beginAccess();
  v60 = v80;
  v61 = v83;
  (*(v80 + 16))(v83, v59, v58);
  v62 = v79;
  v63 = *(v79 + 16);
  v64 = v78;
  v65 = v81;
  v63(v78, v57, v81);
  v66 = sub_2CDFE0();
  v67 = sub_2CE670();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v103 = v101;
    *v68 = 136315138;
    v63(v76, v64, v65);
    v69 = sub_2CE2A0();
    v71 = v70;
    (*(v62 + 8))(v64, v65);
    v72 = sub_3F08(v69, v71, &v103);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_0, v66, v67, "CommonNLContextProvider#makeDisambiguationContextForMediaDestination for update: %s", v68, 0xCu);
    sub_306C(v101);

    (*(v60 + 8))(v83, v84);
  }

  else
  {

    (*(v62 + 8))(v64, v65);
    (*(v60 + 8))(v61, v58);
  }

  v73 = v82;
  (*(v62 + 32))(v82, v85, v65);
  return (*(v62 + 56))(v73, 0, 1, v65);
}

uint64_t sub_B37D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v92 = a3;
  v93 = a4;
  v91 = a2;
  v76 = a5;
  v78 = sub_2CE000();
  v74 = *(v78 - 8);
  v6 = *(v74 + 64);
  __chkstk_darwin(v78);
  v77 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2CA000();
  v73 = *(v75 - 8);
  v8 = *(v73 + 64);
  v9 = __chkstk_darwin(v75);
  v70 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v70 - v12;
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  v16 = sub_20410(&qword_34E938, &qword_2D28E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v70 - v18;
  v20 = sub_20410(&qword_34E940, &qword_2D28E8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v84 = &v70 - v22;
  v23 = sub_2CE050();
  v83 = *(v23 - 8);
  v24 = *(v83 + 64);
  v25 = __chkstk_darwin(v23);
  v90 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v82 = &v70 - v27;
  v28 = sub_2C8E80();
  v89 = *(v28 - 8);
  v29 = *(v89 + 64);
  __chkstk_darwin(v28);
  v88 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_736BC();
  v31 = sub_2CE5C0();
  v32 = v31;
  v97 = 0;
  v94 = _swiftEmptyArrayStorage;
  v87 = v31 >> 62;
  if (v31 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2CEDA0())
  {
    v79 = v15;
    v72 = v13;
    if (i)
    {
      v85 = v28;
      v86 = v23;
      v13 = 0;
      v15 = 0;
      v23 = v32 & 0xC000000000000001;
      v28 = v32 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v23)
        {
          v34 = sub_2CECD0();
        }

        else
        {
          if (v13 >= *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_37;
          }

          v34 = *(v32 + 8 * v13 + 32);
        }

        v35 = v34;
        v36 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v96 = v34;
        sub_B4DE8(&v96, &v97, v32, a1, v92, v93, &v95);

        sub_80C08(v95);
        ++v13;
        if (v36 == i)
        {
          v71 = v94;
          v28 = v85;
          v23 = v86;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v71 = _swiftEmptyArrayStorage;
LABEL_13:
    v37 = v88;
    sub_2C8E70();
    v38 = sub_2C8E50();
    a1 = v39;
    (*(v89 + 8))(v37, v28);
    v15 = v84;
    if (!v87)
    {
      v40 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
      if (!v40)
      {
        break;
      }

      goto LABEL_15;
    }

    v40 = sub_2CEDA0();
    if (!v40)
    {
      break;
    }

LABEL_15:
    v41 = 0;
    v88 = (v32 & 0xFFFFFFFFFFFFFF8);
    v89 = v32 & 0xC000000000000001;
    v85 = (v83 + 32);
    v86 = (v83 + 48);
    v13 = _swiftEmptyArrayStorage;
    v87 = v40;
    v80 = a1;
    v81 = v38;
    while (1)
    {
      if (v89)
      {
        v42 = sub_2CECD0();
      }

      else
      {
        if (v41 >= *(v88 + 2))
        {
          goto LABEL_39;
        }

        v42 = *(v32 + 8 * v41 + 32);
      }

      v43 = v42;
      v28 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      sub_2CE020();
      v44 = sub_2CE030();
      (*(*(v44 - 8) + 56))(v19, 0, 1, v44);
      sub_2CE5A0();
      sub_30B8(v19, &qword_34E938, &qword_2D28E0);

      if ((*v86)(v15, 1, v23) == 1)
      {
        sub_30B8(v15, &qword_34E940, &qword_2D28E8);
      }

      else
      {
        v45 = v19;
        v46 = v32;
        v47 = v23;
        v48 = *v85;
        v49 = v82;
        (*v85)(v82, v15, v47);
        v48(v90, v49, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_B94C4(0, *(v13 + 16) + 1, 1, v13, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v51 = *(v13 + 16);
        v50 = *(v13 + 24);
        if (v51 >= v50 >> 1)
        {
          v13 = sub_B94C4(v50 > 1, v51 + 1, 1, v13, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        *(v13 + 16) = v51 + 1;
        v48((v13 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v51), v90, v47);
        v23 = v47;
        v15 = v84;
        v32 = v46;
        v19 = v45;
        a1 = v80;
      }

      ++v41;
      if (v28 == v87)
      {
        goto LABEL_30;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_30:

  v52 = v79;
  sub_B6238(v79);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v53 = v78;
  v54 = sub_3ED0(v78, static Logger.default);
  swift_beginAccess();
  v55 = v74;
  v56 = v77;
  (*(v74 + 16))(v77, v54, v53);
  v57 = v73;
  v58 = *(v73 + 16);
  v59 = v72;
  v60 = v75;
  v58(v72, v52, v75);
  v61 = sub_2CDFE0();
  v62 = sub_2CE670();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v96 = v93;
    *v63 = 136315138;
    v58(v70, v59, v60);
    v64 = sub_2CE2A0();
    v66 = v65;
    (*(v57 + 8))(v59, v60);
    v67 = sub_3F08(v64, v66, &v96);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_0, v61, v62, "CommonNLContextProvider#makeDisambiguationContextForMediaItems for update: %s", v63, 0xCu);
    sub_306C(v93);

    (*(v55 + 8))(v77, v78);
  }

  else
  {

    (*(v57 + 8))(v59, v60);
    (*(v55 + 8))(v56, v53);
  }

  v68 = v76;
  (*(v57 + 32))(v76, v79, v60);
  return (*(v57 + 56))(v68, 0, 1, v60);
}

uint64_t sub_B422C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2C8E80();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  __chkstk_darwin(v2);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34E9A0, &qword_2D2950);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v49 = &v45 - v7;
  v51 = sub_2CA940();
  v48 = *(v51 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin(v51);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2CAA40();
  v52 = *(v59 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v59);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2CA9C0();
  v47 = *(v60 - 8);
  v12 = *(v47 + 64);
  v13 = __chkstk_darwin(v60);
  v46 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = sub_2CA990();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_2CAA00();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v45 - v25;
  sub_B4888(a1);
  sub_2C9F50();
  v27 = sub_2CA520();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_2CA510();
  sub_2CCF90();
  sub_2CA4E0();

  sub_2CA500();

  v30 = v48;
  v31 = v45;
  v56 = a1;
  sub_2C9FE0();
  sub_2CA9F0();
  sub_2CA980();
  sub_2CA9E0();
  sub_2CA9B0();
  v50 = v20;
  v32 = *(v20 + 16);
  v53 = v19;
  v32(v24, v26, v19);
  v33 = v47;
  sub_2CA9A0();
  sub_2CAA30();
  (*(v33 + 16))(v46, v16, v60);
  v34 = v49;
  sub_2CAA20();
  v35 = v54;
  sub_2C8E70();
  sub_2CAA70();
  (*(v57 + 8))(v35, v58);
  v36 = *(v30 + 48);
  v37 = v51;
  if ((v36)(v34, 1) == 1)
  {
    sub_2CA930();
    if (v36(v34, 1, v37) != 1)
    {
      sub_30B8(v34, &qword_34E9A0, &qword_2D2950);
    }
  }

  else
  {
    (*(v30 + 32))(v55, v34, v37);
  }

  sub_2CAA10();
  sub_20410(&qword_34E9A8, &qword_2D2958);
  v38 = v52;
  v39 = *(v52 + 72);
  v40 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2D0090;
  v42 = v41 + v40;
  v43 = v59;
  (*(v38 + 16))(v42, v31, v59);
  sub_2C9F30();
  (*(v38 + 8))(v31, v43);
  (*(v33 + 8))(v16, v60);
  return (*(v50 + 8))(v26, v53);
}

uint64_t sub_B4888@<X0>(uint64_t a1@<X8>)
{
  v37[0] = a1;
  v1 = sub_2CDAA0();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  __chkstk_darwin(v1);
  v39 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v38 = v37 - v6;
  sub_2C9FF0();
  sub_C3828(0);
  sub_2C9F70();
  v37[1] = sub_20410(&unk_356F40, &unk_2D0740);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2D1010;
  v46 = sub_2CE2C0();
  v47 = v8;
  v44 = 32;
  v45 = 0xE100000000000000;
  v42 = 95;
  v43 = 0xE100000000000000;
  sub_B96A0();
  sub_2CEBD0();

  v46 = sub_C3828(1);
  v47 = v9;
  v48._countAndFlagsBits = 0x2E65756C61562ELL;
  v48._object = 0xE700000000000000;
  sub_2CE350(v48);
  v10 = sub_2CE2C0();
  v12 = v11;

  v49._countAndFlagsBits = v10;
  v49._object = v12;
  sub_2CE350(v49);

  v13 = v47;
  *(v7 + 32) = v46;
  *(v7 + 40) = v13;
  v46 = sub_2CE2C0();
  v47 = v14;
  v44 = 32;
  v45 = 0xE100000000000000;
  v42 = 95;
  v43 = 0xE100000000000000;
  sub_2CEBD0();

  v46 = sub_C3828(1);
  v47 = v15;
  v50._countAndFlagsBits = 0x2E65756C61562ELL;
  v50._object = 0xE700000000000000;
  sub_2CE350(v50);
  v16 = sub_2CE2C0();
  v18 = v17;

  v51._countAndFlagsBits = v16;
  v51._object = v18;
  sub_2CE350(v51);

  v19 = v47;
  *(v7 + 48) = v46;
  *(v7 + 56) = v19;
  v46 = sub_2CE2C0();
  v47 = v20;
  v44 = 32;
  v45 = 0xE100000000000000;
  v42 = 95;
  v43 = 0xE100000000000000;
  sub_2CEBD0();

  v46 = sub_C3828(1);
  v47 = v21;
  v52._countAndFlagsBits = 0x2E65756C61562ELL;
  v52._object = 0xE700000000000000;
  sub_2CE350(v52);
  v22 = sub_2CE2C0();
  v24 = v23;

  v53._countAndFlagsBits = v22;
  v53._object = v24;
  sub_2CE350(v53);

  v25 = v47;
  *(v7 + 64) = v46;
  *(v7 + 72) = v25;
  v46 = sub_2CE2C0();
  v47 = v26;
  v44 = 32;
  v45 = 0xE100000000000000;
  v42 = 95;
  v43 = 0xE100000000000000;
  sub_2CEBD0();

  v46 = sub_C3828(1);
  v47 = v27;
  v54._countAndFlagsBits = 0x2E65756C61562ELL;
  v54._object = 0xE700000000000000;
  sub_2CE350(v54);
  v28 = sub_2CE2C0();
  v30 = v29;

  v55._countAndFlagsBits = v28;
  v55._object = v30;
  sub_2CE350(v55);

  v31 = v47;
  *(v7 + 80) = v46;
  *(v7 + 88) = v31;
  sub_2C9F90();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2D0090;
  *(v32 + 32) = sub_C3828(1);
  *(v32 + 40) = v33;
  sub_2C9FA0();
  sub_2C9F50();
  (*(v40 + 104))(v39, enum case for PommesContext.Source.pluginDefined(_:), v41);
  v34 = v38;
  sub_2CDAB0();
  v35 = sub_2CDAC0();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  return sub_2C9F20();
}

uint64_t sub_B4DE8@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v90 = a6;
  v89 = a5;
  v98 = a2;
  v93 = a7;
  v97 = sub_2CE000();
  v92 = *(v97 - 1);
  v10 = *(v92 + 64);
  __chkstk_darwin(v97);
  v91 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34E960, &qword_2D28F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v100 = &v85 - v14;
  v101 = sub_2C9BA0();
  v102 = *(v101 - 8);
  v15 = *(v102 + 64);
  v16 = __chkstk_darwin(v101);
  v85 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v87 = &v85 - v19;
  v20 = __chkstk_darwin(v18);
  v96 = &v85 - v21;
  __chkstk_darwin(v20);
  v94 = &v85 - v22;
  v23 = sub_2C9CC0();
  v103 = *(v23 - 8);
  v24 = *(v103 + 64);
  v25 = __chkstk_darwin(v23);
  v88 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v86 = &v85 - v28;
  v29 = __chkstk_darwin(v27);
  v95 = &v85 - v30;
  v31 = __chkstk_darwin(v29);
  v99 = &v85 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v85 - v34;
  __chkstk_darwin(v33);
  v37 = &v85 - v36;
  v38 = *a1;
  v106 = _swiftEmptyArrayStorage;
  sub_2C9CB0();
  sub_2C9C70();
  v39 = [v38 identifier];
  if (v39)
  {
    v40 = v39;
    sub_2CE270();
  }

  sub_2C9C90();
  sub_C3828(4);
  sub_2C9CA0();
  v41 = *v98;
  v42 = v103;
  if (a3 >> 62)
  {
    v84 = *v98;
    v43 = sub_2CEDA0();
    v41 = v84;
  }

  else
  {
    v43 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  }

  v44 = sub_B5CB0(v41, v43, v37, v89, v90);
  sub_80C08(v44);
  v45 = [v38 title];
  if (!v45)
  {
    goto LABEL_10;
  }

  v90 = a4;
  v46 = v45;
  sub_2CE270();

  sub_2C9CB0();
  sub_2C9C70();
  v47 = v103;
  sub_2C9C90();
  sub_C3828(2);
  sub_2C9CA0();
  v48 = *(v47 + 16);
  v49 = v100;
  v50 = v37;
  v48(v100, v37, v23);
  (*(v47 + 56))(v49, 0, 1, v23);
  v51 = v23;
  v48(v99, v35, v23);
  sub_2C9B90();
  v52 = v106;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v54 = *(v52 + 16);
    v53 = *(v52 + 24);
    v37 = v50;
    if (v54 >= v53 >> 1)
    {
      v52 = sub_B94C4(v53 > 1, v54 + 1, 1, v52, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v23 = v51;
    v42 = v103;
    (*(v103 + 8))(v35, v23);
    *(v52 + 16) = v54 + 1;
    (*(v102 + 32))(v52 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v54, v94, v101);
    v106 = v52;
LABEL_10:
    v55 = [v38 artist];
    v38 = v97;
    if (v55)
    {
      v56 = v55;
      sub_2CE270();

      v57 = v95;
      sub_2C9CB0();
      sub_2C9C70();
      sub_2C9C90();
      sub_C3828(3);
      sub_2C9CA0();
      v58 = *(v42 + 16);
      v59 = v100;
      v58(v100, v37, v23);
      (*(v42 + 56))(v59, 0, 1, v23);
      v58(v99, v57, v23);
      sub_2C9B90();
      v60 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_B94C4(0, v60[2] + 1, 1, v60, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      v62 = v60[2];
      v61 = v60[3];
      if (v62 >= v61 >> 1)
      {
        v60 = sub_B94C4(v61 > 1, v62 + 1, 1, v60, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      v38 = v97;
      (*(v42 + 8))(v95, v23);
      v60[2] = v62 + 1;
      (*(v102 + 32))(v60 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v62, v96, v101);
      v106 = v60;
    }

    v63 = sub_2CBD10();
    v64 = v92;
    v50 = v91;
    if (v65)
    {
      v66 = v63;
      sub_2CCFB0();

      v96 = v66;
      v67 = sub_2CCF80();
      type metadata accessor for AppInfoBuilder();
      swift_initStackObject();
      if (qword_34BFB8 != -1)
      {
        swift_once();
      }

      sub_285EC(&static StringsBackedAppNameResolver.shared, v104);
      sub_B96F4(v67, v104, _swiftEmptyArrayStorage, v105);
      if (v105[1])
      {
        v68 = v86;
        sub_2C9CB0();
        sub_2C9C70();

        sub_2C9C90();
        sub_C3828(6);
        sub_2C9CA0();
        v69 = *(v42 + 16);
        v70 = v100;
        v69(v100, v37, v23);
        v95 = *(v42 + 56);
        (v95)(v70, 0, 1, v23);
        v97 = v69;
        v69(v99, v68, v23);
        sub_2C9B90();
        v71 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_B94C4(0, v71[2] + 1, 1, v71, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v73 = v71[2];
        v72 = v71[3];
        if (v73 >= v72 >> 1)
        {
          v71 = sub_B94C4(v72 > 1, v73 + 1, 1, v71, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v35 = *(v103 + 8);
        v103 += 8;
        (v35)(v86, v23);
        v71[2] = v73 + 1;
        v74 = *(v102 + 32);
        v92 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v91 = *(v102 + 72);
        v102 += 32;
        v94 = v74;
        (v74)(v71 + v92 + v91 * v73, v87, v101);
        v75 = v88;
        sub_2C9CB0();
        sub_2C9C70();
        sub_2C9C90();
        sub_C3828(5);
        sub_2C9CA0();
        v76 = v100;
        v96 = v37;
        v50 = v97;
        (v97)(v100, v37, v23);
        (v95)(v76, 0, 1, v23);
        (v50)(v99, v75, v23);
        v51 = v85;
        sub_2C9B90();
        v52 = v71[2];
        v77 = v71[3];
        if (v52 >= v77 >> 1)
        {
          v71 = sub_B94C4(v77 > 1, v52 + 1, 1, v71, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        sub_30B8(v105, &qword_34E968, &unk_2D2900);
        v38 = v103;
        (v35)(v88, v23);
        (v35)(v96, v23);
        v71[2] = v52 + 1;
        result = (v94)(v71 + v92 + v52 * v91, v51, v101);
        v106 = v71;
        goto LABEL_33;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v79 = sub_3ED0(v38, static Logger.default);
    swift_beginAccess();
    (*(v64 + 16))(v50, v79, v38);
    v80 = sub_2CDFE0();
    v52 = sub_2CE680();
    if (os_log_type_enabled(v80, v52))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_0, v80, v52, "CommonNLContextProvider#makeDisambiguationContextForMediaItems unexpected missing bundle identifier from launchId", v81, 2u);
    }

    v82 = *(v64 + 8);
    v35 = (v64 + 8);
    v82(v50, v38);
    v83 = *(v42 + 8);
    v51 = (v42 + 8);
    result = v83(v37, v23);
LABEL_33:
    *v93 = v106;
    if (!__OFADD__(*v98, 1))
    {
      break;
    }

    __break(1u);
LABEL_37:
    v52 = sub_B94C4(0, *(v52 + 16) + 1, 1, v52, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  }

  ++*v98;
  return result;
}

void *sub_B5CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v9 = sub_2C9BA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v34 - v19;
  __chkstk_darwin(v18);
  v21 = &v34;
  v23 = &v34 - v22;
  if (a1 > 24)
  {
    v6 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  if (a1 < 0)
  {
    goto LABEL_27;
  }

  v34 = v14;
  v24 = &off_32F330 + 2 * a1;
  v25 = v24[4];
  v26 = v24[5];

  sub_B8AB4(v35);

  v6 = sub_B94C4(0, 1, 1, _swiftEmptyArrayStorage, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  v14 = v6[2];
  v21 = v6[3];
  v5 = v14 + 1;
  if (v14 >= v21 >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v6[2] = v5;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v23, v9);
    v14 = v34;
LABEL_6:
    v21 = a2 - 3;
    if (!__OFSUB__(a2, 3))
    {
      break;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v6 = sub_B94C4(v21 > 1, v5, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  }

  if (v21 == a1)
  {
    sub_B8AB4(v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_B94C4(0, v6[2] + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v28 = v6[2];
    v27 = v6[3];
    if (v28 >= v27 >> 1)
    {
      v6 = sub_B94C4(v27 > 1, v28 + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v6[2] = v28 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v20, v9);
  }

  if (a2 - 2 == a1)
  {
    sub_B8AB4(v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_B94C4(0, v6[2] + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v30 = v6[2];
    v29 = v6[3];
    if (v30 >= v29 >> 1)
    {
      v6 = sub_B94C4(v29 > 1, v30 + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v6[2] = v30 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v17, v9);
  }

  if (a2 - 1 == a1)
  {
    sub_B8AB4(v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_B94C4(0, v6[2] + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v32 = v6[2];
    v31 = v6[3];
    if (v32 >= v31 >> 1)
    {
      v6 = sub_B94C4(v31 > 1, v32 + 1, 1, v6, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    v6[2] = v32 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, v14, v9);
  }

  return v6;
}

uint64_t sub_B6238@<X0>(uint64_t a1@<X8>)
{
  sub_B4888(a1);
  sub_C3828(0);
  sub_2C9F70();
  sub_2C9F50();
  sub_20410(&unk_356F40, &unk_2D0740);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_B96A0();
  sub_2CEBD0();

  v15 = sub_C3828(1);
  v17 = v2;
  v19._countAndFlagsBits = 0x2E65756C61562ELL;
  v19._object = 0xE700000000000000;
  sub_2CE350(v19);
  v3 = sub_2CE2C0();
  v5 = v4;

  v20._countAndFlagsBits = v3;
  v20._object = v5;
  sub_2CE350(v20);

  *(v1 + 32) = v15;
  *(v1 + 40) = v17;
  sub_2C9F60();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2D0E40;
  *(v6 + 32) = sub_C3828(7);
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_C3828(1);
  *(v6 + 56) = v8;
  sub_2C9FA0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_2CEBD0();

  v16 = sub_C3828(1);
  v18 = v10;
  v21._countAndFlagsBits = 0x2E65756C61562ELL;
  v21._object = 0xE700000000000000;
  sub_2CE350(v21);
  v11 = sub_2CE2C0();
  v13 = v12;

  v22._countAndFlagsBits = v11;
  v22._object = v13;
  sub_2CE350(v22);

  *(v9 + 32) = v16;
  *(v9 + 40) = v18;
  sub_2C9F90();

  sub_2C9F10();

  return sub_2C9F00();
}

uint64_t sub_B6518@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(char *, char *, uint64_t)@<X5>, NSObject **a7@<X8>)
{
  v75 = a6;
  v76 = a4;
  v86 = a1;
  v80 = a7;
  v79 = sub_2CE000();
  v78 = *(v79 - 1);
  v10 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34E960, &qword_2D28F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v82 = &v70 - v14;
  v83 = sub_2C9BA0();
  v85 = *(v83 - 8);
  v15 = *(v85 + 64);
  v16 = __chkstk_darwin(v83);
  v71 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v73 = &v70 - v19;
  __chkstk_darwin(v18);
  v21 = &v70 - v20;
  v22 = sub_2C9CC0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v74 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v72 = &v70 - v28;
  v29 = __chkstk_darwin(v27);
  v81 = &v70 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v70 - v32;
  __chkstk_darwin(v31);
  v35 = &v70 - v34;
  v89 = _swiftEmptyArrayStorage;
  sub_2C9CB0();
  sub_2C9C70();
  sub_2C9C90();
  sub_C3828(4);
  sub_2C9CA0();
  v84 = a2;
  v36 = sub_B5CB0(*a2, *(a3 + 16), v35, a5, v75);
  sub_80C08(v36);
  sub_2CE060();
  v86 = v23;
  if (!v37)
  {
    goto LABEL_6;
  }

  sub_2C9CB0();
  sub_2C9C70();
  sub_2C9C90();
  sub_C3828(8);
  sub_2C9CA0();
  v38 = *(v23 + 16);
  v39 = v82;
  v38(v82, v35, v22);
  (*(v23 + 56))(v39, 0, 1, v22);
  v38(v81, v33, v22);
  sub_2C9B90();
  v40 = v89;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    isa = v40[2].isa;
    v41 = v40[3].isa;
    if (isa >= v41 >> 1)
    {
      v40 = sub_B94C4(v41 > 1, isa + 1, 1, v40, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
    }

    (*(v86 + 8))(v33, v22);
    v40[2].isa = (isa + 1);
    (*(v85 + 32))(v40 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * isa, v21, v83);
    v89 = v40;
LABEL_6:
    v43 = sub_2CBD10();
    v44 = v79;
    v45 = v78;
    v33 = v77;
    v46 = v84;
    if (v47)
    {
      v48 = v43;
      sub_2CCFB0();

      v76 = v48;
      v49 = sub_2CCF80();
      type metadata accessor for AppInfoBuilder();
      swift_initStackObject();
      if (qword_34BFB8 != -1)
      {
        swift_once();
      }

      sub_285EC(&static StringsBackedAppNameResolver.shared, v87);
      sub_B96F4(v49, v87, _swiftEmptyArrayStorage, v88);
      if (v88[1])
      {
        v50 = v72;
        sub_2C9CB0();
        sub_2C9C70();

        sub_2C9C90();
        sub_C3828(6);
        sub_2C9CA0();
        v51 = v86;
        v52 = *(v86 + 16);
        v53 = v82;
        v52(v82, v35, v22);
        v78 = *(v51 + 56);
        (v78)(v53, 0, 1, v22);
        v79 = v52;
        v52(v81, v50, v22);
        sub_2C9B90();
        v40 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_B94C4(0, v40[2].isa + 1, 1, v40, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v55 = v40[2].isa;
        v54 = v40[3].isa;
        if (v55 >= v54 >> 1)
        {
          v40 = sub_B94C4(v54 > 1, v55 + 1, 1, v40, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v56 = *(v86 + 8);
        v86 += 8;
        v77 = v56;
        (v56)(v72, v22);
        v40[2].isa = (v55 + 1);
        v57 = *(v85 + 32);
        v72 = ((*(v85 + 80) + 32) & ~*(v85 + 80));
        v70 = *(v85 + 72);
        v85 += 32;
        v75 = v57;
        v57(&v72[v40 + v70 * v55], v73, v83);
        v58 = v74;
        sub_2C9CB0();
        sub_2C9C70();
        sub_2C9C90();
        sub_C3828(5);
        sub_2C9CA0();
        v59 = v82;
        v60 = v79;
        v79(v82, v35, v22);
        (v78)(v59, 0, 1, v22);
        v60(v81, v58, v22);
        v61 = v71;
        sub_2C9B90();
        v21 = v40[2].isa;
        v62 = v40[3].isa;
        if (v21 >= v62 >> 1)
        {
          v40 = sub_B94C4(v62 > 1, v21 + 1, 1, v40, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v46 = v84;
        sub_30B8(v88, &qword_34E968, &unk_2D2900);
        v33 = v77;
        (v77)(v74, v22);
        (v33)(v35, v22);
        v40[2].isa = (v21 + 1);
        result = v75(&v72[v40 + v21 * v70], v61, v83);
        v89 = v40;
        goto LABEL_24;
      }
    }

    v64 = v86;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v65 = sub_3ED0(v44, static Logger.default);
    swift_beginAccess();
    (*(v45 + 16))(v33, v65, v44);
    v40 = sub_2CDFE0();
    v66 = sub_2CE680();
    if (os_log_type_enabled(v40, v66))
    {
      v67 = v33;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v40, v66, "CommonNLContextProvider#makeDisambiguationContextForMediaDestination unexpected missing bundle identifier from launchId", v33, 2u);

      v68 = v67;
      v46 = v84;
      (*(v45 + 8))(v68, v44);
    }

    else
    {

      (*(v45 + 8))(v33, v44);
    }

    v69 = *(v64 + 8);
    v21 = v64 + 8;
    result = v69(v35, v22);
LABEL_24:
    *v80 = v89;
    if (!__OFADD__(*v46, 1))
    {
      break;
    }

    __break(1u);
LABEL_27:
    v40 = sub_B94C4(0, v40[2].isa + 1, 1, v40, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
  }

  ++*v46;
  return result;
}

uint64_t sub_B70E0@<X0>(uint64_t a1@<X8>)
{
  sub_B4888(a1);
  sub_C3828(0);
  sub_2C9F70();
  sub_2C9F50();
  sub_20410(&unk_356F40, &unk_2D0740);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_B96A0();
  sub_2CEBD0();

  v9 = sub_C3828(1);
  v10 = v3;
  v11._countAndFlagsBits = 0x2E65756C61562ELL;
  v11._object = 0xE700000000000000;
  sub_2CE350(v11);
  v4 = sub_2CE2C0();
  v6 = v5;

  v12._countAndFlagsBits = v4;
  v12._object = v6;
  sub_2CE350(v12);

  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  sub_2C9F60();
  sub_2C9F40();
  v7 = sub_2CA000();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_B7294@<X0>(uint64_t a1@<X8>)
{
  sub_B4888(a1);
  sub_C3828(0);
  sub_2C9F70();
  sub_2C9F50();
  sub_20410(&unk_356F40, &unk_2D0740);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2D0090;
  sub_2CE2C0();
  sub_B96A0();
  sub_2CEBD0();

  v9 = sub_C3828(1);
  v10 = v3;
  v11._countAndFlagsBits = 0x2E65756C61562ELL;
  v11._object = 0xE700000000000000;
  sub_2CE350(v11);
  v4 = sub_2CE2C0();
  v6 = v5;

  v12._countAndFlagsBits = v4;
  v12._object = v6;
  sub_2CE350(v12);

  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  sub_2C9F60();
  v7 = sub_2CA000();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_B7440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v103 = a2;
  v90 = a1;
  v99 = a4;
  v4 = sub_2CA000();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  v6 = __chkstk_darwin(v4);
  v86 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v96 = &v85 - v9;
  __chkstk_darwin(v8);
  v11 = &v85 - v10;
  v12 = sub_20410(&qword_34E938, &qword_2D28E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v111 = &v85 - v14;
  v15 = sub_20410(&qword_34E940, &qword_2D28E8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v107 = &v85 - v17;
  v113 = sub_2CE050();
  v106 = *(v113 - 1);
  v18 = *(v106 + 64);
  v19 = __chkstk_darwin(v113);
  v110 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v105 = &v85 - v21;
  v108 = sub_2C8E80();
  v22 = *(v108 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v108);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v100 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v85 - v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v34 = v27[2];
  v92 = v27 + 2;
  v93 = v33;
  v91 = v34;
  v34(v32, v33, v26);
  v35 = sub_2CDFE0();
  v36 = sub_2CE670();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "CommonNLContextProvider#makeAppNeedsDisambiguation", v37, 2u);
  }

  v104 = v11;

  v38 = v27[1];
  v101 = v26;
  v94 = v38;
  v95 = v27 + 1;
  v38(v32, v26);
  v39 = sub_2CA520();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_2CA510();
  v88 = sub_2CA500();
  v89 = v42;

  v43 = type metadata accessor for AppInfoBuilder();
  inited = swift_initStackObject();
  *&v121 = v43;
  *(&v121 + 1) = &off_333AB0;
  v119 = inited;
  v45 = v90;
  v87 = sub_BB2CC(v90);
  sub_306C(&v119);
  sub_2C8E70();
  v109 = sub_2C8E50();
  v112 = v46;
  (*(v22 + 8))(v25, v108);
  v108 = *(v45 + 16);
  if (v108)
  {
    v47 = 0;
    v48 = v45 + 32;
    v49 = v107;
    v50 = (v106 + 48);
    v51 = (v106 + 32);
    v52 = _swiftEmptyArrayStorage;
    do
    {
      v53 = *(v48 + 48);
      v116 = *(v48 + 32);
      v117 = v53;
      v118 = *(v48 + 64);
      v119 = v47;
      v54 = *(v48 + 16);
      v115[0] = *v48;
      v115[1] = v54;
      v121 = v54;
      v122 = v116;
      v123 = v53;
      v124 = v118;
      v120 = v115[0];
      v129 = v118;
      v127 = v116;
      v128 = v53;
      v125 = v115[0];
      v126 = v54;
      sub_333FC(v115, &v114);

      v55 = v111;
      sub_2CE020();
      v56 = sub_2CE030();
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
      sub_DF23C(v55, v49);
      sub_30B8(v55, &qword_34E938, &qword_2D28E0);
      sub_30B8(&v119, &qword_34E988, &qword_2D2928);
      v57 = v113;
      if ((*v50)(v49, 1, v113) == 1)
      {
        sub_30B8(v49, &qword_34E940, &qword_2D28E8);
      }

      else
      {
        v58 = v49;
        v59 = *v51;
        v60 = v105;
        (*v51)(v105, v58, v57);
        v59(v110, v60, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_B94C4(0, *(v52 + 2) + 1, 1, v52, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        v62 = *(v52 + 2);
        v61 = *(v52 + 3);
        if (v62 >= v61 >> 1)
        {
          v52 = sub_B94C4(v61 > 1, v62 + 1, 1, v52, &qword_34E950, &qword_2D5350, &type metadata accessor for RREntity);
        }

        *(v52 + 2) = v62 + 1;
        v59(&v52[((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v62], v110, v113);
        v49 = v107;
      }

      ++v47;
      v48 += 72;
    }

    while (v108 != v47);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  sub_20410(&unk_356F40, &unk_2D0740);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_2D0E40;
  *(v63 + 32) = sub_C3828(5);
  *(v63 + 40) = v64;
  *(v63 + 48) = sub_C3828(1);
  *(v63 + 56) = v65;
  v66 = v104;
  sub_B7E6C(v63, v88, v89, v87, 1, 1, v52);

  v68 = v100;
  v67 = v101;
  v91(v100, v93, v101);
  v69 = v96;
  v70 = v97;
  v71 = *(v97 + 16);
  v72 = v66;
  v73 = v98;
  v71(v96, v72, v98);
  v74 = sub_2CDFE0();
  v75 = sub_2CE670();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v119 = v113;
    *v76 = 136315138;
    v71(v86, v69, v73);
    v77 = sub_2CE2A0();
    v79 = v78;
    (*(v70 + 8))(v69, v73);
    v80 = sub_3F08(v77, v79, &v119);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_0, v74, v75, "CommonNLContextProvider#makeAppNeedsDisambiguation for update: %s", v76, 0xCu);
    sub_306C(v113);

    v81 = v100;
    v82 = v101;
  }

  else
  {

    (*(v70 + 8))(v69, v73);
    v81 = v68;
    v82 = v67;
  }

  v94(v81, v82);
  v83 = v99;
  (*(v70 + 32))(v99, v104, v73);
  return (*(v70 + 56))(v83, 0, 1, v73);
}

uint64_t sub_B7E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v28[1] = a5;
  v34 = a4;
  v31 = a3;
  v32 = a2;
  v29 = a1;
  v37 = sub_2CDAA0();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v37);
  v33 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v30 = v28 - v11;
  sub_2C9FF0();
  sub_2C9F40();
  sub_2C9F50();
  sub_C3828(0);
  sub_2C9FC0();
  sub_20410(&unk_356F40, &unk_2D0740);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2D0E40;
  v42 = sub_2CE2C0();
  v43 = v13;
  v40 = 32;
  v41 = 0xE100000000000000;
  v38 = 95;
  v39 = 0xE100000000000000;
  sub_B96A0();
  sub_2CEBD0();

  v42 = sub_C3828(1);
  v43 = v14;
  v44._countAndFlagsBits = 0x2E65756C61562ELL;
  v44._object = 0xE700000000000000;
  sub_2CE350(v44);
  v15 = sub_2CE2C0();
  v17 = v16;

  v45._countAndFlagsBits = v15;
  v45._object = v17;
  sub_2CE350(v45);

  v18 = v43;
  *(v12 + 32) = v42;
  *(v12 + 40) = v18;
  v42 = sub_2CE2C0();
  v43 = v19;
  v40 = 32;
  v41 = 0xE100000000000000;
  v38 = 95;
  v39 = 0xE100000000000000;
  sub_2CEBD0();

  v42 = sub_C3828(1);
  v43 = v20;
  v46._countAndFlagsBits = 0x2E65756C61562ELL;
  v46._object = 0xE700000000000000;
  sub_2CE350(v46);
  v21 = sub_2CE2C0();
  v23 = v22;

  v47._countAndFlagsBits = v21;
  v47._object = v23;
  sub_2CE350(v47);

  v24 = v43;
  *(v12 + 48) = v42;
  *(v12 + 56) = v24;
  sub_2C9FB0();

  sub_2C9FD0();

  sub_2C9FE0();

  sub_2C9F10();

  sub_2C9F00();
  (*(v35 + 104))(v33, enum case for PommesContext.Source.pluginDefined(_:), v37);
  v25 = v30;
  sub_2CDAB0();
  v26 = sub_2CDAC0();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  return sub_2C9F20();
}

uint64_t sub_B8280(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v66 = a3;
  v68 = a2;
  v3 = sub_20410(&unk_353020, &unk_2D0970);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v67 = &v61 - v5;
  v6 = sub_2CE000();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v61 - v12;
  __chkstk_darwin(v11);
  v15 = &v61 - v14;
  v16 = sub_2CA000();
  v64 = *(v16 - 8);
  v65 = v16;
  v17 = *(v64 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v61 - v21;
  v23 = sub_2CCF90();
  if (!v24)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = v6;
    v45 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    v46 = v69;
    (*(v69 + 16))(v10, v45, v44);
    v47 = sub_2CDFE0();
    v48 = sub_2CE680();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "CommonNLContextProvider#makeAppNeedsConfirmation failed to build context update for app confirmation due to nil appIdentifier", v49, 2u);
    }

    (*(v46 + 8))(v10, v44);
    goto LABEL_20;
  }

  v25 = v23;
  v26 = v24;
  v27 = sub_2CA0A0();
  if (!v27)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v50 = v6;
    v51 = sub_3ED0(v6, static Logger.default);
    swift_beginAccess();
    v52 = v69;
    (*(v69 + 16))(v13, v51, v50);

    v53 = sub_2CDFE0();
    v54 = sub_2CE680();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70[0] = v56;
      *v55 = 136446210;
      v57 = sub_3F08(v25, v26, v70);

      *(v55 + 4) = v57;
      _os_log_impl(&dword_0, v53, v54, "CommonNLContextProvider#makeAppNeedsConfirmation failed to build appInfo for app: %{public}s", v55, 0xCu);
      sub_306C(v56);
    }

    else
    {
    }

    (*(v52 + 8))(v13, v50);
LABEL_20:
    v60 = v67;
    (*(v64 + 56))(v67, 1, 1, v65);
    v68(v60);
    return sub_30B8(v60, &unk_353020, &unk_2D0970);
  }

  v28 = v27;

  sub_B4888(v22);
  sub_20410(&unk_351900, &unk_2D0960);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2D0770;
  *(v29 + 32) = v28;
  v63 = v28;
  sub_2C9F80();
  sub_2C9F50();
  v30 = sub_2CA520();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_2CA510();
  sub_2CCF90();
  sub_2CA4E0();

  sub_2CA500();

  sub_2C9FE0();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = v6;
  v34 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v35 = v69;
  (*(v69 + 16))(v15, v34, v6);
  v36 = sub_2CDFE0();
  v37 = sub_2CE670();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v70[0] = v62;
    *v38 = 136315138;
    swift_beginAccess();
    v39 = v64;
    v40 = v65;
    (*(v64 + 16))(v20, v22, v65);
    v41 = sub_2CE2A0();
    v43 = sub_3F08(v41, v42, v70);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_0, v36, v37, "CommonNLContextProvider#makeAppNeedsConfirmation for update: %s", v38, 0xCu);
    sub_306C(v62);

    (*(v69 + 8))(v15, v33);
  }

  else
  {

    (*(v35 + 8))(v15, v6);
    v39 = v64;
    v40 = v65;
  }

  swift_beginAccess();
  v58 = v67;
  (*(v39 + 16))(v67, v22, v40);
  (*(v39 + 56))(v58, 0, 1, v40);
  v68(v58);

  sub_30B8(v58, &unk_353020, &unk_2D0970);
  return (*(v39 + 8))(v22, v40);
}

uint64_t sub_B8AB4(uint64_t a1)
{
  v2 = sub_20410(&qword_34E960, &qword_2D28F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_2C9CC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_2C9CB0();
  sub_2C9C70();

  sub_2C9C90();
  sub_C3828(7);
  sub_2C9CA0();
  v14 = *(v7 + 16);
  v14(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v14(v11, v13, v6);
  sub_2C9B90();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_B8CF4()
{
  v1 = v0;
  v29 = sub_2C8EA0();
  v30 = v2;
  v28 = sub_B96A0();
  v3 = sub_2CEBD0();
  v5 = v4;

  v6 = [v0 displayAppName];
  if (v6)
  {
    goto LABEL_14;
  }

  v7 = [v0 displayAppNameMap];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2CE200();

    if (*(v9 + 16))
    {
      v10 = sub_4F538(v3, v5);
      if (v11)
      {
        goto LABEL_10;
      }
    }
  }

  v6 = [v1 appName];
  if (v6)
  {
LABEL_14:
    v18 = v6;
    v16 = sub_2CE270();

    return v16;
  }

  v12 = [v1 appNameMap];
  if (!v12)
  {
LABEL_13:
    v6 = [v1 spotlightName];
    if (!v6)
    {
      v20 = [v1 spotlightNameMap];
      if (v20)
      {
        v21 = v20;
        v22 = sub_2CE200();

        if (*(v22 + 16))
        {
          v23 = sub_4F538(v3, v5);
          v25 = v24;

          if (v25)
          {
            v26 = (*(v22 + 56) + 16 * v23);
            v16 = *v26;
            v27 = v26[1];

            goto LABEL_11;
          }
        }

        else
        {
        }
      }

      return 0;
    }

    goto LABEL_14;
  }

  v13 = v12;
  v9 = sub_2CE200();

  if (!*(v9 + 16) || (v10 = sub_4F538(v3, v5), (v14 & 1) == 0))
  {

    goto LABEL_13;
  }

LABEL_10:
  v15 = (*(v9 + 56) + 16 * v10);
  v16 = *v15;
  v17 = v15[1];

LABEL_11:

  return v16;
}

char *sub_B8FA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CD08, &qword_2D0E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_B90C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&unk_356F40, &unk_2D0740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_B9248(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&unk_3530F0, &unk_2D2930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_B934C(char *result, int64_t a2, char a3, char *a4)
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
    sub_20410(&qword_34CCE0, &unk_2D0E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_B94C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_20410(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_B96A0()
{
  result = qword_34E948;
  if (!qword_34E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34E948);
  }

  return result;
}

uint64_t sub_B96F4@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v237 = a3;
  v233 = a4;
  v6 = sub_2CE130();
  v220 = *(v6 - 8);
  v221 = v6;
  v7 = *(v220 + 64);
  __chkstk_darwin(v6);
  v217 = (&v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2CE1A0();
  v218 = *(v9 - 8);
  v219 = v9;
  v10 = *(v218 + 64);
  v11 = __chkstk_darwin(v9);
  v215 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v216 = &v200 - v13;
  v225 = sub_2CDFD0();
  v214 = *(v225 - 8);
  v14 = *(v214 + 64);
  v15 = __chkstk_darwin(v225);
  v211 = v16;
  v212 = &v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v213 = &v200 - v17;
  v229 = sub_2CB7D0();
  v232 = *(v229 - 8);
  isa = v232[8].isa;
  v19 = __chkstk_darwin(v229);
  v21 = &v200 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v209 = &v200 - v22;
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  v235 = v23;
  v236 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v208 = &v200 - v30;
  v31 = __chkstk_darwin(v29);
  v223 = &v200 - v32;
  v33 = __chkstk_darwin(v31);
  v222 = &v200 - v34;
  v35 = __chkstk_darwin(v33);
  v228 = (&v200 - v36);
  v37 = __chkstk_darwin(v35);
  v224 = &v200 - v38;
  v39 = __chkstk_darwin(v37);
  v226 = &v200 - v40;
  v41 = __chkstk_darwin(v39);
  v210 = &v200 - v42;
  __chkstk_darwin(v41);
  v44 = &v200 - v43;
  v45 = sub_2C8EC0();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v200 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);

  v50 = sub_2CCF90();
  v238 = v51;
  if (!v51)
  {
    sub_28648(a2);
LABEL_7:

    v61 = v235;
    v60 = v236;
    if (qword_34BF58 != -1)
    {
LABEL_73:
      swift_once();
    }

    v62 = sub_3ED0(v61, static Logger.default);
    swift_beginAccess();
    (*(v60 + 16))(v28, v62, v61);

    v63 = sub_2CDFE0();
    v64 = sub_2CE680();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v230 = a1;
      v66 = v65;
      v67 = swift_slowAlloc();
      v239[0] = v67;
      *v66 = 136446210;
      v240 = sub_2CCF90();
      v241 = v68;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v69 = sub_2CE2A0();
      v71 = sub_3F08(v69, v70, v239);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_0, v63, v64, "DisplayApp#init could not build display app for bundle: %{public}s", v66, 0xCu);
      sub_306C(v67);
    }

    else
    {
    }

    result = (*(v60 + 8))(v28, v61);
    goto LABEL_12;
  }

  v227 = a2;
  v234 = v50;
  v52 = sub_2CA0A0();
  if (!v52)
  {
    sub_28648(v227);

    goto LABEL_7;
  }

  v53 = v52;

  v206 = v53;
  v54 = v53;

  sub_2CB570();
  v231 = sub_B8CF4();
  v28 = v55;
  v207 = v54;

  v56 = *(v46 + 8);
  v56(v49, v45);
  v230 = a1;
  if (v28)
  {

    v57 = v237;
    v58 = v235;
    v59 = v229;
    goto LABEL_20;
  }

  v205 = v56;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v81 = v235;
  v82 = sub_3ED0(v235, static Logger.default);
  swift_beginAccess();
  v83 = *(v236 + 16);
  v204 = v82;
  v201 = v83;
  v202 = v236 + 16;
  v83(v44, v82, v81);
  v84 = v238;

  v85 = sub_2CDFE0();
  v86 = sub_2CE680();

  LODWORD(v231) = v86;
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = v85;
    v89 = swift_slowAlloc();
    *&v249 = v89;
    *v87 = 136315138;
    *(v87 + 4) = sub_3F08(v234, v84, &v249);
    _os_log_impl(&dword_0, v88, v231, "DisplayApp#init couldn't find localized name for app info: %s, trying app name...", v87, 0xCu);
    sub_306C(v89);
  }

  else
  {
  }

  v90 = v44;
  v91 = v235;
  v203 = *(v236 + 8);
  v203(v90, v235);
  v92 = sub_2CA420();
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  sub_2CA410();
  sub_2CB570();
  v231 = sub_2CA400();
  v28 = v95;

  v205(v49, v45);
  v59 = v229;
  if (v28)
  {
    v57 = v237;
    v58 = v91;
LABEL_20:
    v96 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v96 = v231 & 0xFFFFFFFFFFFFLL;
    }

    v97 = v236;
    v98 = v226;
    if (v96)
    {
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v99 = sub_3ED0(v58, static Logger.default);
      swift_beginAccess();
      v100 = *(v97 + 16);
      v210 = v99;
      v204 = v100;
      v205 = (v97 + 16);
      v100(v98, v99, v58);

      v101 = sub_2CDFE0();
      v102 = sub_2CE680();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        *&v249 = v203;
        *v103 = 136315138;
        v104 = sub_2CE420();
        v106 = sub_3F08(v104, v105, &v249);

        *(v103 + 4) = v106;
        _os_log_impl(&dword_0, v101, v102, "DisplayApp#init Empty bundleIDs, looking in installed apps: %s", v103, 0xCu);
        sub_306C(v203);

        v107 = v226;
        v226 = *(v236 + 8);
        (v226)(v107, v235);
      }

      else
      {

        v226 = *(v97 + 8);
        (v226)(v98, v58);
      }

      v108 = *(v57 + 16);
      v109 = v57;
      if (v108)
      {
        v60 = 0;
        v61 = &v232[2];
        a1 = v232 + 1;
        while (1)
        {
          if (v60 >= *(v109 + 16))
          {
            __break(1u);
            goto LABEL_73;
          }

          (v232[2].isa)(v21, v109 + ((LOBYTE(v232[10].isa) + 32) & ~LOBYTE(v232[10].isa)) + v232[9].isa * v60, v59);
          if (sub_2CB7B0() == v234 && v238 == v110)
          {
            break;
          }

          v111 = sub_2CEEA0();

          if (v111)
          {
            goto LABEL_42;
          }

          ++v60;
          (a1->isa)(v21, v59);
          v109 = v237;
          if (v108 == v60)
          {
            goto LABEL_36;
          }
        }

LABEL_42:

        v119 = v209;
        (v232[4].isa)(v209, v21, v59);
        v120 = sub_2CB7C0();
        v58 = v235;
        v97 = v236;
        if (!v121)
        {
          (a1->isa)(v119, v59);
          goto LABEL_47;
        }

        v122 = v121;
        v232 = v120;

        v123 = v208;
        v204(v208, v210, v58);
        v74 = v238;

        v124 = sub_2CDFE0();
        v125 = v58;
        v126 = sub_2CE690();

        if (os_log_type_enabled(v124, v126))
        {
          v127 = swift_slowAlloc();
          *&v249 = swift_slowAlloc();
          *v127 = 136315394;
          *(v127 + 4) = sub_3F08(v232, v122, &v249);
          *(v127 + 12) = 2080;
          *(v127 + 14) = sub_3F08(v234, v238, &v249);
          _os_log_impl(&dword_0, v124, v126, "DisplayApp#init overriding empty displayName with:%s for identifier:%s", v127, 0x16u);
          swift_arrayDestroy();
          v97 = v236;

          v74 = v238;
        }

        (v226)(v123, v125);
        (a1->isa)(v119, v229);
        v231 = v232;
        v28 = v122;
        v58 = v125;
LABEL_48:
        v128 = v224;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v129 = sub_3ED0(v58, static Logger.default);
        swift_beginAccess();
        v130 = *(v97 + 16);
        v232 = v129;
        v229 = v97 + 16;
        v226 = v130;
        (v130)(v128, v129, v58);

        v131 = sub_2CDFE0();
        v132 = sub_2CE690();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *&v249 = swift_slowAlloc();
          *v133 = 136315394;

          v134 = sub_3F08(v231, v28, &v249);

          *(v133 + 4) = v134;
          v74 = v238;
          *(v133 + 12) = 2080;
          *(v133 + 14) = sub_3F08(v234, v74, &v249);
          _os_log_impl(&dword_0, v131, v132, "DisplayApp#init found default displayName:%s for identifier:%s", v133, 0x16u);
          swift_arrayDestroy();

          v135 = *(v97 + 8);
          v136 = v235;
          v135(v128);
        }

        else
        {

          v135 = *(v97 + 8);
          v136 = v58;
          (v135)(v128, v58);
        }

        v137 = v227;
        v138 = v228;
        if (sub_2CBDB0())
        {
          v139 = v136;
          (v226)(v138, v232, v136);

          v140 = sub_2CDFE0();
          v141 = sub_2CE670();

          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            *&v249 = v143;
            *v142 = 136315138;
            v144 = v234;
            *(v142 + 4) = sub_3F08(v234, v74, &v249);
            _os_log_impl(&dword_0, v140, v141, "DisplayApp#init checking for override name for identifier:%s...", v142, 0xCu);
            sub_306C(v143);

            (v135)(v228, v139);
          }

          else
          {

            (v135)(v138, v139);
            v144 = v234;
          }

          v210 = v135;
          v145 = dispatch_semaphore_create(0);
          v146 = swift_allocObject();
          *(v146 + 16) = 0;
          v208 = (v146 + 16);
          *(v146 + 24) = 0;
          v251 = 0;
          v249 = 0u;
          v250 = 0u;
          v147 = swift_allocObject();
          v148 = v231;
          v147[2] = v145;
          v147[3] = v148;
          v147[4] = v28;
          v147[5] = v144;
          v147[6] = v74;
          v147[7] = v146;
          v149 = swift_allocObject();
          *(v149 + 16) = sub_BB204;
          *(v149 + 24) = v147;
          v205 = v149;
          v150 = qword_34BF98;

          v209 = v28;

          v228 = v145;
          v224 = v146;

          if (v150 != -1)
          {
            swift_once();
          }

          v151 = qword_35F760;
          v152 = v213;
          sub_2CDFB0();
          v153 = v214;
          v154 = v212;
          v155 = v225;
          (*(v214 + 16))(v212, v152, v225);
          v156 = (*(v153 + 80) + 33) & ~*(v153 + 80);
          v157 = (v211 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
          v158 = swift_allocObject();
          *(v158 + 16) = "stringsBackedAppNameLocalizedAppName";
          *(v158 + 24) = 36;
          *(v158 + 32) = 2;
          (*(v153 + 32))(v158 + v156, v154, v155);
          v159 = (v158 + v157);
          v160 = v205;
          *v159 = sub_BB214;
          v159[1] = v160;

          sub_2CE9E0();
          sub_2CDF90();
          v161 = swift_allocObject();
          *(v161 + 16) = sub_BB21C;
          *(v161 + 24) = v158;

          v162 = v238;
          v163 = v227;
          sub_18D47C(sub_BB2C4, v161, v234, v238, v227, &v249);

          (*(v153 + 8))(v152, v225);

          sub_28648(v163);
          sub_30B8(&v249, &qword_34E970, &qword_2D2910);
          v164 = v215;
          sub_2CE190();
          v165 = v217;
          *v217 = 1;
          v167 = v220;
          v166 = v221;
          (*(v220 + 104))(v165, enum case for DispatchTimeInterval.seconds(_:), v221);
          v168 = v216;
          sub_2CE1B0();
          (*(v167 + 8))(v165, v166);
          v169 = v219;
          v170 = *(v218 + 8);
          v170(v164, v219);
          sub_2CEA20();
          v170(v168, v169);
          v171 = v222;
          v172 = v235;
          (v226)(v222, v232, v235);

          v173 = v224;

          v174 = sub_2CDFE0();
          v175 = sub_2CE670();

          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            v227 = swift_slowAlloc();
            v240 = v227;
            *v176 = 136315394;
            swift_beginAccess();
            v177 = *(v173 + 3);
            *&v249 = *(v173 + 2);
            *(&v249 + 1) = v177;

            sub_20410(&qword_34CCC0, &unk_2D0DE0);
            v178 = v173;
            v179 = sub_2CE2A0();
            v180 = v162;
            v182 = v181;

            v183 = sub_3F08(v179, v182, &v240);
            v184 = v235;

            *(v176 + 4) = v183;
            v173 = v178;
            *(v176 + 12) = 2080;
            *(v176 + 14) = sub_3F08(v234, v180, &v240);
            _os_log_impl(&dword_0, v174, v175, "DisplayApp#init override name:%s for identifier:%s...", v176, 0x16u);
            swift_arrayDestroy();

            v185 = v210;
            (v210)(v171, v184);
            v186 = v223;
          }

          else
          {

            v185 = v210;
            (v210)(v171, v172);
            v186 = v223;
            v184 = v172;
          }

          swift_beginAccess();
          v187 = *(v173 + 3);
          v28 = v209;
          if (v187)
          {
            v75 = *(v173 + 2);
            (v226)(v186, v232, v184);
            swift_bridgeObjectRetain_n();
            v188 = v238;

            v189 = sub_2CDFE0();
            v190 = sub_2CE670();

            v232 = v189;
            v191 = os_log_type_enabled(v189, v190);
            v77 = v28;
            if (v191)
            {
              v192 = swift_slowAlloc();
              v229 = swift_slowAlloc();
              *&v249 = v229;
              *v192 = 136315650;
              v193 = sub_3F08(v75, v187, &v249);

              *(v192 + 4) = v193;
              *(v192 + 12) = 2080;
              v194 = sub_3F08(v231, v28, &v249);

              *(v192 + 14) = v194;
              *(v192 + 22) = 2080;
              v195 = sub_3F08(v234, v188, &v249);

              *(v192 + 24) = v195;
              v196 = v190;
              v197 = v232;
              _os_log_impl(&dword_0, v232, v196, "DisplayApp#init found using primary:%s, alternate:%s for app:%s", v192, 0x20u);
              swift_arrayDestroy();

              (v210)(v223, v235);
            }

            else
            {

              v185(v186, v184);
            }

            v28 = v187;
            v80 = v237;
            v74 = v188;
            v76 = v231;
            goto LABEL_70;
          }

          v74 = v238;
        }

        else
        {

          sub_28648(v137);
        }

        v77 = 0;
        v75 = v231;
        v76 = 0;
        v80 = v237;
LABEL_70:
        v198 = v234;
        v240 = v234;
        v241 = v74;
        v242 = v75;
        v243 = v28;
        v244 = v76;
        v245 = v77;
        v78 = v230;
        v246 = v230;
        v247 = v207;
        v248 = v80;
        *&v249 = v234;
        *(&v249 + 1) = v74;
        *&v250 = v75;
        *(&v250 + 1) = v28;
        v251 = v76;
        v252 = v77;
        v253 = v230;
        v254 = v207;
        v255 = v80;
        sub_333FC(&v240, v239);
        result = sub_9AA00(&v249);
        v73 = v198;
        v79 = v206;
        goto LABEL_71;
      }

LABEL_36:

      v58 = v235;
      v97 = v236;
    }

LABEL_47:
    v74 = v238;
    goto LABEL_48;
  }

  sub_28648(v227);
  v112 = v210;
  v201(v210, v204, v91);
  v113 = v238;

  v114 = sub_2CDFE0();
  v115 = sub_2CE680();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *&v249 = v117;
    *v116 = 136315138;
    v118 = sub_3F08(v234, v113, &v249);

    *(v116 + 4) = v118;
    _os_log_impl(&dword_0, v114, v115, "DisplayApp#init couldn't find localized name for app: %s", v116, 0xCu);
    sub_306C(v117);
  }

  else
  {
  }

  v203(v112, v91);

LABEL_12:
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v28 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
LABEL_71:
  v199 = v233;
  *v233 = v73;
  v199[1] = v74;
  v199[2] = v75;
  v199[3] = v28;
  v199[4] = v76;
  v199[5] = v77;
  v199[6] = v78;
  v199[7] = v79;
  v199[8] = v80;
  return result;
}

uint64_t sub_BB21C(__int128 *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_18E47C(a1, v5, v6, v10, v1 + v4, v8);
}

char *sub_BB2CC(uint64_t a1)
{
  v89 = sub_2CE000();
  v2 = *(v89 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v89);
  v76 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v76 - v6;
  v7 = sub_20410(&qword_34E960, &qword_2D28F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v94 = &v76 - v9;
  v95 = sub_2C9BA0();
  v10 = *(v95 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v95);
  v88 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = &v76 - v14;
  v106 = sub_2C9CC0();
  v15 = *(*(v106 - 8) + 64);
  v16 = __chkstk_darwin(v106);
  v93 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v102 = &v76 - v19;
  __chkstk_darwin(v18);
  v105 = &v76 - v22;
  v23 = *(a1 + 16);
  v77 = v2;
  if (v23)
  {
    v92 = (v20 + 16);
    v91 = (v20 + 56);
    v83 = v10;
    v90 = v10 + 32;
    v81 = (v2 + 16);
    v80 = (v2 + 8);
    v82 = (v20 + 8);
    v24 = (a1 + 48);
    v25 = _swiftEmptyArrayStorage;
    *&v21 = 136315138;
    v78 = v21;
    do
    {
      v101 = v23;
      v28 = *(v24 - 2);
      v29 = *(v24 - 1);
      v30 = *v24;
      v31 = v24[1];
      v32 = v24[3];
      v104 = v24[2];
      v34 = v24[4];
      v33 = v24[5];
      v35 = v24[6];

      v98 = v34;

      v96 = v33;
      v97 = v35;

      swift_bridgeObjectRetain_n();

      v36 = v105;
      v100 = v29;
      sub_2C9C80();

      v37 = v102;
      v99 = v31;
      sub_2C9C80();
      v38 = *v92;
      v39 = v94;
      v40 = v106;
      (*v92)(v94, v36, v106);
      v41 = *v91;
      (*v91)(v39, 0, 1, v40);
      v38(v93, v37, v40);
      sub_2C9B90();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_B94C4(0, *(v25 + 2) + 1, 1, v25, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      v43 = *(v25 + 2);
      v42 = *(v25 + 3);
      v44 = v104;
      if (v43 >= v42 >> 1)
      {
        v25 = sub_B94C4(v42 > 1, v43 + 1, 1, v25, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
      }

      *(v25 + 2) = v43 + 1;
      v45 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v46 = *(v83 + 72);
      v47 = *(v83 + 32);
      v47(&v25[v45 + v46 * v43], v103, v95);
      if (v32)
      {
        v84 = v46;
        v85 = v45;
        v86 = v47;
        v48 = qword_34BF58;

        if (v48 != -1)
        {
          swift_once();
        }

        v49 = v89;
        v50 = sub_3ED0(v89, static Logger.default);
        swift_beginAccess();
        (*v81)(v87, v50, v49);

        v51 = sub_2CDFE0();
        v52 = sub_2CE670();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v79 = v41;
          v54 = v53;
          v55 = swift_slowAlloc();
          v108 = v55;
          *v54 = v78;

          v56 = sub_3F08(v44, v32, &v108);

          *(v54 + 4) = v56;
          v57 = v87;
          _os_log_impl(&dword_0, v51, v52, "AudioNLContextUpdatedProvider#makeDisplayHints adding alternate displayHint: %s", v54, 0xCu);
          sub_306C(v55);

          v41 = v79;

          (*v80)(v57, v89);
        }

        else
        {

          (*v80)(v87, v89);
        }

        v58 = v94;
        v59 = v106;
        v38(v94, v105, v106);
        v41(v58, 0, 1, v59);
        sub_2C9C80();
        sub_2C9B90();
        v61 = *(v25 + 2);
        v60 = *(v25 + 3);
        if (v61 >= v60 >> 1)
        {
          v25 = sub_B94C4(v60 > 1, v61 + 1, 1, v25, &qword_34E958, &qword_2D28F0, &type metadata accessor for DisplayHint);
        }

        v62 = *v82;
        v63 = v106;
        (*v82)(v102, v106);
        v62(v105, v63);
        *(v25 + 2) = v61 + 1;
        v86(&v25[v85 + v61 * v84], v88, v95);
      }

      else
      {

        v26 = *v82;
        v27 = v106;
        (*v82)(v102, v106);
        v26(v105, v27);
      }

      v24 += 9;
      v23 = v101 - 1;
    }

    while (v101 != 1);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v64 = v89;
  v65 = sub_3ED0(v89, static Logger.default);
  swift_beginAccess();
  v66 = v77;
  v67 = v76;
  (*(v77 + 16))(v76, v65, v64);

  v68 = sub_2CDFE0();
  v69 = sub_2CE670();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v107 = v71;
    *v70 = 136315138;
    v72 = sub_2CE420();
    v74 = sub_3F08(v72, v73, &v107);

    *(v70 + 4) = v74;

    _os_log_impl(&dword_0, v68, v69, "CommonNLContextProvider#makeDisplayHints built display hints for app disambiguation: %s", v70, 0xCu);
    sub_306C(v71);

    (*(v66 + 8))(v67, v89);
  }

  else
  {

    (*(v66 + 8))(v67, v89);
  }

  return v25;
}

uint64_t sub_BBDC8@<X0>(uint64_t *a1@<X8>)
{
  v12 = sub_2CC2B0();
  v13 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v11);
  sub_2CC2A0();
  v9 = sub_2CC7A0();
  v10 = &protocol witness table for MediaRemoteAPIProvider;
  *&v8 = sub_2CC790();
  v6 = sub_2CDDF0();
  v7 = &protocol witness table for EncryptionProvider;
  sub_F390(&v5);
  sub_2CDDE0();
  v2 = type metadata accessor for SiriAudioUIAssertionProvider();
  v3 = swift_allocObject();
  sub_F338(&v11, v3 + 16);
  sub_F338(&v8, v3 + 56);
  result = sub_F338(&v5, v3 + 96);
  a1[3] = v2;
  a1[4] = &off_339240;
  *a1 = v3;
  return result;
}

uint64_t sub_BBEB0()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v8 = swift_allocObject();
  v31[3] = &type metadata for StringsBackedAppNameResolver;
  v31[4] = sub_2869C();
  v31[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v31[0] + 16);
  v30[3] = v6;
  v30[4] = &protocol witness table for MorphunProvider;
  v30[0] = v7;
  v29[3] = v0;
  v29[4] = &protocol witness table for FeatureFlagProvider;
  v9 = sub_F390(v29);
  (*(v1 + 16))(v9, v4, v0);
  *(v8 + 296) = v5;
  sub_EEAC(v29, v8 + 256);
  sub_EEAC(v31, v28);
  sub_EEAC(v30, v27);
  sub_EEAC(v32, v26);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = sub_2CCA30();

  v11 = sub_2CCA20();
  v23[3] = v10;
  v23[4] = &protocol witness table for MultiUserConnectionProvider;
  v23[0] = v11;
  v22[3] = sub_2CB9E0();
  v22[4] = &protocol witness table for DeviceProvider;
  sub_F390(v22);
  sub_2CB9C0();
  sub_EEAC(v28, v8 + 16);
  sub_EEAC(v27, v8 + 216);
  sub_EEAC(v26, v8 + 56);
  sub_EEAC(v23, v8 + 96);
  sub_EEAC(v22, v8 + 176);
  sub_286F0(v24, &v17);
  if (v18)
  {

    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    sub_F338(&v17, &v19);
  }

  else
  {
    sub_EEAC(v26, &v19);
    v12 = sub_2C9E60();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2C9E50();
    v20 = v12;
    v21 = &protocol witness table for ContactsManager;

    *&v19 = v15;
    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    if (v18)
    {
      sub_28760(&v17);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

void *sub_BC2BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v25 = v8;
  v26 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v24 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v23[3] = v9;
  v23[4] = &off_337EB0;
  v23[0] = a4;
  type metadata accessor for Determine.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v23, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v16;
  type metadata accessor for DetermineCatDialogService();
  v17 = swift_allocObject();
  v17[6] = 0xEF746E65746E4965;
  v17[2] = 0xD000000000000011;
  v17[3] = 0x80000000002DA8D0;
  v17[4] = a1;
  v17[5] = 0x6E696D7265746544;
  v22[3] = sub_2CC360();
  v22[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v22);

  sub_2CC350();
  type metadata accessor for DetermineDialogProvider();
  v18 = swift_allocObject();
  v18[15] = v17;
  sub_EEAC(v22, (v18 + 3));
  v19 = sub_2CB490();
  v18[11] = v8;
  v18[12] = &protocol witness table for SiriKitTaskLoggingProvider;
  v18[8] = v19;
  sub_306C(a2);
  sub_306C(v22);
  v18[13] = 0xD000000000000011;
  v18[14] = 0x80000000002DA8D0;
  v18[2] = a1;
  v10[2] = v18;
  sub_F338(&v24, (v10 + 3));
  sub_306C(v23);
  return v10;
}

uint64_t sub_BC4F4()
{
  v0 = sub_2CC2B0();
  v105 = *(v0 - 8);
  v1 = *(v105 + 64);
  __chkstk_darwin(v0);
  v104 = v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2CC360();
  v97 = *(v92 - 8);
  v3 = *(v97 + 64);
  __chkstk_darwin(v92);
  v94 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_20410(&qword_34EA48, &unk_2D2978);
  v102 = *(v93 - 8);
  v5 = *(v102 + 64);
  v6 = __chkstk_darwin(v93);
  v101 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90[0] = v90 - v8;
  v96 = type metadata accessor for DetermineIntent();
  v95 = type metadata accessor for DetermineIntentResponse();
  sub_2C9780();
  v91 = sub_BBEB0();
  sub_2CC350();
  sub_2C9A00();
  v9 = sub_2CB4A0();
  v103 = v9;
  v10 = sub_2CB490();
  v139 = v9;
  v140 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v138 = v10;
  v136 = v0;
  v137 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v135);
  sub_2CC2A0();
  v11 = type metadata accessor for SiriAudioOutputProvider();
  v12 = swift_allocObject();
  sub_F338(&v135, v12 + 16);
  v99 = v0;
  v136 = v0;
  v137 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v135);
  sub_2CC2A0();
  v13 = sub_2CBC40();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_2CBC30();
  v133 = v13;
  v134 = &protocol witness table for AppIntentInvoker;
  *&v132 = v16;
  v17 = sub_2CC2D0();
  v18 = sub_2CC2C0();
  v130 = v17;
  v131 = &protocol witness table for MediaRemoteProvider;
  *&v129 = v18;
  v19 = type metadata accessor for DetermineSnippetProvider();
  v20 = swift_allocObject();
  sub_F338(&v132, v20 + 16);
  sub_F338(&v129, v20 + 56);
  sub_BBDC8(&v132);
  v21 = v133;
  v22 = sub_F9A0(&v132, v133);
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v130 = v11;
  v131 = &off_337EB0;
  *&v129 = v12;
  v127 = v19;
  v128 = &off_336920;
  v126[0] = v20;
  v28 = type metadata accessor for SiriAudioUIAssertionProvider();
  v124 = v28;
  v125 = &off_339240;
  v123[0] = v27;
  v90[1] = type metadata accessor for Determine.HandleIntentStrategy();
  v29 = swift_allocObject();
  v30 = sub_F9A0(&v129, v11);
  v31 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = (v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = v127;
  v36 = sub_F9A0(v126, v127);
  v37 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = (v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = v124;
  v42 = sub_F9A0(v123, v124);
  v43 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = (v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v33;
  v48 = *v39;
  v49 = *v45;
  v50 = v90[0];
  *(&v121 + 1) = v11;
  v122 = &off_337EB0;
  v100 = v11;
  *&v120 = v47;
  v118 = v19;
  v119 = &off_336920;
  v116 = &off_339240;
  *&v117 = v48;
  v115 = v28;
  *&v114 = v49;
  type metadata accessor for DetermineCatDialogService();
  v51 = swift_allocObject();
  v51[5] = 0x6E696D7265746544;
  v51[6] = 0xEF746E65746E4965;
  v51[2] = 0xD000000000000011;
  v51[3] = 0x80000000002DA8D0;
  v53 = v91;
  v52 = v92;
  v51[4] = v91;
  v29[2] = v51;
  v112 = v52;
  v113 = &protocol witness table for StringsFileResolver;
  sub_F390(&v111);
  swift_retain_n();

  sub_2CC350();
  v98 = type metadata accessor for DetermineDialogProvider();
  v54 = swift_allocObject();
  v54[15] = v51;
  sub_EEAC(&v111, &v109);
  v55 = v103;
  v56 = sub_2CB490();
  v107 = v55;
  v108 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v106 = v56;
  sub_306C(&v111);
  v54[13] = 0xD000000000000011;
  v54[14] = 0x80000000002DA8D0;
  v57 = v93;
  v58 = v52;
  v54[2] = v53;
  sub_F338(&v109, (v54 + 3));
  sub_F338(&v106, (v54 + 8));
  v29[9] = v54;
  type metadata accessor for DetermineViewProvider();
  v59 = swift_allocObject();

  sub_10FEB0(&v111, v60);

  sub_306C(v141);
  (*(v97 + 8))(v94, v52);
  *(v59 + 16) = v54;
  sub_F338(&v111, v59 + 24);
  v29[8] = v59;
  sub_F338(&v138, (v29 + 3));
  sub_F338(&v120, (v29 + 10));
  sub_F338(&v135, (v29 + 15));
  sub_F338(&v117, (v29 + 20));
  sub_F338(&v114, (v29 + 25));
  sub_306C(v123);
  sub_306C(v126);
  sub_306C(&v129);
  sub_306C(&v132);
  v141[0] = v29;
  sub_BD318(&qword_34EA50, type metadata accessor for Determine.HandleIntentStrategy);
  sub_2C9640();

  sub_2C9700();
  v61 = sub_2CCFB0();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v97 = sub_2CCF70();
  sub_2C9650();
  sub_2C9710();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v64 = CATDefaultMode;
  v65 = sub_2CBC00();
  v66 = sub_2CBBF0();
  sub_2C9A00();
  v67 = v104;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v68 = swift_allocObject();
  v139 = &type metadata for StringsBackedAppNameResolver;
  v140 = sub_2869C();
  *&v138 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v138 + 16);
  v136 = v65;
  v137 = &protocol witness table for MorphunProvider;
  *&v135 = v66;
  v69 = v99;
  v133 = v99;
  v134 = &protocol witness table for FeatureFlagProvider;
  v70 = sub_F390(&v132);
  (*(v105 + 16))(v70, v67, v69);
  *(v68 + 296) = v64;
  sub_EEAC(&v132, v68 + 256);
  sub_EEAC(&v138, &v129);
  sub_EEAC(&v135, v126);
  sub_EEAC(v141, v123);
  v122 = 0;
  v120 = 0u;
  v121 = 0u;
  v71 = sub_2CCA30();

  v72 = sub_2CCA20();
  v118 = v71;
  v119 = &protocol witness table for MultiUserConnectionProvider;
  *&v117 = v72;
  v115 = sub_2CB9E0();
  v116 = &protocol witness table for DeviceProvider;
  sub_F390(&v114);
  sub_2CB9C0();
  sub_EEAC(&v129, v68 + 16);
  sub_EEAC(v126, v68 + 216);
  sub_EEAC(v123, v68 + 56);
  sub_EEAC(&v117, v68 + 96);
  sub_EEAC(&v114, v68 + 176);
  sub_286F0(&v120, &v109);
  if (v110)
  {

    sub_28760(&v120);
    sub_306C(v123);
    sub_306C(v126);
    sub_306C(&v129);
    (*(v105 + 8))(v104, v69);
    sub_306C(v141);
    sub_306C(&v132);
    sub_306C(&v135);
    sub_306C(&v138);
    sub_306C(&v114);
    sub_306C(&v117);
    sub_F338(&v109, &v111);
  }

  else
  {
    sub_EEAC(v123, &v111);
    v73 = sub_2C9E60();
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v76 = sub_2C9E50();
    v112 = v73;
    v113 = &protocol witness table for ContactsManager;

    *&v111 = v76;
    sub_28760(&v120);
    sub_306C(v123);
    sub_306C(v126);
    sub_306C(&v129);
    (*(v105 + 8))(v104, v69);
    sub_306C(v141);
    sub_306C(&v132);
    sub_306C(&v135);
    sub_306C(&v138);
    sub_306C(&v114);
    sub_306C(&v117);
    if (v110)
    {
      sub_28760(&v109);
    }
  }

  sub_F338(&v111, v68 + 136);
  sub_2C9A00();
  v136 = v58;
  v137 = &protocol witness table for StringsFileResolver;
  sub_F390(&v135);
  sub_2CC350();
  v77 = swift_allocObject();
  sub_EEAC(&v135, (v77 + 3));
  v78 = v103;
  v79 = sub_2CB490();
  v77[11] = v78;
  v77[12] = &protocol witness table for SiriKitTaskLoggingProvider;
  v77[8] = v79;

  sub_306C(&v138);
  sub_306C(&v135);
  v80 = sub_BBEB0();
  sub_2C9A00();
  v81 = sub_2CB490();
  v130 = v69;
  v131 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v129);

  sub_2CC2A0();
  v82 = swift_allocObject();
  sub_F338(&v129, v82 + 16);
  v83 = sub_BC2BC(v80, &v132, v81, v82);

  *&v132 = v83;
  type metadata accessor for Determine.UnsupportedValueStrategy();
  sub_BD318(&qword_34EA58, type metadata accessor for Determine.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  v84 = v102;
  (*(v102 + 16))(v101, v50, v57);
  v85 = sub_20410(&qword_34EA60, qword_2D2988);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  v88 = sub_2C96E0();
  swift_setDeallocating();
  sub_306C(v77 + 3);
  sub_306C(v77 + 8);

  swift_deallocClassInstance();

  (*(v84 + 8))(v50, v57);
  return v88;
}

uint64_t sub_BD318(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_BD378()
{
  result = qword_34EA68;
  if (!qword_34EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA68);
  }

  return result;
}

Swift::Int sub_BD3D8()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_BD488()
{
  *v0;
  *v0;
  *v0;
  sub_2CE310();
}

Swift::Int sub_BD524()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_BD5D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_BD808(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_BD600(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v5 = 0x666E692065726F6DLL;
    v4 = 0xE90000000000006FLL;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_BD67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD854();
  v5 = sub_BD8A8();
  v6 = sub_BD8FC();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_BD6F4()
{
  result = qword_34EA70;
  if (!qword_34EA70)
  {
    sub_2DB30(&qword_34EA78, &qword_2D29F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA70);
  }

  return result;
}

unint64_t sub_BD75C()
{
  result = qword_34EA80;
  if (!qword_34EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA80);
  }

  return result;
}

unint64_t sub_BD7B4()
{
  result = qword_34EA88;
  if (!qword_34EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA88);
  }

  return result;
}

uint64_t sub_BD808(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_32FBF0;
  v6._object = a2;
  v4 = sub_2CEDF0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_BD854()
{
  result = qword_34EA90;
  if (!qword_34EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA90);
  }

  return result;
}

unint64_t sub_BD8A8()
{
  result = qword_34EA98;
  if (!qword_34EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA98);
  }

  return result;
}

unint64_t sub_BD8FC()
{
  result = qword_34EAA0;
  if (!qword_34EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EAA0);
  }

  return result;
}

uint64_t type metadata accessor for UpdateMediaAffinityViewProvider()
{
  result = qword_34EAD0;
  if (!qword_34EAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BD99C(uint64_t a1, void *a2)
{
  v55 = a2;
  v3 = sub_2CC2B0();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34E480, &qword_2D2280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v53 - v9;
  sub_F3F4(a1, &v53 - v9, &qword_34E480, &qword_2D2280);
  v84[3] = v3;
  v84[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v84);
  sub_2CC2A0();
  v11 = sub_2CC7A0();
  v12 = sub_2CC790();
  v83[3] = v11;
  v83[4] = &protocol witness table for MediaRemoteAPIProvider;
  v83[0] = v12;
  sub_2C9A00();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v81[3] = &type metadata for StringsBackedAppNameResolver;
  v13 = sub_2869C();
  v81[4] = v13;
  v14 = swift_allocObject();
  v81[0] = v14;
  sub_285EC(&static StringsBackedAppNameResolver.shared, v14 + 16);
  v54 = sub_2CB9E0();
  v80[3] = v54;
  v80[4] = &protocol witness table for DeviceProvider;
  sub_F390(v80);
  sub_2CB9C0();
  v79[3] = sub_2CDDF0();
  v79[4] = &protocol witness table for EncryptionProvider;
  sub_F390(v79);
  sub_2CDDE0();
  v15 = sub_2CC710();
  v16 = sub_2CC700();
  v78[4] = &protocol witness table for SharedContextProvider;
  v78[3] = v15;
  v78[0] = v16;
  v17 = sub_2CB4A0();
  v18 = sub_2CB490();
  v77 = &protocol witness table for SiriKitTaskLoggingProvider;
  v76 = v17;
  *&v75 = v18;
  v19 = type metadata accessor for ConfirmInterruptionFlow();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v57 = v19;
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  v24 = sub_2CA7B0();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent;
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent) = 0;
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_originalPlayMediaRCHFlowWrapper) = 0;
  v26 = v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_state;
  *v26 = 0;
  *(v26 + 8) = 1;
  swift_beginAccess();
  v58 = v10;
  sub_BED04(v10, v22 + v23);
  swift_endAccess();
  v27 = *(v22 + v25);
  v28 = v55;
  *(v22 + v25) = v55;

  sub_EEAC(v84, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_featureFlagProvider);
  sub_EEAC(v83, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_mediaRemoteAPIProvider);
  sub_EEAC(v80, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_deviceProvider);
  sub_EEAC(v82, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_aceServiceInvoker);
  sub_EEAC(v82, v74);
  LODWORD(v25) = CATDefaultMode;
  v29 = sub_2CBC00();
  v30 = v28;
  v31 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v32 = swift_allocObject();
  v73[3] = &type metadata for StringsBackedAppNameResolver;
  v73[4] = v13;
  v73[0] = swift_allocObject();
  sub_285EC(v14 + 16, v73[0] + 16);
  v72[3] = v29;
  v72[4] = &protocol witness table for MorphunProvider;
  v72[0] = v31;
  v71[3] = v3;
  v71[4] = &protocol witness table for FeatureFlagProvider;
  v33 = sub_F390(v71);
  v34 = v56;
  (*(v56 + 16))(v33, v6, v3);
  *(v32 + 296) = v25;
  sub_EEAC(v71, v32 + 256);
  sub_EEAC(v73, v70);
  sub_EEAC(v72, v69);
  sub_EEAC(v74, v68);
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v35 = sub_2CCA30();
  v36 = sub_2CCA20();
  v65[3] = v35;
  v65[4] = &protocol witness table for MultiUserConnectionProvider;
  v65[0] = v36;
  v64[3] = v54;
  v64[4] = &protocol witness table for DeviceProvider;
  sub_F390(v64);
  sub_2CB9C0();
  sub_EEAC(v70, v32 + 16);
  sub_EEAC(v69, v32 + 216);
  sub_EEAC(v68, v32 + 56);
  sub_EEAC(v65, v32 + 96);
  sub_EEAC(v64, v32 + 176);
  sub_F3F4(v66, &v59, qword_34C708, &qword_2D1620);
  v37 = v34;
  if (v60)
  {

    sub_30B8(v66, qword_34C708, &qword_2D1620);
    sub_306C(v68);
    sub_306C(v69);
    sub_306C(v70);
    (*(v34 + 8))(v6, v3);
    sub_306C(v74);
    sub_306C(v71);
    sub_306C(v72);
    sub_306C(v73);
    sub_306C(v64);
    sub_306C(v65);
    sub_F338(&v59, &v61);
  }

  else
  {
    sub_EEAC(v68, &v61);
    v38 = sub_2C9E60();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_2C9E50();
    v62 = v38;
    v63 = &protocol witness table for ContactsManager;

    *&v61 = v41;
    sub_30B8(v66, qword_34C708, &qword_2D1620);
    sub_306C(v68);
    sub_306C(v69);
    sub_306C(v70);
    (*(v37 + 8))(v6, v3);
    sub_306C(v74);
    sub_306C(v71);
    sub_306C(v72);
    sub_306C(v73);
    sub_306C(v64);
    sub_306C(v65);
    if (v60)
    {
      sub_30B8(&v59, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v61, v32 + 136);
  type metadata accessor for PlayMediaCatDialogService();
  v42 = swift_allocObject();
  v42[5] = 0x6964654D79616C50;
  v42[6] = 0xEF746E65746E4961;
  v42[2] = 0xD000000000000011;
  v42[3] = 0x80000000002DA8D0;
  v42[4] = v32;
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_playMediaCatDialogService) = v42;
  v43 = sub_2C9C10();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_viewFactory) = sub_2C9BF0();
  sub_EEAC(v81, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_appNameResolver);
  sub_EEAC(v79, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_encryptionProvider);
  sub_EEAC(v78, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_sharedContextProvider);
  sub_EEAC(v84, v74);
  sub_EEAC(v82, v73);
  v46 = sub_2CBCD0();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_2CBCB0();
  v50 = (v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_seDeviceProvider);
  v50[3] = v46;
  v50[4] = &protocol witness table for SEDeviceProvider;
  *v50 = v49;
  sub_306C(v82);
  sub_30B8(v58, &qword_34E480, &qword_2D2280);
  sub_306C(v78);
  sub_306C(v79);
  sub_306C(v80);
  sub_306C(v81);
  sub_306C(v83);
  sub_306C(v84);
  sub_F338(&v75, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_siriKitTaskLoggingProvider);
  v84[0] = v22;
  sub_BED74();
  v51 = sub_2C97B0();

  return v51;
}

uint64_t sub_BE22C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21[-v6];
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "SiriForAirPlayFlow#on Handling input", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = sub_2CA7B0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  swift_beginAccess();
  sub_A4888(v7, v2 + v19);
  swift_endAccess();
  return 1;
}

uint64_t sub_BE4DC(void (*a1)(char *))
{
  v2 = sub_2C9EC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = v3;
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "SiriForAirPlayFlow#execute started", v15, 2u);
    v3 = v20;
  }

  (*(v8 + 8))(v11, v7);
  v16 = *(v21 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent);
  v17 = v16;
  sub_BE784(v16);

  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_BE784(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21[-v6];
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "SiriForAirPlayFlow#getLocalExecuteResponse", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v18 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  v17 = *(v2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow + 8);
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  swift_beginAccess();
  sub_F3F4(v2 + v19, v7, &qword_34E480, &qword_2D2280);

  v18(v7, a1);

  sub_30B8(v7, &qword_34E480, &qword_2D2280);
  sub_2C9EA0();
}

uint64_t sub_BEA28()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow + 8);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher));
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_playMediaCatDialogService);

  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_commonMediaIntentCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService));
  v4 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_viewFactory);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider));
  return v0;
}

uint64_t sub_BEB04()
{
  sub_BEA28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriForAirPlayFlow()
{
  result = qword_34EC10;
  if (!qword_34EC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_BEBB0()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_BEC7C(uint64_t a1)
{
  v2 = *v1;
  sub_BE22C(a1);
  return 1;
}

uint64_t sub_BECC8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SiriForAirPlayFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_BED04(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_BED74()
{
  result = qword_34ED60;
  if (!qword_34ED60)
  {
    type metadata accessor for ConfirmInterruptionFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34ED60);
  }

  return result;
}

uint64_t sub_BEE40(void (*a1)(void), uint64_t a2, const char *a3)
{
  v5 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v15 = sub_2CDFE0();
  v16 = sub_2CE660();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = a1;
    v31 = v19;
    v20 = v19;
    *v18 = 136446210;
    v21 = sub_2CCCA0();
    v28 = v9;
    v29 = v8;
    v23 = v10;
    v24 = sub_3F08(v21, v22, &v31);
    v8 = v29;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_0, v15, v16, v27, v18, 0xCu);
    sub_306C(v20);
    a1 = v30;

    (*(v23 + 8))(v13, v28);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v25 = type metadata accessor for SnippetModelResponse();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_BF19C(v8);
}

uint64_t type metadata accessor for SnippetModelResponse()
{
  result = qword_34EE60;
  if (!qword_34EE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BF19C(uint64_t a1)
{
  v2 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_BF22C()
{
  sub_BF2C8();
  if (v0 <= 0x3F)
  {
    sub_BF320();
    if (v1 <= 0x3F)
    {
      sub_BF370();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_BF2C8()
{
  if (!qword_34EE70)
  {
    sub_2CD230();
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34EE70);
    }
  }
}

void sub_BF320()
{
  if (!qword_34EE78)
  {
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34EE78);
    }
  }
}

void sub_BF370()
{
  if (!qword_34EE80)
  {
    sub_2DB30(&unk_34EE88, qword_2D2CB8);
    v0 = sub_2CEB90();
    if (!v1)
    {
      atomic_store(v0, &qword_34EE80);
    }
  }
}

uint64_t sub_BF40C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  return a1;
}

void sub_BF464(Swift::String a1)
{
  v2 = v1[1];
  v3 = *v1 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    a1._countAndFlagsBits = 32;
    object = a1._object;
    a1._object = 0xE100000000000000;
    sub_2CE350(a1);
    a1._countAndFlagsBits = countAndFlagsBits;
    a1._object = object;
  }

  sub_2CE350(a1);
}

uint64_t sub_BF4CC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_BF508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DB730;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000015;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000015, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000015;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_BFB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC150;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000017;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000017, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000017;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C0210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC120;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C0894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0F0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000029;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000029, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000029;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000018;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000018, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000018;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC0B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C1C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC090;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000012;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000012, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000012;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC070;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000013;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000013, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000013;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C2928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000019;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000019, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_C2FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC030;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "catServiceExecute";
  *(v21 + 24) = 17;
  *(v21 + 32) = 2;
  v59 = v11;
  v22 = *(v11 + 32);
  v63 = v10;
  v22(v21 + v19, v14);
  v23 = (v21 + v20);
  *v23 = v55;
  v23[1] = a5;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v17;
  *(v24 + 32) = v17;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001DLL;
  *(v24 + 80) = v65;

  v50 = v24;
  LOBYTE(v49) = 2;
  v48 = 125;
  v54 = v16;
  sub_2CDF90();

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D7C;
  *(v27 + 24) = v21;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001DLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001DLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13D84;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E010;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}