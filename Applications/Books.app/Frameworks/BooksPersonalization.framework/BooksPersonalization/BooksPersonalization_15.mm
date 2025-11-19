uint64_t sub_F5AA8()
{
  v64 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v4 = *(v0 + 472);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v7 = *(v0 + 448);
  v8 = *(v0 + 456);
  v63[0] = v6;
  v63[1] = v5;
  v63[2] = v7;
  v63[3] = v8;
  v3(v63);
  if (v1)
  {
    v9 = *(v0 + 576);
    v61 = v1;
    v62 = v8;
    v10 = *(v0 + 568);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v57 = *(v0 + 544);
    v13 = *(v0 + 536);
    v14 = v5;
    v15 = *(v0 + 528);
    v16 = *(v0 + 96);
    *(v0 + 144) = *(v0 + 80);
    *(v0 + 160) = v16;
    v17 = *(v0 + 128);
    *(v0 + 176) = *(v0 + 112);
    *(v0 + 192) = v17;
    sub_FA194(v9, v12);
    v60 = v6;
    v18 = *(v10 + 56);
    v18(v12, 0, 1, v11);
    *(v0 + 336) = v15;
    *(v0 + 344) = sub_42094(&qword_22C230, &qword_22C228, &qword_1C6D00);
    v59 = sub_40528((v0 + 312));
    sub_43050(v12, v57, &qword_22C1B0, &qword_1C6CE0);
    v19 = *(v15 + 40);
    v18(v13 + v19, 1, 1, v11);
    v20 = (v0 + 392);
    v21 = v13 + *(v15 + 44);
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *v13 = 0x6E656D6D6F636572;
    *(v13 + 8) = 0xEB00000000325664;
    v22 = *(v0 + 144);
    v23 = *(v0 + 160);
    v24 = *(v0 + 192);
    *(v13 + 48) = *(v0 + 176);
    *(v13 + 64) = v24;
    *(v13 + 16) = v22;
    *(v13 + 32) = v23;
    sub_FA578(v0 + 144, v0 + 208);
    sub_FA1F8(v57, v13 + v19);
    v25 = *v21;
    v26 = *(v21 + 8);
    v28 = *(v21 + 16);
    v27 = *(v21 + 24);

    sub_4161C(v7, v62);
    sub_FA268(v25, v26, v28, v27);
    *v21 = v60;
    *(v21 + 8) = v14;
    *(v21 + 16) = v7;
    *(v21 + 24) = v62;
    *(v0 + 464) = v61;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
    v29 = swift_dynamicCast();
    v30 = *(v0 + 544);
    v31 = *(v0 + 536);
    v32 = *(v0 + 528);
    v58 = v7;
    if (v29)
    {
      sub_264B8(v20, v0 + 352);
      v33 = *(v0 + 376);
      v34 = *(v0 + 384);
      sub_2698((v0 + 352), v33);
      v35 = (*(v34 + 48))(v33, v34);
      sub_42F48(v30, &qword_22C1B0, &qword_1C6CE0);
      *(v31 + *(v32 + 48)) = v35;
      sub_2BF8((v0 + 352));
    }

    else
    {
      sub_42F48(v30, &qword_22C1B0, &qword_1C6CE0);
      *v20 = 0u;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0;
      sub_42F48(v20, &qword_22C1C8, &qword_1CE710);
      *(v31 + *(v32 + 48)) = v61;
      swift_errorRetain();
    }

    v41 = *(v0 + 552);
    v42 = *(v0 + 528);
    sub_5ED18(*(v0 + 536), v59, &qword_22C228, &qword_1C6D00);
    sub_42F48(v41, &qword_22C1B0, &qword_1C6CE0);
    v44 = *(v0 + 336);
    v43 = *(v0 + 344);
    v45 = sub_2698((v0 + 312), v44);
    v46 = *(v44 - 8);
    v47 = *(v46 + 64) + 15;
    v48 = swift_task_alloc();
    (*(v46 + 16))(v48, v45, v44);
    sub_42094(&qword_22C238, &qword_22C228, &qword_1C6D00);
    if (sub_1B55C4())
    {
      (*(v46 + 8))(v48, v44);
    }

    else
    {
      v49 = *(*(v43 + 8) + 8);
      swift_allocError();
      (*(v46 + 32))(v50, v48, v44);
    }

    v51 = *(v0 + 576);
    swift_willThrow();

    sub_2BF8((v0 + 312));

    sub_41670(v58, v62);
    sub_FA138(v51);
    v52 = *(v0 + 576);
    v53 = *(v0 + 552);
    v54 = *(v0 + 544);
    v55 = *(v0 + 536);

    v40 = *(v0 + 8);
  }

  else
  {
    v36 = *(v0 + 576);
    v37 = *(v0 + 552);
    v38 = *(v0 + 544);
    v39 = *(v0 + 536);

    sub_41670(v7, v8);
    sub_FA138(v36);

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_F6024()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];

  sub_FA138(v3);
  v4 = v0[76];
  v5 = v0[72];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];

  v9 = v0[1];

  return v9();
}

uint64_t sub_F60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[38] = v20;
  v8[39] = v21;
  v8[36] = a7;
  v8[37] = a8;
  v8[34] = a5;
  v8[35] = a6;
  v8[32] = a3;
  v8[33] = a4;
  v8[30] = a1;
  v8[31] = a2;
  v12 = sub_2B0C(&qword_22C1A8, &qword_1C6CD8);
  v8[40] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[41] = swift_task_alloc();
  v14 = *(*(sub_2B0C(&qword_22C1B0, &qword_1C6CE0) - 8) + 64) + 15;
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v15 = type metadata accessor for ClientCurrency.Request();
  v8[44] = v15;
  v16 = *(v15 - 8);
  v8[45] = v16;
  v17 = *(v16 + 64) + 15;
  v8[46] = swift_task_alloc();
  v8[26] = a2;
  v8[27] = a3;
  v8[28] = a4;

  return _swift_task_switch(sub_F6248, 0, 0);
}

uint64_t sub_F6248()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 280);
  (*(v0 + 272))();
  v3 = *(v0 + 368);
  v4 = swift_task_alloc();
  *(v0 + 376) = v4;
  *(v4 + 16) = *(v0 + 288);
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  *(v5 + 16) = v0 + 208;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  *(v0 + 392) = v6;
  *v6 = v0;
  v6[1] = sub_F651C;

  return sub_140A44(v0 + 176, &unk_1CE6E0, v4, sub_FA128, v5);
}

uint64_t sub_F651C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v8 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_F6B8C;
  }

  else
  {
    v6 = *(v2 + 376);
    v5 = *(v2 + 384);

    v4 = sub_F6640;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_F6640()
{
  v60 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 240);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v59[0] = v5;
  v59[1] = v6;
  v59[2] = v8;
  v59[3] = v7;
  v2(v59);
  v9 = *(v0 + 368);
  if (v1)
  {
    v11 = *(v0 + 352);
    v10 = *(v0 + 360);
    v56 = v1;
    v57 = v6;
    v53 = v5;
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v58 = v7;
    v14 = *(v0 + 320);
    v15 = *(v0 + 328);
    v51 = *(v0 + 216);
    v52 = *(v0 + 208);
    v55 = v8;
    v16 = *(v0 + 224);
    sub_FA194(v9, v12);
    v17 = *(v10 + 56);
    v17(v12, 0, 1, v11);
    *(v0 + 80) = v14;
    *(v0 + 88) = sub_42094(&qword_22C1B8, &qword_22C1A8, &qword_1C6CD8);
    v54 = sub_40528((v0 + 56));
    sub_43050(v12, v13, &qword_22C1B0, &qword_1C6CE0);
    v18 = *(v14 + 40);
    v17(v15 + v18, 1, 1, v11);
    v19 = v15 + *(v14 + 44);
    *v19 = 0u;
    *(v19 + 1) = 0u;
    *v15 = 0xD000000000000017;
    v15[1] = 0x80000000001D77E0;
    v15[2] = v52;
    v15[3] = v51;
    v15[4] = v16;

    sub_FA1F8(v13, v15 + v18);
    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = *(v19 + 2);
    v23 = *(v19 + 3);

    sub_4161C(v55, v58);
    sub_FA268(v21, v20, v22, v23);
    *v19 = v53;
    *(v19 + 1) = v57;
    *(v19 + 2) = v55;
    *(v19 + 3) = v58;
    *(v0 + 232) = v56;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
    v24 = swift_dynamicCast();
    v25 = *(v0 + 328);
    v26 = *(v0 + 336);
    v27 = *(v0 + 320);
    if (v24)
    {
      sub_264B8((v0 + 136), v0 + 96);
      v28 = *(v0 + 120);
      v29 = *(v0 + 128);
      sub_2698((v0 + 96), v28);
      v30 = (*(v29 + 48))(v28, v29);
      sub_42F48(v26, &qword_22C1B0, &qword_1C6CE0);
      *(v25 + *(v27 + 48)) = v30;
      sub_2BF8((v0 + 96));
    }

    else
    {
      sub_42F48(*(v0 + 336), &qword_22C1B0, &qword_1C6CE0);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      sub_42F48(v0 + 136, &qword_22C1C8, &qword_1CE710);
      *(v25 + *(v27 + 48)) = v56;
      swift_errorRetain();
    }

    v35 = *(v0 + 344);
    v36 = *(v0 + 320);
    sub_5ED18(*(v0 + 328), v54, &qword_22C1A8, &qword_1C6CD8);
    sub_42F48(v35, &qword_22C1B0, &qword_1C6CE0);
    v38 = *(v0 + 80);
    v37 = *(v0 + 88);
    v39 = sub_2698((v0 + 56), v38);
    v40 = *(v38 - 8);
    v41 = *(v40 + 64) + 15;
    v42 = swift_task_alloc();
    (*(v40 + 16))(v42, v39, v38);
    sub_42094(&qword_22C1D0, &qword_22C1A8, &qword_1C6CD8);
    if (sub_1B55C4())
    {
      (*(v40 + 8))(v42, v38);
    }

    else
    {
      v43 = *(*(v37 + 8) + 8);
      swift_allocError();
      (*(v40 + 32))(v44, v42, v38);
    }

    v45 = *(v0 + 368);
    swift_willThrow();

    sub_2BF8((v0 + 56));

    sub_41670(v55, v58);
    sub_FA138(v45);
    v46 = *(v0 + 368);
    v48 = *(v0 + 336);
    v47 = *(v0 + 344);
    v49 = *(v0 + 328);

    v34 = *(v0 + 8);
  }

  else
  {
    v32 = *(v0 + 336);
    v31 = *(v0 + 344);
    v33 = *(v0 + 328);

    sub_41670(v8, v7);
    sub_FA138(v9);

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_F6B8C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];

  sub_FA138(v3);
  v4 = v0[50];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];

  v9 = v0[1];

  return v9();
}

uint64_t Transport.Client.recommendV2(input:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  return _swift_task_switch(sub_F6C64, 0, 0);
}

uint64_t sub_F6C64()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_F6DAC;
  v6 = *(v0 + 80);

  return sub_F553C(v6, (v0 + 16), sub_F7680, v2, &unk_1C6B08, v3, sub_F7C7C, v4);
}

uint64_t sub_F6DAC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_F6EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v73 = a2;
  v4 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v63 - v6;
  v8 = sub_1B3F34();
  *&v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v63 - v14;
  v16 = sub_1B3D64();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v21 = *(a1 + 152);
  v22 = *(a1 + 160);
  sub_1B3D54();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_42F48(v15, &qword_22C200, &unk_1CE6C0);
    type metadata accessor for ClientErrorPayload();
    sub_FA3E0();
    swift_allocError();
    *v23 = v21;
    v23[1] = v22;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v25 = sub_1B3D44();
    v74._countAndFlagsBits = 0xD000000000000013;
    v74._object = 0x80000000001D78D0;
    sub_1B48D4(v74);
    v25(v71, 0);
    sub_1B3D34();
    v26 = v69;
    if ((*(v69 + 48))(v7, 1, v8) == 1)
    {
      sub_42F48(v7, &qword_22C1F8, &qword_1CFD60);
      type metadata accessor for ClientErrorPayload();
      sub_FA3E0();
      swift_allocError();
      (*(v17 + 16))(v27, v20, v16);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v17 + 8))(v20, v16);
    }

    else
    {
      v63 = v20;
      v64 = v17;
      v65 = v16;
      v28 = *(v26 + 32);
      v28(v11, v7, v8);
      v29 = v68;
      v28(v68, v11, v8);
      v30 = type metadata accessor for ClientCurrency.Request();
      v31 = v29 + v30[7];
      v69 = xmmword_1C6AD0;
      *v31 = xmmword_1C6AD0;
      v32 = (v29 + v30[5]);
      *v32 = 1414745936;
      v32[1] = 0xE400000000000000;
      v33 = v30[6];
      *(v29 + v33) = _swiftEmptyArrayStorage;
      sub_85D94(*v31, *(v31 + 8));
      *v31 = v69;
      *(v29 + v33) = _swiftEmptyArrayStorage;
      v34 = sub_3324C(0, 1, 1, _swiftEmptyArrayStorage);
      *(v29 + v33) = v34;
      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_3324C((v35 > 1), v36 + 1, 1, v34);
      }

      v37 = v73;
      *(v34 + 2) = v36 + 1;
      v38 = &v34[32 * v36];
      strcpy(v38 + 32, "content-type");
      v38[45] = 0;
      *(v38 + 23) = -5120;
      *(v38 + 6) = 0xD000000000000010;
      *(v38 + 7) = 0x80000000001D7860;
      *(v29 + v33) = v34;
      v39 = *(v66 + 128);
      v40 = *(v37 + 3);
      v72[0] = *(v37 + 2);
      v72[1] = v40;
      v41 = *(v37 + 3);
      v71[0] = *(v37 + 2);
      v71[1] = v41;
      *&v69 = 0x80000000001D7860;
      sub_43050(v72, v70, &qword_22C248, &qword_1C6D10);
      sub_2B0C(&qword_22C248, &qword_1C6D10);
      sub_FA628(&qword_22C250, &qword_22C248, &qword_1C6D10, sub_FA6A4);
      v42 = v67;
      v43 = sub_1B3C54();
      if (v42)
      {
        sub_F22A8(*&v71[0], *(&v71[0] + 1));
        (*(v64 + 8))(v63, v65);
        return sub_FA138(v29);
      }

      else
      {
        v45 = v43;
        v46 = v44;
        v47 = v69;
        sub_F22A8(*&v71[0], *(&v71[0] + 1));
        sub_85D94(*v31, *(v31 + 8));
        *v31 = v45;
        *(v31 + 8) = v46;
        v67 = v33;
        *(v29 + v33) = v34;
        v49 = *(v34 + 2);
        v48 = *(v34 + 3);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v34 = sub_3324C((v48 > 1), v49 + 1, 1, v34);
        }

        *(v34 + 2) = v50;
        v51 = &v34[32 * v49];
        *(v51 + 4) = 0x747065636361;
        *(v51 + 5) = 0xE600000000000000;
        *(v51 + 6) = 0xD000000000000010;
        *(v51 + 7) = v47;
        v52 = v67;
        *(v29 + v67) = v34;
        v53 = v37[1];
        if (v53)
        {
          v54 = *v37;
          *(v29 + v52) = v34;
          v55 = *(v34 + 3);

          if ((v49 + 2) > (v55 >> 1))
          {
            v34 = sub_3324C((v55 > 1), v49 + 2, 1, v34);
          }

          *(v34 + 2) = v49 + 2;
          v56 = &v34[32 * v50];
          *(v56 + 4) = 0xD000000000000014;
          *(v56 + 5) = 0x80000000001D78B0;
          *(v56 + 6) = v54;
          *(v56 + 7) = v53;
          v52 = v67;
          *(v29 + v67) = v34;
          v37 = v73;
        }

        v57 = v37[3];
        v58 = v63;
        if (v57)
        {
          v59 = v37[2];
          *(v29 + v52) = v34;
          v61 = *(v34 + 2);
          v60 = *(v34 + 3);

          if (v61 >= v60 >> 1)
          {
            v34 = sub_3324C((v60 > 1), v61 + 1, 1, v34);
            *(v29 + v67) = v34;
          }

          result = (*(v64 + 8))(v58, v65);
          *(v34 + 2) = v61 + 1;
          v62 = &v34[32 * v61];
          *(v62 + 4) = 0xD00000000000001BLL;
          *(v62 + 5) = 0x80000000001D78F0;
          *(v62 + 6) = v59;
          *(v62 + 7) = v57;
          *(v29 + v67) = v34;
        }

        else
        {
          return (*(v64 + 8))(v63, v65);
        }
      }
    }
  }

  return result;
}

uint64_t sub_F769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_F76C0, 0, 0);
}

uint64_t sub_F76C0()
{
  v1 = v0[4];
  v2 = v1[28];
  v3 = v1[29];
  sub_2698(v1 + 25, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_F780C;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, 0x6E656D6D6F636572, 0xEB00000000325664, v2, v3);
}

uint64_t sub_F780C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_F7900(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7A038;

  return sub_F769C(a1, a2, v6);
}

uint64_t sub_F79B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  result = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  if (v8 > 400)
  {
    if (v8 == 401)
    {
      *&v18[0] = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, v18);

      if (!v3)
      {
        v16 = *(a2 + 136);
        sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
        sub_FA2B4();
        result = sub_1B3BA4();
        *a3 = *&v18[0];
        v12 = 2;
        goto LABEL_12;
      }

      return result;
    }

    if (v8 == 500)
    {
      *&v18[0] = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, v18);
      if (v3)
      {
      }

      v17 = *(a2 + 136);
      sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
      sub_FA2B4();
      result = sub_1B3BA4();
      *a3 = *&v18[0];
      v12 = 3;
      goto LABEL_12;
    }

LABEL_11:
    *a3 = v8;
    v12 = 4;
LABEL_12:
    *(a3 + 64) = v12;
    return result;
  }

  if (v8 == 200)
  {
    *&v18[0] = result;

    sub_41AEC(0xD000000000000010, 0x80000000001D7860, v18);

    if (!v3)
    {
      v13 = *(a2 + 136);
      sub_FA5D4();
      result = sub_1B3BA4();
      v14 = v18[1];
      *a3 = v18[0];
      *(a3 + 16) = v14;
      v15 = v18[3];
      *(a3 + 32) = v18[2];
      *(a3 + 48) = v15;
      *(a3 + 64) = 0;
    }

    return result;
  }

  if (v8 != 400)
  {
    goto LABEL_11;
  }

  *&v18[0] = result;

  sub_41AEC(0xD000000000000010, 0x80000000001D7860, v18);

  if (!v3)
  {
    v11 = *(a2 + 136);
    sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA2B4();
    result = sub_1B3BA4();
    *a3 = *&v18[0];
    v12 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t Transport.Client.personalizationMetadata(input:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return _swift_task_switch(sub_F7CC8, 0, 0);
}

void sub_F7CC8()
{
  v1 = *(v0 + 48);
  v11 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v11;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_F7E28;
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  JUMPOUT(0xF60D4);
}

uint64_t sub_F7E28()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_F7F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v57 = a2;
  v58 = a3;
  v64 = a5;
  v6 = sub_2B0C(&qword_22C1F8, &qword_1CFD60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v54 - v8;
  v10 = sub_1B3F34();
  *&v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2B0C(&qword_22C200, &unk_1CE6C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v54 - v16;
  v18 = sub_1B3D64();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v23 = *(a1 + 152);
  v24 = *(a1 + 160);
  sub_1B3D54();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_42F48(v17, &qword_22C200, &unk_1CE6C0);
    type metadata accessor for ClientErrorPayload();
    sub_FA3E0();
    swift_allocError();
    *v25 = v23;
    v25[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    v27 = sub_1B3D44();
    v65._countAndFlagsBits = 0xD000000000000022;
    v65._object = 0x80000000001D7880;
    sub_1B48D4(v65);
    v27(v63, 0);
    sub_1B3D34();
    v28 = v62;
    if ((*(v62 + 48))(v9, 1, v10) == 1)
    {
      sub_42F48(v9, &qword_22C1F8, &qword_1CFD60);
      type metadata accessor for ClientErrorPayload();
      sub_FA3E0();
      swift_allocError();
      (*(v19 + 16))(v29, v22, v18);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v19 + 8))(v22, v18);
    }

    else
    {
      v54 = v22;
      v55 = v19;
      v56 = v18;
      v30 = *(v28 + 32);
      v30(v13, v9, v10);
      v31 = v64;
      v30(v64, v13, v10);
      v32 = type metadata accessor for ClientCurrency.Request();
      v33 = v31 + v32[7];
      v62 = xmmword_1C6AD0;
      *v33 = xmmword_1C6AD0;
      v34 = (v31 + v32[5]);
      *v34 = 1414745936;
      v34[1] = 0xE400000000000000;
      v35 = v32[6];
      *(v31 + v35) = _swiftEmptyArrayStorage;
      sub_85D94(*v33, *(v33 + 8));
      *v33 = v62;
      *(v31 + v35) = _swiftEmptyArrayStorage;
      v36 = sub_3324C(0, 1, 1, _swiftEmptyArrayStorage);
      *(v31 + v35) = v36;
      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_3324C((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[32 * v38];
      strcpy(v39 + 32, "content-type");
      v39[45] = 0;
      *(v39 + 23) = -5120;
      *(v39 + 6) = 0xD000000000000010;
      *(v39 + 7) = 0x80000000001D7860;
      *(v31 + v35) = v36;
      v40 = *(v59 + 128);
      v63[0] = v60;

      sub_2B0C(&qword_22C210, &qword_1C6CF8);
      sub_FA628(&qword_22C218, &qword_22C210, &qword_1C6CF8, sub_FA438);
      v41 = v61;
      v42 = sub_1B3C54();
      if (v41)
      {

        (*(v55 + 8))(v54, v56);
        return sub_FA138(v31);
      }

      else
      {
        v44 = v42;
        v45 = v43;
        *&v62 = 0x80000000001D7860;

        sub_85D94(*v33, *(v33 + 8));
        *v33 = v44;
        *(v33 + 8) = v45;
        *(v31 + v35) = v36;
        v47 = *(v36 + 2);
        v46 = *(v36 + 3);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          v36 = sub_3324C((v46 > 1), v47 + 1, 1, v36);
        }

        v49 = v58;
        *(v36 + 2) = v48;
        v50 = &v36[32 * v47];
        *(v50 + 4) = 0x747065636361;
        *(v50 + 5) = 0xE600000000000000;
        *(v50 + 6) = 0xD000000000000010;
        *(v50 + 7) = v62;
        *(v31 + v35) = v36;
        if (v49)
        {
          *(v31 + v35) = v36;
          v51 = *(v36 + 3);
          v52 = v47 + 2;

          if (v52 > (v51 >> 1))
          {
            v36 = sub_3324C((v51 > 1), v52, 1, v36);
            *(v31 + v35) = v36;
          }

          result = (*(v55 + 8))(v54, v56);
          *(v36 + 2) = v52;
          v53 = &v36[32 * v48];
          *(v53 + 4) = 0xD000000000000014;
          *(v53 + 5) = 0x80000000001D78B0;
          *(v53 + 6) = v57;
          *(v53 + 7) = v49;
          *(v31 + v35) = v36;
        }

        else
        {
          return (*(v55 + 8))(v54, v56);
        }
      }
    }
  }

  return result;
}

uint64_t sub_F8664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_F8688, 0, 0);
}

uint64_t sub_F8688()
{
  v1 = v0[4];
  v2 = v1[28];
  v3 = v1[29];
  sub_2698(v1 + 25, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_FA8F0;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, 0xD000000000000017, 0x80000000001D77E0, v2, v3);
}

