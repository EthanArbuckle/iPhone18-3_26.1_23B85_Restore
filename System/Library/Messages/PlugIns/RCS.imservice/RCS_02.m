id sub_33D58(Class *a1)
{
  v3 = [objc_allocWithZone(CTLazuliChatBotPostbackData) init];
  v4 = *(v1 + 16);
  v5 = [v4 suggestion];
  v6 = [v5 postback];

  if (v6)
  {
    sub_F07EC();
  }

  v7 = sub_F07BC();

  [v3 setData:v7];

  v8 = [objc_allocWithZone(*a1) init];
  v9 = [v4 suggestion];
  v10 = [v9 displayText];

  if (!v10)
  {
    sub_F07EC();
    v10 = sub_F07BC();
  }

  [v8 setDisplayText:v10];

  [v8 setPostBackData:v3];
  v11 = [objc_allocWithZone(CTLazuliMessageID) init];
  v12 = [v4 suggestion];
  v13 = [v12 inReplyToID];

  if (v13)
  {
    sub_F07EC();
  }

  v14 = sub_F07BC();

  [v11 setUuid:v14];

  [v8 setInReplyToID:v11];
  return v8;
}

id sub_33F90(void *a1, id *a2, Class *a3)
{
  result = [a1 body];
  if (result)
  {
    v6 = result;
    v7 = [result string];
    v8 = sub_F07EC();
    v10 = v9;

    if (v8 == sub_F07EC() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_F122C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v14 = [v6 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_E9BF4();
    v15 = sub_F076C();

    if (*(v15 + 16))
    {
      v16 = *a2;
      v17 = sub_E9B18(v16);
      if (v18)
      {
        sub_3FE38(*(v15 + 56) + 32 * v17, v22);

        sub_388C8(&qword_128568, &qword_F3950);
        if (swift_dynamicCast())
        {
          v19 = objc_allocWithZone(*a3);
          v20 = sub_F075C();

          v21 = [v19 initWithDictionary:v20];

          return v21;
        }

        goto LABEL_15;
      }
    }

LABEL_15:

    return 0;
  }

  return result;
}

uint64_t sub_341B0(void *a1, uint64_t a2)
{
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3C96C(v4, a2);
  (*(v5 + 16))(v8, v9, v4);
  sub_F044C();
  (*(v5 + 8))(v8, v4);
  return v11[15];
}

uint64_t sub_34314(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

void *sub_34398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_EDF70(sub_34400, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_34424()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  sub_3C9A4(*(v0 + 104), v1);
  v4 = *(v3 + 32);
  *(v0 + 448) = v4;
  sub_37380(v1 + v4, v2, &unk_127FA0, &qword_F34C0);
  v5 = type metadata accessor for RCSMessage.Content(0);
  *(v0 + 264) = v5;
  v6 = *(v5 - 8);
  *(v0 + 272) = v6;
  v7 = (*(v6 + 48))(v2, 1, v5);
  v8 = *(v0 + 192);
  if (v7 == 1)
  {
    sub_372B0(*(v0 + 192), &unk_127FA0, &qword_F34C0);
LABEL_5:
    v10 = *(v0 + 120);
    *(v0 + 344) = [objc_allocWithZone(NSMutableString) init];
    *(v0 + 352) = [objc_allocWithZone(NSMutableString) init];
    *(v0 + 360) = *(v10 + 16);
    v11 = *(v10 + 24);
    *(v0 + 368) = v11;
    *(v0 + 376) = *(v11 + 8);
    *(v0 + 384) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0xA3D4000000000000;
    *(v0 + 392) = sub_F0AEC();
    *(v0 + 400) = sub_F0ADC();
    v12 = sub_F0A6C();
    v14 = v13;
    v15 = sub_349B8;
    goto LABEL_6;
  }

  v9 = *(v0 + 192);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_37AE8(v8, type metadata accessor for RCSMessage.Content);
    goto LABEL_5;
  }

  v16 = *(v0 + 120);
  v17 = *(v8 + 8);
  *(v0 + 280) = *(v8 + 16);

  *(v0 + 288) = *(v16 + 16);
  v18 = *(v16 + 24);
  *(v0 + 296) = v18;
  *(v0 + 304) = *(v18 + 16);
  *(v0 + 312) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0x1162000000000000;
  sub_F0AEC();
  *(v0 + 320) = sub_F0ADC();
  v12 = sub_F0A6C();
  v14 = v19;
  v15 = sub_34668;
LABEL_6:

  return _swift_task_switch(v15, v12, v14);
}

uint64_t sub_34668()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[36];
  v6 = v0[14];

  v0[41] = v4(v6, v6, v5, v3);
  v0[42] = v7;

  return _swift_task_switch(sub_34704, 0, 0);
}

uint64_t sub_34704()
{
  v1 = [*(v0 + 112) subject];
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 448);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  if (v1)
  {
    v9 = *(v0 + 184);
    v10 = v1;
    v33 = *(v0 + 256);
    v35 = *(v0 + 448);
    v11 = sub_F07EC();
    v13 = v12;

    v38._countAndFlagsBits = 10;
    v38._object = 0xE100000000000000;
    sub_F08CC(v38);
    v39._countAndFlagsBits = v3;
    v39._object = v2;
    sub_F08CC(v39);

    *v9 = v11;
    v9[1] = v13;
    v9[2] = v4;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v8);

    sub_C9724(v9, v33 + v35);
  }

  else
  {
    v14 = (v7 + v6);
    sub_372B0(v7 + v6, &unk_127FA0, &qword_F34C0);
    *v14 = v3;
    v14[1] = v2;
    v14[2] = v4;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v14, 0, 1, v8);
  }

  v15 = *(v0 + 256);
  v16 = *(v0 + 208);
  sub_388C8(&qword_1284C0, &qword_F3638);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_F2C60;
  sub_3C9A4(v15, v19 + v18);

  v20 = *(v0 + 248);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v26 = *(v0 + 184);
  v25 = *(v0 + 192);
  v29 = *(v0 + 176);
  v30 = *(v0 + 168);
  v31 = *(v0 + 160);
  v32 = *(v0 + 152);
  v34 = *(v0 + 144);
  v36 = *(v0 + 136);
  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v27 = *(v0 + 8);

  return v27(v19);
}

uint64_t sub_349B8()
{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[14];

  v3(v8, v8, v7, v6, v5, v4);

  return _swift_task_switch(sub_34A64, 0, 0);
}

uint64_t sub_34A64()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v3 + 56);
  *(v0 + 408) = v6;
  *(v0 + 416) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v4, 1, 1, v2);
  v6(v5, 1, 1, v2);
  v7 = swift_allocObject();
  *(v0 + 424) = v7;
  *(v7 + 16) = 0;
  if ([v1 length] >= 1)
  {
    v8 = *(v0 + 392);
    v9 = *(v0 + 256);
    v10 = *(v0 + 200);
    v11 = *(v0 + 160);
    sub_372B0(v11, &qword_128F00, &unk_F43F0);
    sub_3C9A4(v9, v11);
    v6(v11, 0, 1, v10);
    *(v0 + 432) = sub_F0ADC();
    v12 = sub_F0A6C();
    v14 = v13;
    v15 = sub_350D0;
LABEL_5:

    return _swift_task_switch(v15, v12, v14);
  }

  if ([*(v0 + 352) length] >= 1)
  {
    v17 = *(v0 + 408);
    v16 = *(v0 + 416);
    v18 = *(v0 + 392);
    v19 = *(v0 + 256);
    v20 = *(v0 + 200);
    v21 = *(v0 + 152);
    sub_372B0(v21, &qword_128F00, &unk_F43F0);
    sub_3C9A4(v19, v21);
    v17(v21, 0, 1, v20);
    *(v0 + 440) = sub_F0ADC();
    v12 = sub_F0A6C();
    v14 = v22;
    v15 = sub_35844;
    goto LABEL_5;
  }

  v23 = *(v0 + 424);
  swift_beginAccess();
  if (*(v23 + 16) == 1)
  {
    v25 = *(v0 + 360);
    v24 = *(v0 + 368);
    v26 = *(v0 + 128);
    v27 = *(v0 + 112);
    swift_unknownObjectUnownedLoadStrong();
    (*(v24 + 24))(v27, v25, v24);
    swift_unknownObjectRelease();
  }

  v28 = *(v0 + 200);
  v29 = *(v0 + 208);
  v30 = *(v0 + 144);
  sub_37380(*(v0 + 160), v30, &qword_128F00, &unk_F43F0);
  v73 = *(v29 + 48);
  if (v73(v30, 1, v28) == 1)
  {
    sub_372B0(*(v0 + 144), &qword_128F00, &unk_F43F0);
    v31 = _swiftEmptyArrayStorage;
  }

  else
  {
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    sub_3CA08(*(v0 + 144), v33);
    sub_3C9A4(v33, v32);
    v31 = sub_6E964(0, 1, 1, _swiftEmptyArrayStorage);
    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_6E964(v34 > 1, v35 + 1, 1, v31);
    }

    v36 = *(v0 + 240);
    v37 = *(v0 + 208);
    sub_37AE8(*(v0 + 248), type metadata accessor for RCSMessage);
    v31[2] = v35 + 1;
    sub_3CA08(v36, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35);
  }

  sub_3C9A4(*(v0 + 256), *(v0 + 232));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_6E964(0, v31[2] + 1, 1, v31);
  }

  v39 = v31[2];
  v38 = v31[3];
  v40 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    v31 = sub_6E964(v38 > 1, v39 + 1, 1, v31);
  }

  v41 = *(v0 + 232);
  v43 = *(v0 + 200);
  v42 = *(v0 + 208);
  v44 = *(v0 + 152);
  v45 = *(v0 + 136);
  v31[2] = v40;
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v47 = *(v42 + 72);
  sub_3CA08(v41, v31 + v46 + v47 * v39);
  sub_37380(v44, v45, &qword_128F00, &unk_F43F0);
  if (v73(v45, 1, v43) == 1)
  {
    v48 = *(v0 + 352);
    v49 = *(v0 + 136);

    sub_372B0(v49, &qword_128F00, &unk_F43F0);
  }

  else
  {
    v51 = *(v0 + 216);
    v50 = *(v0 + 224);
    sub_3CA08(*(v0 + 136), v50);
    sub_3C9A4(v50, v51);
    v52 = v31[3];
    if ((v39 + 2) > (v52 >> 1))
    {
      v31 = sub_6E964(v52 > 1, v39 + 2, 1, v31);
    }

    v53 = *(v0 + 344);
    v55 = *(v0 + 216);
    v54 = *(v0 + 224);

    sub_37AE8(v54, type metadata accessor for RCSMessage);
    v31[2] = v39 + 2;
    sub_3CA08(v55, v31 + v46 + v47 * v40);
  }

  v56 = *(v0 + 424);
  v58 = *(v0 + 152);
  v57 = *(v0 + 160);

  sub_372B0(v58, &qword_128F00, &unk_F43F0);
  sub_372B0(v57, &qword_128F00, &unk_F43F0);
  v59 = *(v0 + 248);
  v61 = *(v0 + 232);
  v60 = *(v0 + 240);
  v63 = *(v0 + 216);
  v62 = *(v0 + 224);
  v65 = *(v0 + 184);
  v64 = *(v0 + 192);
  v68 = *(v0 + 176);
  v69 = *(v0 + 168);
  v70 = *(v0 + 160);
  v71 = *(v0 + 152);
  v72 = *(v0 + 144);
  v74 = *(v0 + 136);
  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v66 = *(v0 + 8);

  return v66(v31);
}

uint64_t sub_350D0()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[14];

  sub_EE67C(0, v3, v2);
  v0[9] = v4;
  v0[10] = v5;

  return _swift_task_switch(sub_35150, 0, 0);
}

uint64_t sub_35150()
{
  v1 = *(v0 + 160);
  v79 = *(v0 + 200);
  v81 = (*(v0 + 208) + 48);
  v77 = *v81;
  v2 = (*v81)(v1, 1);
  if (v2 == 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 344);
  v7 = *(v0 + 272);
  v75 = *(v0 + 264);
  v8 = *(v0 + 176);
  v9 = *(v1 + 136);
  *(v1 + 128) = *(v0 + 72);
  *(v1 + 136) = v5;

  *(v0 + 56) = sub_F082C();
  *(v0 + 64) = v10;
  v11 = sub_F003C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  sub_F002C();
  sub_3CBB8();
  v15 = sub_F0E4C();
  v17 = v16;
  (*(v12 + 8))(v14, v11);

  *v8 = v15;
  v8[1] = v17;
  v8[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(v7 + 56))(v8, 0, 1, v75);
  v2 = (v77)(v1, 1, v79);
  if (v2 == 1)
  {
LABEL_27:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  sub_C9724(*(v0 + 176), *(v0 + 160) + *(*(v0 + 200) + 32));
  if ([*(v0 + 352) length] >= 1)
  {
    v19 = *(v0 + 408);
    v18 = *(v0 + 416);
    v20 = *(v0 + 392);
    v21 = *(v0 + 256);
    v22 = *(v0 + 200);
    v23 = *(v0 + 152);
    sub_372B0(v23, &qword_128F00, &unk_F43F0);
    sub_3C9A4(v21, v23);
    v19(v23, 0, 1, v22);
    *(v0 + 440) = sub_F0ADC();
    v24 = sub_F0A6C();
    v26 = v25;
    v2 = sub_35844;
    v3 = v24;
    v4 = v26;

    return _swift_task_switch(v2, v3, v4);
  }

  v27 = *(v0 + 424);
  swift_beginAccess();
  if (*(v27 + 16) == 1)
  {
    v29 = *(v0 + 360);
    v28 = *(v0 + 368);
    v30 = *(v0 + 128);
    v31 = *(v0 + 112);
    swift_unknownObjectUnownedLoadStrong();
    (*(v28 + 24))(v31, v29, v28);
    swift_unknownObjectRelease();
  }

  v32 = *(v0 + 200);
  v33 = *(v0 + 208);
  v34 = *(v0 + 144);
  sub_37380(*(v0 + 160), v34, &qword_128F00, &unk_F43F0);
  v35 = *(v33 + 48);
  if (v35(v34, 1, v32) == 1)
  {
    sub_372B0(*(v0 + 144), &qword_128F00, &unk_F43F0);
    v36 = _swiftEmptyArrayStorage;
  }

  else
  {
    v37 = *(v0 + 240);
    v38 = *(v0 + 248);
    sub_3CA08(*(v0 + 144), v38);
    sub_3C9A4(v38, v37);
    v36 = sub_6E964(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = v36[2];
    v39 = v36[3];
    if (v40 >= v39 >> 1)
    {
      v36 = sub_6E964(v39 > 1, v40 + 1, 1, v36);
    }

    v41 = *(v0 + 240);
    v42 = *(v0 + 208);
    sub_37AE8(*(v0 + 248), type metadata accessor for RCSMessage);
    v36[2] = v40 + 1;
    sub_3CA08(v41, v36 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40);
  }

  sub_3C9A4(*(v0 + 256), *(v0 + 232));
  v43 = v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_6E964(0, v36[2] + 1, 1, v36);
  }

  v45 = v36[2];
  v44 = v36[3];
  if (v45 >= v44 >> 1)
  {
    v36 = sub_6E964(v44 > 1, v45 + 1, 1, v36);
  }

  v46 = *(v0 + 232);
  v48 = *(v0 + 200);
  v47 = *(v0 + 208);
  v49 = *(v0 + 152);
  v50 = *(v0 + 136);
  v36[2] = v45 + 1;
  v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v52 = *(v47 + 72);
  sub_3CA08(v46, v36 + v51 + v52 * v45);
  sub_37380(v49, v50, &qword_128F00, &unk_F43F0);
  if (v43(v50, 1, v48) == 1)
  {
    v53 = *(v0 + 352);
    v54 = *(v0 + 136);

    sub_372B0(v54, &qword_128F00, &unk_F43F0);
  }

  else
  {
    v56 = *(v0 + 216);
    v55 = *(v0 + 224);
    sub_3CA08(*(v0 + 136), v55);
    sub_3C9A4(v55, v56);
    v57 = v36[3];
    if ((v45 + 2) > (v57 >> 1))
    {
      v36 = sub_6E964(v57 > 1, v45 + 2, 1, v36);
    }

    v58 = *(v0 + 344);
    v60 = *(v0 + 216);
    v59 = *(v0 + 224);

    sub_37AE8(v59, type metadata accessor for RCSMessage);
    v36[2] = v45 + 2;
    sub_3CA08(v60, v36 + v51 + v52 * (v45 + 1));
  }

  v61 = *(v0 + 424);
  v63 = *(v0 + 152);
  v62 = *(v0 + 160);

  sub_372B0(v63, &qword_128F00, &unk_F43F0);
  sub_372B0(v62, &qword_128F00, &unk_F43F0);
  v64 = *(v0 + 248);
  v66 = *(v0 + 232);
  v65 = *(v0 + 240);
  v68 = *(v0 + 216);
  v67 = *(v0 + 224);
  v70 = *(v0 + 184);
  v69 = *(v0 + 192);
  v73 = *(v0 + 176);
  v74 = *(v0 + 168);
  v76 = *(v0 + 160);
  v78 = *(v0 + 152);
  v80 = *(v0 + 144);
  v82 = *(v0 + 136);
  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v71 = *(v0 + 8);

  return v71(v36);
}

uint64_t sub_35844()
{
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[14];

  sub_EE67C(1uLL, v3, v2);
  v0[11] = v4;
  v0[12] = v5;

  return _swift_task_switch(sub_358C8, 0, 0);
}

uint64_t sub_358C8()
{
  v1 = *(v0 + 152);
  v67 = *(v0 + 200);
  v69 = (*(v0 + 208) + 48);
  v65 = *v69;
  result = (*v69)(v1, 1);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *(v0 + 96);
  v4 = *(v0 + 352);
  v5 = *(v0 + 272);
  v63 = *(v0 + 264);
  v6 = *(v0 + 168);
  v7 = *(v1 + 136);
  *(v1 + 128) = *(v0 + 88);
  *(v1 + 136) = v3;

  *(v0 + 40) = sub_F082C();
  *(v0 + 48) = v8;
  v9 = sub_F003C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  sub_F002C();
  sub_3CBB8();
  v13 = sub_F0E4C();
  v15 = v14;
  (*(v10 + 8))(v12, v9);

  *v6 = v13;
  v6[1] = v15;
  v6[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(v5 + 56))(v6, 0, 1, v63);
  result = (v65)(v1, 1, v67);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_C9724(*(v0 + 168), *(v0 + 152) + *(*(v0 + 200) + 32));
  v16 = *(v0 + 424);
  swift_beginAccess();
  if (*(v16 + 16) == 1)
  {
    v18 = *(v0 + 360);
    v17 = *(v0 + 368);
    v19 = *(v0 + 128);
    v20 = *(v0 + 112);
    swift_unknownObjectUnownedLoadStrong();
    (*(v17 + 24))(v20, v18, v17);
    swift_unknownObjectRelease();
  }

  v21 = *(v0 + 200);
  v22 = *(v0 + 208);
  v23 = *(v0 + 144);
  sub_37380(*(v0 + 160), v23, &qword_128F00, &unk_F43F0);
  v24 = *(v22 + 48);
  if (v24(v23, 1, v21) == 1)
  {
    sub_372B0(*(v0 + 144), &qword_128F00, &unk_F43F0);
    v25 = _swiftEmptyArrayStorage;
  }

  else
  {
    v26 = *(v0 + 240);
    v27 = *(v0 + 248);
    sub_3CA08(*(v0 + 144), v27);
    sub_3C9A4(v27, v26);
    v25 = sub_6E964(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v25[2];
    v28 = v25[3];
    if (v29 >= v28 >> 1)
    {
      v25 = sub_6E964(v28 > 1, v29 + 1, 1, v25);
    }

    v30 = *(v0 + 240);
    v31 = *(v0 + 208);
    sub_37AE8(*(v0 + 248), type metadata accessor for RCSMessage);
    v25[2] = v29 + 1;
    sub_3CA08(v30, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29);
  }

  sub_3C9A4(*(v0 + 256), *(v0 + 232));
  v32 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_6E964(0, v25[2] + 1, 1, v25);
  }

  v34 = v25[2];
  v33 = v25[3];
  if (v34 >= v33 >> 1)
  {
    v25 = sub_6E964(v33 > 1, v34 + 1, 1, v25);
  }

  v35 = *(v0 + 232);
  v37 = *(v0 + 200);
  v36 = *(v0 + 208);
  v38 = *(v0 + 152);
  v39 = *(v0 + 136);
  v25[2] = v34 + 1;
  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = *(v36 + 72);
  sub_3CA08(v35, v25 + v40 + v41 * v34);
  sub_37380(v38, v39, &qword_128F00, &unk_F43F0);
  if (v32(v39, 1, v37) == 1)
  {
    v42 = *(v0 + 352);
    v43 = *(v0 + 136);

    sub_372B0(v43, &qword_128F00, &unk_F43F0);
  }

  else
  {
    v45 = *(v0 + 216);
    v44 = *(v0 + 224);
    sub_3CA08(*(v0 + 136), v44);
    sub_3C9A4(v44, v45);
    v46 = v25[3];
    if ((v34 + 2) > (v46 >> 1))
    {
      v25 = sub_6E964(v46 > 1, v34 + 2, 1, v25);
    }

    v47 = *(v0 + 344);
    v49 = *(v0 + 216);
    v48 = *(v0 + 224);

    sub_37AE8(v48, type metadata accessor for RCSMessage);
    v25[2] = v34 + 2;
    sub_3CA08(v49, v25 + v40 + v41 * (v34 + 1));
  }

  v50 = *(v0 + 424);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);

  sub_372B0(v52, &qword_128F00, &unk_F43F0);
  sub_372B0(v51, &qword_128F00, &unk_F43F0);
  v53 = *(v0 + 248);
  v55 = *(v0 + 232);
  v54 = *(v0 + 240);
  v57 = *(v0 + 216);
  v56 = *(v0 + 224);
  v59 = *(v0 + 184);
  v58 = *(v0 + 192);
  v61 = *(v0 + 176);
  v62 = *(v0 + 168);
  v64 = *(v0 + 160);
  v66 = *(v0 + 152);
  v68 = *(v0 + 144);
  v70 = *(v0 + 136);
  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v60 = *(v0 + 8);

  return v60(v25);
}

