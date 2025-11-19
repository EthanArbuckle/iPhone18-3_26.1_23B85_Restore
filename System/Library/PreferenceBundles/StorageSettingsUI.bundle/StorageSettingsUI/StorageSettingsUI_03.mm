uint64_t sub_51934()
{
  v0 = sub_147EC(&unk_B8240, &qword_88F50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_81AB8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_68AE4(0, 0, v3, &unk_8A660, v7);
  }

  return result;
}

uint64_t sub_51A74()
{
  [*(*(v0 + 16) + 112) startMonitor];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_51AE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_147EC(&unk_B8240, &qword_88F50);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for Application();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = sub_81928();
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v18 = sub_34B30(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_7:
    v23 = 0x8000000000000000;
    goto LABEL_8;
  }

  sub_208C8(*(a1 + 56) + *(v9 + 72) * v18, v15);
  v21 = *(v15 + 6);
  v22 = *(v15 + 7);
  sub_2095C(v15);
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
LABEL_6:

    goto LABEL_7;
  }

LABEL_8:
  *(v2 + 144) = v23;
  v24 = sub_81928();
  if (!*(a1 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v26 = sub_34B30(v24, v25);
  v28 = v27;

  if (v28)
  {
    sub_208C8(*(a1 + 56) + *(v9 + 72) * v26, v13);
    v29 = *(v13 + 6);
    v30 = *(v13 + 7);
    sub_2095C(v13);
    v31 = v29 + v30;
    if (!__OFADD__(v29, v30))
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  v31 = 0x8000000000000000;
LABEL_15:
  *(v2 + 152) = v31;
  v32 = sub_81AB8();
  (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  v33 = sub_3CA84();
  v34 = swift_allocObject();
  v34[2] = v2;
  v34[3] = v33;
  v34[4] = v2;
  swift_retain_n();
  sub_68AE4(0, 0, v7, &unk_8A628, v34);
}

uint64_t sub_51D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v6 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_51E24, a4, 0);
}

uint64_t sub_51E24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_81AB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_68AE4(0, 0, v2, &unk_8A630, v4);

  v5 = v0[1];

  return v5();
}

id sub_51F24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 detailClass] && (swift_getObjCClassMetadata(), sub_1A7F4(0, &unk_B9300, UIViewController_ptr), (v5 = swift_dynamicCastMetatype()) != 0))
  {
    v55 = v5;
  }

  else
  {
    v6 = [a1 enableButtonTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_81928();
      v57 = v9;
      v58 = v8;

      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = a1;
      v56 = v10;

      v11 = a1;
      v54 = &unk_8A618;
      v55 = 0;
      goto LABEL_8;
    }

    v55 = 0;
  }

  v54 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
LABEL_8:
  [a1 progress];
  if (v12 == 1.0)
  {
    v53 = 1;
    *&v13 = 1;
  }

  else
  {
    [a1 progress];
    if (v14 == 0.0)
    {
      v53 = 1;
      v13 = 0.0;
    }

    else
    {
      [a1 progress];
      v53 = 0;
      v13 = v15;
    }
  }

  v16 = [a1 confirmationText];
  if (v16)
  {
    v17 = v16;
    v18 = sub_81928();
    v20 = v19;

    v21 = [a1 confirmationButtonTitle];
    if (v21)
    {
      v22 = v21;
      v23 = sub_81928();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v48 = v25;
    v49 = v23;
    v52 = [a1 mayCauseDataLoss];
    v50 = v20;
    v51 = v18;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  v26 = [a1 identifier];
  v27 = sub_81928();
  v46 = v28;
  v47 = v27;

  v29 = [a1 bundleID];
  v45 = sub_81928();
  v31 = v30;

  v32 = [a1 title];
  v33 = sub_81928();
  v35 = v34;

  v36 = [a1 bundleID];
  v37 = sub_81928();
  v39 = v38;

  v40 = [a1 explanaition];
  v41 = sub_81928();
  v43 = v42;

  result = [a1 gain];
  *a2 = v47;
  *(a2 + 8) = v46;
  *(a2 + 16) = v45;
  *(a2 + 24) = v31;
  *(a2 + 32) = v33;
  *(a2 + 40) = v35;
  *(a2 + 48) = v37;
  *(a2 + 56) = v39;
  *(a2 + 64) = 0;
  *(a2 + 72) = v37;
  *(a2 + 80) = v39;
  *(a2 + 88) = v41;
  *(a2 + 96) = v43;
  *(a2 + 104) = result;
  *(a2 + 112) = v49;
  *(a2 + 120) = v48;
  *(a2 + 128) = v51;
  *(a2 + 136) = v50;
  *(a2 + 144) = v52;
  *(a2 + 152) = v55;
  *(a2 + 160) = v58;
  *(a2 + 168) = v57;
  *(a2 + 176) = v13;
  *(a2 + 184) = v53;
  *(a2 + 192) = v54;
  *(a2 + 200) = v56;
  *(a2 + 208) = 0;
  return result;
}

uint64_t sub_5229C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_522C0, a1, 0);
}

uint64_t sub_522C0()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = [*(v0 + 24) identifier];
  if (!v2)
  {
    sub_81928();
    v2 = sub_818E8();
  }

  [v1 enableTip:v2];

  v3 = *(v0 + 8);

  return v3(0xBFF0000000000000, 0);
}

uint64_t sub_5237C(uint64_t a1, uint64_t a2)
{
  v3[241] = v2;
  v3[240] = a2;
  v3[239] = a1;
  return _swift_task_switch(sub_523A4, v2, 0);
}

uint64_t sub_523A4()
{
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1920);
  v3 = *(v0 + 1912);
  v4 = sub_516C0((v0 + 1744));
  v5 = sub_2659C((v0 + 1776), v3, v2);
  v7 = v6;
  memmove((v0 + 16), v6, 0xD1uLL);
  if (sub_3C268(v0 + 16) != 1)
  {
    v7[22] = 0xBFF0000000000000;
    *(v7 + 184) = 0;
  }

  v8 = (v0 + 232);
  (v5)(v0 + 1776, 0);
  v4((v0 + 1744), 0);
  v9 = *(v0 + 1928);
  swift_beginAccess();
  v10 = *(v9 + 120);
  if (*(v10 + 16))
  {
    v11 = *(v0 + 1920);
    v12 = *(v0 + 1912);

    v13 = sub_34B30(v12, v11);
    if (v14)
    {
      v15 = (*(v10 + 56) + 216 * v13);
      v16 = v15[1];
      *(v0 + 1312) = *v15;
      *(v0 + 1328) = v16;
      v17 = v15[2];
      v18 = v15[3];
      v19 = v15[5];
      *(v0 + 1376) = v15[4];
      *(v0 + 1392) = v19;
      *(v0 + 1344) = v17;
      *(v0 + 1360) = v18;
      v20 = v15[6];
      v21 = v15[7];
      v22 = v15[9];
      *(v0 + 1440) = v15[8];
      *(v0 + 1456) = v22;
      *(v0 + 1408) = v20;
      *(v0 + 1424) = v21;
      v23 = v15[10];
      v24 = v15[11];
      v25 = v15[12];
      *(v0 + 1520) = *(v15 + 208);
      *(v0 + 1488) = v24;
      *(v0 + 1504) = v25;
      *(v0 + 1472) = v23;
      memmove((v0 + 232), v15, 0xD1uLL);
      sub_3C168(v0 + 1312, v0 + 1528);

      nullsub_1(v0 + 232);
      goto LABEL_8;
    }
  }

  sub_1A6B0(v0 + 232);
LABEL_8:
  v26 = *(v0 + 408);
  *(v0 + 608) = *(v0 + 392);
  *(v0 + 624) = v26;
  *(v0 + 640) = *(v0 + 424);
  *(v0 + 656) = *(v0 + 440);
  v27 = *(v0 + 344);
  *(v0 + 544) = *(v0 + 328);
  *(v0 + 560) = v27;
  v28 = *(v0 + 376);
  *(v0 + 576) = *(v0 + 360);
  *(v0 + 592) = v28;
  v29 = *(v0 + 280);
  *(v0 + 480) = *(v0 + 264);
  *(v0 + 496) = v29;
  v30 = *(v0 + 312);
  *(v0 + 512) = *(v0 + 296);
  *(v0 + 528) = v30;
  v31 = *(v0 + 248);
  *(v0 + 448) = *v8;
  *(v0 + 464) = v31;
  if (sub_3C268(v0 + 448) == 1)
  {
    v32 = *(v0 + 408);
    *(v0 + 1256) = *(v0 + 392);
    *(v0 + 1272) = v32;
    *(v0 + 1288) = *(v0 + 424);
    *(v0 + 1304) = *(v0 + 440);
    v33 = *(v0 + 344);
    *(v0 + 1192) = *(v0 + 328);
    *(v0 + 1208) = v33;
    v34 = *(v0 + 376);
    *(v0 + 1224) = *(v0 + 360);
    *(v0 + 1240) = v34;
    v35 = *(v0 + 280);
    *(v0 + 1128) = *(v0 + 264);
    *(v0 + 1144) = v35;
    v36 = *(v0 + 312);
    *(v0 + 1160) = *(v0 + 296);
    *(v0 + 1176) = v36;
    v37 = *(v0 + 248);
    *(v0 + 1096) = *v8;
    *(v0 + 1112) = v37;
    sub_14FD4(v0 + 1096, &qword_B8350, &qword_8A5D0);
    v38 = 0;
    v39 = &unk_8A5F8;
  }

  else
  {
    v41 = *(v0 + 424);
    v40 = *(v0 + 432);
    v42 = *(v0 + 408);
    *(v0 + 824) = *(v0 + 392);
    *(v0 + 840) = v42;
    *(v0 + 856) = *(v0 + 424);
    *(v0 + 872) = *(v0 + 440);
    v43 = *(v0 + 344);
    *(v0 + 760) = *(v0 + 328);
    *(v0 + 776) = v43;
    v44 = *(v0 + 376);
    *(v0 + 792) = *(v0 + 360);
    *(v0 + 808) = v44;
    v45 = *(v0 + 280);
    *(v0 + 696) = *(v0 + 264);
    *(v0 + 712) = v45;
    v46 = *(v0 + 312);
    *(v0 + 728) = *(v0 + 296);
    *(v0 + 744) = v46;
    v47 = *(v0 + 248);
    *(v0 + 664) = *v8;
    *(v0 + 680) = v47;
    sub_55AC0(v41);
    sub_14FD4(v0 + 664, &qword_B8350, &qword_8A5D0);
    v39 = &unk_8A5F8;
    if (v41)
    {
      v38 = swift_allocObject();
      *(v38 + 16) = v41;
      *(v38 + 24) = v40;
      v39 = &unk_8A608;
    }

    else
    {
      v38 = 0;
    }
  }

  *(v0 + 1936) = v38;
  v51 = (v39 + *v39);
  v48 = v39[1];
  v49 = swift_task_alloc();
  *(v0 + 1944) = v49;
  *v49 = v0;
  v49[1] = sub_5277C;

  return v51(v0 + 1896);
}

uint64_t sub_5277C()
{
  v1 = *v0;
  v2 = *(*v0 + 1944);
  v3 = *(*v0 + 1936);
  v4 = *(*v0 + 1928);
  v6 = *v0;

  *(v1 + 1952) = *(v1 + 1896);
  *(v1 + 225) = *(v1 + 1904);

  return _swift_task_switch(sub_528D8, v4, 0);
}

uint64_t sub_528D8()
{
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1920);
  v3 = *(v0 + 1912);
  v4 = sub_516C0((v0 + 1808));
  v5 = sub_2659C((v0 + 1840), v3, v2);
  v7 = v6;
  memmove((v0 + 880), v6, 0xD1uLL);
  if (sub_3C268(v0 + 880) != 1)
  {
    v8 = *(v0 + 225);
    v7[22] = *(v0 + 1952);
    *(v7 + 184) = v8;
  }

  (v5)(v0 + 1840, 0);
  v4((v0 + 1808), 0);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_529D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_52ABC;

  return v6();
}

uint64_t sub_52ABC(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v9 = *v2;

  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_52C00()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_52C24()
{
  *(v1 + 2176) = v0;
  v2 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  *(v1 + 2184) = swift_task_alloc();

  return _swift_task_switch(sub_52CC0, v0, 0);
}

uint64_t sub_52CC0()
{
  v1 = [objc_opt_self() ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeProduction];
  v2 = [v1 ams_activeiTunesAccount];

  if (v2)
  {
    v3 = [v2 isActive];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_818E8();
  v5 = sub_818E8();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, 0);

  if (!v3 || AppBooleanValue)
  {
    v9 = *(v0 + 2176);
    if (*(v9 + 216))
    {
      v10 = *(v0 + 2176);
      v11 = sub_540AC();
    }

    else
    {
      v12 = *(v0 + 2184);
      v11 = *(v9 + 208);
      v13 = sub_81AB8();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      v14 = sub_3CA84();
      v15 = swift_allocObject();
      v15[2] = v9;
      v15[3] = v14;
      v15[4] = v9;
      swift_retain_n();
      sub_68AE4(0, 0, v12, &unk_8A5E0, v15);
    }

    if (v11 < 1)
    {
      v16 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_19850(v11, v0 + 664);
      v16 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_3421C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_3421C((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[216 * v18];
      v20 = *(v0 + 680);
      *(v19 + 2) = *(v0 + 664);
      *(v19 + 3) = v20;
      v21 = *(v0 + 696);
      v22 = *(v0 + 712);
      v23 = *(v0 + 744);
      *(v19 + 6) = *(v0 + 728);
      *(v19 + 7) = v23;
      *(v19 + 4) = v21;
      *(v19 + 5) = v22;
      v24 = *(v0 + 760);
      v25 = *(v0 + 776);
      v26 = *(v0 + 808);
      *(v19 + 10) = *(v0 + 792);
      *(v19 + 11) = v26;
      *(v19 + 8) = v24;
      *(v19 + 9) = v25;
      v27 = *(v0 + 824);
      v28 = *(v0 + 840);
      v29 = *(v0 + 856);
      v19[240] = *(v0 + 872);
      *(v19 + 13) = v28;
      *(v19 + 14) = v29;
      *(v19 + 12) = v27;
    }

    sub_19B94(v0 + 232);
    if (sub_3C268(v0 + 232) != 1)
    {
      v30 = *(v0 + 408);
      *(v0 + 176) = *(v0 + 392);
      *(v0 + 192) = v30;
      *(v0 + 208) = *(v0 + 424);
      *(v0 + 224) = *(v0 + 440);
      v31 = *(v0 + 344);
      *(v0 + 112) = *(v0 + 328);
      *(v0 + 128) = v31;
      v32 = *(v0 + 376);
      *(v0 + 144) = *(v0 + 360);
      *(v0 + 160) = v32;
      v33 = *(v0 + 280);
      *(v0 + 48) = *(v0 + 264);
      *(v0 + 64) = v33;
      v34 = *(v0 + 312);
      *(v0 + 80) = *(v0 + 296);
      *(v0 + 96) = v34;
      v35 = *(v0 + 248);
      *(v0 + 16) = *(v0 + 232);
      *(v0 + 32) = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_3421C(0, *(v16 + 2) + 1, 1, v16);
      }

      v37 = *(v16 + 2);
      v36 = *(v16 + 3);
      if (v37 >= v36 >> 1)
      {
        v16 = sub_3421C((v36 > 1), v37 + 1, 1, v16);
      }

      *(v16 + 2) = v37 + 1;
      v38 = &v16[216 * v37];
      v39 = *(v0 + 32);
      *(v38 + 2) = *(v0 + 16);
      *(v38 + 3) = v39;
      v40 = *(v0 + 48);
      v41 = *(v0 + 64);
      v42 = *(v0 + 96);
      *(v38 + 6) = *(v0 + 80);
      *(v38 + 7) = v42;
      *(v38 + 4) = v40;
      *(v38 + 5) = v41;
      v43 = *(v0 + 112);
      v44 = *(v0 + 128);
      v45 = *(v0 + 160);
      *(v38 + 10) = *(v0 + 144);
      *(v38 + 11) = v45;
      *(v38 + 8) = v43;
      *(v38 + 9) = v44;
      v46 = *(v0 + 176);
      v47 = *(v0 + 192);
      v48 = *(v0 + 208);
      v38[240] = *(v0 + 224);
      *(v38 + 13) = v47;
      *(v38 + 14) = v48;
      *(v38 + 12) = v46;
    }

    *(v0 + 2200) = v16;
    v49 = *(v0 + 2176);
    v50 = sub_3CA84();
    v51 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v52 = swift_task_alloc();
    *(v0 + 2208) = v52;
    v53 = sub_147EC(&qword_B8350, &qword_8A5D0);
    *v52 = v0;
    v52[1] = sub_53700;
    v54 = *(v0 + 2176);

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1528, v49, v50, 0xD000000000000016, 0x8000000000095CE0, sub_558E4, v54, v53);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 2192) = v7;
    *v7 = v0;
    v7[1] = sub_531C8;

    return sub_18D7C(v0 + 880);
  }
}

uint64_t sub_531C8()
{
  v1 = *(*v0 + 2192);
  v2 = *(*v0 + 2176);
  v4 = *v0;

  return _swift_task_switch(sub_532D8, v2, 0);
}

