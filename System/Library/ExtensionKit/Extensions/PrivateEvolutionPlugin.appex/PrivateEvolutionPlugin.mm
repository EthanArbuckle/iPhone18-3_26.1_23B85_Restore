uint64_t Embedder.embeddingModel.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_10001D574();
}

uint64_t sub_100001D04()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() service];
  v1[1] = 0;
  v1[2] = 0;
  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t MADTextEmbedder.init(version:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100001DAC, 0, 0);
}

uint64_t sub_100001DAC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v3 = [objc_opt_self() service];
  v3[1] = v1;
  v3[2] = v2;
  v4 = v0[1];

  return v4();
}

uint64_t MADTextEmbedder.embed(text:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  *(v3 + 56) = *v2;
  *(v3 + 64) = *(v2 + 8);
  return _swift_task_switch(sub_100001E6C, 0, 0);
}

uint64_t sub_100001E6C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = *(v0 + 64);
  sub_10000210C(&qword_100028260, &unk_10001EA90);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  *(v3 + 16) = xmmword_10001DFC0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100001F60;

  return MADTextEmbedder.embed(texts:)(v3);
}

uint64_t sub_100001F60(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100002080, 0, 0);
}

void sub_100002080()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    if (!*(v1 + 16))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  v3(v2);
}

uint64_t sub_10000210C(uint64_t *a1, uint64_t *a2)
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

uint64_t MADTextEmbedder.embed(texts:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v1 + 1);
  return _swift_task_switch(sub_100002180, 0, 0);
}

uint64_t sub_100002180()
{
  v1 = *(v0 + 48);
  v8 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_10000210C(&qword_100028268, &qword_10001E048);
  *v5 = v0;
  v5[1] = sub_1000022A4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x6574286465626D65, 0xED0000293A737478, sub_100002C34, v3, v6);
}

uint64_t sub_1000022A4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1000023BC, 0, 0);
}

uint64_t sub_1000023BC()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v2 = sub_10001D2B4();
    sub_1000047E8(v2, qword_10002A138);
    v3 = sub_10001D294();
    v4 = sub_10001D734();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed at generating embeddings.", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

void sub_1000024DC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v51 = a1;
  v7 = sub_10000210C(&qword_100028320, &qword_10001E258);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v47 - v10;
  v12 = [objc_allocWithZone(MADTextEmbeddingRequest) init];
  [v12 setExtendedContextLength:1];
  if (!a4)
  {
    goto LABEL_8;
  }

  v49 = a4;
  v50 = v8;
  v13 = a2;
  v15 = sub_10001D584();
  v16 = v14;
  if (v15 == 3425357 && v14 == 0xE300000000000000 || (sub_10001D8E4() & 1) != 0)
  {

    [v12 setVersion:4];
LABEL_6:
    a2 = v13;
LABEL_7:
    v8 = v50;
LABEL_8:
    sub_10000210C(&qword_100028328, &unk_10001E260);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10001DFD0;
    *(v17 + 32) = v12;
    sub_100006478(0, &qword_100028330, MADTextRequest_ptr);
    v18 = v12;
    isa = sub_10001D664().super.isa;

    v20 = sub_10001D664().super.isa;
    (*(v8 + 16))(v11, v51, v7);
    v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v22 = swift_allocObject();
    (*(v8 + 32))(v22 + v21, v11, v7);
    *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
    v57 = sub_1000059B0;
    v58 = v22;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100003698;
    v56 = &unk_100025328;
    v23 = _Block_copy(&aBlock);
    v24 = v18;

    [a2 performRequests:isa text:v20 identifier:0 completionHandler:v23];
    _Block_release(v23);

    return;
  }

  if (v15 == 3490893 && v16 == 0xE300000000000000 || (sub_10001D8E4() & 1) != 0)
  {

    [v12 setVersion:5];
    goto LABEL_6;
  }

  if (v15 == 3556429 && v16 == 0xE300000000000000 || (v48 = sub_10001D8E4(), v25 = v49, , , (v48 & 1) != 0))
  {

    [v12 setVersion:7];
    a2 = v13;
    goto LABEL_7;
  }

  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = a3 & 0xFFFFFFFFFFFFLL;
    a2 = v13;
    if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if ((v25 & 0x1000000000000000) == 0)
      {
        if ((a3 & 0x1000000000000000) != 0)
        {
          v27 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v27 = sub_10001D7B4();
        }

        v8 = v50;
        v28 = *v27;
        if (v28 == 43)
        {
          if (v26 >= 1)
          {
            if (v27)
            {
              v29 = v26 - 1;
              if (v26 != 1)
              {
                v30 = 0;
                v36 = v27 + 1;
                while (1)
                {
                  v37 = *v36 - 48;
                  if (v37 > 9)
                  {
                    goto LABEL_79;
                  }

                  if (!is_mul_ok(v30, 0xAuLL))
                  {
                    goto LABEL_79;
                  }

                  v33 = __CFADD__(10 * v30, v37);
                  v30 = 10 * v30 + v37;
                  if (v33)
                  {
                    goto LABEL_79;
                  }

                  ++v36;
                  if (!--v29)
                  {
                    goto LABEL_85;
                  }
                }
              }
            }

LABEL_80:
            v30 = 0;
            v43 = v26 == 1;
            goto LABEL_82;
          }

          goto LABEL_93;
        }

        if (v28 != 45)
        {
          if (v27 && v26)
          {
            v30 = 0;
            while (1)
            {
              v40 = *v27 - 48;
              if (v40 > 9)
              {
                goto LABEL_79;
              }

              if (!is_mul_ok(v30, 0xAuLL))
              {
                goto LABEL_79;
              }

              v33 = __CFADD__(10 * v30, v40);
              v30 = 10 * v30 + v40;
              if (v33)
              {
                goto LABEL_79;
              }

              ++v27;
              if (!--v26)
              {
                LOBYTE(v29) = 0;
                goto LABEL_85;
              }
            }
          }

          v30 = 0;
          v43 = v26 == 0;
LABEL_82:
          LOBYTE(v29) = v43;
LABEL_85:
          v52 = v29;
          v44 = v29;

          if (v44)
          {
            goto LABEL_8;
          }

LABEL_86:
          [v12 setVersion:v30];
          goto LABEL_8;
        }

        if (v26 >= 1)
        {
          if (v27)
          {
            v29 = v26 - 1;
            if (v26 != 1)
            {
              v30 = 0;
              v31 = v27 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v30, 0xAuLL))
                {
                  break;
                }

                v33 = 10 * v30 >= v32;
                v30 = 10 * v30 - v32;
                if (!v33)
                {
                  break;
                }

                ++v31;
                if (!--v29)
                {
                  goto LABEL_85;
                }
              }

LABEL_79:
              v30 = 0;
              LOBYTE(v29) = 1;
              goto LABEL_85;
            }
          }

          goto LABEL_80;
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

LABEL_88:
      v30 = sub_100005A80(a3, v25, 10);
      v46 = v45;

      v8 = v50;
      if (v46)
      {
        goto LABEL_8;
      }

      goto LABEL_86;
    }

LABEL_87:

    goto LABEL_7;
  }

  a2 = v13;
  if ((v25 & 0xF00000000000000) == 0)
  {
    goto LABEL_87;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    goto LABEL_88;
  }

  v29 = HIBYTE(v25) & 0xF;
  aBlock = a3;
  v54 = v25 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    v8 = v50;
    if (a3 != 45)
    {
      if (v29)
      {
        v30 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v42 = *p_aBlock - 48;
          if (v42 > 9)
          {
            break;
          }

          if (!is_mul_ok(v30, 0xAuLL))
          {
            break;
          }

          v33 = __CFADD__(10 * v30, v42);
          v30 = 10 * v30 + v42;
          if (v33)
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v29)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_79;
    }

    if (v29)
    {
      if (--v29)
      {
        v30 = 0;
        v34 = &aBlock + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          if (!is_mul_ok(v30, 0xAuLL))
          {
            break;
          }

          v33 = 10 * v30 >= v35;
          v30 = 10 * v30 - v35;
          if (!v33)
          {
            break;
          }

          ++v34;
          if (!--v29)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_92;
  }

  v8 = v50;
  if (v29)
  {
    if (--v29)
    {
      v30 = 0;
      v38 = &aBlock + 1;
      while (1)
      {
        v39 = *v38 - 48;
        if (v39 > 9)
        {
          break;
        }

        if (!is_mul_ok(v30, 0xAuLL))
        {
          break;
        }

        v33 = __CFADD__(10 * v30, v39);
        v30 = 10 * v30 + v39;
        if (v33)
        {
          break;
        }

        ++v38;
        if (!--v29)
        {
          goto LABEL_85;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_94:
  __break(1u);
}

void sub_100002C40(int a1, uint64_t a2, int a3, id a4)
{
  if (!a2)
  {
    if (a1 == -1 || (v10 = [a4 embeddingResults]) == 0)
    {
      if (qword_100028248 != -1)
      {
        swift_once();
      }

      v22 = sub_10001D2B4();
      sub_1000047E8(v22, qword_10002A138);
      v23 = sub_10001D294();
      v24 = sub_10001D734();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "No results returned by MAD service.", v25, 2u);
      }

      v35 = 0;
      goto LABEL_37;
    }

    v11 = v10;
    sub_100006478(0, &qword_100028338, MADTextEmbeddingResult_ptr);
    v12 = sub_10001D674();

    if (v12 >> 62)
    {
      v13 = sub_10001D7C4();
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        v14 = 0;
        v15 = &_swiftEmptyArrayStorage;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v16 = sub_10001D7A4();
          }

          else
          {
            v16 = *(v12 + 8 * v14 + 32);
          }

          v17 = v16;
          sub_100003168();
          if (v18)
          {
            v19 = v18;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100004820(0, v15[2] + 1, 1, v15);
            }

            v21 = v15[2];
            v20 = v15[3];
            if (v21 >= v20 >> 1)
            {
              v15 = sub_100004820((v20 > 1), v21 + 1, 1, v15);
            }

            v15[2] = v21 + 1;
            v15[v21 + 4] = v19;
          }

          else
          {
          }

          ++v14;
        }

        while (v13 != v14);
        goto LABEL_31;
      }
    }

    v15 = &_swiftEmptyArrayStorage;
LABEL_31:
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v26 = sub_10001D2B4();
    sub_1000047E8(v26, qword_10002A138);

    v27 = sub_10001D294();
    v28 = sub_10001D724();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      v31 = sub_10001D684();
      v33 = v32;

      v34 = sub_100004CF4(v31, v33, &v35);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Found result: %s", v29, 0xCu);
      sub_100005490(v30);
    }

    else
    {
    }

    v35 = v15;
LABEL_37:
    sub_10000210C(&qword_100028320, &qword_10001E258);
    sub_10001D6C4();
    return;
  }

  swift_errorRetain();
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v4 = sub_10001D2B4();
  sub_1000047E8(v4, qword_10002A138);
  swift_errorRetain();
  v5 = sub_10001D294();
  v6 = sub_10001D734();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed at calling MAD service: %@", v7, 0xCu);
    sub_1000064C0(v8, &qword_100028340, &qword_10001E850);
  }

  v35 = 0;
  sub_10000210C(&qword_100028320, &qword_10001E258);
  sub_10001D6C4();
}

void sub_100003168()
{
  v1 = [v0 embedding];
  v2 = [v1 data];

  v3 = sub_10001CF14();
  v5 = v4;

  v6 = [v0 embedding];
  v7 = [v6 type];

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = [v0 embedding];
    v6 = [v8 count];

    if (qword_100028248 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = sub_10001D2B4();
  sub_1000047E8(v9, qword_10002A138);
  v10 = sub_10001D294();
  v11 = sub_10001D724();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v10, v11, "Embedding type: %lu", v12, 0xCu);
  }

  if (v7 == 2)
  {
    v14 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (v14)
      {
        LODWORD(v15) = HIDWORD(v3) - v3;
        if (__OFSUB__(HIDWORD(v3), v3))
        {
LABEL_51:
          __break(1u);
          return;
        }

        v15 = v15;
      }

      else
      {
        v15 = BYTE6(v5);
      }

      goto LABEL_37;
    }