uint64_t sub_35EEC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_35FD4;

    return sub_2900();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_35FD4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_360E4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 136);
  *(v2 + 136) = 0x8000000000000000;
  v8 = sub_51FEC(v3, v1);
  v9 = v6[2];
  v10 = (v7 & 1) == 0;
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    return result;
  }

  v12 = v7;
  if (v6[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BD31C();
    }
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    sub_BB710(result, isUniquelyReferenced_nonNull_native);
    v15 = sub_51FEC(v14, v13);
    if ((v12 & 1) != (v16 & 1))
    {

      return sub_F126C();
    }

    v8 = v15;
  }

  *(v2 + 136) = v6;
  if ((v12 & 1) == 0)
  {
    v18 = v0[6];
    v17 = v0[7];
    v19 = sub_E9608(_swiftEmptyArrayStorage);
    sub_76710(v8, v18, v17, v19, v6);
  }

  v20 = v0[9];
  v21 = v6[7] + 8 * v8;
  sub_C79BC(v0[5], v20);
  swift_endAccess();
  v22 = type metadata accessor for TypingIndicator();
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  v24 = v0[9];
  if (v23 == 1)
  {
    sub_372B0(v0[9], &qword_12AAD0, &qword_F7850);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *(v24 + 80);
    v26 = *(v24 + 88);

    sub_EFE48(v24);
  }

  v27 = v0[9];

  v28 = v0[1];

  return v28(v25, v26);
}

uint64_t sub_36328()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  swift_beginAccess();
  v4 = *(v2 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 136);
  *(v2 + 136) = 0x8000000000000000;
  v8 = sub_51FEC(v3, v1);
  v9 = v6[2];
  v10 = (v7 & 1) == 0;
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    return result;
  }

  v12 = v7;
  if (v6[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BD31C();
    }
  }

  else
  {
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    sub_BB710(result, isUniquelyReferenced_nonNull_native);
    v15 = sub_51FEC(v14, v13);
    if ((v12 & 1) != (v16 & 1))
    {

      return sub_F126C();
    }

    v8 = v15;
  }

  *(v2 + 136) = v6;
  if ((v12 & 1) == 0)
  {
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = sub_E9608(_swiftEmptyArrayStorage);
    sub_76710(v8, v18, v17, v19, v6);
  }

  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v0 + 136);
  v23 = v6[7] + 8 * v8;
  sub_C79BC(*(v0 + 104), v22);
  swift_endAccess();
  if ((*(v21 + 48))(v22, 1, v20) != 1)
  {
    v27 = *(v0 + 160);
    v28 = *(v0 + 144);
    v29 = *(v0 + 128);
    sub_BDEA0(*(v0 + 136), v27);
    *(v0 + 168) = swift_unknownObjectUnownedLoadStrong();
    v30 = *(v29 + 120);
    swift_getObjectType();
    v47 = *(v27 + 8);
    v48 = *v27;
    v31 = *(v27 + 88);
    v46 = *(v27 + 80);
    v32 = *(v27 + 16);
    v33 = *(v27 + 32);
    v34 = *(v27 + 48);
    *(v0 + 57) = *(v27 + 57);
    *(v0 + 32) = v33;
    *(v0 + 48) = v34;
    *(v0 + 16) = v32;
    v35 = *(v28 + 36);
    v36 = *(v27 + *(v28 + 32));
    v37 = (v27 + v35);
    v38 = *(v27 + v35);
    v39 = v37[1];
    v40 = v37[2];
    v41 = v37[3];
    v42 = *(v30 + 8);
    v45 = v42 + *v42;
    v43 = v42[1];
    v44 = swift_task_alloc();
    *(v0 + 176) = v44;
    *v44 = v0;
    v44[1] = sub_366B8;

    __asm { BRAA            X8, X16 }
  }

  sub_372B0(*(v0 + 136), &qword_12AAD0, &qword_F7850);
  v24 = *(v0 + 160);
  v25 = *(v0 + 136);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_366B8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 128);
  v5 = *v0;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_367E4, v3, 0);
}

uint64_t sub_367E4()
{
  sub_EFE48(v0[20]);
  v1 = v0[20];
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_36858()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_36968, v2, 0);
}

uint64_t sub_36968()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v47 = v0[30];
  v48 = v0[29];
  v45 = v0[27];
  v46 = v0[28];
  v43 = v0[25];
  v44 = v0[26];
  v42 = v0[24];
  v4 = v0[23];
  v49 = v0[22];
  v5 = v0[21];
  v6 = sub_F035C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();

  sub_38910(v5, (v0 + 2));
  sub_F034C();
  v10 = sub_F032C();
  v12 = v11;
  v13 = v6;
  v14 = v10;
  (*(v7 + 8))(v9, v13);
  v15 = v1 + v3[7];
  sub_F02DC();
  *v1 = v49;
  *(v1 + 8) = v4;
  v16 = *v5;
  v17 = v5[1];
  v18 = v5[2];
  *(v1 + 57) = *(v5 + 41);
  *(v1 + 32) = v17;
  *(v1 + 48) = v18;
  *(v1 + 16) = v16;
  *(v1 + 80) = v14;
  *(v1 + 88) = v12;
  *(v1 + v3[8]) = v42;
  v19 = (v1 + v3[9]);
  *v19 = v43;
  v19[1] = v44;
  v19[2] = v45;
  v19[3] = v46;

  sub_BDE3C(v1, v47);
  (*(v2 + 56))(v47, 0, 1, v3);
  swift_beginAccess();

  v20 = v12;

  sub_3896C(v42);
  v21 = *(v48 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v48 + 136);
  *(v48 + 136) = 0x8000000000000000;
  v25 = sub_51FEC(v49, v4);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  result = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    return result;
  }

  v29 = v24;
  if (v23[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BD31C();
    }
  }

  else
  {
    v31 = v0[22];
    v30 = v0[23];
    sub_BB710(result, isUniquelyReferenced_nonNull_native);
    v32 = sub_51FEC(v31, v30);
    if ((v29 & 1) != (v33 & 1))
    {

      return sub_F126C();
    }

    v25 = v32;
  }

  *(v48 + 136) = v23;
  if ((v29 & 1) == 0)
  {
    v35 = v0[22];
    v34 = v0[23];
    v36 = sub_E9608(_swiftEmptyArrayStorage);
    sub_76710(v25, v35, v34, v36, v23);
  }

  v37 = v0[33];
  v38 = v0[30];
  v39 = v0[21];
  v40 = v23[7] + 8 * v25;
  sub_38910(v39, (v0 + 10));
  sub_E0F2C(v38, v39);
  swift_endAccess();
  sub_EFE48(v37);

  v41 = v0[1];

  return v41(v14, v20);
}

uint64_t sub_36CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_372A4;

  return sub_1E3C(a1, v4, v5, v6);
}

uint64_t sub_36D98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_36DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_372A8;

  return sub_1E3C(a1, v4, v5, v6);
}

uint64_t sub_36E8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_F030C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_36F38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_F030C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_36FDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37014()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_370A4;

  return sub_EF4A0(v0);
}

uint64_t sub_370A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_37198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_371D8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_372AC;

  return sub_DEF50(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_372B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_388C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_37310(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_37380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_373E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_37474(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_374E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_37640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_376A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_376D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_37740(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000074;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 1919251317;
        }

        else
        {
          v8 = 0x6F632D656E6F6870;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xED0000747865746ELL;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x6E657265666E6F63;
        v9 = 0xEA00000000006563;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 25199;
        }

        else
        {
          v8 = 0x726F70736E617274;
        }

        if (v7 == 3)
        {
          v9 = 0xE200000000000000;
        }

        else
        {
          v9 = 0xE900000000000074;
        }
      }

      if (v6 == 3)
      {
        v10 = 25199;
      }

      else
      {
        v10 = 0x726F70736E617274;
      }

      if (v6 == 3)
      {
        v5 = 0xE200000000000000;
      }

      if (v6 == 2)
      {
        v10 = 0x6E657265666E6F63;
        v5 = 0xEA00000000006563;
      }

      v11 = v6 ? 1919251317 : 0x6F632D656E6F6870;
      v12 = v6 ? 0xE400000000000000 : 0xED0000747865746ELL;
      v13 = v6 <= 1 ? v11 : v10;
      v14 = v6 <= 1 ? v12 : v5;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_F122C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000074;
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

uint64_t sub_37938(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_F0EAC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_F12FC();

      sub_F089C();
      v13 = sub_F132C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_37AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RCSServiceSession.cancelTypingIndicator(chatID:guid:sender:encryption:subscriptionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_37C54;

  return sub_37F00(a3, a4, a5, a6, a7, a8, v18, v19);
}

uint64_t sub_37C54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_37D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_38B0C;

  return sub_37F00(a3, a4, a5, a6, a7, a8, v18, v19);
}

id variable initialization expression of RCSOutgoingMessageController.client()
{
  v0 = im_primary_queue();
  v1 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v0];

  return v1;
}

_DWORD *sub_37EB8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_37F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[26] = a8;
  v9[27] = v8;
  v9[24] = a6;
  v9[25] = a7;
  v9[22] = a4;
  v9[23] = a5;
  v9[20] = a2;
  v9[21] = a3;
  v9[19] = a1;
  v10 = sub_F06CC();
  v9[28] = v10;
  v11 = *(v10 - 8);
  v9[29] = v11;
  v12 = *(v11 + 64) + 15;
  v9[30] = swift_task_alloc();
  v9[31] = swift_task_alloc();
  v13 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v9[32] = swift_task_alloc();
  v14 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64) + 15;
  v9[33] = swift_task_alloc();
  sub_F0AEC();
  v9[34] = sub_F0ADC();
  v16 = sub_F0A6C();
  v9[35] = v16;
  v9[36] = v15;

  return _swift_task_switch(sub_38074, v16, v15);
}

uint64_t sub_38074()
{
  v30 = v0;
  v1 = v0[32];
  v2 = v0[26];
  v23 = v0[27];
  v3 = v0[24];
  v20 = v0[33];
  v21 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v6[1];
  v24[0] = *v6;
  v24[1] = v9;
  v11 = *(v6 + 41);
  v25[0] = v6[2];
  v10 = v25[0];
  *(v25 + 9) = v11;
  v25[2] = v24[0];
  v25[3] = v9;
  *v26 = v10;
  *&v26[9] = v11;
  v27 = 256;
  *v1 = 0;
  v12 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v1, 0, 1, v12);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_38910(v6, (v0 + 2));
  sub_38910(v6, (v0 + 10));

  sub_3896C(v5);
  v13.entries._rawValue = RCSMessageMetadata.init()().entries._rawValue;
  result = RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v24, v8, v7, 0, 0, v4, v3, v21, v20, v2, v1, v28, v5, v13.entries._rawValue, 0);
  v15 = *(*(v23 + OBJC_IVAR___RCSServiceSession_state) + 104);
  v0[37] = v15;
  if (v15)
  {
    v16 = *(*v15 + 144);

    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[38] = v18;
    *v18 = v0;
    v18[1] = sub_382FC;
    v19 = v0[33];

    return (v22)(v0 + 18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_382FC(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v11 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v6 = *(v4 + 280);
    v7 = *(v4 + 288);
    v8 = sub_3861C;
  }

  else
  {
    v9 = *(v4 + 296);

    v6 = *(v4 + 280);
    v7 = *(v4 + 288);
    v8 = sub_38430;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_38430()
{
  v27 = v0;
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[20];

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v2, v6, v3);

  v7 = sub_F06AC();
  v8 = sub_F0CCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[31];
  v13 = v0[28];
  v12 = v0[29];
  if (v9)
  {
    v25 = v0[33];
    v15 = v0[19];
    v14 = v0[20];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_3E850(v15, v14, &v26);
    _os_log_impl(&dword_0, v7, v8, "Cancelled typing indicator for %s", v16, 0xCu);
    sub_1EDC(v17);

    (*(v12 + 8))(v11, v13);
    v18 = v25;
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    v18 = v10;
  }

  sub_3897C(v18);
  v20 = v0[32];
  v19 = v0[33];
  v22 = v0[30];
  v21 = v0[31];

  v23 = v0[1];

  return v23();
}

uint64_t sub_3861C()
{
  v34 = v0;
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[20];

  v8 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v8, v6);

  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[39];
  v13 = v0[33];
  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[28];
  if (v11)
  {
    v32 = v0[33];
    v17 = v0[19];
    v18 = v0[20];
    v31 = v0[28];
    v19 = swift_slowAlloc();
    v30 = v14;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = v21;
    *v19 = 136315394;
    *(v19 + 4) = sub_3E850(v17, v18, &v33);
    *(v19 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v22;
    *v20 = v22;
    _os_log_impl(&dword_0, v9, v10, "Failed to cancel typing indicator for %s: %@", v19, 0x16u);
    sub_389D8(v20);

    sub_1EDC(v21);

    (*(v15 + 8))(v30, v31);
    v23 = v32;
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    v23 = v13;
  }

  sub_3897C(v23);
  v25 = v0[32];
  v24 = v0[33];
  v27 = v0[30];
  v26 = v0[31];

  v28 = v0[1];

  return v28();
}

uint64_t sub_388C8(uint64_t *a1, uint64_t *a2)
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

id sub_3896C(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_3897C(uint64_t a1)
{
  v2 = type metadata accessor for RCSMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_389D8(uint64_t a1)
{
  v2 = sub_388C8(&qword_127AF0, &qword_F28E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_38A40(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_38A50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_38A70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_38AC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_38B24(void *a1, void *a2, unint64_t a3)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v13 = 0;
    if (v4 == 2)
    {
      sub_F0F9C(95);
      v6._countAndFlagsBits = 0xD00000000000005DLL;
      v6._object = 0x80000000000FDD80;
    }

    else
    {
      sub_F0F9C(61);
      v6._countAndFlagsBits = 0xD00000000000003BLL;
      v6._object = 0x80000000000FDD40;
    }

    sub_F08CC(v6);
    v7 = [a1 description];
    goto LABEL_9;
  }

  if (v4)
  {
    sub_F0F9C(32);

    v13 = 0xD00000000000001ELL;
    v7 = [a1 description];
LABEL_9:
    v8 = v7;
    v9 = sub_F07EC();
    v11 = v10;

    v17._countAndFlagsBits = v9;
    v17._object = v11;
    sub_F08CC(v17);
    goto LABEL_10;
  }

  sub_F0F9C(26);

  v13 = 0xD000000000000014;
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  sub_F08CC(v14);
  v15._countAndFlagsBits = 8250;
  v15._object = 0xE200000000000000;
  sub_F08CC(v15);
  swift_getErrorValue();
  v16._countAndFlagsBits = sub_F12AC();
  sub_F08CC(v16);
LABEL_10:

  return v13;
}

uint64_t sub_38D9C(void *a1)
{
  v1 = [objc_opt_self() IMCountryCodeForSimSlot:{objc_msgSend(a1, "slotID")}];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_F07EC();

  return v3;
}

uint64_t sub_38E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_F06CC();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = sub_F0AEC();
  v4[18] = sub_F0ADC();
  v9 = sub_F0A6C();
  v4[19] = v9;
  v4[20] = v8;

  return _swift_task_switch(sub_38F34, v9, v8);
}

uint64_t sub_38F34()
{
  v50 = v0;
  v1 = [*(v0 + 80) style];
  if (v1 != 43)
  {
    if (v1 == 45)
    {
      v2 = *(v0 + 144);
      v3 = *(v0 + 80);

      v4 = [v3 chatIdentifier];
      if (v4)
      {
        v5 = v4;
        v6 = sub_F07EC();
        v8 = v7;

        sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
        v9 = CTLazuliDestination.init(uri:)(v6, v8);
LABEL_10:
        v15 = *(v0 + 120);
        v14 = *(v0 + 128);

        v16 = *(v0 + 8);

        return v16(v9);
      }

      v17 = *(v0 + 128);
      v18 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = *(v0 + 72);
      v20 = *(v0 + 80);
      v22 = Logger.rcs.unsafeMutableAddressor();
      (*(v19 + 16))(v17, v22, v18);
      v23 = v21;
      v24 = v20;
      v25 = sub_F06AC();
      v26 = sub_F0CEC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = *(v0 + 72);
        v28 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v28 = 136315394;
        v29 = [v27 guid];
        if (v29)
        {
          v30 = v29;
          v31 = sub_F07EC();
          v33 = v32;
        }

        else
        {
          v31 = 0xD000000000000010;
          v33 = 0x80000000000FDD00;
        }

        v37 = *(v0 + 80);
        v38 = sub_3E850(v31, v33, &v49);

        *(v28 + 4) = v38;
        *(v28 + 12) = 2080;
        v39 = [v37 guid];
        if (v39)
        {
          v40 = v39;
          v41 = sub_F07EC();
          v43 = v42;
        }

        else
        {
          v43 = 0x80000000000FDD20;
          v41 = 0xD000000000000011;
        }

        v44 = *(v0 + 128);
        v45 = *(v0 + 104);
        v46 = *(v0 + 112);
        v47 = sub_3E850(v41, v43, &v49);

        *(v28 + 14) = v47;
        _os_log_impl(&dword_0, v25, v26, "Failed to find chatIdentifier for %s in %s", v28, 0x16u);
        swift_arrayDestroy();

        (*(v46 + 8))(v44, v45);
      }

      else
      {
        v34 = *(v0 + 128);
        v35 = *(v0 + 104);
        v36 = *(v0 + 112);

        (*(v36 + 8))(v34, v35);
      }
    }

    else
    {
      v13 = *(v0 + 144);
    }

    v9 = 0;
    goto LABEL_10;
  }

  v10 = *(v0 + 136);
  *(v0 + 168) = sub_F0ADC();
  v12 = sub_F0A6C();
  *(v0 + 176) = v12;
  *(v0 + 184) = v11;

  return _swift_task_switch(sub_392F4, v12, v11);
}

void sub_392F4()
{
  v1 = *(*(v0[12] + OBJC_IVAR___RCSServiceSession_state) + 40);
  v0[24] = v1;
  if (v1)
  {
    v2 = v0[11];
    v0[7] = v0[10];
    v0[8] = v2;

    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_393DC;

    RCSGroupController.resolveGroupIdentity(for:subscriptionContext:)((v0 + 2), (v0 + 7), (v0 + 8));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_393DC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_39670;
  }

  else
  {
    v7 = sub_39514;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_39514()
{
  v1 = v0[21];

  v2 = v0[19];
  v3 = v0[20];

  return _swift_task_switch(sub_39578, v2, v3);
}

uint64_t sub_39578()
{
  v1 = v0[18];

  v2 = v0[5];
  v3 = v0[6];
  sub_373E8(v0 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    v8 = CTLazuliDestination.init(uri:)(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  sub_1EDC(v0 + 2);
  v10 = v0[15];
  v9 = v0[16];

  v11 = v0[1];

  return v11(v8);
}

uint64_t sub_39670()
{
  v1 = v0[21];

  v2 = v0[19];
  v3 = v0[20];

  return _swift_task_switch(sub_396D4, v2, v3);
}

uint64_t sub_396D4()
{
  v32 = v0;
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[10];

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = sub_F06AC();
  v9 = sub_F0CEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    v13 = [v10 guid];
    if (v13)
    {
      v14 = v13;
      v15 = sub_F07EC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE500000000000000;
      v15 = 0x3E6C696E3CLL;
    }

    v22 = v0[26];
    v23 = v0[14];
    v30 = v0[15];
    v24 = v0[13];
    v25 = sub_3E850(v15, v17, &v31);

    *(v11 + 4) = v25;
    _os_log_impl(&dword_0, v8, v9, "Failed to resolve groupIdentity for chat GUID %s", v11, 0xCu);
    sub_1EDC(v12);

    (*(v23 + 8))(v30, v24);
  }

  else
  {
    v18 = v0[26];
    v20 = v0[14];
    v19 = v0[15];
    v21 = v0[13];

    (*(v20 + 8))(v19, v21);
  }

  v27 = v0[15];
  v26 = v0[16];

  v28 = v0[1];

  return v28(0);
}

void sub_39908(void *a1)
{
  v1 = a1;
  if ([a1 style] != 45)
  {
    *(&v19 + 1) = sub_37310(0, &qword_127EF0, IMDChat_ptr);
    v20 = &protocol witness table for IMDChat;
    *&v18 = v1;
    v1 = v1;
    if (IMDChatRCSGroupIdentity.isValid.getter())
    {
      v10 = swift_allocObject();
      v11 = v19;
      *(v10 + 16) = v18;
      *(v10 + 32) = v11;
      *(v10 + 48) = v20;
      *(&v22 + 1) = &type metadata for IMDChatRCSGroupIdentity;
      v23 = &protocol witness table for IMDChatRCSGroupIdentity;
      *&v21 = v10;
      sub_373E8(&v21, &type metadata for IMDChatRCSGroupIdentity);
      v12 = j___s7CoreRCS23IMDChatRCSGroupIdentityV3uriSSSgvg();
      v14 = v13;
      sub_1EDC(&v21);
      if (v14)
      {
        sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
        CTLazuliDestination.init(uri:)(v12, v14);
        return;
      }
    }

    else
    {
      sub_39BC4(&v18);
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      sub_39C18(&v21);
    }

    sub_39C80();
    swift_allocError();
    *v15 = v1;
    v16 = xmmword_F2980;
    goto LABEL_12;
  }

  v2 = [v1 participantHandles];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = sub_F09FC();

  if (!v4[2])
  {

    sub_39C80();
    swift_allocError();
    *v15 = v1;
    v16 = xmmword_F2990;
LABEL_12:
    *(v15 + 8) = v16;
    swift_willThrow();
    v17 = v1;
    return;
  }

  v5 = v4[4];
  v6 = v4[5];

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v24, v7, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (!v8)
  {
    v9 = sub_37310(0, &qword_127B18, CTLazuliDestination_ptr);
    __chkstk_darwin(v9);
    CTLazuliDestination.init(handle:countryCode:)(&v24, sub_39CD4);
  }
}

uint64_t sub_39C18(uint64_t a1)
{
  v2 = sub_388C8(&qword_127B08, &qword_F29A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_39C80()
{
  result = qword_127B10;
  if (!qword_127B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B10);
  }

  return result;
}

__n128 sub_39CE8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_39CFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 24))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_39D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_39DE8(void *a1)
{
  v2 = v1;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_F06AC();
  v12 = sub_F0CCC();
  p_name = &stru_124FF8.name;
  if (os_log_type_enabled(v11, v12))
  {
    v31 = v4;
    v32 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315138;
    v16 = [v10 guid];

    if (!v16)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v17 = sub_F07EC();
    v19 = v18;

    v20 = sub_3E850(v17, v19, &v33);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "Marking message %s as interworked", v14, 0xCu);
    sub_1EDC(v15);

    (*(v5 + 8))(v8, v31);
    v2 = v32;
    p_name = (&stru_124FF8 + 8);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v21 = [v2 relayController];
  v22 = [v10 p_name[502]];
  v23 = IMServiceNameSMS;
  [v21 messageSent:v22 onService:IMServiceNameSMS compatibilityService:0 wasInterworked:1];

  v24 = [objc_opt_self() sharedAccountController];
  if (!v24)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = v24;
  v26 = [v24 anySessionForServiceName:v23];

  if (!v26)
  {
    return;
  }

  v27 = [v10 p_name[502]];
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = v27;
  v29 = [v2 account];
  [v26 notifyDidSendMessageID:v28 account:v29 shouldNotify:0 wasDowngraded:0 wasInterworked:1];
}

void sub_3A140(void *a1)
{
  v2 = v1;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_F06AC();
  v12 = sub_F0CCC();
  p_name = &stru_124FF8.name;
  if (os_log_type_enabled(v11, v12))
  {
    v32 = v4;
    v33 = v2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315138;
    v16 = [v10 guid];

    if (!v16)
    {
      goto LABEL_8;
    }

    v17 = sub_F07EC();
    v19 = v18;

    v20 = sub_3E850(v17, v19, &v34);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "Marking message %s as delivered", v14, 0xCu);
    sub_1EDC(v15);

    (*(v5 + 8))(v8, v32);
    v2 = v33;
    p_name = (&stru_124FF8 + 8);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v21 = [v10 p_name[502]];
  if (v21)
  {
    v22 = v21;
    v23 = sub_F030C();
    v24 = *(v23 - 8);
    v25 = *(v24 + 64);
    __chkstk_darwin(v23);
    v27 = &v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F02DC();
    v28 = sub_F028C();
    (*(v24 + 8))(v27, v23);
    [v2 didReceiveMessageDeliveryReceiptForMessageID:v22 date:v28];

    v29 = [v2 relayController];
    v30 = [v10 p_name[502]];
    [v29 messageDelivered:v30];

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_3A4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = sub_F06CC();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_F0AEC();
  v4[11] = sub_F0ADC();
  v10 = sub_F0A6C();
  v4[12] = v10;
  v4[13] = v9;

  return _swift_task_switch(sub_3A5DC, v10, v9);
}

void sub_3A5DC()
{
  v30 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = Logger.rcs.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v5, v3);
  v6 = v4;
  v7 = sub_F06AC();
  v8 = sub_F0CCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v10 = 136315138;
    v12 = [v9 guid];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = *(v0 + 72);
    v28 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = sub_F07EC();
    v17 = v16;

    v18 = sub_3E850(v15, v17, &v29);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_0, v7, v8, "Failure to decrypt -- resending message %s", v10, 0xCu);
    sub_1EDC(v11);

    (*(v13 + 8))(v28, v14);
  }

  else
  {
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);

    (*(v20 + 8))(v19, v21);
  }

  v22 = swift_task_alloc();
  *(v0 + 112) = v22;
  *v22 = v0;
  v22[1] = sub_3A820;
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 16);
  v27 = *(v0 + 24);

  sub_5524C(v23, v26, 0, v27, v24);
}

uint64_t sub_3A820()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_3ACBC;
  }

  else
  {
    v7 = sub_3A95C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_3A95C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_3C9A4(v0[7], v1);
  v5 = type metadata accessor for RCSMessageSendItem(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v0[16] = v8;
  v9 = OBJC_IVAR____TtC3RCS18RCSMessageSendItem_sendState;
  v10 = sub_388C8(&qword_127B28, &qword_F2B20);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 4, v10);
  *(v8 + 16) = v4;
  sub_3CA08(v1, v8 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_rcsMessage);
  *(v8 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_context) = v3;
  *(v8 + OBJC_IVAR____TtC3RCS18RCSMessageSendItem_chat) = v2;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_3AAD4;
  v15 = v0[5];

  return sub_85668(v8);
}

