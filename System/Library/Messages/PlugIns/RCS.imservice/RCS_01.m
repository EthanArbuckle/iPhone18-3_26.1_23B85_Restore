uint64_t sub_1B370()
{
  v1 = v0[35];
  v2 = v0[36];
  v0[43] = swift_unknownObjectUnownedLoadStrong();
  v0[44] = *(v2 + 40);
  v0[45] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x7B1F000000000000;
  v0[46] = sub_F0AEC();
  v0[47] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_1B424, v4, v3);
}

uint64_t sub_1B424()
{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v5 = v0[43];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[33];

  v9 = v3(v8, v6, v7);
  v11 = v10;
  swift_unknownObjectRelease();
  v0[48] = v9;
  v0[49] = v11;

  return _swift_task_switch(sub_1B4D8, v4, 0);
}

uint64_t sub_1B4D8()
{
  v1 = v0[46];
  v2 = v0[35];
  v3 = v0[36];
  v0[50] = swift_unknownObjectUnownedLoadStrong();
  v0[51] = *(v3 + 48);
  v0[52] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x4D2E000000000000;
  v0[53] = sub_F0ADC();
  v5 = sub_F0A6C();

  return _swift_task_switch(sub_1B580, v5, v4);
}

uint64_t sub_1B580()
{
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v5 = *(v0 + 336);
  v7 = *(v0 + 288);
  v6 = *(v0 + 296);
  v8 = *(v0 + 264);

  *(v0 + 73) = v4(v8, v6, v7);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1B62C, v5, 0);
}

id sub_1B62C()
{
  v1 = *(v0 + 73);
  if (v1 != 43)
  {
    if (v1 == 45)
    {
      v2 = *(v0 + 384);
      v3 = *(v0 + 392);

      v4._countAndFlagsBits = v2;
      v4._object = v3;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 144), v4, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (!v5)
      {
        v29 = [*(v0 + 256) isFromMe];
        v30 = v29;
        if (v29)
        {
          v31 = *(v0 + 392);
          v32 = *(v0 + 248);

          v33 = *(v0 + 144);
          v34 = *(v0 + 160);
          v35 = *(v0 + 176);
          *(v32 + 41) = *(v0 + 185);
          *(v32 + 16) = v34;
          *(v32 + 32) = v35;
          *v32 = v33;
          v36 = (v32 + 57);
        }

        else
        {
          result = [*(v0 + 256) sender];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v37 = result;
          v38 = *(v0 + 392);

          v39 = sub_F07EC();
          v41 = v40;

          v42._countAndFlagsBits = v39;
          v42._object = v41;
          RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 80), v42, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          if (v43)
          {
            sub_3CAB8(v0 + 144);
            goto LABEL_9;
          }

          v32 = *(v0 + 248);
          v44 = *(v0 + 80);
          v45 = *(v0 + 96);
          v46 = *(v0 + 112);
          *(v32 + 41) = *(v0 + 121);
          *(v32 + 16) = v45;
          *(v32 + 32) = v46;
          *v32 = v44;
          v47 = *(v0 + 144);
          v48 = *(v0 + 160);
          v49 = *(v0 + 176);
          *(v32 + 105) = *(v0 + 185);
          *(v32 + 80) = v48;
          *(v32 + 96) = v49;
          *(v32 + 64) = v47;
          v36 = (v32 + 121);
        }

        *v36 = 0;
        *(v32 + 122) = v30 ^ 1;
        v50 = *(v0 + 328);

        v28 = *(v0 + 8);
        goto LABEL_10;
      }

      v6 = *(v0 + 392);
    }

    else
    {
      v21 = *(v0 + 384);
      v20 = *(v0 + 392);
      v23 = *(v0 + 288);
      v22 = *(v0 + 296);
      v24 = *(v0 + 256);
      type metadata accessor for RCSMessageCreator.MessageCreationError();
      swift_getWitnessTable();
      swift_allocError();
      *v25 = v24;
      v25[1] = v21;
      v25[2] = v20;
      v25[3] = 0x6000000000000000;
      swift_willThrow();
      v26 = v24;
    }

LABEL_9:
    v27 = *(v0 + 328);

    v28 = *(v0 + 8);
LABEL_10:

    return v28();
  }

  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  v9 = *(v0 + 280);
  v52 = *(v0 + 288);
  v10 = *(v0 + 272);
  *(v0 + 432) = swift_unknownObjectUnownedLoadStrong();
  v11 = *(v8 - 8);
  (*(v11 + 16))(v7, v10, v8);
  (*(v11 + 56))(v7, 0, 1, v8);
  v12 = *(v52 + 24);
  v51 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 440) = v14;
  *v14 = v0;
  v14[1] = sub_1B9E8;
  v15 = *(v0 + 328);
  v17 = *(v0 + 288);
  v16 = *(v0 + 296);
  v18 = *(v0 + 264);

  return v51(v0 + 208, v18, v15, v16, v17);
}

uint64_t sub_1B9E8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  v2[56] = v0;

  v5 = v2[54];
  if (v0)
  {
    v6 = v2[49];
    v7 = v2[42];
    (*(v2[40] + 8))(v2[41], v2[39]);
    swift_unknownObjectRelease();

    v8 = sub_1BCE8;
    v9 = v7;
  }

  else
  {
    v10 = v2[42];
    (*(v2[40] + 8))(v2[41], v2[39]);
    swift_unknownObjectRelease();
    v8 = sub_1BB78;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

id sub_1BB78()
{
  v1 = [*(v0 + 256) isFromMe];
  if (v1)
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 248);

    sub_55248((v0 + 208), v3);
    v4 = 57;
LABEL_7:
    v20 = *(v0 + 248);
    *(v20 + v4) = 1;
    *(v20 + 122) = v1 ^ 1;
    v21 = *(v0 + 328);

    v15 = *(v0 + 8);
    goto LABEL_8;
  }

  result = [*(v0 + 256) sender];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(v0 + 448);
  v8 = *(v0 + 392);

  v9 = sub_F07EC();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 16), v12, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v13)
  {
    v16 = *(v0 + 248);
    v17 = *(v0 + 16);
    v18 = *(v0 + 32);
    v19 = *(v0 + 48);
    *(v16 + 41) = *(v0 + 57);
    v16[1] = v18;
    v16[2] = v19;
    *v16 = v17;
    sub_55248((v0 + 208), (v16 + 4));
    v4 = 121;
    goto LABEL_7;
  }

  sub_1EDC((v0 + 208));
  v14 = *(v0 + 328);

  v15 = *(v0 + 8);
LABEL_8:

  return v15();
}

uint64_t sub_1BCE8()
{
  v1 = v0[56];
  v2 = v0[41];

  v3 = v0[1];

  return v3();
}

id sub_1BD4C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 80), v3, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = [*(v0 + 152) isFromMe];
  if (v6)
  {
    v7 = *(v0 + 144);
    v8 = 57;
    v9 = v7;
LABEL_9:
    v21 = *(v0 + 80);
    v22 = *(v0 + 96);
    v23 = *(v0 + 112);
    *(v9 + 41) = *(v0 + 121);
    v9[1] = v22;
    v9[2] = v23;
    *v9 = v21;
    *(v7 + v8) = 0;
    *(v7 + 122) = v6 ^ 1;
    v5 = *(v0 + 8);
    goto LABEL_10;
  }

  result = [*(v0 + 152) sender];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = sub_F07EC();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 16), v15, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v16)
  {
    v17 = *(v0 + 144);
    v9 = v17 + 4;
    v18 = *(v0 + 16);
    v19 = *(v0 + 32);
    v20 = *(v0 + 48);
    *(v17 + 41) = *(v0 + 57);
    v17[1] = v19;
    v17[2] = v20;
    *v17 = v18;
    v7 = *(v0 + 144);
    v8 = 121;
    LOBYTE(v6) = 0;
    goto LABEL_9;
  }

  sub_3CAB8(v0 + 80);
LABEL_2:
  v5 = *(v0 + 8);
LABEL_10:

  return v5();
}

uint64_t sub_1BED0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 328);
  if (v0)
  {
    v6 = sub_1C254;
  }

  else
  {
    v6 = sub_1BFFC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1BFFC()
{
  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 123) = *(v0 + 251);
  v2 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v2;
  v3 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 352) = v4;
  *v4 = v0;
  v4[1] = sub_1C0C4;
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);

  return RCSMessageCreator.createRCSMessage(with:originalItem:with:using:)(v9, v7, v8, v0 + 16, v5);
}

uint64_t sub_1C0C4()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 328);
  if (v0)
  {
    v6 = sub_1C4A4;
  }

  else
  {
    v6 = sub_1C1F0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1C1F0()
{
  sub_5EFF4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C254()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[35];
  v0[46] = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v2 + 88);
  v0[47] = v4;
  v0[48] = *(v4 + 40);
  v0[49] = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0x7B1F000000000000;
  sub_F0AEC();
  v5 = v3;
  v0[50] = sub_F0ADC();
  v7 = sub_F0A6C();

  return _swift_task_switch(sub_1C31C, v7, v6);
}

uint64_t sub_1C31C()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[46];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[37];

  v0[51] = *(v7 + 80);
  v9 = v4(v8);
  v11 = v10;
  swift_unknownObjectRelease();
  v0[52] = v9;
  v0[53] = v11;

  return _swift_task_switch(sub_1C3D4, v6, 0);
}

uint64_t sub_1C3D4()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[47];
  v5 = v0[35];
  v6 = v0[43] | 0x2000000000000000;
  type metadata accessor for RCSMessageCreator.MessageCreationError();
  swift_getWitnessTable();
  swift_allocError();
  *v7 = v5;
  v7[1] = v2;
  v7[2] = v1;
  v7[3] = v6;
  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1C4A4()
{
  sub_5EFF4(v0 + 16);
  v1 = *(v0 + 360);
  v2 = *(v0 + 8);

  return v2();
}

id sub_1C508()
{
  v1 = [*(v0 + 392) messageSummaryInfo];
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_F076C();

  *(v0 + 328) = sub_F07EC();
  *(v0 + 336) = v4;
  sub_F0F3C();
  if (*(v3 + 16) && (v5 = sub_51FA8(v0 + 184), (v6 & 1) != 0))
  {
    sub_3FE38(*(v3 + 56) + 32 * v5, v0 + 264);
    sub_54F34(v0 + 184);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_27:

      goto LABEL_11;
    }

    v8 = *(v0 + 344);
    v7 = *(v0 + 352);
    *(v0 + 360) = sub_F07EC();
    *(v0 + 368) = v9;
    sub_F0F3C();
    if (*(v3 + 16))
    {
      v10 = sub_51FA8(v0 + 224);
      if (v11)
      {
        sub_3FE38(*(v3 + 56) + 32 * v10, v0 + 296);
        sub_54F34(v0 + 224);

        sub_37310(0, &qword_128DE0, CTLazuliSecureGroupVersion_ptr);
        if (swift_dynamicCast())
        {
          v12 = *(v0 + 376);
          v13 = [objc_allocWithZone(CTLazuliOriginalMessageID) init];
          v14 = sub_F07BC();

          [v13 setUuid:v14];

          [v13 setSecureGroupVersion:v12];
          goto LABEL_12;
        }

        goto LABEL_27;
      }
    }

    v15 = v0 + 224;
  }

  else
  {

    v15 = v0 + 184;
  }

  sub_54F34(v15);
LABEL_11:
  v13 = [*(v0 + 392) encrypted];