uint64_t sub_532D8()
{
  v1 = sub_3421C(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_3421C((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[216 * v3];
  v5 = *(v0 + 896);
  *(v4 + 2) = *(v0 + 880);
  *(v4 + 3) = v5;
  v6 = *(v0 + 912);
  v7 = *(v0 + 928);
  v8 = *(v0 + 960);
  *(v4 + 6) = *(v0 + 944);
  *(v4 + 7) = v8;
  *(v4 + 4) = v6;
  *(v4 + 5) = v7;
  v9 = *(v0 + 976);
  v10 = *(v0 + 992);
  v11 = *(v0 + 1024);
  *(v4 + 10) = *(v0 + 1008);
  *(v4 + 11) = v11;
  *(v4 + 8) = v9;
  *(v4 + 9) = v10;
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1056);
  v14 = *(v0 + 1072);
  v4[240] = *(v0 + 1088);
  *(v4 + 13) = v13;
  *(v4 + 14) = v14;
  *(v4 + 12) = v12;
  v15 = *(v0 + 2176);
  if (*(v15 + 216))
  {
    v16 = sub_540AC();
  }

  else
  {
    v17 = *(v0 + 2184);
    v16 = *(v15 + 208);
    v18 = sub_81AB8();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = sub_3CA84();
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v19;
    v20[4] = v15;
    swift_retain_n();
    sub_68AE4(0, 0, v17, &unk_8A5E0, v20);
  }

  if (v16 >= 1)
  {
    sub_19850(v16, v0 + 664);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_3421C(0, *(v1 + 2) + 1, 1, v1);
    }

    v22 = *(v1 + 2);
    v21 = *(v1 + 3);
    if (v22 >= v21 >> 1)
    {
      v1 = sub_3421C((v21 > 1), v22 + 1, 1, v1);
    }

    *(v1 + 2) = v22 + 1;
    v23 = &v1[216 * v22];
    v24 = *(v0 + 680);
    *(v23 + 2) = *(v0 + 664);
    *(v23 + 3) = v24;
    v25 = *(v0 + 696);
    v26 = *(v0 + 712);
    v27 = *(v0 + 744);
    *(v23 + 6) = *(v0 + 728);
    *(v23 + 7) = v27;
    *(v23 + 4) = v25;
    *(v23 + 5) = v26;
    v28 = *(v0 + 760);
    v29 = *(v0 + 776);
    v30 = *(v0 + 808);
    *(v23 + 10) = *(v0 + 792);
    *(v23 + 11) = v30;
    *(v23 + 8) = v28;
    *(v23 + 9) = v29;
    v31 = *(v0 + 824);
    v32 = *(v0 + 840);
    v33 = *(v0 + 856);
    v23[240] = *(v0 + 872);
    *(v23 + 13) = v32;
    *(v23 + 14) = v33;
    *(v23 + 12) = v31;
  }

  sub_19B94(v0 + 232);
  if (sub_3C268(v0 + 232) != 1)
  {
    v34 = *(v0 + 408);
    *(v0 + 176) = *(v0 + 392);
    *(v0 + 192) = v34;
    *(v0 + 208) = *(v0 + 424);
    *(v0 + 224) = *(v0 + 440);
    v35 = *(v0 + 344);
    *(v0 + 112) = *(v0 + 328);
    *(v0 + 128) = v35;
    v36 = *(v0 + 376);
    *(v0 + 144) = *(v0 + 360);
    *(v0 + 160) = v36;
    v37 = *(v0 + 280);
    *(v0 + 48) = *(v0 + 264);
    *(v0 + 64) = v37;
    v38 = *(v0 + 312);
    *(v0 + 80) = *(v0 + 296);
    *(v0 + 96) = v38;
    v39 = *(v0 + 248);
    *(v0 + 16) = *(v0 + 232);
    *(v0 + 32) = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_3421C(0, *(v1 + 2) + 1, 1, v1);
    }

    v41 = *(v1 + 2);
    v40 = *(v1 + 3);
    if (v41 >= v40 >> 1)
    {
      v1 = sub_3421C((v40 > 1), v41 + 1, 1, v1);
    }

    *(v1 + 2) = v41 + 1;
    v42 = &v1[216 * v41];
    v43 = *(v0 + 32);
    *(v42 + 2) = *(v0 + 16);
    *(v42 + 3) = v43;
    v44 = *(v0 + 48);
    v45 = *(v0 + 64);
    v46 = *(v0 + 96);
    *(v42 + 6) = *(v0 + 80);
    *(v42 + 7) = v46;
    *(v42 + 4) = v44;
    *(v42 + 5) = v45;
    v47 = *(v0 + 112);
    v48 = *(v0 + 128);
    v49 = *(v0 + 160);
    *(v42 + 10) = *(v0 + 144);
    *(v42 + 11) = v49;
    *(v42 + 8) = v47;
    *(v42 + 9) = v48;
    v50 = *(v0 + 176);
    v51 = *(v0 + 192);
    v52 = *(v0 + 208);
    v42[240] = *(v0 + 224);
    *(v42 + 13) = v51;
    *(v42 + 14) = v52;
    *(v42 + 12) = v50;
  }

  *(v0 + 2200) = v1;
  v53 = *(v0 + 2176);
  v54 = sub_3CA84();
  v55 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v56 = swift_task_alloc();
  *(v0 + 2208) = v56;
  v57 = sub_147EC(&qword_B8350, &qword_8A5D0);
  *v56 = v0;
  v56[1] = sub_53700;
  v58 = *(v0 + 2176);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1528, v53, v54, 0xD000000000000016, 0x8000000000095CE0, sub_558E4, v58, v57);
}

uint64_t sub_53700()
{
  v1 = *(*v0 + 2208);
  v2 = *(*v0 + 2176);
  v4 = *v0;

  return _swift_task_switch(sub_53810, v2, 0);
}

uint64_t sub_53810()
{
  *(v0 + 1520) = *(v0 + 1736);
  v1 = *(v0 + 1704);
  *(v0 + 1472) = *(v0 + 1688);
  *(v0 + 1488) = v1;
  *(v0 + 1504) = *(v0 + 1720);
  v2 = *(v0 + 1640);
  *(v0 + 1408) = *(v0 + 1624);
  *(v0 + 1424) = v2;
  v3 = *(v0 + 1672);
  *(v0 + 1440) = *(v0 + 1656);
  *(v0 + 1456) = v3;
  v4 = *(v0 + 1576);
  *(v0 + 1344) = *(v0 + 1560);
  *(v0 + 1360) = v4;
  v5 = *(v0 + 1608);
  *(v0 + 1376) = *(v0 + 1592);
  *(v0 + 1392) = v5;
  v6 = *(v0 + 1544);
  *(v0 + 1312) = *(v0 + 1528);
  *(v0 + 1328) = v6;
  v7 = *(v0 + 1488);
  *(v0 + 1256) = *(v0 + 1472);
  *(v0 + 1272) = v7;
  *(v0 + 1288) = *(v0 + 1504);
  *(v0 + 1304) = *(v0 + 1520);
  v8 = *(v0 + 1424);
  *(v0 + 1192) = *(v0 + 1408);
  *(v0 + 1208) = v8;
  v9 = *(v0 + 1456);
  *(v0 + 1224) = *(v0 + 1440);
  *(v0 + 1240) = v9;
  v10 = *(v0 + 1360);
  *(v0 + 1128) = *(v0 + 1344);
  *(v0 + 1144) = v10;
  v11 = *(v0 + 1392);
  *(v0 + 1160) = *(v0 + 1376);
  *(v0 + 1176) = v11;
  v12 = *(v0 + 1328);
  *(v0 + 1096) = *(v0 + 1312);
  *(v0 + 1112) = v12;
  if (sub_3C268(v0 + 1096) == 1)
  {
    v13 = *(v0 + 2200);
    if (!STStorageIsInternalInstall())
    {
LABEL_16:
      sub_14FD4(v0 + 1312, &qword_B8350, &qword_8A5D0);
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *(v0 + 2200);
    v15 = *(v0 + 1488);
    *(v0 + 1904) = *(v0 + 1472);
    *(v0 + 1920) = v15;
    *(v0 + 1936) = *(v0 + 1504);
    *(v0 + 1952) = *(v0 + 1520);
    v16 = *(v0 + 1424);
    *(v0 + 1840) = *(v0 + 1408);
    *(v0 + 1856) = v16;
    v17 = *(v0 + 1456);
    *(v0 + 1872) = *(v0 + 1440);
    *(v0 + 1888) = v17;
    v18 = *(v0 + 1360);
    *(v0 + 1776) = *(v0 + 1344);
    *(v0 + 1792) = v18;
    v19 = *(v0 + 1392);
    *(v0 + 1808) = *(v0 + 1376);
    *(v0 + 1824) = v19;
    v20 = *(v0 + 1328);
    *(v0 + 1744) = *(v0 + 1312);
    *(v0 + 1760) = v20;
    sub_3C168(v0 + 1744, v0 + 1960);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 2200);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_3421C(0, *(v13 + 2) + 1, 1, *(v0 + 2200));
    }

    v23 = *(v13 + 2);
    v22 = *(v13 + 3);
    if (v23 >= v22 >> 1)
    {
      v13 = sub_3421C((v22 > 1), v23 + 1, 1, v13);
    }

    *(v13 + 2) = v23 + 1;
    v24 = &v13[216 * v23];
    v25 = *(v0 + 1112);
    *(v24 + 2) = *(v0 + 1096);
    *(v24 + 3) = v25;
    v26 = *(v0 + 1128);
    v27 = *(v0 + 1144);
    v28 = *(v0 + 1176);
    *(v24 + 6) = *(v0 + 1160);
    *(v24 + 7) = v28;
    *(v24 + 4) = v26;
    *(v24 + 5) = v27;
    v29 = *(v0 + 1192);
    v30 = *(v0 + 1208);
    v31 = *(v0 + 1240);
    *(v24 + 10) = *(v0 + 1224);
    *(v24 + 11) = v31;
    *(v24 + 8) = v29;
    *(v24 + 9) = v30;
    v32 = *(v0 + 1256);
    v33 = *(v0 + 1272);
    v34 = *(v0 + 1288);
    v24[240] = *(v0 + 1304);
    *(v24 + 13) = v33;
    *(v24 + 14) = v34;
    *(v24 + 12) = v32;
    if (!STStorageIsInternalInstall())
    {
      goto LABEL_16;
    }
  }

  v35 = *(*(v0 + 2176) + 144);
  if (v35 == 0x8000000000000000 || (v35 - 0x4A817C801) >= 0xFFFFFFFB938301FFLL)
  {
    goto LABEL_16;
  }

  sub_18B08(v35, v0 + 448);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_3421C(0, *(v13 + 2) + 1, 1, v13);
  }

  v37 = *(v13 + 2);
  v36 = *(v13 + 3);
  if (v37 >= v36 >> 1)
  {
    v13 = sub_3421C((v36 > 1), v37 + 1, 1, v13);
  }

  sub_14FD4(v0 + 1312, &qword_B8350, &qword_8A5D0);
  *(v13 + 2) = v37 + 1;
  v38 = &v13[216 * v37];
  v39 = *(v0 + 464);
  *(v38 + 2) = *(v0 + 448);
  *(v38 + 3) = v39;
  v40 = *(v0 + 528);
  v42 = *(v0 + 480);
  v41 = *(v0 + 496);
  *(v38 + 6) = *(v0 + 512);
  *(v38 + 7) = v40;
  *(v38 + 4) = v42;
  *(v38 + 5) = v41;
  v43 = *(v0 + 592);
  v45 = *(v0 + 544);
  v44 = *(v0 + 560);
  *(v38 + 10) = *(v0 + 576);
  *(v38 + 11) = v43;
  *(v38 + 8) = v45;
  *(v38 + 9) = v44;
  v47 = *(v0 + 624);
  v46 = *(v0 + 640);
  v48 = *(v0 + 608);
  v38[240] = *(v0 + 656);
  *(v38 + 13) = v47;
  *(v38 + 14) = v46;
  *(v38 + 12) = v48;
LABEL_17:
  v49 = *(v0 + 2184);

  v50 = *(v0 + 8);

  return v50(v13);
}

void sub_53B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B92F8, &qword_8A5E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 128);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_55A34;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_53FA0;
  aBlock[3] = &unk_AC0A8;
  v12 = _Block_copy(aBlock);

  [v9 fetchProposedTipWithCompletionHandler:v12];
  _Block_release(v12);
}

void sub_53D34(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_1A2B0(v2, v11);
    nullsub_1(v11);
    sub_147EC(&qword_B92F8, &qword_8A5E8);
    sub_81A68();
  }

  else
  {
    if (qword_B7850 != -1)
    {
      swift_once();
    }

    v4 = sub_80BC8();
    sub_19818(v4, qword_BCF70);
    swift_errorRetain();
    v5 = sub_80BB8();
    v6 = sub_81B18();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v9 = _swift_stdlib_bridgeErrorToNSError();
        v10 = v9;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *(v7 + 4) = v9;
      *v8 = v10;
      _os_log_impl(&dword_0, v5, v6, "Failed to retrieve maps recommendation with error %@", v7, 0xCu);
      sub_14FD4(v8, &qword_B7BA8, &qword_8A5F0);
    }

    sub_1A6B0(v11);
    sub_147EC(&qword_B92F8, &qword_8A5E8);
    sub_81A68();
  }
}

