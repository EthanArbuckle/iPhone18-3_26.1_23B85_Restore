uint64_t sub_3419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[22] = a4;
  v5[23] = v6;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_341E8, 0, 0);
}

uint64_t sub_341E8()
{
  v17 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[24] = v7;
  v8 = sub_5B338();
  v0[25] = v8;
  isa = sub_5B2E8().super.isa;
  v0[26] = isa;
  v10 = sub_5A2B8();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v10;
  sub_357CC(v2, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v16);

  v12 = objc_opt_self();
  v13 = sub_5B2E8().super.isa;
  v0[27] = v13;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_3446C;
  v14 = swift_continuation_init();
  v0[17] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_35658;
  v0[13] = &unk_6E300;
  v0[14] = v14;
  [v12 execute:v7 catId:v8 parameters:isa globals:v13 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_3446C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_34600;
  }

  else
  {
    v3 = sub_3457C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3457C()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_34600()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_3468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[22] = a4;
  v5[23] = v6;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v7 = *(*(sub_5B94(&qword_724E8, &qword_5D090) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v8 = sub_5A3B8();
  v5[25] = v8;
  v9 = *(v8 - 8);
  v5[26] = v9;
  v10 = *(v9 + 64) + 15;
  v5[27] = swift_task_alloc();
  v11 = sub_5A5B8();
  v5[28] = v11;
  v12 = *(v11 - 8);
  v5[29] = v12;
  v13 = *(v12 + 64) + 15;
  v5[30] = swift_task_alloc();
  v14 = sub_5A648();
  v5[31] = v14;
  v15 = *(v14 - 8);
  v5[32] = v15;
  v16 = *(v15 + 64) + 15;
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_34868, 0, 0);
}

uint64_t sub_34868()
{
  v19 = v0;
  v1 = sub_38344(&off_6DBE0);
  sub_35764(&unk_6DC00);
  v2 = sub_5A2B8();
  v3 = sub_33C7C(v1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v2;
  sub_357CC(v3, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v18);
  v0[34] = 0;

  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v17 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[35] = v10;
  v11 = sub_5B338();
  v0[36] = v11;
  sub_33ED4(v6);
  isa = sub_5B2E8().super.isa;
  v0[37] = isa;

  v13 = sub_5B2E8().super.isa;
  v0[38] = v13;

  v14 = CATDefaultMode;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_34B3C;
  v15 = swift_continuation_init();
  v0[17] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_35658;
  v0[13] = &unk_6E2D8;
  v0[14] = v15;
  [v17 execute:v10 catId:v11 parameters:isa globals:v13 callback:0 options:v14 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_34B3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_35000;
  }

  else
  {
    v3 = sub_34C4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

size_t sub_34C4C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 144);

  v6 = [v5 print];
  v7 = sub_5B3D8();

  v8 = [v5 speak];
  v9 = sub_5B3D8();

  v40 = v5;
  v10 = [v5 spokenOnly];
  sub_35ADC();
  v11 = sub_5B3D8();

  v12 = sub_135B4(v7, v9, v11);

  v13 = v12[2];
  if (v13)
  {
    v14 = *(v0 + 232);
    v15 = *(v0 + 208);
    result = sub_376F4(0, v13, 0);
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    v42 = (v15 + 56);
    v43 = v14;
    v41 = v0;
    v19 = (v12 + 8);
    v44 = v13;
    v45 = v12;
    while (v17 < v12[2])
    {
      v20 = *(v0 + 216);
      v21 = *(v0 + 192);
      v46 = *(v0 + 200);
      v47 = *(v0 + 240);
      v23 = *(v19 - 4);
      v22 = *(v19 - 3);
      v24 = *(v19 - 2);
      v25 = *(v19 - 1);
      v26 = v18;
      v27 = *v19;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v28 = v27;
      sub_5A398();
      (*v42)(v21, 1, 1, v46);
      [v28 BOOLValue];
      sub_5A598();

      v18 = v26;
      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        sub_376F4(v29 > 1, v30 + 1, 1);
        v18 = v26;
      }

      v31 = *(v41 + 240);
      v32 = *(v41 + 224);
      ++v17;
      v18[2] = v30 + 1;
      result = (*(v43 + 32))(v18 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v30, v31, v32);
      v19 += 5;
      v0 = v41;
      v12 = v45;
      if (v44 == v17)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v33 = *(v0 + 240);
    v34 = *(v0 + 216);
    v35 = *(v0 + 192);
    v37 = *(v0 + 160);
    v36 = *(v0 + 168);
    v38 = *(v0 + 152);
    (*(*(v0 + 256) + 104))(*(v0 + 264), enum case for BehaviorAfterSpeaking.listen(_:), *(v0 + 248));

    sub_5A548();

    v39 = *(v0 + 8);

    return v39();
  }

  return result;
}

uint64_t sub_35000()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[24];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[39];

  return v10();
}

uint64_t sub_350CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v4[21] = a3;
  v4[22] = v5;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_35114, 0, 0);
}

uint64_t sub_35114()
{
  v23 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);

  v3 = sub_5B218();
  v4 = sub_5B4B8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2DC10(v6, v5, &v22);
    _os_log_impl(&dword_0, v3, v4, "Executing pattern %s", v7, 0xCu);
    sub_5D00(v8);
  }

  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v13 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[23] = v15;
  v16 = sub_5B338();
  v0[24] = v16;
  isa = sub_5B2E8().super.isa;
  v0[25] = isa;
  sub_5A2B8();
  v18 = sub_5B2E8().super.isa;
  v0[26] = v18;

  v19 = CATDefaultMode;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_35438;
  v20 = swift_continuation_init();
  v0[17] = sub_5B94(&qword_72E60, &unk_5D080);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_35658;
  v0[13] = &unk_6E2B0;
  v0[14] = v20;
  [v13 execute:v15 patternId:v16 parameters:isa globals:v18 callback:0 options:v19 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_35438()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_355CC;
  }

  else
  {
    v3 = sub_35548;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_35548()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_355CC()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[27];

  return v6();
}