LABEL_12:
  *(v0 + 472) = v13;
  v16 = *(v0 + 392);
  sub_5BD2C(*(v0 + 408), v0 + 16);
  result = [v16 guid];
  if (result)
  {
    v18 = result;
    v19 = *(v0 + 392);
    v20 = sub_F07EC();
    v69 = v21;
    v70 = v20;

    v22 = [v19 guid];
    v71 = v13;
    if (v22)
    {
      v23 = v22;
      v24 = sub_F07EC();
      v67 = v25;
      v68 = v24;
    }

    else
    {
      v67 = 0;
      v68 = 0;
    }

    v26 = *(v0 + 456);
    v27 = *(v0 + 424);
    v28 = *(v0 + 432);
    v29 = *(v0 + 416);
    v30 = *(v0 + 400);
    swift_unknownObjectUnownedLoadStrong();
    v31 = *(v28 + 88);
    *(v0 + 480) = v31;
    v32 = *(v31 + 32);
    *(v0 + 488) = *(v28 + 80);
    v33 = v32(v29);
    v65 = v34;
    v66 = v33;
    v63 = v36;
    v64 = v35;
    swift_unknownObjectRelease();
    v37 = type metadata accessor for RCSMessage.Content(0);
    v38 = *(*(v37 - 8) + 56);
    v38(v26, 1, 1, v37);
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    v39 = v30;
    if (!v30)
    {
      v39 = *(v0 + 392);
    }

    v40 = *(v0 + 448);
    v41 = *(v0 + 456);
    v42 = *(v0 + 440);
    v43 = v30;
    v44 = sub_E9318(_swiftEmptyArrayStorage);

    v45 = v42[8];
    v38(v40 + v45, 1, 1, v37);
    v46 = v40 + v42[9];
    *(v46 + 32) = 0;
    *v46 = 0u;
    *(v46 + 16) = 0u;
    *(v40 + v42[13]) = 0;
    *(v40 + v42[14]) = 0;
    sub_5BD2C(v0 + 16, v40);
    v40[16] = v70;
    v40[17] = v69;
    v40[18] = v68;
    v40[19] = v67;
    v47 = (v40 + v42[15]);
    *v47 = v66;
    v47[1] = v65;
    v47[2] = v64;
    v47[3] = v63;
    sub_3896C(v71);
    sub_1CDE8(v41, v40 + v45, &unk_127FA0, &qword_F34C0);
    sub_1CDE8(v0 + 144, v46, &qword_127B08, &qword_F29A0);
    v40[20] = v71;
    *(v40 + v42[10]) = v44;
    *(v40 + v42[11]) = 0;
    if (*(v44 + 16))
    {

      v48 = sub_E92AC();
      if (v49)
      {
        v50 = (*(v44 + 56) + 16 * v48);
        v52 = *v50;
        v51 = v50[1];
      }

      else
      {
        v51 = 0xE700000000000000;
        v52 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v51 = 0xE700000000000000;
      v52 = 0x6E776F6E6B6E75;
    }

    v54 = *(v0 + 448);
    v53 = *(v0 + 456);
    v55 = *(v0 + 440);
    v56 = *(v0 + 384);
    sub_372B0(v0 + 144, &qword_127B08, &qword_F29A0);
    sub_372B0(v53, &unk_127FA0, &qword_F34C0);
    sub_5EFF4(v0 + 16);
    v57 = (v54 + *(v55 + 48));
    *v57 = v52;
    v57[1] = v51;
    sub_3CA08(v54, v56);
    v58 = swift_task_alloc();
    *(v0 + 496) = v58;
    *v58 = v0;
    v58[1] = sub_1CAD4;
    v59 = *(v0 + 416);
    v60 = *(v0 + 424);
    v62 = *(v0 + 384);
    v61 = *(v0 + 392);

    return sub_CDE68(v62, v61, v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAD4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(v4 + 504) = v1;

  v7 = *(v4 + 464);
  if (v1)
  {
    v8 = sub_1CD5C;
  }

  else
  {
    *(v4 + 139) = a1 & 1;
    v8 = sub_1CC14;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1CC14()
{
  if (*(v0 + 139) == 1)
  {
    v1 = *(v0 + 448);
    v2 = *(v0 + 456);
    sub_CE48C(*(v0 + 472));
  }

  else
  {
    v5 = *(v0 + 480);
    v4 = *(v0 + 488);
    v6 = *(v0 + 408);
    v7 = *(v0 + 392);
    v8 = RCSMessage.SenderInfo.description.getter();
    v10 = v9;
    type metadata accessor for RCSMessageCreator.MessageCreationError();
    swift_getWitnessTable();
    swift_allocError();
    *v11 = v7;
    v11[1] = v8;
    v11[2] = v10;
    v11[3] = 0x6000000000000000;
    swift_willThrow();
    v13 = *(v0 + 448);
    v12 = *(v0 + 456);
    v14 = *(v0 + 384);
    sub_CE48C(*(v0 + 472));
    sub_3897C(v14);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CD5C()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 384);
  sub_CE48C(*(v0 + 472));
  sub_3897C(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1CDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CE50()
{
  v51 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = sub_E7CB4(_swiftEmptyArrayStorage);
  v4 = *(v1 + 40);
  *(v0 + 336) = v4;
  v5 = v2 + *(type metadata accessor for RCSMessage(0) + 60) + v4;
  *(v0 + 168) = *(v5 + 16);
  v6 = *(v5 + 24);
  *(v0 + 176) = v6;
  if (v6)
  {
    v7 = *(v0 + 120);
    v8 = RCSRichCards.files()();
    *(v0 + 184) = v8;
    v11 = *(v8 + 16);
    *(v0 + 192) = v11;
    if (v11)
    {
      v12 = *(v0 + 152);
      v13 = *(v0 + 128);
      *(v0 + 208) = 0;
      *(v0 + 216) = v3;
      *(v0 + 200) = v3;
      if (*(v8 + 16))
      {
        v14 = *(v0 + 136);
        sub_23624(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), *(v0 + 160), type metadata accessor for RCSFile);
        *(v0 + 224) = *(v14 + *(v13 + 44));
        v15 = *(v13 + 24);
        *(v0 + 232) = v15;
        *(v0 + 240) = *(v15 + 176);
        *(v0 + 248) = (v15 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
        *(v0 + 256) = sub_F0AEC();
        *(v0 + 264) = sub_F0ADC();
        v16 = sub_F0A6C();
        v18 = v17;
        v8 = sub_1D2E8;
        v9 = v16;
        v10 = v18;

        return _swift_task_switch(v8, v9, v10);
      }

      __break(1u);
LABEL_22:
      __break(1u);
      return _swift_task_switch(v8, v9, v10);
    }
  }

  v19 = *(v0 + 120);
  v20 = objc_allocWithZone(IMUrlToTransferMap);
  v21 = sub_F075C();
  v22 = [v20 initWithUrlToTransferGuids:v21];

  v23 = [v22 dictionaryRepresentation];
  v24 = sub_F076C();

  v25 = RCSRichCards.attributes.getter();
  v26 = sub_F07EC();
  v28 = v27;
  v29 = sub_F07EC();
  if (*(v24 + 16))
  {
    v31 = sub_51FEC(v29, v30);
    v33 = v32;

    if (v33)
    {
      sub_3FE38(*(v24 + 56) + 32 * v31, v0 + 16);

      sub_54F88((v0 + 16), (v0 + 80));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v25;
      sub_52328((v0 + 80), v26, v28, isUniquelyReferenced_nonNull_native);

      v35 = v25;
      goto LABEL_13;
    }
  }

  else
  {
  }

  sub_C7918(v26, v28, (v0 + 48));

  sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
  v35 = v25;
LABEL_13:
  v36 = *(*(v0 + 136) + 8);
  sub_51844(v35);

  v37 = sub_F075C();

  v38 = *(v3 + 16);
  if (v38)
  {
    v49 = v36;
    v39 = sub_9D6B8(v38, 0);
    v40 = sub_BDF68(&v50, v39 + 32, v38, v3);

    v8 = sub_66138();
    if (v40 != v38)
    {
      goto LABEL_22;
    }

    v36 = v49;
  }

  v42 = *(v0 + 128);
  v41 = *(v0 + 136);
  v43 = sub_F09EC();

  [v36 appendRichCards:v37 transferGuids:v43];

  v44 = *(v42 + 48);
  v45 = *(v41 + v44);
  if ((v45 & 1) == 0)
  {
    *(v41 + v44) = v45 | 1;
  }

  v46 = *(v0 + 160);
  *(*(v0 + 136) + *(*(v0 + 128) + 52)) = 9;

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1D2E8()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 176);
  v7 = *(v0 + 336);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);

  v10 = v3(v8 + v7, *(v9 + 16), v4);
  *(v0 + 272) = v10;
  v11 = swift_task_alloc();
  *(v0 + 280) = v11;
  *v11 = v0;
  v11[1] = sub_1D3D4;
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);

  return sub_D0920(v13, v12, v6, v10, v14);
}

uint64_t sub_1D3D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  v7 = v3[34];
  if (v1)
  {
    v8 = v4[23];

    v9 = sub_1E014;
  }

  else
  {

    v9 = sub_1D51C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1D51C()
{
  v56 = v0;
  if (*(v0 + 288))
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 160);
    v3 = *(*(v0 + 144) + 20);
    v4 = v2 + *(type metadata accessor for RCSFile.DispositionInformation(0) + 28) + v3;
    *(v0 + 304) = sub_F017C();
    *(v0 + 312) = v5;
    *(v0 + 320) = sub_F0ADC();
    v6 = sub_F0A6C();
    v8 = v7;
    v9 = sub_1DA08;
    goto LABEL_9;
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208) + 1;
  v14 = sub_37640(*(v0 + 160), type metadata accessor for RCSFile);
  if (v13 != v11)
  {
    v35 = *(v0 + 208) + 1;
    *(v0 + 208) = v35;
    *(v0 + 216) = v10;
    *(v0 + 200) = v12;
    v36 = *(v0 + 184);
    if (v35 < *(v36 + 16))
    {
      v37 = *(v0 + 128);
      v38 = *(v0 + 136);
      sub_23624(v36 + ((*(*(v0 + 152) + 80) + 32) & ~*(*(v0 + 152) + 80)) + *(*(v0 + 152) + 72) * v35, *(v0 + 160), type metadata accessor for RCSFile);
      *(v0 + 224) = *(v38 + *(v37 + 44));
      v39 = *(v37 + 24);
      *(v0 + 232) = v39;
      *(v0 + 240) = *(v39 + 176);
      *(v0 + 248) = (v39 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
      *(v0 + 256) = sub_F0AEC();
      *(v0 + 264) = sub_F0ADC();
      v6 = sub_F0A6C();
      v8 = v40;
      v9 = sub_1D2E8;
LABEL_9:
      v14 = v9;
      v15 = v6;
      v16 = v8;

      return _swift_task_switch(v14, v15, v16);
    }

    __break(1u);
    goto LABEL_23;
  }

  v17 = *(v0 + 184);

  v18 = *(v0 + 120);
  v19 = objc_allocWithZone(IMUrlToTransferMap);
  v20 = sub_F075C();
  v21 = [v19 initWithUrlToTransferGuids:v20];

  v22 = [v21 dictionaryRepresentation];
  v23 = sub_F076C();

  v24 = RCSRichCards.attributes.getter();
  v25 = sub_F07EC();
  v27 = v26;
  v28 = sub_F07EC();
  if (*(v23 + 16))
  {
    v30 = sub_51FEC(v28, v29);
    v32 = v31;

    if (v32)
    {
      sub_3FE38(*(v23 + 56) + 32 * v30, v0 + 16);

      sub_54F88((v0 + 16), (v0 + 80));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v24;
      sub_52328((v0 + 80), v25, v27, isUniquelyReferenced_nonNull_native);

      v34 = v24;
      goto LABEL_14;
    }
  }

  else
  {
  }

  sub_C7918(v25, v27, (v0 + 48));

  sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
  v34 = v24;
LABEL_14:
  v41 = *(*(v0 + 136) + 8);
  sub_51844(v34);

  v42 = sub_F075C();

  v43 = *(v12 + 16);
  if (v43)
  {
    v54 = v41;
    v44 = sub_9D6B8(v43, 0);
    v45 = sub_BDF68(&v55, v44 + 32, v43, v12);

    v14 = sub_66138();
    if (v45 == v43)
    {
      v41 = v54;
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    return _swift_task_switch(v14, v15, v16);
  }

LABEL_17:
  v47 = *(v0 + 128);
  v46 = *(v0 + 136);
  v48 = sub_F09EC();

  [v41 appendRichCards:v42 transferGuids:v48];

  v49 = *(v47 + 48);
  v50 = *(v46 + v49);
  if ((v50 & 1) == 0)
  {
    *(v46 + v49) = v50 | 1;
  }

  v51 = *(v0 + 160);
  *(*(v0 + 136) + *(*(v0 + 128) + 52)) = 9;

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1DA08()
{
  v1 = v0[40];
  v2 = v0[36];

  v0[41] = [v2 guid];

  return _swift_task_switch(sub_1DA90, 0, 0);
}

uint64_t sub_1DA90()
{
  v64 = v0;
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  if (v1)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 216);
    v6 = *(v0 + 328);
    v7 = sub_F07EC();
    v9 = v8;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v5;
    sub_BC254(v7, v9, v3, v2, isUniquelyReferenced_nonNull_native);

    v11 = v5;
    v12 = v5;
  }

  else
  {
    v13 = *(v0 + 200);
    v14 = sub_51FEC(*(v0 + 304), *(v0 + 312));
    LOBYTE(v13) = v15;

    if (v13)
    {
      v17 = (v0 + 216);
      v16 = *(v0 + 216);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v16;
      if ((v18 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }

    v11 = *(v0 + 216);
    v12 = *(v0 + 200);
  }

  while (1)
  {
    v22 = *(v0 + 192);
    v14 = *(v0 + 208) + 1;
    sub_37640(*(v0 + 160), type metadata accessor for RCSFile);
    if (v14 != v22)
    {
      break;
    }

    v23 = *(v0 + 184);

    v24 = *(v0 + 120);
    v25 = objc_allocWithZone(IMUrlToTransferMap);
    v26 = sub_F075C();
    v27 = [v25 initWithUrlToTransferGuids:v26];

    v28 = [v27 dictionaryRepresentation];
    v29 = sub_F076C();

    v30 = RCSRichCards.attributes.getter();
    v31 = sub_F07EC();
    v33 = v32;
    v34 = sub_F07EC();
    if (*(v29 + 16))
    {
      v36 = sub_51FEC(v34, v35);
      v38 = v37;

      if (v38)
      {
        sub_3FE38(*(v29 + 56) + 32 * v36, v0 + 16);

        sub_54F88((v0 + 16), (v0 + 80));
        v39 = swift_isUniquelyReferenced_nonNull_native();
        v63 = v30;
        sub_52328((v0 + 80), v31, v33, v39);

        v40 = v63;
        goto LABEL_17;
      }
    }

    else
    {
    }

    sub_C7918(v31, v33, (v0 + 48));

    sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
    v40 = v30;
LABEL_17:
    v48 = *(*(v0 + 136) + 8);
    sub_51844(v40);

    v49 = sub_F075C();

    v50 = *(v12 + 16);
    if (!v50)
    {
      goto LABEL_20;
    }

    v61 = v49;
    v62 = v48;
    v51 = sub_9D6B8(v50, 0);
    v52 = sub_BDF68(&v63, v51 + 32, v50, v12);
    v14 = v12;

    sub_66138();
    if (v52 == v50)
    {
      v49 = v61;
      v48 = v62;
LABEL_20:
      v54 = *(v0 + 128);
      v53 = *(v0 + 136);
      v55 = sub_F09EC();

      [v48 appendRichCards:v49 transferGuids:v55];

      v56 = *(v54 + 48);
      v57 = *(v53 + v56);
      if ((v57 & 1) == 0)
      {
        *(v53 + v56) = v57 | 1;
      }

      v58 = *(v0 + 160);
      *(*(v0 + 136) + *(*(v0 + 128) + 52)) = 9;

      v59 = *(v0 + 8);

      return v59();
    }

LABEL_26:
    __break(1u);
LABEL_27:
    v17 = (v0 + 112);
    sub_BC80C();
LABEL_5:
    v11 = *v17;
    v19 = *(v0 + 288);
    v20 = *(*(v11 + 48) + 16 * v14 + 8);

    v21 = *(*(v11 + 56) + 16 * v14 + 8);

    sub_ECE64(v14, v11);

    v12 = v11;
  }

  v41 = *(v0 + 208) + 1;
  *(v0 + 208) = v41;
  *(v0 + 216) = v11;
  *(v0 + 200) = v12;
  v42 = *(v0 + 184);
  if (v41 >= *(v42 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v43 = *(v0 + 128);
  v44 = *(v0 + 136);
  sub_23624(v42 + ((*(*(v0 + 152) + 80) + 32) & ~*(*(v0 + 152) + 80)) + *(*(v0 + 152) + 72) * v41, *(v0 + 160), type metadata accessor for RCSFile);
  *(v0 + 224) = *(v44 + *(v43 + 44));
  v45 = *(v43 + 24);
  *(v0 + 232) = v45;
  *(v0 + 240) = *(v45 + 176);
  *(v0 + 248) = (v45 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
  *(v0 + 256) = sub_F0AEC();
  *(v0 + 264) = sub_F0ADC();
  v47 = sub_F0A6C();

  return _swift_task_switch(sub_1D2E8, v47, v46);
}

uint64_t sub_1E014()
{
  v1 = v0[25];
  sub_37640(v0[20], type metadata accessor for RCSFile);

  v2 = v0[1];
  v3 = v0[37];

  return v2();
}

uint64_t sub_1E0A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v1 + 40);
  *(v0 + 216) = v3;
  v4 = v2 + v3;
  v5 = v2 + v3 + *(type metadata accessor for RCSMessage(0) + 60);
  v6 = *(v5 + 24);
  *(v0 + 88) = v6;
  if (v6)
  {
    *(v0 + 96) = *(v5 + 16);
    *(v0 + 104) = *(v2 + *(v1 + 44));
    v7 = *(v1 + 24);
    *(v0 + 112) = v7;
    *(v0 + 120) = *(v7 + 176);
    *(v0 + 128) = (v7 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
    *(v0 + 136) = sub_F0AEC();
    *(v0 + 144) = sub_F0ADC();
    v9 = sub_F0A6C();

    return _swift_task_switch(sub_1E32C, v9, v8);
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
    v12 = *(v0 + 64);
    v13 = *(v0 + 32);
    type metadata accessor for RCSMessageReceiver.MessageProcessingError();
    swift_getWitnessTable();
    swift_allocError();
    v15 = v14;
    v16 = (v14 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_23624(v4, v15, type metadata accessor for RCSMessage);
    sub_F0F9C(42);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v23._object = 0x8000000000100A30;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    sub_F08CC(v23);
    sub_F10CC();
    v24._countAndFlagsBits = 0x72742061206F7420;
    v24._object = 0xEE00726566736E61;
    sub_F08CC(v24);
    v17 = *(v0 + 24);
    *v16 = *(v0 + 16);
    v16[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1E32C()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 216);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);

  *(v0 + 152) = *(v9 + 16);
  v10 = v3(v8 + v7);
  *(v0 + 160) = v10;
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_1E420;
  v12 = *(v0 + 96);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v15 = *(v0 + 32);

  return sub_D0920(v15, v12, v6, v10, v13);
}

uint64_t sub_1E420(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_1ED98;
  }

  else
  {

    v5 = sub_1E53C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1E53C()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 136);
    *(v0 + 192) = *(*(v0 + 56) + 8);
    *(v0 + 200) = sub_F0ADC();
    v3 = sub_F0A6C();

    return _swift_task_switch(sub_1E78C, v3, v2);
  }

  else
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 112);
    v6 = *(v0 + 216);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 32);
    type metadata accessor for RCSMessageReceiver.MessageProcessingError();
    swift_getWitnessTable();
    swift_allocError();
    v11 = v10;
    v12 = (v10 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_23624(v8 + v6, v11, type metadata accessor for RCSMessage);
    sub_F0F9C(42);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v19._object = 0x8000000000100A30;
    v19._countAndFlagsBits = 0xD00000000000001ALL;
    sub_F08CC(v19);
    sub_F10CC();
    v20._countAndFlagsBits = 0x72742061206F7420;
    v20._object = 0xEE00726566736E61;
    sub_F08CC(v20);
    v13 = *(v0 + 24);
    *v12 = *(v0 + 16);
    v12[1] = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1E78C()
{
  v1 = v0[25];
  v2 = v0[22];

  v0[26] = [v2 guid];

  return _swift_task_switch(sub_1E814, 0, 0);
}

uint64_t sub_1E814()
{
  v59 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 40);
  [*(v0 + 192) appendFileTransferWithGUID:v1];

  if (v2 && (v3 = *(v0 + 40), (v4 = RCSChipList.attributes.getter()) != 0))
  {
    sub_51844(v4);

    v5 = sub_F075C();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  [*(v0 + 192) appendChipList:v5];

  v8 = *(v6 + 48);
  v9 = *(v7 + v8);
  if ((v9 & 1) == 0)
  {
    v9 |= 1uLL;
    *(v7 + v8) = v9;
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32) + *(v11 + 20);
  v14 = sub_DA2FC();
  v16 = sub_D002C(v14, v15);

  v17 = (v10 + *(v12 + 52));
  *v17 = v16;
  v17[1] = 0;
  v18 = type metadata accessor for RCSFile.DispositionInformation(0);
  if (*(v13 + *(v18 + 36)) == 2 && (v19 = (v13 + *(v18 + 40)), (v19[1] & 1) == 0))
  {
    v42 = *v19;
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v43 = sub_F06CC();
    sub_3C96C(v43, static Logger.rcs);
    v44 = sub_F06AC();
    v45 = sub_F0CCC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v42;
      _os_log_impl(&dword_0, v44, v45, "RCSFile disposition is .render and has timeLength %f, marking as audio message", v46, 0xCu);
    }

    v47 = *(v0 + 176);

    if ((v9 & 0x200000) == 0)
    {
      *(v7 + v8) = v9 | 0x200000;
    }

    *v17 = 2;
  }

  else
  {
    sub_DA2FC();
    v20 = sub_F07BC();

    if ([v20 im_isAudioMessageExtension])
    {
      v56 = v17;
      v57 = v8;
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 72);
      v21 = *(v0 + 80);
      v23 = *(v0 + 32);
      v24 = sub_F06CC();
      sub_3C96C(v24, static Logger.rcs);
      sub_23624(v23, v21, type metadata accessor for RCSFile);
      sub_23624(v23, v22, type metadata accessor for RCSFile);
      v25 = v20;
      v26 = sub_F06AC();
      v27 = sub_F0CCC();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 176);
      v30 = *(v0 + 72);
      v31 = *(v0 + 80);
      if (v28)
      {
        v54 = *(v0 + 176);
        v32 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v32 = 136315650;
        v33 = v31 + *(v11 + 20);
        log = v26;
        v52 = v27;
        v34 = *(v33 + 24);
        v35 = *(v33 + 32);

        sub_37640(v31, type metadata accessor for RCSFile);
        v36 = sub_3E850(v34, v35, &v58);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2112;
        *(v32 + 14) = v25;
        *v55 = v25;
        *(v32 + 22) = 2080;
        v37 = v30 + *(v11 + 20);
        v38 = *(v37 + 8);
        v39 = *(v37 + 16);
        v25 = v25;

        sub_37640(v30, type metadata accessor for RCSFile);
        v40 = sub_3E850(v38, v39, &v58);

        *(v32 + 24) = v40;
        _os_log_impl(&dword_0, log, v52, "Marking audio message based on type %s inferred ext %@ original filename %s", v32, 0x20u);
        sub_372B0(v55, &qword_127AF0, &qword_F28E0);

        swift_arrayDestroy();
      }

      else
      {

        sub_37640(v30, type metadata accessor for RCSFile);
        sub_37640(v31, type metadata accessor for RCSFile);
      }

      if ((v9 & 0x200000) == 0)
      {
        *(v7 + v57) = v9 | 0x200000;
      }

      *v56 = 2;
    }

    else
    {
      v41 = *(v0 + 176);
    }
  }

  v49 = *(v0 + 72);
  v48 = *(v0 + 80);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1ED98()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1EE0C()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  sub_23624(v5, v4, type metadata accessor for RCSMessage);
  v8 = *(v6 + 16);
  v9 = v7;
  swift_unknownObjectRetain();
  sub_CE990(v9, v4, v8, v1);
  sub_5BD2C(v5, v0 + 16);
  if (*(v0 + 138))
  {
    v10 = *(v0 + 144);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 64);
    v17 = sub_F07BC();
    [v10 setSender:v17];

    v18 = sub_F07BC();
    [v10 setUnformattedID:v18];

    if (v12 == 7103860 && v11 == 0xE300000000000000 || (sub_F122C() & 1) != 0)
    {
      v19 = sub_F07BC();
    }

    else
    {
      v70 = *(v0 + 192);
      v71 = *(v0 + 152);

      v72 = (v71 + *(v70 + 60));
      if (v72[1])
      {
        v73 = *v72;
        v19 = sub_F07BC();
      }

      else
      {
        v19 = 0;
      }
    }

    v20 = *(v0 + 144);
    v21 = IMCountryCodeForNumber();

    [v20 setCountryCode:v21];
    sub_5BD88(v0 + 80);
  }

  else
  {
    v22 = *(v0 + 240);
    v23 = *(*(v0 + 224) + 48);
    v24 = *(v22 + v23);
    if ((v24 & 4) == 0)
    {
      *(v22 + v23) = v24 | 4;
    }

    sub_5EFF4(v0 + 16);
  }

  v25 = *(v0 + 184);
  sub_37380(*(v0 + 152) + *(*(v0 + 192) + 32), v25, &unk_127FA0, &qword_F34C0);
  v26 = type metadata accessor for RCSMessage.Content(0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    v28 = *(v0 + 232);
    v27 = *(v0 + 240);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    v31 = *(v0 + 208);
    v32 = *(v0 + 152);
    type metadata accessor for RCSMessageReceiver.MessageProcessingError();
    swift_getWitnessTable();
    swift_allocError();
    v34 = v33;
    v35 = (v33 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_23624(v32, v34, type metadata accessor for RCSMessage);
    v36 = 0x80000000001007A0;
    v37 = 0xD000000000000044;
LABEL_12:
    *v35 = v37;
    v35[1] = v36;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v28 + 8))(v27, v30);
LABEL_13:
    v38 = *(v0 + 240);
    v39 = *(v0 + 200);
    v41 = *(v0 + 176);
    v40 = *(v0 + 184);

    v42 = *(v0 + 8);
LABEL_14:

    return v42();
  }

  v44 = *(v0 + 184);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v74 = *v44;
        v75 = *(v44 + 8);
        *(v0 + 248) = *(v44 + 24);
        v76 = *(v44 + 32);
        *(v0 + 256) = v76;
        v77 = swift_task_alloc();
        *(v0 + 264) = v77;
        *v77 = v0;
        v77[1] = sub_1FC44;
        v78 = *(v0 + 240);
        v79 = *(v0 + 224);

        return sub_D0004(v76, v79, v74, v75);
      }

      v103 = *(v0 + 232);
      v102 = *(v0 + 240);
      v104 = *(v0 + 216);
      v105 = *(v0 + 224);
      v106 = *(v0 + 208);
      v107 = *(v0 + 152);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError();
      swift_getWitnessTable();
      swift_allocError();
      v109 = v108;
      v110 = (v108 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_23624(v107, v109, type metadata accessor for RCSMessage);
      *v110 = 0xD00000000000005ALL;
      v110[1] = 0x8000000000100930;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v103 + 8))(v102, v105);
      v100 = type metadata accessor for RCSMessage.Content;
      v101 = v44;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v58 = *v44;
        v57 = *(v44 + 8);
        v59 = *(v44 + 16);
        v60 = [objc_opt_self() sharedFeatureFlags];
        v61 = [v60 isRCSEncryptionOptInTestEnabled];

        if (v61)
        {
          v136._countAndFlagsBits = sub_F07EC();
          v62 = sub_F092C(v136);

          if (v62)
          {
            v63 = *(v0 + 232);
            v64 = *(v0 + 216);
            v131 = *(v0 + 224);
            v133 = *(v0 + 240);
            v65 = *(v0 + 208);
            v66 = *(v0 + 152);

            type metadata accessor for RCSMessageReceiver.MessageProcessingError();
            swift_getWitnessTable();
            swift_allocError();
            v68 = v67;
            v69 = (v67 + *(sub_388C8(&qword_128C20, &unk_F65C0) + 48));
            sub_23624(v66, v68, type metadata accessor for RCSMessage);
            sub_F0F9C(79);
            v137._countAndFlagsBits = 0xD000000000000026;
            v137._object = 0x8000000000100A00;
            sub_F08CC(v137);
            v138._countAndFlagsBits = sub_F07EC();
            sub_F08CC(v138);

            v139._object = 0x80000000001009D0;
            v139._countAndFlagsBits = 0xD000000000000027;
            sub_F08CC(v139);
            *v69 = 0;
            v69[1] = 0xE000000000000000;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            (*(v63 + 8))(v133, v131);
            goto LABEL_13;
          }
        }

        v120 = *(v0 + 240);
        sub_CEA7C(v58, v57, v59, *(v0 + 224));

LABEL_48:
        v122 = *(v0 + 232);
        v121 = *(v0 + 240);
        v123 = *(v0 + 224);
        v124 = *(v0 + 200);
        v126 = *(v0 + 176);
        v125 = *(v0 + 184);
        sub_CED90(v123);
        (*(v122 + 8))(v121, v123);

        v42 = *(v0 + 8);
        goto LABEL_14;
      }

      v86 = *(v0 + 176);
      v87 = *(v44 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));
      *(v0 + 280) = v87;
      sub_22B7C(v44, v86, type metadata accessor for RCSFile);
      v88 = [objc_opt_self() sharedFeatureFlags];
      LODWORD(v86) = [v88 isRCSEncryptionOptInTestEnabled];

      if (!v86 || (v89 = *(v0 + 176) + *(*(v0 + 168) + 20), v91 = *(v89 + 8), v90 = *(v89 + 16), v140._countAndFlagsBits = sub_F07EC(), LOBYTE(v91) = sub_F092C(v140), , (v91 & 1) == 0))
      {
        v127 = swift_task_alloc();
        *(v0 + 288) = v127;
        *v127 = v0;
        v127[1] = sub_1FEE0;
        v128 = *(v0 + 240);
        v129 = *(v0 + 224);
        v130 = *(v0 + 176);

        return sub_CECEC(v130, v87, v129);
      }

      v92 = *(v0 + 232);
      v93 = *(v0 + 216);
      v94 = *(v0 + 224);
      v95 = *(v0 + 208);
      v132 = *(v0 + 240);
      v134 = *(v0 + 176);
      v96 = *(v0 + 152);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError();
      swift_getWitnessTable();
      swift_allocError();
      v98 = v97;
      v99 = (v97 + *(sub_388C8(&qword_128C20, &unk_F65C0) + 48));
      sub_23624(v96, v98, type metadata accessor for RCSMessage);
      sub_F0F9C(94);
      v141._countAndFlagsBits = 0xD000000000000035;
      v141._object = 0x8000000000100990;
      sub_F08CC(v141);
      v142._countAndFlagsBits = sub_F07EC();
      sub_F08CC(v142);

      v143._object = 0x80000000001009D0;
      v143._countAndFlagsBits = 0xD000000000000027;
      sub_F08CC(v143);
      *v99 = 0;
      v99[1] = 0xE000000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v92 + 8))(v132, v94);
      v100 = type metadata accessor for RCSFile;
      v101 = v134;
    }

    sub_37640(v101, v100);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v47 = *(v0 + 232);
      v46 = *(v0 + 240);
      v81 = *(v0 + 216);
      v49 = *(v0 + 224);
      v82 = *(v0 + 208);
      v83 = *(v0 + 152);
      sub_37640(v44, type metadata accessor for RCSMessage.Content);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError();
      swift_getWitnessTable();
      swift_allocError();
      v85 = v84;
      v54 = (v84 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_23624(v83, v85, type metadata accessor for RCSMessage);
      v55 = 0x80000000001008C0;
      v56 = 0xD000000000000067;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        v28 = *(v0 + 232);
        v27 = *(v0 + 240);
        v111 = *(v0 + 216);
        v30 = *(v0 + 224);
        v112 = *(v0 + 208);
        v113 = *(v0 + 152);
        type metadata accessor for RCSMessageReceiver.MessageProcessingError();
        swift_getWitnessTable();
        swift_allocError();
        v115 = v114;
        v35 = (v114 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
        sub_23624(v113, v115, type metadata accessor for RCSMessage);
        v36 = 0x80000000001007F0;
        v37 = 0xD000000000000050;
        goto LABEL_12;
      }

      v47 = *(v0 + 232);
      v46 = *(v0 + 240);
      v48 = *(v0 + 216);
      v49 = *(v0 + 224);
      v50 = *(v0 + 208);
      v51 = *(v0 + 152);
      sub_37640(v44, type metadata accessor for RCSMessage.Content);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError();
      swift_getWitnessTable();
      swift_allocError();
      v53 = v52;
      v54 = (v52 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_23624(v51, v53, type metadata accessor for RCSMessage);
      v55 = 0x8000000000100850;
      v56 = 0xD000000000000068;
    }

    *v54 = v56;
    v54[1] = v55;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v47 + 8))(v46, v49);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v80 = *(v0 + 240);
    sub_CEB68(*v44, *(v0 + 224));
    goto LABEL_48;
  }

  v116 = *v44;
  *(v0 + 304) = *v44;
  v117 = swift_task_alloc();
  *(v0 + 312) = v117;
  *v117 = v0;
  v117[1] = sub_200D8;
  v118 = *(v0 + 240);
  v119 = *(v0 + 224);

  return sub_CEC28(v116, v119);
}

