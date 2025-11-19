uint64_t sub_1002E4538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[24];
  v6[42] = a1;

  sub_10001036C(v7, &unk_1006E8E60);

  return _swift_task_switch(sub_1002E4690, 0, 0);
}

uint64_t sub_1002E4690()
{
  v1 = *(v0 + 336);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  if (v1)
  {
    v37 = *(v0 + 32);
    v39 = *(v0 + 336);
    v36 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    sub_10001036C(*(v0 + 248), &qword_1006E6D20);
    (*(v3 + 8))(v4, v5);
LABEL_9:

    v22 = *(v0 + 8);

    return v22(v39, v37, v36, v2);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 248);
  sub_100573208();
  if (*(v7 + v6) == *(v0 + 128))
  {
LABEL_6:
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_10001036C(*(v0 + 248), &qword_1006E6D20);
    (*(v17 + 8))(v16, v18);
    if (qword_1006E4FC8 != -1)
    {
      swift_once();
    }

    v19 = unk_1006FC920;
    v20 = qword_1006FC928;
    v21 = unk_1006FC930;
    v39 = qword_1006FC918;
    v37 = v19;
    v36 = v20;
    v2 = v21;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = *(v0 + 232);
    v40 = *(v0 + 224);
    v9 = *(v0 + 208);
    v35 = *(v0 + 200);
    v10 = sub_1005732E8();
    v11 = *(v9 + 16);
    v11(v8);
    v10(v0 + 96, 0);
    sub_100573218();
    (*(v9 + 32))(v40, v8, v35);
    v12 = sub_100571BD8();
    *(v0 + 304) = v13;
    if (v13)
    {
      break;
    }

    v14 = *(v0 + 392);
    v15 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    sub_100573208();
    if (*(v15 + v14) == *(v0 + 128))
    {
      goto LABEL_6;
    }
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 396);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v0 + 200);
  v38 = v13;
  v41 = v12;
  (v11)(v27, *(v0 + 224), v28);
  v29 = (*(v26 + 88))(v27, v28);
  v31 = v29 != v25 && v29 == v24;
  v32 = *(v26 + 8);
  *(v0 + 312) = v32;
  *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v28);
  sub_100571C38();
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *v33 = v0;
  v33[1] = sub_1002E4538;
  v34 = *(v0 + 192);

  return sub_1002E4F28(v41, v38, v31, v34);
}

uint64_t sub_1002E4A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[7] = v4;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v7 = v5[24];
  v6[48] = a1;

  sub_10001036C(v7, &unk_1006E8E60);

  return _swift_task_switch(sub_1002E4BE4, 0, 0);
}

uint64_t sub_1002E4BE4()
{
  v1 = *(v0 + 384);
  if (!v1)
  {
    while (1)
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 360) + 1;
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      if (v9 == v8)
      {
        break;
      }

      v10 = *(v0 + 360) + 1;
      *(v0 + 360) = v10;
      v11 = *(v0 + 344);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_17:
        v27 = unk_1006FC920;
        v28 = qword_1006FC928;
        v29 = unk_1006FC930;
        v1 = qword_1006FC918;
        v33 = v27;
        v32 = v28;
        v31 = v29;
        goto LABEL_18;
      }

      (*(*(v0 + 176) + 16))(*(v0 + 184), v11 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v10, *(v0 + 168));
      v12 = sub_100572238();
      *(v0 + 368) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v0 + 408);
        v18 = *(v0 + 152);
        v17 = *(v0 + 160);
        v19 = *(v0 + 144);
        sub_100572218();
        v20 = (*(v18 + 88))(v17, v19);
        if (v20 != v16)
        {
          v21 = *(v0 + 412);
          if (v20 == v21 || v20 == *(v0 + 416))
          {
            v23 = v20 == v21;
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
            sub_100572288();
            v24 = swift_task_alloc();
            *(v0 + 376) = v24;
            *v24 = v0;
            v24[1] = sub_1002E4A8C;
            v25 = *(v0 + 192);

            return sub_1002E4F28(v15, v14, v23, v25);
          }
        }

        v6 = *(v0 + 152);
        v5 = *(v0 + 160);
        v7 = *(v0 + 144);

        (*(v6 + 8))(v5, v7);
      }
    }

    if (qword_1006E4FC8 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 72);
  v31 = *(v0 + 88);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v2 + 8))(v3, v4);
LABEL_18:

  v30 = *(v0 + 8);

  return v30(v1, v33, v32, v31);
}

uint64_t sub_1002E4F28(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 256) = a3;
  *(v4 + 16) = a1;
  sub_100009DCC(&unk_1006E8E60);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_100571E58();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1002E5040, 0, 0);
}

uint64_t sub_1002E5040()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_1002E8A9C(*(v0 + 32), v3);
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  *(v0 + 96) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 48), &unk_1006E8E60);
LABEL_16:
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_1002E5488;
    v16 = *(v0 + 40);
    v17 = *(v0 + 256);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    return sub_1002E59A0(v16, v18, v19, v17);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  v5 = sub_100571E08();
  *(v0 + 104) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_100571E18();
  *(v0 + 112) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  v9 = sub_100571E38();
  *(v0 + 120) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_100571E28();
  *(v0 + 128) = v11;
  if (!v11)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

    goto LABEL_14;
  }

  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_1002E52A0;

  return sub_1002E8F24(v6, v8, v10, v12);
}

uint64_t sub_1002E52A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  return _swift_task_switch(sub_1002E53A4, 0, 0);
}

uint64_t sub_1002E53A4()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_1002E5488()
{

  return _swift_task_switch(sub_1002E5584, 0, 0);
}

uint64_t sub_1002E5584()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if ((*(v0 + 88))(v2, 1, v1) == 1)
  {
    sub_10001036C(v2, &unk_1006E8E60);
LABEL_16:

    v13 = *(v0 + 8);

    return v13(0, 0, 0, 0);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 72), v2, v1);
  v3 = sub_100571E08();
  *(v0 + 184) = v3;
  if (!v3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_100571E18();
  *(v0 + 192) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_100571E38();
  *(v0 + 200) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_100571E28();
  *(v0 + 208) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    goto LABEL_14;
  }

  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_1002E57B8;

  return sub_1002E8F24(v4, v6, v8, v10);
}

uint64_t sub_1002E57B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;
  v5[31] = a4;

  return _swift_task_switch(sub_1002E58BC, 0, 0);
}

uint64_t sub_1002E58BC()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_1002E59A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 288) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = sub_100009DCC(&qword_1006E76F8);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DC0);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006E7700);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E7708);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E76A0);
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  sub_100009DCC(&qword_1006E6DB8);
  *(v4 + 176) = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E76A8);
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E76B0);
  *(v4 + 208) = v10;
  *(v4 + 216) = *(v10 - 8);
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1002E5CEC, 0, 0);
}