LABEL_20:
    if (v14 == 2)
    {
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      _VF = __OFSUB__(v22, v23);
      v15 = v22 - v23;
      if (_VF)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_37:
    v36 = v15 / 4;
    sub_1000068E4(v3, v5);
    v27 = sub_10000680C(v36, v3, v5, &type metadata for Float, sub_1000066B8);
    sub_100006520(v3, v5);
    goto LABEL_38;
  }

  if (v7 == 1)
  {
    v13 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v13)
      {
        v14 = BYTE6(v5);
        goto LABEL_27;
      }

LABEL_24:
      LODWORD(v14) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v14 = v14;
      goto LABEL_27;
    }

    if (v13 != 2)
    {
      v14 = 0;
      goto LABEL_27;
    }

    v20 = *(v3 + 16);
    v19 = *(v3 + 24);
    _VF = __OFSUB__(v19, v20);
    v14 = v19 - v20;
    if (!_VF)
    {
LABEL_27:
      v24 = v14;
      sub_1000068E4(v3, v5);
      v25 = sub_10000680C(v24 / 2, v3, v5, &type metadata for Float16, sub_100006574);
      sub_100006520(v3, v5);
      v26 = *(v25 + 16);
      if (v26)
      {
        sub_10000D6EC(0, v26, 0);
        v27 = &_swiftEmptyArrayStorage;
        v28 = *(&_swiftEmptyArrayStorage + 2);
        v29 = 32;
        do
        {
          _H8 = *(v25 + v29);
          v31 = *(&_swiftEmptyArrayStorage + 3);
          if (v28 >= v31 >> 1)
          {
            sub_10000D6EC((v31 > 1), v28 + 1, 1);
          }

          __asm { FCVT            S0, H8 }

          *(&_swiftEmptyArrayStorage + 2) = v28 + 1;
          *(&_swiftEmptyArrayStorage + v28 + 8) = _S0;
          v29 += 2;
          ++v28;
          --v26;
        }

        while (v26);
      }

      else
      {

        v27 = &_swiftEmptyArrayStorage;
      }

LABEL_38:
      v37 = v27[2];
      v38 = 32;
      do
      {
        if (!v37)
        {
          goto LABEL_46;
        }

        v39 = ~*(v27 + v38) & 0x7F800000;
        v38 += 4;
        --v37;
      }

      while (v39);

      v40 = sub_10001D294();
      v41 = sub_10001D734();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Found embedding with nan values. Return zeros embedding.", v42, 2u);
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        if (v6)
        {
          v43 = sub_10001D6A4();
          *(v43 + 16) = v6;
          bzero((v43 + 32), 4 * v6);
        }

LABEL_46:
        sub_100006520(v3, v5);
        return;
      }

      __break(1u);
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_20;
  }

  v16 = sub_10001D294();
  v17 = sub_10001D734();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Embedding type not supported.", v18, 2u);
  }

  sub_100006520(v3, v5);
}

void sub_100003698(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100003750(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000037F4;

  return MADTextEmbedder.embed(text:)(a1, a2);
}

uint64_t sub_1000037F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000038F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006938;

  return MADTextEmbedder.embed(texts:)(a1);
}

