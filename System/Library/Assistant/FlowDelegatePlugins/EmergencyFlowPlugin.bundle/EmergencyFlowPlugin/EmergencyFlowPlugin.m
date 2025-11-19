uint64_t sub_1D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_50B04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_50AE4();
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  swift_errorRetain();
  v14 = sub_50AF4();
  v15 = sub_50BF4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    __dst[0] = v18;
    *v17 = 136315138;
    v30 = a1;
    swift_errorRetain();
    sub_2208(&qword_6B980, qword_52B10);
    v19 = sub_50B64();
    v21 = sub_4DE68(v19, v20, __dst);
    v28 = v8;
    v22 = a3;
    v23 = a2;
    v24 = v21;

    *(v17 + 4) = v24;
    a2 = v23;
    a3 = v22;
    _os_log_impl(&dword_0, v14, v15, "Execution Error: %s", v17, 0xCu);
    sub_253C(v18);

    (*(v9 + 8))(v12, v28);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = sub_1FE8(a3, a3[3]);
  memcpy(__dst, v25, 0x70uLL);
  sub_202C(a2, __dst);
  sub_50184();
}

void *sub_1FE8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_202C(uint64_t a1, const void *a2)
{
  v4 = sub_50884();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_2208(&qword_6B988, &qword_530B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v14 = &v19[-v13 - 8];
  v20[3] = &type metadata for EmergencyCATProvider;
  v20[4] = &off_66C88;
  v20[0] = swift_allocObject();
  memcpy((v20[0] + 16), a2, 0x70uLL);
  v15 = sub_1FE8(v20, &type metadata for EmergencyCATProvider)[1];
  sub_22F0(a2, v19);

  sub_24C7C();

  sub_234C(v14, v12);
  sub_23BC(a1, v19);
  sub_50874();
  sub_2420();
  v16 = sub_4FF04();
  sub_2478(v7);
  sub_24D4(v14);
  sub_253C(v20);
  return v16;
}

uint64_t sub_2208(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2250()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_234C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6B988, &qword_530B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2420()
{
  result = qword_6B990;
  if (!qword_6B990)
  {
    sub_50884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6B990);
  }

  return result;
}

uint64_t sub_2478(uint64_t a1)
{
  v2 = sub_50884();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24D4(uint64_t a1)
{
  v2 = sub_2208(&qword_6B988, &qword_530B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2588(void *a1)
{
  v2 = v1;
  v4 = sub_2208(&qword_6B998, qword_51850);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  if (sub_509A4())
  {
    v14 = a1[3];
    v15 = a1[4];
    sub_1FE8(a1, v14);
    v16 = v1[6];
    v17 = v2[7];

    sub_2970();
    sub_507F4();
    v18 = sub_50804();
    sub_28E0(v13, 0, 1, v18);
    v19 = sub_50744();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_50734();
    v22 = v2[8];
    v23 = v2[9];
    sub_2970();
    sub_50724();

    v24 = sub_50714();

    sub_29D4();
    v25 = sub_500B4();
    v26 = 0;
    if ((v25 & 1) == 0)
    {
      sub_29D4();
      v26 = sub_50044() ^ 1;
    }

    (*(v15 + 24))(v13, v24, v26 & 1, v14, v15);
  }

  else if (sub_509C4())
  {
    v27 = a1[3];
    v28 = a1[4];
    sub_1FE8(a1, v27);
    v29 = v1[6];
    v30 = v2[7];

    sub_2970();
    sub_507F4();
    v31 = sub_50804();
    sub_28E0(v11, 0, 1, v31);
    sub_29A8();
    v32 = sub_500B4();
    v33 = 0;
    if ((v32 & 1) == 0)
    {
      sub_29A8();
      v33 = sub_50044() ^ 1;
    }

    (*(v28 + 16))(v11, v33 & 1, v27, v28);
    v13 = v11;
  }

  else
  {
    v34 = v1[12];
    v35 = v2[13];
    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v37 = v2[13];

      sub_2970();
      sub_507F4();
      v38 = sub_50804();
      v39 = 0;
    }

    else
    {
      v38 = sub_50804();
      v39 = 1;
    }

    sub_28E0(v8, v39, 1, v38);
    v40 = a1[3];
    v41 = a1[4];
    sub_1FE8(a1, v40);
    sub_297C();
    if (sub_500B4())
    {
      v42 = 0;
    }

    else
    {
      sub_297C();
      v42 = sub_50044() ^ 1;
    }

    (*(v41 + 8))(v8, v42 & 1, v40, v41);
    v13 = v8;
  }

  return sub_2908(v13);
}

uint64_t sub_2908(uint64_t a1)
{
  v2 = sub_2208(&qword_6B998, qword_51850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_297C()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_29A8()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t sub_29D4()
{
  v1 = v0[3];
  sub_1FE8(v0, v1);
  return v1;
}

uint64_t type metadata accessor for CommonCATs()
{
  result = qword_6B9A8;
  if (!qword_6B9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2A4C()
{
  result = sub_50864();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2AF0(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2B3C(a1, a2);
}

uint64_t sub_2B3C(uint64_t a1, void *a2)
{
  v5 = sub_50864();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*(sub_2208(&unk_6D680, &qword_515B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = &v18 - v11;
  *(v2 + qword_6B9A0) = a2;
  v13 = *(v6 + 16);
  v13(v2 + qword_6DDE0, a1, v5);
  v14 = sub_4FD64();
  sub_28E0(v12, 1, 1, v14);
  v13(v9, a1, v5);
  v15 = a2;
  v16 = sub_50784();
  (*(v6 + 8))(a1, v5);
  return v16;
}

uint64_t sub_2CE4()
{
  sub_3260();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_50B24();
  v3 = *(v0 + qword_6B9A0);
  if (v3)
  {
    v4 = *(v0 + qword_6B9A0);
  }

  else
  {
    sub_50774();
    v4 = sub_50764();
  }

  sub_507E4();
  sub_3238();
  v5 = v3;
  sub_3248();
  sub_507D4();

  return sub_31D0(&v7);
}

uint64_t sub_2E0C()
{
  sub_3260();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_50B24();
  v3 = *(v0 + qword_6B9A0);
  if (v3)
  {
    v4 = *(v0 + qword_6B9A0);
  }

  else
  {
    sub_50774();
    v4 = sub_50764();
  }

  sub_507E4();
  sub_3238();
  v5 = v3;
  sub_507D4();

  return sub_31D0(&v7);
}

uint64_t sub_2F44()
{
  sub_3260();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_50B24();
  v3 = *(v0 + qword_6B9A0);
  if (v3)
  {
    v4 = *(v0 + qword_6B9A0);
  }

  else
  {
    sub_50774();
    v4 = sub_50764();
  }

  sub_507E4();
  sub_3238();
  v5 = v3;
  sub_3248();
  sub_507D4();

  return sub_31D0(&v7);
}

uint64_t sub_309C()
{
  v1 = qword_6DDE0;
  v2 = sub_50864();
  sub_327C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_3108()
{
  v0 = sub_507C4();

  v1 = qword_6DDE0;
  v2 = sub_50864();
  sub_327C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_3174()
{
  v0 = sub_3108();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_31D0(uint64_t a1)
{
  v2 = sub_2208(&qword_6B9F8, qword_515B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3260()
{

  return type metadata accessor for CATWrapper(0);
}

uint64_t sub_3290()
{
  v1 = v0;
  v2 = sub_2208(&qword_6BB20, &unk_51FB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_50B04();
  sub_5620();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  sub_5658();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = sub_50AE4();
  sub_56AC();
  v33 = *(v8 + 16);
  v34 = v18;
  v33(v17, v18, v6);
  v19 = sub_50AF4();
  v20 = sub_50BD4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_5718();
    v32 = v1;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "EmergencyConfirmationFlow onInput", v21, 2u);
    v1 = v32;
    sub_5674();
  }

  v22 = *(v8 + 8);
  v22(v17, v6);
  if (*(v1 + 16) != 1)
  {
    return 1;
  }

  sub_EFE0();
  v23 = sub_50284();
  v24 = 1;
  v25 = sub_513C(v5, 1, v23);
  sub_51C0(v5, &qword_6BB20, &unk_51FB0);
  if (v25 == 1)
  {
    v26 = v34;
    sub_56AC();
    v33(v14, v26, v6);
    v27 = sub_50AF4();
    v28 = sub_50BD4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_5718();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "No confirmation response found in input, ignoring.", v29, 2u);
      sub_5674();
    }

    v22(v14, v6);
    return 0;
  }

  return v24;
}

uint64_t sub_35A8(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_50B04();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_3680, 0, 0);
}

uint64_t sub_3680()
{
  v60 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  sub_50AE4();
  sub_56AC();
  v5 = *(v2 + 16);
  v6 = sub_568C();
  v5(v6);

  v7 = sub_50AF4();
  v8 = sub_50BD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 128);
    v57 = *(v0 + 120);
    v58 = *(v0 + 152);
    v10 = v5;
    v11 = *(v0 + 112);
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v13 = v59;
    *v12 = 136315138;
    *(v0 + 160) = *(v11 + 16);
    v14 = sub_50B64();
    v16 = sub_4DE68(v14, v15, &v59);
    v5 = v10;

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v7, v8, "EmergencyConfirmationFlow execute with state: %s", v12, 0xCu);
    sub_253C(v13);
    sub_5674();
    sub_5674();

    v17 = *(v9 + 8);
    v17(v58, v57);
  }

  else
  {
    v18 = *(v0 + 152);
    v19 = *(v0 + 120);
    v20 = *(v0 + 128);

    v17 = *(v20 + 8);
    v21 = sub_5668();
    (v17)(v21);
  }

  v22 = *(v0 + 112);
  switch(*(v22 + 16))
  {
    case 1:
      v39 = *(v0 + 144);
      v40 = *(v0 + 120);
      sub_56AC();
      v41 = sub_568C();
      v5(v41);
      v42 = sub_50AF4();
      v43 = sub_50BD4();
      if (os_log_type_enabled(v42, v43))
      {
        *sub_5718() = 0;
        sub_56D8(&dword_0, v44, v45, "EmergencyConfirmationFlow Didn't receive a valid response. Reprompting user.");
        sub_5674();
      }

      v46 = *(v0 + 144);
      v47 = *(v0 + 120);
      v48 = *(v0 + 128);
      v50 = *(v0 + 104);
      v49 = *(v0 + 112);

      v17(v46, v47);
      *(v0 + 88) = sub_3BC4();

      sub_2208(&qword_6BB40, &unk_51770);
      sub_5640();
      sub_5528(v51, &qword_6BB40, &unk_51770);
      sub_50154();

      goto LABEL_13;
    case 2:
      v25 = *(v0 + 104);
      *(v22 + 16) = 3;
      v26 = sub_1FE8((v22 + 152), *(v22 + 176));
      v27 = *(v26 + *(type metadata accessor for ConfirmationFlowConfigModel() + 24));

      sub_50184();
      goto LABEL_13;
    case 3:
      v28 = *(v0 + 136);
      v29 = *(v0 + 120);
      sub_56AC();
      v30 = sub_568C();
      v5(v30);
      v31 = sub_50AF4();
      v32 = sub_50BD4();
      if (os_log_type_enabled(v31, v32))
      {
        *sub_5718() = 0;
        sub_56D8(&dword_0, v33, v34, "EmergencyConfirmationFlow completed");
        sub_5674();
      }

      v36 = *(v0 + 128);
      v35 = *(v0 + 136);
      v37 = *(v0 + 120);
      v38 = *(v0 + 104);

      v17(v35, v37);
      sub_50194();
      goto LABEL_14;
    default:
      v23 = *(v0 + 104);
      *(v22 + 16) = 1;
      *(v0 + 96) = sub_3BC4();

      sub_2208(&qword_6BB40, &unk_51770);
      sub_5640();
      sub_5528(v24, &qword_6BB40, &unk_51770);
      sub_50164();

LABEL_13:

LABEL_14:
      v53 = *(v0 + 144);
      v52 = *(v0 + 152);
      v54 = *(v0 + 136);

      v55 = *(v0 + 8);

      return v55();
  }
}

uint64_t sub_3B38()
{
  type metadata accessor for EmergencyConfirmationFlow();
  sub_54E0(&qword_6BB48, v0, type metadata accessor for EmergencyConfirmationFlow);
  return sub_4FF14();
}

uint64_t sub_3BC4()
{
  sub_2208(&qword_6BB40, &unk_51770);
  memcpy(v50, v0 + 3, sizeof(v50));
  memcpy(v49, v0 + 3, sizeof(v49));
  sub_23BC((v0 + 19), v48);
  sub_23BC((v0 + 24), v47);
  sub_23BC((v0 + 29), v46);
  sub_5260((v0 + 34), v44);
  sub_52BC(v48, v48[3]);
  sub_5620();
  v2 = *(v1 + 64);
  __chkstk_darwin(v3);
  sub_5630();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4);
  sub_52BC(v46, v46[3]);
  sub_5620();
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_5630();
  v13 = (v12 - v11);
  (*(v14 + 16))(v12 - v11);
  memcpy(v51, v13, sizeof(v51));
  v15 = type metadata accessor for ConfirmationFlowConfigModel();
  v42 = v15;
  v43 = &off_66AB0;
  v16 = sub_530C(v41);
  sub_536C(v6, v16, type metadata accessor for ConfirmationFlowConfigModel);
  v40[3] = &type metadata for EmergencyCATProvider;
  v40[4] = &off_66C88;
  v40[0] = swift_allocObject();
  memcpy((v40[0] + 16), v51, 0x70uLL);
  type metadata accessor for EmergencyPromptForConfirmationFlowStrategy();
  v17 = swift_allocObject();
  sub_52BC(v41, v42);
  sub_5620();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20);
  sub_5630();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21);
  sub_52BC(v40, &type metadata for EmergencyCATProvider);
  sub_5620();
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  sub_5630();
  v30 = (v29 - v28);
  (*(v31 + 16))(v29 - v28);
  memcpy(__dst, v30, sizeof(__dst));
  *(v17 + 40) = v15;
  *(v17 + 48) = &off_66AB0;
  v32 = sub_530C((v17 + 16));
  sub_536C(v23, v32, type metadata accessor for ConfirmationFlowConfigModel);
  *(v17 + 120) = &type metadata for EmergencyCATProvider;
  *(v17 + 128) = &off_66C88;
  v33 = swift_allocObject();
  *(v17 + 96) = v33;
  memcpy((v33 + 16), __dst, 0x70uLL);
  sub_546C(v47, v17 + 56);
  v34 = v44[1];
  *(v17 + 136) = v44[0];
  *(v17 + 152) = v34;
  v35 = v45;
  *(v17 + 176) = 0;
  *(v17 + 184) = 0;
  *(v17 + 168) = v35;
  sub_5484(v50, v39);
  sub_253C(v40);
  sub_253C(v41);
  sub_253C(v46);
  sub_253C(v48);
  v36 = v0[27];
  v37 = v0[28];
  sub_1FE8(v0 + 24, v36);
  (*(v37 + 40))(v39, v36, v37);
  return sub_4FE44();
}

uint64_t sub_4038(uint64_t a1)
{
  v2 = sub_50284();
  sub_5620();
  v105 = v3;
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  sub_5630();
  v97 = v7 - v6;
  v103 = sub_2208(&qword_6BB18, &unk_51750);
  v8 = sub_569C(v103);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v106 = &v93 - v11;
  v12 = sub_2208(&qword_6BB20, &unk_51FB0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_5658();
  v102 = v14 - v15;
  __chkstk_darwin(v16);
  v104 = &v93 - v17;
  v18 = type metadata accessor for EmergencyConfirmationResponseProvider();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_5630();
  v107 = v21 - v20;
  v22 = sub_2208(&qword_6BB28, &unk_51760);
  sub_5620();
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v27);
  sub_5658();
  v110 = (v28 - v29);
  __chkstk_darwin(v30);
  v32 = &v93 - v31;
  v33 = sub_50B04();
  sub_5620();
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  sub_5658();
  v101 = v39 - v40;
  __chkstk_darwin(v41);
  v43 = &v93 - v42;
  v44 = sub_50AE4();
  sub_56AC();
  v113 = v35;
  v45 = *(v35 + 16);
  v100 = v44;
  v109 = v33;
  v99 = v35 + 16;
  v98 = v45;
  v45(v43, v44, v33);
  v46 = *(v24 + 16);
  v111 = a1;
  v108 = v46;
  v46(v32, a1, v22);
  v47 = sub_50AF4();
  v48 = sub_50BD4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v96 = v2;
    v50 = v49;
    v94 = swift_slowAlloc();
    v116 = v94;
    *v50 = 136315138;
    sub_5528(&qword_6BB38, &qword_6BB28, &unk_51760);
    v51 = sub_50CD4();
    v52 = v24;
    v95 = v24;
    v24 = v53;
    v54 = *(v52 + 8);
    v54(v32, v22);
    v55 = sub_4DE68(v51, v24, &v116);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_0, v47, v48, "EmergencyConfirmationFlow finished promptFlow with result: %s", v50, 0xCu);
    sub_253C(v94);
    sub_5674();
    v2 = v96;
    sub_5674();

    v56 = sub_56C4(v113);
    (v24)(v56);
    v57 = v95;
  }

  else
  {

    v54 = *(v24 + 8);
    v54(v32, v22);
    v57 = v24;
    v58 = sub_56C4(v113);
    (v24)(v58);
  }

  v59 = v110;
  v108(v110, v111, v22);
  v60 = *(v57 + 88);
  v61 = sub_5668();
  v63 = v62(v61);
  if (v63 != enum case for PromptResult.answered<A>(_:))
  {
    if (v63 != enum case for PromptResult.error<A>(_:))
    {
      *(v112 + 16) = 3;
      v88 = sub_5668();
      return (v54)(v88);
    }

    v73 = *(v57 + 96);
    v74 = sub_5668();
    v75(v74);
    v76 = *v59;
    v77 = v100;
    sub_56AC();
    v78 = v101;
    v98(v101, v77, v43);
    swift_errorRetain();
    v79 = sub_50AF4();
    v80 = sub_50BE4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v114 = v76;
      v115 = v82;
      *v81 = 136315138;
      swift_errorRetain();
      sub_2208(&qword_6B980, qword_52B10);
      v83 = sub_50B64();
      v85 = sub_4DE68(v83, v84, &v115);

      *(v81 + 4) = v85;
      _os_log_impl(&dword_0, v79, v80, "EmergencyConfirmationFlow Error: %s", v81, 0xCu);
      sub_253C(v82);
      sub_5674();
      sub_5674();
    }

    else
    {
    }

    result = (v24)(v78, v43);
    goto LABEL_20;
  }

  v64 = *(v57 + 96);
  v65 = sub_5668();
  v66(v65);
  v67 = v107;
  sub_536C(v59, v107, type metadata accessor for EmergencyConfirmationResponseProvider);
  v69 = v104;
  v68 = v105;
  (*(v105 + 104))(v104, enum case for ConfirmationResponse.confirmed(_:), v2);
  sub_28E0(v69, 0, 1, v2);
  v70 = *(v103 + 48);
  v71 = v106;
  sub_50CC(v67, v106);
  sub_50CC(v69, v71 + v70);
  sub_56F8(v71);
  if (v87)
  {
    sub_51C0(v69, &qword_6BB20, &unk_51FB0);
    sub_5164(v67);
    sub_56F8(v71 + v70);
    if (v87)
    {
      result = sub_51C0(v71, &qword_6BB20, &unk_51FB0);
LABEL_22:
      v89 = 2;
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v86 = v102;
  sub_50CC(v71, v102);
  sub_56F8(v71 + v70);
  if (v87)
  {
    sub_51C0(v69, &qword_6BB20, &unk_51FB0);
    sub_5164(v107);
    (*(v68 + 8))(v86, v2);
LABEL_16:
    result = sub_51C0(v71, &qword_6BB18, &unk_51750);
    goto LABEL_20;
  }

  (*(v68 + 32))(v97, v71 + v70, v2);
  sub_54E0(&qword_6BB30, 255, &type metadata accessor for ConfirmationResponse);
  v90 = sub_50B34();
  v91 = *(v68 + 8);
  v92 = sub_5668();
  v91(v92);
  sub_51C0(v69, &qword_6BB20, &unk_51FB0);
  sub_5164(v107);
  (v91)(v86, v2);
  result = sub_51C0(v71, &qword_6BB20, &unk_51FB0);
  if (v90)
  {
    goto LABEL_22;
  }

LABEL_20:
  v89 = 3;
LABEL_23:
  *(v112 + 16) = v89;
  return result;
}

Swift::Int sub_49A0(unsigned __int8 a1)
{
  sub_50D34();
  sub_50D44(a1);
  return sub_50D54();
}

Swift::Int sub_4A04()
{
  v1 = *v0;
  sub_50D34();
  sub_50D44(v1);
  return sub_50D54();
}

uint64_t *sub_4A48()
{
  memcpy(v3, v0 + 3, sizeof(v3));
  sub_5574(v3);
  sub_253C(v0 + 19);
  sub_253C(v0 + 24);
  sub_253C(v0 + 29);
  sub_55C8((v0 + 34));
  v1 = v0[40];

  return v0;
}

uint64_t sub_4AA8()
{
  sub_4A48();

  return _swift_deallocClassInstance(v0, 328, 7);
}

uint64_t getEnumTagSinglePayload for EmergencyConfirmationFlow.EmergencyOfferActionFlowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmergencyConfirmationFlow.EmergencyOfferActionFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x4C64);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_4CB4()
{
  result = qword_6BB10;
  if (!qword_6BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6BB10);
  }

  return result;
}

uint64_t sub_4D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4DE0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_4DE0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_4F00(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4F9C;

  return sub_35A8(a1);
}

uint64_t sub_4F9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5090()
{
  type metadata accessor for EmergencyConfirmationFlow();

  return sub_4FF64();
}

uint64_t sub_50CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB20, &unk_51FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5164(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyConfirmationResponseProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_51C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2208(a2, a3);
  sub_569C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_5218(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_52BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *sub_530C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_536C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_569C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_53CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_546C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_54E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_5528(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5218(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5674()
{
}

uint64_t sub_56AC()
{

  return swift_beginAccess();
}

uint64_t sub_56C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  result = v1;
  v5 = *(v2 - 192);
  return result;
}

void sub_56D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_5718()
{

  return swift_slowAlloc();
}

void sub_5730(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1;
  sub_50244();
  sub_50A54();
  sub_50204();
  sub_2208(&qword_6BB58, &qword_517B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_51780;
  *(v9 + 32) = sub_50A54();
  *(v9 + 40) = v10;
  sub_50234();
  v11 = [objc_allocWithZone(SAAceConfirmationContext) init];
  v12 = sub_4E980(a1);
  sub_67D0(v12, v13, v11);
  sub_2208(&unk_6D0C0, &qword_53500);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_51790;
  *(v14 + 32) = v11;
  v15 = v11;
  sub_50214();
  sub_501F4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_517A0;
  *(v16 + 32) = sub_50964();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_50964();
  *(v16 + 56) = v18;
  if (v8 <= 2)
  {
    sub_6908();
    sub_6934("com.apple.siri.nl.EmergencyVerb.Value.");
    sub_50C84();
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v16 = sub_66C8((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 16) = v20 + 1;
    v21 = v16 + 16 * v20;
    *(v21 + 32) = v23;
    *(v21 + 40) = v24;
    a4 = a3;
    a3 = a2;
    LOBYTE(a2) = v22;
  }

  sub_50224();
  sub_5984(a1, a2 & 1, a3, a4);
  sub_501E4();
}

char *sub_5984(unsigned __int8 a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v5 = sub_50B04();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_503D4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_50434();
  v13 = *(v45 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v45);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_50384();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2208(&qword_6BB60, &qword_517B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v43 - v27;
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      sub_5F38(&v43 - v27);
    }

    else
    {
      sub_5E24(v43, v44, &v43 - v27);
    }
  }

  else
  {
    v29 = sub_505E4();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_505D4();
    sub_6380(v32, v28);
  }

  sub_6838(v28, v26);
  if (sub_513C(v26, 1, v17) == 1)
  {
    sub_68A8(v26, &qword_6BB60, &qword_517B8);
    v33 = sub_50AE4();
    swift_beginAccess();
    v35 = v46;
    v34 = v47;
    (*(v46 + 16))(v8, v33, v47);
    v36 = sub_50AF4();
    v37 = sub_50BE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Nil serialized UsoGraph for confirmation SDA", v38, 2u);
    }

    (*(v35 + 8))(v8, v34);
    v39 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v18 + 32))(v21, v26, v17);
    sub_50424();
    sub_60C4(v21, v12);
    sub_50414();
    sub_2208(&qword_6BB68, &qword_517C0);
    v40 = *(v13 + 72);
    v41 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v39 = swift_allocObject();
    *(v39 + 1) = xmmword_51780;
    (*(v13 + 32))(&v39[v41], v16, v45);
    (*(v18 + 8))(v21, v17);
  }

  sub_68A8(v28, &qword_6BB60, &qword_517B8);
  return v39;
}

uint64_t sub_5E24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_50554();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_50544();
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_50534();
  }

  v10 = sub_505C4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_505B4();

  sub_505A4();

  v13 = sub_50604();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_505F4();
  sub_50564();
  sub_6380(v16, a3);
}

uint64_t sub_5F38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_504D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_50624();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_50614();
  v11 = sub_50584();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_50574();
  sub_504C4();
  sub_504B4();
  (*(v3 + 8))(v6, v2);
  sub_50634();
  sub_6380(v10, a1);
}