void sub_53FA0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_5404C()
{
  v1 = *(v0 + 16);
  sub_540AC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_540AC()
{
  v1 = sub_147EC(&unk_B8240, &qword_88F50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = aBlock - v3;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = sub_818E8();
  aBlock[4] = sub_55810;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2F28C;
  aBlock[3] = &unk_AC008;
  v7 = _Block_copy(aBlock);

  CacheManagementEnumerateAssets();
  _Block_release(v7);

  v8 = *(v0 + 208);
  LOBYTE(v7) = *(v0 + 216);
  swift_beginAccess();
  v9 = *(v5 + 16);
  if ((v7 & 1) != 0 || v8 != v9)
  {
    *(v0 + 208) = v9;
    *(v0 + 216) = 0;
    v10 = sub_81AB8();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v0;

    sub_68AE4(0, 0, v4, &unk_8A5C8, v11);

    v8 = *(v5 + 16);
  }

  return v8;
}

uint64_t sub_542E0(void *a1, uint64_t a2)
{
  v4 = [a1 identifier];
  v5 = sub_81928();
  v7 = v6;

  if (v5 == 0x6C7070612E6D6F63 && v7 == 0xEE007377656E2E65)
  {

    return 1;
  }

  v9 = sub_81E18();

  if (v9)
  {
    return 1;
  }

  if ([a1 purgeabilityScoreAtUrgency:3])
  {
    v10 = 0;
  }

  else
  {
    v10 = [a1 size];
  }

  result = swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = __OFADD__(v12, v10);
  v14 = &v10[v12];
  if (!v13)
  {
    *(a2 + 16) = v14;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_5440C()
{
  *(v1 + 1016) = v0;
  v2 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  *(v1 + 1024) = swift_task_alloc();

  return _swift_task_switch(sub_544A8, v0, 0);
}

uint64_t sub_544A8()
{
  v1 = v0[127];
  if (*(v1 + 200))
  {
    v2 = v0[128];

    v3 = v0[1];

    return v3();
  }

  else
  {
    *(v1 + 200) = 1;
    v5 = [*(v1 + 112) recommendations];
    sub_1A7F4(0, &qword_B8348, off_A91F8);
    sub_55120();
    v6 = sub_81AD8();

    sub_55188(v6);
    v8 = v7;

    v0[126] = v8;
    v9 = swift_task_alloc();
    v0[129] = v9;
    *v9 = v0;
    v9[1] = sub_54620;
    v10 = v0[127];

    return sub_52C24();
  }
}

uint64_t sub_54620(uint64_t a1)
{
  v2 = *(*v1 + 1032);
  v3 = *(*v1 + 1016);
  v5 = *v1;
  *(*v1 + 1040) = a1;

  return _swift_task_switch(sub_54738, v3, 0);
}

unint64_t sub_54738()
{
  result = sub_26C2C(*(v0 + 1040));
  v2 = *(v0 + 1008);
  v3 = *(v2 + 16);
  v77 = v2;
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 32;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      v27 = *(v5 + 16);
      *(v0 + 16) = *v5;
      *(v0 + 32) = v27;
      v28 = *(v5 + 32);
      v29 = *(v5 + 48);
      v30 = *(v5 + 80);
      *(v0 + 80) = *(v5 + 64);
      *(v0 + 96) = v30;
      *(v0 + 48) = v28;
      *(v0 + 64) = v29;
      v31 = *(v5 + 96);
      v32 = *(v5 + 112);
      v33 = *(v5 + 144);
      *(v0 + 144) = *(v5 + 128);
      *(v0 + 160) = v33;
      *(v0 + 112) = v31;
      *(v0 + 128) = v32;
      v34 = *(v5 + 160);
      v35 = *(v5 + 176);
      v36 = *(v5 + 192);
      *(v0 + 224) = *(v5 + 208);
      *(v0 + 192) = v35;
      *(v0 + 208) = v36;
      *(v0 + 176) = v34;
      v38 = *(v0 + 16);
      v37 = *(v0 + 24);
      sub_3C168(v0 + 16, v0 + 232);
      sub_3C168(v0 + 16, v0 + 448);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_34B30(v38, v37);
      v41 = _swiftEmptyDictionarySingleton[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_28;
      }

      v45 = v40;
      if (_swiftEmptyDictionarySingleton[3] < v44)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v61 = result;
      sub_38E8C();
      result = v61;
      if (v45)
      {
LABEL_3:
        v6 = _swiftEmptyDictionarySingleton[7] + 216 * result;
        v7 = *(v6 + 16);
        *(v0 + 664) = *v6;
        *(v0 + 680) = v7;
        v8 = *(v6 + 80);
        v10 = *(v6 + 32);
        v9 = *(v6 + 48);
        *(v0 + 728) = *(v6 + 64);
        *(v0 + 744) = v8;
        *(v0 + 696) = v10;
        *(v0 + 712) = v9;
        v11 = *(v6 + 144);
        v13 = *(v6 + 96);
        v12 = *(v6 + 112);
        *(v0 + 792) = *(v6 + 128);
        *(v0 + 808) = v11;
        *(v0 + 760) = v13;
        *(v0 + 776) = v12;
        v15 = *(v6 + 176);
        v14 = *(v6 + 192);
        v16 = *(v6 + 160);
        *(v0 + 872) = *(v6 + 208);
        *(v0 + 840) = v15;
        *(v0 + 856) = v14;
        *(v0 + 824) = v16;
        v17 = *(v0 + 32);
        *v6 = *(v0 + 16);
        *(v6 + 16) = v17;
        v18 = *(v0 + 48);
        v19 = *(v0 + 64);
        v20 = *(v0 + 96);
        *(v6 + 64) = *(v0 + 80);
        *(v6 + 80) = v20;
        *(v6 + 32) = v18;
        *(v6 + 48) = v19;
        v21 = *(v0 + 112);
        v22 = *(v0 + 128);
        v23 = *(v0 + 160);
        *(v6 + 128) = *(v0 + 144);
        *(v6 + 144) = v23;
        *(v6 + 96) = v21;
        *(v6 + 112) = v22;
        v24 = *(v0 + 176);
        v25 = *(v0 + 192);
        v26 = *(v0 + 208);
        *(v6 + 208) = *(v0 + 224);
        *(v6 + 176) = v25;
        *(v6 + 192) = v26;
        *(v6 + 160) = v24;
        sub_3C1C4(v0 + 664);
        result = sub_3C1C4(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      v47 = (_swiftEmptyDictionarySingleton[6] + 16 * result);
      *v47 = v38;
      v47[1] = v37;
      v48 = _swiftEmptyDictionarySingleton[7] + 216 * result;
      v49 = *(v0 + 224);
      v51 = *(v0 + 192);
      v50 = *(v0 + 208);
      *(v48 + 160) = *(v0 + 176);
      *(v48 + 176) = v51;
      *(v48 + 192) = v50;
      *(v48 + 208) = v49;
      v53 = *(v0 + 144);
      v52 = *(v0 + 160);
      v54 = *(v0 + 128);
      *(v48 + 96) = *(v0 + 112);
      *(v48 + 112) = v54;
      *(v48 + 128) = v53;
      *(v48 + 144) = v52;
      v56 = *(v0 + 80);
      v55 = *(v0 + 96);
      v57 = *(v0 + 64);
      *(v48 + 32) = *(v0 + 48);
      *(v48 + 48) = v57;
      *(v48 + 64) = v56;
      *(v48 + 80) = v55;
      v58 = *(v0 + 32);
      *v48 = *(v0 + 16);
      *(v48 + 16) = v58;

      result = sub_3C1C4(v0 + 16);
      v59 = _swiftEmptyDictionarySingleton[2];
      v43 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v43)
      {
        goto LABEL_29;
      }

      _swiftEmptyDictionarySingleton[2] = v60;
LABEL_4:
      ++v4;
      v5 += 216;
      v2 = v77;
      if (v3 == v4)
      {
        goto LABEL_16;
      }
    }

    sub_36D0C(v44, isUniquelyReferenced_nonNull_native);
    result = sub_34B30(v38, v37);
    if ((v45 & 1) != (v46 & 1))
    {

      return sub_81E38();
    }

LABEL_11:
    if (v45)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v62 = *(v0 + 1024);
  v63 = *(v0 + 1016);
  swift_beginAccess();
  v64 = *(v63 + 120);
  *(v63 + 120) = _swiftEmptyDictionarySingleton;

  v65 = sub_81AB8();
  v66 = *(*(v65 - 8) + 56);
  v66(v62, 1, 1, v65);
  v67 = sub_3CA84();
  v68 = swift_allocObject();
  v68[2] = v63;
  v68[3] = v67;
  v68[4] = v63;
  swift_retain_n();
  sub_68DE4(0, 0, v62, &unk_8A598, v68);

  if (v3)
  {
  }

  else
  {
    v69 = *(v0 + 1016);
    swift_beginAccess();
    sub_555C4(v69 + 160, v0 + 880);
    if (*(v0 + 904))
    {
      v70 = *(v0 + 1024);
      sub_3C978(v0 + 880, v0 + 920);
      sub_14FD4(v0 + 880, &qword_B8398, &qword_89420);
      v71 = *sub_22CB8((v0 + 920), *(v0 + 944));
      v66(v70, 1, 1, v65);
      sub_81A88();
      v72 = v71;
      v73 = sub_81A78();
      v74 = swift_allocObject();
      v74[2] = v73;
      v74[3] = &protocol witness table for MainActor;
      v74[4] = v72;
      v74[5] = v77;
      sub_68AE4(0, 0, v70, &unk_8A5A8, v74);

      sub_20FD0((v0 + 920));
    }

    else
    {

      sub_14FD4(v0 + 880, &qword_B8398, &qword_89420);
    }
  }

  *(*(v0 + 1016) + 200) = 0;
  v75 = *(v0 + 1024);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_54C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_16268;

  return sub_5440C();
}

uint64_t sub_54E20(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 320) = a1;
  *(v7 + 304) = a6;
  *(v7 + 312) = a7;
  *(v7 + 296) = a5;
  return _swift_task_switch(sub_54E48, a5, 0);
}

uint64_t sub_54E48()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = sub_516C0((v0 + 232));
  v5 = sub_2659C((v0 + 264), v2, v1);
  v7 = v6;
  memmove((v0 + 16), v6, 0xD1uLL);
  if (sub_3C268(v0 + 16) != 1)
  {
    v8 = *(v0 + 320);
    v9 = *&v8;
    if (v8 == 1.0)
    {
      v9 = 1;
    }

    v7[22] = v9;
    *(v7 + 184) = v8 == 1.0;
  }

  (v5)(v0 + 264, 0);
  v4((v0 + 232), 0);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_55088()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  sub_14FD4(v0 + 160, &qword_B8398, &qword_89420);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_55120()
{
  result = qword_B92E8;
  if (!qword_B92E8)
  {
    sub_1A7F4(255, &qword_B8348, off_A91F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B92E8);
  }

  return result;
}

void sub_55188(uint64_t a1)
{
  v1 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_81C68();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_34F64(0, v2 & ~(v2 >> 63), 0);
    v3 = _swiftEmptyArrayStorage;
    if (v42)
    {
      v4 = sub_81C28();
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v4 = sub_81C08();
      v5 = *(v1 + 36);
    }

    v44 = v4;
    v45 = v5;
    v46 = v42 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v40 = v1 + 56;
      v39 = v1 + 64;
      v41 = v2;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v10 = v44;
        v11 = v45;
        v12 = v46;
        v13 = v1;
        sub_3A36C(v44, v45, v46, v1);
        v15 = v14;
        sub_51F24(v14, v47);

        v49 = v3;
        v17 = v3[2];
        v16 = v3[3];
        if (v17 >= v16 >> 1)
        {
          sub_34F64((v16 > 1), v17 + 1, 1);
          v3 = v49;
        }

        v3[2] = v17 + 1;
        v18 = &v3[27 * v17];
        v19 = v47[1];
        *(v18 + 2) = v47[0];
        *(v18 + 3) = v19;
        v20 = v47[2];
        v21 = v47[3];
        v22 = v47[5];
        *(v18 + 6) = v47[4];
        *(v18 + 7) = v22;
        *(v18 + 4) = v20;
        *(v18 + 5) = v21;
        v23 = v47[6];
        v24 = v47[7];
        v25 = v47[9];
        *(v18 + 10) = v47[8];
        *(v18 + 11) = v25;
        *(v18 + 8) = v23;
        *(v18 + 9) = v24;
        v26 = v47[10];
        v27 = v47[11];
        v28 = v47[12];
        *(v18 + 240) = v48;
        *(v18 + 13) = v27;
        *(v18 + 14) = v28;
        *(v18 + 12) = v26;
        if (v42)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          v1 = v13;
          if (sub_81C38())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v41;
          sub_147EC(&qword_B92F0, &qword_8A5B8);
          v8 = sub_81AF8();
          sub_81C88();
          v8(v43, 0);
          if (v7 == v41)
          {
LABEL_33:
            sub_3B8D4(v44, v45, v46);
            return;
          }
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v13;
          v29 = 1 << *(v13 + 32);
          if (v10 >= v29)
          {
            goto LABEL_37;
          }

          v30 = v10 >> 6;
          v31 = *(v40 + 8 * (v10 >> 6));
          if (((v31 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v13 + 36) != v11)
          {
            goto LABEL_39;
          }

          v32 = v31 & (-2 << (v10 & 0x3F));
          if (v32)
          {
            v29 = __clz(__rbit64(v32)) | v10 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v33 = v30 << 6;
            v34 = v30 + 1;
            v35 = (v39 + 8 * v30);
            while (v34 < (v29 + 63) >> 6)
            {
              v37 = *v35++;
              v36 = v37;
              v33 += 64;
              ++v34;
              if (v37)
              {
                sub_3B8D4(v10, v11, 0);
                v29 = __clz(__rbit64(v36)) + v33;
                goto LABEL_31;
              }
            }

            sub_3B8D4(v10, v11, 0);
LABEL_31:
            v1 = v13;
          }

          v38 = *(v1 + 36);
          v44 = v29;
          v45 = v38;
          v46 = 0;
          v2 = v41;
          if (v7 == v41)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_55510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_513B4(a1, v4, v5, v6);
}

uint64_t sub_555C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8398, &qword_89420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_55638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22EB0;

  return sub_30F50(a1, v4, v5, v7, v6);
}

uint64_t sub_556F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_55740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16268;

  return sub_30F50(a1, v4, v5, v7, v6);
}

uint64_t sub_55818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_55830()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22EB0;

  return sub_54C84();
}

uint64_t sub_558EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_5402C(a1, v4, v5, v6);
}

uint64_t sub_559A0()
{
  v1 = sub_147EC(&qword_B92F8, &qword_8A5E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_55A34(void *a1, uint64_t a2)
{
  v4 = *(*(sub_147EC(&qword_B92F8, &qword_8A5E8) - 8) + 80);

  sub_53D34(a1, a2);
}

uint64_t sub_55AC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_55AD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_55B08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22EB0;

  return sub_529D0(a1, v5);
}

uint64_t sub_55BC0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_55C00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A90;

  return sub_5229C(v2, v3);
}

uint64_t sub_55C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_51D84(a1, v4, v5, v6);
}

uint64_t sub_55D4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_55D94(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22EB0;

  return sub_54E20(v9, a1, v4, v5, v6, v7, v8);
}

uint64_t sub_55E6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_55F08()
{
  v1 = *(v0 + 120);
  if (!v1)
  {
    v6 = sub_818E8();
    v7 = sub_818E8();
    v5 = STLocalizedString(v6);

    sub_81928();
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [v2 descriptor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 humanReadableUpdateName];

    if (v5)
    {
      sub_81928();

LABEL_6:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_5601C()
{
  v1 = sub_147EC(&unk_B8240, &qword_88F50);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  swift_defaultActor_initialize();
  updated = type metadata accessor for SoftwareUpdateController();
  v0[14] = 0;
  v0[15] = 0;
  v14.receiver = v0;
  v14.super_class = updated;
  v6 = objc_msgSendSuper2(&v14, "init");
  v7 = objc_allocWithZone(SUManagerClient);
  v8 = v6;
  v9 = [v7 initWithDelegate:v8];
  v10 = v8[14];
  v8[14] = v9;

  v11 = sub_81AB8();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v8;
  sub_68AE4(0, 0, v4, &unk_8A6F8, v12);

  return v8;
}

uint64_t sub_561A8()
{
  v1 = *(v0[8] + 112);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_56710;
    v0[7] = v2;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_56428;
    v0[5] = &unk_AC260;
    v3 = _Block_copy(v0 + 2);
    v4 = v0[7];
    v5 = v1;

    [v5 downloadAndInstallState:v3];
    _Block_release(v3);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_562F4(void *a1)
{
  v2 = sub_147EC(&unk_B8240, &qword_88F50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_81AB8();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = a1;
    v10 = a1;
    sub_68AE4(0, 0, v5, &unk_8A708, v9);
  }

  return result;
}

void sub_56428(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v14 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v10(a2, a3, a4, a5);
}

uint64_t sub_564EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_5650C, a4, 0);
}

uint64_t sub_5650C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;

  v6 = v0[1];
  v4 = v2;

  return v6();
}

uint64_t sub_56580()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_565E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_56624(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22EB0;

  return sub_56188(a1, v4, v5, v6);
}

uint64_t sub_566D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_56718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_56730()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_56778(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16268;

  return sub_564EC(a1, v4, v5, v7, v6);
}

uint64_t sub_5684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_80978();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_5691C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_80978();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for NavigationEventEmissionViewModifier()
{
  result = qword_B93F0;
  if (!qword_B93F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_56A20()
{
  sub_80978();
  if (v0 <= 0x3F)
  {
    sub_56AAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_56AAC()
{
  if (!qword_B9400)
  {
    sub_80978();
    v0 = sub_81A48();
    if (!v1)
    {
      atomic_store(v0, &qword_B9400);
    }
  }
}

uint64_t getEnumTagSinglePayload for NavigationEventEmissionViewModifier.DeepLink(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NavigationEventEmissionViewModifier.DeepLink(_WORD *result, int a2, int a3)
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

Swift::Int sub_56BEC()
{
  sub_81E78();
  sub_81968();
  return sub_81EB8();
}

Swift::Int sub_56C60()
{
  sub_81E78();
  sub_81968();
  return sub_81EB8();
}

uint64_t sub_56CB4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_AAD38;
  v7._object = v3;
  v5 = sub_81DD8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_56D2C()
{
  result = qword_B9438;
  if (!qword_B9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9438);
  }

  return result;
}

uint64_t sub_56D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = a1;
  v35 = sub_147EC(&qword_B9440, &unk_8A850);
  v2 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v34 = (v29 - v3);
  v4 = sub_147EC(&qword_B8930, &qword_89BA8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v29 - v6;
  v8 = sub_809D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_816E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_147EC(&qword_B9448, &qword_8A860);
  v18 = *(v32 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v32);
  v30 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v29 - v22;
  *v17 = 0xD000000000000025;
  v17[1] = 0x8000000000095E10;
  v24 = *(v14 + 104);
  v31 = v13;
  v24(v17, enum case for SettingsEventImage.graphicIcon(_:), v13);
  v29[1] = *(v37 + *(type metadata accessor for NavigationEventEmissionViewModifier() + 20));
  sub_809C8();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v26 = sub_147EC(&qword_B9450, &qword_8A868);
    v27 = sub_57238();
    sub_812B8();
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v31);
    v28 = v32;
    (*(v18 + 16))(v30, v23, v32);
    v38 = v26;
    v39 = v27;
    swift_getOpaqueTypeConformance2();
    *v34 = sub_81598();
    swift_storeEnumTagMultiPayload();
    sub_810A8();
    return (*(v18 + 8))(v23, v28);
  }

  return result;
}

unint64_t sub_57238()
{
  result = qword_B9458;
  if (!qword_B9458)
  {
    sub_14E2C(&qword_B9450, &qword_8A868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9458);
  }

  return result;
}

unint64_t sub_572A0()
{
  result = qword_B9460;
  if (!qword_B9460)
  {
    sub_14E2C(&qword_B9468, &unk_8A870);
    sub_57238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9460);
  }

  return result;
}

__n128 sub_57338(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_57354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5739C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_57418(uint64_t a1)
{
  if (*(a1 + 16) <= 4uLL)
  {
  }

  else
  {
    sub_7B024(a1, a1 + 32, 0, 9uLL);
  }
}

uint64_t sub_57438(uint64_t a1, char a2)
{
  sub_57418(a1);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_147EC(&qword_B9548, &qword_8AAF0);
  sub_14F24(&qword_B9550, &qword_B9548, &qword_8AAF0);
  sub_432C8();
  sub_59130();
  return sub_81608();
}

uint64_t sub_57544@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 16);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v9;
  *(a3 + 40) = v8;
  *(a3 + 48) = v7;
  *(a3 + 56) = a2;
  sub_2092C(v5, v6, v9);
}

uint64_t sub_575E0()
{
  v1 = sub_810F8();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = *v0;
  sub_58DF4(*(v0 + 8));
  sub_81048();
  sub_59010();
  sub_81ED8();
  sub_147EC(&qword_B9538, &qword_8AAE8);
  sub_59068();
  return sub_816A8();
}

double sub_57704@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_147EC(&qword_B9470, &qword_8A9F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v23 - v6;
  v8 = sub_80FB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 56);
  v14 = *&qword_8AB60[v13];
  v15 = *v2;
  v25 = *v2;
  v26 = *(v2 + 8);
  if (v26 == 1)
  {
    v16 = v15;
  }

  else
  {

    sub_81B28();
    v17 = sub_81198();
    sub_80B98();

    sub_80FA8();
    swift_getAtKeyPath();
    sub_14FD4(&v25, &qword_B9478, &qword_8A9F8);
    (*(v9 + 8))(v12, v8);
    v16 = *v23;
  }

  v18 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v14 scale:{v14, v16}];
  sub_57988(v2, v18, v7);
  v19 = qword_8AB40[v13];
  sub_81688();
  sub_80D68();

  sub_5867C(v7, a1);
  v20 = (a1 + *(sub_147EC(&qword_B9480, &qword_8AA00) + 36));
  v21 = v23[1];
  *v20 = v23[0];
  v20[1] = v21;
  result = *&v24;
  v20[2] = v24;
  return result;
}

uint64_t sub_57988@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v71 = a3;
  v4 = sub_147EC(&qword_B9488, &qword_8AA08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v58 - v6;
  v70 = sub_147EC(&qword_B9490, &unk_8AA10);
  v8 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v10 = &v58 - v9;
  v69 = sub_147EC(&qword_B8AD8, &qword_89D50);
  v64 = *(v69 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin(v69);
  v63 = &v58 - v12;
  v66 = sub_147EC(&qword_B9498, &qword_8AA20);
  v13 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v68 = &v58 - v14;
  v60 = sub_147EC(&qword_B94A0, &qword_8AA28);
  v15 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v61 = &v58 - v16;
  v67 = sub_147EC(&qword_B94A8, &qword_8AA30);
  v17 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v62 = &v58 - v18;
  v19 = sub_147EC(&qword_B94B0, &qword_8AA38);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  v24 = sub_147EC(&qword_B94B8, &qword_8AA40);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v29 = &v58 - v28;
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  v32 = *(a1 + 32);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v41 = *(a1 + 56) != 2;
      *v7 = v30;
      v7[8] = v41;
      swift_storeEnumTagMultiPayload();
      sub_586EC();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);

      sub_810A8();
      sub_58740(v10, v68);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      return sub_14FD4(v10, &qword_B9490, &unk_8AA10);
    }

    else
    {
      v52 = objc_allocWithZone(ISIcon);

      v53 = sub_818E8();
      sub_431D4(v30, v31, 3u);
      [v52 initWithType:v53];

      v54 = v65;
      v55 = v63;
      sub_80B58();
      v56 = v64;
      v57 = v69;
      (*(v64 + 16))(v7, v55, v69);
      swift_storeEnumTagMultiPayload();
      sub_586EC();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
      sub_810A8();
      sub_58740(v10, v68);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      sub_14FD4(v10, &qword_B9490, &unk_8AA10);
      return (*(v56 + 8))(v55, v57);
    }
  }

  else
  {
    v59 = v26;
    if (v32)
    {
      v42 = objc_allocWithZone(ISGraphicIconConfiguration);

      v43 = [v42 init];
      v44 = objc_allocWithZone(ISIcon);
      v45 = sub_818E8();
      sub_431D4(v30, v31, 1u);
      [v44 initWithSymbolName:v45 configuration:v43];

      v46 = v65;
      v47 = v63;
      sub_80B58();
      v48 = v64;
      v49 = v69;
      (*(v64 + 16))(v61, v47, v69);
      swift_storeEnumTagMultiPayload();
      v50 = sub_14F24(&qword_B94D0, &qword_B94B0, &qword_8AA38);
      v72 = v19;
      v73 = v50;
      swift_getOpaqueTypeConformance2();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
      v51 = v62;
      sub_810A8();
      sub_5898C(v51, v68);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      sub_589FC(v51);
      return (*(v48 + 8))(v47, v49);
    }

    else
    {
      v64 = v27;
      v33 = objc_allocWithZone(ISIcon);

      v34 = sub_818E8();
      sub_431D4(v30, v31, 0);
      [v33 initWithBundleIdentifier:v34];

      v35 = v65;
      sub_147EC(&qword_B94E0, &qword_8AA48);
      sub_147EC(&qword_B94E8, &qword_8AA50);
      sub_58A64();
      sub_58AE8();
      sub_80B48();
      v36 = sub_14F24(&qword_B94D0, &qword_B94B0, &qword_8AA38);
      sub_81298();
      (*(v20 + 8))(v23, v19);
      v37 = v64;
      v38 = v59;
      (*(v64 + 16))(v61, v29, v59);
      swift_storeEnumTagMultiPayload();
      v72 = v19;
      v73 = v36;
      swift_getOpaqueTypeConformance2();
      sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
      v39 = v62;
      sub_810A8();
      sub_5898C(v39, v68);
      swift_storeEnumTagMultiPayload();
      sub_587B0();
      sub_588D4();
      sub_810A8();
      sub_589FC(v39);
      return (*(v37 + 8))(v29, v38);
    }
  }
}