uint64_t sub_35658(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_5CBC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_5B94(&qword_724C8, &qword_5E270);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_35764(uint64_t a1)
{
  v2 = sub_5B94(&qword_72E68, &qword_5D098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_357CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_41B64(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_302D4(v46, v44);
  v14 = *a5;
  result = sub_37278(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_412D0(v20, a4 & 1);
    v22 = *a5;
    result = sub_37278(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_5B7D8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_4180C();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    sub_5D00(v26);
    sub_302D4(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_302D4(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_41B64(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_302D4(v46, v44);
        v33 = *a5;
        result = sub_37278(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_412D0(v37, 1);
          v38 = *a5;
          result = sub_37278(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          sub_5D00(v32);
          sub_302D4(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_302D4(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_41B64(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_297E0();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_35ADC()
{
  result = qword_72510;
  if (!qword_72510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_72510);
  }

  return result;
}

id sub_35B38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_5B338();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    sub_59DF8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_35C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_59E68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5AEF8();
  sub_5AEE8();
  sub_5AEB8();

  v9 = sub_5AF98();
  v11 = v10;

  if (!v11)
  {
    sub_59E58();
    v9 = sub_59E48();
    v11 = v12;
    (*(v5 + 8))(v8, v4);
  }

  sub_35FD0();

  v13 = sub_35B38(a1, a2, 0);
  sub_5B94(&qword_72F28, &unk_5D160);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_5C390;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  isa = sub_5B3C8().super.isa;

  v16 = [v13 localizedNameWithPreferredLocalizations:isa];

  v17 = sub_5B348();
  return v17;
}

unint64_t sub_35FD0()
{
  result = qword_72F20;
  if (!qword_72F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_72F20);
  }

  return result;
}

uint64_t sub_3601C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_5A838();
  v141 = *(v4 - 1);
  v142 = v4;
  v5 = *(v141 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v135 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v135 - v13;
  __chkstk_darwin(v12);
  v16 = &v135 - v15;
  v17 = sub_5A318();
  v138 = *(v17 - 8);
  v139 = v17;
  v18 = *(v138 + 64);
  v19 = __chkstk_darwin(v17);
  v137 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v135 - v21;
  v23 = sub_5A818();
  v25 = v24;
  if (sub_5A768() != v23 || v26 != v25)
  {
    v140 = a1;
    v27 = sub_5B7A8();

    if (v27)
    {
      a1 = v140;
      goto LABEL_6;
    }

    if (sub_5A778() == v23 && v31 == v25)
    {
      goto LABEL_9;
    }

    v32 = sub_5B7A8();

    if (v32)
    {
      goto LABEL_11;
    }

    if (sub_5A748() == v23 && v35 == v25)
    {
LABEL_9:

LABEL_11:

      v28 = type metadata accessor for CAMDirectInvocation();
      v33 = v140;
      swift_storeEnumTagMultiPayload();
      v29 = *(*(v28 - 8) + 56);
      v30 = v33;
      goto LABEL_12;
    }

    v36 = sub_5B7A8();

    if (v36)
    {
      goto LABEL_11;
    }

    if (sub_5A758() == v23 && v37 == v25)
    {

      goto LABEL_22;
    }

    v38 = sub_5B7A8();

    if (v38)
    {
LABEL_22:

      v39 = sub_5A828();
      v40 = v140;
      if (v39)
      {
        v41 = v39;
        if (!*(v39 + 16) || (v42 = sub_37278(1936750952, 0xE400000000000000), (v43 & 1) == 0))
        {
LABEL_35:

          goto LABEL_36;
        }

        sub_C0A0(*(v41 + 56) + 32 * v42, v144);

        sub_5B94(&qword_72F30, &qword_5D110);
        if (swift_dynamicCast())
        {
          v44 = v143;
          if (v143[2] == 2)
          {
            v144[0] = &_swiftEmptyArrayStorage;
            sub_37564(0, 2, 0);
            if (v44[2])
            {
              v45 = v144[0];
              sub_3815C(v44[4], v44[5]);
              sub_5A2E8();
              v46 = v138;
              v48 = *(v45 + 16);
              v47 = *(v45 + 24);
              if (v48 >= v47 >> 1)
              {
                sub_37564(v47 > 1, v48 + 1, 1);
                v45 = v144[0];
              }

              *(v45 + 16) = v48 + 1;
              v49 = v46;
              v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
              v142 = *(v49 + 72);
              v51 = v45 + v50 + v142 * v48;
              v52 = *(v49 + 32);
              v52(v51, v22, v139);
              if (v44[2] >= 2uLL)
              {
                sub_3815C(v44[6], v44[7]);
                sub_5A2E8();
                v144[0] = v45;
                v103 = *(v45 + 16);
                v102 = *(v45 + 24);
                if (v103 >= v102 >> 1)
                {
                  sub_37564(v102 > 1, v103 + 1, 1);
                  v45 = v144[0];
                }

                *(v45 + 16) = v103 + 1;
                v136 = v45 + v50;
                v52(v45 + v50 + v142 * v103, v22, v139);

                if (qword_71A58 != -1)
                {
                  swift_once();
                }

                v104 = sub_5B228();
                v141 = sub_5B44(v104, qword_763B8);
                v105 = sub_5B218();
                v106 = sub_5B4B8();
                if (os_log_type_enabled(v105, v106))
                {
                  v107 = swift_slowAlloc();
                  v108 = swift_slowAlloc();
                  v144[0] = v108;
                  *v107 = 136315138;
                  *(v107 + 4) = sub_2DC10(0xD000000000000017, 0x800000000005F0D0, v144);
                  _os_log_impl(&dword_0, v105, v106, "%s: CAM outputs DisambiguateTopTwo with hyps:", v107, 0xCu);
                  sub_5D00(v108);
                }

                v109 = sub_5B218();
                v110 = sub_5B4B8();

                if (os_log_type_enabled(v109, v110))
                {
                  v111 = swift_slowAlloc();
                  v135 = swift_slowAlloc();
                  v144[0] = v135;
                  *v111 = 136315394;
                  result = sub_2DC10(0xD000000000000017, 0x800000000005F0D0, v144);
                  *(v111 + 4) = result;
                  *(v111 + 12) = 2080;
                  if (!*(v45 + 16))
                  {
                    goto LABEL_87;
                  }

                  v113 = v137;
                  v112 = v138;
                  v114 = v139;
                  (*(v138 + 16))(v137, v136, v139);
                  sub_381B0();
                  v115 = sub_5B798();
                  v117 = v116;
                  (*(v112 + 8))(v113, v114);
                  v118 = sub_2DC10(v115, v117, v144);

                  *(v111 + 14) = v118;
                  _os_log_impl(&dword_0, v109, v110, "%s: CAM outputs DisambiguateTopTwo with hyp 1: %s", v111, 0x16u);
                  swift_arrayDestroy();
                }

                v119 = sub_5B218();
                v120 = sub_5B4B8();

                if (os_log_type_enabled(v119, v120))
                {
                  v121 = swift_slowAlloc();
                  v141 = swift_slowAlloc();
                  v144[0] = v141;
                  *v121 = 136315394;
                  result = sub_2DC10(0xD000000000000017, 0x800000000005F0D0, v144);
                  *(v121 + 4) = result;
                  *(v121 + 12) = 2080;
                  if (*(v45 + 16) < 2uLL)
                  {
LABEL_88:
                    __break(1u);
                    return result;
                  }

                  v122 = v137;
                  v123 = v138;
                  v124 = v139;
                  (*(v138 + 16))(v137, v136 + v142, v139);
                  sub_381B0();
                  v125 = sub_5B798();
                  v127 = v126;
                  (*(v123 + 8))(v122, v124);
                  v128 = sub_2DC10(v125, v127, v144);

                  *(v121 + 14) = v128;
                  _os_log_impl(&dword_0, v119, v120, "%s: CAM outputs DisambiguateTopTwo with hyp 2: %s", v121, 0x16u);
                  swift_arrayDestroy();
                }

                result = sub_5B94(&qword_71C98, &qword_5C2A8);
                v129 = *(v45 + 16);
                if (v129)
                {
                  v130 = *(result + 48);
                  v131 = v139;
                  v132 = *(v138 + 16);
                  v133 = v140;
                  v134 = v136;
                  result = v132(v140, v136, v139);
                  if (v129 != 1)
                  {
                    v132((v133 + v130), v134 + v142, v131);

                    v78 = type metadata accessor for CAMDirectInvocation();
                    swift_storeEnumTagMultiPayload();
                    v69 = *(*(v78 - 8) + 56);
                    v70 = v133;
                    goto LABEL_83;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }
            }

            __break(1u);
            swift_once();
            v53 = sub_5B228();
            sub_5B44(v53, qword_763B8);
            v54 = sub_5B218();
            v55 = sub_5B4C8();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              *v56 = 0;
              _os_log_impl(&dword_0, v54, v55, "CAM direct invocation could not deserialize PluginActions", v56, 2u);
            }

            goto LABEL_65;
          }

          goto LABEL_35;
        }
      }

LABEL_36:
      v58 = v141;
      v57 = v142;
      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v59 = sub_5B228();
      sub_5B44(v59, qword_763B8);
      (*(v58 + 16))(v16, v2, v57);
      v60 = sub_5B218();
      v61 = sub_5B4C8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v144[0] = v63;
        *v62 = 136315138;
        if (!sub_5A828())
        {
          sub_3802C(&_swiftEmptyArrayStorage);
        }

        v64 = sub_5B308();
        v66 = v65;

        (*(v58 + 8))(v16, v57);
        v67 = sub_2DC10(v64, v66, v144);

        *(v62 + 4) = v67;
        sub_5D00(v63);

        v40 = v140;
      }

      else
      {

        (*(v58 + 8))(v16, v57);
      }

      v68 = type metadata accessor for CAMDirectInvocation();
      v69 = *(*(v68 - 8) + 56);
      v70 = v40;
      goto LABEL_66;
    }

    if (v23 == 0xD000000000000024 && 0x800000000005F0A0 == v25)
    {

      v71 = v140;
      v72 = v142;
    }

    else
    {
      v73 = sub_5B7A8();

      v71 = v140;
      v72 = v142;
      if ((v73 & 1) == 0)
      {
        if (qword_71A58 != -1)
        {
          swift_once();
        }

        v89 = sub_5B228();
        sub_5B44(v89, qword_763B8);
        v90 = v141;
        v91 = *(v141 + 16);
        v91(v8, v2, v72);
        v92 = sub_5B218();
        v93 = sub_5B4C8();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = v72;
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v144[0] = v96;
          *v95 = 136315138;
          v91(v11, v8, v94);
          v97 = sub_5B358();
          v99 = v98;
          (*(v90 + 8))(v8, v94);
          v100 = sub_2DC10(v97, v99, v144);

          *(v95 + 4) = v100;
          _os_log_impl(&dword_0, v92, v93, "Couldn't parse direct invocation %s as CAMDirectInvocation", v95, 0xCu);
          sub_5D00(v96);
        }

        else
        {

          (*(v90 + 8))(v8, v72);
        }

LABEL_65:
        v68 = type metadata accessor for CAMDirectInvocation();
        v69 = *(*(v68 - 8) + 56);
        v70 = v140;
LABEL_66:
        v101 = 1;
        return v69(v70, v101, 1, v68);
      }
    }

    v74 = sub_5A828();
    if (v74)
    {
      v75 = v74;
      if (*(v74 + 16) && (v76 = sub_37278(0x7865646E69, 0xE500000000000000), (v77 & 1) != 0))
      {
        sub_C0A0(*(v75 + 56) + 32 * v76, v144);

        if (swift_dynamicCast())
        {
          *v71 = v143;
          v78 = type metadata accessor for CAMDirectInvocation();
          swift_storeEnumTagMultiPayload();
          v69 = *(*(v78 - 8) + 56);
          v70 = v71;
LABEL_83:
          v101 = 0;
          v68 = v78;
          return v69(v70, v101, 1, v68);
        }
      }

      else
      {
      }
    }

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v79 = sub_5B228();
    sub_5B44(v79, qword_763B8);
    v80 = v141;
    v81 = *(v141 + 16);
    v81(v14, v2, v72);
    v82 = sub_5B218();
    v83 = sub_5B4C8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v144[0] = v142;
      *v84 = 136315138;
      v81(v11, v14, v72);
      v85 = sub_5B358();
      v87 = v86;
      (*(v80 + 8))(v14, v72);
      v88 = sub_2DC10(v85, v87, v144);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_0, v82, v83, "Couldn't parse direct invocation %s as CAMDirectInvocation", v84, 0xCu);
      sub_5D00(v142);
    }

    else
    {

      (*(v80 + 8))(v14, v72);
    }

    goto LABEL_65;
  }

LABEL_6:

  v28 = type metadata accessor for CAMDirectInvocation();
  swift_storeEnumTagMultiPayload();
  v29 = *(*(v28 - 8) + 56);
  v30 = a1;
LABEL_12:

  return v29(v30, 0, 1, v28);
}

uint64_t type metadata accessor for CAMDirectInvocation()
{
  result = qword_73028;
  if (!qword_73028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_37278(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_5B848();
  sub_5B378();
  v6 = sub_5B868();

  return sub_37378(a1, a2, v6);
}

unint64_t sub_372F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_5B548(*(v2 + 40));

  return sub_37430(a1, v4);
}

unint64_t sub_37334(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_5B838();

  return sub_374F8(a1, v4);
}

unint64_t sub_37378(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_5B7A8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_37430(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_387B8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_5B558();
      sub_38814(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_374F8(uint64_t a1, uint64_t a2)
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

size_t sub_37564(size_t a1, int64_t a2, char a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_724F0, &qword_5C310, &type metadata accessor for PluginAction);
  *v3 = result;
  return result;
}

size_t sub_375A8(size_t a1, int64_t a2, char a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_72FB0, &unk_5D1C0, &type metadata accessor for Parse);
  *v3 = result;
  return result;
}

size_t sub_375EC(size_t a1, int64_t a2, char a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_72F90, &qword_5D198, &type metadata accessor for UsoIdentifier);
  *v3 = result;
  return result;
}

void *sub_37630(void *a1, int64_t a2, char a3)
{
  result = sub_37C68(a1, a2, a3, *v3, &qword_72FA8, &unk_5D1B0, &qword_72588, &qword_5C6A8);
  *v3 = result;
  return result;
}

void *sub_37670(void *a1, int64_t a2, char a3)
{
  result = sub_37EF8(a1, a2, a3, *v3, &qword_72F70, &qword_5D170, &qword_72F78, &unk_5D178);
  *v3 = result;
  return result;
}

size_t sub_376B0(size_t a1, int64_t a2, char a3)
{
  result = sub_37838(a1, a2, a3, *v3, &unk_73CC0, &unk_5C8E0, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  *v3 = result;
  return result;
}

size_t sub_376F4(size_t a1, int64_t a2, char a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_72F48, &qword_5D140, &type metadata accessor for TemplatingSection);
  *v3 = result;
  return result;
}

void *sub_37738(void *a1, int64_t a2, char a3)
{
  result = sub_37A14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_37758(char *a1, int64_t a2, char a3)
{
  result = sub_37B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_37778(void *a1, int64_t a2, char a3)
{
  result = sub_37EF8(a1, a2, a3, *v3, &qword_72F80, &qword_5D188, &qword_72F88, &qword_5D190);
  *v3 = result;
  return result;
}

void *sub_377B8(void *a1, int64_t a2, char a3)
{
  result = sub_37C68(a1, a2, a3, *v3, &qword_72F98, &qword_5D1A0, &qword_72FA0, &qword_5D1A8);
  *v3 = result;
  return result;
}

void *sub_377F8(void *a1, int64_t a2, char a3)
{
  result = sub_37EF8(a1, a2, a3, *v3, &qword_72F38, &qword_5D118, &qword_72F40, &unk_5D120);
  *v3 = result;
  return result;
}

size_t sub_37838(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_5B94(a5, a6);
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

void *sub_37A14(void *result, int64_t a2, char a3, void *a4)
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
    sub_5B94(&qword_72F50, &qword_5D148);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5B94(&qword_72F58, &qword_5D150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_37B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_72F28, &unk_5D160);
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

void *sub_37C68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_5B94(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5B94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_37DB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_5B94(&qword_72918, &unk_5C960);
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
    sub_5B94(&qword_72910, &qword_5C950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_37EF8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_5B94(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5B94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_3802C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5B94(&qword_72E78, &unk_5D0B0);
    v3 = sub_5B6A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AE38(v4, &v13, &unk_72450, &unk_5C470);
      v5 = v13;
      v6 = v14;
      result = sub_37278(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_302D4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_3815C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_381B0()
{
  result = qword_71C10;
  if (!qword_71C10)
  {
    sub_5A318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C10);
  }

  return result;
}

unint64_t sub_38208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5B94(&qword_72E70, &qword_5D0A8);
    v3 = sub_5B6A8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AE38(v4, v13, &qword_72508, &unk_5D130);
      result = sub_372F0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_302D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_38344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5B94(&qword_72F60, &qword_5D158);
    v3 = sub_5B6A8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_37278(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_38458(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_5B94(&qword_72F68, &qword_5D600);
  v3 = sub_5B6A8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_37334(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_37334(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_3856C(uint64_t a1)
{
  v2 = objc_allocWithZone(SKIDirectInvocationPayload);
  v3 = sub_5B338();
  v4 = [v2 initWithIdentifier:v3];

  sub_5B94(&qword_724F8, &qword_5C638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  v12 = 0x7865646E69;
  v13 = 0xE500000000000000;
  sub_5B568();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a1;
  sub_38208(inited);
  swift_setDeallocating();
  sub_38750(inited + 32);
  isa = sub_5B2E8().super.isa;

  [v4 setUserData:{isa, v12, v13}];

  sub_5A868();
  sub_5CBC(&v12, v14);
  v7 = sub_5A248();
  sub_5D00(&v12);
  v8 = objc_opt_self();
  v9 = [v8 runSiriKitExecutorCommandWithContext:v7 payload:v4];
  v10 = [v8 wrapCommandInStartLocalRequest:v9];

  return v10;
}

uint64_t sub_38750(uint64_t a1)
{
  v2 = sub_5B94(&qword_72508, &unk_5D130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_38868(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = sub_5A318();
    v11 = *(*(v10 - 8) + 16);
    v11(a1, a2, v10);
    v12 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v11((a1 + *(v12 + 48)), (a2 + *(v12 + 48)), v10);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v6 + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_389B4(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v3 = sub_5A318();
    v5 = *(*(v3 - 8) + 8);
    (v5)((v3 - 8), a1, v3);
    v4 = a1 + *(sub_5B94(&qword_71C98, &qword_5C2A8) + 48);

    return v5(v4, v3);
  }

  return result;
}

char *sub_38A74(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 16);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *sub_38B80(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2EA30(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 16);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

char *sub_38C9C(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 32);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *sub_38DA8(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_2EA30(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_5A318();
    v9 = *(*(v8 - 8) + 32);
    v9(a1, a2, v8);
    v10 = sub_5B94(&qword_71C98, &qword_5C2A8);
    v9(&a1[*(v10 + 48)], &a2[*(v10 + 48)], v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_38EC4()
{
  result = sub_5A318();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_38F68(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000014;
  v3 = &unk_5E4E0;
  if (a1 == 5)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (a1 == 5)
  {
    v5 = "unknownErrorResponse";
  }

  else
  {
    v5 = "notUndoableResponse";
  }

  if (a1 == 3)
  {
    v6 = "mitigateSilently";
  }

  else
  {
    v6 = "networkErrorResponse";
  }

  if (a1 <= 4u)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = v4;
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (a1 == 1)
  {
    v10 = "airplaneModeResponse";
  }

  else
  {
    v10 = "gibberishResponse";
  }

  if (!a1)
  {
    v9 = 0xD000000000000014;
    v10 = &unk_5E4E0;
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000011;
        v3 = "airplaneModeResponse";
      }

      else
      {
        v2 = 0xD000000000000010;
        v3 = "gibberishResponse";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000013;
      v3 = "unknownErrorResponse";
    }

    else
    {
      v2 = 0xD000000000000015;
      v3 = "notUndoableResponse";
    }
  }

  else if (a2 == 3)
  {
    v3 = "mitigateSilently";
  }

  else
  {
    v3 = "networkErrorResponse";
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_5B7A8();
  }

  return v14 & 1;
}

Swift::Int sub_390F0()
{
  sub_5B848();
  sub_5B378();

  return sub_5B868();
}

uint64_t sub_39204()
{
  *v0;
  *v0;
  *v0;
  sub_5B378();
}

uint64_t sub_392F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3C5A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_39324(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = &unk_5E4E0;
  v5 = "unknownErrorResponse";
  v6 = 0xD000000000000013;
  if (v3 != 5)
  {
    v6 = 0xD000000000000015;
    v5 = "notUndoableResponse";
  }

  v7 = "mitigateSilently";
  if (v3 != 3)
  {
    v7 = "networkErrorResponse";
  }

  if (*v1 <= 4u)
  {
    v6 = 0xD000000000000014;
    v5 = v7;
  }

  v8 = "airplaneModeResponse";
  v9 = 0xD000000000000011;
  if (v3 != 1)
  {
    v9 = 0xD000000000000010;
    v8 = "gibberishResponse";
  }

  if (*v1)
  {
    v2 = v9;
    v4 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v6;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_393E0(uint64_t a1)
{
  v2 = sub_5B94(&qword_71C88, &qword_5C2A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v105 = v90 - v4;
  v5 = type metadata accessor for CAMDirectInvocation();
  v95 = *(v5 - 8);
  v96 = v5;
  v6 = *(v95 + 64);
  v7 = __chkstk_darwin(v5);
  v93 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = v90 - v9;
  v10 = sub_5A858();
  v103 = *(v10 - 8);
  v104 = v10;
  v11 = *(v103 + 64);
  __chkstk_darwin(v10);
  v13 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5A838();
  v101 = *(v14 - 8);
  v102 = v14;
  v15 = *(v101 + 64);
  __chkstk_darwin(v14);
  v17 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A7D8();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v100 = v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v90 - v23;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v25 = sub_5B228();
  v26 = sub_5B44(v25, qword_763B8);
  v27 = v19[2];
  v106 = a1;
  v98 = v27;
  v27(v24, a1, v18);
  v28 = sub_5B218();
  v29 = sub_5B4B8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v92 = v26;
    v31 = v30;
    v91 = swift_slowAlloc();
    v109[0] = v91;
    *v31 = 136315138;
    sub_3C664(&qword_71C90, 255, &type metadata accessor for Input);
    v32 = sub_5B798();
    v90[1] = v19 + 2;
    v33 = v13;
    v35 = v34;
    v99 = v19[1];
    v99(v24, v18);
    v36 = sub_2DC10(v32, v35, v109);
    v13 = v33;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_0, v28, v29, "FallbackEntryFlow: on called with %s", v31, 0xCu);
    sub_5D00(v91);
  }

  else
  {

    v99 = v19[1];
    v99(v24, v18);
  }

  v37 = v106;
  sub_5A7C8();
  v39 = v103;
  v38 = v104;
  v40 = (*(v103 + 88))(v13, v104);
  v41 = v105;
  if (v40 != enum case for Parse.directInvocation(_:))
  {
    (*(v39 + 8))(v13, v38);
    goto LABEL_10;
  }

  (*(v39 + 96))(v13, v38);
  (*(v101 + 32))(v17, v13, v102);
  sub_3601C(v41);
  if ((*(v95 + 48))(v41, 1, v96) == 1)
  {
    (*(v101 + 8))(v17, v102);
    sub_5D4C(v41, &qword_71C88, &qword_5C2A0);
LABEL_10:
    v42 = v100;
    v98(v100, v37, v18);
    v43 = sub_5B218();
    v44 = sub_5B4C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v18;
      v47 = swift_slowAlloc();
      v109[0] = v47;
      *v45 = 136315138;
      sub_3C664(&qword_71C90, 255, &type metadata accessor for Input);
      v48 = sub_5B798();
      v50 = v49;
      v99(v42, v46);
      v51 = sub_2DC10(v48, v50, v109);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_0, v43, v44, "FallbackEntryFlow called with unexpected input %s", v45, 0xCu);
      sub_5D00(v47);
    }

    else
    {

      v99(v42, v18);
    }

    return 0;
  }

  v53 = v41;
  v54 = v97;
  sub_1AF04(v53, v97);
  v55 = v93;
  sub_2E9CC(v54, v93);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_2EA30(v97);
    (*(v101 + 8))(v17, v102);
    sub_2EA30(v55);
    goto LABEL_10;
  }

  sub_2EA30(v55);
  v56 = sub_5A828();
  if (v56)
  {
    v57 = v56;
    v58 = *(v56 + 16);
    if (v58)
    {
      v59 = sub_37278(0x724573656D6D6F70, 0xEB00000000726F72);
      if (v60)
      {
        sub_C0A0(*(v57 + 56) + 32 * v59, v109);
        v61 = swift_dynamicCast();
        v58 = v107;
        v62 = v108;
        if (!v61)
        {
          v58 = 0;
          v62 = 0;
        }

LABEL_23:
        v63 = v94;
        v64 = *(v94 + 24);
        *(v94 + 16) = v58;
        *(v63 + 24) = v62;

        v65 = *(v57 + 16);
        if (v65)
        {
          v66 = sub_37278(0xD000000000000012, 0x800000000005F130);
          if (v67)
          {
            sub_C0A0(*(v57 + 56) + 32 * v66, v109);
            v68 = swift_dynamicCast();
            v65 = v107;
            v69 = v108;
            if (!v68)
            {
              v65 = 0;
              v69 = 0;
            }

            goto LABEL_29;
          }

          v65 = 0;
        }

        v69 = 0;
LABEL_29:
        v70 = v94;
        v71 = *(v94 + 40);
        *(v94 + 32) = v65;
        *(v70 + 40) = v69;

        v72 = *(v57 + 16);
        if (v72)
        {
          v73 = sub_37278(0x494C4E7974706D65, 0xEC0000007475706ELL);
          if ((v74 & 1) != 0 && (sub_C0A0(*(v57 + 56) + 32 * v73, v109), swift_dynamicCast()))
          {
            LOBYTE(v72) = v107;
          }

          else
          {
            LOBYTE(v72) = 0;
          }
        }

        *(v94 + 48) = v72;
        v75 = *(v57 + 16);
        if (v75)
        {
          v76 = sub_37278(0x526F646E55736168, 0xEE00747365757165);
          if ((v77 & 1) != 0 && (sub_C0A0(*(v57 + 56) + 32 * v76, v109), swift_dynamicCast()))
          {
            LOBYTE(v75) = v107;
          }

          else
          {
            LOBYTE(v75) = 0;
          }
        }

        *(v94 + 49) = v75;
        if (*(v57 + 16) && (v78 = sub_37278(0x74636E756A6E6F63, 0xEF6F666E496E6F69), (v79 & 1) != 0))
        {
          sub_C0A0(*(v57 + 56) + 32 * v78, v109);

          if (swift_dynamicCast())
          {
            v80 = v107;
            v81 = v108;
            v82 = sub_59DB8();
            v83 = *(v82 + 48);
            v84 = *(v82 + 52);
            swift_allocObject();
            sub_59DA8();
            sub_5B0A8();
            sub_3C664(&qword_73260, 255, &type metadata accessor for RequestConjunctionInfo);
            sub_59D98();
            sub_293D8(v80, v81);

            v89 = *(v94 + 56);
            *(v94 + 56) = v109[0];
          }
        }

        else
        {
        }

        goto LABEL_44;
      }

      v58 = 0;
    }

    v62 = 0;
    goto LABEL_23;
  }

LABEL_44:
  v85 = v94;
  *(v85 + 64) = sub_39F9C();
  v86 = sub_5B218();
  v87 = sub_5B4B8();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_0, v86, v87, "FallbackEntryFlow: input accepted", v88, 2u);
  }

  sub_2EA30(v97);
  (*(v101 + 8))(v17, v102);
  return 1;
}

uint64_t sub_39F9C()
{
  v1 = v0;
  v98 = sub_5AF58();
  v2 = *(v98 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v98);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_5B94(&qword_73238, &qword_5D3D0);
  v6 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v97 = &v89 - v7;
  v8 = sub_5B94(&qword_73240, &qword_5D3D8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v92 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v95 = &v89 - v13;
  __chkstk_darwin(v12);
  v99 = &v89 - v14;
  v15 = sub_5AFB8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v20 = sub_5B228();
  v21 = sub_5B44(v20, qword_763B8);
  v22 = sub_5B218();
  v23 = sub_5B4B8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "FallbackEntryFlow: evalExecutionDecision", v24, 2u);
  }

  if (*(v1 + 48) == 1)
  {
    v25 = sub_5B218();
    v26 = sub_5B4B8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = 2;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v25, v26, "FallbackEntryFlow: emptyNLInput == true", v28, 2u);
    }

    else
    {

      return 2;
    }

    return v27;
  }

  v90 = v5;
  v91 = v2;
  sub_5AEF8();
  sub_5AEE8();
  v29 = sub_5AED8();

  v96 = v29;

  v94 = v21;
  v30 = sub_5B218();
  v31 = sub_5B4B8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v89 = v1;
    v33 = v32;
    v34 = swift_slowAlloc();
    v100 = v34;
    *v33 = 67109378;
    *(v33 + 4) = sub_5AFA8() & 1;

    *(v33 + 8) = 2080;
    sub_5AFC8();
    sub_3C664(&qword_73258, 255, &type metadata accessor for NetworkAvailability.Status);
    v35 = sub_5B798();
    v37 = v36;
    (*(v16 + 8))(v19, v15);
    v38 = sub_2DC10(v35, v37, &v100);

    *(v33 + 10) = v38;
    _os_log_impl(&dword_0, v30, v31, "FallbackEntryFlow network states: isInAirplaneMode: %{BOOL}d networkAvailabilityProvider.status: %s", v33, 0x12u);
    sub_5D00(v34);

    v1 = v89;
  }

  else
  {
  }

  v39 = sub_5B218();
  v40 = sub_5B4B8();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    *v41 = 136315394;
    v42 = *(v1 + 40);
    v100 = *(v1 + 32);
    v101 = v42;

    sub_5B94(&qword_73250, &unk_5D3E0);
    v43 = sub_5B358();
    v45 = sub_2DC10(v43, v44, &v102);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v46 = *(v1 + 24);
    v100 = *(v1 + 16);
    v101 = v46;

    v47 = sub_5B358();
    v49 = sub_2DC10(v47, v48, &v102);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_0, v39, v40, "FallbackEntryFlow: pommesSearchReason = %s pommesError = %s", v41, 0x16u);
    swift_arrayDestroy();
  }

  v51 = v97;
  v50 = v98;
  v52 = v99;
  if (sub_5AEC8())
  {
  }

  else
  {
    v53 = sub_5B218();
    v54 = sub_5B4B8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "SiriEnvironment.forCurrentTask is nil", v55, 2u);
    }
  }

  if (*(v1 + 49) != 1)
  {
    if (sub_5AEC8())
    {
      sub_5AE98();

      sub_5B0B8();

      v63 = 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = v91;
    v65 = *(v91 + 56);
    v65(v52, v63, 1, v50);
    v66 = v95;
    (*(v64 + 104))(v95, enum case for InputOrigin.magusFollowup(_:), v50);
    v65(v66, 0, 1, v50);
    v67 = v66;
    v68 = *(v93 + 48);
    sub_3C5F4(v52, v51);
    sub_3C5F4(v67, v51 + v68);
    v69 = v52;
    v70 = *(v64 + 48);
    if (v70(v51, 1, v50) == 1)
    {
      sub_5D4C(v67, &qword_73240, &qword_5D3D8);
      sub_5D4C(v69, &qword_73240, &qword_5D3D8);
      if (v70(v51 + v68, 1, v50) == 1)
      {
        sub_5D4C(v51, &qword_73240, &qword_5D3D8);
LABEL_45:
        v86 = sub_5B218();
        v87 = sub_5B4B8();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_0, v86, v87, "FallbackEntryFlow: inputOrigin == magusFollowup", v88, 2u);
        }

        v75 = sub_3AE38(v96);
LABEL_48:
        v27 = v75;

        return v27;
      }
    }

    else
    {
      v71 = v92;
      sub_3C5F4(v51, v92);
      if (v70(v51 + v68, 1, v50) != 1)
      {
        v82 = v90;
        v83 = v91;
        (*(v91 + 32))(v90, v51 + v68, v50);
        sub_3C664(&qword_73248, 255, &type metadata accessor for InputOrigin);
        v84 = sub_5B328();
        v85 = *(v83 + 8);
        v85(v82, v50);
        sub_5D4C(v95, &qword_73240, &qword_5D3D8);
        sub_5D4C(v99, &qword_73240, &qword_5D3D8);
        v85(v71, v50);
        sub_5D4C(v51, &qword_73240, &qword_5D3D8);
        if (v84)
        {
          goto LABEL_45;
        }

LABEL_35:
        v72 = sub_5B218();
        v73 = sub_5B4B8();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_0, v72, v73, "FallbackEntryFlow: inputOrigin != magusFollowup", v74, 2u);
        }

        v75 = sub_3AC80(v96);
        goto LABEL_48;
      }

      sub_5D4C(v95, &qword_73240, &qword_5D3D8);
      sub_5D4C(v99, &qword_73240, &qword_5D3D8);
      (*(v91 + 8))(v71, v50);
    }

    sub_5D4C(v51, &qword_73238, &qword_5D3D0);
    goto LABEL_35;
  }

  v56 = *(v1 + 56);
  if (!v56)
  {
    goto LABEL_39;
  }

  v57 = v56;
  v58 = sub_5B098();
  result = sub_5B088();
  if (result)
  {
    if (v58 < result - 1)
    {
      v60 = sub_5B218();
      v61 = sub_5B4B8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_0, v60, v61, "FallbackEntryFlow: unhandled undo not final request, mitigating silently", v62, 2u);
      }

      return 2;
    }

LABEL_39:
    v76 = sub_5B218();
    v77 = sub_5B4B8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "FallbackEntryFlow: missing conjunctionInfo", v78, 2u);
    }

    v79 = sub_5B218();
    v80 = sub_5B4B8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_0, v79, v80, "FallbackEntryFlow: unhandled undo request", v81, 2u);
    }

    return 5;
  }

  __break(1u);
  return result;
}

uint64_t sub_3AC80(uint64_t a1)
{
  v2 = v1[5];
  if (v1[3])
  {
    if (!v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v11 = sub_5B228();
    sub_5B44(v11, qword_763B8);
    v12 = sub_5B218();
    v13 = sub_5B4B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "FallbackEntryFlow: No pommes signals, returning gibberishResponse", v14, 2u);
    }

    return 1;
  }

  if (v1[4] != 0x616D6F446F666E69 || v2 != 0xEF65737261506E69)
  {
    v4 = a1;
    v5 = v1[4];
    v6 = sub_5B7A8();
    a1 = v4;
    if ((v6 & 1) == 0)
    {
      v7 = v1[5];
      if (!v7)
      {
        return 1;
      }

      if (v7 != 0x800000000005F1D0 || v1[4] != 0xD000000000000016)
      {
        v8 = v1[4];
        v9 = sub_5B7A8();
        a1 = v4;
        if ((v9 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return sub_3AFE0(a1, 0);
}

uint64_t sub_3AE38(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (!v2)
  {
    goto LABEL_14;
  }

  if (*(v1 + 32) == 0x616D6F446F666E69 && v2 == 0xEF65737261506E69)
  {
    goto LABEL_11;
  }

  v4 = a1;
  v5 = *(v1 + 32);
  v6 = sub_5B7A8();
  a1 = v4;
  if (v6)
  {
    goto LABEL_11;
  }

  v7 = *(v1 + 40);
  if (v7 && (v7 == 0x800000000005F1D0 && *(v1 + 32) == 0xD000000000000016 || (v8 = *(v1 + 32), v9 = sub_5B7A8(), a1 = v4, (v9 & 1) != 0)))
  {
LABEL_11:

    return sub_3AFE0(a1, 1);
  }

  else
  {
LABEL_14:
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v11 = sub_5B228();
    sub_5B44(v11, qword_763B8);
    v12 = sub_5B218();
    v13 = sub_5B4B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "FallbackEntryFlow: mitigateSilently", v14, 2u);
    }

    return 2;
  }
}

uint64_t sub_3AFE0(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = a2;
  v4 = sub_5B068();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5AFB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v39 - v14;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v15 = sub_5B228();
  sub_5B44(v15, qword_763B8);
  v16 = sub_5B218();
  v17 = sub_5B4B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = v13;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "FallbackEntryFlow: explicit pegasus call", v18, 2u);
    v13 = v40;
  }

  if (sub_5AFA8())
  {
    return 0;
  }

  v20 = v44;
  sub_5AFC8();
  (*(v9 + 104))(v13, enum case for NetworkAvailability.Status.available(_:), v8);
  sub_3C664(&qword_73230, 255, &type metadata accessor for NetworkAvailability.Status);
  v21 = sub_5B328();
  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v20, v8);
  if ((v21 & 1) == 0)
  {
    return 3;
  }

  v24 = *(v3 + 16);
  v23 = *(v3 + 24);
  if (!v23)
  {
    v30 = 0;
    goto LABEL_21;
  }

  if (v24 != 0x746C757365526F6ELL || v23 != 0xE900000000000073)
  {
    v25 = *(v3 + 16);
    if ((sub_5B7A8() & 1) == 0)
    {
      v24 = *(v3 + 16);
      v30 = *(v3 + 24);
LABEL_21:
      v33 = v42;
      v32 = v43;
      (*(v42 + 104))(v7, enum case for PommesError.timedOut(_:), v43);

      v34 = sub_5B058();
      v36 = v35;
      (*(v33 + 8))(v7, v32);
      if (v30)
      {
        if (v24 == v34 && v30 == v36)
        {

          return 6;
        }

        v37 = sub_5B7A8();

        if (v37)
        {
          return 6;
        }
      }

      else
      {
      }

      return 4;
    }
  }

  v26 = sub_5B218();
  v27 = sub_5B4B8();
  v28 = os_log_type_enabled(v26, v27);
  if (v41)
  {
    if (v28)
    {
      v19 = 2;
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v26, v27, "no pommes results on FF so mitigate silently", v29, 2u);
    }

    else
    {

      return 2;
    }
  }

  else
  {
    if (v28)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v26, v27, "no pommes results on initial input so render gibberish", v31, 2u);
    }

    return 1;
  }

  return v19;
}

uint64_t sub_3B4E4(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = sub_5B068();
  v2[40] = v3;
  v4 = *(v3 - 8);
  v2[41] = v4;
  v5 = *(v4 + 64) + 15;
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_3B5A4, 0, 0);
}