uint64_t sub_60C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v27 = sub_50404();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v27);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_50384();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_50464();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v24 - v20;
  sub_50454();
  (*(v10 + 16))(v13, v25, v9);
  sub_50444();
  sub_503F4();
  (*(v15 + 16))(v19, v21, v14);
  sub_503E4();
  sub_503C4();
  v22 = v27;
  (*(v2 + 16))(v6, v8, v27);
  sub_503B4();
  (*(v2 + 8))(v8, v22);
  return (*(v15 + 8))(v21, v14);
}

uint64_t sub_6380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_50B04();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  __chkstk_darwin(v3);
  v5 = sub_50384();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&qword_6BB70, &qword_517C8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  sub_2208(&unk_6D0C0, &qword_53500);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_51790;
  *(v13 + 32) = a1;
  v14 = sub_50514();
  sub_28E0(v12, 1, 1, v14);

  sub_50504();

  sub_68A8(v12, &qword_6BB70, &qword_517C8);
  sub_50474();

  v15 = v20;
  (*(v18 + 32))(v20, v8, v5);
  return sub_28E0(v15, 0, 1, v5);
}

char *sub_66C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2208(&qword_6BB58, &qword_517B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_67D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();

  [a3 setReason:v4];
}

uint64_t sub_6838(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB60, &qword_517B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_68A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2208(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_6908()
{

  sub_50C64(40);
}

void sub_6934(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000026;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_50BA4(v2);
}

uint64_t type metadata accessor for EmergencySuicidePreventionBasicIntentCATs()
{
  result = qword_6BB78;
  if (!qword_6BB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_69E4(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_517A0;
  strcpy((v9 + 32), "webSearchQuery");
  *(v9 + 47) = -18;
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_6B94(uint64_t a1, char a2)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v9 = swift_allocObject();
  sub_7260(v9, xmmword_517A0);
  sub_72BC();
  v10 = sub_50804();
  if (sub_513C(v8, 1, v10) == 1)
  {
    sub_7204(v8, &qword_6B998, qword_51850);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v10;
    sub_530C((v9 + 48));
    sub_7298(v10);
    (*(v11 + 32))();
  }

  sub_7280();
  *(v9 + 120) = &type metadata for Bool;
  *(v9 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_6D20(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v6);
  v8 = *(v7 + 64);
  sub_72A4();
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v12 = swift_allocObject();
  sub_7260(v12, xmmword_517D0);
  sub_71A0(a1, v11, &qword_6B998, qword_51850);
  v13 = sub_50804();
  if (sub_513C(v11, 1, v13) == 1)
  {
    sub_7204(v11, &qword_6B998, qword_51850);
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
  }

  else
  {
    *(v12 + 72) = v13;
    sub_530C((v12 + 48));
    sub_7298(v13);
    (*(v14 + 32))();
  }

  *(v12 + 80) = 0x65626D754E67726FLL;
  *(v12 + 88) = 0xE900000000000072;
  if (a2)
  {
    v15 = sub_50754();
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  *(v12 + 96) = v16;
  *(v12 + 120) = v15;
  *(v12 + 128) = 0xD000000000000012;
  *(v12 + 136) = 0x8000000000054BF0;
  *(v12 + 168) = &type metadata for Bool;
  *(v12 + 144) = a3 & 1;

  sub_50794();
}

uint64_t sub_6F24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_6F78(a1, a2);
}

uint64_t sub_6F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_71A0(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v14;
}

uint64_t sub_70FC()
{
  v0 = sub_507C4();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_71A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2208(a3, a4);
  sub_7298(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_7204(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2208(a2, a3);
  sub_7298(v4);
  (*(v5 + 8))(a1);
  return a1;
}

__n128 *sub_7260(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656D614E67726FLL;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_72BC()
{

  return sub_71A0(v1, v0, v2, v3);
}

uint64_t type metadata accessor for SexualAssaultCATs()
{
  result = qword_6BBD0;
  if (!qword_6BBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7368(uint64_t a1, char a2)
{
  v4 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v4);
  v6 = *(v5 + 64);
  sub_72A4();
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v10 = swift_allocObject();
  sub_7260(v10, xmmword_517A0);
  sub_71A0(a1, v9, &qword_6B998, qword_51850);
  v11 = sub_50804();
  if (sub_513C(v9, 1, v11) == 1)
  {
    sub_7204(v9, &qword_6B998, qword_51850);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_530C((v10 + 48));
    sub_7298(v11);
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0xD000000000000012;
  *(v10 + 88) = 0x8000000000054BF0;
  *(v10 + 120) = &type metadata for Bool;
  *(v10 + 96) = a2 & 1;
  sub_50794();
}

uint64_t sub_7514(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7BAC(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_7658(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7260(v7, xmmword_51780);
  sub_71A0(a1, v1, &qword_6B998, qword_51850);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_77B0(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = swift_allocObject();
  sub_7BAC(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_7204(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_7298(a1);
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_7918(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_796C(a1, a2);
}

uint64_t sub_796C(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_71A0(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v14;
}

uint64_t sub_7BAC(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "websearchQuery");
  a1[2].n128_u8[15] = -18;

  return sub_71A0(v3, v2, v4, v5);
}

uint64_t sub_7C3C()
{
  type metadata accessor for CsamSituation.Builder();
  swift_initStackObject();
  v0 = sub_14434();
  if (sub_50A44() == 0xD000000000000013 && 0x8000000000054DB0 == v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_50CE4();
  }

  v0[16] = v3 & 1;
  v4 = sub_50954();

  v0[17] = v4 & 1;
  if (sub_50A44() == 0x7078655F6D617363 && v5 == 0xED0000746963696CLL)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_50CE4();
  }

  v0[18] = v7 & 1;
  if (sub_50A44() == 0xD000000000000010 && 0x8000000000054DD0 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_50CE4();
  }

  v0[19] = v10 & 1;
  type metadata accessor for CsamSituation();
  swift_allocObject();
  return sub_1447C(v0);
}

__n128 sub_7E14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_7E30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_7E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_7ECC()
{
  v1 = sub_50B04();
  v2 = sub_8558(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v7 = sub_8534();
  swift_beginAccess();
  (*(v4 + 16))(v0, v7, v1);
  v8 = sub_50AF4();
  v9 = sub_50BD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "WebsearchFlow onInput", v10, 2u);
  }

  (*(v4 + 8))(v0, v1);
  return 1;
}

uint64_t sub_8018(uint64_t a1, uint64_t a2)
{
  v5 = sub_50B04();
  v6 = sub_8558(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v11 = sub_8534();
  swift_beginAccess();
  (*(v8 + 16))(v2, v11, v5);
  v12 = sub_50AF4();
  v13 = sub_50BD4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "WebsearchFlow execute", v14, 2u);
  }

  (*(v8 + 8))(v2, v5);
  v15 = v2[6];
  sub_1FE8(v2 + 2, v2[5]);
  v16 = *v2;
  v17 = v2[1];
  v18 = [objc_allocWithZone(SAWebSearch) init];
  sub_83F4(v16, v17, v18);
  v19 = sub_50B54();
  sub_844C(v19, v20, v18);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  sub_84F0();

  sub_50274();
}

uint64_t sub_8240(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_501C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50194();
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_833C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.execute()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4F9C;

  return Flow.execute()(a1, a2, a3);
}

void sub_83F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();
  [a3 setQuery:v4];
}

void sub_844C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_50B44();

  [a3 setProvider:v4];
}

uint64_t sub_84B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_84F0()
{
  result = qword_6BC20;
  if (!qword_6BC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_6BC20);
  }

  return result;
}

uint64_t sub_8534()
{

  return sub_50AE4();
}

void sub_856C()
{
  v3 = sub_8A48();
  v4 = sub_8A18(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_89E4();
  if (!v10 & v9)
  {
    sub_50AE4();
    sub_8ACC();
    v18 = sub_8A30();
    v19(v18);
    v20 = sub_50AF4();
    v21 = sub_50BE4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      v24 = sub_50B64();
      v26 = sub_4DE68(v24, v25, &v29);

      *(v22 + 4) = v26;
      sub_8AAC(&dword_0, v27, v28, "Unsupported situation for Basic CATs: %s");
      sub_253C(v23);
      sub_5674();
      sub_5674();
    }

    (*(v6 + 8))(v0, v1);
    sub_8A80();
    sub_8A94();
  }

  else
  {
    switch(v2)
    {
      case 1:
        v16 = sub_8A00()[8];
        v12 = type metadata accessor for EmergencySexualAssaultBasicIntentCATs();
        v13 = &off_66378;
        break;
      case 2:
        v14 = sub_8A00()[7];
        v12 = type metadata accessor for EmergencyPoisonControlBasicIntentCATs();
        v13 = &off_66398;
        break;
      case 3:
        v15 = sub_8A00()[6];
        v12 = type metadata accessor for EmergencyDomesticViolenceBasicIntentCATs();
        v13 = &off_663B8;
        break;
      default:
        v11 = sub_8A00()[9];
        v12 = type metadata accessor for EmergencySuicidePreventionBasicIntentCATs();
        v13 = &off_66358;
        break;
    }

    sub_8A6C(v12, v13);
    sub_8A94();
  }
}

void sub_87A8()
{
  v3 = sub_8A48();
  v4 = sub_8A18(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_89E4();
  if (!v10 & v9)
  {
    sub_50AE4();
    sub_8ACC();
    v18 = sub_8A30();
    v19(v18);
    v20 = sub_50AF4();
    v21 = sub_50BE4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315138;
      v24 = sub_50B64();
      v26 = sub_4DE68(v24, v25, &v29);

      *(v22 + 4) = v26;
      sub_8AAC(&dword_0, v27, v28, "Unsupported situation for Sub-Area CATs: %s");
      sub_253C(v23);
      sub_5674();
      sub_5674();
    }

    (*(v6 + 8))(v0, v1);
    sub_8A80();
    sub_8A94();
  }

  else
  {
    switch(v2)
    {
      case 1:
        v16 = sub_8A00()[4];
        v12 = type metadata accessor for SexualAssaultCATs();
        v13 = &off_664F0;
        break;
      case 2:
        v14 = sub_8A00()[3];
        v12 = type metadata accessor for PoisonControlCATs();
        v13 = &off_66528;
        break;
      case 3:
        v15 = sub_8A00()[2];
        v12 = type metadata accessor for DomesticViolenceCATs();
        v13 = &off_66560;
        break;
      default:
        v11 = sub_8A00()[5];
        v12 = type metadata accessor for SuicidePreventionCATs();
        v13 = &off_664B8;
        break;
    }

    sub_8A6C(v12, v13);
    sub_8A94();
  }
}

void *sub_8A00()
{
  v2 = v0[3];

  return sub_1FE8(v0, v2);
}

uint64_t sub_8A48()
{

  return sub_50B04();
}

uint64_t sub_8A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;
  *v2 = v3;
  return v3;
}

double sub_8A80()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void sub_8AAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_8ACC()
{

  return swift_beginAccess();
}

uint64_t type metadata accessor for EmergencySexualAssaultBasicIntentModernCATs()
{
  result = qword_6BC28;
  if (!qword_6BC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8B78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_8BCC(a1, a2);
}

uint64_t sub_8BCC(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_8D28(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_8E28()
{
  v0 = sub_50834();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_8E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&unk_6D680, &qword_515B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8ED0(uint64_t a1)
{
  v2 = sub_2208(&unk_6D680, &qword_515B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8F50()
{
  if (qword_6B5E8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_8FAC()
{
  sub_2208(&qword_6BD80, qword_51B18);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_519F0;
  if (qword_6B5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_6BC88;
  *(v0 + 56) = sub_2208(&qword_6BCB8, &qword_51A08);
  *(v0 + 64) = sub_9860(&qword_6BD88, &qword_6BCB8, &qword_51A08);
  *(v0 + 32) = v1;
  v2 = qword_6B5F8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_6BC90;
  *(v0 + 96) = sub_2208(&qword_6BCC0, &qword_51A10);
  *(v0 + 104) = sub_9860(&qword_6BD90, &qword_6BCC0, &qword_51A10);
  *(v0 + 72) = v3;
  v4 = qword_6B600;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_6BC98;
  *(v0 + 136) = sub_2208(&qword_6BCB0, &qword_51A00);
  *(v0 + 144) = sub_9860(&qword_6BD98, &qword_6BCB0, &qword_51A00);
  *(v0 + 112) = v5;
  v6 = qword_6B608;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_6BCA0;
  *(v0 + 176) = sub_2208(&qword_6BCC8, &qword_51A18);
  *(v0 + 184) = sub_9860(&qword_6BDA0, &qword_6BCC8, &qword_51A18);
  *(v0 + 152) = v7;
  v8 = qword_6B610;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_6BCA8;
  *(v0 + 216) = sub_2208(&qword_6BCD0, qword_51A20);
  *(v0 + 224) = sub_9860(&qword_6BDA8, &qword_6BCD0, qword_51A20);
  *(v0 + 192) = v9;
  qword_6BC78 = v0;
}

uint64_t sub_9280()
{
  if (qword_6B5E0 != -1)
  {
    swift_once();
  }

  v0 = sub_50494();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = sub_50484();
  qword_6BC80 = result;
  return result;
}

uint64_t sub_9320()
{
  v0 = sub_2208(&qword_6BCB8, &qword_51A08);
  sub_98FC(v0);
  result = sub_504A4();
  qword_6BC88 = result;
  return result;
}

uint64_t sub_9388()
{
  v0 = sub_2208(&qword_6BCC0, &qword_51A10);
  sub_98FC(v0);
  result = sub_98D8();
  qword_6BC90 = result;
  return result;
}

uint64_t sub_93D4()
{
  v0 = sub_2208(&qword_6BCB0, &qword_51A00);
  sub_98FC(v0);
  result = sub_98B4();
  qword_6BC98 = result;
  return result;
}

uint64_t sub_9420()
{
  v0 = sub_2208(&qword_6BCC8, &qword_51A18);
  sub_98FC(v0);
  result = sub_98B4();
  qword_6BCA0 = result;
  return result;
}

uint64_t sub_946C()
{
  v0 = sub_2208(&qword_6BCD0, qword_51A20);
  sub_98FC(v0);
  result = sub_98D8();
  qword_6BCA8 = result;
  return result;
}

uint64_t sub_94B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_50654();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_9538(uint64_t a1)
{
  v2 = sub_981C(&qword_6BD78);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_95A0(uint64_t a1)
{
  v2 = sub_981C(&qword_6BD78);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_9610(uint64_t a1, uint64_t a2)
{
  v4 = sub_50654();

  return sub_513C(a1, a2, v4);
}

uint64_t sub_966C(uint64_t a1, uint64_t a2)
{
  v4 = sub_50654();

  return sub_28E0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for EmergencyNLIntent()
{
  result = qword_6BD30;
  if (!qword_6BD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_9704()
{
  result = sub_50654();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_97D8(uint64_t a1)
{
  result = sub_981C(&qword_6BD78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_981C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmergencyNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_9860(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_5218(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_98B4()
{

  return sub_504A4();
}

uint64_t sub_98D8()
{

  return sub_504A4();
}

uint64_t sub_98FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t type metadata accessor for SuicidePreventionCATs()
{
  result = qword_6BDB0;
  if (!qword_6BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_99A0(char a1)
{
  sub_2208(&qword_6BBC8, &unk_518B0);
  v2 = sub_A184();
  *(v2 + 16) = xmmword_51780;
  *(v2 + 32) = 0xD000000000000012;
  *(v2 + 40) = 0x8000000000054BF0;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = a1;
  sub_50794();
}

uint64_t sub_9A5C(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = sub_A184();
  sub_A12C(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_68A8(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_A174();
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_9B94(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = sub_A184();
  *(v7 + 16) = xmmword_51780;
  *(v7 + 32) = 0x656D614E67726FLL;
  *(v7 + 40) = 0xE700000000000000;
  sub_A0C4(a1, v1, &qword_6B998, qword_51850);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_68A8(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_A174();
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_9CF8(uint64_t a1)
{
  v3 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v3);
  v5 = *(v4 + 64);
  sub_72A4();
  __chkstk_darwin(v6);
  sub_7C2C();
  sub_2208(&qword_6BBC8, &unk_518B0);
  v7 = sub_A184();
  sub_A12C(v7, xmmword_51780);
  v8 = sub_50804();
  sub_7BF4(v8);
  if (v9)
  {
    sub_68A8(v1, &qword_6B998, qword_51850);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = a1;
    sub_530C((v7 + 48));
    sub_A174();
    (*(v10 + 32))();
  }

  sub_7C1C();
  sub_50794();
}

uint64_t sub_9E54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_9EA8(a1, a2);
}

uint64_t sub_9EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v9);
  v11 = *(v10 + 64);
  sub_72A4();
  __chkstk_darwin(v12);
  sub_A0C4(a1, &v16 - v13, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_68A8(a1, &unk_6D680, &qword_515B0);
  return v14;
}

uint64_t sub_A0C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2208(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_A12C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "websearchQuery");
  a1[2].n128_u8[15] = -18;

  return sub_A0C4(v3, v2, v4, v5);
}

uint64_t sub_A184()
{

  return swift_allocObject();
}

uint64_t sub_A1FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_A250(a1, a2);
}

uint64_t sub_A250(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_8E60(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_8ED0(a1);
  return v12;
}

uint64_t sub_A3D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2208(&qword_6B998, qword_51850);
    v11 = &a1[*(a3 + 20)];

    return sub_513C(v11, a2, v10);
  }
}

_BYTE *sub_A480(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_2208(&qword_6B998, qword_51850);
    v8 = &v5[*(a4 + 20)];

    return sub_28E0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_A528(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A560()
{
  sub_A5DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_A5DC()
{
  if (!qword_6BEB8)
  {
    sub_50804();
    v0 = sub_50C24();
    if (!v1)
    {
      atomic_store(v0, &qword_6BEB8);
    }
  }
}

uint64_t type metadata accessor for EmergencyErrorsCATs()
{
  result = qword_6BEE8;
  if (!qword_6BEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208(&qword_6B998, qword_51850);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  sub_2208(&qword_6BBC8, &unk_518B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_517D0;
  *(v13 + 32) = 0x656D614E67726FLL;
  *(v13 + 40) = 0xE700000000000000;
  sub_71A0(a1, v12, &qword_6B998, qword_51850);
  v14 = sub_50804();
  if (sub_513C(v12, 1, v14) == 1)
  {
    sub_7204(v12, &qword_6B998, qword_51850);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v14;
    sub_530C((v13 + 48));
    sub_7298(v14);
    (*(v15 + 32))();
  }

  *(v13 + 80) = 0x6D754E656E6F6870;
  *(v13 + 88) = 0xEB00000000726562;
  if (a2)
  {
    v16 = sub_50754();
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  *(v13 + 96) = v17;
  *(v13 + 120) = v16;
  *(v13 + 128) = 0x65746973626577;
  *(v13 + 136) = 0xE700000000000000;
  sub_71A0(a3, v10, &qword_6B998, qword_51850);
  if (sub_513C(v10, 1, v14) == 1)
  {

    sub_7204(v10, &qword_6B998, qword_51850);
    *(v13 + 144) = 0u;
    *(v13 + 160) = 0u;
  }

  else
  {
    *(v13 + 168) = v14;
    sub_530C((v13 + 144));
    sub_7298(v14);
    (*(v18 + 32))();
  }

  sub_50794();
}

uint64_t sub_A990(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_A9E4(a1, a2);
}

uint64_t sub_A9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_50864();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&unk_6D680, &qword_515B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_71A0(a1, &v14 - v11, &unk_6D680, &qword_515B0);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_50784();
  (*(v5 + 8))(a2, v4);
  sub_7204(a1, &unk_6D680, &qword_515B0);
  return v12;
}

uint64_t sub_AB78(uint64_t a1)
{
  v2 = v1;
  v180 = sub_50324();
  v4 = sub_8558(v180);
  v182 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v8);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v9);
  sub_EE14(v165 - v10);
  v11 = type metadata accessor for EmergencyNLIntent();
  v12 = sub_72B0(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v15);
  sub_EE14(v165 - v16);
  v185 = sub_50654();
  v17 = sub_8558(v185);
  v177 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_5630();
  sub_EE14(v22 - v21);
  v23 = sub_503A4();
  v24 = sub_72B0(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_5630();
  sub_EE14(v28 - v27);
  v29 = sub_50A24();
  v30 = sub_72B0(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v33);
  sub_EE14(v165 - v34);
  v172 = sub_50354();
  v35 = sub_8558(v172);
  v166 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_5630();
  sub_EE14(v40 - v39);
  v41 = sub_50334();
  v42 = sub_8558(v41);
  v188 = v43;
  v189 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v42);
  sub_5630();
  sub_EE14(v47 - v46);
  v48 = sub_502E4();
  v49 = sub_8558(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  __chkstk_darwin(v49);
  sub_5630();
  v56 = v55 - v54;
  v57 = sub_50B04();
  v58 = sub_8558(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  __chkstk_darwin(v58);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v63);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v64);
  sub_EEF4();
  v190 = v65;
  __chkstk_darwin(v66);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v67);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v68);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v69);
  v71 = v165 - v70;
  v72 = sub_50AE4();
  sub_56AC();
  v73 = *(v60 + 16);
  v186 = v72;
  v191 = v73;
  v192 = (v60 + 16);
  v73(v71, v72, v57);
  v74 = *(v51 + 16);
  v184 = a1;
  v74(v56, a1, v48);
  v75 = sub_50AF4();
  v76 = sub_50BD4();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = sub_EFB0();
    v169 = v57;
    v78 = v77;
    v165[0] = sub_EFC8();
    v193 = v165[0];
    *v78 = 136315138;
    sub_ECD4(&qword_6C078, 255, &type metadata accessor for Input);
    v79 = sub_50CD4();
    v80 = v48;
    v81 = v2;
    v82 = v60;
    v84 = v83;
    (*(v51 + 8))(v56, v80);
    v85 = sub_4DE68(v79, v84, &v193);
    v60 = v82;
    v2 = v81;

    *(v78 + 4) = v85;
    _os_log_impl(&dword_0, v75, v76, "#GeneralEmergencyFlow onInput: %s", v78, 0xCu);
    v86 = sub_EF84(v194);
    sub_253C(v86);
    sub_5674();
    v57 = v169;
    sub_5674();
  }

  else
  {

    (*(v51 + 8))(v56, v48);
  }

  v87 = *(v60 + 8);
  v87(v71, v57);
  v88 = v187;
  sub_502D4();
  v89 = (*(v188 + 88))(v88, v189);
  v90 = v190;
  if (v89 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v91 = sub_EF1C();
    v92(v91);
    v93 = v177;
    v94 = v176;
    (*(v177 + 32))(v176, v88, v185);
    sub_EE74();
    sub_EF84(&v202);
    sub_EE24();
    v95();
    v96 = sub_50AF4();
    v97 = sub_50BD4();
    if (sub_EF00(v97))
    {
      v98 = sub_5718();
      sub_EEC8(v98);
      sub_EED4(&dword_0, v99, v100, "GeneralEmergencyFlow onInput .NLv3IntentOnly");
      sub_EE58();
    }

    v87(v183, v57);
    v101 = v179;
    v102 = v185;
    (*(v93 + 16))(v179, v94, v185);
    v103 = v178;
    sub_EBBC(v101, v178, type metadata accessor for EmergencyNLIntent);
    v104 = sub_DBCC(v103);
    sub_EC1C(v101, type metadata accessor for EmergencyNLIntent);
    (*(v93 + 8))(v94, v102);
    goto LABEL_8;
  }

  if (v89 != enum case for Parse.directInvocation(_:))
  {
    if (v89 != enum case for Parse.uso(_:))
    {
      sub_EE74();
      v155 = v165[2];
      sub_EE24();
      v156();
      v157 = sub_50AF4();
      v158 = sub_50BE4();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = sub_EFB0();
        v160 = sub_EFC8();
        v200 = v160;
        *v159 = 136315138;
        LOBYTE(v197) = 0;
        v161 = sub_50B64();
        v163 = sub_4DE68(v161, v162, &v200);

        *(v159 + 4) = v163;
        _os_log_impl(&dword_0, v157, v158, "%s", v159, 0xCu);
        sub_253C(v160);
        sub_5674();
        sub_5674();

        v88 = v187;
      }

      else
      {
      }

      v87(v155, v57);
      (*(v188 + 8))(v88, v189);
      return 0;
    }

    v128 = sub_EF1C();
    v129(v128);
    v130 = v166;
    (*(v166 + 32))(v171, v88, v172);
    sub_EE74();
    sub_EF84(&v199);
    sub_EE24();
    v131();
    v132 = sub_50AF4();
    v133 = sub_50BD4();
    if (sub_EF00(v133))
    {
      v134 = sub_5718();
      sub_EEC8(v134);
      sub_EED4(&dword_0, v135, v136, "#GeneralEmergencyFlow onInput .uso");
      sub_EE58();
    }

    v87(v170, v57);
    v137 = v171;
    sub_50344();
    v195 = &type metadata for EmergencyFeatureFlagsKey;
    v196 = sub_EB68();
    LOBYTE(v193) = 2;
    sub_50374();
    sub_253C(&v193);
    v138 = v168;
    sub_50A14();
    v139 = v167;
    sub_EBBC(v138, v167, &type metadata accessor for EmergencyDialogAct);
    v104 = sub_D93C(v139);
    sub_EC1C(v138, &type metadata accessor for EmergencyDialogAct);
    (*(v130 + 8))(v137, v172);
    goto LABEL_8;
  }

  v114 = sub_EF1C();
  v115(v114);
  (*(v182 + 32))(v181, v88, v180);
  sub_EE74();
  sub_EF84(v201);
  sub_EE24();
  v116();
  v117 = sub_50AF4();
  v118 = sub_50BD4();
  if (sub_EF00(v118))
  {
    v119 = sub_5718();
    sub_EEC8(v119);
    sub_EED4(&dword_0, v120, v121, "GeneralEmergencyFlow onInput .directInvocation");
    sub_EE58();
  }

  v189 = v60 + 8;
  v87(v175, v57);
  v122 = v181;
  if (sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v123)
  {

    v126 = v173;
  }

  else
  {
    v125 = sub_50CE4();

    v126 = v173;
    if ((v125 & 1) == 0)
    {
LABEL_28:
      sub_EE74();
      sub_EE24();
      v140();
      v141 = v182;
      v142 = *(v182 + 16);
      v143 = v90;
      v144 = v180;
      v142(v126, v122, v180);
      v145 = sub_50AF4();
      v146 = sub_50BE4();
      if (sub_EF00(v146))
      {
        v147 = sub_EFB0();
        v192 = v87;
        v148 = v147;
        v149 = sub_EFC8();
        v197 = v149;
        *v148 = 136315138;
        v142(v165[1], v126, v144);
        v150 = sub_50B64();
        v152 = v151;
        v169 = v57;
        v153 = *(v182 + 8);
        v153(v126, v144);
        v154 = sub_4DE68(v150, v152, &v197);

        *(v148 + 4) = v154;
        _os_log_impl(&dword_0, v145, v143, "Failed to get emergencySituation from DirectInvocation: %s", v148, 0xCu);
        sub_253C(v149);
        sub_5674();
        sub_5674();

        v192(v190, v169);
        v153(v181, v144);
      }

      else
      {

        v164 = *(v141 + 8);
        v164(v126, v144);
        v87(v190, v57);
        v164(v122, v144);
      }

      return 0;
    }
  }

  if (sub_2B6B0() == 35)
  {
    goto LABEL_28;
  }

  v104 = sub_50924();
  (*(v182 + 8))(v122, v180);
LABEL_8:
  if (v104 != 35)
  {
    *(v2 + 216) = v104;
    return 1;
  }

  sub_EE74();
  v105 = v174;
  sub_EE24();
  v106();
  v107 = sub_50AF4();
  v108 = sub_50BE4();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = sub_EFB0();
    v110 = sub_EFC8();
    v199 = v110;
    *v109 = 136315138;
    v198 = 0;
    v111 = sub_50B64();
    v113 = sub_4DE68(v111, v112, &v199);

    *(v109 + 4) = v113;
    _os_log_impl(&dword_0, v107, v108, "%s", v109, 0xCu);
    sub_253C(v110);
    sub_5674();
    sub_5674();
  }

  v87(v105, v57);
  return 0;
}

uint64_t sub_BA98()
{
  sub_EF64();
  v1[136] = v0;
  v1[135] = v2;
  v3 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v3);
  v5 = *(v4 + 64) + 15;
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v6 = sub_50884();
  v1[139] = v6;
  sub_72B0(v6);
  v8 = *(v7 + 64) + 15;
  v1[140] = swift_task_alloc();
  v9 = sub_50704();
  v1[141] = v9;
  v10 = *(v9 - 8);
  v1[142] = v10;
  v11 = *(v10 + 64) + 15;
  v1[143] = swift_task_alloc();
  v1[144] = swift_task_alloc();
  v12 = sub_50B04();
  v1[145] = v12;
  v13 = *(v12 - 8);
  v1[146] = v13;
  v14 = *(v13 + 64) + 15;
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();

  return _swift_task_switch(sub_BC5C, 0, 0);
}

uint64_t sub_BC5C()
{
  v1 = v0[151];
  v2 = v0[146];
  v3 = v0[145];
  v0[152] = sub_50AE4();
  sub_56AC();
  v4 = *(v2 + 16);
  v0[153] = v4;
  v0[154] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = sub_EF3C();
  v4(v5);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  if (sub_EF4C(v7))
  {
    *sub_5718() = 0;
    sub_EF90(&dword_0, v8, v9, "#GeneralEmergencyFlow execute");
    sub_5674();
  }

  v10 = v0[151];
  v11 = v0[146];
  v12 = v0[145];
  v13 = v0[136];

  v14 = *(v11 + 8);
  v0[155] = v14;
  v15 = sub_5668();
  v14(v15);
  v16 = *(v13 + 216);
  if (v16 == 36)
  {
    v21 = v0[135];
    sub_50194();
    goto LABEL_16;
  }

  if (v16 == 35)
  {
    v17 = v0[136];
    v18 = v0[135];
    sub_E9D0();
    v19 = swift_allocError();
    *v20 = 2;
    sub_1D68(v19, v17 + 16, (v17 + 56), v18);

LABEL_16:
    sub_EE90();

    v63 = v0[1];

    return v63();
  }

  v22 = v0[144];
  v23 = v0[143];
  v24 = v0[142];
  v68 = v0[141];
  v25 = v0[136];
  v26 = v25[6];
  v67 = v14;
  sub_1FE8(v25 + 2, v25[5]);
  v27 = *(v26 + 8);
  v28 = sub_EE48();
  v29(v28);
  v30 = v0[114];
  sub_1FE8(v0 + 110, v0[113]);
  sub_EE48();
  sub_50064();
  sub_506F4();
  sub_ECD4(&qword_6C048, 255, &type metadata accessor for DeviceRestrictions);
  v31 = sub_50C34();
  v32 = *(v24 + 8);
  v32(v23, v68);
  v32(v22, v68);
  if (v31)
  {
    v33 = v0[150];
    v34 = v0[145];
    sub_56AC();
    v35 = sub_EF3C();
    v4(v35);
    v36 = sub_50AF4();
    v37 = sub_50BD4();
    if (sub_EF4C(v37))
    {
      v38 = sub_5718();
      sub_EEC8(v38);
      sub_56D8(&dword_0, v39, v40, "#GeneralEmergencyFlow phoneFeaturesUnavailable, routing to CannedHelp instead");
      sub_EE58();
    }

    v41 = v0[150];
    v42 = v0[146];
    v43 = v0[145];
    v44 = v0[136];
    v45 = v0[135];

    (v67)(v41, v43);
    v46 = sub_1FE8((v44 + 56), *(v44 + 80));
    memcpy(v0 + 96, v46, 0x70uLL);
    sub_451D4();
    sub_50184();

LABEL_15:
    sub_253C(v0 + 110);
    goto LABEL_16;
  }

  if (sub_50934())
  {
    v47 = v0[149];
    v48 = v0[145];
    sub_56AC();
    v49 = sub_EF3C();
    v4(v49);
    v50 = sub_50AF4();
    v51 = sub_50BD4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = sub_5718();
      sub_EEC8(v52);
      _os_log_impl(&dword_0, v50, v51, "#GeneralEmergencyFlow Providing Low Risk response", v48, 2u);
      sub_EE58();
    }

    v53 = v0[149];
    v54 = v0[146];
    v55 = v0[145];
    v56 = v0[140];
    v57 = v0[139];
    v58 = v0[136];
    v59 = v0[135];

    (v67)(v53, v55);
    sub_C744();
    sub_EDEC();
    sub_ECD4(v60, 255, v61);
    sub_50174();
    sub_EDD4();
    sub_EC1C(v56, v62);
    goto LABEL_15;
  }

  v65 = v0[136];
  v66 = swift_task_alloc();
  v0[156] = v66;
  *v66 = v0;
  v66[1] = sub_C1C0;

  return sub_15100((v0 + 50), v65 + 136, v16, 4);
}

uint64_t sub_C1C0()
{
  sub_EF64();
  v1 = *(*v0 + 1248);
  v2 = *v0;
  sub_EF2C();
  *v3 = v2;

  return _swift_task_switch(sub_C2B0, 0, 0);
}

uint64_t sub_C2B0()
{
  memcpy((v0 + 272), (v0 + 400), 0x80uLL);
  v1 = sub_E51C(v0 + 272);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1216);
  v5 = *(v0 + 1160);
  if (v1 == 1)
  {
    v6 = *(v0 + 1176);
    v7 = *(v0 + 1216);
    sub_56AC();
    v3(v6, v4, v5);
    v8 = sub_50AF4();
    v9 = sub_50BD4();
    if (sub_EF4C(v9))
    {
      v10 = sub_5718();
      sub_EEC8(v10);
      sub_56D8(&dword_0, v11, v12, "#GeneralEmergencyFlow No orgInfo found for language/locale. Presenting generic offerEmergencyCall button.");
      sub_EE58();
    }

    v13 = *(v0 + 1240);
    v14 = *(v0 + 1176);
    v15 = *(v0 + 1168);
    v16 = *(v0 + 1160);
    v17 = *(v0 + 1120);
    v46 = *(v0 + 1112);
    v18 = *(v0 + 1096);
    v19 = *(v0 + 1088);
    v20 = *(v0 + 1080);

    v13(v14, v16);
    sub_E534((v0 + 528));
    memcpy((v0 + 16), (v0 + 528), 0x80uLL);
    v21 = sub_1FE8((v19 + 56), *(v19 + 80));
    memcpy((v0 + 656), v21, 0x70uLL);
    sub_E54C((v0 + 16), (v0 + 880), (v0 + 656));
    v22 = sub_1FE8((v19 + 56), *(v19 + 80))[1];

    sub_25070();

    sub_23BC(v19 + 16, v0 + 920);
    sub_50874();
    sub_EDEC();
    sub_ECD4(v23, 255, v24);
    sub_50174();
    sub_EDD4();
    sub_EC1C(v17, v25);
  }

  else
  {
    v26 = *(v0 + 1184);
    memcpy((v0 + 144), (v0 + 272), 0x80uLL);
    sub_56AC();
    v3(v26, v4, v5);
    v27 = sub_50AF4();
    v28 = sub_50BD4();
    if (sub_EF4C(v28))
    {
      v29 = sub_5718();
      sub_EEC8(v29);
      sub_56D8(&dword_0, v30, v31, "#GeneralEmergencyFlow Providing High Risk response");
      sub_EE58();
    }

    v32 = *(v0 + 1240);
    v33 = *(v0 + 1184);
    v34 = *(v0 + 1168);
    v35 = *(v0 + 1160);
    v36 = *(v0 + 1088);

    v32(v33, v35);
    v37 = sub_1FE8((v36 + 56), *(v36 + 80))[10];
    v38 = *(v0 + 912);
    sub_1FE8((v0 + 880), *(v0 + 904));

    sub_5668();
    if (sub_500B4())
    {
      v39 = 0;
    }

    else
    {
      v40 = *(v0 + 912);
      sub_1FE8((v0 + 880), *(v0 + 904));
      sub_5668();
      v39 = sub_50044() ^ 1;
    }

    v41 = *(v0 + 1104);
    v42 = *(v0 + 1088);
    v43 = *(v0 + 1080);
    sub_27918(v39 & 1);

    sub_1FE8((v42 + 176), *(v42 + 200));
    sub_CE74((v0 + 144), v41);
    sub_51C0(v0 + 400, &qword_6C050, &qword_51E00);
    sub_50184();

    sub_51C0(v41, &qword_6B988, &qword_530B0);
  }

  sub_253C((v0 + 880));
  sub_EE90();

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_C6B8()
{
  type metadata accessor for GeneralEmergencyFlow();
  sub_ECD4(&qword_6C040, v0, type metadata accessor for GeneralEmergencyFlow);
  return sub_4FF14();
}

uint64_t sub_C744()
{
  v1 = v0;
  v2 = sub_2208(&qword_6B988, &qword_530B0);
  v3 = sub_72B0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1FE8(v0 + 7, v0[10]);
  memcpy(__dst, v6, sizeof(__dst));
  sub_DFD8(v0 + 2, __dst);
  v7 = sub_1FE8(v0 + 7, v0[10])[10];

  sub_279DC();

  sub_23BC((v1 + 2), v9);
  return sub_50874();
}

uint64_t *sub_C840()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_55C8((v0 + 12));
  sub_253C(v0 + 17);
  sub_253C(v0 + 22);
  return v0;
}

uint64_t sub_C880()
{
  sub_C840();

  return _swift_deallocClassInstance(v0, 217, 7);
}

uint64_t getEnumTagSinglePayload for GeneralEmergencyFlow.GeneralEmergencyFlowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xDC)
  {
    v2 = a2 + 36;
    if (a2 + 36 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 36;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 36;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0xC988);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 36;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 0x23)
  {
    v8 = v7 - 34;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for GeneralEmergencyFlow.GeneralEmergencyFlowState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 36;
  if (a3 + 36 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xDC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xDB)
  {
    v7 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0xCA70);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_CA98(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x23)
  {
    return v1 - 34;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_CAAC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 34;
  }

  return result;
}

uint64_t sub_CAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_CBA4;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_CBA4()
{
  sub_EF64();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  sub_EF2C();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_CCB8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_BA98();
}

uint64_t sub_CD54()
{
  sub_EF64();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_EF2C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_CE3C()
{
  type metadata accessor for GeneralEmergencyFlow();

  return sub_4FF64();
}

uint64_t sub_CE74(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  v6 = sub_2208(&qword_6B988, &qword_530B0);
  v7 = sub_72B0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v88 - v10;
  v12 = sub_50884();
  v13 = sub_569C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_5630();
  v18 = v17 - v16;
  v19 = sub_50B04();
  v93 = sub_8558(v19);
  v94 = v20;
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v93);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v88 - v26;
  v95 = v3;
  v96 = __src;
  sub_D6E4(__src, a2, v108);
  if (*(&v108[1] + 1))
  {
    sub_546C(v108, v107);
    v28 = sub_50AE4();
    sub_56AC();
    v30 = v93;
    v29 = v94;
    (v94[2])(v27, v28, v93);
    v31 = sub_50AF4();
    v32 = sub_50BD4();
    if (sub_EF4C(v32))
    {
      v33 = sub_5718();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "#GeneralEmergencyFlow preparing for confirmation", v33, 2u);
      sub_5674();
    }

    (v29[1])(v27, v30);
    sub_23BC(v107, v105);
    v34 = v95;
    sub_23BC(v95, v104);
    sub_23BC((v34 + 5), v103);
    sub_5260((v34 + 10), v101);
    sub_52BC(v105, v105[3]);
    v95 = &v88;
    sub_5620();
    v36 = *(v35 + 64);
    __chkstk_darwin(v37);
    sub_5630();
    v39 = sub_EF70(v38);
    v40(v39);
    sub_52BC(v103, v103[3]);
    v94 = &v88;
    sub_5620();
    v42 = *(v41 + 64);
    __chkstk_darwin(v43);
    sub_5630();
    v46 = (v45 - v44);
    (*(v47 + 16))(v45 - v44);
    memcpy(v109, v46, sizeof(v109));
    v48 = type metadata accessor for ConfirmationFlowConfigModel();
    v99 = v48;
    v100 = &off_66AB0;
    v49 = sub_530C(v98);
    sub_EC74(v27, v49, type metadata accessor for ConfirmationFlowConfigModel);
    v97[3] = &type metadata for EmergencyCATProvider;
    v97[4] = &off_66C88;
    v97[0] = swift_allocObject();
    memcpy((v97[0] + 16), v109, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v50 = swift_allocObject();
    sub_52BC(v98, v99);
    sub_5620();
    v52 = *(v51 + 64);
    __chkstk_darwin(v53);
    sub_5630();
    v55 = sub_EF70(v54);
    v56(v55);
    sub_52BC(v97, &type metadata for EmergencyCATProvider);
    sub_5620();
    v58 = *(v57 + 64);
    __chkstk_darwin(v59);
    sub_5630();
    v62 = (v61 - v60);
    (*(v63 + 16))(v61 - v60);
    memcpy(v106, v62, 0x70uLL);
    *(&v108[1] + 1) = v48;
    *&v108[2] = &off_66AB0;
    v64 = sub_530C(v108);
    sub_EC74(v27, v64, type metadata accessor for ConfirmationFlowConfigModel);
    *(v50 + 256) = &type metadata for EmergencyCATProvider;
    *(v50 + 264) = &off_66C88;
    v65 = swift_allocObject();
    *(v50 + 232) = v65;
    memcpy((v65 + 16), v106, 0x70uLL);
    v66 = v96;
    memcpy((v50 + 24), v96, 0x80uLL);
    sub_546C(v108, v50 + 152);
    sub_546C(v104, v50 + 192);
    v67 = v101[1];
    *(v50 + 272) = v101[0];
    *(v50 + 288) = v67;
    v68 = v102;
    *(v50 + 16) = 0;
    *(v50 + 312) = 0;
    *(v50 + 320) = 0;
    *(v50 + 304) = v68;
    sub_5484(v66, v108);
    sub_253C(v97);
    sub_253C(v98);
    sub_253C(v103);
    sub_253C(v105);
    *&v108[0] = v50;
    sub_ECD4(&qword_6BB48, 255, type metadata accessor for EmergencyConfirmationFlow);
    v69 = sub_4FF04();

    sub_253C(v107);
  }

  else
  {
    v89 = v18;
    v90 = v11;
    v91 = a2;
    v92 = v12;
    sub_51C0(v108, &qword_6C060, &qword_51E08);
    v70 = sub_50AE4();
    sub_56AC();
    v72 = v93;
    v71 = v94;
    (v94[2])(v25, v70, v93);
    v73 = sub_50AF4();
    v74 = sub_50BD4();
    if (sub_EF4C(v74))
    {
      *sub_5718() = 0;
      sub_EF90(&dword_0, v75, v76, "#GeneralEmergencyFlow preparing promptless output");
      sub_5674();
    }

    (v71[1])(v25, v72);
    memcpy(v106, __dst, sizeof(v106));
    nullsub_1(v106);
    memcpy(v108, v106, sizeof(v108));
    v77 = v95;
    v78 = v95[4];
    sub_1FE8(v95, v95[3]);
    v79 = *(v78 + 8);
    v80 = sub_5668();
    v81(v80);
    v82 = sub_1FE8(v77 + 5, v77[8]);
    memcpy(v109, v82, sizeof(v109));
    sub_E54C(v108, v107, v109);
    sub_253C(v107);
    sub_234C(v91, v90);
    sub_23BC(v77, v107);
    sub_50994();
    v83 = v89;
    sub_50874();
    sub_EDEC();
    sub_ECD4(v84, 255, v85);
    v69 = sub_4FF04();
    sub_EDD4();
    sub_EC1C(v83, v86);
  }

  return v69;
}

uint64_t sub_D6E4@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  v8 = sub_72B0(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = v3[4];
  sub_1FE8(v3, v3[3]);
  v14 = *(v13 + 8);
  v15 = sub_EE48();
  v16(v15);
  sub_1FE8(v28, v29);
  if (sub_500F4() & 1) == 0 || (sub_1FE8(v28, v29), sub_EE48(), (sub_500B4()) || (sub_1FE8(v28, v29), sub_EE48(), (sub_50044()))
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    sub_23BC(v3, v24);
    sub_23BC((v3 + 5), &v25);
    memcpy(v27, __dst, 0x80uLL);
    sub_EA24(v27);
    memcpy(v26, v27, sizeof(v26));
    sub_5484(__src, &v23);
    sub_EA30();
    v18 = sub_4FF04();
    sub_EA84(v24);
    v19 = sub_1FE8(v3 + 5, v3[8])[1];

    sub_250F0();

    v20 = type metadata accessor for ConfirmationFlowConfigModel();
    *(a3 + 24) = v20;
    *(a3 + 32) = &off_66AB0;
    v21 = sub_530C(a3);
    sub_234C(a2, v21);
    sub_EAD8(v12, v21 + v20[5]);
    *(v21 + v20[6]) = v18;
    *(v21 + v20[7]) = 2;
    *(v21 + v20[8]) = 0;
    *(v21 + v20[9]) = 1;
  }

  return sub_253C(v28);
}

uint64_t sub_D93C(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_50A24();
  v27[3] = v7;
  v27[4] = &protocol witness table for EmergencyDialogAct;
  v8 = sub_530C(v27);
  sub_EC74(a1, v8, &type metadata accessor for EmergencyDialogAct);
  v9 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v6, v9, v2);
  sub_23BC(v27, v26);
  v10 = sub_50AF4();
  v11 = sub_50BD4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    sub_23BC(v26, v24);
    sub_2208(&qword_6C080, &qword_51E10);
    v15 = sub_50B64();
    v17 = v16;
    sub_253C(v26);
    v18 = sub_4DE68(v15, v17, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "Converting EmergencyDialogAct to GeneralEmergencyIntent: %s", v13, 0xCu);
    sub_253C(v14);

    v7 = v23;
  }

  else
  {

    sub_253C(v26);
  }

  (*(v3 + 8))(v6, v2);
  v19 = *(v8 + *(v7 + 24));
  v20 = sub_50924();
  sub_253C(v27);
  return v20;
}

uint64_t sub_DBCC(uint64_t a1)
{
  v2 = sub_50B04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmergencyNLIntent();
  v32 = v7;
  v33 = sub_ECD4(&qword_6C088, 255, type metadata accessor for EmergencyNLIntent);
  v8 = sub_530C(v31);
  sub_EC74(a1, v8, type metadata accessor for EmergencyNLIntent);
  v9 = sub_50AE4();
  swift_beginAccess();
  (*(v3 + 16))(v6, v9, v2);
  sub_23BC(v31, v29);
  v10 = sub_50AF4();
  v11 = sub_50BD4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27[1] = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    v15 = v30;
    v16 = sub_1FE8(v29, v30);
    v27[0] = v27;
    v17 = *(*(v15 - 8) + 64);
    __chkstk_darwin(v16);
    v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    v21 = sub_3DBF4();
    v23 = v22;
    sub_EC1C(v19, type metadata accessor for EmergencyNLIntent);
    sub_253C(v29);
    v24 = sub_4DE68(v21, v23, &v28);

    *(v13 + 4) = v24;
    _os_log_impl(&dword_0, v10, v11, "Converting EmergencyNLIntent: %s", v13, 0xCu);
    sub_253C(v14);

    (*(v3 + 8))(v6, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
    sub_253C(v29);
  }

  sub_1FE8(v31, v32);
  if (qword_6B5F8 != -1)
  {
    swift_once();
  }

  sub_ECD4(&qword_6BD68, 255, type metadata accessor for EmergencyNLIntent);
  sub_50524();
  v25 = sub_50924();
  sub_253C(v31);
  return v25;
}

_OWORD *sub_DFD8(void *a1, const void *a2)
{
  v39 = sub_50B04();
  v38 = *(v39 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin(v39);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208(&unk_6D680, &qword_515B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_2208(&qword_6B988, &qword_530B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v42 = &type metadata for EmergencyCATProvider;
  v43 = &off_66C88;
  v41[0] = swift_allocObject();
  memcpy((v41[0] + 16), a2, 0x70uLL);
  v18 = a1[3];
  v17 = a1[4];
  sub_1FE8(a1, v18);
  v19 = *(v17 + 8);
  sub_22F0(a2, v40);
  v19(v40, v18, v17);
  sub_1FE8(v40, v40[3]);
  if ((sub_50094() & 1) == 0)
  {
LABEL_9:
    v28 = &_swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v20 = sub_1FE8(v41, &type metadata for EmergencyCATProvider)[1];

  sub_24C9C();

  v21 = sub_50D64();
  v23 = v22;
  sub_51C0(v16, &qword_6B988, &qword_530B0);
  if (!v23)
  {
LABEL_6:
    v29 = sub_50AE4();
    swift_beginAccess();
    v30 = v38;
    v31 = v37;
    v32 = v39;
    (*(v38 + 16))(v37, v29, v39);
    v33 = sub_50AF4();
    v34 = sub_50BD4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "#GeneralEmergencyFlow Failed to execute goToWebsiteButtonLabel CATs", v35, 2u);
    }

    (*(v30 + 8))(v31, v32);
    goto LABEL_9;
  }

  v24 = sub_1FE8(v41, v42)[10];

  sub_279FC();

  sub_50D64();
  v26 = v25;
  sub_51C0(v14, &qword_6B988, &qword_530B0);
  if (!v26)
  {

    goto LABEL_6;
  }

  sub_E4D8();
  sub_4FD54();

  v27 = sub_2B3D0(v21, v23, v9);
  sub_2208(&unk_6D0C0, &qword_53500);
  v28 = swift_allocObject();
  v28[1] = xmmword_51790;
  *(v28 + 4) = v27;
LABEL_10:
  sub_253C(v40);
  sub_253C(v41);
  return v28;
}

uint64_t sub_E438()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

unint64_t sub_E4D8()
{
  result = qword_6D690;
  if (!qword_6D690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_6D690);
  }

  return result;
}

uint64_t sub_E51C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_E534(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *sub_E54C(const void *a1, void *a2, const void *a3)
{
  v45 = a1;
  v5 = sub_50B04();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  __chkstk_darwin(v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2208(&qword_6B988, &qword_530B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v48[3] = &type metadata for EmergencyCATProvider;
  v48[4] = &off_66C88;
  v48[0] = swift_allocObject();
  memcpy((v48[0] + 16), a3, 0x70uLL);
  v17 = a2[4];
  sub_1FE8(a2, a2[3]);
  sub_22F0(a3, __dst);
  v18 = sub_500A4();
  v19 = sub_1FE8(v48, &type metadata for EmergencyCATProvider);
  if (v18)
  {
    v20 = v19[1];

    sub_24C1C();
  }

  else
  {
    v21 = v19[10];

    sub_278F8();
  }

  v22 = sub_50D64();
  v24 = v46;
  if (v23)
  {
    v25 = v22;
    v26 = v23;
    memcpy(v49, v45, sizeof(v49));
    if (sub_E51C(v49) == 1)
    {
      sub_EB48(v47);
    }

    else
    {
      memcpy(__dst, v49, 0x80uLL);
      sub_EA24(__dst);
      memcpy(v47, __dst, 0x81uLL);
    }

    memcpy(__dst, v47, 0x81uLL);
    v39 = sub_37370(__dst, a2, v25, v26);
  }

  else
  {
    v27 = sub_50AE4();
    swift_beginAccess();
    v28 = v43;
    v29 = v44;
    (*(v43 + 16))(v24, v27, v44);
    sub_234C(v16, v14);
    v30 = sub_50AF4();
    v31 = sub_50BD4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47[0] = v33;
      *v32 = 136315138;
      sub_234C(v14, v42);
      v34 = v24;
      v35 = sub_50B64();
      v37 = v36;
      sub_51C0(v14, &qword_6B988, &qword_530B0);
      v38 = sub_4DE68(v35, v37, v47);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_0, v30, v31, "#GeneralEmergencyFlow Failed to execute CAT: %s", v32, 0xCu);
      sub_253C(v33);

      (*(v43 + 8))(v34, v44);
    }

    else
    {

      sub_51C0(v14, &qword_6B988, &qword_530B0);
      (*(v28 + 8))(v24, v29);
    }

    v39 = &_swiftEmptyArrayStorage;
  }

  sub_51C0(v16, &qword_6B988, &qword_530B0);
  sub_253C(v48);
  return v39;
}

unint64_t sub_E9D0()
{
  result = qword_6C058;
  if (!qword_6C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C058);
  }

  return result;
}

unint64_t sub_EA30()
{
  result = qword_6C068;
  if (!qword_6C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C068);
  }

  return result;
}

uint64_t sub_EAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6B988, &qword_530B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_EB48(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 2;
  return result;
}

unint64_t sub_EB68()
{
  result = qword_6C070;
  if (!qword_6C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C070);
  }

  return result;
}

uint64_t sub_EBBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_569C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_EC1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_EC74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_569C(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_ECD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_ED24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_ED64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_EE58()
{
}

uint64_t sub_EE74()
{

  return swift_beginAccess();
}

uint64_t sub_EE90()
{
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[148];
  v6 = v0[147];
  v7 = v0[144];
  v8 = v0[143];
  v9 = v0[140];
  v10 = v0[138];
  v11 = v0[137];
}

void sub_EED4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_EF00(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL sub_EF4C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_EF90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_EFB0()
{

  return swift_slowAlloc();
}

uint64_t sub_EFC8()
{

  return swift_slowAlloc();
}

void sub_EFE0()
{
  sub_13C8C();
  v287 = v1;
  v3 = v2;
  v313 = v4;
  v305 = sub_50324();
  v5 = sub_8558(v305);
  v304 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v9);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v10);
  sub_13C5C();
  sub_EE14(v11);
  v302 = type metadata accessor for EmergencyNLIntent();
  v12 = *(*(v302 - 8) + 64);
  __chkstk_darwin(v302);
  sub_5630();
  sub_EE14(v14 - v13);
  v321 = sub_50654();
  v15 = sub_8558(v321);
  v312 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v19);
  sub_13C5C();
  v320 = v20;
  sub_13B48();
  v21 = sub_503A4();
  v22 = sub_72B0(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_5630();
  sub_EE14(v26 - v25);
  v290 = sub_50A24();
  v27 = *(*(v290 - 8) + 64);
  __chkstk_darwin(v290);
  sub_5630();
  sub_EE14(v29 - v28);
  v298 = sub_50354();
  v30 = sub_8558(v298);
  v297 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v34);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v35);
  sub_13C5C();
  sub_EE14(v36);
  v316 = sub_50334();
  v37 = sub_8558(v316);
  v315 = v38;
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v37);
  v43 = v284 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  sub_13C5C();
  sub_EE14(v44);
  v45 = sub_502E4();
  v46 = sub_8558(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  __chkstk_darwin(v46);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v51);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v52);
  v53 = sub_13D70();
  v54 = sub_8558(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  __chkstk_darwin(v54);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v59);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v60);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v61);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v62);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v63);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v64);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v65);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v66);
  v68 = v284 - v67;
  v69 = sub_50AE4();
  sub_56AC();
  v322 = v56;
  v70 = *(v56 + 16);
  v318 = v56 + 16;
  v319 = v69;
  v317 = v70;
  v70(v68, v69, v53);
  v71 = *(v48 + 16);
  v72 = sub_13CB0();
  v293 = v73;
  v292 = v74;
  v74(v72);
  v75 = sub_50AF4();
  v76 = sub_50BD4();
  v77 = os_log_type_enabled(v75, v76);
  v307 = v3;
  v296 = v45;
  v295 = v48;
  if (v77)
  {
    v78 = sub_EFB0();
    v79 = sub_EFC8();
    v284[0] = v43;
    v80 = v79;
    *&v324 = v79;
    *v78 = 136315138;
    sub_13AA8();
    sub_12AF0(v81, v82);
    v83 = sub_50CD4();
    v84 = v48;
    v85 = v53;
    v87 = v86;
    v294 = *(v84 + 8);
    v294(v0, v45);
    v88 = sub_4DE68(v83, v87, &v324);
    v53 = v85;

    *(v78 + 4) = v88;
    _os_log_impl(&dword_0, v75, v76, "getConfirmationFromInput input: %s", v78, 0xCu);
    sub_253C(v80);
    sub_5674();
    sub_5674();
  }

  else
  {

    v294 = *(v48 + 8);
    v294(v0, v45);
  }

  v89 = *(v322 + 8);
  v89(v68, v53);
  v90 = v314;
  sub_502D4();
  v91 = v315;
  v92 = v316;
  v93 = (*(v315 + 11))(v90, v316);
  v94 = v321;
  v95 = v311;
  if (v93 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v96 = sub_13B24();
    v97(v96);
    v98 = v312;
    (*(v312 + 32))(v320, v90, v94);
    sub_13AE8();
    v99 = v309;
    sub_13B78();
    v100();
    v101 = *(v98 + 16);
    v102 = v301;
    sub_13BE0();
    v315 = v103;
    v103();
    v104 = sub_50AF4();
    v105 = sub_50BD4();
    if (sub_13C1C(v105))
    {
      v106 = sub_EFB0();
      v107 = sub_EFC8();
      *&v324 = v107;
      *v106 = 136315138;
      sub_12AF0(&qword_6C1B0, &type metadata accessor for NLIntent);
      v108 = sub_50CD4();
      v109 = v102;
      v110 = v53;
      v112 = v111;
      v316 = *(v98 + 8);
      v316(v109, v321);
      v113 = sub_4DE68(v108, v112, &v324);
      v53 = v110;
      v94 = v321;
      v114 = v310;

      *(v106 + 4) = v113;
      _os_log_impl(&dword_0, v104, v105, "getConfirmationFromInput NLv3IntentOnly nlIntent: %s", v106, 0xCu);
      sub_253C(v107);
      sub_5674();
      sub_5674();

      v115 = v114;
      v114(v309, v53);
    }

    else
    {

      v136 = *(v98 + 8);
      v137 = sub_13D04();
      v316 = v138;
      v138(v137);
      sub_13B6C();
      v139 = v99;
      v115 = v310;
      v310(v139, v53);
    }

    v140 = v308;
    (v315)(v306, v320, v94);
    if (qword_6B600 != -1)
    {
      swift_once();
    }

    sub_12AF0(&qword_6BD68, type metadata accessor for EmergencyNLIntent);
    sub_13BD4();
    sub_50524();
    if (v324 == 2)
    {
      if (qword_6B5F0 != -1)
      {
        swift_once();
      }

      sub_50524();
      v141 = v324;
      switch(v324)
      {
        case 1:
          goto LABEL_77;
        case 2:
          sub_13C0C();
          goto LABEL_77;
        case 3:
          sub_13BEC();
          goto LABEL_77;
        case 4:
          sub_13BFC();
          goto LABEL_77;
        case 5:
          sub_13BC0();
          goto LABEL_77;
        case 6:
          sub_13BAC();
          goto LABEL_77;
        case 7:
          sub_13B88();
          sub_13CBC();
LABEL_77:
          v238 = sub_13D90();

          if (v238)
          {
            goto LABEL_80;
          }

          sub_13C0C();
          switch(v141)
          {
            case 2:
              break;
            case 3:
              sub_13BEC();
              break;
            case 4:
              sub_13BFC();
              break;
            case 5:
              sub_13BC0();
              break;
            case 6:
              sub_13BAC();
              break;
            case 7:
              sub_13B88();
              sub_13CBC();
              break;
            default:
              goto LABEL_79;
          }

          v250 = sub_50CE4();

          sub_13A80();
          sub_13B14();
          v251 = sub_13B9C();
          v252(v251);
          if ((v250 & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_82;
        case 8:
          sub_13A80();
          sub_13B14();
          v248 = sub_13B9C();
          v249(v248);
          goto LABEL_97;
        default:
LABEL_79:

LABEL_80:
          sub_13A80();
          sub_13B14();
          goto LABEL_81;
      }
    }

    if (v324)
    {
      v162 = sub_13C34();

      sub_13A80();
      v163 = sub_13B9C();
      v164(v163);
      goto LABEL_23;
    }

    sub_13A80();
LABEL_81:
    v239 = sub_13B9C();
    v240(v239);
    goto LABEL_82;
  }

  if (v93 == enum case for Parse.directInvocation(_:))
  {
    v116 = sub_13B24();
    v117(v116);
    v118 = v304;
    v119 = v305;
    (*(v304 + 32))(v303, v90, v305);
    sub_13AE8();
    v120 = v299;
    sub_13B78();
    v121();
    v122 = *(v118 + 16);
    sub_13BE0();
    v122();
    v123 = sub_50AF4();
    v124 = sub_50BD4();
    if (sub_13C1C(v124))
    {
      v125 = sub_EFB0();
      v321 = v53;
      v126 = v125;
      v127 = sub_EFC8();
      *&v324 = v127;
      *v126 = 136315138;
      (v122)(v289, v95, v119);
      v128 = sub_50B64();
      v130 = v129;
      v131 = *(v118 + 8);
      v132 = sub_13C68();
      v131(v132);
      v133 = sub_4DE68(v128, v130, &v324);

      *(v126 + 4) = v133;
      _os_log_impl(&dword_0, v123, v124, "getConfirmationFromInput directInvocation: %s", v126, 0xCu);
      sub_253C(v127);
      sub_5674();
      sub_5674();

      v134 = v299;
      v135 = v321;
    }

    else
    {

      v131 = *(v118 + 8);
      v166 = sub_13C68();
      v131(v166);
      sub_13B6C();
      v134 = v120;
      v135 = v53;
    }

    v115 = v310;
    (v310)(v134);
    v167 = v303;
    if (sub_50304() == 0xD000000000000035 && 0x80000000000551D0 == v168)
    {
    }

    else
    {
      v170 = sub_50CE4();

      if ((v170 & 1) == 0)
      {
        if (sub_50304() != 0xD000000000000034 || 0x8000000000055210 != v171)
        {
          v173 = sub_50CE4();

          sub_13B3C(v329);
          (v131)(v167, v305);
          v53 = v135;
          v140 = v308;
          if ((v173 & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_82;
        }

        sub_13B3C(v329);
        v231 = v167;
        v232 = v305;
LABEL_88:
        (v131)(v231, v232);
        goto LABEL_82;
      }
    }

    v189 = sub_50314();
    if (v189)
    {
      v190 = v189;
      v191 = sub_50A84();
      sub_2B7EC(v191, v192, v190, &v324);

      if (*(&v325 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v327[0] == 0x656D7269666E6F63 && v327[1] == 0xE900000000000064)
          {

            v231 = sub_13BD4();
            goto LABEL_88;
          }

          v194 = sub_50CE4();

          v195 = sub_13BD4();
          v131(v195);
          if (v194)
          {
            goto LABEL_82;
          }

LABEL_54:
          v165 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_83:
          v241 = *v165;
          v242 = sub_50284();
          sub_569C(v242);
          (*(v243 + 104))(v313, v241, v242);
          sub_13D50();
          v247 = v242;
LABEL_84:
          sub_28E0(v244, v245, v246, v247);
          goto LABEL_85;
        }

LABEL_53:
        v196 = sub_13BD4();
        v131(v196);
        goto LABEL_54;
      }
    }

    else
    {
      v324 = 0u;
      v325 = 0u;
    }

    sub_51C0(&v324, &qword_6C1A8, &qword_51FE0);
    goto LABEL_53;
  }

  if (v93 == enum case for Parse.uso(_:))
  {
    v142 = sub_13B24();
    v143(v142);
    v144 = v297;
    v145 = v298;
    (*(v297 + 32))(v300, v90, v298);
    sub_13AE8();
    sub_13B78();
    v146();
    v147 = *(v144 + 16);
    v148 = v288;
    sub_13BE0();
    v147();
    v149 = sub_50AF4();
    v150 = sub_50BD4();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = sub_EFB0();
      v321 = v53;
      v152 = v151;
      v153 = sub_EFC8();
      *&v324 = v153;
      *v152 = 136315138;
      (v147)(v286, v148, v145);
      sub_13D04();
      v154 = sub_50B64();
      v156 = v155;
      v157 = *(v144 + 8);
      v158 = sub_13C68();
      v157(v158);
      v159 = sub_4DE68(v154, v156, &v324);
      v160 = v157;

      *(v152 + 4) = v159;
      _os_log_impl(&dword_0, v149, v150, "getConfirmationFromInput usoParse: %s", v152, 0xCu);
      sub_253C(v153);
      sub_5674();
      sub_5674();

      v161 = v321;
    }

    else
    {

      v160 = *(v144 + 8);
      v197 = sub_13C68();
      v160(v197);
      sub_13B6C();
      v161 = v53;
    }

    sub_13D44();
    v198();
    v199 = v290;
    sub_50344();
    *(&v325 + 1) = &type metadata for EmergencyFeatureFlagsKey;
    v326 = sub_EB68();
    LOBYTE(v324) = 2;
    sub_50374();
    sub_253C(&v324);
    v200 = v291;
    sub_50A14();
    v201 = *(v200 + *(v199 + 36));
    if (v201 == 2)
    {
      v202 = sub_1FE8(v287, v287[3]);
      v203 = type metadata accessor for ConfirmationFlowConfigModel();
      if (*(v202 + *(v203 + 32)) == 1 && (sub_42F90() & 1) != 0)
      {
        sub_13AE8();
        v204 = v285;
        v317(v285, v203, v161);
        v205 = sub_50AF4();
        v206 = sub_50BD4();
        v207 = sub_13C1C(v206);
        v208 = v310;
        if (v207)
        {
          *sub_5718() = 0;
          sub_13CA4();
          _os_log_impl(v209, v210, v211, v212, v213, 2u);
          sub_5674();
        }

        sub_13B6C();
        v208(v204, v161);
      }

      else
      {
        v229 = sub_1FE8(v287, v287[3]);
        v115 = v310;
        if (*(v229 + *(v203 + 32)))
        {
LABEL_67:
          sub_13AC0();
          sub_13B3C(&v326);
          v230 = sub_13CF8();
          (v160)(v230, v298);
          v53 = v161;
          v140 = v308;
LABEL_97:
          sub_13AE8();
          sub_13B78();
          v253();
          sub_13D10();
          v254();
          v255 = v140;
          v256 = sub_50AF4();
          v257 = sub_50BE4();
          if (sub_13C1C(v257))
          {
            v258 = sub_EFB0();
            v259 = sub_EFC8();
            v327[0] = v259;
            *v258 = 136315138;
            sub_13AA8();
            sub_12AF0(v260, v261);
            v262 = sub_50CD4();
            v264 = v263;
            sub_13B3C(&v325);
            v265 = sub_13D04();
            (v294)(v265);
            v266 = sub_4DE68(v262, v264, v327);

            *(v258 + 4) = v266;
            sub_13CA4();
            _os_log_impl(v267, v268, v269, v270, v271, 0xCu);
            sub_253C(v259);
            sub_5674();
            sub_5674();

            sub_13B6C();
            v272 = v308;
          }

          else
          {

            sub_13B3C(&v325);
            v273 = sub_13D04();
            (v294)(v273);
            sub_13B6C();
            v272 = v255;
          }

          v115(v272, v53);
          sub_50284();
          v244 = sub_13CE4();
          goto LABEL_84;
        }

        switch(*(v200 + *(v199 + 20)))
        {
          case 1:
            goto LABEL_107;
          case 2:
            sub_13C0C();
            goto LABEL_107;
          case 3:
            sub_13BEC();
            goto LABEL_107;
          case 4:
            sub_13BFC();
            goto LABEL_107;
          case 5:
            sub_13BC0();
            goto LABEL_107;
          case 6:
            sub_13BAC();
            goto LABEL_107;
          case 7:
            sub_13B88();
LABEL_107:
            v274 = sub_13D90();

            if (v274)
            {
              goto LABEL_108;
            }

            goto LABEL_67;
          case 8:
            goto LABEL_67;
          default:

LABEL_108:
            sub_13AE8();
            v275 = v284[1];
            v276 = sub_13CB0();
            (v317)(v276);
            v277 = sub_50AF4();
            v278 = sub_50BD4();
            if (sub_13C1C(v278))
            {
              *sub_5718() = 0;
              sub_13CA4();
              _os_log_impl(v279, v280, v281, v282, v283, 2u);
              sub_5674();
            }

            sub_13B6C();
            v115(v275, v161);
            break;
        }
      }

      sub_13AC0();
      sub_13B3C(&v326);
      v236 = sub_13CF8();
      v237 = v298;
    }

    else
    {
      sub_13AE8();
      v220 = sub_13CB0();
      (v317)(v220);
      v221 = sub_50AF4();
      v222 = sub_50BD4();
      if (sub_13C1C(v222))
      {
        v223 = sub_EFB0();
        v224 = sub_EFC8();
        v327[0] = v224;
        *v223 = 136315138;
        v323 = v201 & 1;
        v225 = sub_50B64();
        v227 = v160;
        v228 = sub_4DE68(v225, v226, v327);

        *(v223 + 4) = v228;
        v160 = v227;
        _os_log_impl(&dword_0, v221, v222, "Found confirmation: %s", v223, 0xCu);
        sub_253C(v224);
        sub_5674();
        sub_5674();
      }

      sub_13B6C();
      sub_13D44();
      v233();
      v234 = v298;
      if (v201)
      {
        v162 = sub_13C34();

        sub_13AC0();
        v235 = sub_13CF8();
        (v160)(v235, v234);
LABEL_23:
        v165 = &enum case for ConfirmationResponse.rejected(_:);
        if (v162)
        {
          v165 = &enum case for ConfirmationResponse.confirmed(_:);
        }

        goto LABEL_83;
      }

      sub_13AC0();
      v236 = sub_13CF8();
      v237 = v234;
    }

    (v160)(v236, v237);
LABEL_82:
    v165 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_83;
  }

  sub_56AC();
  v174 = sub_13BD4();
  (v317)(v174);
  sub_13D10();
  v175();
  v176 = sub_50AF4();
  v177 = v53;
  v178 = sub_50BE4();
  if (sub_13C1C(v178))
  {
    v179 = sub_EFB0();
    v180 = sub_EFC8();
    v328 = v180;
    *v179 = 136315138;
    v321 = v177;
    sub_502D4();
    v181 = sub_50B64();
    v183 = v182;
    sub_13B3C(&v325);
    v184 = sub_13CD0();
    v185(v184);
    v186 = sub_4DE68(v181, v183, &v328);
    v92 = v316;

    *(v179 + 4) = v186;
    _os_log_impl(&dword_0, v176, v178, "Failed to get confirmation, not a supported parse: %s", v179, 0xCu);
    sub_253C(v180);
    v90 = v314;
    sub_5674();
    v91 = v315;
    sub_5674();

    v187 = v321;
    v188 = v310;
  }

  else
  {

    sub_13B3C(&v325);
    v214 = sub_13CD0();
    v215(v214);
    sub_13B6C();
    v188 = v310;
    v187 = v177;
  }

  v89(v188, v187);
  sub_50284();
  v216 = sub_13CE4();
  sub_28E0(v216, v217, v218, v219);
  (*(v91 + 1))(v90, v92);
LABEL_85:
  sub_8A94();
}

void sub_10B3C()
{
  sub_13C8C();
  v31 = v1;
  v2 = sub_2208(&qword_6BB20, &unk_51FB0);
  sub_72B0(v2);
  v4 = *(v3 + 64);
  sub_72A4();
  __chkstk_darwin(v5);
  sub_13D24();
  v6 = sub_50B04();
  v7 = sub_8558(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_EE34();
  v30 = v12;
  sub_13B08();
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = sub_50AE4();
  sub_56AC();
  v29 = *(v9 + 16);
  v29(v15, v16, v6);
  v17 = sub_50AF4();
  v18 = sub_50BD4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_5718();
    v28 = v9;
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "EmergencyPromptForConfirmationFlowStrategy actionForInput", v19, 2u);
    v9 = v28;
    sub_5674();
  }

  v20 = *(v9 + 8);
  v21 = sub_13BD4();
  v20(v21);
  sub_EFE0();
  v22 = sub_50284();
  v23 = sub_513C(v0, 1, v22);
  sub_51C0(v0, &qword_6BB20, &unk_51FB0);
  if (v23 == 1)
  {
    sub_56AC();
    v24 = v30;
    v29(v30, v16, v6);
    v25 = sub_50AF4();
    v26 = sub_50BD4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_5718();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "No confirmation response found in input, ignoring.", v27, 2u);
      sub_5674();
    }

    (v20)(v24, v6);
    sub_50124();
  }

  else
  {
    sub_50114();
  }

  sub_8A94();
}

void sub_10DF4()
{
  sub_13C8C();
  v1 = v0;
  v97 = v3;
  v98 = v2;
  v95 = v4;
  v92 = sub_2208(&qword_6B988, &qword_530B0);
  sub_569C(v92);
  v6 = *(v5 + 64);
  sub_72A4();
  __chkstk_darwin(v7);
  sub_13D38();
  v101 = v8;
  sub_13B48();
  v100 = sub_50254();
  v9 = sub_8558(v100);
  v102 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_EE34();
  v91 = v13;
  sub_13B08();
  __chkstk_darwin(v14);
  v16 = v90 - v15;
  v17 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v17);
  v19 = *(v18 + 64);
  sub_72A4();
  __chkstk_darwin(v20);
  v22 = v90 - v21;
  v93 = sub_50104();
  v23 = sub_8558(v93);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_5630();
  v94 = v29 - v28;
  sub_13B48();
  v30 = sub_50B04();
  v31 = sub_8558(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  sub_EE34();
  v96 = v36;
  sub_13B08();
  __chkstk_darwin(v37);
  sub_EEF4();
  v99 = v38;
  sub_13B08();
  __chkstk_darwin(v39);
  v41 = v90 - v40;
  v42 = sub_50AE4();
  sub_56AC();
  v43 = v33;
  v44 = *(v33 + 16);
  v107 = v33 + 16;
  v108 = v42;
  v106 = v44;
  (v44)(v41, v42, v30);
  v45 = sub_50AF4();
  v46 = sub_50BD4();
  v47 = os_log_type_enabled(v45, v46);
  v103 = v30;
  if (v47)
  {
    v48 = sub_5718();
    *v48 = 0;
    _os_log_impl(&dword_0, v45, v46, "EmergencyPromptForConfirmationFlowStrategy makePromptForConfirmation", v48, 2u);
    v30 = v103;
    sub_5674();
  }

  v109 = *(v43 + 8);
  v105 = v43 + 8;
  v109(v41, v30);
  v49 = v1[23];
  v104 = v16;
  if (v49)
  {
    v90[1] = v1[22];

    sub_4FFE4();
    v90[2] = v112[4];
    v90[0] = sub_1FE8(v112, v112[3]);
    sub_50034();
    (*(v25 + 104))(v94, enum case for ActivityType.confirmation(_:), v93);
    v50 = enum case for SiriKitReliabilityCodes.normal(_:);
    v51 = sub_50014();
    sub_569C(v51);
    v16 = v104;
    (*(v52 + 104))(v22, v50, v51);
    sub_13D50();
    sub_28E0(v53, v54, v55, v51);
    sub_13B54();
    sub_50024();
    v30 = v103;
    sub_4FFF4();

    sub_253C(v112);
  }

  v56 = sub_13DB0();
  v57 = type metadata accessor for ConfirmationFlowConfigModel();
  v58 = *(v56 + v57[8]);
  v59 = sub_1FE8(v1 + 2, v1[5]);
  sub_5730(v58, *(v59 + v57[9]), *(v95 + 48), *(v95 + 56));
  sub_50994();
  sub_501D4();
  sub_56AC();
  v60 = v99;
  sub_13BE0();
  v106();
  v61 = sub_50AF4();
  v62 = sub_50BD4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = sub_EFB0();
    v64 = sub_EFC8();
    v112[0] = v64;
    *v63 = 136315138;
    sub_56AC();
    (*(v102 + 16))(v91, v16, v100);
    v65 = sub_50B64();
    v67 = sub_4DE68(v65, v66, v112);
    v30 = v103;

    *(v63 + 4) = v67;
    _os_log_impl(&dword_0, v61, v62, "EmergencyPromptForConfirmationFlowStrategy preparing contextUpdate: %s", v63, 0xCu);
    sub_253C(v64);
    sub_5674();
    sub_5674();

    v109(v99, v30);
  }

  else
  {

    v109(v60, v30);
  }

  v68 = v101;
  v69 = v1[10];
  v70 = v1[11];
  sub_1FE8(v1 + 7, v69);
  (*(v70 + 8))(v111, v69, v70);
  v71 = *(sub_13DB0() + v57[7]);
  v72 = sub_1FE8(v1 + 12, v1[15]);
  memcpy(v112, v72, 0x70uLL);
  sub_1381C(v71);
  v73 = sub_134B0(v111, v112, v71);
  sub_1382C(v71);
  sub_56AC();
  v74 = v96;
  sub_13BE0();
  v106();

  v75 = sub_50AF4();
  v76 = sub_50BD4();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = sub_EFB0();
    v78 = sub_EFC8();
    v110[0] = v78;
    *v77 = 136315138;
    v79 = sub_13DB0();
    sub_12A88(v79, v68, &qword_6B988, &qword_530B0);
    v80 = sub_50B64();
    v82 = sub_4DE68(v80, v81, v110);
    v108 = v73;
    v83 = v30;
    v84 = v82;
    v68 = v101;

    *(v77 + 4) = v84;
    _os_log_impl(&dword_0, v75, v76, "EmergencyPromptForConfirmationFlowStrategy prompting with promptForConfirmationTemplatingResult: %s", v77, 0xCu);
    sub_253C(v78);
    sub_5674();
    sub_5674();

    v85 = v74;
    v86 = v83;
    v73 = v108;
  }

  else
  {

    v85 = sub_13C68();
  }

  v109(v85, v86);
  v87 = sub_13DB0();
  v88 = sub_12A88(v87, v68, &qword_6B988, &qword_530B0);
  __chkstk_darwin(v88);
  v90[-4] = v111;
  v90[-3] = v73;
  v90[-2] = v1;
  v89 = v104;
  v90[-1] = v104;
  sub_11834(sub_1383C, v110);

  sub_51C0(v68, &qword_6B988, &qword_530B0);
  v98(v110);
  sub_51C0(v110, &qword_6C188, &qword_51FC8);
  sub_253C(v111);
  (*(v102 + 8))(v89, v100);
  sub_8A94();
}

uint64_t sub_11650@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = sub_2208(&qword_6C1B8, &qword_51FE8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  v12 = a1[4];
  sub_1FE8(a1, a1[3]);
  sub_50074();
  v13 = sub_1FE8((a2 + 16), *(a2 + 40));
  LOBYTE(a2) = *(v13 + *(type metadata accessor for ConfirmationFlowConfigModel() + 36));
  swift_beginAccess();
  v14 = sub_50254();
  (*(*(v14 - 8) + 16))(v11, a3, v14);
  sub_28E0(v11, 0, 1, v14);
  v15 = sub_50364();
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  a4[3] = v15;
  a4[4] = &protocol witness table for AceOutput;
  sub_530C(a4);
  sub_50144();
  sub_51C0(v17, &qword_6C190, &qword_51FD0);
  return sub_51C0(v11, &qword_6C1B8, &qword_51FE8);
}

uint64_t sub_11834@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v4 = sub_50264();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208(&qword_6B988, &qword_530B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v15 - v11);
  sub_12A88(v2, &v15 - v11, &qword_6B988, &qword_530B0);
  result = swift_getEnumCaseMultiPayload();
  v14 = result;
  if (result == 1)
  {
    *a2 = *v12;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v16(v8);
    result = (*(v5 + 8))(v8, v4);
  }

  *(a2 + 40) = v14 == 1;
  return result;
}

void sub_119EC()
{
  sub_13C8C();
  v2 = v0;
  v135 = v4;
  v136 = v3;
  v6 = v5;
  v133 = sub_2208(&qword_6C198, &qword_51FD8);
  sub_569C(v133);
  v8 = *(v7 + 64);
  sub_72A4();
  __chkstk_darwin(v9);
  sub_13D38();
  v134 = v10;
  v11 = sub_2208(&qword_6BB20, &unk_51FB0);
  sub_72B0(v11);
  v13 = *(v12 + 64);
  sub_72A4();
  __chkstk_darwin(v14);
  sub_13D38();
  v127 = v15;
  sub_13B48();
  v129 = sub_50284();
  v16 = sub_8558(v129);
  v131 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_EE34();
  v130 = v20;
  sub_13B08();
  __chkstk_darwin(v21);
  sub_13C5C();
  v132 = v22;
  sub_13B48();
  v23 = sub_502E4();
  v24 = sub_8558(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v29);
  v30 = sub_13D70();
  v31 = sub_8558(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  __chkstk_darwin(v31);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v36);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v37);
  v39 = v116 - v38;
  v40 = sub_50AE4();
  sub_56AC();
  v41 = *(v33 + 16);
  v125 = v33 + 16;
  v126 = v40;
  v124 = v41;
  (v41)(v39, v40, v30);
  v42 = *(v26 + 16);
  v128 = v6;
  v118 = v26 + 16;
  v117 = v42;
  v42(v1, v6, v23);
  v43 = sub_50AF4();
  v44 = sub_50BD4();
  v45 = os_log_type_enabled(v43, v44);
  v120 = v26;
  if (v45)
  {
    v46 = sub_EFB0();
    v116[1] = v2;
    v47 = v46;
    v48 = sub_EFC8();
    v121 = v30;
    v116[0] = v48;
    v139 = v48;
    *v47 = 136315138;
    sub_13AA8();
    sub_12AF0(v49, v50);
    v51 = sub_50CD4();
    v52 = v33;
    v54 = v53;
    v55 = sub_13C74();
    v56(v55);
    v57 = sub_4DE68(v51, v54, &v139);
    v33 = v52;
    v58 = v129;

    *(v47 + 4) = v57;
    _os_log_impl(&dword_0, v43, v44, "EmergencyPromptForConfirmationFlowStrategy parseConfirmationResponse. Input: %s", v47, 0xCu);
    sub_253C(v116[0]);
    v30 = v121;
    sub_5674();
    sub_5674();

    v59 = sub_13D5C();
    v44(v59);
  }

  else
  {

    v60 = sub_13C74();
    v61(v60);
    v62 = sub_13D5C();
    v44(v62);
    v58 = v129;
  }

  v63 = v127;
  v64 = v128;
  sub_EFE0();
  v65 = sub_513C(v63, 1, v58);
  v66 = v130;
  v67 = v131;
  if (v65 == 1)
  {
    v129 = v44;
    sub_51C0(v63, &qword_6BB20, &unk_51FB0);
    sub_56AC();
    v68 = v123;
    v69 = sub_13BD4();
    v124(v69);
    v117(v119, v64, v23);
    v70 = sub_50AF4();
    v71 = sub_50BE4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *v72 = 136315394;
      v137 = 1;
      v73 = sub_50B64();
      v75 = sub_4DE68(v73, v74, &v138);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2080;
      sub_13AA8();
      sub_12AF0(v76, v77);
      v78 = sub_50CD4();
      v80 = v79;
      sub_13B14();
      sub_13D44();
      v81();
      v82 = sub_4DE68(v78, v80, &v138);

      *(v72 + 14) = v82;
      _os_log_impl(&dword_0, v70, v71, "%s: No confirmation response found in input: %s", v72, 0x16u);
      swift_arrayDestroy();
      sub_5674();
      sub_5674();

      v83 = v123;
    }

    else
    {

      sub_13B14();
      sub_13D44();
      v107();
      v83 = v68;
    }

    v129(v83, v30);
    sub_E9D0();
    v108 = swift_allocError();
    *v109 = 1;
    v110 = v134;
    *v134 = v108;
    swift_storeEnumTagMultiPayload();
    v136(v110);
    sub_51C0(v110, &qword_6C198, &qword_51FD8);
  }

  else
  {
    v128 = v33;
    v84 = *(v131 + 32);
    sub_13BE0();
    v85();
    v86 = v126;
    sub_56AC();
    v87 = v122;
    (v124)(v122, v86, v30);
    v88 = *(v67 + 16);
    v89 = sub_13CB0();
    v88(v89);
    v90 = sub_50AF4();
    v91 = sub_50BD4();
    if (sub_13C1C(v91))
    {
      v92 = sub_EFB0();
      v129 = v44;
      v93 = v92;
      v94 = sub_EFC8();
      v121 = v30;
      v95 = v67;
      v127 = v94;
      v138 = v94;
      *v93 = 136315138;
      sub_12AF0(&qword_6C1A0, &type metadata accessor for ConfirmationResponse);
      v96 = sub_50CD4();
      v97 = v88;
      v99 = v98;
      LODWORD(v126) = v91;
      v100 = *(v95 + 8);
      v100(v66, v58);
      v101 = sub_4DE68(v96, v99, &v138);
      v88 = v97;

      *(v93 + 4) = v101;
      sub_13CA4();
      _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
      sub_253C(v127);
      sub_5674();
      sub_5674();

      v129(v122, v121);
    }

    else
    {

      v100 = *(v67 + 8);
      v100(v66, v58);
      (v44)(v87, v30);
    }

    v111 = v134;
    v112 = v132;
    (v88)(v134, v132, v58);
    sub_13D50();
    sub_28E0(v113, v114, v115, v58);
    swift_storeEnumTagMultiPayload();
    v136(v111);
    sub_51C0(v111, &qword_6C198, &qword_51FD8);
    v100(v112, v58);
  }

  sub_8A94();
}

void sub_1234C()
{
  sub_13C8C();
  v2 = v0;
  v51 = v4;
  v52 = v3;
  v5 = sub_2208(&qword_6B988, &qword_530B0);
  sub_72B0(v5);
  v7 = *(v6 + 64);
  sub_72A4();
  __chkstk_darwin(v8);
  sub_13D38();
  v50 = v9;
  v10 = sub_2208(&qword_6C180, &qword_51FC0);
  sub_72B0(v10);
  v12 = *(v11 + 64);
  sub_72A4();
  __chkstk_darwin(v13);
  sub_13D24();
  v49 = sub_50104();
  v14 = sub_8558(v49);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_5630();
  v21 = v20 - v19;
  v22 = sub_50B04();
  v23 = sub_8558(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_5630();
  v30 = v29 - v28;
  v31 = sub_50AE4();
  sub_56AC();
  (*(v25 + 16))(v30, v31, v22);
  v32 = sub_50AF4();
  v33 = sub_50BD4();
  if (sub_13C1C(v33))
  {
    v34 = sub_5718();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "EmergencyPromptForConfirmationFlowStrategy makeConfirmationRejectedResponse", v34, 2u);
    sub_5674();
  }

  (*(v25 + 8))(v30, v22);
  if (v2[23])
  {
    v48 = v2[22];

    sub_4FFE4();
    sub_1FE8(v53, v53[3]);
    sub_50034();
    (*(v16 + 104))(v21, enum case for ActivityType.confirmationRejected(_:), v49);
    v35 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
    v36 = sub_50014();
    sub_569C(v36);
    (*(v37 + 104))(v1, v35, v36);
    sub_13D50();
    sub_28E0(v38, v39, v40, v36);
    sub_13B54();
    sub_50024();
    sub_4FFF4();

    sub_253C(v53);
  }

  v41 = v2[10];
  v42 = v2[11];
  sub_1FE8(v2 + 7, v41);
  (*(v42 + 8))(v54, v41, v42);
  v43 = sub_1FE8(v2 + 2, v2[5]);
  v44 = type metadata accessor for ConfirmationFlowConfigModel();
  v45 = sub_12A88(v43 + *(v44 + 20), v50, &qword_6B988, &qword_530B0);
  __chkstk_darwin(v45);
  *(&v48 - 2) = v54;
  sub_11834(sub_12AE8, v53);
  v46 = sub_13BD4();
  sub_51C0(v46, v47, &qword_530B0);
  v52(v53);
  sub_51C0(v53, &qword_6C188, &qword_51FC8);
  sub_253C(v54);
  sub_8A94();
}

uint64_t sub_12764@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1FE8(a1, a1[3]);
  sub_50074();
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  a2[3] = sub_50364();
  a2[4] = &protocol witness table for AceOutput;
  sub_530C(a2);
  sub_50134();
  return sub_51C0(v5, &qword_6C190, &qword_51FD0);
}

uint64_t *sub_12830()
{
  sub_253C(v0 + 2);
  sub_253C(v0 + 7);
  sub_253C(v0 + 12);
  sub_55C8((v0 + 17));
  v1 = v0[23];

  return v0;
}

uint64_t sub_12870()
{
  sub_12830();

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t type metadata accessor for EmergencyConfirmationResponseProvider()
{
  result = qword_6C220;
  if (!qword_6C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_129B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EmergencyPromptForConfirmationFlowStrategy();

  return PromptForConfirmationFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:_:)(a1, a2, a3, v9, a5);
}

uint64_t sub_12A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EmergencyPromptForConfirmationFlowStrategy();

  return PromptForConfirmationFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:_:)(a1, a2, a3, v9, a5);
}