uint64_t sub_583C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81488();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = sub_814A8();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_584E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81488();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_81478();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = sub_814A8();

  (*(v3 + 8))(v6, v2);
  v8 = a1 + *(sub_147EC(&qword_B94E8, &qword_8AA50) + 36);
  result = sub_81678();
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

double sub_58638@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_57704(a1);
}

uint64_t sub_5867C(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9470, &qword_8A9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_586EC()
{
  result = qword_B94C0;
  if (!qword_B94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94C0);
  }

  return result;
}

uint64_t sub_58740(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9490, &unk_8AA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_587B0()
{
  result = qword_B94C8;
  if (!qword_B94C8)
  {
    sub_14E2C(&qword_B94A8, &qword_8AA30);
    sub_14E2C(&qword_B94B0, &qword_8AA38);
    sub_14F24(&qword_B94D0, &qword_B94B0, &qword_8AA38);
    swift_getOpaqueTypeConformance2();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94C8);
  }

  return result;
}

unint64_t sub_588D4()
{
  result = qword_B94D8;
  if (!qword_B94D8)
  {
    sub_14E2C(&qword_B9490, &unk_8AA10);
    sub_586EC();
    sub_14F24(&qword_B8AF0, &qword_B8AD8, &qword_89D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94D8);
  }

  return result;
}

uint64_t sub_5898C(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B94A8, &qword_8AA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_589FC(uint64_t a1)
{
  v2 = sub_147EC(&qword_B94A8, &qword_8AA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_58A64()
{
  result = qword_B94F0;
  if (!qword_B94F0)
  {
    sub_14E2C(&qword_B94E0, &qword_8AA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94F0);
  }

  return result;
}

unint64_t sub_58AE8()
{
  result = qword_B94F8;
  if (!qword_B94F8)
  {
    sub_14E2C(&qword_B94E8, &qword_8AA50);
    sub_58A64();
    sub_14F24(&qword_B9500, &qword_B9508, &qword_8AA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B94F8);
  }

  return result;
}

uint64_t sub_58BA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_58BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_58C3C()
{
  result = qword_B9510;
  if (!qword_B9510)
  {
    sub_14E2C(&qword_B9480, &qword_8AA00);
    sub_58CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9510);
  }

  return result;
}

unint64_t sub_58CC8()
{
  result = qword_B9518;
  if (!qword_B9518)
  {
    sub_14E2C(&qword_B9470, &qword_8A9F0);
    sub_58D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9518);
  }

  return result;
}

unint64_t sub_58D4C()
{
  result = qword_B9520;
  if (!qword_B9520)
  {
    sub_14E2C(&qword_B9528, &qword_8AA90);
    sub_587B0();
    sub_588D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9520);
  }

  return result;
}

uint64_t sub_58DF4(char a1)
{
  v2 = sub_81648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v18 - v8);
  sub_147EC(&qword_B9560, &qword_8AB28);
  v10 = *(sub_81658() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_886E0;
  v14 = qword_8AB60[a1];
  *v9 = v14;
  v15 = enum case for GridItem.Size.fixed(_:);
  v16 = *(v3 + 104);
  v16(v9, enum case for GridItem.Size.fixed(_:), v2);
  sub_81668();
  *v7 = v14;
  v16(v7, v15, v2);
  sub_81668();
  return v13;
}

unint64_t sub_59010()
{
  result = qword_B9530;
  if (!qword_B9530)
  {
    sub_810F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9530);
  }

  return result;
}

unint64_t sub_59068()
{
  result = qword_B9540;
  if (!qword_B9540)
  {
    sub_14E2C(&qword_B9538, &qword_8AAE8);
    sub_432C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9540);
  }

  return result;
}

uint64_t sub_590EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_59130()
{
  result = qword_B9558;
  if (!qword_B9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9558);
  }

  return result;
}

uint64_t sub_591D0(uint64_t a1, char a2)
{
  *(v2 + 304) = a2;
  *(v2 + 104) = a1;
  v3 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v4 = sub_808D8();
  *(v2 + 120) = v4;
  v5 = *(v4 - 8);
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 + 64);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v6 = *(*(sub_147EC(&qword_B7E50, &qword_8A3F0) - 8) + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v7 = *(*(sub_81818() - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_59344, 0, 0);
}

uint64_t sub_59344()
{
  v0[22] = objc_opt_self();
  v0[23] = sub_81A88();
  v0[24] = sub_81A78();
  v2 = sub_81A58();

  return _swift_task_switch(sub_593EC, v2, v1);
}

uint64_t sub_593EC()
{
  v1 = v0[24];
  v2 = v0[22];

  v0[25] = [v2 currentDevice];

  return _swift_task_switch(sub_59474, 0, 0);
}

uint64_t sub_59474()
{
  v1 = *(v0 + 184);
  *(v0 + 208) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59500, v3, v2);
}

uint64_t sub_59500()
{
  v2 = v0[25];
  v1 = v0[26];

  v0[27] = [v2 buildVersion];

  return _swift_task_switch(sub_59588, 0, 0);
}

uint64_t sub_59588(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 216);
  if (v4)
  {
    v5 = *(v3 + 304);
    v6 = sub_81928();
    v8 = v7;

    v18._countAndFlagsBits = v6;
    v18._object = v8;
    sub_81978(v18);

    v19._countAndFlagsBits = 8285;
    v19._object = 0xE200000000000000;
    sub_81978(v19);

    *(v3 + 40) = 91;
    *(v3 + 48) = 0xE100000000000000;
    if ((v5 & 1) == 0)
    {
      v9 = *(v3 + 104);
      v16._countAndFlagsBits = sub_81E68();
      v16._object = v10;

      v20._countAndFlagsBits = 0x206D657473797320;
      v20._object = 0xEC00000061746164;
      sub_81978(v20);

      sub_81978(v16);
    }

    v11 = *(v3 + 184);
    *(v3 + 224) = sub_81A78();
    v12 = sub_81A58();
    v14 = v13;
    a1 = sub_596FC;
    a2 = v12;
    a3 = v14;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_596FC()
{
  v1 = *(v0 + 224);

  if (qword_B7858 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_59794, 0, 0);
}

uint64_t sub_59794()
{
  v1 = *(v0 + 184);
  *(v0 + 232) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59820, v3, v2);
}

uint64_t sub_59820()
{
  v1 = *(v0 + 232);

  *(v0 + 240) = qword_BCF88;

  return _swift_task_switch(sub_59894, 0, 0);
}

uint64_t sub_59894()
{
  v1 = v0[23];
  v0[31] = OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_timeStats;
  v0[32] = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59930, v3, v2);
}

uint64_t sub_59930()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[21];

  swift_beginAccess();
  sub_5AE18(v3 + v2, v4, &type metadata accessor for TimeStats);

  return _swift_task_switch(sub_599DC, 0, 0);
}

uint64_t sub_599DC()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = sub_81808();
  v5 = v4;
  sub_5A4D8(v2);
  v0[7] = v3;
  v0[8] = v5;
  v0[33] = sub_81A78();
  v7 = sub_81A58();

  return _swift_task_switch(sub_59A8C, v7, v6);
}

uint64_t sub_59A8C()
{
  v1 = *(v0 + 264);

  return _swift_task_switch(sub_59AF4, 0, 0);
}

uint64_t sub_59AF4()
{
  v1 = *(v0 + 184);
  *(v0 + 272) = sub_81A78();
  v3 = sub_81A58();

  return _swift_task_switch(sub_59B80, v3, v2);
}

uint64_t sub_59B80()
{
  v1 = *(v0 + 272);

  return _swift_task_switch(sub_59BE8, 0, 0);
}

uint64_t sub_59BE8()
{
  v1 = v0[23];
  v0[9] = sub_81928();
  v0[10] = v2;
  v0[35] = v2;
  v0[36] = sub_81A78();
  v4 = sub_81A58();

  return _swift_task_switch(sub_59C8C, v4, v3);
}

uint64_t sub_59C8C()
{
  v1 = v0[36];
  v2 = v0[30];

  v0[37] = sub_254C4();

  return _swift_task_switch(sub_59D00, 0, 0);
}

uint64_t sub_59D00()
{
  v1 = v0[35];
  if (*(v0[37] + 16))
  {
    v2 = sub_34B30(v0[9], v0[35]);
    v4 = v3;

    v5 = v0[20];
    if (v4)
    {
      v6 = *(v0[37] + 56);
      v7 = type metadata accessor for Application();
      v8 = *(v7 - 8);
      sub_5AE18(v6 + *(v8 + 72) * v2, v5, type metadata accessor for Application);

      (*(v8 + 56))(v5, 0, 1, v7);
    }

    else
    {
      v11 = v0[37];

      v7 = type metadata accessor for Application();
      (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    }
  }

  else
  {
    v9 = v0[20];
    v10 = v0[35];

    v7 = type metadata accessor for Application();
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
  }

  v12 = v0[20];
  type metadata accessor for Application();
  if ((*(*(v7 - 8) + 48))(v12, 1, v7))
  {
    sub_14FD4(v12, &qword_B7E50, &qword_8A3F0);
  }

  else
  {
    v13 = *(v12 + *(v7 + 84));

    sub_14FD4(v12, &qword_B7E50, &qword_8A3F0);
    v47._countAndFlagsBits = 2570;
    v47._object = 0xE200000000000000;
    sub_81978(v47);
    v48._countAndFlagsBits = 0xD000000000000016;
    v48._object = 0x8000000000095E80;
    sub_81978(v48);
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_34F04(0, v14, 0);
      v15 = (v13 + 64);
      do
      {
        v16 = *(v15 - 2);
        v17 = *v15;
        v44 = *(v15 - 4);
        v45 = *(v15 - 3);

        swift_bridgeObjectRetain_n();
        v49._countAndFlagsBits = 598074;
        v49._object = 0xE300000000000000;
        sub_81978(v49);
        v50._countAndFlagsBits = sub_81E68();
        sub_81978(v50);

        v51._countAndFlagsBits = 9;
        v51._object = 0xE100000000000000;
        sub_81978(v51);
        v0[11] = v16;
        v52._countAndFlagsBits = sub_81DF8();
        sub_81978(v52);

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_34F04((v18 > 1), v19 + 1, 1);
        }

        v15 += 5;
        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        *(v20 + 4) = v44;
        *(v20 + 5) = v45;
        --v14;
      }

      while (v14);
    }

    v0[12] = _swiftEmptyArrayStorage;
    sub_147EC(&qword_B7E70, &unk_88C80);
    sub_5ADB4();
    v21 = sub_81858();
    v23 = v22;

    v53._countAndFlagsBits = v21;
    v53._object = v23;
    sub_81978(v53);
  }

  v42 = v0[21];
  v43 = v0[20];
  v24 = v0[19];
  v25 = v0[16];
  v40 = v0[18];
  v41 = v0[17];
  v26 = v0[14];
  v27 = v0[15];
  sub_808C8();
  sub_808B8();
  sub_808A8();
  sub_147EC(&qword_B9578, &qword_8AB98);
  v28 = *(sub_80878() - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  *(swift_allocObject() + 16) = xmmword_8AB80;
  v31 = v0[5];
  v32 = v0[6];
  sub_80868();

  v33 = v0[7];
  v34 = v0[8];
  sub_80868();

  sub_80868();
  sub_80868();
  sub_80868();
  sub_80868();
  sub_80868();
  sub_80888();
  v35 = sub_81AB8();
  (*(*(v35 - 8) + 56))(v26, 1, 1, v35);
  (*(v25 + 16))(v40, v24, v27);
  v36 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  (*(v25 + 32))(v37 + v36, v40, v27);
  sub_68AE4(0, 0, v26, &unk_8ABA8, v37);

  (*(v25 + 8))(v24, v27);

  v38 = v0[1];

  return v38();
}

uint64_t sub_5A4D8(uint64_t a1)
{
  v2 = sub_81818();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5A534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a4;
  v5 = *(*(sub_147EC(&qword_B8930, &qword_89BA8) - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_5A5D0, 0, 0);
}

uint64_t sub_5A5D0()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[19];
    v4 = v0[20];
    sub_80898();
    v5 = sub_809D8();
    v6 = *(v5 - 8);
    v8 = 0;
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      v9 = v0[20];
      sub_809A8(v7);
      v8 = v10;
      (*(v6 + 8))(v9, v5);
    }

    v0[22] = v8;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_5A7BC;
    v11 = swift_continuation_init();
    v0[17] = sub_147EC(&qword_B9580, &unk_8ABB0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_5AB04;
    v0[13] = &unk_AC498;
    v0[14] = v11;
    [v2 openURL:v8 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_5A7BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_5A944;
  }

  else
  {
    v3 = sub_5A8CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_5A8CC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 160);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_5A944()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  if (qword_B7850 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = sub_80BC8();
  sub_19818(v5, qword_BCF70);
  swift_errorRetain();
  v6 = sub_80BB8();
  v7 = sub_81B18();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_0, v6, v7, "Failed to launch tap-to-radar with error %@", v10, 0xCu);
    sub_14FD4(v11, &qword_B7BA8, &qword_8A5F0);
  }

  else
  {
  }

  v13 = v0[20];

  v14 = v0[1];

  return v14();
}

