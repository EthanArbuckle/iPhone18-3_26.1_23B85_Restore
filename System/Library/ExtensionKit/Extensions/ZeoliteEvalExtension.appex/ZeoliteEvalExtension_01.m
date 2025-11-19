unint64_t sub_100017C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_100020864(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

void *sub_100017CA4(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_10001BE98(a2 - result, 0);
      if (sub_10001DBD4(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

Class sub_100017D28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10001F874();
    v5.super.isa = sub_1000385E8().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_100017DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for EmbedParameters(0);
  v4[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v7 = sub_100038138();
  v4[23] = v7;
  v8 = *(v7 - 8);
  v4[24] = v8;
  v9 = *(v8 + 64) + 15;
  v4[25] = swift_task_alloc();
  v10 = sub_100038178();
  v4[26] = v10;
  v11 = *(v10 - 8);
  v4[27] = v11;
  v12 = *(v11 + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100017F04, 0, 0);
}

uint64_t sub_100017F04()
{
  if (qword_100048160 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_100038598();
  v0[29] = sub_100003680(v2, qword_100048DC8);

  v3 = sub_100038578();
  v4 = sub_1000387A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5)
    {
      v7 = *(v1 + 16);
    }

    else
    {
      v7 = 0;
    }

    *(v6 + 4) = v7;
    v8 = v6;

    _os_log_impl(&_mh_execute_header, v3, v4, "Running embed step on %ld items.", v8, 0xCu);
  }

  else
  {
  }

  if (v0[17])
  {
    v9 = v0[21];
    v10 = v0[18];
    v11 = *(v9 + 20);
    v12 = (v10 + *(v9 + 24));
    v14 = *v12;
    v13 = v12[1];
    v15 = async function pointer to createEmbedder(embedderName:version:)[1];
    v16 = swift_task_alloc();
    v0[30] = v16;
    *v16 = v0;
    v16[1] = sub_100018198;

    return createEmbedder(embedderName:version:)(v0 + 7, v10 + v11, v14, v13);
  }

  else
  {
    v17 = sub_100038578();
    v18 = sub_1000387C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Extracted items must not be nil.", v19, 2u);
    }

    v20 = v0[28];
    v21 = v0[25];
    v22 = v0[22];

    v23 = v0[1];

    return v23(0, 12);
  }
}

uint64_t sub_100018198()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return _swift_task_switch(sub_100018294, 0, 0);
}

uint64_t sub_100018294()
{
  v58 = v0;
  v1 = *(v0 + 232);
  if (!*(v0 + 80))
  {
    v11 = *(v0 + 176);
    v12 = *(v0 + 144);
    sub_10001FD94(v0 + 56, &qword_100048390, &qword_1000395E0);
    sub_10001FCC4(v12, v11, type metadata accessor for EmbedParameters);
    v13 = sub_100038578();
    v14 = sub_1000387C8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 176);
    if (v15)
    {
      v17 = *(v0 + 168);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v57 = v19;
      *v18 = 136315138;
      v20 = v16 + *(v17 + 20);
      v21 = sub_100037FB8();
      v23 = v22;
      sub_10001EA9C(v16, type metadata accessor for EmbedParameters);
      v24 = sub_10001BFAC(v21, v23, &v57);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to create embedder %s.", v18, 0xCu);
      sub_10000387C(v19);
    }

    else
    {

      sub_10001EA9C(v16, type metadata accessor for EmbedParameters);
    }

    v38 = 0;
    v39 = 22;
    goto LABEL_21;
  }

  sub_1000036B8((v0 + 56), v0 + 16);
  sub_10001F984(v0 + 16, v0 + 96);
  v2 = sub_100038578();
  v3 = sub_1000387A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v57 = v5;
    *v4 = 136315138;
    v6 = *(v0 + 128);
    sub_1000036D0((v0 + 96), *(v0 + 120));
    v7 = sub_1000380C8();
    v9 = v8;
    sub_10000387C((v0 + 96));
    v10 = sub_10001BFAC(v7, v9, &v57);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Embedding model: %s", v4, 0xCu);
    sub_10000387C(v5);
  }

  else
  {

    sub_10000387C((v0 + 96));
  }

  v25 = *(v0 + 136);
  v26 = *(v25 + 16);
  *(v0 + 248) = v26;
  if (!v26)
  {
    v40 = *(v0 + 232);

    v41 = sub_100038578();
    v42 = sub_1000387A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = _swiftEmptyArrayStorage[2];

      _os_log_impl(&_mh_execute_header, v41, v42, "Finished embed step. Generated %ld embedding vectors.", v43, 0xCu);
    }

    else
    {
    }

    sub_10000387C((v0 + 16));
    v39 = 24;
    v38 = _swiftEmptyArrayStorage;
LABEL_21:
    v52 = *(v0 + 224);
    v53 = *(v0 + 200);
    v54 = *(v0 + 176);

    v55 = *(v0 + 8);

    return v55(v38, v39);
  }

  v27 = *(v0 + 208);
  v28 = *(v0 + 216);
  v29 = *(v28 + 16);
  v28 += 16;
  v30 = *(v28 + 64);
  *(v0 + 312) = v30;
  *(v0 + 256) = *(v28 + 56);
  *(v0 + 264) = v29;
  *(v0 + 272) = _swiftEmptyArrayStorage;
  *(v0 + 280) = 0;
  v29(*(v0 + 224), v25 + ((v30 + 32) & ~v30), v27);
  if (sub_100038768())
  {
    v31 = *(v0 + 232);

    v32 = sub_100038578();
    v33 = sub_1000387A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Task canceled at embedding loop.", v34, 2u);
    }

    v36 = *(v0 + 216);
    v35 = *(v0 + 224);
    v37 = *(v0 + 208);

    (*(v36 + 8))(v35, v37);
    sub_10000387C((v0 + 16));
    v38 = 0;
    v39 = 12;
    goto LABEL_21;
  }

  v44 = *(v0 + 224);
  v45 = *(v0 + 40);
  v46 = *(v0 + 48);
  sub_1000036D0((v0 + 16), v45);
  v47 = sub_100038148();
  v49 = v48;
  *(v0 + 288) = v48;
  v50 = async function pointer to dispatch thunk of Embedder.embed(text:)[1];
  v51 = swift_task_alloc();
  *(v0 + 296) = v51;
  *v51 = v0;
  v51[1] = sub_100018830;

  return dispatch thunk of Embedder.embed(text:)(v47, v49, v45, v46);
}

uint64_t sub_100018830(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_100018950, 0, 0);
}

uint64_t sub_100018950()
{
  v1 = *(v0 + 272);
  if (!*(v0 + 304))
  {
    v20 = *(v0 + 232);
    v21 = *(v0 + 272);

    v22 = sub_100038578();
    v23 = sub_1000387C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Failed to generate embedding.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 2u);
    }

LABEL_15:
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = *(v0 + 208);

    (*(v30 + 8))(v29, v31);
    v8 = 0;
    v32 = 12;
LABEL_18:
    sub_10000387C((v0 + 16));
    v33 = *(v0 + 224);
    v34 = *(v0 + 200);
    v35 = *(v0 + 176);

    v36 = *(v0 + 8);

    return v36(v8, v32);
  }

  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  sub_100038168();
  v6 = *(v0 + 48);
  sub_1000036D0((v0 + 16), *(v0 + 40));
  sub_1000380C8();

  sub_100038108();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 272);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100029ACC(0, v8[2] + 1, 1, *(v0 + 272));
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100029ACC(v9 > 1, v10 + 1, 1, v8);
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 200);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v15 = *(v0 + 280) + 1;
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v8[2] = v10 + 1;
  (*(v14 + 32))(v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, v12, v13);
  if (v15 == v11)
  {
    v16 = *(v0 + 232);

    v17 = sub_100038578();
    v18 = sub_1000387A8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v8[2];

      _os_log_impl(&_mh_execute_header, v17, v18, "Finished embed step. Generated %ld embedding vectors.", v19, 0xCu);
    }

    else
    {
    }

    v32 = 24;
    goto LABEL_18;
  }

  v26 = *(v0 + 280) + 1;
  *(v0 + 272) = v8;
  *(v0 + 280) = v26;
  v27 = *(v0 + 216) + 16;
  (*(v0 + 264))(*(v0 + 224), *(v0 + 136) + ((*(v0 + 312) + 32) & ~*(v0 + 312)) + *(v0 + 256) * v26, *(v0 + 208));
  if (sub_100038768())
  {
    v28 = *(v0 + 232);

    v22 = sub_100038578();
    v23 = sub_1000387A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Task canceled at embedding loop.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v38 = *(v0 + 224);
  v39 = *(v0 + 40);
  v40 = *(v0 + 48);
  sub_1000036D0((v0 + 16), v39);
  v41 = sub_100038148();
  v43 = v42;
  *(v0 + 288) = v42;
  v44 = async function pointer to dispatch thunk of Embedder.embed(text:)[1];
  v45 = swift_task_alloc();
  *(v0 + 296) = v45;
  *v45 = v0;
  v45[1] = sub_100018830;

  return dispatch thunk of Embedder.embed(text:)(v41, v43, v39, v40);
}

