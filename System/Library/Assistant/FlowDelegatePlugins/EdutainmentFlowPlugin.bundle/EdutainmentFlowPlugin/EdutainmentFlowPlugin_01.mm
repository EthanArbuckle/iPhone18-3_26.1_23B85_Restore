uint64_t sub_1413C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 120) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = a2;
  v3 = *(a1 + 90);
  if (v3 <= 2)
  {
    goto LABEL_4;
  }

  if (v3 == 3)
  {

    goto LABEL_7;
  }

  if (v3 == 4)
  {
LABEL_4:
    v4 = sub_18134();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = 2;
    goto LABEL_8;
  }

LABEL_5:
  v5 = 1;
LABEL_8:
  *(v2 + 112) = v5;
  return v2;
}

uint64_t sub_1424C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = *(*(sub_30B8(&qword_25190, &qword_19810) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_142E8, 0, 0);
}

uint64_t sub_142E8()
{
  if (*(*(v0 + 288) + 112))
  {
    if (*(*(v0 + 288) + 112) == 1)
    {
      if (qword_24C88 != -1)
      {
        swift_once();
      }

      v1 = sub_17C54();
      sub_3080(v1, qword_27B90);
      v2 = sub_17C44();
      v3 = sub_17E54();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_0, v2, v3, "resume game", v4, 2u);
      }

      v5 = *(v0 + 288);

      v6 = *(v5 + 32);
      *(v0 + 16) = *(v5 + 16);
      *(v0 + 32) = v6;
      v7 = *(v5 + 48);
      v8 = *(v5 + 64);
      v9 = *(v5 + 80);
      *(v0 + 96) = *(v5 + 96);
      *(v0 + 64) = v8;
      *(v0 + 80) = v9;
      *(v0 + 48) = v7;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      sub_31F4(v0 + 16, &qword_25868, &unk_1A790);
      v10 = *(v5 + 120);
      v11 = sub_10C9C();
      *(v0 + 320) = v11;
      if (v11)
      {
        v13 = *(v0 + 288);
        v12 = *(v0 + 296);
        v14 = v11;
        [v11 setRefId:0];
        v15 = *(v13 + 104);
        sub_10B74();
        v16 = sub_17B54();
        (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
        v17 = swift_task_alloc();
        *(v0 + 328) = v17;
        *v17 = v0;
        v17[1] = sub_14AD8;
        v18 = *(v0 + 296);
        v19 = v14;
LABEL_21:

        return sub_1FB0(v19, v18);
      }
    }

    else
    {
      if (qword_24C88 != -1)
      {
        swift_once();
      }

      v34 = sub_17C54();
      sub_3080(v34, qword_27B90);
      v35 = sub_17C44();
      v36 = sub_17E54();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "ask user whether to resume game", v37, 2u);
      }

      v38 = *(v0 + 288);

      v39 = *(v38 + 16);
      *(v0 + 120) = *(v38 + 32);
      *(v0 + 104) = v39;
      v40 = *(v38 + 48);
      v41 = *(v38 + 64);
      v42 = *(v38 + 80);
      *(v0 + 184) = *(v38 + 96);
      *(v0 + 168) = v42;
      *(v0 + 152) = v41;
      *(v0 + 136) = v40;
      *(v38 + 48) = 0u;
      *(v38 + 64) = 0u;
      *(v38 + 80) = 0u;
      *(v38 + 96) = 0;
      *(v38 + 16) = 0u;
      *(v38 + 32) = 0u;
      sub_31F4(v0 + 104, &qword_25868, &unk_1A790);
      v43 = *(v38 + 120);
      v44 = sub_118FC();
      *(v0 + 304) = v44;
      if (v44)
      {
        v46 = *(v0 + 288);
        v45 = *(v0 + 296);
        v47 = v44;
        [v44 setRefId:0];
        v48 = *(v46 + 104);
        sub_17B44();
        sub_17B04();
        sub_17AF4();
        v49 = sub_17B54();
        (*(*(v49 - 8) + 56))(v45, 0, 1, v49);
        v50 = swift_task_alloc();
        *(v0 + 312) = v50;
        *v50 = v0;
        v50[1] = sub_14940;
        v18 = *(v0 + 296);
        v19 = v47;
        goto LABEL_21;
      }
    }

    v52 = sub_17C44();
    v53 = sub_17E74();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_29;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "no invalid addViews";
    goto LABEL_28;
  }

  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v20 = sub_17C54();
  sub_3080(v20, qword_27B90);
  v21 = sub_17C44();
  v22 = sub_17E54();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "request to start a new game", v23, 2u);
  }

  v24 = *(v0 + 288);

  v25 = *(v24 + 32);
  *(v0 + 192) = *(v24 + 16);
  *(v0 + 208) = v25;
  v26 = *(v24 + 48);
  v27 = *(v24 + 64);
  v28 = *(v24 + 80);
  *(v0 + 272) = *(v24 + 96);
  *(v0 + 240) = v27;
  *(v0 + 256) = v28;
  *(v0 + 224) = v26;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 96) = 0;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  sub_31F4(v0 + 192, &qword_25868, &unk_1A790);
  v29 = *(v24 + 120);
  v30 = *(v29 + 168);
  if (!v30)
  {
    v52 = sub_17C44();
    v53 = sub_17E74();
    if (!os_log_type_enabled(v52, v53))
    {
LABEL_29:
      v56 = *(v0 + 280);

      goto LABEL_30;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "no invalid machineUtterance from server";
LABEL_28:
    _os_log_impl(&dword_0, v52, v53, v55, v54, 2u);

    goto LABEL_29;
  }

  v31 = *(v0 + 280);
  v32 = *(v29 + 160);
  v33 = *(v29 + 168);

  sub_2D88(v32, v30);

LABEL_30:
  sub_17AE4();
  v57 = *(v0 + 296);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_14940()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 296);
  v4 = *v0;

  sub_31F4(v2, &qword_25190, &qword_19810);

  return _swift_task_switch(sub_14A68, 0, 0);
}