uint64_t sub_3AAD4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 144) = v0;

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    v8 = sub_3AD44;
  }

  else
  {
    v8 = sub_3AC2C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_3AC2C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[6];
  v3 = v0[7];

  sub_3897C(v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_3ACBC()
{
  v1 = v0[11];

  v2 = v0[15];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_3AD44()
{
  v1 = v0[11];
  v2 = v0[7];

  sub_3897C(v2);
  v3 = v0[18];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

void sub_3ADD8(int64_t a1, void *a2, void *a3, char *a4, void *a5)
{
  v10 = sub_F06CC();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  __chkstk_darwin(v10);
  v73 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v71 - v15;
  v17 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v71 - v20;
  sub_3BC04(a1, a2, a3, a4);
  if ((v22 & 1) == 0)
  {
    return;
  }

  if (a1 > 2)
  {
    if ((a1 - 3) >= 2)
    {
      if (a1 == 5)
      {
        v49 = sub_F0B1C();
        (*(*(v49 - 8) + 56))(v16, 1, 1, v49);
        sub_F0AEC();
        v50 = v74;
        v51 = a2;
        v52 = a3;
        v53 = a5;
        v54 = sub_F0ADC();
        v55 = swift_allocObject();
        v55[2] = v54;
        v55[3] = &protocol witness table for MainActor;
        v55[4] = v50;
        v55[5] = v51;
        v55[6] = v52;
        v55[7] = v53;
        sub_3CC0C(0, 0, v16, &unk_F2B10, v55);
      }

      return;
    }

    v44 = [a2 guid];
    if (v44)
    {
      v45 = v44;
      v46 = v74;
      [v74 didReceiveError:4 forMessageID:v44 forceError:1];

      v47 = [a2 guid];
      if (v47)
      {
        v73 = v47;
        [v46 processMessageSendFailure:?];
        v48 = v73;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  if (!a1)
  {
    if (qword_127AA0 != -1)
    {
      swift_once();
    }

    v56 = sub_3C96C(v17, qword_127DD8);
    (*(v18 + 16))(v21, v56, v17);
    sub_F044C();
    (*(v18 + 8))(v21, v17);
    if (v76 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    if (qword_127AA8 != -1)
    {
      swift_once();
    }

    v57 = sub_3C96C(v17, qword_127DF0);
    (*(v18 + 16))(v21, v57, v17);
    sub_F044C();
    (*(v18 + 8))(v21, v17);
    if (v75 == 1)
    {
LABEL_25:
      sub_3A140(a2);
      return;
    }

LABEL_21:
    sub_39DE8(a2);
    return;
  }

  if (a1 != 2)
  {
    return;
  }

  v23 = a2;
  v24 = [a2 timeRead];
  v25 = sub_388C8(&qword_127B20, &unk_F74E0);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - 8);
  v28 = &v71 - v27;
  if (!v24)
  {
    v58 = v74;
    v59 = sub_F030C();
    v60 = *(v59 - 8);
    v61 = v60;
    (*(v60 + 56))(v28, 1, 1, v59);
    v62 = sub_372B0(v28, &qword_127B20, &unk_F74E0);
    v63 = *(v60 + 64);
    __chkstk_darwin(v62);
    v65 = &v71 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_F02FC();
    v66 = sub_F028C();
    [a2 setTimeRead:v66];

    v67 = [a2 guid];
    if (v67)
    {
      v68 = v67;
      v69 = sub_F028C();
      [v58 didReceiveMessageReadReceiptForMessageID:v68 date:v69 completionBlock:0];

      v70 = [v58 relayController];
      [v70 messageReadByRemote:v23];

      (*(v61 + 8))(v65, v59);
      return;
    }

    goto LABEL_32;
  }

  sub_F02CC();

  v29 = sub_F030C();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  sub_372B0(v28, &qword_127B20, &unk_F74E0);
  v30 = Logger.rcs.unsafeMutableAddressor();
  v32 = v71;
  v31 = v72;
  v33 = v73;
  (*(v71 + 16))(v73, v30, v72);
  v34 = v23;
  v35 = sub_F06AC();
  v36 = sub_F0CCC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v77 = v38;
    *v37 = 136315138;
    v39 = [v34 guid];

    if (v39)
    {
      v40 = sub_F07EC();
      v42 = v41;

      v43 = sub_3E850(v40, v42, &v77);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_0, v35, v36, "Ignoring read disposition for message already read %s", v37, 0xCu);
      sub_1EDC(v38);

      (*(v32 + 8))(v73, v31);
      return;
    }

    goto LABEL_33;
  }

  (*(v32 + 8))(v33, v31);
}

uint64_t sub_3B66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a5;
  v11 = sub_F06CC();
  v7[3] = v11;
  v12 = *(v11 - 8);
  v7[4] = v12;
  v13 = *(v12 + 64) + 15;
  v7[5] = swift_task_alloc();
  v7[6] = sub_F0AEC();
  v7[7] = sub_F0ADC();
  v14 = swift_task_alloc();
  v7[8] = v14;
  *v14 = v7;
  v14[1] = sub_3B7A0;

  return sub_3A4AC(a5, a6, a7);
}

uint64_t sub_3B7A0()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = sub_F0A6C();
  if (v2)
  {
    v8 = sub_3B964;
  }

  else
  {
    v8 = sub_3B8FC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_3B8FC()
{
  v1 = v0[7];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

void sub_3B964()
{
  v37 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v4 + 16))(v3, v7, v5);
  v8 = v6;
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v12 = 136315394;
    v14 = [v11 guid];
    v15 = v0[9];
    if (!v14)
    {
      v31 = v0[2];
      v32 = v0[9];

      __break(1u);
      return;
    }

    v16 = v14;
    v17 = v0[4];
    v18 = v0[2];
    v33 = v0[3];
    v34 = v0[5];

    v19 = sub_F07EC();
    v21 = v20;

    v22 = sub_3E850(v19, v21, &v36);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v23;
    *v13 = v23;
    _os_log_impl(&dword_0, v9, v10, "Error handling RCS failure to decrypt case for message %s: %@", v12, 0x16u);
    sub_372B0(v13, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v35);

    (*(v17 + 8))(v34, v33);
  }

  else
  {
    v24 = v0[9];
    v26 = v0[4];
    v25 = v0[5];
    v28 = v0[2];
    v27 = v0[3];

    (*(v26 + 8))(v25, v27);
  }

  v29 = v0[5];

  v30 = v0[1];

  v30();
}

void sub_3BC04(unint64_t a1, void *a2, void *a3, char *a4)
{
  v114 = a4;
  v107 = a2;
  v115 = sub_F06CC();
  v109 = *(v115 - 8);
  v6 = *(v109 + 64);
  v7 = __chkstk_darwin(v115);
  v110 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v102 - v10;
  v12 = __chkstk_darwin(v9);
  v108 = &v102 - v13;
  __chkstk_darwin(v12);
  v15 = &v102 - v14;
  v16 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = &v102 - v19;
  if (qword_127A48 != -1)
  {
LABEL_56:
    swift_once();
  }

  v21 = sub_3C96C(v16, qword_127CD0);
  v22 = (v17 + 2);
  v23 = v17[2];
  v23(v20, v21, v16);
  sub_F044C();
  v24 = v17[1];
  v24(v20, v16);
  if (LOBYTE(v119.scheme._countAndFlagsBits) == 1)
  {
    v25 = Logger.rcs.unsafeMutableAddressor();
    v26 = v109;
    v27 = v115;
    (*(v109 + 16))(v15, v25, v115);
    v28 = sub_F06AC();
    v29 = sub_F0CCC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Dropping disposition due to override", v30, 2u);
    }

    (*(v26 + 8))(v15, v27);
    return;
  }

  if ([a3 style] == 45 || a1 == 4 || (a1 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    goto LABEL_12;
  }

  if (qword_1279E0 != -1)
  {
    swift_once();
  }

  v31 = sub_3C96C(v16, qword_127B98);
  v23(v20, v31, v16);
  sub_F044C();
  v24(v20, v16);
  if (LOBYTE(v119.scheme._countAndFlagsBits) == 1)
  {
LABEL_12:
    v118 = &_swiftEmptySetSingleton;
    v32 = [a3 participants];
    if (!v32)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      sub_3CAB8(v114);

      __break(1u);
      return;
    }

    v33 = v32;
    sub_3CA6C();
    v20 = sub_F09FC();

    v35 = v20;
    v11 = v114;
    if (v20 >> 62)
    {
LABEL_58:
      v79 = v35;
      v80 = sub_F10DC();
      v35 = v79;
      v17 = v80;
      if (v80)
      {
LABEL_15:
        v16 = 0;
        v113 = v35 & 0xC000000000000001;
        v106 = v35 & 0xFFFFFFFFFFFFFF8;
        v105 = (v109 + 16);
        v104 = (v109 + 8);
        *&v34 = 136315138;
        v102 = v34;
        v112 = v35;
        v111 = v17;
        while (1)
        {
          if (v113)
          {
            v36 = sub_F0FCC();
          }

          else
          {
            if (v16 >= *(v106 + 16))
            {
              __break(1u);
              goto LABEL_58;
            }

            v36 = *(v35 + 8 * v16 + 32);
          }

          a3 = v36;
          a1 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_56;
          }

          v37 = [v36 ID];
          if (v37)
          {
            v38 = v37;
            v39 = sub_F07EC();
            v15 = v40;

            if (v39 == *(v11 + 2) && v15 == *(v11 + 3))
            {
LABEL_50:

              goto LABEL_53;
            }

            v42 = sub_F122C();

            if (v42)
            {

              goto LABEL_54;
            }
          }

          v43 = [a3 ID];
          if (!v43)
          {
            break;
          }

          v44 = v43;
          v22 = sub_F07EC();
          v46 = v45;

          sub_82EDC(&v117, v22, v46);

          v20 = v11;
          RCSHandle.chatBotId.getter();
          if (v47)
          {
            v48 = sub_F07BC();

            v22 = [v48 __im_stripSip];

            v49 = sub_F07EC();
            v15 = v50;

            v51 = [a3 ID];
            if (v51)
            {
              v52 = v51;
              v53 = sub_F07EC();
              v55 = v54;

              if (v53 == v49 && v55 == v15)
              {

LABEL_53:

LABEL_54:

                return;
              }

              v22 = sub_F122C();

              if (v22)
              {
                goto LABEL_50;
              }
            }

            v20 = &v118;
            sub_82EDC(&v117, v49, v15);
          }

          v56 = [a3 personCentricID];
          if (v56)
          {
            v57 = v56;
            v22 = sub_F07EC();
            v59 = v58;

            v20 = &v118;
            sub_82EDC(&v117, v22, v59);

            v60._countAndFlagsBits = v22;
            v60._object = v59;
            RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v119, v60, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
            if (v61)
            {
              v62 = Logger.rcs.unsafeMutableAddressor();
              v63 = v110;
              v22 = v115;
              (*v105)(v110, v62, v115);
              v64 = a3;
              v20 = sub_F06AC();
              v15 = sub_F0CDC();

              if (os_log_type_enabled(v20, v15))
              {
                v103 = v61;
                v65 = swift_slowAlloc();
                v66 = swift_slowAlloc();
                v117 = v66;
                *v65 = v102;
                v67 = [v64 personCentricID];
                if (v67)
                {
                  v68 = v67;
                  v69 = sub_F07EC();
                  v71 = v70;
                }

                else
                {
                  v71 = 0xE500000000000000;
                  v69 = 0x3E6C696E3CLL;
                }

                v22 = sub_3E850(v69, v71, &v117);

                *(v65 + 4) = v22;
                _os_log_impl(&dword_0, v20, v15, "Failed to parse person centric ID into RCSHandle, likely not a chatbot: %s", v65, 0xCu);
                sub_1EDC(v66);

                (*v104)(v110, v115);
              }

              else
              {

                (*v104)(v63, v22);
              }

              v11 = v114;
            }

            else
            {
              v11 = v114;
              v72 = static RCSHandle.== infix(_:_:)(&v119, v114);

              sub_3CAB8(&v119);
              if (v72)
              {
                goto LABEL_54;
              }
            }
          }

          else
          {
          }

          ++v16;
          v17 = v111;
          v35 = v112;
          if (a1 == v111)
          {
            goto LABEL_59;
          }
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    else
    {
      v17 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
      if (v17)
      {
        goto LABEL_15;
      }
    }

LABEL_59:

    v81 = Logger.rcs.unsafeMutableAddressor();
    v82 = v109;
    v83 = v108;
    v84 = v115;
    (*(v109 + 16))(v108, v81, v115);
    v85 = v118;
    v22 = v107;
    sub_38910(v11, &v117);

    v86 = v11;
    v87 = sub_F06AC();
    v88 = sub_F0CEC();
    if (!os_log_type_enabled(v87, v88))
    {

      sub_3CAB8(v86);

      (*(v82 + 8))(v83, v84);
      return;
    }

    v89 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v117 = v113;
    *v89 = 136315650;
    v90 = [v22 guid];

    if (v90)
    {
      sub_3CAB8(v114);

      v91 = sub_F07EC();
      v93 = v92;

      v94 = sub_3E850(v91, v93, &v117);

      *(v89 + 4) = v94;
      *(v89 + 12) = 2080;
      v95 = RCSHandle.rawValue.getter();
      v97 = sub_3E850(v95, v96, &v117);

      *(v89 + 14) = v97;
      *(v89 + 22) = 2080;
      v116 = v85;
      sub_388C8(&qword_127B30, &qword_F2B28);
      sub_3CB0C();
      sub_3CBB8();
      v98 = sub_F097C();
      v100 = v99;

      v101 = sub_3E850(v98, v100, &v117);

      *(v89 + 24) = v101;
      _os_log_impl(&dword_0, v87, v88, "Dropping disposition notification for %s as it is from an unexpected sender %s - would allow from %s", v89, 0x20u);
      swift_arrayDestroy();

      (*(v82 + 8))(v83, v115);
      return;
    }

    goto LABEL_65;
  }

  v73 = Logger.rcs.unsafeMutableAddressor();
  v74 = v109;
  v75 = v115;
  (*(v109 + 16))(v11, v73, v115);
  v76 = sub_F06AC();
  v77 = sub_F0CEC();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_0, v76, v77, "Dropping disposition notification as it is not supported for this chat", v78, 2u);
  }

  (*(v74 + 8))(v11, v75);
}

uint64_t sub_3C898(uint64_t a1)
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
  v10[1] = sub_37C54;

  return sub_3B66C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3C96C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_3C9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3CA08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_3CA6C()
{
  result = qword_127F70;
  if (!qword_127F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_127F70);
  }

  return result;
}

unint64_t sub_3CB0C()
{
  result = qword_127B38;
  if (!qword_127B38)
  {
    sub_3CB70(&qword_127B30, &qword_F2B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B38);
  }

  return result;
}

uint64_t sub_3CB70(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_3CBB8()
{
  result = qword_127B40;
  if (!qword_127B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_127B40);
  }

  return result;
}

uint64_t sub_3CC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_388C8(&qword_127EB0, &unk_F2B30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_3FBA0(a3, v26 - v10);
  v12 = sub_F0B1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_372B0(v11, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_F0A6C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_F087C() + 32;
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

      sub_372B0(a3, &qword_127EB0, &unk_F2B30);

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

  sub_372B0(a3, &qword_127EB0, &unk_F2B30);
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

uint64_t sub_3CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_3FBA0(a3, v27 - v11);
  v13 = sub_F0B1C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_372B0(v12, &qword_127EB0, &unk_F2B30);
  }

  else
  {
    sub_F0B0C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_F0A6C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_F087C() + 32;
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

      sub_372B0(a3, &qword_127EB0, &unk_F2B30);

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

  sub_372B0(a3, &qword_127EB0, &unk_F2B30);
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

void RCSServiceSession.sendLazuliSpamReport(_:isBot:spamType:)(void *a1, char **a2, uint64_t a3)
{
  v136 = a3;
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v137 = &v136 - v9;
  v143 = sub_F06CC();
  v10 = *(v143 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v143);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v138 = &v136 - v16;
  v17 = __chkstk_darwin(v15);
  v140 = &v136 - v18;
  v19 = __chkstk_darwin(v17);
  v139 = &v136 - v20;
  __chkstk_darwin(v19);
  v22 = &v136 - v21;
  v23 = &selRef_messageSent_onService_compatibilityService_wasInterworked_;
  v24 = [a1 sender];
  if (!v24)
  {
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v25 = v24;
  v26 = sub_F07EC();
  v28 = v27;

  v29 = sub_ABD88(v26, v28, 0, 0, 0);

  if (!v29)
  {
    v34 = Logger.rcs.unsafeMutableAddressor();
    v35 = v10;
    v36 = v143;
    (*(v10 + 16))(v14, v34, v143);
    v37 = a1;
    v38 = sub_F06AC();
    v39 = sub_F0CEC();
    if (!os_log_type_enabled(v38, v39))
    {

      (*(v10 + 8))(v14, v36);
      return;
    }

    v40 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v145 = v4;
    *v40 = 136315138;
    v41 = [v37 guid];

    if (v41)
    {
      v42 = sub_F07EC();
      v44 = v43;

      v45 = sub_3E850(v42, v44, &v145);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "Can't resolve a chat to report spam %s", v40, 0xCu);
      sub_1EDC(v4);

      (*(v35 + 8))(v14, v143);
      return;
    }

    goto LABEL_45;
  }

  v142 = v29;
  v30 = [v142 chatIdentifier];
  if (v30)
  {
    v31 = v30;
    v141 = sub_F07EC();
    v33 = v32;
  }

  else
  {
    v141 = 0;
    v33 = 0xE000000000000000;
  }

  v46 = [a1 sender];
  if (v46)
  {
    v47 = v46;
    v48 = sub_F07EC();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0xE000000000000000;
  }

  v51 = v10;
  v23 = a2;
  v52 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v52 = v141 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {

    v75 = Logger.rcs.unsafeMutableAddressor();
    v76 = v143;
    (*(v10 + 16))(v22, v75, v143);
    v77 = a1;
    v78 = sub_F06AC();
    v79 = sub_F0CEC();
    if (!os_log_type_enabled(v78, v79))
    {

      v113 = v142;
      v73 = *(v10 + 8);
      v74 = v22;
      goto LABEL_41;
    }

    v80 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v145 = v4;
    *v80 = 136315138;
    v81 = [v77 guid];

    if (v81)
    {
      v82 = sub_F07EC();
      v84 = v83;

      v85 = sub_3E850(v82, v84, &v145);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_0, v78, v79, "Can't report spam %s with empty chatIdentifier", v80, 0xCu);
      sub_1EDC(v4);

      v86 = v142;
      v73 = *(v51 + 8);
      v74 = v22;
      goto LABEL_39;
    }

    goto LABEL_46;
  }

  v53 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v53 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    v87 = Logger.rcs.unsafeMutableAddressor();
    v88 = v139;
    v76 = v143;
    (*(v10 + 16))(v139, v87, v143);
    v89 = a1;
    v90 = sub_F06AC();
    v91 = sub_F0CEC();
    if (!os_log_type_enabled(v90, v91))
    {

      v114 = v142;
      v73 = *(v10 + 8);
      v74 = v88;
      goto LABEL_41;
    }

    v92 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v145 = v4;
    *v92 = 136315138;
    v93 = [v89 guid];

    if (v93)
    {
      v94 = sub_F07EC();
      v96 = v95;

      v97 = sub_3E850(v94, v96, &v145);

      *(v92 + 4) = v97;
      _os_log_impl(&dword_0, v90, v91, "Can't report spam %s with empty destination URI", v92, 0xCu);
      sub_1EDC(v4);

      v98 = v142;
      v73 = *(v51 + 8);
      v74 = v88;
      goto LABEL_39;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_55CFC(v142, a1);
  v55 = v54;
  if ((v56 & 1) == 0)
  {
    v99 = objc_opt_self();
    v100 = v55;
    v101 = [v99 sharedManager];
    v139 = v100;
    LOBYTE(v100) = [v101 networkSupportsSpamReportingForContext:v100 isChatBot:v23 & 1];
    v140 = v55;
    sub_3FA88(v55, 0);

    if (v100)
    {
      v102 = sub_3F404(v48, v50, v23 & 1, a1, v136);
      v103 = v137;
      sub_F0AFC();
      v104 = sub_F0B1C();
      (*(*(v104 - 8) + 56))(v103, 0, 1, v104);
      sub_F0AEC();
      v105 = a1;
      v106 = v140;
      sub_3FA94(v140, 0);
      v107 = v102;
      v108 = v3;
      v109 = sub_F0ADC();
      v110 = swift_allocObject();
      v110[2] = v109;
      v110[3] = &protocol witness table for MainActor;
      v111 = v141;
      v110[4] = v108;
      v110[5] = v111;
      v110[6] = v33;
      v110[7] = v48;
      v110[8] = v50;
      v110[9] = v107;
      v110[10] = v139;
      v110[11] = v105;
      sub_3CC0C(0, 0, v103, &unk_F2B48, v110);
      sub_3FA88(v106, 0);

      v112 = v142;
      return;
    }

    v117 = v139;

    v118 = Logger.rcs.unsafeMutableAddressor();
    v119 = v10;
    v120 = *(v10 + 16);
    v121 = v138;
    v76 = v143;
    v120(v138, v118, v143);
    v23 = a1;
    v122 = v140;
    sub_3FA94(v140, 0);
    v123 = sub_F06AC();
    v124 = sub_F0CEC();
    if (os_log_type_enabled(v123, v124))
    {
      v4 = v122;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v145 = v141;
      *v125 = 136315394;
      v127 = [v23 guid];
      if (!v127)
      {
LABEL_49:
        sub_3FA88(v4, 0);

        __break(1u);
        return;
      }

      v128 = v127;
      sub_3FA88(v4, 0);

      v129 = sub_F07EC();
      v131 = v130;

      v132 = sub_3E850(v129, v131, &v145);

      *(v125 + 4) = v132;
      *(v125 + 12) = 2112;
      *(v125 + 14) = v117;
      *v126 = v4;
      v133 = v117;
      _os_log_impl(&dword_0, v123, v124, "Can't report spam %s with context %@", v125, 0x16u);
      sub_372B0(v126, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v141);

      v134 = v142;
      sub_3FA88(v4, 0);
      v73 = *(v119 + 8);
      v74 = v138;
LABEL_39:
      v116 = v143;
      goto LABEL_42;
    }

    v135 = v142;
    sub_3FA88(v122, 0);
    sub_3FA88(v122, 0);

    v73 = *(v119 + 8);
    v74 = v121;
LABEL_41:
    v116 = v76;
    goto LABEL_42;
  }

  v57 = Logger.rcs.unsafeMutableAddressor();
  v58 = *(v10 + 16);
  v59 = v140;
  v60 = v143;
  v58(v140, v57, v143);
  v61 = a1;
  v62 = sub_F06AC();
  v63 = sub_F0CEC();
  if (!os_log_type_enabled(v62, v63))
  {

    v115 = v142;
    v73 = *(v51 + 8);
    v74 = v59;
    goto LABEL_35;
  }

  v64 = swift_slowAlloc();
  v4 = swift_slowAlloc();
  v145 = v4;
  *v64 = 136315394;
  v23 = [v61 guid];

  if (!v23)
  {
    goto LABEL_48;
  }

  v65 = sub_F07EC();
  v67 = v66;

  v68 = sub_3E850(v65, v67, &v145);

  *(v64 + 4) = v68;
  *(v64 + 12) = 2080;
  v144 = v55;
  type metadata accessor for FZErrorType(0);
  v69 = sub_F083C();
  v71 = sub_3E850(v69, v70, &v145);

  *(v64 + 14) = v71;
  _os_log_impl(&dword_0, v62, v63, "No CTXPCContext found to report spam %s error %s", v64, 0x16u);
  swift_arrayDestroy();

  v72 = v142;
  v73 = *(v51 + 8);
  v74 = v140;
LABEL_35:
  v116 = v60;
LABEL_42:
  v73(v74, v116);
}

uint64_t sub_3DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v17;
  *(v8 + 64) = v16;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = sub_F06CC();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  sub_F0AEC();
  *(v8 + 112) = sub_F0ADC();
  v13 = sub_F0A6C();
  *(v8 + 120) = v13;
  *(v8 + 128) = v12;

  return _swift_task_switch(sub_3DFCC, v13, v12);
}

void sub_3DFCC()
{
  v1 = *(*(v0[3] + OBJC_IVAR___RCSServiceSession_state) + 56);
  v0[17] = v1;
  if (v1)
  {
    v0[2] = v0[9];

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_3E0B0;
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];

    RCSSpamReportingController.reportSpam(to:forDestination:withSpamReportInfo:from:)(v7, v5, v6, v3, v4, (v0 + 2));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_3E0B0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_3E250;
  }

  else
  {
    v7 = sub_3E1E8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_3E1E8()
{
  v1 = v0[14];

  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

void sub_3E250()
{
  v37 = v0;
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];

  v7 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v3, v7, v4);
  v8 = v6;
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v12 = 136315394;
    v14 = [v11 guid];
    v15 = v0[19];
    if (!v14)
    {
      v31 = v0[10];
      v32 = v0[19];

      __break(1u);
      return;
    }

    v16 = v14;
    v17 = v0[12];
    v18 = v0[10];
    v33 = v0[11];
    v34 = v0[13];

    v19 = sub_F07EC();
    v21 = v20;

    v22 = sub_3E850(v19, v21, &v36);

    *(v12 + 4) = v22;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v23;
    *v13 = v23;
    _os_log_impl(&dword_0, v9, v10, "Could not report spam %s. Error: %@", v12, 0x16u);
    sub_372B0(v13, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v35);

    (*(v17 + 8))(v34, v33);
  }

  else
  {
    v24 = v0[19];
    v26 = v0[12];
    v25 = v0[13];
    v28 = v0[10];
    v27 = v0[11];

    (*(v26 + 8))(v25, v27);
  }

  v29 = v0[13];

  v30 = v0[1];

  v30();
}

uint64_t sub_3E590(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_3E5DC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3E6D4;

  return v7(a1);
}

uint64_t sub_3E6D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_3E7F4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_3E850(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_3E850(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3E91C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_3FE38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1EDC(v11);
  return v7;
}

unint64_t sub_3E91C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3EA28(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_F0FDC();
    a6 = v11;
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

char *sub_3EA28(uint64_t a1, unint64_t a2)
{
  v4 = sub_3EA74(a1, a2);
  sub_3EBA4(&off_11DE28);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3EA74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_3EC90(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_F0FDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_F08DC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3EC90(v10, 0);
        result = sub_F0F8C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_3EBA4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_3ED04(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3EC90(uint64_t a1, uint64_t a2)
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

  sub_388C8(&qword_127B78, &unk_F2BB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3ED04(char *result, int64_t a2, char a3, char *a4)
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
    sub_388C8(&qword_127B78, &unk_F2BB0);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_3EDF8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_3EE08(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_3EE7C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_3EF70;

  return v6(v2 + 32);
}

uint64_t sub_3EF70()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void sub_3F084(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v40 = a1;
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.rcs.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v16, v11);

  v17 = a3;
  v18 = sub_F06AC();
  v19 = sub_F0CCC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = a6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = a4;
    v23 = a5;
    v24 = v22;
    v41 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_3E850(v40, a2, &v41);
    *(v21 + 12) = 1024;
    *(v21 + 14) = [v17 isChatbot];

    _os_log_impl(&dword_0, v18, v19, "Reporting spam about destination: %s, isBot: %{BOOL}d", v21, 0x12u);
    sub_1EDC(v24);
    a5 = v23;
    a4 = v38;

    a6 = v37;
  }

  else
  {
  }

  (*(v12 + 8))(v15, v11);
  v25 = [objc_allocWithZone(CTLazuliDestination) init];
  v26 = sub_F07BC();
  [v25 setUri:v26];

  v27 = *(v39 + OBJC_IVAR___RCSServiceSession_state);
  v28 = *(v27 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v29 = v28;

  v30 = CTLazuliOperationID.init(id:)(a4, a5);
  v41 = 0;
  v31 = [v29 reportLazuliSpamWithContext:a6 destination:v25 spamReportInfo:v17 operationID:v30 error:&v41];

  if (v31)
  {
    v32 = v41;
  }

  else
  {
    v33 = v41;
    v34 = sub_F015C();

    swift_willThrow();
    if (*(v27 + 56))
    {
      v35 = *(v27 + 56);

      RCSSpamReportingController.spamReportFailed(with:operationID:)(v34, a4, a5);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_3F404(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v8 = [objc_allocWithZone(CTLazuliMessageID) init];
  result = [a4 fallbackHash];
  v25 = a5;
  if (result || (result = [a4 guid]) != 0)
  {
    v10 = result;
    sub_F07EC();

    v11 = sub_F07BC();

    [v8 setUuid:v11];

    v12 = [objc_allocWithZone(CTLazuliMessageIDList) init];
    v13 = v8;
    v14 = [v12 list];
    sub_37310(0, &qword_127B70, CTLazuliMessageID_ptr);
    v15 = sub_F09FC();

    sub_F09DC();
    if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v15 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v24 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      sub_F0A1C();
    }

    sub_F0A3C();
    v16 = sub_F09EC();

    [v12 setList:v16];

    v17 = [objc_allocWithZone(CTLazuliSpamReportInformation) init];
    [v17 setIsChatbot:a3 & 1];
    v18 = sub_F07BC();
    [v17 setDestinationUri:v18];

    [v17 setMessageIDList:v12];
    v19 = [a4 body];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 string];

      if (!v21)
      {
        sub_F07EC();
        v21 = sub_F07BC();
      }
    }

    else
    {
      v21 = 0;
    }

    [v17 setContent:{v21, v25}];

    if ((v26 - 1) > 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = qword_F2BC0[v26 - 1];
    }

    [v17 setSpamType:v22];
    v23 = sub_F07BC();
    [v17 setFreeBodyText:v23];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3F738(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v40 = a1;
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.rcs.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v16, v11);

  v17 = sub_F06AC();
  v18 = sub_F0CCC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a4;
    v38 = a5;
    v20 = v19;
    v21 = a3;
    v22 = a6;
    v23 = swift_slowAlloc();
    v41 = v23;
    *v20 = 136315138;
    *(v20 + 4) = sub_3E850(v40, a2, &v41);
    _os_log_impl(&dword_0, v17, v18, "Reporting chatbot spam to %s", v20, 0xCu);
    sub_1EDC(v23);
    a6 = v22;
    a3 = v21;

    a4 = v37;
    a5 = v38;
  }

  (*(v12 + 8))(v15, v11);
  v24 = [objc_allocWithZone(CTLazuliDestination) init];
  v25 = sub_F07BC();
  [v24 setUri:v25];

  v26 = *(v39 + OBJC_IVAR___RCSServiceSession_state);
  v27 = *(v26 + 16);
  sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
  v28 = v27;

  v29 = CTLazuliOperationID.init(id:)(a4, a5);
  v41 = 0;
  v30 = [v28 reportChatbotSpam:a6 forChatbot:v24 withSpamReportInfo:a3 andOperationID:v29 withError:&v41];

  if (v30)
  {
    v31 = v41;
  }

  else
  {
    v32 = a4;
    v33 = v41;
    v34 = sub_F015C();

    swift_willThrow();
    if (*(v26 + 56))
    {
      v35 = *(v26 + 56);

      RCSSpamReportingController.spamReportFailed(with:operationID:)(v34, v32, a5);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3FA88(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_3FA94(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_3FAA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_37C54;

  return sub_3DEBC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_3FBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_388C8(&qword_127EB0, &unk_F2B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3FC10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_38B0C;

  return sub_3EE7C(a1, v5);
}

uint64_t sub_3FCC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_37C54;

  return sub_3EE7C(a1, v5);
}

uint64_t sub_3FD80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_38B0C;

  return sub_3E5DC(a1, v5);
}

uint64_t sub_3FE38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_3FF00(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(*(v3 + OBJC_IVAR___RCSServiceSession_state) + 24);
  if (*(v4 + 16))
  {

    v8 = sub_51FEC(a1, a2);
    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v8);

      v11 = [v10 fileTransferCapabilities];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 *a3];
        if (v13)
        {
          v14 = v13;
          if ([v13 longLongValue])
          {
            v15 = [v14 longLongValue];

            if ((v15 - 0x20000000000000) >> 54 != 1023)
            {
              __break(1u);
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

Swift::Int64 __swiftcall RCSServiceSession.maxSizePerAttachment(withCount:lastAddressedHandle:lastAddressedSIMID:)(Swift::Int32 withCount, Swift::String lastAddressedHandle, Swift::String_optional lastAddressedSIMID)
{
  if (!lastAddressedSIMID.value._object)
  {
    return 104857600;
  }

  sub_3FF00(lastAddressedSIMID.value._countAndFlagsBits, lastAddressedSIMID.value._object, &selRef_maxTransferSize);
  if (v4)
  {
    return 104857600;
  }

  return result;
}

uint64_t sub_400F0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_4019C(void *a1, int a2)
{
  v4 = sub_F06CC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_724A4(a1);
  v7 = sub_407A8(v6, a2);

  return v7 & 1;
}

BOOL sub_403DC(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = sub_724A4(a1);
  v5 = sub_40D54(v4);

  return v5;
}

uint64_t sub_40614(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_F122C() & 1;
  }
}

id _sSo17RCSServiceSessionC3RCSE23isGroupMessagingEnabled3forSbSo7IMDChatC_tF_0(void *a1)
{
  v2 = [a1 lastAddressedLocalHandle];
  if (v2)
  {
    v3 = v2;
    sub_F07EC();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 lastAddressedSIMID];
  if (v6)
  {
    v7 = v6;
    sub_F07EC();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() sharedManager];
  if (!v5)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = sub_F07BC();
  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = sub_F07BC();
LABEL_12:
  v13 = [v10 groupMessagingEnabledForPhoneNumber:v11 simID:v12];

  return v13;
}

id sub_407A8(id *a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = sub_F06CC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_388C8(&qword_127B90, &qword_F2BE0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  if (qword_127A68 != -1)
  {
LABEL_25:
    swift_once();
  }

  v20 = sub_3C96C(v15, qword_127D30);
  (*(v16 + 16))(v19, v20, v15);
  sub_F044C();
  v21 = *(v16 + 8);
  v16 += 8;
  v21(v19, v15);
  v19 = v47[0];
  if (*(v47[0] + 16))
  {
    v22 = [a1 identity];
    if (v22)
    {
      v41 = v2;
      v42 = a1;
      v43 = v12;
      v40 = v14;
      v44 = v9;
      v45 = v5;
      v46 = v4;
      v23 = v22;
      v2 = [v22 impus];

      a1 = sub_F09FC();
      v15 = 0;
      v25 = a1 + 5;
      v14 = -a1[2];
      v4 = -1;
      v5 = v47;
      do
      {
        if (v14 + v4 == -1)
        {

          v5 = v45;
          v4 = v46;
          v12 = v43;
          v9 = v44;
          a1 = v42;
          LOBYTE(v2) = v41;
          goto LABEL_12;
        }

        if (++v4 >= a1[2])
        {
          __break(1u);
          goto LABEL_25;
        }

        v12 = &v40;
        v9 = (v25 + 2);
        v2 = *v25;
        v47[0] = *(v25 - 1);
        v47[1] = v2;
        __chkstk_darwin(v24);
        *(&v40 - 2) = v47;

        v16 = sub_400F0(sub_40D38, (&v40 - 4), v19);

        v25 = v9;
      }

      while ((v16 & 1) == 0);

      v26 = Logger.rcs.unsafeMutableAddressor();
      v5 = v45;
      v4 = v46;
      v9 = v40;
      (v45[2])(v40, v26, v46);
      v27 = sub_F06AC();
      v28 = sub_F0CCC();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_22;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "Assuming we can't send read receipts due to user-default override";
      goto LABEL_21;
    }
  }

LABEL_12:
  if (v2 == 45)
  {
    v31 = [a1 messagingCapabilities];
    if (!v31)
    {
      v32 = Logger.rcs.unsafeMutableAddressor();
      (v5[2])(v12, v32, v4);
      v33 = sub_F06AC();
      v34 = sub_F0CCC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v33, v34, "Assuming we can't send typing indicators as system configuration has no messaging capabilities", v35, 2u);
      }

      (v5[1])(v12, v4);
      return 0;
    }

LABEL_18:
    v36 = v31;
    v37 = [v31 supportsComposingIndicator];

    return v37;
  }

  v31 = [a1 groupChatCapabilites];
  if (v31)
  {
    goto LABEL_18;
  }

  v39 = Logger.rcs.unsafeMutableAddressor();
  (v5[2])(v9, v39, v4);
  v27 = sub_F06AC();
  v28 = sub_F0CCC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Assuming we can't send typing indicators as system configuration has no group chat capabilities";
LABEL_21:
    _os_log_impl(&dword_0, v27, v28, v30, v29, 2u);
  }

LABEL_22:

  (v5[1])(v9, v4);
  return 0;
}

BOOL sub_40D54(uint64_t *a1)
{
  v2 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v51 = &v43 - v5;
  v6 = sub_F06CC();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - v13;
  __chkstk_darwin(v12);
  v50 = &v43 - v15;
  v16 = sub_388C8(&qword_127B90, &qword_F2BE0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  if (qword_127A60 != -1)
  {
LABEL_25:
    swift_once();
  }

  v21 = sub_3C96C(v16, qword_127D18);
  (*(v17 + 16))(v20, v21, v16);
  sub_F044C();
  v22 = *(v17 + 8);
  v17 += 8;
  v22(v20, v16);
  v20 = v52[0];
  if (*(v52[0] + 16))
  {
    v23 = [a1 identity];
    if (v23)
    {
      v43 = v3;
      v44 = v2;
      v45 = a1;
      v46 = v14;
      v47 = v11;
      v48 = v7;
      v49 = v6;
      v24 = v23;
      v11 = [v23 impus];

      v3 = sub_F09FC();
      v16 = 0;
      v26 = (v3 + 40);
      v2 = -*(v3 + 16);
      v7 = -1;
      v6 = v52;
      do
      {
        if (v2 + v7 == -1)
        {

          v7 = v48;
          v6 = v49;
          v14 = v46;
          v11 = v47;
          v2 = v44;
          a1 = v45;
          v3 = v43;
          goto LABEL_12;
        }

        if (++v7 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        a1 = &v43;
        v14 = v26 + 16;
        v11 = *v26;
        v52[0] = *(v26 - 1);
        v52[1] = v11;
        __chkstk_darwin(v25);
        *(&v43 - 2) = v52;

        v17 = sub_400F0(sub_41990, (&v43 - 4), v20);

        v26 = v14;
      }

      while ((v17 & 1) == 0);

      v27 = Logger.rcs.unsafeMutableAddressor();
      v7 = v48;
      v6 = v49;
      v11 = v50;
      (*(v48 + 16))(v50, v27, v49);
      v28 = sub_F06AC();
      v29 = sub_F0CCC();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_23;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Assuming we can't send read receipts due to user-default override";
      goto LABEL_22;
    }
  }

LABEL_12:
  v32 = v51;
  if (qword_127AC0 != -1)
  {
    swift_once();
  }

  v33 = sub_3C96C(v2, qword_127E38);
  (*(v3 + 16))(v32, v33, v2);
  sub_F044C();
  (*(v3 + 8))(v32, v2);
  if (LOBYTE(v52[0]) != 1)
  {
    v39 = [a1 messagingCapabilities];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 notificationDisplay];

      return v41 == 0;
    }

    v42 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v11, v42, v6);
    v28 = sub_F06AC();
    v29 = sub_F0CCC();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_23;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Assuming we can't send read receipts as system configuration has no messaging capabilities";
LABEL_22:
    _os_log_impl(&dword_0, v28, v29, v31, v30, 2u);

LABEL_23:

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  v34 = Logger.rcs.unsafeMutableAddressor();
  (*(v7 + 16))(v14, v34, v6);
  v35 = sub_F06AC();
  v36 = sub_F0CCC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "Unconditionally allowing read receipts due to override", v37, 2u);
  }

  (*(v7 + 8))(v14, v6);
  return 1;
}

uint64_t sub_413E8(void *a1)
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

void sub_41440(void *a1)
{
  v2 = sub_F06CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 identity];
  if (v7)
  {
    v57 = v6;
    v8 = v7;
    v9 = [v7 impus];

    v10 = sub_F09FC();
    v12 = v10;
    v13 = *(v10 + 16);
    if (v13)
    {
      v14 = 0;
      v58 = (v3 + 8);
      v59 = (v3 + 16);
      v15 = v10 + 40;
      v53 = v13 - 1;
      v61 = _swiftEmptyArrayStorage;
      *&v11 = 136315394;
      v55 = v11;
      v56 = v12;
      v60 = v13;
      v54 = v12 + 40;
      do
      {
        v16 = (v15 + 16 * v14);
        v17 = v14;
        v18 = v57;
        while (1)
        {
          if (v17 >= *(v12 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v20 = *(v16 - 1);
          v19 = *v16;
          swift_bridgeObjectRetain_n();
          v21._countAndFlagsBits = v20;
          v21._object = v19;
          RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v64, v21, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
          if (!v22)
          {
            break;
          }

          v62 = v17 + 1;
          v23 = Logger.rcs.unsafeMutableAddressor();
          (*v59)(v18, v23, v2);

          swift_errorRetain();
          v24 = sub_F06AC();
          v25 = sub_F0CFC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = v2;
            v29 = swift_slowAlloc();
            v63 = v29;
            *v26 = v55;
            *(v26 + 4) = sub_3E850(v20, v19, &v63);
            *(v26 + 12) = 2112;
            swift_errorRetain();
            v30 = _swift_stdlib_bridgeErrorToNSError();
            *(v26 + 14) = v30;
            *v27 = v30;
            _os_log_impl(&dword_0, v24, v25, "failed to parse self-URI %s into RCSHandle: %@", v26, 0x16u);
            sub_389D8(v27);

            sub_1EDC(v29);
            v2 = v28;

            v12 = v56;
            v18 = v57;
          }

          else
          {
          }

          (*v58)(v18, v2);

          v16 += 2;
          v17 = v62;
          if (v60 == v62)
          {
            goto LABEL_19;
          }
        }

        countAndFlagsBits = v64.id._countAndFlagsBits;
        object = v64.id._object;

        sub_3CAB8(&v64);

        v14 = v17 + 1;
        v33 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_6E2D8(0, *(v61 + 2) + 1, 1, v61);
        }

        v15 = v54;
        v35 = *(v61 + 2);
        v34 = *(v61 + 3);
        if (v35 >= v34 >> 1)
        {
          v61 = sub_6E2D8((v34 > 1), v35 + 1, 1, v61);
        }

        v36 = v61;
        *(v61 + 2) = v35 + 1;
        v37 = &v36[16 * v35];
        *(v37 + 4) = countAndFlagsBits;
        *(v37 + 5) = object;
        v2 = v33;
        v12 = v56;
      }

      while (v53 != v17);
    }

    else
    {
      v61 = _swiftEmptyArrayStorage;
    }

LABEL_19:

    v38 = v61;
    v39 = *(v61 + 2);
    if (v39)
    {
      v40 = 0;
      v41 = v61 + 40;
      v60 = v39 - 1;
      v42 = _swiftEmptyArrayStorage;
      v62 = v61 + 40;
LABEL_21:
      v43 = &v41[16 * v40];
      v44 = v40;
      while (v44 < *(v38 + 2))
      {
        v46 = *(v43 - 1);
        v45 = *v43;
        v40 = v44 + 1;

        v47 = sub_F07BC();
        IsPhoneNumber = IMStringIsPhoneNumber();

        if (IsPhoneNumber)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_6EB68(0, v42[2] + 1, 1);
            v42 = v63;
          }

          v41 = v62;
          v51 = v42[2];
          v50 = v42[3];
          if (v51 >= v50 >> 1)
          {
            sub_6EB68((v50 > 1), v51 + 1, 1);
            v42 = v63;
          }

          v42[2] = v51 + 1;
          v52 = &v42[2 * v51];
          v52[4] = v46;
          v52[5] = v45;
          v38 = v61;
          if (v60 != v44)
          {
            goto LABEL_21;
          }

          goto LABEL_31;
        }

        v43 += 16;
        ++v44;
        v38 = v61;
        if (v39 == v40)
        {
          goto LABEL_31;
        }
      }

LABEL_33:
      __break(1u);
    }

    else
    {
LABEL_31:
    }
  }
}

uint64_t sub_419AC()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127B98);
  sub_3C96C(v4, qword_127B98);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_41AD4()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127BB0);
  sub_3C96C(v4, qword_127BB0);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  [objc_opt_self() isInternalCarryDevice];
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_41C18()
{
  v0 = sub_388C8(&qword_127E70, &qword_F2C08);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&qword_127E78, &qword_F2C10);
  sub_42800(v4, qword_127BC8);
  sub_3C96C(v4, qword_127BC8);
  v5 = sub_388C8(&unk_127E80, &qword_F2C18);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_F049C();
}

uint64_t sub_41D44()
{
  v0 = sub_388C8(&qword_127E70, &qword_F2C08);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&qword_127E78, &qword_F2C10);
  sub_42800(v4, qword_127BE0);
  sub_3C96C(v4, qword_127BE0);
  v5 = sub_388C8(&unk_127E80, &qword_F2C18);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_F049C();
}