uint64_t sub_3B5A4()
{
  v72 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);

  v3 = sub_5B218();
  v4 = sub_5B4B8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v70 = v7;
    *v6 = 136315138;
    *(v0 + 344) = *(v5 + 64);
    sub_5B94(&qword_73228, &qword_5D3C8);
    v8 = sub_5B358();
    v10 = sub_2DC10(v8, v9, &v70);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "FallbackEntryFlow: execute called with decision %s", v6, 0xCu);
    sub_5D00(v7);
  }

  v11 = *(v0 + 312);
  v12 = *(v11 + 64);
  if (v12 > 3)
  {
    if (*(v11 + 64) > 5u)
    {
      if (v12 == 6)
      {
        v28 = *(v0 + 328);
        v27 = *(v0 + 336);
        v29 = *(v0 + 320);
        v30 = *(v0 + 304);
        v70 = 0;
        v71 = 0xE000000000000000;
        sub_5B5A8(27);

        v70 = 0xD000000000000019;
        v71 = 0x800000000005F1B0;
        (*(v28 + 104))(v27, enum case for PommesError.timedOut(_:), v29);
        v31 = sub_5B058();
        v33 = v32;
        (*(v28 + 8))(v27, v29);
        v75._countAndFlagsBits = v31;
        v75._object = v33;
        sub_5B388(v75);

        v34 = v70;
        v35 = v71;
        sub_5A6C8();
        sub_5A148();
        type metadata accessor for PommesTimeoutFlow();
        swift_allocObject();
        *(v0 + 272) = sub_43E14(v34, v35, v69, &v70);
        sub_3C664(&qword_73208, 255, type metadata accessor for PommesTimeoutFlow);
      }

      else
      {
        v61 = sub_5B218();
        v62 = sub_5B4B8();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_0, v61, v62, "no decision found, should not typically happen", v63, 2u);
        }

        v64 = *(v0 + 304);

        sub_5A6C8();
        sub_5A148();
        type metadata accessor for CamErrorFlow();
        swift_allocObject();
        *(v0 + 256) = sub_3147C(0xD000000000000010, 0x800000000005F170, v69, &v70);
        sub_3C664(&qword_72550, 255, type metadata accessor for CamErrorFlow);
      }

      goto LABEL_26;
    }

    if (v12 == 4)
    {
      v22 = *(v11 + 24);
      if (v22)
      {
        v23 = *(v11 + 16);
        v70 = 0;
        v71 = 0xE000000000000000;

        sub_5B5A8(27);

        v70 = 0xD000000000000019;
        v71 = 0x800000000005F1B0;
        v74._countAndFlagsBits = v23;
        v74._object = v22;
        sub_5B388(v74);

        v25 = v70;
        v24 = v71;
      }

      else
      {
        v24 = 0x800000000005F190;
        v25 = 0xD000000000000015;
      }

      v65 = *(v0 + 304);
      sub_5A6C8();
      sub_5A148();
      type metadata accessor for CamErrorFlow();
      swift_allocObject();
      *(v0 + 264) = sub_3147C(v25, v24, v69, &v70);
      sub_3C664(&qword_72550, 255, type metadata accessor for CamErrorFlow);
      goto LABEL_26;
    }

    goto LABEL_14;
  }

  if (*(v11 + 64) > 1u)
  {
    if (v12 != 2)
    {
      v52 = *(v0 + 304);
      v53 = type metadata accessor for DefaultCatExecutor();
      v54 = swift_allocObject();
      sub_5A6C8();
      sub_5A148();
      *(v0 + 40) = v53;
      *(v0 + 48) = &off_6E270;
      *(v0 + 16) = v54;
      type metadata accessor for NetworkUnavailableFlow();
      v55 = swift_allocObject();
      v56 = sub_5EDC(v0 + 16, v53);
      v57 = *(v53 - 8);
      v58 = *(v57 + 64) + 15;
      v59 = swift_task_alloc();
      (*(v57 + 16))(v59, v56, v53);
      v60 = sub_33814(*v59, v69, &v70, v55, "NetworkUnavailableFlow new instance initialised");
      sub_5D00((v0 + 16));

      *(v0 + 280) = v60;
      sub_3C664(&qword_73210, 255, type metadata accessor for NetworkUnavailableFlow);
      goto LABEL_26;
    }

LABEL_14:
    v26 = *(v0 + 304);
    sub_5A438();
    goto LABEL_28;
  }

  if (*(v11 + 64))
  {
    v36 = type metadata accessor for DefaultCatExecutor();
    v37 = swift_allocObject();
    sub_5A6C8();
    sub_5A148();
    v38 = sub_5B048();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_5B038();
    *(v0 + 160) = v36;
    *(v0 + 168) = &off_6E270;
    *(v0 + 136) = v37;
    type metadata accessor for GibberishFlow();
    v42 = swift_allocObject();
    v43 = sub_5EDC(v0 + 136, v36);
    v44 = *(v36 - 8);
    v45 = *(v44 + 64) + 15;
    v46 = swift_task_alloc();
    (*(v44 + 16))(v46, v43, v36);
    v47 = *v46;
    *(v0 + 200) = v36;
    *(v0 + 208) = &off_6E270;
    *(v0 + 176) = v47;
    sub_5F90(v0 + 176, v42 + 16);
    sub_5F90(v0 + 56, v42 + 56);
    sub_5F90(v0 + 96, v42 + 96);
    *(v42 + 136) = v41;

    v48 = sub_5B218();
    v49 = sub_5B4B8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "GibberishFlow new instance initialised", v50, 2u);
    }

    v51 = *(v0 + 304);

    sub_5D00((v0 + 96));
    sub_5D00((v0 + 56));
    sub_5D00((v0 + 176));
    sub_5D00((v0 + 136));

    *(v0 + 288) = v42;
    sub_3C664(&qword_73218, 255, type metadata accessor for GibberishFlow);
    sub_5A418();
    goto LABEL_27;
  }

  v13 = *(v0 + 304);
  v14 = type metadata accessor for DefaultCatExecutor();
  v15 = swift_allocObject();
  sub_5A6C8();
  sub_5A148();
  *(v0 + 240) = v14;
  *(v0 + 248) = &off_6E270;
  *(v0 + 216) = v15;
  type metadata accessor for AirplaneModeFlow();
  v16 = swift_allocObject();
  v17 = sub_5EDC(v0 + 216, v14);
  v18 = *(v14 - 8);
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  (*(v18 + 16))(v20, v17, v14);
  v21 = sub_33814(*v20, v69, &v70, v16, "AirplaneModeFlow new instance initialised");
  sub_5D00((v0 + 216));

  *(v0 + 296) = v21;
  sub_3C664(&qword_73220, 255, type metadata accessor for AirplaneModeFlow);