uint64_t sub_1FC44()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 248);

    v5 = sub_1FE2C;
  }

  else
  {
    v5 = sub_1FD60;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1FD60()
{
  v2 = v0[31];
  v1 = v0[32];

  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  sub_CED90(v5);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1FE2C()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  (*(v3 + 8))(v2, v4);
  v5 = v0[34];
  v6 = v0[30];
  v7 = v0[25];
  v9 = v0[22];
  v8 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1FEE0()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_202B0;
  }

  else
  {
    v3 = sub_1FFF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1FFF4()
{
  v1 = v0[35];
  v2 = v0[22];

  sub_37640(v2, type metadata accessor for RCSFile);
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  sub_CED90(v5);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_200D8()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_20384;
  }

  else
  {
    v3 = sub_201EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_201EC()
{
  v1 = v0[38];

  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  sub_CED90(v4);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_202B0()
{
  v1 = v0[35];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[22];

  (*(v3 + 8))(v2, v4);
  sub_37640(v5, type metadata accessor for RCSFile);
  v6 = v0[37];
  v7 = v0[30];
  v8 = v0[25];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20384()
{
  v1 = v0[38];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  (*(v3 + 8))(v2, v4);
  v5 = v0[40];
  v6 = v0[30];
  v7 = v0[25];
  v9 = v0[22];
  v8 = v0[23];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20438()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[32];
  v4 = *(*(sub_388C8(&qword_127B20, &unk_F74E0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[39] = v5;
  sub_F02FC();
  v6 = sub_F030C();
  v0[40] = v6;
  v7 = *(v6 - 8);
  v0[41] = v7;
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_37380(v3 + *(v2 + 32), v1, &unk_127FA0, &qword_F34C0);
  v8 = type metadata accessor for RCSMessage.Content(0);
  v9 = (*(*(v8 - 8) + 48))(v1, 1, v8);
  v10 = 0;
  if (v9 != 1)
  {
    sub_37380(v0[38], v0[37], &unk_127FA0, &qword_F34C0);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v10 = 8;
    }

    else
    {
      sub_37640(v0[37], type metadata accessor for RCSMessage.Content);
      v10 = 0;
    }
  }

  v0[42] = v10;
  sub_372B0(v0[38], &unk_127FA0, &qword_F34C0);
  v11 = sub_F035C();
  v0[43] = v11;
  v12 = *(v11 - 8);
  v0[44] = v12;
  v13 = *(v12 + 64) + 15;
  v0[45] = swift_task_alloc();
  v0[46] = sub_F0AEC();
  v0[47] = sub_F0ADC();
  v15 = sub_F0A6C();

  return _swift_task_switch(sub_206BC, v15, v14);
}

uint64_t sub_206BC()
{
  v1 = v0[47];
  v2 = v0[45];
  v4 = v0[32];
  v3 = v0[33];

  sub_CF0B8(v4, v2);

  return _swift_task_switch(sub_20740, 0, 0);
}

uint64_t sub_20740()
{
  v76 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);
  v6 = *(v0 + 312);
  sub_F032C();
  (*(v2 + 8))(v1, v3);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = 0;
  }

  else
  {
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);
    v7 = sub_F028C();
    (*(v8 + 8))(v10, v9);
  }

  v11 = *(v0 + 360);
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);
  v73 = *(v0 + 280);
  v14 = *(v0 + 256);
  v15 = objc_allocWithZone(IMMessageItem);
  v16 = sub_F09EC();
  v17 = sub_F07BC();

  v18 = [v15 initWithSender:0 time:v7 body:0 attributes:0 fileTransferGUIDs:v16 flags:v12 error:0 guid:v17 threadIdentifier:0];
  *(v0 + 384) = v18;

  v19 = *(v14 + 128);
  v20 = *(v14 + 136);
  v21 = sub_F07BC();
  [v18 setFallbackHash:v21];

  v22 = *(v73 + 60);
  v23 = (v14 + v22);
  if (*(v14 + v22 + 8))
  {
    v24 = *v23;
    v25 = *(v14 + v22 + 8);
LABEL_8:
    v28 = v18;

    v29 = sub_F07BC();

    goto LABEL_9;
  }

  if (v23[3])
  {
    v26 = v23[2];
    v27 = v23[3];

    goto LABEL_8;
  }

  v43 = v18;
  v29 = 0;
LABEL_9:
  v30 = *(v0 + 280);
  v31 = *(v0 + 256);
  [v18 setDestinationCallerID:v29];

  if (*(v31 + *(v30 + 44)) == 1)
  {
    [v18 setBalloonBundleID:IMBalloonBundleIdentifierChatBot];
  }

  v32 = *(*(v0 + 256) + 160);
  [v18 setEncrypted:v32 != 0];
  if (v32 >= 2)
  {
    v33 = v32;
    v34 = [v18 messageSummaryInfo];
    if (!v34)
    {
      v35 = sub_F075C();
      [v18 setMessageSummaryInfo:v35];
      v34 = v35;
    }

    v36 = [v18 messageSummaryInfo];
    if (v36)
    {
      v37 = v36;
      v38 = sub_F076C();

      *(v0 + 240) = sub_F07EC();
      *(v0 + 248) = v39;
      sub_F0F3C();
      *(v0 + 184) = sub_37310(0, qword_12A1D0, CTLazuliOriginalMessageID_ptr);
      *(v0 + 160) = v33;
      sub_54F88((v0 + 160), (v0 + 192));
      v40 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v38;
      sub_525C0((v0 + 192), v0 + 56, isUniquelyReferenced_nonNull_native);
      sub_54F34(v0 + 56);
      if (v38)
      {
        v42 = sub_F075C();
      }

      else
      {
        v42 = 0;
      }

      [v18 setMessageSummaryInfo:v42];
    }

    else
    {
      [v18 setMessageSummaryInfo:0];
    }

    v44 = [v18 messageSummaryInfo];
    if (v44)
    {
      v45 = v44;
      v46 = sub_F076C();

      *(v0 + 224) = sub_F07EC();
      *(v0 + 232) = v47;
      sub_F0F3C();
      v48 = [v33 secureGroupVersion];
      *(v0 + 120) = sub_37310(0, &qword_128DE0, CTLazuliSecureGroupVersion_ptr);
      *(v0 + 96) = v48;
      sub_54F88((v0 + 96), (v0 + 128));
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v46;
      sub_525C0((v0 + 128), v0 + 16, v49);
      sub_54F34(v0 + 16);
      if (v46)
      {
        v50 = sub_F075C();
      }

      else
      {
        v50 = 0;
      }

      [v18 setMessageSummaryInfo:v50];
    }

    else
    {
      [v18 setMessageSummaryInfo:0];
    }

    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 288);
    v52 = *(v0 + 256);
    v53 = sub_F06CC();
    sub_3C96C(v53, static Logger.rcs);
    sub_23624(v52, v51, type metadata accessor for RCSMessage);
    v54 = v33;
    v55 = sub_F06AC();
    v56 = sub_F0CDC();
    sub_CE48C(v32);
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 288);
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v59 = 136315650;
      v72 = v32;
      v61 = v54;
      v63 = *(v58 + 128);
      v62 = *(v58 + 136);

      sub_37640(v58, type metadata accessor for RCSMessage);
      v64 = sub_3E850(v63, v62, &v75);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2112;
      *(v59 + 14) = v61;
      *v60 = v72;
      *(v59 + 22) = 2112;
      v65 = [v61 secureGroupVersion];
      *(v59 + 24) = v65;
      v60[1] = v65;
      _os_log_impl(&dword_0, v55, v56, "Set message summary info for RCSMessage->IMMessageItem %s with originalID(%@), secureGroupVersion(%@) in the failure to decrypt case.", v59, 0x20u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      sub_1EDC(v74);

      sub_CE48C(v72);
    }

    else
    {

      sub_CE48C(v32);
      sub_37640(v58, type metadata accessor for RCSMessage);
    }
  }

  v66 = *(v0 + 368);
  v67 = *(v0 + 272);
  *(v0 + 392) = *(*(v0 + 264) + 16);
  *(v0 + 400) = *v23;
  *(v0 + 408) = v23[1];
  *(v0 + 416) = v23[2];
  *(v0 + 424) = v23[3];
  v68 = *(v67 + 88);
  *(v0 + 432) = v68;
  *(v0 + 440) = *(v68 + 184);
  *(v0 + 448) = (v68 + 184) & 0xFFFFFFFFFFFFLL | 0x9998000000000000;
  *(v0 + 456) = sub_F0ADC();
  v70 = sub_F0A6C();

  return _swift_task_switch(sub_20F64, v70, v69);
}

uint64_t sub_20F64()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[53];
  v8 = v0[50];
  v7 = v0[51];
  v9 = v0[49];
  v10 = v0[34];

  v0[58] = v4(v8, v7, v5, v6, *(v10 + 80), v3);

  return _swift_task_switch(sub_21020, 0, 0);
}

uint64_t sub_21020()
{
  if (*(v0 + 464))
  {
    [*(v0 + 384) setContext:*(v0 + 464)];
    swift_unknownObjectRelease();
  }

  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_210E4;
  v2 = *(v0 + 384);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  return sub_CEF28(v2, v3);
}

uint64_t sub_210E4()
{
  v2 = *(*v1 + 472);
  v3 = *v1;
  v3[60] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_21248, 0, 0);
  }

  else
  {
    v5 = v3[37];
    v4 = v3[38];
    v6 = v3[36];

    v7 = v3[1];
    v8 = v3[48];

    return v7(v8);
  }
}

uint64_t sub_21248()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);

  v4 = *(v0 + 8);
  v5 = *(v0 + 480);

  return v4();
}

uint64_t sub_212D4()
{
  v1 = v0[29];
  v0[40] = *(v0[28] + 16);
  v0[41] = *(v1 + 192);
  v0[42] = (v1 + 192) & 0xFFFFFFFFFFFFLL | 0xC96A000000000000;
  v0[43] = sub_F0AEC();
  v0[44] = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_21384, v3, v2);
}

uint64_t sub_21384()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 216);

  *(v0 + 640) = v3(v7, v5, v6) & 1;

  return _swift_task_switch(sub_21424, 0, 0);
}

uint64_t sub_21424()
{
  if (*(v0 + 640) == 1)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v1 = sub_F06CC();
    sub_3C96C(v1, static Logger.rcs);
    v2 = sub_F06AC();
    v3 = sub_F0CEC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Dropping message because the sender is blocked.", v4, 2u);
    }

    v5 = *(v0 + 288);
    v6 = *(v0 + 248);
    v7 = *(v0 + 208);

    (*(v5 + 56))(v7, 1, 1, v6);
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 296);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);

    v13 = *(v0 + 8);

    return v13(0);
  }

  v15 = *(v0 + 280);
  v16 = *(v0 + 216);
  v17 = type metadata accessor for RCSMessage(0);
  *(v0 + 360) = v17;
  sub_37380(v16 + *(v17 + 32), v15, &unk_127FA0, &qword_F34C0);
  v18 = type metadata accessor for RCSMessage.Content(0);
  v19 = (*(*(v18 - 8) + 48))(v15, 1, v18);
  v20 = *(v0 + 280);
  if (v19 == 1)
  {
    sub_372B0(*(v0 + 280), &unk_127FA0, &qword_F34C0);
    goto LABEL_14;
  }

  v21 = *(v0 + 280);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_37640(v20, type metadata accessor for RCSMessage.Content);
LABEL_14:
    sub_37380(*(v0 + 216) + *(v17 + 36), v0 + 168, &qword_127B08, &qword_F29A0);
    v33 = *(v0 + 344);
    v34 = *(v0 + 232);
    if (*(v0 + 192))
    {
      sub_55248((v0 + 168), v0 + 128);
      *(v0 + 400) = *(v34 + 144);
      *(v0 + 408) = (v34 + 144) & 0xFFFFFFFFFFFFLL | 0xB1B7000000000000;
      *(v0 + 416) = sub_F0ADC();
      v29 = sub_F0A6C();
      v31 = v35;
      v32 = sub_219A0;
    }

    else
    {
      sub_372B0(v0 + 168, &qword_127B08, &qword_F29A0);
      *(v0 + 424) = *(v34 + 152);
      *(v0 + 432) = (v34 + 152) & 0xFFFFFFFFFFFFLL | 0x6396000000000000;
      *(v0 + 440) = sub_F0ADC();
      v29 = sub_F0A6C();
      v31 = v36;
      v32 = sub_21D10;
    }

    goto LABEL_17;
  }

  v22 = *(v0 + 344);
  v23 = *(v0 + 232);
  v24 = *v20;
  v25 = v20[2];
  *(v0 + 32) = v20[1];
  *(v0 + 48) = v25;
  *(v0 + 16) = v24;
  v26 = v20[3];
  v27 = v20[4];
  v28 = v20[6];
  *(v0 + 96) = v20[5];
  *(v0 + 112) = v28;
  *(v0 + 64) = v26;
  *(v0 + 80) = v27;
  *(v0 + 368) = *(v23 + 136);
  *(v0 + 376) = (v23 + 136) & 0xFFFFFFFFFFFFLL | 0x56C3000000000000;
  *(v0 + 384) = sub_F0ADC();
  v29 = sub_F0A6C();
  v31 = v30;
  v32 = sub_217F0;
LABEL_17:

  return _swift_task_switch(v32, v29, v31);
}

uint64_t sub_217F0()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[40];
  v5 = v0[38];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[27];

  v3(v8, v0 + 2, v6, v7);
  v0[49] = 0;
  (*(v0[36] + 8))(v0[38], v0[31]);

  return _swift_task_switch(sub_218D4, 0, 0);
}

uint64_t sub_218D4()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[26];
  sub_53D58((v0 + 2));
  (*(v1 + 56))(v3, 1, 1, v2);
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v8 = v0[34];
  v7 = v0[35];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_219A0()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[40];
  v5 = v0[34];
  v7 = v0[29];
  v6 = v0[30];

  v3(v0 + 16, v6, v7);

  return _swift_task_switch(sub_21A3C, 0, 0);
}

uint64_t sub_21A3C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 216);
    (*(*(v0 + 264) + 8))(v2, *(v0 + 256));
    type metadata accessor for RCSMessageReceiver.MessageProcessingError();
    swift_getWitnessTable();
    swift_allocError();
    sub_23624(v6, v7, type metadata accessor for RCSMessage);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1EDC((v0 + 128));
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 296);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 312);
    sub_1EDC((v0 + 128));
    (*(v1 + 32))(v15, v2, v3);
    v16 = *(v0 + 216);
    v17 = *(v16 + *(*(v0 + 360) + 52));
    *(v0 + 641) = v17;
    if (v17)
    {
      if (v16[19])
      {
        v18 = v16[18];
        v19 = v16[19];
      }

      else
      {
        v18 = v16[16];
        v19 = v16[17];
      }

      *(v0 + 456) = v18;
      *(v0 + 464) = v19;
      v23 = *(v0 + 344);
      v24 = *(v0 + 232);
      *(v0 + 472) = *(v24 + 216);
      *(v0 + 480) = (v24 + 216) & 0xFFFFFFFFFFFFLL | 0x81EE000000000000;

      *(v0 + 488) = sub_F0ADC();
      v26 = sub_F0A6C();

      return _swift_task_switch(sub_21F40, v26, v25);
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 568) = v20;
      *v20 = v0;
      v20[1] = sub_2238C;
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);

      return sub_CFBA4(v21);
    }
  }
}

uint64_t sub_21D10()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[40];
  v5 = v0[37];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[27];

  v3(v8, v6, v7);
  v0[56] = 0;

  return _swift_task_switch(sub_21DD4, 0, 0);
}

uint64_t sub_21DD4()
{
  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 296), *(v0 + 248));
  v1 = *(v0 + 216);
  v2 = *(v1 + *(*(v0 + 360) + 52));
  *(v0 + 641) = v2;
  if (v2 == 1)
  {
    if (v1[19])
    {
      v3 = v1[18];
      v4 = v1[19];
    }

    else
    {
      v3 = v1[16];
      v4 = v1[17];
    }

    *(v0 + 456) = v3;
    *(v0 + 464) = v4;
    v9 = *(v0 + 344);
    v10 = *(v0 + 232);
    *(v0 + 472) = *(v10 + 216);
    *(v0 + 480) = (v10 + 216) & 0xFFFFFFFFFFFFLL | 0x81EE000000000000;

    *(v0 + 488) = sub_F0ADC();
    v12 = sub_F0A6C();

    return _swift_task_switch(sub_21F40, v12, v11);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 568) = v5;
    *v5 = v0;
    v5[1] = sub_2238C;
    v6 = *(v0 + 216);
    v7 = *(v0 + 224);

    return sub_CFBA4(v6);
  }
}

uint64_t sub_21F40()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v5 = v0[57];
  v6 = v0[40];
  v8 = v0[29];
  v7 = v0[30];

  v0[62] = v4(v5, v3, v7, v8);

  return _swift_task_switch(sub_21FF0, 0, 0);
}

uint64_t sub_21FF0()
{
  v1 = v0[62];
  if (v1)
  {
    v2 = v0[45];
    v3 = v0[43];
    v4 = v0[29];
    v5 = v0[27];
    v6 = *(v5 + 128);
    v7 = *(v5 + 136);
    v8 = sub_F07BC();
    [v1 setFallbackHash:v8];

    v9 = (v5 + *(v2 + 60));
    v0[63] = *v9;
    v0[64] = v9[1];
    v0[65] = v9[2];
    v0[66] = v9[3];
    v0[67] = *(v4 + 184);
    v0[68] = (v4 + 184) & 0xFFFFFFFFFFFFLL | 0x9998000000000000;
    v10 = v1;
    v0[69] = sub_F0ADC();
    v12 = sub_F0A6C();

    return _swift_task_switch(sub_22174, v12, v11);
  }

  else
  {
    v13 = swift_task_alloc();
    v0[71] = v13;
    *v13 = v0;
    v13[1] = sub_2238C;
    v14 = v0[27];
    v15 = v0[28];

    return sub_CFBA4(v14);
  }
}

uint64_t sub_22174()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[40];
  v10 = v0[29];
  v9 = v0[30];

  v0[70] = v3(v7, v6, v5, v4, v9, v10);

  return _swift_task_switch(sub_22238, 0, 0);
}

uint64_t sub_22238()
{
  v1 = *(v0 + 496);
  if (*(v0 + 560))
  {
    [*(v0 + 496) setContext:*(v0 + 560)];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 496);
  *(v0 + 600) = v2;
  *(v0 + 592) = v2;
  v12 = (*(v0 + 232) + 200);
  v13 = (*v12 + **v12);
  v3 = (*v12)[1];
  v4 = swift_task_alloc();
  *(v0 + 608) = v4;
  *v4 = v0;
  v4[1] = sub_225DC;
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 208);
  v10 = *(v0 + 216);

  return v13(v9, v2, v10, v5, v7, v8);
}

uint64_t sub_2238C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 568);
  v6 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v7 = sub_22A58;
  }

  else
  {
    *(v4 + 584) = a1;
    v7 = sub_224B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_224B4()
{
  v1 = v0[73];
  v0[75] = v1;
  v0[74] = v1;
  v2 = *(v0[29] + 200);
  v12 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[76] = v4;
  *v4 = v0;
  v4[1] = sub_225DC;
  v5 = v0[39];
  v6 = v0[40];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[26];
  v10 = v0[27];

  return v12(v9, v1, v10, v5, v7, v8);
}

uint64_t sub_225DC()
{
  v1 = *(*v0 + 608);
  v3 = *v0;

  return _swift_task_switch(sub_226D8, 0, 0);
}

uint64_t sub_226D8()
{
  v1 = v0[43];
  v2 = v0[29];
  v0[77] = *(v2 + 24);
  v0[78] = (v2 + 24) & 0xFFFFFFFFFFFFLL | 0x9197000000000000;
  v0[79] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_22778, v4, v3);
}

uint64_t sub_22778()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 592);
  v5 = *(v0 + 641);
  v6 = *(v0 + 320);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 208);

  v3(v4, v9, v5, v7, v8);

  return _swift_task_switch(sub_2282C, 0, 0);
}

uint64_t sub_2282C()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[26];
  (*(v1 + 8))(v0[39], v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = v0[75];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v9 = v0[34];
  v8 = v0[35];

  v10 = v0[1];

  return v10(v4);
}

uint64_t sub_22918()
{
  sub_53D58((v0 + 2));
  v1 = v0[49];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_229BC()
{
  v1 = v0[56];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22A58()
{
  (*(v0[36] + 8))(v0[39], v0[31]);
  v1 = v0[72];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];

  v7 = v0[1];

  return v7();
}

void sub_22B10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for RCSMessage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BE4()
{
  v1 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 16) longitude:*(v0 + 24)];
  *(v0 + 56) = v1;
  v2 = IMVCardDataFromLocation();
  if (v2)
  {
    v3 = v2;
    v4 = sub_F025C();
    v6 = v5;

    *(v0 + 64) = v4;
    *(v0 + 72) = v6;
    v33 = v6;
    v7 = sub_F01EC();
    *(v0 + 80) = v7;
    v8 = *(v7 - 8);
    v9 = v8;
    *(v0 + 88) = v8;
    v10 = *(v8 + 64) + 15;
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    v12 = [objc_opt_self() defaultManager];
    v13 = sub_F07BC();
    v14 = [v12 im_randomTemporaryFileURLWithFileName:v13];

    v15 = swift_task_alloc();
    if (v14)
    {
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      v18 = v15;
      sub_F01AC();

      (*(v9 + 32))(v11, v18, v7);

      *(v0 + 104) = *(v16 + *(v17 + 44));
      v22 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v22 != 2)
        {
          v23 = 0;
          goto LABEL_18;
        }

        v27 = *(v4 + 16);
        v26 = *(v4 + 24);
        v28 = __OFSUB__(v26, v27);
        v23 = v26 - v27;
        if (!v28)
        {
LABEL_18:
          *(v0 + 112) = v23;
          v29 = *(*(v0 + 40) + 24);
          *(v0 + 120) = v29;
          *(v0 + 128) = *(v29 + 40);
          *(v0 + 136) = (v29 + 40) & 0xFFFFFFFFFFFFLL | 0xB17F000000000000;
          *(v0 + 144) = sub_F0AEC();
          *(v0 + 152) = sub_F0ADC();
          v30 = sub_F0A6C();
          v32 = v31;
          v19 = sub_22F08;
          v20 = v30;
          v21 = v32;

          return _swift_task_switch(v19, v20, v21);
        }

        __break(1u);
      }

      else if (!v22)
      {
        v23 = BYTE6(v33);
        goto LABEL_18;
      }

      LODWORD(v23) = HIDWORD(v4) - v4;
      if (__OFSUB__(HIDWORD(v4), v4))
      {
        __break(1u);
        return _swift_task_switch(v19, v20, v21);
      }

      v23 = v23;
      goto LABEL_18;
    }

    sub_5F048(v4, v33);
  }

  else
  {
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22F08()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[5];

  v0[20] = *(v8 + 16);
  v0[21] = v3(0x762E636F6C2E4C43, 0xEA00000000006663, v5, v7);
  v0[22] = 0;

  return _swift_task_switch(sub_22FE4, 0, 0);
}