uint64_t sub_41E6C()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127BF8);
  sub_3C96C(v4, qword_127BF8);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_41F94()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127C10);
  sub_3C96C(v4, qword_127C10);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42114(uint64_t a1, uint64_t *a2)
{
  v3 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v7, a2);
  sub_3C96C(v7, a2);
  v8 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42238()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127C58);
  sub_3C96C(v4, qword_127C58);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42360()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127C70);
  sub_3C96C(v4, qword_127C70);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_42488()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127C88);
  sub_3C96C(v4, qword_127C88);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_425B0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127CA0);
  sub_3C96C(v4, qword_127CA0);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_426D8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127CB8);
  sub_3C96C(v4, qword_127CB8);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t *sub_42800(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_42864()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127CD0);
  sub_3C96C(v4, qword_127CD0);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_4298C()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127CE8);
  sub_3C96C(v4, qword_127CE8);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_F047C();
}

uint64_t sub_42AB0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127D00);
  sub_3C96C(v4, qword_127D00);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_F047C();
}

uint64_t sub_42BD4()
{
  v0 = sub_388C8(&qword_127E60, &qword_F2BF8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&qword_127B90, &qword_F2BE0);
  sub_42800(v4, qword_127D18);
  sub_3C96C(v4, qword_127D18);
  v5 = sub_388C8(&qword_127E68, &qword_F2C00);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F046C();
  return sub_F045C();
}