LABEL_26:
  sub_5A418();
LABEL_27:

LABEL_28:
  v66 = *(v0 + 336);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_3C028()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for FallbackEntryFlow.ExecutionDecision(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FallbackEntryFlow.ExecutionDecision(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_3C1E8()
{
  result = qword_731F8;
  if (!qword_731F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_731F8);
  }

  return result;
}

void (*sub_3C284(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_5AF28();
  return sub_3C310;
}

void sub_3C310(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_3C380()
{
  v2 = *v0;
  type metadata accessor for FallbackEntryFlow();
  return sub_5A098();
}

uint64_t sub_3C3DC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_3B4E4(a1);
}

uint64_t sub_3C478(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FallbackEntryFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_3C540(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() "sharedStream")];

  return swift_unknownObjectRelease();
}

uint64_t sub_3C5A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_6DC20;
  v6._object = a2;
  v4 = sub_5B6B8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_3C5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73240, &qword_5D3D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C664(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_3C6AC(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[40] = v4;
  v5 = *(v4 - 8);
  v2[41] = v5;
  v6 = *(v5 + 64) + 15;
  v2[42] = swift_task_alloc();
  v7 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v8 = sub_5A908();
  v2[44] = v8;
  v9 = *(v8 - 8);
  v2[45] = v9;
  v10 = *(v9 + 64) + 15;
  v2[46] = swift_task_alloc();
  v11 = sub_5A648();
  v2[47] = v11;
  v12 = *(v11 - 8);
  v2[48] = v12;
  v13 = *(v12 + 64) + 15;
  v2[49] = swift_task_alloc();
  v14 = sub_5A588();
  v2[50] = v14;
  v15 = *(v14 - 8);
  v2[51] = v15;
  v16 = *(v15 + 64) + 15;
  v2[52] = swift_task_alloc();
  v17 = *(*(sub_5B94(&qword_73338, &qword_5D490) - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v18 = *(*(sub_5B94(&qword_73340, &qword_5D498) - 8) + 64) + 15;
  v2[54] = swift_task_alloc();

  return _swift_task_switch(sub_3C960, 0, 0);
}

uint64_t sub_3C960()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "GibberishFlow: execute called", v4, 2u);
  }

  v5 = v0[38];

  v6 = sub_5CBC((v5 + 16), *(v5 + 40));
  v7 = sub_38208(_swiftEmptyArrayStorage);
  v0[55] = v7;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v9 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v10 = sub_3802C(inited);
  v0[56] = v10;
  swift_setDeallocating();
  sub_5D4C(v9, &unk_72450, &unk_5C470);
  v11 = *v6;
  v12 = swift_task_alloc();
  v0[57] = v12;
  *v12 = v0;
  v12[1] = sub_3CB98;

  return sub_3419C(0xD000000000000016, 0x800000000005F240, v7, v10);
}

uint64_t sub_3CB98(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 456);
  v5 = *(*v2 + 448);
  v6 = *(*v2 + 440);
  v9 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v7 = sub_3D198;
  }

  else
  {
    v7 = sub_3CCF0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3CCF0()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(*(v0 + 304) + 136);
  v5 = sub_5A968();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = sub_5B078();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = v1;
  LOBYTE(v4) = sub_5B028();
  sub_5D4C(v3, &qword_73338, &qword_5D490);
  sub_5D4C(v2, &qword_73340, &qword_5D498);
  if (v4)
  {
    sub_5B008();
    sub_5AFE8();
    sub_5AFD8();
    sub_5AFF8();
  }

  v8 = *(v0 + 464);
  v10 = *(v0 + 384);
  v9 = *(v0 + 392);
  v11 = *(v0 + 376);
  v27 = *(v0 + 416);
  v28 = *(v0 + 368);
  v30 = *(v0 + 352);
  v31 = *(v0 + 360);
  v12 = *(v0 + 344);
  v29 = *(v0 + 304);
  v13 = [v8 speak];
  sub_5B3D8();

  v14 = [v8 print];
  sub_5B3D8();

  (*(v10 + 104))(v9, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v11);
  v15 = [v8 print];
  v16 = sub_5B3D8();

  v17 = *(v16 + 16);

  sub_41CC4(0, 0xE000000000000000, v17);
  v18 = [v8 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  v19 = *(v0 + 168);
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v20 = sub_5A488();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v12, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v21 = v29[10];
  v22 = v29[11];
  sub_5CBC(v29 + 7, v21);
  *(v0 + 240) = v30;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v23 = sub_5F2C((v0 + 216));
  (*(v31 + 16))(v23, v28, v30);
  v24 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v25 = swift_task_alloc();
  *(v0 + 480) = v25;
  *v25 = v0;
  v25[1] = sub_3D344;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v21, v22);
}

uint64_t sub_3D198()
{
  v18 = v0;
  v1 = v0[59];
  v2 = v0[37];
  sub_5B5A8(43);

  v17[0] = 0xD000000000000029;
  v17[1] = 0x800000000005F260;
  swift_getErrorValue();
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[34];
  v20._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v20);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  v0[36] = sub_3147C(0xD000000000000029, 0x800000000005F260, v16, v17);
  sub_C118();
  sub_5A418();

  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[52];
  v9 = v0[49];
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];
  v13 = v0[39];

  v14 = v0[1];

  return v14();
}

uint64_t sub_3D344()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_3D68C;
  }

  else
  {
    sub_5D00((v2 + 216));
    v5 = sub_3D470;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3D470()
{
  v1 = v0[51];
  v24 = v0[50];
  v25 = v0[52];
  v2 = v0[45];
  v22 = v0[58];
  v23 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[38];
  v20 = v0[37];
  v21 = v0[44];
  v19 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.failed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v23, v21);
  (*(v1 + 8))(v25, v24);
  v10 = v0[53];
  v9 = v0[54];
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];
  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[39];

  v17 = v0[1];

  return v17();
}

uint64_t sub_3D68C()
{
  sub_5D00(v0 + 27);
  v1 = v0[51];
  v24 = v0[50];
  v25 = v0[52];
  v2 = v0[45];
  v22 = v0[58];
  v23 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[38];
  v20 = v0[37];
  v21 = v0[44];
  v19 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.failed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v23, v21);
  (*(v1 + 8))(v25, v24);
  v10 = v0[53];
  v9 = v0[54];
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];
  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[39];

  v17 = v0[1];

  return v17();
}

uint64_t sub_3D8EC()
{
  sub_5D00(v0 + 2);
  sub_5D00(v0 + 7);
  sub_5D00(v0 + 12);
  v1 = v0[17];

  return swift_deallocClassInstance();
}

uint64_t sub_3D960()
{
  v2 = *v0;
  type metadata accessor for GibberishFlow();
  return sub_5A098();
}

uint64_t sub_3D9BC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_3C6AC(a1);
}

uint64_t sub_3DA58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GibberishFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_3DA90(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[40] = v4;
  v5 = *(v4 - 8);
  v2[41] = v5;
  v6 = *(v5 + 64) + 15;
  v2[42] = swift_task_alloc();
  v7 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v8 = sub_5A908();
  v2[44] = v8;
  v9 = *(v8 - 8);
  v2[45] = v9;
  v10 = *(v9 + 64) + 15;
  v2[46] = swift_task_alloc();
  v11 = sub_5A648();
  v2[47] = v11;
  v12 = *(v11 - 8);
  v2[48] = v12;
  v13 = *(v12 + 64) + 15;
  v2[49] = swift_task_alloc();
  v14 = sub_5A588();
  v2[50] = v14;
  v15 = *(v14 - 8);
  v2[51] = v15;
  v16 = *(v15 + 64) + 15;
  v2[52] = swift_task_alloc();

  return _swift_task_switch(sub_3DCD4, 0, 0);
}

uint64_t sub_3DCD4()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "GiveUpRepeatFlow: execute called", v4, 2u);
  }

  v5 = v0[38];

  v6 = sub_5CBC((v5 + 16), *(v5 + 40));
  v7 = sub_38208(_swiftEmptyArrayStorage);
  v0[53] = v7;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v9 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v10 = sub_3802C(inited);
  v0[54] = v10;
  swift_setDeallocating();
  sub_5D4C(v9, &unk_72450, &unk_5C470);
  v11 = *v6;
  v12 = swift_task_alloc();
  v0[55] = v12;
  *v12 = v0;
  v12[1] = sub_3DF0C;

  return sub_3419C(0xD000000000000016, 0x800000000005F2C0, v7, v10);
}

uint64_t sub_3DF0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v5 = *(*v2 + 432);
  v6 = *(*v2 + 424);
  v9 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v7 = sub_3E50C;
  }

  else
  {
    v7 = sub_3E064;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_3E064()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v20 = *(v0 + 416);
  v21 = *(v0 + 368);
  v23 = *(v0 + 352);
  v24 = *(v0 + 360);
  v4 = *(v0 + 344);
  v22 = *(v0 + 304);
  v5 = *(v0 + 448);
  v6 = [v5 speak];
  sub_5B3D8();

  v7 = [v5 print];
  sub_5B3D8();

  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v8 = [v5 print];
  v9 = sub_5B3D8();

  v10 = *(v9 + 16);

  sub_41CC4(0, 0xE000000000000000, v10);
  v11 = [v5 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  v12 = *(v0 + 168);
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v13 = sub_5A488();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  *(v0 + 208) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 176) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v4, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v14 = v22[10];
  v15 = v22[11];
  sub_5CBC(v22 + 7, v14);
  *(v0 + 240) = v23;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v16 = sub_5F2C((v0 + 216));
  (*(v24 + 16))(v16, v21, v23);
  v17 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v18 = swift_task_alloc();
  *(v0 + 464) = v18;
  *v18 = v0;
  v18[1] = sub_3E3E0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v14, v15);
}

uint64_t sub_3E3E0()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_3E910;
  }

  else
  {
    sub_5D00((v2 + 216));
    v5 = sub_3E6CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3E50C()
{
  v16 = v0;
  v1 = v0[57];
  v2 = v0[37];
  sub_5B5A8(46);

  v15[0] = 0xD00000000000002CLL;
  v15[1] = 0x800000000005F2E0;
  swift_getErrorValue();
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[34];
  v18._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v18);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  v0[36] = sub_3147C(0xD00000000000002CLL, 0x800000000005F2E0, v14, v15);
  sub_2EA8C(&qword_72550, type metadata accessor for CamErrorFlow);
  sub_5A418();

  v6 = v0[52];
  v7 = v0[49];
  v8 = v0[46];
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[39];

  v12 = v0[1];

  return v12();
}

uint64_t sub_3E6CC()
{
  v1 = v0[51];
  v24 = v0[50];
  v25 = v0[52];
  v2 = v0[45];
  v22 = v0[56];
  v23 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v20 = v0[37];
  v21 = v0[44];
  v19 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.giveUpAskRepeat(_:), v5);
  v8 = enum case for SiriKitReliabilityCodes.promptFailure(_:);
  v9 = sub_5A168();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v23, v21);
  (*(v1 + 8))(v25, v24);
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];
  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[39];

  v17 = v0[1];

  return v17();
}

uint64_t sub_3E910()
{
  sub_5D00(v0 + 27);
  v1 = v0[51];
  v24 = v0[50];
  v25 = v0[52];
  v2 = v0[45];
  v22 = v0[56];
  v23 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v20 = v0[37];
  v21 = v0[44];
  v19 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.giveUpAskRepeat(_:), v5);
  v8 = enum case for SiriKitReliabilityCodes.promptFailure(_:);
  v9 = sub_5A168();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v23, v21);
  (*(v1 + 8))(v25, v24);
  v11 = v0[52];
  v12 = v0[49];
  v13 = v0[46];
  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[39];

  v17 = v0[1];

  return v17();
}

uint64_t sub_3EB84()
{
  v2 = *v0;
  type metadata accessor for GiveUpRepeatFlow();
  return sub_5A098();
}

uint64_t sub_3EBE0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_3DA90(a1);
}

uint64_t sub_3EC7C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GiveUpRepeatFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_3ECB4(uint64_t a1)
{
  v2 = sub_5B94(&qword_71C88, &qword_5C2A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v73 = &v59 - v4;
  v5 = type metadata accessor for CAMDirectInvocation();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  v7 = __chkstk_darwin(v5);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v59 - v9;
  v10 = sub_5A858();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  __chkstk_darwin(v10);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_5A838();
  v13 = *(v68 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v68);
  v74 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5A7D8();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v67 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v59 - v21;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v23 = sub_5B228();
  v24 = sub_5B44(v23, qword_763B8);
  v64 = v17[2];
  v65 = v17 + 2;
  v64(v22, a1, v16);
  v70 = v24;
  v25 = sub_5B218();
  v26 = sub_5B4B8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v75 = v16;
    v28 = v27;
    v29 = swift_slowAlloc();
    v59 = v13;
    v30 = v29;
    v76 = v29;
    *v28 = 136315138;
    sub_2EA8C(&qword_71C90, &type metadata accessor for Input);
    v31 = sub_5B798();
    v32 = a1;
    v34 = v33;
    v66 = v17[1];
    v66(v22, v75);
    v35 = sub_2DC10(v31, v34, &v76);
    a1 = v32;

    *(v28 + 4) = v35;
    _os_log_impl(&dword_0, v25, v26, "GiveUpRepeatFlow: on called with %s", v28, 0xCu);
    sub_5D00(v30);
    v13 = v59;

    v16 = v75;
  }

  else
  {

    v66 = v17[1];
    v66(v22, v16);
  }

  v36 = v69;
  sub_5A7C8();
  v38 = v71;
  v37 = v72;
  v39 = (*(v71 + 88))(v36, v72);
  v40 = v73;
  v41 = v74;
  if (v39 != enum case for Parse.directInvocation(_:))
  {
    (*(v38 + 8))(v36, v37);
    goto LABEL_10;
  }

  (*(v38 + 96))(v36, v37);
  (*(v13 + 32))(v41, v36, v68);
  sub_3601C(v40);
  if ((*(v62 + 48))(v40, 1, v63) == 1)
  {
    (*(v13 + 8))(v41, v68);
    sub_5D4C(v40, &qword_71C88, &qword_5C2A0);
LABEL_10:
    v42 = v67;
    v64(v67, a1, v16);
    v43 = sub_5B218();
    v44 = sub_5B4C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v76 = v46;
      *v45 = 136315138;
      sub_2EA8C(&qword_71C90, &type metadata accessor for Input);
      v47 = sub_5B798();
      v49 = v48;
      v66(v42, v16);
      v50 = sub_2DC10(v47, v49, &v76);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_0, v43, v44, "GiveUpRepeatFlow called with unexpected input %s", v45, 0xCu);
      sub_5D00(v46);
    }

    else
    {

      v66(v42, v16);
    }

    return 0;
  }

  v52 = v40;
  v53 = v61;
  sub_1AF04(v52, v61);
  v54 = v53;
  v55 = v60;
  sub_2E9CC(v54, v60);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_2EA30(v61);
    (*(v13 + 8))(v41, v68);
    sub_2EA30(v55);
    goto LABEL_10;
  }

  sub_2EA30(v55);
  v56 = sub_5B218();
  v57 = sub_5B4B8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_0, v56, v57, "GiveUpRepeatFlow: input accepted", v58, 2u);
  }

  sub_2EA30(v61);
  (*(v13 + 8))(v41, v68);
  return 1;
}