uint64_t sub_1002E5CEC()
{
  v20 = v0;
  if (qword_1006E4FE0 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  *(v0 + 232) = sub_10000C49C(v1, static Logger.playlistCovers);

  v2 = sub_10056DF68();
  v3 = sub_100573448();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    if (v4)
    {
      v6 = 0x697620636973756DLL;
    }

    else
    {
      v6 = 1735290739;
    }

    if (v4)
    {
      v7 = 0xEB000000006F6564;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = sub_1000C9784(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = sub_1005713B8();
    v11 = sub_1000C9784(v9, v10, &v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Media API request for %s with catalogID=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  if (*(v0 + 288) == 1)
  {
    swift_getKeyPath();
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 240) = sub_1005713A8();
    sub_1002E9C5C(&qword_1006E76B8, &type metadata accessor for MusicVideo);

    sub_1005710E8();
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_1002E60C4;
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    *(v0 + 264) = sub_100571A68();
    sub_1002E9C5C(&qword_1006E7710, &type metadata accessor for Song);

    sub_1005710E8();
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = sub_1002E6430;
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
  }

  return MusicCatalogResourceRequest.response()(v15, v16);
}

uint64_t sub_1002E60C4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1002E679C;
  }

  else
  {
    v2 = sub_1002E61D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E61D8()
{
  v1 = v0[30];
  v2 = v0[22];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  sub_1005711F8();
  sub_100156210(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[26];
    v10 = v0[22];
    v11 = v0[6];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v8 + 8))(v7, v9);
    sub_10001036C(v10, &qword_1006E6DB8);
    v12 = sub_100571E58();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[23];
    v19 = v0[24];
    v20 = v0[22];
    sub_100571398();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002E6430()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1002E6A48;
  }

  else
  {
    v2 = sub_1002E6544;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E6544()
{
  v1 = v0[33];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  sub_1005711F8();
  sub_100156240(v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[6];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    sub_10001036C(v10, &qword_1006E6DC0);
    v12 = sub_100571E58();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  else
  {
    v13 = v0[33];
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[13];
    v19 = v0[14];
    v20 = v0[12];
    sub_100571A48();
    (*(v19 + 8))(v17, v18);
    (*(v15 + 8))(v14, v16);
    (*(v6 + 8))(v20, v13);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002E679C()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  if (v3)
  {
    v19 = v0[28];
    v18 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_1005713B8();
    v12 = sub_1000C9784(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch music video from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_10001036C(v8, &qword_1006E7640);

    sub_100010474(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_100571E58();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002E6A48()
{
  v21 = v0;

  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  if (v3)
  {
    v19 = v0[18];
    v18 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136446466;
    v10 = sub_1005713B8();
    v12 = sub_1000C9784(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch song from Media API with catalogID=%{public}s: %@", v7, 0x16u);
    sub_10001036C(v8, &qword_1006E7640);

    sub_100010474(v9);

    (*(v5 + 8))(v19, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[6];
  v15 = sub_100571E58();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002E6CF4()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.playlistCovers);
  sub_10000C49C(v0, static Logger.playlistCovers);
  return sub_10056DF78();
}

uint64_t static Logger.playlistCovers.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E4FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.playlistCovers);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int sub_1002E6E20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100303F34(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1002E6FE8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1002E6E8C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100303F34(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_100574388(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100009DCC(&qword_1006EC9E8);
      v7 = sub_100572D98();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_1002E7184(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1002E6FE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100574388(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100009DCC(&qword_1006EC9E8);
        v5 = sub_100572D98();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1002E7714(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1002E70F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002E70F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v4 + 32 * a3;
    v8 = *(v7 + 8);
    v9 = *(v7 + 16);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 - 24);
      v13 = *(v11 - 16) < v9;
      if (v8 != v12)
      {
        v13 = v8 < v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
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

      v14 = *v11;
      v15 = *(v11 + 24);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v8;
      *(v11 - 16) = v9;
      *(v11 - 8) = v15;
      *(v11 - 32) = v14;
      v11 -= 32;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002E7184(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100303EF8(v8);
      v8 = result;
    }

    v84 = v8 + 2;
    v85 = v8[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1002E7CD0((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000CF5B8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v38 = v8[3];
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      result = sub_1000CF5B8((v38 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v39;
    v40 = v8 + 4;
    v41 = &v8[2 * v5 + 4];
    *v41 = v9;
    v41[1] = v7;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = v8[4];
          v43 = v8[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[2 * v39];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[2 * v5];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[2 * v39];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[2 * v5];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[2 * v5 - 2];
        v80 = *v79;
        v81 = &v40[2 * v5];
        v82 = v81[1];
        sub_1002E7CD0((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v8[2];
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        result = memmove(&v40[2 * v5], v81 + 2, 16 * (v83 - 1 - v5));
        v8[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[2 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[2 * v39];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[2 * v5];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 16) >= v31)
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1002E7714(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v97;
    if (!*v97)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100303EF8(v10);
      v10 = result;
    }

    v92 = *(v10 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v10[16 * v92];
        v94 = *&v10[16 * v92 + 24];
        sub_1002E7ED4((*a3 + 32 * v93), (*a3 + 32 * *&v10[16 * v92 + 16]), (*a3 + 32 * v94), v5);
        if (v4)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100303EF8(v10);
        }

        if (v92 - 2 >= *(v10 + 2))
        {
          goto LABEL_120;
        }

        v95 = &v10[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        result = sub_100303E6C(v92 - 1);
        v92 = *(v10 + 2);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = 32 * v11;
      v16 = *a3 + 32 * v11;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16) < v14;
      if (v13 != v17)
      {
        v18 = v13 < v17;
      }

      v19 = v11 + 2;
      v20 = (v16 + 80);
      while (v7 != v19)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = v14 >= *v20;
        if (v21 != v13)
        {
          v23 = v21 >= v13;
        }

        ++v19;
        v20 += 4;
        v14 = v22;
        v13 = v21;
        if (v18 == v23)
        {
          v9 = v19 - 1;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 32 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v32 + v15);
            v28 = v32 + v25;
            v29 = *v27;
            v30 = v27[1];
            v31 = *(v28 - 16);
            *v27 = *(v28 - 32);
            v27[1] = v31;
            *(v28 - 32) = v29;
            *(v28 - 16) = v30;
          }

          ++v26;
          --v24;
          v25 -= 32;
          v15 += 32;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000CF5B8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v47 = *(v10 + 3);
    v48 = v5 + 1;
    if (v5 >= v47 >> 1)
    {
      result = sub_1000CF5B8((v47 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v5];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *v97;
    if (!*v97)
    {
      goto LABEL_131;
    }

    if (v5)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_110;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_113;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_117;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_77:
        if (v73)
        {
          goto LABEL_112;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_115;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_84:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v90 = *&v10[16 * v89 + 32];
        v5 = *&v10[16 * v51 + 40];
        sub_1002E7ED4((*a3 + 32 * v90), (*a3 + 32 * *&v10[16 * v51 + 32]), (*a3 + 32 * v5), v50);
        if (v4)
        {
        }

        if (v5 < v90)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100303EF8(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        result = sub_100303E6C(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_108;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_109;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_111;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_114;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v33 = *a3;
  v34 = *a3 + 32 * v9;
  v35 = v11 - v9;
LABEL_34:
  v36 = v33 + 32 * v9;
  v37 = *(v36 + 8);
  v38 = *(v36 + 16);
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = *(v40 - 24);
    v42 = *(v40 - 16) < v38;
    if (v37 != v41)
    {
      v42 = v37 < v41;
    }

    if (!v42)
    {
LABEL_33:
      ++v9;
      v34 += 32;
      --v35;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v33)
    {
      break;
    }

    v43 = *v40;
    v44 = *(v40 + 24);
    v45 = *(v40 - 16);
    *v40 = *(v40 - 32);
    *(v40 + 16) = v45;
    *(v40 - 24) = v37;
    *(v40 - 16) = v38;
    *(v40 - 8) = v44;
    *(v40 - 32) = v43;
    v40 -= 32;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1002E7CD0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 2) < *(v14 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t sub_1002E7ED4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[1];
      v19 = v4[1];
      v20 = v4[2] < v6[2];
      if (v18 != v19)
      {
        v20 = v18 < v19;
      }

      if (v20)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_26:
    v5 -= 4;
    do
    {
      v21 = v5 + 4;
      v22 = *(v14 - 3);
      v23 = *(v6 - 3);
      v24 = *(v6 - 2) < *(v14 - 2);
      if (v22 != v23)
      {
        v24 = v22 < v23;
      }

      if (v24)
      {
        v27 = v6 - 4;
        if (v21 != v6)
        {
          v28 = *(v6 - 1);
          *v5 = *v27;
          *(v5 + 1) = v28;
        }

        if (v14 <= v4 || (v6 -= 4, v27 <= v7))
        {
          v6 = v27;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v25 = v14 - 4;
      if (v21 != v14)
      {
        v26 = *(v14 - 1);
        *v5 = *v25;
        *(v5 + 1) = v26;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v25 > v4);
    v14 = v25;
  }

LABEL_39:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v29 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v29 >> 5));
  }

  return 1;
}

uint64_t _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0()
{
  v0 = UIColor.rgba.getter();
  v2 = v1;
  v4 = v3;
  sub_100009DCC(&qword_1006E7DC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100580F90;
  v6 = lround(v0 * 255.0);
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = lround(v2 * 255.0);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  v8 = lround(v4 * 255.0);
  *(v5 + 136) = &type metadata for Int;
  *(v5 + 144) = &protocol witness table for Int;
  *(v5 + 112) = v8;

  return String.init(format:_:)(0x323025586C323025, 0xEF586C323025586CLL, v5);
}

uint64_t _s9MusicCore14PlaylistCoversO6SourceO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6D30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for PlaylistCovers.Source();
  v9 = __chkstk_darwin(v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v23 - v12;
  v14 = sub_100009DCC(&qword_1006EC9F0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1002E8840(a1, &v23 - v16);
  sub_1002E8840(a2, &v17[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002E8840(v17, v11);
    v19 = *v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = sub_1001A03C4(v19, *&v17[v18]);

LABEL_9:
      sub_1002E9C00(v17);
      return v20 & 1;
    }
  }

  else
  {
    sub_1002E8840(v17, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, &v17[v18], v4);
      sub_100571C48();
      sub_1002E9C5C(&qword_1006EC9F8, &type metadata accessor for Track);
      v20 = sub_100570E68();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v13, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
  }

  sub_10001036C(v17, &qword_1006EC9F0);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100573BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(NSScanner);
  v9 = sub_100572898();
  v10 = [v8 initWithString:v9];

  (*(v5 + 104))(v7, enum case for NSScanner.NumberRepresentation.hexadecimal(_:), v4);
  v11 = sub_100573BB8();
  v13 = v12;
  result = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if (qword_1006E4FE0 != -1)
    {
      swift_once();
    }

    v15 = sub_10056DF88();
    sub_10000C49C(v15, static Logger.playlistCovers);

    v16 = sub_10056DF68();
    v17 = sub_100573448();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1000C9784(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to decode hexadecimal string representation=%{public}s as UInt64.", v18, 0xCu);
      sub_100010474(v19);
    }

    return 0;
  }

  else if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(UIColor) initWithRed:BYTE2(v11) / 255.0 green:BYTE1(v11) / 255.0 blue:v11 / 255.0 alpha:1.0];

    return v20;
  }

  return result;
}

uint64_t type metadata accessor for PlaylistCovers.Source()
{
  result = qword_1006EC9A0;
  if (!qword_1006EC9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E8840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistCovers.Source();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E88A4()
{
  result = qword_1006E6D38;
  if (!qword_1006E6D38)
  {
    sub_100010324(&qword_1006E6D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6D38);
  }

  return result;
}

unint64_t sub_1002E890C()
{
  result = qword_1006EC928;
  if (!qword_1006EC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC928);
  }

  return result;
}

void sub_1002E8960()
{
  sub_1002E89D4();
  if (v0 <= 0x3F)
  {
    sub_1002E8A34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002E89D4()
{
  if (!qword_1006EC9B0)
  {
    sub_100571C48();
    v0 = sub_100570E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1006EC9B0);
    }
  }
}

void sub_1002E8A34()
{
  if (!qword_1006EC9B8)
  {
    sub_100572298();
    v0 = sub_100572E38();
    if (!v1)
    {
      atomic_store(v0, &qword_1006EC9B8);
    }
  }
}

uint64_t sub_1002E8A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006E8E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E8B0C(char *a1)
{
  v42 = a1;

  sub_1002E6E20(&v42);
  v1 = v42;
  v2 = *(v42 + 16);
  if (v2)
  {
    v3 = (v42 + 48);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if (*v3 < 0.5)
      {
        v40 = *v3;
        v38 = *(v3 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000CC724(0, *(v4 + 2) + 1, 1);
          v4 = v42;
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v40;
        if (v6 >= v5 >> 1)
        {
          sub_1000CC724((v5 > 1), v6 + 1, 1);
          v7 = v40;
          v4 = v42;
        }

        *(v4 + 2) = v6 + 1;
        v8 = &v4[32 * v6];
        *(v8 + 2) = v38;
        *(v8 + 3) = v7;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v42 = v4;

  sub_1002E6E8C(&v42);

  v10 = v42;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = *(v42 + 16);
    v14 = _swiftEmptyArrayStorage;
    while (v12 < *(v1 + 16))
    {
      v20 = (v1 + 32 + 32 * v12);
      v21 = *v20;
      v22 = v20[1];
      if (v13)
      {
        v23 = *(v10 + 2);
        v24 = (v10 + 32);
        v25 = v13;
        while (v23)
        {
          if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *v24), vceqq_f64(v22, v24[1])))))
          {
            goto LABEL_16;
          }

          --v23;
          v24 += 2;
          if (!--v25)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

LABEL_23:
      v39 = v22;
      v41 = v21;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v14;
      if ((v26 & 1) == 0)
      {
        sub_1000CC724(0, *(v14 + 2) + 1, 1);
        v14 = v42;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      v18 = v39;
      v17 = v41;
      if (v16 >= v15 >> 1)
      {
        sub_1000CC724((v15 > 1), v16 + 1, 1);
        v18 = v39;
        v17 = v41;
        v14 = v42;
      }

      *(v14 + 2) = v16 + 1;
      v19 = &v14[32 * v16];
      *(v19 + 2) = v17;
      *(v19 + 3) = v18;
LABEL_16:
      if (++v12 == v11)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_27:
  v42 = v14;
  sub_1000DAA10(v10);
  v27 = v42;
  v28 = *(v42 + 16);
  if (!v28)
  {

    v30 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    v35 = sub_100573F58();
    sub_100573F58();
    sub_100573F58();
    sub_100573F58();
    goto LABEL_36;
  }

  v42 = _swiftEmptyArrayStorage;
  sub_100573FF8();
  v29 = (v27 + 56);
  do
  {
    [objc_allocWithZone(UIColor) initWithHue:*(v29 - 3) saturation:*(v29 - 2) brightness:*(v29 - 1) alpha:*v29];
    sub_100573FC8();
    sub_100574008();
    sub_100574018();
    sub_100573FD8();
    v29 += 4;
    --v28;
  }

  while (v28);

  v30 = v42;
  if ((v42 & 0xC000000000000001) != 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v31 == 1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v31 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v31 != 3)
  {
    v32 = *(v30 + 40);
    v33 = *(v30 + 48);
    v34 = *(v30 + 56);
    v35 = *(v30 + 32);
    v32;
    v33;
    v36 = v34;
LABEL_36:

    return v35;
  }

LABEL_44:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1002E8F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1002E8F48, 0, 0);
}

uint64_t sub_1002E8F48()
{
  v122 = v0;
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = [objc_allocWithZone(UIColor) initWithCGColor:v0[2]];
  v115 = UIColor.hsba.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(UIColor) initWithCGColor:v4];
  v117 = UIColor.hsba.getter();
  v14 = v13;
  v16 = v15;

  v17 = [objc_allocWithZone(UIColor) initWithCGColor:v3];
  v116 = UIColor.hsba.getter();
  v19 = v18;
  v21 = v20;

  v22 = [objc_allocWithZone(UIColor) initWithCGColor:v2];
  v112 = UIColor.hsba.getter();
  v113 = v23;
  v25 = v24;

  v118 = v7;
  if (v7 > 0.05 && v9 > 0.2)
  {
    if (v16 < 0.3)
    {
      if (v21 >= 0.3)
      {
        goto LABEL_17;
      }

      goto LABEL_38;
    }

    if (v16 <= 0.3)
    {
LABEL_53:
      v58 = v14 + 0.2;
      v59 = v16 + 0.1;
      v60 = 1.0;
      if (v58 > 1.0)
      {
LABEL_54:
        if (v59 <= v60)
        {
          v61 = v19 + 0.1;
          v58 = 1.0;
          if (v61 <= 1.0)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v61 = v19 + 0.1;
        v59 = 1.0;
        v58 = v60;
        if (v61 <= 1.0)
        {
LABEL_64:
          v60 = v21 + 0.2;
          if (v21 + 0.2 > 1.0)
          {
            v60 = 1.0;
          }

          goto LABEL_66;
        }

LABEL_63:
        v61 = 1.0;
        goto LABEL_64;
      }

      if (v59 > 1.0)
      {
        v60 = v58;
        goto LABEL_59;
      }

      v61 = v19 + 0.1;
LABEL_62:
      if (v61 <= v60)
      {
        v66 = v21 + 0.2;
        if (v66 <= v60)
        {
          v65 = v25 + 0.2;
          v62 = 1.0;
          v63 = v9;
          if (v65 <= 1.0)
          {
            v64 = v113 + 0.6;
            if (v113 + 0.6 <= 1.0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v60 = v66;
LABEL_68:
          v64 = v113 + 0.6;
          v65 = v62;
          v66 = v60;
          if (v113 + 0.6 <= 1.0)
          {
LABEL_70:
            sub_100009DCC(&qword_1006E60F8);
            v67 = swift_allocObject();
            *(v67 + 16) = xmmword_10057BD80;
            *(v67 + 32) = v115;
            *(v67 + 40) = v118;
            *(v67 + 48) = v63;
            *(v67 + 56) = v11;
            *(v67 + 64) = v117;
            *(v67 + 72) = v58;
            *(v67 + 80) = v59;
            *(v67 + 88) = 0x3FF0000000000000;
            *(v67 + 96) = v116;
            *(v67 + 104) = v61;
            *(v67 + 112) = v66;
            *(v67 + 120) = 0x3FF0000000000000;
            *(v67 + 128) = v112;
            *(v67 + 136) = v65;
            *(v67 + 144) = v64;
            *(v67 + 152) = 0x3FF0000000000000;
            v68 = sub_1002E8B0C(v67);
            v70 = v69;
            v72 = v71;
            v74 = v73;

            if (qword_1006E4FE0 != -1)
            {
              swift_once();
            }

            v75 = sub_10056DF88();
            sub_10000C49C(v75, static Logger.playlistCovers);
            v38 = v68;
            v39 = v70;
            v40 = v72;
            v41 = v74;
            v42 = sub_10056DF68();
            v76 = sub_100573448();

            if (!os_log_type_enabled(v42, v76))
            {
              goto LABEL_97;
            }

            v44 = swift_slowAlloc();
            v119 = v76;
            v45 = swift_slowAlloc();
            v121 = v45;
            *v44 = 136446210;
            v77 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
            v79 = sub_1000C9784(v77, v78, &v121);

            *(v44 + 4) = v79;
            v49 = "Using recipe 3 colors=%{public}s";
            goto LABEL_74;
          }

LABEL_69:
          v64 = 1.0;
          goto LABEL_70;
        }

LABEL_66:
        v62 = v25 + 0.2;
        v63 = v9;
        if (v62 > 1.0)
        {
          v62 = 1.0;
        }

        goto LABEL_68;
      }

      goto LABEL_63;
    }

LABEL_21:
    if (v21 > 0.3)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

  if (v14 > 0.05 && v16 > 0.2)
  {
    if (v16 >= 0.3)
    {
LABEL_17:
      if (v16 <= 0.3 || v21 <= 0.3)
      {
        goto LABEL_53;
      }

LABEL_22:
      v26 = v19 + 0.4;
      if (v14 + 0.1 <= 1.0)
      {
        v27 = v14 + 0.1;
      }

      else
      {
        v27 = 1.0;
      }

      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v25 + -0.2 < 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v25 + -0.2;
      }

      sub_100009DCC(&qword_1006E60F8);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10057BD80;
      *(v29 + 32) = v115;
      *(v29 + 40) = v7;
      *(v29 + 48) = v9;
      *(v29 + 56) = v11;
      *(v29 + 64) = v117;
      *(v29 + 72) = v27;
      *(v29 + 80) = v16;
      *(v29 + 88) = 0x3FF0000000000000;
      *(v29 + 96) = v116;
      *(v29 + 104) = v26;
      *(v29 + 112) = v21;
      *(v29 + 120) = 0x3FF0000000000000;
      *(v29 + 128) = v112;
      *(v29 + 136) = v28;
      *(v29 + 144) = v113;
      *(v29 + 152) = 0x3FF0000000000000;
      v30 = sub_1002E8B0C(v29);
      v32 = v31;
      v34 = v33;
      v36 = v35;

      if (qword_1006E4FE0 != -1)
      {
        swift_once();
      }

      v37 = sub_10056DF88();
      sub_10000C49C(v37, static Logger.playlistCovers);
      v38 = v30;
      v39 = v32;
      v40 = v34;
      v41 = v36;
      v42 = sub_10056DF68();
      v43 = sub_100573448();

      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_97;
      }

      v44 = swift_slowAlloc();
      v119 = v43;
      v45 = swift_slowAlloc();
      v121 = v45;
      *v44 = 136446210;
      v46 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
      v48 = sub_1000C9784(v46, v47, &v121);

      *(v44 + 4) = v48;
      v49 = "Using recipe 2 colors=%{public}s";
LABEL_74:
      _os_log_impl(&_mh_execute_header, v42, v119, v49, v44, 0xCu);
      sub_100010474(v45);
LABEL_96:

LABEL_97:

      goto LABEL_98;
    }

    if (v21 < 0.3)
    {
LABEL_38:
      v114 = v9;
      v50 = v14 + 0.3;
      v51 = v16 + 0.2;
      v52 = 1.0;
      if (v14 + 0.3 <= 1.0)
      {
        v53 = v116;
        if (v51 <= 1.0)
        {
          v54 = v118 + 0.5;
          v55 = v114 + 0.2;
          v56 = 1.0;
          v111 = v11;
          if (v118 + 0.5 <= 1.0)
          {
            if (v55 <= 1.0)
            {
              v57 = v115;
              v91 = -0.5;
              if (v116 >= 0.5)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }

            v57 = v115;
            goto LABEL_87;
          }

          v57 = v115;
          v54 = 1.0;
          if (v55 > 1.0)
          {
            goto LABEL_87;
          }

LABEL_86:
          v56 = v55;
          goto LABEL_87;
        }
      }

      else
      {
        v50 = 1.0;
        v53 = v116;
        if (v51 <= 1.0)
        {
          v52 = v16 + 0.2;
        }
      }

      v54 = v118 + 0.5;
      v55 = v114 + 0.2;
      v56 = 1.0;
      v111 = v11;
      if (v118 + 0.5 <= 1.0)
      {
        if (v55 <= 1.0)
        {
          v57 = v115;
          v91 = -0.5;
          v51 = v52;
          if (v53 >= 0.5)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v57 = v115;
        v51 = v52;
        goto LABEL_87;
      }

      v57 = v115;
      v51 = v52;
      v54 = 1.0;
      if (v55 > 1.0)
      {
LABEL_87:
        v91 = -0.5;
        v55 = v56;
        if (v53 >= 0.5)
        {
LABEL_89:
          v92 = v53 + v91;
          if (v21 + 0.8 <= 1.0)
          {
            v93 = v21 + 0.8;
          }

          else
          {
            v93 = 1.0;
          }

          sub_100009DCC(&qword_1006E60F8);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_10057BD80;
          *(v94 + 32) = v57;
          *(v94 + 40) = v118;
          *(v94 + 48) = v114;
          *(v94 + 56) = v111;
          *(v94 + 64) = v117;
          *(v94 + 72) = v50;
          *(v94 + 80) = v51;
          *(v94 + 88) = 0x3FF0000000000000;
          *(v94 + 96) = v57;
          *(v94 + 104) = v54;
          *(v94 + 112) = v55;
          *(v94 + 120) = 0x3FF0000000000000;
          *(v94 + 128) = v92;
          *(v94 + 136) = v19;
          *(v94 + 144) = v93;
          *(v94 + 152) = 0x3FF0000000000000;
          v95 = sub_1002E8B0C(v94);
          v97 = v96;
          v99 = v98;
          v101 = v100;

          if (qword_1006E4FE0 != -1)
          {
            swift_once();
          }

          v102 = sub_10056DF88();
          sub_10000C49C(v102, static Logger.playlistCovers);
          v38 = v95;
          v39 = v97;
          v40 = v99;
          v41 = v101;
          v42 = sub_10056DF68();
          v103 = sub_100573448();

          if (!os_log_type_enabled(v42, v103))
          {
            goto LABEL_97;
          }

          v104 = swift_slowAlloc();
          v120 = v1;
          v121 = swift_slowAlloc();
          v105 = v121;
          *v104 = 136446210;
          v106 = PlaylistCovers.RecipeColors.description.getter(v38, v39, v40, v41);
          v108 = sub_1000C9784(v106, v107, &v121);

          *(v104 + 4) = v108;
          _os_log_impl(&_mh_execute_header, v42, v103, "Using recipe 1 colors=%{public}s", v104, 0xCu);
          sub_100010474(v105);
          v1 = v120;
          goto LABEL_96;
        }

LABEL_88:
        v91 = 0.5;
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v16 > 0.3)
    {
LABEL_48:
      if (v21 > 0.3)
      {
        goto LABEL_22;
      }
    }

LABEL_49:
    v58 = v14 + 0.2;
    v59 = v16 + 0.1;
    v60 = 1.0;
    if (v58 > 1.0)
    {
      goto LABEL_54;
    }

    v61 = v19 + 0.1;
    if (v59 > 1.0)
    {
      v59 = 1.0;
      if (v61 <= 1.0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v19 > 0.05 && v21 > 0.2)
  {
    if (v16 >= 0.3)
    {
      if (v16 > 0.3)
      {
        goto LABEL_21;
      }

      goto LABEL_49;
    }

LABEL_37:
    if (v21 < 0.3)
    {
      goto LABEL_38;
    }

LABEL_47:
    if (v16 <= 0.3)
    {
      goto LABEL_53;
    }

    goto LABEL_48;
  }

  if (v25 > 0.05 && v113 > 0.2)
  {
    if (v16 >= 0.3)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (qword_1006E4FE0 != -1)
  {
    swift_once();
  }

  v80 = sub_10056DF88();
  sub_10000C49C(v80, static Logger.playlistCovers);
  v81 = sub_10056DF68();
  v82 = sub_100573448();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v121 = v84;
    *v83 = 136446210;
    if (qword_1006E4FD0 != -1)
    {
      swift_once();
    }

    v85 = PlaylistCovers.RecipeColors.description.getter(qword_1006FC938, qword_1006FC940, qword_1006FC948, qword_1006FC950);
    v87 = sub_1000C9784(v85, v86, &v121);

    *(v83 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v81, v82, "Using black and white colors=%{public}s", v83, 0xCu);
    sub_100010474(v84);
  }

  if (qword_1006E4FD0 != -1)
  {
    swift_once();
  }

  v88 = qword_1006FC940;
  v90 = qword_1006FC948;
  v89 = qword_1006FC950;
  v38 = qword_1006FC938;
  v39 = v88;
  v40 = v90;
  v41 = v89;
LABEL_98:
  v109 = v1[1];

  return v109(v38, v39, v40, v41);
}

uint64_t sub_1002E9C00(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCovers.Source();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002E9C5C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall PresentationSource.present(_:)(MusicCore::Alert *a1)
{
  v2 = v1;
  v4 = sub_10017F500(a1, 0, 1);
  style = a1->style;
  v6 = *(v2 + 80);
  v18 = v4;
  if (v6)
  {
    v7 = qword_1006E4FE8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_10056DF88();
    sub_10000C49C(v8, qword_1006ECA00);
    v9 = sub_10056DF68();
    v10 = sub_100573448();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1002EC584;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002ED584;
    aBlock[3] = &unk_10069A1C8;
    v13 = _Block_copy(aBlock);
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_1000FEAFC(v2, aBlock);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_1000FF9D0(aBlock, v15 + 24);
    *(v15 + 120) = v18;
    *(v15 + 128) = style;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v18;
    v6(v2, v17, sub_100112A60, v15);
    sub_1000F3E14(v6);
  }

  else
  {
    sub_1002EAA64(v4, style, 1, 0, 0);
  }
}

uint64_t PresentationSource.present(_:internalOnly:)(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1002EECF0(v8);

    v6 = v9;
    if (v9)
    {
      v7 = v10;
      sub_10000C8CC(v8, v9);
      (*(v7 + 8))(a1, a2 & 1, v6, v7);
      return sub_100010474(v8);
    }

    else
    {
      return sub_10001036C(v8, &qword_1006E6C10);
    }
  }

  return result;
}

void PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(void *a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v11 = *(v5 + 80);
  if (v11)
  {
    v12 = qword_1006E4FE8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_10056DF88();
    sub_10000C49C(v13, qword_1006ECA00);
    v14 = sub_10056DF68();
    v15 = sub_100573448();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Deferring presentation…", v16, 2u);
    }

    v17 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1002EC584;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002ED584;
    aBlock[3] = &unk_10069A218;
    v18 = _Block_copy(aBlock);
    v19 = [v17 initWithTimeout:v18 interruptionHandler:10.0];
    _Block_release(v18);

    sub_1000FEAFC(v6, aBlock);
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    sub_1000FF9D0(aBlock, v20 + 24);
    *(v20 + 120) = a1;
    *(v20 + 128) = a2 & 1;
    *(v20 + 129) = a3 & 1;
    *(v20 + 136) = a4;
    *(v20 + 144) = a5;
    v21 = v19;
    v22 = a1;
    sub_1000E672C(a4);
    v11(v6, v22, sub_100112BB0, v20);
    sub_1000F3E14(v11);
  }

  else
  {
    v23 = (a2 & 1);
    v24 = (a3 & 1);

    sub_1002EAA64(a1, v23, v24, a4, a5);
  }
}

__n128 PresentationSource.Position.init(source:permittedArrowDirections:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = a2;
  return result;
}

Swift::Void __swiftcall PresentationSource.Position.configure(_:)(UIViewController a1)
{
  v2 = [(objc_class *)a1.super.super.isa popoverPresentationController];
  if (v2)
  {
    v3 = *v1;
    v8 = v2;
    if (*(v1 + 40))
    {
      if (*(v1 + 40) == 1)
      {
        [v2 setBarButtonItem:v3];
      }

      else
      {
        [v2 setSourceItem:v3];
      }
    }

    else
    {
      v5 = *(v1 + 24);
      v4 = *(v1 + 32);
      v7 = *(v1 + 8);
      v6 = *(v1 + 16);
      [v2 setSourceView:v3];
      [v8 setSourceRect:{v7, v6, v5, v4}];
      sub_1002ED5F4(v1);
    }

    [v8 setPermittedArrowDirections:*(v1 + 48)];
  }
}

__n128 PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v14 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *(a7 + 24) = v14;
  result = *(a2 + 32);
  *(a7 + 40) = result;
  *(a7 + 56) = *(a2 + 48);
  *(a7 + 64) = a3;
  *(a7 + 72) = a4;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  return result;
}

void PresentationSource.viewController.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*PresentationSource.viewController.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1002EA508;
}

void sub_1002EA508(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void PresentationSource.windowScene.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      v3 = [v2 window];

      [v3 windowScene];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t PresentationSource.configurationHandler.getter()
{
  v1 = *(v0 + 64);
  sub_1000E672C(v1);
  return v1;
}

uint64_t PresentationSource.configurationHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3E14(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PresentationSource.presentationDeferral.getter()
{
  v1 = *(v0 + 80);
  sub_1000E672C(v1);
  return v1;
}

uint64_t PresentationSource.presentationDeferral.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3E14(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double static PresentationSource.topmost(in:)@<D0>(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v3 presentedViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      while (1)
      {
        v5 = v4;
        if (([v4 canPresentViewControllers] & 1) == 0)
        {
          break;
        }

        v4 = [v5 presentedViewController];
        v6 = v5;
        if (!v4)
        {
          goto LABEL_9;
        }
      }

      v5 = v6;
    }

LABEL_9:

    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *&result = 255;
    *(a1 + 48) = xmmword_100582410;
  }

  else
  {
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  return result;
}

void *static PresentationSource.topmostPresentedViewController(in:options:)(uint64_t a1, char a2)
{
  v3 = UIWindowScene.rootViewController.getter();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = v5;
      if ((a2 & 1) != 0 && ![v5 canPresentViewControllers])
      {

        v4 = v7;
        goto LABEL_11;
      }

      v5 = [v7 presentedViewController];
      v6 = v7;
    }

    while (v5);
    v6 = v7;
  }

  else
  {
    v6 = v4;
  }

LABEL_11:

  return v6;
}

__n128 PresentationSource.init(viewController:position:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  swift_unknownObjectWeakAssign();

  v6 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v6;
  result = *(a2 + 32);
  *(a3 + 40) = result;
  *(a3 + 56) = *(a2 + 48);
  return result;
}

id static PresentationSource.topmostPresentedViewController(from:options:)(void *a1, char a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if ((a2 & 1) != 0 && ([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v3;
}

double PresentationSource.init(windowScene:position:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = UIWindowScene.rootViewController.getter();

  if (v6)
  {
    swift_unknownObjectWeakInit();
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    v7 = *(a2 + 16);
    *(a3 + 8) = *a2;
    *(a3 + 24) = v7;
    v8 = *(a2 + 32);
    *(a3 + 40) = v8;
    *(a3 + 56) = *(a2 + 48);
  }

  else
  {
    sub_10001036C(a2, &qword_1006ECA20);
    *&v8 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 1;
    *(a3 + 72) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
  }

  return *&v8;
}

void sub_1002EAA64(void *a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v12 = sub_100570C38();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100155E5C();
  *v15 = sub_1005735E8();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_100570C68();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_103;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v230 = v6;
    LODWORD(v228) = a2;
    v229 = a3;
    a3 = Strong;
    v18 = [a3 presentedViewController];
    a2 = a3;
    if (v18)
    {
      v19 = a3;
      do
      {
        a2 = v18;

        v18 = [a2 presentedViewController];
        v19 = a2;
      }

      while (v18);
    }

    v20 = [a2 transitionCoordinator];
    if (v20)
    {
      v6 = v20;
      if (qword_1006E4FE8 == -1)
      {
LABEL_8:
        v21 = sub_10056DF88();
        sub_10000C49C(v21, qword_1006ECA00);
        v22 = a1;
        swift_unknownObjectRetain();
        v23 = sub_10056DF68();
        v24 = sub_100573448();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v225 = v23;
          v26 = v25;
          v226 = swift_slowAlloc();
          *&v238 = v226;
          *v26 = 136446466;
          v27 = v22;
          v227 = v22;
          v28 = v27;
          v29 = [v27 description];
          v30 = sub_1005728D8();
          LODWORD(v224) = v24;
          v31 = a3;
          v32 = a5;
          v33 = v30;
          v34 = a4;
          v36 = v35;

          v37 = v33;
          a5 = v32;
          a3 = v31;
          v38 = sub_1000C9784(v37, v36, &v238);
          a4 = v34;

          *(v26 + 4) = v38;
          *(v26 + 12) = 2082;
          *&aBlock = v6;
          swift_unknownObjectRetain();
          sub_100009DCC(&qword_1006ECAB8);
          v39 = sub_100572978();
          v41 = sub_1000C9784(v39, v40, &v238);
          v22 = v227;

          *(v26 + 14) = v41;
          v42 = v225;
          _os_log_impl(&_mh_execute_header, v225, v224, "Attempted to present %{public}s, but needs to wait for the ongoing transition %{public}s to complete first", v26, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_1000FEAFC(v230, &v238);
        v75 = swift_allocObject();
        *(v75 + 16) = v6;
        *(v75 + 24) = v22;
        sub_1000FF9D0(&v238, v75 + 32);
        *(v75 + 128) = v228 & 1;
        *(v75 + 129) = v229 & 1;
        *(v75 + 136) = a4;
        *(v75 + 144) = a5;
        *&v233 = sub_1002EDCA0;
        *(&v233 + 1) = v75;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = sub_1002ECBD0;
        *(&v232 + 1) = &unk_10069A4E8;
        v76 = _Block_copy(&aBlock);
        v77 = v22;
        swift_unknownObjectRetain();
        sub_1000E672C(a4);

        [v6 animateAlongsideTransition:0 completion:v76];
        _Block_release(v76);

        swift_unknownObjectRelease();
        return;
      }

LABEL_103:
      swift_once();
      goto LABEL_8;
    }

    if ([a2 canPresentViewControllers])
    {
      v56 = a2;
      [a1 setPlayActivityFeatureNameSourceViewController:v56];
      v57 = _s27WeakViewControllerReferenceCMa();
      v58 = objc_allocWithZone(v57);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v237.receiver = v58;
      v237.super_class = v57;
      v59 = objc_msgSendSuper2(&v237, "init");
      if (qword_1006E4E90 != -1)
      {
        swift_once();
      }

      v227 = a4;
      objc_setAssociatedObject(a1, qword_1006E9330, v59, 1);
      v226 = v56;

      v60 = v230;
      v61 = v230[8];
      if (v61)
      {
        v61(a1);
      }

      v222 = a5;
      v217 = [a1 modalPresentationStyle];
      objc_opt_self();
      v221 = swift_dynamicCastObjCClass();
      v62 = a1;
      v64 = v60[1];
      v63 = v60[2];
      v66 = v60[3];
      v65 = v60[4];
      v68 = v60[5];
      v67 = v60[6];
      v69 = v60[7];
      objc_opt_self();
      v70 = v62;
      v71 = swift_dynamicCastObjCClass();
      v224 = v64;
      v223 = v66;
      v230 = v65;
      v72 = v65;
      v73 = v68;
      v225 = v69;
      sub_1002EDBC0(v64, v63, v66, v72, v68, v67);
      if (v71)
      {
        v74 = [v71 preferredStyle] == 0;
      }

      else
      {
        v74 = 0;
      }

      v104 = v67;
      v105 = v226;
      v220 = v70;
      v106 = v63;
      if (v67 == 0xFF && !v221)
      {
        v107 = v220;
        if ([v220 modalPresentationStyle] == 7)
        {
          v108 = [v107 popoverPresentationController];
          if (v108)
          {
            v109 = v108;
            v218 = a3;
            if (qword_1006E4FE8 != -1)
            {
              swift_once();
            }

            v110 = sub_10056DF88();
            sub_10000C49C(v110, qword_1006ECA00);
            v111 = sub_10056DF68();
            v112 = sub_100573448();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = 0;
            }

            v114 = [v109 sourceItem];
            if (v114)
            {
              v115 = v114;
              swift_unknownObjectRetain();
              v116 = sub_10056DF68();
              v117 = sub_100573448();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v219 = COERCE_DOUBLE(swift_slowAlloc());
                *&v238 = v219;
                *v118 = 136446210;
                *&aBlock = v115;
                swift_unknownObjectRetain();
                sub_100009DCC(&qword_1006ECAB0);
                v119 = sub_100572978();
                v221 = v106;
                v121 = sub_1000C9784(v119, v120, &v238);
                v216 = v109;
                v122 = v117;
                v123 = v121;

                *(v118 + 4) = v123;
                _os_log_impl(&_mh_execute_header, v116, v122, "Using sourceItem=%{public}s as the position", v118, 0xCu);
                sub_100010474(*&v219);

                sub_1002EDBF8(v224, v221, v223, v230, v73, v104);
              }

              else
              {
                sub_1002EDBF8(v224, v106, v223, v230, v73, v104);
              }

              v106 = 0;
              v223 = 0;
              v230 = 0;
              v73 = 0;
              v225 = 15;
              v104 = 2;
              v224 = v115;
              a3 = v218;
            }

            else
            {
              v124 = [v109 sourceView];
              a3 = v218;
              if (v124)
              {
                v125 = v124;
                v221 = v106;
                v126 = v124;
                v127 = sub_10056DF68();
                v128 = sub_100573448();

                if (os_log_type_enabled(v127, v128))
                {
                  v129 = swift_slowAlloc();
                  v216 = v129;
                  v219 = COERCE_DOUBLE(swift_slowAlloc());
                  *&v238 = v219;
                  *v129 = 136446210;
                  v130 = v126;
                  v131 = [v130 description];
                  v132 = sub_1005728D8();
                  v215 = v127;
                  v133 = v132;
                  v214 = v128;
                  v135 = v134;

                  a3 = v218;
                  v136 = sub_1000C9784(v133, v135, &v238);

                  v137 = v216;
                  *(v216 + 4) = v136;
                  v138 = v215;
                  _os_log_impl(&_mh_execute_header, v215, v214, "Using sourceView=%{public}s as the position", v137, 0xCu);
                  sub_100010474(*&v219);
                }

                else
                {
                }

                [v109 sourceRect];
                v143 = v142;
                v145 = v144;
                v147 = v146;
                v149 = v148;
                sub_1002EDBF8(v224, v221, v223, v230, v73, v104);

                v104 = 0;
                v106 = v143;
                v223 = v145;
                v230 = v147;
                v73 = v149;
                v225 = 15;
                v224 = v125;
              }

              else
              {
                v139 = sub_10056DF68();
                v140 = sub_100573438();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v221 = v106;
                  *v141 = 0;
                  v106 = v221;
                }
              }
            }
          }
        }
      }

      v150 = [v105 view];
      if (!v150)
      {
        __break(1u);
        return;
      }

      v151 = v150;
      v152 = [v150 window];

      v221 = v106;
      v219 = *&v73;
      v153 = v220;
      if (v152 && (v154 = [v152 traitCollection], v152, v155 = objc_msgSend(v154, "horizontalSizeClass"), v154, v155 == 2) && (v228 & 1) != 0)
      {
        if (v104 == 0xFF)
        {
          LOBYTE(v156) = [v153 modalPresentationStyle] == 7;
          goto LABEL_71;
        }

        v156 = 1;
      }

      else
      {
        v156 = 0;
        if (v104 == 0xFF)
        {
          goto LABEL_71;
        }
      }

      *&v238 = v224;
      *(&v238 + 1) = v106;
      *&v239 = v223;
      *(&v239 + 1) = v230;
      *&v240 = v73;
      BYTE8(v240) = v104;
      v241 = v225;
      if (PresentationSource.Position.canPresent(from:)(v105))
      {
        if ((v156 | v74))
        {
          v218 = a3;
          if (qword_1006E4FE8 != -1)
          {
            swift_once();
          }

          v157 = sub_10056DF88();
          v158 = sub_10000C49C(v157, qword_1006ECA00);
          v159 = v153;
          v228 = v158;
          v160 = sub_10056DF68();
          v161 = sub_100573448();

          if (os_log_type_enabled(v160, v161))
          {
            v162 = swift_slowAlloc();
            v217 = swift_slowAlloc();
            *&aBlock = v217;
            *v162 = 136446210;
            v163 = v159;
            v164 = [v163 description];
            v165 = sub_1005728D8();
            v167 = v166;

            v168 = sub_1000C9784(v165, v167, &aBlock);

            *(v162 + 4) = v168;
            v106 = v221;
            sub_100010474(v217);
          }

          v169 = v227;
          v170 = v218;
          v171 = v223;
          v172 = v224;
          [v159 setModalPresentationStyle:7];
          v173 = [v159 popoverPresentationController];
          if (v173)
          {
            v217 = v159;

            v174 = v172;
            v175 = v172;
            v176 = v230;
            v177 = *&v219;
            sub_1002EDBC0(v174, v106, v171, v230, *&v219, v104);
            sub_1002EDBD4(v175, v106, v171, v176, v177, v104);
            v178 = sub_10056DF68();
            v179 = sub_100573448();
            v228 = v104;
            v180 = v178;
            v181 = v179;
            sub_1002EDBF8(v175, v106, v171, v176, v177, v104);
            if (os_log_type_enabled(v180, v181))
            {
              v182 = swift_slowAlloc();
              v183 = swift_slowAlloc();
              v236 = v183;
              *v182 = 136446210;
              aBlock = v238;
              v232 = v239;
              v233 = v240;
              v234 = v241;
              LOBYTE(v104) = v228;
              sub_1002EDBD4(v175, v106, v223, v176, v177, v228);
              v184 = sub_100572978();
              v186 = sub_1000C9784(v184, v185, &v236);
              v106 = v221;

              *(v182 + 4) = v186;
              _os_log_impl(&_mh_execute_header, v180, v181, "Configuring viewController with popover position=%{public}s", v182, 0xCu);
              sub_100010474(v183);
              v171 = v223;
              v169 = v227;

              v170 = v218;
            }

            else
            {

              LOBYTE(v104) = v228;
            }

            v201 = v217;
            v235 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate;
            v202 = swift_dynamicCastObjCProtocolConditional();
            v172 = v224;
            v153 = v220;
            if (v202)
            {
              v203 = v202;
              v204 = v201;
              v205 = [v204 presentationController];
              if (v205)
              {
                v206 = v205;
                [v205 setDelegate:v203];

                v106 = v221;
              }
            }

            v207 = [v201 popoverPresentationController];
            if (v207)
            {
              v208 = v207;
              v209 = v230;
              if (v104)
              {
                if (v104 == 1)
                {
                  [v207 setBarButtonItem:v172];
                }

                else
                {
                  [v207 setSourceItem:v172];
                }
              }

              else
              {
                v210 = *&v219;
                v211 = v219;
                [v207 setSourceView:v224];
                [v208 setSourceRect:{*&v106, *&v171, *&v209, v211}];
                v212 = v210;
                v172 = v224;
                sub_1002EDBF8(v224, v106, v171, v209, v212, v104);
              }

              [v208 setPermittedArrowDirections:v225];

              sub_1002EDBF8(v172, v106, v171, v230, *&v219, v104);
            }

            else
            {
              sub_1002EDBF8(v172, v106, v171, v230, *&v219, v104);
            }
          }

          goto LABEL_84;
        }

        LOBYTE(v156) = 0;
      }

LABEL_71:
      objc_opt_self();
      v187 = swift_dynamicCastObjCClass();
      if (v187)
      {
        [v187 setAllowsCustomPresentationStyle:1];
        v188 = 2;
      }

      else
      {
        v188 = v217;
        if (v217 == -2)
        {
          v189 = [v105 traitCollection];
          [v189 horizontalSizeClass];
        }

        else if (((v217 == 7) & v156) == 1)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v188 = 3;
          }

          else
          {
            v188 = 7;
          }
        }
      }

      v190 = a3;
      if (qword_1006E4FE8 != -1)
      {
        swift_once();
      }

      v191 = sub_10056DF88();
      sub_10000C49C(v191, qword_1006ECA00);
      v192 = sub_10056DF68();
      v193 = sub_100573448();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&aBlock = v195;
        *v194 = 136446210;
        v236 = v188;
        type metadata accessor for UIModalPresentationStyle(0);
        v196 = sub_100572978();
        v198 = sub_1000C9784(v196, v197, &aBlock);

        *(v194 + 4) = v198;
        _os_log_impl(&_mh_execute_header, v192, v193, "Presenting viewController with style=%{public}s", v194, 0xCu);
        sub_100010474(v195);
        v106 = v221;
      }

      v169 = v227;
      v170 = v190;
      v171 = v223;
      [v153 setModalPresentationStyle:v188];
      v172 = v224;
LABEL_84:
      if (v169)
      {
        *&v233 = v169;
        *(&v233 + 1) = v222;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v232 = sub_10007885C;
        *(&v232 + 1) = &unk_10069A498;
        v199 = _Block_copy(&aBlock);
        v106 = v221;
      }

      else
      {
        v199 = 0;
      }

      v200 = v226;
      [v226 presentViewController:v153 animated:v229 & 1 completion:v199];

      _Block_release(v199);
      sub_1002EDBF8(v172, v106, v171, v230, *&v219, v104);
      return;
    }

    if (qword_1006E4FE8 != -1)
    {
      swift_once();
    }

    v78 = sub_10056DF88();
    sub_10000C49C(v78, qword_1006ECA00);
    v79 = a1;
    v80 = a2;
    v81 = sub_10056DF68();
    v82 = sub_100573448();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v218 = a3;
      v84 = v83;
      *&v238 = swift_slowAlloc();
      *v84 = 136446466;
      v85 = v79;
      v86 = [v85 description];
      v87 = sub_1005728D8();
      v227 = a4;
      v88 = v87;
      v222 = a5;
      v90 = v89;

      v91 = sub_1000C9784(v88, v90, &v238);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2082;
      v92 = v80;
      v93 = [v92 description];
      v94 = sub_1005728D8();
      v96 = v95;

      v97 = v94;
      a4 = v227;
      v98 = sub_1000C9784(v97, v96, &v238);
      a5 = v222;

      *(v84 + 14) = v98;
      _os_log_impl(&_mh_execute_header, v81, v82, "Attempted to present %{public}s, but need to dismiss %{public}s first", v84, 0x16u);
      swift_arrayDestroy();

      a3 = v218;
    }

    sub_1000FEAFC(v230, &v238);
    v99 = swift_allocObject();
    *(v99 + 16) = v80;
    *(v99 + 24) = v79;
    sub_1000FF9D0(&v238, v99 + 32);
    *(v99 + 128) = v228 & 1;
    v100 = v229 & 1;
    *(v99 + 129) = v100;
    *(v99 + 136) = a4;
    *(v99 + 144) = a5;
    *&v233 = sub_1002EDBA8;
    *(&v233 + 1) = v99;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v232 = sub_10007885C;
    *(&v232 + 1) = &unk_10069A470;
    v101 = _Block_copy(&aBlock);
    v102 = v79;
    sub_1000E672C(a4);
    v103 = v80;

    [v103 dismissViewControllerAnimated:v100 completion:v101];
    _Block_release(v101);
  }

  else
  {
    if (qword_1006E4FE8 != -1)
    {
      swift_once();
    }

    v43 = sub_10056DF88();
    sub_10000C49C(v43, qword_1006ECA00);
    v44 = a1;
    v45 = sub_10056DF68();
    v46 = sub_100573448();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v238 = v48;
      *v47 = 136446210;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_1005728D8();
      v52 = a4;
      v54 = v53;

      v55 = sub_1000C9784(v51, v54, &v238);
      a4 = v52;

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to present viewController=%{public}s but there is no viewController to present onto.", v47, 0xCu);
      sub_100010474(v48);
    }

    if (a4)
    {
      a4();
    }
  }
}

void sub_1002EC584()
{
  if (qword_1006E4FE8 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();
  sub_10000C49C(v0, qword_1006ECA00);
  oslog = sub_10056DF68();
  v1 = sub_100573438();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void sub_1002EC66C(void *a1, uint64_t a2, void *a3, char a4, char a5, void (*a6)(void), uint64_t a7)
{
  if (qword_1006E4FE8 != -1)
  {
    swift_once();
  }

  v13 = sub_10056DF88();
  sub_10000C49C(v13, qword_1006ECA00);
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Presenting after deferral…", v16, 2u);
  }

  [a1 disarm];
  sub_1002EAA64(a3, (a4 & 1), (a5 & 1), a6, a7);
}

void sub_1002EC7A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  if (qword_1006E4FE8 != -1)
  {
    swift_once();
  }

  v12 = sub_10056DF88();
  sub_10000C49C(v12, qword_1006ECA00);
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = sub_10056DF68();
  v15 = sub_100573448();

  swift_unknownObjectRelease();
  v40 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v39 = a7;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_unknownObjectRetain();
    sub_100009DCC(&qword_1006ECAB8);
    v17 = sub_100572978();
    v19 = sub_1000C9784(v17, v18, aBlock);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    v20 = v13;
    v21 = [v20 description];
    v22 = a8;
    v23 = a4;
    v24 = sub_1005728D8();
    v26 = v25;

    v27 = v24;
    a4 = v23;
    a8 = v22;
    v28 = sub_1000C9784(v27, v26, aBlock);

    *(v16 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v14, v15, "TransitionCoordinator %{public}s completed ongoing animations. Now attemptying to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v39;
  }

  v29 = *(a4 + 80);
  if (v29)
  {

    v30 = sub_10056DF68();
    v31 = sub_100573448();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Deferring presentation…", v32, 2u);
    }

    v33 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1002EC584;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002ED584;
    aBlock[3] = &unk_10069A510;
    v34 = _Block_copy(aBlock);
    v35 = [v33 initWithTimeout:v34 interruptionHandler:10.0];
    _Block_release(v34);

    sub_1000FEAFC(a4, aBlock);
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    sub_1000FF9D0(aBlock, v36 + 24);
    *(v36 + 120) = v40;
    *(v36 + 128) = a5 & 1;
    *(v36 + 129) = a6 & 1;
    *(v36 + 136) = a7;
    *(v36 + 144) = a8;
    v37 = v40;
    v38 = v35;
    sub_1000E672C(a7);
    v29(a4, v37, sub_100112BB0, v36);
    sub_1000F3E14(v29);
  }

  else
  {
    sub_1002EAA64(v40, a5 & 1, a6 & 1, a7, a8);
  }
}

uint64_t sub_1002ECBD0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1002ECC30(void *a1, void *a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  if (qword_1006E4FE8 != -1)
  {
    swift_once();
  }

  v11 = sub_10056DF88();
  sub_10000C49C(v11, qword_1006ECA00);
  v12 = a1;
  v13 = a2;
  v14 = sub_10056DF68();
  v15 = sub_100573448();

  if (os_log_type_enabled(v14, v15))
  {
    v41 = a6;
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136446466;
    v17 = v12;
    v18 = [v17 description];
    v40 = a3;
    v19 = sub_1005728D8();
    v21 = v20;

    v22 = sub_1000C9784(v19, v21, aBlock);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v23 = v13;
    v24 = [v23 description];
    v25 = sub_1005728D8();
    v27 = v26;

    v28 = v25;
    a3 = v40;
    v29 = sub_1000C9784(v28, v27, aBlock);

    *(v16 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v14, v15, "Dismissed %{public}s, now attempting to re-present %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a6 = v41;
  }

  v30 = *(a3 + 80);
  if (v30)
  {

    v31 = sub_10056DF68();
    v32 = sub_100573448();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Deferring presentation…", v33, 2u);
    }

    v34 = objc_allocWithZone(MSVBlockGuard);
    aBlock[4] = sub_1002EC584;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002ED584;
    aBlock[3] = &unk_10069A560;
    v35 = _Block_copy(aBlock);
    v36 = [v34 initWithTimeout:v35 interruptionHandler:10.0];
    _Block_release(v35);

    sub_1000FEAFC(a3, aBlock);
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    sub_1000FF9D0(aBlock, v37 + 24);
    *(v37 + 120) = v13;
    *(v37 + 128) = a4 & 1;
    *(v37 + 129) = a5 & 1;
    *(v37 + 136) = a6;
    *(v37 + 144) = a7;
    v38 = v13;
    v39 = v36;
    sub_1000E672C(a6);
    v30(a3, v38, sub_100112BB0, v37);
    sub_1000F3E14(v30);
  }

  else
  {
    sub_1002EAA64(v13, a4 & 1, a5 & 1, a6, a7);
  }
}

Swift::Bool __swiftcall PresentationSource.Position.canPresent(from:)(UIViewController from)
{
  if (!*(v1 + 40))
  {
    v6 = [*v1 window];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  if (*(v1 + 40) != 1)
  {
    swift_unknownObjectRetain();
    v6 = [(objc_class *)from.super.super.isa view];
    if (v6)
    {
      v8 = v6;
      swift_getObjectType();
      sub_100573828();

      if ((v21 & 1) != 0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectEqualToRect(v20, v23)))
      {
        sub_1002ED5F4(v1);
LABEL_14:
        LOBYTE(v6) = 0;
        return v6;
      }

      v6 = [(objc_class *)from.super.super.isa view];
      if (v6)
      {
        v10 = v6;
        [v6 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v22.origin.x = v12;
        v22.origin.y = v14;
        v22.size.width = v16;
        v22.size.height = v18;
        LOBYTE(v10) = CGRectIntersectsRect(v22, v20);
        sub_1002ED5F4(v1);
        LOBYTE(v6) = v10;
        return v6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return v6;
  }

  v2 = *v1;
  v3 = [v2 customView];
  if (!v3 || (v4 = v3, v5 = [v3 window], v4, !v5))
  {
    v9 = [v2 customView];
    sub_1002ED5F4(v1);
    if (v9)
    {

      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v6) = 1;
    return v6;
  }

  sub_1002ED5F4(v1);
  LOBYTE(v6) = 1;
  return v6;
}

void *PresentationSource.Position.init(view:rect:permittedArrowDirections:)@<X0>(void *result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 0uLL;
  if (result)
  {
    if (a2[2])
    {
      v5 = a4;

      v4 = 0uLL;
      a4 = v5;
      result = 0;
      a3 = 0;
      v6 = 255;
      v7 = 0uLL;
    }

    else
    {
      v6 = 0;
      v4 = *a2;
      v7 = a2[1];
    }
  }

  else
  {
    a3 = 0;
    v6 = 255;
    v7 = 0uLL;
  }

  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 24) = v7;
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t PresentationSource.Position.init(sourceItem:permittedArrowDirections:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 2;
  if (!result)
  {
    v3 = 255;
  }

  *a3 = result;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  if (result)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v4;
  return result;
}

uint64_t sub_1002ED350()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006ECA00);
  sub_10000C49C(v0, qword_1006ECA00);
  return sub_10056DF78();
}

void UIWindowScene.presentationSource.getter(uint64_t a1@<X8>)
{
  v2 = UIWindowScene.rootViewController.getter();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakInit();
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    swift_unknownObjectWeakAssign();

    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 48) = 255;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t sub_1002ED454(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100572F08();
  v2[4] = sub_100572EF8();
  v4 = sub_100572E78();

  return _swift_task_switch(sub_1002ED4EC, v4, v3);
}

uint64_t sub_1002ED4EC()
{
  v1 = *(v0 + 16);

  v2 = sub_10017F500(v1, 0, 1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v1 + 32), 1, 0, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002ED584(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1002ED5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002ED624(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006ECA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ED694(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006ECA20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002ED778()
{
  result = qword_1006ECA28;
  if (!qword_1006ECA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ECA28);
  }

  return result;
}

unint64_t sub_1002ED7D0()
{
  result = qword_1006ECA30;
  if (!qword_1006ECA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ECA30);
  }

  return result;
}

unint64_t sub_1002ED828()
{
  result = qword_1006ECA38;
  if (!qword_1006ECA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ECA38);
  }

  return result;
}

unint64_t sub_1002ED880()
{
  result = qword_1006ECA40;
  if (!qword_1006ECA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ECA40);
  }

  return result;
}

uint64_t sub_1002ED8D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002ED930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_1002ED9AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002ED9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EDA54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002EDA9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EDB14()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

id sub_1002EDBC0(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_1002EDBD4(result, a2, a3, a4, a5, a6);
  }

  return result;
}

id sub_1002EDBD4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1002EDBF8(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_1000FF9AC(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1002EDC0C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_1000FF9AC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t View.viewPresenting<A, B>(_:modifier:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v9[0] = a2;
  v9[1] = a3;
  v4 = sub_10056ECA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100570328();
  type metadata accessor for PresentedViewState();
  v9[2] = a1;
  v9[3] = v9[0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100570178();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PresentedViewState.isPresented.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t PresentedViewState.isPresented.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t sub_1002EDFB4@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void (*PresentedViewState.isPresented.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = sub_10056E468();
  return sub_100275754;
}

uint64_t PresentedViewState.$isPresented.getter()
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t PresentedViewState.$isPresented.setter(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EAC40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PresentedViewState.$isPresented.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_100009DCC(&qword_1006EAC40);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  PresentedViewState.$isPresented.getter();
  return sub_1002EE3DC;
}

void sub_1002EE3DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    PresentedViewState.$isPresented.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    PresentedViewState.$isPresented.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PresentedViewState.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  v4 = sub_100573C28();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PresentedViewState.__allocating_init()()
{
  v0 = swift_allocObject();
  PresentedViewState.init()();
  return v0;
}

uint64_t *PresentedViewState.init()()
{
  v1 = *v0;
  v2 = sub_100009DCC(&qword_1006EA0D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  v6 = qword_1006ECAC0;
  v7 = *(v1 + 80);
  v9[15] = 0;
  sub_10056E438();
  (*(v3 + 32))(v0 + v6, v5, v2);
  (*(*(v7 - 8) + 56))(v0 + *(*v0 + 96), 1, 1, v7);
  return v0;
}

uint64_t PresentedViewState.present(_:animated:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 80);
  v6 = sub_100573C28();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v5 - 8);
  (*(v10 + 16))(&v13 - v8, a1, v5);
  (*(v10 + 56))(v9, 0, 1, v5);
  v11 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v11, v9, v6);
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return PresentedViewState.isPresented.setter();
  }

  sub_100570A48();
  sub_10056EA28();
}

uint64_t PresentedViewState.deinit()
{
  v1 = qword_1006ECAC0;
  v2 = sub_100009DCC(&qword_1006EA0D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_100573C28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PresentedViewState.__deallocating_deinit()
{
  PresentedViewState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1002EE9E8@<X0>(_BYTE *a1@<X8>)
{
  result = PresentedViewState.isPresented.getter();
  *a1 = result & 1;
  return result;
}

void sub_1002EEA84()
{
  sub_10026C1BC();
  if (v0 <= 0x3F)
  {
    sub_100573C28();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1002EEB54()
{
  sub_10056ECA8();
  type metadata accessor for PresentedViewState();
  sub_100573C28();
  sub_10056F938();
  sub_10056ECA8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1002EEC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Notice(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v10);
  (*(a4 + 8))(v10, a2, a3, a4);
  return sub_1002EF52C(v10);
}

void sub_1002EECF0(uint64_t a1@<X8>)
{
  if (![v1 isViewLoaded])
  {
    v7 = [v1 parentViewController];
    if (v7)
    {
      v8 = v7;
      sub_1002EECF0();
      goto LABEL_8;
    }

LABEL_12:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v8 = v3;
  v4 = [v3 window];
  if (!v4 || (v5 = v4, v6 = [v4 windowScene], v5, !v6))
  {

    goto LABEL_12;
  }

  UIWindowScene.noticePresenting.getter(a1);

LABEL_8:
}

uint64_t PresentedViewState<A>.present(_:)(__int128 *a1)
{
  v3 = *a1;
  *(v2 + 104) = a1[1];
  v4 = a1[3];
  *(v2 + 120) = a1[2];
  *(v2 + 136) = v4;
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  *(v2 + 152) = *(a1 + 8);
  *(v2 + 88) = v3;
  sub_100572F08();
  *(v2 + 272) = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_1002EEEC4, v6, v5);
}

uint64_t sub_1002EEEC4()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  v3 = v1 + *(*v1 + 96);
  swift_beginAccess();
  *(v0 + 16) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 80) = *(v3 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 32) = v4;
  sub_10017E66C(v2, v0 + 160);
  *v3 = *(v0 + 88);
  v7 = *(v0 + 120);
  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  *(v3 + 64) = *(v0 + 152);
  *(v3 + 32) = v7;
  *(v3 + 48) = v8;
  *(v3 + 16) = v9;
  sub_10001036C(v0 + 16, &qword_1006E7A90);
  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *swift_task_alloc() = &type metadata for Alert;
  swift_getKeyPath();

  *(v0 + 160) = 1;

  sub_10056E488();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002EF070(__int128 *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CB98;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_1002EF108()
{
  result = swift_slowAlloc();
  qword_1006ECB48 = result;
  return result;
}

double UIWindowScene.noticePresenting.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1006E4FF0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, qword_1006ECB48))
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_10001036C(v6, &qword_1006EA040);
    goto LABEL_10;
  }

  sub_100009DCC(&qword_1006ECB50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t UIWindowScene.noticePresenting.setter(uint64_t a1)
{
  if (qword_1006E4FF0 != -1)
  {
    swift_once();
  }

  v3 = qword_1006ECB48;
  sub_1002EF3CC(a1, v12);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10000C8CC(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_100574478();
    (*(v6 + 8))(v8, v4);
    sub_100010474(v12);
  }

  else
  {
    v9 = 0;
  }

  objc_setAssociatedObject(v1, v3, v9, 1);
  swift_unknownObjectRelease();
  return sub_10001036C(a1, &qword_1006E6C10);
}

uint64_t sub_1002EF3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIWindowScene.noticePresenting.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  UIWindowScene.noticePresenting.getter(v3);
  return sub_1002EF4B4;
}

void sub_1002EF4B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1002EF3CC(*a1, v2 + 40);
    UIWindowScene.noticePresenting.setter(v2 + 40);
    sub_10001036C(v2, &qword_1006E6C10);
  }

  else
  {
    UIWindowScene.noticePresenting.setter(*a1);
  }

  free(v2);
}

uint64_t sub_1002EF52C(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002EF588()
{
  sub_10056C8A8();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t PresentedViewState<A>.present(_:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_100009DCC(&qword_1006E5D10);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_10056C8A8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  sub_100572F08();
  v2[12] = sub_100572EF8();
  v5 = sub_100572E78();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_1002EF758, v5, v4);
}

uint64_t sub_1002EF758()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000C8CC(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1002EF884;
  v5 = v0[8];

  return v7(v5, v2, v3);
}

uint64_t sub_1002EF884()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1002EF9A4, v3, v2);
}

uint64_t sub_1002EF9A4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000C6EF4(v0[8]);
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    (*(v5 + 32))(v4, v0[8], v6);
    (*(v5 + 16))(v8, v4, v6);
    (*(v5 + 56))(v8, 0, 1, v6);
    v9 = *(*v7 + 96);
    swift_beginAccess();
    sub_1001940B4(v8, v7 + v9);
    swift_endAccess();
    sub_100570A48();
    sub_10056EA28();

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002EFB88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CB98;

  return PresentedViewState<A>.present(_:)(a1);
}

uint64_t sub_1002EFC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a2;
  v30 = a1;
  v31 = sub_100009DCC(&qword_1006ECB70);
  __chkstk_darwin(v31);
  v29 = &v26 - v6;
  v7 = sub_100009DCC(&qword_1006ECB78);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_10056C8A8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*a3 + 96);
  swift_beginAccess();
  sub_10017F84C(a3 + v18, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000C6EF4(v13);
    v19 = sub_100009DCC(&qword_1006ECB80);
    (*(*(v19 - 8) + 16))(v29, v30, v19);
    swift_storeEnumTagMultiPayload();
    v20 = sub_100010BC0(&qword_1006ECB88, &qword_1006ECB80);
    v32 = v19;
    v33 = v20;
    swift_getOpaqueTypeConformance2();
    return sub_10056F5B8();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_100009DCC(&qword_1006ECB58);
    v27 = v7;
    sub_100010BC0(&qword_1006ECB60, &qword_1006ECB58);
    sub_10056EA88();
    swift_getKeyPath();
    sub_10056EA98();

    v26 = a4;
    v28 = v14;
    v24 = sub_100009DCC(&qword_1006ECB80);
    v25 = sub_100010BC0(&qword_1006ECB88, &qword_1006ECB80);
    v22 = v17;
    sub_100570088();

    v23 = v27;
    (*(v8 + 16))(v29, v10, v27);
    swift_storeEnumTagMultiPayload();
    v32 = v24;
    v33 = v25;
    swift_getOpaqueTypeConformance2();
    sub_10056F5B8();
    (*(v8 + 8))(v10, v23);
    return (*(v15 + 8))(v22, v28);
  }
}

uint64_t sub_1002F0158@<X0>(_BYTE *a1@<X8>)
{
  sub_10056C8A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a1 = v3;
  return result;
}

uint64_t sub_1002F01F4()
{
  sub_10056C8A8();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t View.shareSheetPresenting(_:)()
{

  sub_100009DCC(&qword_1006ECB58);
  sub_100010BC0(&qword_1006ECB60, &qword_1006ECB58);
  sub_10056EA78();
  sub_100570328();
}

uint64_t sub_1002F0360()
{
  sub_10056ECA8();
  sub_1002F03C4();
  return swift_getWitnessTable();
}

unint64_t sub_1002F03C4()
{
  result = qword_1006ECB68;
  if (!qword_1006ECB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ECB68);
  }

  return result;
}

unint64_t sub_1002F0470()
{
  result = qword_1006ECB90;
  if (!qword_1006ECB90)
  {
    sub_100010324(&qword_1006ECB98);
    sub_100010324(&qword_1006ECB80);
    sub_100010BC0(&qword_1006ECB88, &qword_1006ECB80);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ECB90);
  }

  return result;
}

unint64_t static LibraryModelRequest.label.getter()
{
  sub_100573ED8(27);

  swift_getMetatypeMetadata();
  v1._countAndFlagsBits = sub_100574758();
  sub_100572A98(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_100572A98(v2);
  swift_getMetatypeMetadata();
  v3._countAndFlagsBits = sub_100574758();
  sub_100572A98(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  sub_100572A98(v4);
  return 0xD000000000000014;
}

uint64_t LibraryModelRequest.section.getter()
{
  v1 = *(v0 + 8);
  sub_1002F0690(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_1002F0690(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;

    v4 = v3;
    v5 = a2;
  }

  return result;
}

uint64_t LibraryModelRequest.section.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1002F073C(*(v4 + 8), *(v4 + 16));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return result;
}

uint64_t sub_1002F073C(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

void *LibraryModelRequest.item.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = v2;

  return v1;
}

uint64_t LibraryModelRequest.item.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t LibraryModelRequest.filter.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t LibraryModelRequest.filter.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  *(v4 + 80) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  return result;
}

uint64_t LibraryModelRequest.itemRange.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
  return result;
}

uint64_t LibraryModelRequest.label.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t LibraryModelRequest.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

double LibraryModelRequest.init(library:section:item:scopedContainers:filter:itemRange:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, char a12, __int128 a13, __int128 a14, char a15)
{
  v23[160] = a12 & 1;
  v23[152] = a15 & 1;
  *&v24 = a1;
  *(&v24 + 1) = a2;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  *&v27 = a7;
  *(&v27 + 1) = a8;
  v28 = a10;
  *&v29 = a11;
  BYTE8(v29) = a12 & 1;
  v30 = a13;
  v31 = a14;
  LOBYTE(v32) = a15 & 1;
  *(&v32 + 1) = 0;
  v33 = 0;
  v34[0] = a1;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = a4;
  v34[4] = a5;
  v34[5] = a6;
  v34[6] = a7;
  v34[7] = a8;
  v35 = a10;
  v36 = a11;
  v37 = a12 & 1;
  v38 = a13;
  v39 = a14;
  v40 = a15 & 1;
  v41 = 0;
  v42 = 0;
  v16 = type metadata accessor for LibraryModelRequest();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v23, &v24, v16);
  (*(v17 + 8))(v34, v16);
  v18 = v31;
  *(a9 + 96) = v30;
  *(a9 + 112) = v18;
  *(a9 + 128) = v32;
  *(a9 + 144) = v33;
  v19 = v27;
  *(a9 + 32) = v26;
  *(a9 + 48) = v19;
  v20 = v29;
  *(a9 + 64) = v28;
  *(a9 + 80) = v20;
  result = *&v24;
  v22 = v25;
  *a9 = v24;
  *(a9 + 16) = v22;
  return result;
}

void LibraryModelRequest.mediaPlayerRequest()(uint64_t a1)
{
  v2 = v1;
  sub_100009DCC(&qword_1006ECBA0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = v1[6];
  v21 = v1[7];
  v22 = v1[8];
  v23 = *(v1 + 18);
  v16 = v1[2];
  v17 = v1[3];
  v18 = v1[4];
  v19 = v1[5];
  v14 = *v1;
  v15 = v1[1];
  v5 = v4;
  WitnessTable = swift_getWitnessTable();
  sub_1002F177C(v5, a1, WitnessTable);
  [v5 setMediaLibrary:{*v1, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  isa = 0;
  if (*(v2 + 2) && *(v2 + 4))
  {
    sub_1000D3B98(0, &unk_1006E91B0);
    isa = sub_100572D08().super.isa;
  }

  [v5 setAllowedSectionIdentifiers:isa];

  v8 = *(v2 + 8);
  if (v8)
  {
    sub_1000D3B98(0, &unk_1006E91B0);
    v8 = sub_100572D08().super.isa;
  }

  [v5 setAllowedItemIdentifiers:v8];

  v9 = *(v2 + 9);
  if (v9)
  {
    sub_1000D3B98(0, &qword_1006E8470);
    v9 = sub_100572D08().super.isa;
  }

  [v5 setScopedContainers:v9];

  v10 = *(v2 + 13);
  if (*(v2 + 88))
  {
    v11 = MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
  }

  else
  {
    v11 = v2 + 5;
  }

  [v5 setFilteringOptions:*v11];
  if (v10)
  {
    v12 = sub_100572898();
  }

  else
  {
    v12 = 0;
  }

  [v5 setFilterText:v12];

  if ((v2[8] & 1) == 0)
  {
    if (__OFSUB__(*(v2 + 15), *(v2 + 14)))
    {
      __break(1u);
      return;
    }

    [v5 setContentRange:?];
  }

  if (*(v2 + 18))
  {
    v13 = sub_100572898();
  }

  else
  {
    v13 = 0;
  }

  [v5 setLabel:v13];
}

uint64_t UIView.Border.thickness.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a4)
    {
      if (a8)
      {
        if (a3 == a7 && a4 == a8)
        {
          return 1;
        }

        if (sub_100574498())
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if ((a6 & 1) == 0 && a1 == a5)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL static LibraryModelRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1000D3B98(0, &qword_1006E93C0);
  if ((sub_100573A58() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1002F0690(*(a2 + 8), *(a2 + 16));
    sub_1002F0690(v4, v5);
    sub_1002F073C(v4, v5);
    sub_1002F073C(v8, v9);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  sub_1002F0690(*(a2 + 8), *(a2 + 16));
  sub_1002F0690(v4, v5);
  v18 = static LibraryContentConfiguration.__derived_struct_equals(_:_:)(v4, v5, v6, v7, v8, v9, v11, v10);

  sub_1002F073C(v4, v5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if ((static LibraryContentConfiguration.__derived_struct_equals(_:_:)(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = sub_1001A03B0(v12, v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((static LibraryModelRequest.Filter.__derived_struct_equals(_:_:)(*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 128))
  {
    if (!*(a2 + 128))
    {
      return 0;
    }

    goto LABEL_21;
  }

  result = 0;
  if ((*(a2 + 128) & 1) == 0 && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120))
  {
LABEL_21:
    v16 = *(a1 + 144);
    v17 = *(a2 + 144);
    if (v16)
    {
      return v17 && (*(a1 + 136) == *(a2 + 136) && v16 == v17 || (sub_100574498() & 1) != 0);
    }

    return !v17;
  }

  return result;
}

uint64_t static LibraryContentConfiguration.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_1000D3B98(0, &qword_1006ECBA8);
    v14 = a5;
    v15 = a1;
    v16 = sub_100573A58();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  sub_1000D3B98(0, &qword_1006E93C0);
  if (sub_100573A58())
  {
    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      v17 = sub_1001A0120(a3, a7);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else if (a7)
    {
      return 0;
    }

    if (a4)
    {
      if (a8)
      {

        v18 = sub_1001A0134(a4, a8);

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002F1274@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1002F0690(v2, v3);
}

uint64_t sub_1002F1288@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v5 = v1[7];
  v4 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v2;
  v7 = v3;
}

uint64_t LibraryContentConfiguration<>.init()()
{
  sub_100009DCC(&unk_1006E8FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B510;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  isa = sub_100572D08().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return 0;
}

uint64_t sub_1002F1438(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002F1474(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002F14B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002F14EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002F1528(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1002F1540(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1002F1574(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F15BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F1620()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002F165C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002F16B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1002F1724()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1002F177C(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v48 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = sub_100573C28();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - v15;
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v19 = *(a3 + 56);
  v57 = v3;
  v60 = a2;
  v50 = v19;
  v19(a2, a3);
  v20 = *(v9 - 8);
  v59 = *(v20 + 48);
  v21 = v59(v18, 1, v9);
  v53 = v10;
  v51 = v11;
  if (v21 == 1)
  {
    (*(v11 + 8))(v18, v10);
    v22 = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 24))(v9, AssociatedConformanceWitness);
    (*(v20 + 8))(v18, v9);
  }

  [v61 setSectionKind:v22];

  v24 = v50;
  v50(v60, a3);
  v25 = v59(v16, 1, v9);
  v26 = v52;
  if (v25 == 1)
  {
    v27 = 0;
    v28 = v51;
    v29 = v53;
  }

  else
  {
    v30 = swift_getAssociatedConformanceWitness();
    v27 = (*(v30 + 32))(v9, v30);
    v28 = v20;
    v29 = v9;
  }

  (*(v28 + 8))(v16, v29);
  [v61 setSectionProperties:v27];

  v24(v60, a3);
  if (v59(v26, 1, v9) == 1)
  {
    (*(v51 + 8))(v26, v53);
  }

  else
  {
    v31 = swift_getAssociatedConformanceWitness();
    v32 = (*(v31 + 56))(v9, v31);
    (*(v20 + 8))(v26, v9);
    if (v32)
    {
      sub_1000D3B98(0, &qword_1006E8460);
      v33.super.isa = sub_100572D08().super.isa;

      goto LABEL_12;
    }
  }

  v33.super.isa = 0;
LABEL_12:
  [v61 setSectionSortDescriptors:v33.super.isa];

  v59 = *(a3 + 64);
  v34 = v54;
  v35 = v60;
  (v59)(v60, a3);
  v36 = AssociatedTypeWitness;
  v37 = swift_getAssociatedConformanceWitness();
  v38 = v37[3](v36, v37);
  v49 = a3;
  v56 = *(v56 + 8);
  (v56)(v34, v36);
  v39 = v61;
  [v61 setItemKind:v38];

  v40 = a3;
  v41 = v59;
  (v59)(v35, v40);
  v42 = v37[4](v36, v37);
  v43 = v34;
  v44 = v56;
  (v56)(v43, v36);
  [v39 setItemProperties:v42];

  v45 = v55;
  v41(v35, v49);
  v46 = v37[7](v36, v37);
  v44(v45, v36);
  if (v46)
  {
    sub_1000D3B98(0, &qword_1006E8460);
    v47.super.isa = sub_100572D08().super.isa;
  }

  else
  {
    v47.super.isa = 0;
  }

  [v61 setItemSortDescriptors:v47.super.isa];
}

uint64_t sub_1002F1E48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *(a3 + 16);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  WitnessTable = swift_getWitnessTable();
  ModelRequest.perform(_:_:)(sub_1002F252C, v8, a3, WitnessTable, a4);
}

void ModelRequest.perform(_:_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = *(a4 + 72);

  v12 = v11(a3, a4);
  v16[4] = sub_1002F2508;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000128FC;
  v16[3] = &unk_10069A860;
  v13 = _Block_copy(v16);
  v14 = v12;

  v15 = [v14 newOperationWithResponseHandler:v13];
  _Block_release(v13);

  if (qword_1006E4FF8 != -1)
  {
    swift_once();
  }

  [(objc_class *)ModelRequestQueue.super.isa addOperation:v15];
  a5[3] = sub_1000D3B98(0, &qword_1006ECE00);
  a5[4] = &protocol witness table for NSOperation;

  *a5 = v15;
}

id static MPPropertySet.sectionTitle.getter()
{
  sub_100009DCC(&unk_1006E8FD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B510;
  *(v0 + 32) = sub_1005728D8();
  *(v0 + 40) = v1;
  isa = sub_100572D08().super.isa;

  v3 = [objc_opt_self() propertySetWithProperties:isa];

  return v3;
}

id sub_1002F216C()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = sub_100572898();
  [v0 setName:v1];

  [v0 setMaxConcurrentOperationCount:4];
  result = [v0 setQualityOfService:33];
  ModelRequestQueue.super.isa = v0;
  return result;
}

NSOperationQueue *ModelRequestQueue.unsafeMutableAddressor()
{
  if (qword_1006E4FF8 != -1)
  {
    swift_once();
  }

  return &ModelRequestQueue;
}

uint64_t sub_1002F225C(void *a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, unint64_t))
{
  v4 = a2;
  if (!a1)
  {
    if (!a2)
    {
      sub_1002F2574();
      v7 = swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 2;
      swift_errorRetain();
LABEL_8:
      v14 = 0;
      v15 = 1;
      goto LABEL_9;
    }

LABEL_7:
    sub_1002F2574();
    v7 = swift_allocError();
    *v17 = v4;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    swift_errorRetain();
    swift_errorRetain();
    v4 = 0;
    goto LABEL_8;
  }

  swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCastUnknownClass();
  if (!v6)
  {
    if (!v4)
    {
      sub_100009DCC(&qword_1006ECE08);
      swift_getWitnessTable();
      v19 = sub_1001F6094();
      v21 = v20;
      sub_1002F2574();
      v7 = swift_allocError();
      *v22 = v19;
      *(v22 + 8) = v21;
      v15 = 1;
      *(v22 + 16) = 1;
      swift_errorRetain();
      v4 = 0;
      v14 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = v6;
  sub_100009DCC(&unk_1006E84D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057B510;
  v9 = MPModelResponseDidInvalidateNotification;
  v10.location = MPModelResponseDidInvalidateNotification;
  v10.length = v7;
  v11 = CFRange.init(_:)(v10);
  *(v8 + 56) = &type metadata for NotificationTrigger;
  *(v8 + 64) = &protocol witness table for NotificationTrigger;
  *(v8 + 32) = v11;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v12 = a1;
  v13 = v9;
  v4 = BindingRequestResponseInvalidation.init(triggers:)(v8);
  v14 = sub_1002F25D4();
  v15 = 0;
LABEL_9:
  a3(v7, v15, v4, v14);
  sub_1002F25C8(v7, v15);
  sub_1002F25C8(v7, v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_1002F24D0()
{

  return swift_deallocObject();
}

uint64_t sub_1002F2514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F252C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v7 = a1;
  v8 = a2 & 1;
  return v5(&v7, a3, a4);
}

unint64_t sub_1002F2574()
{
  result = qword_1006ECE10;
  if (!qword_1006ECE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ECE10);
  }

  return result;
}

void sub_1002F25C8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1002F25D4()
{
  result = qword_1006EA018;
  if (!qword_1006EA018)
  {
    type metadata accessor for BindingRequestResponseInvalidation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EA018);
  }

  return result;
}

uint64_t sub_1002F262C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t static Request.label.getter()
{
  swift_getMetatypeMetadata();

  return sub_100574758();
}

uint64_t Request.performThenCompleteOnMain(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = *(a5 + 32);

  v11(a1, sub_1002F2B60, v10, a4, a5);
}

uint64_t sub_1002F2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v36 = sub_100570B88();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100570BC8();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6;
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v16 = sub_1005746D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  sub_100155E5C();
  v31 = sub_1005735E8();
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v15;
  *(v22 + 3) = a7;
  v23 = v33;
  *(v22 + 4) = v32;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v24 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  v25 = v35;
  *v24 = v34;
  *(v24 + 1) = v25;
  aBlock[4] = sub_1002F381C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_10069A9F8;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_100570BA8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001ABB90();
  sub_100009DCC(&unk_1006E9B30);
  sub_10019CC54();
  v27 = v36;
  sub_100573DA8();
  v28 = v31;
  sub_100573608();
  _Block_release(v26);

  (*(v39 + 8))(v11, v27);
  return (*(v37 + 8))(v14, v38);
}

uint64_t sub_1002F2B28()
{

  return swift_deallocObject();
}

uint64_t Request.response(previousRevision:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v5[7] = sub_1005746D8();
  sub_100010324(&qword_1006ECE18);
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002F2C80, 0, 0);
}

uint64_t sub_1002F2C80()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1002F2D7C;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001BLL, 0x80000001005B4E00, sub_1002F315C, v3, v6);
}

uint64_t sub_1002F2D7C()
{

  return _swift_task_switch(sub_1002F2E94, 0, 0);
}

uint64_t sub_1002F2E94()
{
  v1 = (v0[9] + *(v0[8] + 48));
  v2 = *v1;
  v3 = v1[1];
  (*(*(v0[7] - 8) + 32))(v0[2], v0[9]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1002F2F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  sub_1005746D8();
  sub_100010324(&qword_1006ECE18);
  swift_getTupleTypeMetadata2();
  v9 = sub_100572EA8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-1] - v11;
  (*(v10 + 16))(&v17[-1] - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  (*(v10 + 32))(v14 + v13, v12, v9);
  (*(a5 + 32))(v17, a3, sub_1002F3528, v14, a4, a5);

  return sub_1002F3660(v17);
}

uint64_t sub_1002F3168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v6 = sub_1005746D8();
  sub_100010324(&qword_1006ECE18);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = (&v12 + *(v8 + 48) - v9);
  (*(*(v6 - 8) + 16))(&v12 - v9, a1, v6);
  *v10 = a2;
  v10[1] = a3;
  sub_100572EA8();
  swift_unknownObjectRetain();
  return sub_100572E98();
}

uint64_t Array<A>.cancel()()
{
  sub_100572E38();
  swift_getWitnessTable();
  return sub_100572C78();
}

uint64_t sub_1002F3410()
{
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  sub_1005746D8();
  sub_100010324(&qword_1006ECE18);
  swift_getTupleTypeMetadata2();
  v1 = sub_100572EA8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1002F3528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  sub_1005746D8();
  sub_100010324(&qword_1006ECE18);
  swift_getTupleTypeMetadata2();
  sub_100572EA8();

  return sub_1002F3168(a1, a2, a3);
}

uint64_t sub_1002F3660(uint64_t a1)
{
  v2 = sub_100009DCC(qword_1006ECE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F36C8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v2 = *(sub_1005746D8() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002F381C()
{
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v1 = *(sub_1005746D8() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(v0 + 32))(v0 + v2, *v3, v3[1]);
}

uint64_t sub_1002F38F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F3910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t *RequestResponse.Controller.__allocating_init(request:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1002F87F8(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t *RequestResponse.Controller.init(request:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1002F87F8(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1002F3AD8()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  RequestResponseInvalidatable.invalidate()();

  return swift_unknownObjectRelease();
}

uint64_t property wrapper backing initializer of RequestResponse.Controller.revision(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  return sub_1002752E0(&v3, v1);
}

uint64_t sub_1002F3B9C()
{
  sub_1002F8BD8();
}

uint64_t sub_1002F3BD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = *(v3 + 96);
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v1 + v11, v4);
  v21[1] = *(*(v3 + 88) + 8);
  v13 = sub_1005727E8();
  v14 = *(v5 + 8);
  result = v14(v10, v4);
  if ((v13 & 1) == 0)
  {
    v21[0] = v8;
    RequestResponse.Controller.revision.getter();
    sub_1002F3AD8();

    v16 = *(*v2 + 176);
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (v17)
    {
      v12(v10, (v17 + *(*v17 + 96)), v4);
      v18 = v2 + v11;
      v19 = v21[0];
      v12(v21[0], v18, v4);

      v20 = sub_1005727E8();
      v14(v19, v4);
      v14(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_1002F3AD8();
      }
    }

    return sub_1002F3F0C();
  }

  return result;
}

uint64_t RequestResponse.Controller.revision.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_1002F3F0C()
{
  v1 = *(*v0 + 144);
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    return RequestResponse.Controller.setNeedsReload(_:)(0, 0);
  }

  return result;
}

uint64_t RequestResponse.Controller.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t RequestResponse.Controller.request.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1002F8D08(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*RequestResponse.Controller.request.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 96);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1002F41F8;
}

void sub_1002F41F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_1002F8D08(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_1002F8D08(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1002F42D4@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002F4300()
{

  sub_1002F8BD8();
}

uint64_t sub_1002F4344(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = RequestResponse.Controller.revision.getter();
  v6 = *(v5 + *(*v5 + 112));

  v8 = *(a1 + *(*a1 + 112));
  if (v6 != v8)
  {
    v9 = RequestResponse.Controller.revision.getter();
    v10 = *(v9 + *(*v9 + 112));

    if (v8 >= v10)
    {
      if (qword_1006E5000 != -1)
      {
        swift_once();
      }

      v26 = sub_10056DF88();
      sub_10000C49C(v26, qword_1006FC980);
      swift_retain_n();

      v27 = sub_10056DF68();
      v28 = sub_100573428();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134349312;
        v30 = RequestResponse.Controller.revision.getter();
        v31 = *(v30 + *(*v30 + 112));

        *(v29 + 4) = v31;

        *(v29 + 12) = 2050;
        *(v29 + 14) = v8;

        _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to apply a revision which ID (%{public}ld) is older than the previous revision's (%{public}ld).", v29, 0x16u);
      }

      else
      {
      }

      sub_1002F8BD8(v32);
    }

    else
    {
      v11 = *(*v2 + 184);
      v12 = *(v2 + v11);
      if (v12)
      {
        v13 = *(v12 + *(*v12 + 112));

        v14 = RequestResponse.Controller.revision.getter();

        v15 = *(v14 + *(*v14 + 112));

        if (v15 >= v13)
        {
          *(v2 + v11) = 0;
        }
      }

      v16 = *(*v2 + 176);
      swift_beginAccess();
      v17 = *(v2 + v16);
      if (v17)
      {
        v18 = *(v17 + *(*v17 + 112));

        v19 = RequestResponse.Controller.revision.getter();

        v20 = *(v19 + *(*v19 + 112));

        if (v20 >= v18)
        {
          *(v2 + v16) = 0;
        }
      }

      v21 = RequestResponse.Controller.revision.getter();
      sub_1002F4C40(v21);
      v22 = *(*v21 + 112);
      swift_beginAccess();
      v24 = *(v4 + 80);
      v23 = *(v4 + 88);
      type metadata accessor for RequestResponse.Revision();
      swift_getFunctionTypeMetadata2();
      sub_100572E38();
      sub_100572708();
      if (v60)
      {
        v25 = swift_endAccess();
        v61[0] = v60;
        __chkstk_darwin(v25);
        swift_getWitnessTable();
        sub_100572C78();
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      sub_1005726E8();
      sub_100572718();
      swift_endAccess();
      v33 = RequestResponse.Controller.revision.getter();
      v34 = *(v33 + *(*v33 + 120) + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 40))(ObjectType, v34);
      swift_unknownObjectRelease();
      if (v36)
      {
        if (qword_1006E5000 != -1)
        {
          swift_once();
        }

        v37 = sub_10056DF88();
        sub_10000C49C(v37, qword_1006FC980);
        v38 = sub_10056DF68();
        v39 = sub_100573448();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v59 = v22;
          v41 = swift_slowAlloc();
          v61[0] = v41;
          *v40 = 136446210;
          v42 = (*(v23 + 24))(v24, v23);
          v44 = sub_1000C9784(v42, v43, v61);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "╭ %{public}s", v40, 0xCu);
          sub_100010474(v41);
          v22 = v59;
        }

        v45 = sub_10056DF68();
        v46 = sub_100573448();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&_mh_execute_header, v45, v46, "╞ 🔄 Invalid", v47, 2u);
        }

        v48 = sub_10056DF68();
        v49 = sub_100573448();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134349056;
          *(v50 + 4) = *(v21 + v22);

          _os_log_impl(&_mh_execute_header, v48, v49, "╰ RevisionID=%{public}ld", v50, 0xCu);
        }

        else
        {
        }

        sub_1002F3F0C();
      }

      else
      {
        v51 = RequestResponse.Controller.revision.getter();
        v52 = *(v51 + *(*v51 + 112));

        v53 = RequestResponse.Controller.revision.getter();
        v54 = *(v53 + *(*v53 + 120) + 8);
        swift_unknownObjectRetain();

        v55 = swift_getObjectType();
        v56 = swift_allocObject();
        swift_weakInit();
        v57 = swift_allocObject();
        v57[2] = v24;
        v57[3] = v23;
        v57[4] = v56;
        v57[5] = v52;
        v58 = *(v54 + 24);

        v58(sub_1002F9708, v57, v55, v54);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1002F4C40(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 128));
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {

    v5(v1, a1);
    return sub_1000F3E14(v5);
  }

  return result;
}

uint64_t sub_1002F4CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = RequestResponse.Controller.revision.getter();
    v12 = *(v11 + *(*v11 + 112));

    if (v12 == a4)
    {
      if (qword_1006E5000 != -1)
      {
        swift_once();
      }

      v13 = sub_10056DF88();
      sub_10000C49C(v13, qword_1006FC980);
      v14 = sub_10056DF68();
      v15 = sub_100573448();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v37[0] = v17;
        *v16 = 136446210;
        v18 = (*(a6 + 24))(a5, a6);
        v20 = sub_1000C9784(v18, v19, v37);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "╭ %{public}s", v16, 0xCu);
        sub_100010474(v17);
      }

      v21 = sub_10056DF68();
      v22 = sub_100573448();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "╞ 🔄 Invalidated", v23, 2u);
      }

      v24 = sub_10056DF68();
      v25 = sub_100573448();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134349056;
        *(v26 + 4) = a4;
        _os_log_impl(&_mh_execute_header, v24, v25, "╞ RevisionID=%{public}ld", v26, 0xCu);
      }

      swift_unknownObjectRetain();
      v27 = sub_10056DF68();
      v28 = sub_100573448();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136446210;
        swift_getObjectType();
        v31 = sub_1005744A8();
        v33 = sub_1000C9784(v31, v32, v37);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "╰ Invalidator=%{public}s", v29, 0xCu);
        sub_100010474(v30);
      }

      v34 = (v10 + *(*v10 + 136));
      swift_beginAccess();
      v35 = *v34;
      if (*v34)
      {

        v36 = RequestResponse.Controller.revision.getter();
        v35(v10, v36);
        sub_1000F3E14(v35);
      }

      sub_1002F3F0C();
    }
  }

  return result;
}

uint64_t RequestResponse.Controller.$revision.getter()
{
  swift_beginAccess();
  type metadata accessor for RequestResponse.Revision();
  sub_10056E4A8();
  sub_10056E448();
  return swift_endAccess();
}

uint64_t RequestResponse.Controller.willReloadRequest.getter()
{
  v1 = (v0 + *(*v0 + 112));
  swift_beginAccess();
  v2 = *v1;
  sub_1000E672C(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.willReloadRequest.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000F3E14(v6);
}

uint64_t RequestResponse.Controller.willApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 120));
  swift_beginAccess();
  v2 = *v1;
  sub_1000E672C(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.willApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000F3E14(v6);
}

uint64_t RequestResponse.Controller.didApplyRevision.getter()
{
  v1 = (v0 + *(*v0 + 128));
  swift_beginAccess();
  v2 = *v1;
  sub_1000E672C(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.didApplyRevision.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000F3E14(v6);
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.getter()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;
  sub_1000E672C(*v1);
  return v2;
}

uint64_t RequestResponse.Controller.revisionDidInvalidate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000F3E14(v6);
}

uint64_t sub_1002F56B8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *(*v2 + 144);
  result = swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v6 = RequestResponse.Controller.revision.getter();
    v7 = *(v6 + *(*v6 + 120) + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 40))(ObjectType, v7);
    result = swift_unknownObjectRelease();
    if (v9)
    {
      v10 = *(*v2 + 176);
      swift_beginAccess();
      if (!*(v2 + v10))
      {
        return sub_1002F3F0C();
      }

      v11 = RequestResponse.Revision.isValid.getter();

      if (!v11)
      {
        return sub_1002F3F0C();
      }
    }
  }

  return result;
}

BOOL RequestResponse.Revision.isValid.getter()
{
  v1 = *(v0 + *(*v0 + 120) + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v1) = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return (v1 & 1) == 0;
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.getter()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestResponse.Controller.isAutomaticReloadingEnabled.setter(char a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1002F56B8(v4);
}

void (*RequestResponse.Controller.isAutomaticReloadingEnabled.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 144);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1002F59C0;
}

uint64_t sub_1002F59D8(char a1)
{
  v3 = *(*v1 + 152);
  result = swift_beginAccess();
  if (*(v1 + v3) & 1) == 0 && (a1)
  {
    v5 = *(v1 + *(*v1 + 184));
    if (v5)
    {
      v6 = *(*v5 + 112);
      v7 = *(v5 + v6);

      v8 = RequestResponse.Controller.revision.getter();
      v9 = *(v8 + *(*v8 + 112));

      if (v9 < v7)
      {
        if (qword_1006E5000 != -1)
        {
          swift_once();
        }

        v10 = sub_10056DF88();
        sub_10000C49C(v10, qword_1006FC980);
        v11 = sub_10056DF68();
        v12 = sub_100573448();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "╭ ⏰ RRC resumed, applying pending revision", v13, 2u);
        }

        v14 = sub_10056DF68();
        v15 = sub_100573448();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134349056;
          *(v16 + 4) = *(v5 + v6);

          _os_log_impl(&_mh_execute_header, v14, v15, "╞ RevisionID=%{public}ld", v16, 0xCu);
        }

        else
        {
        }

        sub_1002F5C18(v5);
      }
    }
  }

  return result;
}

void sub_1002F5C18(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MSVBlockGuard);
  v16[4] = sub_1002F7AD0;
  v16[5] = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1002ED584;
  v16[3] = &unk_10069ADF8;
  v5 = _Block_copy(v16);
  v6 = [v4 initWithTimeout:v5 interruptionHandler:10.0];
  _Block_release(v5);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = a1;
  v8 = (v2 + *(*v2 + 120));
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {

    v10 = v6;
    sub_1000E672C(v9);
    if (qword_1006E5000 != -1)
    {
      swift_once();
    }

    v11 = sub_10056DF88();
    sub_10000C49C(v11, qword_1006FC980);
    v12 = sub_10056DF68();
    v13 = sub_100573448();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "╞ 🫸 calling willApplyRevision; Waiting for client to accept it.", v14, 2u);
    }

    v9(v2, a1, sub_1002F967C, v7);

    sub_1000F3E14(v9);
  }

  else
  {

    v15 = v6;
    sub_1002F7BB8(v15);
  }
}

uint64_t RequestResponse.Controller.isPaused.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RequestResponse.Controller.isPaused.setter(char a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1002F59D8(v4);
}

void (*RequestResponse.Controller.isPaused.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 152);
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1002F6000;
}

void sub_1002F6018(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t RequestResponse.Controller.setNeedsReload(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = sub_100570B88();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100570BC8();
  v45 = *(v47 - 8);
  v10 = __chkstk_darwin(v47);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v6 + 80);
  v14 = *(v13 - 8);
  result = __chkstk_darwin(v10);
  v17 = &v43 - v16;
  if (a1)
  {
    v18 = swift_allocObject();
    v18[2] = v13;
    v18[3] = *(v7 + 88);
    v18[4] = a1;
    v18[5] = a2;
    aBlock[6] = sub_1002F8ED0;
    aBlock[7] = v18;
    swift_beginAccess();
    type metadata accessor for RequestResponse.Revision();
    swift_getFunctionTypeMetadata2();
    sub_100572E38();

    sub_100572DE8();
    result = swift_endAccess();
    v6 = *v3;
  }

  v19 = *(v6 + 192);
  if ((*(v3 + v19) & 1) == 0)
  {
    *(v3 + v19) = 1;
    v20 = *(*v3 + 176);
    swift_beginAccess();
    v21 = *(v3 + v20);
    if (v21)
    {
      v44 = v8;
      v22 = *(*v3 + 96);
      swift_beginAccess();
      (*(v14 + 16))(v17, v3 + v22, v13);
      v23 = *(*v21 + 96);
      v24 = *(v7 + 88);
      v25 = *(v24 + 40);

      LOBYTE(v23) = v25(v21 + v23, v13, v24);
      (*(v14 + 8))(v17, v13);
      if (v23)
      {
        if (qword_1006E5000 != -1)
        {
          swift_once();
        }

        v26 = sub_10056DF88();
        sub_10000C49C(v26, qword_1006FC980);
        v27 = sub_10056DF68();
        v28 = sub_100573448();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v29 = 136446210;
          v30 = (*(v24 + 24))(v13, v24);
          v32 = sub_1000C9784(v30, v31, aBlock);

          *(v29 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "╭ %{public}s", v29, 0xCu);
          sub_100010474(v43);
        }

        v33 = sub_10056DF68();
        v34 = sub_100573448();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "╞ 🛑 Cancelled", v35, 2u);
        }

        v36 = sub_10056DF68();
        v37 = sub_100573448();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134349056;
          *(v38 + 4) = *(v21 + *(*v21 + 112));

          _os_log_impl(&_mh_execute_header, v36, v37, "╰ RevisionID=%{public}ld", v38, 0xCu);
        }

        else
        {
        }

        v39 = *(v21 + *(*v21 + 112));
        swift_beginAccess();
        sub_100250C1C(&v49, v39);
        swift_endAccess();
        sub_1002F3AD8();
      }

      v8 = v44;
    }

    sub_100155E5C();
    v40 = sub_1005735E8();
    aBlock[4] = sub_1002F8E7C;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_10069AA20;
    v41 = _Block_copy(aBlock);

    sub_100570BA8();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002F95A0(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009DCC(&unk_1006E9B30);
    sub_10019CC54();
    v42 = v46;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v41);

    (*(v48 + 8))(v42, v8);
    return (*(v45 + 8))(v12, v47);
  }

  return result;
}

uint64_t sub_1002F6834(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = v60 - v10;
  v13 = *(v12 + 192);
  if (*(v1 + v13) != 1)
  {
    return result;
  }

  *(v1 + v13) = 0;
  v14 = *(*v1 + 176);
  swift_beginAccess();
  v63 = v14;
  v15 = *(v2 + v14);
  if (v15 || (v15 = *(v2 + *(*v2 + 184))) != 0)
  {
    v16 = *(v15 + *(*v15 + 112));
    v17 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v58 = RequestResponse.Controller.revision.getter();
    v59 = *(v58 + *(*v58 + 112));

    v17 = v59 + 1;
    if (!__OFADD__(v59, 1))
    {
LABEL_5:
      v61 = v8;
      v18 = *(*v2 + 96);
      swift_beginAccess();
      v62 = v5;
      v60[0] = v5[2];
      v60[1] = v5 + 2;
      (v60[0])(v11, v2 + v18, v4);
      v19 = *(*v2 + 160);
      swift_beginAccess();
      v71[0] = *(v2 + v19);
      v67 = v11;
      v68 = v17;
      *&v69 = v17;
      swift_beginAccess();
      v64 = *(v3 + 88);
      v65 = v4;
      type metadata accessor for RequestResponse.Revision();
      swift_getFunctionTypeMetadata2();
      sub_100572E38();
      sub_1005726E8();

      v8 = v67;
      sub_100572718();
      swift_endAccess();
      *(v2 + v19) = sub_100572D88();

      v20 = (v2 + *(*v2 + 112));
      swift_beginAccess();
      v21 = *v20;
      if (*v20)
      {

        v21(v2, v8);
        sub_1000F3E14(v21);
      }

      swift_checkMetadataState();
      swift_allocObject();
      v5 = sub_1002F8554(v68, v8);
      *(v2 + v63) = v5;

      if (qword_1006E5000 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_8:
  v22 = sub_10056DF88();
  sub_10000C49C(v22, qword_1006FC980);
  v23 = sub_10056DF68();
  v24 = sub_100573448();
  v25 = os_log_type_enabled(v23, v24);
  v66 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v72[0] = v27;
    *v26 = 136446210;
    v28 = (*(v64 + 24))();
    v30 = sub_1000C9784(v28, v29, v72);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "╭ %{public}s", v26, 0xCu);
    sub_100010474(v27);

    v8 = v67;
  }

  v31 = sub_10056DF68();
  v32 = sub_100573448();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "╞ 🕺Performing", v33, 2u);
  }

  v34 = sub_10056DF68();
  v35 = sub_100573448();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v34, v35, "╞ RevisionID=%{public}ld", v36, 0xCu);
  }

  v37 = sub_10056DF68();
  v38 = sub_100573448();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v72[0] = v40;
    *v39 = 136446210;
    swift_beginAccess();
    (v60[0])(v61, v8, v65);
    v41 = sub_100572978();
    v43 = sub_1000C9784(v41, v42, v72);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "╰ Request=%{public}s", v39, 0xCu);
    sub_100010474(v40);
  }

  v44 = v68;
  swift_beginAccess();
  v45 = RequestResponse.Controller.revision.getter();
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v47[2] = v66;
  v47[3] = v46;
  v47[4] = v44;
  v48 = v64;
  v49 = v8;
  v50 = *(v64 + 32);

  v51 = v65;
  v50(v72, v45, sub_1002F94BC, v47, v65, v48);

  sub_1002F94C8(v72, &v69);
  if (v70)
  {
    sub_10002EA74(&v69, v71);
    v52 = v63;
    swift_beginAccess();
    v53 = *(v2 + v52);
    v54 = v62;
    if (v53)
    {
      swift_endAccess();
      v55 = v67;
      if (*(v53 + *(*v53 + 112)) == v68)
      {
        type metadata accessor for RequestResponse.Controller.TaskInvalidator();
        sub_10002EA8C(v71, &v69);
        v56 = swift_allocObject();
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        *(v56 + 72) = 0;
        sub_10002EA74(&v69, v56 + 16);
        WitnessTable = swift_getWitnessTable();

        sub_1002F9538(v56, WitnessTable);
      }

      sub_100010474(v71);
      sub_1002F3660(v72);
      return (v54[1])(v55, v51);
    }

    else
    {
      sub_100010474(v71);
      sub_1002F3660(v72);
      swift_endAccess();

      return (v54[1])(v67, v51);
    }
  }

  else
  {
    sub_1002F3660(v72);

    sub_1002F3660(&v69);
    return (v62[1])(v49, v51);
  }
}