uint64_t sub_5AB04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_22CB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_81838();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_5AC00()
{
  v1 = sub_808D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_5ACC4(uint64_t a1)
{
  v4 = *(sub_808D8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_16268;

  return sub_5A534(a1, v6, v7, v1 + v5);
}

unint64_t sub_5ADB4()
{
  result = qword_B7E78;
  if (!qword_B7E78)
  {
    sub_14E2C(&qword_B7E70, &unk_88C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B7E78);
  }

  return result;
}

uint64_t sub_5AE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5AEC4@<X0>(uint64_t a1@<X8>)
{
  sub_147EC(&qword_B8F88, &qword_8A210);
  sub_814F8();
  type metadata accessor for StorageShared();
  sub_5BF2C(&qword_B7A50, type metadata accessor for StorageShared);
  sub_80E68();
  sub_147EC(&qword_B95B0, &qword_8AC88);
  sub_50CD0();
  sub_5BDA8();
  sub_81618();
  v2 = (a1 + *(sub_147EC(&qword_B9588, &qword_8AC78) + 36));
  v3 = *(sub_147EC(&qword_B8FE0, &unk_8ACA0) + 28);
  v4 = sub_81248();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_5B070@<X0>(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v47 = a3;
  LODWORD(v46) = a2;
  v6 = sub_147EC(&qword_B95D0, &qword_8AC98);
  KeyPath = *(v6 - 8);
  v50 = v6;
  v7 = *(KeyPath + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_147EC(&qword_B95C0, &qword_8AC90);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v51 = sub_147EC(&qword_B95E8, &unk_8ACE8);
  v17 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v19 = &v44 - v18;
  v48 = sub_147EC(&qword_B7E50, &qword_8A3F0);
  v20 = *(*(v48 - 8) + 64);
  v21 = __chkstk_darwin(v48);
  v45 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v44 = &v44 - v23;
  v24 = type metadata accessor for AppsListView();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    type metadata accessor for StorageShared();
    sub_5BF2C(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
    return result;
  }

  v28 = a1;
  v29 = *(sub_254C4() + 16);

  v52 = v24;
  if (v29)
  {
    v30 = v28[OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_recommendationsDidUpdateOnce];

    if (v30 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_80C68();

      v31 = *(v55 + 16);

      if (v31)
      {
        KeyPath = swift_getKeyPath();
        v53 = v46;
        v54 = v47;
        sub_147EC(&qword_B8F88, &qword_8A210);
        sub_814F8();
        v47 = v55;
        v50 = a4;
        v46 = *(&v55 + 1);
        v32 = v56;
        type metadata accessor for StorageShared();
        sub_5BF2C(&qword_B7A50, type metadata accessor for StorageShared);
        *(v27 + 2) = sub_80E68();
        *(v27 + 3) = v33;
        v53 = 1;
        sub_814C8();
        v34 = *(&v55 + 1);
        v27[56] = v55;
        *(v27 + 8) = v34;
        v35 = *(v52 + 36);
        v36 = type metadata accessor for Application();
        v37 = v44;
        (*(*(v36 - 8) + 56))(v44, 1, 1, v36);
        sub_14F6C(v37, v45, &qword_B7E50, &qword_8A3F0);
        sub_814C8();
        sub_14FD4(v37, &qword_B7E50, &qword_8A3F0);
        *v27 = KeyPath;
        v27[8] = 0;
        v38 = v46;
        *(v27 + 4) = v47;
        *(v27 + 5) = v38;
        v27[48] = v32;
        sub_5C0E0(v27, v19);
        swift_storeEnumTagMultiPayload();
        sub_5BF2C(&qword_B8FB8, type metadata accessor for AppsListView);
        sub_5BE64();
        sub_810A8();
        return sub_5C144(v27);
      }

      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_8:
  sub_147EC(&qword_B95F0, &qword_8ACF8);
  sub_14F24(&qword_B95F8, &qword_B95F0, &qword_8ACF8);
  sub_81118();
  sub_81688();
  sub_80E48();
  (*(KeyPath + 32))(v14, v9, v50);
  v40 = &v14[*(v10 + 36)];
  v41 = v60;
  *(v40 + 4) = v59;
  *(v40 + 5) = v41;
  *(v40 + 6) = v61;
  v42 = v56;
  *v40 = v55;
  *(v40 + 1) = v42;
  v43 = v58;
  *(v40 + 2) = v57;
  *(v40 + 3) = v43;
  sub_5C068(v14, v16);
  sub_14F6C(v16, v19, &qword_B95C0, &qword_8AC90);
  swift_storeEnumTagMultiPayload();
  sub_5BF2C(&qword_B8FB8, type metadata accessor for AppsListView);
  sub_5BE64();
  sub_810A8();
  return sub_14FD4(v16, &qword_B95C0, &qword_8AC90);
}

uint64_t sub_5B82C()
{
  sub_147EC(&qword_B9600, &qword_8AD48);
  sub_5C1A0();

  return sub_814B8();
}

uint64_t sub_5B8C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  v5 = sub_81288();
  v7 = v6;
  LOBYTE(v4) = v8;
  sub_811D8();
  v9 = sub_81258();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_15034(v5, v7, v4 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_5BA10@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_81478();
  v3 = (a1 + *(sub_147EC(&qword_B9600, &qword_8AD48) + 36));
  v4 = *(sub_147EC(&qword_B9618, &qword_8AD50) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = sub_81498();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_5BAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  result = sub_81288();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_5BBC4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  sub_147EC(&qword_B9588, &qword_8AC78);
  sub_5BC58();
  return sub_81218();
}

uint64_t sub_5BC48@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);
  return sub_5AEC4(a1);
}

unint64_t sub_5BC58()
{
  result = qword_B9590;
  if (!qword_B9590)
  {
    sub_14E2C(&qword_B9588, &qword_8AC78);
    sub_5BD10();
    sub_14F24(&qword_B95D8, &qword_B8FE0, &unk_8ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9590);
  }

  return result;
}

unint64_t sub_5BD10()
{
  result = qword_B9598;
  if (!qword_B9598)
  {
    sub_14E2C(&qword_B95A0, &qword_8AC80);
    sub_50CD0();
    sub_5BDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9598);
  }

  return result;
}

unint64_t sub_5BDA8()
{
  result = qword_B95A8;
  if (!qword_B95A8)
  {
    sub_14E2C(&qword_B95B0, &qword_8AC88);
    sub_5BF2C(&qword_B8FB8, type metadata accessor for AppsListView);
    sub_5BE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B95A8);
  }

  return result;
}

unint64_t sub_5BE64()
{
  result = qword_B95B8;
  if (!qword_B95B8)
  {
    sub_14E2C(&qword_B95C0, &qword_8AC90);
    sub_14F24(&qword_B95C8, &qword_B95D0, &qword_8AC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B95B8);
  }

  return result;
}

uint64_t sub_5BF2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5BFBC(uint64_t a1)
{
  v2 = sub_147EC(&qword_B95E0, &qword_8ACE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_14F6C(a1, &v6 - v4, &qword_B95E0, &qword_8ACE0);
  return sub_80F78();
}

uint64_t sub_5C068(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B95C0, &qword_8AC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C144(uint64_t a1)
{
  v2 = type metadata accessor for AppsListView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_5C1A0()
{
  result = qword_B9608;
  if (!qword_B9608)
  {
    sub_14E2C(&qword_B9600, &qword_8AD48);
    sub_14F24(&qword_B9610, &qword_B9618, &qword_8AD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9608);
  }

  return result;
}

uint64_t sub_5C27C(uint64_t a1)
{
  v2 = sub_81498();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_80E98();
}

uint64_t sub_5C3B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SyncedContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  sub_5CBF0(a1, &v19 - v9);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_5CC58(v10, v12 + v11);
  sub_5CBF0(a1, v8);
  v13 = swift_allocObject();
  sub_5CC58(v8, v13 + v11);
  *a2 = swift_getKeyPath();
  sub_147EC(&qword_B8570, &qword_8A370);
  swift_storeEnumTagMultiPayload();
  v14 = sub_147EC(&qword_B9638, &qword_8AE40);
  v15 = v14[9];
  *(a2 + v15) = swift_getKeyPath();
  sub_147EC(&qword_B8680, &unk_895A0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v14[10]) = 0;
  v17 = (a2 + v14[11]);
  *v17 = sub_5CCBC;
  v17[1] = v12;
  v18 = (a2 + v14[12]);
  *v18 = sub_5CEC8;
  v18[1] = v13;
  return result;
}

uint64_t sub_5C5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SyncedContent() + 28);
  sub_1B4B0(a2);
  v4 = sub_80B08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

double sub_5C648@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_81008();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_5C734(a1, &v10);
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v19 = v10;
  v20 = v11;
  v28[6] = v16;
  v28[7] = v17;
  v28[8] = v18;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[0] = v10;
  v28[1] = v11;
  sub_5CF84(&v19, &v9);
  sub_5CFF4(v28);
  v4 = v23;
  *(a2 + 104) = v24;
  v5 = v26;
  *(a2 + 120) = v25;
  *(a2 + 136) = v5;
  *(a2 + 152) = v27;
  v6 = v19;
  *(a2 + 40) = v20;
  result = *&v21;
  v8 = v22;
  *(a2 + 56) = v21;
  *(a2 + 72) = v8;
  *(a2 + 88) = v4;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_5C734@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(type metadata accessor for SyncedContent() + 28);
  v6 = *(v4 + 10);
  v5 = *(v4 + 11);
  v30 = *(v4 + 13);
  v33 = *(v4 + 14);
  v7 = v4[96];
  v28 = v7;
  KeyPath = swift_getKeyPath();
  v34 = a1[2];
  v35 = a1[3];
  sub_2092C(v6, v5, v7);
  sub_14ED0();

  v8 = sub_81288();
  v26 = v9;
  v27 = v8;
  v24 = v10;
  v25 = v11;
  v12 = a1[1];
  sub_81E68();
  v13 = sub_81288();
  v15 = v14;
  v17 = v16;
  sub_81138();
  v23 = sub_81238();
  v31 = v18;
  v32 = v19;
  v21 = v20;
  sub_15034(v13, v15, v17 & 1);

  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v28;
  *(a2 + 40) = v30;
  *(a2 + 48) = v33;
  *(a2 + 56) = 2;
  *(a2 + 64) = v27;
  *(a2 + 72) = v26;
  *(a2 + 80) = v24 & 1;
  *(a2 + 88) = v25;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = v23;
  *(a2 + 120) = v31;
  *(a2 + 128) = v21 & 1;
  *(a2 + 136) = v32;
  sub_5D064(KeyPath, 0);
  sub_2092C(v6, v5, v28);

  sub_16C28(v27, v26, v24 & 1);

  sub_16C28(v23, v31, v21 & 1);

  sub_15034(v23, v31, v21 & 1);

  sub_15034(v27, v26, v24 & 1);

  sub_4C7F8(KeyPath, 0);
  sub_431D4(v6, v5, v28);
}

uint64_t sub_5C9E0()
{
  if (*v0)
  {
    v3 = *(*v0 + OBJC_IVAR____TtC17StorageSettingsUI13StorageShared_syncedMediaSizes);

    sub_147EC(&qword_B9630, &qword_8AE38);
    sub_147EC(&qword_B9638, &qword_8AE40);
    sub_14F24(&qword_B9640, &qword_B9630, &qword_8AE38);
    sub_14F24(&qword_B9648, &qword_B9638, &qword_8AE40);
    sub_5CBA8(&qword_B9650, type metadata accessor for SyncedContent);
    return sub_81608();
  }

  else
  {
    v2 = v0[1];
    type metadata accessor for StorageShared();
    sub_5CBA8(&qword_B7A50, type metadata accessor for StorageShared);
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_5CBA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5CBF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CCBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncedContent() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_5C5B8(v4, a1);
}

uint64_t sub_5CD2C()
{
  v1 = (type metadata accessor for SyncedContent() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 24);

  v6 = v0 + v3 + v1[9];
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = *(v6 + 40);

  sub_431D4(*(v6 + 80), *(v6 + 88), *(v6 + 96));
  v10 = *(v6 + 112);

  v11 = *(v6 + 120);

  v12 = type metadata accessor for Application();
  v13 = v12[18];
  v14 = sub_80A38();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v6 + v13, 1, v14))
  {
    (*(v15 + 8))(v6 + v13, v14);
  }

  v16 = *(v6 + v12[19] + 8);

  v17 = *(v6 + v12[21]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_5CEC8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncedContent() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_5C648(v4, a1);
}

uint64_t sub_5CF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B9658, &qword_8AEB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5CFF4(uint64_t a1)
{
  v2 = sub_147EC(&qword_B9658, &qword_8AEB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5D064(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_5D074()
{
  result = qword_B9660;
  if (!qword_B9660)
  {
    sub_14E2C(&qword_B9668, &unk_8AEF0);
    sub_14F24(&qword_B9648, &qword_B9638, &qword_8AE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9660);
  }

  return result;
}

char *sub_5D154(void *a1, uint64_t a2, char a3, char *a4)
{
  LOBYTE(v11[0]) = a3;
  v11[1] = a4;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814D8();
  if (v10 == 1)
  {
    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = a1;
      sub_80C68();

      sub_5E0BC(v11);

      return v11[0];
    }

    goto LABEL_8;
  }

  if (!a1)
  {
LABEL_8:
    type metadata accessor for StorageShared();
    sub_1635C();
    sub_80E58();
    __break(1u);

    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  sub_80C68();

  sub_5E0BC(v11);

  result = v11[0];
  if (*(v11[0] + 2) >= 3uLL)
  {
    sub_7B10C(v11[0], (v11[0] + 32), 0, 5uLL);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_5D324(void *a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = a1;
    sub_80C68();

    v3 = *(v7 + 16);

    if (v3 <= 2)
    {
      v4 = 0;
    }

    else
    {
      sub_147EC(&unk_B8710, &qword_89A80);
      sub_814D8();
      v4 = v6 ^ 1;
    }

    return v4 & 1;
  }

  else
  {
    type metadata accessor for StorageShared();
    sub_1635C();
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_5D430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a4;
  v27 = a6;
  v28 = a7;
  v11 = sub_147EC(&qword_B96B0, &qword_8AFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = sub_147EC(&qword_B96A0, &qword_8AFE8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v25 - v21;
  v29 = a2;
  if (a1)
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  else
  {
    *v15 = sub_81008();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v23 = sub_147EC(&qword_B96C0, &qword_8AFF8);
    sub_5D794(a2, a3, v26, a5 & 1, v27, &v15[*(v23 + 44)]);
    sub_5F2F0(v15, v20, &qword_B96B0, &qword_8AFF0);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  sub_5F2F0(v20, v22, &qword_B96A0, &qword_8AFE8);
  sub_5F08C();
  sub_5F13C();
  return sub_81618();
}

uint64_t sub_5D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 176);
  v35 = *(a1 + 160);
  v36 = v4;
  v37 = *(a1 + 192);
  v38 = *(a1 + 208);
  v5 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v5;
  v6 = *(a1 + 144);
  v33 = *(a1 + 128);
  v34 = v6;
  v7 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v7;
  v8 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v8;
  v9 = *(a1 + 16);
  v25 = *a1;
  v26 = v9;
  type metadata accessor for StorageShared();
  sub_1635C();
  v10 = sub_80E68();
  v12 = v11;
  v24 = 0;
  sub_814C8();
  v13 = v22[0];
  v14 = v23;
  *a2 = v10;
  *(a2 + 8) = v12;
  v15 = v36;
  *(a2 + 176) = v35;
  *(a2 + 192) = v15;
  *(a2 + 208) = v37;
  *(a2 + 224) = v38;
  v16 = v32;
  *(a2 + 112) = v31;
  *(a2 + 128) = v16;
  v17 = v34;
  *(a2 + 144) = v33;
  *(a2 + 160) = v17;
  v18 = v28;
  *(a2 + 48) = v27;
  *(a2 + 64) = v18;
  v19 = v30;
  *(a2 + 80) = v29;
  *(a2 + 96) = v19;
  v20 = v26;
  *(a2 + 16) = v25;
  *(a2 + 32) = v20;
  *(a2 + 232) = v13;
  *(a2 + 240) = v14;
  return sub_3C168(a1, v22);
}

uint64_t sub_5D794@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a3;
  v60 = a4;
  v61 = a2;
  v68 = a6;
  v7 = sub_147EC(&qword_B96C8, &qword_8B000);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v57 = &v56 - v9;
  v66 = sub_147EC(&qword_B96D0, &qword_8B008);
  v64 = *(v66 - 8);
  v10 = *(v64 + 64);
  __chkstk_darwin(v66);
  v56 = &v56 - v11;
  v12 = sub_147EC(&qword_B96D8, &unk_8B010);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = sub_147EC(&qword_B78C8, &unk_89660);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v65 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  v24 = sub_818E8();
  v25 = sub_818E8();
  v26 = STLocalizedString(v24);

  v27 = sub_81928();
  v29 = v28;

  v71 = v27;
  v72 = v29;
  sub_14ED0();
  v30 = sub_81288();
  v32 = v31;
  v71 = v30;
  v72 = v31;
  LOBYTE(v26) = v33 & 1;
  v73 = v33 & 1;
  v74 = v34;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_81D08(30);

  v69 = 0xD00000000000001CLL;
  v70 = 0x8000000000095FC0;
  v35 = *a1;
  v36 = a1[1];
  v75._countAndFlagsBits = v35;
  v75._object = v36;
  sub_81978(v75);
  sub_81398();
  v37 = v60;

  v38 = v30;
  v39 = v26;
  v40 = v61;
  v41 = v62;
  sub_15034(v38, v32, v39);
  v42 = v63;

  v43 = sub_5D324(v40);
  v44 = 1;
  if (v43)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    *(v45 + 24) = v42;
    *(v45 + 32) = v37 & 1;
    *(v45 + 40) = v41;

    v46 = v40;
    sub_147EC(&qword_B96E8, &unk_8B028);
    sub_5F238();
    v47 = v57;
    sub_81528();
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_81D08(31);

    v71 = 0xD00000000000001DLL;
    v72 = 0x8000000000095FE0;
    v76._countAndFlagsBits = v35;
    v76._object = v36;
    sub_81978(v76);
    sub_14F24(&qword_B96F8, &qword_B96C8, &qword_8B000);
    v48 = v56;
    v49 = v59;
    sub_81398();

    (*(v58 + 8))(v47, v49);
    sub_5F2F0(v48, v17, &qword_B96D0, &qword_8B008);
    v44 = 0;
  }

  (*(v64 + 56))(v17, v44, 1, v66);
  v50 = v65;
  sub_14F6C(v23, v65, &qword_B78C8, &unk_89660);
  v51 = v67;
  sub_14F6C(v17, v67, &qword_B96D8, &unk_8B010);
  v52 = v68;
  sub_14F6C(v50, v68, &qword_B78C8, &unk_89660);
  v53 = sub_147EC(&qword_B96E0, &qword_8B020);
  v54 = v52 + *(v53 + 48);
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_14F6C(v51, v52 + *(v53 + 64), &qword_B96D8, &unk_8B010);
  sub_14FD4(v17, &qword_B96D8, &unk_8B010);
  sub_14FD4(v23, &qword_B78C8, &unk_89660);
  sub_14FD4(v51, &qword_B96D8, &unk_8B010);
  return sub_14FD4(v50, &qword_B78C8, &unk_89660);
}

uint64_t sub_5DDBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = sub_818E8();
  v4 = STLocalizedString(v2);

  sub_81928();
  sub_14ED0();
  v5 = sub_81288();
  v7 = v6;
  LOBYTE(v4) = v8;
  v10 = v9;
  v11 = (a1 + *(sub_147EC(&qword_B96E8, &unk_8B028) + 36));
  v12 = *(sub_147EC(&qword_B8FE0, &unk_8ACA0) + 28);
  v13 = sub_81248();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  result = swift_getKeyPath();
  *v11 = result;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_5DF2C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = sub_5D154(*v0, v2, v3, v4);
  sub_5EBE4(v5);

  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_5EEC4;
  *(v7 + 24) = v6;

  v8 = v1;
  sub_147EC(&qword_B9670, &qword_8AFD8);
  sub_147EC(&qword_B9678, &qword_8AFE0);
  sub_14F24(&qword_B9680, &qword_B9670, &qword_8AFD8);
  sub_5EFA0();
  sub_5EFF4();
  return sub_815F8();
}

Swift::Int sub_5E0BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20898(v2);
  }

  v3 = *(v2 + 2);
  v56[0] = (v2 + 32);
  v56[1] = v3;
  result = sub_81DE8(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 248;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 14) >= *(v12 + 13))
          {
            break;
          }

          v13 = v12 - 216;
          v14 = *(v12 + 1);
          v42 = *v12;
          v43 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v46 = *(v12 + 4);
          v47 = v17;
          v44 = v15;
          v45 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 9);
          v50 = *(v12 + 8);
          v51 = v20;
          v48 = v18;
          v49 = v19;
          v21 = *(v12 + 10);
          v22 = *(v12 + 11);
          v23 = *(v12 + 12);
          v55 = v12[208];
          v53 = v22;
          v54 = v23;
          v52 = v21;
          v24 = *(v12 - 136);
          *(v12 + 4) = *(v12 - 152);
          *(v12 + 5) = v24;
          v25 = *(v12 - 168);
          *(v12 + 2) = *(v12 - 184);
          *(v12 + 3) = v25;
          v26 = *(v12 - 72);
          *(v12 + 8) = *(v12 - 88);
          *(v12 + 9) = v26;
          v27 = *(v12 - 104);
          *(v12 + 6) = *(v12 - 120);
          *(v12 + 7) = v27;
          *(v12 + 26) = *(v12 - 1);
          v28 = *(v12 - 24);
          *(v12 + 11) = *(v12 - 40);
          *(v12 + 12) = v28;
          *(v12 + 10) = *(v12 - 56);
          v29 = *(v12 - 200);
          *v12 = *(v12 - 216);
          *(v12 + 1) = v29;
          v30 = v43;
          *v13 = v42;
          *(v13 + 1) = v30;
          v31 = v44;
          v32 = v45;
          v33 = v47;
          *(v13 + 4) = v46;
          *(v13 + 5) = v33;
          *(v13 + 2) = v31;
          *(v13 + 3) = v32;
          v34 = v48;
          v35 = v49;
          v36 = v51;
          *(v13 + 8) = v50;
          *(v13 + 9) = v36;
          *(v13 + 6) = v34;
          *(v13 + 7) = v35;
          v37 = v52;
          v38 = v53;
          v39 = v54;
          v13[208] = v55;
          *(v13 + 11) = v38;
          *(v13 + 12) = v39;
          *(v13 + 10) = v37;
          v12 -= 216;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 216;
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
      v7 = sub_81A18();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v42 = v7 + 4;
    *(&v42 + 1) = v6;
    sub_5E2C0(&v42, v41, v56, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_5E2C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2076C(v7);
      v7 = result;
    }

    v83 = v7 + 2;
    v84 = v7[2];
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v7[2 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_5E984((*a3 + 216 * *v85), (*a3 + 216 * *v87), (*a3 + 216 * v88), v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 216 * v6 + 104);
      v10 = 216 * v8;
      v11 = *a3 + 216 * v8;
      v12 = *(v11 + 104);
      v13 = v8 + 2;
      v14 = (v11 + 320);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[27];
        v14 += 27;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
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
        v17 = 216 * v6 - 216;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v113 = *(v21 + v10 + 160);
            v115 = *(v21 + v10 + 176);
            v117 = *(v21 + v10 + 192);
            v119 = *(v21 + v10 + 208);
            v105 = *(v21 + v10 + 96);
            v107 = *(v21 + v10 + 112);
            v109 = *(v21 + v10 + 128);
            v111 = *(v21 + v10 + 144);
            v97 = *(v21 + v10 + 32);
            v99 = *(v21 + v10 + 48);
            v101 = *(v21 + v10 + 64);
            v103 = *(v21 + v10 + 80);
            v93 = *(v21 + v10);
            v95 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0xD8uLL);
            *(v20 + 160) = v113;
            *(v20 + 176) = v115;
            *(v20 + 192) = v117;
            *(v20 + 208) = v119;
            *(v20 + 96) = v105;
            *(v20 + 112) = v107;
            *(v20 + 128) = v109;
            *(v20 + 144) = v111;
            *(v20 + 32) = v97;
            *(v20 + 48) = v99;
            *(v20 + 64) = v101;
            *(v20 + 80) = v103;
            *v20 = v93;
            *(v20 + 16) = v95;
          }

          ++v19;
          v17 -= 216;
          v10 += 216;
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
      result = sub_20780(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v36 = v7[2];
    v35 = v7[3];
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_20780((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v37;
    v38 = v7 + 4;
    v39 = &v7[2 * v36 + 4];
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = v7[4];
          v42 = v7[5];
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = &v7[2 * v37];
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = &v38[2 * v40];
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = &v7[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = &v38[2 * v40];
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
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

        v78 = &v38[2 * v40 - 2];
        v79 = *v78;
        v80 = &v38[2 * v40];
        v81 = v80[1];
        sub_5E984((*a3 + 216 * *v78), (*a3 + 216 * *v80), (*a3 + 216 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > v7[2])
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = v7[2];
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove(&v38[2 * v40], v80 + 2, 16 * (v82 - 1 - v40));
        v7[2] = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v38[2 * v37];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = &v7[2 * v37];
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = &v38[2 * v40];
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 216 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 - 112) >= *(v26 + 104))
    {
LABEL_29:
      ++v6;
      v23 += 216;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 216;
    v114 = *(v26 + 160);
    v116 = *(v26 + 176);
    v118 = *(v26 + 192);
    v120 = *(v26 + 208);
    v106 = *(v26 + 96);
    v108 = *(v26 + 112);
    v110 = *(v26 + 128);
    v112 = *(v26 + 144);
    v98 = *(v26 + 32);
    v100 = *(v26 + 48);
    v102 = *(v26 + 64);
    v104 = *(v26 + 80);
    v94 = *v26;
    v96 = *(v26 + 16);
    v28 = *(v26 - 40);
    *(v26 + 160) = *(v26 - 56);
    *(v26 + 176) = v28;
    *(v26 + 192) = *(v26 - 24);
    *(v26 + 208) = *(v26 - 8);
    v29 = *(v26 - 104);
    *(v26 + 96) = *(v26 - 120);
    *(v26 + 112) = v29;
    v30 = *(v26 - 72);
    *(v26 + 128) = *(v26 - 88);
    *(v26 + 144) = v30;
    v31 = *(v26 - 168);
    *(v26 + 32) = *(v26 - 184);
    *(v26 + 48) = v31;
    v32 = *(v26 - 136);
    *(v26 + 64) = *(v26 - 152);
    *(v26 + 80) = v32;
    v33 = *(v26 - 200);
    *v26 = *(v26 - 216);
    *(v26 + 16) = v33;
    *(v27 + 160) = v114;
    *(v27 + 176) = v116;
    *(v27 + 192) = v118;
    *(v27 + 208) = v120;
    *(v27 + 96) = v106;
    *(v27 + 112) = v108;
    *(v27 + 128) = v110;
    *(v27 + 144) = v112;
    *(v27 + 32) = v98;
    *(v27 + 48) = v100;
    *(v27 + 64) = v102;
    *(v27 + 80) = v104;
    v26 -= 216;
    *v27 = v94;
    *(v27 + 16) = v96;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_5E984(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 216;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 216;
  if (v9 >= v11)
  {
    v16 = 216 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 216 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 216 && v6 > v7)
    {
LABEL_21:
      v5 -= 216;
      do
      {
        v17 = v5 + 216;
        if (*(v6 - 14) < *(v13 - 14))
        {
          v19 = v6 - 216;
          if (v17 != v6)
          {
            memmove(v5, v6 - 216, 0xD8uLL);
          }

          if (v13 <= v4 || (v6 -= 216, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        v18 = (v13 - 216);
        if (v17 != v13)
        {
          memmove(v5, v13 - 216, 0xD8uLL);
        }

        v5 -= 216;
        v13 -= 216;
      }

      while (v18 > v4);
      v13 = v18;
    }
  }

  else
  {
    v12 = 216 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 216)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*(v4 + 13) < *(v6 + 13))
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 216;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 216;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 216;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0xD8uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 216 * ((v13 - v4) / 216);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

uint64_t sub_5EBE4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    v41 = *(result + 16);
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      v8 = *(v6 + 176);
      v9 = *(v6 + 144);
      v52 = *(v6 + 160);
      v53 = v8;
      v10 = *(v6 + 176);
      v54 = *(v6 + 192);
      v11 = *(v6 + 112);
      v12 = *(v6 + 80);
      v48 = *(v6 + 96);
      v49 = v11;
      v13 = *(v6 + 112);
      v14 = *(v6 + 144);
      v50 = *(v6 + 128);
      v51 = v14;
      v15 = *(v6 + 48);
      v16 = *(v6 + 16);
      v44 = *(v6 + 32);
      v45 = v15;
      v17 = *(v6 + 48);
      v18 = *(v6 + 80);
      v46 = *(v6 + 64);
      v47 = v18;
      v19 = *(v6 + 16);
      v43[0] = *v6;
      v43[1] = v19;
      v66 = v52;
      v67 = v10;
      v68 = *(v6 + 192);
      v62 = v48;
      v63 = v13;
      v64 = v50;
      v65 = v9;
      v58 = v44;
      v59 = v17;
      v60 = v46;
      v61 = v12;
      v55 = *(v6 + 208);
      v69 = *(v6 + 208);
      v56 = v43[0];
      v57 = v16;
      if (v4)
      {
        result = sub_3C168(v43, v42);
        v2 = v7;
        v20 = __OFSUB__(v4--, 1);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v21 = v7[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        sub_147EC(&qword_B9700, &qword_8B0B8);
        v2 = swift_allocObject();
        v24 = (j__malloc_size(v2) - 32) / 224;
        v2[2] = v23;
        v2[3] = 2 * v24;
        v25 = v7[3] >> 1;
        v26 = 28 * v25;
        v27 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v25;
        v5 = &v2[28 * v25 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v26 + 4] && v2 == v7)
          {
            sub_3C168(v43, v42);
          }

          else
          {
            sub_3C168(v43, v42);
            memmove(v2 + 4, v7 + 4, v26 * 8);
          }

          v7[2] = 0;

          v1 = v41;
          v20 = __OFSUB__(v27, 1);
          v4 = v27 - 1;
          if (v20)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_3C168(v43, v42);

          v20 = __OFSUB__(v27, 1);
          v4 = v27 - 1;
          if (v20)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v28 = v66;
      v29 = v67;
      v30 = v68;
      *(v5 + 216) = v69;
      v31 = v56;
      *(v5 + 3) = v57;
      *(v5 + 1) = v31;
      v32 = v58;
      v33 = v59;
      v34 = v60;
      *(v5 + 11) = v61;
      *(v5 + 9) = v34;
      *(v5 + 7) = v33;
      *(v5 + 5) = v32;
      v35 = v62;
      v36 = v63;
      v37 = v64;
      *(v5 + 19) = v65;
      *(v5 + 17) = v37;
      *(v5 + 15) = v36;
      *(v5 + 13) = v35;
      *(v5 + 25) = v30;
      *(v5 + 23) = v29;
      *(v5 + 21) = v28;
      v5 += 28;
      v6 += 216;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v38 = v2[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v20 = __OFSUB__(v39, v4);
    v40 = v39 - v4;
    if (v20)
    {
      goto LABEL_30;
    }

    v2[2] = v40;
  }

  return v2;
}

uint64_t sub_5EED4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5EF0C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(a1 + 23);
  v12[10] = *(a1 + 21);
  v12[11] = v5;
  v12[12] = *(a1 + 25);
  v13 = *(a1 + 216);
  v6 = *(a1 + 15);
  v12[6] = *(a1 + 13);
  v12[7] = v6;
  v7 = *(a1 + 19);
  v12[8] = *(a1 + 17);
  v12[9] = v7;
  v8 = *(a1 + 7);
  v12[2] = *(a1 + 5);
  v12[3] = v8;
  v9 = *(a1 + 11);
  v12[4] = *(a1 + 9);
  v12[5] = v9;
  v10 = *(a1 + 3);
  v12[0] = *(a1 + 1);
  v12[1] = v10;
  return v2(v4, v12);
}

unint64_t sub_5EFA0()
{
  result = qword_B9688;
  if (!qword_B9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9688);
  }

  return result;
}

unint64_t sub_5EFF4()
{
  result = qword_B9690;
  if (!qword_B9690)
  {
    sub_14E2C(&qword_B9678, &qword_8AFE0);
    sub_5F08C();
    sub_5F13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9690);
  }

  return result;
}

unint64_t sub_5F08C()
{
  result = qword_B9698;
  if (!qword_B9698)
  {
    sub_14E2C(&qword_B96A0, &qword_8AFE8);
    sub_14F24(&qword_B96A8, &qword_B96B0, &qword_8AFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9698);
  }

  return result;
}

unint64_t sub_5F13C()
{
  result = qword_B96B8;
  if (!qword_B96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B96B8);
  }

  return result;
}

uint64_t sub_5F198()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_5F1D8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_147EC(&unk_B8710, &qword_89A80);
  return sub_814E8();
}

unint64_t sub_5F238()
{
  result = qword_B96F0;
  if (!qword_B96F0)
  {
    sub_14E2C(&qword_B96E8, &unk_8B028);
    sub_14F24(&qword_B95D8, &qword_B8FE0, &unk_8ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B96F0);
  }

  return result;
}

uint64_t sub_5F2F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_147EC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_5F36C()
{
  result = qword_B9708;
  if (!qword_B9708)
  {
    sub_14E2C(&qword_B9710, &unk_8B0C0);
    sub_5EFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9708);
  }

  return result;
}

uint64_t sub_5F3F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5F43C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5F494@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

void sub_5F4A0()
{
  v0._countAndFlagsBits = 0xD000000000000022;
  v0._object = 0x80000000000960C0;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BCFD8 = 0xD000000000000022;
  unk_BCFE0 = 0x80000000000960C0;
  byte_BCFE8 = 3;
  qword_BCFF0 = 1530557287;
  unk_BCFF8 = 0xE400000000000000;
}

void sub_5F534()
{
  v0._countAndFlagsBits = 0xD000000000000022;
  v0._object = 0x8000000000096030;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BD000 = 0xD000000000000022;
  *algn_BD008 = 0x8000000000096030;
  byte_BD010 = 3;
  qword_BD018 = 1530557287;
  unk_BD020 = 0xE400000000000000;
}

void sub_5F5C8()
{
  v0._countAndFlagsBits = 0xD000000000000024;
  v0._object = 0x8000000000096060;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BD028 = 0xD000000000000024;
  unk_BD030 = 0x8000000000096060;
  byte_BD038 = 3;
  qword_BD040 = 1530557287;
  unk_BD048 = 0xE400000000000000;
}

void sub_5F65C()
{
  v0._countAndFlagsBits = 0xD000000000000020;
  v0._object = 0x8000000000096090;
  sub_81978(v0);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  sub_81978(v1);
  qword_BD050 = 0xD000000000000020;
  *algn_BD058 = 0x8000000000096090;
  byte_BD060 = 3;
  qword_BD068 = 1530557287;
  unk_BD070 = 0xE400000000000000;
}

__n128 sub_5F6F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_5F704(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_5F74C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IconSize(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5F8FC()
{
  result = qword_B9718;
  if (!qword_B9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9718);
  }

  return result;
}

unint64_t sub_5F950()
{
  result = sub_5F970();
  qword_BD078 = result;
  return result;
}

unint64_t sub_5F970()
{
  sub_147EC(&qword_B9720, &unk_8B310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8B2F0;
  *(v0 + 32) = sub_81928();
  *(v0 + 40) = v1;
  sub_605B0(v69);
  v2 = v69[7];
  *(v0 + 144) = v69[6];
  *(v0 + 160) = v2;
  *(v0 + 176) = v69[8];
  v3 = v69[3];
  *(v0 + 80) = v69[2];
  *(v0 + 96) = v3;
  v4 = v69[5];
  *(v0 + 112) = v69[4];
  *(v0 + 128) = v4;
  v5 = v69[1];
  *(v0 + 48) = v69[0];
  *(v0 + 64) = v5;
  *(v0 + 192) = sub_81928();
  *(v0 + 200) = v6;
  sub_60884(v70);
  v7 = v70[7];
  *(v0 + 304) = v70[6];
  *(v0 + 320) = v7;
  *(v0 + 336) = v70[8];
  v8 = v70[3];
  *(v0 + 240) = v70[2];
  *(v0 + 256) = v8;
  v9 = v70[5];
  *(v0 + 272) = v70[4];
  *(v0 + 288) = v9;
  v10 = v70[1];
  *(v0 + 208) = v70[0];
  *(v0 + 224) = v10;
  *(v0 + 352) = sub_81928();
  *(v0 + 360) = v11;
  if (qword_B7890 != -1)
  {
    swift_once();
  }

  v12 = xmmword_BD0D0;
  v77[6] = xmmword_BD0E0;
  v77[7] = xmmword_BD0F0;
  v13 = xmmword_BD0F0;
  v77[8] = xmmword_BD100;
  v14 = xmmword_BD090;
  v15 = xmmword_BD0A0;
  v77[2] = xmmword_BD0A0;
  v77[3] = xmmword_BD0B0;
  v16 = xmmword_BD0B0;
  v17 = xmmword_BD0C0;
  v77[5] = xmmword_BD0D0;
  v77[4] = xmmword_BD0C0;
  v18 = xmmword_BD080;
  v77[1] = xmmword_BD090;
  v77[0] = xmmword_BD080;
  *(v0 + 464) = xmmword_BD0E0;
  *(v0 + 480) = v13;
  *(v0 + 496) = xmmword_BD100;
  *(v0 + 400) = v15;
  *(v0 + 416) = v16;
  *(v0 + 432) = v17;
  *(v0 + 448) = v12;
  *(v0 + 368) = v18;
  *(v0 + 384) = v14;
  v19 = sub_81928();
  v20 = xmmword_BD0D0;
  v78[6] = xmmword_BD0E0;
  v78[7] = xmmword_BD0F0;
  v21 = xmmword_BD0F0;
  v78[8] = xmmword_BD100;
  v22 = xmmword_BD090;
  v23 = xmmword_BD0A0;
  v78[2] = xmmword_BD0A0;
  v78[3] = xmmword_BD0B0;
  v24 = xmmword_BD0B0;
  v25 = xmmword_BD0C0;
  v78[5] = xmmword_BD0D0;
  v78[4] = xmmword_BD0C0;
  v26 = xmmword_BD080;
  v78[1] = xmmword_BD090;
  v78[0] = xmmword_BD080;
  *(v0 + 624) = xmmword_BD0E0;
  *(v0 + 640) = v21;
  *(v0 + 656) = xmmword_BD100;
  *(v0 + 560) = v23;
  *(v0 + 576) = v24;
  *(v0 + 592) = v25;
  *(v0 + 608) = v20;
  *(v0 + 512) = v19;
  *(v0 + 520) = v27;
  *(v0 + 528) = v26;
  *(v0 + 544) = v22;
  *(v0 + 672) = sub_81928();
  *(v0 + 680) = v28;
  sub_3BE20(v77, v79);
  sub_3BE20(v78, v79);
  sub_60B84(v71);
  v29 = v71[7];
  *(v0 + 784) = v71[6];
  *(v0 + 800) = v29;
  *(v0 + 816) = v71[8];
  v30 = v71[3];
  *(v0 + 720) = v71[2];
  *(v0 + 736) = v30;
  v31 = v71[5];
  *(v0 + 752) = v71[4];
  *(v0 + 768) = v31;
  v32 = v71[1];
  *(v0 + 688) = v71[0];
  *(v0 + 704) = v32;
  *(v0 + 832) = sub_81928();
  *(v0 + 840) = v33;
  if (qword_B7898 != -1)
  {
    swift_once();
  }

  v34 = xmmword_BD160;
  v79[6] = xmmword_BD170;
  v79[7] = xmmword_BD180;
  v35 = xmmword_BD180;
  v79[8] = xmmword_BD190;
  v36 = xmmword_BD120;
  v37 = xmmword_BD130;
  v79[2] = xmmword_BD130;
  v79[3] = xmmword_BD140;
  v38 = xmmword_BD140;
  v39 = xmmword_BD150;
  v79[4] = xmmword_BD150;
  v79[5] = xmmword_BD160;
  v40 = xmmword_BD110;
  v79[0] = xmmword_BD110;
  v79[1] = xmmword_BD120;
  *(v0 + 944) = xmmword_BD170;
  *(v0 + 960) = v35;
  *(v0 + 976) = xmmword_BD190;
  *(v0 + 880) = v37;
  *(v0 + 896) = v38;
  *(v0 + 912) = v39;
  *(v0 + 928) = v34;
  *(v0 + 848) = v40;
  *(v0 + 864) = v36;
  *(v0 + 992) = sub_81928();
  *(v0 + 1000) = v41;
  sub_3BE20(v79, v76);
  sub_60CB4(v72);
  v42 = v72[4];
  *(v0 + 1088) = v72[5];
  v43 = v72[7];
  *(v0 + 1104) = v72[6];
  *(v0 + 1120) = v43;
  *(v0 + 1136) = v72[8];
  v44 = v72[3];
  *(v0 + 1040) = v72[2];
  *(v0 + 1056) = v44;
  *(v0 + 1072) = v42;
  v45 = v72[1];
  *(v0 + 1008) = v72[0];
  *(v0 + 1024) = v45;
  *(v0 + 1152) = sub_81928();
  *(v0 + 1160) = v46;
  sub_60DE4(v73);
  v47 = v73[4];
  *(v0 + 1248) = v73[5];
  v48 = v73[7];
  *(v0 + 1264) = v73[6];
  *(v0 + 1280) = v48;
  *(v0 + 1296) = v73[8];
  v49 = v73[0];
  *(v0 + 1184) = v73[1];
  v50 = v73[3];
  *(v0 + 1200) = v73[2];
  *(v0 + 1216) = v50;
  *(v0 + 1232) = v47;
  *(v0 + 1168) = v49;
  *(v0 + 1312) = sub_81928();
  *(v0 + 1320) = v51;
  sub_60F18(v74);
  v52 = v74[4];
  *(v0 + 1408) = v74[5];
  v53 = v74[7];
  *(v0 + 1424) = v74[6];
  *(v0 + 1440) = v53;
  *(v0 + 1456) = v74[8];
  v54 = v74[0];
  *(v0 + 1344) = v74[1];
  v55 = v74[3];
  *(v0 + 1360) = v74[2];
  *(v0 + 1376) = v55;
  *(v0 + 1392) = v52;
  *(v0 + 1328) = v54;
  *(v0 + 1472) = sub_81928();
  *(v0 + 1480) = v56;
  sub_6113C(v75);
  v57 = v75[4];
  *(v0 + 1568) = v75[5];
  v58 = v75[7];
  *(v0 + 1584) = v75[6];
  *(v0 + 1600) = v58;
  *(v0 + 1616) = v75[8];
  v59 = v75[0];
  *(v0 + 1504) = v75[1];
  v60 = v75[3];
  *(v0 + 1520) = v75[2];
  *(v0 + 1536) = v60;
  *(v0 + 1552) = v57;
  *(v0 + 1488) = v59;
  v61 = sub_3AAE4(v0);
  swift_setDeallocating();
  sub_147EC(&qword_B82F8, &qword_891D0);
  swift_arrayDestroy();
  v62 = swift_deallocClassInstance();
  if (_IsInternalInstall(v62))
  {
    v63 = sub_81928();
    v65 = v64;
    if (qword_B78A0 != -1)
    {
      swift_once();
    }

    v76[6] = xmmword_BD200;
    v76[7] = unk_BD210;
    v76[8] = xmmword_BD220;
    v76[2] = xmmword_BD1C0;
    v76[3] = unk_BD1D0;
    v76[5] = unk_BD1F0;
    v76[4] = xmmword_BD1E0;
    v76[1] = *algn_BD1B0;
    v76[0] = xmmword_BD1A0;
    sub_3BE20(v76, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v61;
    sub_37B70(v76, v63, v65, isUniquelyReferenced_nonNull_native);

    return v68[0];
  }

  return v61;
}

double sub_5FF14()
{
  sub_5FF68(&v1);
  xmmword_BD0E0 = v7;
  xmmword_BD0F0 = v8;
  xmmword_BD100 = v9;
  xmmword_BD0A0 = v3;
  xmmword_BD0B0 = v4;
  xmmword_BD0C0 = v5;
  xmmword_BD0D0 = v6;
  result = *&v2;
  xmmword_BD080 = v1;
  xmmword_BD090 = v2;
  return result;
}

void sub_5FF68(uint64_t a1@<X8>)
{
  v2 = sub_818E8();
  v3 = [objc_opt_self() bundleWithIdentifier:v2];

  v4 = sub_81928();
  v6 = v5;
  v7 = sub_818E8();
  v8 = sub_818E8();
  v9 = STLocalizedString(v7);

  v10 = sub_81928();
  v12 = v11;

  v13 = sub_818E8();
  v14 = sub_818E8();
  v15 = STLocalizedString(v13);

  v16 = sub_81928();
  v18 = v17;

  v19 = sub_60A1C(&off_AAC68);
  sub_3BD1C(&unk_AAC88);

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = xmmword_8B300;
  *(a1 + 64) = 0;
  strcpy((a1 + 72), "com.apple.icq");
  *(a1 + 86) = -4864;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = v19;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

double sub_60188()
{
  sub_601DC(&v1);
  xmmword_BD170 = v7;
  xmmword_BD180 = v8;
  xmmword_BD190 = v9;
  xmmword_BD130 = v3;
  xmmword_BD140 = v4;
  xmmword_BD150 = v5;
  xmmword_BD160 = v6;
  result = *&v2;
  xmmword_BD110 = v1;
  xmmword_BD120 = v2;
  return result;
}

uint64_t sub_601DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  sub_81788();
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  v11 = sub_81928();
  v13 = v12;
  v14 = sub_60A1C(&off_AAC98);
  result = sub_3BD1C(&unk_AACB8);
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD00000000000002BLL;
  *(a1 + 56) = 0x8000000000096450;
  *(a1 + 64) = 3;
  *(a1 + 72) = v2;
  *(a1 + 80) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = v14;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

double sub_603B8()
{
  sub_6040C(&v1);
  xmmword_BD200 = v7;
  unk_BD210 = v8;
  xmmword_BD220 = v9;
  xmmword_BD1C0 = v3;
  unk_BD1D0 = v4;
  xmmword_BD1E0 = v5;
  unk_BD1F0 = v6;
  result = *&v2;
  xmmword_BD1A0 = v1;
  *algn_BD1B0 = v2;
  return result;
}

uint64_t sub_6040C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  v11 = sub_818E8();
  v12 = sub_818E8();
  v13 = STLocalizedString(v11);

  v14 = sub_81928();
  v16 = v15;

  result = sub_81928();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = result;
  *(a1 + 80) = v18;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_605B0@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 systemName];

  v5 = sub_81928();
  v36 = v6;
  v37 = v5;

  v7 = [v2 currentDevice];
  v8 = [v7 systemVersion];

  v9 = sub_81928();
  v32 = v10;
  v33 = v9;

  v11 = sub_81928();
  v34 = v12;
  v35 = v11;
  v13 = sub_818E8();
  v14 = sub_818E8();
  v15 = STLocalizedString(v13);

  v16 = sub_81928();
  v18 = v17;

  v19 = [v2 currentDevice];
  v20 = [v19 systemVersion];

  v21 = sub_81928();
  v23 = v22;

  v24 = sub_818E8();
  v25 = sub_818E8();
  v26 = STLocalizedString(v24);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_886D0;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_1A83C();
  *(v27 + 32) = v33;
  *(v27 + 40) = v32;
  v28 = sub_81938();
  v30 = v29;

  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v37;
  *(a1 + 24) = v36;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xD000000000000015;
  *(a1 + 80) = 0x8000000000096190;
  *(a1 + 88) = v21;
  *(a1 + 96) = v23;
  *(a1 + 104) = v28;
  *(a1 + 112) = v30;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

void sub_60884(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  v11 = sub_818E8();
  v12 = sub_818E8();
  v13 = STLocalizedString(v11);

  v14 = sub_81928();
  v16 = v15;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xD000000000000015;
  *(a1 + 80) = 0x8000000000096190;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

Swift::Int sub_60A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_147EC(&qword_B7E80, &unk_8B320);
    v3 = sub_81CE8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_81E78();

      sub_81968();
      result = sub_81EB8();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_81E18();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_60B84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  result = sub_612B8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD000000000000015;
  *(a1 + 56) = 0x8000000000096190;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xD000000000000015;
  *(a1 + 80) = 0x8000000000096190;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = result;
  return result;
}

uint64_t sub_60CB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  result = sub_81928();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD00000000000001CLL;
  *(a1 + 56) = 0x8000000000096430;
  *(a1 + 64) = 3;
  *(a1 + 72) = result;
  *(a1 + 80) = v12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_60DE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  result = sub_81928();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xD000000000000029;
  *(a1 + 56) = 0x80000000000963C0;
  *(a1 + 64) = 3;
  *(a1 + 72) = result;
  *(a1 + 80) = v12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
  return result;
}

void sub_60F18(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "macbook.and.ipad";
  v4 = sub_81788();
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 4)
      {
        v3 = "ia in detail view";
        v2 = 0xD000000000000015;
      }

      else
      {
        v3 = "data entry in app list";
        v2 = 0xD000000000000022;
      }
    }
  }

  else if (v4)
  {
    v3 = "macbook.and.visionpro";
    v2 = 0xD000000000000010;
  }

  v5 = sub_81928();
  v22 = v6;
  v23 = v5;
  v7 = sub_81928();
  v9 = v8;
  v10 = sub_818E8();
  v11 = sub_818E8();
  v12 = STLocalizedString(v10);

  v13 = sub_81928();
  v15 = v14;

  v16 = sub_818E8();
  v17 = sub_818E8();
  v18 = STLocalizedString(v16);

  v19 = sub_81928();
  v21 = v20;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3 | 0x8000000000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = v23;
  *(a1 + 80) = v22;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

uint64_t sub_6113C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_81928();
  v4 = v3;
  v5 = sub_818E8();
  v6 = sub_818E8();
  v7 = STLocalizedString(v5);

  v8 = sub_81928();
  v10 = v9;

  if (qword_B7880 != -1)
  {
    swift_once();
  }

  v11 = qword_BD050;
  v12 = *algn_BD058;
  v14 = qword_BD068;
  v13 = unk_BD070;
  v15 = byte_BD060;
  sub_2092C(qword_BD050, *algn_BD058, byte_BD060);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v15;
  *(a1 + 72) = v14;
  *(a1 + 80) = v13;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x6E4920656C707041;
  *(a1 + 112) = 0xEA00000000002E63;
  *(a1 + 120) = &_swiftEmptySetSingleton;
  *(a1 + 128) = &_swiftEmptySetSingleton;
  *(a1 + 136) = 0;
}

unint64_t sub_612B8()
{
  result = qword_B9728;
  if (!qword_B9728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_B9728);
  }

  return result;
}