uint64_t sub_42D0C()
{
  v0 = sub_388C8(&qword_127E60, &qword_F2BF8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&qword_127B90, &qword_F2BE0);
  sub_42800(v4, qword_127D30);
  sub_3C96C(v4, qword_127D30);
  v5 = sub_388C8(&qword_127E68, &qword_F2C00);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F046C();
  return sub_F045C();
}

uint64_t sub_42E44()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127D48);
  sub_3C96C(v4, qword_127D48);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_F047C();
}

uint64_t sub_42F68()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127D60);
  sub_3C96C(v4, qword_127D60);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43090()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127D78);
  sub_3C96C(v4, qword_127D78);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_431B8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127D90);
  sub_3C96C(v4, qword_127D90);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_432E0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127DA8);
  sub_3C96C(v4, qword_127DA8);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43408()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127DC0);
  sub_3C96C(v4, qword_127DC0);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43530()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127DD8);
  sub_3C96C(v4, qword_127DD8);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43658()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127DF0);
  sub_3C96C(v4, qword_127DF0);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_43780()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127E08);
  sub_3C96C(v4, qword_127E08);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_438A8()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127E20);
  sub_3C96C(v4, qword_127E20);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t sub_439D0()
{
  v0 = sub_388C8(&qword_127E50, &qword_F2BE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  sub_42800(v4, qword_127E38);
  sub_3C96C(v4, qword_127E38);
  v5 = sub_388C8(&qword_127E58, &qword_F2BF0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_F048C();
  return sub_F047C();
}

uint64_t CTLazuliCapabilitiesInformation.recipientUri.getter()
{
  v1 = [v0 recipient];
  v2 = [v1 extractedUri];

  v3 = sub_F07EC();
  v5 = v4;

  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = [v0 recipient];
  v8 = v7;
  v9 = &selRef_uri;
  if (v6)
  {
    v9 = &selRef_extractedUri;
  }

  v10 = [v7 *v9];

  v11 = sub_F07EC();
  return v11;
}

uint64_t sub_43D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 validUntil];
  if (v3)
  {
    v4 = v3;
    sub_F02CC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_F030C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t RCSHandle.scheme.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_43E44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_F030C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_43EB0()
{
  v59 = sub_F06CC();
  v0 = *(v59 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v59);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  if (qword_127A40 != -1)
  {
    swift_once();
  }

  v18 = sub_3C96C(v13, qword_127CB8);
  (*(v14 + 16))(v17, v18, v13);
  sub_F044C();
  (*(v14 + 8))(v17, v13);
  if (v60 == 1)
  {
    v19 = Logger.rcs.unsafeMutableAddressor();
    v20 = v59;
    (*(v0 + 16))(v12, v19, v59);
    v21 = sub_F06AC();
    v22 = sub_F0CCC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Dropping send success due to override", v23, 2u);
    }

    (*(v0 + 8))(v12, v20);
  }

  else
  {
    v24 = objc_opt_self();
    v25 = [v24 sharedInstance];
    v26 = sub_F07BC();
    v27 = [v25 messageWithGUID:v26];

    if (v27)
    {
      if ([v27 isFromMe])
      {
        v28 = sub_F07BC();
        v29 = v58;
        [v58 _markMessageAsSent:v28];

        v30 = [v29 relayController];
        v31 = sub_F07BC();
        v32 = [v29 service];
        v33 = [v32 internalName];

        if (!v33)
        {
          sub_F07EC();
          v33 = sub_F07BC();
        }

        v34 = [v29 service];
        v35 = [v34 internalName];

        if (!v35)
        {
          sub_F07EC();
          v35 = sub_F07BC();
        }

        [v30 messageSent:v31 onService:v33 compatibilityService:v35];

        v36 = [v24 sharedInstance];
        v37 = [v36 chatForMessage:v27];

        if (v37)
        {
          v38 = [v37 style];
          v39 = [v37 chatIdentifier];
          if (v39)
          {
            v40 = v39;
            [v58 didSendMessage:v27 forChat:v39 style:v38];
          }

          else
          {
            __break(1u);
          }

          return;
        }

        v53 = Logger.rcs.unsafeMutableAddressor();
        v47 = v59;
        (*(v0 + 16))(v6, v53, v59);
        v54 = sub_F06AC();
        v55 = sub_F0CEC();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_0, v54, v55, "Ignoring message sent due to due to missing chat", v56, 2u);
        }

        else
        {
        }

        v51 = *(v0 + 8);
        v52 = v6;
      }

      else
      {
        v46 = Logger.rcs.unsafeMutableAddressor();
        v47 = v59;
        (*(v0 + 16))(v9, v46, v59);
        v48 = sub_F06AC();
        v49 = sub_F0CEC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_0, v48, v49, "Ignoring message sent for a message I didn't send", v50, 2u);
        }

        else
        {
        }

        v51 = *(v0 + 8);
        v52 = v9;
      }

      v51(v52, v47);
      return;
    }

    v41 = Logger.rcs.unsafeMutableAddressor();
    v42 = v59;
    (*(v0 + 16))(v3, v41, v59);
    v43 = sub_F06AC();
    v44 = sub_F0CEC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "Ignoring message sent due to unknown message UUID", v45, 2u);
    }

    (*(v0 + 8))(v3, v42);
  }
}

void RCSServiceSession.systemConfigurationChanged(_:with:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_53040(0xD000000000000023, 0x80000000000FE230))
  {
    v11 = Logger.rcs.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v11, v6);
    v12 = a1;
    v13 = a2;
    v14 = sub_F06AC();
    v15 = sub_F0CCC();
    v43 = v13;

    if (os_log_type_enabled(v14, v15))
    {
      v42 = v3;
      v16 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44 = v41;
      *v16 = 136446722;
      *(v16 + 4) = sub_3E850(0xD000000000000023, 0x80000000000FE230, &v44);
      *(v16 + 12) = 2080;
      v17 = [v12 labelID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_F07EC();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = sub_3E850(v19, v21, &v44);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      v23 = [v43 description];
      v24 = sub_F07EC();
      v26 = v25;

      v27 = sub_3E850(v24, v26, &v44);

      *(v16 + 24) = v27;
      _os_log_impl(&dword_0, v14, v15, "%{public}s simID: %s configuration: %s", v16, 0x20u);
      swift_arrayDestroy();

      (*(v7 + 8))(v10, v6);
      v3 = v42;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v28 = [v12 labelID];
    if (v28)
    {
      v29 = v28;
      v30 = sub_F07EC();
      v32 = v31;

      v33 = *&v3[OBJC_IVAR___RCSServiceSession_state];
      v34 = *(v33 + 24);
      v35 = v43;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v34;
      sub_521E4(v35, v30, v32, isUniquelyReferenced_nonNull_native);

      v37 = *(v33 + 24);
      *(v33 + 24) = v44;

      v38 = [v3 account];
      v39 = sub_72DF0();
      sub_51844(v39);

      v40 = sub_F075C();

      [v38 writeAccountDefaults:v40];
    }
  }
}