uint64_t sub_1002F71A4(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  sub_10002EA74(a1, v2 + 16);
  return v2;
}

uint64_t sub_1002F71F0(uint64_t result)
{
  if (*(v1 + 56) == 1 && (result & 1) == 0)
  {
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    sub_10000C8CC((v1 + 16), v2);
    return (*(v3 + 8))(v2, v3);
  }

  return result;
}

uint64_t sub_1002F7254(char a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_1002F71F0(v2);
}

uint64_t sub_1002F7264()
{
  sub_100010474(v0 + 16);
  sub_1000F3E14(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_1002F72A4()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_1000E672C(v1);
  return v1;
}

uint64_t sub_1002F72F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_1000F3E14(v5);
}

uint64_t (*sub_1002F73A4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_1002F73D0;
}

uint64_t sub_1002F7404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a4 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v13 = sub_1005746D8();
  (*(*(v13 - 8) + 24))(a4 + v12, a1, v13);
  swift_endAccess();
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    type metadata accessor for GenericRequestResponseInvalidation();
    v14 = swift_allocObject();
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 16) = 0x636972656E6547;
    *(v14 + 24) = 0xE700000000000000;
    a3 = sub_1002F95A0(qword_1006ECFA8, type metadata accessor for GenericRequestResponseInvalidation);
  }

  swift_unknownObjectRetain();
  sub_1002F9538(v14, a3);
  swift_unknownObjectRelease();
  sub_100155E5C();
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a4;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002F9628, v15);
}