uint64_t sub_3F4C8(uint64_t a1)
{
  v2 = sub_5B94(&qword_73410, &qword_5D548);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  sub_3FD64(a1, &v14 - v7);
  v9 = sub_5AD48();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_3FD64(v8, v6);
    v12 = (*(v10 + 88))(v6, v9);
    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourth(_:))
    {
      v11 = 3;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Second(_:))
    {
      v11 = 1;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Beginning(_:))
    {
      goto LABEL_8;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFourth(_:))
    {
      v11 = 23;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventeenth(_:))
    {
      v11 = 16;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighth(_:))
    {
      v11 = 7;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_ThirdToLast(_:))
    {
      v11 = -3;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixth(_:))
    {
      v11 = 5;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Nineteenth(_:))
    {
      v11 = 18;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFifth(_:))
    {
      v11 = 24;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Ninth(_:))
    {
      v11 = 8;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eleventh(_:))
    {
      v11 = 10;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_End(_:))
    {
      goto LABEL_28;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fourteenth(_:))
    {
      v11 = 13;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_SecondToLast(_:))
    {
      v11 = -2;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyFirst(_:))
    {
      v11 = 20;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Thirteenth(_:))
    {
      v11 = 12;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Last(_:))
    {
LABEL_28:
      v11 = -1;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentySecond(_:))
    {
      v11 = 21;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifteenth(_:))
    {
      v11 = 14;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twentieth(_:))
    {
      v11 = 19;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Fifth(_:))
    {
      v11 = 4;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Sixteenth(_:))
    {
      v11 = 15;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_First(_:))
    {
LABEL_8:
      v11 = 0;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Seventh(_:))
    {
      v11 = 6;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Eighteenth(_:))
    {
      v11 = 17;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_TwentyThird(_:))
    {
      v11 = 22;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Twelfth(_:))
    {
      v11 = 11;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Third(_:))
    {
      v11 = 2;
      goto LABEL_37;
    }

    if (v12 == enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Tenth(_:))
    {
      v11 = 9;
      goto LABEL_37;
    }

    (*(v10 + 8))(v6, v9);
  }

  v11 = 0;
LABEL_37:
  sub_3FCFC(v8);
  return v11;
}

uint64_t sub_3F9D8()
{
  v0 = sub_5B94(&qword_73410, &qword_5D548);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  if (!sub_4FA30())
  {
    return 0;
  }

  v4 = sub_5AE28();
  if (!*(v4 + 16) || (v5 = sub_37278(0x797469746E65, 0xE600000000000000), (v6 & 1) == 0))
  {

    goto LABEL_22;
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  if (v7 >> 62)
  {
    if (!sub_5B678())
    {
      goto LABEL_33;
    }
  }

  else if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_33:

    return 0;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_5B5B8();
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_31;
    }

    v8 = *(v7 + 32);
  }

  v9 = sub_5AE78();

  if (!v9)
  {
LABEL_22:

    return 0;
  }

  v10 = sub_5AE88();
  if (!*(v10 + 16) || (v11 = sub_37278(0x507473694C6F7375, 0xEF6E6F697469736FLL), (v12 & 1) == 0))
  {

LABEL_25:

    goto LABEL_22;
  }

  v7 = *(*(v10 + 56) + 8 * v11);

  if (!(v7 >> 62))
  {
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = sub_5B678();
  if (!result)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_14:
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_5B5B8();
LABEL_17:

    v15 = sub_5AE78();

    if (v15)
    {
      sub_5AD58();

      sub_5ACB8();

      if (v19[1])
      {
        sub_5AD38();
        v16 = sub_3F4C8(v3);
        v18 = v17;

        sub_3FCFC(v3);
        if ((v18 & 1) == 0)
        {
          return v16;
        }

        return 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    v14 = *(v7 + 32);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_3FCFC(uint64_t a1)
{
  v2 = sub_5B94(&qword_73410, &qword_5D548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3FD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73410, &qword_5D548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3FDD4()
{
  v0 = sub_5B228();
  sub_3FE60(v0, qword_763B8);
  sub_5B44(v0, qword_763B8);
  if (qword_71A60 != -1)
  {
    swift_once();
  }

  v1 = qword_763D0;
  return sub_5B238();
}

uint64_t *sub_3FE60(uint64_t a1, uint64_t *a2)
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

uint64_t sub_3FEC4()
{
  sub_3FF1C();
  result = sub_5B4F8();
  qword_763D0 = result;
  return result;
}

unint64_t sub_3FF1C()
{
  result = qword_73418;
  if (!qword_73418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_73418);
  }

  return result;
}

uint64_t sub_3FF68(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[57] = v4;
  v5 = *(v4 - 8);
  v2[58] = v5;
  v6 = *(v5 + 64) + 15;
  v2[59] = swift_task_alloc();
  v7 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[60] = swift_task_alloc();
  v8 = sub_5A908();
  v2[61] = v8;
  v9 = *(v8 - 8);
  v2[62] = v9;
  v10 = *(v9 + 64) + 15;
  v2[63] = swift_task_alloc();
  v11 = sub_5A648();
  v2[64] = v11;
  v12 = *(v11 - 8);
  v2[65] = v12;
  v13 = *(v12 + 64) + 15;
  v2[66] = swift_task_alloc();
  v14 = sub_5A588();
  v2[67] = v14;
  v15 = *(v14 - 8);
  v2[68] = v15;
  v16 = *(v15 + 64) + 15;
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_401AC, 0, 0);
}

uint64_t sub_401AC()
{
  v19 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "NetworkUnavailableFlow: execute called", v4, 2u);
  }

  sub_5B018();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[70] = v6;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v8 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v9 = sub_3802C(inited);
  swift_setDeallocating();
  sub_5D4C(v8, &unk_72450, &unk_5C470);
  v10 = sub_5B338();
  v0[71] = v10;
  isa = sub_5B2E8().super.isa;
  v0[72] = isa;
  v12 = sub_5A2B8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_357CC(v9, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v18);

  v14 = objc_opt_self();
  v15 = sub_5B2E8().super.isa;
  v0[73] = v15;

  v0[2] = v0;
  v0[7] = v0 + 51;
  v0[3] = sub_40578;
  v16 = swift_continuation_init();
  v0[27] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_35658;
  v0[23] = &unk_6E3C8;
  v0[24] = v16;
  [v14 execute:v6 catId:v10 parameters:isa globals:v15 completion:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_40578()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 592) = v2;
  if (v2)
  {
    v3 = sub_40B58;
  }

  else
  {
    v3 = sub_40688;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_40688()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v24 = *(v0 + 552);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v25 = *(v0 + 504);
  v27 = *(v0 + 488);
  v28 = *(v0 + 496);
  v7 = *(v0 + 480);
  v26 = *(v0 + 440);

  v8 = *(v0 + 408);
  *(v0 + 600) = v8;

  v9 = v8;
  v10 = [v9 speak];
  sub_5B3D8();

  v11 = [v9 print];
  sub_5B3D8();

  (*(v5 + 104))(v4, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v6);
  v12 = [v9 print];
  v13 = sub_5B3D8();

  v14 = *(v13 + 16);

  sub_41CC4(0, 0xE000000000000000, v14);
  v15 = [v9 meta];

  sub_5B2F8();
  sub_5A528();
  sub_5A868();
  sub_5A868();
  v16 = *(v0 + 296);
  sub_5CBC((v0 + 264), *(v0 + 288));
  sub_5A218();
  v17 = sub_5A488();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  *(v0 + 336) = 0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  sub_5A3E8();
  sub_5D4C(v0 + 304, &qword_721D8, &qword_5C480);
  sub_5D4C(v7, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 224));
  sub_5D00((v0 + 264));
  v18 = v26[10];
  v19 = v26[11];
  sub_5CBC(v26 + 7, v18);
  *(v0 + 368) = v27;
  *(v0 + 376) = &protocol witness table for AceOutput;
  v20 = sub_5F2C((v0 + 344));
  (*(v28 + 16))(v20, v25, v27);
  v21 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v22 = swift_task_alloc();
  *(v0 + 608) = v22;
  *v22 = v0;
  v22[1] = sub_40A2C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 344, v18, v19);
}

uint64_t sub_40A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_40F28;
  }

  else
  {
    sub_5D00((v2 + 344));
    v5 = sub_40D1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_40B58()
{
  v20 = v0;
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[54];
  swift_willThrow();

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_5B5A8(52);
  v22._object = 0x800000000005F360;
  v22._countAndFlagsBits = 0xD000000000000032;
  sub_5B388(v22);
  swift_getErrorValue();
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[50];
  v23._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v23);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  v0[53] = sub_3147C(0, 0xE000000000000000, v18, v19);
  sub_C118();
  sub_5A418();

  v10 = v0[69];
  v11 = v0[66];
  v12 = v0[63];
  v14 = v0[59];
  v13 = v0[60];
  v15 = v0[56];

  v16 = v0[1];

  return v16();
}

uint64_t sub_40D1C()
{
  v1 = v0[68];
  v22 = v0[67];
  v23 = v0[69];
  v2 = v0[62];
  v20 = v0[75];
  v21 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[55];
  v18 = v0[54];
  v19 = v0[61];
  v17 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v21, v19);
  (*(v1 + 8))(v23, v22);
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[63];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[56];

  v15 = v0[1];

  return v15();
}

uint64_t sub_40F28()
{
  sub_5D00(v0 + 43);
  v1 = v0[68];
  v22 = v0[67];
  v23 = v0[69];
  v2 = v0[62];
  v20 = v0[75];
  v21 = v0[63];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[56];
  v6 = v0[57];
  v7 = v0[55];
  v18 = v0[54];
  v19 = v0[61];
  v17 = v7[16];
  sub_5CBC(v7 + 12, v7[15]);
  sub_5A1E8();
  (*(v4 + 104))(v3, enum case for ActivityType.completed(_:), v6);
  v8 = sub_5A168();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v2 + 8))(v21, v19);
  (*(v1 + 8))(v23, v22);
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[63];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[56];

  v15 = v0[1];

  return v15();
}

uint64_t sub_411A0()
{
  v2 = *v0;
  type metadata accessor for NetworkUnavailableFlow();
  return sub_5A098();
}

uint64_t sub_411FC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_3FF68(a1);
}

uint64_t sub_41298(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NetworkUnavailableFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_412D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_5B94(&qword_72E78, &unk_5D0B0);
  v36 = a2;
  result = sub_5B698();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_302D4(v25, v37);
      }

      else
      {
        sub_C0A0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_5B848();
      sub_5B378();
      result = sub_5B868();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_302D4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_41588(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_5B94(&qword_72F68, &qword_5D600);
  v36 = a2;
  result = sub_5B698();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_5B838();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_4180C()
{
  v1 = v0;
  sub_5B94(&qword_72E78, &unk_5D0B0);
  v2 = *v0;
  v3 = sub_5B688();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_C0A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_302D4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_419B0()
{
  v1 = v0;
  sub_5B94(&qword_72F68, &qword_5D600);
  v2 = *v0;
  v3 = sub_5B688();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

uint64_t sub_41B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_C0A0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_41B64@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_C0A0(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_302D4(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_5D4C(v22, &qword_734E8, &qword_5D5F8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_41CC4(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return &_swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_5B3F8();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_41D60()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4B8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "NetworkUnavailableFlow input accepted", v3, 2u);
  }

  return 1;
}

uint64_t sub_41E68()
{
  v1 = sub_5B94(&qword_734F0, &qword_5D608);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v158 = &v146 - v3;
  v4 = sub_5A7B8();
  v168 = *(v4 - 8);
  v169 = v4;
  v5 = *(v168 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v160 = &v146 - v9;
  v10 = sub_5B94(&qword_724E0, &qword_5C620);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v150 = (&v146 - v12);
  v159 = sub_59E98();
  v151 = *(v159 - 8);
  v13 = *(v151 + 64);
  v14 = __chkstk_darwin(v159);
  v147 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v148 = &v146 - v16;
  v17 = sub_5B94(&unk_72520, &qword_5C320);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v170 = &v146 - v19;
  v171 = sub_5A858();
  v20 = *(v171 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v171);
  v163 = (&v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v167 = &v146 - v24;
  v175 = sub_5A7D8();
  v177 = *(v175 - 8);
  v25 = v177[8];
  v26 = __chkstk_darwin(v175);
  v161 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v166 = &v146 - v28;
  v176 = sub_5A8E8();
  v174 = *(v176 - 8);
  v29 = *(v174 + 64);
  __chkstk_darwin(v176);
  v31 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_5B94(&unk_73C70, &unk_5C300);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v146 - v34;
  v36 = sub_5A318();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v39 = __chkstk_darwin(v36);
  v149 = &v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v157 = &v146 - v42;
  __chkstk_darwin(v41);
  v44 = &v146 - v43;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v45 = sub_5B228();
  v46 = sub_5B44(v45, qword_763B8);
  v47 = v37[2];
  v173 = v0;
  v153 = v37 + 2;
  v152 = v47;
  v47(v44, v0, v36);
  v172 = v46;
  v48 = sub_5B218();
  v49 = sub_5B4B8();
  v50 = os_log_type_enabled(v48, v49);
  v162 = v31;
  v165 = v8;
  v156 = v36;
  v155 = v37;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v164 = v20;
    v52 = v51;
    v53 = swift_slowAlloc();
    v178 = v53;
    *v52 = 136315138;
    v54 = sub_5A2C8();
    v56 = v55;
    v154 = v37[1];
    v154(v44, v36);
    v57 = sub_2DC10(v54, v56, &v178);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_0, v48, v49, "Finding app bundle id for %s action", v52, 0xCu);
    sub_5D00(v53);

    v20 = v164;
  }

  else
  {

    v154 = v37[1];
    v154(v44, v36);
  }

  v58 = v170;
  v59 = v173;
  sub_5A2D8();
  v60 = sub_5A518();
  v61 = *(v60 - 8);
  v62 = (*(v61 + 48))(v35, 1, v60);
  v63 = v171;
  if (v62 == 1)
  {
    sub_5D4C(v35, &unk_73C70, &unk_5C300);
    v64 = v176;
    v65 = v174;
  }

  else
  {
    v170 = sub_5A508();
    v67 = v66;
    (*(v61 + 8))(v35, v60);
    v64 = v176;
    v65 = v174;
    if (v67)
    {

      v68 = sub_5B218();
      v69 = sub_5B4B8();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v178 = v71;
        *v70 = 136315138;
        v72 = v170;
        *(v70 + 4) = sub_2DC10(v170, v67, &v178);
        _os_log_impl(&dword_0, v68, v69, "Value %s found in action paraphrase", v70, 0xCu);
        sub_5D00(v71);
      }

      else
      {

        return v170;
      }

      return v72;
    }
  }

  v73 = v166;
  sub_5A2F8();
  v74 = v167;
  sub_5A7C8();
  v75 = v74;
  v76 = v177[1];
  ++v177;
  v76(v73, v175);
  v77 = *(v20 + 88);
  if (v77(v75, v63) == enum case for Parse.uso(_:))
  {
    v164 = v20;
    (*(v20 + 96))(v75, v63);
    v78 = v75;
    v79 = v162;
    (*(v65 + 32))(v162, v78, v64);
    LOBYTE(v178) = 1;
    sub_5A8B8();
    v80 = sub_5A638();
    v81 = v65;
    v82 = *(v80 - 8);
    if ((*(v82 + 48))(v58, 1, v80) != 1)
    {
      v72 = sub_5A628();
      v117 = v116;
      (*(v82 + 8))(v58, v80);

      v118 = sub_5B218();
      v119 = sub_5B4B8();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v178 = v121;
        *v120 = 136315138;
        *(v120 + 4) = sub_2DC10(v72, v117, &v178);
        _os_log_impl(&dword_0, v118, v119, "Value %s found in app shortcut invocation", v120, 0xCu);
        sub_5D00(v121);
      }

      (*(v174 + 8))(v162, v176);
      return v72;
    }

    (*(v81 + 8))(v79, v176);
    sub_5D4C(v58, &unk_72520, &qword_5C320);
    v20 = v164;
  }

  else
  {
    (*(v20 + 8))(v75, v63);
  }

  v83 = v161;
  sub_5A2F8();
  v84 = v163;
  sub_5A7C8();
  v76(v83, v175);
  if (v77(v84, v63) == enum case for Parse.pommesResponse(_:))
  {
    (*(v20 + 96))(v84, v63);
    v85 = *v84;
    v86 = v150;
    sub_438F4(v150);
    v87 = v151;
    v88 = v159;
    v89 = (*(v151 + 48))(v86, 1, v159);
    v90 = v165;
    if (v89 != 1)
    {
      v122 = v148;
      (*(v87 + 32))(v148, v86, v88);
      v123 = v147;
      (*(v87 + 16))(v147, v122, v88);
      v124 = sub_5B218();
      v125 = sub_5B4B8();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v178 = v177;
        *v126 = 136315138;
        v127 = sub_59E78();
        v129 = v128;
        v130 = *(v87 + 8);
        v130(v123, v159);
        v131 = sub_2DC10(v127, v129, &v178);

        *(v126 + 4) = v131;
        _os_log_impl(&dword_0, v124, v125, "Using %s from PommesResponse sash", v126, 0xCu);
        sub_5D00(v177);

        v88 = v159;
      }

      else
      {

        v130 = *(v87 + 8);
        v130(v123, v88);
      }

      v72 = sub_59E78();

      v130(v122, v88);
      return v72;
    }

    sub_5D4C(v86, &qword_724E0, &qword_5C620);
  }

  else
  {
    (*(v20 + 8))(v84, v63);
    v90 = v165;
  }

  sub_5A2C8();
  v91 = v158;
  sub_5A788();

  v92 = (*(v168 + 48))(v91, 1, v169);
  v93 = v157;
  if (v92 == 1)
  {
    sub_5D4C(v91, &qword_734F0, &qword_5D608);
    v94 = v149;
    v95 = v156;
    v152(v149, v59, v156);
    v96 = sub_5B218();
    v97 = sub_5B4C8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v178 = v99;
      *v98 = 136315138;
      v100 = sub_5A2C8();
      v102 = v101;
      v154(v94, v95);
      v103 = sub_2DC10(v100, v102, &v178);

      *(v98 + 4) = v103;
      _os_log_impl(&dword_0, v96, v97, "%s was not found in plugin manifest", v98, 0xCu);
      sub_5D00(v99);
    }

    else
    {

      v154(v94, v95);
    }

    return 0;
  }

  (*(v168 + 32))(v160, v91, v169);
  v104 = sub_5A7A8();
  if (!v105)
  {
    (*(v168 + 16))(v90, v160, v169);
    v132 = sub_5B218();
    v133 = sub_5B4C8();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = v90;
      v136 = swift_slowAlloc();
      v178 = v136;
      *v134 = 136315138;
      v137 = sub_5A798();
      v139 = v138;
      v140 = v169;
      v141 = *(v168 + 8);
      v141(v135, v169);
      v142 = sub_2DC10(v137, v139, &v178);

      *(v134 + 4) = v142;
      _os_log_impl(&dword_0, v132, v133, "No app is associated with %s in plugin manifest", v134, 0xCu);
      sub_5D00(v136);

      v141(v160, v140);
    }

    else
    {

      v143 = v169;
      v144 = *(v168 + 8);
      v144(v90, v169);
      v144(v160, v143);
    }

    return 0;
  }

  v72 = v104;
  v106 = v105;
  v107 = v59;
  v108 = v156;
  v152(v93, v107, v156);

  v109 = sub_5B218();
  v110 = sub_5B4B8();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *v111 = 136315394;
    *(v111 + 4) = sub_2DC10(v72, v106, &v178);
    *(v111 + 12) = 2080;
    v112 = sub_5A2C8();
    v114 = v113;
    v154(v93, v108);
    v115 = sub_2DC10(v112, v114, &v178);

    *(v111 + 14) = v115;
    _os_log_impl(&dword_0, v109, v110, "Using %s from being associated with %s", v111, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v154(v93, v108);
  }

  (*(v168 + 8))(v160, v169);
  return v72;
}