uint64_t EmbedderName.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100024E88;
  v8._object = a2;
  v6 = sub_10001D804(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_100003A14()
{
  sub_10001D984();
  sub_10001D5A4();
  return sub_10001D9A4();
}

Swift::Int sub_100003A98()
{
  sub_10001D984();
  sub_10001D5A4();
  return sub_10001D9A4();
}

uint64_t sub_100003AF4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100024EE8;
  v7._object = v3;
  v5 = sub_10001D804(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t generateEmbeddingsFromTexts(textItems:embeddingModelName:embeddingModelVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = sub_10001D284();
  v5[22] = v6;
  v7 = *(v6 - 8);
  v5[23] = v7;
  v8 = *(v7 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return _swift_task_switch(sub_100003D04, 0, 0);
}

uint64_t sub_100003D04()
{
  v46 = v0;
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v1 = sub_10001D2B4();
  *(v0 + 208) = sub_1000047E8(v1, qword_10002A138);
  v2 = sub_10001D294();
  v3 = sub_10001D714();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generating embeddings.", v4, 2u);
  }

  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  if (v6 == 0x457478655444414DLL && v5 == 0xEF7265646465626DLL || (v7 = *(v0 + 144), v8 = *(v0 + 152), (sub_10001D8E4() & 1) != 0))
  {
    v9 = *(v0 + 168);
    v10 = [objc_opt_self() service];

    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    v11 = *(v0 + 160);
    v12 = &protocol witness table for MADTextEmbedder;
    v13 = &type metadata for MADTextEmbedder;
  }

  else
  {
    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    v10 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0uLL;
  }

  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 40) = v13;
  *(v0 + 48) = v12;
  sub_100004C84(v0 + 16, v0 + 96);
  if (*(v0 + 120))
  {
    v14 = *(v0 + 136);
    sub_100004DC0((v0 + 96), v0 + 56);
    v15 = *(v14 + 16);
    *(v0 + 216) = v15;
    if (v15)
    {
      *(v0 + 224) = _swiftEmptyArrayStorage;
      *(v0 + 232) = 0;
      v16 = *(v0 + 136);
      v17 = *(sub_10001D364() - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = *(v0 + 80);
      v20 = *(v0 + 88);
      sub_100004DD8((v0 + 56), v19);
      v21 = sub_10001D354();
      v23 = v22;
      *(v0 + 240) = v22;
      v24 = *(v20 + 16);
      v44 = (v24 + *v24);
      v25 = v24[1];
      v26 = swift_task_alloc();
      *(v0 + 248) = v26;
      *v26 = v0;
      v26[1] = sub_10000426C;

      return v44(v21, v23, v19, v20);
    }

    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    sub_100005490((v0 + 56));
    v40 = _swiftEmptyArrayStorage;
  }

  else
  {
    v28 = *(v0 + 168);
    v29 = *(v0 + 152);
    sub_1000064C0(v0 + 96, &qword_100028270, &qword_10001E058);

    v30 = sub_10001D294();
    v31 = sub_10001D734();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = *(v0 + 160);
      v32 = *(v0 + 168);
      v35 = *(v0 + 144);
      v34 = *(v0 + 152);
      v36 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_100004CF4(v35, v34, &v45);
      *(v36 + 12) = 2080;
      if (v32)
      {
        v37 = v33;
      }

      else
      {
        v37 = 7104878;
      }

      if (v32)
      {
        v38 = v28;
      }

      else
      {
        v38 = 0xE300000000000000;
      }

      v39 = sub_100004CF4(v37, v38, &v45);

      *(v36 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to create embedder with name %s, version: %s.", v36, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000064C0(v0 + 16, &qword_100028270, &qword_10001E058);
    v40 = 0;
  }

  v42 = *(v0 + 192);
  v41 = *(v0 + 200);

  v43 = *(v0 + 8);

  return v43(v40);
}

uint64_t sub_10000426C(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10000438C, 0, 0);
}

uint64_t sub_10000438C()
{
  v1 = v0[28];
  if (!v0[32])
  {
    v17 = v0[26];
    v18 = v0[28];

    v19 = sub_10001D294();
    v20 = sub_10001D734();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to generate embedding from text.", v21, 2u);
    }

    sub_1000064C0((v0 + 2), &qword_100028270, &qword_10001E058);
    v9 = 0;
    goto LABEL_11;
  }

  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  sub_10001D274();
  sub_10001D264();
  v6 = v0[10];
  v7 = v0[11];
  sub_100004DD8(v0 + 7, v6);
  (*(v7 + 8))(v6, v7);
  sub_10001D244();
  (*(v5 + 16))(v3, v2, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v0[28];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100004AA8(0, v9[2] + 1, 1, v0[28], &qword_100028310, &qword_10001E248, &type metadata accessor for ZeoliteEmbedding);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_100004AA8(v10 > 1, v11 + 1, 1, v9, &qword_100028310, &qword_10001E248, &type metadata accessor for ZeoliteEmbedding);
  }

  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[29] + 1;
  (*(v15 + 8))(v0[25], v14);
  v9[2] = v11 + 1;
  (*(v15 + 32))(v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v11, v13, v14);
  if (v16 == v12)
  {
    sub_1000064C0((v0 + 2), &qword_100028270, &qword_10001E058);
LABEL_11:
    sub_100005490(v0 + 7);
    v23 = v0[24];
    v22 = v0[25];

    v24 = v0[1];

    return v24(v9);
  }

  v26 = v0[29] + 1;
  v0[28] = v9;
  v0[29] = v26;
  v27 = v0[17];
  v28 = *(sub_10001D364() - 8);
  v29 = v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26;
  v30 = v0[10];
  v31 = v0[11];
  sub_100004DD8(v0 + 7, v30);
  v32 = sub_10001D354();
  v34 = v33;
  v0[30] = v33;
  v35 = *(v31 + 16);
  v38 = (v35 + *v35);
  v36 = v35[1];
  v37 = swift_task_alloc();
  v0[31] = v37;
  *v37 = v0;
  v37[1] = sub_10000426C;

  return v38(v32, v34, v30, v31);
}

uint64_t sub_1000047E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100004820(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000210C(&qword_100028348, &qword_10001E270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000210C(&qword_100028350, qword_10001E278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000497C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000210C(&qword_100028298, &qword_10001EA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_100004AA8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000210C(a5, a6);
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

uint64_t sub_100004C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_100028270, &qword_10001E058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004CF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005384(v11, 0, 0, 1, a1, a2);
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
    sub_1000054DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005490(v11);
  return v7;
}

uint64_t sub_100004DC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100004DD8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004E20()
{
  result = qword_100028278;
  if (!qword_100028278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028278);
  }

  return result;
}

unint64_t sub_100004E78()
{
  result = qword_100028280;
  if (!qword_100028280)
  {
    sub_100004EDC(&qword_100028288, &qword_10001E120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028280);
  }

  return result;
}

uint64_t sub_100004EDC(uint64_t *a1, uint64_t *a2)
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

uint64_t dispatch thunk of Embedder.embed(text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1000037F4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Embedder.embed(texts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100006938;

  return v11(a1, a2, a3);
}

__n128 sub_100005190(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000051A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000051EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for EmbedderName(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EmbedderName(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100005330()
{
  result = qword_100028300;
  if (!qword_100028300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028300);
  }

  return result;
}

unint64_t sub_100005384(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005538(a5, a6);
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
    result = sub_10001D7B4();
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

uint64_t sub_100005490(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000054DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100005538(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005584(a1, a2);
  sub_1000056B4(&off_100024E60);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005584(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000057A0(v5, 0);
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

  result = sub_10001D7B4();
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
        v10 = sub_10001D5C4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000057A0(v10, 0);
        result = sub_10001D794();
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

uint64_t sub_1000056B4(uint64_t result)
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

  result = sub_100005814(result, v12, 1, v3);
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

void *sub_1000057A0(uint64_t a1, uint64_t a2)
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

  sub_10000210C(&qword_100028318, &qword_10001E250);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005814(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000210C(&qword_100028318, &qword_10001E250);
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

uint64_t sub_100005908()
{
  v1 = sub_10000210C(&qword_100028320, &qword_10001E258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1000059B0(int a1, uint64_t a2)
{
  v5 = *(sub_10000210C(&qword_100028320, &qword_10001E258) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100002C40(a1, a2, v2 + v6, v7);
}

uint64_t sub_100005A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_100005A80(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_10001D614();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100006004();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_10001D7B4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100006004()
{
  v0 = sub_10001D624();
  v4 = sub_100006084(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100006084(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10001D594();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_10001D754();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000057A0(v9, 0);
  v12 = sub_1000061DC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_10001D594();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_10001D7B4();
LABEL_4:

  return sub_10001D594();
}

unint64_t sub_1000061DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1000063FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10001D5F4();
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
          result = sub_10001D7B4();
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

    result = sub_1000063FC(v12, a6, a7);
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

    result = sub_10001D5D4();
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

uint64_t sub_1000063FC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10001D604();
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
    v5 = sub_10001D5E4();
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

uint64_t sub_100006478(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000064C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000210C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006520(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006574(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v17 = v15;
      v18 = *a2 + v15 / 2;
      if (!__OFADD__(*a2, v17 / 2))
      {
        *a2 = v18;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 + 0x4000000000000000 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 2 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_10001CF04();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1000066B8(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_22;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v8 = v8;
    if (v8 < 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = BYTE6(a4);
    if (!BYTE6(a4))
    {
LABEL_22:
      v15 = 0;
LABEL_26:
      v11 = __OFADD__(*a2, v15 / 4);
      v17 = *a2 + v15 / 4;
      if (!v11)
      {
        *a2 = v17;
        return result;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a3 + 16);
    }

    else
    {
      v12 = a3;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_30;
  }

  if (v14 < v12)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a2;
    result = sub_10001CF04();
    v15 = v14 - v12;
    if (__OFSUB__(v14, v12))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    a2 = v16;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10000680C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t *, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  if (result)
  {
    v10 = sub_10001D6A4();
    v10[2] = v9;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = 0;
  v11[0] = v10 + 4;
  v11[1] = v9;
  result = a5(v11, &v12, a2, a3);
  if (v5)
  {
    if (v12 <= v9)
    {
      v10[2] = v12;

      return v10;
    }

    goto LABEL_12;
  }

  if (v12 <= v9)
  {
    v10[2] = v12;
    return v10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000068E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000693C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D284();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  swift_beginAccess();
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100004954(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100004954(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 16) = v9;
  return swift_endAccess();
}

uint64_t ConversationEmbedding.embeddingModel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

PrivateEvolutionPlugin::ConversationEmbedding __swiftcall ConversationEmbedding.init(conversationId:embedding:embeddingModel:)(Swift::Int64 conversationId, Swift::OpaquePointer embedding, Swift::String_optional embeddingModel)
{
  *v3 = conversationId;
  *(v3 + 8) = embedding;
  *(v3 + 16) = embeddingModel;
  result.embeddingModel = embeddingModel;
  result.embedding = embedding;
  result.conversationId = conversationId;
  return result;
}

uint64_t sub_100006B20()
{
  *v0;
  if (*v0)
  {
    return 0x6E69646465626D65;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_100006B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100007FBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100006BD8(uint64_t a1)
{
  v2 = sub_100006E48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100006C14(uint64_t a1)
{
  v2 = sub_100006E48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ConversationEmbedding.encode(to:)(void *a1)
{
  v4 = sub_10000210C(&qword_100028358, &unk_10001E290);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[1] = v1[2];
  v15 = v9;
  v14[0] = v11;
  v12 = a1[4];
  sub_100004DD8(a1, a1[3]);
  sub_100006E48();
  sub_10001D9C4();
  v19 = 0;
  sub_10001D8B4();
  if (!v2)
  {
    v16 = v15;
    v18 = 1;
    sub_10000210C(&qword_100028350, qword_10001E278);
    sub_100007118(&qword_100028368);
    sub_10001D8A4();
    v17 = 2;
    sub_10001D894();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_100006E48()
{
  result = qword_100028360;
  if (!qword_100028360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028360);
  }

  return result;
}

uint64_t ConversationEmbedding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000210C(&qword_100028370, &qword_10001E2A0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v17 - v8;
  v10 = a1[4];
  sub_100004DD8(a1, a1[3]);
  sub_100006E48();
  sub_10001D9B4();
  if (v2)
  {
    return sub_100005490(a1);
  }

  v20 = 0;
  v11 = sub_10001D884();
  sub_10000210C(&qword_100028350, qword_10001E278);
  v19 = 1;
  sub_100007118(&qword_100028378);
  sub_10001D874();
  v17[0] = v17[1];
  v18 = 2;
  v12 = sub_10001D814();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v17[0];
  *a2 = v11;
  a2[1] = v15;
  a2[2] = v12;
  a2[3] = v14;

  sub_100005490(a1);
}

uint64_t sub_100007118(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004EDC(&qword_100028350, qword_10001E278);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EmbeddingItem.sourceType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall EmbeddingItem.init(itemId:embedding:embeddingModel:sourceType:)(PrivateEvolutionPlugin::EmbeddingItem *__return_ptr retstr, Swift::Int64 itemId, Swift::OpaquePointer embedding, Swift::String_optional embeddingModel, Swift::String_optional sourceType)
{
  retstr->itemId = itemId;
  retstr->embedding = embedding;
  retstr->embeddingModel = embeddingModel;
  retstr->sourceType = sourceType;
}

Swift::Int sub_10000720C()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1);
  return sub_10001D9A4();
}

Swift::Int sub_100007284()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1);
  return sub_10001D9A4();
}

uint64_t sub_1000072C8()
{
  v1 = 0x64496D657469;
  v2 = 0x6E69646465626D65;
  if (*v0 != 2)
  {
    v2 = 0x7954656372756F73;
  }

  if (*v0)
  {
    v1 = 0x6E69646465626D65;
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

uint64_t sub_100007354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000080EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100007388(uint64_t a1)
{
  v2 = sub_100007630();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000073C4(uint64_t a1)
{
  v2 = sub_100007630();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EmbeddingItem.encode(to:)(void *a1)
{
  v4 = sub_10000210C(&qword_100028380, &qword_10001E2A8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v15[3] = v1[2];
  v16 = v9;
  v12 = v1[5];
  v15[1] = v1[4];
  v15[2] = v11;
  v15[0] = v12;
  v13 = a1[4];
  sub_100004DD8(a1, a1[3]);
  sub_100007630();
  sub_10001D9C4();
  v21 = 0;
  sub_10001D8B4();
  if (!v2)
  {
    v17 = v16;
    v20 = 1;
    sub_10000210C(&qword_100028350, qword_10001E278);
    sub_100007118(&qword_100028368);
    sub_10001D8A4();
    v19 = 2;
    sub_10001D894();
    v18 = 3;
    sub_10001D894();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_100007630()
{
  result = qword_100028388;
  if (!qword_100028388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028388);
  }

  return result;
}

uint64_t EmbeddingItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10000210C(&qword_100028390, &qword_10001E2B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_100004DD8(a1, a1[3]);
  sub_100007630();
  sub_10001D9B4();
  if (v2)
  {
    return sub_100005490(a1);
  }

  v27 = 0;
  v11 = sub_10001D884();
  sub_10000210C(&qword_100028350, qword_10001E278);
  v26 = 1;
  sub_100007118(&qword_100028378);
  sub_10001D874();
  v12 = v23;
  v25 = 2;
  v21 = sub_10001D814();
  v22 = v14;
  v24 = 3;
  v15 = sub_10001D814();
  v17 = v16;
  v18 = *(v6 + 8);
  v20 = v15;
  v18(v9, v5);
  *a2 = v11;
  a2[1] = v12;
  v19 = v22;
  a2[2] = v21;
  a2[3] = v19;
  a2[4] = v20;
  a2[5] = v17;

  sub_100005490(a1);
}

__n128 sub_100007994(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000079A0(uint64_t a1, int a2)
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

uint64_t sub_1000079E8(uint64_t result, int a2, int a3)
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

__n128 sub_100007A38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100007A4C(uint64_t a1, int a2)
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

uint64_t sub_100007A94(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for EmbeddingItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EmbeddingItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConversationEmbedding.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationEmbedding.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007DB0()
{
  result = qword_100028398;
  if (!qword_100028398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028398);
  }

  return result;
}

unint64_t sub_100007E08()
{
  result = qword_1000283A0;
  if (!qword_1000283A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283A0);
  }

  return result;
}

unint64_t sub_100007E60()
{
  result = qword_1000283A8;
  if (!qword_1000283A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283A8);
  }

  return result;
}

unint64_t sub_100007EB8()
{
  result = qword_1000283B0;
  if (!qword_1000283B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283B0);
  }

  return result;
}

unint64_t sub_100007F10()
{
  result = qword_1000283B8;
  if (!qword_1000283B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283B8);
  }

  return result;
}

unint64_t sub_100007F68()
{
  result = qword_1000283C0;
  if (!qword_1000283C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283C0);
  }

  return result;
}

uint64_t sub_100007FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v4 || (sub_10001D8E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_10001D8E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67)
  {

    return 2;
  }

  else
  {
    v6 = sub_10001D8E4();

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

uint64_t sub_1000080EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_10001D8E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_10001D8E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67 || (sub_10001D8E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570)
  {

    return 3;
  }

  else
  {
    v6 = sub_10001D8E4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

PrivateEvolutionPlugin::TaskParametersError_optional __swiftcall TaskParametersError.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_100024F48;
  v8._object = object;
  v5 = sub_10001D804(v4, v8);

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

  *v3 = v7;
  return result;
}

uint64_t TaskParametersError.rawValue.getter()
{
  if (*v0)
  {
    result = 0x4A64696C61766E69;
  }

  else
  {
    result = 0x6F5464656C696166;
  }

  *v0;
  return result;
}

uint64_t sub_100008334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4A64696C61766E69;
  }

  else
  {
    v4 = 0x6F5464656C696166;
  }

  if (v3)
  {
    v5 = 0xEE0065646F636544;
  }

  else
  {
    v5 = 0xEF617461444E4F53;
  }

  if (*a2)
  {
    v6 = 0x4A64696C61766E69;
  }

  else
  {
    v6 = 0x6F5464656C696166;
  }

  if (*a2)
  {
    v7 = 0xEF617461444E4F53;
  }

  else
  {
    v7 = 0xEE0065646F636544;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10001D8E4();
  }

  return v9 & 1;
}

Swift::Int sub_1000083F4()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_100008490()
{
  *v0;
  sub_10001D5A4();
}

Swift::Int sub_100008518()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D5A4();

  return sub_10001D9A4();
}

uint64_t sub_1000085B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100024F48;
  v8._object = v3;
  v5 = sub_10001D804(v4, v8);

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

void sub_100008610(uint64_t *a1@<X8>)
{
  v2 = 0x6F5464656C696166;
  if (*v1)
  {
    v2 = 0x4A64696C61766E69;
  }

  v3 = 0xEE0065646F636544;
  if (*v1)
  {
    v3 = 0xEF617461444E4F53;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100008678(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_10001D494();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = sub_10001D174();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = sub_10001D424();
  v2[32] = v9;
  v10 = *(v9 - 8);
  v2[33] = v10;
  v11 = *(v10 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v12 = sub_10001D564();
  v2[38] = v12;
  v13 = *(v12 - 8);
  v2[39] = v13;
  v14 = *(v13 + 64) + 15;
  v2[40] = swift_task_alloc();
  v15 = *(*(sub_10000210C(&qword_100028498, &qword_10001E838) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v16 = sub_10000210C(&qword_1000283F0, qword_10001E790);
  v2[42] = v16;
  v17 = *(v16 - 8);
  v2[43] = v17;
  v18 = *(v17 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v19 = sub_10001D094();
  v2[47] = v19;
  v20 = *(v19 - 8);
  v2[48] = v20;
  v21 = *(v20 + 64) + 15;
  v2[49] = swift_task_alloc();
  v22 = sub_10001D0E4();
  v2[50] = v22;
  v23 = *(v22 - 8);
  v2[51] = v23;
  v24 = *(v23 + 64) + 15;
  v2[52] = swift_task_alloc();

  return _swift_task_switch(sub_1000089E0, 0, 0);
}

uint64_t sub_1000089E0()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 384);
  v21 = *(v0 + 376);
  sub_10000210C(&qword_1000284A0, &qword_10001E840);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10001E620;
  sub_10001D0D4();
  sub_10001D0C4();
  *(v0 + 184) = v8;
  sub_10000A820(&qword_1000284A8, &type metadata accessor for PFLPluginConsent);
  sub_10000210C(&qword_1000284B0, &qword_10001E848);
  sub_10000A760(&qword_1000284B8, &qword_1000284B0, &qword_10001E848);
  sub_10001D764();
  *(v0 + 512) = enum case for PFLTaskSource.CKProd(_:);
  v9 = *(v5 + 104);
  *(v0 + 424) = v9;
  *(v0 + 432) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v4);
  v10 = sub_10001D1F4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 440) = sub_10001D1E4();
  v13 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v14 = swift_task_alloc();
  *(v0 + 448) = v14;
  v15 = type metadata accessor for PrivateEvolutionPlugin();
  v16 = sub_10000A820(&qword_100028490, type metadata accessor for PrivateEvolutionPlugin);
  *v14 = v0;
  v14[1] = sub_100008CA0;
  v17 = *(v0 + 328);
  v18 = *(v0 + 192);
  v19 = *(v0 + 200);

  return MLHostExtension.loadConfig<A>(context:)(v17, v18, v15, &type metadata for String, v16, &protocol witness table for String, &protocol witness table for String);
}

uint64_t sub_100008CA0()
{
  v1 = *(*v0 + 448);
  v3 = *v0;

  return _swift_task_switch(sub_100008D9C, 0, 0);
}

uint64_t sub_100008D9C()
{
  v133 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 328);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 368);
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, *(v0 + 200), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_1000064C0(*(v0 + 328), &qword_100028498, &qword_10001E838);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  v10 = *(v0 + 336);
  v9 = *(v0 + 344);
  v11 = sub_10001D2B4();
  sub_1000047E8(v11, qword_10002A138);
  v122 = *(v9 + 16);
  v122(v8, v7, v10);
  v12 = sub_10001D294();
  v13 = sub_10001D714();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 360);
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v132[0] = v120;
    *v18 = 136315138;
    sub_10000A760(&qword_1000284C8, &qword_1000283F0, qword_10001E790);
    v19 = sub_10001D8C4();
    v21 = v20;
    v129 = *(v16 + 8);
    v129(v15, v17);
    v22 = sub_100004CF4(v19, v21, v132);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Configuration: %s", v18, 0xCu);
    sub_100005490(v120);
  }

  else
  {

    v129 = *(v16 + 8);
    v129(v15, v17);
  }

  v23 = *(v0 + 368);
  v24 = *(v0 + 336);
  v25 = *(v0 + 312);
  v26 = *(v0 + 320);
  v27 = *(v0 + 304);
  sub_10001CFD4();
  v28 = *(v0 + 168);
  v29 = *(v0 + 176);
  sub_10001D554();
  v30 = sub_10001D544();
  v32 = v31;

  *(v0 + 456) = v30;
  *(v0 + 464) = v32;
  (*(v25 + 8))(v26, v27);
  v33 = v32 >> 60;
  if (v32 >> 60 == 15)
  {
    v122(*(v0 + 352), *(v0 + 368), *(v0 + 336));
    v34 = sub_10001D294();
    v35 = sub_10001D734();
    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 344);
    v37 = *(v0 + 352);
    v39 = *(v0 + 336);
    if (v36)
    {
      v40 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v132[0] = v125;
      *v40 = 136315138;
      sub_10000A760(&qword_1000284C8, &qword_1000283F0, qword_10001E790);
      v41 = sub_10001D8C4();
      v43 = v42;
      v44 = v39;
      v45 = v129;
      v129(v37, v44);
      v46 = sub_100004CF4(v41, v43, v132);
      v33 = 15;

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to extract task parameters from config %s", v40, 0xCu);
      sub_100005490(v125);
    }

    else
    {

      v52 = v39;
      v45 = v129;
      v129(v37, v52);
    }

    v53 = *(v0 + 440);
    v54 = *(v0 + 368);
    v55 = *(v0 + 336);
    v56 = *(v0 + 344);
    v132[3] = &type metadata for TaskParametersError;
    v132[4] = sub_10000A70C();
    LOBYTE(v132[0]) = v33 > 0xE;
    v57 = objc_allocWithZone(sub_10001CF84());
    v130 = sub_10001CF74();

    v45(v54, v55);
    v58 = *(v0 + 416);
    v59 = *(v0 + 392);
    v61 = *(v0 + 360);
    v60 = *(v0 + 368);
    v62 = *(v0 + 352);
    v64 = *(v0 + 320);
    v63 = *(v0 + 328);
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    v121 = *(v0 + 272);
    v123 = *(v0 + 248);
    v126 = *(v0 + 224);

    v68 = *(v0 + 8);

    return v68(v130);
  }

  else
  {
    v47 = *(v0 + 296);
    v48 = *(v0 + 256);
    v49 = sub_10001CE54();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    sub_10001CE44();
    sub_10000A820(&qword_1000284D0, &type metadata accessor for DataSourceConfig);
    sub_10001CE34();

    v70 = sub_10001D294();
    v71 = sub_10001D714();
    if (os_log_type_enabled(v70, v71))
    {
      v73 = *(v0 + 296);
      v74 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v132[0] = v127;
      *v74 = 136315138;
      swift_beginAccess();
      v75 = sub_10001D3C4();
      v77 = sub_100004CF4(v75, v76, v132);

      *(v74 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v70, v71, "Loaded data source config %s.", v74, 0xCu);
      sub_100005490(v127);
    }

    v78 = *(v0 + 432);
    v79 = *(v0 + 384);
    v80 = *(v0 + 392);
    v81 = *(v0 + 376);
    v82 = *(v0 + 248);
    v83 = *(v0 + 192);
    (*(v0 + 424))(v80, *(v0 + 512), v81);
    sub_10001CFF4();
    sub_10001D144();

    (*(v79 + 8))(v80, v81);
    v84 = *(sub_10001D154() + 16);

    if (v84)
    {
      v85 = *(v0 + 288);
      v87 = *(v0 + 248);
      v86 = *(v0 + 256);
      sub_10001D164();
      v88 = *(v0 + 296);
      v89 = *(v0 + 288);
      v91 = *(v0 + 256);
      v90 = *(v0 + 264);
      swift_beginAccess();
      (*(v90 + 40))(v88, v89, v91);
      v92 = sub_10001D294();
      v93 = sub_10001D714();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = *(v0 + 296);
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v132[0] = v96;
        *v95 = 136315138;
        v97 = sub_10001D3C4();
        v99 = sub_100004CF4(v97, v98, v132);

        *(v95 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v92, v93, "Updated data source config to %s.", v95, 0xCu);
        sub_100005490(v96);
      }
    }

    v100 = *(v0 + 296);
    v101 = *(v0 + 272);
    v102 = *(v0 + 280);
    v103 = *(v0 + 256);
    v104 = *(v0 + 264);
    v105 = *(v0 + 216);
    v124 = *(v0 + 224);
    v128 = *(v0 + 208);
    swift_beginAccess();
    v106 = *(v104 + 16);
    v106(v102, v100, v103);
    v107 = v101;
    v106(v101, v102, v103);
    sub_10001D484();
    v108 = *(v104 + 8);
    *(v0 + 472) = v108;
    *(v0 + 480) = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v108(v102, v103);
    *(v0 + 40) = v128;
    *(v0 + 48) = &protocol witness table for TextDataExtractorFactory;
    v109 = sub_10000A7BC((v0 + 16));
    (*(v105 + 32))(v109, v124, v128);
    v110 = type metadata accessor for PrivateEvolutionPluginRunner();
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    v113 = swift_allocObject();
    *(v0 + 488) = v113;
    v113[2] = 0xD000000000000037;
    v113[3] = 0x800000010001F1B0;
    v113[4] = 0xD000000000000016;
    v113[5] = 0x800000010001E730;
    (*(v104 + 32))(v113 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v107, v103);
    v114 = (v113 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_chatPromptResponderFactory);
    *v114 = sub_10000A9C8;
    v114[1] = 0;
    sub_100004DC0((v0 + 16), v113 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_dataExtractorFactory);
    *(v0 + 80) = v110;
    v115 = sub_10000A820(&qword_1000284D8, type metadata accessor for PrivateEvolutionPluginRunner);
    *(v0 + 56) = v113;
    *(v0 + 88) = v115;
    v116 = *(&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + 1);
    v131 = (&async function pointer to dispatch thunk of PFLPlugin.run(context:runner:) + async function pointer to dispatch thunk of PFLPlugin.run(context:runner:));

    v117 = swift_task_alloc();
    *(v0 + 496) = v117;
    *v117 = v0;
    v117[1] = sub_100009A48;
    v118 = *(v0 + 440);
    v119 = *(v0 + 192);

    return v131(v119, v0 + 56);
  }
}

uint64_t sub_100009A48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v5 = *v1;
  *(v2 + 504) = a1;

  sub_100005490((v2 + 56));

  return _swift_task_switch(sub_100009B50, 0, 0);
}

uint64_t sub_100009B50()
{
  v1 = v0[61];
  v25 = v0[59];
  v27 = v0[60];
  v2 = v0[55];
  v3 = v0[46];
  v4 = v0[42];
  v5 = v0[43];
  v23 = v0[37];
  v7 = v0[31];
  v6 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  sub_10000A7A8(v0[57], v0[58]);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v3, v4);
  v25(v23, v6);
  v10 = v0[52];
  v11 = v0[49];
  v13 = v0[45];
  v12 = v0[46];
  v14 = v0[44];
  v16 = v0[40];
  v15 = v0[41];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v22 = v0[34];
  v24 = v0[31];
  v26 = v0[28];
  v28 = v0[63];

  v20 = v0[1];

  return v20(v28);
}

uint64_t sub_100009CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100006938;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100009D90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000037F4;

  return sub_100008678(a1);
}

uint64_t sub_100009E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100009F08;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100009F08()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009FFC(uint64_t a1)
{
  v2 = sub_10000A820(&qword_100028490, type metadata accessor for PrivateEvolutionPlugin);

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for PrivateEvolutionPlugin();
  sub_10000A820(&qword_1000283C8, type metadata accessor for PrivateEvolutionPlugin);
  sub_10001CF64();
  return 0;
}

uint64_t type metadata accessor for PrivateEvolutionPlugin()
{
  result = qword_100028450;
  if (!qword_100028450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000A1A0()
{
  result = qword_1000283D0;
  if (!qword_1000283D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283D0);
  }

  return result;
}

unint64_t sub_10000A1F8()
{
  result = qword_1000283D8;
  if (!qword_1000283D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283D8);
  }

  return result;
}

unint64_t sub_10000A250()
{
  result = qword_1000283E0;
  if (!qword_1000283E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283E0);
  }

  return result;
}

unint64_t sub_10000A2A8()
{
  result = qword_1000283E8;
  if (!qword_1000283E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000283E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TaskParametersError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TaskParametersError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000A46C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_1000283F0, qword_10001E790);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10000A4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000210C(&qword_1000283F0, qword_10001E790);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10000A574()
{
  sub_10000A5E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10000A5E0()
{
  if (!qword_100028460)
  {
    v0 = sub_10001CFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_100028460);
    }
  }
}

unint64_t sub_10000A70C()
{
  result = qword_1000284C0;
  if (!qword_1000284C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000284C0);
  }

  return result;
}

uint64_t sub_10000A760(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004EDC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A7A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006520(a1, a2);
  }

  return a1;
}

uint64_t *sub_10000A7BC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000A820(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_10000A868()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1 + 9701);
  return sub_10001D9A4();
}

Swift::Int sub_10000A8E8()
{
  v1 = *v0;
  sub_10001D984();
  sub_10001D994(v1 + 9701);
  return sub_10001D9A4();
}

uint64_t sub_10000A930@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000F1DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000A970(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A000();
  v5 = sub_10001A054();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10000A9C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10001D464();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001D304();
  (*(v6 + 16))(v9, a1, v5);
  result = sub_10001D2F4();
  if (!v2)
  {
    a2[3] = v10;
    a2[4] = &protocol witness table for LLMInference;
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000AACC()
{
  v1[2] = v0;
  v2 = *(*(sub_10000210C(&qword_100028698, &qword_10001E9E8) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = sub_10001D4E4();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_10001D424();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000AC50, 0, 0);
}

uint64_t sub_10000AC50()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];
  v4 = v0[9];
  v17 = v0[7];
  v18 = v0[6];
  v19 = v0[5];
  v5 = v0[2];
  v6 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v0[14] = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v3);
  sub_10001D3F4();
  v8 = *(v4 + 8);
  v0[17] = v8;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v7(v2, v5 + v6, v3);
  sub_10001D404();
  v8(v2, v3);
  sub_10001D2E4();
  (*(v18 + 8))(v17, v19);

  v9 = v0[3];
  v7(v0[11], v5 + v6, v0[8]);
  v10 = sub_10001CF54();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_10000AEF8;
  v12 = v0[11];
  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];

  return sub_10000B76C(v13, v12, v14);
}

uint64_t sub_10000AEF8(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[19];
  v5 = (*v2)[18];
  v6 = (*v2)[17];
  v7 = (*v2)[11];
  v8 = (*v2)[8];
  v9 = (*v2)[3];
  v10 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  sub_1000064C0(v9, &qword_100028698, &qword_10001E9E8);
  v6(v7, v8);
  if (v1)
  {
    v11 = sub_10000B3B4;
  }

  else
  {
    sub_1000064C0(v3[4], &qword_100028698, &qword_10001E9E8);
    v11 = sub_10000B0CC;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10000B0CC()
{
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_10001D2B4();
  sub_1000047E8(v2, qword_10002A138);

  v3 = sub_10001D294();
  v4 = sub_10001D724();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Loaded %ld in ensureDataAvailability", v7, 0xCu);
  }

  else
  {
    v8 = v0[20];
  }

  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[2];
  v17 = *(v0[20] + 16);

  v12(v14, v16 + v13, v15);
  v18 = sub_10001D3E4();
  v10(v14, v15);
  if (v17 >= v18)
  {
    v30 = v0[12];
    v29 = v0[13];
    v32 = v0[10];
    v31 = v0[11];
    v33 = v0[7];
    v35 = v0[3];
    v34 = v0[4];
  }

  else
  {
    v19 = sub_10001D1D4();
    sub_100019E10(&qword_100028780, &type metadata accessor for PFLError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for PFLError.dataNotAvailable(_:), v19);
    swift_willThrow();
    v22 = v0[12];
    v21 = v0[13];
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[7];
    v27 = v0[3];
    v26 = v0[4];
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000B3B4()
{
  v1 = v0[21];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000B46C()
{
  v19 = sub_10001D4E4();
  v18 = *(v19 - 8);
  v1 = *(v18 + 64);
  (__chkstk_darwin)();
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10001D424();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v12 = v4[2];
  v12(&v16 - v9, v0 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v3);
  sub_10001D3F4();
  v13 = v4[1];
  v13(v10, v3);
  v12(v8, v16 + v11, v3);
  sub_10001D404();
  v13(v8, v3);
  v14 = v17;
  sub_10001D2E4();
  (*(v18 + 8))(v14, v19);
}

uint64_t sub_10000B698(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return sub_100010D1C(result, (v2 + result));
        }

        else
        {
          v4 = sub_10001CE74();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          sub_10001CE64();
          if (v2 >= 0x7FFFFFFF)
          {
            sub_10001CEF4();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v2;
          }

          else
          {
            return a2 << 34;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000B76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(sub_10000210C(&qword_100028698, &qword_10001E9E8) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_10001D424();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10000B898, 0, 0);
}

uint64_t sub_10000B898()
{
  v68 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[10];
  v5 = v0[8];
  v6 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v7 = *(v3 + 16);
  v7(v1, v4 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v2);
  LOBYTE(v5) = sub_10001D3D4();
  v8 = *(v3 + 8);
  v8(v1, v2);
  if (v5)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v9 = v0[14];
    v10 = v0[9];
    v11 = sub_10001D2B4();
    v0[19] = sub_1000047E8(v11, qword_10002A138);
    sub_100019CA4(v10, v9, &qword_100028698, &qword_10001E9E8);
    v12 = sub_10001D294();
    v13 = sub_10001D714();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[14];
    if (v14)
    {
      v16 = v0[13];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v67[0] = v18;
      *v17 = 136315138;
      sub_100019CA4(v15, v16, &qword_100028698, &qword_10001E9E8);
      v19 = sub_10001CF54();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v16, 1, v19) == 1)
      {
        sub_1000064C0(v0[13], &qword_100028698, &qword_10001E9E8);
        v21 = 0x800000010001F2B0;
        v22 = 0xD00000000000001CLL;
      }

      else
      {
        v52 = v0[13];
        v22 = sub_10001CF24();
        v21 = v53;
        (*(v20 + 8))(v52, v19);
      }

      sub_1000064C0(v0[14], &qword_100028698, &qword_10001E9E8);
      v54 = sub_100004CF4(v22, v21, v67);

      *(v17 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v12, v13, "Extracting text data from date: %s.", v17, 0xCu);
      sub_100005490(v18);
    }

    else
    {

      sub_1000064C0(v15, &qword_100028698, &qword_10001E9E8);
    }

    v55 = v0[9];
    v56 = v0[8];
    v57 = (v0[10] + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_dataExtractorFactory);
    v58 = v57[4];
    sub_100004DD8(v57, v57[3]);
    sub_10001D474();
    v59 = v0[5];
    v60 = v0[6];
    sub_100004DD8(v0 + 2, v59);
    v61 = async function pointer to dispatch thunk of Extractor.extract()[1];
    v62 = swift_task_alloc();
    v0[20] = v62;
    *v62 = v0;
    v62[1] = sub_10000BF38;
    v63 = v0[11];

    return dispatch thunk of Extractor.extract()(v63, v59, v60);
  }

  else
  {
    v65 = v4;
    v66 = v8;
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v23 = v0[17];
    v24 = v0[15];
    v25 = v0[10];
    v26 = v0[8];
    v27 = sub_10001D2B4();
    sub_1000047E8(v27, qword_10002A138);
    v7(v23, v26, v24);

    v28 = sub_10001D294();
    v29 = sub_10001D734();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[18];
      v64 = v0[17];
      v31 = v0[15];
      v32 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v32 = 136315394;
      v7(v30, v65 + v6, v31);
      v33 = sub_10001D3C4();
      v35 = v34;
      v66(v30, v31);
      v36 = sub_100004CF4(v33, v35, v67);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2080;
      v37 = sub_10001D3C4();
      v39 = v38;
      v66(v64, v31);
      v40 = sub_100004CF4(v37, v39, v67);

      *(v32 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "Conflicting data sources from task parameters and recipe.\nTask parameters: %s\nRecipe: %s.", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v41 = v0[17];
      v42 = v0[15];

      v66(v41, v42);
    }

    sub_100019C50();
    swift_allocError();
    *v43 = 11;
    swift_willThrow();
    v45 = v0[17];
    v44 = v0[18];
    v47 = v0[13];
    v46 = v0[14];
    v49 = v0[11];
    v48 = v0[12];

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_10000BF38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_10000C3F0;
  }

  else
  {
    v5 = sub_10000C04C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000C04C()
{
  v1 = v0[21];
  sub_100019BD0(v0[11], v0[12]);
  if (v1)
  {
    v2 = v0[21];
    if (*(v2 + 16))
    {
      v3 = v0[19];
      v4 = v0[21];

      v5 = sub_10001D294();
      v6 = sub_10001D714();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134217984;
        *(v7 + 4) = *(v2 + 16);

        _os_log_impl(&_mh_execute_header, v5, v6, "Extracted %ld items.", v7, 0xCu);
      }

      else
      {
      }

      v30 = v0[17];
      v29 = v0[18];
      v32 = v0[13];
      v31 = v0[14];
      v33 = v0[11];
      sub_100019BD0(v0[12], v0[7]);
      sub_100005490(v0 + 2);

      v34 = v0[1];

      return v34(v2);
    }

    v8 = v0[21];
  }

  v9 = v0[19];
  v10 = sub_10001D294();
  v11 = sub_10001D734();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No data extracted.", v12, 2u);
  }

  v13 = v0[12];

  sub_100019C50();
  swift_allocError();
  *v14 = 2;
  swift_willThrow();
  sub_1000064C0(v13, &qword_100028698, &qword_10001E9E8);
  v15 = v0[19];
  swift_errorRetain();
  v16 = sub_10001D294();
  v17 = sub_10001D734();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Failed to extract text data with error %@.", v18, 0xCu);
    sub_1000064C0(v19, &qword_100028340, &qword_10001E850);
  }

  swift_willThrow();
  sub_100005490(v0 + 2);
  v22 = v0[17];
  v21 = v0[18];
  v24 = v0[13];
  v23 = v0[14];
  v26 = v0[11];
  v25 = v0[12];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10000C3F0()
{
  v1 = v0[22];
  v2 = v0[19];
  swift_errorRetain();
  v3 = sub_10001D294();
  v4 = sub_10001D734();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to extract text data with error %@.", v5, 0xCu);
    sub_1000064C0(v6, &qword_100028340, &qword_10001E850);
  }

  swift_willThrow();
  sub_100005490(v0 + 2);
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[11];
  v12 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10000C588(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(sub_10001D284() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_10000C610(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_10001D284() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

unint64_t sub_10000C6A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000210C(&qword_1000286C8, &unk_10001EA30);
    v2 = sub_10001D7F4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        sub_10000210C(&qword_100028350, qword_10001E278);
        swift_dynamicCast();
        sub_100019C40(&v25, v27);
        sub_100019C40(v27, v28);
        sub_100019C40(v28, &v26);
        result = sub_10000DE30(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100005490(v12);
          result = sub_100019C40(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_100019C40(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10000C904(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_100010D1C((result + 32), (result + 32 + v2));
      }

      else
      {
        v3 = sub_10001CE74();
        v4 = *(v3 + 48);
        v5 = *(v3 + 52);
        swift_allocObject();
        sub_10001CE64();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_10001CEF4();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000C9CC(uint64_t a1)
{
  v3 = sub_10001D424();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrivateEvolutionPluginArgs();
  if (*(a1 + *(v8 + 72)) == 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 + *(v8 + 72));
  }

  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters, v3);
  v10 = sub_10001D414();
  v12 = v11;
  (*(v4 + 8))(v7, v3);
  v19[0] = v10;
  v19[1] = v12;
  v20._countAndFlagsBits = 95;
  v20._object = 0xE100000000000000;
  sub_10001D5B4(v20);
  if (v9)
  {
    if (v9 == 1)
    {
      v13._countAndFlagsBits = 1819047278;
    }

    else
    {
      v13._countAndFlagsBits = 0xD000000000000011;
    }

    if (v9 == 1)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0x800000010001EFC0;
    }
  }

  else
  {
    v14 = 0xE200000000000000;
    v13._countAndFlagsBits = 25968;
  }

  v13._object = v14;
  sub_10001D5B4(v13);

  result = v19[0];
  v16 = (a1 + *(v8 + 80));
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v21._countAndFlagsBits = 95;
    v21._object = 0xE100000000000000;
    sub_10001D5B4(v21);
    v22._countAndFlagsBits = v18;
    v22._object = v17;
    sub_10001D5B4(v22);
    return v19[0];
  }

  return result;
}

uint64_t sub_10000CB8C()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_taskParameters;
  v4 = sub_10001D424();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_chatPromptResponderFactory + 8];

  sub_100005490(&v0[OBJC_IVAR____TtC22PrivateEvolutionPlugin28PrivateEvolutionPluginRunner_dataExtractorFactory]);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for PrivateEvolutionPluginRunner()
{
  result = qword_100028518;
  if (!qword_100028518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CCB0()
{
  result = sub_10001D424();
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

uint64_t sub_10000CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to PFLTaskRunner.resolveTask(for:taskPreferences:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_100009F08;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1, a2, a3, a4, a5);
}

uint64_t sub_10000CE6C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F08;

  return sub_10000AACC();
}

uint64_t sub_10000CEFC()
{
  v1 = sub_10001D044();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_10000CF5C()
{
  v1 = sub_10001D054();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

uint64_t sub_10000CFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000D084;

  return (sub_10001749C)(a1, a2, a3);
}

uint64_t sub_10000D084(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_10000D184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001A0A8;

  return PFLTaskRunner.handleNoTasksAvailable(taskPreferences:)(a1, a2, a3);
}

uint64_t sub_10000D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001A0A8;

  return PFLTaskRunner.handleNoAvailableTasks(taskPreferences:)(a1, a2, a3);
}

id sub_10000D2E4(uint64_t a1, uint64_t a2)
{
  sub_100006478(0, &qword_100028738, NSNumber_ptr);
  isa = sub_10001D664().super.isa;

  v9 = 0;
  v5 = [v2 initWithShape:isa dataType:a2 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    sub_10001CE84();

    swift_willThrow();
  }

  return v5;
}

id sub_10000D3E0()
{
  isa = sub_10001D514().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_10001CE84();

    swift_willThrow();
  }

  return v2;
}

void sub_10000D4C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_10000210C(&qword_100028310, &qword_10001E248);
      v7 = *(sub_10001D284() - 8);
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
        v13 = *(sub_10001D284() - 8);
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

void *sub_10000D668(uint64_t a1, uint64_t a2)
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

  sub_10000210C(&qword_100028260, &unk_10001EA90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_10000D6EC(char *a1, int64_t a2, char a3)
{
  result = sub_10000D76C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D70C(char *a1, int64_t a2, char a3)
{
  result = sub_10000DA48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D72C(char *a1, int64_t a2, char a3)
{
  result = sub_10000DB4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000D74C(void *a1, int64_t a2, char a3)
{
  result = sub_10000DC50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000D76C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000210C(&qword_100028298, &qword_10001EA10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_10000D870(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000210C(&qword_100028310, &qword_10001E248);
  v10 = *(sub_10001D284() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10001D284() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000DA48(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000210C(&qword_1000286B0, &qword_10001EA18);
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

char *sub_10000DB4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000210C(&qword_1000286B8, &qword_10001EA20);
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

void *sub_10000DC50(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000210C(&qword_100028718, &qword_10001EA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000210C(&qword_100028708, &qword_10001EA70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000DD84(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_10000DE30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001D984();
  sub_10001D5A4();
  v6 = sub_10001D9A4();

  return sub_10000DEA8(a1, a2, v6);
}

unint64_t sub_10000DEA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10001D8E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000DF60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000210C(&qword_1000286C0, &qword_10001EA28);
  v38 = a2;
  result = sub_10001D7E4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10001D984();
      sub_10001D5A4();
      result = sub_10001D9A4();
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
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10000E208(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000DE30(a2, a3);
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
      sub_10000DF60(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000DE30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10001D924();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000E384();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_10000E384()
{
  v1 = v0;
  sub_10000210C(&qword_1000286C0, &qword_10001EA28);
  v2 = *v0;
  v3 = sub_10001D7D4();
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

uint64_t sub_10000E4F4()
{
  v1 = sub_10001D284();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  v3 = __chkstk_darwin(v1);
  v30 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v31 = &v23 - v6;
  v26 = v0;
  v7 = *v0;
  v8 = *(*v0 + 2);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v23 = v8 - 2;
    v24 = (v27 + 40);
    v25 = v27 + 16;
    while (1)
    {
      v32 = 0;
      result = swift_stdlib_random();
      v12 = (v32 * v8) >> 64;
      if (v8 > v32 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v32 * v8)
        {
          do
          {
            v32 = 0;
            result = swift_stdlib_random();
          }

          while (v13 > v32 * v8);
          v12 = (v32 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = *(v7 + 2);
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = v1;
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v17 = &v7[v29];
        v18 = *(v27 + 72);
        v19 = *(v27 + 16);
        v28 = v18 * v10;
        result = v19(v31, &v7[v29 + v18 * v10], v16);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        v20 = v18 * v14;
        v19(v30, &v17[v18 * v14], v16);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v16;
        if ((result & 1) == 0)
        {
          result = sub_10000F1C8(v7);
          v7 = result;
        }

        if (v10 >= *(v7 + 2))
        {
          goto LABEL_21;
        }

        v21 = &v7[v29];
        v22 = *v24;
        result = (*v24)(&v7[v29 + v28], v30, v16);
        if (v14 >= *(v7 + 2))
        {
          goto LABEL_22;
        }

        result = v22(&v21[v20], v31, v16);
        *v26 = v7;
        v9 = v23;
      }

      --v8;
      if (v10++ == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E7AC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10001D984();
  sub_10001D5A4();
  v9 = sub_10001D9A4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_10001D8E4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10000EB5C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000E8FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000210C(&qword_100028770, &unk_10001EAE0);
  result = sub_10001D784();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_10001D984();
      sub_10001D5A4();
      result = sub_10001D9A4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10000EB5C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000E8FC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000ECDC();
      goto LABEL_16;
    }

    sub_10000EE38(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_10001D984();
  sub_10001D5A4();
  result = sub_10001D9A4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10001D8E4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10001D914();
  __break(1u);
  return result;
}

void *sub_10000ECDC()
{
  v1 = v0;
  sub_10000210C(&qword_100028770, &unk_10001EAE0);
  v2 = *v0;
  v3 = sub_10001D774();
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10000EE38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000210C(&qword_100028770, &unk_10001EAE0);
  result = sub_10001D784();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_10001D984();

      sub_10001D5A4();
      result = sub_10001D9A4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_10000F070(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_10000F1DC(uint64_t a1)
{
  if ((a1 - 9701) >= 0x11)
  {
    return 17;
  }

  else
  {
    return a1 - 9701;
  }
}

id sub_10000F1F4(uint64_t a1, uint64_t a2)
{
  sub_10001CEA4(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_10001CED4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_10001CE84();

    swift_willThrow();
    v12 = sub_10001CED4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_10000F354(uint64_t *a1)
{
  v3 = sub_10001CED4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v74[-v10];
  v12 = __chkstk_darwin(v9);
  v77 = &v74[-v13];
  __chkstk_darwin(v12);
  v15 = &v74[-v14];
  v16 = [objc_allocWithZone(MLModelConfiguration) init];
  [v16 setComputeUnits:0];
  sub_100006478(0, &qword_100028760, MLModel_ptr);
  v78 = a1;
  v79 = v4;
  v17 = a1;
  v18 = *(v4 + 16);
  v80 = v3;
  v18(v15, v17, v3);
  v19 = v16;
  v20 = v15;
  v21 = v19;
  v22 = sub_10000F1F4(v20, v19);
  if (v1)
  {

    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v23 = sub_10001D2B4();
    sub_1000047E8(v23, qword_10002A138);
    v24 = v77;
    v25 = v80;
    v18(v77, v78, v80);
    swift_errorRetain();
    v26 = sub_10001D294();
    v27 = sub_10001D734();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v25;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v76 = v21;
      v31 = v30;
      v78 = swift_slowAlloc();
      v81 = v78;
      *v29 = 136315394;
      sub_100019E10(&qword_100028768, &type metadata accessor for URL);
      v32 = sub_10001D8C4();
      v34 = v33;
      (*(v79 + 8))(v24, v28);
      v35 = sub_100004CF4(v32, v34, &v81);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v36;
      *v31 = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "Model init failed for %s with error: %@.", v29, 0x16u);
      sub_1000064C0(v31, &qword_100028340, &qword_10001E850);
      v21 = v76;

      sub_100005490(v78);
    }

    else
    {

      (*(v79 + 8))(v24, v25);
    }

    sub_100019C50();
    swift_allocError();
    *v44 = 5;
    swift_willThrow();
  }

  else
  {
    v37 = v22;
    v38 = v11;

    if (v37 && (v39 = [v37 program]) != 0)
    {
      v40 = v39;
      v76 = v21;
      v41 = objc_allocWithZone(MLProgramTrainer);
      v81 = 0;
      swift_unknownObjectRetain();
      v42 = [v41 initWithProgram:v40 learningRate:&v81 error:0.0];
      if (v42)
      {
        v21 = v42;
        v43 = v81;

        swift_unknownObjectRelease_n();
      }

      else
      {
        v60 = v81;
        sub_10001CE84();

        swift_willThrow();
        swift_unknownObjectRelease();
        if (qword_100028248 != -1)
        {
          swift_once();
        }

        v61 = sub_10001D2B4();
        sub_1000047E8(v61, qword_10002A138);
        v62 = v80;
        v18(v38, v78, v80);
        swift_errorRetain();
        v63 = sub_10001D294();
        v64 = sub_10001D734();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = v38;
          v66 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v81 = v78;
          *v66 = 136315394;
          sub_100019E10(&qword_100028768, &type metadata accessor for URL);
          v75 = v64;
          v67 = sub_10001D8C4();
          v69 = v68;
          (*(v79 + 8))(v65, v62);
          v70 = sub_100004CF4(v67, v69, &v81);

          *(v66 + 4) = v70;
          *(v66 + 12) = 2112;
          swift_errorRetain();
          v71 = _swift_stdlib_bridgeErrorToNSError();
          *(v66 + 14) = v71;
          v72 = v77;
          *v77 = v71;
          _os_log_impl(&_mh_execute_header, v63, v75, "ML program trainer init failed for %s: %@.", v66, 0x16u);
          sub_1000064C0(v72, &qword_100028340, &qword_10001E850);

          sub_100005490(v78);
        }

        else
        {

          (*(v79 + 8))(v38, v62);
        }

        v21 = v76;
        sub_100019C50();
        swift_allocError();
        *v73 = 6;
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_100028248 != -1)
      {
        swift_once();
      }

      v45 = sub_10001D2B4();
      sub_1000047E8(v45, qword_10002A138);
      v46 = v8;
      v47 = v80;
      v18(v8, v78, v80);
      v48 = sub_10001D294();
      v49 = sub_10001D734();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v76 = v21;
        v51 = v50;
        v52 = swift_slowAlloc();
        v81 = v52;
        *v51 = 136315138;
        sub_100019E10(&qword_100028768, &type metadata accessor for URL);
        v53 = sub_10001D8C4();
        v54 = v46;
        v56 = v55;
        (*(v79 + 8))(v54, v47);
        v57 = sub_100004CF4(v53, v56, &v81);

        *(v51 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v48, v49, "No ML program found for %s.", v51, 0xCu);
        sub_100005490(v52);

        v21 = v76;
      }

      else
      {

        (*(v79 + 8))(v46, v47);
      }

      sub_100019C50();
      swift_allocError();
      *v58 = 6;
      swift_willThrow();
    }
  }

  return v21;
}

unint64_t sub_10000FCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000210C(&qword_1000286C8, &unk_10001EA30);
    v3 = sub_10001D7F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100019CA4(v4, &v13, &qword_100028710, &qword_10001EA78);
      v5 = v13;
      v6 = v14;
      result = sub_10000DE30(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100019C40(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

NSNumber *sub_10000FE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v95 = a7;
  v106 = a6;
  v105 = a5;
  v102 = a4;
  v101 = a3;
  v100 = sub_10001CE94();
  v99 = *(v100 - 8);
  v10 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000210C(&qword_100028740, &unk_10001EAB8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v96 = &v93 - v14;
  v15 = sub_10001CED4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v97 = (&v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v103 = &v93 - v20;
  v115 = _swiftEmptyArrayStorage;
  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v104 = v16;
  v21 = sub_10001D2B4();
  v107 = sub_1000047E8(v21, qword_10002A138);
  v22 = sub_10001D294();
  v23 = sub_10001D714();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Producing MLBatchProvider for training.", v24, 2u);
  }

  v25 = sub_10000210C(&qword_100028328, &unk_10001E260);
  v26 = swift_allocObject();
  v113 = xmmword_10001E880;
  *&v26[2].super.super.isa = xmmword_10001E880;
  v27 = *(a1 + 16);
  v26[4].super.super.isa = sub_10001D704().super.super.isa;
  v26[5].super.super.isa = sub_10001D704().super.super.isa;
  v28 = objc_allocWithZone(MLMultiArray);
  v29 = sub_10000D2E4(v26, 65568);
  if (!v7)
  {
    v112 = v29;
    v94 = 0;
    v93 = v15;
    if (v27)
    {
      v30 = 0;
      v31 = *(sub_10001D284() - 8);
      v110 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v109 = *(v31 + 72);
      v32 = &qword_100028738;
      v33 = NSNumber_ptr;
      v108 = v27;
      while (1)
      {
        v34 = sub_10001D254();
        if (*(v34 + 16) != a2)
        {
          break;
        }

        v111 = v34;
        if (a2)
        {
          v35 = 0;
          v114 = (v111 + 32);
          do
          {
            v36 = v35 + 1;
            v37 = a2;
            v38 = swift_allocObject();
            *(v38 + 16) = v113;
            *(v38 + 32) = sub_10001D704();
            *(v38 + 40) = sub_10001D704();
            v39 = *(v114 + v35);
            isa = sub_10001D6D4().super.super.isa;
            sub_100006478(0, v32, v33);
            v41 = v33;
            v42 = v30;
            v43 = v25;
            v44 = v32;
            v45 = sub_10001D664().super.isa;
            a2 = v37;

            [v112 setObject:isa forKeyedSubscript:v45];

            v32 = v44;
            v25 = v43;
            v30 = v42;
            v33 = v41;
            v35 = v36;
          }

          while (v37 != v36);
        }

        ++v30;

        if (v30 == v108)
        {
          goto LABEL_14;
        }
      }

      v51 = v34;

      v52 = sub_10001D294();
      v53 = sub_10001D734();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134218240;
        *(v54 + 4) = a2;
        *(v54 + 12) = 2048;
        v55 = *(v51 + 16);

        *(v54 + 14) = v55;

        _os_log_impl(&_mh_execute_header, v52, v53, "Wrong embedding size: expected %ld, actual %ld.", v54, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v80 = v112;
      sub_100019C50();
      v26 = swift_allocError();
      *v81 = 3;
      swift_willThrow();
    }

    else
    {
LABEL_14:
      sub_10000210C(&qword_100028748, &unk_10001EAC8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10001DFC0;
      *(inited + 32) = v105;
      *(inited + 40) = v106;
      *(inited + 72) = sub_100006478(0, &qword_100028750, MLMultiArray_ptr);
      v47 = v112;
      *(inited + 48) = v112;

      v48 = v47;
      sub_10000FCEC(inited);
      swift_setDeallocating();
      sub_1000064C0(inited + 32, &qword_100028710, &qword_10001EA78);
      v49 = objc_allocWithZone(MLDictionaryFeatureProvider);
      v50 = v94;
      sub_10000D3E0();
      v26 = v50;
      if (!v50)
      {
        sub_10001D654();
        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v92 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10001D694();
        }

        sub_10001D6B4();
        v56 = sub_10001D294();
        v57 = sub_10001D724();
        v58 = os_log_type_enabled(v56, v57);
        v59 = v104;
        if (v58)
        {
          v60 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v116 = v114;
          *v60 = 136315138;

          sub_10000210C(&qword_100028758, &qword_10001EAD8);
          v61 = sub_10001D684();
          v63 = v62;

          v64 = sub_100004CF4(v61, v63, &v116);

          *(v60 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v56, v57, "featureProviders: %s.", v60, 0xCu);
          sub_100005490(v114);
        }

        v65 = objc_allocWithZone(MLArrayBatchProvider);

        sub_10000210C(&qword_100028758, &qword_10001EAD8);
        v66 = sub_10001D664().super.isa;

        v67 = [v65 initWithFeatureProviderArray:v66];

        v68 = sub_10001D294();
        v69 = sub_10001D714();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Loading MLProgramTrainer for training.", v70, 2u);
        }

        v71 = v93;
        (*(v59 + 56))(v96, 1, 1, v93);
        (*(v99 + 104))(v98, enum case for URL.DirectoryHint.inferFromPath(_:), v100);

        sub_10001CEC4();
        v72 = v97;
        sub_10001CEB4();
        v73 = v72;
        v83 = sub_10000F354(v72);
        v94 = 0;
        v84 = *(v59 + 8);
        v104 = v59 + 8;
        v84(v73, v71);
        v85 = sub_10001D294();
        v86 = sub_10001D714();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v85, v86, "Perform local Private Evolution step.", v87, 2u);
        }

        v88 = v67;
        v89 = sub_10001D6E4().super.isa;
        v116 = 0;
        v26 = [v83 evaluateUsingTestData:v88 evaluationMetricNames:v89 error:&v116];

        if (v26)
        {
          v90 = v116;
          v84(v103, v93);

          return v26;
        }

        v91 = v116;
        v26 = sub_10001CE84();

        swift_willThrow();
        v84(v103, v93);
      }

      swift_errorRetain();
      v74 = sub_10001D294();
      v75 = sub_10001D734();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        swift_errorRetain();
        v78 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 4) = v78;
        *v77 = v78;
        _os_log_impl(&_mh_execute_header, v74, v75, "Failed to get CoreML Evaluation Results: %@.", v76, 0xCu);
        sub_1000064C0(v77, &qword_100028340, &qword_10001E850);
      }

      sub_100019C50();
      swift_allocError();
      *v79 = 7;
      swift_willThrow();
    }
  }

  return v26;
}

unint64_t sub_100010B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000210C(&qword_1000286C0, &qword_10001EA28);
    v3 = sub_10001D7F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000DE30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_100010C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000210C(&qword_100028730, &qword_10001EAB0);
    v3 = sub_10001D7F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000DE30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_100010D1C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100010DD4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = [a1 evaluationMetrics];
  if (!v7)
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v36 = sub_10001D2B4();
    sub_1000047E8(v36, qword_10002A138);
    v37 = sub_10001D294();
    v38 = sub_10001D734();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to get evaluationMetrics from evaluationResults.", v39, 2u);
    }

    sub_100019C50();
    swift_allocError();
    *v40 = 7;
    return swift_willThrow();
  }

  v8 = [v7 featuresAtIndex:0];
  v9 = sub_10001D534();
  v10 = [v8 featureValueForName:v9];

  if (!v10 || (v11 = [v10 multiArrayValue], v10, !v11))
  {
    if (qword_100028248 != -1)
    {
      swift_once();
    }

    v30 = sub_10001D2B4();
    sub_1000047E8(v30, qword_10002A138);

    v31 = sub_10001D294();
    v32 = sub_10001D734();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v114 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100004CF4(a2, a3, &v114);
      _os_log_impl(&_mh_execute_header, v31, v32, "No output for %s.", v33, 0xCu);
      sub_100005490(v34);
    }

    sub_100019C50();
    swift_allocError();
    *v35 = 7;
    swift_willThrow();
LABEL_70:
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (qword_100028248 != -1)
  {
    swift_once();
  }

  v12 = sub_10001D2B4();
  sub_1000047E8(v12, qword_10002A138);
  v13 = v11;
  v14 = sub_10001D294();
  v15 = sub_10001D724();

  v108 = v13;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v108;
    *v17 = v11;
    v18 = v108;
    _os_log_impl(&_mh_execute_header, v14, v15, "Output vector: %@.", v16, 0xCu);
    sub_1000064C0(v17, &qword_100028340, &qword_10001E850);
    v13 = v108;
  }

  v19 = [v13 numberArray];
  sub_100006478(0, &qword_100028738, NSNumber_ptr);
  v20 = sub_10001D674();

  if (v20 >> 62)
  {
    v21 = sub_10001D7C4();
    if (v21)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_10:
      v114 = _swiftEmptyArrayStorage;
      sub_10000D6EC(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
LABEL_74:
        __break(1u);
LABEL_75:
        result = sub_10001D924();
        __break(1u);
        return result;
      }

      v22 = 0;
      v23 = v114;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v24 = sub_10001D7A4();
        }

        else
        {
          v24 = *(v20 + 8 * v22 + 32);
        }

        v25 = v24;
        [v24 floatValue];
        v27 = v26;

        v114 = v23;
        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          sub_10000D6EC((v28 > 1), v29 + 1, 1);
          v23 = v114;
        }

        ++v22;
        v23[2] = v29 + 1;
        *(v23 + v29 + 8) = v27;
      }

      while (v21 != v22);

      goto LABEL_31;
    }
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_31:
  v42 = sub_10000B698((v23 + 4), v23[2]);
  v44 = v43;

  sub_1000068E4(v42, v44);
  v45 = sub_10001D294();
  v46 = sub_10001D724();
  sub_100006520(v42, v44);
  v106 = v44;
  v107 = v42;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v114 = v48;
    *v47 = 136315138;
    sub_1000068E4(v42, v44);
    v49 = sub_10001CEE4();
    v50 = v44;
    v51 = v49;
    v52 = v42;
    v54 = v53;
    sub_100006520(v52, v50);
    v55 = sub_100004CF4(v51, v54, &v114);

    *(v47 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "Output data: %s.", v47, 0xCu);
    sub_100005490(v48);
  }

  v56 = sub_100010B1C(_swiftEmptyArrayStorage);
  v110 = *(a4 + 16);
  if (v110)
  {
    v57 = 0;
    v111 = a4 + 32;
    v109 = v8;
    do
    {
      v61 = (v111 + 16 * v57);
      v62 = *v61;
      v63 = v61[1];

      v113 = v62;
      v64 = sub_10001D534();
      v65 = [v8 featureValueForName:v64];

      if (!v65 || (v66 = [v65 multiArrayValue], v65, !v66))
      {

        v100 = sub_10001D294();
        v101 = sub_10001D734();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v114 = v103;
          *v102 = 136315138;
          v104 = sub_100004CF4(v113, v63, &v114);

          *(v102 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v100, v101, "No metricValue for %s.", v102, 0xCu);
          sub_100005490(v103);
        }

        else
        {
        }

        sub_100019C50();
        swift_allocError();
        *v105 = 7;
        swift_willThrow();

        sub_100006520(v107, v106);

        goto LABEL_70;
      }

      v67 = [v66 numberArray];
      v68 = sub_10001D674();

      if (v68 >> 62)
      {
        v69 = sub_10001D7C4();
        v112 = v66;
        if (!v69)
        {
LABEL_51:

          v71 = _swiftEmptyArrayStorage;
          goto LABEL_52;
        }
      }

      else
      {
        v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v112 = v66;
        if (!v69)
        {
          goto LABEL_51;
        }
      }

      v114 = _swiftEmptyArrayStorage;
      sub_10000D6EC(0, v69 & ~(v69 >> 63), 0);
      if (v69 < 0)
      {
        goto LABEL_72;
      }

      v70 = 0;
      v71 = v114;
      do
      {
        if ((v68 & 0xC000000000000001) != 0)
        {
          v72 = sub_10001D7A4();
        }

        else
        {
          v72 = *(v68 + 8 * v70 + 32);
        }

        v73 = v72;
        [v72 floatValue];
        v75 = v74;

        v114 = v71;
        v77 = v71[2];
        v76 = v71[3];
        if (v77 >= v76 >> 1)
        {
          sub_10000D6EC((v76 > 1), v77 + 1, 1);
          v71 = v114;
        }

        ++v70;
        v71[2] = v77 + 1;
        *(v71 + v77 + 8) = v75;
      }

      while (v69 != v70);

      v8 = v109;
LABEL_52:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v56;
      v79 = sub_10000DE30(v113, v63);
      v81 = v56[2];
      v82 = (v80 & 1) == 0;
      v83 = __OFADD__(v81, v82);
      v84 = v81 + v82;
      if (v83)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v85 = v80;
      if (v56[3] < v84)
      {
        sub_10000DF60(v84, isUniquelyReferenced_nonNull_native);
        v86 = v63;
        v79 = sub_10000DE30(v113, v63);
        if ((v85 & 1) != (v87 & 1))
        {
          goto LABEL_75;
        }

LABEL_58:
        v56 = v114;
        if (v85)
        {
          goto LABEL_35;
        }

        goto LABEL_59;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v86 = v63;
        goto LABEL_58;
      }

      v91 = v79;
      sub_10000E384();
      v79 = v91;
      v86 = v63;
      v56 = v114;
      if (v85)
      {
LABEL_35:
        v58 = v56[7];
        v59 = v56;
        v60 = *(v58 + 8 * v79);
        *(v58 + 8 * v79) = v71;

        v56 = v59;

        goto LABEL_36;
      }

LABEL_59:
      v56[(v79 >> 6) + 8] |= 1 << v79;
      v88 = (v56[6] + 16 * v79);
      *v88 = v113;
      v88[1] = v86;
      *(v56[7] + 8 * v79) = v71;
      v89 = v56[2];
      v83 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v83)
      {
        goto LABEL_73;
      }

      v56[2] = v90;

LABEL_36:
      ++v57;
    }

    while (v57 != v110);
  }

  v92 = sub_10001D294();
  v93 = sub_10001D724();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v114 = v95;
    *v94 = 136315138;

    sub_10000210C(&qword_100028350, qword_10001E278);
    v96 = sub_10001D524();
    v98 = v97;

    v99 = sub_100004CF4(v96, v98, &v114);

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v92, v93, "Output metrics: %s.", v94, 0xCu);
    sub_100005490(v95);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v107;
}

NSObject *sub_100011A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74 = a7;
  v78 = a6;
  v75 = a5;
  v70 = a4;
  v69 = a3;
  v73 = sub_10001D0B4();
  v72 = *(v73 - 8);
  v9 = *(v72 + 64);
  __chkstk_darwin(v73);
  v76 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v68 = v11;
  if (v11)
  {
    v12 = *(sub_10001D284() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    v15 = _swiftEmptyArrayStorage;
    while (1)
    {
      v16 = sub_10001D254();
      if (*(v16 + 16) != a2)
      {

        if (qword_100028248 != -1)
        {
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      v17 = *(v15 + 2);
      v18 = v17 + a2;
      if (__OFADD__(v17, a2))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v15 + 3) >> 1)
      {
        if (!*(v16 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v20 = v17 + a2;
        }

        else
        {
          v20 = v17;
        }

        v15 = sub_10000497C(isUniquelyReferenced_nonNull_native, v20, 1, v15);
        if (!*(v16 + 16))
        {
LABEL_3:

          if (a2)
          {
            goto LABEL_46;
          }

          goto LABEL_4;
        }
      }

      v21 = *(v15 + 2);
      if ((*(v15 + 3) >> 1) - v21 < a2)
      {
        goto LABEL_47;
      }

      memcpy(&v15[4 * v21 + 32], (v16 + 32), 4 * a2);

      if (a2)
      {
        v22 = *(v15 + 2);
        v23 = __OFADD__(v22, a2);
        v24 = v22 + a2;
        if (v23)
        {
          goto LABEL_48;
        }

        *(v15 + 2) = v24;
      }

LABEL_4:
      v13 += v14;
      if (!--v11)
      {
        goto LABEL_20;
      }
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_20:
  if (qword_100028248 != -1)
  {
LABEL_49:
    swift_once();
  }

  v25 = sub_10001D2B4();
  v26 = sub_1000047E8(v25, qword_10002A138);

  v27 = sub_10001D294();
  v28 = sub_10001D714();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v76;
  v31 = v74;
  if (v29)
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = *(v15 + 2);

    _os_log_impl(&_mh_execute_header, v27, v28, "Number elements in embeddingsMatrixRowMajor: %ld.", v32, 0xCu);
  }

  else
  {
  }

  v33 = sub_10001D194();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  sub_10001D184();
  v36 = sub_10001D124();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_10001D134();
  sub_10001D0A4();
  sub_10000210C(&qword_100028260, &unk_10001EA90);
  v40 = swift_allocObject();
  v67 = xmmword_10001DFC0;
  *(v40 + 16) = xmmword_10001DFC0;
  v41 = v78;
  *(v40 + 32) = v75;
  *(v40 + 40) = v41;
  v42 = *(v31 + 16);
  if (v42)
  {
    v65[1] = v39;
    v65[2] = v26;
    v65[0] = sub_10000D668(v42, 0);
    v66 = sub_10000F070(v77, (v65[0] + 32), v42, v31);
    v16 = v77[1];

    sub_100019D0C();
    if (v66 != v42)
    {
      __break(1u);
LABEL_51:
      swift_once();
LABEL_28:
      v43 = sub_10001D2B4();
      sub_1000047E8(v43, qword_10002A138);

      v44 = sub_10001D294();
      v45 = sub_10001D734();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134218240;
        *(v46 + 4) = a2;
        *(v46 + 12) = 2048;
        v47 = *(v16 + 16);

        *(v46 + 14) = v47;

        _os_log_impl(&_mh_execute_header, v44, v45, "Wrong embedding size: expected %ld, actual %ld.", v46, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_100019C50();
      swift_allocError();
      *v54 = 3;
      swift_willThrow();
      return v44;
    }

    v30 = v76;
  }

  else
  {
  }

  v48 = v71;
  sub_10001D104();
  if (v48)
  {

    (*(v72 + 8))(v30, v73);
  }

  else
  {
    (*(v72 + 8))(v30, v73);

    LOBYTE(v77[0]) = 1;
    sub_10001D114();
    sub_10000210C(&qword_1000286E0, &qword_10001EA48);
    inited = swift_initStackObject();
    *(inited + 16) = v67;
    v57 = v75;
    *(inited + 32) = v75;
    v58 = v78;
    *(inited + 40) = v78;
    *(inited + 48) = v15;

    v76 = sub_100010B1C(inited);
    swift_setDeallocating();
    sub_1000064C0(inited + 32, &qword_1000286E8, &qword_10001EA50);
    sub_10000210C(&qword_100028720, &qword_10001EAA0);
    v59 = swift_initStackObject();
    *(v59 + 16) = v67;
    *(v59 + 32) = v57;
    *(v59 + 40) = v58;
    *(v59 + 48) = a2;

    sub_100010C20(v59);
    swift_setDeallocating();
    sub_1000064C0(v59 + 32, &qword_100028728, &qword_10001EAA8);
    v60 = sub_10001D0F4();

    if (*(v60 + 16))
    {
      v44 = *(v60 + 32);

      return v44;
    }

    v61 = sub_10001D294();
    v62 = sub_10001D734();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Empty evaluation results from EspressoMILTrainer.", v63, 2u);
    }

    sub_100019C50();
    swift_allocError();
    *v64 = 7;
    swift_willThrow();
  }

  swift_errorRetain();
  v49 = sub_10001D294();
  v44 = sub_10001D734();

  if (os_log_type_enabled(v49, v44))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v52;
    *v51 = v52;
    _os_log_impl(&_mh_execute_header, v49, v44, "Failed to get Espresso Evaluation Results: %@.", v50, 0xCu);
    sub_1000064C0(v51, &qword_100028340, &qword_10001E850);
  }

  sub_100019C50();
  swift_allocError();
  *v53 = 7;
  swift_willThrow();

  return v44;
}

uint64_t sub_10001243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  if (*(a1 + 16))
  {
    v8 = sub_10000DE30(a2, a3);
    if (v9)
    {
      v10 = *(*(a1 + 56) + 8 * v8);
      v11 = qword_100028248;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_10001D2B4();
      sub_1000047E8(v12, qword_10002A138);

      v13 = sub_10001D294();
      v14 = sub_10001D724();

      v80 = a1;
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v81 = v16;
        *v15 = 136315138;
        v17 = sub_10001D684();
        v19 = sub_100004CF4(v17, v18, &v81);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "Output vector: %s.", v15, 0xCu);
        sub_100005490(v16);
      }

      v20 = sub_10000B698(v10 + 32, *(v10 + 16));
      v22 = v21;

      sub_1000068E4(v20, v22);
      v23 = sub_10001D294();
      v24 = sub_10001D724();
      sub_100006520(v20, v22);
      v78 = v22;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v81 = v26;
        *v25 = 136315138;
        sub_1000068E4(v20, v22);
        v27 = sub_10001CEE4();
        v28 = v22;
        v29 = v27;
        v31 = v30;
        sub_100006520(v20, v28);
        v32 = sub_100004CF4(v29, v31, &v81);

        *(v25 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v23, v24, "Output data: %s.", v25, 0xCu);
        sub_100005490(v26);
      }

      v33 = v80;
      v79 = v20;
      v5 = sub_100010B1C(_swiftEmptyArrayStorage);
      v34 = *(a4 + 16);
      if (!v34)
      {
LABEL_30:
        v64 = sub_10001D294();
        v65 = sub_10001D724();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v81 = v67;
          *v66 = 136315138;

          sub_10000210C(&qword_100028350, qword_10001E278);
          v68 = sub_10001D524();
          v70 = v69;

          v71 = sub_100004CF4(v68, v70, &v81);

          *(v66 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v64, v65, "Output metrics: %s.", v66, 0xCu);
          sub_100005490(v67);
        }

        return v79;
      }

      v35 = (a4 + 40);
      while (1)
      {
        v39 = *(v35 - 1);
        v38 = *v35;
        v40 = *(v33 + 16);

        if (!v40 || (v41 = sub_10000DE30(v39, v38), (v42 & 1) == 0))
        {

          v72 = sub_10001D294();
          v73 = sub_10001D734();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v81 = v75;
            *v74 = 136315138;
            v76 = sub_100004CF4(v39, v38, &v81);

            *(v74 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v72, v73, "No metricValue for %s.", v74, 0xCu);
            sub_100005490(v75);
          }

          else
          {
          }

          sub_100019C50();
          swift_allocError();
          *v77 = 7;
          swift_willThrow();
          sub_100006520(v79, v78);
        }

        v43 = *(*(v33 + 56) + 8 * v41);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v5;
        v4 = sub_10000DE30(v39, v38);
        v46 = v5;
        v47 = v5[2];
        v48 = (v45 & 1) == 0;
        v49 = v47 + v48;
        if (__OFADD__(v47, v48))
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v50 = v45;
        if (v46[3] >= v49)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v45)
            {
              goto LABEL_11;
            }
          }

          else
          {
            sub_10000E384();
            if (v50)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          sub_10000DF60(v49, isUniquelyReferenced_nonNull_native);
          v51 = sub_10000DE30(v39, v38);
          if ((v50 & 1) != (v52 & 1))
          {
            result = sub_10001D924();
            __break(1u);
            return result;
          }

          v4 = v51;
          if (v50)
          {
LABEL_11:

            v5 = v81;
            v36 = v81[7];
            v37 = *(v36 + 8 * v4);
            *(v36 + 8 * v4) = v43;

            goto LABEL_12;
          }
        }

        v5 = v81;
        v81[(v4 >> 6) + 8] |= 1 << v4;
        v53 = (v5[6] + 16 * v4);
        *v53 = v39;
        v53[1] = v38;
        *(v5[7] + 8 * v4) = v43;
        v54 = v5[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_38;
        }

        v5[2] = v56;
LABEL_12:
        v35 += 2;
        --v34;
        v33 = v80;
        if (!v34)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (qword_100028248 != -1)
  {
LABEL_39:
    swift_once();
  }

  v57 = sub_10001D2B4();
  sub_1000047E8(v57, qword_10002A138);

  v58 = sub_10001D294();
  v59 = sub_10001D734();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v81 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_100004CF4(v5, v4, &v81);
    _os_log_impl(&_mh_execute_header, v58, v59, "No output for %s.", v60, 0xCu);
    sub_100005490(v61);
  }

  sub_100019C50();
  swift_allocError();
  *v62 = 7;
  return swift_willThrow();
}