uint64_t sub_44A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_521E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_51FEC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_76A24();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_37938(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t RCSServiceSession.messageReceived(_:with:ofType:)(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_F06CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000001FLL, 0x80000000000FE260);
  if (result)
  {
    v14 = Logger.rcs.unsafeMutableAddressor();
    (*(v9 + 16))(v12, v14, v8);
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = sub_F06AC();
    v19 = sub_F0CCC();

    v44 = v16;
    if (os_log_type_enabled(v18, v19))
    {
      v41 = v19;
      v43 = v4;
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v20 = 136446978;
      *(v20 + 4) = sub_3E850(0xD00000000000001FLL, 0x80000000000FE260, &v46);
      *(v20 + 12) = 2080;
      v42 = v15;
      v21 = [v15 labelID];
      if (v21)
      {
        v22 = v21;
        v23 = sub_F07EC();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_3E850(v23, v25, &v46);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      v27 = [v44 uuid];
      v28 = sub_F07EC();
      v30 = v29;

      v31 = sub_3E850(v28, v30, &v46);

      *(v20 + 24) = v31;
      *(v20 + 32) = 2080;
      v32 = [v17 description];
      v33 = sub_F07EC();
      v35 = v34;

      v36 = sub_3E850(v33, v35, &v46);

      *(v20 + 34) = v36;
      _os_log_impl(&dword_0, v18, v41, "%{public}s simID: %s id: %s type: %s", v20, 0x2Au);
      swift_arrayDestroy();

      result = (*(v9 + 8))(v12, v8);
      v15 = v42;
      v4 = v43;
    }

    else
    {

      result = (*(v9 + 8))(v12, v8);
    }

    v37 = *(*(v4 + OBJC_IVAR___RCSServiceSession_state) + 136);
    if (v37)
    {
      v45 = v15;
      v46 = v44;
      v38 = *(*v37 + 136);

      v38(&v46, &v45);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void RCSServiceSession.groupComposingIndicator(_:fromGroup:from:with:withIndication:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  v123 = v11;
  v124 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v122 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v121 = &v107 - v17;
  __chkstk_darwin(v16);
  v19 = &v107 - v18;
  v20 = [objc_opt_self() sharedFeatureFlags];
  v21 = [v20 isGroupTypingIndicatorsEnabled];

  if (v21 && (sub_53040(0xD00000000000003ELL, 0x80000000000FE280) & 1) != 0)
  {
    v118 = "messageReceived(_:with:ofType:)";
    v111 = v5;
    v22 = Logger.rcs.unsafeMutableAddressor();
    v23 = v123;
    v24 = *(v124 + 16);
    v115 = v22;
    v116 = v24;
    v117 = v124 + 16;
    (v24)(v19);
    v25 = v19;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = sub_F06AC();
    v32 = sub_F0CCC();
    v112 = v30;

    v33 = v26;
    v120 = v29;

    v113 = v28;
    v119 = v27;

    LODWORD(v114) = v32;
    v34 = os_log_type_enabled(v31, v32);
    v110 = v26;
    if (v34)
    {
      v35 = v25;
      v108 = v31;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&v125 = v109;
      *v36 = 136447490;
      *(v36 + 4) = sub_3E850(0xD00000000000003ELL, v118 | 0x8000000000000000, &v125);
      *(v36 + 12) = 2080;
      v38 = [v33 labelID];
      if (v38)
      {
        v39 = v38;
        v40 = sub_F07EC();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0xE000000000000000;
      }

      v46 = sub_3E850(v40, v42, &v125);

      *(v36 + 14) = v46;
      *(v36 + 22) = 2112;
      v45 = v119;
      v47 = [v119 remoteUri];
      *(v36 + 24) = v47;
      *(v36 + 32) = 2112;
      v48 = v113;
      *(v36 + 34) = v113;
      *v37 = v47;
      v37[1] = v48;
      *(v36 + 42) = 2080;
      v49 = v48;
      v50 = [v120 uuid];
      v51 = sub_F07EC();
      v53 = v52;

      v54 = sub_3E850(v51, v53, &v125);

      *(v36 + 44) = v54;
      *(v36 + 52) = 2080;
      v55 = [v112 description];
      v56 = sub_F07EC();
      v58 = v57;

      v59 = sub_3E850(v56, v58, &v125);

      *(v36 + 54) = v59;
      v60 = v108;
      _os_log_impl(&dword_0, v108, v114, "%{public}s simID: %s fromGroup: %@ participant: %@ id: %s indication: %s", v36, 0x3Eu);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      v43 = *(v124 + 8);
      v61 = v35;
      v44 = v123;
      v43(v61, v123);
    }

    else
    {

      v43 = *(v124 + 8);
      v43(v25, v23);
      v44 = v23;
      v45 = v119;
    }

    v62 = [v45 remoteUri];
    v119 = v43;
    v114 = v62;
    if (v62)
    {
      v63 = v62;
      v64 = [v45 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v65 = static NSUserDefaults.forceEncryption.getter();
      *(&v126 + 1) = &type metadata for CTRCSGroupIdentity;
      *&v127 = &off_11F358;
      *&v125 = v63;
      BYTE8(v125) = (v65 | v64) & 1;
      sub_3928(&v125, v134);
      sub_1F28(v134, &v142);
      RCSGroup.init(group:identity:)(v45, &v142, &v125);
      v139 = v129;
      v140 = *v130;
      v141 = *&v130[16];
      v135 = v125;
      v136 = v126;
      v137 = v127;
      v138 = v128;
      v66 = [v113 member];
      v67 = sub_F07EC();
      v69 = v68;

      v70._countAndFlagsBits = v67;
      v70._object = v69;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v142, v70, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (!v71)
      {
        v88 = *(&v136 + 1);
        v89 = v137;
        v90 = sub_373E8(&v135, *(&v136 + 1));
        v91 = sub_6F3C8(v90, v111, v88, v89);
        if (v91)
        {
          v92 = v91;
          v93 = [v120 originalId];
          if (v93)
          {
            v94 = v93;
          }

          else
          {
            v100 = *(&v136 + 1);
            v101 = v137;
            sub_373E8(&v135, *(&v136 + 1));
            v94 = (*(v101 + 24))(v100, v101) & 1;
          }

          sub_1F28(v134, &v126);
          BYTE9(v129) = 1;
          sub_1F28(v134, v133);
          *&v125 = v110;
          *(&v125 + 1) = v92;
          v102 = v120;
          *v130 = v120;
          *&v130[8] = v142.scheme;
          *&v130[24] = v142.id;
          v131[0] = *&v142.attributes._rawValue;
          *(v131 + 9) = *(&v142.alternateHandle + 1);
          v103 = v112;
          v132 = v112;
          v133[5] = v94;
          v104 = v110;
          v105 = v102;
          v106 = v103;
          sub_45A7C(&v125);
          sub_53DAC(&v125);
        }

        else
        {
          v95 = v43;
          sub_3CAB8(&v142);
          v96 = v121;
          v116(v121, v115, v44);
          v97 = sub_F06AC();
          v98 = sub_F0CFC();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            *v99 = 0;
            _os_log_impl(&dword_0, v97, v98, "Failed to find an group message chat to process typing indicator in.", v99, 2u);
          }

          v95(v96, v44);
        }

        sub_1EDC(v134);
        goto LABEL_19;
      }

      v72 = 1;
    }

    else
    {
      sub_53D04();
      swift_allocError();
      swift_willThrow();
      v72 = 0;
    }

    v73 = v122;
    v116(v122, v115, v44);
    v74 = v120;
    swift_errorRetain();
    v75 = sub_F06AC();
    v76 = sub_F0CFC();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v125 = v121;
      *v77 = 136446722;
      *(v77 + 4) = sub_3E850(0xD00000000000003ELL, v118 | 0x8000000000000000, &v125);
      *(v77 + 12) = 2080;
      v79 = v72;
      v80 = [v74 uuid];
      v81 = sub_F07EC();
      v83 = v82;

      v84 = sub_3E850(v81, v83, &v125);

      *(v77 + 14) = v84;
      v72 = v79;
      *(v77 + 22) = 2112;
      swift_errorRetain();
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 24) = v85;
      *v78 = v85;
      _os_log_impl(&dword_0, v75, v76, "%{public}s dropping message %s because I do not understand the group identity or from handle: %@", v77, 0x20u);
      sub_372B0(v78, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      v86 = v123;
      v87 = v122;
    }

    else
    {

      v87 = v73;
      v86 = v44;
    }

    v119(v87, v86);
    if (v114)
    {
      sub_1EDC(v134);
    }

    if (v72)
    {
LABEL_19:
      sub_53D58(&v135);
    }
  }
}

uint64_t sub_45A7C(uint64_t a1)
{
  v3 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v18 - v5;
  result = sub_53040(0xD000000000000020, 0x80000000000FE930);
  if (result)
  {
    sub_F0AFC();
    v8 = sub_F0B1C();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    sub_550D0(a1, v18);
    sub_F0AEC();
    v9 = v1;
    v10 = sub_F0ADC();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    v12 = v18[11];
    *(v11 + 192) = v18[10];
    *(v11 + 208) = v12;
    *(v11 + 224) = v18[12];
    v13 = v18[7];
    *(v11 + 128) = v18[6];
    *(v11 + 144) = v13;
    v14 = v18[9];
    *(v11 + 160) = v18[8];
    *(v11 + 176) = v14;
    v15 = v18[3];
    *(v11 + 64) = v18[2];
    *(v11 + 80) = v15;
    v16 = v18[5];
    *(v11 + 96) = v18[4];
    *(v11 + 112) = v16;
    v17 = v18[1];
    *(v11 + 32) = v18[0];
    *(v11 + 48) = v17;
    *(v11 + 240) = v9;
    sub_3CC0C(0, 0, v6, &unk_F2ED0, v11);
  }

  return result;
}

uint64_t RCSServiceSession.composingIndicator(_:from:with:withIndication:with:)(void *a1, void *a2, void *a3, void *a4, uint64_t (*a5)(char *, uint64_t))
{
  v98 = a5;
  v10 = sub_F06CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v97 = &v86 - v17;
  v18 = __chkstk_darwin(v16);
  v99 = &v86 - v19;
  __chkstk_darwin(v18);
  v21 = &v86 - v20;
  v101 = "oup:from:with:withIndication:)";
  result = sub_53040(0xD000000000000034, 0x80000000000FE2C0);
  if (result)
  {
    v96 = v5;
    v89 = v15;
    v23 = Logger.rcs.unsafeMutableAddressor();
    v24 = *(v11 + 16);
    v93 = v23;
    v94 = v24;
    v95 = v11 + 16;
    (v24)(v21);
    v25 = v21;
    v26 = v11;
    v27 = a1;
    v28 = a2;
    v29 = a3;
    v30 = a4;
    v31 = sub_F06AC();
    v32 = sub_F0CCC();
    v92 = v30;

    v100 = v29;
    v33 = v27;

    if (os_log_type_enabled(v31, v32))
    {
      v87 = v25;
      v90 = v26;
      v91 = v10;
      v34 = swift_slowAlloc();
      v103[0] = swift_slowAlloc();
      *v34 = 136447234;
      *(v34 + 4) = sub_3E850(0xD000000000000034, v101 | 0x8000000000000000, v103);
      *(v34 + 12) = 2080;
      v88 = v33;
      v35 = [v33 labelID];
      if (v35)
      {
        v36 = v35;
        v37 = sub_F07EC();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v42 = sub_3E850(v37, v39, v103);

      *(v34 + 14) = v42;
      *(v34 + 22) = 2080;
      v43 = [v28 uri];
      v44 = sub_F07EC();
      v46 = v45;

      v47 = sub_3E850(v44, v46, v103);

      *(v34 + 24) = v47;
      *(v34 + 32) = 2080;
      v48 = [v100 uuid];
      v49 = sub_F07EC();
      v51 = v50;

      v52 = sub_3E850(v49, v51, v103);

      *(v34 + 34) = v52;
      *(v34 + 42) = 2080;
      v53 = [v92 description];
      v54 = sub_F07EC();
      v56 = v55;

      v57 = sub_3E850(v54, v56, v103);

      *(v34 + 44) = v57;
      _os_log_impl(&dword_0, v31, v32, "%{public}s simID: %s from: %s id: %s indication: %s", v34, 0x34u);
      swift_arrayDestroy();

      v41 = v91;
      v40 = *(v90 + 8);
      v40(v87, v91);
      v33 = v88;
    }

    else
    {

      v40 = *(v26 + 8);
      v40(v25, v10);
      v41 = v10;
    }

    RCSHandle.init(destination:)(v28, &v117);
    if (!v119[24])
    {
      goto LABEL_13;
    }

    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v59 = result;
    v60 = [result isRBMEnabled];

    if ((v60 & 1) == 0)
    {
      v98 = v40;
      sub_3CAB8(&v117);
      v71 = v99;
      v94(v99, v93, v41);
      v72 = v100;
      v73 = sub_F06AC();
      v74 = sub_F0CFC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v103[0] = swift_slowAlloc();
        *v75 = 136446466;
        *(v75 + 4) = sub_3E850(0xD000000000000034, v101 | 0x8000000000000000, v103);
        *(v75 + 12) = 2080;
        v76 = [v72 uuid];
        v77 = sub_F07EC();
        v79 = v78;

        v80 = sub_3E850(v77, v79, v103);

        *(v75 + 14) = v80;
        _os_log_impl(&dword_0, v73, v74, "%{public}s dropping message %s because RBM is disabled in Settings", v75, 0x16u);
        swift_arrayDestroy();

        v81 = v99;
      }

      else
      {

        v81 = v71;
      }

      return v98(v81, v41);
    }

    else
    {
LABEL_13:
      __chkstk_darwin(v58);
      *(&v86 - 2) = v33;
      RCSHandle.canonicalizedHandle(for:)(RCSPersistentMenu.menu.getter, &v120);
      v61 = v121;
      v62 = v122;

      sub_3CAB8(&v120);
      v63 = sub_ABD88(v61, v62, 0, 0, 0);

      if (v63)
      {
        v64 = v100;
        v65 = [v100 originalId];
        v66 = v98 != 0;
        if (v65)
        {
          v66 = v65;
        }

        v104 = v117;
        v105 = v118;
        *v106 = *v119;
        *&v106[9] = *&v119[9];
        v107 = 0;
        v113 = 0u;
        v114 = 0u;
        v103[0] = v33;
        v103[1] = v63;
        v109 = v117;
        v110 = v118;
        v111[0] = *v119;
        *(v111 + 9) = *&v119[9];
        v108 = v64;
        v67 = v92;
        v112 = v92;
        v115 = 0;
        v116 = v66;
        v68 = v33;
        v69 = v64;
        v70 = v67;
        sub_38910(&v117, &v102);
        sub_45A7C(v103);
        return sub_53DAC(v103);
      }

      else
      {
        sub_3CAB8(&v117);
        v82 = v97;
        v94(v97, v93, v41);
        v83 = sub_F06AC();
        v84 = sub_F0CFC();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&dword_0, v83, v84, "Failed to find an instant message chat to process typing indicator in", v85, 2u);
        }

        return (v40)(v82, v41);
      }
    }
  }

  return result;
}

uint64_t sub_467EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[128] = a5;
  v5[127] = a4;
  v6 = sub_F06CC();
  v5[129] = v6;
  v7 = *(v6 - 8);
  v5[130] = v7;
  v8 = *(v7 + 64) + 15;
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v9 = *(*(sub_388C8(&unk_127FA0, &qword_F34C0) - 8) + 64) + 15;
  v5[133] = swift_task_alloc();
  v10 = *(*(type metadata accessor for RCSMessage(0) - 8) + 64) + 15;
  v5[134] = swift_task_alloc();
  sub_F0AEC();
  v5[135] = sub_F0ADC();
  v12 = sub_F0A6C();
  v5[136] = v12;
  v5[137] = v11;

  return _swift_task_switch(sub_46958, v12, v11);
}

id sub_46958()
{
  v1 = **(v0 + 1016);
  v2 = [v1 phoneNumber];
  if (v2)
  {
    v3 = v2;
    v4 = sub_F07EC();
    v6 = v5;

    v7 = sub_53E04(_swiftEmptyArrayStorage);
    v8._countAndFlagsBits = 7103860;
    v8._object = 0xE300000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v6;
    RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)((v0 + 752), v8, v9, v7, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    *(swift_task_alloc() + 16) = v1;
    RCSHandle.canonicalizedHandle(for:)(sub_55244, (v0 + 688));
    sub_3CAB8(v0 + 752);

    v10 = *(v0 + 704);
    v11 = *(v0 + 712);

    sub_3CAB8(v0 + 688);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *(v0 + 1112) = v11;
  *(v0 + 1104) = v10;
  v12 = [v1 labelID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_F07EC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v0 + 1128) = v16;
  *(v0 + 1120) = v14;
  v17 = *(v0 + 1024);
  v18 = *(*(v0 + 1016) + 152);
  *(v0 + 1136) = v18;
  result = [v18 active];
  v20 = *(v17 + OBJC_IVAR___RCSServiceSession_state);
  *(v0 + 1144) = v20;
  v21 = *(v20 + 112);
  *(v0 + 1152) = v21;
  if (result)
  {
    if (v21)
    {
      v49 = v10;
      v22 = *(v0 + 1016);
      v23 = *(v22 + 104);
      v24 = *(v22 + 120);
      v25 = *(v22 + 88);
      *(v0 + 665) = *(v22 + 129);
      *(v0 + 640) = v23;
      *(v0 + 656) = v24;
      *(v0 + 624) = v25;
      v26 = *(v22 + 8);

      result = [v26 guid];
      if (result)
      {
        v27 = result;
        v28 = *(v0 + 1016);
        v29 = sub_F07EC();
        v31 = v30;

        *(v0 + 1160) = v31;
        v32 = *(v28 + 200);
        v33 = *(*v21 + 192);
        v48 = (v33 + *v33);
        v34 = v33[1];
        v35 = swift_task_alloc();
        *(v0 + 1168) = v35;
        *v35 = v0;
        v35[1] = sub_46DF4;

        return v48(v0 + 624, v29, v31, v32, v49, v11, v14, v16);
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v21)
  {
    goto LABEL_19;
  }

  v36 = *(v0 + 1016);
  v37 = *(v36 + 104);
  v38 = *(v36 + 120);
  v39 = *(v36 + 88);
  *(v0 + 601) = *(v36 + 129);
  *(v0 + 576) = v37;
  *(v0 + 592) = v38;
  *(v0 + 560) = v39;
  v40 = *(v36 + 8);

  result = [v40 guid];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v41 = result;
  v42 = sub_F07EC();
  v44 = v43;

  *(v0 + 1192) = v44;
  v45 = *(*v21 + 176);
  v50 = (v45 + *v45);
  v46 = v45[1];
  v47 = swift_task_alloc();
  *(v0 + 1200) = v47;
  *v47 = v0;
  v47[1] = sub_47278;

  return v50(v0 + 560, v42, v44);
}

uint64_t sub_46DF4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1168);
  v6 = *(*v2 + 1160);
  v7 = *(*v2 + 1152);
  v11 = *v2;
  *(v4 + 1176) = a1;
  *(v4 + 1184) = a2;

  v8 = *(v3 + 1096);
  v9 = *(v3 + 1088);

  return _swift_task_switch(sub_46F60, v9, v8);
}

uint64_t sub_46F60()
{
  v30 = *(v0 + 1176);
  v31 = *(v0 + 1184);
  v32 = *(v0 + 1144);
  v1 = *(v0 + 1136);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1112);
  v28 = *(v0 + 1104);
  v29 = *(v0 + 1120);
  v27 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v5 = *(v0 + 1016);
  v6 = *(v5 + 104);
  v7 = *(v5 + 120);
  v8 = *(v5 + 88);
  *(v0 + 857) = *(v5 + 129);
  *(v0 + 832) = v6;
  *(v0 + 848) = v7;
  *(v0 + 816) = v8;
  v9 = *(v5 + 104);
  v10 = *(v5 + 120);
  v11 = *(v5 + 88);
  *(v0 + 473) = *(v5 + 129);
  *(v0 + 448) = v9;
  *(v0 + 464) = v10;
  *(v0 + 432) = v11;
  sub_551C8(v5 + 16, v0 + 496);
  *(v0 + 554) = 1;
  v12 = *(v5 + 80);
  sub_38910(v0 + 816, v0 + 880);
  v13 = [v12 uuid];
  v14 = sub_F07EC();
  v16 = v15;

  v17 = v1;

  *v4 = RCSMessage.Typing.init(indication:)(v17) & 1;
  v18 = type metadata accessor for RCSMessage.Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  sub_37380(v5 + 160, v0 + 944, &qword_127B08, &qword_F29A0);
  v19 = *(v5 + 200);
  sub_3896C(v19);
  v20.entries._rawValue = RCSMessageMetadata.init()().entries._rawValue;
  result = RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v0 + 432, v14, v16, v30, v31, v28, v3, v29, v27, v2, v4, v0 + 944, v19, v20.entries._rawValue, 0);
  v22 = *(v32 + 104);
  *(v0 + 1216) = v22;
  if (v22)
  {

    v23 = *(*v22 + 144);
    v33 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    *(v0 + 1224) = v25;
    *v25 = v0;
    v25[1] = sub_47794;
    v26 = *(v0 + 1072);

    return v33(v0 + 1008, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_47278(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[123] = v2;
  v4[124] = a1;
  v4[125] = a2;
  v5 = v3[150];
  v6 = v3[149];
  v7 = v3[144];
  v11 = *v2;
  v4[151] = a2;

  v8 = v3[137];
  v9 = v3[136];

  return _swift_task_switch(sub_473E4, v9, v8);
}

uint64_t sub_473E4()
{
  v1 = *(v0 + 1208);
  if (v1)
  {
    v39 = *(v0 + 992);
    v40 = *(v0 + 1144);
    v2 = *(v0 + 1136);
    v3 = *(v0 + 1128);
    v4 = *(v0 + 1112);
    v37 = *(v0 + 1104);
    v38 = *(v0 + 1120);
    v36 = *(v0 + 1072);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 1016);
    v7 = *(v6 + 104);
    v8 = *(v6 + 120);
    v9 = *(v6 + 88);
    *(v0 + 857) = *(v6 + 129);
    *(v0 + 832) = v7;
    *(v0 + 848) = v8;
    *(v0 + 816) = v9;
    v10 = *(v6 + 104);
    v11 = *(v6 + 120);
    v12 = *(v6 + 88);
    *(v0 + 473) = *(v6 + 129);
    *(v0 + 448) = v10;
    *(v0 + 464) = v11;
    *(v0 + 432) = v12;
    sub_551C8(v6 + 16, v0 + 496);
    *(v0 + 554) = 1;
    v13 = *(v6 + 80);
    sub_38910(v0 + 816, v0 + 880);
    v14 = [v13 uuid];
    v15 = sub_F07EC();
    v17 = v16;

    v18 = v2;

    *v5 = RCSMessage.Typing.init(indication:)(v18) & 1;
    v19 = type metadata accessor for RCSMessage.Content(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
    sub_37380(v6 + 160, v0 + 944, &qword_127B08, &qword_F29A0);
    v20 = *(v6 + 200);
    sub_3896C(v20);
    v21.entries._rawValue = RCSMessageMetadata.init()().entries._rawValue;
    result = RCSMessage.init(senderInfo:originalID:messageID:subscriptionInfo:content:groupIdentity:encryption:metadata:isChatBot:)(v0 + 432, v15, v17, v39, v1, v37, v4, v38, v36, v3, v5, v0 + 944, v20, v21.entries._rawValue, 0);
    v23 = *(v40 + 104);
    *(v0 + 1216) = v23;
    if (v23)
    {

      v24 = *(*v23 + 144);
      v41 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v0 + 1224) = v26;
      *v26 = v0;
      v26[1] = sub_47794;
      v27 = *(v0 + 1072);

      return v41(v0 + 1008, v27);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v28 = *(v0 + 1128);
    v29 = *(v0 + 1112);
    v30 = *(v0 + 1080);

    v31 = *(v0 + 1072);
    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1048);

    v35 = *(v0 + 8);

    return v35();
  }

  return result;
}

uint64_t sub_47794(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1224);
  v11 = *v2;
  *(*v2 + 1232) = v1;

  if (v1)
  {
    v6 = *(v4 + 1096);
    v7 = *(v4 + 1088);
    v8 = sub_47B14;
  }

  else
  {
    v9 = *(v4 + 1216);

    v6 = *(v4 + 1096);
    v7 = *(v4 + 1088);
    v8 = sub_478D0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_478D0()
{
  v30 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1016);

  v6 = Logger.rcs.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v6, v4);
  sub_550D0(v5, v0 + 224);
  v7 = sub_F06AC();
  v8 = sub_F0CCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1072);
  v11 = *(v0 + 1056);
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1032);
  if (v9)
  {
    v28 = *(v0 + 1056);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = [*(v0 + 304) uuid];
    v17 = sub_F07EC();
    v27 = v10;
    v19 = v18;

    sub_53DAC(v0 + 224);
    v20 = sub_3E850(v17, v19, &v29);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v7, v8, "Processed typing indicator for %s", v14, 0xCu);
    sub_1EDC(v15);

    (*(v12 + 8))(v28, v13);
    sub_3897C(v27);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    sub_3897C(v10);
    sub_53DAC(v0 + 224);
  }

  v21 = *(v0 + 1072);
  v22 = *(v0 + 1064);
  v23 = *(v0 + 1056);
  v24 = *(v0 + 1048);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_47B14()
{
  v36 = v0;
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 1016);

  v8 = Logger.rcs.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v8, v6);
  sub_550D0(v7, v0 + 16);
  swift_errorRetain();
  v9 = sub_F06AC();
  v10 = sub_F0CEC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1232);
  v13 = *(v0 + 1072);
  v14 = *(v0 + 1048);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1032);
  if (v11)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35 = v31;
    *v17 = 136315394;
    v34 = v13;
    v19 = [*(v0 + 96) uuid];
    v32 = v16;
    v33 = v14;
    v20 = sub_F07EC();
    v22 = v21;

    sub_53DAC(v0 + 16);
    v23 = sub_3E850(v20, v22, &v35);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_0, v9, v10, "Failed to process typing indicator for %s: %@", v17, 0x16u);
    sub_372B0(v18, &qword_127AF0, &qword_F28E0);

    sub_1EDC(v31);

    (*(v15 + 8))(v33, v32);
    sub_3897C(v34);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    sub_3897C(v13);
    sub_53DAC(v0 + 16);
  }

  v25 = *(v0 + 1072);
  v26 = *(v0 + 1064);
  v27 = *(v0 + 1056);
  v28 = *(v0 + 1048);

  v29 = *(v0 + 8);

  return v29();
}