uint64_t sub_12A88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2208(a3, a4);
  sub_569C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_12AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_569C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_12B90(uint64_t a1, const void *a2)
{
  v38 = a1;
  v39 = sub_50B04();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v42 = &type metadata for EmergencyCATProvider;
  v43 = &off_66C88;
  v41[0] = swift_allocObject();
  memcpy((v41[0] + 16), a2, 0x70uLL);
  v14 = sub_1FE8(v41, &type metadata for EmergencyCATProvider)[12];

  sub_22F0(a2, v40);
  sub_2CE4();

  v15 = sub_50D64();
  v17 = v16;
  sub_51C0(v13, &qword_6B988, &qword_530B0);
  if (v17)
  {
    v37 = v15;
    v18 = sub_1FE8(v41, v42)[12];

    sub_2E0C();

    v19 = sub_50D64();
    v21 = v20;
    sub_51C0(v11, &qword_6B988, &qword_530B0);
    if (v21)
    {
      sub_2208(&qword_6C1C0, &unk_51FF0);
      inited = swift_initStackObject();
      v39 = v19;
      v23 = inited;
      v36 = xmmword_51780;
      *(inited + 16) = xmmword_51780;

      v23[4] = sub_50A84();
      v23[5] = v24;
      v23[9] = &type metadata for String;
      v23[6] = 0x656D7269666E6F63;
      v23[7] = 0xE900000000000064;
      v25 = sub_50B24();
      v44 = v37;
      v45 = v17;
      v46 = 0xD000000000000035;
      v47 = 0x80000000000551D0;
      v48 = v25;
      v26 = swift_initStackObject();
      *(v26 + 16) = v36;

      *(v26 + 32) = sub_50A84();
      *(v26 + 40) = v27;
      *(v26 + 72) = &type metadata for String;
      *(v26 + 48) = 0x64657463656A6572;
      *(v26 + 56) = 0xE800000000000000;
      v28 = sub_50B24();
      v40[0] = v39;
      v40[1] = v21;
      v40[2] = 0xD000000000000035;
      v40[3] = 0x80000000000551D0;
      v40[4] = v28;
      v29 = sub_50904();

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  v30 = sub_50AE4();
  swift_beginAccess();
  v31 = v39;
  (*(v3 + 16))(v6, v30, v39);
  v32 = sub_50AF4();
  v33 = sub_50BE4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "Failed to execute label CATs for makeYesNoButtons", v34, 2u);
  }

  (*(v3 + 8))(v6, v31);
  v29 = &_swiftEmptyArrayStorage;
LABEL_8:
  sub_253C(v41);
  return v29;
}