uint64_t sub_4315C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_5B94(&qword_72530, &qword_5C660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v69 = &v57 - v4;
  v67 = sub_59E38();
  v65 = *(v67 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v67);
  v68 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5B94(&qword_734F8, &unk_5D610);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v61 = (&v57 - v9);
  v10 = sub_5A968();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5A858();
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  v15 = __chkstk_darwin(v13);
  v62 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v19 = sub_5A7D8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v57 - v25;
  v27 = sub_5A8E8();
  v58 = *(v27 - 8);
  v28 = *(v58 + 64);
  __chkstk_darwin(v27);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_5B248();
  v63 = *(v31 - 8);
  v64 = v31;
  v32 = *(v63 + 64);
  v33 = __chkstk_darwin(v31);
  v71 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v72 = (&v57 - v35);
  v36 = v1;
  sub_5A2F8();
  sub_5A7C8();
  v37 = v13;
  v38 = *(v20 + 8);
  v59 = v19;
  v38(v26, v19);
  v39 = *(v73 + 88);
  v40 = v39(v18, v37);
  v66 = v36;
  if (v40 == enum case for Parse.uso(_:))
  {
    v41 = v27;
    (*(v73 + 96))(v18, v37);
    v42 = v58;
    (*(v58 + 32))(v30, v18, v41);
    sub_5A8D8();
    sub_5A898();
    sub_5A888();
    sub_5A878();
    v43 = v72;
    sub_5B258();
    (*(v42 + 8))(v30, v41);
    v44 = &enum case for CamParse.uso(_:);
    v46 = v68;
    v45 = v69;
    v47 = v67;
    v49 = v64;
    v48 = v65;
    v50 = v63;
    v51 = v43;
  }

  else
  {
    v61 = *(v73 + 8);
    v61(v18, v37);
    v52 = v37;
    sub_5A2F8();
    v53 = v62;
    sub_5A7C8();
    v38(v24, v59);
    if (v39(v53, v37) == enum case for Parse.pommesResponse(_:))
    {
      v54 = v62;
      (*(v73 + 96))(v62, v52);
      v51 = v72;
      *v72 = *v54;
      v44 = &enum case for CamParse.pommesResponse(_:);
      v46 = v68;
      v45 = v69;
      v47 = v67;
      v49 = v64;
      v48 = v65;
      v50 = v63;
    }

    else
    {
      v61(v62, v37);
      v44 = &enum case for CamParse.empty(_:);
      v46 = v68;
      v45 = v69;
      v47 = v67;
      v49 = v64;
      v48 = v65;
      v50 = v63;
      v51 = v72;
    }
  }

  (*(v50 + 104))(v51, *v44, v49);
  sub_5A2C8();
  (*(v50 + 16))(v71, v51, v49);
  sub_5A308();
  v55 = *(v48 + 48);
  if (v55(v45, 1, v47) == 1)
  {
    sub_59E28();
    if (v55(v45, 1, v47) != 1)
    {
      sub_4388C(v45);
    }
  }

  else
  {
    (*(v48 + 32))(v46, v45, v47);
  }

  sub_5B268();
  return (*(v50 + 8))(v72, v49);
}

uint64_t sub_4388C(uint64_t a1)
{
  v2 = sub_5B94(&qword_72530, &qword_5C660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_438F4@<X0>(void (*a1)(char *, uint64_t)@<X8>)
{
  v41 = sub_59EE8();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v41);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_59EB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v34 - v13);
  result = sub_5B148();
  if (result >> 62)
  {
    goto LABEL_16;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    do
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v16 = sub_5B5B8();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v16 = *(result + 32);
      }

      v17 = v16;

      sub_5B168();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {

        goto LABEL_18;
      }

      v36 = v1;
      v37 = v17;
      v35 = v14;
      v38 = a1;
      v1 = v18;
      result = sub_5B158();
      v19 = result;
      v40 = *(result + 16);
      if (!v40)
      {
LABEL_12:

        a1 = v38;
        v1 = v36;
        goto LABEL_18;
      }

      v20 = 0;
      v39 = v8 + 16;
      v3 += 8;
      v14 = (v8 + 8);
      while (v20 < *(v19 + 16))
      {
        (*(v8 + 16))(v12, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v7);
        sub_59EA8();
        v1 = sub_59ED8();
        a1 = *v3;
        (*v3)(v6, v41);
        if (v1)
        {

          v21 = v35;
          (*(v8 + 32))(v35, v12, v7);
          sub_59EA8();
          v22 = v38;
          sub_59EC8();

          a1(v6, v41);
          a1 = v22;
          (*(v8 + 8))(v21, v7);
          v23 = 0;
          goto LABEL_23;
        }

        ++v20;
        result = (*v14)(v12, v7);
        if (v40 == v20)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_16:
      v24 = result;
      v25 = sub_5B678();
      result = v24;
    }

    while (v25);
  }

LABEL_18:
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v26 = sub_5B228();
  sub_5B44(v26, qword_763B8);
  v27 = v1;
  v28 = sub_5B218();
  v29 = sub_5B4C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_0, v28, v29, "No sash found in pommes response: %@", v30, 0xCu);
    sub_43DAC(v31);
  }

  v23 = 1;
LABEL_23:
  v33 = sub_59E98();
  return (*(*(v33 - 8) + 56))(a1, v23, 1, v33);
}

uint64_t sub_43DAC(uint64_t a1)
{
  v2 = sub_5B94(&qword_72538, &qword_5C668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  sub_5F90(a3, v5 + 16);
  sub_5F90(a4, v5 + 56);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v10 = sub_5B228();
  sub_5B44(v10, qword_763B8);
  v11 = sub_5B218();
  v12 = sub_5B4B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PommesTimeoutFlow: new instance initialised", v13, 2u);
  }

  sub_5D00(a4);
  sub_5D00(a3);
  return v5;
}

uint64_t sub_43F38(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(sub_5B94(&unk_73CE0, &unk_5CB30) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = sub_5A2A8();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v8 = sub_5A908();
  v2[29] = v8;
  v9 = *(v8 - 8);
  v2[30] = v9;
  v10 = *(v9 + 64) + 15;
  v2[31] = swift_task_alloc();
  v11 = *(*(sub_5B94(&qword_72C90, &unk_5CE60) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v12 = sub_5A588();
  v2[33] = v12;
  v13 = *(v12 - 8);
  v2[34] = v13;
  v14 = *(v13 + 64) + 15;
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_44158, 0, 0);
}

uint64_t sub_44158()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[36] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "PommesTimeoutFlow: execute called", v4, 2u);
  }

  v5 = async function pointer to static ErrorTemplates.pommesTimeout()[1];
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_31918;
  v7 = v0[32];

  return static ErrorTemplates.pommesTimeout()(v7);
}

uint64_t sub_442D8()
{
  v2 = *v0;
  type metadata accessor for PommesTimeoutFlow();
  return sub_5A098();
}

uint64_t sub_44334(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_43F38(a1);
}

uint64_t sub_443D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PommesTimeoutFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_44408(uint64_t a1)
{
  v2 = sub_5A7D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v7 = sub_5B228();
  sub_5B44(v7, qword_763B8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_5B218();
  v9 = sub_5B4B8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    sub_326D8();
    v12 = sub_5B798();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_2DC10(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_0, v8, v9, "PommesTimeoutFlow: on called with %s", v10, 0xCu);
    sub_5D00(v11);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_4464C@<X0>(uint64_t a1@<X8>)
{
  sub_5AEF8();
  if (sub_5AEC8())
  {
    sub_5AE98();

    sub_5B0C8();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_5AF88();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t sub_44708(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_5B94(&qword_73710, &qword_5D828) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = sub_5A858();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_44800, 0, 0);
}

uint64_t sub_44800()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = *(v5 + 136);
  *(v5 + 136) = 4;
  sub_49148(v6);
  sub_5A7C8();
  v7 = sub_4916C(v1);
  (*(v2 + 8))(v1, v3);
  if (v7 <= 1u)
  {
    if (!v7)
    {
      v8 = swift_task_alloc();
      v0[13] = v8;
      *v8 = v0;
      v8[1] = sub_44CFC;
      v9 = v0[8];
      v10 = 0;
      v11 = 0;
LABEL_11:

      return sub_453EC(v10, v11);
    }

    v0[5] = &type metadata for CAMRootFlowPluginFeatureFlags;
    v0[6] = sub_339C4();
    v19 = sub_5A918();
    sub_5D00(v0 + 2);
    if ((v19 & 1) == 0)
    {
      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v33 = sub_5B228();
      sub_5B44(v33, qword_763B8);
      v34 = sub_5B218();
      v35 = sub_5B4A8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_0, v34, v35, "'Go back' is not supported on this device.", v36, 2u);
      }

      v27 = 0;
      goto LABEL_31;
    }

    v21 = v0[8];
    v20 = v0[9];
    v23 = *(v21 + 144);
    v22 = *(v21 + 152);

    v23(v24);

    LOBYTE(v22) = sub_46BE8();
    sub_5D4C(v20, &qword_73710, &qword_5D828);
    if (v22)
    {
      v17 = swift_task_alloc();
      v0[15] = v17;
      *v17 = v0;
      v18 = sub_44F4C;
      goto LABEL_10;
    }

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v37 = sub_5B228();
    sub_5B44(v37, qword_763B8);
    v38 = sub_5B218();
    v39 = sub_5B4A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "'Go back' not supported in current response mode.", v40, 2u);
    }

    v32 = *(v5 + 136);
    *(v5 + 136) = 2;
    goto LABEL_30;
  }

  if (v7 == 2)
  {
    v13 = v0[8];
    v12 = v0[9];
    v15 = *(v13 + 144);
    v14 = *(v13 + 152);

    v15(v16);

    LOBYTE(v14) = sub_46BE8();
    sub_5D4C(v12, &qword_73710, &qword_5D828);
    if (v14)
    {
      v17 = swift_task_alloc();
      v0[17] = v17;
      *v17 = v0;
      v18 = sub_4519C;
LABEL_10:
      v17[1] = v18;
      v25 = v0[8];
      v10 = 1;
      v11 = 1;
      goto LABEL_11;
    }

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v28 = sub_5B228();
    sub_5B44(v28, qword_763B8);
    v29 = sub_5B218();
    v30 = sub_5B4A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Indirect dismissal silently dismissing Siri in current response mode.", v31, 2u);
    }

    v32 = *(v5 + 136);
    *(v5 + 136) = 0;
LABEL_30:
    sub_49148(v32);
    v27 = 1;
    goto LABEL_31;
  }

  v27 = 0;
LABEL_31:
  v41 = v0[12];
  v42 = v0[9];

  v43 = v0[1];

  return v43(v27);
}

uint64_t sub_44CFC(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_44DFC, 0, 0);
}

uint64_t sub_44DFC()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v3 = sub_5B228();
    sub_5B44(v3, qword_763B8);
    v4 = sub_5B218();
    v5 = sub_5B4A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "No repeatable last dialog.", v6, 2u);
    }

    v2 = v0[8];

    v1 = 3;
  }

  v7 = *(v2 + 136);
  *(v2 + 136) = v1;
  sub_49148(v7);
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_44F4C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_4504C, 0, 0);
}

uint64_t sub_4504C()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v3 = sub_5B228();
    sub_5B44(v3, qword_763B8);
    v4 = sub_5B218();
    v5 = sub_5B4A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "No repeatable dialog before last when asked to go back.", v6, 2u);
    }

    v2 = v0[8];

    v1 = 2;
  }

  v7 = *(v2 + 136);
  *(v2 + 136) = v1;
  sub_49148(v7);
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_4519C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_4529C, 0, 0);
}

uint64_t sub_4529C()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v3 = sub_5B228();
    sub_5B44(v3, qword_763B8);
    v4 = sub_5B218();
    v5 = sub_5B4A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "No repeatable dialog before last during indirect dismissal.", v6, 2u);
    }

    v2 = v0[8];

    v1 = 1;
  }

  v7 = *(v2 + 136);
  *(v2 + 136) = v1;
  sub_49148(v7);
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_453EC(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_5A298();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_454BC, 0, 0);
}

uint64_t sub_454BC()
{
  v1 = *(v0 + 64);
  v2 = v1[5];
  v3 = v1[6];
  sub_5CBC(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of AceServiceInvokerAsync.recentDialogs()[1];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_45574;

  return dispatch thunk of AceServiceInvokerAsync.recentDialogs()(v2, v3);
}

uint64_t sub_45574(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_45674, 0, 0);
}