void sub_47F0C(uint64_t a1, char *a2, uint64_t a3, void *a4, int a5)
{
  v157 = a5;
  v156 = sub_F06EC();
  v159 = *(v156 - 8);
  v9 = *(v159 + 64);
  __chkstk_darwin(v156);
  v158 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_F071C();
  v155 = *(v11 - 8);
  v12 = *(v155 + 64);
  __chkstk_darwin(v11);
  v14 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_F06CC();
  v163 = *(v15 - 8);
  v164 = v15;
  v16 = *(v163 + 64);
  v17 = __chkstk_darwin(v15);
  v162 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v145 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v145 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v145 - v26;
  __chkstk_darwin(v25);
  v29 = &v145 - v28;

  v161 = a3;
  v30._countAndFlagsBits = a3;
  v30._object = a4;
  v31.value._countAndFlagsBits = a1;
  v31.value._object = a2;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v166, v30, CoreRCS_RCSHandle_BotStatus_isChatBot, v31);
  if (v32)
  {
    v33 = a1;

    v34 = Logger.chatbot.unsafeMutableAddressor();
    v36 = v162;
    v35 = v163;
    v37 = v164;
    (*(v163 + 16))(v162, v34, v164);

    v38 = sub_F06AC();
    v39 = sub_F0CEC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_3E850(v161, a4, aBlock);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_3E850(v33, a2, aBlock);
      _os_log_impl(&dword_0, v38, v39, "Discover a chat bot, but cannot create RCSHandle for %s, using sip handle: %s", v40, 0x16u);
      swift_arrayDestroy();
    }

    (*(v35 + 8))(v36, v37);
    return;
  }

  v150 = v21;
  v148 = v27;
  v146 = v29;
  v152 = v24;
  v153 = a4;
  v147 = v14;
  v149 = v11;
  v162 = a2;
  v41 = v163;
  v154 = a1;
  countAndFlagsBits = v166.id._countAndFlagsBits;
  object = v166.id._object;
  v44 = objc_allocWithZone(IMDHandle);
  v151 = countAndFlagsBits;
  v45 = sub_F07BC();
  v46 = sub_F07BC();
  v47 = sub_F07BC();
  v48 = [v44 initWithID:v45 unformattedID:v46 countryCode:v47];

  if (v48)
  {
    v49 = sub_F07BC();
    [v48 setPersonCentricID:v49];

    v50 = [v48 ID];
    if (!v50)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v51 = v50;
    v52 = v41;
    v53 = [v160 chatForChatIdentifier:v50 style:45 updatingAccount:1];

    if (v53)
    {
      v54 = [v53 participants];
      if (!v54)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v55 = v54;
      v151 = sub_37310(0, &qword_127F70, IMDHandle_ptr);
      v56 = sub_F09FC();

      v145 = v48;
      if (v56 >> 62)
      {
        v57 = sub_F10DC();
      }

      else
      {
        v57 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
      }

      if (!v57)
      {
        goto LABEL_64;
      }

      v58 = [v53 participants];
      if (!v58)
      {
        goto LABEL_78;
      }

      v59 = v58;
      v60 = sub_F09FC();

      if (v60 >> 62)
      {
        if (sub_F10DC())
        {
LABEL_15:
          if ((v60 & 0xC000000000000001) != 0)
          {
            v61 = sub_F0FCC();
          }

          else
          {
            if (!*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_59;
            }

            v61 = *(v60 + 32);
          }

          v62 = v61;

          v63 = [v62 ID];

          if (v63)
          {
            v64 = sub_F07EC();
            v66 = v65;

            goto LABEL_32;
          }

LABEL_31:
          v64 = 0;
          v66 = 0;
LABEL_32:
          v88 = [v145 ID];
          if (v88)
          {
            v89 = v88;
            v90 = sub_F07EC();
            v92 = v91;

            if (v66)
            {
              if (v92)
              {
                if (v64 == v90 && v66 == v92)
                {
                }

                else
                {
                  v93 = sub_F122C();

                  if ((v93 & 1) == 0)
                  {
LABEL_64:
                    v105 = Logger.chatbot.unsafeMutableAddressor();
                    v106 = v41;
                    v107 = v53;
                    v108 = v152;
                    v109 = v164;
                    (*(v41 + 16))(v152, v105, v164);
                    v110 = v153;

                    v111 = v162;

                    v112 = v107;
                    v113 = sub_F06AC();
                    v114 = sub_F0CCC();

                    if (os_log_type_enabled(v113, v114))
                    {
                      v115 = v106;
                      v116 = swift_slowAlloc();
                      v117 = swift_slowAlloc();
                      aBlock[0] = swift_slowAlloc();
                      *v116 = 136315650;
                      *(v116 + 4) = sub_3E850(v161, v110, aBlock);
                      *(v116 + 12) = 2112;
                      *(v116 + 14) = v112;
                      *v117 = v107;
                      *(v116 + 22) = 2080;
                      v118 = v112;
                      *(v116 + 24) = sub_3E850(v154, v111, aBlock);
                      _os_log_impl(&dword_0, v113, v114, "Discover a chat bot for %s, replacing handle in chat: %@ with sip handle: %s", v116, 0x20u);
                      sub_372B0(v117, &qword_127AF0, &qword_F28E0);

                      swift_arrayDestroy();

                      (*(v115 + 8))(v152, v164);
                    }

                    else
                    {

                      (*(v106 + 8))(v108, v109);
                    }

                    v119 = v156;
                    v120 = v159;
                    v121 = v149;
                    v122 = v158;
                    v123 = v157;
                    sub_388C8(&qword_127F78, &qword_F2EB8);
                    v124 = swift_allocObject();
                    *(v124 + 16) = xmmword_F2C60;
                    *(v124 + 56) = v151;
                    v125 = v145;
                    *(v124 + 32) = v145;
                    v126 = v125;
                    v127 = sub_F09EC();

                    [v112 _resetParticipants:v127];

                    v128 = [objc_opt_self() sharedInstance];
                    RCSHandle.chatBotId.getter();
                    sub_3CAB8(&v166);
                    v129 = sub_F07BC();

                    v130 = sub_F07BC();
                    [v128 updateHandle:v126 sourceMessage:0 personCentricID:v129 onService:v130];

                    if (v123)
                    {
                      sub_37310(0, &qword_127F80, OS_dispatch_queue_ptr);
                      v131 = sub_F0D4C();
                      v132 = swift_allocObject();
                      v133 = v160;
                      *(v132 + 16) = v160;
                      aBlock[4] = sub_54FF4;
                      aBlock[5] = v132;
                      aBlock[0] = _NSConcreteStackBlock;
                      aBlock[1] = 1107296256;
                      aBlock[2] = sub_9400C;
                      aBlock[3] = &unk_11E408;
                      v134 = _Block_copy(aBlock);
                      v135 = v133;

                      v136 = v147;
                      sub_F06FC();
                      aBlock[0] = _swiftEmptyArrayStorage;
                      sub_55014();
                      sub_388C8(&qword_127F90, &qword_F2EC0);
                      sub_5506C();
                      sub_F0E8C();
                      sub_F0D5C();
                      _Block_release(v134);

                      (*(v120 + 8))(v122, v119);
                      (*(v155 + 8))(v136, v121);
                    }

                    else
                    {
                    }

                    return;
                  }
                }

LABEL_43:
                v94 = [v53 participants];
                if (!v94)
                {
LABEL_79:
                  __break(1u);
                  return;
                }

                v95 = v94;
                v60 = sub_F09FC();

                if (!(v60 >> 62))
                {
                  if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
                  {
LABEL_46:
                    if ((v60 & 0xC000000000000001) != 0)
                    {
                      v96 = sub_F0FCC();
LABEL_49:
                      v97 = v96;

                      v98 = [v97 personCentricID];

                      if (v98)
                      {
                        v99 = sub_F07EC();
                        v101 = v100;

                        v102 = RCSHandle.chatBotId.getter();
                        if (v101)
                        {
                          if (v103)
                          {
                            if (v99 == v102 && v103 == v101)
                            {

LABEL_70:
                              sub_3CAB8(&v166);
                              v137 = Logger.chatbot.unsafeMutableAddressor();
                              v138 = v146;
                              v139 = v164;
                              (*(v41 + 16))(v146, v137, v164);
                              v140 = v153;

                              v141 = v162;

                              v142 = sub_F06AC();
                              v143 = sub_F0CCC();

                              if (os_log_type_enabled(v142, v143))
                              {
                                v144 = swift_slowAlloc();
                                aBlock[0] = swift_slowAlloc();
                                *v144 = 136315394;
                                *(v144 + 4) = sub_3E850(v161, v140, aBlock);
                                *(v144 + 12) = 2080;
                                *(v144 + 14) = sub_3E850(v154, v141, aBlock);
                                _os_log_impl(&dword_0, v142, v143, "Discover a chat bot for %s, chat is already with sip handle: %s", v144, 0x16u);
                                swift_arrayDestroy();
                              }

                              else
                              {
                              }

                              (*(v52 + 8))(v138, v139);
                              return;
                            }

                            v104 = sub_F122C();

                            if (v104)
                            {
                              goto LABEL_70;
                            }

                            goto LABEL_64;
                          }

                          goto LABEL_63;
                        }

                        goto LABEL_62;
                      }

LABEL_61:
                      RCSHandle.chatBotId.getter();
LABEL_62:
                      if (!v103)
                      {
                        goto LABEL_70;
                      }

                      goto LABEL_63;
                    }

                    if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
                    {
                      v96 = *(v60 + 32);
                      goto LABEL_49;
                    }

                    __break(1u);
                    goto LABEL_76;
                  }

LABEL_60:

                  goto LABEL_61;
                }

LABEL_59:
                if (sub_F10DC())
                {
                  goto LABEL_46;
                }

                goto LABEL_60;
              }
            }

            else if (!v92)
            {
              goto LABEL_43;
            }
          }

          else if (!v66)
          {
            goto LABEL_43;
          }

LABEL_63:

          goto LABEL_64;
        }
      }

      else if (*(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

    v160 = object;
    v77 = Logger.chatbot.unsafeMutableAddressor();
    v78 = v148;
    v79 = v164;
    (*(v41 + 16))(v148, v77, v164);
    v80 = v153;

    v81 = v162;

    v82 = sub_F06AC();
    v83 = sub_F0CCC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v84 = 136315394;
      *(v84 + 4) = sub_3E850(v161, v80, aBlock);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_3E850(v154, v81, aBlock);
      _os_log_impl(&dword_0, v82, v83, "Discover a chat bot for %s, using sip handle in a pending chat: %s", v84, 0x16u);
      swift_arrayDestroy();

      (*(v52 + 8))(v78, v164);
    }

    else
    {

      (*(v52 + 8))(v78, v79);
    }

    v85 = [objc_opt_self() sharedInstance];
    v86 = sub_F07BC();
    v87 = sub_F07BC();
    sub_3CAB8(&v166);
    [v85 pendingAlternateID:v86 forHandle:v87];
  }

  else
  {
    v67 = object;
    v68 = Logger.chatbot.unsafeMutableAddressor();
    v69 = v41;
    v70 = v150;
    v71 = v164;
    (*(v41 + 16))(v150, v68, v164);
    v72 = v162;

    sub_38910(&v166, aBlock);
    v73 = sub_F06AC();
    v74 = sub_F0CEC();
    sub_3CAB8(&v166);

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v75 = 136315394;

      sub_3CAB8(&v166);
      v76 = sub_3E850(v151, v67, aBlock);

      *(v75 + 4) = v76;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_3E850(v154, v72, aBlock);
      _os_log_impl(&dword_0, v73, v74, "Discover a chat bot, but cannot create imdHandle for %s, using sip handle: %s", v75, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_3CAB8(&v166);
    }

    (*(v69 + 8))(v70, v71);
  }
}

void RCSServiceSession.destinationCapabilitiesUpdated(_:withCapabilities:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_53040(0xD000000000000033, 0x80000000000FE300))
  {
    v11 = Logger.chatbot.unsafeMutableAddressor();
    (*(v7 + 16))(v10, v11, v6);
    v12 = a1;
    v13 = a2;
    v14 = sub_F06AC();
    v15 = sub_F0CCC();

    if (os_log_type_enabled(v14, v15))
    {
      v48 = v3;
      v16 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v16 = 136446722;
      *(v16 + 4) = sub_3E850(0xD000000000000033, 0x80000000000FE300, &v49);
      *(v16 + 12) = 2080;
      v47 = v12;
      v17 = [v12 labelID];
      if (v17)
      {
        v18 = v17;
        v19 = sub_F07EC();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = sub_3E850(v19, v21, &v49);

      *(v16 + 14) = v22;
      *(v16 + 22) = 2080;
      v23 = [v13 description];
      v24 = sub_F07EC();
      v26 = v25;

      v27 = sub_3E850(v24, v26, &v49);

      *(v16 + 24) = v27;
      _os_log_impl(&dword_0, v14, v15, "%{public}s simID: %s destinationUpdated: %s", v16, 0x20u);
      swift_arrayDestroy();

      (*(v7 + 8))(v10, v6);
      v12 = v47;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    if ([v13 isBot])
    {
      v28 = [v13 discovered];
      v29 = [v28 uri];

      v30 = sub_F07EC();
      v31 = v12;
      v33 = v32;

      v34 = [v13 previous];
      v35 = [v34 uri];

      v36 = sub_F07EC();
      v38 = v37;

      sub_47F0C(v30, v33, v36, v38, 1);

      v39 = [v13 discovered];
      sub_37310(0, &qword_127B80, CTLazuliOperationID_ptr);
      v40 = [v13 previous];
      v41 = [v40 uri];

      v42 = sub_F07EC();
      v44 = v43;

      v45 = CTLazuliOperationID.init(id:)(v42, v44);
      sub_62F9C(v31, v39, v45);
    }
  }
}

void RCSServiceSession.didDiscover(_:destination:withCapabilities:with:)(void *a1, void *a2, void *a3, void *a4)
{
  v82 = a4;
  v7 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v73 - v9;
  v11 = sub_F06CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.reachability.unsafeMutableAddressor();
  (*(v12 + 16))(v15, v16, v11);
  v17 = a3;
  v18 = a1;
  v19 = a2;
  v20 = sub_F06AC();
  v21 = sub_F0CCC();
  v79 = v19;

  v77 = v21;
  v22 = os_log_type_enabled(v20, v21);
  v80 = a3;
  if (!v22)
  {

    (*(v12 + 8))(v15, v11);
    v29 = v10;
    v30 = v82;
    goto LABEL_16;
  }

  v75 = v20;
  v78 = v17;
  v76 = v10;
  v23 = swift_slowAlloc();
  v74 = swift_slowAlloc();
  v86 = v74;
  *v23 = 136447234;
  *(v23 + 4) = sub_3E850(0xD000000000000031, 0x80000000000FE340, &v86);
  *(v23 + 12) = 2080;
  v24 = [v18 labelID];
  if (v24)
  {
    v25 = v24;
    v26 = sub_F07EC();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v31 = v12;
  v32 = sub_3E850(v26, v28, &v86);

  *(v23 + 14) = v32;
  *(v23 + 22) = 2080;
  if (!a3)
  {
    v40 = sub_3E850(0, 0xE000000000000000, &v86);

    *(v23 + 24) = v40;
    *(v23 + 32) = 1024;
    v29 = v76;
    goto LABEL_10;
  }

  v33 = v78;
  v34 = [v78 description];
  v35 = sub_F07EC();
  v37 = v36;

  v38 = sub_3E850(v35, v37, &v86);

  *(v23 + 24) = v38;
  *(v23 + 32) = 1024;
  LOBYTE(v38) = [v33 isBot];

  v29 = v76;
  if ((v38 & 1) == 0)
  {
LABEL_10:
    v39 = 0;
    goto LABEL_11;
  }

  v39 = 1;
LABEL_11:
  *(v23 + 34) = v39;

  *(v23 + 38) = 2080;
  v41 = [v79 identities];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 identityList];

    v44 = sub_F09FC();
    if (!v44[2])
    {
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    }

    v45 = v44[4];
    v46 = v44[5];
  }

  else
  {
    v46 = 0xE400000000000000;
    v45 = 1701736270;
  }

  v47 = sub_3E850(v45, v46, &v86);

  *(v23 + 40) = v47;
  v48 = v75;
  _os_log_impl(&dword_0, v75, v77, "%{public}s simID: %s didDiscover: %s, is chat bot: %{BOOL}d, alternate handle: %s", v23, 0x30u);
  swift_arrayDestroy();

  (*(v31 + 8))(v15, v11);
  v30 = v82;
  v17 = v78;
LABEL_16:
  v49 = [v30 error];
  v50 = v80;
  if (v49)
  {
    v83[0] = 1;
    v86 = v49;
    v87 = v84;
    v88 = v85;
    v89 = 1;
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
    if (v80)
    {
      *&v83[24] = sub_37310(0, &qword_127EC8, CTLazuliCapabilitiesInformation_ptr);
      *&v83[32] = &protocol witness table for CTLazuliCapabilitiesInformation;
      *v83 = v17;
      sub_3928(v83, &v86);
    }

    else
    {
      memset(v83, 0, 40);
      v51 = v79;
      v52 = sub_52F78(v51);
      v54 = v53;
      v56 = v55;

      *&v88 = &type metadata for NullCapabilities;
      *(&v88 + 1) = &off_11E388;
      v86 = v52;
      *&v87 = v54;
      BYTE8(v87) = v56 & 1;
      if (*&v83[24])
      {
        sub_372B0(v83, &qword_127EB8, &qword_F2C80);
      }
    }

    v89 = 0;
    v57 = v17;
  }

  sub_F0AFC();
  v58 = sub_F0B1C();
  (*(*(v58 - 8) + 56))(v29, 0, 1, v58);
  sub_37380(&v86, v83, &qword_127EC0, &qword_F2C90);
  sub_F0AEC();
  v59 = v81;
  v60 = v30;
  v61 = sub_F0ADC();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = &protocol witness table for MainActor;
  *(v62 + 32) = v59;
  v63 = *&v83[16];
  *(v62 + 40) = *v83;
  *(v62 + 56) = v63;
  *(v62 + 65) = *&v83[25];
  *(v62 + 88) = v60;
  sub_3CC0C(0, 0, v29, &unk_F2C98, v62);

  if (!v50)
  {
    goto LABEL_28;
  }

  v64 = v17;
  if ([v64 isBot])
  {
    v65 = [v79 identities];
    if (v65)
    {
      v66 = v65;
      v67 = [v65 identityList];

      v68 = sub_F09FC();
      if (v68[2])
      {
        v69 = v68[4];
        v70 = v68[5];

        v71 = CTLazuliCapabilitiesInformation.recipientUri.getter();
        sub_47F0C(v69, v70, v71, v72, 0);

LABEL_28:
        sub_372B0(&v86, &qword_127EC0, &qword_F2C90);
        return;
      }

      goto LABEL_32;
    }
  }

  sub_372B0(&v86, &qword_127EC0, &qword_F2C90);
}

uint64_t sub_49EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_F0AEC();
  v6[5] = sub_F0ADC();
  v8 = sub_F0A6C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_49F94, v8, v7);
}