void *sub_13020(uint64_t a1, const void *a2)
{
  v38 = a1;
  v39 = sub_50B04();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208(&qword_6B988, &qword_530B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v42 = &type metadata for EmergencyCATProvider;
  v43 = &off_66C88;
  v41[0] = swift_allocObject();
  memcpy((v41[0] + 16), a2, 0x70uLL);
  v14 = sub_1FE8(v41, &type metadata for EmergencyCATProvider)[11];

  sub_22F0(a2, v40);
  sub_24940();

  v15 = sub_50D64();
  v17 = v16;
  sub_51C0(v13, &qword_6B988, &qword_530B0);
  if (v17)
  {
    v37 = v15;
    v18 = sub_1FE8(v41, v42)[12];

    sub_2F44();

    v19 = sub_50D64();
    v21 = v20;
    sub_51C0(v11, &qword_6B988, &qword_530B0);
    if (v21)
    {
      sub_2208(&qword_6C1C0, &unk_51FF0);
      inited = swift_initStackObject();
      v39 = v19;
      v23 = inited;
      v36 = xmmword_51780;
      *(inited + 16) = xmmword_51780;

      v23[4] = sub_50A84();
      v23[5] = v24;
      v23[9] = &type metadata for String;
      v23[6] = 0x656D7269666E6F63;
      v23[7] = 0xE900000000000064;
      v25 = sub_50B24();
      v44 = v37;
      v45 = v17;
      v46 = 0xD000000000000035;
      v47 = 0x80000000000551D0;
      v48 = v25;
      v26 = swift_initStackObject();
      *(v26 + 16) = v36;

      *(v26 + 32) = sub_50A84();
      *(v26 + 40) = v27;
      *(v26 + 72) = &type metadata for String;
      *(v26 + 48) = 0x64657463656A6572;
      *(v26 + 56) = 0xE800000000000000;
      v28 = sub_50B24();
      v40[0] = v39;
      v40[1] = v21;
      v40[2] = 0xD000000000000035;
      v40[3] = 0x80000000000551D0;
      v40[4] = v28;
      v29 = sub_50904();

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_8;
    }
  }

  v30 = sub_50AE4();
  swift_beginAccess();
  v31 = v39;
  (*(v3 + 16))(v6, v30, v39);
  v32 = sub_50AF4();
  v33 = sub_50BE4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "Failed to execute label CATs for makeStartCancelButtons", v34, 2u);
  }

  (*(v3 + 8))(v6, v31);
  v29 = &_swiftEmptyArrayStorage;