uint64_t sub_F87D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  result = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  if (v8 > 400)
  {
    if (v8 == 401)
    {
      v16 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v16);

      if (!v3)
      {
        v14 = *(a2 + 136);
        sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
        sub_FA2B4();
        result = sub_1B3BA4();
        *a3 = v16;
        v12 = 2;
        goto LABEL_12;
      }

      return result;
    }

    if (v8 == 500)
    {
      v16 = result;

      sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v16);
      if (v3)
      {
      }

      v15 = *(a2 + 136);
      sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
      sub_FA2B4();
      result = sub_1B3BA4();
      *a3 = v16;
      v12 = 3;
      goto LABEL_12;
    }

LABEL_11:
    *a3 = v8;
    v12 = 4;
LABEL_12:
    *(a3 + 8) = v12;
    return result;
  }

  if (v8 == 200)
  {
    v16 = result;

    sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v16);

    if (!v3)
    {
      v13 = *(a2 + 136);
      sub_FA38C();
      result = sub_1B3BA4();
      *a3 = v16;
      *(a3 + 8) = 0;
    }

    return result;
  }

  if (v8 != 400)
  {
    goto LABEL_11;
  }

  v16 = result;

  sub_41AEC(0xD000000000000010, 0x80000000001D7860, &v16);

  if (!v3)
  {
    v11 = *(a2 + 136);
    sub_2B0C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA2B4();
    result = sub_1B3BA4();
    *a3 = v16;
    v12 = 1;
    goto LABEL_12;
  }

  return result;
}

__n128 sub_F8AB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_F8AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F8B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F8BD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2B0C(&qword_22C260, &qword_1C6D18);
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = type metadata accessor for ClientCurrency.Request();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  a3[3] = v6;
  a3[4] = sub_42094(&qword_22C268, &qword_22C260, &qword_1C6D18);
  v28 = sub_40528(a3);
  sub_43050(v16, v14, &qword_22C1B0, &qword_1C6CE0);
  v19 = v6[10];
  v18(&v9[v19], 1, 1, v17);
  v20 = &v9[v6[11]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *v9 = 0x6E656D6D6F636572;
  *(v9 + 1) = 0xE900000000000064;
  v21 = a2[3];
  *(v9 + 3) = a2[2];
  *(v9 + 4) = v21;
  *(v9 + 5) = a2[4];
  v22 = a2[1];
  *(v9 + 1) = *a2;
  *(v9 + 2) = v22;
  sub_FA7EC(a2, v32);
  sub_FA1F8(v14, &v9[v19]);
  sub_FA268(*v20, *(v20 + 1), *(v20 + 2), *(v20 + 3));
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v31 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v29, v32);
    v23 = v33;
    v24 = v34;
    sub_2698(v32, v33);
    v25 = (*(v24 + 48))(v23, v24);
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    *&v9[v6[12]] = v25;
    sub_2BF8(v32);
  }

  else
  {
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    sub_42F48(v29, &qword_22C1C8, &qword_1CE710);
    *&v9[v6[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v9, v28, &qword_22C260, &qword_1C6D18);
  return sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F8F58@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2B0C(&qword_22C228, &qword_1C6D00);
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  v17 = type metadata accessor for ClientCurrency.Request();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  a3[3] = v6;
  a3[4] = sub_42094(&qword_22C230, &qword_22C228, &qword_1C6D00);
  v28 = sub_40528(a3);
  sub_43050(v16, v14, &qword_22C1B0, &qword_1C6CE0);
  v19 = v6[10];
  v18(&v9[v19], 1, 1, v17);
  v20 = &v9[v6[11]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *v9 = 0x6E656D6D6F636572;
  *(v9 + 1) = 0xEB00000000325664;
  v21 = a2[1];
  *(v9 + 1) = *a2;
  *(v9 + 2) = v21;
  v22 = a2[3];
  *(v9 + 3) = a2[2];
  *(v9 + 4) = v22;
  sub_FA578(a2, v32);
  sub_FA1F8(v14, &v9[v19]);
  sub_FA268(*v20, *(v20 + 1), *(v20 + 2), *(v20 + 3));
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v31 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v29, v32);
    v23 = v33;
    v24 = v34;
    sub_2698(v32, v33);
    v25 = (*(v24 + 48))(v23, v24);
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    *&v9[v6[12]] = v25;
    sub_2BF8(v32);
  }

  else
  {
    sub_42F48(v14, &qword_22C1B0, &qword_1C6CE0);
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    sub_42F48(v29, &qword_22C1C8, &qword_1CE710);
    *&v9[v6[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v9, v28, &qword_22C228, &qword_1C6D00);
  return sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F92DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v7 = sub_2B0C(&qword_22C1A8, &qword_1C6CD8);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = type metadata accessor for ClientCurrency.Request();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  a5[3] = v7;
  a5[4] = sub_42094(&qword_22C1B8, &qword_22C1A8, &qword_1C6CD8);
  v31 = sub_40528(a5);
  sub_43050(v17, v15, &qword_22C1B0, &qword_1C6CE0);
  v20 = v7[10];
  v19(&v10[v20], 1, 1, v18);
  v21 = &v10[v7[11]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *v10 = 0xD000000000000017;
  *(v10 + 1) = 0x80000000001D77E0;
  v22 = v29;
  *(v10 + 2) = v28;
  *(v10 + 3) = v22;
  *(v10 + 4) = a4;

  sub_FA1F8(v15, &v10[v20]);
  sub_FA268(*v21, *(v21 + 1), *(v21 + 2), *(v21 + 3));
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v23 = v30;
  v34 = v30;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v32, v35);
    v24 = v36;
    v25 = v37;
    sub_2698(v35, v36);
    v26 = (*(v25 + 48))(v24, v25);
    sub_42F48(v15, &qword_22C1B0, &qword_1C6CE0);
    *&v10[v7[12]] = v26;
    sub_2BF8(v35);
  }

  else
  {
    sub_42F48(v15, &qword_22C1B0, &qword_1C6CE0);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
    sub_42F48(v32, &qword_22C1C8, &qword_1CE710);
    *&v10[v7[12]] = v23;
    swift_errorRetain();
  }

  sub_5ED18(v10, v31, &qword_22C1A8, &qword_1C6CD8);
  return sub_42F48(v17, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F9664@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_2B0C(&qword_22C260, &qword_1C6D18);
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  sub_FA194(a3, &v29 - v17);
  v19 = type metadata accessor for ClientCurrency.Request();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 0, 1, v19);
  a4[3] = v8;
  a4[4] = sub_42094(&qword_22C268, &qword_22C260, &qword_1C6D18);
  v30 = sub_40528(a4);
  sub_43050(v18, v16, &qword_22C1B0, &qword_1C6CE0);
  v21 = v8[10];
  v20(&v11[v21], 1, 1, v19);
  v22 = &v11[v8[11]];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *v11 = 0x6E656D6D6F636572;
  *(v11 + 1) = 0xE900000000000064;
  v23 = a2[3];
  *(v11 + 3) = a2[2];
  *(v11 + 4) = v23;
  *(v11 + 5) = a2[4];
  v24 = a2[1];
  *(v11 + 1) = *a2;
  *(v11 + 2) = v24;
  sub_FA7EC(a2, v34);
  sub_FA1F8(v16, &v11[v21]);
  sub_FA268(*v22, *(v22 + 1), *(v22 + 2), *(v22 + 3));
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v33 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v31, v34);
    v25 = v35;
    v26 = v36;
    sub_2698(v34, v35);
    v27 = (*(v26 + 48))(v25, v26);
    sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
    *&v11[v8[12]] = v27;
    sub_2BF8(v34);
  }

  else
  {
    sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
    memset(v31, 0, sizeof(v31));
    v32 = 0;
    sub_42F48(v31, &qword_22C1C8, &qword_1CE710);
    *&v11[v8[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v11, v30, &qword_22C260, &qword_1C6D18);
  return sub_42F48(v18, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F99FC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_2B0C(&qword_22C228, &qword_1C6D00);
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  sub_FA194(a3, &v29 - v17);
  v19 = type metadata accessor for ClientCurrency.Request();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 0, 1, v19);
  a4[3] = v8;
  a4[4] = sub_42094(&qword_22C230, &qword_22C228, &qword_1C6D00);
  v30 = sub_40528(a4);
  sub_43050(v18, v16, &qword_22C1B0, &qword_1C6CE0);
  v21 = v8[10];
  v20(&v11[v21], 1, 1, v19);
  v22 = &v11[v8[11]];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *v11 = 0x6E656D6D6F636572;
  *(v11 + 1) = 0xEB00000000325664;
  v23 = a2[1];
  *(v11 + 1) = *a2;
  *(v11 + 2) = v23;
  v24 = a2[3];
  *(v11 + 3) = a2[2];
  *(v11 + 4) = v24;
  sub_FA578(a2, v34);
  sub_FA1F8(v16, &v11[v21]);
  sub_FA268(*v22, *(v22 + 1), *(v22 + 2), *(v22 + 3));
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v33 = a1;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v31, v34);
    v25 = v35;
    v26 = v36;
    sub_2698(v34, v35);
    v27 = (*(v26 + 48))(v25, v26);
    sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
    *&v11[v8[12]] = v27;
    sub_2BF8(v34);
  }

  else
  {
    sub_42F48(v16, &qword_22C1B0, &qword_1C6CE0);
    memset(v31, 0, sizeof(v31));
    v32 = 0;
    sub_42F48(v31, &qword_22C1C8, &qword_1CE710);
    *&v11[v8[12]] = a1;
    swift_errorRetain();
  }

  sub_5ED18(v11, v30, &qword_22C228, &qword_1C6D00);
  return sub_42F48(v18, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_F9D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v30 = a2;
  v31 = a3;
  v32 = a1;
  v9 = sub_2B0C(&qword_22C1A8, &qword_1C6CD8);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;
  sub_FA194(a5, &v30 - v18);
  v20 = type metadata accessor for ClientCurrency.Request();
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 0, 1, v20);
  a6[3] = v9;
  a6[4] = sub_42094(&qword_22C1B8, &qword_22C1A8, &qword_1C6CD8);
  v33 = sub_40528(a6);
  sub_43050(v19, v17, &qword_22C1B0, &qword_1C6CE0);
  v22 = v9[10];
  v21(&v12[v22], 1, 1, v20);
  v23 = &v12[v9[11]];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *v12 = 0xD000000000000017;
  *(v12 + 1) = 0x80000000001D77E0;
  v24 = v31;
  *(v12 + 2) = v30;
  *(v12 + 3) = v24;
  *(v12 + 4) = a4;

  sub_FA1F8(v17, &v12[v22]);
  sub_FA268(*v23, *(v23 + 1), *(v23 + 2), *(v23 + 3));
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v25 = v32;
  v36 = v32;
  swift_errorRetain();
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_2B0C(&qword_22C1C0, &qword_1C6CE8);
  if (swift_dynamicCast())
  {
    sub_264B8(v34, v37);
    v26 = v38;
    v27 = v39;
    sub_2698(v37, v38);
    v28 = (*(v27 + 48))(v26, v27);
    sub_42F48(v17, &qword_22C1B0, &qword_1C6CE0);
    *&v12[v9[12]] = v28;
    sub_2BF8(v37);
  }

  else
  {
    sub_42F48(v17, &qword_22C1B0, &qword_1C6CE0);
    memset(v34, 0, sizeof(v34));
    v35 = 0;
    sub_42F48(v34, &qword_22C1C8, &qword_1CE710);
    *&v12[v9[12]] = v25;
    swift_errorRetain();
  }

  sub_5ED18(v12, v33, &qword_22C1A8, &qword_1C6CD8);
  return sub_42F48(v19, &qword_22C1B0, &qword_1C6CE0);
}

uint64_t sub_FA138(uint64_t a1)
{
  v2 = type metadata accessor for ClientCurrency.Request();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FA194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCurrency.Request();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_FA1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22C1B0, &qword_1C6CE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_FA268(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_41670(a3, a4);
  }
}

unint64_t sub_FA2B4()
{
  result = qword_22C1E0;
  if (!qword_22C1E0)
  {
    sub_1CC1C(&qword_22C1D8, &qword_1C6CF0);
    sub_FA338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C1E0);
  }

  return result;
}

unint64_t sub_FA338()
{
  result = qword_22C1E8;
  if (!qword_22C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C1E8);
  }

  return result;
}

unint64_t sub_FA38C()
{
  result = qword_22C1F0;
  if (!qword_22C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C1F0);
  }

  return result;
}

unint64_t sub_FA3E0()
{
  result = qword_22C208;
  if (!qword_22C208)
  {
    type metadata accessor for ClientErrorPayload();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C208);
  }

  return result;
}

unint64_t sub_FA438()
{
  result = qword_22C220;
  if (!qword_22C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C220);
  }

  return result;
}

uint64_t sub_FA48C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226C;

  return sub_14103C(a1, v4, v5, v6);
}

uint64_t sub_FA540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v4[1];
  v8[0] = *v4;
  v8[1] = v5;
  v6 = v4[3];
  v8[2] = v4[2];
  v8[3] = v6;
  return sub_F99FC(a1, v8, v3, a2);
}

unint64_t sub_FA5D4()
{
  result = qword_22C240;
  if (!qword_22C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C240);
  }

  return result;
}

uint64_t sub_FA628(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_FA6A4()
{
  result = qword_22C258;
  if (!qword_22C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C258);
  }

  return result;
}

uint64_t sub_FA6F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7A038;

  return sub_14103C(a1, v4, v5, v6);
}

uint64_t sub_FA7AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v4[3];
  v8[2] = v4[2];
  v8[3] = v5;
  v8[4] = v4[4];
  v6 = v4[1];
  v8[0] = *v4;
  v8[1] = v6;
  return sub_F9664(a1, v8, v3, a2);
}

unint64_t sub_FA848()
{
  result = qword_22C278;
  if (!qword_22C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C278);
  }

  return result;
}

unint64_t sub_FA89C()
{
  result = qword_22C290;
  if (!qword_22C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C290);
  }

  return result;
}

uint64_t dispatch thunk of ConfigurationServiceType.fetchConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226C;

  return v11(a1, a2, a3);
}

void *Book.Metadata.genreIDs(at:)(_BYTE *a1)
{
  v2 = v1[1];
  if (*a1)
  {
    v3 = *v1;
    v15 = *(v1 + 3);
    v16 = *(v1 + 4);
    v17 = v1[10];
    v14 = *(v1 + 2);
    v13 = *(v1 + 1);
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    return sub_FB564(v4);
  }

  else
  {
    v5 = *(v2 + 16);
    if (v5)
    {
      sub_3741C(0, v5, 0);
      v6 = (v2 + 32);
      v7 = _swiftEmptyArrayStorage[2];
      do
      {
        v9 = *v6;
        v6 += 2;
        v8 = v9;
        v10 = _swiftEmptyArrayStorage[3];
        if (v7 >= v10 >> 1)
        {
          sub_3741C((v10 > 1), v7 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v7 + 1;
        _swiftEmptyArrayStorage[v7++ + 4] = v8;
        --v5;
      }

      while (v5);
    }

    v11 = sub_40854(_swiftEmptyArrayStorage);

    return v11;
  }
}

uint64_t sub_FAB98(uint64_t a1)
{
  *(v2 + 2280) = v1;
  v4 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  *(v2 + 2288) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 2296) = swift_task_alloc();
  *(v2 + 2304) = swift_task_alloc();
  *(v2 + 2312) = *a1;
  *(v2 + 1697) = *(a1 + 8);
  memcpy((v2 + 25), (a1 + 9), 0x19FuLL);
  *(v2 + 2320) = *(a1 + 424);
  memcpy((v2 + 448), (a1 + 432), 0x2B0uLL);

  return _swift_task_switch(sub_FAC80, 0, 0);
}

uint64_t sub_FAC80()
{
  v1 = *(v0 + 2320);
  v2 = *(v0 + 1697);
  v3 = *(v0 + 2312);
  v4 = *(v0 + 2280);
  v5 = v4[10];
  v6 = v4[11];
  sub_2698(v4 + 7, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 440) = v1;
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 2328) = v9;
  *v9 = v0;
  v9[1] = sub_FADDC;
  v10 = *(v0 + 2320);

  return v12(v0 + 16, v10, v5, v6);
}