uint64_t sub_22FE4()
{
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  sub_F026C();
  if (v1)
  {
    v5 = v0[21];
    v6 = v0[9];
    v8 = v0[7];
    v7 = v0[8];
    (*(v0[11] + 8))(v0[12], v0[10]);

    sub_5F048(v7, v6);
    v9 = v0[12];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[18];
    v13 = v0[15];
    v0[23] = *(v13 + 64);
    v0[24] = (v13 + 64) & 0xFFFFFFFFFFFFLL | 0x5849000000000000;
    v0[25] = sub_F0ADC();
    v15 = sub_F0A6C();

    return _swift_task_switch(sub_23120, v15, v14);
  }
}

uint64_t sub_23120()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[15];
  v7 = v0[13];

  v3(v5, v4, v6);

  return _swift_task_switch(sub_231B8, 0, 0);
}

uint64_t sub_231B8()
{
  v1 = v0[18];
  v2 = v0[15];
  v0[26] = *(v2 + 80);
  v0[27] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xE026000000000000;
  v0[28] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_23254, v4, v3);
}

uint64_t sub_23254()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[15];
  v7 = v0[13];

  v3(v5, v4, v6);

  return _swift_task_switch(sub_232EC, 0, 0);
}

uint64_t sub_232EC()
{
  v1 = v0[18];
  v0[29] = *(v0[6] + 8);
  v0[30] = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_23384, v3, v2);
}

uint64_t sub_23384()
{
  v1 = v0[30];
  v2 = v0[21];

  v0[31] = [v2 guid];

  return _swift_task_switch(sub_2340C, 0, 0);
}

uint64_t sub_2340C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 32);
  [*(v0 + 232) appendFileTransferWithGUID:v1];

  if (v2 && (v3 = *(v0 + 32), (v4 = RCSChipList.attributes.getter()) != 0))
  {
    sub_51844(v4);

    v5 = sub_F075C();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  [*(v0 + 232) appendChipList:{v5, *(v0 + 96)}];

  sub_5F048(v10, v9);
  (*(v7 + 8))(v19, v8);
  v14 = *(v12 + 48);
  v15 = *(v13 + v14);
  if ((v15 & 1) == 0)
  {
    *(v13 + v14) = v15 | 1;
  }

  v16 = *(v0 + 96);
  *(*(v0 + 48) + *(*(v0 + 40) + 52)) = 6;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2358C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  sub_5F048(v0[8], v0[9]);

  (*(v2 + 8))(v1, v3);
  v5 = v0[22];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2368C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RCSMessage(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_23738(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RCSMessage(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237DC()
{
  v1 = v0[6];
  v0[8] = *(v0[7] + *(v1 + 44));
  v2 = *(v1 + 24);
  v0[9] = v2;
  v0[10] = *(v2 + 48);
  v0[11] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x6CAE000000000000;
  sub_F0AEC();
  v0[12] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_23894, v4, v3);
}

uint64_t sub_23894()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v0[13] = v4(v9, v8, v7, *(v6 + 16), v3);

  return _swift_task_switch(sub_23998, 0, 0);
}

uint64_t sub_23998()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[7];
    v3 = *(v0[6] + 40);
    v4 = v2 + *(type metadata accessor for RCSMessage(0) + 60) + v3;
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *(v4 + 16);
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v7 = sub_F06CC();
      v0[14] = sub_3C96C(v7, static Logger.rcs);
      v8 = sub_F06AC();
      v9 = sub_F0CCC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_0, v8, v9, "Attempting to auto download file", v10, 2u);
      }

      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_23C20;
      v12 = v0[6];
      v13 = v0[7];
      v14 = v0[5];
      v15 = v0[2];

      return sub_D0A30(v1, v15, v6, v5, v14, v12);
    }

    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v17 = sub_F06CC();
    sub_3C96C(v17, static Logger.rcs);
    v18 = sub_F06AC();
    v19 = sub_F0CEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Couldn't find simID to initiate download for rcsMessage", v20, 2u);
    }
  }

  v21 = v0[1];
  v22 = v0[13];

  return v21(v22);
}

uint64_t sub_23C20()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_23D58, 0, 0);
  }

  else
  {
    v4 = v3[1];
    v5 = v3[13];

    return v4(v5);
  }
}

uint64_t sub_23D58()
{
  v1 = v0[16];
  v2 = v0[14];
  swift_errorRetain();
  v3 = sub_F06AC();
  v4 = sub_F0CEC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Failed to download transfer %@, showing tap to download", v7, 0xCu);
    sub_372B0(v8, &qword_127AF0, &qword_F28E0);
  }

  else
  {
    v10 = v0[16];
  }

  v11 = v0[1];
  v12 = v0[13];

  return v11(v12);
}

uint64_t sub_23EC0(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_23FC0, 0, 0);
}

uint64_t sub_23FC0()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 56);
    *(v0 + 88) = *(*(v0 + 64) + *(v1 + 44));
    v2 = *(v1 + 24);
    *(v0 + 96) = v2;
    *(v0 + 104) = *(v2 + 64);
    *(v0 + 112) = (v2 + 64) & 0xFFFFFFFFFFFFLL | 0x5849000000000000;
    sub_F0AEC();
    *(v0 + 120) = sub_F0ADC();
    v3 = sub_F0A6C();
    v5 = v4;
    v6 = sub_24384;
LABEL_3:

    return _swift_task_switch(v6, v3, v5);
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v7 = sub_F06CC();
  sub_3C96C(v7, static Logger.rcs);
  v8 = sub_F06AC();
  v9 = sub_F0CCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Not auto downloading RCS file", v10, 2u);
  }

  v11 = *(v0 + 72);
  v12 = *(v0 + 24);

  sub_37380(v12, v11, &qword_1299D0, &qword_F6890);
  v13 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  LODWORD(v12) = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_372B0(v11, &qword_1299D0, &qword_F6890);
  if (v12 == 1)
  {
    v14 = sub_F06AC();
    v15 = sub_F0CCC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = "No thumbnail info found, nothing to download";
LABEL_19:
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v14, v15, v16, v26, 2u);
    }
  }

  else
  {
    v17 = *(v0 + 56);
    v18 = *(v0 + 24);
    *(v0 + 136) = *(v17 + 16);
    v19 = *(v17 + 24);
    *(v0 + 144) = v19;
    v20 = sub_D1388(v18);
    v14 = sub_F06AC();
    v15 = sub_F0CCC();
    v21 = os_log_type_enabled(v14, v15);
    if (v20)
    {
      if (v21)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v14, v15, "Attempting to download thumbnail instead", v22, 2u);
      }

      v24 = *(v0 + 56);
      v23 = *(v0 + 64);

      *(v0 + 152) = *(v23 + *(v24 + 44));
      *(v0 + 160) = *(v19 + 56);
      *(v0 + 168) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xE5CA000000000000;
      sub_F0AEC();
      *(v0 + 176) = sub_F0ADC();
      v3 = sub_F0A6C();
      v5 = v25;
      v6 = sub_24574;
      goto LABEL_3;
    }

    if (v21)
    {
      v16 = "Thumbnail info present, but we decided not to download it";
      goto LABEL_19;
    }
  }

  v27 = *(v0 + 72);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_24384()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[2];

  v4(v7, *(v6 + 16), v3);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_2445C;
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return sub_D0B48(0, v15, v13, v14, v11, v12, v9);
}

uint64_t sub_2445C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 72);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24574()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[2];

  v4(v7, 1, v6, v5);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_2464C;
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return sub_D0B48(1, v15, v13, v14, v11, v12, v9);
}

uint64_t sub_2464C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 72);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24764()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 72);
    v8 = swift_task_alloc();
    *(v2 + 64) = v8;
    *v8 = v4;
    v8[1] = sub_24900;
    v9 = *(v2 + 40);
    v10 = *(v2 + 48);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    v13 = *(v2 + 16);

    return (sub_D1360)(v7 & 1, v13, v11, v12, v9);
  }
}

uint64_t sub_24900()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249F4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = sub_F01EC();
  v0[42] = v3;
  v4 = *(v3 - 8);
  v0[43] = v4;
  v0[44] = *(v4 + 64);
  v0[45] = swift_task_alloc();
  v0[46] = *(v2 + *(v1 + 44));
  v5 = *(v1 + 24);
  v0[47] = v5;
  v0[48] = *(v5 + 112);
  v0[49] = (v5 + 112) & 0xFFFFFFFFFFFFLL | 0x7EDE000000000000;
  v0[50] = sub_F0AEC();
  v0[51] = sub_F0ADC();
  v7 = sub_F0A6C();

  return _swift_task_switch(sub_24B14, v7, v6);
}

uint64_t sub_24B14()
{
  v1 = v0[51];
  v3 = v0[48];
  v2 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[32];

  v0[52] = *(v6 + 16);
  v0[53] = v3();

  return _swift_task_switch(sub_24BAC, 0, 0);
}

uint64_t sub_24BAC()
{
  v89 = v0;
  if (*(v0 + 616))
  {
    v1 = *(v0 + 312);
    v2 = *(v0 + 320);
    v3 = *(v0 + 304);
    sub_37380(*(v0 + 232), v3, &qword_1299D0, &qword_F6890);
    v4 = *(v2 + 48);
    if (v4(v3, 1, v1) == 1)
    {
      sub_372B0(*(v0 + 304), &qword_1299D0, &qword_F6890);
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v5 = sub_F06CC();
      sub_3C96C(v5, static Logger.rcs);
      v6 = sub_F06AC();
      v7 = sub_F0CEC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "Tried to download thumbnail, but no thumbnail information found", v8, 2u);
      }

      v9 = *(v0 + 360);
      v10 = *(v0 + 328);
      v12 = *(v0 + 296);
      v11 = *(v0 + 304);
      v14 = *(v0 + 280);
      v13 = *(v0 + 288);

      v15 = *(v0 + 8);
      goto LABEL_34;
    }

    sub_C2AB8(*(v0 + 304), *(v0 + 328));
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v86 = v4;
    v27 = sub_F06CC();
    sub_3C96C(v27, static Logger.rcs);
    v28 = sub_F06AC();
    v29 = sub_F0CCC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Downloading thumbnail", v30, 2u);
    }

    v85 = *(v0 + 360);
    v32 = *(v0 + 336);
    v31 = *(v0 + 344);
    v33 = *(v0 + 328);
    v34 = *(v0 + 312);
    v35 = *(v0 + 296);
    v36 = *(v0 + 272);
    v37 = *(v0 + 232);

    v38 = v37 + *(v36 + 20);
    v39 = *(v38 + 8);
    v40 = *(v38 + 16);
    v87 = sub_D1258();
    v20 = v41;
    (*(v31 + 16))(v85, v33 + *(v34 + 24), v32);
    sub_37380(v37, v35, &qword_1299D0, &qword_F6890);
    v42 = v86(v35, 1, v34);
    v43 = *(v0 + 296);
    if (v42 == 1)
    {
      sub_29750(*(v0 + 328), type metadata accessor for RCSFile.ThumbnailInformation);
      v44 = &qword_1299D0;
      v45 = &qword_F6890;
      v46 = v43;
    }

    else
    {
      sub_37380(v43 + *(*(v0 + 312) + 32), v0 + 16, &qword_1299C8, &qword_F5700);
      sub_29750(v43, type metadata accessor for RCSFile.ThumbnailInformation);
      v49 = *(v0 + 40);
      v50 = *(v0 + 328);
      if (v49)
      {
        v51 = *(v0 + 48);
        sub_373E8((v0 + 16), *(v0 + 40));
        v26 = (*(v51 + 56))(v49, v51);
        sub_29750(v50, type metadata accessor for RCSFile.ThumbnailInformation);
        sub_1EDC((v0 + 16));
LABEL_22:
        v47 = 9;
        v48 = 2;
        v21 = v87;
        goto LABEL_23;
      }

      sub_29750(*(v0 + 328), type metadata accessor for RCSFile.ThumbnailInformation);
      v44 = &qword_1299C8;
      v45 = &qword_F5700;
      v46 = v0 + 16;
    }

    sub_372B0(v46, v44, v45);
    v26 = 0;
    goto LABEL_22;
  }

  v16 = *(v0 + 360);
  v17 = *(v0 + 336);
  v18 = *(v0 + 344);
  v19 = *(v0 + 232) + *(*(v0 + 272) + 20);
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  v22 = type metadata accessor for RCSFile.DispositionInformation(0);
  (*(v18 + 16))(v16, v19 + *(v22 + 28), v17);
  sub_37380(v19 + *(v22 + 44), v0 + 56, &qword_1299C8, &qword_F5700);
  v23 = *(v0 + 80);
  if (v23)
  {
    v24 = *(v0 + 88);
    sub_373E8((v0 + 56), *(v0 + 80));
    v25 = *(v24 + 56);

    v26 = v25(v23, v24);
    sub_1EDC((v0 + 56));
  }

  else
  {

    sub_372B0(v0 + 56, &qword_1299C8, &qword_F5700);
    v26 = 0;
  }

  v47 = 5;
  v48 = 1;
LABEL_23:
  *(v0 + 448) = v47;
  *(v0 + 456) = v26;
  *(v0 + 432) = v20;
  *(v0 + 440) = v48;
  v52 = *(v0 + 352) + 15;

  *(v0 + 464) = swift_task_alloc();
  v53 = [objc_opt_self() defaultManager];
  v54 = sub_F07BC();

  v55 = [v53 im_randomTemporaryFileURLWithFileName:v54];

  if (v55)
  {
    v56 = *(v0 + 400);
    sub_F01AC();

    *(v0 + 472) = sub_F0ADC();
    v57 = sub_F0A6C();
    v59 = v58;
    v60 = sub_25498;
    v61 = v57;
    v62 = v59;

    return _swift_task_switch(v60, v61, v62);
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v63 = sub_F06CC();
  sub_3C96C(v63, static Logger.rcs);

  v64 = sub_F06AC();
  v65 = sub_F0CEC();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v88 = v67;
    *v66 = 136315138;
    v68 = sub_3E850(v21, v20, &v88);

    *(v66 + 4) = v68;
    _os_log_impl(&dword_0, v64, v65, "Couldn't create temp filename for file %s", v66, 0xCu);
    sub_1EDC(v67);
  }

  else
  {
  }

  v69 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(v0 + 424)];
  v70 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:3 limitSize:v69 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
  v60 = [objc_opt_self() sharedInstance];
  if (!v60)
  {
    __break(1u);
    return _swift_task_switch(v60, v61, v62);
  }

  v71 = v60;
  v72 = *(v0 + 360);
  v73 = *(v0 + 336);
  v74 = *(v0 + 344);
  v75 = *(*(v0 + 232) + *(*(v0 + 272) + 20));
  v76 = sub_F0C5C();
  [v71 trackAttachmentDownloadFailedWithFileSize:v76 reason:4 context:v70];

  sub_D2074();
  swift_allocError();
  *v77 = 0;
  swift_willThrow();
  (*(v74 + 8))(v72, v73);
  v78 = *(v0 + 360);
  v79 = *(v0 + 328);
  v81 = *(v0 + 296);
  v80 = *(v0 + 304);
  v83 = *(v0 + 280);
  v82 = *(v0 + 288);

  v15 = *(v0 + 8);
LABEL_34:

  return v15();
}

uint64_t sub_25498()
{
  v1 = v0[59];
  v2 = v0[28];
  v3 = v0[29];

  sub_D0D7C(v2, v3);

  return _swift_task_switch(sub_25548, 0, 0);
}

uint64_t sub_25548()
{
  v1 = *(v0[47] + 72);
  v13 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_25660;
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[52];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  v10 = v0[31];
  v11 = v0[30];

  return v13(v11, v10, v9, v4, v5, v6, v7);
}

uint64_t sub_25660(uint64_t a1)
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 456);
  v5 = *v1;
  *(*v1 + 488) = a1;

  return _swift_task_switch(sub_25780, 0, 0);
}

uint64_t sub_25780()
{
  if (*(v0[61] + 16) && (v1 = sub_51FEC(0x746C75736572, 0xE600000000000000), (v2 & 1) != 0) && (sub_3FE38(*(v0[61] + 56) + 32 * v1, (v0 + 12)), sub_388C8(&qword_128568, &qword_F3950), (swift_dynamicCast() & 1) != 0))
  {
    v3 = v0[27];
    v0[62] = v3;
    if (!*(v3 + 16))
    {
      goto LABEL_9;
    }

    v4 = sub_51FEC(0x4C5255656C6966, 0xE700000000000000);
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_3FE38(*(v3 + 56) + 32 * v4, (v0 + 20));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = v0[43];
    v7 = v0[42];
    v8 = v0[44] + 15;
    v9 = v0[24];
    v10 = v0[25];
    v11 = swift_task_alloc();
    v0[63] = v11;
    v12 = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64) + 15;
    v13 = swift_task_alloc();
    sub_F01DC();

    if ((*(v6 + 48))(v13, 1, v7) == 1)
    {
      sub_372B0(v13, &qword_128320, &qword_F34B0);

LABEL_9:
      v14 = v0[55];
      v15 = v0[53];
      v16 = v0[50];
      v17 = IMServiceNameRCS;
      v18 = sub_F134C();
      v0[68] = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:v17 limitType:v14 limitSize:v18 qualityType:v14 isSticker:0 lowQualityModeEnabled:0];

      v0[69] = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64);
      v0[70] = swift_task_alloc();
      v0[71] = sub_F0ADC();
      v19 = sub_F0A6C();
      v21 = v20;
      v22 = sub_25E60;
      goto LABEL_11;
    }

    v28 = v0[50];
    (*(v0[43] + 32))(v11, v13, v0[42]);

    v0[64] = sub_F0ADC();
    v19 = sub_F0A6C();
    v21 = v29;
    v22 = sub_25B24;
  }

  else
  {
    v23 = v0[54];

    v24 = v0[50];
    v25 = v0[47];
    sub_D2074();
    v0[73] = swift_allocError();
    *v26 = 1;
    v0[74] = *(v25 + 96);
    v0[75] = (v25 + 96) & 0xFFFFFFFFFFFFLL | 0x1AC000000000000;
    v0[76] = sub_F0ADC();
    v19 = sub_F0A6C();
    v21 = v27;
    v22 = sub_26170;
  }

LABEL_11:

  return _swift_task_switch(v22, v19, v21);
}

uint64_t sub_25B24()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[28];

  v4 = sub_F019C();
  [v3 _setLocalURL:v4];

  return _swift_task_switch(sub_25BB0, 0, 0);
}

uint64_t sub_25BB0()
{
  v1 = v0[50];
  v2 = v0[47];
  v0[65] = *(v2 + 88);
  v0[66] = (v2 + 88) & 0xFFFFFFFFFFFFLL | 0x657E000000000000;
  v0[67] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_25C50, v4, v3);
}

uint64_t sub_25C50()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 448);
  v5 = *(v0 + 416);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  v8 = *(v0 + 224);
  v9 = *(v0 + 616);

  v3(v8, v4, (v9 & 1) == 0, v5, v7);

  return _swift_task_switch(sub_25D08, 0, 0);
}

uint64_t sub_25D08()
{
  (*(v0[43] + 8))(v0[63], v0[42]);

  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[50];
  v4 = IMServiceNameRCS;
  v5 = sub_F134C();
  v0[68] = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:v4 limitType:v1 limitSize:v5 qualityType:v1 isSticker:0 lowQualityModeEnabled:0];

  v0[69] = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64);
  v0[70] = swift_task_alloc();
  v0[71] = sub_F0ADC();
  v7 = sub_F0A6C();

  return _swift_task_switch(sub_25E60, v7, v6);
}

uint64_t sub_25E60()
{
  v1 = v0[71];
  v2 = v0[28];

  v0[72] = [v2 localURL];

  return _swift_task_switch(sub_25EE8, 0, 0);
}