LABEL_8:
  sub_253C(v41);
  return v29;
}

void *sub_134B0(char *a1, const void *a2, void *a3)
{
  v6 = sub_50B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &type metadata for EmergencyCATProvider;
  v28 = &off_66C88;
  v26[0] = swift_allocObject();
  memcpy((v26[0] + 16), a2, 0x70uLL);
  v11 = *(a1 + 4);
  sub_1FE8(a1, *(a1 + 3));
  sub_22F0(a2, __dst);
  if (sub_500D4() & 1) != 0 || (v12 = *(a1 + 4), sub_1FE8(a1, *(a1 + 3)), (sub_500B4()))
  {
    v13 = sub_50AE4();
    swift_beginAccess();
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_50AF4();
    v15 = sub_50BD4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "Device is HomePod or AppleTV. Not creating aceViews from ConfirmationSnippets.", v16, 2u);
    }

    (*(v7 + 8))(v10, v6);
    v17 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
    switch(a3)
    {
      case 0uLL:
        break;
      case 1uLL:
        v19 = sub_1FE8(v26, v27);
        memcpy(__dst, v19, sizeof(__dst));
        v20 = sub_12B90(a1, __dst);
        goto LABEL_13;
      case 2uLL:
        v22 = sub_1FE8(v26, v27);
        memcpy(__dst, v22, sizeof(__dst));
        v20 = sub_26AB4(a1, __dst);
        goto LABEL_13;
      case 3uLL:
        v23 = sub_1FE8(v26, v27);
        memcpy(__dst, v23, sizeof(__dst));
        v20 = sub_26AD4(a1, __dst);
        goto LABEL_13;
      case 4uLL:
        v21 = sub_1FE8(v26, v27);
        memcpy(__dst, v21, sizeof(__dst));
        v20 = sub_26F4C(a1, __dst);
        goto LABEL_13;
      case 5uLL:
        v24 = sub_1FE8(v26, v27);
        memcpy(__dst, v24, sizeof(__dst));
        v20 = sub_13020(a1, __dst);
LABEL_13:
        v17 = v20;
        break;
      default:

        v17 = a3;
        break;
    }
  }

  sub_253C(v26);
  return v17;
}