uint64_t sub_100018DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_100038218();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = *(*(sub_100001B40(&qword_100048350, &qword_1000395A8) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v9 = sub_100038208();
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v12 = *(*(sub_100001B40(&qword_100048358, &qword_1000395B0) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v13 = sub_100001B40(&qword_100048360, &qword_1000395B8);
  v4[30] = v13;
  v14 = *(v13 - 8);
  v4[31] = v14;
  v15 = *(v14 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v16 = sub_100037E18();
  v4[34] = v16;
  v17 = *(v16 - 8);
  v4[35] = v17;
  v18 = *(v17 + 64) + 15;
  v4[36] = swift_task_alloc();
  v19 = *(*(sub_100001B40(&qword_1000482C8, &qword_100039528) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v20 = sub_100037E68();
  v4[38] = v20;
  v21 = *(v20 - 8);
  v4[39] = v21;
  v22 = *(v21 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v23 = sub_100038138();
  v4[42] = v23;
  v24 = *(v23 - 8);
  v4[43] = v24;
  v25 = *(v24 + 64) + 15;
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_100019134, 0, 0);
}

void sub_100019134()
{
  v136 = v0;
  v1 = v0[16];
  if (v1 && (v2 = *(v1 + 16)) != 0)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v3 = sub_100038598();
    v0[45] = sub_100003680(v3, qword_100048DC8);

    v4 = sub_100038578();
    v5 = sub_1000387A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;

      _os_log_impl(&_mh_execute_header, v4, v5, "Running score step for %ld embeddings.", v6, 0xCu);
    }

    else
    {
    }

    v23 = v0[43];
    v25 = *(v23 + 16);
    v24 = v23 + 16;
    v132 = v25;
    v26 = v1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v130 = *(v24 + 56);
    v27 = &_swiftEmptyArrayStorage;
    do
    {
      v28 = v0[44];
      v29 = v0;
      v30 = v0[42];
      v132(v28, v26, v30);
      v31 = sub_100038128();
      (*(v24 - 8))(v28, v30);
      v32 = *(v31 + 16);
      v33 = *(v27 + 2);
      v0 = (v33 + v32);
      if (__OFADD__(v33, v32))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v0 > *(v27 + 3) >> 1)
      {
        if (v33 <= v0)
        {
          v35 = v33 + v32;
        }

        else
        {
          v35 = v33;
        }

        v27 = sub_100029AF4(isUniquelyReferenced_nonNull_native, v35, 1, v27);
      }

      v0 = v29;
      v29[46] = v27;
      if (*(v31 + 16))
      {
        v36 = *(v27 + 2);
        if ((*(v27 + 3) >> 1) - v36 < v32)
        {
          goto LABEL_67;
        }

        memcpy(&v27[4 * v36 + 32], (v31 + 32), 4 * v32);

        if (v32)
        {
          v37 = *(v27 + 2);
          v38 = __OFADD__(v37, v32);
          v39 = v37 + v32;
          if (v38)
          {
            __break(1u);
            goto LABEL_71;
          }

          *(v27 + 2) = v39;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_66;
        }
      }

      v26 += v130;
      --v2;
    }

    while (v2);
    v40 = v29[17];
    v41 = *(sub_100038128() + 16);

    v42 = *(v40 + 64);
    if (!v42)
    {
      v71 = sub_100038578();
      v72 = sub_1000387A8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v71, v72, "Scoring against personal data.", v73, 2u);
      }

      if (!v41)
      {
        __break(1u);
        return;
      }

      v75 = v29[22];
      v74 = v29[23];
      v76 = v29[20];
      v77 = v0[21];
      v78 = v0[17];
      v79 = *(v27 + 2) / v41;

      sub_100038228();
      (*(v77 + 16))(v75, v74, v76);
      v80 = sub_100001B40(&qword_100048368, &qword_1000395C0);
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      v0[52] = sub_100038188();
      v83 = *(v78 + 8);
      v84 = *(&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + 1);
      v134 = (&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:));
      v85 = swift_task_alloc();
      v0[53] = v85;
      *v85 = v0;
      v85[1] = sub_10001A634;
      v86 = v27;
      v87 = v83;
      v88 = 1;
      goto LABEL_48;
    }

    v43 = *(v40 + 56);
    v44 = *(v40 + 64);

    v45 = sub_100038578();
    v46 = sub_1000387A8();

    v133 = v43;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v135 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_10001BFAC(v43, v42, &v135);
      _os_log_impl(&_mh_execute_header, v45, v46, "Scoring against reference file %s", v47, 0xCu);
      sub_10000387C(v48);
    }

    v49 = v29[19];
    *(v29 + 1) = *(v29[17] + 72);
    if (v49)
    {
      v138._countAndFlagsBits = 0x736B6E616C702ELL;
      v138._object = 0xE700000000000000;
      if (sub_1000386B8(v138) && v29[3])
      {
        v126 = v29[3];
        v127 = v29[40];
        v125 = v29[39];
        v123 = v29[41];
        v124 = v29[38];
        v51 = v29[36];
        v50 = v29[37];
        v52 = v29[34];
        v53 = v29[35];
        v121 = v52;
        v122 = v29[18];
        (*(v125 + 56))();
        v54 = enum case for URL.DirectoryHint.inferFromPath(_:);
        v55 = *(v53 + 104);
        v55(v51, enum case for URL.DirectoryHint.inferFromPath(_:), v52);

        v0 = v29;
        sub_100037E48();
        v29[4] = v133;
        v29[5] = v42;
        v55(v51, v54, v121);
        sub_10001E024();
        sub_100037E58();
        (*(v53 + 8))(v51, v121);
        v56 = *(v125 + 8);
        v56(v127, v124);
        sub_100037E38(0);
        v56(v123, v124);
        v57 = sub_1000385C8();
        v58 = *(v57 + 48);
        v59 = *(v57 + 52);
        swift_allocObject();
        v60 = sub_1000385B8();
        v29[47] = v60;
        if (v60)
        {
          v61 = sub_1000385A8();
          if (v61 == 2 || (v61 & 1) == 0)
          {
            v89 = sub_100038578();
            v90 = sub_1000387A8();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              *v91 = 0;
              _os_log_impl(&_mh_execute_header, v89, v90, "Scoring against un-quantized reference data.", v91, 2u);
            }

            v93 = v0[25];
            v92 = v0[26];
            v94 = v0[24];

            sub_10001FA38((v0 + 2), (v0 + 6), &qword_100048370, &qword_1000395C8);
            sub_1000381F8();
            if ((*(v92 + 48))(v94, 1, v93) == 1)
            {
              v68 = v0[24];

              v69 = &unk_100048350;
              v70 = &unk_1000395A8;
              goto LABEL_59;
            }

            v101 = v0[27];
            v100 = v0[28];
            v102 = v0[25];
            v103 = v0[26];
            v104 = v0[17];
            (*(v103 + 32))(v100, v0[24], v102);
            (*(v103 + 16))(v101, v100, v102);
            v105 = sub_100001B40(&qword_100048378, &qword_1000395D0);
            v106 = *(v105 + 48);
            v107 = *(v105 + 52);
            swift_allocObject();
            v0[50] = sub_100038188();
            v108 = *(v104 + 8);
            v109 = *(&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + 1);
            v134 = (&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:));
            v110 = swift_task_alloc();
            v0[51] = v110;
            *v110 = v0;
            v111 = sub_10001A2B8;
          }

          else
          {
            v62 = sub_100038578();
            v63 = sub_1000387A8();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&_mh_execute_header, v62, v63, "Scoring against quantized reference data.", v64, 2u);
            }

            v66 = v0[30];
            v65 = v0[31];
            v67 = v0[29];

            sub_10001FA38((v0 + 2), (v0 + 8), &qword_100048370, &qword_1000395C8);
            sub_10001F930();
            sub_100038288();
            if ((*(v65 + 48))(v67, 1, v66) == 1)
            {
              v68 = v0[29];

              v69 = &unk_100048358;
              v70 = &unk_1000395B0;
LABEL_59:
              sub_10001FD94(v68, v69, v70);
              v8 = sub_100038578();
              v95 = sub_1000387C8();
              if (os_log_type_enabled(v8, v95))
              {
                v96 = swift_slowAlloc();
                *v96 = 0;
                _os_log_impl(&_mh_execute_header, v8, v95, "Failed to create loader.", v96, 2u);
              }

              goto LABEL_12;
            }

LABEL_68:
            v113 = v0[32];
            v112 = v0[33];
            v114 = v0[30];
            v115 = v0[31];
            v116 = v0[17];
            (*(v115 + 32))(v112, v0[29], v114);
            (*(v115 + 16))(v113, v112, v114);
            v117 = sub_100001B40(&qword_100048388, &qword_1000395D8);
            v118 = *(v117 + 48);
            v119 = *(v117 + 52);
            swift_allocObject();
            v0[48] = sub_100038188();
            v108 = *(v116 + 8);
            v120 = *(&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + 1);
            v134 = (&async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:) + async function pointer to dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:));
            v110 = swift_task_alloc();
            v0[49] = v110;
            *v110 = v0;
            v111 = sub_100019F40;
          }

          v110[1] = v111;
          v86 = v27;
          v87 = v108;
          v88 = 0;
LABEL_48:

          v134(v86, v87, v88);
          return;
        }

        v8 = sub_100038578();
        v97 = sub_1000387C8();

        if (!os_log_type_enabled(v8, v97))
        {
          goto LABEL_12;
        }

        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v135 = v99;
        *v98 = 136315138;
        *(v98 + 4) = sub_10001BFAC(v133, v42, &v135);
        _os_log_impl(&_mh_execute_header, v8, v97, "Failed at opening %s", v98, 0xCu);
        sub_10000387C(v99);

        goto LABEL_11;
      }

      v8 = sub_100038578();
      v9 = sub_1000387C8();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_12;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Data file must be in Planks format and label must be set.";
    }

    else
    {

      v8 = sub_100038578();
      v9 = sub_1000387C8();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_12;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "DataFolder missing.";
    }
  }

  else
  {
    if (qword_100048160 != -1)
    {
LABEL_71:
      swift_once();
    }

    v7 = sub_100038598();
    sub_100003680(v7, qword_100048DC8);
    v8 = sub_100038578();
    v9 = sub_1000387C8();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Embeddings data must not be empty.";
  }

  _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);
LABEL_11:

LABEL_12:

  v12 = v0[44];
  v13 = v0[40];
  v14 = v0[41];
  v16 = v0[36];
  v15 = v0[37];
  v18 = v0[32];
  v17 = v0[33];
  v20 = v0[28];
  v19 = v0[29];
  v21 = v0[27];
  v128 = v0[24];
  v129 = v0[23];
  v131 = v0[22];

  v22 = v0[1];

  v22(0, 14);
}

uint64_t sub_100019F40(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 80) = v1;
  *(v3 + 88) = a1;
  v4 = *(v2 + 392);
  v5 = *(v2 + 368);
  v7 = *v1;

  return _swift_task_switch(sub_10001A05C, 0, 0);
}

uint64_t sub_10001A05C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];

  (*(v5 + 8))(v3, v4);
  v6 = v0[11];
  v7 = v0[45];
  v29 = v6;
  if (v6)
  {

    v8 = sub_100038578();
    v9 = sub_1000387A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v6 + 16);

      _os_log_impl(&_mh_execute_header, v8, v9, "Finished score step. Scored %ld embeddings.", v10, 0xCu);
    }

    else
    {
    }

    v13 = 24;
  }

  else
  {
    v8 = sub_100038578();
    v11 = sub_1000387C8();
    if (os_log_type_enabled(v8, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v11, "Failed to generate scores.", v12, 2u);
    }

    v13 = 14;
  }

  v30 = v13;

  v14 = v0[44];
  v16 = v0[40];
  v15 = v0[41];
  v18 = v0[36];
  v17 = v0[37];
  v20 = v0[32];
  v19 = v0[33];
  v21 = v0[28];
  v22 = v0[29];
  v23 = v0[27];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[22];

  v24 = v0[1];

  return v24(v29, v30);
}

uint64_t sub_10001A2B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 96) = v1;
  *(v3 + 104) = a1;
  v4 = *(v2 + 408);
  v5 = *(v2 + 368);
  v7 = *v1;

  return _swift_task_switch(sub_10001A3D4, 0, 0);
}