id sub_25EE8()
{
  v1 = v0[72];
  v2 = v0[69] + 15;
  v3 = swift_task_alloc();
  if (v1)
  {
    sub_F01AC();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v0[70];
  (*(v0[43] + 56))(v3, v4, 1, v0[42]);
  sub_81EC4(v3, v5);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = v0[70];
    v9 = v0[69];
    v11 = v0[61];
    v10 = v0[62];
    v12 = v0[54];
    v13 = v0[42];
    v14 = v0[43];

    v15 = swift_task_alloc();
    sub_37380(v8, v15, &qword_128320, &qword_F34B0);
    if ((*(v14 + 48))(v15, 1, v13) == 1)
    {
      v16 = 0;
    }

    else
    {
      v17 = v0[42];
      v18 = v0[43];
      v16 = sub_F019C();
      (*(v18 + 8))(v15, v17);
    }

    v19 = v0[70];
    v20 = v0[68];
    v21 = v0[58];
    v22 = v0[45];
    v23 = v0[42];
    v24 = v0[43];

    [v7 trackAttachmentDownloadSuccess:v16 context:v20];

    sub_372B0(v19, &qword_128320, &qword_F34B0);
    v25 = *(v24 + 8);
    v25(v21, v23);
    v25(v22, v23);

    v26 = v0[45];
    v27 = v0[41];
    v29 = v0[37];
    v28 = v0[38];
    v31 = v0[35];
    v30 = v0[36];

    v32 = v0[1];

    return v32();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26170()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[52];
  v6 = v0[46];
  v7 = v0[47];
  v8 = v0[28];

  v3(v8, v4, v5, v7);

  return _swift_task_switch(sub_26224, 0, 0);
}

uint64_t sub_26224()
{
  v74 = v0;
  if (*(v0[61] + 16) && (v1 = sub_51FEC(0x726F727265, 0xE500000000000000), (v2 & 1) != 0) && (sub_3FE38(*(v0[61] + 56) + 32 * v1, (v0 + 16)), sub_388C8(&qword_127B88, &qword_F3680), (swift_dynamicCast() & 1) != 0))
  {
    v3 = v0[61];

    v4 = v0[26];
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v5 = v0[36];
    v6 = v0[29];
    v7 = sub_F06CC();
    sub_3C96C(v7, static Logger.rcs);
    sub_297F8(v6, v5, type metadata accessor for RCSFile);
    swift_errorRetain();
    v8 = sub_F06AC();
    v9 = sub_F0CEC();

    if (os_log_type_enabled(v8, v9))
    {
      v71 = v0[42];
      v10 = v0[36];
      v11 = v0[34];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v73[0] = v14;
      *v12 = 136315394;
      v15 = *(v11 + 20);
      v16 = v10 + *(type metadata accessor for RCSFile.DispositionInformation(0) + 28);
      sub_297B0(&qword_128678, &type metadata accessor for URL);
      v17 = sub_F11EC();
      v19 = v18;
      sub_29750(v10, type metadata accessor for RCSFile);
      v20 = sub_3E850(v17, v19, v73);

      *(v12 + 4) = v20;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v21;
      *v13 = v21;
      _os_log_impl(&dword_0, v8, v9, "No result found after download for RCS transfer %s error %@", v12, 0x16u);
      sub_372B0(v13, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v14);
    }

    else
    {
      v58 = v0[36];

      sub_29750(v58, type metadata accessor for RCSFile);
    }

    v59 = v0[58];
    v60 = v0[45];
    v61 = v0[42];
    v62 = v0[43];
    swift_willThrow();
    v63 = *(v62 + 8);
    v63(v59, v61);
    v63(v60, v61);

    v64 = v0[45];
    v65 = v0[41];
    v67 = v0[37];
    v66 = v0[38];
    v69 = v0[35];
    v68 = v0[36];

    v56 = v0[1];
  }

  else
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v22 = v0[61];
    v23 = v0[35];
    v24 = v0[29];
    v25 = sub_F06CC();
    sub_3C96C(v25, static Logger.rcs);
    sub_297F8(v24, v23, type metadata accessor for RCSFile);

    v26 = sub_F06AC();
    v27 = sub_F0CEC();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[61];
    v30 = v0[58];
    v31 = v0[45];
    v32 = v0[42];
    v33 = v0[43];
    v34 = v0[35];
    if (v28)
    {
      v35 = v0[34];
      v72 = v0[58];
      v36 = swift_slowAlloc();
      v73[0] = swift_slowAlloc();
      *v36 = 136315394;
      v37 = *(v35 + 20);
      v70 = v31;
      v38 = v34 + *(type metadata accessor for RCSFile.DispositionInformation(0) + 28);
      sub_297B0(&qword_128678, &type metadata accessor for URL);
      v39 = sub_F11EC();
      v41 = v40;
      sub_29750(v34, type metadata accessor for RCSFile);
      v42 = sub_3E850(v39, v41, v73);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v43 = sub_F077C();
      v45 = v44;

      v46 = sub_3E850(v43, v45, v73);

      *(v36 + 14) = v46;
      _os_log_impl(&dword_0, v26, v27, "No result found after download for RCS transfer %s and no error in %s", v36, 0x16u);
      swift_arrayDestroy();

      v47 = *(v33 + 8);
      v47(v72, v32);
      v48 = v70;
    }

    else
    {

      sub_29750(v34, type metadata accessor for RCSFile);
      v47 = *(v33 + 8);
      v47(v30, v32);
      v48 = v31;
    }

    v47(v48, v32);
    v49 = v0[58];

    v50 = v0[45];
    v51 = v0[41];
    v53 = v0[37];
    v52 = v0[38];
    v55 = v0[35];
    v54 = v0[36];

    v56 = v0[1];
  }

  return v56();
}

uint64_t sub_268D4()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v1;
  v5 = [v1 isInternalInstall];

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = objc_opt_self();
  v7 = [v6 sharedInstance];
  v8 = sub_F07BC();
  v9 = sub_F07BC();
  v10 = [v7 getBoolFromDomain:v8 forKey:v9];

  if (v10)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v11 = sub_F06CC();
    sub_3C96C(v11, static Logger.rcs);
    v12 = sub_F06AC();
    v13 = sub_F0CCC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Forcing auto download behavior ON due to default com.apple.imessage AlwaysAutoDownloadAttachments.RCS", v14, 2u);
    }

    goto LABEL_15;
  }

  v15 = [v6 sharedInstance];
  v16 = sub_F07BC();
  v17 = sub_F07BC();
  v18 = [v15 getBoolFromDomain:v16 forKey:v17];

  if (!v18)
  {
LABEL_18:
    v31 = v0[5];
    v0[10] = *(v0[6] + *(v31 + 44));
    v32 = *(v31 + 24);
    v0[11] = v32;
    v0[12] = *(v32 + 112);
    v0[13] = (v32 + 112) & 0xFFFFFFFFFFFFLL | 0x7EDE000000000000;
    v0[14] = sub_F0AEC();
    v0[15] = sub_F0ADC();
    v33 = sub_F0A6C();
    v35 = v34;
    v1 = sub_26D78;
    v2 = v33;
    v3 = v35;

    return _swift_task_switch(v1, v2, v3);
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v19 = sub_F06CC();
  sub_3C96C(v19, static Logger.rcs);
  v20 = sub_F06AC();
  v21 = sub_F0CCC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Forcing auto download behavior OFF due to default com.apple.madrid NeverAutoDownloadAttachments.RCS", v22, 2u);
  }

  sub_D20C8();
  v12 = sub_F0DCC();
  v23 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:5 limitSize:v12 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
LABEL_22:
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v24 = v1;
  v25 = *(v0[2] + *(v0[7] + 20));
  v26 = sub_F0C5C();
  [v24 trackAttachmentDownloadFailedWithFileSize:v26 reason:1 context:v23];

LABEL_15:
  v28 = v0[8];
  v27 = v0[9];

  v29 = v0[1];

  return v29(v10);
}

uint64_t sub_26D78()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[5];

  v0[16] = *(v6 + 16);
  v0[17] = v3();

  return _swift_task_switch(sub_26E10, 0, 0);
}

uint64_t sub_26E10()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  v4 = *(*(v0 + 56) + 20);
  *(v0 + 216) = v4;
  *(v0 + 144) = *(v3 + v4);
  *(v0 + 152) = *(v2 + 120);
  *(v0 + 160) = (v2 + 120) & 0xFFFFFFFFFFFFLL | 0xEECD000000000000;
  *(v0 + 168) = sub_F0ADC();
  v6 = sub_F0A6C();

  return _swift_task_switch(sub_26EC4, v6, v5);
}

uint64_t sub_26EC4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[10];
  v6 = v0[11];

  v0[22] = v3(v4, v6);

  return _swift_task_switch(sub_26F58, 0, 0);
}

uint64_t sub_26F58(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[17];
  if (v4 >= v3[22])
  {
    v5 = v3[18];
    if (v5 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    if (v5 < 1 || v4 >= 2 * v5)
    {
      v7 = v3[14];
      v8 = v3[11];
      v3[23] = *(v8 + 104);
      v3[24] = (v8 + 104) & 0xFFFFFFFFFFFFLL | 0x2E18000000000000;
      v3[25] = sub_F0ADC();
      v9 = sub_F0A6C();
      v11 = v10;
      a1 = sub_27228;
      a2 = v9;
      a3 = v11;

      return _swift_task_switch(a1, a2, a3);
    }
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v12 = sub_F06CC();
  sub_3C96C(v12, static Logger.rcs);
  v13 = sub_F06AC();
  v14 = sub_F0CCC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v3[22];
    v17 = v3[17];
    v16 = v3[18];
    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = v17;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v15;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v16;
    _os_log_impl(&dword_0, v13, v14, "Not enough free space to safely download avail %llu minFree %llu fileSize %ld, not auto downloading", v18, 0x20u);
  }

  v19 = v3[17];

  v20 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v19];
  v21 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:3 limitSize:v20 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
  a1 = [objc_opt_self() sharedInstance];
  if (!a1)
  {
    goto LABEL_20;
  }

  v22 = a1;
  v23 = v3[18];
  v24 = sub_F0C5C();
  [v22 trackAttachmentDownloadFailedWithFileSize:v24 reason:2 context:v21];

  v26 = v3[8];
  v25 = v3[9];

  v27 = v3[1];

  return v27(0);
}

uint64_t sub_27228()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v0[26] = v3(v9, v8, v7, v4, v6);

  return _swift_task_switch(sub_272D8, 0, 0);
}

id sub_272D8()
{
  v68 = v0;
  v1 = *(v0 + 208);
  if (v1 < 1 || v1 < *(v0 + 144))
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    v5 = sub_F06CC();
    sub_3C96C(v5, static Logger.rcs);
    sub_297F8(v4, v3, type metadata accessor for RCSFile);
    v6 = sub_F06AC();
    v7 = sub_F0CCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 208);
      v10 = *(v0 + 56);
      v9 = *(v0 + 64);
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      v12 = *(v9 + *(v10 + 20));
      sub_29750(v9, type metadata accessor for RCSFile);
      *(v11 + 4) = v12;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v8;
      _os_log_impl(&dword_0, v6, v7, "RCS File's size %ld is larger than the autodownload size %lld, not auto downloading", v11, 0x16u);
    }

    else
    {
      sub_29750(*(v0 + 64), type metadata accessor for RCSFile);
    }

    v42 = *(v0 + 208);

    v43 = [objc_allocWithZone(NSNumber) initWithLongLong:v42];
    v44 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:3 limitSize:v43 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v45 = result;
      v46 = *(v0 + 144);
      v47 = sub_F0C5C();
      [v45 trackAttachmentDownloadFailedWithFileSize:v47 reason:3 context:v44];

LABEL_39:
      v48 = 0;
      goto LABEL_40;
    }

LABEL_47:
    __break(1u);
    return result;
  }

  v13 = *(v0 + 16) + *(v0 + 216);
  v14 = sub_F030C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  sub_F02DC();
  v18 = type metadata accessor for RCSFile.DispositionInformation(0);
  v19 = *(v18 + 32);
  sub_297B0(&qword_128BC0, &type metadata accessor for Date);
  v20 = sub_F07AC();
  if (v20)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 72);
    v22 = *(v0 + 16);
    v23 = sub_F06CC();
    sub_3C96C(v23, static Logger.rcs);
    sub_297F8(v22, v21, type metadata accessor for RCSFile);
    v24 = swift_task_alloc();
    (*(v15 + 16))(v24, v17, v14);
    v25 = sub_F06AC();
    v26 = sub_F0CCC();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 72);
    if (!v27)
    {

      v49 = *(v15 + 8);
      v49(v24, v14);
      sub_29750(v28, type metadata accessor for RCSFile);
      v49(v17, v14);
LABEL_38:

      goto LABEL_39;
    }

    v64 = v26;
    v65 = v25;
    v29 = *(v0 + 56);
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 136315394;
    v30 = *(v29 + 20);
    v31 = *(v18 + 32);
    if (qword_128F70 != -1)
    {
      swift_once();
    }

    v32 = qword_12FCB8;
    v33 = qword_12FCB8 >> 62;
    if (qword_12FCB8 >> 62)
    {
      result = sub_F10DC();
      if (result)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_18:
        v63 = v33;
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = sub_F0FCC();
        }

        else
        {
          if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v35 = *(v32 + 32);
        }

        v36 = v35;
        v37 = sub_F028C();
        v38 = [v36 stringFromDate:v37];

        v39 = sub_F07EC();
        v41 = v40;

        v33 = v63;
LABEL_29:
        sub_29750(*(v0 + 72), type metadata accessor for RCSFile);
        v50 = sub_3E850(v39, v41, &v67);

        *(v66 + 4) = v50;
        *(v66 + 12) = 2080;
        if (v33)
        {
          result = sub_F10DC();
          if (result)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
          if (result)
          {
LABEL_31:
            if ((v32 & 0xC000000000000001) != 0)
            {
              v51 = sub_F0FCC();
              goto LABEL_34;
            }

            if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
            {
              v51 = *(v32 + 32);
LABEL_34:
              v52 = v51;
              v53 = sub_F028C();
              v54 = [v52 stringFromDate:v53];

              v55 = sub_F07EC();
              v57 = v56;

LABEL_37:
              v58 = *(v15 + 8);
              v58(v24, v14);
              v59 = sub_3E850(v55, v57, &v67);

              *(v66 + 14) = v59;
              _os_log_impl(&dword_0, v65, v64, "RCS File has passed expiration (%s, not auto downloading (now %s", v66, 0x16u);
              swift_arrayDestroy();

              v58(v17, v14);
              goto LABEL_38;
            }

            goto LABEL_46;
          }
        }

        v55 = 0;
        v57 = 0xE000000000000000;
        goto LABEL_37;
      }
    }

    v39 = 0;
    v41 = 0xE000000000000000;
    goto LABEL_29;
  }

  (*(v15 + 8))(v17, v14);

  v48 = 1;
LABEL_40:
  v61 = *(v0 + 64);
  v60 = *(v0 + 72);

  v62 = *(v0 + 8);

  return v62(v48);
}

uint64_t sub_27A6C()
{
  if (*(v0 + 472))
  {
    *(v0 + 288) = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64);
    *(v0 + 296) = swift_task_alloc();
    v1 = sub_388C8(&qword_12A2D8, &unk_F68C0);
    *(v0 + 304) = v1;
    v2 = *(*(v1 - 8) + 64) + 15;
    *(v0 + 312) = swift_task_alloc();
    *(v0 + 320) = sub_F0AEC();
    *(v0 + 328) = sub_F0ADC();
    v3 = sub_F0A6C();
    v5 = v4;
    v6 = sub_283F8;
  }

  else
  {
    sub_F0AEC();
    *(v0 + 216) = sub_F0ADC();
    v3 = sub_F0A6C();
    v5 = v7;
    v6 = sub_27BC8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_27BC8()
{
  v1 = v0[27];
  v2 = v0[23];

  v3 = [v2 localPath];
  if (v3)
  {
    v4 = v3;
    v5 = sub_F07EC();
    v7 = v6;

    v0[28] = v5;
    v0[29] = v7;
    v8 = sub_27C80;
  }

  else
  {
    v8 = sub_281A0;
  }

  return _swift_task_switch(v8, 0, 0);
}

void sub_27C80()
{
  v1 = v0[25];
  v2 = *(v0[26] + *(v1 + 44));
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 24) + 160);
  v12 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[30] = v6;
  *v6 = v0;
  v6[1] = sub_27DC0;
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[23];
  v10 = v0[24];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_27DC0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v8 = *v1;
  *(v2 + 248) = v0;
  v4 = *(v2 + 16);
  *(v2 + 473) = *(v2 + 32);
  v5 = *(v2 + 40);
  *(v2 + 256) = v4;
  *(v2 + 272) = v5;

  if (v0)
  {
    v6 = sub_2929C;
  }

  else
  {
    v6 = sub_27EE8;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_27EE8()
{
  v25 = v0;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.rcs);

  v3 = sub_F06AC();
  v4 = sub_F0CCC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 272);
    v5 = *(v0 + 280);
    v7 = *(v0 + 473);
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 136315906;
    v11 = v8 == 0;
    if (v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x64697567206F6ELL;
    }

    if (v11)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v1;
    }

    v14 = sub_3E850(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (v7)
    {
      v15 = 0x73736563637553;
    }

    else
    {
      v15 = 0x64656C696146;
    }

    if (v7)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE600000000000000;
    }

    v17 = sub_3E850(v15, v16, &v24);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v6;
    *(v10 + 32) = 2048;
    *(v10 + 34) = v5;
    _os_log_impl(&dword_0, v3, v4, "Preview result %s %s (%f, %f)", v10, 0x2Au);
    swift_arrayDestroy();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v19 = result;
    v20 = *(v0 + 473);
    v21 = *(v0 + 232);

    v22 = sub_F07BC();
    [v19 trackAttachmentRenderingAttempt:v20 failureReason:v22];

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_281A0()
{
  v21 = v0;
  sub_D2074();
  swift_allocError();
  *v1 = 2;
  swift_willThrow();
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.rcs);
  swift_errorRetain();
  v3 = sub_F06AC();
  v4 = sub_F0CCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[18];
    v10 = sub_F12AC();
    v12 = sub_3E850(v10, v11, &v20);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "Preview failed with error %s", v5, 0xCu);
    sub_1EDC(v6);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v14 = result;
    swift_getErrorValue();
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[15];
    sub_F12AC();
    v18 = sub_F07BC();

    [v14 trackAttachmentRenderingAttempt:0 failureReason:v18];

    v19 = v0[1];

    return v19();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_283F8()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[23];

  sub_D0FB0(v3, v2);

  return _swift_task_switch(sub_284AC, 0, 0);
}

id sub_284AC()
{
  v46 = v0;
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v4 = v0[36] + 15;
  v0[42] = *v2;
  v0[43] = v2[1];
  v0[44] = v2[2];
  v5 = v2[3];
  v0[45] = v5;
  sub_81EC4(v2 + *(v1 + 64), v3);

  v6 = sub_F01EC();
  v0[46] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v0[47] = v7;
  v0[48] = *(v7 + 64);
  v9 = swift_task_alloc();
  v0[49] = v9;
  v10 = swift_task_alloc();
  sub_37380(v3, v10, &qword_128320, &qword_F34B0);
  v11 = *(v8 + 48);
  v0[50] = v11;
  v0[51] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v10, 1, v6) == 1)
  {

    sub_372B0(v10, &qword_128320, &qword_F34B0);

LABEL_8:
    v24 = v0[37];

    sub_D2074();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    sub_372B0(v24, &qword_128320, &qword_F34B0);
    v26 = v0[37];

    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v27 = sub_F06CC();
    sub_3C96C(v27, static Logger.rcs);
    swift_errorRetain();
    v28 = sub_F06AC();
    v29 = sub_F0CCC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v33 = v0[10];
      v32 = v0[11];
      v34 = v0[12];
      v35 = sub_F12AC();
      v37 = sub_3E850(v35, v36, &v45);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_0, v28, v29, "Safe render failed with error %s", v30, 0xCu);
      sub_1EDC(v31);
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v38 = result;
      swift_getErrorValue();
      v40 = v0[7];
      v39 = v0[8];
      v41 = v0[9];
      sub_F12AC();
      v42 = sub_F07BC();

      [v38 trackAttachmentRenderingAttempt:0 failureReason:v42];

      v43 = v0[1];

      return v43();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v12 = *(v8 + 32);
  v0[52] = v12;
  v0[53] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v12(v9, v10, v6);

  if (!v5)
  {
    (*(v8 + 8))(v9, v6);

    goto LABEL_8;
  }

  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[36] + 15;
  v16 = swift_task_alloc();
  v0[54] = v16;
  v17 = *(v13 + *(v14 + 44));
  v20 = v14 + 16;
  v19 = *(v14 + 16);
  v18 = *(v20 + 8);
  v44 = (*(v18 + 168) + **(v18 + 168));
  v21 = *(*(v18 + 168) + 4);
  v22 = swift_task_alloc();
  v0[55] = v22;
  *v22 = v0;
  v22[1] = sub_289EC;

  return v44(v16, v9, v19, v18);
}

uint64_t sub_289EC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v9 = *v2;
  *(v3 + 474) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v5 = *(v3 + 360);
    v6 = *(v3 + 344);

    v7 = sub_294D0;
  }

  else
  {
    v7 = sub_28B18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_28B18()
{
  v65 = v0;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 288) + 15;
  v5 = sub_F06CC();
  sub_3C96C(v5, static Logger.rcs);
  v6 = swift_task_alloc();
  sub_37380(v1, v6, &qword_128320, &qword_F34B0);

  v7 = sub_F06AC();
  v8 = sub_F0CCC();

  if (os_log_type_enabled(v7, v8))
  {
    v62 = v8;
    v9 = *(v0 + 474);
    v60 = *(v0 + 400);
    v61 = *(v0 + 408);
    v10 = *(v0 + 344);
    v56 = *(v0 + 352);
    v57 = *(v0 + 360);
    v11 = *(v0 + 336);
    v58 = *(v0 + 288) + 15;
    v59 = *(v0 + 368);
    v12 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v12 = 136315906;
    v13 = v10 == 0;
    if (v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0x64697567206F6ELL;
    }

    if (v13)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = v3;
    }

    v16 = sub_3E850(v14, v15, &v64);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    if (v9)
    {
      v17 = 0x73736563637553;
    }

    else
    {
      v17 = 0x64656C696146;
    }

    if (v9)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE600000000000000;
    }

    v19 = sub_3E850(v17, v18, &v64);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_3E850(v56, v57, &v64);
    *(v12 + 32) = 2080;
    v20 = swift_task_alloc();
    sub_37380(v6, v20, &qword_128320, &qword_F34B0);
    if (v60(v20, 1, v59) == 1)
    {
      sub_372B0(v20, &qword_128320, &qword_F34B0);
      v21 = 0xE700000000000000;
      v22 = 0x687461702D6F6ELL;
    }

    else
    {
      v24 = *(v0 + 368);
      v23 = *(v0 + 376);
      v22 = sub_F01CC();
      v21 = v25;
      (*(v23 + 8))(v20, v24);
    }

    sub_372B0(v6, &qword_128320, &qword_F34B0);
    v26 = sub_3E850(v22, v21, &v64);

    *(v12 + 34) = v26;
    _os_log_impl(&dword_0, v7, v62, "Safe Render result %s %s %s safely rendered to (%s)", v12, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_372B0(v6, &qword_128320, &qword_F34B0);
  }

  v27 = [objc_opt_self() sharedInstance];
  if (!v27)
  {
    __break(1u);
    return _swift_task_switch(v27, v28, v29);
  }

  v30 = v27;
  v31 = *(v0 + 474);
  v32 = *(v0 + 432);
  v33 = *(v0 + 400);
  v63 = *(v0 + 408);
  v34 = *(v0 + 384);
  v36 = *(v0 + 360);
  v35 = *(v0 + 368);
  v37 = *(v0 + 288);

  v38 = sub_F07BC();
  [v30 trackAttachmentRenderingAttempt:v31 failureReason:v38];

  v39 = swift_task_alloc();
  *(v0 + 456) = v39;
  v40 = swift_task_alloc();
  sub_37380(v32, v40, &qword_128320, &qword_F34B0);
  if (v33(v40, 1, v35) != 1)
  {
    v51 = *(v0 + 424);
    v52 = *(v0 + 320);
    (*(v0 + 416))(v39, v40, *(v0 + 368));

    *(v0 + 464) = sub_F0ADC();
    v53 = sub_F0A6C();
    v55 = v54;
    v27 = sub_290EC;
    v28 = v53;
    v29 = v55;

    return _swift_task_switch(v27, v28, v29);
  }

  v41 = *(v0 + 392);
  v42 = *(v0 + 368);
  v43 = *(v0 + 376);
  v44 = *(v0 + 296);
  sub_372B0(*(v0 + 432), &qword_128320, &qword_F34B0);
  (*(v43 + 8))(v41, v42);
  sub_372B0(v44, &qword_128320, &qword_F34B0);
  sub_372B0(v40, &qword_128320, &qword_F34B0);

  v45 = *(v0 + 456);
  v46 = *(v0 + 432);
  v47 = *(v0 + 392);
  v48 = *(v0 + 296);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_290EC()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[23];

  sub_F01CC();
  v4 = sub_F07BC();

  [v3 _setLocalPath:v4];

  return _swift_task_switch(sub_29190, 0, 0);
}