id sub_45674()
{
  v2 = *(v1 + 112);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v66 = *(v1 + 112);
    }

    v3 = sub_5B678();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *(v1 + 56);
  if (v3 <= v4)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v11 = *(v1 + 112);
    v12 = sub_5B228();
    sub_5B44(v12, qword_763B8);

    v13 = sub_5B218();
    v14 = sub_5B4A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v1 + 56);
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      *(v16 + 4) = v15;
      *(v16 + 12) = 2048;
      if (v2 >> 62)
      {
        v32 = *(v1 + 112);
        if (v2 < 0)
        {
          v33 = *(v1 + 112);
        }

        v17 = sub_5B678();
      }

      else
      {
        v17 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      }

      v34 = *(v1 + 112);

      *(v16 + 14) = v17;

      _os_log_impl(&dword_0, v13, v14, "No recent dialog found. numStepsBack was %ld, but had %ld recent dialogs stored.", v16, 0x16u);
    }

    else
    {
      v18 = *(v1 + 112);
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_59;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if (v4 < 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) > v4)
    {
      v5 = *(*(v1 + 112) + 8 * v4 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_74;
  }

  v67 = *(v1 + 112);
  v5 = sub_5B5B8();
LABEL_8:
  v0 = v5;
  v6 = sub_5A338();
  v7 = [v6 dialogPhase];

  if (v7)
  {
    v8 = sub_5B348();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v19 = *(v1 + 96);
  v20 = *(v1 + 72);
  v21 = *(v1 + 80);
  sub_5A278();
  v22 = sub_5A288();
  v24 = v23;
  v25 = *(v21 + 8);
  v25(v19, v20);
  if (v10)
  {
    if (v22 == v8 && v10 == v24)
    {

LABEL_23:

      goto LABEL_34;
    }

    v26 = sub_5B7A8();

    if (v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v27 = *(v1 + 88);
  v28 = *(v1 + 72);
  sub_5A258();
  v29 = sub_5A288();
  v31 = v30;
  v25(v27, v28);
  if (!v10)
  {

    goto LABEL_49;
  }

  if (v29 == v8 && v10 == v31)
  {

    goto LABEL_34;
  }

  v35 = sub_5B7A8();

  if ((v35 & 1) == 0)
  {
LABEL_49:
    v53 = *(v1 + 112);

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v54 = sub_5B228();
    sub_5B44(v54, qword_763B8);
    v13 = sub_5B218();
    v55 = sub_5B4B8();
    if (!os_log_type_enabled(v13, v55))
    {
      goto LABEL_58;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "The recent dialog is in a non-repeatable phase, won't repeat it.";
    goto LABEL_57;
  }

LABEL_34:
  if (*(v1 + 120) != 1)
  {
    v48 = *(v1 + 112);

    if (qword_71A58 == -1)
    {
LABEL_46:
      v49 = sub_5B228();
      sub_5B44(v49, qword_763B8);
      v50 = sub_5B218();
      v51 = sub_5B4A8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_0, v50, v51, "Returning a recent dialog for replaying.", v52, 2u);
      }

      v47 = v0;
      goto LABEL_60;
    }

LABEL_74:
    swift_once();
    goto LABEL_46;
  }

  v36 = sub_5A338();
  [v36 copy];

  sub_5B538();
  swift_unknownObjectRelease();
  sub_1AB38(0, &qword_73720, SAUIAddViews_ptr);
  if (!swift_dynamicCast())
  {
    v58 = *(v1 + 112);

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v59 = sub_5B228();
    sub_5B44(v59, qword_763B8);
    v13 = sub_5B218();
    v55 = sub_5B4C8();
    if (!os_log_type_enabled(v13, v55))
    {
      goto LABEL_58;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "Failed cloning SAUIAddViews for filtering.";
LABEL_57:
    _os_log_impl(&dword_0, v13, v55, v57, v56, 2u);

LABEL_58:

    goto LABEL_59;
  }

  v37 = *(v1 + 48);
  sub_45ED4();
  result = [v37 views];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = *(v1 + 112);

  sub_1AB38(0, &qword_73728, SAAceView_ptr);
  v41 = sub_5B3D8();

  if (v41 >> 62)
  {
    v42 = sub_5B678();
  }

  else
  {
    v42 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
  }

  if (v42)
  {
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v43 = sub_5B228();
    sub_5B44(v43, qword_763B8);
    v44 = sub_5B218();
    v45 = sub_5B4A8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "Returning a recent dialog for replaying filtered down to visuals only.", v46, 2u);
    }

    v47 = sub_5A328();
    goto LABEL_60;
  }

  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v63 = sub_5B228();
  sub_5B44(v63, qword_763B8);
  v13 = sub_5B218();
  v64 = sub_5B4B8();
  if (os_log_type_enabled(v13, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_0, v13, v64, "The recent dialog contained no visuals.", v65, 2u);
  }

LABEL_59:
  v47 = 0;
LABEL_60:
  v61 = *(v1 + 88);
  v60 = *(v1 + 96);

  v62 = *(v1 + 8);

  return v62(v47);
}

void sub_45ED4()
{
  v1 = v0;
  p_weak_ivar_lyt = &GiveUpRepeatFlow.weak_ivar_lyt;
  v3 = [v0 views];
  if (!v3)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);

    __break(1u);
    return;
  }

  v4 = v3;
  sub_1AB38(0, &qword_73728, SAAceView_ptr);
  v5 = sub_5B3D8();

  v35 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_46;
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
  v31 = v1;
  if (v6)
  {
    p_weak_ivar_lyt = 0;
    v1 = (v5 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v7 = sub_5B5B8();
      }

      else
      {
        if (p_weak_ivar_lyt >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_43;
        }

        v7 = *(v5 + 8 * p_weak_ivar_lyt + 32);
      }

      v8 = v7;
      v9 = p_weak_ivar_lyt + 1;
      if (__OFADD__(p_weak_ivar_lyt, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v6 = sub_5B678();
        goto LABEL_4;
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        break;
      }

LABEL_7:
      ++p_weak_ivar_lyt;
      if (v9 == v6)
      {
        v1 = v31;
        p_weak_ivar_lyt = &GiveUpRepeatFlow.weak_ivar_lyt;
        goto LABEL_25;
      }
    }

    v11 = v10;
    v12 = v8;
    v13 = [v11 itemType];
    if (v13)
    {
      v14 = v13;
      v15 = sub_5B348();
      v17 = v16;

      v18 = sub_5B348();
      if (v17)
      {
        if (v15 == v18 && v17 == v19)
        {

LABEL_22:
          goto LABEL_7;
        }

        v21 = sub_5B7A8();

        if (v21)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_5B348();
    }

LABEL_20:
    sub_5B618();
    v20 = v35[2];
    sub_5B648();
    sub_5B658();
    sub_5B628();
    goto LABEL_7;
  }

LABEL_25:

  isa = sub_5B3C8().super.isa;

  v23 = &GiveUpRepeatFlow.weak_ivar_lyt;
  [v1 setViews:isa];

  v24 = [v1 *(p_weak_ivar_lyt + 1856)];
  if (!v24)
  {
    goto LABEL_50;
  }

  v25 = v24;
  v26 = sub_5B3D8();

  if (v26 >> 62)
  {
    p_weak_ivar_lyt = sub_5B678();
  }

  else
  {
    p_weak_ivar_lyt = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  if (p_weak_ivar_lyt)
  {
    v35 = _swiftEmptyArrayStorage;
    sub_5B638();
    if ((p_weak_ivar_lyt & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v5 = 0;
      while (1)
      {
        v1 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          goto LABEL_44;
        }

        if ((v26 & 0xC000000000000001) != 0)
        {
          v28 = sub_5B5B8();
        }

        else
        {
          if (v27 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_45;
          }

          v28 = *(v26 + 8 * v27 + 32);
        }

        v29 = v28;
        v33 = v28;
        sub_48C80(&v33, &v34);

        sub_5B618();
        v30 = v35[2];
        sub_5B648();
        sub_5B658();
        sub_5B628();
        ++v27;
        if (v1 == p_weak_ivar_lyt)
        {

          v1 = v31;
          v23 = (&GiveUpRepeatFlow + 56);
          goto LABEL_39;
        }
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_39:
  v32 = sub_5B3C8().super.isa;

  [v1 v23[234]];
}

uint64_t sub_4631C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_4633C, 0, 0);
}

uint64_t sub_4633C()
{
  v1 = *(v0[3] + 136);
  v0[4] = v1;
  if (v1 <= 1)
  {
    if (!v1)
    {
      v17 = "og#acknowledgeDismissal";
      v18 = swift_task_alloc();
      v0[6] = v18;
      *v18 = v0;
      v19 = sub_46818;
LABEL_19:
      v18[1] = v19;
      v11 = v0[2];
      v20 = v0[3];
      v16 = v17 | 0x8000000000000000;
      v13 = 0xD000000000000022;
      goto LABEL_20;
    }

    if (v1 != (&dword_0 + 1))
    {
LABEL_23:
      sub_49138(v1);
      v21 = swift_task_alloc();
      v0[5] = v21;
      *v21 = v0;
      v21[1] = sub_466BC;
      v22 = v0[2];
      v23 = v0[3];

      return sub_47284(v22, v1);
    }

    v9 = "og#nothingToRepeat";
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_4690C;
    v11 = v0[2];
    v12 = v0[3];
    v13 = 0xD000000000000027;
  }

  else
  {
    if (v1 != (&dword_0 + 2))
    {
      if (v1 != (&dword_0 + 3))
      {
        if (v1 == &dword_4)
        {
          if (qword_71A58 != -1)
          {
            swift_once();
          }

          v2 = sub_5B228();
          sub_5B44(v2, qword_763B8);
          v3 = sub_5B218();
          v4 = sub_5B4C8();
          if (os_log_type_enabled(v3, v4))
          {
            v5 = swift_slowAlloc();
            *v5 = 0;
          }

          v6 = v0[2];

          sub_5A438();
          v7 = v0[1];

          return v7();
        }

        goto LABEL_23;
      }

      v17 = "og#couldntGoBack";
      v18 = swift_task_alloc();
      v0[8] = v18;
      *v18 = v0;
      v19 = sub_46A00;
      goto LABEL_19;
    }

    v9 = "responseModeProvider";
    v14 = swift_task_alloc();
    v0[9] = v14;
    *v14 = v0;
    v14[1] = sub_46AF4;
    v11 = v0[2];
    v15 = v0[3];
    v13 = 0xD000000000000020;
  }

  v16 = v9 | 0x8000000000000000;
LABEL_20:

  return sub_47938(v11, v13, v16);
}

uint64_t sub_466BC()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_467B8, 0, 0);
}

uint64_t sub_467B8()
{
  sub_49148(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_46818()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4690C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_46A00()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_46AF4()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

BOOL sub_46BE8()
{
  v1 = sub_5AF88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v48 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_5B94(&qword_73708, &qword_5D820);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v47 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v40[-v9];
  v11 = sub_5B94(&qword_73710, &qword_5D828);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v43 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v46 = &v40[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v40[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v40[-v21];
  __chkstk_darwin(v20);
  v24 = &v40[-v23];
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);

  v26(v27);

  sub_5AF68();
  v44 = *(v2 + 56);
  v44(v22, 0, 1, v1);
  v45 = v5;
  v28 = *(v5 + 48);
  sub_49010(v22, v10);
  sub_49010(v24, &v10[v28]);
  v29 = *(v2 + 48);
  if (v29(v10, 1, v1) == 1)
  {
    sub_5D4C(v22, &qword_73710, &qword_5D828);
    if (v29(&v10[v28], 1, v1) == 1)
    {
      sub_5D4C(v10, &qword_73710, &qword_5D828);
LABEL_15:
      v33 = v24;
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  sub_49010(v10, v19);
  if (v29(&v10[v28], 1, v1) == 1)
  {
    sub_5D4C(v22, &qword_73710, &qword_5D828);
    (*(v2 + 8))(v19, v1);
LABEL_6:
    sub_5D4C(v10, &qword_73708, &qword_5D820);
    goto LABEL_7;
  }

  (*(v2 + 32))(v48, &v10[v28], v1);
  sub_490F0(&qword_73718, 255, &type metadata accessor for ResponseMode);
  v41 = sub_5B328();
  v42 = v2;
  v36 = *(v2 + 8);
  v36(v48, v1);
  sub_5D4C(v22, &qword_73710, &qword_5D828);
  v36(v19, v1);
  v2 = v42;
  sub_5D4C(v10, &qword_73710, &qword_5D828);
  if (v41)
  {
    goto LABEL_15;
  }

LABEL_7:
  v30 = v46;
  sub_5AF78();
  v44(v30, 0, 1, v1);
  v31 = *(v45 + 48);
  v32 = v47;
  sub_49010(v30, v47);
  sub_49080(v24, &v32[v31]);
  if (v29(v32, 1, v1) != 1)
  {
    v34 = v43;
    sub_49010(v32, v43);
    if (v29(&v32[v31], 1, v1) != 1)
    {
      v37 = v48;
      (*(v2 + 32))(v48, &v32[v31], v1);
      sub_490F0(&qword_73718, 255, &type metadata accessor for ResponseMode);
      v38 = sub_5B328();
      v39 = *(v2 + 8);
      v39(v37, v1);
      sub_5D4C(v30, &qword_73710, &qword_5D828);
      v39(v34, v1);
      sub_5D4C(v32, &qword_73710, &qword_5D828);
      return (v38 & 1) == 0;
    }

    sub_5D4C(v30, &qword_73710, &qword_5D828);
    (*(v2 + 8))(v34, v1);
LABEL_12:
    sub_5D4C(v32, &qword_73708, &qword_5D820);
    return 1;
  }

  sub_5D4C(v30, &qword_73710, &qword_5D828);
  if (v29(&v32[v31], 1, v1) != 1)
  {
    goto LABEL_12;
  }

  v33 = v32;
LABEL_16:
  sub_5D4C(v33, &qword_73710, &qword_5D828);
  return 0;
}

uint64_t sub_47284(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = sub_5A908();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_5A488();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_473DC, 0, 0);
}

uint64_t sub_473DC()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Re-rendering a recent dialog", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[12];
  v19 = v0[13];
  v20 = v0[11];
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];

  sub_5A478();
  sub_5A348();
  sub_5A468();
  sub_5B94(&qword_72460, &unk_5C5E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_5C4A0;
  *(v12 + 32) = sub_5A338();
  (*(v5 + 16))(v10, v6, v7);
  (*(v5 + 56))(v10, 0, 1, v7);
  sub_5A8F8();
  v13 = v9[10];
  v14 = v9[11];
  sub_5CBC(v9 + 7, v13);
  v0[5] = v20;
  v0[6] = &protocol witness table for AceOutput;
  v15 = sub_5F2C(v0 + 2);
  (*(v8 + 16))(v15, v19, v20);
  v16 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_47664;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v13, v14);
}

uint64_t sub_47664()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_47860;
  }

  else
  {
    sub_5D00((v2 + 16));
    v5 = sub_47790;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_47790()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[7];
  sub_5A438();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_47860()
{
  sub_5D00(v0 + 2);
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[7];
  sub_5A438();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_47938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  v5 = *(*(sub_5B94(&unk_72440, &unk_5C460) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v6 = sub_5A908();
  v4[37] = v6;
  v7 = *(v6 - 8);
  v4[38] = v7;
  v8 = *(v7 + 64) + 15;
  v4[39] = swift_task_alloc();
  v9 = sub_5A648();
  v4[40] = v9;
  v10 = *(v9 - 8);
  v4[41] = v10;
  v11 = *(v10 + 64) + 15;
  v4[42] = swift_task_alloc();
  v12 = sub_5A588();
  v4[43] = v12;
  v13 = *(v12 - 8);
  v4[44] = v13;
  v14 = *(v13 + 64) + 15;
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_47AEC, 0, 0);
}

uint64_t sub_47AEC()
{
  v1 = sub_5CBC((v0[35] + 96), *(v0[35] + 120));
  v2 = sub_38208(_swiftEmptyArrayStorage);
  v0[46] = v2;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v4 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v5 = sub_3802C(inited);
  v0[47] = v5;
  swift_setDeallocating();
  sub_5D4C(v4, &unk_72450, &unk_5C470);
  v6 = *v1;
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_47C58;
  v9 = v0[33];
  v8 = v0[34];

  return sub_3419C(v9, v8, v2, v5);
}

uint64_t sub_47C58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v5 = *v2;
  *(*v2 + 392) = a1;

  v6 = *(v3 + 376);
  v7 = *(v3 + 368);
  if (v1)
  {

    v8 = sub_48214;
  }

  else
  {

    v8 = sub_47DCC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_47DCC()
{
  v33 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);

  v3 = sub_5B218();
  v4 = sub_5B4A8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2DC10(v6, v5, &v32);
    _os_log_impl(&dword_0, v3, v4, "Executing dialog %s and dismissing Siri", v7, 0xCu);
    sub_5D00(v8);
  }

  v9 = *(v0 + 392);
  v11 = *(v0 + 328);
  v10 = *(v0 + 336);
  v12 = *(v0 + 320);
  v30 = *(v0 + 296);
  v31 = *(v0 + 304);
  v26 = *(v0 + 360);
  v27 = *(v0 + 288);
  v28 = *(v0 + 312);
  v29 = *(v0 + 280);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);

  v15 = [v9 speak];
  sub_5B3D8();

  v16 = [v9 print];
  sub_5B3D8();

  (*(v11 + 104))(v10, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v12);
  sub_5A538();
  sub_5A868();
  sub_5A868();
  v17 = *(v0 + 168);
  sub_5CBC((v0 + 136), *(v0 + 160));
  sub_5A218();
  v18 = sub_5A488();
  (*(*(v18 - 8) + 56))(v27, 1, 1, v18);
  sub_5B94(&qword_72460, &unk_5C5E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_5C4A0;
  *(v19 + 32) = [objc_allocWithZone(SAUICloseAssistant) init];
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  sub_5A3C8();

  sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
  sub_5D4C(v27, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 96));
  sub_5D00((v0 + 136));
  v20 = v29[10];
  v21 = v29[11];
  sub_5CBC(v29 + 7, v20);
  *(v0 + 240) = v30;
  *(v0 + 248) = &protocol witness table for AceOutput;
  v22 = sub_5F2C((v0 + 216));
  (*(v31 + 16))(v22, v28, v30);
  v23 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v24 = swift_task_alloc();
  *(v0 + 400) = v24;
  *v24 = v0;
  v24[1] = sub_483CC;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v20, v21);
}