void sub_1002F762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1006E5000 != -1)
    {
      swift_once();
    }

    v8 = sub_10056DF88();
    sub_10000C49C(v8, qword_1006FC980);
    v9 = sub_10056DF68();
    v10 = sub_100573448();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34[0] = v12;
      *v11 = 136446210;
      v13 = (*(*(v5 + 88) + 24))(*(v5 + 80));
      v15 = sub_1000C9784(v13, v14, v34);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "╭ %{public}s", v11, 0xCu);
      sub_100010474(v12);
    }

    v16 = sub_10056DF68();
    v17 = sub_100573448();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "╞ ✅ Finished Loading", v18, 2u);
    }

    v19 = sub_10056DF68();
    v20 = sub_100573448();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v19, v20, "╞ RevisionID=%{public}ld", v21, 0xCu);
    }

    v22 = *(a3 + *(*a3 + 112));
    swift_beginAccess();
    sub_1001E03A4(v22);
    v24 = v23;
    swift_endAccess();
    if (v24)
    {
      v25 = *(*v7 + 152);
      swift_beginAccess();
      if (*(v7 + v25) != 1)
      {
        v32 = RequestResponse.Controller.revision.getter();
        v33 = *(v32 + *(*v32 + 112));

        if (v33 < v22)
        {
          sub_1002F5C18(a3);
        }

        goto LABEL_24;
      }

      v26 = *(*v7 + 184);
      v27 = *(v7 + v26);
      if (v27)
      {
        if (*(v27 + *(*v27 + 112)) >= a2)
        {
          goto LABEL_24;
        }
      }

      else if (a2 <= 0)
      {
LABEL_24:

        return;
      }

      *(v7 + v26) = a3;

      v28 = sub_10056DF68();
      v29 = sub_100573448();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "╰ 💤 Set as Pending; RRC is Paused";
        goto LABEL_22;
      }
    }

    else
    {
      v28 = sub_10056DF68();
      v29 = sub_100573448();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "╰ ⏭ Skipping revision; Cancelled";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);
      }
    }
  }
}