unint64_t sub_1381C(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

unint64_t sub_1382C(unint64_t result)
{
  if (result >= 6)
  {
  }

  return result;
}

uint64_t sub_13848()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_138FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB20, &unk_51FB0);

  return sub_513C(a1, a2, v4);
}

uint64_t sub_13964(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6BB20, &unk_51FB0);

  return sub_28E0(a1, a2, a2, v4);
}

void sub_139BC()
{
  sub_13A28();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_13A28()
{
  if (!qword_6C230)
  {
    sub_50284();
    v0 = sub_50C24();
    if (!v1)
    {
      atomic_store(v0, &qword_6C230);
    }
  }
}

uint64_t sub_13A80()
{

  return sub_12B38(v0, type metadata accessor for EmergencyNLIntent);
}

uint64_t sub_13AC0()
{

  return sub_12B38(v0, &type metadata accessor for EmergencyDialogAct);
}

uint64_t sub_13AE8()
{
  v2 = *(v0 - 232);

  return swift_beginAccess();
}

uint64_t sub_13B24()
{
  *(v3 - 304) = v2;
  v4 = *(v0 + 96);
  return v1;
}

uint64_t sub_13B9C()
{
  result = *(v0 - 224);
  v2 = *(v0 - 256);
  return result;
}

BOOL sub_13C1C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_13C34()
{

  return sub_50CE4();
}

uint64_t sub_13C74()
{
  result = v0;
  *(v2 - 304) = *(v1 + 8);
  return result;
}

uint64_t sub_13CD0()
{
  result = v0;
  v3 = *(v1 - 440);
  return result;
}

uint64_t sub_13D70()
{

  return sub_50B04();
}

uint64_t sub_13D90()
{

  return sub_50CE4();
}

void *sub_13DB0()
{
  v2 = *(v0 + 40);

  return sub_1FE8((v0 + 16), v2);
}

uint64_t type metadata accessor for EmergencyDomesticViolenceBasicIntentModernCATs()
{
  result = qword_6C318;
  if (!qword_6C318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13EE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_13F3C(a1, a2);
}

uint64_t sub_13F3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208(&unk_6D680, &qword_515B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_8E60(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_50814();
  (*(v8 + 8))(a2, v2);
  sub_8ED0(a1);
  return v16;
}

uint64_t sub_14098(uint64_t a1, uint64_t a2)
{
  v5 = sub_50864();
  v6 = sub_8F38(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_50824();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_141A0(char a1, char a2)
{
  v3 = 0xD000000000000012;
  v4 = "tCATs";
  v5 = "tCATs";
  switch(a1)
  {
    case 1:
      v5 = "isBadActorGuidance";
      v3 = 0xD000000000000012;
      break;
    case 2:
      v5 = "isContentReporting";
      goto LABEL_5;
    case 3:
      v5 = "isExplicitSearch";
LABEL_5:
      v3 = 0xD000000000000010;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000012;
  switch(a2)
  {
    case 1:
      v4 = "isBadActorGuidance";
      v6 = 0xD000000000000012;
      break;
    case 2:
      v4 = "isContentReporting";
      goto LABEL_10;
    case 3:
      v4 = "isExplicitSearch";
LABEL_10:
      v6 = 0xD000000000000010;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_50CE4();
  }

  return v8 & 1;
}

Swift::Int sub_142EC()
{
  sub_50D34();
  sub_14334();
  return sub_50D54();
}

uint64_t sub_14334()
{
  sub_50B94();
}

Swift::Int sub_143F0()
{
  sub_50D34();
  sub_14334();
  return sub_50D54();
}

uint64_t sub_14434()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1447C(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  v2 = a1[19];

  *(v1 + 27) = v2;
  return v1;
}

double sub_144C4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_150F4();
  v8 = v5 == 0xD000000000000012 && v6 == a1;
  if (v8 || (v9 = v5, (sub_150A0() & 1) != 0))
  {
    v10 = v2[24];
LABEL_7:
    *(a2 + 24) = &type metadata for Bool;
    *a2 = v10;
    return result;
  }

  sub_150F4();
  v12 = v9 == 0xD000000000000012 && v11 == a1;
  if (v12 || (sub_150A0() & 1) != 0)
  {
    v10 = v2[25];
    goto LABEL_7;
  }

  sub_150F4();
  v14 = v9 == 0xD000000000000010 && v13 == a1;
  if (v14 || (sub_150A0() & 1) != 0)
  {
    v10 = v2[26];
    goto LABEL_7;
  }

  sub_150F4();
  v16 = v9 == 0xD000000000000010 && v15 == a1;
  if (v16 || (sub_150A0() & 1) != 0)
  {
    v10 = v2[27];
    goto LABEL_7;
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_145D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_65888;
  v6._object = a2;
  v4 = sub_50CA4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_14638(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_146E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_145D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_14718@<X0>(unint64_t *a1@<X8>)
{
  result = sub_14638(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1474C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_145D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_14780(uint64_t a1)
{
  v2 = sub_14E38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_147BC(uint64_t a1)
{
  v2 = sub_14E38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_147F8()
{

  return _swift_deallocClassInstance(v0, 28, 7);
}

uint64_t sub_14854(void *a1)
{
  v3 = v1;
  v5 = sub_2208(&qword_6C5D0, &qword_52240);
  v6 = sub_8558(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  sub_1FE8(a1, a1[3]);
  sub_14E38();
  sub_50D94();
  v14 = v3[24];
  v23 = 0;
  sub_150D8(v14, &v23);
  if (!v2)
  {
    v15 = v3[25];
    v22 = 1;
    sub_150D8(v15, &v22);
    v16 = v3[26];
    v21 = 2;
    sub_150D8(v16, &v21);
    v17 = v3[27];
    v20 = 3;
    sub_150D8(v17, &v20);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_149CC(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_14A40(a1);
  return v2;
}

uint64_t sub_14A40(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2208(&qword_6C5C0, &qword_52238);
  v6 = sub_8558(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v16 - v11;
  *(v1 + 16) = 0;
  v13 = a1[4];
  sub_1FE8(a1, a1[3]);
  sub_14E38();
  sub_50D84();
  if (v2)
  {

    type metadata accessor for CsamSituation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    *(v1 + 24) = sub_150BC(&v20) & 1;
    v19 = 1;
    *(v1 + 25) = sub_150BC(&v19) & 1;
    v18 = 2;
    *(v1 + 26) = sub_150BC(&v18) & 1;
    v17 = 3;
    v15 = sub_150BC(&v17);
    (*(v8 + 8))(v12, v5);
    *(v3 + 27) = v15 & 1;
  }

  sub_253C(a1);
  return v3;
}

void *sub_14C30()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_14C78(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_14CC4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_14D40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_149CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_14DF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CsamSituation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_14E38()
{
  result = qword_6C5C8;
  if (!qword_6C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CsamSituation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x14F58);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_14F94()
{
  result = qword_6C5D8;
  if (!qword_6C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5D8);
  }

  return result;
}

unint64_t sub_14FEC()
{
  result = qword_6C5E0;
  if (!qword_6C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5E0);
  }

  return result;
}

unint64_t sub_15044()
{
  result = qword_6C5E8;
  if (!qword_6C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5E8);
  }

  return result;
}

uint64_t sub_150A0()
{

  return sub_50CE4();
}

uint64_t sub_150BC(uint64_t a1)
{

  return KeyedDecodingContainer.decode(_:forKey:)(a1, v1);
}

uint64_t sub_150D8(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, v2);
}

uint64_t sub_15100(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 146) = a4;
  *(v4 + 145) = a3;
  *(v4 + 1280) = a2;
  *(v4 + 1272) = a1;
  v5 = sub_50B04();
  *(v4 + 1288) = v5;
  v6 = *(v5 - 8);
  *(v4 + 1296) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 1304) = swift_task_alloc();
  *(v4 + 1312) = swift_task_alloc();

  return _swift_task_switch(sub_151D8, 0, 0);
}

uint64_t sub_151D8()
{
  v1 = *(v0 + 1280);
  v2 = v1[3];
  v3 = v1[4];
  sub_1FE8(v1, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 1320) = v6;
  *v6 = v0;
  v6[1] = sub_1530C;
  v7 = *(v0 + 146);
  v8 = *(v0 + 145);

  return v10(v0 + 288, v8, v7, v2, v3);
}

uint64_t sub_1530C()
{
  v1 = *v0;
  v2 = *(*v0 + 1320);
  v4 = *v0;

  memcpy((v1 + 16), (v1 + 288), 0x81uLL);

  return _swift_task_switch(sub_15418, 0, 0);
}

uint64_t sub_15418()
{
  v45 = v0;
  memcpy((v0 + 152), (v0 + 288), 0x81uLL);
  if (sub_157FC(v0 + 152) == 1)
  {
    v1 = *(v0 + 1312);
    v2 = *(v0 + 1296);
    v3 = *(v0 + 1288);
    v4 = *nullsub_1(v0 + 152);
    sub_50AE4();
    swift_beginAccess();
    v5 = sub_158DC();
    v6(v5);
    memcpy((v0 + 560), (v0 + 16), 0x81uLL);
    v7 = *nullsub_1(v0 + 560);
    swift_errorRetain();
    v8 = sub_50AF4();
    v9 = sub_50BE4();
    sub_15874(v0 + 288);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 1312);
    v12 = *(v0 + 1296);
    v13 = *(v0 + 1288);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43[0] = v15;
      *v14 = 136315138;
      *(v0 + 1264) = v4;
      memcpy((v0 + 696), (v0 + 16), 0x81uLL);
      v16 = *nullsub_1(v0 + 696);
      swift_errorRetain();
      sub_2208(&qword_6B980, qword_52B10);
      v17 = sub_50B64();
      v19 = sub_4DE68(v17, v18, v43);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_0, v8, v9, "Error while fetching orgInfo: %s", v14, 0xCu);
      sub_253C(v15);
      sub_5674();
      sub_5674();

      sub_15874(v0 + 288);
    }

    else
    {
      sub_15874(v0 + 288);
    }

    (*(v12 + 8))(v11, v13);
    sub_E534((v0 + 832));
  }

  else
  {
    v20 = *(v0 + 1304);
    v21 = *(v0 + 1296);
    v22 = *(v0 + 1288);
    v23 = nullsub_1(v0 + 152);
    memcpy(v43, v23, sizeof(v43));
    sub_50AE4();
    swift_beginAccess();
    v24 = sub_158DC();
    v25(v24);
    memcpy((v0 + 424), (v0 + 16), 0x81uLL);
    v26 = nullsub_1(v0 + 424);
    sub_15804(v26, v0 + 960);
    v27 = sub_50AF4();
    v28 = sub_50BD4();
    sub_15874(v0 + 288);
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 1304);
    v31 = *(v0 + 1296);
    v32 = *(v0 + 1288);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      memcpy((v0 + 1088), v43, 0x80uLL);
      sub_2208(&qword_6C050, &qword_51E00);
      v35 = sub_50C14();
      v37 = sub_4DE68(v35, v36, &v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_0, v27, v28, "Successfully retrieved organization info: %s", v33, 0xCu);
      sub_253C(v34);
      sub_5674();
      sub_5674();
    }

    (*(v31 + 8))(v30, v32);
    memcpy((v0 + 832), v43, 0x80uLL);
  }

  v38 = *(v0 + 1312);
  v39 = *(v0 + 1304);
  v40 = *(v0 + 1272);

  memcpy(v40, (v0 + 832), 0x80uLL);
  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_15804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208(&qword_6C050, &qword_51E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15874(uint64_t a1)
{
  v2 = sub_2208(&qword_6C5F0, qword_523A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_158F4()
{
  result = qword_6C5F8;
  if (!qword_6C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C5F8);
  }

  return result;
}

unint64_t sub_1594C()
{
  result = qword_6C600;
  if (!qword_6C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C600);
  }

  return result;
}

unint64_t sub_159D0()
{
  result = qword_6C608;
  if (!qword_6C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C608);
  }

  return result;
}

unint64_t sub_15A28()
{
  result = qword_6C610;
  if (!qword_6C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C610);
  }

  return result;
}

unint64_t sub_15AAC()
{
  result = qword_6C618;
  if (!qword_6C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C618);
  }

  return result;
}

unint64_t sub_15B04()
{
  result = qword_6C620;
  if (!qword_6C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C620);
  }

  return result;
}

unint64_t sub_15B88()
{
  result = qword_6C628;
  if (!qword_6C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C628);
  }

  return result;
}

unint64_t sub_15BE0()
{
  result = qword_6C630;
  if (!qword_6C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C630);
  }

  return result;
}

unint64_t sub_15C64()
{
  result = qword_6C638;
  if (!qword_6C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C638);
  }

  return result;
}

unint64_t sub_15CBC()
{
  result = qword_6C640;
  if (!qword_6C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C640);
  }

  return result;
}

uint64_t sub_15D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a4();
  v9 = a5();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v8, v9);
}