uint64_t sub_48214()
{
  v17 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = sub_5B228();
  sub_5B44(v2, qword_763B8);

  v3 = sub_5B218();
  v4 = sub_5B4C8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[33];
    v5 = v0[34];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2DC10(v6, v5, &v16);
    _os_log_impl(&dword_0, v3, v4, "Couldn't create a dialog %s.", v7, 0xCu);
    sub_5D00(v8);
  }

  v9 = v0[32];
  sub_5A438();
  v10 = v0[45];
  v11 = v0[42];
  v12 = v0[39];
  v13 = v0[36];

  v14 = v0[1];

  return v14();
}

uint64_t sub_483CC()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;

  if (v0)
  {

    v5 = sub_485E4;
  }

  else
  {
    sub_5D00((v2 + 216));
    v5 = sub_484F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_484F8()
{
  v1 = v0[49];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v0[32];
  sub_5A438();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[39];
  v12 = v0[36];

  v13 = v0[1];

  return v13();
}

uint64_t sub_485E4()
{
  sub_5D00(v0 + 27);
  v1 = v0[49];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v0[32];
  sub_5A438();

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[39];
  v12 = v0[36];

  v13 = v0[1];

  return v13();
}

uint64_t sub_486D8()
{
  sub_5D00((v0 + 16));
  sub_5D00((v0 + 56));
  sub_5D00((v0 + 96));
  sub_49148(*(v0 + 136));
  v1 = *(v0 + 152);

  return swift_deallocClassInstance();
}

void *_s17CAMRootFlowPlugin22RepeatRecentDialogFlowC6ActionOwCP_0(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

void destroy for RepeatRecentDialogFlow.Action(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for RepeatRecentDialogFlow.Action(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for RepeatRecentDialogFlow.Action(void **result, unint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v3;
  }

  else if (v3 < 0xFFFFFFFF)
  {
    v5 = result;

    result = v5;
    *v5 = v3;
  }

  else
  {
    *result = v3;
    v4 = result;

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepeatRecentDialogFlow.Action(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RepeatRecentDialogFlow.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_48950(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_48968(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void (*sub_48998(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_5AF28();
  return sub_3C310;
}

uint64_t sub_48A28(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_573C;

  return sub_44708(a1);
}

uint64_t sub_48AC0()
{
  v2 = *v0;
  type metadata accessor for RepeatRecentDialogFlow();
  return sub_5A098();
}

uint64_t sub_48B1C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_4631C(a1);
}

uint64_t sub_48BB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RepeatRecentDialogFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

void sub_48C80(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    *a2 = v3;
    v14 = v3;
    return;
  }

  v5 = v4;
  v6 = v3;
  v7 = [v5 dialog];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 content];
    if (v9)
    {
      v10 = v9;
      [v5 copy];
      sub_5B538();
      swift_unknownObjectRelease();
      sub_1AB38(0, &qword_73730, SAUISnippet_ptr);
      if (swift_dynamicCast())
      {
        [v8 copy];
        sub_5B538();
        swift_unknownObjectRelease();
        sub_1AB38(0, &qword_73738, SADialog_ptr);
        if (swift_dynamicCast())
        {
          [v10 copy];
          sub_5B538();
          swift_unknownObjectRelease();
          sub_1AB38(0, &qword_73740, SADialogText_ptr);
          v11 = swift_dynamicCast();

          if (v11)
          {
            v12 = sub_5B338();
            [v15 setSpeakableTextOverride:v12];

            [v15 setContent:v15];
            v13 = v15;
            [v13 setDialog:v15];

            *a2 = v13;
            return;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  *a2 = v5;
}

uint64_t sub_48F34()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v0 = sub_5B228();
  sub_5B44(v0, qword_763B8);
  v1 = sub_5B218();
  v2 = sub_5B4D8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Non-async on(input:) is not supported in RepeatRecentDialogFlow.", v3, 2u);
  }

  return 0;
}

uint64_t sub_49010(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73710, &qword_5D828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_49080(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73710, &qword_5D828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_490F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_49138(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_49148(id a1)
{
  if (a1 != &dword_4)
  {
    sub_49158(a1);
  }
}

void sub_49158(id a1)
{
  if (a1 >= 4)
  {
  }
}

unint64_t sub_4916C(uint64_t a1)
{
  v61 = sub_5AD28();
  v65 = *(v61 - 8);
  v2 = *(v65 + 64);
  __chkstk_darwin(v61);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_5B94(&qword_73748, &qword_5D830);
  v4 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v63 = &v54 - v5;
  v6 = sub_5B94(&qword_73750, &qword_5D838);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v62 = &v54 - v11;
  __chkstk_darwin(v10);
  v64 = &v54 - v12;
  v13 = sub_5AA18();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  v15 = __chkstk_darwin(v13);
  v66 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = &v54 - v17;
  v18 = sub_5A968();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_5A858();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_5A8E8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, a1, v23);
  if ((*(v24 + 88))(v27, v23) != enum case for Parse.uso(_:))
  {
    (*(v24 + 8))(v27, v23);
    return 3;
  }

  (*(v24 + 96))(v27, v23);
  (*(v29 + 32))(v32, v27, v28);
  sub_5A8D8();
  v33 = sub_5A958();
  (*(v19 + 8))(v22, v18);
  v34 = v28;
  if (!*(v33 + 16))
  {

    (*(v29 + 8))(v32, v28);
    return 3;
  }

  v35 = v66;
  v36 = v67;
  v37 = v68;
  (*(v67 + 16))(v66, v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v68);

  v38 = v69;
  (*(v36 + 32))(v69, v35, v37);
  if (sub_5A9F8())
  {
    (*(v36 + 8))(v38, v37);
    (*(v29 + 8))(v32, v34);
    return 0;
  }

  result = sub_5AB58();
  if (result >> 62)
  {
    v42 = result;
    v43 = sub_5B678();
    result = v42;
    v40 = v65;
    if (!v43)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = v65;
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_15:

      sub_5ACA8();

      if (v72)
      {
        sub_302D4(&v71, v73);
        sub_C0A0(v73, &v71);
        sub_5AD08();
        if (swift_dynamicCast())
        {
          sub_5D00(v73);
          (*(v36 + 8))(v38, v37);
          (*(v29 + 8))(v32, v34);

          sub_5D00(&v71);
          return 0;
        }

        sub_5AD88();
        if (swift_dynamicCast())
        {
          sub_5D00(v73);
          (*(v36 + 8))(v38, v37);
          (*(v29 + 8))(v32, v34);

          sub_5D00(&v71);
          return 1;
        }

        sub_5ADA8();
        if (swift_dynamicCast() && (, sub_C0A0(v73, v70), swift_dynamicCast()))
        {

          sub_5AB88();

          v57 = v34;
          v56 = v32;
          v55 = v29;
          v44 = v64;
          if (v70[0])
          {
            sub_5AD18();

            v45 = v61;
          }

          else
          {
            v45 = v61;
            (*(v40 + 56))(v64, 1, 1, v61);
          }

          v46 = v63;
          v47 = v62;
          (*(v40 + 104))(v62, enum case for UsoEntity_common_Interjection.DefinedValues.common_Interjection_IndirectDismissal(_:), v45);
          (*(v40 + 56))(v47, 0, 1, v45);
          v48 = *(v60 + 48);
          sub_49DDC(v44, v46);
          sub_49DDC(v47, v46 + v48);
          v49 = *(v40 + 48);
          if (v49(v46, 1, v45) == 1)
          {

            sub_5D4C(v47, &qword_73750, &qword_5D838);
            v50 = v63;
            sub_5D4C(v64, &qword_73750, &qword_5D838);
            sub_5D00(v73);
            (*(v36 + 8))(v69, v37);
            (*(v55 + 8))(v56, v57);
            if (v49(v50 + v48, 1, v45) == 1)
            {
              sub_5D4C(v50, &qword_73750, &qword_5D838);
LABEL_35:
              sub_5D00(&v71);
              return 2;
            }
          }

          else
          {
            v51 = v59;
            sub_49DDC(v46, v59);
            if (v49(v46 + v48, 1, v45) != 1)
            {
              v52 = v58;
              (*(v40 + 32))(v58, v46 + v48, v45);
              sub_49E4C();
              LODWORD(v66) = sub_5B328();

              v53 = *(v40 + 8);
              v53(v52, v45);
              sub_5D4C(v62, &qword_73750, &qword_5D838);
              sub_5D4C(v64, &qword_73750, &qword_5D838);
              sub_5D00(v73);
              (*(v36 + 8))(v69, v37);
              (*(v55 + 8))(v56, v57);
              v53(v51, v45);
              sub_5D4C(v46, &qword_73750, &qword_5D838);
              if (v66)
              {
                goto LABEL_35;
              }

              goto LABEL_26;
            }

            sub_5D4C(v62, &qword_73750, &qword_5D838);
            v50 = v63;
            sub_5D4C(v64, &qword_73750, &qword_5D838);
            sub_5D00(v73);
            (*(v36 + 8))(v69, v37);
            (*(v55 + 8))(v56, v57);
            (*(v40 + 8))(v51, v45);
          }

          sub_5D4C(v50, &qword_73748, &qword_5D830);
        }

        else
        {
          sub_5D00(v73);
          (*(v36 + 8))(v38, v37);
          (*(v29 + 8))(v32, v34);
        }

LABEL_26:
        sub_5D00(&v71);
        return 3;
      }

      (*(v36 + 8))(v38, v37);
      (*(v29 + 8))(v32, v34);
      sub_5D4C(&v71, &qword_73758, &unk_5D840);
      return 3;
    }
  }

  if ((result & 0xC000000000000001) != 0)
  {
    sub_5B5B8();
    goto LABEL_15;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    v41 = *(result + 32);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_49DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_73750, &qword_5D838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_49E4C()
{
  result = qword_73760;
  if (!qword_73760)
  {
    sub_5AD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73760);
  }

  return result;
}

uint64_t sub_49EA4()
{
  v0 = sub_59DE8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_59DD8();
  qword_763D8 = result;
  return result;
}

uint64_t sub_49EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 >= 4u)
  {
    if (a11 != 4)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_49FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 >= 4u)
  {
    if (a11 != 4)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t initializeWithCopy for SiriLinkViewModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  sub_49EE4(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  return a1;
}

uint64_t assignWithCopy for SiriLinkViewModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  sub_49EE4(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  sub_49FB8(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  return a1;
}

__n128 initializeWithTake for SiriLinkViewModel(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for SiriLinkViewModel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  sub_49FB8(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriLinkViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for SiriLinkViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_4A338(void *a1)
{
  v2 = v1;
  v4 = sub_5B94(&qword_73768, &qword_5D8B8);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  __chkstk_darwin(v4);
  v56 = &v49 - v6;
  v7 = sub_5B94(&qword_73770, &qword_5D8C0);
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v55 = &v49 - v9;
  v10 = sub_5B94(&qword_73778, &qword_5D8C8);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  __chkstk_darwin(v10);
  v52 = &v49 - v12;
  v13 = sub_5B94(&qword_73780, &qword_5D8D0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v17 = sub_5B94(&qword_73788, &qword_5D8D8);
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  __chkstk_darwin(v17);
  v20 = &v49 - v19;
  v21 = sub_5B94(&qword_73790, &qword_5D8E0);
  v62 = *(v21 - 8);
  v63 = v21;
  v22 = *(v62 + 64);
  __chkstk_darwin(v21);
  v24 = &v49 - v23;
  v25 = a1[4];
  sub_5CBC(a1, a1[3]);
  sub_4AEDC();
  v61 = v24;
  sub_5B888();
  v27 = *v2;
  v26 = v2[1];
  v28 = *(v2 + 80);
  if (v28 <= 1)
  {
    if (*(v2 + 80))
    {
      LOBYTE(v64) = 1;
      sub_4B080();
      v45 = v63;
      v46 = v61;
      sub_5B738();
      v64 = v27;
      v65 = v26;
      v47 = *(v2 + 2);
      v66 = *(v2 + 1);
      v67 = v47;
      v48 = *(v2 + 4);
      v68 = *(v2 + 3);
      v69 = v48;
      sub_4AFD8();
      sub_5B778();
      (*(v51 + 8))(v16, v13);
      return (*(v62 + 8))(v46, v45);
    }

    else
    {
      LOBYTE(v64) = 0;
      sub_4B0D4();
      v37 = v63;
      v38 = v61;
      sub_5B738();
      v64 = v27;
      v65 = v26;
      v39 = *(v2 + 2);
      v66 = *(v2 + 1);
      v67 = v39;
      v40 = *(v2 + 4);
      v68 = *(v2 + 3);
      v69 = v40;
      sub_4AFD8();
      sub_5B778();
      (*(v50 + 8))(v20, v17);
      return (*(v62 + 8))(v38, v37);
    }
  }

  else
  {
    if (v28 == 2)
    {
      LOBYTE(v64) = 2;
      v42 = v26;
      sub_4B02C();
      v30 = v52;
      v31 = v63;
      v32 = v61;
      sub_5B738();
      v64 = v27;
      v65 = v42;
      v43 = *(v2 + 2);
      v66 = *(v2 + 1);
      v67 = v43;
      v44 = *(v2 + 4);
      v68 = *(v2 + 3);
      v69 = v44;
      sub_4AFD8();
      v35 = v54;
      sub_5B778();
      v36 = v53;
    }

    else
    {
      v29 = v2[1];
      if (v28 == 3)
      {
        LOBYTE(v64) = 3;
        sub_4AF84();
        v30 = v55;
        v31 = v63;
        v32 = v61;
        sub_5B738();
        v64 = v27;
        v65 = v29;
        v33 = *(v2 + 2);
        v66 = *(v2 + 1);
        v67 = v33;
        v34 = *(v2 + 4);
        v68 = *(v2 + 3);
        v69 = v34;
        sub_4AFD8();
        v35 = v58;
        sub_5B778();
        v36 = v57;
      }

      else
      {
        LOBYTE(v64) = 4;
        sub_4AF30();
        v30 = v56;
        v31 = v63;
        v32 = v61;
        sub_5B738();
        v35 = v60;
        sub_5B758();
        v36 = v59;
      }
    }

    (*(v36 + 8))(v30, v35);
    return (*(v62 + 8))(v32, v31);
  }
}

uint64_t sub_4AA34(uint64_t a1)
{
  v2 = sub_4B02C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AA70(uint64_t a1)
{
  v2 = sub_4B02C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AAAC(uint64_t a1)
{
  v2 = sub_4AF84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AAE8(uint64_t a1)
{
  v2 = sub_4AF84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AB24(uint64_t a1)
{
  v2 = sub_4B0D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AB60(uint64_t a1)
{
  v2 = sub_4B0D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AB9C(uint64_t a1)
{
  v2 = sub_4B080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4ABD8(uint64_t a1)
{
  v2 = sub_4B080();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_4AC14()
{
  v1 = *v0;
  v2 = 0x654874706D6F7270;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000014;
  if (*v0)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_4ACC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_4B128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_4ACF8(uint64_t a1)
{
  v2 = sub_4AEDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AD34(uint64_t a1)
{
  v2 = sub_4AEDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_4AD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_5B7A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_4ADF0(uint64_t a1)
{
  v2 = sub_4AF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4AE2C(uint64_t a1)
{
  v2 = sub_4AF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_4AE68@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_4B2E4(a1, v7);
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

unint64_t sub_4AEDC()
{
  result = qword_73798;
  if (!qword_73798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73798);
  }

  return result;
}

unint64_t sub_4AF30()
{
  result = qword_737A0;
  if (!qword_737A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737A0);
  }

  return result;
}

unint64_t sub_4AF84()
{
  result = qword_737A8;
  if (!qword_737A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_737A8);
  }

  return result;
}