void sub_49F94()
{
  v1 = *(*(v0[2] + OBJC_IVAR___RCSServiceSession_state) + 120);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];

    v3 = [v2 operation];
    v4 = [v3 uuid];

    v5 = sub_F07EC();
    v7 = v6;

    v0[9] = v7;
    v8 = *(*v1 + 120);
    v12 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_4A140;
    v11 = v0[3];

    v12(v11, v5, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4A140()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return _swift_task_switch(sub_4A2A0, v6, v5);
}

uint64_t sub_4A2A0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

id sub_4A3AC(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:a1 selector:"forceReloadChats" object:0];

  return [a1 performSelector:"forceReloadChats" withObject:0 afterDelay:2.0];
}

void RCSServiceSession.capabilitiesFound(_:destination:withCapabilities:)(void *a1, void *a2, void *a3)
{
  v6 = sub_F06CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v46 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = Logger.rcs.unsafeMutableAddressor();
  v44 = *(v7 + 16);
  v45 = v13;
  v44(v12);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = sub_F06AC();
  v18 = sub_F0CCC();

  if (os_log_type_enabled(v17, v18))
  {
    v39 = v18;
    v41 = v7;
    v42 = v6;
    v19 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47[0] = v40;
    *v19 = 136446978;
    *(v19 + 4) = sub_3E850(0xD000000000000032, 0x80000000000FE380, v47);
    *(v19 + 12) = 2080;
    v20 = [v14 labelID];
    if (v20)
    {
      v21 = v20;
      v22 = sub_F07EC();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v25 = sub_3E850(v22, v24, v47);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    v26 = [v15 uri];
    v27 = sub_F07EC();
    v29 = v28;

    v30 = sub_3E850(v27, v29, v47);

    *(v19 + 24) = v30;
    *(v19 + 32) = 2080;
    v31 = [v16 description];
    v32 = sub_F07EC();
    v34 = v33;

    v35 = sub_3E850(v32, v34, v47);

    *(v19 + 34) = v35;
    _os_log_impl(&dword_0, v17, v39, "%{public}s simID: %s from: %s cap: %s", v19, 0x2Au);
    swift_arrayDestroy();

    v7 = v41;
    v6 = v42;
  }

  else
  {
  }

  (*(v7 + 8))(v12, v6);
  RCSHandle.init(destination:)(v15, v47);
  v36 = [v43 broadcasterForChatListeners];
  v37 = sub_F07BC();
  sub_3CAB8(v47);
  [v36 capabilitiesUpdatedForHandle:v37];
  swift_unknownObjectRelease();
}

void RCSServiceSession.subjectUpdated(_:forGroupChat:withNewSubject:updatedBy:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v186 = *(v9 - 8);
  v187 = v9;
  v10 = v186[8];
  __chkstk_darwin(v9);
  v185 = &v167 - v11;
  v12 = sub_F06CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v182 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v183 = &v167 - v18;
  v19 = __chkstk_darwin(v17);
  v179 = &v167 - v20;
  v21 = __chkstk_darwin(v19);
  v178 = &v167 - v22;
  v23 = __chkstk_darwin(v21);
  v184 = &v167 - v24;
  __chkstk_darwin(v23);
  v26 = &v167 - v25;
  if (sub_53040(0xD000000000000038, 0x80000000000FE3C0))
  {
    v170 = v4;
    v27 = Logger.rcs.unsafeMutableAddressor();
    v181 = v13;
    v28 = *(v13 + 16);
    v174 = v27;
    v175 = v28;
    v176 = v13 + 16;
    (v28)(v26);
    v177 = a4;
    v29 = a4;
    v30 = a1;
    v31 = a2;
    v171 = a3;
    v32 = v26;
    v33 = a3;
    v34 = sub_F06AC();
    v35 = sub_F0CCC();
    v173 = v29;

    v172 = v33;
    v180 = v31;

    v36 = os_log_type_enabled(v34, v35);
    v169 = v30;
    if (v36)
    {
      v37 = v32;
      v167 = v34;
      v168 = v12;
      v38 = swift_slowAlloc();
      *&v194 = swift_slowAlloc();
      *v38 = 136447234;
      *(v38 + 4) = sub_3E850(0xD000000000000038, 0x80000000000FE3C0, &v194);
      *(v38 + 12) = 2080;
      v39 = [v30 labelID];
      if (v39)
      {
        v40 = v39;
        v41 = sub_F07EC();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0xE000000000000000;
      }

      v45 = v177;
      v46 = 0x3E6C696E3CLL;
      v47 = sub_3E850(v41, v43, &v194);

      *(v38 + 14) = v47;
      *(v38 + 22) = 2080;
      v48 = [v180 remoteUri];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 destination];

        v51 = sub_F07EC();
        v53 = v52;
      }

      else
      {
        v53 = 0xE500000000000000;
        v51 = 0x3E6C696E3CLL;
      }

      v54 = sub_3E850(v51, v53, &v194);

      *(v38 + 24) = v54;
      *(v38 + 32) = 2080;
      if (v171)
      {
        v55 = [v172 displayString];
        v56 = sub_F07EC();
        v58 = v57;
      }

      else
      {
        v58 = 0xE500000000000000;
        v56 = 0x3E6C696E3CLL;
      }

      v59 = sub_3E850(v56, v58, &v194);

      *(v38 + 34) = v59;
      *(v38 + 42) = 2080;
      if (v45)
      {
        v60 = [v173 member];
        v46 = sub_F07EC();
        v62 = v61;
      }

      else
      {
        v62 = 0xE500000000000000;
      }

      v63 = sub_3E850(v46, v62, &v194);

      *(v38 + 44) = v63;
      v64 = v167;
      _os_log_impl(&dword_0, v167, v35, "%{public}s simID: %s remoteUri: %s newSubject: %s updatedBy: %s", v38, 0x34u);
      swift_arrayDestroy();

      v44 = *(v181 + 8);
      v12 = v168;
      v44(v37, v168);
    }

    else
    {

      v44 = *(v181 + 8);
      v44(v32, v12);
      v45 = v177;
    }

    if (qword_127A30 != -1)
    {
      swift_once();
    }

    v65 = v187;
    v66 = sub_3C96C(v187, qword_127C88);
    v67 = v185;
    v68 = v186;
    (v186[2])(v185, v66, v65);
    sub_F044C();
    (v68[1])(v67, v65);
    if (v194 == 1)
    {
      v69 = v184;
      v175(v184, v174, v12);
      v70 = sub_F06AC();
      v71 = sub_F0CCC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        v73 = "Dropping subject change due to override";
LABEL_29:
        _os_log_impl(&dword_0, v70, v71, v73, v72, 2u);

        goto LABEL_30;
      }

      goto LABEL_30;
    }

    if (!v45)
    {
      v69 = v183;
      v175(v183, v174, v12);
      v70 = sub_F06AC();
      v71 = sub_F0CEC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        v73 = "Dropping subject update due to missing attribution info";
        goto LABEL_29;
      }

LABEL_30:

      v44(v69, v12);
      return;
    }

    v74 = v172;
    v75 = v173;
    v76 = v180;
    v77 = [v180 remoteUri];
    if (v77)
    {
      v78 = v77;
      v79 = [v76 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v80 = static NSUserDefaults.forceEncryption.getter();
      v202.id._object = &type metadata for CTRCSGroupIdentity;
      v202.attributes._rawValue = &off_11F358;
      v202.scheme._countAndFlagsBits = v78;
      LOBYTE(v202.scheme._object) = (v80 | v79) & 1;
      RCSGroup.init(group:identity:)(v76, &v202, &v188);
      v197 = v190;
      v198 = v191;
      v199 = v192;
      v200 = v193;
      v194 = v188;
      v195 = *v189;
      v196 = *&v189[16];
      v81 = [v75 member];
      v82 = sub_F07EC();
      v84 = v83;

      v85._countAndFlagsBits = v82;
      v85._object = v84;
      RCSHandle.init(rawValue:botStatus:alternateHandle:)(&v201, v85, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
      if (v86)
      {
        v175(v182, v174, v12);
        swift_errorRetain();
        v87 = sub_F06AC();
        v88 = sub_F0CEC();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *v89 = 138412290;
          swift_errorRetain();
          v91 = _swift_stdlib_bridgeErrorToNSError();
          *(v89 + 4) = v91;
          *v90 = v91;
          _os_log_impl(&dword_0, v87, v88, "Dropping subject change due to malformed sender: %@", v89, 0xCu);
          sub_372B0(v90, &qword_127AF0, &qword_F28E0);
        }

        else
        {
        }

        v126 = v182;
LABEL_45:
        v127 = v12;
LABEL_46:
        v44(v126, v127);
LABEL_47:
        sub_53D58(&v194);
        return;
      }

      countAndFlagsBits = v201.id._countAndFlagsBits;
      object = v201.id._object;

      sub_3CAB8(&v201);
      v106 = [v169 phoneNumber];
      if (!v106)
      {

        v128 = v179;
        v175(v179, v174, v12);
        v129 = sub_F06AC();
        v130 = sub_F0CEC();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_0, v129, v130, "Dropping subject change due to missing phone number on subscription context", v131, 2u);
        }

        v126 = v128;
        goto LABEL_45;
      }

      v107 = v106;
      v184 = countAndFlagsBits;
      v186 = v75;
      v187 = object;
      v168 = v12;
      v108 = *(&v195 + 1);
      v109 = v196;
      v110 = sub_373E8(&v194, *(&v195 + 1));
      v111 = v107;
      v112 = sub_6F3C8(v110, v170, v108, v109);
      if (!v112)
      {

        v132 = v178;
        v133 = v168;
        v175(v178, v174, v168);
        v134 = sub_F06AC();
        v135 = sub_F0CCC();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          *v136 = 0;
          _os_log_impl(&dword_0, v134, v135, "Dropping subject change for group that doesn't already exist in the database", v136, 2u);
        }

        v126 = v132;
        v127 = v133;
        goto LABEL_46;
      }

      v113 = v112;
      v185 = v111;
      v114 = *(&v195 + 1);
      v115 = v196;
      sub_373E8(&v194, *(&v195 + 1));
      v116 = (*(v115 + 16))(v114, v115);
      if (v117)
      {
        v118 = v117;
        v119 = v171;
        if (*(*(*&v170[OBJC_IVAR___RCSServiceSession_state] + 72) + 16))
        {
          v120 = v116;
          v121 = *(*&v170[OBJC_IVAR___RCSServiceSession_state] + 72);

          sub_51FEC(v120, v118);
          LOBYTE(v120) = v122;

          if (v120)
          {
            if (v119)
            {
              v123 = [v74 displayString];
              v124 = sub_F07EC();
              v183 = v125;
            }

            else
            {
              v124 = 0;
              v183 = 0;
            }

            v152 = v169;
            v153 = [v169 phoneNumber];
            if (v153)
            {
              v154 = v153;
              v155 = v124;
              v156 = sub_F07EC();
              v158 = v157;

              v159 = sub_53E04(_swiftEmptyArrayStorage);
              v160._countAndFlagsBits = 7103860;
              v160._object = 0xE300000000000000;
              v161._countAndFlagsBits = v156;
              v124 = v155;
              v161._object = v158;
              RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v202, v160, v161, v159, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
              __chkstk_darwin(v162);
              RCSHandle.canonicalizedHandle(for:)(sub_54C44, &v188);
              sub_3CAB8(&v202);
              v182 = *&v189[8];

              sub_3CAB8(&v188);
            }

            else
            {
              v182 = 0;
            }

            v163 = [v152 labelID];
            if (v163)
            {
              v164 = v163;
              sub_F07EC();
            }

            sub_62078(v124, v183, v184, v187, &v194);

            goto LABEL_47;
          }
        }

        else
        {
        }

        if (v119)
        {
          v137 = [v74 displayString];
          if (!v137)
          {
            sub_F07EC();
            v137 = sub_F07BC();
          }
        }

        else
        {
          v137 = 0;
        }

        v138 = sub_F035C();
        v139 = *(v138 - 8);
        v140 = *(v139 + 64);
        __chkstk_darwin(v138);
        v142 = &v167 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_F034C();
        sub_F032C();
        (*(v139 + 8))(v142, v138);
        v143 = sub_F07BC();

        v144 = sub_F07BC();
        v145 = [v113 chatIdentifier];
        if (v145)
        {
          v146 = v145;

          v147 = [v113 style];
          v148 = v170;
          v149 = [v170 account];
          LOBYTE(v166) = 1;
          v150 = v148;
          v151 = v185;
          [v150 didReceiveDisplayNameChange:v137 guid:v143 fromID:v144 toIdentifier:v185 forChat:v146 style:v147 account:v149 shouldRelay:v166];

          goto LABEL_47;
        }

LABEL_71:
        __break(1u);
        __break(1u);
        __break(1u);
        return;
      }

LABEL_70:
      v165 = v185;

      __break(1u);
      goto LABEL_71;
    }

    sub_53D04();
    v92 = swift_allocError();
    swift_willThrow();
    v93 = [objc_opt_self() sharedInstance];
    if (!v93)
    {
      __break(1u);
      goto LABEL_70;
    }

    v94 = v93;
    *&v188 = 0x52552070756F7267;
    *(&v188 + 1) = 0xEA00000000002049;
    v95 = [v180 remoteUri];
    if (v95)
    {
      v96 = v95;
      v97 = [v95 focus];

      v98 = sub_F07EC();
      v100 = v99;
    }

    else
    {
      v98 = 0x3E6C696E3CLL;
      v100 = 0xE500000000000000;
    }

    v203._countAndFlagsBits = v98;
    v203._object = v100;
    sub_F08CC(v203);

    v101 = v188;
    v102 = sub_F0FBC();
    LOBYTE(v188) = 1;
    *(&v188 + 1) = v102;
    *v189 = v103;
    *&v189[8] = v101;
    *&v189[24] = v92;
    LOBYTE(v190) = 0;
    swift_errorRetain();
    sub_94528(&v188);
  }
}

uint64_t RCSServiceSession.incomingGroupChat(_:withGroupInformation:)(void *a1, void *a2)
{
  v5 = sub_F06CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_53040(0xD00000000000002ALL, 0x80000000000FE460);
  if (result)
  {
    v54 = v2;
    v11 = Logger.rcs.unsafeMutableAddressor();
    (*(v6 + 16))(v9, v11, v5);
    v12 = a1;
    v13 = a2;
    v14 = sub_F06AC();
    v15 = sub_F0CCC();

    if (os_log_type_enabled(v14, v15))
    {
      v52 = v15;
      v16 = v12;
      v17 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v62[0] = v51;
      *v17 = 136446722;
      *(v17 + 4) = sub_3E850(0xD00000000000002ALL, 0x80000000000FE460, v62);
      *(v17 + 12) = 2080;
      v53 = v16;
      v18 = [v16 labelID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_F07EC();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = sub_3E850(v20, v22, v62);

      *(v17 + 14) = v23;
      *(v17 + 22) = 2112;
      *(v17 + 24) = v13;
      v24 = v50;
      *v50 = v13;
      v25 = v13;
      _os_log_impl(&dword_0, v14, v52, "%{public}s simID: %s groupInformation: %@", v17, 0x20u);
      sub_372B0(v24, &qword_127AF0, &qword_F28E0);

      swift_arrayDestroy();

      (*(v6 + 8))(v9, v5);
      v12 = v53;
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v26 = [v13 remoteUri];
    if (v26)
    {
      v27 = v26;
      v28 = [v13 secure];
      sub_37310(0, &unk_127EA0, NSUserDefaults_ptr);
      v29 = static NSUserDefaults.forceEncryption.getter();
      v63.id._object = &type metadata for CTRCSGroupIdentity;
      v63.attributes._rawValue = &off_11F358;
      v63.scheme._countAndFlagsBits = v27;
      LOBYTE(v63.scheme._object) = (v29 | v28) & 1;
      RCSGroup.init(group:identity:)(v13, &v63, &v55);
      v62[3] = v58;
      v62[4] = v59;
      v62[5] = v60;
      v62[6] = v61;
      v62[0] = v55;
      v62[1] = v56;
      v62[2] = v57;
      v30 = [v12 phoneNumber];
      if (v30)
      {
        v31 = v30;
        v32 = sub_F07EC();
        v34 = v33;

        v35 = sub_53E04(_swiftEmptyArrayStorage);
        v36._countAndFlagsBits = 7103860;
        v36._object = 0xE300000000000000;
        v37._countAndFlagsBits = v32;
        v37._object = v34;
        RCSHandle.init(scheme:id:attributes:botStatus:alternateHandle:)(&v63, v36, v37, v35, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
        __chkstk_darwin(v38);
        *(&v50 - 2) = v12;
        RCSHandle.canonicalizedHandle(for:)(sub_55244, &v55);
        sub_3CAB8(&v63);
        v39 = *(&v56 + 1);
        v40 = v56;

        sub_3CAB8(&v55);
      }

      else
      {
        v40 = 0;
        v39 = 0;
      }

      v45 = [v12 labelID];
      if (v45)
      {
        v46 = v45;
        v47 = sub_F07EC();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0;
      }

      sub_60684(v62, v40, v39, v47, v49);

      return sub_53D58(v62);
    }

    else
    {
      sub_53D04();
      v41 = swift_allocError();
      swift_willThrow();
      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v42 = result;
        v43 = sub_F0FBC();
        LOBYTE(v55) = 1;
        *(&v55 + 1) = v43;
        v56 = v44;
        *&v57 = 0;
        *(&v57 + 1) = v41;
        LOBYTE(v58) = 0;
        swift_errorRetain();
        sub_94528(&v55);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}