uint64_t sub_10001A3D4()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[26];

  (*(v5 + 8))(v3, v4);
  v6 = v0[13];
  v7 = v0[45];
  v29 = v6;
  if (v6)
  {

    v8 = sub_100038578();
    v9 = sub_1000387A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v6 + 16);

      _os_log_impl(&_mh_execute_header, v8, v9, "Finished score step. Scored %ld embeddings.", v10, 0xCu);
    }

    else
    {
    }

    v13 = 24;
  }

  else
  {
    v8 = sub_100038578();
    v11 = sub_1000387C8();
    if (os_log_type_enabled(v8, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v11, "Failed to generate scores.", v12, 2u);
    }

    v13 = 14;
  }

  v30 = v13;

  v14 = v0[44];
  v16 = v0[40];
  v15 = v0[41];
  v18 = v0[36];
  v17 = v0[37];
  v20 = v0[32];
  v19 = v0[33];
  v21 = v0[28];
  v22 = v0[29];
  v23 = v0[27];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[22];

  v24 = v0[1];

  return v24(v29, v30);
}

uint64_t sub_10001A634(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 112) = v1;
  *(v3 + 120) = a1;
  v4 = *(v2 + 424);
  v5 = *(v2 + 368);
  v7 = *v1;

  return _swift_task_switch(sub_10001A750, 0, 0);
}

uint64_t sub_10001A750()
{
  v1 = v0[52];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];

  (*(v4 + 8))(v2, v3);
  v5 = v0[15];
  v6 = v0[45];
  v28 = v5;
  if (v5)
  {

    v7 = sub_100038578();
    v8 = sub_1000387A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(v5 + 16);

      _os_log_impl(&_mh_execute_header, v7, v8, "Finished score step. Scored %ld embeddings.", v9, 0xCu);
    }

    else
    {
    }

    v12 = 24;
  }

  else
  {
    v7 = sub_100038578();
    v10 = sub_1000387C8();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, v10, "Failed to generate scores.", v11, 2u);
    }

    v12 = 14;
  }

  v29 = v12;

  v13 = v0[44];
  v15 = v0[40];
  v14 = v0[41];
  v17 = v0[36];
  v16 = v0[37];
  v19 = v0[32];
  v18 = v0[33];
  v20 = v0[28];
  v21 = v0[29];
  v22 = v0[27];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];

  v23 = v0[1];

  return v23(v28, v29);
}

uint64_t sub_10001A9A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v63 = a3;
  v64 = a4;
  v62 = a2;
  LODWORD(v8) = a1;
  v9 = sub_1000382C8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001B40(&qword_100048348, &qword_1000395A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v61 = v49 - v16;
  if (qword_100048160 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v17 = sub_100038598();
    v18 = sub_100003680(v17, qword_100048DC8);
    v19 = sub_100038578();
    v20 = sub_1000387A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Running analysis step.", v21, 2u);
    }

    if (!a6 || !a5)
    {
      break;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_21;
    }

    v49[1] = v18;
    v50 = v8;
    v51 = a5;
    v60 = *(a5 + 16);
    if (!v60)
    {
LABEL_17:

      v38 = sub_100038578();
      v39 = sub_1000387A8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v60;

        _os_log_impl(&_mh_execute_header, v38, v39, "Finished sending %ld events to CoreAnalytics.", v40, 0xCu);
      }

      else
      {
      }

      LOWORD(v8) = v50;
LABEL_21:
      if ((v8 & 0x100) != 0)
      {
        sub_100038298();
        v41 = sub_100038578();
        v42 = sub_1000387A8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock[0] = v44;
          *v43 = 136315138;
          sub_100038198();
          v45 = sub_1000386F8();
          v47 = v46;

          v48 = sub_10001BFAC(v45, v47, aBlock);

          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v41, v42, "Mean top-k percentiles: %s", v43, 0xCu);
          sub_10000387C(v44);
        }

        else
        {
        }
      }

      return 24;
    }

    v22 = 0;
    v23 = v10[2];
    v10 += 2;
    v58 = v23;
    v24 = v51 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v25 = v10[7];
    v55 = a6 + 4;
    v56 = v25;
    v59 = v10;
    v57 = (v10 - 1);
    v53 = "maxTokenFrequency";
    v54 = (v10 + 2);
    v52 = v66;
    while (1)
    {
      v58(v13, v24, v9);
      v26 = a6[2];
      if (v22 == v26)
      {
        (*v57)(v13, v9);
        goto LABEL_17;
      }

      if (v22 >= v26)
      {
        break;
      }

      v27 = v22 + 1;
      v10 = a6;
      v28 = v55[v22];
      v29 = v61;
      (*v54)(v61, v13, v9);
      a5 = v63;

      v30 = sub_1000382B8();
      v31 = sub_1000382A8();
      (*v57)(v29, v9);
      v8 = sub_100038638();
      v32 = swift_allocObject();
      v32[2] = v62;
      v32[3] = a5;
      v32[4] = v64;
      v32[5] = v28;
      a6 = v10;
      v32[6] = v30;
      v32[7] = v31;
      v66[2] = sub_10001F90C;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100017D28;
      v66[1] = &unk_100045958;
      v33 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v33);

      v24 += v56;
      v22 = v27;
      if (v60 == v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v34 = sub_100038578();
  v35 = sub_1000387C8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Scores and item IDs must not be nil.", v36, 2u);
  }

  return 23;
}

uint64_t sub_10001AFD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FE00;

  return sub_1000048D8(a1);
}

uint64_t sub_10001B06C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001B100;

  return sub_100005420(a1);
}

uint64_t sub_10001B100(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10001B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_10001B2E0;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_10001B2E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001B3D4(uint64_t a1)
{
  v2 = sub_10001FAA0(&qword_1000482C0, type metadata accessor for ZeoliteEvalExtension);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_10001B450@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038338();
  *a2 = sub_100038328();
  v8 = *(a1 + 20);
  sub_100023308(v7);
  sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig);
  sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig);
  return sub_1000383B8();
}

uint64_t sub_10001B56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001B40(&qword_1000482C8, &qword_100039528);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22[-v6];
  v8 = sub_100037E68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001FA38(a1, v7, &qword_1000482C8, &qword_100039528);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001FD94(v7, &qword_1000482C8, &qword_100039528);
    v20 = sub_100038048();
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v13 = sub_100037D38();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_100037D28();
    v16 = sub_100037E78();
    v18 = v17;
    v19 = sub_100038048();
    sub_10001FAA0(&qword_1000483D0, &type metadata accessor for VocabularyScores);
    sub_100037D18();
    (*(v9 + 8))(v12, v8);
    sub_100003924(v16, v18);

    return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }
}

uint64_t sub_10001B994(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_100038178() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

void *sub_10001BA28(void (*a1)(void), uint64_t a2, unint64_t a3)
{
  v6 = sub_100001B40(&qword_1000483E0, qword_100039630);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_100038178();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  v12 = __chkstk_darwin(v10);
  v38 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v31 = &v29 - v15;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v14 = v27)
  {
    v17 = 0;
    v36 = a3 & 0xFFFFFFFFFFFFFF8;
    v37 = a3 & 0xC000000000000001;
    v33 = (v32 + 32);
    v34 = (v32 + 48);
    v39 = v14;
    v40 = _swiftEmptyArrayStorage;
    v29 = a1;
    v30 = a3;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v14 = sub_100038848();
      }

      else
      {
        if (v17 >= *(v36 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(a3 + 8 * v17 + 32);
      }

      v18 = v14;
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v41 = v14;
      a1(&v41);
      if (v3)
      {

        return v40;
      }

      v20 = v39;
      if ((*v34)(v9, 1, v39) == 1)
      {
        v14 = sub_10001FD94(v9, &qword_1000483E0, qword_100039630);
      }

      else
      {
        v21 = *v33;
        v22 = v31;
        (*v33)(v31, v9, v20);
        v21(v38, v22, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_100029950(0, v40[2] + 1, 1, v40);
        }

        v24 = v40[2];
        v23 = v40[3];
        if (v24 >= v23 >> 1)
        {
          v40 = sub_100029950(v23 > 1, v24 + 1, 1, v40);
        }

        v25 = v39;
        v26 = v40;
        v40[2] = v24 + 1;
        v14 = (v21)(v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v38, v25);
        a1 = v29;
        a3 = v30;
      }

      ++v17;
      if (v19 == v35)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v27 = v14;
    i = sub_1000388A8();
  }

  return _swiftEmptyArrayStorage;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ZeoliteEvalExtension();
  sub_10001FAA0(&qword_1000481C0, type metadata accessor for ZeoliteEvalExtension);
  sub_1000382D8();
  return 0;
}

char *sub_10001BE20(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_10001C5DC(result, v5, 0);
  }

  return result;
}