uint64_t sub_29190()
{
  v1 = v0[54];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[37];
  v5 = *(v0[47] + 8);
  v5(v0[57], v3);
  sub_372B0(v1, &qword_128320, &qword_F34B0);
  v5(v2, v3);
  sub_372B0(v4, &qword_128320, &qword_F34B0);
  v6 = v0[57];
  v7 = v0[54];
  v8 = v0[49];
  v9 = v0[37];

  v10 = v0[1];

  return v10();
}

id sub_2929C()
{
  v22 = v0;
  v1 = v0[29];

  v2 = v0[31];
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v3 = sub_F06CC();
  sub_3C96C(v3, static Logger.rcs);
  swift_errorRetain();
  v4 = sub_F06AC();
  v5 = sub_F0CCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[18];
    v11 = sub_F12AC();
    v13 = sub_3E850(v11, v12, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "Preview failed with error %s", v6, 0xCu);
    sub_1EDC(v7);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v15 = result;
    swift_getErrorValue();
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[15];
    sub_F12AC();
    v19 = sub_F07BC();

    [v15 trackAttachmentRenderingAttempt:0 failureReason:v19];

    v20 = v0[1];

    return v20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_294D0()
{
  v24 = v0;
  v1 = v0[54];
  v2 = v0[37];
  (*(v0[47] + 8))(v0[49], v0[46]);
  sub_372B0(v2, &qword_128320, &qword_F34B0);

  v3 = v0[56];
  v4 = v0[37];

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v5 = sub_F06CC();
  sub_3C96C(v5, static Logger.rcs);
  swift_errorRetain();
  v6 = sub_F06AC();
  v7 = sub_F0CCC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[12];
    v13 = sub_F12AC();
    v15 = sub_3E850(v13, v14, &v23);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "Safe render failed with error %s", v8, 0xCu);
    sub_1EDC(v9);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    swift_getErrorValue();
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[9];
    sub_F12AC();
    v21 = sub_F07BC();

    [v17 trackAttachmentRenderingAttempt:0 failureReason:v21];

    v22 = v0[1];

    return v22();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_297B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_297F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_29860()
{
  v1 = [*v0 chatInformation];

  return v1;
}

uint64_t _s7CoreRCS10RCSMessageV11ContentTypeO11descriptionSSvg_0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1954047348;
    v6 = 0x6E6F697461636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x70756F7267;
    }

    if (a1)
    {
      v5 = 0x726566736E617274;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574736567677573;
    v2 = 0x6574736567677573;
    if (a1 != 7)
    {
      v2 = 0x6341656369766564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E69707974;
    if (a1 != 4)
    {
      v3 = 0x6472614368636972;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_29A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 136);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_388C8(&unk_127FA0, &qword_F34C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 136) = (a2 - 1);
  }

  else
  {
    v7 = sub_388C8(&unk_127FA0, &qword_F34C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_29BD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_3CB70(a3, a4);
    v5 = sub_F0DEC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29C2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_3CB70(&qword_12A570, &qword_F6F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

id sub_29CA0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_F07BC();

  [v4 *a3];

  return v4;
}

uint64_t sub_29D24(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  v9 = a4(a1, a2, a3);

  *(v8 + 16) = v9;
  return v8;
}

size_t sub_29DA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_388C8(a5, a6);
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

uint64_t sub_29F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29FE4(void (*a1)(uint64_t))
{
  v3 = sub_388C8(&qword_128300, &unk_F68D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v22 - v5;
  v7 = sub_F068C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = v1 + *(type metadata accessor for RCSFile(0) + 20);
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);

  sub_F063C();
  sub_F05EC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_372B0(v6, &qword_128300, &unk_F68D0);
    v18 = 0;
  }

  else
  {
    v19 = (*(v8 + 32))(v14, v6, v7);
    a1(v19);
    v18 = sub_F067C();
    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v14, v7);
  }

  return v18 & 1;
}

uint64_t sub_2A210@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_2A29C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 28);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t sub_2A340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_388C8(&qword_1299D0, &qword_F6890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for RCSFile.DispositionInformation(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2A4A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_388C8(&qword_1299D0, &qword_F6890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RCSFile.DispositionInformation(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2A5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_F01EC();
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
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A6D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_F01EC();
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
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2A7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_F01EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A918(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_F01EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2AA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2AA9C()
{
  v1 = v0[7];
  if (v1[2])
  {
    v2 = v0[9];
    v3 = v0[10];
    v0[23] = v1[4];
    v0[24] = v1[5];
    v0[25] = swift_unknownObjectUnownedLoadStrong();
    v4 = *(v3 + 88);
    v0[26] = v4;
    v0[27] = *(v4 + 32);
    v0[28] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0xDA16000000000000;
    v5 = qword_128FB8;

    if (v5 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v6 = static RCSActor.shared;

  return _swift_task_switch(sub_2AB80, v6, 0);
}

uint64_t sub_2AB80()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[8];
  v0[29] = *(v0[10] + 80);
  v6 = v2(v5);
  v8 = v7;
  v10 = v9;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v11;
  v0[5] = v9;
  swift_unknownObjectRelease();
  v0[30] = v8;
  v0[31] = v10;

  return _swift_task_switch(sub_2AC20, 0, 0);
}

uint64_t sub_2AC20()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  if (v2)
  {
    v3 = *(v0 + 32);
  }

  else
  {

    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  *(v0 + 256) = v2;
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_2AD04;
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 136);
  v8 = *(v0 + 72);
  v9 = *(v0 + 281);
  v10 = *(v0 + 280);

  return sub_DE504(v7, v5, v6, v10, v9, v3, v2);
}

uint64_t sub_2AD04()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  v2[34] = v0;

  v5 = v2[32];
  if (v0)
  {
    v6 = v2[24];

    v7 = sub_2B300;
  }

  else
  {

    v7 = sub_2AE48;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2AE48()
{
  v56 = v0;
  v1 = v0[18];
  v2 = v0[17];
  v3 = (*(v0[19] + 48))(v2, 1, v1);
  v4 = v0[24];
  if (v3 == 1)
  {
    v5 = v0[13];
    v6 = v0[9];
    sub_372B0(v2, &qword_12A8F0, &qword_F7558);
    sub_CCD3C(v5);

    v7 = sub_F06AC();
    v8 = sub_F0CCC();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[23];
      v9 = v0[24];
      v12 = v0[12];
      v11 = v0[13];
      v13 = v0[11];
      v14 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      *v14 = 136446466;
      *(v14 + 4) = sub_3E850(0xD000000000000050, 0x8000000000100BF0, v55);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_3E850(v10, v9, v55);
      _os_log_impl(&dword_0, v7, v8, "%{public}s Failed to upload or generate RCSFile for %s", v14, 0x16u);
      swift_arrayDestroy();

      (*(v12 + 8))(v11, v13);
    }

    else
    {
      v23 = v0[12];
      v22 = v0[13];
      v24 = v0[11];

      (*(v23 + 8))(v22, v24);
    }

    v25 = v0[29];
    v26 = v0[26];
    v28 = v0[23];
    v27 = v0[24];
    type metadata accessor for RCSMessageCreator.MessageCreationError();
    swift_getWitnessTable();
    swift_allocError();
    *v29 = v28;
    *(v29 + 8) = v27;
    *(v29 + 16) = xmmword_F7540;
    swift_willThrow();
    v31 = v0[21];
    v30 = v0[22];
    v32 = v0[20];
    v34 = v0[16];
    v33 = v0[17];
    v35 = v0[13];

    v36 = v0[1];
    v37 = 0;
    goto LABEL_13;
  }

  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[24];

  sub_376D8(v2, v15, &qword_12A8F8, &qword_F7560);
  sub_37380(v15, v16, &qword_12A8F8, &qword_F7560);
  v18 = *(v16 + *(v1 + 48));
  sub_372B0(v16, &qword_12A900, &unk_F7570);
  v19 = v0[22];
  if (v18 == 1)
  {
    v20 = &qword_12A8F8;
    v21 = &qword_F7560;
  }

  else
  {
    v38 = v0[20];
    v39 = v0[14];
    v40 = v0[15];
    sub_376D8(v19, v38, &qword_12A8F8, &qword_F7560);
    v41 = (*(v40 + 48))(v38, 1, v39);
    v19 = v0[20];
    if (v41 != 1)
    {
      v43 = v0[16];
      v44 = v0[6];
      sub_DEE94(v19, v43);
      v45 = v44 + *(type metadata accessor for RCSMessage(0) + 32);
      sub_372B0(v45, &unk_127FA0, &qword_F34C0);
      v46 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
      sub_DEE94(v43, v45);
      *(v45 + v46) = 0;
      v47 = type metadata accessor for RCSMessage.Content(0);
      v42 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
      goto LABEL_12;
    }

    v20 = &qword_12A900;
    v21 = &unk_F7570;
  }

  sub_372B0(v19, v20, v21);
  v42 = 0;
LABEL_12:
  v49 = v0[21];
  v48 = v0[22];
  v50 = v0[20];
  v52 = v0[16];
  v51 = v0[17];
  v53 = v0[13];

  v36 = v0[1];
  v37 = v42;
LABEL_13:

  return v36(v37);
}

uint64_t sub_2B300()
{
  v1 = v0[34];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_2B3AC()
{
  v1 = v0[18];
  v2 = v0[19];
  v0[27] = swift_unknownObjectUnownedLoadStrong();
  v3 = *(v2 + 88);
  v0[28] = v3;
  v0[29] = *(v3 + 56);
  v0[30] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0x9BEB000000000000;
  sub_F0AEC();
  v0[31] = sub_F0ADC();
  v5 = sub_F0A6C();

  return _swift_task_switch(sub_2B464, v5, v4);
}

uint64_t sub_2B464()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[19];
  v8 = v0[14];
  v7 = v0[15];

  v0[32] = *(v6 + 80);
  v0[33] = v4(v8, v7);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_2B518, 0, 0);
}

uint64_t sub_2B518()
{
  v34 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 144);
  if (v1)
  {
    v32 = *(v0 + 224);
    *(v0 + 272) = swift_unknownObjectUnownedLoadStrong();
    v3 = *(v32 + 64);
    v31 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = sub_2B830;
    v6 = *(v0 + 256);
    v7 = *(v0 + 224);
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    v10 = *(v0 + 360);

    return v31(v1, v8, v9, v10, v6, v7);
  }

  else
  {
    v12 = *(v0 + 120);
    sub_CCD3C(*(v0 + 184));

    v13 = sub_F06AC();
    v14 = sub_F0CEC();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v18 = *(v0 + 168);
    if (v15)
    {
      v20 = *(v0 + 112);
      v19 = *(v0 + 120);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_3E850(v20, v19, &v33);
      _os_log_impl(&dword_0, v13, v14, "Couldn't find transfer to upload to RCS server for guid %s", v21, 0xCu);
      sub_1EDC(v22);
    }

    (*(v17 + 8))(v16, v18);
    v23 = *(v0 + 104);
    v24 = sub_388C8(&qword_12A8F8, &qword_F7560);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    v28 = *(v0 + 184);
    v27 = *(v0 + 192);
    v29 = *(v0 + 160);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_2B830(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v8 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = sub_2C8E4;
  }

  else
  {
    v6 = v3[34];
    swift_unknownObjectRelease();
    v5 = sub_2B94C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2B94C()
{
  v1 = *(v0 + 288);
  v2 = sub_F01EC();
  *(v0 + 304) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 312) = v3;
  v5 = *(v3 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = v6;
  *(v0 + 320) = v6;
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v76 = *(v4 + 16);
    v76(v6, v9, v2);
    sub_F018C();
    v85._object = 0x8000000000100C50;
    v85._countAndFlagsBits = 0xD000000000000018;
    v10 = sub_F093C(v85);

    if (!v10)
    {
      v30 = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64) + 15;
      result = swift_task_alloc();
      v75 = result;
      *(v0 + 328) = result;
      v32 = *(v1 + 16);
      if (v32 < 2)
      {
        v35 = 1;
        v34 = result;
      }

      else
      {
        if (v8 > v32)
        {
          __break(1u);
          return result;
        }

        v33 = v9 + *(v4 + 72) * (v8 - 1);
        v34 = result;
        v76(result, v33, v2);
        v35 = 0;
      }

      v44 = *(v0 + 288);

      v74 = *(v4 + 56);
      v74(v34, v35, 1, v2);
      v45 = swift_task_alloc();
      v46 = swift_task_alloc();
      sub_37380(v34, v46, &qword_128320, &qword_F34B0);
      if ((*(v4 + 48))(v46, 1, v2) == 1)
      {
        sub_372B0(v46, &qword_128320, &qword_F34B0);
      }

      else
      {
        v47 = *(v0 + 144);
        (*(v4 + 32))(v45, v46, v2);

        if (sub_DE658())
        {
          (*(v4 + 8))(v45, v2);
        }

        else
        {
          v73 = v45;
          v48 = *(v0 + 144);
          sub_CCD3C(*(v0 + 208));
          v80 = swift_task_alloc();
          v76(v80, v7, v2);
          v49 = sub_F06AC();
          v77 = sub_F0CEC();
          v50 = os_log_type_enabled(v49, v77);
          v51 = *(v0 + 208);
          v52 = *(v0 + 168);
          v53 = *(v0 + 176);
          if (v50)
          {
            v69 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v84 = v71;
            *v69 = 136315138;
            sub_81D24();
            v70 = v49;
            v54 = sub_F11EC();
            v72 = v52;
            v56 = v55;
            v57 = *(v4 + 8);
            v57(v80, v2);
            v58 = sub_3E850(v54, v56, &v84);

            *(v69 + 4) = v58;
            _os_log_impl(&dword_0, v70, v77, "Couldn't generate valid thumbnail for %s, omitting", v69, 0xCu);
            sub_1EDC(v71);

            (*(v53 + 8))(v51, v72);
            v57(v73, v2);
            v34 = v75;
          }

          else
          {

            v59 = *(v4 + 8);
            v59(v80, v2);
            (*(v53 + 8))(v51, v52);
            v59(v73, v2);
          }

          sub_372B0(v34, &qword_128320, &qword_F34B0);

          v74(v34, 1, 1, v2);
        }
      }

      v81 = *(v0 + 224);
      v60 = *(v0 + 144);

      *(v0 + 336) = swift_unknownObjectUnownedLoadStrong();
      v61 = *(v81 + 72);
      v78 = v61 + *v61;
      v62 = v61[1];
      v63 = swift_task_alloc();
      *(v0 + 344) = v63;
      *v63 = v0;
      v63[1] = sub_2C274;
      v64 = *(v0 + 256);
      v66 = *(v0 + 128);
      v65 = *(v0 + 136);
      v67 = *(v0 + 361);
      v68 = *(v0 + 360);
      v83 = *(v0 + 224);

      __asm { BRAA            X8, X16 }
    }

    v11 = *(v0 + 288);
    v12 = *(v0 + 264);
    v13 = *(v0 + 104);
    (*(v4 + 8))(v7, v2);

    v14 = sub_388C8(&qword_12A8F8, &qword_F7560);
    v15 = *(v14 + 48);
    v16 = type metadata accessor for RCSFile(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    *(v13 + v15) = 1;
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v17 = *(v0 + 192);
    v18 = *(v0 + 144);
    v19 = *(v0 + 120);

    sub_CCD3C(v17);

    v20 = sub_F06AC();
    v21 = sub_F0CCC();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 264);
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    if (v22)
    {
      v28 = *(v0 + 112);
      v27 = *(v0 + 120);
      v79 = *(v0 + 192);
      v29 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v29 = 136446466;
      *(v29 + 4) = sub_3E850(0xD000000000000048, 0x8000000000100C70, &v84);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_3E850(v28, v27, &v84);
      _os_log_impl(&dword_0, v20, v21, "%{public}s Failed to transcode %s, upload failed", v29, 0x16u);
      swift_arrayDestroy();

      (*(v26 + 8))(v79, v25);
    }

    else
    {

      (*(v26 + 8))(v24, v25);
    }

    v36 = *(v0 + 104);
    v37 = sub_388C8(&qword_12A8F8, &qword_F7560);
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  }

  v39 = *(v0 + 200);
  v38 = *(v0 + 208);
  v41 = *(v0 + 184);
  v40 = *(v0 + 192);
  v42 = *(v0 + 160);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2C274(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 352) = a1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_2C394, 0, 0);
}

uint64_t sub_2C394()
{
  v58 = v0;
  v1 = *(v0 + 352);
  if (*(v1 + 16) && (v2 = sub_51FEC(0x746C75736572, 0xE600000000000000), (v3 & 1) != 0) && (sub_3FE38(*(*(v0 + 352) + 56) + 32 * v2, v0 + 16), sub_388C8(&qword_128568, &qword_F3950), (swift_dynamicCast() & 1) != 0))
  {
    v4 = *(v0 + 352);
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v9 = *(v0 + 264);
    v10 = *(v0 + 160);
    v11 = *(v0 + 360);
    v12 = *(v0 + 104);

    sub_DCAE8(*(v0 + 96), v11, v10);

    sub_372B0(v5, &qword_128320, &qword_F34B0);
    (*(v8 + 8))(v6, v7);
    v13 = sub_388C8(&qword_12A8F8, &qword_F7560);
    v14 = *(v13 + 48);
    sub_376D8(v10, v12, &qword_12A900, &unk_F7570);
    *(v12 + v14) = 0;
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v15 = *(v1 + 16);
    v16 = *(v0 + 352);
    if (v15 && (v17 = sub_51FEC(0x73654D726F727265, 0xEC00000065676173), (v18 & 1) != 0))
    {
      sub_3FE38(*(*(v0 + 352) + 56) + 32 * v17, v0 + 48);

      v19 = swift_dynamicCast();
      v20 = *(v0 + 80);
      if (!v19)
      {
        v20 = 0;
      }

      v54 = v20;
      if (v19)
      {
        v21 = *(v0 + 88);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {

      v54 = 0;
      v21 = 0;
    }

    v22 = *(v0 + 144);
    v23 = *(v0 + 120);
    sub_CCD3C(*(v0 + 200));

    v24 = sub_F06AC();
    v25 = sub_F0CCC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    v29 = *(v0 + 304);
    v30 = *(v0 + 312);
    v31 = *(v0 + 264);
    v32 = *(v0 + 200);
    v33 = *(v0 + 176);
    v55 = v31;
    v56 = *(v0 + 168);
    if (v26)
    {
      v50 = *(v0 + 120);
      v53 = *(v0 + 328);
      v34 = *(v0 + 112);
      v52 = *(v0 + 200);
      v35 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v35 = 136446722;
      *(v35 + 4) = sub_3E850(0xD000000000000048, 0x8000000000100C70, &v57);
      v51 = v29;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_3E850(v34, v50, &v57);
      *(v35 + 22) = 2080;
      if (v21)
      {
        v36 = v54;
      }

      else
      {
        v36 = 0x206E776F6E6B6E75;
      }

      if (v21)
      {
        v37 = v21;
      }

      else
      {
        v37 = 0xED0000726F727265;
      }

      v38 = sub_3E850(v36, v37, &v57);

      *(v35 + 24) = v38;
      _os_log_impl(&dword_0, v24, v25, "%{public}s Failed to upload RCSFile for %s %s", v35, 0x20u);
      swift_arrayDestroy();

      (*(v33 + 8))(v52, v56);
      sub_372B0(v53, &qword_128320, &qword_F34B0);
      (*(v30 + 8))(v27, v51);
    }

    else
    {

      (*(v33 + 8))(v32, v56);
      sub_372B0(v28, &qword_128320, &qword_F34B0);
      (*(v30 + 8))(v27, v29);
    }

    v40 = *(v0 + 320);
    v39 = *(v0 + 328);

    v41 = *(v0 + 104);
    v42 = sub_388C8(&qword_12A8F8, &qword_F7560);
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  }

  v44 = *(v0 + 200);
  v43 = *(v0 + 208);
  v46 = *(v0 + 184);
  v45 = *(v0 + 192);
  v47 = *(v0 + 160);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_2C8E4()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  swift_unknownObjectRelease();

  v8 = v0[1];
  v9 = v0[37];

  return v8();
}

uint64_t sub_2C990(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_F122C() & 1;
  }
}

uint64_t sub_2C9E8()
{
  if (sub_F0BDC())
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = sub_F137C();
    v15 = v14;
    sub_F129C();
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v16 = sub_2D1E8(&qword_12A9B0, &type metadata accessor for ContinuousClock);
    sub_F127C();
    sub_2D1E8(&qword_12A9B8, &type metadata accessor for ContinuousClock.Instant);
    sub_F10BC();
    v17 = *(v10 + 8);
    *(v0 + 136) = v17;
    *(v0 + 144) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v9, v11);
    v18 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_2CC10;
    v20 = *(v0 + 128);
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v22, v0 + 16, v21, v16);
  }
}

uint64_t sub_2CC10()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  *(v3 + 160) = v0;

  if (v0)
  {
    v4 = *(v3 + 144);
    (*(v3 + 136))(*(v3 + 104), *(v3 + 80));

    return _swift_task_switch(sub_2D150, 0, 0);
  }

  else
  {
    v5 = *(v3 + 144);
    v7 = *(v3 + 120);
    v6 = *(v3 + 128);
    v8 = *(v3 + 112);
    v9 = *(v3 + 64);
    (*(v3 + 136))(*(v3 + 104), *(v3 + 80));
    (*(v7 + 8))(v6, v8);
    v14 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v3 + 168) = v11;
    *v11 = v3;
    v11[1] = sub_2CE2C;
    v12 = *(v3 + 72);

    return v14();
  }
}

uint64_t sub_2CE2C()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return _swift_task_switch(sub_2CF28, 0, 0);
}

uint64_t sub_2CF28()
{
  if (sub_F0BDC())
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = sub_F137C();
    v15 = v14;
    sub_F129C();
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v16 = sub_2D1E8(&qword_12A9B0, &type metadata accessor for ContinuousClock);
    sub_F127C();
    sub_2D1E8(&qword_12A9B8, &type metadata accessor for ContinuousClock.Instant);
    sub_F10BC();
    v17 = *(v10 + 8);
    *(v0 + 136) = v17;
    *(v0 + 144) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v9, v11);
    v18 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_2CC10;
    v20 = *(v0 + 128);
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v22, v0 + 16, v21, v16);
  }
}