unint64_t sub_15DB0()
{
  result = qword_6C648;
  if (!qword_6C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C648);
  }

  return result;
}

unint64_t sub_15E04()
{
  result = qword_6C650;
  if (!qword_6C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C650);
  }

  return result;
}

unint64_t sub_15E58()
{
  result = qword_6C658;
  if (!qword_6C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C658);
  }

  return result;
}

unint64_t sub_15EAC()
{
  result = qword_6C660;
  if (!qword_6C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C660);
  }

  return result;
}

unint64_t sub_15F00()
{
  result = qword_6C668;
  if (!qword_6C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C668);
  }

  return result;
}

unint64_t sub_15F54()
{
  result = qword_6C670;
  if (!qword_6C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C670);
  }

  return result;
}

unint64_t sub_15FA8()
{
  result = qword_6C678;
  if (!qword_6C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C678);
  }

  return result;
}

unint64_t sub_15FFC()
{
  result = qword_6C680;
  if (!qword_6C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C680);
  }

  return result;
}

unint64_t sub_16050()
{
  result = qword_6C688;
  if (!qword_6C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C688);
  }

  return result;
}

unint64_t sub_160A4()
{
  result = qword_6C690;
  if (!qword_6C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_6C690);
  }

  return result;
}

void sub_160F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_13C8C();
  a19 = v21;
  a20 = v22;
  v213 = v20;
  v24 = v23;
  v25 = sub_50324();
  v26 = sub_8558(v25);
  v219 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v30);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v31);
  sub_13C5C();
  sub_EE14(v32);
  v33 = type metadata accessor for EmergencyNLIntent();
  v34 = sub_72B0(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v37);
  sub_13C5C();
  sub_EE14(v38);
  v224 = sub_50654();
  v39 = sub_8558(v224);
  v223 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_1A3A0();
  sub_EE14(v43);
  v44 = sub_503A4();
  v45 = sub_72B0(v44);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  sub_1A3A0();
  sub_EE14(v48);
  v49 = sub_50A24();
  v50 = sub_72B0(v49);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v53);
  sub_13C5C();
  sub_EE14(v54);
  v212 = sub_50354();
  v55 = sub_8558(v212);
  v211 = v56;
  v58 = *(v57 + 64);
  __chkstk_darwin(v55);
  sub_1A3A0();
  sub_EE14(v59);
  v221 = sub_50334();
  v60 = sub_8558(v221);
  v227 = v61;
  v63 = *(v62 + 64);
  __chkstk_darwin(v60);
  sub_1A3A0();
  v226 = v64;
  sub_13B48();
  v65 = sub_502E4();
  v66 = sub_8558(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  __chkstk_darwin(v66);
  sub_5630();
  v73 = v72 - v71;
  v74 = sub_50B04();
  v75 = sub_8558(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  __chkstk_darwin(v75);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v80);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v81);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v82);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v83);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v84);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v85);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v86);
  v88 = &v201 - v87;
  v89 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v231 = v77;
  v90 = *(v77 + 16);
  v225 = v89;
  v228 = v90;
  v229 = v77 + 16;
  (v90)(v88, v89, v74);
  v91 = *(v68 + 16);
  v92 = v73;
  v93 = v73;
  v220 = v24;
  v94 = v65;
  v91(v93, v24, v65);
  v95 = sub_50AF4();
  v96 = sub_50BD4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = sub_EFB0();
    v202 = v25;
    v98 = v97;
    v230 = sub_EFC8();
    v232[0] = v230;
    *v98 = 136315138;
    sub_1A318(&qword_6C078, 255, &type metadata accessor for Input);
    v99 = v92;
    v100 = sub_50CD4();
    v101 = v74;
    v103 = v102;
    (*(v68 + 8))(v99, v94);
    v104 = sub_4DE68(v100, v103, v232);
    v74 = v101;
    v105 = v231;
    v106 = v219;

    *(v98 + 4) = v104;
    _os_log_impl(&dword_0, v95, v96, "#EmergencyOfferCallFlow onInput: %s", v98, 0xCu);
    sub_253C(v230);
    sub_5674();
    v25 = v202;
    sub_5674();

    v230 = *(v105 + 8);
    (v230)(v88, v101);
  }

  else
  {

    (*(v68 + 8))(v92, v94);
    v230 = *(v231 + 8);
    (v230)(v88, v74);
    v106 = v219;
  }

  v107 = v226;
  sub_502D4();
  v108 = v221;
  v109 = (*(v227 + 88))(v107, v221);
  if (v109 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v110 = sub_1A47C();
    v111(v110);
    (*(v223 + 32))(v222, v107, v224);
    sub_2970();
    swift_beginAccess();
    v112 = v216;
    sub_1A458();
    v113 = v228;
    v228();
    v114 = sub_50AF4();
    v115 = sub_50BD4();
    if (sub_EF00(v115))
    {
      v116 = sub_5718();
      sub_EEC8(v116);
      sub_EED4(&dword_0, v117, v118, "EmergencyOfferCallFlow onInput .NLv3IntentOnly");
      sub_EE58();
    }

    (v230)(v112, v74);
    v119 = v223;
    v120 = v217;
    v121 = v222;
    v122 = v224;
    (*(v223 + 16))(v217, v222, v224);
    sub_1A4D8(&a11);
    sub_1A264(v123, v124, v125);
    sub_23FCC();
    v127 = v126;
    sub_1A2C0(v120, type metadata accessor for EmergencyNLIntent);
    (*(v119 + 8))(v121, v122);
LABEL_8:
    v128 = v127 >> 8;
    if (v127 == 4 && BYTE1(v127) == 35)
    {
      sub_2970();
      swift_beginAccess();
      v129 = v214;
      sub_1A458();
      v113();
      v130 = sub_50AF4();
      v131 = sub_50BD4();
      if (sub_EF00(v131))
      {
        v132 = sub_5718();
        sub_EEC8(v132);
        sub_EED4(&dword_0, v133, v134, "#EmergencyOfferCallFlow Produced an empty intent. Ignoring input.");
        sub_EE58();
      }

      sub_1A464();
      v160 = v129;
      v161 = v74;
LABEL_30:
      (v230)(v160, v161);
      goto LABEL_42;
    }

    if ((v127 & 0x10000) != 0)
    {
      sub_2970();
      swift_beginAccess();
      v151 = v207;
      sub_1A458();
      v113();
      v152 = sub_50AF4();
      v153 = v74;
      v154 = sub_50BE4();
      if (sub_EF4C(v154))
      {
        v155 = sub_EFB0();
        v156 = sub_EFC8();
        v236 = v156;
        *v155 = 136315138;
        v234 = v127;
        v235 = 1;
        v157 = sub_50B64();
        v159 = sub_4DE68(v157, v158, &v236);

        *(v155 + 4) = v159;
        _os_log_impl(&dword_0, v152, v154, "#EmergencyOfferCallFlow Expected a non-DirectCall intent. Aborting flow. Intent: [%s]", v155, 0xCu);
        sub_253C(v156);
        sub_5674();
        sub_5674();
      }

      sub_1A464();
      v160 = v151;
      v161 = v153;
      goto LABEL_30;
    }

LABEL_38:
    v199 = v213;
    *(v213 + 218) = 0;
    *(v199 + 216) = v127 | (v128 << 8);
    goto LABEL_42;
  }

  if (v109 == enum case for Parse.directInvocation(_:))
  {
    v135 = sub_1A47C();
    v136(v135);
    v137 = v106;
    v138 = v25;
    (*(v106 + 32))(v218, v107, v25);
    sub_2970();
    swift_beginAccess();
    v139 = v210;
    sub_1A458();
    v228();
    v140 = sub_50AF4();
    v141 = sub_50BD4();
    if (sub_EF00(v141))
    {
      v142 = sub_5718();
      sub_EEC8(v142);
      sub_EED4(&dword_0, v143, v144, "EmergencyOfferCallFlow onInput .directInvocation");
      sub_EE58();
    }

    v145 = v231 + 8;
    (v230)(v139, v74);
    v146 = v218;
    v148 = sub_50304() == 0xD000000000000035 && 0x8000000000055140 == v147;
    v149 = v215;
    if (v148)
    {
    }

    else
    {
      v150 = sub_50CE4();

      if ((v150 & 1) == 0)
      {
LABEL_33:
        sub_2970();
        swift_beginAccess();
        sub_1A458();
        v228();
        v231 = v74;
        v176 = *(v137 + 16);
        v177 = v208;
        v176(v208, v146, v138);
        v178 = v149;
        v179 = sub_50AF4();
        v180 = sub_50BE4();
        if (sub_EF00(v180))
        {
          v181 = sub_EFB0();
          v182 = sub_EFC8();
          v236 = v182;
          *v181 = 136315138;
          v229 = v145;
          v176(v203, v177, v138);
          v183 = sub_50B64();
          v185 = v184;
          v186 = *(v137 + 8);
          v186(v177, v138);
          v187 = sub_4DE68(v183, v185, &v236);

          *(v181 + 4) = v187;
          _os_log_impl(&dword_0, v179, v178, "Failed to get emergencySituation from DirectInvocation: %s", v181, 0xCu);
          sub_253C(v182);
          sub_5674();
          sub_5674();

          (v230)(v215, v231);
          v186(v218, v138);
        }

        else
        {

          v200 = *(v137 + 8);
          v200(v177, v138);
          (v230)(v149, v231);
          v200(v146, v138);
        }

        goto LABEL_42;
      }
    }

    v175 = sub_2B6B0();
    if (v175 != 35)
    {
      LOWORD(v128) = v175;
      (*(v137 + 8))(v146, v138);
      LOBYTE(v127) = 4;
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v109 == enum case for Parse.uso(_:))
  {
    v162 = sub_1A47C();
    v163(v162);
    v164 = v205;
    (*(v211 + 32))(v205, v107, v212);
    sub_2970();
    swift_beginAccess();
    sub_1A458();
    v113 = v228;
    v228();
    v165 = sub_50AF4();
    v166 = sub_50BD4();
    if (sub_EF00(v166))
    {
      v167 = sub_5718();
      sub_EEC8(v167);
      sub_EED4(&dword_0, v168, v169, "#EmergencyOfferCallFlow onInput .uso");
      sub_EE58();
    }

    sub_1A464();
    (v230)(v209, v74);
    sub_50344();
    v233[0] = &type metadata for EmergencyFeatureFlagsKey;
    v233[1] = sub_EB68();
    LOBYTE(v232[0]) = 2;
    sub_50374();
    sub_253C(v232);
    v170 = v206;
    sub_50A14();
    sub_1A4D8(v233);
    sub_1A264(v171, v172, v173);
    sub_23CC8();
    v127 = v174;
    sub_1A2C0(v170, &type metadata accessor for EmergencyDialogAct);
    (*(v211 + 8))(v164, v212);
    goto LABEL_8;
  }

  sub_2970();
  swift_beginAccess();
  v188 = v204;
  sub_1A458();
  v228();
  v189 = sub_50AF4();
  v190 = sub_50BE4();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = sub_EFB0();
    v192 = v74;
    v193 = sub_EFC8();
    v237 = v193;
    *v191 = 136315138;
    LOBYTE(v236) = 0;
    v194 = sub_50B64();
    v196 = sub_4DE68(v194, v195, &v237);

    *(v191 + 4) = v196;
    _os_log_impl(&dword_0, v189, v190, "%s", v191, 0xCu);
    sub_253C(v193);
    sub_5674();
    sub_5674();

    sub_1A464();
    v197 = v188;
    v198 = v192;
    v107 = v226;
  }

  else
  {

    sub_1A464();
    v197 = v188;
    v198 = v74;
  }

  (v230)(v197, v198);
  (*(v227 + 8))(v107, v108);
LABEL_42:
  sub_8A94();
}

uint64_t sub_17110()
{
  sub_EF64();
  v1[148] = v0;
  v1[147] = v2;
  v3 = sub_50B04();
  v1[149] = v3;
  v4 = *(v3 - 8);
  v1[150] = v4;
  v5 = *(v4 + 64) + 15;
  v1[151] = swift_task_alloc();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();

  return _swift_task_switch(sub_171F4, 0, 0);
}

uint64_t sub_171F4()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  *(v0 + 1240) = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v0 + 1248) = v4;
  *(v0 + 1256) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5 = sub_1A4E4();
  v4(v5);
  v6 = sub_50AF4();
  v7 = sub_50BD4();
  if (sub_EF4C(v7))
  {
    v8 = sub_5718();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#EmergencyOfferCallFlow execute", v8, 2u);
    sub_5674();
  }

  v9 = *(v0 + 1232);
  v10 = *(v0 + 1200);
  v11 = *(v0 + 1192);
  v12 = *(v0 + 1184);

  v13 = *(v10 + 8);
  *(v0 + 1264) = v13;
  v13(v9, v11);
  v14 = *(v12 + 218);
  if (v14 == 2)
  {
    v16 = *(v0 + 1184);
    v17 = *(v0 + 1176);
    sub_E9D0();
    v18 = swift_allocError();
    *v19 = 2;
    sub_1D68(v18, v16 + 16, (v16 + 56), v17);

    goto LABEL_20;
  }

  if (v14 == 3)
  {
    v15 = *(v0 + 1176);
    sub_50194();
LABEL_20:
    sub_1A4F0();

    v42 = *(v0 + 8);

    return v42();
  }

  *(v12 + 218);
  v20 = *(v12 + 216);
  if (HIBYTE(v20) == 35 && v20 == 4)
  {
LABEL_17:
    v28 = *(v0 + 1208);
    v29 = *(v0 + 1192);
    sub_2970();
    swift_beginAccess();
    v30 = sub_1A4E4();
    v4(v30);
    v31 = sub_50AF4();
    v32 = sub_50BE4();
    if (sub_EF4C(v32))
    {
      v33 = sub_5718();
      sub_EEC8(v33);
      sub_56D8(&dword_0, v34, v35, "#EmergencyOfferCallFlow Intent missing a situation or valid organization");
      sub_EE58();
    }

    v36 = *(v0 + 1208);
    v37 = *(v0 + 1200);
    v38 = *(v0 + 1192);
    v39 = *(v0 + 1184);
    v40 = *(v0 + 1176);

    v13(v36, v38);
    v41 = sub_1FE8((v39 + 56), *(v39 + 80));
    memcpy((v0 + 656), v41, 0x70uLL);
    sub_202C(v39 + 16, (v0 + 656));
    sub_50184();

    goto LABEL_20;
  }

  v21 = *(v0 + 1184);
  sub_87A8();
  if (!*(v0 + 944))
  {
    v25 = &unk_6C7A0;
    v26 = &unk_53C80;
    v27 = v0 + 920;
LABEL_16:
    sub_51C0(v27, v25, v26);
    goto LABEL_17;
  }

  sub_546C((v0 + 920), v0 + 880);
  sub_856C();
  if (!*(v0 + 1024))
  {
    sub_253C((v0 + 880));
    v25 = &unk_6C7A8;
    v26 = &unk_526E0;
    v27 = v0 + 1000;
    goto LABEL_16;
  }

  v22 = *(v0 + 1184);
  sub_546C((v0 + 1000), v0 + 960);
  v23 = swift_task_alloc();
  *(v0 + 1272) = v23;
  *v23 = v0;
  v23[1] = sub_175D0;

  return sub_15100(v0 + 400, v22 + 136, SHIBYTE(v20), v20);
}

uint64_t sub_175D0()
{
  sub_EF64();
  v1 = *(*v0 + 1272);
  v2 = *v0;
  sub_EF2C();
  *v3 = v2;

  return _swift_task_switch(sub_176C0, 0, 0);
}

uint64_t sub_176C0()
{
  v56 = v0;
  memcpy(v0 + 34, v0 + 50, 0x80uLL);
  if (sub_E51C((v0 + 34)) == 1)
  {
    v1 = v0[147];
    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    sub_19284();
LABEL_7:
    sub_50184();

    goto LABEL_19;
  }

  v2 = v0[148];
  memcpy(v0 + 18, v0 + 34, 0x80uLL);
  memcpy(__dst, v0 + 34, sizeof(__dst));
  v3 = v2[6];
  sub_1FE8(v2 + 2, v2[5]);
  v4 = *(v3 + 8);
  v5 = sub_1A3B4();
  v6(v5);
  v7 = v0[134];
  sub_1FE8(v0 + 130, v0[133]);
  sub_1A3B4();
  v8 = sub_50044();
  sub_253C(v0 + 130);
  if (v8)
  {
    v9 = v0[157];
    v10 = v0[156];
    v11 = v0[155];
    v12 = v0[153];
    v13 = v0[149];
    sub_2970();
    swift_beginAccess();
    v14 = sub_1A48C();
    v10(v14);
    v15 = sub_50AF4();
    v16 = sub_50BE4();
    if (sub_EF4C(v16))
    {
      v17 = sub_5718();
      sub_EEC8(v17);
      sub_56D8(&dword_0, v18, v19, "#EmergencyOfferCallFlow Calling disabled on this device. Not offering a call");
      sub_EE58();
    }

    v20 = v0[158];
    v21 = v0[153];
    v22 = v0[150];
    v23 = v0[149];
    v24 = v0[148];
    v25 = v0[147];

    v20(v21, v23);
    sub_1A3F4((v24 + 176), *(v24 + 200));
    sub_19D70();
    sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
    goto LABEL_7;
  }

  if (sub_509A4())
  {
    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    sub_17E7C();
  }

  else if (sub_509C4())
  {
    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    sub_18988((v0 + 18), (v0 + 110), v26, v27, v28, v29, v30, v31, v54, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10]);
  }

  else
  {
    v32 = v0[31];
    if ((v32 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v32) & 0xF;
    }

    else
    {
      v33 = v0[30] & 0xFFFFFFFFFFFFLL;
    }

    if (!v33)
    {
      v37 = v0[157];
      v38 = v0[156];
      v39 = v0[155];
      v40 = v0[152];
      v41 = v0[149];
      sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
      sub_2970();
      swift_beginAccess();
      v42 = sub_1A48C();
      v38(v42);
      v43 = sub_50AF4();
      v44 = sub_50BE4();
      if (sub_EF4C(v44))
      {
        v45 = sub_5718();
        sub_EEC8(v45);
        sub_56D8(&dword_0, v46, v47, "#EmergencyOfferCallFlow OrgInfo had no usable info");
        sub_EE58();
      }

      v48 = v0[158];
      v49 = v0[152];
      v50 = v0[150];
      v51 = v0[149];
      v52 = v0[148];

      v48(v49, v51);
      v53 = sub_1FE8((v52 + 56), *(v52 + 80));
      memcpy(v0 + 96, v53, 0x70uLL);
      sub_202C((v2 + 2), v0 + 96);
      goto LABEL_18;
    }

    sub_1A3F4((v0[148] + 176), *(v0[148] + 200));
    memcpy(v0 + 66, __dst, 0x80uLL);
    nullsub_1(v0 + 66);
    memcpy(v0 + 2, v0 + 66, 0x80uLL);
    sub_19284();
  }

  sub_51C0((v0 + 50), &qword_6C050, &qword_51E00);
LABEL_18:
  v34 = v0[147];

  sub_50184();

LABEL_19:
  sub_253C(v0 + 120);
  sub_253C(v0 + 110);
  sub_1A4F0();

  v35 = v0[1];

  return v35();
}

uint64_t sub_17AE0()
{
  type metadata accessor for EmergencyOfferCallFlow();
  sub_1A318(&qword_6C798, v0, type metadata accessor for EmergencyOfferCallFlow);
  return sub_4FF14();
}