void sub_1002F7AD0()
{
  if (qword_1006E5000 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();
  sub_10000C49C(v0, qword_1006FC980);
  oslog = sub_10056DF68();
  v1 = sub_100573438();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
  }
}

void sub_1002F7BB8(void *a1)
{
  [a1 disarm];

  sub_1002F8BD8();

  if (qword_1006E5000 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006FC980);
  oslog = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, "╰ 👌 Applied", v3, 2u);
  }
}

uint64_t RequestResponse.Controller.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  type metadata accessor for RequestResponse.Revision();
  v2 = sub_10056E4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000F3E14(*(v0 + *(*v0 + 112)));
  sub_1000F3E14(*(v0 + *(*v0 + 120)));
  sub_1000F3E14(*(v0 + *(*v0 + 128)));
  sub_1000F3E14(*(v0 + *(*v0 + 136)));

  return v0;
}

uint64_t RequestResponse.Revision.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v4 = sub_1005746D8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t RequestResponse.Revision.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v5 = sub_1005746D8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  sub_1002F3910(v5, &v12, a1);
  return (*(*(AssociatedTypeWitness - 8) + 56))(a1, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_1002F8244(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 40))(ObjectType, a2);
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    RequestResponseInvalidatable.invalidate()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RequestResponse.Revision.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v2 = sub_1005746D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1002F8450(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1002F84D0()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006FC980);
  sub_10000C49C(v0, qword_1006FC980);
  return sub_10056DF78();
}