uint64_t sub_2D150()
{
  v1 = v0[20];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2D1E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2D234()
{
  v30 = v0;
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  swift_beginAccess();
  v4 = sub_C7880(v3, v2);
  *(v0 + 136) = v4;
  swift_endAccess();
  if (v4)
  {
    v5 = *(v0 + 128);
    v6 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v7 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v6);
    v8 = (*(v7 + 24))(v6, v7);
    v10 = v9;
    swift_beginAccess();
    sub_C77D0(v8, v10);
    swift_endAccess();

    return _swift_task_switch(sub_2D5E8, v4, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 112);
    v12 = sub_F06CC();
    sub_3C96C(v12, qword_129B28);

    v13 = sub_F06AC();
    v14 = sub_F0D0C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 104);
      v15 = *(v0 + 112);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      *(v17 + 14) = sub_3E850(v16, v15, &v29);
      _os_log_impl(&dword_0, v13, v14, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v17, 0x16u);
      sub_1EDC(v18);
    }

    v19 = *(v0 + 128);
    v20 = *(v19 + 136);
    if (v20)
    {
      v21 = *(v19 + 144);
      if (*(v0 + 49))
      {
        *(v0 + 16) = *(v0 + 120);
        *(v0 + 48) = 1;
        swift_errorRetain();
      }

      else
      {
        *(v0 + 40) = &type metadata for Never;
        *(v0 + 48) = 0;
      }

      v28 = (v20 + *v20);
      v23 = v20[1];
      v24 = swift_task_alloc();
      *(v0 + 144) = v24;
      *v24 = v0;
      v24[1] = sub_2D6BC;
      v26 = *(v0 + 104);
      v25 = *(v0 + 112);

      return v28(v26, v25, v0 + 16);
    }

    else
    {
      v22 = *(v0 + 8);

      return v22();
    }
  }
}

uint64_t sub_2D5E8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_C3D90(*(v0 + 120), *(v0 + 49) & 1);

  return _swift_task_switch(sub_2D65C, v1, 0);
}

uint64_t sub_2D65C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2D6BC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v5 = *v0;

  sub_372B0(v1 + 16, &qword_128B88, &qword_F3F30);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2D7C8()
{
  v32 = v0;
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  swift_beginAccess();
  v4 = sub_C7880(v3, v2);
  *(v0 + 208) = v4;
  swift_endAccess();
  if (v4)
  {
    v5 = *(v0 + 200);
    v6 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v7 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v6);
    v8 = (*(v7 + 24))(v6, v7);
    v10 = v9;
    swift_beginAccess();
    sub_C77D0(v8, v10);
    swift_endAccess();

    return _swift_task_switch(sub_2DBC4, v4, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 184);
    v12 = sub_F06CC();
    sub_3C96C(v12, qword_129B28);

    v13 = sub_F06AC();
    v14 = sub_F0D0C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 176);
      v15 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      *(v17 + 14) = sub_3E850(v16, v15, &v31);
      _os_log_impl(&dword_0, v13, v14, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v17, 0x16u);
      sub_1EDC(v18);
    }

    v19 = *(v0 + 200);
    v20 = *(v19 + 136);
    if (v20)
    {
      v21 = *(v19 + 144);
      sub_37380(*(v0 + 192), v0 + 56, &qword_128B88, &qword_F3F30);
      v22 = *(v0 + 88);
      if (v22)
      {
        *(v0 + 16) = *(v0 + 56);
      }

      else
      {
        sub_54F88((v0 + 56), (v0 + 96));
        *(v0 + 40) = &type metadata for Any + 8;
        v24 = swift_allocObject();
        *(v0 + 16) = v24;
        sub_54F88((v0 + 96), (v24 + 16));
      }

      *(v0 + 48) = v22;
      v30 = (v20 + *v20);
      v25 = v20[1];
      v26 = swift_task_alloc();
      *(v0 + 216) = v26;
      *v26 = v0;
      v26[1] = sub_2DC90;
      v28 = *(v0 + 176);
      v27 = *(v0 + 184);

      return v30(v28, v27, v0 + 16);
    }

    else
    {
      v23 = *(v0 + 8);

      return v23();
    }
  }
}

uint64_t sub_2DBC4()
{
  v1 = v0[25];
  v2 = v0[26];
  sub_C4498(v0[24]);

  return _swift_task_switch(sub_2DC30, v1, 0);
}

uint64_t sub_2DC30()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DC90()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v5 = *v0;

  sub_372B0(v1 + 16, &qword_128B88, &qword_F3F30);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2DD9C()
{
  v32 = v0;
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  swift_beginAccess();
  v4 = sub_C7880(v3, v2);
  *(v0 + 224) = v4;
  swift_endAccess();
  if (v4)
  {
    v5 = *(v0 + 216);
    v6 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v7 = *(v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v4 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v6);
    v8 = (*(v7 + 24))(v6, v7);
    v10 = v9;
    swift_beginAccess();
    sub_C77D0(v8, v10);
    swift_endAccess();

    return _swift_task_switch(sub_2E1A0, v4, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 200);
    v12 = sub_F06CC();
    sub_3C96C(v12, qword_129B28);

    v13 = sub_F06AC();
    v14 = sub_F0D0C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 192);
      v15 = *(v0 + 200);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      *(v17 + 14) = sub_3E850(v16, v15, &v31);
      _os_log_impl(&dword_0, v13, v14, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v17, 0x16u);
      sub_1EDC(v18);
    }

    v19 = *(v0 + 216);
    v20 = *(v19 + 136);
    if (v20)
    {
      v21 = *(v19 + 144);
      sub_37380(*(v0 + 208), v0 + 16, &qword_127EC0, &qword_F2C90);
      v22 = *(v0 + 56);
      if (v22)
      {
        *(v0 + 104) = *(v0 + 16);
      }

      else
      {
        sub_55248((v0 + 16), v0 + 64);
        *(v0 + 128) = sub_388C8(&qword_129378, &qword_F49E0);
        v24 = swift_allocObject();
        *(v0 + 104) = v24;
        sub_55248((v0 + 64), v24 + 16);
      }

      *(v0 + 136) = v22;
      v30 = (v20 + *v20);
      v25 = v20[1];
      v26 = swift_task_alloc();
      *(v0 + 232) = v26;
      *v26 = v0;
      v26[1] = sub_2E26C;
      v28 = *(v0 + 192);
      v27 = *(v0 + 200);

      return v30(v28, v27, v0 + 104);
    }

    else
    {
      v23 = *(v0 + 8);

      return v23();
    }
  }
}

uint64_t sub_2E1A0()
{
  v1 = v0[27];
  v2 = v0[28];
  sub_C4C18(v0[26]);

  return _swift_task_switch(sub_2E20C, v1, 0);
}

uint64_t sub_2E20C()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E26C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v5 = *v0;

  sub_372B0(v1 + 104, &qword_128B88, &qword_F3F30);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2E378()
{
  v1 = *(v0[5] + 24);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2E42C;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_E1124(v4, v3, v5);
}

uint64_t sub_2E42C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2E520()
{
  *(v0 + 224) = sub_F0AEC();
  *(v0 + 232) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_2E5B8, v2, v1);
}

uint64_t sub_2E5B8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);

  *(v0 + 240) = sub_E15B0(v3);
  *(v0 + 634) = v4;

  return _swift_task_switch(sub_2E638, 0, 0);
}

uint64_t sub_2E638()
{
  if ((*(v0 + 634) & 1) == 0)
  {
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_2E7D4;
    v6 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 240))
  {
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_2EA2C;
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = 1;
LABEL_5:

    return sub_E29F0(v3, v4);
  }

  v8 = *(v0 + 224);
  v9 = *(v0 + 128);
  v10 = *(v0 + 104);
  *(v0 + 296) = *(*(v0 + 120) + 16);
  *(v0 + 304) = [v10 context];
  *(v0 + 312) = *(v9 + 16);
  *(v0 + 320) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xB372000000000000;
  *(v0 + 328) = sub_F0ADC();
  v12 = sub_F0A6C();

  return _swift_task_switch(sub_2EC78, v12, v11);
}

uint64_t sub_2E7D4(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_2E8D4, 0, 0);
}

uint64_t sub_2E8D4()
{
  v1 = *(v0 + 224);
  *(v0 + 264) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2E960, v3, v2);
}

uint64_t sub_2E960()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  sub_E2A14(v2, 1, 0, v3, v4, v6, v5);

  v7 = v0[27];
  v8 = v0[23];
  v9 = v0[24];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2EA2C(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_2EB2C, 0, 0);
}

uint64_t sub_2EB2C()
{
  v1 = *(v0 + 224);
  *(v0 + 288) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2EBB8, v3, v2);
}

uint64_t sub_2EBB8()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_E2A14(v2, 1, 0, 0, v3, v5, v4);

  v6 = v0[27];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[20];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2EC78()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 296);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);

  *(v0 + 635) = v4(v3, v6, v7) & 1;

  return _swift_task_switch(sub_2ED18, 0, 0);
}

uint64_t sub_2ED18()
{
  if (*(v0 + 635) == 1)
  {
    if (qword_128F80 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 208);
    v1 = *(v0 + 216);
    v3 = *(v0 + 200);
    v4 = sub_3C96C(v3, qword_129D80);
    v5 = *(v2 + 16);
    *(v0 + 336) = v5;
    *(v0 + 344) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v1, v4, v3);
    sub_F044C();
    v6 = *(v2 + 8);
    *(v0 + 352) = v6;
    *(v0 + 360) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v1, v3);
    if (*(v0 + 632) == 1)
    {
      v7 = *(v0 + 104);
      v8 = sub_E9400(_swiftEmptyArrayStorage);
      v9 = [v7 handleIDs];
      v10 = sub_F09FC();
      *(v0 + 368) = v10;

      v11 = *(v10 + 16);
      *(v0 + 376) = v11;
      if (v11)
      {
        *(v0 + 384) = v8;
        *(v0 + 392) = 0;
        v12 = *(v0 + 368);
        v45 = *(v12 + 32);
        *(v0 + 400) = v45;
        v13 = *(v12 + 40);
        *(v0 + 408) = v13;
        v14 = *(*(sub_388C8(&qword_127B20, &unk_F74E0) - 8) + 64) + 15;
        v15 = swift_task_alloc();
        v16 = sub_F030C();
        v43 = v15;
        (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
        v17 = qword_128F88;
        v44 = v13;
        swift_bridgeObjectRetain_n();
        if (v17 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 352);
        v19 = *(v0 + 360);
        v21 = *(v0 + 336);
        v20 = *(v0 + 344);
        v22 = *(v0 + 216);
        v42 = *(v0 + 224);
        v23 = *(v0 + 200);
        v25 = *(v0 + 128);
        v24 = *(v0 + 136);
        v26 = sub_3C96C(v23, qword_129D98);
        v21(v22, v26, v23);
        sub_F044C();
        v18(v22, v23);
        LOBYTE(v18) = *(v0 + 633);
        v27 = type metadata accessor for RCSReachabilityController.MockRCSHandleCapabilities();
        *(v0 + 80) = v27;
        *(v0 + 88) = &off_1228E0;
        v28 = sub_37474((v0 + 56));
        *v28 = v45;
        v28[1] = v44;
        *(v28 + 4) = 16843009;
        *(v28 + 10) = 256;
        *(v28 + 22) = 0;
        sub_E40F0(v43, v28 + *(v27 + 64));
        *(v28 + *(v27 + 68)) = v18;

        *(v0 + 416) = sub_F0ADC();
        v29 = sub_F0A6C();
        v31 = v30;
        v32 = sub_2F15C;
      }

      else
      {
        *(v0 + 432) = v8;
        v38 = *(v0 + 368);
        v39 = *(v0 + 224);

        *(v0 + 440) = sub_F0ADC();
        v29 = sub_F0A6C();
        v31 = v40;
        v32 = sub_2F4EC;
      }
    }

    else
    {
      v35 = *(v0 + 224);
      v36 = *(v0 + 128);
      *(v0 + 448) = [*(v0 + 104) context];
      *(v0 + 456) = *(v36 + 48);
      *(v0 + 464) = (v36 + 48) & 0xFFFFFFFFFFFFLL | 0x4E31000000000000;
      *(v0 + 472) = sub_F0ADC();
      v29 = sub_F0A6C();
      v31 = v37;
      v32 = sub_2F614;
    }
  }

  else
  {
    v33 = *(v0 + 224);
    *(v0 + 624) = sub_F0ADC();
    v29 = sub_F0A6C();
    v31 = v34;
    v32 = sub_30310;
  }

  return _swift_task_switch(v32, v29, v31);
}

uint64_t sub_2F15C()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[15];
  v5 = v0[13];

  v0[53] = sub_E2148(v3, v2, v5, (v0 + 7), 2, 2);
  sub_372B0((v0 + 7), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_2F210, 0, 0);
}

uint64_t sub_2F210()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v5 = *(v0 + 376);
  v6 = *(v0 + 392) + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_BC440(v1, v3, v2, isUniquelyReferenced_nonNull_native);

  if (v6 == v5)
  {
    *(v0 + 432) = v4;
    v8 = *(v0 + 368);
    v9 = *(v0 + 224);

    *(v0 + 440) = sub_F0ADC();
    v10 = sub_F0A6C();
    v12 = v11;
    v13 = sub_2F4EC;
  }

  else
  {
    v14 = *(v0 + 392) + 1;
    *(v0 + 384) = v4;
    *(v0 + 392) = v14;
    v15 = *(v0 + 368) + 16 * v14;
    v37 = *(v15 + 32);
    *(v0 + 400) = v37;
    v16 = *(v15 + 40);
    *(v0 + 408) = v16;
    v17 = *(*(sub_388C8(&qword_127B20, &unk_F74E0) - 8) + 64) + 15;
    v18 = swift_task_alloc();
    v19 = sub_F030C();
    v35 = v18;
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = qword_128F88;
    v36 = v16;
    swift_bridgeObjectRetain_n();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 352);
    v22 = *(v0 + 360);
    v24 = *(v0 + 336);
    v23 = *(v0 + 344);
    v25 = *(v0 + 216);
    v26 = *(v0 + 224);
    v27 = *(v0 + 200);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v30 = sub_3C96C(v27, qword_129D98);
    v24(v25, v30, v27);
    sub_F044C();
    v21(v25, v27);
    LOBYTE(v23) = *(v0 + 633);
    v31 = type metadata accessor for RCSReachabilityController.MockRCSHandleCapabilities();
    *(v0 + 80) = v31;
    *(v0 + 88) = &off_1228E0;
    v32 = sub_37474((v0 + 56));
    *v32 = v37;
    v32[1] = v36;
    *(v32 + 4) = 16843009;
    *(v32 + 10) = 256;
    *(v32 + 22) = 0;
    sub_E40F0(v35, v32 + *(v31 + 64));
    *(v32 + *(v31 + 68)) = v23;

    *(v0 + 416) = sub_F0ADC();
    v10 = sub_F0A6C();
    v12 = v33;
    v13 = sub_2F15C;
  }

  return _swift_task_switch(v13, v10, v12);
}

uint64_t sub_2F4EC()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_E2A14(v2, 1, 1, 0, v3, v5, v4);

  return _swift_task_switch(sub_2F58C, 0, 0);
}

uint64_t sub_2F58C()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2F614()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[56];
  v4 = v0[57];
  v5 = v0[37];
  v6 = v0[24];
  v8 = v0[16];
  v7 = v0[17];

  v4(v3, v7, v8);

  return _swift_task_switch(sub_2F6BC, 0, 0);
}

uint64_t sub_2F6BC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  (*(*(v0 + 176) + 16))(v1, *(v0 + 192), *(v0 + 168));
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 184);
  if (v4 == 1)
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 104);
    v9 = *(v7 + 8);
    *(v0 + 528) = v9;
    *(v0 + 536) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v6);
    v10 = sub_E9400(_swiftEmptyArrayStorage);
    v11 = [v8 handleIDs];
    v12 = sub_F09FC();
    *(v0 + 544) = v12;

    v16 = *(v12 + 16);
    *(v0 + 552) = v16;
    if (v16)
    {
      *(v0 + 568) = 0;
      *(v0 + 560) = v10;
      v17 = *(v0 + 544);
      if (!v17[2])
      {
        __break(1u);
        return _swift_task_switch(v13, v14, v15);
      }

      v18 = *(v0 + 224);
      *(v0 + 576) = v17[4];
      *(v0 + 584) = v17[5];
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;

      *(v0 + 592) = sub_F0ADC();
      v19 = sub_F0A6C();
      v21 = v20;
      v22 = sub_2FE88;
    }

    else
    {
      *(v0 + 608) = v10;
      v28 = *(v0 + 544);
      v29 = *(v0 + 224);

      *(v0 + 616) = sub_F0ADC();
      v19 = sub_F0A6C();
      v21 = v30;
      v22 = sub_301D0;
    }

    v13 = v22;
    v14 = v19;
    v15 = v21;

    return _swift_task_switch(v13, v14, v15);
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 184), *(v0 + 144));
  v23 = swift_task_alloc();
  *(v0 + 480) = v23;
  *v23 = v0;
  v23[1] = sub_2F92C;
  v24 = *(v0 + 160);
  v25 = *(v0 + 120);
  v26 = *(v0 + 104);

  return sub_E36EC(v26, 1, v24);
}

uint64_t sub_2F92C(uint64_t a1)
{
  v2 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = a1;

  return _swift_task_switch(sub_2FA2C, 0, 0);
}

uint64_t sub_2FA2C()
{
  v1 = *(v0 + 224);
  *(v0 + 496) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2FAB8, v3, v2);
}

uint64_t sub_2FAB8()
{
  v2 = v0[61];
  v1 = v0[62];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_E2A14(v2, 0, 0, 0, v3, v5, v4);

  v6 = swift_task_alloc();
  v0[63] = v6;
  *v6 = v0;
  v6[1] = sub_2FB98;
  v7 = v0[20];
  v8 = v0[15];
  v9 = v0[13];

  return sub_E36EC(v9, 0, v7);
}

uint64_t sub_2FB98(uint64_t a1)
{
  v2 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = a1;

  return _swift_task_switch(sub_2FC98, 0, 0);
}

uint64_t sub_2FC98()
{
  v1 = *(v0 + 224);
  *(v0 + 520) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2FD24, v3, v2);
}

uint64_t sub_2FD24()
{
  v1 = v0[65];
  v2 = v0[64];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_E2A14(v2, 1, 1, 0, v3, v5, v4);

  return _swift_task_switch(sub_2FDC8, 0, 0);
}

uint64_t sub_2FDC8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[27];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2FE88()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[15];
  v5 = v0[13];

  v0[75] = sub_E2148(v3, v2, v5, (v0 + 2), 2, 2);
  sub_372B0((v0 + 2), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_2FF40, 0, 0);
}

uint64_t sub_2FF40()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = v3;
  v5 = v0 + 96;
  v6 = sub_51FEC(v2, v1);
  v9 = *(v3 + 16);
  v10 = (v7 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_20:
    v39 = v6;
    sub_BCF64();
    v6 = v39;
LABEL_8:
    v17 = *(v0 + 600);
    v18 = *(v0 + 584);
    if (v2)
    {
      v19 = v6;
      v20 = *(v0 + 584);

      v21 = *v5;
      v22 = *(*v5 + 56);
      v23 = *(v22 + 8 * v19);
      *(v22 + 8 * v19) = v17;
    }

    else
    {
      v24 = *(v0 + 576);
      v21 = *(v0 + 96);
      v21[(v6 >> 6) + 8] |= 1 << v6;
      v25 = (v21[6] + 16 * v6);
      *v25 = v24;
      v25[1] = v18;
      *(v21[7] + 8 * v6) = v17;
      v26 = v21[2];
      v11 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v11)
      {
        __break(1u);
        goto LABEL_22;
      }

      v21[2] = v27;
    }

    v28 = *(v0 + 568) + 1;
    if (v28 == *(v0 + 552))
    {
      *(v0 + 608) = v21;
      v29 = *(v0 + 544);
      v30 = *(v0 + 224);

      *(v0 + 616) = sub_F0ADC();
      v31 = sub_F0A6C();
      v33 = v32;
      v34 = sub_301D0;
      goto LABEL_16;
    }

    *(v0 + 568) = v28;
    *(v0 + 560) = v21;
    v35 = *(v0 + 544);
    if (v28 < *(v35 + 16))
    {
      v36 = *(v0 + 224);
      v37 = v35 + 16 * v28;
      *(v0 + 576) = *(v37 + 32);
      *(v0 + 584) = *(v37 + 40);
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;

      *(v0 + 592) = sub_F0ADC();
      v31 = sub_F0A6C();
      v33 = v38;
      v34 = sub_2FE88;
LABEL_16:
      v6 = v34;
      v7 = v31;
      v8 = v33;

      return _swift_task_switch(v6, v7, v8);
    }

LABEL_22:
    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  LOBYTE(v2) = v7;
  if (*(*(v0 + 560) + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v13 = *(v0 + 584);
  v14 = *(v0 + 576);
  sub_BB46C(v12, isUniquelyReferenced_nonNull_native);
  v15 = *(v0 + 96);
  v6 = sub_51FEC(v14, v13);
  if ((v2 & 1) == (v7 & 1))
  {
    goto LABEL_8;
  }

  return sub_F126C();
}

uint64_t sub_301D0()
{
  v1 = v0[77];
  v2 = v0[76];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_E2A14(v2, 1, 0, &dword_4, v3, v5, v4);

  return _swift_task_switch(sub_30274, 0, 0);
}

uint64_t sub_30274()
{
  v1 = *(v0 + 536);
  (*(v0 + 528))(*(v0 + 192), *(v0 + 168));
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_30310()
{
  v1 = v0[78];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];

  sub_E2F78(v4, v3, v2);
  v5 = v0[27];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[20];

  v9 = v0[1];

  return v9();
}

uint64_t sub_303B8()
{
  v1 = *(v0 + 56);
  v2 = sub_E9400(_swiftEmptyArrayStorage);
  v3 = [v1 handleIDs];
  v4 = sub_F09FC();
  *(v0 + 72) = v4;

  v5 = *(v4 + 16);
  *(v0 + 80) = v5;
  if (v5)
  {
    v6 = sub_F0AEC();
    *(v0 + 96) = v2;
    *(v0 + 104) = 0;
    *(v0 + 88) = v6;
    v7 = *(v0 + 72);
    *(v0 + 112) = *(v7 + 32);
    *(v0 + 120) = *(v7 + 40);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;

    *(v0 + 128) = sub_F0ADC();
    v9 = sub_F0A6C();

    return _swift_task_switch(sub_30514, v9, v8);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(v2);
  }
}

uint64_t sub_30514()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 144);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  *(v0 + 136) = sub_E2148(v3, v2, v6, v0 + 16, v4, 0);

  sub_372B0(v0 + 16, &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_305D8, 0, 0);
}