uint64_t sub_17B6C()
{
  sub_C840();

  return _swift_deallocClassInstance(v0, 219, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for EmergencyOfferCallFlow.EmergencyOfferCallFlowState(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyOfferCallFlow.EmergencyOfferCallFlowState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *(a1 + 2);
  if (v6 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EmergencyOfferCallFlow.EmergencyOfferCallFlowState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *(result + 2) = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_17D08(uint64_t a1)
{
  v1 = *(a1 + 2);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_17D24(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    v2 = (a2 - 255) >> 16;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    LOBYTE(v2) = a2 + 1;
  }

  *(result + 2) = v2;
  return result;
}

uint64_t sub_17DA8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_CD54;

  return sub_17110();
}

uint64_t sub_17E44()
{
  type metadata accessor for EmergencyOfferCallFlow();

  return sub_4FF64();
}

void sub_17E7C()
{
  sub_13C8C();
  v1 = v0;
  v3 = v2;
  memcpy(v153, v2, sizeof(v153));
  v124 = type metadata accessor for ConfirmationFlowConfigModel();
  v4 = sub_569C(v124);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1A3A0();
  v125 = v7;
  sub_13B48();
  v128 = sub_50884();
  v8 = sub_569C(v128);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1A3A0();
  v129 = v11;
  v12 = sub_2208(&qword_6B998, qword_51850);
  v13 = sub_72B0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_EE34();
  v123 = v16;
  sub_13B08();
  __chkstk_darwin(v17);
  v19 = &v121 - v18;
  v20 = sub_2208(&qword_6B988, &qword_530B0);
  v21 = sub_72B0(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_EE34();
  v126 = v24;
  sub_13B08();
  __chkstk_darwin(v25);
  sub_13C5C();
  v127 = v26;
  sub_13B48();
  v27 = sub_50B04();
  v28 = sub_8558(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28);
  sub_EE34();
  v122 = v33;
  sub_13B08();
  __chkstk_darwin(v34);
  v36 = &v121 - v35;
  v37 = sub_50804();
  v38 = sub_8558(v37);
  v130 = v39;
  v131 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_5630();
  v44 = v43 - v42;
  v45 = v3[6];
  v46 = v3[7];

  v134 = v44;
  sub_2970();
  sub_507F4();
  v47 = sub_50744();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_50734();
  v50 = v3[8];
  v51 = v3[9];
  v132 = v3;
  sub_2970();
  sub_50724();

  v133 = sub_50714();

  v52 = v1[3];
  v53 = v1[4];
  sub_1FE8(v1, v52);
  (*(v53 + 8))(v151, v52, v53);
  sub_1A3F4(v151, v152);
  if (sub_500B4() & 1) != 0 || (sub_1A3F4(v151, v152), (sub_50044()))
  {
    v54 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_1A470();
    v55(v36, v54, v27);
    v56 = sub_50AF4();
    v57 = sub_50BD4();
    if (sub_EF4C(v57))
    {
      *sub_5718() = 0;
      sub_1A4BC(&dword_0, v58, v57, "#EmergencyOfferCallFlow Request made on device that doesn't support calling. Give supportive dialog.");
      sub_5674();
    }

    (*(v30 + 8))(v36, v27);
    v59 = sub_1FE8(v1 + 5, v1[8])[1];
    v61 = v130;
    v60 = v131;
    sub_1A470();
    v62(v19, v134, v60);
    sub_13D50();
    sub_28E0(v63, v64, v65, v60);
    sub_1A3F4(v151, v152);

    v66 = sub_500B4();
    v67 = 0;
    if ((v66 & 1) == 0)
    {
      sub_1A3F4(v151, v152);
      v67 = sub_50044() ^ 1;
    }

    v68 = v127;
    sub_24CDC(v19, v133, v67 & 1);

    sub_51C0(v19, &qword_6B998, qword_51850);
    sub_1A160(v68, v126, &qword_6B988, &qword_530B0);
    sub_23BC(v1, &v144);
    sub_50994();
    v69 = v129;
    sub_50874();
    sub_1A388();
    sub_1A318(v70, 255, v71);
    sub_4FF04();

    sub_1A370();
    sub_1A2C0(v69, v72);
    sub_51C0(v68, &qword_6B988, &qword_530B0);
    (*(v61 + 8))(v134, v60);
  }

  else
  {
    v73 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_1A470();
    v74 = v122;
    v75(v122, v73, v27);
    v76 = sub_50AF4();
    v77 = sub_50BD4();
    if (sub_EF4C(v77))
    {
      *sub_5718() = 0;
      sub_1A4BC(&dword_0, v78, v77, "#EmergencyOfferCallFlow Resource is available. Confirm before calling.");
      sub_5674();
    }

    (*(v30 + 8))(v74, v27);
    sub_23BC(v1, &v144);
    sub_23BC((v1 + 5), &v147);
    memcpy(v149, v153, 0x80uLL);
    sub_1A058(v149);
    memcpy(v148, v149, sizeof(v148));
    sub_5484(v132, v143);
    sub_EA30();
    v79 = sub_4FF04();
    sub_EA84(&v144);
    v80 = sub_1FE8(v1 + 5, v1[8])[1];
    v81 = v131;
    v82 = v123;
    (*(v130 + 16))(v123, v134, v131);
    sub_13D50();
    sub_28E0(v83, v84, v85, v81);

    v86 = v125;
    sub_24EEC(v82);

    sub_51C0(v82, &qword_6B998, qword_51850);
    v87 = sub_1FE8(v1 + 5, v1[8])[1];
    v88 = v124;
    v89 = v124[5];

    sub_250F0();

    *(v86 + v88[6]) = v79;
    *(v86 + v88[7]) = 2;
    *(v86 + v88[8]) = 0;
    *(v86 + v88[9]) = 1;
    sub_23BC(v1, v142);
    sub_23BC((v1 + 5), v141);
    sub_5260((v1 + 10), v139);
    sub_52BC(v141, v141[3]);
    v129 = &v121;
    sub_5620();
    v91 = *(v90 + 64);
    __chkstk_darwin(v92);
    sub_5630();
    v94 = sub_1A4A4(v93);
    v95(v94);
    memcpy(v150, v79, sizeof(v150));
    v137 = v88;
    v138 = &off_66AB0;
    sub_530C(v136);
    sub_1A40C();
    sub_1A264(v86, v96, v97);
    v135[3] = &type metadata for EmergencyCATProvider;
    v135[4] = &off_66C88;
    sub_1A498();
    v135[0] = swift_allocObject();
    memcpy((v135[0] + 16), v150, 0x70uLL);
    type metadata accessor for EmergencyConfirmationFlow();
    v98 = swift_allocObject();
    sub_52BC(v136, v137);
    sub_5620();
    v100 = *(v99 + 64);
    __chkstk_darwin(v101);
    sub_5630();
    v104 = v103 - v102;
    (*(v105 + 16))(v103 - v102);
    sub_52BC(v135, &type metadata for EmergencyCATProvider);
    sub_5620();
    v107 = *(v106 + 64);
    __chkstk_darwin(v108);
    sub_5630();
    v111 = (v110 - v109);
    (*(v112 + 16))(v110 - v109);
    memcpy(v143, v111, 0x70uLL);
    v145 = v88;
    v146 = &off_66AB0;
    v113 = sub_530C(&v144);
    sub_1A0FC(v104, v113);
    *(v98 + 256) = &type metadata for EmergencyCATProvider;
    *(v98 + 264) = &off_66C88;
    sub_1A498();
    v114 = swift_allocObject();
    *(v98 + 232) = v114;
    memcpy((v114 + 16), v143, 0x70uLL);
    v115 = v132;
    memcpy((v98 + 24), v132, 0x80uLL);
    sub_546C(&v144, v98 + 152);
    sub_546C(v142, v98 + 192);
    v116 = v139[1];
    *(v98 + 272) = v139[0];
    *(v98 + 288) = v116;
    v117 = v140;
    *(v98 + 16) = 0;
    *(v98 + 312) = 0;
    *(v98 + 320) = 0;
    *(v98 + 304) = v117;
    sub_5484(v115, &v144);
    sub_253C(v135);
    sub_253C(v136);
    sub_253C(v141);
    *&v144 = v98;
    sub_1A440();
    sub_1A318(v118, 255, v119);
    sub_4FF04();

    sub_1A428();
    sub_1A2C0(v86, v120);
    (*(v130 + 8))(v134, v131);
  }

  sub_253C(v151);
  sub_8A94();
}

void sub_18988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_13C8C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v140 = sub_508C4();
  v27 = sub_569C(v140);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_1A3A0();
  v139 = v30;
  v31 = sub_2208(&unk_6D680, &qword_515B0);
  sub_72B0(v31);
  v33 = *(v32 + 64);
  sub_72A4();
  __chkstk_darwin(v34);
  sub_EE14(&v134 - v35);
  v142 = sub_4FD64();
  v36 = sub_8558(v142);
  v138 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v40);
  sub_13C5C();
  sub_EE14(v41);
  v143 = sub_50884();
  v42 = sub_569C(v143);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  sub_1A3A0();
  sub_EE14(v45);
  v46 = sub_50B04();
  v47 = sub_8558(v46);
  v145 = v48;
  v146 = v47;
  v50 = *(v49 + 64);
  __chkstk_darwin(v47);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v51);
  sub_EEF4();
  sub_EE04();
  __chkstk_darwin(v52);
  v54 = &v134 - v53;
  v55 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v55);
  v57 = *(v56 + 64);
  sub_72A4();
  __chkstk_darwin(v58);
  v60 = &v134 - v59;
  v61 = sub_2208(&qword_6B988, &qword_530B0);
  v62 = sub_72B0(v61);
  v64 = *(v63 + 64);
  __chkstk_darwin(v62);
  sub_EE34();
  sub_EE04();
  __chkstk_darwin(v65);
  sub_13C5C();
  v148 = v66;
  sub_13B48();
  v67 = sub_50804();
  v68 = sub_8558(v67);
  v70 = v69;
  v72 = *(v71 + 64);
  __chkstk_darwin(v68);
  sub_5630();
  v75 = v74 - v73;
  v76 = v20[3];
  v77 = v20[4];
  v150 = v20;
  v78 = sub_1A4E4();
  sub_1FE8(v78, v79);
  v80 = *(v77 + 8);
  v81 = sub_1A3B4();
  v82(v81);
  v83 = *(v26 + 48);
  v84 = *(v26 + 56);
  v147 = v26;

  sub_1A48C();
  sub_2970();
  sub_507F4();
  v86 = v24[3];
  v85 = v24[4];
  sub_1FE8(v24, v86);
  v151 = v70;
  v87 = *(v70 + 16);
  v149 = v75;
  v87(v60, v75, v67);
  sub_13D50();
  v152 = v67;
  sub_28E0(v88, v89, v90, v67);
  sub_1A3F4(v154, v155);
  v91 = sub_500B4();
  v92 = 0;
  if ((v91 & 1) == 0)
  {
    sub_1A3F4(v154, v155);
    v92 = sub_50044() ^ 1;
  }

  v93 = v148;
  (*(v85 + 16))(v60, v92 & 1, v86, v85);
  sub_51C0(v60, &qword_6B998, qword_51850);
  v94 = v156;
  sub_1FE8(v154, v155);
  sub_1A3B4();
  if (sub_500D4())
  {
    goto LABEL_7;
  }

  v94 = v156;
  sub_1FE8(v154, v155);
  sub_1A3B4();
  if (sub_500C4() & 1) != 0 || (v94 = v156, sub_1FE8(v154, v155), sub_1A3B4(), (sub_500B4()) || (v94 = v156, sub_1FE8(v154, v155), sub_1A3B4(), (sub_500A4()))
  {
LABEL_7:
    v95 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    v97 = v145;
    v96 = v146;
    sub_1A470();
    v98(v54, v95, v96);
    v99 = sub_50AF4();
    v100 = sub_50BD4();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = sub_5718();
      sub_EEC8(v101);
      _os_log_impl(&dword_0, v99, v100, "#EmergencyOfferCallFlow Only website resource available on HomePod, ATV, Car, or Watch, offering call.", v94, 2u);
      sub_EE58();
    }

LABEL_9:

    (*(v97 + 8))(v54, v96);
    sub_1A4D8(&a16);
    sub_1A160(v102, v103, v104, v105);
    sub_23BC(v150, &v153);
    sub_50994();
    v106 = v144;
    sub_50874();
    sub_1A388();
    sub_1A318(v107, 255, v108);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v106, v109);
    goto LABEL_10;
  }

  v110 = v141;
  sub_50984();
  v111 = v142;
  v112 = sub_513C(v110, 1, v142);
  v97 = v145;
  v96 = v146;
  if (v112 == 1)
  {
    sub_51C0(v110, &unk_6D680, &qword_515B0);
    v113 = sub_50AE4();
    sub_2970();
    swift_beginAccess();
    sub_1A470();
    v54 = v135;
    v114(v135, v113, v96);
    v99 = sub_50AF4();
    v115 = sub_50BD4();
    if (sub_EF00(v115))
    {
      v116 = sub_5718();
      sub_EEC8(v116);
      sub_EED4(&dword_0, v117, v118, "#EmergencyOfferCallFlow Missing website resource. Offer supportive dialog.");
      sub_EE58();
    }

    goto LABEL_9;
  }

  v119 = v138;
  v120 = v137;
  (*(v138 + 32))(v137, v110, v111);
  v121 = sub_50AE4();
  sub_2970();
  swift_beginAccess();
  sub_1A470();
  v122 = v134;
  v123(v134, v121, v96);
  v124 = sub_50AF4();
  v125 = sub_50BD4();
  if (sub_EF00(v125))
  {
    v126 = sub_5718();
    sub_EEC8(v126);
    sub_EED4(&dword_0, v127, v128, "#EmergencyOfferCallFlow Only website resource available, launching website.");
    sub_EE58();
  }

  (*(v97 + 8))(v122, v96);
  v129 = v150[4];
  sub_1FE8(v150, v150[3]);
  v130 = *(v129 + 16);
  v131 = sub_1A3B4();
  v132(v131);
  (*(v119 + 16))(v136, v120, v111);
  v133 = v139;
  sub_2970();
  sub_508B4();
  sub_1A318(&qword_6C7B0, 255, &type metadata accessor for AppPunchOutFlow);
  sub_4FF04();
  sub_1A2C0(v133, &type metadata accessor for AppPunchOutFlow);
  (*(v119 + 8))(v120, v111);
LABEL_10:
  sub_51C0(v93, &qword_6B988, &qword_530B0);
  (*(v151 + 8))(v149, v152);
  sub_253C(v154);
  sub_8A94();
}

void sub_19284()
{
  sub_13C8C();
  v1 = v0;
  v127 = v2;
  v4 = v3;
  v120 = type metadata accessor for ConfirmationFlowConfigModel();
  v5 = sub_569C(v120);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_1A3A0();
  v121 = v8;
  sub_13B48();
  v126 = sub_50884();
  v9 = sub_569C(v126);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_1A3A0();
  v125 = v12;
  sub_13B48();
  v13 = sub_50B04();
  v123 = sub_8558(v13);
  v124 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v123);
  sub_EE34();
  v119 = v17;
  sub_13B08();
  __chkstk_darwin(v18);
  sub_13C5C();
  v122 = v19;
  v20 = sub_2208(&qword_6B998, qword_51850);
  sub_72B0(v20);
  v22 = *(v21 + 64);
  sub_72A4();
  __chkstk_darwin(v23);
  v25 = &v117 - v24;
  v26 = sub_2208(&qword_6B988, &qword_530B0);
  v27 = sub_72B0(v26);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v117 - v34;
  __chkstk_darwin(v33);
  v37 = &v117 - v36;
  v39 = v0[3];
  v38 = v0[4];
  sub_1FE8(v0, v39);
  (*(v38 + 8))(v141, v39, v38);
  memcpy(v142, v4, sizeof(v142));
  if (sub_E51C(v142) == 1)
  {
    v40 = v127[3];
    v41 = v127[4];
    sub_1A3F4(v127, v40);
    v42 = sub_50804();
    sub_28E0(v25, 1, 1, v42);
    (*(v41 + 24))(v25, v40, v41);
    sub_51C0(v25, &qword_6B998, qword_51850);
    sub_1A160(v35, v32, &qword_6B988, &qword_530B0);
    sub_23BC(v0, v143);
    v43 = v125;
    sub_50874();
    sub_1A388();
    sub_1A318(v44, 255, v45);
    sub_4FF04();
    sub_1A370();
    sub_1A2C0(v43, v46);
    v47 = v35;
  }

  else
  {
    v118 = v35;
    memcpy(v143, v142, 0x80uLL);
    v48 = v127[3];
    v49 = v127[4];
    sub_1A3F4(v127, v48);
    v50 = v143[13];
    v51 = v4;
    v52 = v4;
    v53 = v143[12];
    sub_1A160(v52, v140, &qword_6C050, &qword_51E00);

    sub_2970();
    sub_507F4();
    sub_50804();
    sub_13D50();
    sub_28E0(v54, v55, v56, v57);
    (*(v49 + 24))(v25, v48, v49);
    sub_51C0(v25, &qword_6B998, qword_51850);
    sub_1A3C4();
    v58 = v37;
    if (sub_500D4())
    {
      goto LABEL_13;
    }

    sub_1A3C4();
    if (sub_500C4())
    {
      goto LABEL_13;
    }

    sub_1A3C4();
    if (sub_500B4())
    {
      goto LABEL_13;
    }

    sub_1A3C4();
    if (sub_500A4())
    {
      goto LABEL_13;
    }

    v59 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v59 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (!v59)
    {
LABEL_13:
      v106 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v107 = v123;
      v108 = v124;
      v109 = v122;
      (*(v124 + 16))(v122, v106, v123);
      v110 = sub_50AF4();
      v111 = sub_50BD4();
      if (sub_EF4C(v111))
      {
        v112 = sub_5718();
        *v112 = 0;
        _os_log_impl(&dword_0, v110, v111, "#EmergencyOfferCallFlow No resource available on HomePod, ATV, Car, or Watch, offering call or websearch.", v112, 2u);
        sub_5674();
      }

      (*(v108 + 8))(v109, v107);
      sub_1A160(v58, v118, &qword_6B988, &qword_530B0);
      sub_23BC(v1, v140);
      sub_50994();
      sub_51C0(v51, &qword_6C050, &qword_51E00);
      v113 = v125;
      sub_50874();
      sub_1A388();
      sub_1A318(v114, 255, v115);
      sub_4FF04();
      sub_1A370();
      sub_1A2C0(v113, v116);
      v47 = v58;
    }

    else
    {
      v127 = v53;
      v60 = sub_50AE4();
      sub_2970();
      swift_beginAccess();
      v61 = v123;
      v62 = v119;
      (*(v124 + 16))(v119, v60, v123);
      v63 = sub_50AF4();
      v64 = sub_50BD4();
      v65 = v1;
      if (sub_EF4C(v64))
      {
        *sub_5718() = 0;
        sub_1A4BC(&dword_0, v66, v64, "#EmergencyOfferCallFlow No resource available, offering punchout web search");
        sub_5674();
      }

      (*(v124 + 8))(v62, v61);
      v67 = *(v1 + 24);
      v68 = *(v1 + 32);
      sub_1A3F4(v65, v65[3]);
      v69 = *(v68 + 16);

      v69(&v140[2], v67, v68);
      v140[0] = v127;
      v140[1] = v50;
      sub_1A1BC();
      v70 = sub_4FF04();
      sub_1A210(v140);
      v71 = v37;
      v72 = v121;
      sub_1A160(v71, v121, &qword_6B988, &qword_530B0);
      v73 = sub_1FE8(v65 + 5, v65[8])[1];
      v74 = v120;
      v75 = v120[5];

      sub_25110();

      *(v72 + v74[6]) = v70;
      *(v72 + v74[7]) = 4;
      *(v72 + v74[8]) = 1;
      *(v72 + v74[9]) = 1;
      sub_23BC(v65, v138);
      sub_23BC((v65 + 5), v137);
      sub_5260((v65 + 10), v135);
      sub_52BC(v137, v137[3]);
      v127 = &v117;
      sub_5620();
      v77 = *(v76 + 64);
      __chkstk_darwin(v78);
      sub_5630();
      v80 = sub_1A4A4(v79);
      v81(v80);
      memcpy(v139, v70, sizeof(v139));
      v133 = v74;
      v134 = &off_66AB0;
      sub_530C(v132);
      sub_1A40C();
      sub_1A264(v72, v82, v83);
      v126 = v58;
      v131[3] = &type metadata for EmergencyCATProvider;
      v131[4] = &off_66C88;
      sub_1A498();
      v131[0] = swift_allocObject();
      memcpy((v131[0] + 16), v139, 0x70uLL);
      type metadata accessor for EmergencyConfirmationFlow();
      v84 = swift_allocObject();
      sub_52BC(v132, v133);
      sub_5620();
      v86 = *(v85 + 64);
      __chkstk_darwin(v87);
      sub_5630();
      v90 = v89 - v88;
      (*(v91 + 16))(v89 - v88);
      sub_52BC(v131, &type metadata for EmergencyCATProvider);
      sub_5620();
      v93 = *(v92 + 64);
      __chkstk_darwin(v94);
      sub_5630();
      v97 = (v96 - v95);
      (*(v98 + 16))(v96 - v95);
      memcpy(v140, v97, 0x70uLL);
      v129 = v74;
      v130 = &off_66AB0;
      v99 = sub_530C(&v128);
      sub_1A0FC(v90, v99);
      *(v84 + 256) = &type metadata for EmergencyCATProvider;
      *(v84 + 264) = &off_66C88;
      sub_1A498();
      v100 = swift_allocObject();
      *(v84 + 232) = v100;
      memcpy((v100 + 16), v140, 0x70uLL);
      memcpy((v84 + 24), v143, 0x80uLL);
      sub_546C(&v128, v84 + 152);
      sub_546C(v138, v84 + 192);
      v101 = v135[1];
      *(v84 + 272) = v135[0];
      *(v84 + 288) = v101;
      v102 = v136;
      *(v84 + 16) = 0;
      *(v84 + 312) = 0;
      *(v84 + 320) = 0;
      *(v84 + 304) = v102;
      sub_253C(v131);
      sub_253C(v132);
      sub_253C(v137);
      *&v138[0] = v84;
      sub_1A440();
      sub_1A318(v103, 255, v104);
      sub_4FF04();

      sub_1A428();
      sub_1A2C0(v72, v105);
      v47 = v126;
    }
  }

  sub_51C0(v47, &qword_6B988, &qword_530B0);
  sub_253C(v141);
  sub_8A94();
}