uint64_t *sub_1002F8554(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  sub_100010324(&qword_1006E9B60);
  v7 = sub_1005746D8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - v9);
  *(v2 + *(v5 + 112)) = a1;
  (*(*(v6 - 8) + 16))(v2 + *(*v2 + 96), a2, v6);
  type metadata accessor for RequestResponse.Revision.InitialResponseLoadingError();
  swift_getWitnessTable();
  *v10 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (*(v8 + 32))(v2 + *(*v2 + 104), v10, v7);
  type metadata accessor for GenericRequestResponseInvalidation();
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 16) = 0x636972656E6547;
  *(v11 + 24) = 0xE700000000000000;
  v12 = sub_1002F95A0(qword_1006ECFA8, type metadata accessor for GenericRequestResponseInvalidation);
  v13 = (v2 + *(*v2 + 120));
  *v13 = v11;
  v13[1] = v12;
  return v2;
}

uint64_t *sub_1002F87F8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = (v2 + *(*v2 + 112));
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + *(*v2 + 120));
  *v6 = 0;
  v6[1] = 0;
  v7 = (v2 + *(*v2 + 128));
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + *(*v2 + 136));
  *v8 = 0;
  v8[1] = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + *(*v2 + 152)) = 0;
  v9 = *(*v2 + 160);
  v10 = *(v4 + 80);
  type metadata accessor for RequestResponse.Revision();
  swift_getFunctionTypeMetadata2();
  *(v2 + v9) = sub_100572D88();
  v11 = *(*v2 + 168);
  v12 = sub_100572E38();
  swift_getTupleTypeMetadata2();
  v13 = sub_100572D88();
  v14 = sub_100183344(v13, &type metadata for Int, v12, &protocol witness table for Int);

  *(v2 + v11) = v14;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  *(v2 + *(*v2 + 192)) = 0;
  *(v2 + *(*v2 + 200)) = &_swiftEmptySetSingleton;
  (*(*(v10 - 8) + 16))(v2 + *(*v2 + 96), a1, v10);
  swift_checkMetadataState();
  swift_allocObject();
  v15 = sub_1002F8554(0, a1);
  sub_1002F3AD8();
  swift_beginAccess();
  v16 = *v15;
  v18 = v15;
  sub_1002752E0(&v18, v16);
  swift_endAccess();
  return v2;
}