__n128 sub_61304(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_61330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_61378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_613EC(uint64_t a1, int a2, uint64_t a3)
{
  v51 = a3;
  v47 = a2;
  v4 = sub_80BC8();
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v9;
  v50 = sub_80B38();
  v45 = *(v50 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v50);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_147EC(&unk_B8240, &qword_88F50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v48 = &v43 - v13;
  v14 = sub_147EC(&qword_B8568, &unk_89590);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v43 - v16;
  v18 = sub_80B08();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v22 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v43 - v23;
  sub_619A8(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_3ED38(v17);
    v25 = sub_80BA8();
    v26 = v52;
    (*(v52 + 16))(v8, v25, v4);
    v27 = sub_80BB8();
    v28 = sub_81B08();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_0, v27, v28, "Navigation failed: destination nil", v29, 2u);
    }

    return (*(v26 + 8))(v8, v4);
  }

  else
  {
    v31 = v52;
    v44 = *(v19 + 32);
    v44(v24, v17, v18);
    if (v47)
    {
      v32 = sub_81AB8();
      (*(*(v32 - 8) + 56))(v48, 1, 1, v32);
      (*(v19 + 16))(v22, v24, v18);
      v33 = v45;
      (*(v45 + 16))(v49, v51, v50);
      v34 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v35 = (v20 + *(v33 + 80) + v34) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      v44((v36 + v34), v22, v18);
      (*(v33 + 32))(v36 + v35, v49, v50);
      sub_68AE4(0, 0, v48, &unk_8B458, v36);
    }

    else
    {
      v37 = sub_80BA8();
      v38 = v31;
      v39 = v46;
      (*(v31 + 16))(v46, v37, v4);
      v40 = sub_80BB8();
      v41 = sub_81B08();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "Not protected: presenting content", v42, 2u);
      }

      (*(v38 + 8))(v39, v4);
      sub_62560();
      sub_80B28();
    }

    return (*(v19 + 8))(v24, v18);
  }
}