uint64_t sub_305D8()
{
  v2 = *(v0 + 96);
  v3 = [*(v0 + 136) handleID];
  v4 = sub_F07EC();
  v6 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v2;
  v8 = (v0 + 16);
  v9 = sub_51FEC(v4, v6);
  v12 = *(v2 + 16);
  v13 = (v10 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
LABEL_20:
    v33 = v9;
    sub_BCF64();
    v9 = v33;
    goto LABEL_8;
  }

  v1 = v10;
  if (*(*(v0 + 96) + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  sub_BB46C(v15, isUniquelyReferenced_nonNull_native);
  v16 = *v8;
  v9 = sub_51FEC(v4, v6);
  if ((v1 & 1) != (v10 & 1))
  {

    return sub_F126C();
  }

LABEL_8:
  v18 = *(v0 + 16);
  v19 = *(v0 + 136);
  if (v1)
  {
    v20 = v18[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = v19;
  }

  else
  {
    v18[(v9 >> 6) + 8] |= 1 << v9;
    v22 = (v18[6] + 16 * v9);
    *v22 = v4;
    v22[1] = v6;
    *(v18[7] + 8 * v9) = v19;
    v23 = v18[2];
    v14 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v14)
    {
      __break(1u);
      return _swift_task_switch(v9, v10, v11);
    }

    v18[2] = v24;
  }

  v25 = *(v0 + 104) + 1;
  if (v25 != *(v0 + 80))
  {
    *(v0 + 96) = v18;
    *(v0 + 104) = v25;
    v28 = *(v0 + 88);
    v29 = *(v0 + 72) + 16 * v25;
    *(v0 + 112) = *(v29 + 32);
    *(v0 + 120) = *(v29 + 40);
    *(v0 + 48) = 0;
    *v8 = 0u;
    *(v0 + 32) = 0u;

    *(v0 + 128) = sub_F0ADC();
    v30 = sub_F0A6C();
    v32 = v31;
    v9 = sub_30514;
    v10 = v30;
    v11 = v32;

    return _swift_task_switch(v9, v10, v11);
  }

  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27(v18);
}

uint64_t sub_30858()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = sub_388C8(&qword_12AAD8, &qword_F7858);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  v7 = sub_388C8(&qword_12AAE0, &unk_F7870);
  v8 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_3098C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v7, 0, 0, &unk_F7868, v6, v5);
}

uint64_t sub_3098C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_30AA4, 0, 0);
}

uint64_t sub_30ABC()
{
  v37 = v0;
  v1 = [*(v0 + 392) context];
  v2 = [v1 hasConversationHistory];

  if (v2)
  {
    v3 = [*(v0 + 392) context];
    v4 = [v3 serviceOfLastMessage];

    if (v4)
    {
      v5 = sub_F07EC();
      v7 = v6;

      if (v5 == 5459283 && v7 == 0xE300000000000000)
      {
      }

      else
      {
        v9 = sub_F122C();

        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v33 = *(v0 + 416);
      *(v0 + 464) = *(*(v0 + 408) + 16);
      *(v0 + 472) = *(v33 + 72);
      *(v0 + 480) = (v33 + 72) & 0xFFFFFFFFFFFFLL | 0x2256000000000000;
      *(v0 + 488) = sub_F0AEC();
      *(v0 + 496) = sub_F0ADC();
      v27 = sub_F0A6C();
      v29 = v34;
      v30 = sub_30EB0;
      goto LABEL_17;
    }
  }

LABEL_8:
  v10 = *(v0 + 376);
  v11 = *(v0 + 384);
  *(v0 + 512) = *(*(v0 + 408) + 16);

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 80), v12, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v13)
  {
    *(v0 + 592) = v13;
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 384);
    v15 = sub_F06CC();
    sub_3C96C(v15, static Logger.reachability);

    swift_errorRetain();
    v16 = sub_F06AC();
    v17 = sub_F0CEC();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 376);
      v18 = *(v0 + 384);
      v20 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_3E850(v19, v18, v36);
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v22 = *(v0 + 344);
      v21 = *(v0 + 352);
      v23 = *(v0 + 360);
      v24 = sub_F12AC();
      v26 = sub_3E850(v24, v25, v36);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_0, v16, v17, "Failed to calculate reachability for %s: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    sub_F0AEC();
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
    *(v0 + 600) = sub_F0ADC();
    v27 = sub_F0A6C();
    v29 = v28;
    v30 = sub_31A60;
  }

  else
  {
    v31 = *(v0 + 416);
    *(v0 + 520) = *(v31 + 56);
    *(v0 + 528) = (v31 + 56) & 0xFFFFFFFFFFFFLL | 0x702F000000000000;
    *(v0 + 536) = sub_F0AEC();
    *(v0 + 544) = sub_F0ADC();
    v27 = sub_F0A6C();
    v29 = v32;
    v30 = sub_3144C;
  }

LABEL_17:

  return _swift_task_switch(v30, v27, v29);
}

uint64_t sub_30EB0()
{
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 464);
  v6 = *(v0 + 416);
  v5 = *(v0 + 424);
  v7 = *(v0 + 400);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);

  *(v0 + 74) = v3(v9, v8, v7, v5, v6) & 1;

  return _swift_task_switch(sub_30F64, 0, 0);
}

uint64_t sub_30F64()
{
  v36 = v0;
  if (*(v0 + 74) == 1)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 384);
    v2 = sub_F06CC();
    sub_3C96C(v2, static Logger.reachability);

    v3 = sub_F06AC();
    v4 = sub_F0CCC();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 376);
      v5 = *(v0 + 384);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_3E850(v6, v5, v35);
      _os_log_impl(&dword_0, v3, v4, "Not doing reachability request for %s because it is a shortcode with established SMS history", v7, 0xCu);
      sub_1EDC(v8);
    }

    v9 = *(v0 + 488);
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0;
    *(v0 + 504) = sub_F0ADC();
    v10 = sub_F0A6C();
    v12 = v11;
    v13 = sub_31394;
  }

  else
  {
    v14 = *(v0 + 376);
    v15 = *(v0 + 384);
    *(v0 + 512) = *(*(v0 + 408) + 16);

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 80), v16, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v17)
    {
      *(v0 + 592) = v17;
      if (qword_128F40 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 384);
      v19 = sub_F06CC();
      sub_3C96C(v19, static Logger.reachability);

      swift_errorRetain();
      v20 = sub_F06AC();
      v21 = sub_F0CEC();

      if (os_log_type_enabled(v20, v21))
      {
        v23 = *(v0 + 376);
        v22 = *(v0 + 384);
        v24 = swift_slowAlloc();
        v35[0] = swift_slowAlloc();
        *v24 = 136315394;
        *(v24 + 4) = sub_3E850(v23, v22, v35);
        *(v24 + 12) = 2080;
        swift_getErrorValue();
        v26 = *(v0 + 344);
        v25 = *(v0 + 352);
        v27 = *(v0 + 360);
        v28 = sub_F12AC();
        v30 = sub_3E850(v28, v29, v35);

        *(v24 + 14) = v30;
        _os_log_impl(&dword_0, v20, v21, "Failed to calculate reachability for %s: %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      sub_F0AEC();
      *(v0 + 144) = 0u;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0;
      *(v0 + 600) = sub_F0ADC();
      v10 = sub_F0A6C();
      v12 = v31;
      v13 = sub_31A60;
    }

    else
    {
      v32 = *(v0 + 416);
      *(v0 + 520) = *(v32 + 56);
      *(v0 + 528) = (v32 + 56) & 0xFFFFFFFFFFFFLL | 0x702F000000000000;
      *(v0 + 536) = sub_F0AEC();
      *(v0 + 544) = sub_F0ADC();
      v10 = sub_F0A6C();
      v12 = v33;
      v13 = sub_3144C;
    }
  }

  return _swift_task_switch(v13, v10, v12);
}

uint64_t sub_31394()
{
  v1 = v0[63];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];

  v6 = sub_E2148(v5, v4, v3, (v0 + 38), 0, 0);
  sub_372B0((v0 + 38), &qword_127EB8, &qword_F2C80);
  v7 = v0[57];

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_3144C()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[50];

  v3(v0 + 10, v7, v5, v6);
  sub_3CAB8((v0 + 10));

  return _swift_task_switch(sub_314F8, 0, 0);
}

uint64_t sub_314F8()
{
  v22 = *(v0 + 456);
  v23 = *(v0 + 448);
  v1 = *(v0 + 440);
  v21 = *(v0 + 432);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  v19 = *(v0 + 400);
  v5 = *(v0 + 73);
  v20 = *(v0 + 73);
  v6 = RCSHandle.rawValue.getter();
  v8 = v7;
  v18 = v7;
  sub_3CAB8(v0 + 16);
  v24 = *(v4 + 24);
  if (v5)
  {
    v9._countAndFlagsBits = 0x646568636163;
  }

  else
  {
    v9._countAndFlagsBits = 0x6465686361636E75;
  }

  if (v5)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  v9._object = v10;
  sub_F08CC(v9);

  v26._countAndFlagsBits = 45;
  v26._object = 0xE100000000000000;
  sub_F08CC(v26);
  v27._countAndFlagsBits = v6;
  v27._object = v8;
  sub_F08CC(v27);
  v11 = type metadata accessor for RCSReachabilityController.CapabilityOperationID();
  *(v0 + 248) = v11;
  *(v0 + 256) = swift_getWitnessTable();
  v12 = sub_37474((v0 + 224));
  v13 = v12 + *(v11 + 36);
  sub_F034C();
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  (*(v1 + 16))(v22, v19, v21);
  v14 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  v15 = swift_allocObject();
  *(v0 + 552) = v15;
  *(v15 + 16) = v2;
  *(v15 + 24) = v3;
  *(v15 + 32) = v4;
  *(v15 + 40) = v6;
  *(v15 + 48) = v18;
  *(v15 + 56) = v20;
  (*(v1 + 32))(v15 + v14, v22, v21);

  v16 = swift_task_alloc();
  *(v0 + 560) = v16;
  *v16 = v0;
  v16[1] = sub_31778;

  return (sub_B6518)(v0 + 184, v0 + 224, &unk_F78B8, v15);
}

uint64_t sub_31778()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v7 = *v1;
  *(*v1 + 568) = v0;

  v4 = *(v2 + 552);

  if (v0)
  {
    v5 = sub_31B84;
  }

  else
  {
    sub_1EDC((v2 + 224));
    v5 = sub_318A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_318A4()
{
  v1 = *(v0 + 536);
  sub_1F28(v0 + 184, v0 + 264);
  *(v0 + 576) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_3193C, v3, v2);
}

uint64_t sub_3193C()
{
  v1 = v0[72];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];

  v0[73] = sub_E2148(v5, v4, v3, (v0 + 33), 2, 2);
  sub_372B0((v0 + 33), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_319F0, 0, 0);
}

uint64_t sub_319F0()
{
  sub_1EDC(v0 + 23);
  v1 = v0[73];
  v2 = v0[57];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_31A60()
{
  v1 = v0[75];
  v2 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  v5 = v0[47];

  v0[76] = sub_E2148(v5, v4, v3, (v0 + 18), 2, 2);
  sub_372B0((v0 + 18), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_31B14, 0, 0);
}

uint64_t sub_31B14()
{
  v1 = v0[74];

  v2 = v0[76];
  v3 = v0[57];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_31B84()
{
  v18 = v0;
  sub_1EDC((v0 + 224));
  *(v0 + 592) = *(v0 + 568);
  if (qword_128F40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.reachability);

  swift_errorRetain();
  v3 = sub_F06AC();
  v4 = sub_F0CEC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_3E850(v6, v5, &v17);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = sub_F12AC();
    v13 = sub_3E850(v11, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_0, v3, v4, "Failed to calculate reachability for %s: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_F0AEC();
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 600) = sub_F0ADC();
  v15 = sub_F0A6C();

  return _swift_task_switch(sub_31A60, v15, v14);
}

uint64_t sub_31DC0()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 32) + 16);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v3 + 40);
  v15 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_31EF4;
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 80);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(v0 + 40);

  return v15(v13, v8, v10, v9, v11, v12, v4, v3);
}

uint64_t sub_31EF4()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_31FE8()
{
  v1 = [*(v0 + 104) handleIDs];
  v2 = sub_F09FC();

  v3 = *(v2 + 16);
  if (v3)
  {
    v34 = *(v0 + 232);
    v35 = *(v0 + 152);
    v4 = (v2 + 40);
    v33 = **(v0 + 96);
    do
    {
      v44 = v3;
      v6 = *(v0 + 184);
      v41 = *(v0 + 176);
      v7 = *(v0 + 168);
      v36 = v7;
      v8 = *(v0 + 144);
      v9 = *(v0 + 120);
      v39 = *(v0 + 112);
      v40 = *(v0 + 104);
      v10 = *v4;
      v38 = *(v4 - 1);
      v43 = v4;

      v37 = *(v0 + 128);
      sub_F0AFC();
      v11 = sub_F0B1C();
      v12 = *(v11 - 8);
      (*(v12 + 56))(v6, 0, 1, v11);
      (*(v35 + 16))(v7, v9, v8);
      v13 = (*(v35 + 80) + 81) & ~*(v35 + 80);
      v14 = swift_allocObject();
      v14[1].i64[0] = 0;
      v42 = v14 + 1;
      v14[1].i64[1] = 0;
      v14[2] = vextq_s8(v37, v37, 8uLL);
      v14[3].i64[0] = v39;
      v14[3].i64[1] = v38;
      v14[4].i64[0] = v10;
      v14[4].i64[1] = v40;
      v14[5].i8[0] = v34;
      (*(v35 + 32))(&v14->i8[v13], v36, v8);
      sub_37380(v6, v41, &qword_127EB0, &unk_F2B30);
      LODWORD(v13) = (*(v12 + 48))(v41, 1, v11);

      v15 = v40;

      v16 = *(v0 + 176);
      if (v13 == 1)
      {
        sub_372B0(*(v0 + 176), &qword_127EB0, &unk_F2B30);
      }

      else
      {
        sub_F0B0C();
        (*(v12 + 8))(v16, v11);
      }

      if (v42->i64[0])
      {
        v17 = v14[1].i64[1];
        v18 = v42->i64[0];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_F0A6C();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = swift_allocObject();
      *(v22 + 16) = &unk_F7898;
      *(v22 + 24) = v14;
      sub_388C8(&qword_12AAD8, &qword_F7858);
      v23 = v21 | v19;
      if (v21 | v19)
      {
        v23 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      v5 = *(v0 + 184);
      *(v0 + 48) = 1;
      *(v0 + 56) = v23;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_372B0(v5, &qword_127EB0, &unk_F2B30);
      v4 = v43 + 2;
      v3 = v44 - 1;
    }

    while (v44 != 1);
  }

  v24 = *(v0 + 208);
  v25 = *(v0 + 96);
  v26 = sub_E9400(&_swiftEmptyArrayStorage);
  v27 = *v25;
  sub_388C8(&qword_12AAD8, &qword_F7858);
  sub_F0AAC();
  *(v0 + 216) = v26;
  v28 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v29 = swift_task_alloc();
  *(v0 + 224) = v29;
  *v29 = v0;
  v29[1] = sub_3247C;
  v30 = *(v0 + 208);
  v31 = *(v0 + 192);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v31);
}

uint64_t sub_3247C()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_32578, 0, 0);
}

uint64_t sub_32578()
{
  v2 = *(v0 + 72);
  if (v2 != &dword_0 + 1)
  {
    if (!v2)
    {
      goto LABEL_19;
    }

    v3 = *(v0 + 216);
    v4 = [*(v0 + 72) handleID];
    v5 = sub_F07EC();
    v7 = v6;

    v8 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v3;
    v10 = sub_51FEC(v5, v7);
    v12 = *(v3 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v1 = v11;
      if (*(*(v0 + 216) + 24) < v15)
      {
        sub_BB46C(v15, isUniquelyReferenced_nonNull_native);
        v16 = *(v0 + 80);
        v10 = sub_51FEC(v5, v7);
        if ((v1 & 1) != (v17 & 1))
        {

          return sub_F126C();
        }

LABEL_13:
        if (v1)
        {
LABEL_14:
          v25 = v10;

          v26 = *(v0 + 80);
          v27 = *(v26 + 56);
          v28 = *(v27 + 8 * v25);
          *(v27 + 8 * v25) = v8;

          sub_E4160(v2);
          *(v0 + 216) = v26;
          goto LABEL_19;
        }

LABEL_17:
        v30 = *(v0 + 80);
        v30[(v10 >> 6) + 8] |= 1 << v10;
        v31 = (v30[6] + 16 * v10);
        *v31 = v5;
        v31[1] = v7;
        *(v30[7] + 8 * v10) = v8;
        sub_E4160(v2);
        v36 = v30[2];
        v14 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v14)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v32, v33, v34, v35);
        }

        v30[2] = v37;
        *(v0 + 216) = v30;
LABEL_19:
        v38 = *(&async function pointer to TaskGroup.Iterator.next(isolation:) + 1);
        v39 = swift_task_alloc();
        *(v0 + 224) = v39;
        *v39 = v0;
        v39[1] = sub_3247C;
        v40 = *(v0 + 208);
        v35 = *(v0 + 192);
        v32 = v0 + 72;
        v33 = 0;
        v34 = 0;

        return TaskGroup.Iterator.next(isolation:)(v32, v33, v34, v35);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }
    }

    v29 = v10;
    sub_BCF64();
    v10 = v29;
    if (v1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v19 = *(v0 + 216);
  v21 = *(v0 + 176);
  v20 = *(v0 + 184);
  v22 = *(v0 + 168);
  v23 = *(v0 + 88);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  *v23 = v19;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_32858(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_32958, 0, 0);
}

uint64_t sub_32978()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_32AA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_388C8(&qword_127B20, &unk_F74E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_32B64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_388C8(&qword_127B20, &unk_F74E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_32C14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_335C4;

  return sub_E39C0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_32CE0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 81) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);

  v10 = *(v0 + 64);

  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_32DD0(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  v14 = v1 + ((*(v6 + 80) + 81) & ~*(v6 + 80));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_32F0C;

  return sub_E3B84(a1, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_32F0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_33000()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_33038(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_335C8;

  return sub_E3E60(a1, v5);
}

uint64_t sub_330F0()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 57) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 4);

  v9 = *(v0 + 6);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return _swift_deallocObject(v0, v6 + v7, v5 | 7);
}

uint64_t sub_331D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 57) & ~*(v8 + 80);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_332F0;

  return sub_E396C(a1, a2, v10, v11, v12, v13, v2 + v9);
}

uint64_t sub_332F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_333EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_33404()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3343C()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_33474(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_F035C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_33520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_F035C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_335DC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_F12FC();
  sub_F089C();

  v4 = sub_F132C();
  return sub_37740(a1, v4);
}

unint64_t sub_336E8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_F07EC();
  sub_F12FC();
  sub_F089C();
  v4 = sub_F132C();

  return sub_33778(a1, v4);
}

unint64_t sub_33778(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_F07EC();
      v9 = v8;
      if (v7 == sub_F07EC() && v9 == v10)
      {
        break;
      }

      v12 = sub_F122C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_3387C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_F122C() & 1;
  }
}

uint64_t sub_338D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  if (*a1 != 7103860 || v9 != 0xE300000000000000)
  {
    v11 = *a1;
    if ((sub_F122C() & 1) == 0)
    {
      v35 = v8 == 0x6F746C69616DLL && v9 == 0xE600000000000000;
      if (!v35 && (sub_F122C() & 1) == 0)
      {
        v41 = *(a1 + 56);
        v43 = *(a1 + 40);
        v42 = *(a1 + 48);
        v31 = *(a1 + 24);
        v44 = *(a1 + 32);
        v28 = *(a1 + 16);
        result = sub_38910(a1, &v57);
        goto LABEL_21;
      }

      v37 = *(a1 + 16);
      v36 = *(a1 + 24);

      v38 = sub_53E04(_swiftEmptyArrayStorage);
      sub_E7DC8(_swiftEmptyArrayStorage);
      v39 = sub_E5BB4(v38);

      v49 = 7367027;
      v50 = 0xE300000000000000;
      v51 = v37;
      v52 = v36;
      v54 = 0;
      v55 = 0;
      v53 = v39;
      v56 = 0;
      v57 = 7367027;
      v58 = 0xE300000000000000;
      v59 = v37;
      v60 = v36;
      v63 = 0;
      v61 = v39;
      goto LABEL_18;
    }
  }

  v47 = v8;
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);

  v14 = sub_F07BC();

  v15 = sub_F07BC();

  v16 = IMPhoneNumberRefCopyForPhoneNumber();

  v17 = v16;
  v18 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (v18)
  {
    v19 = v18;

    v20 = sub_F07EC();
    v22 = v21;

    v23 = sub_53E04(_swiftEmptyArrayStorage);
    sub_E7DC8(_swiftEmptyArrayStorage);
    v24 = sub_E5BB4(v23);

    v49 = 7103860;
    v50 = 0xE300000000000000;
    v51 = v20;
    v52 = v22;
    v54 = 0;
    v55 = 0;
    v53 = v24;
    v56 = 0;
    v57 = 7103860;
    v58 = 0xE300000000000000;
    v59 = v20;
    v60 = v22;
    v63 = 0;
    v61 = v24;
LABEL_18:
    v62 = 0;
    v64 = 0;
    sub_38910(&v49, v48);
    result = sub_3CAB8(&v57);
    v41 = v56;
    v43 = v54;
    v42 = v55;
    v31 = v52;
    v44 = v53;
    v9 = v50;
    v28 = v51;
    v8 = v49;
    goto LABEL_21;
  }

  v46 = a2;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v25 = sub_F06CC();
  sub_3C96C(v25, static Logger.rcs);

  sub_38910(a1, &v57);
  v26 = sub_F06AC();
  v27 = sub_F0CEC();
  sub_3CAB8(a1);

  v28 = v13;
  if (os_log_type_enabled(v26, v27))
  {
    v45 = v27;
    v29 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = v13;
    v31 = v12;
    *(v29 + 4) = sub_3E850(v30, v12, &v49);
    *(v29 + 12) = 2080;
    v57 = v46;
    v58 = a3;
    sub_388C8(&qword_12AB88, &qword_F7970);
    v32 = sub_F083C();
    v34 = sub_3E850(v32, v33, &v49);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_0, v26, v45, "Could not normalize phone number %s country code %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = v12;
  }

  v41 = *(a1 + 56);
  v43 = *(a1 + 40);
  v42 = *(a1 + 48);
  v44 = *(a1 + 32);
  result = sub_38910(a1, &v57);
  v8 = v47;
LABEL_21:
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v28;
  *(a4 + 24) = v31;
  *(a4 + 32) = v44;
  *(a4 + 40) = v43;
  *(a4 + 48) = v42;
  *(a4 + 56) = v41;
  return result;
}