uint64_t sub_14A68()
{
  v1 = v0[38];
  v2 = v0[35];
  sub_17AE4();

  v3 = v0[37];

  v4 = v0[1];

  return v4();
}

uint64_t sub_14AD8()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 296);
  v4 = *v0;

  sub_31F4(v2, &qword_25190, &qword_19810);

  return _swift_task_switch(sub_14C00, 0, 0);
}

uint64_t sub_14C00()
{
  v1 = v0[40];
  v2 = v0[35];
  sub_17AE4();

  v3 = v0[37];

  v4 = v0[1];

  return v4();
}

Swift::Int sub_14C84()
{
  v1 = *v0;
  sub_18154();
  sub_18164(v1);
  return sub_18174();
}

Swift::Int sub_14CF8()
{
  v1 = *v0;
  sub_18154();
  sub_18164(v1);
  return sub_18174();
}

unint64_t sub_14D3C()
{
  v1 = 0x6720656D75736572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_14DAC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v11 = *(v0 + 96);
  v10 = *(v0 + 80);
  sub_15080(*(v0 + 16), *(v0 + 24));
  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  return _swift_deallocClassInstance(v0, 128, 7);
}

unint64_t sub_14E50()
{
  result = qword_25860;
  if (!qword_25860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25860);
  }

  return result;
}

uint64_t sub_14EAC()
{
  v2 = *v0;
  type metadata accessor for EdutainmentGameFlow();
  return sub_17A24();
}

uint64_t sub_14F08(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_61EC;

  return sub_1424C(a1);
}

uint64_t sub_14FA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 80);
  v16 = *(*v1 + 96);
  v8 = v16;
  v15[3] = v6;
  v15[4] = v7;
  v15[1] = v4;
  v15[2] = v5;
  v15[0] = v3;
  v9 = v2[2];
  *a1 = v2[1];
  *(a1 + 16) = v9;
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2[5];
  *(a1 + 80) = v8;
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 32) = v10;
  return sub_15010(v15, v14);
}