uint64_t sub_1002F8B50@<X0>(uint64_t *a1@<X8>)
{
  result = RequestResponse.Controller.revision.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002F8B7C()
{

  sub_1002F8BD8();
}

__n128 sub_1002F8BCC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1002F8BD8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10056E488();
  sub_1002F4344(v1);
}

uint64_t sub_1002F8D08(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_1002F3BD4(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002F8E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F8E98()
{

  return swift_deallocObject();
}

uint64_t sub_1002F8F7C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RequestResponse.Revision();
    result = sub_10056E4A8();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1002F9120()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_100010324(&qword_1006E9B60);
    v0 = sub_1005746D8();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v0;
}

uint64_t sub_1002F9258(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002F9294(uint64_t a1, uint64_t a2)
{
  v3._countAndFlagsBits = (*(a2 + 24))();
  sub_100572A98(v3);

  return 0x3A664F6B736154;
}

uint64_t sub_1002F9300(uint64_t a1)
{
  type metadata accessor for RequestResponse.Revision();
  v2 = sub_10056E498();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  sub_10056E4A8();
  sub_10056E458();
  return swift_endAccess();
}

uint64_t sub_1002F9444()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002F947C()
{

  return swift_deallocObject();
}

uint64_t sub_1002F94C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(qword_1006ECE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F9538(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  sub_1002F8244(v4, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_1002F95A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F95E8()
{

  return swift_deallocObject();
}

uint64_t sub_1002F9634()
{

  return swift_deallocObject();
}

uint64_t sub_1002F9688(uint64_t (**a1)(uint64_t *, uint64_t *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v5 = *(v1 + 24);
  v6 = v2;
  return v3(&v6, &v5);
}

uint64_t sub_1002F96D0()
{

  return swift_deallocObject();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(triggers:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(a1);
  return v2;
}

uint64_t GenericRequestResponseInvalidation.__allocating_init(label:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::Void __swiftcall RequestResponseInvalidatable.invalidate()()
{
  v3 = v1;
  v4 = v0;
  if (((*(v1 + 40))() & 1) == 0)
  {
    (*(v3 + 48))(1, v4, v3);
    v5 = (*(v3 + 16))(v4, v3);
    if (v5)
    {
      v6 = v5;
      v5(v2, v3);

      sub_1000F3E14(v6);
    }
  }
}

uint64_t GenericRequestResponseInvalidation.init(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1000E672C(v1);
  return v1;
}

uint64_t GenericRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1000F3E14(v5);
}

uint64_t GenericRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t GenericRequestResponseInvalidation.deinit()
{

  sub_1000F3E14(*(v0 + 32));
  return v0;
}

uint64_t GenericRequestResponseInvalidation.__deallocating_deinit()
{

  sub_1000F3E14(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1002F9AE0()
{
  v1 = *(*v0 + 16);

  return v1;
}

void *CompoundRequestResponseInvalidation.__allocating_init(responseInvalidations:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1002FA844(a1);

  return v2;
}

void *CompoundRequestResponseInvalidation.init(responseInvalidations:)(uint64_t a1)
{
  v1 = sub_1002FA844(a1);

  return v1;
}

uint64_t CompoundRequestResponseInvalidation.append(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = v2;
    v5 = result;
    ObjectType = swift_getObjectType();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = *(a2 + 24);
    swift_unknownObjectRetain();

    v8(sub_1002FAB14, v7, ObjectType, a2);

    swift_beginAccess();
    v9 = *(v2 + 40);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 40) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1000D023C(0, v9[2] + 1, 1, v9);
      *(v3 + 40) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1000D023C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[2 * v12];
    v13[4] = v5;
    v13[5] = a2;
    *(v3 + 40) = v9;
    swift_endAccess();
    if (((*(a2 + 40))(ObjectType, a2) & 1) != 0 && (swift_beginAccess(), *(v3 + 32) != 1) && (*(v3 + 32) = 1, swift_beginAccess(), (v14 = *(v3 + 16)) != 0))
    {

      v14(v5, a2);
      swift_unknownObjectRelease();
      return sub_1000F3E14(v14);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002F9DD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (*(v5 + 32) == 1)
    {
    }

    *(v5 + 32) = 1;
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (!v6)
    {
    }

    else
    {

      v6(a1, a2);

      return sub_1000F3E14(v6);
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundRequestResponseInvalidation.append(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = *(a1._rawValue + 2);
  swift_beginAccess();
  swift_beginAccess();
  if (v4)
  {
    v5 = (a1._rawValue + 32);
    do
    {
      v15 = *v5;
      v6 = *v5;
      ObjectType = swift_getObjectType();
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = *(*(&v15 + 1) + 24);
      swift_unknownObjectRetain_n();

      v9(sub_1002FAD24, v8, ObjectType, *(&v15 + 1));

      swift_beginAccess();
      v10 = *(v2 + 40);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1000D023C(0, v10[2] + 1, 1, v10);
        *(v2 + 40) = v10;
      }

      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v10 = sub_1000D023C((v12 > 1), v13 + 1, 1, v10);
      }

      v10[2] = v13 + 1;
      *&v10[2 * v13 + 4] = v15;
      *(v2 + 40) = v10;
      swift_endAccess();
      if (((*(*(&v15 + 1) + 40))(ObjectType, *(&v15 + 1)) & 1) != 0 && (*(v2 + 32) & 1) == 0 && (*(v2 + 32) = 1, (v14 = *(v2 + 16)) != 0))
      {

        v14(v6, *(&v15 + 1));
        swift_unknownObjectRelease_n();
        sub_1000F3E14(v14);
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v5;
      --v4;
    }

    while (v4);
  }
}

uint64_t CompoundRequestResponseInvalidation.debugDescription.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v1 + 40;
    while (v4 < *(v1 + 16))
    {
      ++v4;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v6 = sub_1005744A8();
      v8 = v7;

      v9._countAndFlagsBits = v6;
      v9._object = v8;
      sub_100572A98(v9);

      v10._countAndFlagsBits = 124;
      v10._object = 0xE100000000000000;
      sub_100572A98(v10);
      swift_unknownObjectRelease();

      v5 += 16;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v11._countAndFlagsBits = 93;
    v11._object = 0xE100000000000000;
    sub_100572A98(v11);

    return 0x646E756F706D6F43;
  }

  return result;
}

uint64_t CompoundRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t CompoundRequestResponseInvalidation.deinit()
{
  sub_1000F3E14(*(v0 + 16));

  return v0;
}

uint64_t CompoundRequestResponseInvalidation.__deallocating_deinit()
{
  sub_1000F3E14(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t BindingRequestResponseInvalidation.__allocating_init(trigger:)(uint64_t a1)
{
  sub_100009DCC(&unk_1006E84D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057B510;
  sub_10002EA8C(a1, v2 + 32);
  v3 = swift_allocObject();
  BindingRequestResponseInvalidation.init(triggers:)(v2);
  sub_100010474(a1);
  return v3;
}

uint64_t BindingRequestResponseInvalidation.init(triggers:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 32) = 0;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  *(v2 + 16) = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v6, 0, sub_1002FAB5C, v5);

  return v2;
}

uint64_t sub_1002FA4B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (*(v1 + 40) == 1)
    {
    }

    *(v1 + 40) = 1;
    swift_beginAccess();
    v2 = *(v1 + 24);
    if (!v2)
    {
    }

    else
    {
      v3 = sub_1002FACD8(&qword_1006EA018, type metadata accessor for BindingRequestResponseInvalidation);

      v2(v1, v3);

      return sub_1000F3E14(v2);
    }
  }

  return result;
}

uint64_t BindingRequestResponseInvalidation.debugDescription.getter()
{

  sub_100009DCC(&qword_1006ED030);
  v1._countAndFlagsBits = sub_100572978();
  sub_100572A98(v1);

  return 0x3D676E69646E6942;
}

uint64_t BindingRequestResponseInvalidation.isInvalid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.deinit()
{

  sub_1000F3E14(*(v0 + 24));
  return v0;
}

uint64_t BindingRequestResponseInvalidation.__deallocating_deinit()
{

  sub_1000F3E14(*(v0 + 24));

  return swift_deallocClassInstance();
}