void *sub_10001BE98(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001B40(&qword_100048338, &unk_100039590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10001BF1C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001B40(&qword_1000483C8, &qword_100039618);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_10001BFAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001C078(v11, 0, 0, 1, a1, a2);
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
    sub_10001FC04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000387C(v11);
  return v7;
}

unint64_t sub_10001C078(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001C184(a5, a6);
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
    result = sub_100038858();
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

char *sub_10001C184(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001C1D0(a1, a2);
  sub_10001C300(&off_100045030);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001C1D0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001C3EC(v5, 0);
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

  result = sub_100038858();
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
        v10 = sub_1000386A8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001C3EC(v10, 0);
        result = sub_100038838();
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

uint64_t sub_10001C300(uint64_t result)
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

  result = sub_10001C460(result, v12, 1, v3);
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

void *sub_10001C3EC(uint64_t a1, uint64_t a2)
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

  sub_100001B40(&qword_1000483D8, &qword_100039620);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001C460(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_1000483D8, &qword_100039620);
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

size_t sub_10001C554(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C5FC(a1, a2, a3, *v3, &qword_100048340, &qword_10003A030, &type metadata accessor for EmbeddingItem);
  *v3 = result;
  return result;
}

size_t sub_10001C598(size_t a1, int64_t a2, char a3)
{
  result = sub_10001C5FC(a1, a2, a3, *v3, &qword_1000483E8, &unk_10003B5C0, &type metadata accessor for ExtractedItem);
  *v3 = result;
  return result;
}

char *sub_10001C5DC(char *a1, int64_t a2, char a3)
{
  result = sub_10001C91C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10001C5FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B40(a5, a6);
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

void *sub_10001C7D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100001B40(&qword_1000483C8, &qword_100039618);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001B40(&qword_1000483B8, &qword_100039608);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001C91C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048338, &unk_100039590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

Swift::Int sub_10001CA20(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10001DE18(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_100038A28(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v13 >= v12[2])
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
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
      sub_100001B40(&qword_1000483B8, &qword_100039608);
      v7 = sub_100038718();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_10001D2D8(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10001CB84(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_100038AE8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10001CE88(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10001CC64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001B40(&qword_1000483B0, &qword_100039600);
  result = sub_100038828();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_100038AE8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10001CE88(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001CC64(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10001CFA8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10001D0E8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_100038AE8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_100038A88();
  __break(1u);
  return result;
}

void *sub_10001CFA8()
{
  v1 = v0;
  sub_100001B40(&qword_1000483B0, &qword_100039600);
  v2 = *v0;
  v3 = sub_100038818();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10001D0E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001B40(&qword_1000483B0, &qword_100039600);
  result = sub_100038828();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_100038AE8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001D2D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10001DABC(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10001D890((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10001DAD0(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_10001DAD0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
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

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_10001D890((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (v32 >= *(v31 + 16))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
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

uint64_t sub_10001D890(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v13 - 2) < *(v6 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

char *sub_10001DAD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_1000483C0, &qword_100039610);
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

uint64_t *sub_10001DBD4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10001DC70(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 4 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s20ZeoliteEvalExtension0abC5ErrorO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_100038A78();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t _s20ZeoliteEvalExtension0abC6StatesO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000452B8;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for ZeoliteEvalExtension()
{
  result = qword_100048270;
  if (!qword_100048270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10001DF1C()
{
  result = qword_1000481C8;
  if (!qword_1000481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481C8);
  }

  return result;
}

unint64_t sub_10001DF74()
{
  result = qword_1000481D0;
  if (!qword_1000481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481D0);
  }

  return result;
}

unint64_t sub_10001DFCC()
{
  result = qword_1000481D8;
  if (!qword_1000481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481D8);
  }

  return result;
}

unint64_t sub_10001E024()
{
  result = qword_1000481E0;
  if (!qword_1000481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481E0);
  }

  return result;
}

unint64_t sub_10001E07C()
{
  result = qword_1000481E8;
  if (!qword_1000481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481E8);
  }

  return result;
}

unint64_t sub_10001E0D4()
{
  result = qword_1000481F0;
  if (!qword_1000481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481F0);
  }

  return result;
}

unint64_t sub_10001E12C()
{
  result = qword_1000481F8;
  if (!qword_1000481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000481F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZeoliteEvalExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteEvalExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZeoliteEvalExtensionStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteEvalExtensionStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10001E498(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001B40(&qword_100048210, qword_100039480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001E568(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B40(&qword_100048210, qword_100039480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001E618()
{
  sub_100038338();
  if (v0 <= 0x3F)
  {
    sub_10001E69C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001E69C()
{
  if (!qword_100048280)
  {
    type metadata accessor for ZeoliteEvalExtensionConfig(255);
    sub_10001FAA0(&qword_100048288, type metadata accessor for ZeoliteEvalExtensionConfig);
    sub_10001FAA0(&unk_100048290, type metadata accessor for ZeoliteEvalExtensionConfig);
    v0 = sub_1000383E8();
    if (!v1)
    {
      atomic_store(v0, &qword_100048280);
    }
  }
}

unint64_t sub_10001E834()
{
  result = qword_1000482F8;
  if (!qword_1000482F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000482F8);
  }

  return result;
}

uint64_t sub_10001E888(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001E8AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001E8F0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10001E9E0()
{
  result = qword_100048310;
  if (!qword_100048310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048310);
  }

  return result;
}

uint64_t sub_10001EA34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B40(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001EA9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001EB00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001EB18(uint64_t a1)
{
  v2 = sub_100037F08();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  __chkstk_darwin(v2);
  v69 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001B40(&qword_1000482E0, &qword_100039548);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v68 - v7;
  v9 = type metadata accessor for ExecutionState(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16);
  v72 = (&v68 - v20);
  __chkstk_darwin(v19);
  v22 = &v68 - v21;
  v23 = objc_allocWithZone(NSUserDefaults);
  v24 = sub_100038638();
  v25 = [v23 initWithSuiteName:v24];

  if (!v25)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v41 = sub_100038598();
    sub_100003680(v41, qword_100048DC8);
    v42 = sub_100038578();
    v43 = sub_1000387C8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v76 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_10001BFAC(0xD000000000000011, 0x800000010003B970, &v76);
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to fetch suite %s from user defaults.", v44, 0xCu);
      sub_10000387C(v45);
    }

    return 0;
  }

  v68 = v22;
  v76 = 0x6769666E6F63;
  v77 = 0xE600000000000000;
  v26 = *a1;
  v75 = *a1;
  v27 = a1;
  v78._countAndFlagsBits = sub_100038A38();
  sub_100038698(v78);

  v28 = sub_100038638();

  v73 = v25;
  v29 = [v25 dictionaryForKey:v28];

  if (!v29)
  {
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v58 = sub_100038598();
    sub_100003680(v58, qword_100048DC8);
    sub_10001FCC4(a1, v18, type metadata accessor for ZeoliteEvalExtensionConfig);
    v34 = sub_100038578();
    v59 = sub_1000387A8();
    if (!os_log_type_enabled(v34, v59))
    {
      sub_10001EA9C(v18, type metadata accessor for ZeoliteEvalExtensionConfig);
      goto LABEL_27;
    }

    v60 = swift_slowAlloc();
    *v60 = 134217984;
    v61 = *v18;
    sub_10001EA9C(v18, type metadata accessor for ZeoliteEvalExtensionConfig);
    *(v60 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v34, v59, "No execution state has been tracked for config %ld. Allow the extension to run.", v60, 0xCu);
LABEL_23:

LABEL_27:

    return 1;
  }

  sub_1000385F8();

  v30 = *(a1 + 9);
  if (v30 != 2 && (v30 & 1) != 0)
  {

    v76 = 0x6769666E6F63;
    v77 = 0xE600000000000000;
    v75 = v26;
    v79._countAndFlagsBits = sub_100038A38();
    sub_100038698(v79);

    v31 = sub_100038638();

    [v73 removeObjectForKey:v31];

    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v32 = sub_100038598();
    sub_100003680(v32, qword_100048DC8);
    v33 = v68;
    sub_10001FCC4(a1, v68, type metadata accessor for ZeoliteEvalExtensionConfig);
    v34 = sub_100038578();
    v35 = sub_1000387A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      v76 = 0x6769666E6F63;
      *v36 = 136315138;
      v77 = 0xE600000000000000;
      v74 = *v33;
      v80._countAndFlagsBits = sub_100038A38();
      sub_100038698(v80);

      v38 = v76;
      v39 = v77;
      sub_10001EA9C(v33, type metadata accessor for ZeoliteEvalExtensionConfig);
      v40 = sub_10001BFAC(v38, v39, &v75);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Reset values for %s in UserDefaults. Allow the extension to run.", v36, 0xCu);
      sub_10000387C(v37);

      goto LABEL_23;
    }

    sub_10001EA9C(v33, type metadata accessor for ZeoliteEvalExtensionConfig);
    return 1;
  }

  sub_100023468(v46, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001FD94(v8, &qword_1000482E0, &qword_100039548);
    if (qword_100048160 != -1)
    {
      swift_once();
    }

    v47 = sub_100038598();
    sub_100003680(v47, qword_100048DC8);
    v48 = v72;
    sub_10001FCC4(v27, v72, type metadata accessor for ZeoliteEvalExtensionConfig);

    v49 = sub_100038578();
    v50 = sub_1000387C8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v76 = v52;
      *v51 = 134218242;
      v53 = *v48;
      sub_10001EA9C(v48, type metadata accessor for ZeoliteEvalExtensionConfig);
      *(v51 + 4) = v53;
      *(v51 + 12) = 2080;
      v54 = sub_100038608();
      v56 = v55;

      v57 = sub_10001BFAC(v54, v56, &v76);

      *(v51 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to parse execution state for config %ld: %s", v51, 0x16u);
      sub_10000387C(v52);
    }

    else
    {
      sub_10001EA9C(v48, type metadata accessor for ZeoliteEvalExtensionConfig);
    }

    return 0;
  }

  sub_10001FD2C(v8, v13, type metadata accessor for ExecutionState);
  if (*(a1 + 24) == 1)
  {
    sub_10001EA9C(v13, type metadata accessor for ExecutionState);

    return *(a1 + 8);
  }

  v63 = *(a1 + 16);
  v64 = v69;
  sub_100037EF8();
  sub_100037EB8();
  v66 = v65;
  v67 = v65;

  (*(v70 + 8))(v64, v71);
  result = sub_10001EA9C(v13, type metadata accessor for ExecutionState);
  if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v66 < 9.22337204e18)
  {
    if (v63 <= v66)
    {
      return 1;
    }

    return *(a1 + 8);
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10001F5D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  v7 = (a5 >> 1) - a4;
  if (a5 >> 1 == a4)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = result;
    if (a4 > v6)
    {
      v6 = a4;
    }

    v10 = v6 - a4;
    v11 = (a3 + 24 * a4 + 16);
    v8 = _swiftEmptyArrayStorage;
    v21 = result;
    while (v10)
    {
      v12 = *v11;
      v13 = *(v11 - 1);
      v19[0] = *(v11 - 2);
      v19[1] = v13;
      v20 = v12;

      v9(&v17, v19);
      if (v5)
      {

        return v8;
      }

      if ((v18 & 1) == 0)
      {
        v14 = v17;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000299C8(0, *(v8 + 2) + 1, 1, v8);
          v8 = result;
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          result = sub_1000299C8((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 2) = v16 + 1;
        *&v8[8 * v16 + 32] = v14;
        v9 = v21;
      }

      --v10;
      v11 += 6;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001F748(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100038788();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001CB84(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001F7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B40(&qword_1000482E0, &qword_100039548);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F82C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001F874()
{
  result = qword_100048330;
  if (!qword_100048330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100048330);
  }

  return result;
}

uint64_t sub_10001F8C4()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10001F930()
{
  result = qword_100048380;
  if (!qword_100048380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048380);
  }

  return result;
}

uint64_t sub_10001F984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int sub_10001F9F0@<X0>(Swift::String *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_100038098(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10001FA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B40(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001FAA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10001FB44(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001FC04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10001FC60(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10001FCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FD94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B40(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001FE10()
{
  sub_100001B40(&qword_1000483F0, &qword_1000396B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100039680;
  *(inited + 32) = 0x49747865746E6F63;
  *(inited + 40) = 0xE900000000000064;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 48) = sub_100038638();
  *(inited + 56) = 0x64496769666E6F63;
  *(inited + 64) = 0xE800000000000000;
  v4 = v0[2];
  *(inited + 72) = sub_100038798();
  *(inited + 80) = 0x49746E656D656C65;
  *(inited + 88) = 0xE900000000000064;
  v5 = v0[3];
  *(inited + 96) = sub_100038798();
  v6 = sub_100021AC4(inited);
  swift_setDeallocating();
  sub_100001B40(&qword_1000483F8, &qword_1000396C0);
  result = swift_arrayDestroy();
  v8 = v0[4];
  v18 = *(v8 + 16);
  if (v18)
  {
    v9 = 0;
    v19 = v0[5];
    v17 = v8 + 32;
    while (1)
    {
      v10 = *(v19 + 16);
      if (v9 == v10)
      {
        break;
      }

      if (v9 >= v10)
      {
        __break(1u);
        return result;
      }

      if (v9 != 10)
      {
        v11 = *(v17 + 8 * v9);
        v12 = *(v19 + 32 + 4 * v9);
        v20._countAndFlagsBits = sub_100038A38();
        sub_100038698(v20);

        isa = sub_100038778().super.super.isa;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10002134C(isa, 0x7865646E69, 0xE500000000000000, isUniquelyReferenced_nonNull_native);

        v21._countAndFlagsBits = sub_100038A38();
        sub_100038698(v21);

        v15 = sub_100038778().super.super.isa;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        sub_10002134C(v15, 0x65756C6176, 0xE500000000000000, v16);

        if (v18 != ++v9)
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

Swift::Int sub_1000200B0()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100020190()
{
  *v0;
  *v0;
  *v0;
  sub_100038678();
}

Swift::Int sub_10002025C()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100020338@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100021C80(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100020368(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x49747865746E6F63;
  v5 = 0xE600000000000000;
  v6 = 0x64496D657469;
  v7 = 0xE700000000000000;
  v8 = 0x73656369646E69;
  if (v2 != 3)
  {
    v8 = 0x7365756C6176;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64496769666E6F63;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100020404()
{
  v1 = *v0;
  v2 = 0x49747865746E6F63;
  v3 = 0x64496D657469;
  v4 = 0x73656369646E69;
  if (v1 != 3)
  {
    v4 = 0x7365756C6176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64496769666E6F63;
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

uint64_t sub_10002049C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100021C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000204DC(uint64_t a1)
{
  v2 = sub_100022008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100020518(uint64_t a1)
{
  v2 = sub_100022008();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100020554(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048448, &qword_100039790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_100022008();
  sub_100038B68();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1000389E8();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v17) = 1;
    sub_100038A08();
    v14 = v3[3];
    LOBYTE(v17) = 2;
    sub_100038A08();
    v17 = v3[4];
    HIBYTE(v16) = 3;
    sub_100001B40(&qword_100048428, &qword_100039780);
    sub_1000220C8(&qword_100048450);
    sub_100038A18();
    v17 = v3[5];
    HIBYTE(v16) = 4;
    sub_100001B40(&qword_100048438, &qword_100039788);
    sub_10002205C(&qword_100048458);
    sub_100038A18();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_100020804@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100021CCC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_100020864(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100038AF8();
  sub_100038678();
  v6 = sub_100038B18();

  return sub_100020920(a1, a2, v6);
}

unint64_t sub_1000208DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100038AE8();

  return sub_1000209D8(a1, v4);
}

unint64_t sub_100020920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100038A58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000209D8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100020A44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001B40(&qword_100048408, &qword_1000396D0);
  v37 = a2;
  result = sub_1000388C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100038AF8();
      sub_100038678();
      result = sub_100038B18();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100020CE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001B40(&qword_100048410, &qword_1000396D8);
  result = sub_1000388C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_100038AE8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100020F4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001B40(&qword_100048400, &qword_1000396C8);
  v39 = a2;
  result = sub_1000388C8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100038AF8();
      sub_100038678();
      result = sub_100038B18();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1000211F0(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100020864(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_100020A44(v16, a3 & 1);
      v20 = *v5;
      result = sub_100020864(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_100038A98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000214C4();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 4 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_10002134C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100020864(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100020F4C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100020864(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100038A98();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100021778();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void *sub_1000214C4()
{
  v1 = v0;
  sub_100001B40(&qword_100048408, &qword_1000396D0);
  v2 = *v0;
  v3 = sub_1000388B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002162C()
{
  v1 = v0;
  sub_100001B40(&qword_100048410, &qword_1000396D8);
  v2 = *v0;
  v3 = sub_1000388B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100021778()
{
  v1 = v0;
  sub_100001B40(&qword_100048400, &qword_1000396C8);
  v2 = *v0;
  v3 = sub_1000388B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1000218E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001B40(&qword_100048410, &qword_1000396D8);
    v3 = sub_1000388D8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000208DC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000219C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001B40(&qword_100048408, &qword_1000396D0);
    v3 = sub_1000388D8();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100020864(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100021AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001B40(&qword_100048400, &qword_1000396C8);
    v3 = sub_1000388D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100020864(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

__n128 sub_100021BC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100021BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100021C24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100021C80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045490;
  v6._object = a2;
  v4 = sub_1000388F8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100021CCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100001B40(&qword_100048418, &qword_100039778);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_100022008();
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_100038958();
  v13 = v12;
  v14 = v11;
  LOBYTE(v22) = 1;
  v20 = sub_100038978();
  LOBYTE(v22) = 2;
  v19 = sub_100038978();
  sub_100001B40(&qword_100048428, &qword_100039780);
  v21 = 3;
  sub_1000220C8(&qword_100048430);
  sub_100038988();
  v18 = v22;
  sub_100001B40(&qword_100048438, &qword_100039788);
  v21 = 4;
  sub_10002205C(&qword_100048440);
  sub_100038988();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  result = sub_10000387C(a1);
  *a2 = v14;
  a2[1] = v13;
  v17 = v19;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v15;
  return result;
}

unint64_t sub_100022008()
{
  result = qword_100048420;
  if (!qword_100048420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048420);
  }

  return result;
}

uint64_t sub_10002205C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048438, &qword_100039788);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000220C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000038C8(&qword_100048428, &qword_100039780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100022148()
{
  result = qword_100048460;
  if (!qword_100048460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048460);
  }

  return result;
}

unint64_t sub_1000221A0()
{
  result = qword_100048468;
  if (!qword_100048468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048468);
  }

  return result;
}

unint64_t sub_1000221F8()
{
  result = qword_100048470;
  if (!qword_100048470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048470);
  }

  return result;
}

uint64_t sub_100022260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B40(&qword_1000482D0, &unk_100039900);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100022330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B40(&qword_1000482D0, &unk_100039900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100022400()
{
  sub_100023030(319, &qword_1000484E0, &type metadata for Bool, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100023030(319, &qword_1000484E8, &type metadata for Int, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100023030(319, &qword_1000484F0, &type metadata for ZeoliteStage, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100023030(319, &qword_1000484F8, &type metadata for ExtractParameters, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10002C2F8(319, &qword_100048500, type metadata accessor for EmbedParameters);
          if (v4 <= 0x3F)
          {
            sub_100023030(319, &qword_100048508, &type metadata for ScoreParameters, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100023030(319, &qword_100048510, &type metadata for AnalysisParameters, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100023030(319, &qword_100048518, &type metadata for InferenceParameters, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_100023030(319, &unk_100048520, &type metadata for TokenizationParameters, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 sub_100022698(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000226AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100022708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_100022778(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100022784(uint64_t a1, int a2)
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

uint64_t sub_1000227CC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AnalysisParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AnalysisParameters(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10002298C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000229B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_100022A0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_100022A84(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100022AA8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100022ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100022AF0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100022B14(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100022B50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 184))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_100022BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ZeoliteStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ZeoliteStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100022DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100037FC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100022E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100037FC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_100022F4C()
{
  sub_100023030(319, &qword_1000485E0, &type metadata for IOStrategy, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100037FC8();
    if (v1 <= 0x3F)
    {
      sub_100023030(319, &qword_1000485E8, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100023030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

Swift::Int sub_100023098()
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

Swift::Int sub_1000231A4()
{
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

Swift::Int sub_1000232AC(uint64_t a1, char a2)
{
  sub_100038AF8();
  v3 = qword_10003B2C8[a2];
  sub_100038678();

  return sub_100038B18();
}

double sub_100023308@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = &off_1000453A0;
  sub_100028A38(v14);
  v2 = v14[9];
  *(a1 + 168) = v14[8];
  *(a1 + 184) = v2;
  *(a1 + 200) = v14[10];
  v3 = v14[5];
  *(a1 + 104) = v14[4];
  *(a1 + 120) = v3;
  v4 = v14[7];
  *(a1 + 136) = v14[6];
  *(a1 + 152) = v4;
  v5 = v14[1];
  *(a1 + 40) = v14[0];
  *(a1 + 56) = v5;
  v6 = v14[3];
  *(a1 + 72) = v14[2];
  *(a1 + 216) = v15;
  *(a1 + 88) = v6;
  v7 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v8 = v7[10];
  v9 = type metadata accessor for EmbedParameters(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = a1 + v7[11];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  *(a1 + v7[12]) = 2;
  v11 = (a1 + v7[13]);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = a1 + v7[14];
  result = 0.0;
  *v12 = xmmword_1000398F0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_100023468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100037F08();
  v69 = *(v4 - 8);
  v5 = v69[8];
  v6 = (__chkstk_darwin)();
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v66 = &v60 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v60 - v17;
  __chkstk_darwin(v16);
  v68 = &v60 - v19;
  v20 = type metadata accessor for ExecutionState(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  if (*(a1 + 16) && (v26 = sub_100020864(0x706D6F437473616CLL, 0xEE006E6F6974656CLL), (v27 & 1) != 0) && (sub_10001FC04(*(a1 + 56) + 32 * v26, v70), (swift_dynamicCast() & 1) != 0))
  {
    v63 = v20;
    v64 = a2;
    v65 = v4;
    v28 = sub_100038638();

    v29 = [v25 dateFromString:v28];

    if (v29)
    {
      sub_100037EE8();

      v30 = v68;
      v31 = v69;
      v32 = v65;
      v61 = v69[4];
      v62 = v69 + 4;
      v61(v68, v18, v65);
      v33 = v31[2];
      v34 = v24;
      v33(v24, v30, v32);
      if (*(a1 + 16) && (v35 = sub_100020864(0x726575517473616CLL, 0xEB00000000646569), (v36 & 1) != 0))
      {
        sub_10001FC04(*(a1 + 56) + 32 * v35, v70);
        v37 = swift_dynamicCast();
        v20 = v63;
        if (v37)
        {
          v38 = sub_100038638();

          v39 = [v25 dateFromString:v38];

          if (v39)
          {
            sub_100037EE8();

            v40 = v12;
            v41 = v65;
            v42 = v61;
            v61(v15, v40, v65);
            v43 = *(v20 + 20);
            v42(v34 + v43, v15, v41);
            v44 = v69[7];
            v45 = v34 + v43;
            v46 = v69;
            v44(v45, 0, 1, v41);
LABEL_14:
            if (*(a1 + 16) && (v49 = sub_100020864(0x6D6574497473616CLL, 0xEC00000065746144), (v50 & 1) != 0))
            {
              sub_10001FC04(*(a1 + 56) + 32 * v49, v70);

              if (swift_dynamicCast())
              {
                v51 = sub_100038638();

                v52 = [v25 dateFromString:v51];

                if (v52)
                {
                  v53 = v25;
                  v54 = v67;
                  sub_100037EE8();

                  v55 = v65;
                  (v46[1])(v68, v65);
                  v56 = v66;
                  v57 = v61;
                  v61(v66, v54, v55);
                  v58 = *(v20 + 24);
                  v57(v34 + v58, v56, v55);
                  v44(v34 + v58, 0, 1, v55);
LABEL_23:
                  a2 = v64;
                  sub_100029DFC(v34, v64);
                  v47 = 0;
                  return (*(v21 + 56))(a2, v47, 1, v20);
                }
              }

              v59 = v65;
              (v46[1])(v68, v65);
            }

            else
            {

              v59 = v65;
              (v46[1])(v68, v65);
            }

            v44(v34 + *(v20 + 24), 1, 1, v59);
            goto LABEL_23;
          }
        }
      }

      else
      {
        v20 = v63;
      }

      v46 = v69;
      v44 = v69[7];
      v44(v34 + *(v20 + 20), 1, 1, v65);
      goto LABEL_14;
    }

    v47 = 1;
    v20 = v63;
    a2 = v64;
  }

  else
  {

    v47 = 1;
  }

  return (*(v21 + 56))(a2, v47, 1, v20);
}

uint64_t sub_100023AF0()
{
  v0 = sub_100037D48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100037D88();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_100037D78();
  (*(v1 + 104))(v4, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v0);
  sub_100037D58();
  type metadata accessor for ExecutionState(0);
  sub_100029760(&qword_100048710, type metadata accessor for ExecutionState);
  v8 = sub_100037D68();
  v10 = v9;
  v11 = objc_opt_self();
  isa = sub_100037E88().super.isa;
  sub_100003924(v8, v10);
  *&v19 = 0;
  v13 = [v11 JSONObjectWithData:isa options:0 error:&v19];

  v14 = v19;
  if (v13)
  {
    sub_100038808();

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v14;
    sub_100037DF8();

    swift_willThrow();

    v19 = 0u;
    v20 = 0u;
  }

  v18[0] = v19;
  v18[1] = v20;
  if (*(&v20 + 1))
  {
    sub_100001B40(&qword_100048720, &unk_10003A020);
    if (swift_dynamicCast())
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001FD94(v18, &qword_100048718, &qword_10003A018);
    return 0;
  }
}

uint64_t sub_100023DC0()
{
  *v0;
  *v0;
  *v0;
  sub_100038678();
}

uint64_t sub_100023EBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029EAC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100023EEC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x74636172747865;
  v5 = 0xE800000000000000;
  v6 = 0x736973796C616E61;
  v7 = 0xE900000000000065;
  v8 = 0x636E657265666E69;
  if (v2 != 4)
  {
    v8 = 0x617A696E656B6F74;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6465626D65;
  if (v2 != 1)
  {
    v9 = 0x65726F6373;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_100024070(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_1000487D8, &qword_10003A088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8 - 8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B9B8();
  sub_100038B68();
  LOBYTE(v28) = *v3;
  LOBYTE(v26[0]) = 0;
  sub_10002B964();
  sub_1000389D8();
  if (!v2)
  {
    v11 = *(v3 + 56);
    v36[2] = *(v3 + 40);
    v36[3] = v11;
    v36[4] = *(v3 + 72);
    v37 = *(v3 + 88);
    v12 = *(v3 + 24);
    v36[0] = *(v3 + 8);
    v36[1] = v12;
    v13 = *(v3 + 56);
    v30 = *(v3 + 40);
    v31 = v13;
    v32 = *(v3 + 72);
    v33 = *(v3 + 88);
    v14 = *(v3 + 24);
    v28 = *(v3 + 8);
    v29 = v14;
    v39 = 1;
    sub_10001FA38(v36, v26, &qword_1000487C0, &qword_10003A080);
    sub_10002BB5C();
    sub_1000389D8();
    v26[2] = v30;
    v26[3] = v31;
    v26[4] = v32;
    v27 = v33;
    v26[0] = v28;
    v26[1] = v29;
    sub_10001FD94(v26, &qword_1000487C0, &qword_10003A080);
    v15 = *(v3 + 112);
    v34[0] = *(v3 + 96);
    v34[1] = v15;
    v17 = *(v3 + 96);
    v16 = *(v3 + 112);
    v34[2] = *(v3 + 128);
    v35 = *(v3 + 144);
    v22 = v17;
    v23 = v16;
    v24 = *(v3 + 128);
    v25 = *(v3 + 144);
    v38 = 2;
    sub_10001FA38(v34, v21, &qword_1000487E8, &qword_10003A090);
    sub_10002BBB0();
    sub_1000389D8();
    sub_10002BAB4(v22, *(&v22 + 1), v23);
    v18 = *(v3 + 168);
    v22 = *(v3 + 152);
    v23 = v18;
    v21[0] = 3;
    sub_10002BC04();
    sub_1000389D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000243C4()
{
  v1 = 0x7954656372756F73;
  v2 = 0x726170736E617274;
  if (*v0 != 2)
  {
    v2 = 7564659;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100024440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100029EF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100024468(uint64_t a1)
{
  v2 = sub_10002B9B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000244A4(uint64_t a1)
{
  v2 = sub_10002B9B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000244E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002A064(a1, v10);
  if (!v2)
  {
    v5 = v18;
    *(a2 + 128) = v17;
    *(a2 + 144) = v5;
    *(a2 + 160) = v19;
    *(a2 + 176) = v20;
    v6 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v6;
    v7 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v7;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return result;
}

uint64_t sub_100024578(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048820, &qword_10003A0A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002BCAC();
  sub_100038B68();
  v20[15] = *v3;
  v20[14] = 0;
  sub_10002B910();
  sub_1000389D8();
  if (!v2)
  {
    v11 = type metadata accessor for EmbedParameters(0);
    v12 = v11[5];
    v20[13] = 1;
    sub_100037FC8();
    sub_100029760(&qword_100048828, &type metadata accessor for EmbedderName);
    sub_100038A18();
    v13 = &v3[v11[6]];
    v14 = *v13;
    v15 = v13[1];
    v20[12] = 2;
    sub_100038998();
    v16 = &v3[v11[7]];
    v17 = *v16;
    v18 = v16[1];
    v20[11] = 3;
    sub_100038998();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000247AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100037FC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100001B40(&qword_100048808, &qword_10003A098);
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v39);
  v9 = &v31 - v8;
  v10 = type metadata accessor for EmbedParameters(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 0;
  v15 = v11[7];
  v35 = v4;
  v36 = v3;
  (*(v4 + 104))(&v14[v15], enum case for EmbedderName.MADTextEmbedder(_:), v3);
  v16 = &v14[v11[8]];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v14[v11[9]];
  *v17 = 0;
  v17[1] = 0;
  v18 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002BCAC();
  v38 = v9;
  v19 = v40;
  sub_100038B58();
  if (v19)
  {
    sub_10000387C(a1);
  }

  else
  {
    v40 = v15;
    v31 = v17;
    v32 = v16;
    v21 = v34;
    v20 = v35;
    v22 = v36;
    v44 = 0;
    sub_10002B830();
    sub_100038948();
    *v14 = v45;
    v43 = 1;
    sub_100029760(&qword_100048818, &type metadata accessor for EmbedderName);
    sub_100038988();
    (*(v20 + 40))(&v14[v40], v21, v22);
    v42 = 2;
    v23 = sub_100038908();
    v24 = v32;
    *v32 = v23;
    v24[1] = v25;
    v41 = 3;
    v27 = sub_100038908();
    v29 = v28;
    (*(v37 + 8))(v38, v39);
    v30 = v31;
    *v31 = v27;
    v30[1] = v29;
    sub_10002BD60(v14, v33, type metadata accessor for EmbedParameters);
    sub_10000387C(0);
  }

  return sub_10002BD00(v14, type metadata accessor for EmbedParameters);
}

uint64_t sub_100024BD8()
{
  v1 = 0x745374757074756FLL;
  v2 = 0x6E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0x4B65726F7453766BLL;
  }

  if (*v0)
  {
    v1 = 0x7265646465626D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100024C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A69C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100024C98(uint64_t a1)
{
  v2 = sub_10002BCAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100024CD4(uint64_t a1)
{
  v2 = sub_10002BCAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100024D40(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048790, &qword_10003A070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B7DC();
  sub_100038B68();
  v21[15] = *v3;
  v21[14] = 0;
  sub_10002B910();
  sub_1000389D8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v21[13] = 1;
    sub_100038A08();
    v12 = *(v3 + 16);
    v13 = *(v3 + 24);
    v21[12] = 2;
    sub_100038998();
    v21[11] = *(v3 + 32);
    v21[10] = 3;
    sub_10002B964();
    sub_1000389D8();
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v21[9] = 4;
    sub_100038998();
    v16 = *(v3 + 56);
    v17 = *(v3 + 64);
    v21[8] = 5;
    sub_100038998();
    v18 = *(v3 + 72);
    v19 = *(v3 + 80);
    v21[7] = 6;
    sub_100038998();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100024FB8()
{
  v1 = *v0;
  v2 = 0x7274537475706E69;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x6562614C61746164;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x4B65726F7453766BLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 107;
  if (v1 != 1)
  {
    v5 = 0x6F4D7265746C6966;
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

uint64_t sub_1000250B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002A810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000250E8(uint64_t a1)
{
  v2 = sub_10002B7DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025124(uint64_t a1)
{
  v2 = sub_10002B7DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100025160@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002AA78(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000251D4(void *a1)
{
  v3 = sub_100001B40(&qword_100048768, &qword_10003A060);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B788();
  sub_100038B68();
  v10[15] = 0;
  sub_1000389F8();
  if (!v1)
  {
    v10[14] = 1;
    sub_1000389F8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10002536C()
{
  if (*v0)
  {
    result = 0x637265506E61656DLL;
  }

  else
  {
    result = 0x6C616E4165726F63;
  }

  *v0;
  return result;
}

uint64_t sub_1000253C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E4165726F63 && a2 == 0xED00007363697479;
  if (v6 || (sub_100038A58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x637265506E61656DLL && a2 == 0xEF73656C69746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100038A58();

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

uint64_t sub_1000254B8(uint64_t a1)
{
  v2 = sub_10002B788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000254F4(uint64_t a1)
{
  v2 = sub_10002B788();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100025530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002B034(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_100025568(void *a1)
{
  v2 = *v1;
  v1[1];
  return sub_1000251D4(a1);
}

uint64_t sub_100025598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100001B40(&qword_100048750, &qword_10003A050);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B734();
  sub_100038B68();
  v16 = 0;
  sub_1000389E8();
  if (!v5)
  {
    v15 = 1;
    sub_1000389E8();
  }

  return (*(v8 + 8))(v11, v7);
}

Swift::Int sub_10002572C()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038B08(v1);
  return sub_100038B18();
}

Swift::Int sub_100025774()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038B08(v1);
  return sub_100038B18();
}

uint64_t sub_1000257B8()
{
  if (*v0)
  {
    result = 0x72506D6574737973;
  }

  else
  {
    result = 0x64496C65646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1000257FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496C65646F6DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_100038A58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEC00000074706D6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100038A58();

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

uint64_t sub_1000258DC(uint64_t a1)
{
  v2 = sub_10002B734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025918(uint64_t a1)
{
  v2 = sub_10002B734();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100025954@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002B1E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000259A4(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048738, &qword_10003A040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002B6E0();
  sub_100038B68();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_100038998();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_100038998();
  v16 = v3[4];
  v17 = *(v3 + 40);
  v18[13] = 2;
  sub_1000389B8();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100025B48()
{
  *v0;
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_100025B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002B3B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100025BC0(uint64_t a1)
{
  v2 = sub_10002B6E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100025BFC(uint64_t a1)
{
  v2 = sub_10002B6E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100025C38@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10002B4D4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100025C94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x656D6F6962;
  if (v2 != 1)
  {
    v4 = 0x65726F7453766BLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x79726F6D654D6E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x656D6F6962;
  if (*a2 != 1)
  {
    v8 = 0x65726F7453766BLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79726F6D654D6E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100038A58();
  }

  return v11 & 1;
}

Swift::Int sub_100025D90()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100025E30()
{
  *v0;
  *v0;
  sub_100038678();
}

Swift::Int sub_100025EBC()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_100025F58@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002BDC8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100025F88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656D6F6962;
  if (v2 != 1)
  {
    v5 = 0x65726F7453766BLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79726F6D654D6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1000260EC()
{
  result = qword_100048630;
  if (!qword_100048630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048630);
  }

  return result;
}

unint64_t sub_100026188()
{
  result = qword_100048648;
  if (!qword_100048648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100048648);
  }

  return result;
}

uint64_t sub_1000261DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726170736E617274;
  v4 = 0xEC00000079636E65;
  if (v2 != 1)
  {
    v3 = 7564659;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C69616D65;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x726170736E617274;
  v8 = 0xEC00000079636E65;
  if (*a2 != 1)
  {
    v7 = 7564659;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C69616D65;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100038A58();
  }

  return v11 & 1;
}

Swift::Int sub_1000262DC()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_10002637C()
{
  *v0;
  *v0;
  sub_100038678();
}

Swift::Int sub_100026408()
{
  v1 = *v0;
  sub_100038AF8();
  sub_100038678();

  return sub_100038B18();
}

uint64_t sub_1000264A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002CF2C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000264D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC00000079636E65;
  v5 = 0x726170736E617274;
  if (v2 != 1)
  {
    v5 = 7564659;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C69616D65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000265F0(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048A08, &qword_10003ABB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002E6D4();
  sub_100038B68();
  v11 = *v3;
  LOBYTE(v22) = 0;
  sub_100038A08();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v22) = 1;
    sub_100038A08();
    v13 = v3[2];
    LOBYTE(v22) = 2;
    sub_100038A08();
    v14 = *(v3 + 24);
    LOBYTE(v22) = 3;
    sub_1000389A8();
    v15 = *(v3 + 25);
    LOBYTE(v22) = 4;
    sub_1000389A8();
    v16 = *(v3 + 26);
    LOBYTE(v22) = 5;
    sub_1000389A8();
    v17 = v3[4];
    v18 = *(v3 + 40);
    LOBYTE(v22) = 6;
    sub_1000389C8();
    v19 = *(v3 + 4);
    v22 = *(v3 + 3);
    v23 = v19;
    v24 = *(v3 + 80);
    v21[15] = 7;
    sub_10002E854();
    sub_1000389D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10002687C()
{
  v1 = *v0;
  v2 = 0x737961447473616CLL;
  v3 = 0x676E696C706D6173;
  if (v1 != 6)
  {
    v3 = 0x72437265746C6966;
  }

  v4 = 0x654D656C676E6973;
  if (v1 != 4)
  {
    v4 = 0x5470756E61656C63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74676E654C78616DLL;
  if (v1 != 2)
  {
    v5 = 0x654D7265746C6966;
  }

  if (*v0)
  {
    v2 = 0x617373654D78616DLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000269B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002CF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000269EC(uint64_t a1)
{
  v2 = sub_10002E6D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026A28(uint64_t a1)
{
  v2 = sub_10002E6D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100026A64@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002D238(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100026AD8(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048A18, &qword_10003ABB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002E7AC();
  sub_100038B68();
  v11 = *v3;
  v19[15] = 0;
  sub_100038A08();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v19[14] = 1;
  sub_100038998();
  v14 = v3[3];
  v15 = v3[4];
  v19[13] = 2;
  sub_100038998();
  v17 = v3[5];
  v18 = v3[6];
  v19[12] = 3;
  sub_100038998();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100026C98()
{
  v1 = 0x746E65764578616DLL;
  v2 = 0x6C65646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x7265566C65646F6DLL;
  }

  if (*v0)
  {
    v1 = 0x65736143657375;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100026D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002D800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100026D44(uint64_t a1)
{
  v2 = sub_10002E7AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100026D80(uint64_t a1)
{
  v2 = sub_10002E7AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100026DBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002D96C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100026E24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100001B40(&qword_100048A20, &qword_10003ABC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002E800();
  sub_100038B68();
  v17 = 0;
  sub_1000389C8();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v16 = 1;
  sub_1000389A8();
  v15 = 2;
  sub_100038998();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100026FE0()
{
  v1 = 0x796C6E4F746E6573;
  if (*v0 != 1)
  {
    v1 = 0x65736143657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65764578616DLL;
  }
}

uint64_t sub_100027040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002DC04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100027074(uint64_t a1)
{
  v2 = sub_10002E800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000270B0(uint64_t a1)
{
  v2 = sub_10002E800();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000270EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10002DD24(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = HIBYTE(v5);
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100027178()
{
  v1 = qword_10003B2C8[*v0];
  sub_100038678();
}

uint64_t sub_1000271C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100029E60(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000272CC(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_100048AD0, &qword_10003B1B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002F3E4();
  sub_100038B68();
  v17 = *v3;
  v16[7] = 0;
  sub_100001B40(&qword_100048A48, qword_10003AD10);
  sub_10002F438(&qword_100048AD8, sub_10002F504);
  sub_1000389D8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = *(v3 + 16);
  v16[6] = 1;
  sub_1000389C8();
  v14 = v3[3];
  v15 = *(v3 + 32);
  v16[5] = 2;
  sub_1000389C8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000274D0()
{
  v1 = 0x756F487472617473;
  if (*v0 != 1)
  {
    v1 = 0x72756F48646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961446B656577;
  }
}

uint64_t sub_100027530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002DF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100027558(uint64_t a1)
{
  v2 = sub_10002F3E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100027594(uint64_t a1)
{
  v2 = sub_10002F3E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000275D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002E030(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_100027630(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x64496769666E6F63;
    v6 = 0x7365526563726F66;
    v7 = 0xD000000000000012;
    if (a1 != 3)
    {
      v7 = 0x736567617473;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6E75526563726F66;
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
    v1 = 0xD000000000000013;
    if (a1 != 9)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000012;
    }

    v2 = 0xD000000000000011;
    v3 = 0x7261506465626D65;
    if (a1 != 6)
    {
      v3 = 0x72615065726F6373;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000277AC(void *a1)
{
  v3 = v1;
  v5 = sub_100001B40(&qword_1000486C0, &qword_10003A008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_100029384();
  sub_100038B68();
  v11 = *v3;
  LOBYTE(v75[0]) = 0;
  sub_100038A08();
  if (!v2)
  {
    v12 = *(v3 + 8);
    LOBYTE(v75[0]) = 1;
    sub_1000389F8();
    v13 = *(v3 + 9);
    LOBYTE(v75[0]) = 2;
    sub_1000389A8();
    v14 = v3[2];
    v15 = *(v3 + 24);
    LOBYTE(v75[0]) = 3;
    sub_1000389C8();
    v78 = v3[4];
    v77 = 4;
    sub_100001B40(&qword_100048640, qword_100039D00);
    sub_100029640(&qword_1000486C8, sub_1000296B8);
    sub_100038A18();
    v16 = *(v3 + 23);
    v75[8] = *(v3 + 21);
    v75[9] = v16;
    v75[10] = *(v3 + 25);
    v76 = v3[27];
    v17 = *(v3 + 15);
    v75[4] = *(v3 + 13);
    v75[5] = v17;
    v18 = *(v3 + 19);
    v75[6] = *(v3 + 17);
    v75[7] = v18;
    v19 = *(v3 + 7);
    v75[0] = *(v3 + 5);
    v75[1] = v19;
    v20 = *(v3 + 11);
    v75[2] = *(v3 + 9);
    v75[3] = v20;
    v21 = *(v3 + 23);
    v71 = *(v3 + 21);
    v72 = v21;
    v73 = *(v3 + 25);
    v74 = v3[27];
    v22 = *(v3 + 15);
    v67 = *(v3 + 13);
    v68 = v22;
    v23 = *(v3 + 19);
    v69 = *(v3 + 17);
    v70 = v23;
    v24 = *(v3 + 7);
    v63 = *(v3 + 5);
    v64 = v24;
    v25 = *(v3 + 11);
    v65 = *(v3 + 9);
    v66 = v25;
    v62 = 5;
    sub_10001FA38(v75, v60, &qword_100048300, &qword_100039558);
    sub_10002970C();
    sub_1000389D8();
    v60[8] = v71;
    v60[9] = v72;
    v60[10] = v73;
    v61 = v74;
    v60[4] = v67;
    v60[5] = v68;
    v60[6] = v69;
    v60[7] = v70;
    v60[0] = v63;
    v60[1] = v64;
    v60[2] = v65;
    v60[3] = v66;
    sub_10001FD94(v60, &qword_100048300, &qword_100039558);
    v26 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
    v27 = v26[10];
    v59 = 6;
    type metadata accessor for EmbedParameters(0);
    sub_100029760(&qword_1000486E0, type metadata accessor for EmbedParameters);
    sub_1000389D8();
    v28 = v3 + v26[11];
    v29 = *(v28 + 48);
    v30 = *(v28 + 16);
    v55 = *(v28 + 32);
    v56 = v29;
    v31 = *(v28 + 48);
    v57 = *(v28 + 64);
    v32 = *(v28 + 16);
    v54[0] = *v28;
    v54[1] = v32;
    v50 = v55;
    v51 = v31;
    v52 = *(v28 + 64);
    v58 = *(v28 + 80);
    v53 = *(v28 + 80);
    v48 = v54[0];
    v49 = v30;
    v47 = 7;
    sub_10001FA38(v54, v45, &qword_100048308, &qword_100039560);
    sub_1000297A8();
    sub_1000389D8();
    v45[2] = v50;
    v45[3] = v51;
    v45[4] = v52;
    v46 = v53;
    v45[0] = v48;
    v45[1] = v49;
    sub_10001FD94(v45, &qword_100048308, &qword_100039560);
    LOWORD(v40) = *(v3 + v26[12]);
    v44 = 8;
    sub_1000297FC();
    sub_1000389D8();
    v33 = (v3 + v26[13]);
    v34 = v33[1];
    v40 = *v33;
    v41 = v34;
    v44 = 9;
    sub_100029850();
    sub_1000389D8();
    v35 = (v3 + v26[14]);
    v36 = *(v35 + 4);
    v37 = *(v35 + 40);
    v38 = v35[1];
    v40 = *v35;
    v41 = v38;
    v42 = v36;
    v43 = v37;
    v44 = 10;
    sub_1000298A4();
    sub_1000389D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100027E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_100001B40(&qword_1000482D0, &unk_100039900);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v60 - v5;
  v66 = sub_100001B40(&qword_100048670, &qword_10003A000);
  v64 = *(v66 - 8);
  v6 = *(v64 + 64);
  __chkstk_darwin(v66);
  v119 = &v60 - v7;
  v8 = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  *(v12 + 4) = 0;
  *(v12 + 2) = 0;
  v12[24] = 1;
  *(v12 + 4) = &off_100045748;
  sub_100028A38(v117);
  v13 = v117[9];
  *(v12 + 168) = v117[8];
  *(v12 + 184) = v13;
  *(v12 + 200) = v117[10];
  v14 = v117[5];
  *(v12 + 104) = v117[4];
  *(v12 + 120) = v14;
  v15 = v117[7];
  *(v12 + 136) = v117[6];
  *(v12 + 152) = v15;
  v16 = v117[1];
  *(v12 + 40) = v117[0];
  *(v12 + 56) = v16;
  v17 = v117[3];
  *(v12 + 72) = v117[2];
  *(v12 + 27) = v118;
  *(v12 + 88) = v17;
  v18 = v9[12];
  v19 = type metadata accessor for EmbedParameters(0);
  v20 = *(*(v19 - 8) + 56);
  v63 = v18;
  v20(&v12[v18], 1, 1, v19);
  v21 = &v12[v9[13]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 1;
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 10) = 0;
  v22 = v9[14];
  *&v12[v22] = 2;
  v23 = &v12[v9[15]];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v24 = v9[16];
  v69 = v12;
  v25 = &v12[v24];
  *v25 = xmmword_1000398F0;
  *(v25 + 3) = 0;
  *(v25 + 4) = 0;
  *(v25 + 2) = 0;
  v25[40] = 0;
  v26 = a1;
  v27 = a1[3];
  v28 = v26[4];
  v68 = v26;
  sub_1000036D0(v26, v27);
  sub_100029384();
  v29 = v67;
  sub_100038B58();
  if (v29)
  {
    sub_10000387C(v68);
    v59 = v69;
  }

  else
  {
    v67 = v21;
    v61 = v22;
    v30 = v64;
    v31 = v65;
    LOBYTE(v105) = 0;
    v32 = sub_100038978();
    v33 = v69;
    *v69 = v32;
    LOBYTE(v105) = 1;
    *(v33 + 8) = sub_100038968() & 1;
    LOBYTE(v105) = 2;
    *(v33 + 9) = sub_100038918();
    LOBYTE(v105) = 3;
    *(v33 + 16) = sub_100038938();
    *(v33 + 24) = v35 & 1;
    sub_100001B40(&qword_100048640, qword_100039D00);
    LOBYTE(v102[0]) = 4;
    sub_100029640(&qword_100048680, sub_1000293D8);
    sub_100038988();
    *(v69 + 4) = v105;
    v104 = 5;
    sub_10002942C();
    sub_100038948();
    v98 = v113;
    v99 = v114;
    v100 = v115;
    v101 = v116;
    v94 = v109;
    v95 = v110;
    v96 = v111;
    v97 = v112;
    v90 = v105;
    v91 = v106;
    v92 = v107;
    v93 = v108;
    v36 = v69;
    v37 = *(v69 + 184);
    v102[8] = *(v69 + 168);
    v102[9] = v37;
    v102[10] = *(v69 + 200);
    v103 = *(v69 + 27);
    v38 = *(v69 + 120);
    v102[4] = *(v69 + 104);
    v102[5] = v38;
    v39 = *(v69 + 152);
    v102[6] = *(v69 + 136);
    v102[7] = v39;
    v40 = *(v69 + 56);
    v102[0] = *(v69 + 40);
    v102[1] = v40;
    v41 = *(v69 + 88);
    v102[2] = *(v69 + 72);
    v102[3] = v41;
    sub_10001FD94(v102, &qword_100048300, &qword_100039558);
    v42 = v99;
    *(v36 + 168) = v98;
    *(v36 + 184) = v42;
    *(v36 + 200) = v100;
    v43 = v95;
    *(v36 + 104) = v94;
    *(v36 + 120) = v43;
    v44 = v97;
    *(v36 + 136) = v96;
    *(v36 + 152) = v44;
    v45 = v91;
    *(v36 + 40) = v90;
    *(v36 + 56) = v45;
    v46 = v93;
    *(v36 + 72) = v92;
    *(v36 + 216) = v101;
    *(v36 + 88) = v46;
    LOBYTE(v84) = 6;
    sub_100029760(&qword_100048698, type metadata accessor for EmbedParameters);
    sub_100038948();
    sub_100029480(v31, &v69[v63]);
    v83 = 7;
    sub_1000294F0();
    sub_100038948();
    v77 = v86;
    v78 = v87;
    v79 = v88;
    v80 = v89;
    v75 = v84;
    v76 = v85;
    v47 = v67;
    v48 = *(v67 + 3);
    v81[2] = *(v67 + 2);
    v81[3] = v48;
    v81[4] = *(v67 + 4);
    v82 = *(v67 + 10);
    v49 = *(v67 + 1);
    v81[0] = *v67;
    v81[1] = v49;
    sub_10001FD94(v81, &qword_100048308, &qword_100039560);
    v50 = v78;
    *(v47 + 2) = v77;
    *(v47 + 3) = v50;
    *(v47 + 4) = v79;
    *(v47 + 10) = v80;
    v51 = v76;
    *v47 = v75;
    *(v47 + 1) = v51;
    v74 = 8;
    sub_100029544();
    sub_100038948();
    *&v69[v61] = v70;
    v74 = 9;
    sub_100029598();
    sub_100038948();
    v52 = v71;
    *v23 = v70;
    *(v23 + 1) = v52;
    v74 = 10;
    sub_1000295EC();
    v53 = v66;
    v54 = v119;
    sub_100038948();
    (*(v30 + 8))(v54, v53);
    v55 = v72;
    v56 = v73;
    v57 = v71;
    *v25 = v70;
    *(v25 + 1) = v57;
    *(v25 + 4) = v55;
    v25[40] = v56;
    v58 = v69;
    sub_10002BD60(v69, v62, type metadata accessor for ZeoliteEvalExtensionConfig);
    sub_10000387C(v68);
    v59 = v58;
  }

  return sub_10002BD00(v59, type metadata accessor for ZeoliteEvalExtensionConfig);
}

uint64_t sub_100028634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002E28C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100028668(uint64_t a1)
{
  v2 = sub_100029384();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000286A4(uint64_t a1)
{
  v2 = sub_100029384();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100028710()
{
  v1 = sub_100038B48();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = type metadata accessor for ZeoliteEvalExtensionConfig(0);
  v6 = sub_10001FB44(&v25);
  sub_10002BD60(v0, v6, type metadata accessor for ZeoliteEvalExtensionConfig);
  sub_100038B28();
  v7 = sub_100038B38();
  (*(v2 + 8))(v5, v1);
  v19[1] = v7;
  sub_100038898();
  sub_1000388E8();
  if (*(&v27 + 1))
  {
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      v9._object = *(&v25 + 1);
      if (*(&v25 + 1))
      {
        v9._countAndFlagsBits = v22;
        v20 = 0;
        v21 = 0xE000000000000000;
        sub_100038698(v9);
        v28._countAndFlagsBits = 8250;
        v28._object = 0xE200000000000000;
        sub_100038698(v28);
        sub_1000036D0(&v23, *(&v24 + 1));
        sub_100038A48();
        v10 = v20;
        v11 = v21;
        sub_10001FD94(&v22, &qword_100048660, &qword_100039FF0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100029278(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_100029278((v12 > 1), v13 + 1, 1, v8);
        }

        *(v8 + 2) = v13 + 1;
        v14 = &v8[16 * v13];
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      else
      {
        sub_10001FD94(&v22, &qword_100048660, &qword_100039FF0);
      }

      sub_1000388E8();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  *&v25 = 0xD00000000000001BLL;
  *(&v25 + 1) = 0x800000010003BAC0;
  *&v22 = v8;
  sub_100001B40(&qword_100048650, &qword_100039FE8);
  sub_10001F82C(&qword_100048658, &qword_100048650, &qword_100039FE8);
  v15 = sub_100038618();
  v17 = v16;

  v29._countAndFlagsBits = v15;
  v29._object = v17;
  sub_100038698(v29);

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  sub_100038698(v30);
  return v25;
}

double sub_100028A38(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 2;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

uint64_t sub_100028A68(void *a1)
{
  v3 = sub_100001B40(&qword_100048998, &unk_10003AB70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002E62C();
  sub_100038B68();
  v16 = 0;
  sub_100037F08();
  sub_100029760(&qword_1000489A8, &type metadata accessor for Date);
  sub_100038A18();
  if (!v1)
  {
    v9 = type metadata accessor for ExecutionState(0);
    v10 = *(v9 + 20);
    v15 = 1;
    sub_1000389D8();
    v11 = *(v9 + 24);
    v14 = 2;
    sub_1000389D8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100028C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_100001B40(&qword_100048178, &unk_100039530);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v27 - v8;
  v9 = sub_100037F08();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v9);
  v34 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100001B40(&qword_100048A28, &qword_10003ABC8);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v16 = type metadata accessor for ExecutionState(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  sub_1000036D0(a1, a1[3]);
  sub_10002E62C();
  sub_100038B58();
  if (v2)
  {
    return sub_10000387C(a1);
  }

  v21 = v33;
  v27 = v16;
  v28 = v19;
  v29 = a1;
  v39 = 0;
  sub_100029760(&qword_100048A30, &type metadata accessor for Date);
  v22 = v34;
  sub_100038988();
  (*(v32 + 32))(v28, v22, v9);
  v38 = 1;
  sub_100038948();
  sub_10002E8A8(v21, &v28[*(v27 + 20)]);
  v37 = 2;
  v23 = v31;
  sub_100038948();
  v24 = v29;
  (*(v35 + 8))(v15, v36);
  v25 = v28;
  sub_10002E8A8(v23, &v28[*(v27 + 24)]);
  sub_10002BD60(v25, v30, type metadata accessor for ExecutionState);
  sub_10000387C(v24);
  return sub_10002BD00(v25, type metadata accessor for ExecutionState);
}

uint64_t sub_100029108()
{
  v1 = 0x726575517473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D6574497473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706D6F437473616CLL;
  }
}

uint64_t sub_100029180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002F2BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000291A8(uint64_t a1)
{
  v2 = sub_10002E62C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000291E4(uint64_t a1)
{
  v2 = sub_10002E62C();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_100029278(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B40(&qword_100048668, &qword_100039FF8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}