uint64_t sub_619A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8568, &unk_89590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_61A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_80BC8();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = sub_80B38();
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v5[29] = *(v10 + 64);
  v5[30] = swift_task_alloc();
  v11 = sub_80B08();
  v5[31] = v11;
  v12 = *(v11 - 8);
  v5[32] = v12;
  v5[33] = *(v12 + 64);
  v5[34] = swift_task_alloc();
  v13 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_61BD8, 0, 0);
}

uint64_t sub_61BD8()
{
  v1 = [objc_opt_self() sharedGuard];
  v0[36] = v1;
  v0[2] = v0;
  v0[7] = v0 + 38;
  v0[3] = sub_61D18;
  v2 = swift_continuation_init();
  v0[17] = sub_147EC(&qword_B9738, &qword_8B460);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_62254;
  v0[13] = &unk_AC970;
  v0[14] = v2;
  [v1 authenticateUnconditionallyWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_61D18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_62034;
  }

  else
  {
    v3 = sub_61E28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_61E28()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 256);
  v5 = *(v0 + 240);
  v21 = v5;
  v22 = *(v0 + 264);
  v6 = *(v0 + 224);
  v23 = v1;
  v7 = *(v0 + 216);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);

  v10 = sub_81AB8();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  (*(v4 + 16))(v2, v9, v3);
  (*(v6 + 16))(v5, v8, v7);
  sub_81A88();
  v11 = sub_81A78();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v22 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v4 + 32))(v14 + v12, v2, v3);
  (*(v6 + 32))(v14 + v13, v21, v7);
  sub_68AE4(0, 0, v23, &unk_8B470, v14);

  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 240);
  v18 = *(v0 + 208);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_62034()
{
  v32 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  v6 = sub_80BA8();
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = sub_80BB8();
  v8 = sub_81B18();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[37];
    v10 = v0[25];
    v30 = v0[26];
    v11 = v0[24];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[20];
    v17 = sub_81E48();
    v19 = sub_34588(v17, v18, &v31);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_0, v7, v8, "Authentication Error: %{public}s", v12, 0xCu);
    sub_20FD0(v13);

    (*(v10 + 8))(v30, v11);
  }

  else
  {
    v20 = v0[37];
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[24];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[34];
  v24 = v0[35];
  v26 = v0[30];
  v27 = v0[26];

  v28 = v0[1];

  return v28();
}

uint64_t sub_62254(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_22CB8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_147EC(&qword_B8018, &qword_89D40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_62320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_80BC8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  sub_81A88();
  v5[7] = sub_81A78();
  v10 = sub_81A58();

  return _swift_task_switch(sub_62414, v10, v9);
}

uint64_t sub_62414()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  v5 = sub_80BA8();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_80BB8();
  v7 = sub_81B08();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Presenting protected content", v8, 2u);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[2];

  (*(v10 + 8))(v9, v12);
  sub_80B08();
  sub_62560();
  sub_80B28();

  v14 = v0[1];

  return v14();
}

unint64_t sub_62560()
{
  result = qword_B9730;
  if (!qword_B9730)
  {
    sub_80B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9730);
  }

  return result;
}

uint64_t sub_625BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_80B08() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_80B38() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_16268;

  return sub_61A18(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_62724()
{
  v1 = sub_80B08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_80B38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_62874(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_80B08() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_80B38() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22EB0;

  return sub_62320(a1, v10, v11, v1 + v6, v1 + v9);
}

void sub_629C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Application();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = a1[1];
  if (sub_81928() == v8 && v10 == v9)
  {

LABEL_25:
    if (__OFADD__(a1[6], a1[7]))
    {
      __break(1u);
    }

    else
    {
      sub_81928();
      v22 = [objc_opt_self() currentDevice];
      v23 = [v22 systemName];

      sub_81928();
      if (qword_B78B8 == -1)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

LABEL_53:
    swift_once();
    goto LABEL_27;
  }

  v12 = sub_81E18();

  if (v12)
  {
    goto LABEL_25;
  }

  if (sub_81928() == v8 && v13 == v9)
  {

LABEL_31:
    if (__OFADD__(a1[6], a1[7]))
    {
      __break(1u);
    }

    else
    {
      sub_81928();
      v33 = sub_818E8();
      v34 = sub_818E8();
      v35 = STLocalizedString(v33);

      sub_81928();
      if (qword_B78C0 == -1)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_53;
  }

  v15 = sub_81E18();

  if (v15)
  {
    goto LABEL_31;
  }

  if ((v8 != 0xD000000000000013 || 0x8000000000096820 != v9) && (sub_81E18() & 1) == 0 && (v8 != 0xD000000000000014 || 0x8000000000096840 != v9) && (sub_81E18() & 1) == 0 && (v8 != 0x6C7070612E6D6F63 || v9 != 0xEF636973754D2E65) && (sub_81E18() & 1) == 0 && (v8 != 0xD000000000000019 || 0x8000000000094730 != v9))
  {
    v36 = sub_81E18();
    v37 = v8 == 0x6C7070612E6D6F63 && v9 == 0xEC00000076742E65;
    v38 = v37;
    if ((v36 & 1) == 0 && !v38 && (sub_81E18() & 1) == 0 && (v8 != 0xD000000000000012 || 0x8000000000096860 != v9) && (sub_81E18() & 1) == 0 && (v8 != 0xD000000000000010 || 0x8000000000096880 != v9) && (sub_81E18() & 1) == 0)
    {
      if (sub_81928() != v8 || v39 != v9)
      {
        goto LABEL_57;
      }

LABEL_51:

      goto LABEL_22;
    }
  }

  while (1)
  {
LABEL_22:
    sub_208C8(a1, v7);
    v16 = v7[6];
    v17 = v7[7];
    a1 = (v16 + v17);
    if (!__OFADD__(v16, v17))
    {
      v19 = v7[2];
      v18 = v7[3];
      v21 = *v7;
      v20 = v7[1];

      sub_81798();
      sub_2095C(v7);
      goto LABEL_29;
    }

    __break(1u);
LABEL_57:
    v40 = sub_81E18();

    if ((v40 & 1) == 0)
    {
      if (sub_81928() == v8 && v41 == v9)
      {
        goto LABEL_51;
      }

      v42 = sub_81E18();

      if ((v42 & 1) == 0)
      {
        if (sub_81928() == v8 && v43 == v9)
        {
          goto LABEL_51;
        }

        v8 = sub_81E18();

        if ((v8 & 1) == 0)
        {
          break;
        }
      }
    }
  }

  v44 = sub_818E8();
  v45 = sub_818E8();
  v46 = STLocalizedString(v44);

  sub_81928();
  if (__OFADD__(a1[6], a1[7]))
  {
    __break(1u);
    return;
  }

LABEL_28:
  sub_81798();
LABEL_29:
  v24 = v55;
  v25 = v54;
  v26 = v53;
  v27 = v52;
  v28 = v51;
  v29 = v50;
  v31 = v48;
  v30 = v49;
  v32 = *&v47[24];
  *a2 = *&v47[8];
  *(a2 + 16) = v32;
  *(a2 + 32) = v31;
  *(a2 + 40) = v30;
  *(a2 + 48) = v29;
  *(a2 + 49) = v28;
  *(a2 + 56) = v27;
  *(a2 + 64) = v26;
  *(a2 + 72) = v25;
  *(a2 + 80) = v24;
}

uint64_t sub_630CC()
{
  swift_getKeyPath();
  sub_64AE4();
  sub_80A68();

  return *(v0 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud);
}

uint64_t sub_63144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_64AE4();
  sub_80A68();

  *a2 = *(v3 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud);
  return result;
}

uint64_t sub_631EC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_64AE4();
    sub_80A58();
  }

  return result;
}

uint64_t sub_632D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_147EC(&unk_B8240, &qword_88F50) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = async function pointer to EnrollmentAssetService.activate()[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_633B0;

  return EnrollmentAssetService.activate()();
}

uint64_t sub_633B0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_634AC, 0, 0);
}

uint64_t sub_634AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_81AB8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_68AE4(0, 0, v2, &unk_8B518, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_635AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_80BC8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_63684, 0, 0);
}

uint64_t sub_63684()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_80BA8();
  v0[9] = v4;
  v5 = *(v3 + 16);
  v0[10] = v5;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_80BB8();
  v7 = sub_81B38();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Attempting to update VisionProData iCloud sync status.", v8, 2u);
  }

  v9 = v0[8];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];

  v13 = *(v11 + 8);
  v0[12] = v13;
  v13(v9, v10);
  v14 = async function pointer to EnrollmentAssetService.isCloudSyncEnabled()[1];
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_637FC;

  return EnrollmentAssetService.isCloudSyncEnabled()();
}