uint64_t sub_FADDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2328);
  v7 = *v2;
  *(v3 + 2336) = a1;
  *(v3 + 2344) = v1;

  if (v1)
  {
    v5 = sub_FB3A0;
  }

  else
  {
    v5 = sub_FAEF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_FAEF4()
{
  v59 = v0;
  v1 = *(v0 + 2336);
  v2 = *(v0 + 1697);
  v3 = *(v0 + 2280);
  v4 = v3[5];
  v5 = v3[6];
  sub_2698(v3 + 2, v4);
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  v7 = *(v1 + 16);
  v8 = *(v0 + 2336);
  if (v7)
  {
    v9 = sub_351DC(*(v1 + 16), 0);
    v10 = sub_3F4A0(&v58, v9 + 32, v7, v8);
    sub_417B8();
    if (v10 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_5:
  v11 = *(v0 + 2344);
  v12 = (*(v5 + 8))(sub_FBAA8, v6, v9, &type metadata for UInt64, &protocol witness table for UInt64, v4, v5);

  v13 = sub_FB638(v12);

  v14 = *(v13 + 16);
  if (v14)
  {
    v55 = *(v0 + 2288);
    v58 = _swiftEmptyArrayStorage;
    sub_3788C(0, v14, 0);
    v57 = v58;
    v15 = v13 + 64;
    v16 = -1 << *(v13 + 32);
    result = sub_1B4F84();
    if (result < 0 || (v18 = result, result >= 1 << *(v13 + 32)))
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      v19 = 0;
      v20 = *(v13 + 36);
      v50 = v13 + 72;
      v51 = v14;
      v52 = v20;
      v53 = v13 + 64;
      v54 = v13;
      while (1)
      {
        v21 = v18 >> 6;
        if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          break;
        }

        if (v20 != *(v13 + 36))
        {
          goto LABEL_34;
        }

        v56 = v19;
        v22 = *(v0 + 2304);
        v23 = *(v55 + 48);
        v24 = *(v0 + 2296);
        v25 = *(v13 + 48);
        v26 = *(v13 + 56);
        v27 = *(v25 + 8 * v18);
        v28 = (type metadata accessor for AttributeAffinityResult() - 8);
        sub_42C00(v26 + *(*v28 + 72) * v18, v22 + v23);
        *v24 = v27;
        v29 = (v24 + *(v55 + 48));
        sub_FBAB0(v22 + v23, v29);
        v30 = v28[7];
        sub_2B0C(&qword_22C348, &unk_1C6DC0);
        sub_1B4384();
        memcpy((v0 + 1136), (v0 + 1704), 0x231uLL);
        sub_2601C(v0 + 1136);
        v31 = *(v0 + 1144);
        sub_1B4394();
        v32 = *(v0 + 2272);
        v33 = *v29;
        result = sub_FBB14(v24);
        v34 = v57;
        v58 = v57;
        v36 = v57[2];
        v35 = v57[3];
        if (v36 >= v35 >> 1)
        {
          result = sub_3788C((v35 > 1), v36 + 1, 1);
          v34 = v58;
        }

        v34[2] = v36 + 1;
        v37 = &v34[5 * v36];
        v37[4] = v27;
        *(v37 + 40) = v31;
        v37[6] = _swiftEmptyArrayStorage;
        v37[7] = v32;
        v37[8] = v33;
        v13 = v54;
        v38 = 1 << *(v54 + 32);
        if (v18 >= v38)
        {
          goto LABEL_35;
        }

        v15 = v53;
        v39 = *(v53 + 8 * v21);
        if ((v39 & (1 << v18)) == 0)
        {
          goto LABEL_36;
        }

        v20 = v52;
        if (v52 != *(v54 + 36))
        {
          goto LABEL_37;
        }

        v57 = v34;
        v40 = v39 & (-2 << (v18 & 0x3F));
        if (v40)
        {
          v18 = __clz(__rbit64(v40)) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v41 = v21 << 6;
          v42 = (v50 + 8 * v21);
          v43 = v21 + 1;
          while (v43 < (v38 + 63) >> 6)
          {
            v45 = *v42++;
            v44 = v45;
            v41 += 64;
            ++v43;
            if (v45)
            {
              result = sub_42FF0(v18, v52, 0);
              v18 = __clz(__rbit64(v44)) + v41;
              goto LABEL_23;
            }
          }

          result = sub_42FF0(v18, v52, 0);
          v18 = v38;
        }

LABEL_23:
        v19 = v56 + 1;
        if (v56 + 1 == v51)
        {

          v46 = v57;
          goto LABEL_29;
        }

        if ((v18 & 0x8000000000000000) != 0 || v18 >= 1 << *(v54 + 32))
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v46 = _swiftEmptyArrayStorage;
LABEL_29:
    v47 = *(v0 + 2304);
    v48 = *(v0 + 2296);

    v49 = *(v0 + 8);

    return v49(v46);
  }

  return result;
}

uint64_t sub_FB3A0()
{
  v1 = v0[288];
  v2 = v0[287];

  v3 = v0[1];
  v4 = v0[293];

  return v3();
}

void *sub_FB410(void *result, char a2)
{
  v2 = *(result + 7);
  v12[2] = *(result + 5);
  v12[3] = v2;
  v12[4] = *(result + 9);
  v13 = result[11];
  v3 = *(result + 3);
  v4 = result[18];
  v12[0] = *(result + 1);
  v12[1] = v3;
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v9 = a2;
    sub_5EDD8(v12, v10);
    v6 = Book.Metadata.genreIDs(at:)(&v9);
    v7 = *(v5 + 7);
    v10[2] = *(v5 + 5);
    v10[3] = v7;
    v10[4] = *(v5 + 9);
    v11 = v5[11];
    v8 = *(v5 + 3);
    v10[0] = *(v5 + 1);
    v10[1] = v8;
    sub_85554(v10);
    return v6;
  }

  return result;
}

uint64_t sub_FB4CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_91B58;

  return sub_FAB98(a1);
}

void *sub_FB564(uint64_t a1)
{
  v3 = *(v1 + 8);
  result = _swiftEmptySetSingleton;
  v14 = _swiftEmptySetSingleton;
  v5 = *(v3 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = v3 + 40;
  while (v6 < *(v3 + 16))
  {
    v9 = *(*v7 + 16);
    v10 = v9 - a1;
    if (__OFSUB__(v9, a1))
    {
      goto LABEL_16;
    }

    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_17;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      if (v12 != -1)
      {
        goto LABEL_6;
      }

      v8 = *(v7 - 8);
    }

    else
    {
      if (v12 >= v9)
      {
        goto LABEL_18;
      }

      v8 = *(*v7 + 8 * v12 + 32);
    }

    result = sub_111CE0(&v13, v8);
LABEL_6:
    ++v6;
    v7 += 16;
    if (v5 == v6)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_FB638(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_FB798(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_FBA0C(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_FB798(unint64_t *a1, uint64_t a2, void *a3)
{
  v33 = a2;
  v34 = a1;
  v37 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  v4 = *(*(v37 - 8) + 64);
  v5 = __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v32 - v8);
  v10 = type metadata accessor for AttributeAffinityResult();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  result = __chkstk_darwin(v10 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v15 = 0;
  v38 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_11:
    v26 = v23 | (v15 << 6);
    v27 = *(v38[6] + 8 * v26);
    sub_42C00(v38[7] + *(v36 + 72) * v26, v14);
    *v9 = v27;
    v28 = v37;
    sub_42C00(v14, v9 + *(v37 + 48));
    sub_FBB7C(v9, v7);
    v29 = *(v28 + 48);
    v30 = *&v7[v29];
    sub_EBB90(&v7[v29]);
    result = sub_EBB90(v14);
    if (v30 > 0.0)
    {
      *(v34 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_55EE4(v34, v33, v35, v38);
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_55EE4(v34, v33, v35, v38);
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v21 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_FBA0C(void *result, uint64_t a2, void *a3)
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

    v6 = sub_FB798(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_FBAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeAffinityResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FBB14(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_FBB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_22C340, &qword_1C6DB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FBBEC(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v29 = a3 & 1;
  v32 = a1;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    memcpy(__dst, (*(v32 + 48) + 568 * (__clz(__rbit64(v7)) | (v9 << 6))), 0x231uLL);
    v12 = __dst[0];
    sub_4299C(__dst, &v30);
    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *a2;
    v15 = v30;
    *a2 = 0x8000000000000000;
    v16 = sub_43124(v12);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_182384(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_43124(v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v24 = v30;
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v16;
    sub_1877E4();
    v16 = v27;
    v24 = v30;
    if (v22)
    {
LABEL_4:
      *(v24[7] + v16) = v29;
      goto LABEL_5;
    }

LABEL_17:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    *(v24[6] + 8 * v16) = v12;
    *(v24[7] + v16) = v29;
    v25 = v24[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_24;
    }

    v24[2] = v26;
LABEL_5:
    v7 &= v7 - 1;
    v10 = *a2;
    *a2 = v24;

    sub_2601C(__dst);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_FBE10(uint64_t a1, uint64_t a2)
{
  *(v3 + 2440) = v2;
  *(v3 + 2432) = a1;
  memcpy((v3 + 1760), a2, 0x1E8uLL);
  *(v3 + 2448) = *(a2 + 488);
  *(v3 + 2464) = *(a2 + 504);
  memcpy((v3 + 16), (a2 + 512), 0x260uLL);

  return _swift_task_switch(sub_FBEAC, 0, 0);
}

uint64_t sub_FBEAC()
{
  v27 = v0;
  v1 = v0[304];
  v0[303] = sub_12D998(_swiftEmptyArrayStorage);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v8 << 6);
      v11 = *(*(v1 + 48) + v10);
      v12 = *(*(v1 + 56) + 8 * v10);

      sub_FBBEC(v13, v0 + 303, v11);

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v14 = v0[305];
  v15 = v0[304];

  v16 = _swiftEmptyArrayStorage;
  v0[309] = sub_12DA78(_swiftEmptyArrayStorage);
  v17 = v14[5];
  v18 = v14[6];
  sub_2698(v14 + 2, v17);
  v19 = v0[303];
  v0[310] = v19;
  v20 = *(v19 + 16);
  if (v20)
  {
    v16 = sub_3503C(v20, 0);
    v21 = sub_43128(&v26, v16 + 4, v20, v19);

    result = sub_417B8();
    if (v21 != v20)
    {
      goto LABEL_17;
    }
  }

  v0[311] = v16;
  v22 = *(v18 + 16);
  v25 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[312] = v24;
  *v24 = v0;
  v24[1] = sub_FC160;

  return (v25)(v16, v17, v18);
}

uint64_t sub_FC160(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2496);
  v6 = *v2;
  v4[313] = a1;
  v4[314] = v1;

  v7 = v3[311];
  if (v1)
  {
    v8 = v4[309];

    v9 = sub_FCFA0;
  }

  else
  {

    v9 = sub_FC2B0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_FC2B0()
{
  v175 = v0;
  v152 = 0;
  v1 = 0;
  v2 = (v0 + 281);
  v3 = v0[313];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v164 = v0[313];
  __src = v0 + 78;
  v7 = -1 << *(v164 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v4;
  v10 = (63 - v7) >> 6;
  v161 = (v0 + 281);
  v163 = v0[309];
  v156 = v10;
  v159 = v5;
LABEL_6:
  if (v9)
  {
    v11 = v1;
LABEL_11:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v11 << 6);
    v154 = *(*(v164 + 48) + 8 * v13);
    v14 = *(v164 + 56) + 88 * v13;
    v16 = *(v14 + 48);
    v15 = *(v14 + 64);
    v17 = *(v14 + 32);
    *(v2 + 80) = *(v14 + 80);
    *(v2 + 48) = v16;
    *(v2 + 64) = v15;
    *(v2 + 32) = v17;
    v18 = *(v14 + 16);
    *v2 = *v14;
    *(v2 + 16) = v18;
    v19 = *(v14 + 48);
    __dst[2] = *(v14 + 32);
    __dst[3] = v19;
    __dst[4] = *(v14 + 64);
    *&__dst[5] = *(v14 + 80);
    v20 = *(v14 + 16);
    __dst[0] = *v14;
    __dst[1] = v20;
    sub_5EDD8(v2, (v0 + 292));
    v21 = Book.Metadata.genreIDs.getter();
    v22 = v21;
    v23 = 0;
    v24 = v21 + 56;
    v25 = -1 << *(v21 + 32);
    if (-v25 < 64)
    {
      v26 = ~(-1 << -v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v21 + 56);
    v28 = (63 - v25) >> 6;
LABEL_15:
    v29 = v23;
    while (v27)
    {
      v23 = v29;
LABEL_22:
      v30 = *(v167 + 2464);
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = *(*(v22 + 48) + ((v23 << 9) | (8 * v31)));
      memcpy(__dst, (v167 + 1760), 0x1E8uLL);
      *v168 = *(v167 + 2448);
      v172 = v30;
      memcpy(v173, (v167 + 16), sizeof(v173));
      v33 = sub_FD004();
      if (v33[2])
      {
        v34 = sub_43124(v32);
        if (v35)
        {
          v36 = *(v33[7] + 8 * v34);

          sub_41C08(v152);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&__dst[0] = v163;
          v153 = v36;
          v39 = sub_43124(v36);
          v40 = *(v163 + 16);
          v41 = (v38 & 1) == 0;
          result = v40 + v41;
          if (__OFADD__(v40, v41))
          {
            goto LABEL_136;
          }

          if (*(v163 + 24) >= result)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v38 & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            else
            {
              v50 = v38;
              sub_1854E4();
              v163 = *&__dst[0];
              if ((v50 & 1) == 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            v149 = v38;
            sub_17D824(result, isUniquelyReferenced_nonNull_native);
            v163 = *&__dst[0];
            v43 = sub_43124(v153);
            if ((v149 & 1) != (v44 & 1))
            {
              goto LABEL_131;
            }

            v39 = v43;
            if (v149)
            {
              goto LABEL_32;
            }

LABEL_31:
            sub_15C8E0(v39, v153, _swiftEmptyArrayStorage, v163);
          }

LABEL_32:
          v45 = *(v163 + 56);
          v46 = *(v45 + 8 * v39);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *(v45 + 8 * v39) = v46;
          v150 = v39;
          if ((v47 & 1) == 0)
          {
            v46 = sub_33008(0, *(v46 + 2) + 1, 1, v46);
            *(v45 + 8 * v39) = v46;
          }

          v49 = *(v46 + 2);
          v48 = *(v46 + 3);
          if (v49 >= v48 >> 1)
          {
            v46 = sub_33008((v48 > 1), v49 + 1, 1, v46);
            *(v45 + 8 * v150) = v46;
          }

          *(v46 + 2) = v49 + 1;
          *&v46[8 * v49 + 32] = v154;
          v152 = sub_CC28C;
          goto LABEL_15;
        }
      }

      v29 = v23;
    }

    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v23 >= v28)
      {
        v2 = v161;
        sub_85554(v161);

        v1 = v11;
        v0 = v167;
        v10 = v156;
        v5 = v159;
        goto LABEL_6;
      }

      v27 = *(v24 + 8 * v23);
      ++v29;
      if (v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_127;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 8 * v11);
    ++v1;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v51 = v0[313];
  v52 = v0[310];

  v157 = sub_12DA8C(_swiftEmptyArrayStorage);

  v54 = sub_43158(v53);
  v55 = v163;
  v56 = *(v163 + 64);
  v174 = v54;
  v57 = -1;
  v58 = -1 << *(v163 + 32);
  if (-v58 < 64)
  {
    v57 = ~(-1 << -v58);
  }

  v59 = v57 & v56;
  v60 = (63 - v58) >> 6;

  v61 = 0;
  v62 = 0;
LABEL_42:
  if (v59)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_128;
    }

    if (v63 >= v60)
    {
      break;
    }

    v59 = *(v163 + 64 + 8 * v63);
    ++v62;
    if (v59)
    {
      v62 = v63;
LABEL_47:
      v64 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v65 = v64 | (v62 << 6);
      v66 = *(*(v55 + 56) + 8 * v65);
      if (*(v66 + 16) >= *(v167 + 2456))
      {
        v67 = *(v167 + 2480);
        v68 = *(v167 + 2464);
        v69 = *(v167 + 2440);
        v70 = *(*(v55 + 48) + 8 * v65);
        v71 = *(*(v55 + 56) + 8 * v65);

        sub_FD2CC(v67, v66, __dst, v68);
        v72 = __dst[0];
        if (LOBYTE(__dst[0]) == 2)
        {

          goto LABEL_42;
        }

        sub_41C08(v61);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        *&__dst[0] = v157;
        v169 = v72 & 1;
        v75 = sub_3A9D8(v72 & 1);
        v76 = v157[2];
        v77 = (v74 & 1) == 0;
        result = v76 + v77;
        if (__OFADD__(v76, v77))
        {
          goto LABEL_138;
        }

        v78 = v74;
        if (v157[3] < result)
        {
          sub_17D810(result, v73);
          v157 = *&__dst[0];
          result = sub_3A9D8(v169);
          if ((v78 & 1) != (v79 & 1))
          {
            goto LABEL_131;
          }

          v75 = result;
          if (v78)
          {
            goto LABEL_59;
          }

LABEL_57:
          v157[(v75 >> 6) + 8] |= 1 << v75;
          *(v157[6] + v75) = v169;
          *(v157[7] + 8 * v75) = _swiftEmptyArrayStorage;
          v80 = v157[2];
          v81 = __OFADD__(v80, 1);
          v82 = v80 + 1;
          if (v81)
          {
            goto LABEL_139;
          }

          v157[2] = v82;
          goto LABEL_59;
        }

        if (v73)
        {
          if ((v74 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v92 = v75;
          result = sub_1854BC();
          v75 = v92;
          v157 = *&__dst[0];
          if ((v78 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

LABEL_59:
        v83 = v157[7];
        v84 = v75;
        v85 = *(v83 + 8 * v75);
        v86 = swift_isUniquelyReferenced_nonNull_native();
        *(v83 + 8 * v84) = v85;
        if ((v86 & 1) == 0)
        {
          v85 = sub_33008(0, *(v85 + 2) + 1, 1, v85);
          *(v83 + 8 * v84) = v85;
        }

        v88 = *(v85 + 2);
        v87 = *(v85 + 3);
        if (v88 >= v87 >> 1)
        {
          v85 = sub_33008((v87 > 1), v88 + 1, 1, v85);
          *(v83 + 8 * v84) = v85;
        }

        *(v85 + 2) = v88 + 1;
        *&v85[8 * v88 + 32] = v70;
        v89 = *(v66 + 16);
        if (v89)
        {
          v90 = (v66 + 32);
          do
          {
            v91 = *v90++;
            sub_E000C(v91);
            --v89;
          }

          while (v89);
        }

        v61 = sub_CC28C;
        v55 = v163;
        goto LABEL_42;
      }

      goto LABEL_42;
    }
  }

  v93 = v174;
  v94 = *(v174 + 16);
  v148 = v61;
  v151 = v174;
  if (!v94)
  {
    v100 = __src;
    v97 = v167;
    v101 = v157;
    goto LABEL_81;
  }

  v95 = sub_3503C(v94, 0);
  v96 = sub_3F09C(__dst, v95 + 4, v94, v93);

  result = sub_417B8();
  if (v96 != v94)
  {
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v97 = v167;
  v98 = *(v167 + 2440);
  sub_FD2CC(*(v167 + 2480), v95, __dst, *(v167 + 2464));

  v99 = __dst[0];
  v100 = __src;
  if (LOBYTE(__dst[0]) != 2)
  {
    v101 = v157;
    v55 = v163;
    if (v157[2])
    {

      sub_3A9D8(v99 & 1);
      v103 = v102;

      if (v103)
      {
        goto LABEL_81;
      }
    }

    v104 = swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = v157;
    sub_53F24(&off_20EAC0, v99 & 1, v104);
    v101 = *&__dst[0];
    v105 = *(v151 + 16);
    if (!v105)
    {
      v106 = _swiftEmptyArrayStorage;
      goto LABEL_80;
    }

    v158 = *&__dst[0];
    v106 = sub_3503C(v105, 0);
    v107 = sub_3F09C(__dst, v106 + 4, v105, v151);

    result = sub_417B8();
    if (v107 == v105)
    {
      v100 = __src;
      v97 = v167;
      v55 = v163;
      v101 = v158;
LABEL_80:
      v108 = swift_isUniquelyReferenced_nonNull_native();
      *&__dst[0] = v55;
      sub_53E00(v106, 0, v108);
      v55 = *&__dst[0];
      goto LABEL_81;
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    return result;
  }

  v55 = v163;
  v101 = v157;
LABEL_81:
  v109 = v97[304];
  v162 = sub_FD688(v101, v55, v97[310], v97[306]);
  v110 = sub_12D970(_swiftEmptyArrayStorage);
  *&__dst[0] = _swiftEmptyArrayStorage;
  v111 = -1;
  v112 = -1 << *(v109 + 32);
  if (-v112 < 64)
  {
    v111 = ~(-1 << -v112);
  }

  v113 = v111 & *(v109 + 64);
  v114 = (63 - v112) >> 6;

  v115 = 0;
  if (v113)
  {
    while (1)
    {
      v116 = v97[304];
LABEL_89:
      v118 = __clz(__rbit64(v113));
      v113 &= v113 - 1;
      v119 = *(*(v116 + 56) + ((v115 << 9) | (8 * v118)));

      sub_5EF0C(v120);
      if (!v113)
      {
        goto LABEL_85;
      }
    }
  }

  while (1)
  {
LABEL_85:
    v117 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      goto LABEL_129;
    }

    v116 = v97[304];
    if (v117 >= v114)
    {
      break;
    }

    v113 = *(v116 + 8 * v117 + 64);
    ++v115;
    if (v113)
    {
      v115 = v117;
      goto LABEL_89;
    }
  }

  v121 = *&__dst[0];
  v122 = -1;
  v123 = -1 << *(v116 + 32);
  if (-v123 < 64)
  {
    v122 = ~(-1 << -v123);
  }

  v124 = v122 & *(v116 + 64);
  v155 = (63 - v123) >> 6;
  v170 = *&__dst[0] + 32;

  v125 = 0;
  v126 = v110;
  while (v124)
  {
    v129 = v97[304];
LABEL_102:
    v131 = *(*(v129 + 48) + (__clz(__rbit64(v124)) | (v125 << 6)));
    v165 = v131;
    if (v162 && *(v162 + 16))
    {

      v132 = sub_3A9D8(v131);
      if (v133)
      {
        v134 = *(*(v162 + 56) + 8 * v132);

        v135 = *(v121 + 16);
        if (v135)
        {
          goto LABEL_109;
        }

        goto LABEL_106;
      }
    }

    v134 = 0;
    v135 = *(v121 + 16);
    if (v135)
    {
LABEL_109:
      v160 = v126;
      v137 = 0;
      v136 = _swiftEmptyArrayStorage;
      while (v137 < *(v121 + 16))
      {
        memcpy(v100, (v170 + 568 * v137++), 0x231uLL);
        if (v134)
        {
          v138 = *(v134 + 16);
          v139 = 32;
          while (v138)
          {
            v140 = *(v134 + v139);
            v139 += 8;
            --v138;
            if (v140 == *v100)
            {
              goto LABEL_116;
            }
          }

          if (v137 == v135)
          {
LABEL_94:
            v126 = v160;
            goto LABEL_95;
          }
        }

        else
        {
LABEL_116:
          sub_4299C(v100, (v97 + 149));
          v141 = swift_isUniquelyReferenced_nonNull_native();
          *&__dst[0] = v136;
          if ((v141 & 1) == 0)
          {
            sub_3749C(0, v136[2] + 1, 1);
            v136 = *&__dst[0];
          }

          v143 = v136[2];
          v142 = v136[3];
          if (v143 >= v142 >> 1)
          {
            sub_3749C((v142 > 1), v143 + 1, 1);
            v136 = *&__dst[0];
          }

          v136[2] = v143 + 1;
          v144 = &v136[71 * v143 + 4];
          v100 = __src;
          memcpy(v144, __src, 0x231uLL);
          v97 = v167;
          if (v137 == v135)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_126;
    }

LABEL_106:
    v136 = _swiftEmptyArrayStorage;
LABEL_95:
    v124 &= v124 - 1;

    v127 = sub_40D04(v136);

    v128 = swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = v126;
    sub_53DC0(v127, v165, v128);
    v126 = *&__dst[0];
  }

  while (1)
  {
    v130 = v125 + 1;
    if (__OFADD__(v125, 1))
    {
      break;
    }

    if (v130 >= v155)
    {
      v145 = v97[310];
      v146 = v97[304];

      sub_41C08(v152);
      sub_41C08(v148);
      v147 = v97[1];

      return v147(v126);
    }

    v129 = v97[304];
    v124 = *(v129 + 8 * v130 + 64);
    ++v125;
    if (v124)
    {
      v125 = v130;
      goto LABEL_102;
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:

  return sub_1B5784();
}

uint64_t sub_FCFA0()
{
  v1 = v0[310];

  v2 = v0[1];
  v3 = v0[314];

  return v2();
}

void *sub_FD004()
{
  v1 = *(v0 + 512);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 512);

  v7 = 0;
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v9 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
        v10 = *(*(v1 + 48) + v9);
        v11 = *(*(v1 + 56) + v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = sub_43124(v10);
        v15 = *(&_swiftEmptyDictionarySingleton + 2);
        v16 = (v14 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_32;
        }

        v19 = v14;
        if (*(&_swiftEmptyDictionarySingleton + 3) < v18)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        v21 = v13;
        sub_18535C();
        v13 = v21;
        if (v19)
        {
LABEL_16:
          *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v13) = v11;
          goto LABEL_20;
        }

LABEL_18:
        *(&_swiftEmptyDictionarySingleton + (v13 >> 6) + 8) |= 1 << v13;
        *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v13) = v10;
        *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v13) = v11;
        v22 = *(&_swiftEmptyDictionarySingleton + 2);
        v17 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v17)
        {
          goto LABEL_34;
        }

        *(&_swiftEmptyDictionarySingleton + 2) = v23;
LABEL_20:
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v25 = sub_43124(v11);
        v27 = *(&_swiftEmptyDictionarySingleton + 2);
        v28 = (v26 & 1) == 0;
        v17 = __OFADD__(v27, v28);
        v29 = v27 + v28;
        if (v17)
        {
          goto LABEL_33;
        }

        v30 = v26;
        if (*(&_swiftEmptyDictionarySingleton + 3) >= v29)
        {
          if ((v24 & 1) == 0)
          {
            v34 = v25;
            sub_18535C();
            v25 = v34;
          }
        }

        else
        {
          sub_17D544(v29, v24);
          v25 = sub_43124(v11);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_36;
          }
        }

        v4 &= v4 - 1;
        if (v30)
        {
          *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v25) = v11;
          v7 = v8;
          if (!v4)
          {
            goto LABEL_7;
          }
        }

        else
        {
          *(&_swiftEmptyDictionarySingleton + (v25 >> 6) + 8) |= 1 << v25;
          *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v25) = v11;
          *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v25) = v11;
          v32 = *(&_swiftEmptyDictionarySingleton + 2);
          v17 = __OFADD__(v32, 1);
          v33 = v32 + 1;
          if (v17)
          {
            goto LABEL_35;
          }

          *(&_swiftEmptyDictionarySingleton + 2) = v33;
          v7 = v8;
          if (!v4)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v8 = v7;
      }

      sub_17D544(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_43124(v10);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_36;
      }

LABEL_15:
      if (v19)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }
  }

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
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_FD2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v7 = sub_12DAB4(_swiftEmptyArrayStorage);
  v8 = *(a2 + 16);
  if (!v8)
  {
LABEL_18:
    v29 = 1 << *(v7 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v7 + 64);
    if (v31)
    {
      v32 = 0;
      v33 = __clz(__rbit64(v31));
      v34 = (v31 - 1) & v31;
      v35 = (v29 + 63) >> 6;
LABEL_26:
      v39 = *(v7 + 48);
      v40 = *(v7 + 56);
      v41 = *(v39 + v33);
      v42 = *(v40 + 8 * v33);
      if (!v34)
      {
        goto LABEL_28;
      }

      do
      {
        v43 = v32;
LABEL_32:
        v44 = __clz(__rbit64(v34)) | (v43 << 6);
        v45 = *(v39 + v44);
        v34 &= v34 - 1;
        v46 = *(v40 + 8 * v44);
        if (v42 < v46)
        {
          v41 = v45;
        }

        if (v42 <= v46)
        {
          v42 = v46;
        }
      }

      while (v34);
      while (1)
      {
LABEL_28:
        v43 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v43 >= v35)
        {
          break;
        }

        v34 = *(v7 + 64 + 8 * v43);
        ++v32;
        if (v34)
        {
          v32 = v43;
          goto LABEL_32;
        }
      }

      if (v42 / v8 < a4)
      {
        goto LABEL_41;
      }

      v48 = v41 & 1;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v35 = (v29 + 63) >> 6;
      while (v35 - 1 != v37)
      {
        v32 = v37 + 1;
        v38 = *(v7 + 8 * v37 + 72);
        v36 -= 64;
        ++v37;
        if (v38)
        {
          v34 = (v38 - 1) & v38;
          v33 = __clz(__rbit64(v38)) - v36;
          goto LABEL_26;
        }
      }

LABEL_41:
      v48 = 2;
    }

    *a3 = v48;
    return result;
  }

  v9 = (a2 + 32);
  v10 = *(a2 + 16);
  while (*(a1 + 16))
  {
    v11 = sub_43124(*v9);
    if ((v12 & 1) == 0)
    {
      goto LABEL_45;
    }

    v13 = *(*(a1 + 56) + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v7;
    v15 = sub_3A9D8(v13);
    v17 = *(v7 + 16);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_46;
    }

    v21 = v16;
    if (*(v7 + 24) >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = v15;
        sub_185370();
        v15 = v28;
        v7 = v50;
        if (v21)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else
    {
      sub_17D558(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_3A9D8(v13);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_49;
      }
    }

    if (v21)
    {
      goto LABEL_13;
    }

LABEL_11:
    *(v7 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(*(v7 + 48) + v15) = v13;
    *(*(v7 + 56) + 8 * v15) = 0;
    v23 = *(v7 + 16);
    v19 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v19)
    {
      goto LABEL_48;
    }

    *(v7 + 16) = v24;
LABEL_13:
    v25 = *(v7 + 56);
    v26 = *(v25 + 8 * v15);
    v19 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v19)
    {
      goto LABEL_47;
    }

    *(v25 + 8 * v15) = v27;
    ++v9;
    if (!--v10)
    {
      goto LABEL_18;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_FD5E0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return sub_FBE10(a1, a2);
}

uint64_t sub_FD688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_12DA8C(_swiftEmptyArrayStorage);
  v77 = _swiftEmptySetSingleton;
  v65 = a1 + 64;
  v66 = a1;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v64 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
LABEL_6:
  while (2)
  {
    if (v10)
    {
LABEL_5:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(*(v66 + 56) + 8 * v14);
      v16 = *(v15 + 16);
      if (!v16)
      {
        continue;
      }

      v63 = v15 + 32;
      v73 = *(*(v66 + 48) + v14);
      if (*(*(v66 + 48) + v14))
      {
        v18 = 0x6F6F626F69647561;
      }

      else
      {
        v18 = 0x6B6F6F6265;
      }

      v19 = 0xE90000000000006BLL;
      if (!v73)
      {
        v19 = 0xE500000000000000;
      }

      v70 = v19;
      v71 = v18;

      v20 = 0;
      v69 = a3;
      v61 = v15;
      v62 = a2;
      v67 = v16;
      while (1)
      {
        v68 = v20;
        if (v20 >= *(v15 + 16))
        {
          goto LABEL_77;
        }

        if (*(a2 + 16))
        {
          v21 = sub_43124(*(v63 + 8 * v20));
          if (v22)
          {
            v23 = *(*(a2 + 56) + 8 * v21);

            v24 = v23[2];
            if (v24)
            {
              break;
            }

            goto LABEL_23;
          }
        }

        v23 = _swiftEmptyArrayStorage;
        v24 = _swiftEmptyArrayStorage[2];
        if (v24)
        {
          break;
        }

LABEL_23:

LABEL_18:
        v20 = v68 + 1;
        if (v68 + 1 == v67)
        {

          goto LABEL_6;
        }
      }

      v25 = 0;
      v75 = v23 + 4;
      v72 = v23;
      v74 = v24;
      while (1)
      {
        if (v25 >= v23[2])
        {
          __break(1u);
          goto LABEL_74;
        }

        if (*(a3 + 16))
        {
          v26 = v75[v25];
          v27 = sub_43124(v26);
          if (v28)
          {
            break;
          }
        }

LABEL_28:
        if (++v25 == v24)
        {

          v15 = v61;
          a2 = v62;
          goto LABEL_18;
        }
      }

      if (*(*(a3 + 56) + v27))
      {
        v29 = 0x6F6F626F69647561;
      }

      else
      {
        v29 = 0x6B6F6F6265;
      }

      if (*(*(a3 + 56) + v27))
      {
        v30 = 0xE90000000000006BLL;
      }

      else
      {
        v30 = 0xE500000000000000;
      }

      if (v71 == v29 && v70 == v30)
      {
      }

      else
      {
        v32 = sub_1B5604();
        v23 = v72;

        if ((v32 & 1) == 0)
        {
LABEL_27:
          v24 = v74;
          goto LABEL_28;
        }
      }

      v33 = v77;
      v24 = v74;
      if (v77[2])
      {
        v34 = v77[5];
        v35 = sub_1B57E4();
        v36 = -1 << *(v33 + 32);
        v37 = v35 & ~v36;
        if ((*(v33 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
        {
          v38 = ~v36;
          while (*(v33[6] + 8 * v37) != v26)
          {
            v37 = (v37 + 1) & v38;
            if (((*(v33 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_28;
        }
      }

LABEL_50:
      sub_41C08(v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v7;
      v41 = sub_3A9D8(v73);
      v42 = v7[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_76;
      }

      v45 = v40;
      if (v7[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v40)
          {
LABEL_58:
            v48 = v7[7];
            v49 = *(v48 + 8 * v41);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            *(v48 + 8 * v41) = v49;
            v51 = v7;
            if ((v50 & 1) == 0)
            {
              v49 = sub_33008(0, *(v49 + 2) + 1, 1, v49);
              *(v48 + 8 * v41) = v49;
            }

            v53 = *(v49 + 2);
            v52 = *(v49 + 3);
            if (v53 >= v52 >> 1)
            {
              v49 = sub_33008((v52 > 1), v53 + 1, 1, v49);
              *(v48 + 8 * v41) = v49;
            }

            v23 = v72;
            *(v49 + 2) = v53 + 1;
            *&v49[8 * v53 + 32] = v26;
            sub_111CE0(&v76, v26);
            v11 = sub_CC28C;
            v7 = v51;
            a3 = v69;
            goto LABEL_27;
          }
        }

        else
        {
          sub_1854BC();
          v7 = v76;
          if (v45)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        sub_17D810(v44, isUniquelyReferenced_nonNull_native);
        v7 = v76;
        v46 = sub_3A9D8(v73);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_78;
        }

        v41 = v46;
        if (v45)
        {
          goto LABEL_58;
        }
      }

      sub_15C8DC(v41, v73, _swiftEmptyArrayStorage, v7);
      goto LABEL_58;
    }

    break;
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v64)
    {

      if (v7[2] && (v54 = sub_3A9D8(0), (v55 & 1) != 0) && *(*(v7[7] + 8 * v54) + 16) >= a4 && v7[2] && (v56 = sub_3A9D8(1), (v57 & 1) != 0) && *(*(v7[7] + 8 * v56) + 16) >= a4)
      {
LABEL_74:

        v58 = v7;
      }

      else
      {
        v58 = 0;
      }

      sub_41C08(v11);
      return v58;
    }

    v10 = *(v65 + 8 * v17);
    ++v12;
    if (v10)
    {
      v12 = v17;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_FDC10(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = sub_1B4D14();
  if (!v26)
  {
    return sub_1B4B24();
  }

  v48 = v26;
  v52 = sub_1B51D4();
  v39 = sub_1B51E4();
  sub_1B5194(v48);
  result = sub_1B4D04();
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
      v29 = sub_1B4D44();
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
      sub_1B51C4();
      result = sub_1B4D24();
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

uint64_t AttributeAffinityResult.inferredFromSeedBooks.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributeAffinityResult() + 20);
  v4 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AttributeAffinityResult()
{
  result = qword_22C448;
  if (!qword_22C448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributeAffinityResult.init(affinity:inferredFromSeedBooks:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for AttributeAffinityResult() + 20);
  v6 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t AttributeScorerType.score<A>(attribute:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a7;
  v8[6] = a1;
  v8[7] = a2;
  return (*(a6 + 8))(sub_FE32C, v8, a3, a5, a7, a4, a6);
}

void *sub_FE204(void *__src, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy(__dst, __src, 0x231uLL);
  v10 = sub_FEA58(a5, a5);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = *(*(a5 - 8) + 72);
  v14 = *(*(a5 - 8) + 80);
  swift_allocObject();
  v15 = sub_1B4AF4();
  a2(__dst);
  v16 = sub_77558(v15);
  if (sub_1B4B84())
  {
    v17 = sub_FED9C(v16, a5, a7);
  }

  else
  {
    v17 = _swiftEmptySetSingleton;
  }

  return v17;
}

uint64_t sub_FE350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_FE3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_FE470()
{
  sub_FE4EC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_FE4EC()
{
  if (!qword_22C458)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    sub_42094(&unk_22C460, &qword_22AA48, &qword_1CD280);
    v0 = sub_1B43B4();
    if (!v1)
    {
      atomic_store(v0, &qword_22C458);
    }
  }
}

uint64_t sub_FE5A4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v27 = a2;
  v3 = sub_2B0C(&qword_22C528, qword_1C6EA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  v26 = a1;
  sub_1B4364();
  (*(v4 + 16))(v8, v10, v3);
  sub_42094(&qword_22C530, &qword_22C528, qword_1C6EA8);
  result = sub_1B4974();
  v13 = *(v28 + 16);
  v14 = 0.0;
  if (v13 == v29)
  {
    goto LABEL_14;
  }

  if (v13 <= v29)
  {
    __break(1u);
  }

  else
  {
    v15 = v13 - v29;
    if (v13 >= v29)
    {
      v16 = v13 - v29;
    }

    else
    {
      v16 = 0;
    }

    if (v16 > v13 + ~v29)
    {
      if (v15 > 3)
      {
        v17 = v29 + (v15 & 0xFFFFFFFFFFFFFFFCLL);
        v18 = v28 + 8 * v29 + 48;
        v19 = v15 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v20 = *v18;
          v14 = v14 + *(v18 - 16) + *(v18 - 8) + *v18 + *(v18 + 8);
          v18 += 32;
          v19 -= 4;
        }

        while (v19);
        if (v15 == (v15 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v17 = v29;
      }

      v21 = v13 - v17;
      v22 = (v28 + 8 * v17 + 32);
      do
      {
        v23 = *v22++;
        v14 = v14 + v23;
        --v21;
      }

      while (v21);
LABEL_14:
      (*(v4 + 8))(v10, v3);

      v24 = type metadata accessor for AttributeAffinityResult();
      v25 = v27;
      result = (*(*(v11 - 8) + 16))(v27 + *(v24 + 20), v26, v11);
      *v25 = v14;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_FE864@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 144);
  v17 = *(result + 128);
  v18 = v2;
  v19 = *(result + 160);
  v3 = *(result + 112);
  v15 = *(result + 96);
  v16 = v3;
  v4 = v18;
  if (v18 >> 1 == 0xFFFFFFFF)
  {
    __break(1u);
  }

  else
  {
    v5 = v15;
    v6 = v16;
    v7 = v17;
    if ((v18 >> 62) > 2)
    {
      v9 = v15;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BCA80;
      *(v9 + 32) = v5;
      *(v9 + 48) = v6;
      *(v9 + 64) = v7;
      *(v9 + 80) = v4 & 1;
    }

    sub_42CD4(&v15, v14);
    v10 = Array<A>.affinity.getter(v9);
    v12 = v11;

    v13 = *&v10;
    if (v12)
    {
      v13 = 0.0;
    }

    *a2 = v13;
  }

  return result;
}

double sub_FE984@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = fabs(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_FE994@<X0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v5 = *a1 / a3;
  v6 = *(type metadata accessor for AttributeAffinityResult() + 20);
  v7 = sub_2B0C(&qword_22C348, &unk_1C6DC0);
  result = (*(*(v7 - 8) + 16))(a2 + v6, a1 + v6, v7);
  *a2 = v5;
  return result;
}

uint64_t sub_FEA58(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_2B0C(&qword_22B2A8, &qword_1C3900);
  }

  else
  {

    return sub_1B55A4();
  }
}

uint64_t sub_FEACC()
{
  sub_2B0C(&qword_22AA48, &qword_1CD280);
  sub_42094(&qword_22B470, &qword_22AA48, &qword_1CD280);
  Sequence.grouped<A>(by:)();
  sub_2B0C(&qword_22C348, &unk_1C6DC0);
  type metadata accessor for AttributeAffinityResult();
  v0 = sub_1B4714();

  v1 = sub_1B46F4();

  WitnessTable = swift_getWitnessTable();
  v4 = sub_FDC10(sub_FE984, 0, v1, &type metadata for Double, &type metadata for Never, WitnessTable, &protocol witness table for Never, v3);

  v5 = *(v4 + 16);
  if (!v5)
  {

    return v0;
  }

  if (v5 <= 3)
  {
    v6 = 0;
    v7 = 0.0;
LABEL_8:
    v11 = v5 - v6;
    v12 = (v4 + 8 * v6 + 32);
    do
    {
      v13 = *v12++;
      v7 = v7 + v13;
      --v11;
    }

    while (v11);
    goto LABEL_10;
  }

  v6 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = v4 + 48;
  v7 = 0.0;
  v9 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v10 = *v8;
    v7 = v7 + *(v8 - 16) + *(v8 - 8) + *v8 + *(v8 + 8);
    v8 += 32;
    v9 -= 4;
  }

  while (v9);
  if (v5 != v6)
  {
    goto LABEL_8;
  }

LABEL_10:

  if (v7 != 0.0)
  {
    __chkstk_darwin(v14);
    v15 = sub_1B4714();

    return v15;
  }

  return v0;
}

uint64_t sub_FED9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v53 = &v41 - v12;
  v42 = v13;
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  if (sub_1B4B54())
  {
    sub_1B5064();
    v16 = sub_1B5054();
  }

  else
  {
    v16 = _swiftEmptySetSingleton;
  }

  v46 = sub_1B4B84();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 7;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_1B4B44();
    sub_1B4B04();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1B50A4();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = v16[5];
    v23 = sub_1B4744();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = v52[v26 >> 6];
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (v24[6] + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_1B4784();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = v52[v26 >> 6];
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    v52[v27] = v29 | v28;
    v37 = v24[6] + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = v24[2];
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    v24[2] = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of GenreMetadataServiceType.fetchMetadataFor(genreIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_441B4;

  return v11(a1, a2, a3);
}

uint64_t sub_FF280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = *(a1 + 16);
  sub_3747C(0, v1, 0);
  v2 = a1 + 56;
  v3 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v5 = v26;
  v6 = a1;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v6 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    v11 = *(v6 + 36);
    if (*(*(v6 + 48) + result))
    {
      v12 = 0x6F6F626F69647561;
    }

    else
    {
      v12 = 0x6B6F6F6265;
    }

    if (*(*(v6 + 48) + result))
    {
      v13 = 0xE90000000000006BLL;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      v24 = *(v6 + 36);
      v25 = result;
      sub_3747C((v14 > 1), v15 + 1, 1);
      v5 = v26;
      v6 = a1;
      v11 = v24;
      result = v25;
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v12;
    v16[5] = v13;
    v8 = 1 << *(v6 + 32);
    if (result >= v8)
    {
      goto LABEL_28;
    }

    v17 = *(v2 + 8 * v9);
    if ((v17 & v10) == 0)
    {
      goto LABEL_29;
    }

    if (v11 != *(v6 + 36))
    {
      goto LABEL_30;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_42FF0(result, v11, 0);
          v5 = v26;
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_42FF0(result, v11, 0);
      v5 = v26;
      v6 = a1;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_FF550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v22 - v10;
  sub_43050(a1, v22 - v10, &qword_2296C0, &qword_1C3800);
  v12 = sub_1B4C54();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_42F48(v11, &qword_2296C0, &qword_1C3800);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1B4BC4();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4C44();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_2B0C(&qword_22B498, &qword_1C3A60);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t CollectionRecommendation.collectionRecommendationType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionRecommendation(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = 1;
      goto LABEL_11;
    case 2u:
      v11 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v15, &v7[*(v11 + 48)], 0x231uLL);
      sub_2601C(v15);
      v12 = *&v7[*(v11 + 64)];

      v9 = 2;
      goto LABEL_16;
    case 3u:
      v9 = 3;
      goto LABEL_16;
    case 4u:
      v9 = 4;
      goto LABEL_16;
    case 5u:
      v9 = 5;
      goto LABEL_16;
    case 6u:
      v9 = 6;
      goto LABEL_16;
    case 7u:
      v9 = 7;
      goto LABEL_16;
    case 8u:
      v9 = 8;
LABEL_16:
      *a1 = v9;
      v13 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      result = (*(*(v13 - 8) + 8))(v7, v13);
      break;
    case 9u:
      result = sub_5DC0C(v7);
      *a1 = 9;
      break;
    case 0xAu:
      result = sub_5DC0C(v7);
      *a1 = 10;
      break;
    case 0xBu:
      result = sub_5DC0C(v7);
      *a1 = 11;
      break;
    case 0xCu:
      v10 = 12;
LABEL_11:
      *a1 = v10;
      result = sub_5DC0C(v7);
      break;
    default:
      result = sub_5DC0C(v7);
      *a1 = 0;
      break;
  }

  return result;
}

uint64_t sub_FF9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionRecommendation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_FFA1C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a2 + 16);
  if (a3)
  {
    if (v5 && (v6 = *(a2 + 40), v7 = sub_1B57E4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
    {
      v10 = ~v8;
      do
      {
        v11 = *(*(a2 + 48) + 8 * v9);
        result = v11 != a1;
        if (v11 == a1)
        {
          break;
        }

        v9 = (v9 + 1) & v10;
      }

      while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    else
    {
      return 1;
    }
  }

  else if (v5 && (v13 = *(a2 + 40), v14 = sub_1B57E4(), v15 = -1 << *(a2 + 32), v16 = v14 & ~v15, ((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
  {
    v17 = ~v15;
    do
    {
      v18 = *(*(a2 + 48) + 8 * v16);
      result = v18 == a1;
      if (v18 == a1)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
    }

    while (((*(a2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t CollectionRecommendation.targetGenreID.getter()
{
  v1 = type metadata accessor for CollectionRecommendation(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v5 = *&v4[*(sub_2B0C(&qword_229740, &qword_1C6EE0) + 48)];
    v6 = sub_2B0C(&qword_228F38, &qword_1BCB50);
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  else
  {
    sub_5DC0C(v4);
    return 0;
  }

  return v5;
}

uint64_t CollectionRecommendationType.rawValue.getter()
{
  result = 1802465122;
  switch(*v0)
  {
    case 1:
      result = 0x736B6F6F62;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x417942736B6F6F62;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x476E49736B6F6F62;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x736569726573;
      break;
    case 0xA:
      v2 = 1954047342;
      goto LABEL_14;
    case 0xB:
      v2 = 1701998445;
LABEL_14:
      result = v2 | 0x65536E4900000000;
      break;
    case 0xC:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CollectionRecommendationRequest.storeInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t CollectionRecommendationRequest.clusteringOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
}

__n128 CollectionRecommendationRequest.init(userInfo:storeInfo:allGenresAllowed:allowedSales:explicitAllowed:excludedStoreIDs:featuresPreventingRecommendation:clusteringOptions:optionsByCollectionRecommendationType:overrideMediaTypeMethod:overrideBookCandidateLimit:overrideBookCandidateLimitPerSeedBook:overrideSeedBasedRecommendationSource:overrideSource:)@<Q0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, char a13, uint64_t a14, char a15, unsigned __int8 *a16, char *a17)
{
  *a9 = *a1;
  v17 = *(a8 + 16);
  *(a9 + 72) = *a8;
  v19 = *a2;
  v18 = a2[1];
  v20 = *a4;
  v21 = *(a8 + 48);
  v22 = *a11;
  v23 = *a16;
  v24 = *a17;
  if (v23 == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v23 & 1;
  }

  *(a9 + 16) = v19;
  *(a9 + 24) = v18;
  *(a9 + 32) = a3;
  *(a9 + 40) = v20;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 88) = v17;
  result = *(a8 + 32);
  *(a9 + 104) = result;
  *(a9 + 120) = v21;
  *(a9 + 128) = a10;
  *(a9 + 136) = v22;
  *(a9 + 144) = a12;
  *(a9 + 152) = a13 & 1;
  *(a9 + 160) = a14;
  *(a9 + 168) = a15 & 1;
  *(a9 + 169) = v25;
  *(a9 + 170) = v24;
  return result;
}

unint64_t sub_FFF60(char a1)
{
  result = 0x6F666E4972657375;
  switch(a1)
  {
    case 1:
      result = 0x666E4965726F7473;
      break;
    case 2:
    case 5:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x536465776F6C6C61;
      break;
    case 4:
      result = 0x746963696C707865;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000025;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD000000000000025;
      break;
    case 13:
      result = 0x656469727265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11ADE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100178(uint64_t a1)
{
  v2 = sub_10089C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B4(uint64_t a1)
{
  v2 = sub_10089C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C538, &unk_1C6EE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v41 = v1[2];
  v42 = v10;
  v51 = *(v1 + 32);
  v40 = v1[5];
  v39 = *(v1 + 48);
  v11 = v1[7];
  v37 = v1[8];
  v38 = v11;
  v12 = v1[10];
  v30 = v1[9];
  v31 = v12;
  v13 = v1[12];
  v32 = v1[11];
  v33 = v13;
  v14 = v1[14];
  v34 = v1[13];
  v35 = v14;
  v15 = v1[16];
  v36 = v1[15];
  v29 = v15;
  v28 = *(v1 + 136);
  v26 = v1[18];
  v27 = *(v1 + 152);
  v24 = v1[20];
  v25 = *(v1 + 168);
  v23 = *(v1 + 169);
  v22 = *(v1 + 170);
  v16 = a1[4];
  sub_2698(a1, a1[3]);
  sub_10089C();

  sub_1B5884();
  v44 = v8;
  v45 = v9;
  v17 = v3;
  v52 = 0;
  sub_1008F0();
  v18 = v43;
  sub_1B5544();
  if (v18)
  {

    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v19 = v40;
    v20 = v38;

    v44 = v41;
    v45 = v42;
    v52 = 1;
    sub_100944();

    sub_1B5544();

    LOBYTE(v44) = 2;
    sub_1B5504();
    v43 = v4;
    v44 = v19;
    v52 = 3;
    sub_100998();
    sub_1B5544();
    LOBYTE(v44) = 4;
    sub_1B5504();
    v44 = v20;
    v52 = 5;
    sub_2B0C(&qword_2292C8, &unk_1BCB00);
    sub_8E804(&qword_22A8C8);
    sub_1B5544();
    v44 = v37;
    v52 = 6;
    sub_2B0C(&qword_22C560, &qword_1C6EF8);
    sub_1009EC();
    sub_1B54B4();
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v52 = 7;
    sub_100AC4();

    sub_1B5544();

    v44 = v29;
    v52 = 8;
    sub_2B0C(&qword_22C580, &qword_1C6F00);
    sub_101798(&qword_22C588, sub_71620, sub_100B18);
    sub_1B5544();
    LOBYTE(v44) = v28;
    v52 = 9;
    sub_100B6C();
    sub_1B54B4();
    LOBYTE(v44) = 10;
    sub_1B54A4();
    LOBYTE(v44) = 11;
    sub_1B54A4();
    LOBYTE(v44) = v23;
    v52 = 12;
    sub_638F4();
    sub_1B54B4();
    LOBYTE(v44) = v22;
    v52 = 13;
    sub_100BC0();
    sub_1B54B4();
    return (*(v4 + 8))(0, v17);
  }
}

unint64_t sub_10089C()
{
  result = qword_22C540;
  if (!qword_22C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C540);
  }

  return result;
}

unint64_t sub_1008F0()
{
  result = qword_22C548;
  if (!qword_22C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C548);
  }

  return result;
}

unint64_t sub_100944()
{
  result = qword_22C550;
  if (!qword_22C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C550);
  }

  return result;
}

unint64_t sub_100998()
{
  result = qword_22C558;
  if (!qword_22C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C558);
  }

  return result;
}

unint64_t sub_1009EC()
{
  result = qword_22C568;
  if (!qword_22C568)
  {
    sub_1CC1C(&qword_22C560, &qword_1C6EF8);
    sub_100A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C568);
  }

  return result;
}

unint64_t sub_100A70()
{
  result = qword_22C570;
  if (!qword_22C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C570);
  }

  return result;
}

unint64_t sub_100AC4()
{
  result = qword_22C578;
  if (!qword_22C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C578);
  }

  return result;
}

unint64_t sub_100B18()
{
  result = qword_22C590;
  if (!qword_22C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C590);
  }

  return result;
}

unint64_t sub_100B6C()
{
  result = qword_22C598;
  if (!qword_22C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C598);
  }

  return result;
}

unint64_t sub_100BC0()
{
  result = qword_22C5A0;
  if (!qword_22C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5A0);
  }

  return result;
}

uint64_t CollectionRecommendationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v96 = sub_2B0C(&qword_22C5A8, &qword_1C6F08);
  v5 = *(v96 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v96);
  v8 = &v29 - v7;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_10089C();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v10 = v5;
  LOBYTE(v52) = 0;
  sub_101570();
  sub_1B5404();
  v11 = v62;
  v51 = v63;
  LOBYTE(v52) = 1;
  sub_1015C4();
  sub_1B5404();
  v42 = v11;
  v12 = v62;
  v49 = 0;
  v50 = v63;
  LOBYTE(v62) = 2;
  v40 = sub_1B53C4();
  v41 = v12;
  LOBYTE(v52) = 3;
  sub_101618();
  sub_1B5404();
  v13 = v62;
  LOBYTE(v62) = 4;
  v39 = sub_1B53C4();
  sub_2B0C(&qword_2292C8, &unk_1BCB00);
  LOBYTE(v52) = 5;
  sub_8E804(&qword_22A8F8);
  sub_1B5404();
  v48 = v62;
  sub_2B0C(&qword_22C560, &qword_1C6EF8);
  LOBYTE(v52) = 6;
  sub_10166C();
  sub_1B5374();
  v47 = v62;
  LOBYTE(v52) = 7;
  sub_101744();
  sub_1B5404();
  v37 = v63;
  v38 = v62;
  v45 = v64;
  v46 = v65;
  v36 = v66;
  v43 = v68;
  v44 = v67;
  sub_2B0C(&qword_22C580, &qword_1C6F00);
  LOBYTE(v52) = 8;
  sub_101798(&qword_22C5E0, sub_71328, sub_101828);
  sub_1B5404();
  v35 = v62;
  LOBYTE(v52) = 9;
  sub_10187C();
  sub_1B5374();
  LODWORD(v49) = v62;
  LOBYTE(v62) = 10;
  v14 = sub_1B5364();
  v92 = v15 & 1;
  LOBYTE(v62) = 11;
  v34 = sub_1B5364();
  v90 = v16 & 1;
  LOBYTE(v52) = 12;
  sub_63AB4();
  sub_1B5374();
  v33 = v62;
  v88 = 13;
  sub_1018D0();
  sub_1B5374();
  v40 &= 1u;
  v17 = v39 & 1;
  v31 = v39 & 1;
  (*(v10 + 8))(v8, v96);
  v39 = v89;
  v19 = v50;
  v18 = v51;
  *&v52 = v42;
  *(&v52 + 1) = v51;
  *&v53 = v41;
  *(&v53 + 1) = v50;
  LOBYTE(v54) = v40;
  *(&v54 + 1) = v13;
  LOBYTE(v55) = v17;
  v20 = v48;
  *(&v55 + 1) = v48;
  *&v56 = v47;
  *(&v56 + 1) = v38;
  *&v57 = v37;
  *(&v57 + 1) = v45;
  *&v58 = v46;
  *(&v58 + 1) = v36;
  *&v59 = v44;
  *(&v59 + 1) = v43;
  *&v60 = v35;
  BYTE8(v60) = v49;
  *(&v60 + 9) = *v93;
  HIDWORD(v60) = *&v93[3];
  v32 = v14;
  *&v61[0] = v14;
  LODWORD(v96) = v92;
  BYTE8(v61[0]) = v92;
  *(v61 + 9) = *v91;
  HIDWORD(v61[0]) = *&v91[3];
  *&v61[1] = v34;
  v30 = v90;
  BYTE8(v61[1]) = v90;
  LOBYTE(v14) = v33;
  BYTE9(v61[1]) = v33;
  BYTE10(v61[1]) = v89;
  v21 = v53;
  *a2 = v52;
  a2[1] = v21;
  v22 = v54;
  v23 = v55;
  v24 = v57;
  a2[4] = v56;
  a2[5] = v24;
  a2[2] = v22;
  a2[3] = v23;
  v25 = v58;
  v26 = v59;
  *(a2 + 155) = *(v61 + 11);
  v27 = v61[0];
  a2[8] = v60;
  a2[9] = v27;
  a2[6] = v25;
  a2[7] = v26;
  sub_101924(&v52, &v62);
  sub_2BF8(a1);
  v62 = v42;
  v63 = v18;
  v64 = v41;
  v65 = v19;
  LOBYTE(v66) = v40;
  *(&v66 + 1) = v95[0];
  HIDWORD(v66) = *(v95 + 3);
  v67 = v13;
  LOBYTE(v68) = v31;
  *(&v68 + 1) = *v94;
  HIDWORD(v68) = *&v94[3];
  v69 = v20;
  v70 = v47;
  v71 = v38;
  v72 = v37;
  v73 = v45;
  v74 = v46;
  v75 = v36;
  v76 = v44;
  v77 = v43;
  v78 = v35;
  v79 = v49;
  *v80 = *v93;
  *&v80[3] = *&v93[3];
  v81 = v32;
  v82 = v96;
  *v83 = *v91;
  *&v83[3] = *&v91[3];
  v84 = v34;
  v85 = v30;
  v86 = v14;
  v87 = v39;
  return sub_10195C(&v62);
}

unint64_t sub_101570()
{
  result = qword_22C5B0;
  if (!qword_22C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5B0);
  }

  return result;
}

unint64_t sub_1015C4()
{
  result = qword_22C5B8;
  if (!qword_22C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5B8);
  }

  return result;
}

unint64_t sub_101618()
{
  result = qword_22C5C0;
  if (!qword_22C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5C0);
  }

  return result;
}

unint64_t sub_10166C()
{
  result = qword_22C5C8;
  if (!qword_22C5C8)
  {
    sub_1CC1C(&qword_22C560, &qword_1C6EF8);
    sub_1016F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5C8);
  }

  return result;
}

unint64_t sub_1016F0()
{
  result = qword_22C5D0;
  if (!qword_22C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5D0);
  }

  return result;
}

unint64_t sub_101744()
{
  result = qword_22C5D8;
  if (!qword_22C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5D8);
  }

  return result;
}

uint64_t sub_101798(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22C580, &qword_1C6F00);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_101828()
{
  result = qword_22C5E8;
  if (!qword_22C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5E8);
  }

  return result;
}

unint64_t sub_10187C()
{
  result = qword_22C5F0;
  if (!qword_22C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5F0);
  }

  return result;
}

unint64_t sub_1018D0()
{
  result = qword_22C5F8;
  if (!qword_22C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22C5F8);
  }

  return result;
}

BooksPersonalization::CollectionRecommendationType_optional __swiftcall CollectionRecommendationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213350;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 13;
  if (v5 < 0xD)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_101A24@<X0>(uint64_t *a1@<X8>)
{
  result = CollectionRecommendationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_101A4C()
{
  v1 = *v0;
  sub_1B57F4();
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_101AB4()
{
  v2 = *v0;
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();
}

Swift::Int sub_101B18()
{
  v1 = *v0;
  sub_1B57F4();
  CollectionRecommendationType.rawValue.getter();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_101B7C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CollectionRecommendationType.rawValue.getter();
  v4 = v3;
  if (v2 == CollectionRecommendationType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B5604();
  }

  return v7 & 1;
}

uint64_t sub_101CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_120468();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_101D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_120468();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

BooksPersonalization::CollectionRecommendationType_optional static CollectionRecommendationType.from(string:)@<W0>(_BYTE *a1@<X8>)
{
  v2._countAndFlagsBits = sub_11B25C();
  result.value = CollectionRecommendationType.init(rawValue:)(v2).value;
  *a1 = v4;
  return result;
}

uint64_t sub_101DD4()
{
  if (*v0)
  {
    result = 0x707954616964656DLL;
  }

  else
  {
    result = 0x746E756F4378616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_101E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_101EF8(uint64_t a1)
{
  v2 = sub_11B4A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101F34(uint64_t a1)
{
  v2 = sub_11B4A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationOptions.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22C600, &unk_1C6F10);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13 = v1[2];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_11B4A0();
  sub_1B5884();
  v17 = 0;
  sub_1B54A4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    sub_2B0C(&qword_22C610, &qword_1D3290);
    sub_11B4F4();
    sub_1B5544();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t CollectionRecommendationOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22C620, &unk_1C6F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v17 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_11B4A0();
  sub_1B5864();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1B5364();
    v13 = v12;
    v14 = v11;
    sub_2B0C(&qword_22C610, &qword_1D3290);
    v18 = 1;
    sub_11B578();
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    v16 = v17[1];
    *a2 = v14;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v16;
  }

  return sub_2BF8(a1);
}

uint64_t sub_10232C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *v3;
  if (v7 <= 2)
  {
    if (*v3)
    {
LABEL_6:
      v8 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
      v9 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      (*(*(v9 - 8) + 16))(a3, a1, v9);
      *(a3 + v8) = v6;
      v10 = type metadata accessor for CollectionRecommendation(0);
      swift_storeEnumTagMultiPayload();
      v12 = *(*(v10 - 8) + 56);
      v13 = a3;
      v14 = 0;
      v15 = v10;
      goto LABEL_9;
    }
  }

  else if (*v3 > 4u)
  {
    if (v7 == 5)
    {
      goto LABEL_6;
    }
  }

  else if (v7 != 3)
  {
    goto LABEL_6;
  }

  v11 = type metadata accessor for CollectionRecommendation(0);
  v12 = *(*(v11 - 8) + 56);
  v15 = v11;
  v13 = a3;
  v14 = 1;
LABEL_9:

  return v12(v13, v14, 1, v15);
}

void *CollectionRecommendation.mediaTypes.getter()
{
  v1 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v112 = *(v1 - 8);
  v113 = v1;
  v2 = *(v112 + 64);
  v3 = __chkstk_darwin(v1);
  v110 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v109 = &v107 - v6;
  v7 = __chkstk_darwin(v5);
  v108 = &v107 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v107 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v107 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v107 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v107 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v107 - v22;
  v24 = __chkstk_darwin(v21);
  v111 = &v107 - v25;
  __chkstk_darwin(v24);
  v27 = &v107 - v26;
  v28 = type metadata accessor for CollectionRecommendation(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FF9B8(v0, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = v112;
      v77 = v113;
      (*(v112 + 32))(v27, v31, v113);
      v34 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v76 + 16))(v111, v27, v77);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v79 = v118[0];
      v78 = v118[1];
      v80 = *(v118[0] + 16);
      if (v118[1] == v80)
      {
        goto LABEL_36;
      }

      do
      {
        if ((v78 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v78 >= *(v79 + 16))
        {
          goto LABEL_73;
        }

        v81 = *(v79 + 32 + (v78 << 6) + 8);
        v118[1] = v78 + 1;
        sub_111FB0(&v117, v81);
        v78 = v118[1];
      }

      while (v118[1] != v80);
      v34 = v115;
LABEL_36:

      (*(v76 + 8))(v27, v77);
      return v34;
    case 2u:
      v56 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v118, &v31[*(v56 + 48)], 0x231uLL);
      sub_2601C(v118);
      v57 = *&v31[*(v56 + 64)];

      v58 = v112;
      v59 = v31;
      v60 = v113;
      (*(v112 + 32))(v23, v59, v113);
      v34 = _swiftEmptySetSingleton;
      v117 = _swiftEmptySetSingleton;
      (*(v58 + 16))(v111, v23, v60);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v62 = v115;
      v61 = v116;
      v63 = v115[2];
      if (v116 == v63)
      {
        goto LABEL_19;
      }

      do
      {
        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_61;
        }

        if (v61 >= v62[2])
        {
          goto LABEL_70;
        }

        v64 = v62[8 * v61 + 5];
        v116 = v61 + 1;
        sub_111FB0(&v114, v64);
        v61 = v116;
      }

      while (v116 != v63);
      v34 = v117;
LABEL_19:

      (*(v58 + 8))(v23, v60);
      return v34;
    case 3u:
      v65 = v112;
      v66 = v113;
      (*(v112 + 32))(v20, v31, v113);
      v34 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v65 + 16))(v111, v20, v66);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v68 = v118[0];
      v67 = v118[1];
      v69 = *(v118[0] + 16);
      if (v118[1] == v69)
      {
        goto LABEL_25;
      }

      do
      {
        if ((v67 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (v67 >= *(v68 + 16))
        {
          goto LABEL_71;
        }

        v70 = *(v68 + 32 + (v67 << 6) + 8);
        v118[1] = v67 + 1;
        sub_111FB0(&v117, v70);
        v67 = v118[1];
      }

      while (v118[1] != v69);
      v34 = v115;
LABEL_25:

      (*(v65 + 8))(v20, v66);
      return v34;
    case 4u:
      v32 = v112;
      v33 = v113;
      (*(v112 + 32))(v17, v31, v113);
      v34 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v32 + 16))(v111, v17, v33);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v36 = v118[0];
      v35 = v118[1];
      v37 = *(v118[0] + 16);
      if (v118[1] == v37)
      {
        goto LABEL_7;
      }

      while ((v35 & 0x8000000000000000) == 0)
      {
        if (v35 >= *(v36 + 16))
        {
          goto LABEL_68;
        }

        v38 = *(v36 + 32 + (v35 << 6) + 8);
        v118[1] = v35 + 1;
        sub_111FB0(&v117, v38);
        v35 = v118[1];
        if (v118[1] == v37)
        {
          v34 = v115;
LABEL_7:

          (*(v32 + 8))(v17, v33);
          return v34;
        }
      }

      __break(1u);
      goto LABEL_60;
    case 5u:
      v82 = v112;
      v83 = v31;
      v84 = v113;
      (*(v112 + 32))(v14, v83, v113);
      v85 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v82 + 16))(v111, v14, v84);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v87 = v118[0];
      v86 = v118[1];
      v88 = *(v118[0] + 16);
      if (v118[1] == v88)
      {
        goto LABEL_42;
      }

      do
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }

        if (v86 >= *(v87 + 16))
        {
          goto LABEL_74;
        }

        v89 = *(v87 + 32 + (v86 << 6) + 8);
        v118[1] = v86 + 1;
        sub_111FB0(&v117, v89);
        v86 = v118[1];
      }

      while (v118[1] != v88);
      v85 = v115;
LABEL_42:

      (*(v82 + 8))(v14, v84);
      return v85;
    case 6u:
      v91 = v112;
      v90 = v113;
      (*(v112 + 32))(v11, v31, v113);
      v34 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v91 + 16))(v111, v11, v90);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v93 = v118[0];
      v92 = v118[1];
      v94 = *(v118[0] + 16);
      if (v118[1] == v94)
      {
        goto LABEL_48;
      }

      do
      {
        if ((v92 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }

        if (v92 >= *(v93 + 16))
        {
          goto LABEL_75;
        }

        v95 = *(v93 + 32 + (v92 << 6) + 8);
        v118[1] = v92 + 1;
        sub_111FB0(&v117, v95);
        v92 = v118[1];
      }

      while (v118[1] != v94);
      v34 = v115;
      v90 = v113;
LABEL_48:

      (*(v91 + 8))(v11, v90);
      return v34;
    case 7u:
      v39 = v112;
      v40 = v108;
      v71 = v31;
      v42 = v113;
      (*(v112 + 32))(v108, v71, v113);
      v34 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v39 + 16))(v111, v40, v42);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v73 = v118[0];
      v72 = v118[1];
      v74 = *(v118[0] + 16);
      if (v118[1] == v74)
      {
        goto LABEL_56;
      }

      while ((v72 & 0x8000000000000000) == 0)
      {
        if (v72 >= *(v73 + 16))
        {
          goto LABEL_72;
        }

        v75 = *(v73 + 32 + (v72 << 6) + 8);
        v118[1] = v72 + 1;
        sub_111FB0(&v117, v75);
        v72 = v118[1];
        if (v118[1] == v74)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_63;
    case 8u:
      v39 = v112;
      v40 = v109;
      v101 = v31;
      v42 = v113;
      (*(v112 + 32))(v109, v101, v113);
      v34 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v39 + 16))(v111, v40, v42);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v103 = v118[0];
      v102 = v118[1];
      v104 = *(v118[0] + 16);
      if (v118[1] == v104)
      {
        goto LABEL_56;
      }

      while ((v102 & 0x8000000000000000) == 0)
      {
        if (v102 >= *(v103 + 16))
        {
          goto LABEL_76;
        }

        v105 = *(v103 + 32 + (v102 << 6) + 8);
        v118[1] = v102 + 1;
        sub_111FB0(&v117, v105);
        v102 = v118[1];
        if (v118[1] == v104)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_67;
    case 9u:
      LODWORD(v113) = v31[8];
      v47 = *(v31 + 3);
      v112 = *(v31 + 2);
      v48 = *(v31 + 4);
      v49 = *(v31 + 5);
      v50 = *(v31 + 6);
      v51 = *(v31 + 7);
      v52 = *(v31 + 8);
      v53 = *(v31 + 9);
      v54 = *(v31 + 10);
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      sub_CBD44(v112, v47, v48, v49, v50);
      *(inited + 32) = v113;
      goto LABEL_50;
    case 0xCu:
      v39 = v112;
      v40 = v110;
      v41 = v31;
      v42 = v113;
      (*(v112 + 32))(v110, v41, v113);
      v34 = _swiftEmptySetSingleton;
      v115 = _swiftEmptySetSingleton;
      (*(v39 + 16))(v111, v40, v42);
      sub_42094(&qword_22C630, &qword_228F38, &qword_1BCB50);
      sub_1B4974();
      v44 = v118[0];
      v43 = v118[1];
      v45 = *(v118[0] + 16);
      if (v118[1] == v45)
      {
        goto LABEL_56;
      }

      break;
    default:
      v96 = v31[8];
      v97 = *(v31 + 2);
      v98 = *(v31 + 4);
      v99 = *(v31 + 6);
      v100 = v31[24];
      sub_2B0C(&qword_2293B8, &qword_1BC458);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      sub_43CE0(v97, v100);

      *(inited + 32) = v96;
LABEL_50:
      v34 = sub_9EABC(inited);
      swift_setDeallocating();
      return v34;
  }

  do
  {
    if ((v43 & 0x8000000000000000) != 0)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      JUMPOUT(0x103348);
    }

    if (v43 >= *(v44 + 16))
    {
      goto LABEL_69;
    }

    v46 = *(v44 + 32 + (v43 << 6) + 8);
    v118[1] = v43 + 1;
    sub_111FB0(&v117, v46);
    v43 = v118[1];
  }

  while (v118[1] != v45);
LABEL_55:
  v34 = v115;
LABEL_56:

  (*(v39 + 8))(v40, v42);
  return v34;
}

uint64_t CollectionRecommendation.source.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CollectionRecommendation(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xCu:
      *a1 = 2;
      return sub_5DC0C(v7);
    case 2u:
      v12 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v15, &v7[*(v12 + 48)], 0x231uLL);
      sub_2601C(v15);
      v13 = *&v7[*(v12 + 64)];

      v10 = 2;
      goto LABEL_7;
    case 3u:
    case 5u:
      v9 = *(sub_2B0C(&qword_229740, &qword_1C6EE0) + 64);
      goto LABEL_6;
    case 4u:
    case 6u:
    case 7u:
    case 8u:
      v9 = *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48);
LABEL_6:
      v10 = v7[v9];
LABEL_7:
      *a1 = v10;
      v11 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      result = (*(*(v11 - 8) + 8))(v7, v11);
      break;
    default:
      result = sub_5DC0C(v7);
      *a1 = 2;
      break;
  }

  return result;
}

uint64_t sub_103568(char a1)
{
  result = 1802465122;
  switch(a1)
  {
    case 1:
      result = 0x736B6F6F62;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x417942736B6F6F62;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x476E49736B6F6F62;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x736569726573;
      break;
    case 10:
      v3 = 1954047342;
      goto LABEL_14;
    case 11:
      v3 = 1701998445;
LABEL_14:
      result = v3 | 0x65536E4900000000;
      break;
    case 12:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_103714(uint64_t a1)
{
  v2 = sub_11BD1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103750(uint64_t a1)
{
  v2 = sub_11BD1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10378C(uint64_t a1)
{
  v2 = sub_11BB9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1037C8(uint64_t a1)
{
  v2 = sub_11BB9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11EFE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_103840(uint64_t a1)
{
  v2 = sub_11BB48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10387C(uint64_t a1)
{
  v2 = sub_11BB48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1038B8(uint64_t a1)
{
  v2 = sub_11BAF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1038F4(uint64_t a1)
{
  v2 = sub_11BAF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103930(uint64_t a1)
{
  v2 = sub_11BCC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10396C(uint64_t a1)
{
  v2 = sub_11BCC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1039A8(uint64_t a1)
{
  v2 = sub_11BAA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1039E4(uint64_t a1)
{
  v2 = sub_11BAA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103A20()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_103A40(uint64_t a1)
{
  v2 = sub_11BA4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103A7C(uint64_t a1)
{
  v2 = sub_11BA4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11F0E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_103AF4(uint64_t a1)
{
  v2 = sub_11B5FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103B30(uint64_t a1)
{
  v2 = sub_11B5FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103B6C(uint64_t a1)
{
  v2 = sub_11B650();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103BA8(uint64_t a1)
{
  v2 = sub_11B650();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103BE4(uint64_t a1)
{
  v2 = sub_11B9F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103C20(uint64_t a1)
{
  v2 = sub_11B9F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_103D28(uint64_t a1)
{
  v2 = sub_11B950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103D64(uint64_t a1)
{
  v2 = sub_11B950();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103DA0(uint64_t a1)
{
  v2 = sub_11B800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103DDC(uint64_t a1)
{
  v2 = sub_11B800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103E18(uint64_t a1)
{
  v2 = sub_11B854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103E54(uint64_t a1)
{
  v2 = sub_11B854();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_103E90(uint64_t a1)
{
  v2 = sub_11B8A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_103ECC(uint64_t a1)
{
  v2 = sub_11B8A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendation.encode(to:)(void *a1)
{
  v195 = sub_2B0C(&qword_22C638, &qword_1C6F38);
  v167 = *(v195 - 8);
  v2 = *(v167 + 64);
  __chkstk_darwin(v195);
  v193 = &v156 - v3;
  v194 = sub_2B0C(&qword_22C640, &qword_1C6F40);
  v166 = *(v194 - 8);
  v4 = *(v166 + 64);
  __chkstk_darwin(v194);
  v192 = &v156 - v5;
  v191 = sub_2B0C(&qword_22C648, &qword_1C6F48);
  v165 = *(v191 - 8);
  v6 = *(v165 + 64);
  __chkstk_darwin(v191);
  v189 = &v156 - v7;
  v190 = sub_2B0C(&qword_22C650, &qword_1C6F50);
  v164 = *(v190 - 8);
  v8 = *(v164 + 64);
  __chkstk_darwin(v190);
  v187 = &v156 - v9;
  v188 = sub_2B0C(&qword_22C658, &qword_1C6F58);
  v163 = *(v188 - 8);
  v10 = *(v163 + 64);
  __chkstk_darwin(v188);
  v186 = &v156 - v11;
  v185 = sub_2B0C(&qword_22C660, &qword_1C6F60);
  v162 = *(v185 - 8);
  v12 = *(v162 + 64);
  __chkstk_darwin(v185);
  v184 = &v156 - v13;
  v183 = sub_2B0C(&qword_22C668, &qword_1C6F68);
  v161 = *(v183 - 8);
  v14 = *(v161 + 64);
  __chkstk_darwin(v183);
  v181 = &v156 - v15;
  v182 = sub_2B0C(&qword_22C670, &qword_1C6F70);
  v160 = *(v182 - 8);
  v16 = *(v160 + 64);
  __chkstk_darwin(v182);
  v180 = &v156 - v17;
  v178 = sub_2B0C(&qword_22C678, &qword_1C6F78);
  v158 = *(v178 - 8);
  v18 = *(v158 + 64);
  __chkstk_darwin(v178);
  v175 = &v156 - v19;
  v177 = sub_2B0C(&qword_22C680, &qword_1C6F80);
  v157 = *(v177 - 8);
  v20 = *(v157 + 64);
  __chkstk_darwin(v177);
  v174 = &v156 - v21;
  v179 = sub_2B0C(&qword_22C688, &qword_1C6F88);
  v159 = *(v179 - 8);
  v22 = *(v159 + 64);
  __chkstk_darwin(v179);
  v176 = &v156 - v23;
  v24 = sub_2B0C(&qword_22C690, &qword_1C6F90);
  v172 = *(v24 - 8);
  v173 = v24;
  v25 = *(v172 + 64);
  __chkstk_darwin(v24);
  v171 = &v156 - v26;
  v27 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v28 = *(v27 - 8);
  v203 = v27;
  v204 = v28;
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v170 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v200 = &v156 - v33;
  v34 = __chkstk_darwin(v32);
  v198 = &v156 - v35;
  v36 = __chkstk_darwin(v34);
  v197 = &v156 - v37;
  v38 = __chkstk_darwin(v36);
  v201 = &v156 - v39;
  v40 = __chkstk_darwin(v38);
  v196 = &v156 - v41;
  v42 = __chkstk_darwin(v40);
  v199 = &v156 - v43;
  v44 = __chkstk_darwin(v42);
  v202 = &v156 - v45;
  __chkstk_darwin(v44);
  v47 = &v156 - v46;
  v48 = sub_2B0C(&qword_22C698, &qword_1C6F98);
  v168 = *(v48 - 8);
  v169 = v48;
  v49 = *(v168 + 64);
  __chkstk_darwin(v48);
  v51 = &v156 - v50;
  v52 = type metadata accessor for CollectionRecommendation(0);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v55 = (&v156 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = sub_2B0C(&qword_22C6A0, &unk_1C6FA0);
  v205 = *(v208 - 8);
  v56 = *(v205 + 64);
  __chkstk_darwin(v208);
  v58 = &v156 - v57;
  v59 = a1[4];
  sub_2698(a1, a1[3]);
  sub_11B5FC();
  v207 = v58;
  sub_1B5884();
  sub_FF9B8(v206, v55);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v120 = v204;
      v121 = v55;
      v122 = v203;
      (*(v204 + 32))(v47, v121, v203);
      LOBYTE(v211[0]) = 1;
      sub_11BCC8();
      v123 = v171;
      v125 = v207;
      v124 = v208;
      sub_1B5454();
      sub_11B6A4();
      v126 = v173;
      v127 = v212;
      sub_1B5544();
      (*(v172 + 8))(v123, v126);
      (*(v120 + 8))(v47, v122);
      result = (*(v205 + 8))(v125, v124);
      v212 = v127;
      return result;
    case 2u:
      v102 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v211, v55 + *(v102 + 48), 0x231uLL);
      v206 = *(v55 + *(v102 + 64));
      v103 = v203;
      v104 = v204;
      v105 = v202;
      (*(v204 + 32))(v202, v55, v203);
      LOBYTE(v210[0]) = 2;
      sub_11BB9C();
      v106 = v176;
      v108 = v207;
      v107 = v208;
      sub_1B5454();
      LOBYTE(v210[0]) = 0;
      sub_11B6A4();
      v109 = v179;
      v110 = v212;
      sub_1B5544();
      v212 = v110;
      if (v110)
      {
        sub_2601C(v211);

        (*(v159 + 8))(v106, v109);
        (*(v104 + 8))(v105, v103);
        v92 = *(v205 + 8);
        v93 = v108;
        goto LABEL_36;
      }

      v142 = v206;
      memcpy(v210, v211, 0x231uLL);
      v209 = 1;
      sub_90C14();
      v143 = v212;
      sub_1B5544();
      v212 = v143;
      if (v143)
      {

        (*(v159 + 8))(v106, v109);
        (*(v104 + 8))(v202, v103);
        (*(v205 + 8))(v108, v107);
        return sub_2601C(v211);
      }

      else
      {
        sub_2601C(v211);
        *&v210[0] = v142;
        v209 = 2;
        sub_2B0C(&qword_22C730, &qword_1C6FB0);
        sub_11BBF0();
        v151 = v212;
        sub_1B5544();
        v212 = v151;
        (*(v159 + 8))(v106, v109);
        (*(v104 + 8))(v202, v103);
        (*(v205 + 8))(v108, v107);
      }

    case 3u:
      v111 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v206 = *(v55 + *(v111 + 48));
      LODWORD(v202) = *(v55 + *(v111 + 64));
      v112 = v203;
      v113 = v204;
      v114 = v199;
      (*(v204 + 32))(v199, v55, v203);
      LOBYTE(v211[0]) = 3;
      sub_11BB48();
      v115 = v174;
      v116 = v207;
      v107 = v208;
      sub_1B5454();
      LOBYTE(v211[0]) = 0;
      sub_11B6A4();
      v117 = v177;
      v118 = v212;
      sub_1B5544();
      v212 = v118;
      if (v118)
      {
        (*(v157 + 8))(v115, v117);
        (*(v113 + 8))(v114, v112);
      }

      else
      {
        v144 = v202;
        LOBYTE(v211[0]) = 1;
        v145 = v115;
        sub_1B5574();
        v212 = 0;
        LOBYTE(v211[0]) = v144;
        LOBYTE(v210[0]) = 2;
        sub_11B9A4();
        v152 = v212;
        sub_1B5544();
        v153 = v199;
        v212 = v152;
        (*(v157 + 8))(v145, v117);
        (*(v113 + 8))(v153, v112);
      }

      goto LABEL_35;
    case 4u:
      LODWORD(v206) = *(v55 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v76 = v203;
      v75 = v204;
      v77 = v196;
      (*(v204 + 32))(v196, v55, v203);
      LOBYTE(v211[0]) = 4;
      sub_11BAF4();
      v78 = v175;
      v79 = v207;
      v80 = v208;
      sub_1B5454();
      LOBYTE(v211[0]) = 0;
      sub_11B6A4();
      v81 = v178;
      v82 = v212;
      sub_1B5544();
      v212 = v82;
      if (v82)
      {
        v83 = v158;
        goto LABEL_23;
      }

      LOBYTE(v211[0]) = v206;
      LOBYTE(v210[0]) = 1;
      sub_11B9A4();
      v141 = v212;
      sub_1B5544();
      v212 = v141;
      (*(v158 + 8))(v78, v81);
      (*(v75 + 8))(v196, v76);
      break;
    case 5u:
      v128 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v206 = *(v55 + *(v128 + 48));
      LODWORD(v202) = *(v55 + *(v128 + 64));
      v130 = v203;
      v129 = v204;
      v131 = v201;
      (*(v204 + 32))(v201, v55, v203);
      LOBYTE(v211[0]) = 5;
      sub_11BAA0();
      v132 = v180;
      v116 = v207;
      v107 = v208;
      sub_1B5454();
      LOBYTE(v211[0]) = 0;
      sub_11B6A4();
      v133 = v182;
      v134 = v212;
      sub_1B5544();
      v212 = v134;
      if (v134)
      {
        (*(v160 + 8))(v132, v133);
        (*(v129 + 8))(v131, v130);
      }

      else
      {
        v147 = v202;
        LOBYTE(v211[0]) = 1;
        v148 = v132;
        sub_1B5574();
        v212 = 0;
        LOBYTE(v211[0]) = v147;
        LOBYTE(v210[0]) = 2;
        sub_11B9A4();
        v154 = v212;
        sub_1B5544();
        v155 = v201;
        v212 = v154;
        (*(v160 + 8))(v148, v133);
        (*(v129 + 8))(v155, v130);
      }

LABEL_35:
      v92 = *(v205 + 8);
      v93 = v116;
LABEL_36:
      v140 = v107;
      return v92(v93, v140);
    case 6u:
      LODWORD(v206) = *(v55 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v76 = v203;
      v75 = v204;
      v77 = v197;
      (*(v204 + 32))(v197, v55, v203);
      LOBYTE(v211[0]) = 6;
      sub_11BA4C();
      v78 = v181;
      v79 = v207;
      v80 = v208;
      sub_1B5454();
      LOBYTE(v211[0]) = 0;
      sub_11B6A4();
      v81 = v183;
      v135 = v212;
      sub_1B5544();
      v212 = v135;
      if (v135)
      {
        v83 = v161;
        goto LABEL_23;
      }

      LOBYTE(v211[0]) = v206;
      LOBYTE(v210[0]) = 1;
      sub_11B9A4();
      v149 = v212;
      sub_1B5544();
      v212 = v149;
      (*(v161 + 8))(v78, v81);
      (*(v75 + 8))(v197, v76);
      break;
    case 7u:
      LODWORD(v206) = *(v55 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v76 = v203;
      v75 = v204;
      v77 = v198;
      (*(v204 + 32))(v198, v55, v203);
      LOBYTE(v211[0]) = 7;
      sub_11B9F8();
      v78 = v184;
      v79 = v207;
      v80 = v208;
      sub_1B5454();
      LOBYTE(v211[0]) = 0;
      sub_11B6A4();
      v81 = v185;
      v119 = v212;
      sub_1B5544();
      v212 = v119;
      if (v119)
      {
        v83 = v162;
        goto LABEL_23;
      }

      LOBYTE(v211[0]) = v206;
      LOBYTE(v210[0]) = 1;
      sub_11B9A4();
      v146 = v212;
      sub_1B5544();
      v212 = v146;
      (*(v162 + 8))(v78, v81);
      (*(v75 + 8))(v198, v76);
      break;
    case 8u:
      LODWORD(v206) = *(v55 + *(sub_2B0C(&qword_229770, &qword_1C6F30) + 48));
      v76 = v203;
      v75 = v204;
      v77 = v200;
      (*(v204 + 32))(v200, v55, v203);
      LOBYTE(v211[0]) = 8;
      sub_11B950();
      v78 = v186;
      v79 = v207;
      v80 = v208;
      sub_1B5454();
      LOBYTE(v211[0]) = 0;
      sub_11B6A4();
      v81 = v188;
      v139 = v212;
      sub_1B5544();
      v212 = v139;
      if (v139)
      {
        v83 = v163;
LABEL_23:
        (*(v83 + 8))(v78, v81);
        (*(v75 + 8))(v77, v76);
      }

      else
      {
        LOBYTE(v211[0]) = v206;
        LOBYTE(v210[0]) = 1;
        sub_11B9A4();
        v150 = v212;
        sub_1B5544();
        v212 = v150;
        (*(v163 + 8))(v78, v81);
        (*(v75 + 8))(v200, v76);
      }

      break;
    case 9u:
      v94 = v55[3];
      v211[2] = v55[2];
      v211[3] = v94;
      v95 = v55[5];
      v211[4] = v55[4];
      v211[5] = v95;
      v96 = v55[1];
      v211[0] = *v55;
      v211[1] = v96;
      LOBYTE(v210[0]) = 9;
      sub_11B8A8();
      v97 = v187;
      v99 = v207;
      v98 = v208;
      sub_1B5454();
      v210[2] = v211[2];
      v210[3] = v211[3];
      v210[4] = v211[4];
      v210[5] = v211[5];
      v210[0] = v211[0];
      v210[1] = v211[1];
      sub_11B8FC();
      v100 = v190;
      v101 = v212;
      sub_1B5544();
      v212 = v101;
      (*(v164 + 8))(v97, v100);
      (*(v205 + 8))(v99, v98);
      return sub_C6088(v211);
    case 0xAu:
      v136 = v55[1];
      v211[0] = *v55;
      v211[1] = v136;
      v137 = v55[3];
      v211[2] = v55[2];
      v211[3] = v137;
      LOBYTE(v210[0]) = 10;
      sub_11B854();
      v69 = v189;
      v71 = v207;
      v70 = v208;
      sub_1B5454();
      v210[0] = v211[0];
      v210[1] = v211[1];
      v210[2] = v211[2];
      v210[3] = v211[3];
      sub_11B7AC();
      v72 = v191;
      v138 = v212;
      sub_1B5544();
      v212 = v138;
      v74 = v165;
      goto LABEL_20;
    case 0xBu:
      v67 = v55[1];
      v211[0] = *v55;
      v211[1] = v67;
      v68 = v55[3];
      v211[2] = v55[2];
      v211[3] = v68;
      LOBYTE(v210[0]) = 11;
      sub_11B800();
      v69 = v192;
      v71 = v207;
      v70 = v208;
      sub_1B5454();
      v210[0] = v211[0];
      v210[1] = v211[1];
      v210[2] = v211[2];
      v210[3] = v211[3];
      sub_11B7AC();
      v72 = v194;
      v73 = v212;
      sub_1B5544();
      v212 = v73;
      v74 = v166;
LABEL_20:
      (*(v74 + 8))(v69, v72);
      (*(v205 + 8))(v71, v70);
      return sub_43FF4(v211);
    case 0xCu:
      v84 = v204;
      v85 = v170;
      v86 = v55;
      v87 = v203;
      (*(v204 + 32))(v170, v86, v203);
      LOBYTE(v211[0]) = 12;
      sub_11B650();
      v88 = v193;
      v89 = v207;
      v80 = v208;
      sub_1B5454();
      sub_11B6A4();
      v90 = v195;
      v91 = v212;
      sub_1B5544();
      v212 = v91;
      (*(v167 + 8))(v88, v90);
      (*(v84 + 8))(v85, v87);
      v92 = *(v205 + 8);
      v93 = v89;
      goto LABEL_25;
    default:
      v60 = v55[1];
      v211[0] = *v55;
      v211[1] = v60;
      v61 = v55[3];
      v211[2] = v55[2];
      v211[3] = v61;
      LOBYTE(v210[0]) = 0;
      sub_11BD1C();
      v63 = v207;
      v62 = v208;
      sub_1B5454();
      v210[0] = v211[0];
      v210[1] = v211[1];
      v210[2] = v211[2];
      v210[3] = v211[3];
      sub_11B7AC();
      v64 = v169;
      v65 = v212;
      sub_1B5544();
      (*(v168 + 8))(v51, v64);
      (*(v205 + 8))(v63, v62);
      result = sub_43FF4(v211);
      v212 = v65;
      return result;
  }

  v92 = *(v205 + 8);
  v93 = v79;
LABEL_25:
  v140 = v80;
  return v92(v93, v140);
}

uint64_t CollectionRecommendation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v231 = a2;
  v211 = sub_2B0C(&qword_22C758, &qword_1C6FB8);
  v195 = *(v211 - 8);
  v3 = *(v195 + 64);
  __chkstk_darwin(v211);
  v229 = &v180 - v4;
  v5 = sub_2B0C(&qword_22C760, &qword_1C6FC0);
  v209 = *(v5 - 8);
  v210 = v5;
  v6 = *(v209 + 64);
  __chkstk_darwin(v5);
  v230 = &v180 - v7;
  v8 = sub_2B0C(&qword_22C768, &qword_1C6FC8);
  v206 = *(v8 - 8);
  v207 = v8;
  v9 = *(v206 + 64);
  __chkstk_darwin(v8);
  v234 = &v180 - v10;
  v11 = sub_2B0C(&qword_22C770, &qword_1C6FD0);
  v203 = *(v11 - 8);
  v204 = v11;
  v12 = *(v203 + 64);
  __chkstk_darwin(v11);
  v227 = &v180 - v13;
  v208 = sub_2B0C(&qword_22C778, &qword_1C6FD8);
  v194 = *(v208 - 8);
  v14 = *(v194 + 64);
  __chkstk_darwin(v208);
  v228 = &v180 - v15;
  v205 = sub_2B0C(&qword_22C780, &qword_1C6FE0);
  v193 = *(v205 - 8);
  v16 = *(v193 + 64);
  __chkstk_darwin(v205);
  v226 = &v180 - v17;
  v202 = sub_2B0C(&qword_22C788, &qword_1C6FE8);
  v191 = *(v202 - 8);
  v18 = *(v191 + 64);
  __chkstk_darwin(v202);
  v225 = &v180 - v19;
  v214 = sub_2B0C(&qword_22C790, &qword_1C6FF0);
  v192 = *(v214 - 8);
  v20 = *(v192 + 64);
  __chkstk_darwin(v214);
  v224 = &v180 - v21;
  v201 = sub_2B0C(&qword_22C798, &qword_1C6FF8);
  v190 = *(v201 - 8);
  v22 = *(v190 + 64);
  __chkstk_darwin(v201);
  v223 = &v180 - v23;
  v24 = sub_2B0C(&qword_22C7A0, &qword_1C7000);
  v212 = *(v24 - 8);
  v213 = v24;
  v25 = *(v212 + 64);
  __chkstk_darwin(v24);
  v222 = &v180 - v26;
  v200 = sub_2B0C(&qword_22C7A8, &qword_1C7008);
  v189 = *(v200 - 8);
  v27 = *(v189 + 64);
  __chkstk_darwin(v200);
  v233 = &v180 - v28;
  v199 = sub_2B0C(&qword_22C7B0, &qword_1C7010);
  v188 = *(v199 - 8);
  v29 = *(v188 + 64);
  __chkstk_darwin(v199);
  v221 = &v180 - v30;
  v31 = sub_2B0C(&qword_22C7B8, &qword_1C7018);
  v197 = *(v31 - 8);
  v198 = v31;
  v32 = *(v197 + 64);
  __chkstk_darwin(v31);
  v220 = &v180 - v33;
  v232 = sub_2B0C(&qword_22C7C0, &unk_1C7020);
  v235 = *(v232 - 8);
  v34 = *(v235 + 64);
  __chkstk_darwin(v232);
  v239 = &v180 - v35;
  v236 = type metadata accessor for CollectionRecommendation(0);
  v36 = *(*(v236 - 8) + 64);
  v37 = __chkstk_darwin(v236);
  v196 = &v180 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v187 = &v180 - v40;
  v41 = __chkstk_darwin(v39);
  v186 = &v180 - v42;
  v43 = __chkstk_darwin(v41);
  v185 = &v180 - v44;
  v45 = __chkstk_darwin(v43);
  v218 = &v180 - v46;
  v47 = __chkstk_darwin(v45);
  v217 = &v180 - v48;
  v49 = __chkstk_darwin(v47);
  v216 = &v180 - v50;
  v51 = __chkstk_darwin(v49);
  v219 = &v180 - v52;
  v53 = __chkstk_darwin(v51);
  v215 = &v180 - v54;
  v55 = __chkstk_darwin(v53);
  v57 = &v180 - v56;
  v58 = __chkstk_darwin(v55);
  v60 = &v180 - v59;
  v61 = __chkstk_darwin(v58);
  v63 = &v180 - v62;
  v64 = __chkstk_darwin(v61);
  v66 = &v180 - v65;
  __chkstk_darwin(v64);
  v68 = &v180 - v67;
  v69 = a1[3];
  v70 = a1[4];
  v237 = a1;
  sub_2698(a1, v69);
  sub_11B5FC();
  v71 = v238;
  sub_1B5864();
  if (v71)
  {
    return sub_2BF8(v237);
  }

  v181 = v66;
  v182 = v63;
  v183 = v57;
  v184 = v60;
  v73 = v233;
  v72 = v234;
  v74 = v236;
  v238 = v68;
  v75 = v232;
  v76 = v239;
  v77 = sub_1B5444();
  v78 = (2 * *(v77 + 16)) | 1;
  v241 = v77;
  v242 = v77 + 32;
  v243 = 0;
  v244 = v78;
  v79 = sub_9CAB4();
  if (v243 != v244 >> 1)
  {
LABEL_5:
    v86 = sub_1B5114();
    swift_allocError();
    v88 = v87;
    v89 = *(sub_2B0C(&qword_22ADB8, &qword_1C2520) + 48);
    *v88 = v74;
    sub_1B5314();
    sub_1B50E4();
    (*(*(v86 - 8) + 104))(v88, enum case for DecodingError.typeMismatch(_:), v86);
    swift_willThrow();
    (*(v235 + 8))(v76, v75);
    swift_unknownObjectRelease();
    return sub_2BF8(v237);
  }

  switch(v79)
  {
    case 0:
      v240[0] = 0;
      sub_11BD1C();
      v80 = v220;
      sub_1B5304();
      sub_11BE78();
      v81 = v198;
      sub_1B5404();
      v82 = (v235 + 8);
      v209 = 0;
      (*(v197 + 8))(v80, v81);
      (*v82)(v76, v75);
      swift_unknownObjectRelease();
      v83 = *&v240[16];
      v84 = v181;
      *v181 = *v240;
      *(v84 + 1) = v83;
      v85 = *&v240[48];
      *(v84 + 2) = *&v240[32];
      *(v84 + 3) = v85;
      goto LABEL_38;
    case 1:
      v240[0] = 1;
      sub_11BCC8();
      v124 = v221;
      v125 = v75;
      sub_1B5304();
      sub_2B0C(&qword_228F38, &qword_1BCB50);
      sub_11BD70();
      v126 = v182;
      v127 = v199;
      sub_1B5404();
      v128 = v124;
      v129 = v235;
      v209 = 0;
      (*(v188 + 8))(v128, v127);
      (*(v129 + 8))(v76, v125);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v157 = v126;
      goto LABEL_39;
    case 2:
      v240[0] = 2;
      sub_11BB9C();
      v110 = v75;
      sub_1B5304();
      v111 = v73;
      v112 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v240[0] = 0;
      sub_11BD70();
      v113 = v200;
      sub_1B5404();
      v234 = sub_2B0C(&qword_228F40, &unk_1BB360);
      v152 = *(v234 + 48);
      v240[0] = 1;
      sub_90CE0();
      sub_1B5404();
      v230 = v152;
      v166 = *(v234 + 64);
      sub_2B0C(&qword_22C730, &qword_1C6FB0);
      v209 = 0;
      v245 = 2;
      sub_11BF74();
      v101 = v184;
      v167 = v209;
      sub_1B5404();
      if (v167)
      {
        (*(v189 + 8))(v111, v113);
        (*(v235 + 8))(v76, v110);
        swift_unknownObjectRelease();
        memcpy(v240, &v230[v101], sizeof(v240));
        sub_2601C(v240);
        (*(*(v112 - 8) + 8))(v101, v112);
        return sub_2BF8(v237);
      }

      v209 = 0;
      (*(v189 + 8))(v111, v113);
      (*(v235 + 8))(v76, v110);
      swift_unknownObjectRelease();
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v157 = v101;
      goto LABEL_39;
    case 3:
      v240[0] = 3;
      sub_11BB48();
      v114 = v222;
      v115 = v75;
      sub_1B5304();
      v116 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v240[0] = 0;
      sub_11BD70();
      v117 = v183;
      sub_1B5404();
      v118 = v235;
      v240[0] = 1;
      v153 = sub_1B5434();
      v209 = 0;
      v168 = v153;
      v169 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v170 = v117;
      v171 = *(v169 + 64);
      *(v170 + *(v169 + 48)) = v168;
      v240[0] = 2;
      sub_11BF20();
      v172 = v213;
      v173 = v209;
      sub_1B5404();
      if (v173)
      {
        (*(v212 + 8))(v114, v172);
        (*(v118 + 8))(v76, v115);
        swift_unknownObjectRelease();
        (*(*(v116 - 8) + 8))(v170, v116);
        return sub_2BF8(v237);
      }

      v209 = 0;
      (*(v212 + 8))(v114, v172);
      (*(v118 + 8))(v76, v115);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v157 = v170;
      goto LABEL_39;
    case 4:
      v240[0] = 4;
      sub_11BAF4();
      v95 = v223;
      v96 = v75;
      sub_1B5304();
      v97 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v240[0] = 0;
      sub_11BD70();
      v98 = v201;
      sub_1B5404();
      v99 = v235;
      v149 = sub_2B0C(&qword_229770, &qword_1C6F30);
      v209 = 0;
      v150 = *(v149 + 48);
      v240[0] = 1;
      sub_11BF20();
      v151 = v209;
      sub_1B5404();
      if (v151)
      {
        (*(v190 + 8))(v95, v98);
        (*(v99 + 8))(v76, v96);
        swift_unknownObjectRelease();
        (*(*(v97 - 8) + 8))(v215, v97);
        return sub_2BF8(v237);
      }

      v209 = 0;
      (*(v190 + 8))(v95, v98);
      (*(v99 + 8))(v76, v96);
      swift_unknownObjectRelease();
      v84 = v215;
      goto LABEL_38;
    case 5:
      v240[0] = 5;
      sub_11BAA0();
      v130 = v224;
      v131 = v75;
      sub_1B5304();
      sub_2B0C(&qword_228F38, &qword_1BCB50);
      v240[0] = 0;
      sub_11BD70();
      sub_1B5404();
      v132 = v130;
      v133 = v235;
      v240[0] = 1;
      v174 = sub_1B5434();
      v175 = sub_2B0C(&qword_229740, &qword_1C6EE0);
      v176 = *(v175 + 48);
      v234 = *(v175 + 64);
      *&v219[v176] = v174;
      v240[0] = 2;
      sub_11BF20();
      v177 = v214;
      sub_1B5404();
      v209 = 0;
      (*(v192 + 8))(v132, v177);
      (*(v133 + 8))(v76, v131);
      swift_unknownObjectRelease();
      v84 = v219;
      goto LABEL_38;
    case 6:
      v240[0] = 6;
      sub_11BA4C();
      v134 = v225;
      v135 = v75;
      sub_1B5304();
      v136 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v240[0] = 0;
      sub_11BD70();
      v137 = v202;
      sub_1B5404();
      v138 = v235;
      v158 = sub_2B0C(&qword_229770, &qword_1C6F30);
      v209 = 0;
      v159 = *(v158 + 48);
      v240[0] = 1;
      sub_11BF20();
      v160 = v209;
      sub_1B5404();
      if (v160)
      {
        (*(v191 + 8))(v134, v137);
        (*(v138 + 8))(v76, v135);
        swift_unknownObjectRelease();
        (*(*(v136 - 8) + 8))(v216, v136);
        return sub_2BF8(v237);
      }

      v209 = 0;
      (*(v191 + 8))(v134, v137);
      (*(v138 + 8))(v76, v135);
      swift_unknownObjectRelease();
      v84 = v216;
      goto LABEL_38;
    case 7:
      v240[0] = 7;
      sub_11B9F8();
      v119 = v226;
      v120 = v75;
      sub_1B5304();
      v121 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v240[0] = 0;
      sub_11BD70();
      v122 = v205;
      sub_1B5404();
      v123 = v235;
      v154 = sub_2B0C(&qword_229770, &qword_1C6F30);
      v209 = 0;
      v155 = *(v154 + 48);
      v240[0] = 1;
      sub_11BF20();
      v156 = v209;
      sub_1B5404();
      if (v156)
      {
        (*(v193 + 8))(v119, v122);
        (*(v123 + 8))(v76, v120);
        swift_unknownObjectRelease();
        (*(*(v121 - 8) + 8))(v217, v121);
        return sub_2BF8(v237);
      }

      v209 = 0;
      (*(v193 + 8))(v119, v122);
      (*(v123 + 8))(v76, v120);
      swift_unknownObjectRelease();
      v84 = v217;
      goto LABEL_38;
    case 8:
      v240[0] = 8;
      sub_11B950();
      v140 = v228;
      v141 = v75;
      sub_1B5304();
      v144 = sub_2B0C(&qword_228F38, &qword_1BCB50);
      v240[0] = 0;
      sub_11BD70();
      v145 = v208;
      sub_1B5404();
      v146 = v235;
      v163 = sub_2B0C(&qword_229770, &qword_1C6F30);
      v209 = 0;
      v164 = *(v163 + 48);
      v240[0] = 1;
      sub_11BF20();
      v165 = v209;
      sub_1B5404();
      if (v165)
      {
        (*(v194 + 8))(v140, v145);
        (*(v146 + 8))(v76, v141);
        swift_unknownObjectRelease();
        (*(*(v144 - 8) + 8))(v218, v144);
        return sub_2BF8(v237);
      }

      v209 = 0;
      (*(v194 + 8))(v140, v145);
      (*(v146 + 8))(v76, v141);
      swift_unknownObjectRelease();
      v84 = v218;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      v157 = v84;
LABEL_39:
      v178 = v238;
      sub_11FE3C(v157, v238, type metadata accessor for CollectionRecommendation);
      v179 = v237;
      sub_11FE3C(v178, v231, type metadata accessor for CollectionRecommendation);
      result = sub_2BF8(v179);
      break;
    case 9:
      v240[0] = 9;
      sub_11B8A8();
      v104 = v227;
      sub_1B5304();
      sub_11BECC();
      v105 = v204;
      sub_1B5404();
      v106 = (v235 + 8);
      v209 = 0;
      (*(v203 + 8))(v104, v105);
      (*v106)(v76, v75);
      swift_unknownObjectRelease();
      v107 = *&v240[48];
      v84 = v185;
      *(v185 + 2) = *&v240[32];
      *(v84 + 3) = v107;
      v108 = *&v240[80];
      *(v84 + 4) = *&v240[64];
      *(v84 + 5) = v108;
      v109 = *&v240[16];
      *v84 = *v240;
      *(v84 + 1) = v109;
      goto LABEL_38;
    case 10:
      v240[0] = 10;
      sub_11B854();
      v139 = v72;
      sub_1B5304();
      sub_11BE78();
      v142 = v207;
      sub_1B5404();
      v143 = (v235 + 8);
      v209 = 0;
      (*(v206 + 8))(v139, v142);
      (*v143)(v76, v75);
      swift_unknownObjectRelease();
      v161 = *&v240[16];
      v84 = v186;
      *v186 = *v240;
      *(v84 + 1) = v161;
      v162 = *&v240[48];
      *(v84 + 2) = *&v240[32];
      *(v84 + 3) = v162;
      goto LABEL_38;
    case 11:
      v240[0] = 11;
      sub_11B800();
      v91 = v230;
      sub_1B5304();
      sub_11BE78();
      v92 = v210;
      sub_1B5404();
      v93 = (v209 + 8);
      v94 = (v235 + 8);
      v209 = 0;
      (*v93)(v91, v92);
      (*v94)(v76, v75);
      swift_unknownObjectRelease();
      v147 = *&v240[16];
      v84 = v187;
      *v187 = *v240;
      *(v84 + 1) = v147;
      v148 = *&v240[48];
      *(v84 + 2) = *&v240[32];
      *(v84 + 3) = v148;
      goto LABEL_38;
    case 12:
      v240[0] = 12;
      sub_11B650();
      v100 = v229;
      sub_1B5304();
      sub_2B0C(&qword_228F38, &qword_1BCB50);
      sub_11BD70();
      v101 = v196;
      v102 = v211;
      sub_1B5404();
      v103 = v235;
      v209 = 0;
      (*(v195 + 8))(v100, v102);
      (*(v103 + 8))(v76, v75);
      swift_unknownObjectRelease();
      goto LABEL_21;
    default:
      goto LABEL_5;
  }

  return result;
}

uint64_t CollectionRecommendation.count.getter()
{
  v1 = v0;
  v2 = sub_2B0C(&qword_228F38, &qword_1BCB50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-v5 - 8];
  v7 = type metadata accessor for CollectionRecommendation(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_FF9B8(v1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xCu:
      goto LABEL_2;
    case 2u:
      v12 = sub_2B0C(&qword_228F40, &unk_1BB360);
      memcpy(v16, &v10[*(v12 + 48)], 0x231uLL);
      sub_2601C(v16);
      v13 = *&v10[*(v12 + 64)];

LABEL_2:
      (*(v3 + 32))(v6, v10, v2);
      v11 = sub_1B4374();
      (*(v3 + 8))(v6, v2);
      break;
    case 9u:
      sub_5DC0C(v10);
      v11 = 0;
      break;
    default:
      sub_5DC0C(v10);
      v11 = 1;
      break;
  }

  return v11;
}

uint64_t CollectionRecommendation.debugDescription.getter()
{
  CollectionRecommendation.count.getter();
  v1 = v0;
  v2 = 0xE000000000000000;
  v11 = 0;
  v12 = 0xE000000000000000;
  CollectionRecommendation.collectionRecommendationType.getter(&v9);
  sub_1B51F4();
  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  sub_1B48D4(v13);
  v3 = CollectionRecommendation.mediaTypes.getter();
  sub_FF280(v3);

  v4 = sub_1B4AD4();
  v6 = v5;

  v14._countAndFlagsBits = v4;
  v14._object = v6;
  sub_1B48D4(v14);

  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  sub_1B48D4(v15);
  if (v1)
  {
    v7._countAndFlagsBits = 0;
  }

  else
  {
    v9 = 40;
    v10 = 0xE100000000000000;
    v16._countAndFlagsBits = sub_1B5594();
    sub_1B48D4(v16);

    v17._countAndFlagsBits = 41;
    v17._object = 0xE100000000000000;
    sub_1B48D4(v17);
    v7._countAndFlagsBits = v9;
    v2 = v10;
  }

  v7._object = v2;
  sub_1B48D4(v7);

  return v11;
}

uint64_t sub_107D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF736E6F69746164)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_107E10(uint64_t a1)
{
  v2 = sub_11C04C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_107E4C(uint64_t a1)
{
  v2 = sub_11C04C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CollectionRecommendationResponse.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C800, &qword_1C7030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_11C04C();

  sub_1B5884();
  v11[1] = v8;
  sub_2B0C(&qword_22C810, &qword_1C7038);
  sub_11C0A0(&qword_22C818, &qword_22C820);
  sub_1B5544();

  return (*(v4 + 8))(v7, v3);
}

uint64_t CollectionRecommendationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22C828, &qword_1C7040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_11C04C();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_22C810, &qword_1C7038);
    sub_11C0A0(&qword_22C830, &qword_22C838);
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_2BF8(a1);
}

uint64_t InternalCollectionRecommendationResponse.bookClusteringRequest.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x4B0uLL);
  memcpy(a1, (v1 + 24), 0x4B0uLL);
  return sub_43050(__dst, v4, &qword_22C840, &qword_1C7048);
}

void *InternalCollectionRecommendationResponse.bookClusteringRequest.setter(const void *a1)
{
  memcpy(__dst, (v1 + 24), 0x4B0uLL);
  sub_42F48(__dst, &qword_22C840, &qword_1C7048);
  return memcpy((v1 + 24), a1, 0x4B0uLL);
}

uint64_t InternalCollectionRecommendationResponse.bookClusteringResult.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 1224);
  v3 = *(v1 + 1232);
  *a1 = v2;
  a1[1] = v3;
  return sub_11C184(v2);
}

uint64_t InternalCollectionRecommendationResponse.bookClusteringResult.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 1232);
  result = sub_11C1C4(*(v1 + 1224));
  *(v1 + 1224) = v2;
  *(v1 + 1232) = v3;
  return result;
}

unint64_t sub_10834C()
{
  v1 = *v0;
  v2 = 0x6E656D6D6F636572;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001FLL;
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

uint64_t sub_108408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11F50C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_108430(uint64_t a1)
{
  v2 = sub_11C204();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10846C(uint64_t a1)
{
  v2 = sub_11C204();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InternalCollectionRecommendationResponse.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22C848, &qword_1C7050);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v18 = v1[2];
  v19 = v8;
  memcpy(v25, v1 + 3, 0x4B0uLL);
  v10 = v1[154];
  v16 = v1[153];
  v17 = v10;
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_11C204();

  sub_1B5884();
  v24[0] = v9;
  v23[0] = 0;
  sub_2B0C(&qword_22C810, &qword_1C7038);
  sub_11C0A0(&qword_22C818, &qword_22C820);
  v12 = v26;
  sub_1B5544();
  if (v12)
  {
  }

  else
  {
    v13 = v18;

    v24[0] = v19;
    v23[0] = 1;
    sub_2B0C(&qword_22C858, &qword_1C7058);
    sub_11C258(&qword_22C860, &qword_22C868);
    sub_1B54B4();
    v24[0] = v13;
    v23[0] = 2;
    sub_2B0C(&qword_22A410, &qword_1C0110);
    sub_11C2F4();
    sub_1B54B4();
    memcpy(v24, v25, sizeof(v24));
    v23[1207] = 3;
    sub_43050(v25, v23, &qword_22C840, &qword_1C7048);
    sub_11C488();
    sub_1B54B4();
    memcpy(v23, v24, 0x4B0uLL);
    sub_42F48(v23, &qword_22C840, &qword_1C7048);
    v21 = v16;
    v22 = v17;
    v20 = 4;
    sub_11C184(v16);
    sub_11C4DC();
    sub_1B54B4();
    sub_11C1C4(v21);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InternalCollectionRecommendationResponse.init(from:)(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v22 = sub_2B0C(&qword_22C8A0, &qword_1C7060);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v20 - v7;
  sub_11C530(v29);
  memcpy(v28, v29, sizeof(v28));
  v9 = v2[4];
  sub_2698(v2, v2[3]);
  sub_11C204();
  sub_1B5864();
  if (v1)
  {
    sub_2BF8(v2);
    memcpy(v24, v28, 0x4B0uLL);
    sub_42F48(v24, &qword_22C840, &qword_1C7048);
    return sub_11C1C4(0);
  }

  else
  {
    v10 = v5;
    v11 = v4;
    sub_2B0C(&qword_22C810, &qword_1C7038);
    LOBYTE(v23[0]) = 0;
    sub_11C0A0(&qword_22C830, &qword_22C838);
    v12 = v22;
    sub_1B5404();
    v21 = v24[0];
    sub_2B0C(&qword_22C858, &qword_1C7058);
    LOBYTE(v23[0]) = 1;
    sub_11C258(&qword_22C8A8, &qword_22C8B0);
    sub_1B5374();
    v13 = v10;
    v20 = v24[0];
    sub_2B0C(&qword_22A410, &qword_1C0110);
    LOBYTE(v23[0]) = 2;
    sub_11C538();
    sub_1B5374();
    v14 = v24[0];
    v29[1223] = 3;
    sub_11C6CC();
    sub_1B5374();
    memcpy(v25, v27, sizeof(v25));
    memcpy(v26, v28, sizeof(v26));
    sub_42F48(v26, &qword_22C840, &qword_1C7048);
    memcpy(v28, v25, sizeof(v28));
    v29[1222] = 4;
    sub_11C720();
    sub_1B5374();
    (*(v13 + 8))(v8, v12);
    v15 = v24[155];
    v16 = v24[156];
    sub_11C1C4(0);
    v17 = v20;
    v18 = v21;
    v23[0] = v21;
    v23[1] = v20;
    v23[2] = v14;
    memcpy(&v23[3], v25, 0x4B0uLL);
    v23[153] = v15;
    v23[154] = v16;
    memcpy(v11, v23, 0x4D8uLL);
    sub_11C774(v23, v24);
    sub_2BF8(v2);
    v24[0] = v18;
    v24[1] = v17;
    v24[2] = v14;
    memcpy(&v24[3], v25, 0x4B0uLL);
    v24[153] = v15;
    v24[154] = v16;
    return sub_11C7AC(v24);
  }
}

uint64_t sub_108DD4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 9336) = v2;
  *(v3 + 9328) = a1;
  v5 = type metadata accessor for CollectionRecommendation(0);
  *(v3 + 9344) = v5;
  v6 = *(v5 - 8);
  *(v3 + 9352) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 9360) = swift_task_alloc();
  *(v3 + 9368) = swift_task_alloc();
  *(v3 + 9376) = swift_task_alloc();
  v8 = sub_1B4644();
  *(v3 + 9384) = v8;
  v9 = *(v8 - 8);
  *(v3 + 9392) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 9400) = swift_task_alloc();
  v11 = sub_2B0C(&qword_228460, &qword_1B6370);
  *(v3 + 9408) = v11;
  v12 = *(v11 - 8);
  *(v3 + 9416) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 9424) = swift_task_alloc();
  v14 = a2[9];
  *(v3 + 7880) = a2[8];
  *(v3 + 7896) = v14;
  *(v3 + 7907) = *(a2 + 155);
  v15 = a2[5];
  *(v3 + 7816) = a2[4];
  *(v3 + 7832) = v15;
  v16 = a2[7];
  *(v3 + 7848) = a2[6];
  *(v3 + 7864) = v16;
  v17 = a2[1];
  *(v3 + 7752) = *a2;
  *(v3 + 7768) = v17;
  v18 = a2[3];
  *(v3 + 7784) = a2[2];
  *(v3 + 7800) = v18;

  return _swift_task_switch(sub_108FB8, 0, 0);
}

uint64_t sub_108FB8()
{
  v24 = v0;
  sub_1B4234();
  if (sub_1B4224())
  {
    v1 = *(v0 + 7896);
    *(v0 + 8584) = *(v0 + 7880);
    *(v0 + 8600) = v1;
    *(v0 + 8611) = *(v0 + 7907);
    v2 = *(v0 + 7832);
    *(v0 + 8520) = *(v0 + 7816);
    *(v0 + 8536) = v2;
    v3 = *(v0 + 7864);
    *(v0 + 8552) = *(v0 + 7848);
    *(v0 + 8568) = v3;
    v4 = *(v0 + 7768);
    *(v0 + 8456) = *(v0 + 7752);
    *(v0 + 8472) = v4;
    v5 = *(v0 + 7800);
    *(v0 + 8488) = *(v0 + 7784);
    *(v0 + 8504) = v5;
    sub_101924(v0 + 7752, v0 + 8632);
    v6 = sub_1B4834();
    v8 = v7;
    v9 = sub_1B4894();
    if (v9 >= 1)
    {
      v10 = v9;
      v11 = 0;
      do
      {
        v12 = *(v0 + 9336);
        v13 = v11 + 1000;
        v14 = __OFADD__(v11, 1000);
        v23 = v11;
        sub_10CD10(&v23, v6, v8);
        if (v14)
        {
          break;
        }

        v11 += 1000;
      }

      while (v13 < v10);
    }
  }

  v15 = *(v0 + 9336);
  v16 = v15[5];
  v17 = v15[6];
  sub_2698(v15 + 2, v16);
  v18 = *(v17 + 16);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v0 + 9432) = v20;
  *v20 = v0;
  v20[1] = sub_1091C8;

  return v22(v0 + 4576, v16, v17);
}

uint64_t sub_1091C8()
{
  v2 = *(*v1 + 9432);
  v5 = *v1;
  *(*v1 + 9440) = v0;

  if (v0)
  {
    v3 = sub_10BFAC;
  }

  else
  {
    v3 = sub_1092DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1092DC()
{
  v60 = v0;
  v1 = *(v0 + 9336);
  memcpy((v0 + 3456), (v0 + 4576), 0x460uLL);
  v2 = *(v0 + 7896);
  v52[10] = *(v0 + 7880);
  v53[0] = v2;
  *(v53 + 11) = *(v0 + 7907);
  v3 = *(v0 + 7832);
  v52[6] = *(v0 + 7816);
  v52[7] = v3;
  v4 = *(v0 + 7864);
  v52[8] = *(v0 + 7848);
  v52[9] = v4;
  v5 = *(v0 + 7768);
  v52[2] = *(v0 + 7752);
  v52[3] = v5;
  v6 = *(v0 + 7800);
  v52[4] = *(v0 + 7784);
  v52[5] = v6;
  v7 = *(v0 + 5144);
  v9 = *(v0 + 5160);
  v8 = *(v0 + 5176);
  *(v0 + 9096) = v9;
  *(v0 + 9112) = v8;
  *(v0 + 9121) = *(v0 + 5185);
  v10 = *(v0 + 5112);
  *(v0 + 9032) = *(v0 + 5096);
  *(v0 + 9048) = v10;
  v11 = *(v0 + 5144);
  v13 = *(v0 + 5096);
  v12 = *(v0 + 5112);
  v14 = *(v0 + 5128);
  *(v0 + 9064) = v14;
  *(v0 + 9080) = v11;
  v15 = *(v0 + 5176);
  v58 = v9;
  v59[0] = v15;
  *(v59 + 9) = *(v0 + 5185);
  v54 = v13;
  v55 = v12;
  v56 = v14;
  v57 = v7;
  sub_71E60(v0 + 9032, v0 + 8808);
  v16 = sub_10CEDC(&v43, &v54);
  *(v0 + 9448) = v16;
  v17 = v59[0];
  *(v0 + 8984) = v58;
  *(v0 + 9000) = v17;
  *(v0 + 9009) = *(v59 + 9);
  v18 = v55;
  *(v0 + 8920) = v54;
  *(v0 + 8936) = v18;
  v19 = v57;
  *(v0 + 8952) = v56;
  *(v0 + 8968) = v19;
  sub_725F0(v0 + 8920);
  v20 = v52[0];
  v21 = v51;
  v22 = v52[0];
  *(v0 + 8232) = v51;
  *(v0 + 8248) = v20;
  *(v0 + 8259) = *(v52 + 11);
  v23 = v48;
  v24 = v47;
  v25 = v48;
  *(v0 + 8168) = v47;
  *(v0 + 8184) = v23;
  v26 = v50;
  v28 = v49;
  v27 = v50;
  *(v0 + 8200) = v49;
  *(v0 + 8216) = v26;
  v29 = v44;
  v30 = v43;
  v31 = v44;
  *(v0 + 8104) = v43;
  *(v0 + 8120) = v29;
  v32 = v46;
  v34 = v45;
  v33 = v46;
  *(v0 + 8136) = v45;
  *(v0 + 8152) = v32;
  *(v0 + 7512) = v21;
  *(v0 + 7528) = v22;
  *(v0 + 7539) = *(v52 + 11);
  *(v0 + 7448) = v24;
  *(v0 + 7464) = v25;
  *(v0 + 7480) = v28;
  *(v0 + 7496) = v27;
  *(v0 + 7384) = v30;
  *(v0 + 7400) = v31;
  *(v0 + 7416) = v34;
  *(v0 + 7432) = v33;
  *(v0 + 7560) = v16;
  *(v0 + 9304) = _swiftEmptyArrayStorage;
  *(v0 + 9288) = _swiftEmptySetSingleton;
  v35 = *(v0 + 3880);
  v36 = v1[31];
  v37 = v1[32];
  sub_2698(v1 + 28, v36);
  memcpy((v0 + 1216), (v0 + 3456), 0x460uLL);
  v38 = *(v37 + 8);
  v42 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 9456) = v40;
  *v40 = v0;
  v40[1] = sub_1095D8;

  return v42(v0 + 1216, v35, v36, v37);
}

uint64_t sub_1095D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 9456);
  v7 = *v2;
  *(v3 + 9464) = a1;
  *(v3 + 9472) = v1;

  if (v1)
  {
    sub_42F48(v3 + 7384, &qword_22CD40, &unk_1C9160);
    v5 = sub_10C050;
  }

  else
  {
    v5 = sub_10970C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10970C()
{
  v50 = v0;
  v1 = v0[1183];
  v2 = v0[1167];
  v0[1185] = OBJC_IVAR____TtC20BooksPersonalization39InternalCollectionRecommendationService_logger;

  v3 = sub_1B4624();
  v4 = sub_1B4DB4();

  v48 = v0;
  v44 = v0 + 512;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[1183];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v49 = v7;
    *v6 = 136315138;
    v8 = sub_10D63C(v5);
    v10 = sub_60FF4(v8, v9, &v49);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "seedBooksByID=%s", v6, 0xCu);
    sub_2BF8(v7);
  }

  v11 = v0[1177];
  v12 = sub_15A438(v0[1183]);

  sub_2B0C(&qword_228468, &qword_1B6378);
  result = sub_1B5294();
  v14 = result;
  v15 = 0;
  v0[1186] = result;
  v17 = v12 + 64;
  v16 = *(v12 + 64);
  v46 = result;
  v47 = v12;
  v18 = 1 << *(v12 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v45 = result + 64;
  if ((v19 & v16) != 0)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_12:
      v25 = v22 | (v15 << 6);
      v26 = v0[1178];
      v27 = v48[1176];
      v28 = *(*(v47 + 48) + v25);
      (*(v11 + 16))(v26, *(v47 + 56) + *(v11 + 72) * v25, v27);
      sub_1B4394();
      v0 = v48;
      result = (*(v11 + 8))(v26, v27);
      *(v45 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(v46[6] + v25) = v28;
      *(v46[7] + 8 * v25) = v48[1162];
      v29 = v46[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v14 = v46;
      v46[2] = v31;
      if (!v20)
      {
        goto LABEL_7;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_7:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v21)
      {
        break;
      }

      v24 = *(v17 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    v32 = sub_1B4624();
    v33 = sub_1B4DB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = 136315650;
      *(v34 + 4) = sub_60FF4(0x6E656D6D6F636572, 0xEF293A726F662864, &v49);
      *(v34 + 12) = 2048;
      v36 = *(v14 + 16);
      if (v36)
      {
        v37 = sub_3A9D8(0);
        if (v38)
        {
          v36 = *(*(*(v14 + 56) + 8 * v37) + 16);
        }

        else
        {
          v36 = 0;
        }
      }

      *(v34 + 14) = v36;
      *(v34 + 22) = 2048;
      v39 = *(v14 + 16);
      if (v39)
      {
        v40 = sub_3A9D8(1);
        if (v41)
        {
          v39 = *(*(*(v14 + 56) + 8 * v40) + 16);
        }

        else
        {
          v39 = 0;
        }
      }

      *(v34 + 24) = v39;

      _os_log_impl(&dword_0, v32, v33, "%s\nseed books=%ld\nseed audiobooks=%ld", v34, 0x20u);
      sub_2BF8(v35);

      v0 = v48;
    }

    else
    {
    }

    v42 = *(v0[1167] + 96);
    memcpy(v0 + 712, v0 + 432, 0x460uLL);
    *(v44 + 3281) = *(v44 + 3792);
    v43 = swift_task_alloc();
    v0[1187] = v43;
    *v43 = v0;
    v43[1] = sub_109C04;

    return sub_132A78(v14, (v0 + 712), v44 + 3281);
  }

  return result;
}

uint64_t sub_109C04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 9496);
  v6 = *v2;
  *(v4 + 9504) = a1;
  *(v4 + 9512) = v1;

  v7 = *(v3 + 9488);
  if (v1)
  {
    sub_42F48(v4 + 7384, &qword_22CD40, &unk_1C9160);

    v8 = sub_10C0FC;
  }

  else
  {

    v8 = sub_109D6C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_109D6C()
{
  v99 = v0;
  v1 = (v0 + 9144);
  v2 = *(v0 + 9448);
  *(v0 + 9176) = 0;
  *(v0 + 9144) = 0u;
  *(v0 + 9160) = 0u;
  sub_43050(v0 + 7384, v0 + 7568, &qword_22CD40, &unk_1C9160);

  v3 = *(v0 + 8248);
  *(v0 + 8056) = *(v0 + 8232);
  *(v0 + 8072) = v3;
  *(v0 + 8083) = *(v0 + 8259);
  v4 = *(v0 + 8184);
  *(v0 + 7992) = *(v0 + 8168);
  *(v0 + 8008) = v4;
  v5 = *(v0 + 8216);
  *(v0 + 8024) = *(v0 + 8200);
  *(v0 + 8040) = v5;
  v6 = *(v0 + 8120);
  *(v0 + 7928) = *(v0 + 8104);
  *(v0 + 7944) = v6;
  v7 = *(v0 + 8152);
  *(v0 + 7960) = *(v0 + 8136);
  *(v0 + 7976) = v7;
  if (sub_72A74(v0 + 7928) == 1)
  {
    *(v0 + 9536) = 0;
    v8 = *(v0 + 9448);
    if (v8)
    {
      if (*(v8 + 16))
      {
        v96 = *(v0 + 9504);
        v9 = *(v0 + 9480);
        v10 = *(v0 + 9400);
        v11 = *(v0 + 9392);
        v12 = *(v0 + 9384);
        v13 = *(v0 + 9336);
        v94 = *(v0 + 9288);
        sub_2B0C(&qword_22CD50, &unk_1C9178);
        v14 = swift_allocObject();
        *(v0 + 9544) = v14;
        *(v14 + 16) = xmmword_1C00D0;
        *(v14 + 32) = 1;
        *(v14 + 40) = sub_A0D1C(&off_2134A8);
        *(v14 + 48) = 2;
        *(v14 + 56) = sub_A0D1C(&off_2134D0);
        *(v14 + 64) = 4;
        *(v14 + 72) = sub_A0D1C(&off_2134F8);
        *(v14 + 80) = 5;
        *(v14 + 88) = sub_A0D1C(&off_213520);
        sub_404C4(v13 + 264, v0 + 9184);
        (*(v11 + 16))(v10, v13 + v9, v12);
        v15 = sub_2B0C(&qword_22B498, &qword_1C3A60);
        v16 = sub_2B0C(&qword_22C810, &qword_1C7038);
        v17 = swift_task_alloc();
        *(v0 + 9552) = v17;
        v17[2] = v14;
        v17[3] = v8;
        v17[4] = v96;
        v17[5] = v94;
        v17[6] = v0 + 9184;
        v17[7] = v0 + 3456;
        v17[8] = v10;
        v18 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
        v19 = swift_task_alloc();
        *(v0 + 9560) = v19;
        *v19 = v0;
        v19[1] = sub_10B64C;
        v101 = v16;

        return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 9312, v15, v16, 0, 0, &unk_1C9190, v17, v15);
      }

      v30 = *(v0 + 9504);

      sub_2B54(v0 + 3456);
      sub_5F428(_swiftEmptyArrayStorage);
    }

    else
    {
      v29 = *(v0 + 9504);

      sub_2B54(v0 + 3456);
    }

    v31 = *(v0 + 9304);
    v32 = *(v31 + 16);
    if (*(v0 + 9536))
    {
      if (!v32)
      {
        v33 = *(v0 + 9288);

        swift_willThrow();
        sub_42F48(v0 + 9144, &qword_22CD48, &qword_1C9170);
        v34 = *(v0 + 9424);
        v35 = *(v0 + 9400);
        v36 = *(v0 + 9376);
        v37 = *(v0 + 9368);
        v38 = *(v0 + 9360);

        v39 = *(v0 + 8);
LABEL_39:

        return v39();
      }
    }

    else if (!v32)
    {
      v41 = _swiftEmptyArrayStorage;
      goto LABEL_28;
    }

    v40 = *(v0 + 9352);
    *&v98 = _swiftEmptyArrayStorage;
    sub_375B4(0, v32, 0);
    v41 = _swiftEmptyArrayStorage;
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = v31 + v42;
    v44 = *(v40 + 72);
    while (2)
    {
      v45 = *(v0 + 9368);
      v46 = *(v0 + 9360);
      v47 = *(v0 + 9344);
      sub_FF9B8(v43, v45);
      sub_FF9B8(v45, v46);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v48 = *(v0 + 9360);
          v57 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy((v0 + 6816), (v48 + *(v57 + 48)), 0x231uLL);
          sub_2601C(v0 + 6816);
          v58 = *(v48 + *(v57 + 64));

          goto LABEL_20;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v48 = *(v0 + 9360);
LABEL_20:
          v49 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v49 - 8) + 8))(v48, v49);
          goto LABEL_21;
        case 8u:
          v53 = *(v0 + 9376);
          v54 = *(v0 + 9368);
          v55 = *(v0 + 9360);
          v56 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v56 - 8) + 8))(v55, v56);
          sub_10E834(v53);
          sub_5DC0C(v54);
          goto LABEL_22;
        default:
          sub_5DC0C(*(v0 + 9360));
LABEL_21:
          sub_11FE3C(*(v0 + 9368), *(v0 + 9376), type metadata accessor for CollectionRecommendation);
LABEL_22:
          *&v98 = v41;
          v51 = v41[2];
          v50 = v41[3];
          if (v51 >= v50 >> 1)
          {
            sub_375B4(v50 > 1, v51 + 1, 1);
            v41 = v98;
          }

          v52 = *(v0 + 9376);
          v41[2] = v51 + 1;
          sub_11FE3C(v52, v41 + v42 + v51 * v44, type metadata accessor for CollectionRecommendation);
          v43 += v44;
          if (--v32)
          {
            continue;
          }

          v1 = (v0 + 9144);
          break;
      }

      break;
    }

LABEL_28:
    v59 = *(v0 + 9288);

    v60 = *(v0 + 9168);
    if (v60)
    {
      v61 = *(v0 + 9176);
      v62 = sub_2698(v1, *(v0 + 9168));
      v63 = *(v60 - 8);
      v64 = *(v63 + 64) + 15;
      v65 = swift_task_alloc();
      (*(v63 + 16))(v65, v62, v60);
      v97 = (*(v61 + 32))(v60, v61);
      (*(v63 + 8))(v65, v60);

      v66 = *(v0 + 9168);
      if (v66)
      {
        v67 = *(v0 + 9176);
        v68 = sub_2698(v1, *(v0 + 9168));
        v69 = *(v66 - 8);
        v70 = *(v69 + 64) + 15;
        v71 = swift_task_alloc();
        (*(v69 + 16))(v71, v68, v66);
        v60 = (*(v67 + 40))(v66, v67);
        (*(v69 + 8))(v71, v66);

        v72 = *(v0 + 9168);
        if (v72)
        {
          v73 = *(v0 + 9176);
          v74 = sub_2698(v1, *(v0 + 9168));
          v75 = *(v72 - 8);
          v76 = *(v75 + 64) + 15;
          v77 = swift_task_alloc();
          (*(v75 + 16))(v77, v74, v72);
          (*(v73 + 16))(v72, v73);
          (*(v75 + 8))(v77, v72);

LABEL_35:
          v78 = *(v0 + 9168);
          v79 = *(v0 + 9536);
          if (v78)
          {
            v80 = *(v0 + 9176);
            v81 = sub_2698(v1, *(v0 + 9168));
            v82 = v1;
            v83 = *(v78 - 8);
            v84 = *(v83 + 64) + 15;
            v85 = swift_task_alloc();
            (*(v83 + 16))(v85, v81, v78);
            (*(v80 + 24))(&v98, v78, v80);

            (*(v83 + 8))(v85, v78);
            v95 = v98;
          }

          else
          {
            v86 = *(v0 + 9536);

            v95 = 0u;
            v82 = v1;
          }

          v87 = *(v0 + 9424);
          v88 = *(v0 + 9400);
          v89 = *(v0 + 9376);
          v90 = *(v0 + 9368);
          v91 = *(v0 + 9360);
          v92 = *(v0 + 9328);
          *v92 = v41;
          *(v92 + 8) = v97;
          *(v92 + 16) = v60;
          memcpy((v92 + 24), (v0 + 16), 0x4B0uLL);
          *(v92 + 1224) = v95;
          sub_42F48(v82, &qword_22CD48, &qword_1C9170);

          v39 = *(v0 + 8);
          goto LABEL_39;
        }
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v97 = 0;
    }

    sub_11C530((v0 + 16));
    goto LABEL_35;
  }

  v20 = *(v0 + 8072);
  *(v0 + 8408) = *(v0 + 8056);
  *(v0 + 8424) = v20;
  *(v0 + 8435) = *(v0 + 8083);
  v21 = *(v0 + 8008);
  *(v0 + 8344) = *(v0 + 7992);
  *(v0 + 8360) = v21;
  v22 = *(v0 + 8040);
  *(v0 + 8376) = *(v0 + 8024);
  *(v0 + 8392) = v22;
  v23 = *(v0 + 7944);
  *(v0 + 8280) = *(v0 + 7928);
  *(v0 + 8296) = v23;
  v24 = *(v0 + 7976);
  *(v0 + 8312) = *(v0 + 7960);
  *(v0 + 8328) = v24;
  memcpy((v0 + 2336), (v0 + 3456), 0x460uLL);
  *(v0 + 9248) = &type metadata for InternalCollectionRecommendationResponse;
  *(v0 + 9256) = sub_11FADC();
  v25 = swift_allocObject();
  *(v0 + 9224) = v25;
  v26 = swift_task_alloc();
  *(v0 + 9520) = v26;
  *v26 = v0;
  v26[1] = sub_10A8E8;
  v27 = *(v0 + 9504);
  v28 = *(v0 + 9336);

  return sub_10D8D0(v25 + 16, (v0 + 8280), (v0 + 2336), v27);
}

uint64_t sub_10A8E8()
{
  v2 = *v1;
  v3 = *(*v1 + 9520);
  v6 = *v1;
  *(*v1 + 9528) = v0;

  if (v0)
  {
    v4 = sub_10C1A8;
  }

  else
  {
    sub_42F48(v2 + 8104, &qword_22CD68, &unk_1C91A8);
    v4 = sub_10AA18;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10AA18()
{
  v97 = v0;
  sub_11FD10((v0 + 1153), (v0 + 1143));
  v1 = v0[1146];
  if (v1)
  {
    v2 = v0[1147];
    v3 = sub_2698(v0 + 1143, v0[1146]);
    v4 = *(v1 - 8);
    v5 = *(v4 + 64) + 15;
    v6 = swift_task_alloc();
    (*(v4 + 16))(v6, v3, v1);
    v7 = (*(*(v2 + 8) + 24))(v1);
    (*(v4 + 8))(v6, v1);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_5F428(v7);
  v8 = v0[1146];
  if (v8)
  {
    v9 = v0[1147];
    v10 = sub_2698(v0 + 1143, v0[1146]);
    v11 = *(v8 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    (*(v11 + 16))(v13, v10, v8);
    (*(v9 + 24))(&v96, v8, v9);
    (*(v11 + 8))(v13, v8);
    v14 = v96;
    if (v96)
    {
      v15 = *(&v96 + 1);

      sub_11C1C4(v14);

      sub_492E8(v15);
      sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
    }

    else
    {
      sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
    }
  }

  else
  {
    sub_42F48((v0 + 1013), &qword_22CD68, &unk_1C91A8);
  }

  v0[1192] = 0;
  v16 = v0[1181];
  if (v16)
  {
    if (*(v16 + 16))
    {
      v94 = v0[1188];
      v17 = v0[1185];
      v18 = v0[1175];
      v19 = v0[1174];
      v20 = v0[1173];
      v21 = v0[1167];
      v92 = v0[1161];
      sub_2B0C(&qword_22CD50, &unk_1C9178);
      v22 = swift_allocObject();
      v0[1193] = v22;
      *(v22 + 16) = xmmword_1C00D0;
      *(v22 + 32) = 1;
      *(v22 + 40) = sub_A0D1C(&off_2134A8);
      *(v22 + 48) = 2;
      *(v22 + 56) = sub_A0D1C(&off_2134D0);
      *(v22 + 64) = 4;
      *(v22 + 72) = sub_A0D1C(&off_2134F8);
      *(v22 + 80) = 5;
      *(v22 + 88) = sub_A0D1C(&off_213520);
      sub_404C4(v21 + 264, (v0 + 1148));
      (*(v19 + 16))(v18, v21 + v17, v20);
      v23 = sub_2B0C(&qword_22B498, &qword_1C3A60);
      v24 = sub_2B0C(&qword_22C810, &qword_1C7038);
      v25 = swift_task_alloc();
      v0[1194] = v25;
      v25[2] = v22;
      v25[3] = v16;
      v25[4] = v94;
      v25[5] = v92;
      v25[6] = v0 + 1148;
      v25[7] = v0 + 432;
      v25[8] = v18;
      v26 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
      v27 = swift_task_alloc();
      v0[1195] = v27;
      *v27 = v0;
      v27[1] = sub_10B64C;
      v99 = v24;

      return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1164, v23, v24, 0, 0, &unk_1C9190, v25, v23);
    }

    v29 = v0[1188];

    sub_2B54((v0 + 432));
    sub_5F428(_swiftEmptyArrayStorage);
  }

  else
  {
    v28 = v0[1188];

    sub_2B54((v0 + 432));
  }

  v30 = v0[1163];
  v31 = *(v30 + 16);
  if (!v0[1192])
  {
    if (v31)
    {
      goto LABEL_20;
    }

    v40 = _swiftEmptyArrayStorage;
LABEL_32:
    v58 = v0[1161];

    v59 = v0[1146];
    if (v59)
    {
      v60 = v0[1147];
      v61 = sub_2698(v0 + 1143, v0[1146]);
      v62 = *(v59 - 8);
      v63 = *(v62 + 64) + 15;
      v64 = swift_task_alloc();
      (*(v62 + 16))(v64, v61, v59);
      v95 = (*(v60 + 32))(v59, v60);
      (*(v62 + 8))(v64, v59);

      v65 = v0[1146];
      if (v65)
      {
        v66 = v0[1147];
        v67 = sub_2698(v0 + 1143, v0[1146]);
        v68 = *(v65 - 8);
        v69 = *(v68 + 64) + 15;
        v70 = swift_task_alloc();
        (*(v68 + 16))(v70, v67, v65);
        v59 = (*(v66 + 40))(v65, v66);
        (*(v68 + 8))(v70, v65);

        v71 = v0[1146];
        if (v71)
        {
          v72 = v0[1147];
          v73 = sub_2698(v0 + 1143, v0[1146]);
          v74 = *(v71 - 8);
          v75 = *(v74 + 64) + 15;
          v76 = swift_task_alloc();
          (*(v74 + 16))(v76, v73, v71);
          (*(v72 + 16))(v71, v72);
          (*(v74 + 8))(v76, v71);

LABEL_39:
          v77 = v0[1146];
          v78 = v0[1192];
          if (v77)
          {
            v79 = v0[1147];
            v80 = sub_2698(v0 + 1143, v0[1146]);
            v81 = *(v77 - 8);
            v82 = *(v81 + 64) + 15;
            v83 = swift_task_alloc();
            (*(v81 + 16))(v83, v80, v77);
            (*(v79 + 24))(&v96, v77, v79);

            (*(v81 + 8))(v83, v77);
            v93 = v96;
          }

          else
          {
            v84 = v0[1192];

            v93 = 0u;
          }

          v85 = v0[1178];
          v86 = v0[1175];
          v87 = v0[1172];
          v88 = v0[1171];
          v89 = v0[1170];
          v90 = v0[1166];
          *v90 = v40;
          *(v90 + 8) = v95;
          *(v90 + 16) = v59;
          memcpy((v90 + 24), v0 + 2, 0x4B0uLL);
          *(v90 + 1224) = v93;
          sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

          v38 = v0[1];
          goto LABEL_43;
        }
      }

      else
      {
        v59 = 0;
      }
    }

    else
    {
      v95 = 0;
    }

    sub_11C530(v0 + 2);
    goto LABEL_39;
  }

  if (v31)
  {
LABEL_20:
    v39 = v0[1169];
    *&v96 = _swiftEmptyArrayStorage;
    sub_375B4(0, v31, 0);
    v40 = v96;
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = v30 + v41;
    v43 = *(v39 + 72);
    while (2)
    {
      v44 = v0[1171];
      v45 = v0[1170];
      v46 = v0[1168];
      sub_FF9B8(v42, v44);
      sub_FF9B8(v44, v45);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v47 = v0[1170];
          v56 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v0 + 852, (v47 + *(v56 + 48)), 0x231uLL);
          sub_2601C((v0 + 852));
          v57 = *(v47 + *(v56 + 64));

          goto LABEL_24;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v47 = v0[1170];
LABEL_24:
          v48 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v48 - 8) + 8))(v47, v48);
          goto LABEL_25;
        case 8u:
          v52 = v0[1172];
          v53 = v0[1171];
          v54 = v0[1170];
          v55 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v55 - 8) + 8))(v54, v55);
          sub_10E834(v52);
          sub_5DC0C(v53);
          goto LABEL_26;
        default:
          sub_5DC0C(v0[1170]);
LABEL_25:
          sub_11FE3C(v0[1171], v0[1172], type metadata accessor for CollectionRecommendation);
LABEL_26:
          *&v96 = v40;
          v50 = v40[2];
          v49 = v40[3];
          if (v50 >= v49 >> 1)
          {
            sub_375B4(v49 > 1, v50 + 1, 1);
            v40 = v96;
          }

          v51 = v0[1172];
          v40[2] = v50 + 1;
          sub_11FE3C(v51, v40 + v41 + v50 * v43, type metadata accessor for CollectionRecommendation);
          v42 += v43;
          if (!--v31)
          {
            goto LABEL_32;
          }

          continue;
      }
    }
  }

  v32 = v0[1161];

  swift_willThrow();
  sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);
  v33 = v0[1178];
  v34 = v0[1175];
  v35 = v0[1172];
  v36 = v0[1171];
  v37 = v0[1170];

  v38 = v0[1];
LABEL_43:

  return v38();
}

uint64_t sub_10B64C()
{
  v1 = *(*v0 + 9560);
  v2 = *(*v0 + 9552);
  v3 = *(*v0 + 9544);
  v6 = *v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  sub_2B0C(&qword_22CD58, &qword_1C9198);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10B7C0, 0, 0);
}

uint64_t sub_10B7C0()
{
  v69 = v0;
  v1 = v0[1164];
  (*(v0[1174] + 8))(v0[1175], v0[1173]);
  sub_2BF8(v0 + 1148);
  v2 = v0[1188];
  v3 = v0[1181];

  sub_2B54((v0 + 432));
  sub_5F428(v1);
  v4 = v0[1163];
  v5 = *(v4 + 16);
  if (!v0[1192])
  {
    if (v5)
    {
      goto LABEL_5;
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_17:
    v32 = v0[1161];

    v33 = v0[1146];
    if (v33)
    {
      v34 = v0[1147];
      v35 = sub_2698(v0 + 1143, v0[1146]);
      v36 = *(v33 - 8);
      v37 = *(v36 + 64) + 15;
      v38 = swift_task_alloc();
      (*(v36 + 16))(v38, v35, v33);
      v67 = (*(v34 + 32))(v33, v34);
      (*(v36 + 8))(v38, v33);

      v39 = v0[1146];
      if (v39)
      {
        v40 = v0[1147];
        v41 = sub_2698(v0 + 1143, v0[1146]);
        v42 = *(v39 - 8);
        v43 = *(v42 + 64) + 15;
        v44 = swift_task_alloc();
        (*(v42 + 16))(v44, v41, v39);
        v33 = (*(v40 + 40))(v39, v40);
        (*(v42 + 8))(v44, v39);

        v45 = v0[1146];
        if (v45)
        {
          v46 = v0[1147];
          v47 = sub_2698(v0 + 1143, v0[1146]);
          v48 = *(v45 - 8);
          v49 = *(v48 + 64) + 15;
          v50 = swift_task_alloc();
          (*(v48 + 16))(v50, v47, v45);
          (*(v46 + 16))(v45, v46);
          (*(v48 + 8))(v50, v45);

LABEL_24:
          v51 = v0[1146];
          v52 = v0[1192];
          if (v51)
          {
            v53 = v0[1147];
            v54 = sub_2698(v0 + 1143, v0[1146]);
            v55 = *(v51 - 8);
            v56 = *(v55 + 64) + 15;
            v57 = swift_task_alloc();
            (*(v55 + 16))(v57, v54, v51);
            (*(v53 + 24))(&v68, v51, v53);

            (*(v55 + 8))(v57, v51);
            v66 = v68;
          }

          else
          {
            v58 = v0[1192];

            v66 = 0u;
          }

          v59 = v0[1178];
          v60 = v0[1175];
          v61 = v0[1172];
          v62 = v0[1171];
          v63 = v0[1170];
          v64 = v0[1166];
          *v64 = v14;
          *(v64 + 8) = v67;
          *(v64 + 16) = v33;
          memcpy((v64 + 24), v0 + 2, 0x4B0uLL);
          *(v64 + 1224) = v66;
          sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);

          v12 = v0[1];
          goto LABEL_28;
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v67 = 0;
    }

    sub_11C530(v0 + 2);
    goto LABEL_24;
  }

  if (v5)
  {
LABEL_5:
    v13 = v0[1169];
    *&v68 = _swiftEmptyArrayStorage;
    sub_375B4(0, v5, 0);
    v14 = _swiftEmptyArrayStorage;
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = v4 + v15;
    v17 = *(v13 + 72);
    while (2)
    {
      v18 = v0[1171];
      v19 = v0[1170];
      v20 = v0[1168];
      sub_FF9B8(v16, v18);
      sub_FF9B8(v18, v19);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v21 = v0[1170];
          v30 = sub_2B0C(&qword_228F40, &unk_1BB360);
          memcpy(v0 + 852, (v21 + *(v30 + 48)), 0x231uLL);
          sub_2601C((v0 + 852));
          v31 = *(v21 + *(v30 + 64));

          goto LABEL_9;
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
          v21 = v0[1170];
LABEL_9:
          v22 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v22 - 8) + 8))(v21, v22);
          goto LABEL_10;
        case 8u:
          v26 = v0[1172];
          v27 = v0[1171];
          v28 = v0[1170];
          v29 = sub_2B0C(&qword_228F38, &qword_1BCB50);
          (*(*(v29 - 8) + 8))(v28, v29);
          sub_10E834(v26);
          sub_5DC0C(v27);
          goto LABEL_11;
        default:
          sub_5DC0C(v0[1170]);
LABEL_10:
          sub_11FE3C(v0[1171], v0[1172], type metadata accessor for CollectionRecommendation);
LABEL_11:
          *&v68 = v14;
          v24 = v14[2];
          v23 = v14[3];
          if (v24 >= v23 >> 1)
          {
            sub_375B4(v23 > 1, v24 + 1, 1);
            v14 = v68;
          }

          v25 = v0[1172];
          v14[2] = v24 + 1;
          sub_11FE3C(v25, v14 + v15 + v24 * v17, type metadata accessor for CollectionRecommendation);
          v16 += v17;
          if (!--v5)
          {
            goto LABEL_17;
          }

          continue;
      }
    }
  }

  v6 = v0[1161];

  swift_willThrow();
  sub_42F48((v0 + 1143), &qword_22CD48, &qword_1C9170);
  v7 = v0[1178];
  v8 = v0[1175];
  v9 = v0[1172];
  v10 = v0[1171];
  v11 = v0[1170];

  v12 = v0[1];
LABEL_28:

  return v12();
}