uint64_t sub_15010(uint64_t a1, uint64_t a2)
{
  v4 = sub_30B8(&qword_25868, &unk_1A790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15080(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_150F0()
{
  type metadata accessor for EdutainmentStoreManager();
  swift_allocObject();
  result = sub_1512C();
  qword_27BA8 = result;
  return result;
}

uint64_t sub_1512C()
{
  v1 = v0;
  v2 = sub_17EA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_17E94();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v11 = sub_17C94();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_24C88 != -1)
  {
    swift_once();
  }

  v16 = sub_17C54();
  sub_3080(v16, qword_27B90);
  v17 = sub_17C44();
  v18 = sub_17E54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "init StoreManager", v19, 2u);
  }

  if (qword_24C68 != -1)
  {
    swift_once();
  }

  if (qword_27B60)
  {
    *(v1 + 16) = qword_27B60;
    v20 = sub_165B0();
    v23[2] = "ager";
    v23[3] = v20;
    swift_retain_n();
    sub_17C84();
    v25 = &_swiftEmptyArrayStorage;
    sub_165FC(&qword_25960, &type metadata accessor for OS_dispatch_queue.Attributes);
    v23[1] = v15;
    v24 = v1;
    sub_30B8(&qword_25968, &unk_1A800);
    sub_16644(&qword_25970, &qword_25968, &unk_1A800);
    sub_17F34();
    (*(v3 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
    v21 = sub_17EC4();

    result = v24;
    *(v24 + 24) = v21;
  }

  else
  {
    type metadata accessor for EdutainmentStoreManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_154C0(void *a1, uint64_t a2)
{
  v3 = sub_3100(a1, a1[3]);
  v4 = *(a2 + 16);
  if (*(*v3 + 24) == 1 && (sub_F5C4(v4) & 1) == 0)
  {
    return sub_EFB8(v4);
  }

  else
  {
    return sub_ED50();
  }
}

uint64_t sub_1551C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_15560(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a4;
  v27 = a3;
  v10 = *v6;
  v11 = sub_17C74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_17C94();
  v17 = *(v29 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v29, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v6[3];
  sub_15DDC(a1, v32);
  v22 = swift_allocObject();
  v23 = v32[1];
  *(v22 + 16) = v32[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v33;
  *(v22 + 56) = v6;
  *(v22 + 64) = v26;
  *(v22 + 72) = a5;
  *(v22 + 80) = a2;
  *(v22 + 88) = v27 & 1;
  *(v22 + 96) = v10;
  aBlock[4] = sub_15E9C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1551C;
  aBlock[3] = &unk_21A70;
  v24 = _Block_copy(aBlock);

  sub_17C84();
  v30 = &_swiftEmptyArrayStorage;
  sub_165FC(&qword_25318, &type metadata accessor for DispatchWorkItemFlags);
  sub_30B8(&qword_25320, &qword_1A7F0);
  sub_16644(&qword_25328, &qword_25320, &qword_1A7F0);
  sub_17F34();
  sub_17EB4();
  _Block_release(v24);
  (*(v12 + 8))(v16, v11);
  (*(v17 + 8))(v21, v29);
}

uint64_t sub_15898(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, char a6)
{
  if (qword_24C80 != -1)
  {
    swift_once();
  }

  v9 = sub_17C54();
  sub_3080(v9, qword_27B78);
  sub_15DDC(a1, v48);
  v10 = sub_17C44();
  v11 = sub_17E64();
  if (os_log_type_enabled(v10, v11))
  {
    v41 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v12 = 136315138;
    sub_15DDC(v48, v44);
    v14 = v45;
    if (v45)
    {
      v15 = v46;
      sub_3100(v44, v45);
      v16 = (*(v15 + 8))(v14, v15);
      v18 = v17;
      sub_3144(v44);
    }

    else
    {
      sub_63AC(v44);
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    sub_63AC(v48);
    v19 = sub_15ECC(v16, v18, &v47);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v10, v11, "read record for game= %s", v12, 0xCu);
    sub_3144(v13);

    a3 = v41;
  }

  else
  {

    sub_63AC(v48);
  }

  v20 = *(a2 + 16);
  sub_15DDC(a1, v48);
  v21 = v49;
  if (v49)
  {
    v22 = v50;
    sub_3100(v48, v49);
    v23 = (*(v22 + 8))(v21, v22);
    v25 = v24;
    sub_3144(v48);
  }

  else
  {
    sub_63AC(v48);
    v23 = 0;
    v25 = 0;
  }

  sub_15DDC(a1, v48);
  v26 = v49;
  if (v49)
  {
    v27 = v50;
    sub_3100(v48, v49);
    v26 = (*(v27 + 16))(v26, v27);
    v29 = v28;
    sub_3144(v48);
  }

  else
  {
    sub_63AC(v48);
    v29 = 0;
  }

  v30 = sub_100B0(v20, v23, v25, v26, v29);

  if (v30)
  {
    if (*(v30 + 152))
    {
      v31 = sub_17C44();
      v32 = sub_17E74();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Empty timestamp of game state.";
LABEL_28:
        _os_log_impl(&dword_0, v31, v32, v34, v33, 2u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (a6)
    {
      v39 = 86400;
    }

    else
    {
      v39 = a5;
    }

    if (sub_16474(*(v30 + 144), v39))
    {
      v31 = sub_17C44();
      v32 = sub_17E54();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Drop game state because it's expired";
        goto LABEL_28;
      }

LABEL_29:

      a3(0);
    }

    a3(v40);
  }

  else
  {
    v35 = sub_17C44();
    v36 = sub_17E54();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Didn't find any record from database.", v37, 2u);
    }

    return (a3)(0);
  }
}

uint64_t sub_15D78()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_15DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_30B8(&qword_25308, &qword_199F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15E4C()
{
  if (v0[5])
  {
    sub_3144(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[9];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_15EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_15ECC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_15F98(v11, 0, 0, 1, a1, a2);
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
    sub_B6A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3144(v11);
  return v7;
}

unint64_t sub_15F98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_160A4(a5, a6);
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
    result = sub_17F84();
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

char *sub_160A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_160F0(a1, a2);
  sub_16220(&off_20C38);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_160F0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1630C(v5, 0);
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

  result = sub_17F84();
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
        v10 = sub_17DB4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1630C(v10, 0);
        result = sub_17F54();
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

uint64_t sub_16220(uint64_t result)
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

  result = sub_16380(result, v12, 1, v3);
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

void *sub_1630C(uint64_t a1, uint64_t a2)
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

  sub_30B8(&qword_25950, &qword_1A7F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_16380(char *result, int64_t a2, char a3, char *a4)
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
    sub_30B8(&qword_25950, &qword_1A7F8);
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

uint64_t sub_16474(uint64_t a1, uint64_t a2)
{
  v4 = sub_179D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_179C4();
  sub_179B4();
  v11 = v10;
  v12 = v10;
  result = (*(v5 + 8))(v9, v4);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFSUB__(v11, a1))
  {
    return v11 - a1 > a2;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_165B0()
{
  result = qword_25958;
  if (!qword_25958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_25958);
  }

  return result;
}

uint64_t sub_165FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_16644(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_6564(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_16698()
{
  sub_17D74();
}

uint64_t sub_167F8()
{
  sub_17D74();
}

unint64_t sub_16950(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701667182;
    v6 = 0x6C6576656CLL;
    if (a1 != 2)
    {
      v6 = 0x6174537472617473;
    }

    if (a1)
    {
      v5 = 0x79726F6765746163;
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
    v1 = 0x656C706D6F437369;
    v2 = 0x5464657461657263;
    if (a1 != 7)
    {
      v2 = 0x6E6F697461727564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65726F6373;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
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

uint64_t sub_16A74(void *a1)
{
  v3 = v1;
  v5 = sub_30B8(&qword_25988, &qword_1A878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v30[-v9];
  v11 = a1[4];
  sub_3100(a1, a1[3]);
  sub_17474();
  sub_18194();
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v30[15] = 0;
  sub_180F4();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  v30[14] = 1;
  sub_180F4();
  v16 = *(v3 + 48);
  v17 = *(v3 + 56);
  v30[13] = 2;
  sub_180F4();
  v18 = *(v3 + 64);
  v19 = *(v3 + 72);
  v30[12] = 3;
  sub_180B4();
  v20 = *(v3 + 80);
  v21 = *(v3 + 88);
  v30[11] = 4;
  sub_180D4();
  v22 = *(v3 + 96);
  v23 = *(v3 + 104);
  v30[10] = 5;
  sub_180D4();
  v24 = *(v3 + 105);
  v30[9] = 6;
  sub_180C4();
  v25 = *(v3 + 112);
  v26 = *(v3 + 120);
  v30[8] = 7;
  sub_180D4();
  v28 = *(v3 + 128);
  v29 = *(v3 + 136);
  v30[7] = 8;
  sub_180D4();
  return (*(v6 + 8))(v10, v5);
}

Swift::Int sub_16CF0()
{
  v1 = *v0;
  sub_18154();
  sub_167F8();
  return sub_18174();
}

Swift::Int sub_16D40()
{
  v1 = *v0;
  sub_18154();
  sub_167F8();
  return sub_18174();
}

uint64_t sub_16D84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_16F10(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_16DB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_16950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_16DFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_16F10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_16E24(uint64_t a1)
{
  v2 = sub_17474();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_16E60(uint64_t a1)
{
  v2 = sub_17474();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_16E9C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_16F5C(a1, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_16F10(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_21078;
  v6._object = a2;
  v4 = sub_18034(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_16F5C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = sub_30B8(&qword_25978, &qword_1A870);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v49, v7);
  v9 = &v34 - v8;
  v82 = 1;
  v10 = a1[4];
  sub_3100(a1, a1[3]);
  sub_17474();
  v50 = v9;
  sub_18184();
  if (v2)
  {
    sub_3144(a1);
  }

  else
  {
    v11 = v5;
    v48 = a2;
    LOBYTE(v59) = 0;
    v12 = v49;
    v13 = sub_18084();
    v47 = v14;
    LOBYTE(v59) = 1;
    v15 = sub_18084();
    v45 = v16;
    v43 = v15;
    LOBYTE(v59) = 2;
    v17 = a1;
    v18 = sub_18084();
    v44 = v19;
    LOBYTE(v59) = 3;
    v42 = sub_18044();
    v46 = v20;
    LOBYTE(v59) = 4;
    v41 = sub_18064();
    v81 = v21 & 1;
    LOBYTE(v59) = 5;
    v40 = sub_18064();
    v80 = v22 & 1;
    LOBYTE(v59) = 6;
    v39 = sub_18054();
    LOBYTE(v59) = 7;
    v38 = sub_18064();
    v79 = v23 & 1;
    v83 = 8;
    v37 = sub_18064();
    v25 = v24;
    (*(v11 + 8))(v50, v12);
    v78 = v25 & 1;
    *&v51 = 0;
    LODWORD(v50) = v82;
    BYTE8(v51) = v82;
    *&v52 = v13;
    *(&v52 + 1) = v47;
    *&v53 = v43;
    *(&v53 + 1) = v45;
    v36 = v18;
    *&v54 = v18;
    *(&v54 + 1) = v44;
    *&v55 = v42;
    *(&v55 + 1) = v46;
    *&v56 = v41;
    LODWORD(v49) = v81;
    BYTE8(v56) = v81;
    *&v57 = v40;
    v35 = v80;
    BYTE8(v57) = v80;
    LOBYTE(v18) = v39;
    BYTE9(v57) = v39;
    v26 = v37;
    v27 = v38;
    *&v58[0] = v38;
    LOBYTE(v12) = v79;
    BYTE8(v58[0]) = v79;
    *&v58[1] = v37;
    v25 &= 1u;
    BYTE8(v58[1]) = v25;
    sub_174C8(&v51, &v59);
    sub_3144(v17);
    v59 = 0;
    v60 = v50;
    v61 = v13;
    v62 = v47;
    v63 = v43;
    v64 = v45;
    v65 = v36;
    v66 = v44;
    v67 = v42;
    v68 = v46;
    v69 = v41;
    v70 = v49;
    v71 = v40;
    v72 = v35;
    v73 = v18;
    v74 = v27;
    v75 = v12;
    v76 = v26;
    v77 = v25;
    result = sub_17500(&v59);
    v29 = v58[0];
    v30 = v48;
    v48[6] = v57;
    v30[7] = v29;
    *(v30 + 121) = *(v58 + 9);
    v31 = v54;
    v30[2] = v53;
    v30[3] = v31;
    v32 = v56;
    v30[4] = v55;
    v30[5] = v32;
    v33 = v52;
    *v30 = v51;
    v30[1] = v33;
  }

  return result;
}

unint64_t sub_17474()
{
  result = qword_25980;
  if (!qword_25980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25980);
  }

  return result;
}

__n128 sub_17540(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_17574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_175BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_17634()
{
  result = qword_25990;
  if (!qword_25990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25990);
  }

  return result;
}

unint64_t sub_1768C()
{
  result = qword_25998;
  if (!qword_25998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25998);
  }

  return result;
}

unint64_t sub_176E4()
{
  result = qword_259A0;
  if (!qword_259A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_259A0);
  }

  return result;
}

uint64_t sub_1776C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EdutainmentFlowPlugin();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_177B4()
{
  sub_17BF4();
  sub_17BF4();
  sub_17B84();
  type metadata accessor for EdutainmentOutput();
  v0 = swift_allocObject();
  sub_64C4(&v5, v0 + 16);
  sub_64C4(&v4, v0 + 56);
  type metadata accessor for EdutainmentDispatchFlow();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  sub_64C4(&v6, v1 + 96);
  *(v1 + 88) = v0;
  *&v6 = v1;
  sub_1788C();
  v2 = sub_17A14();

  return v2;
}

unint64_t sub_1788C()
{
  result = qword_25A48;
  if (!qword_25A48)
  {
    type metadata accessor for EdutainmentDispatchFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_25A48);
  }

  return result;
}