uint64_t sub_637FC(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_63BB8;
  }

  else
  {
    v5 = sub_63914;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_63914()
{
  v1 = *(v0 + 88);
  (*(v0 + 80))(*(v0 + 56), *(v0 + 72), *(v0 + 32));
  v2 = sub_80BB8();
  v3 = sub_81B38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 128);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_0, v2, v3, "VisionProData icloud sync status is %{BOOL}d.", v5, 8u);
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);

  v6(v7, v8);
  sub_81A88();
  *(v0 + 120) = sub_81A78();
  v11 = sub_81A58();

  return _swift_task_switch(sub_63A70, v11, v10);
}

uint64_t sub_63A70()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 24);

  if (v2 == *(v3 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud))
  {
    *(v3 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud) = *(v0 + 128);
  }

  else
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 128);
    v6 = *(v0 + 24);
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    *(v0 + 16) = v6;
    sub_64AE4();
    sub_80A58();
  }

  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_63BB8()
{
  v1 = *(v0 + 88);
  (*(v0 + 80))(*(v0 + 48), *(v0 + 72), *(v0 + 32));
  v2 = sub_80BB8();
  v3 = sub_81B38();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v2, v3, "Failed updating VisionProData iCloud sync status", v10, 2u);
  }

  v6(v7, v9);
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_63CF8()
{
  v1[17] = v0;
  v2 = sub_80C28();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = sub_80BC8();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_63E2C, 0, 0);
}

uint64_t sub_63E2C()
{
  v1 = v0[17];
  swift_getKeyPath();
  v0[15] = v1;
  sub_64AE4();
  sub_80A68();

  if (*(v1 + OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel__isVisionProDataSyncedToICloud))
  {
    sub_147EC(&qword_B9898, qword_8B548);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_886D0;
    *(inited + 32) = sub_81928();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v3;
    *(inited + 48) = 0xD00000000000004DLL;
    *(inited + 56) = 0x8000000000096970;
    sub_3B59C(inited);
    swift_setDeallocating();
    sub_64B3C(inited + 32);
    v4 = objc_allocWithZone(NSError);
    v5 = sub_818E8();
    isa = sub_81828().super.isa;

    [v4 initWithDomain:v5 code:0 userInfo:isa];

    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[23];
    v10 = v0[20];
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[25];
    v14 = v0[21];
    v15 = v0[22];
    v16 = sub_80BA8();
    v0[26] = v16;
    v17 = *(v15 + 16);
    v0[27] = v17;
    v0[28] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v13, v16, v14);
    v18 = sub_80BB8();
    v19 = sub_81B38();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Attempting to remove VisionPro local data from this device.", v20, 2u);
    }

    v21 = v0[25];
    v22 = v0[21];
    v23 = v0[22];
    v25 = v0[19];
    v24 = v0[20];
    v27 = v0[17];
    v26 = v0[18];

    v28 = *(v23 + 8);
    v0[29] = v28;
    v28(v21, v22);
    (*(v25 + 104))(v24, enum case for EnrollmentDataLocation.local(_:), v26);
    v29 = async function pointer to EnrollmentAssetService.deleteEnrollmentData(from:)[1];
    v30 = swift_task_alloc();
    v0[30] = v30;
    *v30 = v0;
    v30[1] = sub_641C0;
    v31 = v0[20];

    return EnrollmentAssetService.deleteEnrollmentData(from:)(v31);
  }
}

uint64_t sub_641C0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  (*(v2[19] + 8))(v2[20], v2[18]);
  if (v0)
  {
    v5 = sub_64468;
  }

  else
  {
    v5 = sub_64328;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_64328()
{
  v1 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 192), *(v0 + 208), *(v0 + 168));
  v2 = sub_80BB8();
  v3 = sub_81B38();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "VisionPro local data was removed from this device successfuly.", v4, 2u);
  }

  v5 = *(v0 + 232);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);

  v5(v7, v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_64468()
{
  v30 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  (*(v0 + 216))(*(v0 + 184), *(v0 + 208), *(v0 + 168));
  swift_errorRetain();
  v3 = sub_80BB8();
  v4 = sub_81B38();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v28 = *(v0 + 232);
    v7 = *(v0 + 176);
    v6 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 112);
    v14 = sub_81E48();
    v16 = sub_34588(v14, v15, &v29);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v3, v4, "VisionPro local data removal failed for reason %s.", v9, 0xCu);
    sub_20FD0(v10);

    v28(v6, v8);
  }

  else
  {
    v17 = *(v0 + 232);
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v20 = *(v0 + 168);

    v17(v18, v20);
  }

  v21 = *(v0 + 248);
  v23 = *(v0 + 192);
  v22 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25 = *(v0 + 160);
  swift_willThrow();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_64678()
{
  v1 = OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel_enrollmentAssetService;
  v2 = sub_80C18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17StorageSettingsUI29VisionProDataApplicationModel___observationRegistrar;
  v4 = sub_80AA8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisionProDataApplicationModel()
{
  result = qword_B9780;
  if (!qword_B9780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_647A8()
{
  result = sub_80C18();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_80AA8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_6487C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_648BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_16268;

  return sub_635AC(a1, v4, v5, v6);
}

uint64_t sub_64970()
{
  v0 = sub_818E8();
  v1 = sub_818E8();
  v2 = STLocalizedString(v0);

  sub_81928();
  sub_147EC(&qword_B7CB0, &qword_88A40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_886D0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1A83C();
  *(v3 + 32) = 0xD000000000000055;
  *(v3 + 40) = 0x8000000000096AC0;
  v4 = sub_818F8();
  v6 = v5;

  qword_BD230 = v4;
  *algn_BD238 = v6;
  return result;
}

unint64_t sub_64AE4()
{
  result = qword_B9890;
  if (!qword_B9890)
  {
    type metadata accessor for VisionProDataApplicationModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9890);
  }

  return result;
}

uint64_t sub_64B3C(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8330, &qword_89300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_64D40(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_64E08;

  return sub_65C78(v4);
}

uint64_t sub_64E08(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

id sub_64F90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppRemovability();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_64FE8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22EB0;

  return v7();
}

uint64_t sub_650D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_16268;

  return v8();
}

uint64_t sub_651B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_147EC(&unk_B8240, &qword_88F50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_22904(a3, v25 - v11);
  v13 = sub_81AB8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2289C(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_81AA8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_81A58();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_81958() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_2289C(a3);

    return v23;
  }

LABEL_8:
  sub_2289C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_65474(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6556C;

  return v7(a1);
}

uint64_t sub_6556C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_65684()
{
  v1 = [*(v0 + 152) bundleIdentifier];
  if (v1 && (v2 = v1, v3 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleIdentifier:v1], *(v0 + 160) = v3, v2, v3))
  {
    v4 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_6583C;
    v5 = swift_continuation_init();
    *(v0 + 136) = sub_147EC(&qword_B98C8, &qword_8B588);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21F04;
    *(v0 + 104) = &unk_AC9E8;
    *(v0 + 112) = v5;
    [v4 removabilityForAppWithIdentity:v3 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6(0);
  }
}

uint64_t sub_6583C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_659B8;
  }

  else
  {
    v3 = sub_6594C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_6594C()
{
  v1 = *(v0 + 144) == 1;
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_659B8()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

id sub_65A34(void *a1)
{
  result = [a1 bundleIdentifier];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = sub_81928();
  v6 = v5;

  if ([a1 isManagedAppDistributor] & 1) != 0 || (v4 == 0xD000000000000012 ? (v7 = 0x8000000000094050 == v6) : (v7 = 0), v7 || (sub_81E18()))
  {
    v8 = sub_80AC8();
    if (v8[2])
    {
      v10 = v8[4];
      v9 = v8[5];

      if (v10 == v4 && v9 == v6)
      {

        return &dword_0 + 1;
      }

      else
      {
        v12 = sub_81E18();

        return (v12 & 1);
      }
    }

LABEL_15:

    return 0;
  }

  if (![a1 supportedDefaultAppCategories])
  {
    goto LABEL_15;
  }

  v18 = 0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;

    v17 = 0;
    v14 = [v13 getDefaultApplicationCategories:&v18 withCurrentDefaultApplication:a1 error:&v17];

    if (v14)
    {
      v15 = v17;
    }

    else
    {
      v16 = v17;
      sub_80958();

      swift_willThrow();
    }

    return (v18 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_65C98()
{
  v1 = [objc_opt_self() sharedConnection];
  if (!v1)
  {
LABEL_4:
    v4 = *(v0 + 8);

    return v4(0);
  }

  v2 = v1;
  if ([*(v0 + 16) isDeletableSystemApplication])
  {
    v3 = [v2 isSystemAppRemovalAllowed];

    if (!v3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = [v2 isAppRemovalAllowed];

    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_65DD4;
  v8 = *(v0 + 16);

  return sub_65664(v8);
}

uint64_t sub_65DD4(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_65ED4, 0, 0);
}

uint64_t sub_65ED4()
{
  if (*(v0 + 32) == 1)
  {
    v1 = sub_65A34(*(v0 + 16)) ^ 1;
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_65F68()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_65FA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_16268;

  return sub_64D40(v2, v3);
}

uint64_t sub_66060()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22EB0;

  return sub_64FE8(v2, v3, v5);
}

uint64_t sub_66120()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_66160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22EB0;

  return sub_650D0(a1, v4, v5, v7);
}

uint64_t sub_6622C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_66264(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22EB0;

  return sub_65474(a1, v5);
}

uint64_t sub_6631C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_16268;

  return sub_65474(a1, v5);
}

uint64_t sub_66408@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v4 = a1[3];
  v8 = a1[2];
  v3 = v8;
  v9 = v4;
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  return sub_66D8C(v7, &v6);
}

uint64_t sub_66448()
{
  v1 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_80C68();

    sub_147EC(&qword_B8190, &qword_88E88);
    sub_14F24(&qword_B98D0, &qword_B8190, &qword_88E88);
    sub_66CE4();
    sub_66D38();
    return sub_81608();
  }

  else
  {
    v4 = *(v0 + 8);
    type metadata accessor for StorageShared();
    sub_1635C();
    result = sub_80E58();
    __break(1u);
  }

  return result;
}

uint64_t sub_6659C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_147EC(&qword_B98F8, &unk_8B760);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v41 - v7;
  v43 = sub_147EC(&qword_B8688, &qword_899D8);
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v43);
  v12 = &v41 - v11;
  v42 = sub_147EC(&unk_B86A0, &unk_8B770);
  v13 = *(*(v42 - 8) + 64);
  v14 = __chkstk_darwin(v42);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v41 - v18;
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v48 = a1;
  v44 = a1;
  v47 = a1;
  sub_432C8();
  sub_814B8();
  sub_147EC(&qword_B8698, &unk_899E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_886E0;
  v23 = sub_811A8();
  *(inited + 32) = v23;
  v24 = sub_811B8();
  *(inited + 33) = v24;
  v25 = sub_811C8();
  sub_811C8();
  if (sub_811C8() != v23)
  {
    v25 = sub_811C8();
  }

  sub_811C8();
  if (sub_811C8() != v24)
  {
    v25 = sub_811C8();
  }

  sub_80CC8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v9 + 32))(v19, v12, v43);
  v34 = &v19[*(v42 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_43324(v19, v21);
  *v8 = sub_81008();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v35 = sub_147EC(&qword_B9900, &qword_8B780);
  v36 = *(v35 + 44);
  __chkstk_darwin(v35);
  *(&v41 - 2) = v44;
  sub_147EC(&qword_B9908, &qword_8B788);
  sub_66F60();
  sub_814B8();
  sub_14F6C(v21, v16, &unk_B86A0, &unk_8B770);
  v37 = v46;
  sub_14F6C(v8, v46, &qword_B98F8, &unk_8B760);
  v38 = v45;
  sub_14F6C(v16, v45, &unk_B86A0, &unk_8B770);
  v39 = sub_147EC(&qword_B9918, &qword_8B790);
  sub_14F6C(v37, v38 + *(v39 + 48), &qword_B98F8, &unk_8B760);
  sub_14FD4(v8, &qword_B98F8, &unk_8B760);
  sub_14FD4(v21, &unk_B86A0, &unk_8B770);
  sub_14FD4(v37, &qword_B98F8, &unk_8B760);
  return sub_14FD4(v16, &unk_B86A0, &unk_8B770);
}

uint64_t sub_66A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = 2;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_66AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  sub_14ED0();

  v3 = sub_81288();
  v5 = v4;
  v7 = v6;
  sub_811E8();
  v8 = sub_81258();
  v10 = v9;
  v12 = v11;

  sub_15034(v3, v5, v7 & 1);

  sub_81448();
  v13 = sub_81228();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_15034(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

double sub_66C1C@<D0>(uint64_t a1@<X8>)
{
  sub_81688();
  sub_80D68();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_66CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v5[0] = *v1;
  v5[1] = v2;
  v3 = v1[3];
  v5[2] = v1[2];
  v5[3] = v3;
  return sub_6659C(v5, a1);
}

unint64_t sub_66CE4()
{
  result = qword_B98D8;
  if (!qword_B98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B98D8);
  }

  return result;
}

unint64_t sub_66D38()
{
  result = qword_B98E0;
  if (!qword_B98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B98E0);
  }

  return result;
}

__n128 sub_66DE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_66DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_66E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_66EA8()
{
  result = qword_B98E8;
  if (!qword_B98E8)
  {
    sub_14E2C(&qword_B98F0, &qword_8B708);
    sub_66CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B98E8);
  }

  return result;
}

unint64_t sub_66F60()
{
  result = qword_B9910;
  if (!qword_B9910)
  {
    sub_14E2C(&qword_B9908, &qword_8B788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9910);
  }

  return result;
}

unint64_t sub_66FF0()
{
  result = qword_B9920;
  if (!qword_B9920)
  {
    sub_14E2C(&qword_B9928, &qword_8B7C8);
    sub_14F24(&qword_B9930, &qword_B9938, &unk_8B7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_B9920);
  }

  return result;
}

uint64_t sub_670DC(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_813F8();
  *a3 = result;
  return result;
}

uint64_t AsyncButton.init(role:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for AsyncButton();
  v11 = a5 + v10[11];
  sub_814C8();
  *v11 = v15;
  *(v11 + 1) = v16;
  sub_67288(a1, a5 + v10[10]);
  *a5 = a2;
  a5[1] = a3;
  v12 = v10[9];

  a4(v13);

  return sub_672F8(a1);
}

uint64_t sub_67288(uint64_t a1, uint64_t a2)
{
  v4 = sub_147EC(&qword_B8780, &qword_8B7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_672F8(uint64_t a1)
{
  v2 = sub_147EC(&qword_B8780, &qword_8B7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AsyncButton.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_147EC(&qword_B8780, &qword_8B7E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v34 - v8;
  v34[1] = v34 - v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = sub_81578();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  __chkstk_darwin(v12);
  v35 = v34 - v14;
  sub_14E2C(&qword_B9940, &unk_8B7E8);
  v15 = sub_80E28();
  v37 = *(v15 - 8);
  v16 = *(v37 + 64);
  v17 = __chkstk_darwin(v15);
  v36 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v38 = v34 - v19;
  sub_67288(v2 + *(a1 + 40), v9);
  (*(v4 + 16))(v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  *(v21 + 24) = v11;
  (*(v4 + 32))(v21 + v20, v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v41 = v10;
  v42 = v11;
  v43 = v2;
  v22 = v35;
  sub_81518();
  v23 = (v2 + *(a1 + 44));
  v24 = *v23;
  v25 = *(v23 + 1);
  v46 = v24;
  v47 = v25;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814D8();
  WitnessTable = swift_getWitnessTable();
  v27 = v36;
  sub_813D8();
  (*(v39 + 8))(v22, v12);
  v28 = sub_68058();
  v44 = WitnessTable;
  v45 = v28;
  swift_getWitnessTable();
  v30 = v37;
  v29 = v38;
  v31 = *(v37 + 16);
  v31(v38, v27, v15);
  v32 = *(v30 + 8);
  v32(v27, v15);
  v31(v40, v29, v15);
  return (v32)(v29, v15);
}

uint64_t sub_6778C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncButton();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-v9];
  v11 = sub_147EC(&unk_B8240, &qword_88F50);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23[-v13];
  v15 = (a1 + *(v6 + 44));
  v16 = *v15;
  v17 = *(v15 + 1);
  v23[16] = v16;
  v24 = v17;
  v23[15] = 1;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v18 = sub_81AB8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  (*(v7 + 16))(v10, a1, v6);
  sub_81A88();
  v19 = sub_81A78();
  v20 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v19;
  *(v21 + 3) = &protocol witness table for MainActor;
  *(v21 + 4) = a2;
  *(v21 + 5) = a3;
  (*(v7 + 32))(&v21[v20], v10, v6);
  sub_68AE4(0, 0, v14, &unk_8B890, v21);
}

uint64_t sub_679D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for AsyncButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[9], v2);
  v9 = v3[10];
  v10 = sub_80CB8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v7 + v3[11] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_67B54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for AsyncButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_6778C(v4, v1, v2);
}

uint64_t sub_67BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_81A88();
  v6[7] = sub_81A78();
  v8 = sub_81A58();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_67C74, v8, v7);
}

uint64_t sub_67C74()
{
  v1 = *(v0 + 32);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_67D60;

  return v6();
}

uint64_t sub_67D60()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_67E80, v4, v3);
}

uint64_t sub_67E80()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = (v4 + *(type metadata accessor for AsyncButton() + 44));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 88) = 0;
  sub_147EC(&unk_B8710, &qword_89A80);
  sub_814E8();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_67F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncButton();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 36), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

unint64_t sub_68058()
{
  result = qword_B9948[0];
  if (!qword_B9948[0])
  {
    sub_14E2C(&qword_B9940, &unk_8B7E8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_B9948);
  }

  return result;
}

void sub_6810C(uint64_t a1)
{
  sub_3D760();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_68700();
      if (v5 <= 0x3F)
      {
        sub_68758();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_681C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_80CB8() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = 7;
  if (!v10)
  {
    v18 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v19 = ((v18 + v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          LODWORD(v20) = *a1;
        }

        return v13 + (v20 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v28 = (a1 + v14 + 16) & ~v14;
  if (v7 != v13)
  {
    if (v10 >= 2)
    {
      v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v6 + 48);

  return v29(v28, v7, v5);
}

void sub_68430(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_80CB8() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    if (((v18 + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a3 - v20 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v20;
    }

    if (v21)
    {
      v25 = ~v20 + a2;
      bzero(a1, v21);
      *a1 = v25;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v10)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v21) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) != 0)
  {
    v26 = (a1 + v15 + 16) & ~v15;
    if (v9 == v20)
    {
      v27 = *(v30 + 56);

      v27(v26, a2, v9, v7);
    }

    else if (v13 >= 2)
    {
      v28 = *(v12 + 56);
      v29 = (v26 + v16 + v17) & ~v17;

      v28(v29, (a2 + 1));
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}