unint64_t sub_10001D8BC()
{
  result = qword_1004A2640;
  if (!qword_1004A2640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A2640);
  }

  return result;
}

unint64_t sub_10001D910()
{
  result = qword_1004A1780;
  if (!qword_1004A1780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A1780);
  }

  return result;
}

uint64_t sub_10001D95C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001D974@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10001D9A0()
{
  result = qword_1004A17A0;
  if (!qword_1004A17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A17A0);
  }

  return result;
}

unint64_t sub_10001DA04()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v17 = v0[5];
  v18 = v0[6];
  v19 = v0[7];
  v6 = v0[8];
  if (((*(v0 + 89) | ((*(v0 + 93) | (*(v0 + 95) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    v16 = *(v0 + 88);
    v14 = v0[9];
    v15 = v0[10];
    v11 = v0 + 12;
    v9 = v0[12];
    v10 = v11[1];
    sub_10000F974(&qword_1004A17A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003D5EA0;
    *(inited + 32) = 0x547972616D6D7573;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &off_100467B88;
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = v2;
    *(inited + 56) = v1;
    *(inited + 88) = 0xD000000000000010;
    *(inited + 96) = 0x80000001003FFA30;
    *(inited + 128) = &type metadata for Int;
    *(inited + 136) = &off_100467B98;
    *(inited + 104) = v4;
    *(inited + 144) = 0x6E756F436F646E75;
    *(inited + 152) = 0xE900000000000074;
    *(inited + 160) = v3;
    *(inited + 184) = &type metadata for Int;
    *(inited + 192) = &off_100467B98;
    *(inited + 200) = 0x656D7473756A6461;
    *(inited + 208) = 0xEF746E756F43746ELL;
    *(inited + 216) = v5;
    *(inited + 240) = &type metadata for Int;
    *(inited + 248) = &off_100467B98;
    *(inited + 256) = 0xD000000000000013;
    *(inited + 264) = 0x80000001003FFA50;
    *(inited + 296) = &type metadata for Int;
    *(inited + 304) = &off_100467B98;
    *(inited + 272) = v17;
    *(inited + 312) = 0xD000000000000017;
    *(inited + 320) = 0x80000001003FFA70;
    *(inited + 352) = &type metadata for Int;
    *(inited + 360) = &off_100467B98;
    *(inited + 328) = v18;
    *(inited + 368) = 0x6F43736564697567;
    *(inited + 376) = 0xEB00000000746E75;
    *(inited + 408) = &type metadata for Int;
    *(inited + 416) = &off_100467B98;
    *(inited + 384) = v19;
    *(inited + 424) = 0xD000000000000012;
    *(inited + 432) = 0x80000001003FFA90;
    *(inited + 464) = &type metadata for Int;
    *(inited + 472) = &off_100467B98;
    *(inited + 440) = v6;
    *(inited + 480) = 0xD000000000000011;
    *(inited + 488) = 0x80000001003FFAB0;
    *(inited + 520) = &type metadata for Int;
    *(inited + 528) = &off_100467B98;
    *(inited + 496) = v14;
    *(inited + 536) = 0xD000000000000018;
    *(inited + 544) = 0x80000001003FFAD0;
    *(inited + 576) = &type metadata for Int;
    *(inited + 584) = &off_100467B98;
    *(inited + 552) = v15;
    *(inited + 592) = 0xD00000000000001BLL;
    *(inited + 600) = 0x80000001003FFAF0;
    *(inited + 632) = &type metadata for Bool;
    *(inited + 640) = &off_100467BA0;
    *(inited + 608) = v16 & 1;
    strcpy((inited + 648), "trackingState");
    *(inited + 662) = -4864;
    *(inited + 688) = &type metadata for String;
    *(inited + 696) = &off_100467B88;
    *(inited + 664) = v9;
    *(inited + 672) = v10;

    v8 = sub_10019A254(inited);
    swift_setDeallocating();
    sub_10000F974(&qword_1004AE0E0);
    swift_arrayDestroy();
  }

  else
  {
    sub_10000F974(&qword_1004A17A8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1003D5EB0;
    *(v7 + 32) = 0x547972616D6D7573;
    *(v7 + 72) = &type metadata for String;
    *(v7 + 80) = &off_100467B88;
    *(v7 + 40) = 0xEB00000000657079;
    *(v7 + 48) = v2;
    *(v7 + 56) = v1;
    *(v7 + 88) = 0xD000000000000010;
    *(v7 + 96) = 0x80000001003FFA30;
    *(v7 + 128) = &type metadata for Int;
    *(v7 + 136) = &off_100467B98;
    *(v7 + 104) = v4;
    *(v7 + 144) = 0x6E756F436F646E75;
    *(v7 + 152) = 0xE900000000000074;
    *(v7 + 160) = v3;
    *(v7 + 184) = &type metadata for Int;
    *(v7 + 192) = &off_100467B98;
    *(v7 + 200) = 0x656D7473756A6461;
    *(v7 + 208) = 0xEF746E756F43746ELL;
    *(v7 + 216) = v5;
    *(v7 + 240) = &type metadata for Int;
    *(v7 + 248) = &off_100467B98;
    *(v7 + 256) = 0xD000000000000013;
    *(v7 + 264) = 0x80000001003FFA50;
    *(v7 + 296) = &type metadata for Int;
    *(v7 + 304) = &off_100467B98;
    *(v7 + 272) = v17;
    *(v7 + 312) = 0xD000000000000017;
    *(v7 + 320) = 0x80000001003FFA70;
    *(v7 + 352) = &type metadata for Int;
    *(v7 + 360) = &off_100467B98;
    *(v7 + 328) = v18;
    strcpy((v7 + 368), "trackingState");
    *(v7 + 382) = -4864;
    *(v7 + 408) = &type metadata for String;
    *(v7 + 416) = &off_100467B88;
    *(v7 + 384) = v19;
    *(v7 + 392) = v6;

    v8 = sub_10019A254(v7);
    swift_setDeallocating();
    sub_10000F974(&qword_1004AE0E0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  return v8;
}

unint64_t sub_10001DEE8()
{
  v1 = *(v0 + 112);
  v39[6] = *(v0 + 96);
  v39[7] = v1;
  v39[8] = *(v0 + 128);
  v40 = *(v0 + 144);
  v2 = *(v0 + 48);
  v39[2] = *(v0 + 32);
  v39[3] = v2;
  v3 = *(v0 + 80);
  v39[4] = *(v0 + 64);
  v39[5] = v3;
  v4 = *(v0 + 16);
  v39[0] = *v0;
  v39[1] = v4;
  if (sub_10001EE30(v39) == 1)
  {
    v5 = nullsub_1(v39);
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = *(v5 + 40);
    v13 = *(v5 + 48);
    v12 = *(v5 + 56);
    v15 = *(v5 + 64);
    v14 = *(v5 + 68);
    v17 = *(v5 + 72);
    v16 = *(v5 + 76);
    v31 = *(v5 + 88);
    v32 = *(v5 + 80);
    v33 = *(v5 + 104);
    v34 = *(v5 + 96);
    v35 = *(v5 + 120);
    v36 = *(v5 + 112);
    v37 = *(v5 + 136);
    v38 = *(v5 + 128);
    sub_10000F974(&qword_1004A17A8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1003D5ED0;
    *(v18 + 32) = 0x6874676E656CLL;
    *(v18 + 72) = &type metadata for Int;
    *(v18 + 80) = &off_100467B98;
    *(v18 + 40) = 0xE600000000000000;
    *(v18 + 48) = v7;
    strcpy((v18 + 88), "viewDistance");
    *(v18 + 101) = 0;
    *(v18 + 102) = -5120;
    *(v18 + 104) = v6;
    *(v18 + 128) = &type metadata for Int;
    *(v18 + 136) = &off_100467B98;
    *(v18 + 144) = 0xD000000000000011;
    *(v18 + 152) = 0x80000001003FF910;
    *(v18 + 184) = &type metadata for String;
    *(v18 + 192) = &off_100467B88;
    *(v18 + 160) = v8;
    *(v18 + 168) = v9;
    strcpy((v18 + 200), "point1SnapType");
    *(v18 + 215) = -18;
    *(v18 + 240) = &type metadata for String;
    *(v18 + 248) = &off_100467B88;
    *(v18 + 216) = v10;
    *(v18 + 224) = v11;
    strcpy((v18 + 256), "point2SnapType");
    *(v18 + 271) = -18;
    *(v18 + 296) = &type metadata for String;
    *(v18 + 304) = &off_100467B88;
    *(v18 + 272) = v13;
    *(v18 + 280) = v12;
    *(v18 + 312) = 0xD000000000000010;
    *(v18 + 320) = 0x80000001003FF930;
    *(v18 + 352) = &type metadata for Float;
    *(v18 + 360) = &off_100467B90;
    *(v18 + 328) = v15;
    *(v18 + 368) = 0xD000000000000010;
    *(v18 + 376) = 0x80000001003FF950;
    *(v18 + 408) = &type metadata for Float;
    *(v18 + 416) = &off_100467B90;
    *(v18 + 384) = v14;
    *(v18 + 424) = 0xD000000000000015;
    *(v18 + 432) = 0x80000001003FF970;
    *(v18 + 464) = &type metadata for Float;
    *(v18 + 472) = &off_100467B90;
    *(v18 + 440) = v17;
    *(v18 + 480) = 0xD000000000000015;
    *(v18 + 488) = 0x80000001003FF990;
    *(v18 + 520) = &type metadata for Float;
    *(v18 + 528) = &off_100467B90;
    *(v18 + 496) = v16;
    *(v18 + 536) = 0x6C5031746E696F70;
    *(v18 + 544) = 0xEF65707954656E61;
    *(v18 + 576) = &type metadata for String;
    *(v18 + 584) = &off_100467B88;
    *(v18 + 552) = v32;
    *(v18 + 560) = v31;
    *(v18 + 592) = 0x6C5032746E696F70;
    *(v18 + 600) = 0xEF65707954656E61;
    *(v18 + 632) = &type metadata for String;
    *(v18 + 640) = &off_100467B88;
    *(v18 + 608) = v34;
    *(v18 + 616) = v33;
    *(v18 + 648) = 0xD000000000000016;
    *(v18 + 656) = 0x80000001003FF9B0;
    *(v18 + 688) = &type metadata for String;
    *(v18 + 696) = &off_100467B88;
    *(v18 + 664) = v36;
    *(v18 + 672) = v35;
    *(v18 + 704) = 0xD000000000000016;
    *(v18 + 712) = 0x80000001003FF9D0;
    *(v18 + 744) = &type metadata for String;
    *(v18 + 752) = &off_100467B88;
    *(v18 + 720) = v38;
    *(v18 + 728) = v37;

    v19 = sub_10019A254(v18);
    swift_setDeallocating();
    sub_10000F974(&qword_1004AE0E0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v20 = nullsub_1(v39);
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v26 = *(v20 + 32);
    v25 = *(v20 + 40);
    v28 = *(v20 + 48);
    v27 = *(v20 + 56);
    sub_10000F974(&qword_1004A17A8);
    inited = swift_initStackObject();
    *(inited + 32) = 1634038369;
    *(inited + 16) = xmmword_1003D5EC0;
    *(inited + 72) = &type metadata for Int;
    *(inited + 80) = &off_100467B98;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v21;
    *(inited + 88) = 0x6152746365707361;
    *(inited + 96) = 0xEB000000006F6974;
    *(inited + 128) = &type metadata for Float;
    *(inited + 136) = &off_100467B90;
    *(inited + 104) = v22;
    strcpy((inited + 144), "viewDistance");
    *(inited + 157) = 0;
    *(inited + 158) = -5120;
    *(inited + 184) = &type metadata for Int;
    *(inited + 192) = &off_100467B98;
    *(inited + 160) = v23;
    *(inited + 200) = 0x6C676E4177656976;
    *(inited + 208) = 0xE900000000000065;
    *(inited + 240) = &type metadata for Float;
    *(inited + 248) = &off_100467B90;
    *(inited + 216) = v24;
    *(inited + 256) = 0x707954656E616C70;
    *(inited + 264) = 0xE900000000000065;
    *(inited + 296) = &type metadata for String;
    *(inited + 304) = &off_100467B88;
    *(inited + 272) = v26;
    *(inited + 280) = v25;
    *(inited + 312) = 0xD000000000000010;
    *(inited + 320) = 0x80000001003FF9F0;
    *(inited + 352) = &type metadata for String;
    *(inited + 360) = &off_100467B88;
    *(inited + 328) = v28;
    *(inited + 336) = v27;

    v19 = sub_10019A254(inited);
    swift_setDeallocating();
    sub_10000F974(&qword_1004AE0E0);
    swift_arrayDestroy();
  }

  return v19;
}

unint64_t sub_10001E434()
{
  sub_10001D95C(v0, v13);
  v1 = v13[0];
  v2 = v14;
  v3 = v15;
  v5 = v16;
  v4 = v17;
  v7 = v18;
  v6 = v19;
  v8 = v20;
  v9 = v21;
  sub_10000F974(&qword_1004A17A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5EE0;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = &off_100467BA0;
  *(inited + 48) = v1;
  *(inited + 88) = 0x6E6F697461727564;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 128) = &type metadata for Float;
  *(inited + 136) = &off_100467B90;
  *(inited + 104) = v2;
  strcpy((inited + 144), "durationShown");
  *(inited + 158) = -4864;
  *(inited + 184) = &type metadata for Float;
  *(inited + 192) = &off_100467B90;
  *(inited + 160) = v3;
  strcpy((inited + 200), "cameraDistance");
  *(inited + 215) = -18;
  *(inited + 240) = &type metadata for Float;
  *(inited + 248) = &off_100467B90;
  *(inited + 216) = v5;
  *(inited + 256) = 0x6E416172656D6163;
  *(inited + 264) = 0xEB00000000656C67;
  *(inited + 296) = &type metadata for Float;
  *(inited + 304) = &off_100467B90;
  *(inited + 272) = v4;
  strcpy((inited + 312), "deviationLow");
  *(inited + 325) = 0;
  *(inited + 326) = -5120;
  *(inited + 352) = &type metadata for Float;
  *(inited + 360) = &off_100467B90;
  *(inited + 328) = v7;
  strcpy((inited + 368), "deviationHigh");
  *(inited + 382) = -4864;
  *(inited + 408) = &type metadata for Float;
  *(inited + 416) = &off_100467B90;
  *(inited + 384) = v6;
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x80000001003FFA10;
  *(inited + 464) = &type metadata for Float;
  *(inited + 472) = &off_100467B90;
  *(inited + 440) = v8;
  strcpy((inited + 480), "samplesCount");
  *(inited + 493) = 0;
  *(inited + 494) = -5120;
  *(inited + 520) = &type metadata for Int;
  *(inited + 528) = &off_100467B98;
  *(inited + 496) = v9;
  v11 = sub_10019A254(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AE0E0);
  swift_arrayDestroy();
  return v11;
}

unint64_t sub_10001E68C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 20);
  v8 = *(v0 + 3);
  v7 = *(v0 + 4);
  v10 = *(v0 + 5);
  v9 = *(v0 + 6);
  v12 = *(v0 + 7);
  v11 = *(v0 + 8);
  v14 = v0[18];
  v13 = v0[19];
  v15 = *(v0 + 81);
  v16 = *(v0 + 80);
  if (!(v15 >> 6))
  {
    v37 = v0[19];
    v39 = *(v0 + 80);
    v21 = (*(v0 + 21) << 8) | (*(v0 + 23) << 24) | v6;
    v31 = v12;
    v33 = v11;
    v26 = v7;
    v27 = v9;
    v35 = v14;
    v29 = v10;
    sub_10000F974(&qword_1004A17A8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1003D5ED0;
    *(v22 + 32) = 0x6874676E656CLL;
    *(v22 + 40) = 0xE600000000000000;
    *(v22 + 72) = &type metadata for Float;
    *(v22 + 80) = &off_100467B90;
    *(v22 + 48) = v1;
    *(v22 + 88) = 0xD000000000000010;
    *(v22 + 96) = 0x80000001003FF8F0;
    *(v22 + 128) = &type metadata for Float;
    *(v22 + 136) = &off_100467B90;
    *(v22 + 104) = v2;
    strcpy((v22 + 144), "cameraDistance");
    *(v22 + 159) = -18;
    *(v22 + 184) = &type metadata for Float;
    *(v22 + 192) = &off_100467B90;
    *(v22 + 160) = v3;
    *(v22 + 200) = 0x6E416172656D6163;
    *(v22 + 208) = 0xEB00000000656C67;
    *(v22 + 240) = &type metadata for Float;
    *(v22 + 248) = &off_100467B90;
    *(v22 + 216) = v4;
    *(v22 + 256) = 0xD000000000000010;
    *(v22 + 264) = 0x80000001003FF8B0;
    *(v22 + 296) = &type metadata for Float;
    *(v22 + 304) = &off_100467B90;
    *(v22 + 272) = v5;
    *(v22 + 312) = 0xD000000000000010;
    *(v22 + 320) = 0x80000001003FF8D0;
    *(v22 + 352) = &type metadata for Float;
    *(v22 + 360) = &off_100467B90;
    *(v22 + 328) = v21;
    *(v22 + 368) = 0x795441656E616C70;
    *(v22 + 376) = 0xEA00000000006570;
    *(v22 + 408) = &type metadata for String;
    *(v22 + 416) = &off_100467B88;
    *(v22 + 384) = v8;
    *(v22 + 392) = v26;
    *(v22 + 424) = 0x795442656E616C70;
    *(v22 + 432) = 0xEA00000000006570;
    *(v22 + 464) = &type metadata for String;
    *(v22 + 472) = &off_100467B88;
    *(v22 + 440) = v29;
    *(v22 + 448) = v27;
    strcpy((v22 + 480), "classification");
    *(v22 + 495) = -18;
    *(v22 + 520) = &type metadata for String;
    *(v22 + 528) = &off_100467B88;
    *(v22 + 496) = v31;
    *(v22 + 504) = v33;
    strcpy((v22 + 536), "snapDuration");
    *(v22 + 549) = 0;
    *(v22 + 550) = -5120;
    *(v22 + 576) = &type metadata for Float;
    *(v22 + 584) = &off_100467B90;
    *(v22 + 552) = v35;
    strcpy((v22 + 592), "slideDistance");
    *(v22 + 606) = -4864;
    *(v22 + 632) = &type metadata for Float;
    *(v22 + 640) = &off_100467B90;
    *(v22 + 608) = v37;
    *(v22 + 648) = 0x6F50646563616C70;
    *(v22 + 656) = 0xEB00000000746E69;
    *(v22 + 688) = &type metadata for Bool;
    *(v22 + 696) = &off_100467BA0;
    *(v22 + 664) = v39 & 1;
    *(v22 + 704) = 0x694C646563616C70;
    *(v22 + 712) = 0xEA0000000000656ELL;
    *(v22 + 744) = &type metadata for Bool;
    *(v22 + 752) = &off_100467BA0;
    *(v22 + 720) = v15 & 1;

    v20 = sub_10019A254(v22);
    swift_setDeallocating();
    sub_10000F974(&qword_1004AE0E0);
    goto LABEL_5;
  }

  if (v15 >> 6 == 1)
  {
    v30 = *(v0 + 7);
    v32 = *(v0 + 8);
    v17 = *(v0 + 6);
    v18 = v7;
    v36 = v13;
    v38 = v16;
    v34 = v14;
    v28 = v10;
    sub_10000F974(&qword_1004A17A8);
    v19 = swift_allocObject();
    *(v19 + 32) = 0x6874676E656CLL;
    *(v19 + 16) = xmmword_1003D5EF0;
    *(v19 + 40) = 0xE600000000000000;
    *(v19 + 72) = &type metadata for Float;
    *(v19 + 80) = &off_100467B90;
    *(v19 + 48) = v1;
    strcpy((v19 + 88), "cameraDistance");
    *(v19 + 103) = -18;
    *(v19 + 128) = &type metadata for Float;
    *(v19 + 136) = &off_100467B90;
    *(v19 + 104) = v2;
    *(v19 + 144) = 0x6E416172656D6163;
    *(v19 + 152) = 0xEB00000000656C67;
    *(v19 + 184) = &type metadata for Float;
    *(v19 + 192) = &off_100467B90;
    *(v19 + 160) = v3;
    *(v19 + 200) = 0xD000000000000010;
    *(v19 + 208) = 0x80000001003FF8B0;
    *(v19 + 240) = &type metadata for Float;
    *(v19 + 248) = &off_100467B90;
    *(v19 + 216) = v4;
    *(v19 + 256) = 0xD000000000000010;
    *(v19 + 264) = 0x80000001003FF8D0;
    *(v19 + 296) = &type metadata for Float;
    *(v19 + 304) = &off_100467B90;
    *(v19 + 272) = v5;
    *(v19 + 312) = 0x795441656E616C70;
    *(v19 + 320) = 0xEA00000000006570;
    *(v19 + 352) = &type metadata for String;
    *(v19 + 360) = &off_100467B88;
    *(v19 + 328) = v8;
    *(v19 + 336) = v18;
    *(v19 + 368) = 0x795442656E616C70;
    *(v19 + 376) = 0xEA00000000006570;
    *(v19 + 408) = &type metadata for String;
    *(v19 + 416) = &off_100467B88;
    *(v19 + 384) = v28;
    *(v19 + 392) = v17;
    strcpy((v19 + 424), "classification");
    *(v19 + 439) = -18;
    *(v19 + 464) = &type metadata for String;
    *(v19 + 472) = &off_100467B88;
    *(v19 + 440) = v30;
    *(v19 + 448) = v32;
    strcpy((v19 + 480), "snapDuration");
    *(v19 + 493) = 0;
    *(v19 + 494) = -5120;
    *(v19 + 520) = &type metadata for Float;
    *(v19 + 528) = &off_100467B90;
    *(v19 + 496) = v34;
    strcpy((v19 + 536), "slideDistance");
    *(v19 + 550) = -4864;
    *(v19 + 576) = &type metadata for Float;
    *(v19 + 584) = &off_100467B90;
    *(v19 + 552) = v36;
    *(v19 + 592) = 0x6F50646563616C70;
    *(v19 + 600) = 0xEB00000000746E69;
    *(v19 + 632) = &type metadata for Bool;
    *(v19 + 640) = &off_100467BA0;
    *(v19 + 608) = v38 & 1;

    v20 = sub_10019A254(v19);
    swift_setDeallocating();
    sub_10000F974(&qword_1004AE0E0);
LABEL_5:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v20;
  }

  sub_10000F974(&qword_1004A17A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D5EC0;
  *(inited + 32) = 0x6769654870616E73;
  *(inited + 40) = 0xEA00000000007468;
  *(inited + 72) = &type metadata for Float;
  *(inited + 80) = &off_100467B90;
  *(inited + 48) = v1;
  strcpy((inited + 88), "cameraDistance");
  *(inited + 103) = -18;
  *(inited + 128) = &type metadata for Float;
  *(inited + 136) = &off_100467B90;
  *(inited + 104) = v2;
  *(inited + 144) = 0x6E416172656D6163;
  *(inited + 152) = 0xEB00000000656C67;
  *(inited + 184) = &type metadata for Float;
  *(inited + 192) = &off_100467B90;
  *(inited + 160) = v3;
  strcpy((inited + 200), "snapDuration");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 240) = &type metadata for Float;
  *(inited + 248) = &off_100467B90;
  *(inited + 216) = v4;
  strcpy((inited + 256), "slideDistance");
  *(inited + 270) = -4864;
  *(inited + 296) = &type metadata for Float;
  *(inited + 304) = &off_100467B90;
  *(inited + 272) = v5;
  *(inited + 312) = 0x6F50646563616C70;
  *(inited + 320) = 0xEB00000000746E69;
  *(inited + 352) = &type metadata for Bool;
  *(inited + 360) = &off_100467BA0;
  *(inited + 328) = v6 & 1;
  v25 = sub_10019A254(inited);
  swift_setDeallocating();
  sub_10000F974(&qword_1004AE0E0);
  swift_arrayDestroy();
  return v25;
}

__n128 sub_10001EE44(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10001EE68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_10001EEB8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 0;
      *(a1 + 88) = 2 * -a2;
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PersonHeightEvent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for PersonHeightEvent(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonHeightEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonHeightEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_10001F060(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001F094(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001F0DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

__n128 sub_10001F170(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001F194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 82))
  {
    return (*a1 + 16382);
  }

  v3 = (*(a1 + 80) & 0x3E00 | (*(a1 + 80) >> 14) & 0xFFFFFE03 | (4 * (*(a1 + 80) >> 1))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10001F1F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 80) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

void sub_10001F2BC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[6];
  v125 = a1[5];
  v120 = a1[8];
  v124 = a1[13];
  v126 = a1[16];
  v127 = a1[15];
  v118 = a1[18];
  v122 = a1[21];
  v123 = a1[20];
  v119 = a1[23];
  v121 = a1[28];
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if ((v6 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = swift_unknownObjectWeakLoadStrong();

      if (v28)
      {
        v29 = String._bridgeToObjectiveC()();
        [v28 setText:v29];

        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          v31 = v30;
          v32 = swift_unknownObjectWeakLoadStrong();

          if (v32)
          {
            if (v4)
            {
              v4 = String._bridgeToObjectiveC()();
            }

            [v32 setAccessibilityLabel:v4];

            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = v33;
              v35 = swift_unknownObjectWeakLoadStrong();

              if (v35)
              {
                if (v3 == v125 && v2 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  v36 = swift_unknownObjectWeakLoadStrong();
                  if (!v36)
                  {
LABEL_98:
                    __break(1u);
                    goto LABEL_99;
                  }

                  v37 = v36;
                  v38 = [v36 isHidden];

                  v39 = &selRef_setFrame_;
                  if (v38)
                  {
LABEL_41:
                    v79 = swift_unknownObjectWeakLoadStrong();
                    if (v79)
                    {
                      v80 = v79;
                      v81 = String._bridgeToObjectiveC()();
                      [v80 v39[15]];

                      v82 = swift_unknownObjectWeakLoadStrong();
                      if (v82)
                      {
                        v83 = v82;
                        if (v124)
                        {
                          v84 = String._bridgeToObjectiveC()();
                        }

                        else
                        {
                          v84 = 0;
                        }

                        [v83 setAccessibilityLabel:v84];

                        v85 = swift_unknownObjectWeakLoadStrong();
                        if (v85)
                        {
                          v86 = v85;
                          v87 = swift_unknownObjectWeakLoadStrong();

                          if (v87)
                          {
                            v88 = String._bridgeToObjectiveC()();
                            [v87 v39[15]];

                            v89 = swift_unknownObjectWeakLoadStrong();
                            if (v89)
                            {
                              v90 = v89;
                              v91 = swift_unknownObjectWeakLoadStrong();

                              if (v91)
                              {
                                if (v118)
                                {
                                  v92 = String._bridgeToObjectiveC()();
                                }

                                else
                                {
                                  v92 = 0;
                                }

                                [v91 setAccessibilityLabel:v92];

                                v93 = swift_unknownObjectWeakLoadStrong();
                                if (v93)
                                {
                                  v94 = v93;
                                  v95 = swift_unknownObjectWeakLoadStrong();

                                  if (v95)
                                  {
                                    if (v127 == v123 && v126 == v122 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {
                                      v96 = swift_unknownObjectWeakLoadStrong();
                                      if (!v96)
                                      {
LABEL_99:
                                        __break(1u);
                                        goto LABEL_100;
                                      }

                                      v97 = v96;
                                      v98 = [v96 isHidden];

                                      v99 = &selRef_setFrame_;
                                      if (v98)
                                      {
LABEL_73:
                                        v112 = swift_unknownObjectWeakLoadStrong();
                                        if (v112)
                                        {
                                          v113 = v112;
                                          v114 = String._bridgeToObjectiveC()();
                                          [v113 v99[15]];

                                          v115 = swift_unknownObjectWeakLoadStrong();
                                          if (v115)
                                          {
                                            v116 = v115;
                                            if (v121)
                                            {
                                              v117 = String._bridgeToObjectiveC()();
                                            }

                                            else
                                            {
                                              v117 = 0;
                                            }

                                            v128 = v117;
                                            [v116 setAccessibilityLabel:?];

                                            goto LABEL_79;
                                          }

                                          goto LABEL_97;
                                        }

LABEL_96:
                                        __break(1u);
LABEL_97:
                                        __break(1u);
                                        goto LABEL_98;
                                      }

                                      v100 = swift_unknownObjectWeakLoadStrong();
                                      if (!v100)
                                      {
LABEL_101:
                                        __break(1u);
                                        goto LABEL_102;
                                      }

                                      v101 = v100;
                                      [v100 setHidden:1];
                                    }

                                    else
                                    {
                                      v102 = swift_unknownObjectWeakLoadStrong();
                                      if (!v102)
                                      {
LABEL_105:
                                        __break(1u);
LABEL_106:
                                        __break(1u);
                                        goto LABEL_107;
                                      }

                                      v103 = v102;
                                      v104 = [v102 isHidden];

                                      if (v104)
                                      {
                                        v105 = swift_unknownObjectWeakLoadStrong();
                                        if (!v105)
                                        {
LABEL_109:
                                          __break(1u);
                                          return;
                                        }

                                        v106 = v105;
                                        [v105 setHidden:0];
                                      }

                                      v107 = swift_unknownObjectWeakLoadStrong();
                                      if (!v107)
                                      {
                                        goto LABEL_106;
                                      }

                                      v108 = v107;
                                      v109 = String._bridgeToObjectiveC()();
                                      v99 = &selRef_setFrame_;
                                      [v108 setText:v109];

                                      v110 = swift_unknownObjectWeakLoadStrong();
                                      if (!v110)
                                      {
LABEL_107:
                                        __break(1u);
                                        goto LABEL_108;
                                      }

                                      v111 = v110;
                                      if (v119)
                                      {
                                        v101 = String._bridgeToObjectiveC()();
                                      }

                                      else
                                      {
                                        v101 = 0;
                                      }

                                      [v111 setAccessibilityLabel:v101];
                                    }

                                    goto LABEL_73;
                                  }

LABEL_95:
                                  __break(1u);
                                  goto LABEL_96;
                                }

LABEL_94:
                                __break(1u);
                                goto LABEL_95;
                              }

LABEL_93:
                              __break(1u);
                              goto LABEL_94;
                            }

LABEL_92:
                            __break(1u);
                            goto LABEL_93;
                          }

LABEL_91:
                          __break(1u);
                          goto LABEL_92;
                        }

LABEL_90:
                        __break(1u);
                        goto LABEL_91;
                      }

LABEL_89:
                      __break(1u);
                      goto LABEL_90;
                    }

LABEL_88:
                    __break(1u);
                    goto LABEL_89;
                  }

                  v40 = swift_unknownObjectWeakLoadStrong();
                  if (!v40)
                  {
LABEL_100:
                    __break(1u);
                    goto LABEL_101;
                  }

                  v41 = v40;
                  [v40 setHidden:1];
                }

                else
                {
                  v69 = swift_unknownObjectWeakLoadStrong();
                  if (!v69)
                  {
LABEL_102:
                    __break(1u);
LABEL_103:
                    __break(1u);
                    goto LABEL_104;
                  }

                  v70 = v69;
                  v71 = [v69 isHidden];

                  v39 = &selRef_setFrame_;
                  if (v71)
                  {
                    v72 = swift_unknownObjectWeakLoadStrong();
                    if (!v72)
                    {
LABEL_108:
                      __break(1u);
                      goto LABEL_109;
                    }

                    v73 = v72;
                    [v72 setHidden:0];
                  }

                  v74 = swift_unknownObjectWeakLoadStrong();
                  if (!v74)
                  {
                    goto LABEL_103;
                  }

                  v75 = v74;
                  v76 = String._bridgeToObjectiveC()();
                  [v75 setText:v76];

                  v77 = swift_unknownObjectWeakLoadStrong();
                  if (!v77)
                  {
LABEL_104:
                    __break(1u);
                    goto LABEL_105;
                  }

                  v78 = v77;
                  if (v120)
                  {
                    v41 = String._bridgeToObjectiveC()();
                  }

                  else
                  {
                    v41 = 0;
                  }

                  [v78 setAccessibilityLabel:v41];
                }

                goto LABEL_41;
              }

LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_84;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityLength);
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v130._object = 0xE000000000000000;
  v11._object = 0x80000001003FFC10;
  v11._countAndFlagsBits = 0xD000000000000010;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v130._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v130);

  v13 = [v9 mainBundle];
  v131._object = 0xE000000000000000;
  v14._object = 0x80000001003FFC10;
  v14._countAndFlagsBits = 0xD000000000000010;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v131._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v131);

  v16 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  v17 = *(v8 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  v19 = *(v8 + v16);
  v20 = String._bridgeToObjectiveC()();
  [v19 setAccessibilityLabel:v20];

  v21 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  v22 = *(v8 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v23 = String._bridgeToObjectiveC()();
  [v22 setText:v23];

  v24 = *(v8 + v21);
  if (v120)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  [v24 setAccessibilityLabel:v25];

  v42 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  v43 = *(v8 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v44 = String._bridgeToObjectiveC()();
  [v43 setText:v44];

  v45 = *(v8 + v42);
  if (v124)
  {
    v46 = String._bridgeToObjectiveC()();
  }

  else
  {
    v46 = 0;
  }

  [v45 setAccessibilityLabel:v46];

  v47 = *(v1 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityWidth);
  v48 = [v9 mainBundle];
  v132._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0x4C474E4154434552;
  v49._object = 0xEF48544449575F45;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v132._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v132);

  v51 = [v9 mainBundle];
  v133._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0x4C474E4154434552;
  v52._object = 0xEF48544449575F45;
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v133._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, v133);

  v54 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  v55 = *(v47 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v56 = String._bridgeToObjectiveC()();

  [v55 setText:v56];

  v57 = *(v47 + v54);
  v58 = String._bridgeToObjectiveC()();
  [v57 setAccessibilityLabel:v58];

  v59 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  v60 = *(v47 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v61 = String._bridgeToObjectiveC()();
  [v60 setText:v61];

  v62 = *(v47 + v59);
  if (v119)
  {
    v63 = String._bridgeToObjectiveC()();
  }

  else
  {
    v63 = 0;
  }

  [v62 setAccessibilityLabel:v63];

  v64 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  v65 = *(v47 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v66 = String._bridgeToObjectiveC()();
  [v65 setText:v66];

  v67 = *(v47 + v64);
  if (v121)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  v128 = v68;
  [v67 setAccessibilityLabel:?];

LABEL_79:
}

char *sub_10001FE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_numberOfRowsChangedCallback];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v5[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_minContentViewHeight] = 0x407AA00000000000;
  v12 = [objc_opt_self() currentTraitCollection];
  v13 = [v12 preferredContentSizeCategory];

  LOBYTE(v12) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v14 = 88.0;
  if (v12)
  {
    v14 = 222.0;
  }

  *&v5[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableRowHeight] = v14;
  *&v5[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_numberOfRows] = 2;
  v15 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_sketchView;
  type metadata accessor for SketchSurface();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_labelStrip;
  type metadata accessor for SurfaceLabelStrip();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableView;
  type metadata accessor for IntrinsicTableView();
  *&v5[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityLength;
  type metadata accessor for AccessibilityTripleStack();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v18] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v20 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityWidth;
  *&v5[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilitySeparator;
  *&v5[v21] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_measurementID];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v5[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_title];
  *v23 = a4;
  *(v23 + 1) = a5;
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10001F2BC(a3);
  sub_100020170();
  sub_100020A78();
  v25 = *(a3 + 80);
  v50 = *(a3 + 64);
  v51 = v25;
  v52[0] = *(a3 + 96);
  *(v52 + 14) = *(a3 + 110);
  v26 = *(a3 + 16);
  v47[0] = *a3;
  v47[1] = v26;
  v27 = *(a3 + 48);
  v48 = *(a3 + 32);
  v49 = v27;
  v28 = *(a3 + 120);
  v29 = *(a3 + 136);
  v30 = *(a3 + 168);
  v42 = *(a3 + 152);
  v43 = v30;
  v41[0] = v28;
  v41[1] = v29;
  v31 = *(a3 + 184);
  v32 = *(a3 + 200);
  v33 = *(a3 + 216);
  *(v46 + 14) = *(a3 + 230);
  v45 = v32;
  v46[0] = v33;
  v44 = v31;
  sub_10002207C(v47, v39);
  sub_10002207C(v41, v39);
  sub_1000220D8(a3);
  v34 = *&v24[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_sketchView];
  sub_10002212C(v47);
  sub_10002212C(v41);
  v35 = *&v48;
  v36 = *&v42;
  if (BYTE4(v48))
  {
    v35 = 0.0;
  }

  if (BYTE4(v42))
  {
    v36 = 0.0;
  }

  sub_100047668(v35, v36);

  return v24;
}

void sub_100020170()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if ((v1 & 1) == 0)
  {
    v54 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_labelStrip];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v56 = Strong;
      v57 = swift_unknownObjectWeakLoadStrong();

      if (v57)
      {
        v58 = objc_opt_self();
        v59 = [v58 mainBundle];
        v73._object = 0xE000000000000000;
        v60._object = 0x80000001003FFC10;
        v60._countAndFlagsBits = 0xD000000000000010;
        v61._countAndFlagsBits = 0;
        v61._object = 0xE000000000000000;
        v73._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v73);

        v62 = String._bridgeToObjectiveC()();

        [v57 setText:v62];

        v63 = swift_unknownObjectWeakLoadStrong();
        if (v63)
        {
          v64 = v63;
          v65 = swift_unknownObjectWeakLoadStrong();

          if (v65)
          {
            v66 = [v58 mainBundle];
            v74._object = 0xE000000000000000;
            v67._countAndFlagsBits = 0x4C474E4154434552;
            v67._object = 0xEF48544449575F45;
            v68._countAndFlagsBits = 0;
            v68._object = 0xE000000000000000;
            v74._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, v66, v68, v74);

            v69 = String._bridgeToObjectiveC()();

            [v65 setText:v69];

            [v0 addSubview:*&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_sketchView]];
            [v0 addSubview:v54];
            v50 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableView];
            goto LABEL_12;
          }

LABEL_22:
          __break(1u);
          return;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v3 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityLength];
  v4 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  v5 = *(v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  v9 = [v8 fontDescriptor];

  v10 = [v9 fontDescriptorWithSymbolicTraits:2];
  if (!v10)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = [v6 fontWithDescriptor:v10 size:0.0];

  [v7 setFont:v11];
  v12 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  v13 = *(v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v14 = [v6 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v13 setFont:v14];

  v15 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  v16 = *(v3 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v17 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v18 = [v17 fontDescriptor];

  v19 = [v18 fontDescriptorWithSymbolicTraits:2];
  if (!v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = [v6 fontWithDescriptor:v19 size:0.0];

  [v16 setFont:v20];
  v21 = *(v3 + v4);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 secondaryLabelColor];
  [v23 setTextColor:v24];

  v25 = *(v3 + v12);
  v26 = [v22 labelColor];
  [v25 setTextColor:v26];

  v71 = v3;
  v27 = *(v3 + v15);
  v28 = [v22 secondaryLabelColor];
  [v27 setTextColor:v28];

  v29 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityWidth];
  v70 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  v30 = *(v29 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v31 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  v32 = [v31 fontDescriptor];

  v33 = [v32 fontDescriptorWithSymbolicTraits:2];
  if (!v33)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = [v6 fontWithDescriptor:v33 size:0.0];

  [v30 setFont:v34];
  v35 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  v36 = *(v29 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v37 = [v6 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v36 setFont:v37];

  v38 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  v39 = *(v29 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v40 = [v6 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v41 = [v40 fontDescriptor];

  v42 = [v41 fontDescriptorWithSymbolicTraits:2];
  if (!v42)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = [v6 fontWithDescriptor:v42 size:0.0];

  [v39 setFont:v43];
  v44 = *(v29 + v70);
  v45 = [v22 secondaryLabelColor];
  [v44 setTextColor:v45];

  v46 = *(v29 + v35);
  v47 = [v22 labelColor];
  [v46 setTextColor:v47];

  v48 = *(v29 + v38);
  v49 = [v22 secondaryLabelColor];
  [v48 setTextColor:v49];

  v50 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilitySeparator];
  v51 = [v22 clearColor];
  [v50 setBackgroundColor:v51];

  v52 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableView];
  v53 = [v22 clearColor];
  [v52 setBackgroundColor:v53];

  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_sketchView]];
  [v0 addSubview:v71];
  [v0 addSubview:v29];
LABEL_12:

  [v0 addSubview:v50];
}

void sub_100020A78()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_sketchView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v3)
  {
    v5 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityLength];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v90 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityWidth];
    [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilitySeparator];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v91 = objc_opt_self();
    sub_10000F974(&unk_1004A3F10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1003D61F0;
    v8 = [v1 heightAnchor];
    v9 = [v8 constraintEqualToConstant:176.0];

    *(v7 + 32) = v9;
    v10 = [v1 leadingAnchor];
    v11 = [v0 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v7 + 40) = v12;
    v13 = [v1 trailingAnchor];
    v14 = [v0 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v7 + 48) = v15;
    v16 = [v1 topAnchor];
    v17 = [v0 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v7 + 56) = v18;
    v19 = [v5 leadingAnchor];
    v20 = [v0 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

    *(v7 + 64) = v21;
    v22 = [v5 topAnchor];
    v23 = [v1 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v7 + 72) = v24;
    v25 = [v5 trailingAnchor];
    v26 = [v0 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v7 + 80) = v27;
    v28 = [v6 leadingAnchor];
    v29 = [v0 leadingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:16.0];

    *(v7 + 88) = v30;
    v31 = [v6 topAnchor];
    v32 = [v5 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:16.0];

    *(v7 + 96) = v33;
    v34 = [v6 trailingAnchor];
    v35 = [v0 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-16.0];

    *(v7 + 104) = v36;
    v37 = [v6 heightAnchor];
    v38 = [v37 constraintEqualToConstant:0.5];

    *(v7 + 112) = v38;
    v39 = [v90 leadingAnchor];
    v40 = [v0 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:16.0];

    *(v7 + 120) = v41;
    v42 = [v90 topAnchor];
    v43 = [v6 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:16.0];

    *(v7 + 128) = v44;
    v45 = [v90 trailingAnchor];
    v46 = [v0 trailingAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v7 + 136) = v47;
    v48 = [v90 bottomAnchor];
    v49 = [v0 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-16.0];

    v51 = v91;
    *(v7 + 144) = v50;
  }

  else
  {
    v52 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_labelStrip];
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = *&v0[OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableView];
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10000F974(&unk_1004A3F10);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1003D61E0;
    v55 = [v1 heightAnchor];
    v56 = [v2 currentTraitCollection];
    v57 = [v56 preferredContentSizeCategory];

    LOBYTE(v56) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v58 = 176.0;
    if (v56)
    {
      v58 = 444.0;
    }

    v59 = [v55 constraintEqualToConstant:v58];

    *(v54 + 32) = v59;
    v60 = [v1 leadingAnchor];
    v61 = [v0 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(v54 + 40) = v62;
    v63 = [v1 trailingAnchor];
    v64 = [v0 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];

    *(v54 + 48) = v65;
    v66 = [v1 topAnchor];
    v67 = [v0 topAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v54 + 56) = v68;
    v69 = [v52 topAnchor];
    v70 = [v1 bottomAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v54 + 64) = v71;
    v72 = [v52 leadingAnchor];
    v73 = [v0 leadingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v54 + 72) = v74;
    v75 = [v52 trailingAnchor];
    v76 = [v0 trailingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(v54 + 80) = v77;
    v78 = [v53 topAnchor];
    v79 = [v52 bottomAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v54 + 88) = v80;
    v81 = [v53 leadingAnchor];
    v82 = [v0 leadingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v54 + 96) = v83;
    v84 = [v53 trailingAnchor];
    v85 = [v0 trailingAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];

    *(v54 + 104) = v86;
    v87 = [v53 bottomAnchor];
    v88 = [v0 bottomAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];

    *(v54 + 112) = v89;
    v51 = objc_opt_self();
  }

  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:isa];
}

__n128 sub_100021770@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_100021D4C(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v6[6];
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000217CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_title);

  return v1;
}

void *sub_100021808()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableView);
  v2 = v1;
  return v1;
}

void sub_100021838(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = (v1 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_title);
  *v5 = v4;
  v5[1] = v3;

  v6 = type metadata accessor for MeasurementHistoryItem();
  memcpy(__dst, (a1 + *(v6 + 28)), 0x346uLL);
  if (sub_1000218D8(__dst) == 1)
  {
    v7 = sub_1000218E4(__dst);
    memcpy(v8, v7, 0x1DEuLL);
    sub_10001F2BC(v8);
  }
}

uint64_t sub_1000218E4(uint64_t result)
{
  v1 = *(result + 832);
  v2 = (v1 | (*(result + 836) << 32)) & 0xFFFFFF3FFFFFFFFFLL;
  *(result + 832) = v1;
  *(result + 836) = WORD2(v2);
  return result;
}

id sub_100021904(uint64_t a1)
{
  v2 = type metadata accessor for MeasurementHistoryItem();
  memcpy(__dst, (a1 + *(v2 + 28)), 0x346uLL);
  v3 = sub_1000218D8(__dst);
  result = 0;
  if (v3 == 1)
  {
    v5 = sub_1000218E4(__dst);
    v6 = sub_1001935F8();
    v49 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];

    sub_10000F974(&unk_1004AF710);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1003D5EE0;
    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v57._object = 0xE000000000000000;
    v10._object = 0x80000001003FFC10;
    v10._countAndFlagsBits = 0xD000000000000010;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v57);

    *(v7 + 56) = &type metadata for String;
    v13 = sub_1000192D0();
    *(v7 + 64) = v13;
    *(v7 + 32) = v12;
    v14 = *(v5 + 80);
    v54[4] = *(v5 + 64);
    v54[5] = v14;
    v55[0] = *(v5 + 96);
    *(v55 + 14) = *(v5 + 110);
    v15 = *(v5 + 16);
    v54[0] = *v5;
    v54[1] = v15;
    v16 = *(v5 + 48);
    v54[2] = *(v5 + 32);
    v54[3] = v16;
    v17 = sub_10001912C(v54);
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v13;
    *(v7 + 72) = v17;
    *(v7 + 80) = v18;
    v19 = [v8 mainBundle];
    v58._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0x4C474E4154434552;
    v20._object = 0xEF48544449575F45;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v58);

    *(v7 + 136) = &type metadata for String;
    *(v7 + 144) = v13;
    *(v7 + 112) = v22;
    v23 = *(v5 + 200);
    v52[4] = *(v5 + 184);
    v52[5] = v23;
    v53[0] = *(v5 + 216);
    *(v53 + 14) = *(v5 + 230);
    v24 = *(v5 + 136);
    v52[0] = *(v5 + 120);
    v52[1] = v24;
    v25 = *(v5 + 168);
    v52[2] = *(v5 + 152);
    v52[3] = v25;
    v26 = sub_10001912C(v52);
    *(v7 + 176) = &type metadata for String;
    *(v7 + 184) = v13;
    *(v7 + 152) = v26;
    *(v7 + 160) = v27;
    v28 = [v8 mainBundle];
    v59._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x4C414E4F47414944;
    v29._object = 0xE800000000000000;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v59);

    *(v7 + 216) = &type metadata for String;
    *(v7 + 224) = v13;
    *(v7 + 192) = v31;
    v32 = *(v5 + 320);
    v50[4] = *(v5 + 304);
    v50[5] = v32;
    v51[0] = *(v5 + 336);
    *(v51 + 14) = *(v5 + 350);
    v33 = *(v5 + 256);
    v50[0] = *(v5 + 240);
    v50[1] = v33;
    v34 = *(v5 + 288);
    v50[2] = *(v5 + 272);
    v50[3] = v34;
    v35 = sub_10001912C(v50);
    *(v7 + 256) = &type metadata for String;
    *(v7 + 264) = v13;
    *(v7 + 232) = v35;
    *(v7 + 240) = v36;
    v37 = [v8 mainBundle];
    v60._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0x5F45434146525553;
    v38._object = 0xEC00000041455241;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v60._countAndFlagsBits = 0;
    v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v60);

    *(v7 + 296) = &type metadata for String;
    *(v7 + 304) = v13;
    *(v7 + 272) = v40;
    v42 = *(v5 + 360);
    v41 = *(v5 + 368);
    *(v7 + 336) = &type metadata for String;
    *(v7 + 344) = v13;
    *(v7 + 312) = v42;
    *(v7 + 320) = v41;
    v43 = *(v5 + 440);
    v44 = *(v5 + 448);
    *(v7 + 376) = &type metadata for String;
    *(v7 + 384) = v13;
    *(v7 + 352) = v43;
    *(v7 + 360) = v44;

    v45._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v45);

    v46 = objc_allocWithZone(NSAttributedString);
    v47 = String._bridgeToObjectiveC()();

    v48 = [v46 initWithString:v47];

    [v49 appendAttributedString:v48];
    return v49;
  }

  return result;
}

uint64_t sub_100021D4C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for MeasurementHistoryItem() + 28);
  memcpy(__dst, (a1 + v4), 0x346uLL);
  memcpy(v39, (a1 + v4), 0x346uLL);
  result = sub_1000218D8(v39);
  if (result != 1)
  {
    goto LABEL_8;
  }

  v6 = sub_1000218E4(v39);
  memcpy(v37, __dst, 0x346uLL);
  v7 = sub_1000218E4(v37);
  sub_100021FCC(v7, v36);
  v8 = IndexPath.item.getter();
  if (v8 == 1)
  {
    v22 = [objc_opt_self() mainBundle];
    v41._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x4C414E4F47414944;
    v23._object = 0xE800000000000000;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v41);
    object = v25._object;
    countAndFlagsBits = v25._countAndFlagsBits;

    v13 = v6[31];
    v14 = v6[33];
    v32 = v6[32];
    v33 = v6[30];
    v15 = v6[36];
    v31 = v6[35];
    v16 = v6[37];
    v17 = v6[38];
    v18 = v6[40];
    v19 = v6[41];
    v21 = v6[42];
    v20 = v6[43];
    goto LABEL_6;
  }

  if (v8)
  {
    result = sub_100022028(__dst);
LABEL_8:
    v30 = 0;
    v28 = 0;
    v26 = 0;
    v14 = 0;
    v27 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v21 = 0;
    v20 = 0;
    v29 = 0xE000000000000000;
    v13 = 0xE000000000000000;
    v15 = 0xE000000000000000;
    v19 = 0xE000000000000000;
    goto LABEL_9;
  }

  v9 = [objc_opt_self() mainBundle];
  v40._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x5F45434146525553;
  v10._object = 0xEC00000041455241;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v40);
  object = v12._object;
  countAndFlagsBits = v12._countAndFlagsBits;

  v13 = v6[46];
  v14 = v6[48];
  v32 = v6[47];
  v33 = v6[45];
  v15 = v6[51];
  v31 = v6[50];
  v16 = v6[52];
  v17 = v6[53];
  v18 = v6[55];
  v19 = v6[56];
  v21 = v6[57];
  v20 = v6[58];
LABEL_6:

  result = sub_100022028(__dst);
  v27 = v31;
  v26 = v32;
  v28 = v33;
  v29 = object;
  v30 = countAndFlagsBits;
LABEL_9:
  *a2 = v30;
  a2[1] = v29;
  a2[2] = v28;
  a2[3] = v13;
  a2[4] = v26;
  a2[5] = v14;
  a2[6] = v27;
  a2[7] = v15;
  a2[8] = v16;
  a2[9] = v17;
  a2[10] = v18;
  a2[11] = v19;
  a2[12] = v21;
  a2[13] = v20;
  return result;
}

unint64_t sub_100022180()
{
  result = qword_1004A1838;
  if (!qword_1004A1838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004A1838);
  }

  return result;
}

void sub_1000221CC()
{
  v1 = (v0 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_numberOfRowsChangedCallback);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_minContentViewHeight) = 0x407AA00000000000;
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = 88.0;
  if (v2)
  {
    v4 = 222.0;
  }

  *(v0 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableRowHeight) = v4;
  *(v0 + OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_numberOfRows) = 2;
  v5 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_sketchView;
  type metadata accessor for SketchSurface();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_labelStrip;
  type metadata accessor for SurfaceLabelStrip();
  *(v0 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_tableView;
  type metadata accessor for IntrinsicTableView();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityLength;
  type metadata accessor for AccessibilityTripleStack();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v8) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilityWidth;
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v11 = OBJC_IVAR____TtC7Measure23RectanglePlatterSpatial_accessibilitySeparator;
  *(v0 + v11) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000223C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000223D4()
{
  v1 = OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot;
  [*&v0[OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v1] setClipsToBounds:1];
  [*&v0[v1] _setContinuousCornerRadius:10.0];
  v2 = *&v0[v1];
  v3 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v3];

  v4 = [v0 contentView];
  [v4 addSubview:*&v0[v1]];
}

void sub_1000224CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot;
  [*&v0[OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_bottomContentAnchor;
  v4 = *&v0[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_bottomContentAnchor];
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v4 setActive:0];
  v5 = [*&v0[v2] bottomAnchor];
  v6 = [v1 contentView];
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:-16.0];
  v9 = *&v1[v3];
  *&v1[v3] = v8;
  v10 = v8;

  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  LODWORD(v11) = 1148813312;
  [v10 setPriority:v11];

  sub_10000F974(&unk_1004A3F10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003D6240;
  v13 = [*&v1[v2] leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:88.0];
  *(v12 + 32) = v16;
  v17 = [*&v1[v2] trailingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:-88.0];
  *(v12 + 40) = v20;
  v21 = [*&v1[v2] heightAnchor];
  v22 = [*&v1[v2] widthAnchor];
  v23 = [v21 constraintLessThanOrEqualToAnchor:v22 multiplier:0.75];

  *(v12 + 48) = v23;
  v24 = *&v1[v3];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v12 + 56) = v24;
  v47 = v12;
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 currentTraitCollection];
  v28 = [v27 preferredContentSizeCategory];

  LOBYTE(v27) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if ((v27 & 1) == 0)
  {
    v32 = OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_sketchBottomAnchor;
    v33 = *&v1[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_sketchBottomAnchor];
    if (v33)
    {
      [v33 setActive:0];
      v34 = [*&v1[v2] topAnchor];
      v35 = [*&v1[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_sketchView] bottomAnchor];
      v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 constant:16.0];

      v37 = *&v1[v32];
      *&v1[v32] = v36;

      v38 = [*&v1[v2] topAnchor];
      v39 = [*&v1[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent] bottomAnchor];
      v40 = [v38 constraintEqualToAnchor:v39];

      LODWORD(v41) = 1148813312;
      [v40 setPriority:v41];
      v42 = v40;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v43 = *&v1[v32];
      if (v43)
      {
        v44 = v43;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      return;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = [*&v1[v2] topAnchor];
  v30 = [*&v1[OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_accessibleMeasureContent] bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_15:
  v45 = objc_opt_self();
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];
}

id sub_100022B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_1000223D4();
  sub_1000224CC();

  return v10;
}

id sub_100022C28(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1000223D4();
    sub_1000224CC();
  }

  return v6;
}

uint64_t sub_100022D94(uint64_t a1)
{
  v3 = type metadata accessor for MeasurementHistoryItem();
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023338(a1, v6);
  memcpy(v66, &v6[*(v4 + 36)], 0x346uLL);
  if (sub_1000218D8(v66))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v65 = a1;
    v7 = sub_1000218E4(v66);
    v8 = [objc_opt_self() currentTraitCollection];
    v9 = [v8 preferredContentSizeCategory];

    LOBYTE(v8) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v64 = v1;
    if (v8)
    {
      v10 = *(v1 + OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_accessibleMeasureContent);
      v11 = v7[6];
      v59 = v7[5];
      v60 = v6;
      v12 = v7[8];
      v58[0] = v7[7];
      v13 = v7[10];
      v61 = v7[11];
      v62 = v13;
      v14 = v7[13];
      v58[1] = v7[12];
      v58[2] = v11;
      v63 = v14;
      v15 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v16 = *&v10[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v17 = v10;
      v18 = String._bridgeToObjectiveC()();
      [v16 setText:v18];

      v19 = *&v10[v15];
      v20 = String._bridgeToObjectiveC()();
      [v19 setAccessibilityLabel:v20];

      v21 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v22 = *&v17[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v23 = String._bridgeToObjectiveC()();
      [v22 setText:v23];

      v24 = *&v17[v21];
      if (v12)
      {
        v25 = String._bridgeToObjectiveC()();
      }

      else
      {
        v25 = 0;
      }

      [v24 setAccessibilityLabel:v25];

      v46 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v47 = *&v17[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v48 = String._bridgeToObjectiveC()();
      [v47 setText:v48];

      v49 = *&v17[v46];
      v50 = v64;
      v6 = v60;
      if (v63)
      {
        v51 = String._bridgeToObjectiveC()();
      }

      else
      {
        v51 = 0;
      }

      v52 = v65;
      [v49 setAccessibilityLabel:v51];
    }

    else
    {
      v26 = OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent;
      v27 = *(*(v1 + OBJC_IVAR____TtC7Measure19BaseLineHistoryCell_measureContent) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v28 = String._bridgeToObjectiveC()();
      [v27 setText:v28];

      v30 = *v7;
      v29 = v7[1];
      v31 = *(*(v1 + v26) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v32 = String._bridgeToObjectiveC()();
      [v31 setText:v32];

      v33 = *(*(v1 + v26) + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v34 = v7[5];
      v35 = v7[6];
      v36 = v7[8];
      v59 = v7[7];
      v60 = v36;
      if (v30 == v34 && v29 == v35)
      {
        v37 = 1;
      }

      else
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v38 = v7[10];
      v62 = v7[11];
      v63 = v38;
      v39 = v7[13];
      v61 = v7[12];
      v40 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v41 = *&v33[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v17 = v33;
      [v41 setHidden:v37 & 1];
      if ((v37 & 1) == 0)
      {
        v42 = *(*&v33[v40] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v43 = String._bridgeToObjectiveC()();
        [v42 setText:v43];

        v44 = *&v33[v40];
        if (v60)
        {
          v45 = String._bridgeToObjectiveC()();
        }

        else
        {
          v45 = 0;
        }

        [v44 setAccessibilityLabel:v45];
      }

      v53 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v54 = *(*&v17[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v55 = String._bridgeToObjectiveC()();
      [v54 setText:v55];

      v56 = *&v17[v53];
      if (v39)
      {
        v51 = String._bridgeToObjectiveC()();
      }

      else
      {
        v51 = 0;
      }

      v50 = v64;
      v52 = v65;
      [v56 setAccessibilityLabel:v51];
    }

    [*(v50 + OBJC_IVAR____TtC7Measure29LineHistoryCellWithScreenshot_screenshot) setImage:*(v52 + *(type metadata accessor for SpatialPlattersHistoryItem() + 20))];
    return sub_10002339C(v6);
  }

  return result;
}

uint64_t sub_100023338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeasurementHistoryItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002339C(uint64_t a1)
{
  v2 = type metadata accessor for MeasurementHistoryItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100023518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000238BC(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AppDelegate();
  objc_msgSendSuper2(&v6, "buildMenuWithBuilder:", a1);
  sub_100018630(0, &unk_1004A1910);
  v3 = [a1 system];
  v4 = [objc_opt_self() mainSystem];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    [a1 removeMenuForIdentifier:UIMenuFormat];
    sub_100023FCC(a1);
    sub_100024490(a1);
    sub_100024A48(a1);
  }
}

uint64_t sub_100023A28(uint64_t a1, void *a2, void *a3)
{
  sub_10000F974(&unk_1004A3F10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1003D6280;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  v6 = a2;
  v7 = a3;
  return v5;
}

void *sub_100023A98(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v5;
      }

      v9 = [v7 action];

      if (v9 && (static Selector.== infix(_:_:)() & 1) != 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      if (v6 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100023C14(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_10000F974(&unk_1004A3F10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1003D6290;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  return v7;
}

uint64_t sub_100023C8C(uint64_t a1, void *a2)
{
  sub_10000F974(&unk_1004A3F10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003D56B0;
  *(v3 + 32) = a2;
  v4 = a2;
  return v3;
}

unint64_t sub_100023CE8()
{
  sub_10000F974(&unk_1004A3F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003D62A0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = swift_getKeyPath();
  *(inited + 104) = swift_getKeyPath();
  v1 = 4;
  while (1)
  {
    result = v1 - 4;
    if ((inited & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_5;
    }

    if (result >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_5:
    v3 = [objc_opt_self() standardUserDefaults];
    swift_setAtReferenceWritableKeyPath();

    if (++v1 == 14)
    {
      swift_setDeallocating();
      return swift_arrayDestroy();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100023EBC()
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v0._countAndFlagsBits = 0xD000000000000041;
  v0._object = 0x8000000100400000;
  Log.debug(_:isPrivate:)(v0, 0);
  srand48(1234567890);
  [objc_opt_self() jasperAvailable];
  sub_100023CE8();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:1 forKey:v2];

  return 1;
}

uint64_t sub_100023FCC(void *a1)
{
  sub_100018630(0, &unk_1004A6980);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  swift__string._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x80000001003FFF00;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, swift__string);

  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  v8 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v9 = [v1 mainBundle];
  swift__stringa._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD000000000000015;
  v10._object = 0x80000001003FFF20;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__stringa);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v6 systemImageNamed:v12];

  v14 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100018630(0, &unk_1004A1920);
  LOBYTE(v6) = String._bridgeToObjectiveC()();
  sub_10000F974(&unk_1004A3F10);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1003D56B0;
  *(preferredElementSize + 32) = v8;
  v16 = v8;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v33.value.super.isa = 0;
  v33.is_nil = v6;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, 0, v33, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  LOBYTE(v6) = String._bridgeToObjectiveC()();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1003D56B0;
  *(v19 + 32) = v14;
  v20 = v14;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v34.value.super.isa = 0;
  v34.is_nil = v6;
  v22 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v34, 1, 0xFFFFFFFFFFFFFFFFLL, v19, v30).super.super.isa;
  v23 = swift_allocObject();
  *(v23 + 16) = isa;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1000250D0;
  *(v24 + 24) = v23;
  aBlock[4] = sub_10002545C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014B1C8;
  aBlock[3] = &unk_100468040;
  v25 = _Block_copy(aBlock);
  v26 = isa;
  v27 = v22;

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuFile fromChildrenBlock:v25];

  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024490(void *a1)
{
  sub_100018630(0, &unk_1004A6980);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  swift__string._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x4E454D5F4F444E55;
  v3._object = 0xEF454C5449545F55;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, swift__string);

  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  v8 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v9 = [v1 mainBundle];
  swift__stringa._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x4C415F5241454C43;
  v10._object = 0xE90000000000004CLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__stringa);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v6 systemImageNamed:v12];

  v14 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100018630(0, &unk_1004A1920);
  LOBYTE(v12) = String._bridgeToObjectiveC()();
  sub_10000F974(&unk_1004A3F10);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1003D56B0;
  *(preferredElementSize + 32) = v8;
  v16 = v8;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v42.value.super.isa = 0;
  v42.is_nil = v12;
  v18.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, 0, v42, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  v40 = sub_100023A94;
  v41 = 0;
  aBlock = _NSConcreteStackBlock;
  aBlock_8 = 1107296256;
  v38 = sub_10014B1C8;
  v39 = &unk_100467F50;
  v19 = _Block_copy(&aBlock);

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuStandardEdit fromChildrenBlock:v19];
  _Block_release(v19);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = [a1 menuForIdentifier:UIMenuStandardEdit];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = String._bridgeToObjectiveC()();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1003D56B0;
  *(v23 + 32) = v14;
  v24 = v14;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v43.value.super.isa = 0;
  v43.is_nil = v22;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v43, 1, 0xFFFFFFFFFFFFFFFFLL, v23, v34.super.super.isa).super.super.isa;
  v27 = swift_allocObject();
  v27[2].super.super.isa = v18.super.super.isa;
  v27[3].super.super.isa = v21;
  v27[4].super.super.isa = isa;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100025074;
  *(v28 + 24) = v27;
  v40 = sub_10002545C;
  v41 = v28;
  aBlock = _NSConcreteStackBlock;
  aBlock_8 = 1107296256;
  v38 = sub_10014B1C8;
  v39 = &unk_100467FC8;
  v29 = _Block_copy(&aBlock);
  v30 = v18.super.super.isa;
  v31 = v21;
  v32 = isa;

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuEdit fromChildrenBlock:v29];

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100024A48(void *a1)
{
  sub_100018630(0, &unk_1004A6980);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  swift__string._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000014;
  v3._object = 0x80000001003FFDD0;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, swift__string);

  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  [v8 setWantsPriorityOverSystemBehavior:{1, &_swiftEmptyArrayStorage, 0, 0, 0, 0}];
  v9 = [v1 mainBundle];
  swift__stringa._object = 0xE000000000000000;
  v10._object = 0x80000001003FFDF0;
  v10._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__stringa);

  v12 = String._bridgeToObjectiveC()();
  v13 = [v6 systemImageNamed:v12];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  [v14 setWantsPriorityOverSystemBehavior:{1, &_swiftEmptyArrayStorage, 0, 0, 0, 0}];
  v15 = [v1 mainBundle];
  swift__stringb._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0x5349485F574F4853;
  v16._object = 0xEC00000059524F54;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  swift__stringb._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, swift__stringb);

  v18 = String._bridgeToObjectiveC()();
  v19 = [v6 systemImageNamed:v18];

  v20 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100018630(0, &unk_1004A1920);
  LOBYTE(v5) = String._bridgeToObjectiveC()();
  sub_10000F974(&unk_1004A3F10);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1003D6290;
  *(preferredElementSize + 32) = v8;
  *(preferredElementSize + 40) = v14;
  *(preferredElementSize + 48) = v20;
  v22 = v8;
  v23 = v14;
  v24 = v20;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v35.value.super.isa = 0;
  v35.is_nil = v5;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v35, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  v27 = swift_allocObject();
  *(v27 + 16) = isa;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100025004;
  *(v28 + 24) = v27;
  aBlock[4] = sub_10002500C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10014B1C8;
  aBlock[3] = &unk_100467F28;
  v29 = _Block_copy(aBlock);
  v30 = isa;

  [a1 replaceChildrenOfMenuForIdentifier:UIMenuView fromChildrenBlock:v29];

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100024FCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002502C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100025090()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000250D8()
{
  result = qword_1004A0C20;
  if (!qword_1004A0C20)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A0C20);
  }

  return result;
}

id sub_10002513C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldRenderOpaqueSurfaces];
  *a2 = result;
  return result;
}

id sub_100025190@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldUseNormalsForBoxOrientation];
  *a2 = result;
  return result;
}

id sub_1000251E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kADEdgeDetectionEnabled];
  *a2 = result;
  return result;
}

id sub_100025238@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLabelOcclusionEnabled];
  *a2 = result;
  return result;
}

id sub_10002528C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLineOcclusionEnabled];
  *a2 = result;
  return result;
}

id sub_1000252E0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPointOcclusionEnabled];
  *a2 = result;
  return result;
}

id sub_100025334@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kDivisionsEnabled];
  *a2 = result;
  return result;
}

id sub_100025388@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsOnlyYukonEModes];
  *a2 = result;
  return result;
}

id sub_1000253DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 kPersonHeightEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_100025470()
{
  result = Contexts.UIKit.init()();
  qword_1004D4A18 = result;
  return result;
}

id sub_100025490@<X0>(void *a1@<X8>)
{
  if (qword_1004A00B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A18;
  *a1 = qword_1004D4A18;

  return v2;
}

unint64_t sub_100025518()
{
  result = qword_1004AC970;
  if (!qword_1004AC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AC970);
  }

  return result;
}

unint64_t sub_10002556C(uint64_t a1)
{
  result = sub_100025594();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100025594()
{
  result = qword_1004A1978;
  if (!qword_1004A1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A1978);
  }

  return result;
}

uint64_t sub_1000255FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 72);
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
    v10 = sub_10000F974(&qword_1004A1980);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 92);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000256CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 72) = a2 + 1;
  }

  else
  {
    v7 = sub_10000F974(&qword_1004A1980);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 92);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppSession()
{
  result = qword_1004A19E0;
  if (!qword_1004A19E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000257C4()
{
  sub_100025890();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100025890()
{
  if (!qword_1004A19F0)
  {
    type metadata accessor for ARCamera.TrackingState();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004A19F0);
    }
  }
}

uint64_t sub_1000258E8()
{
  v1 = CACurrentMediaTime();
  v2 = *(v0 + 112);
  if (![objc_opt_self() jasperAvailable])
  {
    if ((*(v0 + 72) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 9;
    goto LABEL_27;
  }

  if (*(v0 + 72))
  {
    goto LABEL_9;
  }

  if (*(v0 + 96) >= 1)
  {
    v3 = *(v0 + 32);
    if (*(v0 + 64) <= 0.0)
    {
      if (v3 <= 0.0)
      {
        v4 = 13;
      }

      else
      {
        v4 = 12;
      }
    }

    else if (v3 <= 0.0)
    {
      v4 = 11;
    }

    else
    {
      v4 = 10;
    }

    goto LABEL_27;
  }

LABEL_10:
  v5 = *(v0 + 32);
  if (*(v0 + 64) > 0.0)
  {
    v4 = 2 * (v5 > 0.0);
    goto LABEL_27;
  }

  if (v5 > 0.0)
  {
    v4 = 1;
    goto LABEL_27;
  }

  v6 = v1 - v2;
  if (*(v0 + 121) == 1)
  {
    if (v6 <= 2.0)
    {
      v4 = 3;
      goto LABEL_27;
    }

    v7 = v6 > 10.0;
    v8 = 4;
    v9 = 5;
  }

  else
  {
    if (v6 <= 2.0)
    {
      v4 = 6;
      goto LABEL_27;
    }

    v7 = v6 > 10.0;
    v8 = 7;
    v9 = 8;
  }

  if (v7)
  {
    v4 = v9;
  }

  else
  {
    v4 = v8;
  }

LABEL_27:

  return sub_100025A20(v4);
}

uint64_t sub_100025A20(char a1)
{
  v3 = type metadata accessor for ARCamera.TrackingState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000F974(&qword_1004A1980);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  if ([objc_opt_self() jasperAvailable])
  {
    LOBYTE(v61) = a1;
    result = String.init<A>(describing:)();
    v15 = *v1;
    if ((*v1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v15 > -9.22337204e18)
      {
        if (v15 < 9.22337204e18)
        {
          v16 = *(v1 + 8);
          if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v16 > -9.22337204e18)
            {
              if (v16 < 9.22337204e18)
              {
                v17 = *(v1 + 16);
                if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v17 > -9.22337204e18)
                  {
                    if (v17 < 9.22337204e18)
                    {
                      v18 = *(v1 + 24);
                      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v18 > -9.22337204e18)
                        {
                          if (v18 < 9.22337204e18)
                          {
                            v19 = *(v1 + 32);
                            if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              if (v19 > -9.22337204e18)
                              {
                                if (v19 < 9.22337204e18)
                                {
                                  v45 = v14;
                                  v46 = result;
                                  v20 = *(v1 + 80);
                                  v21 = *(v1 + 88);
                                  v23 = *(v1 + 96);
                                  v22 = *(v1 + 104);
                                  v24 = type metadata accessor for AppSession();
                                  v25 = *(v1 + *(v24 + 100));
                                  sub_10002620C(v1 + *(v24 + 92), v12);
                                  if ((*(v4 + 48))(v12, 1, v3) == 1)
                                  {
                                    sub_100018F04(v12, &qword_1004A1980);
                                    v26 = type metadata accessor for ARCamera.TrackingState.Reason();
                                    (*(*(v26 - 8) + 56))(v6, 1, 2, v26);
                                  }

                                  else
                                  {
                                    v6 = v12;
                                  }

                                  v37 = ARCamera.TrackingState.analyticsDescription.getter();
                                  v39 = v38;
                                  sub_10002627C(v6);
                                  v47 = v46;
                                  v48 = v45;
                                  v49 = v15;
                                  v50 = v16;
                                  v51 = v17;
                                  v52 = v18;
                                  v53 = v19;
                                  v54 = v20;
                                  v55 = v21;
                                  v56 = v23;
                                  v57 = v22;
                                  v58 = v25;
                                  v59 = v37;
                                  v60 = v39;
                                  *&v61 = v46;
                                  *(&v61 + 1) = v45;
                                  v62 = v15;
                                  v63 = v16;
                                  v64 = v17;
                                  v65 = v18;
                                  v66 = v19;
                                  v67 = v20;
                                  v68 = v21;
                                  v69 = v23;
                                  v70 = v22;
                                  v71 = v25 & 1 | 0x8000000000000000;
                                  v72 = v37;
                                  v73 = v39;
                                  sub_10012A240(&v61);
                                  v40 = &unk_1004A1A78;
                                  return sub_100018F04(&v47, v40);
                                }

                                goto LABEL_69;
                              }

                              goto LABEL_67;
                            }

                            goto LABEL_65;
                          }

                          goto LABEL_63;
                        }

                        goto LABEL_61;
                      }

                      goto LABEL_59;
                    }

                    goto LABEL_57;
                  }

                  goto LABEL_55;
                }

                goto LABEL_53;
              }

              goto LABEL_51;
            }

            goto LABEL_49;
          }

          goto LABEL_47;
        }

        goto LABEL_45;
      }

      goto LABEL_43;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  LOBYTE(v61) = a1;
  result = String.init<A>(describing:)();
  v28 = *v1;
  if ((*v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_42;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = *(v1 + 8);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v30 = *(v1 + 16);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v31 = *(v1 + 24);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v32 = *(v1 + 32);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v32 < 9.22337204e18)
  {
    v33 = result;
    v34 = v27;
    v35 = type metadata accessor for AppSession();
    sub_10002620C(v1 + *(v35 + 92), v10);
    if ((*(v4 + 48))(v10, 1, v3) == 1)
    {
      sub_100018F04(v10, &qword_1004A1980);
      v36 = type metadata accessor for ARCamera.TrackingState.Reason();
      (*(*(v36 - 8) + 56))(v6, 1, 2, v36);
    }

    else
    {
      v6 = v10;
    }

    v41 = ARCamera.TrackingState.analyticsDescription.getter();
    v43 = v42;
    sub_10002627C(v6);
    v47 = v33;
    v48 = v34;
    v49 = v28;
    v50 = v29;
    v51 = v30;
    v52 = v31;
    v53 = v32;
    v54 = v41;
    v55 = v43;
    *&v61 = v33;
    *(&v61 + 1) = v34;
    v62 = v28;
    v63 = v29;
    v64 = v30;
    v65 = v31;
    v66 = v32;
    v67 = v41;
    v68 = v43;
    v71 = 0;
    sub_10012A240(&v61);
    v40 = &unk_1004A1A70;
    return sub_100018F04(&v47, v40);
  }

LABEL_70:
  __break(1u);
  return result;
}

void sub_100026158(uint64_t a1@<X8>)
{
  *(a1 + 58) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = CACurrentMediaTime();
  *(a1 + 120) = 1;
  *(a1 + 122) = 0;
  v2 = type metadata accessor for AppSession();
  v3 = v2[23];
  v4 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[24];
  *(a1 + v5) = CACurrentMediaTime();
  *(a1 + v2[25]) = 0;
}

uint64_t sub_10002620C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002627C(uint64_t a1)
{
  v2 = type metadata accessor for ARCamera.TrackingState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000263C0()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();

  v3 = OBJC_IVAR____TtC7Measure17SurfaceLabelStrip_contentView;
  if (!*&v0[OBJC_IVAR____TtC7Measure17SurfaceLabelStrip_contentView])
  {
    __break(1u);
    goto LABEL_8;
  }

  [v0 addSubview:?];
  v4 = *&v0[v3];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v0 bounds];
  [v5 setFrame:?];

  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v6 setAutoresizingMask:18];
}

void sub_10002659C(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Measure17SurfaceLabelStrip_contentView] = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainBundle];
  v8 = String._bridgeToObjectiveC()();

  v9 = OBJC_IVAR____TtC7Measure17SurfaceLabelStrip_contentView;
  if (!*&v6[OBJC_IVAR____TtC7Measure17SurfaceLabelStrip_contentView])
  {
    __break(1u);
    goto LABEL_8;
  }

  [v6 addSubview:?];
  v10 = *&v6[v9];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v6 bounds];
  [v11 setFrame:?];

  v12 = *&v6[v9];
  if (v12)
  {
    [v12 setAutoresizingMask:18];

LABEL_6:
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1000267FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MeasurementHistoryItem();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023338(a1, v7);
  memcpy(v167, &v7[*(v5 + 36)], 0x346uLL);
  if (sub_1000218D8(v167) == 1)
  {
    v8 = sub_1000218E4(v167);
    v9 = v8;
    v10 = *v8;
    v11 = *(v8 + 36);
    v12 = *(v8 + 32);
    v14 = *(v8 + 120);
    v13 = *(v8 + 128);
    v163 = *(v8 + 8);
    v164 = v13;
    if (v11)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v12;
    }

    if (*(v8 + 156))
    {
      v16 = 0.0;
    }

    else
    {
      v16 = *(v8 + 152);
    }

    v17 = *&v2[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_sketchView];
    sub_100048AE8(v15, v16);

    v18 = [objc_opt_self() currentTraitCollection];
    v19 = [v18 preferredContentSizeCategory];

    v20 = UIContentSizeCategory.isAccessibilityCategory.getter();
    v165 = v2;
    v166 = v7;
    if (v20)
    {
      v21 = *&v2[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleCellTitle];
      v22 = v2;
      v23 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
      v24 = *&v21[OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label];
      v25 = v21;
      v26 = String._bridgeToObjectiveC()();
      [v24 setText:v26];

      v27 = *&v21[v23];
      v28 = String._bridgeToObjectiveC()();
      [v27 setAccessibilityLabel:v28];

      v29 = *&v22[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleLengthLabel];
      v30 = objc_opt_self();
      v31 = v29;
      v32 = [v30 mainBundle];
      v168._object = 0xE000000000000000;
      v33._object = 0x80000001003FFC10;
      v33._countAndFlagsBits = 0xD000000000000010;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v168._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v168);

      v164 = v30;
      v35 = [v30 mainBundle];
      v169._object = 0xE000000000000000;
      v36._object = 0x80000001003FFC10;
      v36._countAndFlagsBits = 0xD000000000000010;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      v169._countAndFlagsBits = 0;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v169)._object;

      v39 = v9[5];
      v158 = v9[6];
      v159 = v39;
      v40 = v9[7];
      v41 = v9[8];
      v42 = v9[10];
      v160 = v9[11];
      v161 = v42;
      v44 = v9[12];
      v43 = v9[13];
      v156[1] = v40;
      v157 = v44;
      v162 = v43;
      v45 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v46 = *&v31[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v47 = String._bridgeToObjectiveC()();

      [v46 setText:v47];

      v48 = *&v31[v45];
      v163 = object;
      v49 = String._bridgeToObjectiveC()();
      [v48 setAccessibilityLabel:v49];

      v50 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v51 = *&v31[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v52 = String._bridgeToObjectiveC()();
      [v51 setText:v52];

      v53 = *&v31[v50];
      if (v41)
      {
        v54 = String._bridgeToObjectiveC()();
      }

      else
      {
        v54 = 0;
      }

      [v53 setAccessibilityLabel:v54];

      v82 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v83 = *&v31[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v84 = String._bridgeToObjectiveC()();
      [v83 setText:v84];

      v85 = *&v31[v82];
      v86 = v165;
      if (v162)
      {
        v87 = String._bridgeToObjectiveC()();
      }

      else
      {
        v87 = 0;
      }

      [v85 setAccessibilityLabel:v87];

      v88 = *&v86[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_accessibleWidthLabel];
      v89 = v164;
      v90 = [v164 mainBundle];
      v171._object = 0xE000000000000000;
      v91._countAndFlagsBits = 0x4C474E4154434552;
      v91._object = 0xEF48544449575F45;
      v92._countAndFlagsBits = 0;
      v92._object = 0xE000000000000000;
      v171._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v91, 0, v90, v92, v171);

      v93 = [v89 mainBundle];
      v172._object = 0xE000000000000000;
      v94._countAndFlagsBits = 0x4C474E4154434552;
      v94._object = 0xEF48544449575F45;
      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      v172._countAndFlagsBits = 0;
      v96 = NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, v172)._object;

      v97 = v9[22];
      v98 = v9[23];
      v100 = v9[25];
      v99 = v9[26];
      v161 = v9[21];
      v162 = v99;
      v102 = v9[27];
      v101 = v9[28];
      v159 = v97;
      v160 = v102;
      v163 = v100;
      v164 = v101;
      v103 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v104 = *&v88[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel];
      v105 = String._bridgeToObjectiveC()();

      [v104 setText:v105];

      v106 = *&v88[v103];
      v165 = v96;
      v107 = String._bridgeToObjectiveC()();
      [v106 setAccessibilityLabel:v107];

      v108 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v109 = *&v88[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel];
      v110 = String._bridgeToObjectiveC()();
      [v109 setText:v110];

      v111 = *&v88[v108];
      if (v98)
      {
        v112 = String._bridgeToObjectiveC()();
      }

      else
      {
        v112 = 0;
      }

      [v111 setAccessibilityLabel:v112];

      v113 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v114 = *&v88[OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel];
      v115 = String._bridgeToObjectiveC()();
      [v114 setText:v115];

      v116 = *&v88[v113];
      if (v164)
      {
        v117 = String._bridgeToObjectiveC()();
      }

      else
      {
        v117 = 0;
      }

      [v116 setAccessibilityLabel:v117];

      v118 = v166;
    }

    else
    {
      v162 = v14;
      v55 = *&v2[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_cellTitle];
      v56 = String._bridgeToObjectiveC()();
      [v55 setText:v56];

      v57 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels;
      v58 = *(*&v2[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_lengthLabels] + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v59 = objc_opt_self();
      v60 = v58;
      v161 = v59;
      v61 = [v59 mainBundle];
      v170._object = 0xE000000000000000;
      v62._object = 0x80000001003FFC10;
      v62._countAndFlagsBits = 0xD000000000000010;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v170._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v62, 0, v61, v63, v170);

      v64 = String._bridgeToObjectiveC()();

      [v60 setText:v64];

      v65 = *(*&v2[v57] + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v66 = v163;
      v67 = String._bridgeToObjectiveC()();
      [v65 setText:v67];

      v68 = *(*&v2[v57] + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v70 = v9[5];
      v69 = v9[6];
      v71 = v9[8];
      v157 = v9[7];
      v158 = v71;
      if (v10 == v70 && v66 == v69)
      {
        v72 = 1;
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v73 = v9[11];
      v163 = v9[10];
      v74 = v9[13];
      v159 = v9[12];
      v160 = v73;
      v75 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v76 = *&v68[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v77 = v68;
      [v76 setHidden:v72 & 1];
      if ((v72 & 1) == 0)
      {
        v78 = *(*&v68[v75] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v79 = String._bridgeToObjectiveC()();
        [v78 setText:v79];

        v80 = *&v68[v75];
        if (v158)
        {
          v81 = String._bridgeToObjectiveC()();
        }

        else
        {
          v81 = 0;
        }

        [v80 setAccessibilityLabel:v81];
      }

      v119 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v120 = *(*&v77[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v121 = String._bridgeToObjectiveC()();
      [v120 setText:v121];

      v122 = *&v77[v119];
      v123 = v165;
      if (v74)
      {
        v124 = String._bridgeToObjectiveC()();
      }

      else
      {
        v124 = 0;
      }

      [v122 setAccessibilityLabel:v124];

      v125 = OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels;
      v126 = *(*&v123[OBJC_IVAR____TtC7Measure24BaseRectangleHistoryCell_widthLabels] + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v127 = [v161 mainBundle];
      v173._object = 0xE000000000000000;
      v128._countAndFlagsBits = 0x4C474E4154434552;
      v128._object = 0xEF48544449575F45;
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      v173._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v128, 0, v127, v129, v173);

      v130 = String._bridgeToObjectiveC()();

      [v126 setText:v130];

      v131 = *(*&v123[v125] + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
      v132 = v162;
      v133 = v164;
      v134 = String._bridgeToObjectiveC()();
      [v131 setText:v134];

      v135 = v133;
      v136 = *(*&v123[v125] + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
      v137 = v9[20];
      v138 = v9[21];
      v139 = v9[23];
      v161 = v9[22];
      v163 = v139;
      if (v132 == v137 && v135 == v138)
      {
        v140 = 1;
      }

      else
      {
        v140 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v141 = v9[25];
      v142 = v9[27];
      v143 = v9[28];
      v164 = v142;
      v165 = v141;
      v144 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
      v145 = *&v136[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel];
      v146 = v136;
      [v145 setHidden:v140 & 1];
      if ((v140 & 1) == 0)
      {
        v147 = *(*&v136[v144] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
        v148 = String._bridgeToObjectiveC()();
        [v147 setText:v148];

        v149 = *&v136[v144];
        if (v163)
        {
          v150 = String._bridgeToObjectiveC()();
        }

        else
        {
          v150 = 0;
        }

        [v149 setAccessibilityLabel:v150];
      }

      v151 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
      v152 = *(*&v146[OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel] + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
      v153 = String._bridgeToObjectiveC()();
      [v152 setText:v153];

      v154 = *&v146[v151];
      if (v143)
      {
        v117 = String._bridgeToObjectiveC()();
      }

      else
      {
        v117 = 0;
      }

      v118 = v166;
      [v154 setAccessibilityLabel:v117];
    }

    return sub_10002339C(v118);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100027688(uint64_t a1)
{
  v3 = qword_1004A1AE8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100027740@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1004A1AF0;
  swift_beginAccess();
  return sub_100027DE4(v1 + v3, a1);
}

uint64_t sub_100027798(uint64_t a1)
{
  v3 = qword_1004A1AF0;
  swift_beginAccess();
  sub_100027D74(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10002785C(double a1, double a2, double a3, double a4)
{
  *&v4[qword_1004A1AE8] = &_swiftEmptyArrayStorage;
  v9 = &v4[qword_1004A1AF0];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for StateObservingSKView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  swift_getWitnessTable();
  StateObserving.setup()();

  return v10;
}

void sub_100027990()
{
  *(v0 + qword_1004A1AE8) = &_swiftEmptyArrayStorage;
  v1 = v0 + qword_1004A1AF0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100027A70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateObservingSKView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100027AE0(uint64_t a1)
{

  v2 = a1 + qword_1004A1AF0;

  return sub_100027EDC(v2);
}

uint64_t sub_100027B4C@<X0>(uint64_t *a1@<X8>)
{
  result = j___s8Stateful8ContextsO5UIKitVAEycfC();
  *a1 = result;
  return result;
}

uint64_t (*sub_100027B7C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000277F8();
  return sub_100027BEC;
}

uint64_t sub_100027BF0()
{
  sub_100027D30();
}

uint64_t (*sub_100027C1C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000276E0();
  return sub_100027F78;
}

void sub_100027C8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100027D30()
{
  v1 = qword_1004A1AE8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100027D74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A1BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100027E54()
{
  *(v0 + qword_1004A1AE8) = &_swiftEmptyArrayStorage;
  v1 = v0 + qword_1004A1AF0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100027EDC(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004A1BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_100027F7C()
{
  v1 = *&v0[qword_1004A4F58];
  if (!v1)
  {
    return 0.0;
  }

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedApplication];
  v5 = [v4 userInterfaceLayoutDirection];

  if (v5 == 1)
  {
    if (qword_1004A0520 != -1)
    {
      swift_once();
    }

    v6 = *&qword_1004D5090;
  }

  else
  {
    [v0 frame];
    v8 = v7;
    [v3 frame];
    v9 = v8 - CGRectGetWidth(v11);
    if (qword_1004A0520 != -1)
    {
      swift_once();
    }

    v6 = v9 - *&qword_1004D5090;
  }

  [v0 frame];
  CGRectGetHeight(v12);
  if (qword_1004A0510 != -1)
  {
    swift_once();
  }

  [v3 frame];
  CGRectGetHeight(v13);

  return v6;
}

void sub_10002813C()
{
  v1 = v0;

  StateValue.wrappedValue.getter();

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  if ((v4 - 3) <= 1)
  {
    if (v3 == 1)
    {
      CGRectGetWidth(*(v1 + qword_1004A4FA8));
      if (qword_1004A0520 == -1)
      {
        goto LABEL_9;
      }

LABEL_11:
      swift_once();
      goto LABEL_9;
    }

LABEL_8:
    if (qword_1004A0520 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  CGRectGetWidth(*(v1 + qword_1004A4FA8));
  if (qword_1004A0520 != -1)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (qword_1004A0528 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002834C()
{
  v1 = [objc_opt_self() smallShutterButton];
  if (v1)
  {
    v2 = *(v0 + qword_1004A4F58);
    *(v0 + qword_1004A4F58) = v1;
  }

  else
  {
    __break(1u);
  }

  return _objc_release_x1(v1, v2);
}

uint64_t sub_1000283AC()
{
  [v0 bounds];
  v2 = v1;
  if (qword_1004A0518 != -1)
  {
    swift_once();
  }

  v3 = *&qword_1004D5088;
  [v0 bounds];
  Height = CGRectGetHeight(v12);
  if (qword_1004A0510 != -1)
  {
    v9 = Height;
    swift_once();
    Height = v9;
  }

  v5 = Height - *&qword_1004D5080 - v3 * 0.5;
  v6 = objc_allocWithZone(type metadata accessor for EditButtonSolarium());
  v7 = sub_10013772C((v2 - v3) * 0.5, v5, v3, v3);
  v8 = *&v0[qword_1004A4F50];
  *&v0[qword_1004A4F50] = v7;

  return _objc_release_x1(v7, v8);
}

uint64_t sub_1000284D8()
{
  type metadata accessor for DeleteButtonSolarium();
  swift_allocObject();
  *(v0 + qword_1004A4F40) = sub_100054014(0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_10002854C()
{
  sub_10002813C();
  v2 = v1;
  v4 = v3;
  if (qword_1004A0538 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1004D50A8;
  v6 = objc_allocWithZone(type metadata accessor for UndoButtonSolarium());
  v7 = sub_1001B2FB4(v2, v4, v5, v5);
  v8 = *(v0 + qword_1004A4F38);
  *(v0 + qword_1004A4F38) = v7;

  return _objc_release_x1(v7, v8);
}

id sub_100028608(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100028678(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

uint64_t type metadata accessor for EditViewCompact()
{
  result = qword_1004A1C10;
  if (!qword_1004A1C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ARSCNView.viewport.getter()
{
  if (qword_1004A0850 != -1)
  {
    result = swift_once();
  }

  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
  }

  return result;
}

void ARSCNView.normalize(screenPoint:)()
{
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
  }

  else
  {
    CGRectGetWidth(*(v0 + 48));
    if ((*(v0 + 80) & 1) == 0)
    {
      CGRectGetHeight(*(v0 + 48));
      return;
    }
  }

  __break(1u);
}

{
  CGPoint.init(_:)();
  if (qword_1004A0850 != -1)
  {
    swift_once();
  }

  v0 = qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits;
  if (*(qword_1004D5428 + OBJC_IVAR____TtC7Measure12UIKitContext_sceneViewTraits + 80))
  {
    __break(1u);
  }

  else
  {
    CGRectGetWidth(*(v0 + 48));
    if ((*(v0 + 80) & 1) == 0)
    {
      CGRectGetHeight(*(v0 + 48));
      return;
    }
  }

  __break(1u);
}

id sub_100028958()
{
  v1 = [v0 session];

  return v1;
}

uint64_t sub_100028990()
{

  return swift_deallocClassInstance();
}

id sub_1000289FC()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4A20 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100028A7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2 & 0xFFFFFFFFFFFFFF8;
  if (*v2 >> 62)
  {
LABEL_24:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if ((*((swift_isaMask & *v9) + 0xB8))() == a1 && v11 == a2)
    {

LABEL_19:
      v15 = sub_10006CBC8(v8);

      return;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_23;
    }
  }
}

uint64_t sub_100028C00()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = (*((swift_isaMask & *v4) + 0x178))();
      v7();

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  *v0 = _swiftEmptyArrayStorage;
  return result;
}

id sub_100028D38@<X0>(void *a1@<X8>)
{
  if (qword_1004A00C0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A20;
  *a1 = qword_1004D4A20;

  return v2;
}

unint64_t sub_100028DB8()
{
  result = qword_1004A20A8;
  if (!qword_1004A20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A20A8);
  }

  return result;
}

unint64_t sub_100028E0C(uint64_t a1)
{
  result = sub_100028E34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100028E34()
{
  result = qword_1004A20D8;
  if (!qword_1004A20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A20D8);
  }

  return result;
}

unint64_t sub_100028E88@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002D35C(*a1);
  *a2 = result;
  return result;
}

char *sub_100028EC0(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = sub_10018C1EC(7);
  [v12 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002D310();
  if (swift_dynamicCast())
  {
    v13 = v117;
  }

  else
  {
    v13 = [objc_allocWithZone(SCNMaterial) init];
  }

  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material] = v13;
  v14 = sub_10018C1EC(7);
  [v14 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v15 = v117;
  }

  else
  {
    v15 = [objc_allocWithZone(SCNMaterial) init];
  }

  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material] = v15;
  v16 = sub_10018C1EC(7);
  [v16 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v17 = v117;
  }

  else
  {
    v17 = [objc_allocWithZone(SCNMaterial) init];
  }

  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2Material] = v17;
  v18 = sub_10018C1EC(7);
  [v18 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v19 = v117;
  }

  else
  {
    v19 = [objc_allocWithZone(SCNMaterial) init];
  }

  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3Material] = v19;
  v20 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0;
  *&v10[v20] = [objc_allocWithZone(SCNNode) init];
  v21 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1;
  *&v10[v21] = [objc_allocWithZone(SCNNode) init];
  v22 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2;
  *&v10[v22] = [objc_allocWithZone(SCNNode) init];
  v23 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3;
  *&v10[v23] = [objc_allocWithZone(SCNNode) init];
  v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_isOnVerticalGuide] = 0;
  v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState] = 0;
  v24 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_state;
  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_state] = static MeasureObjectState.default;
  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTEnter] = 0;
  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTExit] = 0;
  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  v25 = byte_1004D4FC9;
  v26 = byte_1004D4FC9 == 0;
  v27 = -0.07;
  if (byte_1004D4FC9)
  {
    v27 = -0.023;
  }

  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbersRevealOffset] = v27;
  v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_isOcclusionInitialized] = 0;
  *&v10[v24] = a1;
  v28 = &v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_endTransforms];
  *v28 = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v28[6] = a8;
  v28[7] = a9;
  v29 = 0.0180000011;
  if (!v26)
  {
    v29 = 0.0150000006;
  }

  v30 = 0.0450000018;
  if (v26)
  {
    v30 = 0.0594000027;
  }

  v31 = &v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_markerWidth];
  *v31 = v29;
  v31[1] = v29 * 1.5;
  v31[2] = v29 * 2.5;
  v31[3] = v30;
  if (v26)
  {
    v32 = 0.0594000027;
  }

  else
  {
    v32 = v29 * 2.5;
  }

  if (v26)
  {
    v33 = 0;
  }

  else
  {
    v33 = -1;
  }

  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_increments] = vbslq_s8(vdupq_n_s32(v33), xmmword_1003D6860, xmmword_1003D6850);
  v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_isClosestLine] = 0;
  *&v34 = v32 * 0.5;
  v35 = objc_allocWithZone(type metadata accessor for LineDivisionsNumbers());
  v43 = sub_100076AD0(a2, a3, a4, a5, a6, a7, a8, a9, v35, v36, v37, v38, v39, v40, v41, v42, v34);
  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers] = v43;
  v114 = matrix_identity_float4x4.columns[0];
  v110 = matrix_identity_float4x4.columns[2];
  v112 = matrix_identity_float4x4.columns[1];
  v108 = matrix_identity_float4x4.columns[3];
  [v43 setSimdTransform:?];
  v44 = objc_allocWithZone(type metadata accessor for LineDivisionsEndNumber());
  v45 = sub_1001C70CC(a2, a3, a4, a5, a6, a7, a8, a9);
  *&v10[OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber] = v45;
  [v45 setSimdTransform:{*v114.i64, *v112.i64, *v110.i64, *v108.i64}];
  v116.receiver = v10;
  v116.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v116, "init");
  [v46 setSimdTransform:{*v114.i64, *v112.i64, *v110.i64, *v108.i64}];
  v47 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0;
  [*&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0] setSimdTransform:{*v114.i64, *v112.i64, *v110.i64, *v108.i64}];
  v48 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1;
  [*&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1] setSimdTransform:{*v114.i64, *v112.i64, *v110.i64, *v108.i64}];
  v105 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2;
  [*&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2] setSimdTransform:{*v114.i64, *v112.i64, *v110.i64, *v108.i64}];
  v107 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3;
  [*&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3] setSimdTransform:{*v114.i64, *v112.i64, *v110.i64, *v108.i64}];
  v115 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material;
  v49 = &v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_increments];
  v50 = *&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material];
  isa = Float._bridgeToObjectiveC()().super.super.isa;
  v52 = String._bridgeToObjectiveC()();
  [v50 setValue:isa forKeyPath:v52];

  v113 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material;
  v53 = *&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material];
  v54 = Float._bridgeToObjectiveC()().super.super.isa;
  v55 = String._bridgeToObjectiveC()();
  [v53 setValue:v54 forKeyPath:v55];

  v111 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2Material;
  v56 = *&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2Material];
  v57 = Float._bridgeToObjectiveC()().super.super.isa;
  v58 = String._bridgeToObjectiveC()();
  [v56 setValue:v57 forKeyPath:v58];

  v109 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3Material;
  v59 = *&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3Material];
  v60 = Float._bridgeToObjectiveC()().super.super.isa;
  v61 = String._bridgeToObjectiveC()();
  [v59 setValue:v60 forKeyPath:v61];

  if (qword_1004A0408 != -1)
  {
    swift_once();
  }

  v119 = &type metadata for CGFloat;
  v118[0] = *&dword_1004D4FCC;
  sub_100029B28(v118);
  sub_10002D238(v118);
  v62 = 0.000999999931;
  if (v25)
  {
    v62 = 0.00059999997;
  }

  v119 = &type metadata for CGFloat;
  v118[0] = v62;
  sub_100029B28(v118);
  sub_10002D238(v118);
  if (qword_1004A0438 != -1)
  {
    swift_once();
  }

  v119 = &type metadata for CGFloat;
  v118[0] = qword_1004D4FE8;
  sub_100029B28(v118);
  sub_10002D238(v118);
  v63 = *&v46[v47];
  v64 = &v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_markerWidth];
  v65 = *&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_markerWidth];
  v66 = objc_opt_self();
  v67 = v63;
  v68 = [v66 boxWithWidth:v65 height:0.0 length:0.0 chamferRadius:0.0005];
  [v67 setGeometry:v68];

  v69 = v64[1];
  v70 = *&v46[v48];
  v71 = [v66 boxWithWidth:v69 height:0.0 length:0.0 chamferRadius:0.0005];
  [v70 setGeometry:v71];

  v72 = v64[2];
  v73 = *&v46[v105];
  v74 = [v66 boxWithWidth:v72 height:0.0 length:0.0 chamferRadius:0.0005];
  [v73 setGeometry:v74];

  v75 = v64[3];
  v76 = *&v46[v107];
  v77 = [v66 boxWithWidth:v75 height:0.0 length:0.0 chamferRadius:0.0005];
  [v76 setGeometry:v77];

  v78 = [*&v46[v47] geometry];
  if (v78)
  {
    v79 = v78;
    [v78 setFirstMaterial:*&v46[v115]];
  }

  v80 = [*&v46[v48] geometry];
  if (v80)
  {
    v81 = v80;
    [v80 setFirstMaterial:*&v46[v113]];
  }

  v82 = [*&v46[v105] geometry];
  if (v82)
  {
    v83 = v82;
    [v82 setFirstMaterial:*&v46[v111]];
  }

  v84 = [*&v46[v107] geometry];
  if (v84)
  {
    v85 = v84;
    [v84 setFirstMaterial:*&v46[v109]];
  }

  sub_10002A070();
  v86 = objc_opt_self();
  [v86 begin];
  if (*v49 > 0.0)
  {
    *&v87 = *v49;
    [v46 addChildNode:{*&v46[v47], v87}];
  }

  if (v49[1] > 0.0)
  {
    [v46 addChildNode:*&v46[v48]];
  }

  if (v49[2] > 0.0)
  {
    [v46 addChildNode:*&v46[v105]];
  }

  if (v49[3] > 0.0)
  {
    [v46 addChildNode:*&v46[v107]];
  }

  v88 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers;
  [v46 addChildNode:*&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers]];
  v89 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber;
  [v46 addChildNode:*&v46[OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber]];
  v90 = *&v46[v47];
  [v90 scale];
  [v90 setScale:0.0];

  v91 = *&v46[v48];
  [v91 scale];
  [v91 setScale:0.0];

  v92 = *&v46[v105];
  [v92 scale];
  [v92 setScale:0.0];

  v93 = *&v46[v107];
  [v93 scale];
  [v93 setScale:0.0];

  v94 = *&v46[v88];
  [v94 position];
  [v94 setPosition:?];

  v95 = *&v46[v89];
  [v95 position];
  [v95 setPosition:?];

  [v86 commit];
  return v46;
}

void sub_100029B28(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material);
  sub_10002D2A0(a1, v37);
  v4 = v38;
  if (v38)
  {
    v5 = sub_10000FEBC(v37, v38);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v4);
    sub_10000FF00(v37);
  }

  else
  {
    v9 = 0;
  }

  v10 = String._bridgeToObjectiveC()();
  [v3 setValue:v9 forKeyPath:v10];
  swift_unknownObjectRelease();

  v11 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material);
  sub_10002D2A0(a1, v37);
  v12 = v38;
  if (v38)
  {
    v13 = sub_10000FEBC(v37, v38);
    v36 = &v35;
    v14 = *(v12 - 8);
    __chkstk_darwin(v13);
    v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v16, v12);
    sub_10000FF00(v37);
  }

  else
  {
    v17 = 0;
  }

  v18 = String._bridgeToObjectiveC()();
  [v11 setValue:v17 forKeyPath:v18];
  swift_unknownObjectRelease();

  v19 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2Material);
  sub_10002D2A0(a1, v37);
  v20 = v38;
  if (v38)
  {
    v21 = sub_10000FEBC(v37, v38);
    v36 = v1;
    v22 = *(v20 - 8);
    __chkstk_darwin(v21);
    v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24);
    v25 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v22 + 8))(v24, v20);
    v1 = v36;
    sub_10000FF00(v37);
  }

  else
  {
    v25 = 0;
  }

  v26 = String._bridgeToObjectiveC()();
  [v19 setValue:v25 forKeyPath:v26];
  swift_unknownObjectRelease();

  v27 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3Material);
  sub_10002D2A0(a1, v37);
  v28 = v38;
  if (v38)
  {
    v29 = sub_10000FEBC(v37, v38);
    v30 = *(v28 - 8);
    __chkstk_darwin(v29);
    v32 = &v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v32);
    v33 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v30 + 8))(v32, v28);
    sub_10000FF00(v37);
  }

  else
  {
    v33 = 0;
  }

  v34 = String._bridgeToObjectiveC()();
  [v27 setValue:v33 forKeyPath:v34];
  swift_unknownObjectRelease();
}

void sub_10002A070()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material);
  if (qword_1004A0428 != -1)
  {
    swift_once();
  }

  isa = Float._bridgeToObjectiveC()().super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKeyPath:v3];

  v4 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v1 setValue:v4 forKeyPath:v5];

  v6 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v1 setValue:v6 forKeyPath:v7];

  if (qword_1004A0430 != -1)
  {
    swift_once();
  }

  v8 = Float._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v1 setValue:v8 forKeyPath:v9];

  if (qword_1004A0438 != -1)
  {
    swift_once();
  }

  v10 = Int._bridgeToObjectiveC()().super.super.isa;
  v11 = String._bridgeToObjectiveC()();
  [v1 setValue:v10 forKeyPath:v11];

  v12 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v13 = String._bridgeToObjectiveC()();
  [v1 setValue:v12 forKeyPath:v13];

  v14 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v15 = String._bridgeToObjectiveC()();
  [v1 setValue:v14 forKeyPath:v15];

  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  if ((byte_1004D4FC9 & 1) == 0)
  {
    v16 = *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material);
    v17 = Float._bridgeToObjectiveC()().super.super.isa;
    v18 = String._bridgeToObjectiveC()();
    [v16 setValue:v17 forKeyPath:v18];

    v19 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v20 = String._bridgeToObjectiveC()();
    [v16 setValue:v19 forKeyPath:v20];

    v21 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v22 = String._bridgeToObjectiveC()();
    [v16 setValue:v21 forKeyPath:v22];

    v23 = Float._bridgeToObjectiveC()().super.super.isa;
    v24 = String._bridgeToObjectiveC()();
    [v16 setValue:v23 forKeyPath:v24];

    v25 = Int._bridgeToObjectiveC()().super.super.isa;
    v26 = String._bridgeToObjectiveC()();
    [v16 setValue:v25 forKeyPath:v26];

    v27 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v28 = String._bridgeToObjectiveC()();
    [v16 setValue:v27 forKeyPath:v28];

    v29 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v30 = String._bridgeToObjectiveC()();
    [v16 setValue:v29 forKeyPath:v30];
  }
}

void sub_10002A5E4()
{
  sub_10000F974(&unk_1004A3F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1003D6240;
  v2 = *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material);
  v3 = *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2Material);
  v5 = *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3Material);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = objc_opt_self();
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  if (![v6 jasperAvailable] || (v11 = objc_opt_self(), v12 = objc_msgSend(v11, "standardUserDefaults"), v13 = objc_msgSend(v12, "isLineOcclusionEnabled"), v12, !v13))
  {

    goto LABEL_24;
  }

  v14 = *MeasureCore.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v15 = *(v14 + 112);
  if (!v15)
  {
LABEL_24:

    return;
  }

  v16 = [v11 standardUserDefaults];
  swift_getKeyPath();
  if (qword_1004A0180 != -1)
  {
LABEL_28:
    swift_once();
  }

  v17 = *(&xmmword_1004D4AE8 + 1);
  if (!*(&xmmword_1004D4AE8 + 1))
  {
    goto LABEL_31;
  }

  v18 = Contexts.PrivateQueue.init(_:)();
  v19 = swift_allocObject();
  v43 = v0;
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v1;
  v21 = v17;

  NSUserDefaults.performOnChange<A>(to:on:action:)();

  v0 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  swift_beginAccess();
  v44 = v0;
  if (!v0)
  {
LABEL_25:

    *(v43 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_isOcclusionInitialized) = 1;
    return;
  }

  v16 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_28;
      }

      v24 = *(v1 + 8 * v16 + 32);
    }

    v25 = v24;
    if (qword_1004A0638 != -1)
    {
      swift_once();
    }

    UIColor.rgba.getter();
    if (!*(v15 + 192))
    {
      break;
    }

    ADProcessor.transformer.getter();

    Transformer.clipToCameraNormalized.getter();

    simd_float3x3.copy(from:)();
    v26 = [v11 standardUserDefaults];
    [v26 isLineOcclusionEnabled];

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v28 = String._bridgeToObjectiveC()();
    [v25 setValue:isa forKeyPath:v28];

    SCNVector4.init(_:_:_:_:)();
    v29 = SCNVector4._bridgeToObjectiveC()().super.isa;
    v30 = String._bridgeToObjectiveC()();
    [v25 setValue:v29 forKeyPath:v30];

    v31 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v32 = String._bridgeToObjectiveC()();
    [v25 setValue:v31 forKeyPath:v32];

    SCNVector3.init(_:)();
    v33 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v34 = String._bridgeToObjectiveC()();
    [v25 setValue:v33 forKey:v34];

    SCNVector3.init(_:)();
    v35 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v36 = String._bridgeToObjectiveC()();
    [v25 setValue:v35 forKey:v36];

    SCNVector3.init(_:)();
    v37 = SCNVector3._bridgeToObjectiveC()().super.isa;
    v38 = String._bridgeToObjectiveC()();
    [v25 setValue:v37 forKey:v38];

    v39 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v40 = String._bridgeToObjectiveC()();
    [v25 setValue:v39 forKeyPath:v40];

    v41 = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v42 = String._bridgeToObjectiveC()();
    [v25 setValue:v41 forKeyPath:v42];

    v0 = *(v15 + 192);
    if (!v0)
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    if (*(v0 + 242) == 1)
    {
      swift_beginAccess();
      if (!v0[32])
      {
        goto LABEL_10;
      }

      swift_unknownObjectRetain_n();
    }

    else
    {

      ADProcessor.outputDepthTexture.getter();

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    v23 = [objc_opt_self() materialPropertyWithContents:v22];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v0 = String._bridgeToObjectiveC()();
    [v25 setValue:v23 forKey:v0];
    swift_unknownObjectRelease();

LABEL_10:
    ++v16;
    [v25 setBlendMode:6];
    swift_unknownObjectRelease();

    if (v44 == v16)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_10002AE88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a3 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        return;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(a3 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
        v10 = String._bridgeToObjectiveC()();
        [v8 setValue:isa forKeyPath:v10];
      }

      while (v5 != v6);
    }
  }
}

void sub_10002AFD8(char a1)
{
  v2 = v1;
  if ((*(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_isOcclusionInitialized) & 1) == 0)
  {
    sub_10002A5E4();
  }

  v4 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_isClosestLine;
  *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_isClosestLine) = a1 & 1;
  sub_10002B13C(1);
  v5 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers);
  v6 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_state;
  v7 = *(v5 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_state);
  *(v5 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_state) = *(v2 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_state);
  sub_1000757F4(v7);
  if (*(v2 + v4) == 1)
  {
    v8 = *(v2 + v6);
    v9 = v8 > 5;
    v10 = 0x25u >> v8;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*(v5 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_isOcclusionInitialized) & 1) == 0)
  {
    sub_10007707C();
  }

  v12 = *(v5 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldRenderNumbers);
  *(v5 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldRenderNumbers) = v11 & 1;
  if ((v11 & 1) != v12)
  {
    sub_1000766A8(0);
  }

  v13 = *(v2 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber);
  if (*(v2 + v4) == 1)
  {
    v14 = *(v2 + v6);
    v9 = v14 > 5;
    v15 = 0x25u >> v14;
    if (v9)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*(v13 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_isOcclusionInitialized) & 1) == 0)
  {
    sub_1001C7664();
  }

  v17 = *(v13 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers);
  *(v13 + OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldRenderNumbers) = v16 & 1;
  if ((v17 & 1) == 0 && ((v16 ^ 1) & 1) == 0)
  {
    sub_1001C803C();
  }
}

void sub_10002B13C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_isClosestLine) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_state);
    v3 = v2 > 5;
    v4 = 0x25u >> v2;
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState);
  if (v6 == 1)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_20;
  }

  if ((v5 ^ (v6 != 2)))
  {
    return;
  }

  if ((v5 & 1) == 0)
  {
LABEL_20:
    v8 = 0.0;
    if (a1)
    {
      if (qword_1004A04C8 != -1)
      {
        v13 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState;
        swift_once();
        v6 = *(v1 + v13);
      }

      v8 = *&dword_1004D5048;
    }

    v9 = *(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_state);
    v10 = (v9 - 3) < 2 || v9 == 7;
    v11 = 0.2;
    if (!v10)
    {
      v11 = 1.0;
    }

    v12 = v8 * v11;
    if (v6 == 3 || v6 == 2)
    {

      sub_10002B87C(v12);
    }

    return;
  }

  v7 = 0.0;
  if (a1)
  {
    if (qword_1004A04C0 != -1)
    {
      v14 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState;
      swift_once();
      v6 = *(v1 + v14);
    }

    v7 = *&dword_1004D5044;
  }

  if (v6 == 3 || !v6)
  {

    sub_10002B2D4(v7);
  }
}

void sub_10002B2D4(float a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers];
  v4[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldHide] = 0;
  v5 = sub_1000776C4();
  v6 = (LODWORD(v5) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
  v7 = v5 < 0.0 && ((LODWORD(v5) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
  if (v5 >= 0.0)
  {
    v6 = 0;
  }

  v8 = (LODWORD(v5) & 0x7FFFFFFF) == 0x7F800000 || v6;
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F800000)
  {
    v8 = 1;
  }

  v9 = v8 | v7;
  if (v5 > 1000.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  [v4 setHidden:v10];
  v11 = *&v1[OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber];
  v11[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide] = 0;
  [v11 setHidden:sub_1001C822C() & 1];
  if (a1 <= 0.0)
  {
    v41 = *&v2[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0];
    [v41 scale];
    LODWORD(v42) = 1.0;
    [v41 setScale:v42];
    v43 = *&v2[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1];
    [v43 scale];
    LODWORD(v44) = 1.0;
    [v43 setScale:v44];
    v45 = *&v2[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2];
    [v45 scale];
    LODWORD(v46) = 1.0;
    [v45 setScale:v46];
    v47 = *&v2[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3];
    [v47 scale];
    LODWORD(v48) = 1.0;
    [v47 setScale:v48];
    v2[OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState] = 2;
  }

  else
  {
    [v2 removeAllActions];
    v12 = *&v2[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0];
    [v12 scale];
    LODWORD(v13) = 1.0;
    [v12 setScale:v13];
    if (qword_1004A0400 != -1)
    {
      swift_once();
    }

    if ((byte_1004D4FC9 & 1) == 0)
    {
      v14 = *&v2[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1];
      [v14 scale];
      LODWORD(v15) = 1.0;
      [v14 setScale:v15];
    }

    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = a1;
    aBlock[4] = sub_10002D718;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D1C58;
    aBlock[3] = &unk_100468280;
    v18 = _Block_copy(aBlock);
    v19 = v2;

    v20 = [v16 customActionWithDuration:v18 actionBlock:a1];
    _Block_release(v18);
    sub_100076208();
    v53 = v21;
    type metadata accessor for MeasureCamera();
    simd_float4x4.position.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
    v22 = vmulq_f32(v53, xmmword_1003D68A0);
    v23 = vnegq_f32(v22);
    v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
    v51 = vextq_s8(v22, v23, 8uLL);
    v52 = vextq_s8(v24, v24, 8uLL);
    v26 = vrev64q_s32(v22);
    v26.i32[0] = v23.i32[1];
    v26.i32[3] = v23.i32[2];
    v49 = v26;
    v27 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v51, *v25.f32, 1), v52, v25.f32[0]), v26, v25, 2);
    v28 = vnegq_f32(v27);
    v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
    v30 = vrev64q_s32(v27);
    v30.i32[0] = v28.i32[1];
    v30.i32[3] = v28.i32[2];
    v50 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, v53, 3), v30, v53, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), *v53.f32, 1), vextq_s8(v29, v29, 8uLL), v53.f32[0]));
    simd_float4x4.position.getter();
    static ComputedCameraProperties.shared.getter();
    static MeasureCamera.viewSpacePoint(fromWorldSpace:view:)();
    v32 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v51, *v31.f32, 1), v52, v31.f32[0]), v49, v31, 2);
    v33 = vnegq_f32(v32);
    v34 = vtrn2q_s32(v32, vtrn1q_s32(v32, v33));
    v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v32, v33, 8uLL), *v53.f32, 1), vextq_s8(v34, v34, 8uLL), v53.f32[0]);
    v36 = vrev64q_s32(v32);
    v36.i32[0] = v33.i32[1];
    v36.i32[3] = v33.i32[2];
    if (vmovn_s32(vcgtq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v32, v53, 3), v36, v53, 2), v35), v50)).u8[0])
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    sub_100076320(v37);
    v4[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_lastNumbersOrientation] = v37;
    sub_100075A74();
    v19[OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState] = 1;
    v38 = swift_allocObject();
    *(v38 + 16) = v19;
    v54[4] = sub_10002D73C;
    v54[5] = v38;
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 1107296256;
    v54[2] = sub_100041180;
    v54[3] = &unk_1004682D0;
    v39 = _Block_copy(v54);
    v40 = v19;

    [v40 runAction:v20 completionHandler:v39];
    _Block_release(v39);
  }
}

void sub_10002B87C(float a1)
{
  if (a1 <= 0.0)
  {
    v11 = *&v1[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0];
    [v11 scale];
    [v11 setScale:0.0];
    v12 = *&v1[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1];
    [v12 scale];
    [v12 setScale:0.0];
    v13 = *&v1[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2];
    [v13 scale];
    [v13 setScale:0.0];
    v14 = *&v1[OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3];
    [v14 scale];
    [v14 setScale:0.0];
    v1[OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState] = 0;
  }

  else
  {
    [v1 removeAllActions];
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = a1;
    v19 = sub_10002D754;
    v20 = v4;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_1000D1C58;
    v18 = &unk_100468320;
    v5 = _Block_copy(&v15);
    v6 = v1;

    v7 = [v3 customActionWithDuration:v5 actionBlock:a1];
    _Block_release(v5);
    v6[OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState] = 3;
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v19 = sub_10002D798;
    v20 = v8;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100041180;
    v18 = &unk_100468370;
    v9 = _Block_copy(&v15);
    v10 = v6;

    [v10 runAction:v7 completionHandler:v9];
    _Block_release(v9);
  }
}

id sub_10002BB14(double a1, float a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = (v5 / a2) + *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTExit);
  v7 = 1.0;
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  if (v6 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  if (qword_1004A0470 != -1)
  {
    swift_once();
  }

  v9 = *&dword_1004D501C;
  v10 = v8 - *&dword_1004D501C;
  if (qword_1004A04A0 != -1)
  {
    swift_once();
  }

  v11 = v10 / (*&dword_1004D5034 - v9);
  v12 = 1.0;
  if (v11 <= 1.0)
  {
    v12 = v10 / (*&dword_1004D5034 - v9);
  }

  v13 = v11 < 0.0;
  v14 = 0.0;
  if (!v13)
  {
    v14 = v12;
  }

  v44 = v14;
  if (qword_1004A0468 != -1)
  {
    swift_once();
  }

  v15 = *&dword_1004D5018;
  v16 = v8 - *&dword_1004D5018;
  if (qword_1004A0498 != -1)
  {
    swift_once();
  }

  v17 = v16 / (*&dword_1004D5030 - v15);
  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = v16 / (*&dword_1004D5030 - v15);
  }

  v13 = v17 < 0.0;
  v19 = 0.0;
  if (!v13)
  {
    v19 = v18;
  }

  *&v43 = v19;
  if (qword_1004A0460 != -1)
  {
    swift_once();
  }

  if (qword_1004A0490 != -1)
  {
    swift_once();
  }

  if (qword_1004A0478 != -1)
  {
    swift_once();
  }

  if (qword_1004A04A8 != -1)
  {
    swift_once();
  }

  if (qword_1004A0480 != -1)
  {
    swift_once();
  }

  if (qword_1004A04B0 != -1)
  {
    swift_once();
  }

  if (qword_1004A0488 != -1)
  {
    swift_once();
  }

  if (qword_1004A04B8 != -1)
  {
    swift_once();
  }

  HIDWORD(v43) = dword_1004D5040;
  v20 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material);
  isa = Float._bridgeToObjectiveC()().super.super.isa;
  v22 = String._bridgeToObjectiveC()();
  [v20 setValue:isa forKey:v22];

  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  if (byte_1004D4FC9 == 1)
  {
    v23 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1);
    v24 = 1.0 - ((1.0 - *&v43) * (1.0 - *&v43));
    [v23 scale];
    if (v24 <= v25)
    {
      v24 = v25;
    }

    [v23 scale];
    *&v26 = v24;
    [v23 setScale:v26];
    v27 = v44;
    v28 = v44;
  }

  else
  {
    v29 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material);
    v30 = Float._bridgeToObjectiveC()().super.super.isa;
    v31 = String._bridgeToObjectiveC()();
    [v29 setValue:v30 forKey:v31];

    v28 = 1.0 - ((1.0 - *&v43) * (1.0 - *&v43));
    v27 = v44;
  }

  v32 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2);
  [v32 scale];
  if (v28 <= v33)
  {
    v28 = v33;
  }

  [v32 scale];
  *&v34 = v28;
  [v32 setScale:v34];
  v35 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3);
  [v35 scale];
  if (v27 > v36)
  {
    v37 = v27;
  }

  else
  {
    v37 = v36;
  }

  [v35 scale];
  *&v38 = v37;
  [v35 setScale:v38];
  v39 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers);
  [v39 position];
  [v39 position];
  [v39 setPosition:?];
  v40 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber);
  [v40 position];
  [v40 position];
  [v40 setPosition:?];
  v41 = *&v40[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number];
  if (qword_1004A0458 != -1)
  {
    swift_once();
  }

  * infix(_:_:)();
  result = [v41 setScale:?];
  *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTEnter) = v8;
  return result;
}

id sub_10002C21C(double a1, float a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTEnter) - (v5 / a2);
  v7 = 1.0;
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  if (v6 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  if (qword_1004A0470 != -1)
  {
    swift_once();
  }

  v9 = *&dword_1004D501C;
  v10 = v8 - *&dword_1004D501C;
  if (qword_1004A04A0 != -1)
  {
    swift_once();
  }

  v11 = v10 / (*&dword_1004D5034 - v9);
  v12 = 1.0;
  if (v11 <= 1.0)
  {
    v12 = v10 / (*&dword_1004D5034 - v9);
  }

  v13 = v11 < 0.0;
  v14 = 0.0;
  if (!v13)
  {
    v14 = v12;
  }

  v44 = v14;
  if (qword_1004A0468 != -1)
  {
    swift_once();
  }

  v15 = *&dword_1004D5018;
  v16 = v8 - *&dword_1004D5018;
  if (qword_1004A0498 != -1)
  {
    swift_once();
  }

  v17 = v16 / (*&dword_1004D5030 - v15);
  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = v16 / (*&dword_1004D5030 - v15);
  }

  v13 = v17 < 0.0;
  v19 = 0.0;
  if (!v13)
  {
    v19 = v18;
  }

  *&v43 = v19;
  if (qword_1004A0460 != -1)
  {
    swift_once();
  }

  if (qword_1004A0490 != -1)
  {
    swift_once();
  }

  if (qword_1004A0478 != -1)
  {
    swift_once();
  }

  if (qword_1004A04A8 != -1)
  {
    swift_once();
  }

  if (qword_1004A0480 != -1)
  {
    swift_once();
  }

  if (qword_1004A04B0 != -1)
  {
    swift_once();
  }

  if (qword_1004A0488 != -1)
  {
    swift_once();
  }

  if (qword_1004A04B8 != -1)
  {
    swift_once();
  }

  HIDWORD(v43) = dword_1004D5040;
  v20 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material);
  isa = Float._bridgeToObjectiveC()().super.super.isa;
  v22 = String._bridgeToObjectiveC()();
  [v20 setValue:isa forKey:v22];

  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  if (byte_1004D4FC9 == 1)
  {
    v23 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1);
    v24 = 1.0 - ((1.0 - *&v43) * (1.0 - *&v43));
    [v23 scale];
    if (v25 < v24)
    {
      v24 = v25;
    }

    [v23 scale];
    *&v26 = v24;
    [v23 setScale:v26];
    v27 = v44;
    v28 = v44;
  }

  else
  {
    v29 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material);
    v30 = Float._bridgeToObjectiveC()().super.super.isa;
    v31 = String._bridgeToObjectiveC()();
    [v29 setValue:v30 forKey:v31];

    v28 = 1.0 - ((1.0 - *&v43) * (1.0 - *&v43));
    v27 = v44;
  }

  v32 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2);
  [v32 scale];
  if (v33 < v28)
  {
    v28 = v33;
  }

  [v32 scale];
  *&v34 = v28;
  [v32 setScale:v34];
  v35 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3);
  [v35 scale];
  if (v36 >= v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = v36;
  }

  [v35 scale];
  *&v38 = v37;
  [v35 setScale:v38];
  v39 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers);
  [v39 position];
  [v39 position];
  [v39 setPosition:?];
  v40 = *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber);
  [v40 position];
  [v40 position];
  [v40 setPosition:?];
  v41 = *&v40[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_number];
  if (qword_1004A0458 != -1)
  {
    swift_once();
  }

  * infix(_:_:)();
  result = [v41 setScale:?];
  *(a4 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTExit) = v8;
  return result;
}

id sub_10002C924(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0);
  [v2 scale];
  [v2 setScale:0.0];
  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  if ((byte_1004D4FC9 & 1) == 0)
  {
    v3 = *(a1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1);
    [v3 scale];
    [v3 setScale:0.0];
  }

  *(a1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState) = 0;
  v4 = *(a1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers);
  v4[OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_shouldHide] = 1;
  *&v5 = sub_1000776C4();
  [v4 setHidden:{1, v5}];
  v6 = *(a1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_endNumber);
  v6[OBJC_IVAR____TtC7Measure22LineDivisionsEndNumber_shouldHide] = 1;

  return [v6 setHidden:1];
}

id sub_10002CA74(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  type metadata accessor for SCNVector3(0);
  v16 = v15;
  v40 = v15;
  v37 = v10;
  v38 = v12;
  v39 = v14;
  sub_100029B28(&v37);
  sub_10002D238(&v37);
  simd_float4x4.position.getter();
  SCNVector3.init(_:)();
  v40 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  sub_100029B28(&v37);
  sub_10002D238(&v37);
  v20 = (v8 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_endTransforms);
  *v20 = a1;
  v20[1] = a2;
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = a8;
  v21 = *(v8 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbers);
  v22 = (v21 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_endTransforms);
  *v22 = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v22[6] = a7;
  v22[7] = a8;
  v23 = *(v21 + OBJC_IVAR____TtC7Measure20LineDivisionsNumbers_divisionNumbersMaterial);
  SCNVector3.init(_:)();
  isa = SCNVector3._bridgeToObjectiveC()().super.isa;
  v25 = String._bridgeToObjectiveC()();
  [v23 setValue:isa forKeyPath:v25];

  SCNVector3.init(_:)();
  v26 = SCNVector3._bridgeToObjectiveC()().super.isa;
  v27 = String._bridgeToObjectiveC()();
  [v23 setValue:v26 forKeyPath:v27];

  return sub_1001C5C98(*v20, v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7]);
}

void sub_10002CC64(float a1)
{
  v3 = a1 * 10.0;
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v4 = v3;
  if (v3 >= 30)
  {
    v4 = 30;
  }

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [*(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0) geometry];
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      [v8 setLength:a1];
      [v9 setLengthSegmentCount:v5];
    }
  }

  v10 = [*(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1) geometry];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      [v12 setLength:a1];
      [v13 setLengthSegmentCount:v5];
    }
  }

  v14 = [*(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2) geometry];
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      [v16 setLength:a1];
      [v17 setLengthSegmentCount:v5];
    }
  }

  v18 = [*(v1 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3) geometry];
  if (v18)
  {
    v21 = v18;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      [v19 setLength:a1];
      [v20 setLengthSegmentCount:v5];
    }
  }
}

void sub_10002CED8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material);
  v6 = [v5 diffuse];
  [v6 setContents:a1];

  v7 = *(v2 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material);
  v8 = [v7 diffuse];
  [v8 setContents:a1];

  v9 = *(v2 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2Material);
  v10 = [v9 diffuse];
  [v10 setContents:a1];

  v11 = *(v2 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3Material);
  v12 = [v11 diffuse];
  [v12 setContents:a1];

  v13 = [v5 emission];
  [v13 setContents:a2];

  v14 = [v7 emission];
  [v14 setContents:a2];

  v15 = [v9 emission];
  [v15 setContents:a2];

  v16 = [v11 emission];
  [v16 setContents:a2];
}

unint64_t sub_10002D1E4()
{
  result = qword_1004A21B0;
  if (!qword_1004A21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A21B0);
  }

  return result;
}

uint64_t sub_10002D238(uint64_t a1)
{
  v2 = sub_10000F974(&unk_1004A6970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&unk_1004A6970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002D310()
{
  result = qword_1004AF720;
  if (!qword_1004AF720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AF720);
  }

  return result;
}

unint64_t sub_10002D35C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_10002D36C()
{
  v1 = sub_10018C1EC(7);
  [v1 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002D310();
  if (swift_dynamicCast())
  {
    v2 = v14;
  }

  else
  {
    v2 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0Material) = v2;
  v3 = sub_10018C1EC(7);
  [v3 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v4 = v14;
  }

  else
  {
    v4 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1Material) = v4;
  v5 = sub_10018C1EC(7);
  [v5 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v6 = v14;
  }

  else
  {
    v6 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2Material) = v6;
  v7 = sub_10018C1EC(7);
  [v7 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v8 = v14;
  }

  else
  {
    v8 = [objc_allocWithZone(SCNMaterial) init];
  }

  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3Material) = v8;
  v9 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD0;
  *(v0 + v9) = [objc_allocWithZone(SCNNode) init];
  v10 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD1;
  *(v0 + v10) = [objc_allocWithZone(SCNNode) init];
  v11 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD2;
  *(v0 + v11) = [objc_allocWithZone(SCNNode) init];
  v12 = OBJC_IVAR____TtC7Measure19LineDivisionsRender_divisionsLOD3;
  *(v0 + v12) = [objc_allocWithZone(SCNNode) init];
  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_isOnVerticalGuide) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_showState) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_state) = static MeasureObjectState.default;
  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTEnter) = 0;
  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_lastNormTExit) = 0;
  if (qword_1004A0400 != -1)
  {
    swift_once();
  }

  v13 = -0.07;
  if (byte_1004D4FC9)
  {
    v13 = -0.023;
  }

  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_numbersRevealOffset) = v13;
  *(v0 + OBJC_IVAR____TtC7Measure19LineDivisionsRender_isOcclusionInitialized) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10002D6E0()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10002D724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002D760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D7B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D7EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D864()
{
  result = Contexts.UIKit.init()();
  qword_1004D4A28 = result;
  return result;
}

id sub_10002D884@<X0>(void *a1@<X8>)
{
  if (qword_1004A00C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A28;
  *a1 = qword_1004D4A28;

  return v2;
}

unint64_t sub_10002D8F4(uint64_t a1)
{
  result = sub_10002D91C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002D91C()
{
  result = qword_1004A21E0;
  if (!qword_1004A21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A21E0);
  }

  return result;
}

void sub_10002D99C(uint64_t a1)
{
  v2 = *&v1[qword_1004A22C0];
  if (!v1[qword_1004A22C0 + 16])
  {
    if ((v2 & 1) == 0)
    {
      sub_10002DD7C(a1);
      return;
    }

LABEL_6:
    sub_10002D9D4(v1);
    return;
  }

  if (v1[qword_1004A22C0 + 16] == 1 && (v2 & 1) != 0)
  {
    goto LABEL_6;
  }
}

uint64_t sub_10002D9D4(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_allocWithZone(UIViewPropertyAnimator);
  v20 = sub_1000316A8;
  v21 = v2;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100041180;
  v19 = &unk_100468570;
  v4 = _Block_copy(&v16);
  v5 = a1;

  v6 = [v3 initWithDuration:v4 dampingRatio:0.4 animations:0.9];
  _Block_release(v4);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v20 = sub_1000316B0;
  v21 = v7;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10002E9EC;
  v19 = &unk_1004685C0;
  v8 = _Block_copy(&v16);
  v9 = v5;
  v10 = v6;

  [v10 addCompletion:v8];
  _Block_release(v8);
  [v10 startAnimation];

  v11 = &v9[qword_1004A22C0];
  v12 = *&v9[qword_1004A22C0];
  v13 = *&v9[qword_1004A22C0 + 8];
  *v11 = v6;
  *(v11 + 1) = 0;
  v14 = v11[16];
  v11[16] = 2;
  return sub_1000316B8(v12, v13, v14);
}

id sub_10002DBCC(void *a1)
{
  [a1 setAlpha:0.0];
  [a1 transform];
  tx = t1.tx;
  ty = t1.ty;
  v4 = atan2(t1.b, t1.a);
  CGAffineTransformMakeScale(&t1, 0.9, 0.9);
  v5 = t1.tx;
  v6 = t1.ty;
  v16 = *&t1.c;
  v18 = *&t1.a;
  CGAffineTransformMakeRotation(&t1, v4);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v18;
  *&t1.c = v16;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v20, &t1, &t2);
  v10 = v20.tx;
  v11 = v20.ty;
  v17 = *&v20.c;
  v19 = *&v20.a;
  CGAffineTransformMakeTranslation(&t1, tx, ty);
  v12 = *&t1.a;
  v13 = *&t1.c;
  v14 = *&t1.tx;
  *&t1.a = v19;
  *&t1.c = v17;
  t1.tx = v10;
  t1.ty = v11;
  *&t2.a = v12;
  *&t2.c = v13;
  *&t2.tx = v14;
  CGAffineTransformConcat(&v20, &t1, &t2);
  t1 = v20;
  return [a1 setTransform:&t1];
}

uint64_t sub_10002DD04(uint64_t a1, uint64_t a2)
{

  StateValue.wrappedValue.getter();

  sub_10002DD7C(v8);
  v3 = a2 + qword_1004A22C0;
  v4 = *(a2 + qword_1004A22C0);
  v5 = *(a2 + qword_1004A22C0 + 8);
  *v3 = 0;
  *(v3 + 8) = 0;
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  return sub_1000316B8(v4, v5, v6);
}

void sub_10002DD7C(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1004A2288;
  v2[qword_1004A2288] = 0;
  v5 = [v2 superview];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v31 = CGFloat.piDiv2.unsafeMutableAddressor();
      CGAffineTransformMakeRotation(&v60, *v31);
      v32 = *&v60.c;
      v33 = *&v60.tx;
      v34 = &v2[qword_1004A2298];
      *v34 = *&v60.a;
      v34[1] = v32;
      v34[2] = v33;
      if (v2[qword_1004A2268] != 1)
      {
        if (qword_1004A07F0 != -1)
        {
          swift_once();
        }

        *&v2[qword_1004A2260] = qword_1004D5368;
        [v6 frame];
        if (qword_1004A07A0 != -1)
        {
          v58 = v41;
          swift_once();
          v41 = v58;
        }

        v42 = v41 - *&qword_1004D5318;
        [v6 center];
        v43 = &v2[qword_1004A2278];
        *v43 = v42;
        *(v43 + 1) = v44;
        v43[16] = 0;
        if (qword_1004A07E8 != -1)
        {
          swift_once();
        }

        v30 = qword_1004D5360;
        goto LABEL_75;
      }

      [v6 center];
      [v6 frame];
      if (qword_1004A0510 != -1)
      {
        swift_once();
      }

      if (qword_1004A07C0 != -1)
      {
        swift_once();
      }

      v35 = qword_1004D5338;
      *&v2[qword_1004A2280] = qword_1004D5338;
      *&v2[qword_1004A2260] = vsub_f32(0, v35);
      if (qword_1004A07D0 != -1)
      {
        swift_once();
      }

      CGPoint.init(_:)();
      static CGPoint.- infix(_:_:)();
      v36 = &v2[qword_1004A2270];
      *v36 = v37;
      *(v36 + 1) = v38;
      v36[16] = 0;
      v2[v4] = 1;
      goto LABEL_65;
    }

    if (a1 == 4)
    {
      v13 = CGFloat.piDiv2.unsafeMutableAddressor();
      CGAffineTransformMakeRotation(&v60, -*v13);
      v14 = *&v60.c;
      v15 = *&v60.tx;
      v16 = &v2[qword_1004A2298];
      *v16 = *&v60.a;
      v16[1] = v14;
      v16[2] = v15;
      if (v2[qword_1004A2268] == 1)
      {
        if (qword_1004A07C8 != -1)
        {
          swift_once();
        }

        v17 = qword_1004A2280;
        *&v2[qword_1004A2280] = qword_1004D5340;
        sub_100018630(0, &qword_1004A1930);
        v18 = static UIDevice.isIPad()();
        v19 = *&v2[v17];
        if ((v18 & 1) == 0)
        {
          *&v2[qword_1004A2260] = v19;
          [v6 center];
          [v6 frame];
          if (qword_1004A0510 != -1)
          {
            swift_once();
          }

          if (qword_1004A07D8 != -1)
          {
            swift_once();
          }

          v26 = &qword_1004D5350;
          goto LABEL_86;
        }

        *&v2[qword_1004A2260] = vsub_f32(0, v19);
        [v6 center];
        if (qword_1004A0510 != -1)
        {
          swift_once();
        }

        v2[v4] = 1;
        goto LABEL_78;
      }

      if (qword_1004A07E8 != -1)
      {
        swift_once();
      }

      *&v2[qword_1004A2260] = qword_1004D5360;
      if (qword_1004A07A0 != -1)
      {
        swift_once();
      }

      v50 = qword_1004D5318;
      [v6 center];
      v51 = &v2[qword_1004A2278];
      *v51 = v50;
      *(v51 + 1) = v52;
      v51[16] = 0;
      if (qword_1004A07F0 != -1)
      {
        swift_once();
      }

      v30 = qword_1004D5368;
LABEL_75:
      *&v2[qword_1004A2290] = v30;
      goto LABEL_90;
    }
  }

  else
  {
    if (a1 < 2)
    {
      CGAffineTransformMakeRotation(&v60, 0.0);
      v7 = *&v60.c;
      v8 = *&v60.tx;
      v9 = &v2[qword_1004A2298];
      *v9 = *&v60.a;
      v9[1] = v7;
      v9[2] = v8;
      if (v2[qword_1004A2268] == 1)
      {
        if (qword_1004A07B0 != -1)
        {
          swift_once();
        }

        v10 = qword_1004A2280;
        *&v2[qword_1004A2280] = qword_1004D5328;
        sub_100018630(0, &qword_1004A1930);
        v11 = static UIDevice.isIPad()();
        v12 = *&v2[v10];
        if (v11)
        {
          *&v2[qword_1004A2260] = vsub_f32(0, v12);
          [v6 frame];
          if (qword_1004A0510 != -1)
          {
            swift_once();
          }

          [v6 center];
          v2[v4] = 1;
        }

        else
        {
          *&v2[qword_1004A2260] = v12;
          [v6 center];
          [v6 frame];
          if (qword_1004A0510 != -1)
          {
            swift_once();
          }
        }

        if (qword_1004A07E8 != -1)
        {
          swift_once();
        }

        v40 = qword_1004D5360;
        goto LABEL_87;
      }

      if (qword_1004A07D8 != -1)
      {
        swift_once();
      }

      *&v2[qword_1004A2260] = qword_1004D5350;
      [v6 center];
      if (qword_1004A07A8 != -1)
      {
        v57 = v27;
        swift_once();
        v27 = v57;
      }

      v28 = qword_1004D5320;
      v29 = &v2[qword_1004A2278];
      *v29 = v27;
      *(v29 + 1) = v28;
      v29[16] = 0;
      if (qword_1004A07E0 != -1)
      {
        swift_once();
      }

      v30 = qword_1004D5358;
      goto LABEL_75;
    }

    if (a1 == 2)
    {
      sub_100018630(0, &qword_1004A1930);
      if (static UIDevice.isIPad()())
      {
        CGAffineTransformMakeRotation(&v60, 3.14159265);
        v20 = *&v60.c;
        v21 = *&v60.tx;
        v22 = &v2[qword_1004A2298];
        *v22 = *&v60.a;
        v22[1] = v20;
        v22[2] = v21;
      }

      if (v2[qword_1004A2268] == 1)
      {
        if (qword_1004A07B8 != -1)
        {
          swift_once();
        }

        v23 = qword_1004A2280;
        *&v2[qword_1004A2280] = qword_1004D5330;
        v24 = static UIDevice.isIPad()();
        v25 = *&v2[v23];
        if (v24)
        {
          *&v2[qword_1004A2260] = vsub_f32(0, v25);
          if (qword_1004A0510 != -1)
          {
            swift_once();
          }

          [v6 center];
          v2[v4] = 1;
          if (qword_1004A07F0 != -1)
          {
            swift_once();
          }

          v26 = &qword_1004D5368;
LABEL_86:
          v40 = *v26;
LABEL_87:
          *&v2[qword_1004A2290] = v40;
          if (qword_1004A07D0 != -1)
          {
            swift_once();
          }

          CGPoint.init(_:)();
          static CGPoint.- infix(_:_:)();
          v53 = &v2[qword_1004A2270];
          *v53 = v54;
          *(v53 + 1) = v55;
          v53[16] = 0;
          goto LABEL_90;
        }

        *&v2[qword_1004A2260] = v25;
        [v6 center];
        if (qword_1004A0510 != -1)
        {
          swift_once();
        }

LABEL_78:
        if (qword_1004A07E0 != -1)
        {
          swift_once();
        }

        v26 = &qword_1004D5358;
        goto LABEL_86;
      }

      if (qword_1004A07E0 != -1)
      {
        swift_once();
      }

      *&v2[qword_1004A2260] = qword_1004D5358;
      [v6 center];
      v46 = v45;
      [v6 frame];
      if (qword_1004A07A8 != -1)
      {
        v59 = v47;
        swift_once();
        v47 = v59;
      }

      v48 = v47 - *&qword_1004D5320;
      v49 = &v2[qword_1004A2278];
      *v49 = v46;
      v49[1] = v48;
      *(v49 + 16) = 0;
LABEL_65:
      if (qword_1004A07D8 != -1)
      {
        swift_once();
      }

      v30 = qword_1004D5350;
      goto LABEL_75;
    }
  }

  v39 = &v2[qword_1004A2298];
  *v39 = 0x3FF0000000000000;
  v39[1] = 0;
  v39[2] = 0;
  v39[3] = 0x3FF0000000000000;
  v39[4] = 0;
  v39[5] = 0;
LABEL_90:
  if ((v2[qword_1004A2270 + 16] & 1) == 0)
  {
    [*&v2[qword_1004A2200] setCenter:{*&v2[qword_1004A2270], *&v2[qword_1004A2270 + 8]}];
  }

  v56 = *&v2[qword_1004A2298 + 16];
  *&v60.a = *&v2[qword_1004A2298];
  *&v60.c = v56;
  *&v60.tx = *&v2[qword_1004A2298 + 32];
  [v2 setTransform:&v60];
}

uint64_t sub_10002E9EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10002EA40(char *a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v142) = a3;
  LODWORD(v138) = a2;
  v143 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v5 - 8);
  *&v6 = COERCE_DOUBLE(type metadata accessor for _Glass());
  v139 = *(v6 - 8);
  v140 = *&v6;
  __chkstk_darwin(v6);
  v8 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[qword_1004A21E8] = 0;
  *&v3[qword_1004A21F0] = 0;
  *&v3[qword_1004A21F8] = 0;
  *&v3[qword_1004A2200] = 0;
  *&v3[qword_1004A2208] = 0;
  *&v3[qword_1004A2210] = 0;
  *&v3[qword_1004A2218] = 0;
  *&v3[qword_1004A2220] = 0;
  *&v3[qword_1004A2228] = 0;
  v9 = &v3[qword_1004A2238];
  *v9 = 0;
  v9[8] = 1;
  v10 = qword_1004A2248;
  *&v3[qword_1004A2248] = 0;
  *&v3[qword_1004A2250] = 0x4032000000000000;
  v11 = qword_1004A2258;
  *&v4[v11] = [objc_allocWithZone(UIBezierPath) init];
  *&v4[qword_1004A2260] = 0;
  v12 = &v4[qword_1004A2270];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v4[qword_1004A2278];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v4[qword_1004A2280] = 0;
  v4[qword_1004A2288] = 0;
  *&v4[qword_1004A2290] = 0;
  v14 = &v4[qword_1004A2298];
  *v14 = 0x3FF0000000000000;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 0x3FF0000000000000;
  v14[4] = 0;
  v14[5] = 0;
  v4[qword_1004A22A0] = 0;
  *&v4[qword_1004A22A8] = 0;
  v15 = qword_1004A22B0;
  KeyPath = swift_getKeyPath();
  v17 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v18 = qword_1004D5058;
  v19 = *(v17 + 272);
  swift_retain_n();
  *&v4[v15] = v19(KeyPath, v18);
  v20 = qword_1004A22B8;
  v21 = swift_getKeyPath();
  v22 = sub_10000F974(&unk_1004A2520);
  *&v4[v20] = (*(v22 + 272))(v21, v18);
  v23 = &v4[qword_1004A22C0];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = qword_1004A2230;
  *&v4[qword_1004A2230] = v24;
  [v24 setTextAlignment:1];
  v26 = qword_1004A0780;
  v27 = *&v4[v25];
  if (v26 != -1)
  {
    swift_once();
  }

  [v27 setTextColor:qword_1004D5308];

  v28 = *&v4[v25];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v32 = [v31 fontDescriptor];

  v33 = [v32 fontDescriptorWithSymbolicTraits:2];
  if (!v33)
  {
    __break(1u);
    goto LABEL_51;
  }

  v34 = [v29 fontWithDescriptor:v33 size:0.0];

  [v30 setFont:v34];
  v35 = *&v4[v25];
  v36 = String._bridgeToObjectiveC()();
  [v35 setText:v36];

  [*&v4[v25] setAdjustsFontSizeToFitWidth:1];
  [*&v4[v25] setBaselineAdjustment:1];
  [*&v4[v25] sizeToFit];
  v37 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = *&v4[v10];
  *&v4[v10] = v37;

  v39 = *&v4[v10];
  v40 = v142;
  if (v39)
  {
    v41 = v39;
    static _Glass._GlassVariant.regular.getter();
    _Glass.init(_:smoothness:)();
    v42 = v140;
    aBlock.d = v140;
    *&aBlock.tx = &protocol witness table for _Glass;
    sub_1000315D4(&aBlock);
    _Glass.flexible(_:)();
    (*(v139 + 1))(v8, COERCE_CGFLOAT(*&v42));
    UIView._background.setter();
  }

  v43 = [objc_allocWithZone(UIView) init];
  *&v4[qword_1004A2240] = v43;
  [v43 setClipsToBounds:1];
  v4[qword_1004A2268] = v40 & 1;
  v44 = v143;
  [v143 frame];
  v145.receiver = v4;
  v145.super_class = ObjectType;
  v45 = objc_msgSendSuper2(&v145, "initWithFrame:");
  [v44 frame];
  [v45 frame];
  [v45 setFrame:?];
  [v44 addSubview:v45];
  [v45 setAlpha:0.0];
  [v45 setUserInteractionEnabled:0];
  v46 = qword_1004A2240;
  [v45 addSubview:*&v45[qword_1004A2240]];
  v47 = *&v45[qword_1004A2248];
  if (!v47)
  {
    v49 = v44;
    v44 = v45;
    goto LABEL_47;
  }

  v48 = *(v46 + v45);
  v49 = v47;
  [v48 addSubview:v49];
  [*(v46 + v45) addSubview:*&v45[qword_1004A2230]];
  v50 = 18.0;
  if (v40)
  {
    v50 = 20.0;
  }

  *&v45[qword_1004A2250] = v50;
  v51 = objc_opt_self();
  v52 = swift_allocObject();
  *(v52 + 16) = v45;
  v53 = swift_allocObject();
  v53[2] = sub_100031670;
  v53[3] = v52;
  v142 = v52;
  *&aBlock.tx = sub_100031688;
  *&aBlock.ty = v53;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000DC708;
  *&aBlock.d = &unk_100468520;
  v54 = _Block_copy(&aBlock);
  ty = aBlock.ty;
  v56 = v45;

  [v51 performWithoutAnimation:v54];
  _Block_release(v54);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    [v56 updateText:0];
    CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
    [v56 setTransform:&aBlock];

    if ((v138 & 1) == 0)
    {
LABEL_45:
      sub_1000DB85C();

LABEL_47:

      return;
    }

    v139 = v49;
    v58 = [objc_allocWithZone(UIView) init];
    v59 = qword_1004A21E8;
    v60 = *&v56[qword_1004A21E8];
    *&v56[qword_1004A21E8] = v58;

    v61 = [objc_allocWithZone(UIView) init];
    v62 = qword_1004A21F0;
    v63 = *&v56[qword_1004A21F0];
    *&v56[qword_1004A21F0] = v61;

    v64 = [objc_allocWithZone(UIView) init];
    v65 = qword_1004A21F8;
    v66 = *&v56[qword_1004A21F8];
    *&v56[qword_1004A21F8] = v64;

    v67 = [objc_allocWithZone(UIView) init];
    v68 = qword_1004A2200;
    v69 = *&v56[qword_1004A2200];
    *&v56[qword_1004A2200] = v67;

    v70 = [objc_allocWithZone(UIView) init];
    v71 = qword_1004A2208;
    v72 = *&v56[qword_1004A2208];
    *&v56[qword_1004A2208] = v70;

    v73 = [objc_allocWithZone(UIView) init];
    v74 = *&v56[qword_1004A2210];
    v140 = *&qword_1004A2210;
    *&v56[qword_1004A2210] = v73;

    v75 = [objc_allocWithZone(UIView) init];
    v76 = *&v56[qword_1004A2218];
    ObjectType = qword_1004A2218;
    *&v56[qword_1004A2218] = v75;

    v77 = [objc_allocWithZone(UIView) init];
    v78 = *&v56[qword_1004A2220];
    v138 = qword_1004A2220;
    *&v56[qword_1004A2220] = v77;

    v79 = [objc_allocWithZone(UIView) init];
    v80 = *&v56[qword_1004A2228];
    v137 = qword_1004A2228;
    *&v56[qword_1004A2228] = v79;

    if (*&v56[v62])
    {
      [*(v46 + v45) addSubview:?];
      v81 = *&v56[v62];
      if (v81)
      {
        v46 = &off_100494000;
        if (*&v56[v59])
        {
          [v81 addSubview:?];
          v82 = *&v56[v62];
          if (v82)
          {
            if (*&v56[v65])
            {
              [v82 addSubview:?];
              if (*&v56[v68])
              {
                [v143 addSubview:?];
                v83 = *&v56[v68];
                if (v83)
                {
                  CGSize.init(_:_:)();
                  v84 = v83;
                  [v84 frame];
                  [v84 setFrame:?];

                  v85 = *&v56[v68];
                  if (v85)
                  {
                    isEscapingClosureAtFileLocation = objc_opt_self();
                    v86 = v85;
                    v87 = [isEscapingClosureAtFileLocation purpleColor];
                    [v86 setBackgroundColor:v87];

                    v88 = *&v56[v68];
                    if (v88)
                    {
                      ty = COERCE_DOUBLE(&selRef_runAction_completion_);
                      [v88 setCenter:{0.0, 0.0}];
                      if (*&v56[v71])
                      {
                        [v143 addSubview:?];
                        v89 = *&v56[v71];
                        if (v89)
                        {
                          v90 = v89;
                          [v90 frame];
                          [v90 setFrame:?];

                          v91 = *&v56[v71];
                          if (v91)
                          {
                            v92 = v91;
                            v93 = [isEscapingClosureAtFileLocation purpleColor];
                            [v92 setBackgroundColor:v93];

                            v94 = *&v56[v71];
                            if (v94)
                            {
                              [v94 setCenter:{0.0, 0.0}];
                              v95 = v140;
                              v44 = v143;
                              if (*&v56[*&v140])
                              {
                                [v143 addSubview:?];
                                v96 = *&v56[*&v95];
                                if (v96)
                                {
                                  v97 = v96;
                                  [v44 frame];
                                  CGSize.init(_:_:)();
                                  [v97 frame];
                                  [v97 setFrame:?];

                                  v98 = *&v56[*&v95];
                                  if (v98)
                                  {
                                    v99 = v98;
                                    v100 = [isEscapingClosureAtFileLocation purpleColor];
                                    [v99 setBackgroundColor:v100];

                                    v101 = *&v56[*&v95];
                                    if (v101)
                                    {
                                      v102 = qword_1004A0520;
                                      v51 = v101;
                                      v53 = &selRef_runAction_completion_;
                                      if (v102 == -1)
                                      {
                                        goto LABEL_31;
                                      }

                                      goto LABEL_49;
                                    }

LABEL_67:
                                    __break(1u);
                                    goto LABEL_68;
                                  }

LABEL_66:
                                  __break(1u);
                                  goto LABEL_67;
                                }

LABEL_65:
                                __break(1u);
                                goto LABEL_66;
                              }

LABEL_64:
                              __break(1u);
                              goto LABEL_65;
                            }

LABEL_63:
                            __break(1u);
                            goto LABEL_64;
                          }

LABEL_62:
                          __break(1u);
                          goto LABEL_63;
                        }

LABEL_61:
                        __break(1u);
                        goto LABEL_62;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_31:
  v103 = *&qword_1004D5090;
  [v44 center];
  [v51 *(*&ty + 4032)];

  v104 = ObjectType;
  v49 = v139;
  if (!*(ObjectType + v56))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  [v44 v53[408]];
  v105 = *(v104 + v56);
  if (!v105)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v106 = v105;
  [v44 v46[100]];
  CGSize.init(_:_:)();
  [v106 v46[100]];
  [v106 setFrame:?];

  v107 = *(v104 + v56);
  if (!v107)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v108 = v107;
  v109 = [isEscapingClosureAtFileLocation purpleColor];
  [v108 setBackgroundColor:v109];

  v110 = *(v104 + v56);
  if (!v110)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v111 = v103 + 47.0;
  v112 = v110;
  [v44 center];
  [v112 setCenter:v103 + 47.0];

  v113 = v138;
  if (!*&v56[v138])
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v44 addSubview:?];
  v114 = *&v56[v113];
  if (!v114)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v115 = v114;
  [v44 v46[100]];
  CGSize.init(_:_:)();
  [v115 v46[100]];
  [v115 setFrame:?];

  v116 = *&v56[v113];
  if (!v116)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v117 = v113;
  v118 = v116;
  v119 = [isEscapingClosureAtFileLocation purpleColor];
  [v118 setBackgroundColor:v119];

  v120 = *&v56[v117];
  if (!v120)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v121 = v120;
  [v44 v46[100]];
  v123 = v122 - v103;
  [v44 center];
  [v121 setCenter:v123];

  v124 = v137;
  if (!*(ObjectType + v56))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v44 addSubview:?];
  if (!*&v56[v124])
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v44 addSubview:?];
  v125 = *&v56[v124];
  if (!v125)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v126 = v125;
  [v44 v46[100]];
  CGSize.init(_:_:)();
  [v126 v46[100]];
  [v126 setFrame:?];

  v127 = *&v56[v124];
  if (!v127)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v128 = v124;
  v129 = v127;
  v130 = [isEscapingClosureAtFileLocation purpleColor];
  [v129 setBackgroundColor:v130];

  v131 = *&v56[v128];
  if (v131)
  {
    v132 = v131;
    [v44 v46[100]];
    v134 = v133 - v111;
    [v44 center];
    [v132 setCenter:v134];

    v135 = [isEscapingClosureAtFileLocation redColor];
    [v56 setBackgroundColor:v135];

    goto LABEL_45;
  }

LABEL_80:
  __break(1u);
}

void sub_10002FB78(_BYTE *a1)
{

  StateValue.wrappedValue.getter();

  v2 = *&a1[qword_1004A22C0];
  if (!a1[qword_1004A22C0 + 16])
  {
    if ((v2 & 1) == 0)
    {
      sub_10002DD7C(v3);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a1[qword_1004A22C0 + 16] == 1 && (v2 & 1) != 0)
  {
LABEL_6:
    sub_10002D9D4(a1);
  }

LABEL_8:

  StateValue.wrappedValue.getter();

  sub_10002DD7C(v3);
}

uint64_t sub_10002FC38(uint64_t result)
{
  if (*(v1 + qword_1004A4708) == 1)
  {
    __chkstk_darwin(result);

    StateValue.ifUpdated(_:)();
  }

  return result;
}

uint64_t sub_10002FCDC(char a1, uint64_t a2, int a3)
{
  v19 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100018630(0, &qword_1004A3F00);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  *(v14 + 40) = v19 & 1;
  aBlock[4] = sub_1000317D8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100468610;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80);
  sub_100031864();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_10002FF90(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  if ((a1 & 1) == 0 || (v7 = *(**&v3[qword_1004A22B0] + 144), v8 = , v7(&v16, v8), , (v16 & 0x1000000) != 0) || (v9 = *(**&v3[qword_1004A22B8] + 144), v10 = , v9(&v15, v10), , v11 = v15, sub_10001B360(v15), v11 == 0x8000000000000018))
  {
    v12 = 0;
    if ((a3 & 1) == 0)
    {
LABEL_5:
      [v4 updateText:a2];
    }
  }

  else
  {
    v14 = *&v4[qword_1004A22A8];
    if (v14)
    {
      [v14 invalidate];
    }

    v12 = 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return sub_1000300D0(v12);
}

uint64_t sub_1000300D0(char a1)
{
  v3 = &v1[qword_1004A22C0];
  v4 = *&v1[qword_1004A22C0];
  v5 = *&v1[qword_1004A22C0 + 8];
  v6 = v1[qword_1004A22C0 + 16];
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  if (v6)
  {
    if (v6 != 1)
    {
      v10 = v4;
      goto LABEL_12;
    }

    sub_100031904(v4, v5, 1);
    v8 = v5;
  }

  if (v4)
  {
    if ((a1 & 1) == 0)
    {
      v9 = 0;
LABEL_9:
      sub_1000301F0(v9, v1, v7);
    }
  }

  else if (a1)
  {
    v9 = 1;
    goto LABEL_9;
  }

  sub_1000316B8(v4, v5, v6);
LABEL_12:
  swift_beginAccess();
  v11 = *(v7 + 16);
  v12 = *(v7 + 24);
  v13 = *v3;
  v14 = *(v3 + 1);
  *v3 = v11;
  *(v3 + 1) = v12;
  v15 = *(v7 + 32);
  v16 = v3[16];
  v3[16] = v15;
  sub_100031904(v11, v12, v15);
  sub_1000316B8(v13, v14, v16);
}

void sub_1000301F0(char a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v17 = a1 & 1;
  *(v6 + 24) = a1;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v22 = sub_10003195C;
  v23 = v6;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100041180;
  v21 = &unk_100468688;
  v8 = _Block_copy(&aBlock);
  a2;

  v9 = [v7 initWithDuration:v8 dampingRatio:0.4 animations:0.9];
  _Block_release(v8);
  swift_beginAccess();
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  *(a3 + 16) = a1 & 1;
  *(a3 + 24) = v9;
  v12 = *(a3 + 32);
  *(a3 + 32) = 1;
  v13 = v9;
  sub_1000316B8(v10, v11, v12);
  if (a1)
  {

    StateValue.wrappedValue.getter();

    sub_10002DD7C(aBlock);
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a3;
  *(v15 + 32) = v17;
  v22 = sub_1000319F8;
  v23 = v15;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10002E9EC;
  v21 = &unk_100468700;
  v16 = _Block_copy(&aBlock);

  [v13 addCompletion:v16];
  _Block_release(v16);
  [v13 startAnimation];
}

void sub_10003047C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Strong + qword_1004A22C0;
    v9 = *(Strong + qword_1004A22C0);
    v10 = *(Strong + qword_1004A22C0 + 8);
    v11 = *(Strong + qword_1004A22C0 + 16);
    swift_beginAccess();
    v12 = *(a3 + 16);
    v13 = *(a3 + 24);
    v14 = *(a3 + 32);
    sub_100031904(v9, v10, v11);
    sub_100031904(v12, v13, v14);
    v15 = sub_1000316D8(v9, v10, v11, v12, v13, v14);
    sub_1000316B8(v12, v13, v14);
    sub_1000316B8(v9, v10, v11);
    if (v15)
    {
      v16 = *v8;
      v17 = *(v8 + 8);
      *v8 = a4 & 1;
      *(v8 + 8) = 0;
      v18 = *(v8 + 16);
      *(v8 + 16) = 0;
      sub_1000316B8(v16, v17, v18);
      if (a4)
      {
        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = v7;
        v24[4] = sub_100031A04;
        v24[5] = v20;
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 1107296256;
        v24[2] = sub_1000508F8;
        v24[3] = &unk_100468750;
        v21 = _Block_copy(v24);
        v22 = v7;

        v23 = [v19 scheduledTimerWithTimeInterval:0 repeats:v21 block:1.0];
        _Block_release(v21);
        v7 = *&v22[qword_1004A22A8];
        *&v22[qword_1004A22A8] = v23;
      }
    }
  }
}

void sub_100030688(uint64_t a1)
{
  v2 = v1[qword_1004A2268];
  if (v1[qword_1004A2268])
  {
    v3 = 12.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = &v1[qword_1004A2238];
  *v4 = a1;
  v4[8] = 0;
  v5 = *&v1[qword_1004A2230];
  sub_100074C1C(a1);
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  [v5 sizeToFit];
  v7 = [v1 superview];
  if (!v7)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;

  v11 = qword_1004A2250;
  v12 = v10 + *&v1[qword_1004A2250] * -4.0;
  [v5 frame];
  if (v12 < v13)
  {
    [v5 frame];
    [v5 setFrame:?];
  }

  [v5 frame];
  v15 = v14;
  v16 = *&v1[v11];
  v17 = [v5 font];
  if (!v17)
  {
    goto LABEL_51;
  }

  v18 = v17;
  v19 = v15 + v16 + v16;
  [v17 capHeight];
  v21 = v20;

  v22 = fmax(v21 + 36.0, 47.0);
  [v1 bounds];
  [v1 setBounds:?];
  v76 = qword_1004A2288;
  if (v1[qword_1004A2288])
  {
    v23 = v3;
  }

  else
  {
    v23 = 0.0;
  }

  if (v2)
  {
    if (v1[qword_1004A2270 + 16])
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    CGPoint.init(_:)();
    static CGPoint.- infix(_:_:)();
    [v1 setCenter:?];
    v24 = qword_1004A2290;
    CGPoint.init(_:)();
    CGPoint.multiply(by:)();
    [v1 center];
    CGPoint.add(_:)();
    v25 = *&v1[v24];
    if (qword_1004A07E0 != -1)
    {
      swift_once();
    }

    v26 = vceq_f32(v25, qword_1004D5358);
    if ((v26.i32[0] & v26.i32[1] & 1) == 0)
    {
      v27 = *&v1[v24];
      if (qword_1004A07F0 != -1)
      {
        swift_once();
      }

      v28 = vceq_f32(v27, qword_1004D5368);
      if ((v28.i32[0] & v28.i32[1] & 1) == 0)
      {
        v29 = [v1 superview];
        if (!v29)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v30 = v29;
        [v29 frame];

        v31 = [v1 superview];
        if (!v31)
        {
LABEL_63:
          __break(1u);
          return;
        }

        v32 = v31;
        [v31 frame];
      }
    }

    [v1 center];
    static CGPoint.- infix(_:_:)();
    [v1 setCenter:?];
    v33 = *&v1[qword_1004A2208];
    if (v33)
    {
      v34 = v33;
      [v1 center];
      [v34 setCenter:?];
    }
  }

  else
  {
    if (v1[qword_1004A2278 + 16])
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    CGPoint.init(_:)();
    static CGPoint.+ infix(_:_:)();
    [v1 setCenter:?];
  }

  [v1 bounds];
  v36 = v35 * 0.5;
  [v5 center];
  [v5 setCenter:v36];
  [v1 bounds];
  [v5 center];
  [v5 setCenter:?];
  [v5 center];
  CGPoint.add(_:)();
  [v5 setCenter:?];
  [v1 bounds];
  [v1 setBounds:{0.0, 0.0}];
  v37 = qword_1004A21E8;
  v38 = *&v1[qword_1004A21E8];
  if (v38)
  {
    v39 = v38;
    [v5 frame];
    [v39 setFrame:?];

    v40 = *&v1[v37];
    if (v40)
    {
      v41 = v40;
      v42 = [v5 font];
      if (v42)
      {
        v43 = v42;
        [v42 capHeight];

        [v41 frame];
        [v41 setFrame:?];

        v44 = *&v1[v37];
        if (v44)
        {
          v45 = v44;
          [v5 center];
          [v45 setCenter:?];

          v46 = *&v1[v37];
          if (v46)
          {
            v47 = objc_opt_self();
            v48 = v46;
            v49 = [v47 greenColor];
            [v48 setBackgroundColor:v49];

            v50 = qword_1004A21F0;
            v51 = *&v1[qword_1004A21F0];
            if (v51)
            {
              [v51 setFrame:{0.0, 0.0, v19, v22}];
              v52 = *&v1[v50];
              if (v52)
              {
                v53 = v52;
                v54 = [v47 blueColor];
                [v53 setBackgroundColor:v54];

                v55 = qword_1004A21F8;
                v56 = *&v1[qword_1004A21F8];
                if (v56)
                {
                  [v56 setFrame:{0.0, v22, v19, 12.0}];
                  v57 = *&v1[v55];
                  if (v57)
                  {
                    v58 = v57;
                    v59 = [v47 yellowColor];
                    [v58 setBackgroundColor:v59];

                    goto LABEL_37;
                  }

                  goto LABEL_59;
                }

LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_37:
  v60 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:0.0 cornerRadii:{v23, v19, v22, v22 * 0.5, v22 * 0.5}];
  v61 = qword_1004A2258;
  v62 = *&v1[qword_1004A2258];
  *&v1[qword_1004A2258] = v60;

  v63 = *&v1[qword_1004A2240];
  [v1 bounds];
  [v63 frame];
  [v63 setFrame:?];
  v78 = [objc_allocWithZone(CAShapeLayer) init];
  v64 = [*&v1[v61] CGPath];
  [v78 setPath:v64];

  if (v2)
  {
    v65 = [objc_allocWithZone(CAShapeLayer) init];
    if (v1[v77])
    {
      v66 = -1.0;
    }

    else
    {
      v66 = 1.0;
    }

    CGPoint.elementSum()();
    v68 = v67;
    [v63 frame];
    if (v23 > v22 * v66)
    {
      v70 = v23;
    }

    else
    {
      v70 = v22 * v66;
    }

    v71 = sub_100031A3C(v69 * 0.5 + -15.0 - v66 * v68, v70, v66);
    v72 = [v71 CGPath];

    [v65 setPath:v72];
    [v78 addSublayer:v65];
  }

  v73 = [v63 layer];
  [v73 setMask:v78];

  v74 = *&v1[qword_1004A2248];
  if (v74)
  {
    v75 = v74;
    [v1 bounds];
    [v75 frame];
    [v75 setFrame:?];
  }
}

void sub_1000310C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_100030688(a3);
}

uint64_t sub_100031174()
{

  v1 = *(v0 + qword_1004A22C0);
  v2 = *(v0 + qword_1004A22C0 + 8);
  v3 = *(v0 + qword_1004A22C0 + 16);

  return sub_1000316B8(v1, v2, v3);
}

uint64_t sub_1000312AC(uint64_t a1)
{

  v2 = *(a1 + qword_1004A22C0);
  v3 = *(a1 + qword_1004A22C0 + 8);
  v4 = *(a1 + qword_1004A22C0 + 16);

  return sub_1000316B8(v2, v3, v4);
}

uint64_t type metadata accessor for CalloutViewRegular()
{
  result = qword_1004A22F0;
  if (!qword_1004A22F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for EdgeDetectionPointInfo(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100031528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100031570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t *sub_1000315D4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100031638()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000316B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return result;
    }

    a2 = result;
  }

  return _objc_release_x1(result, a2);
}

uint64_t sub_1000316D8(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1 && ((a4 ^ a1) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (a6 == 2)
    {
LABEL_9:
      sub_100018630(0, &qword_1004AE0D0);
      return static NSObject.== infix(_:_:)() & 1;
    }

    v6 = 0;
  }

  else
  {
    v6 = a4 ^ a1 ^ 1;
    if (a6)
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_1000317A0()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_10003180C()
{
  result = qword_1004A30C0;
  if (!qword_1004A30C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A30C0);
  }

  return result;
}

unint64_t sub_100031864()
{
  result = qword_1004A30D0;
  if (!qword_1004A30D0)
  {
    sub_100013BB0(&unk_1004A3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A30D0);
  }

  return result;
}

uint64_t sub_1000318C8()
{
  sub_1000316B8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

id sub_100031904(id result, void *a2, char a3)
{
  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return result;
    }

    a2 = result;
  }

  return a2;
}

uint64_t sub_100031924()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10003195C()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_100031980()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000319B8()
{

  return _swift_deallocObject(v0, 33, 7);
}

id sub_100031A3C(double a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(UIBezierPath) init];
  v20 = a2 - a3;
  [v6 moveToPoint:a1 + -1.0];
  v18 = a3 * 0.0 + a2;
  [v6 addLineToPoint:{a1 + 0.0, v18}];
  v17 = a3 * 0.03 + a2;
  v19 = a3 * 0.1 + a2;
  [v6 addCurveToPoint:a1 + 1.11 controlPoint1:? controlPoint2:?];
  v16 = a3 * 0.13 + a2;
  [v6 addLineToPoint:a1 + 2.22];
  v15 = a3 * 0.65 + a2;
  [v6 addLineToPoint:a1 + 4.25];
  v14 = a3 * 1.86 + a2;
  [v6 addLineToPoint:a1 + 6.03];
  v7 = a3 * 3.94 + a2;
  [v6 addLineToPoint:{a1 + 7.89, v7}];
  v8 = a3 * 6.19 + a2;
  [v6 addLineToPoint:{a1 + 9.57, v8}];
  v9 = a3 * 8.2 + a2;
  [v6 addLineToPoint:{a1 + 11.05, v9}];
  v10 = a3 * 10.19 + a2;
  [v6 addLineToPoint:{a1 + 12.55, v10}];
  v11 = a3 * 12.0 + a2;
  v12 = a3 * 11.4 + a2;
  [v6 addCurveToPoint:a1 + 15.0 controlPoint1:v11 controlPoint2:{a1 + 13.6, v12, a1 + 14.3, v11}];
  [v6 addCurveToPoint:a1 + 17.45 controlPoint1:v10 controlPoint2:{a1 + 15.8, v11, a1 + 16.2, v12}];
  [v6 addLineToPoint:{a1 + 18.95, v9}];
  [v6 addLineToPoint:{a1 + 20.43, v8}];
  [v6 addLineToPoint:{a1 + 22.11, v7}];
  [v6 addLineToPoint:{a1 + 23.97, v14}];
  [v6 addLineToPoint:{a1 + 25.75, v15}];
  [v6 addLineToPoint:{a1 + 27.78, v16}];
  [v6 addLineToPoint:{a1 + 28.89, v17}];
  [v6 addCurveToPoint:a1 + 30.0 controlPoint1:v18 controlPoint2:{a1 + 29.0, v19, a1 + 29.3, v18}];
  [v6 addLineToPoint:{a1 + 30.3, v20}];
  [v6 setLineJoinStyle:0];
  [v6 setMiterLimit:0.0];
  return v6;
}

void sub_100031E60()
{
  v1 = v0;
  *(v0 + qword_1004A21E8) = 0;
  *(v0 + qword_1004A21F0) = 0;
  *(v0 + qword_1004A21F8) = 0;
  *(v0 + qword_1004A2200) = 0;
  *(v0 + qword_1004A2208) = 0;
  *(v0 + qword_1004A2210) = 0;
  *(v0 + qword_1004A2218) = 0;
  *(v0 + qword_1004A2220) = 0;
  *(v0 + qword_1004A2228) = 0;
  v2 = v0 + qword_1004A2238;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + qword_1004A2248) = 0;
  *(v0 + qword_1004A2250) = 0x4032000000000000;
  v3 = qword_1004A2258;
  *(v0 + v3) = [objc_allocWithZone(UIBezierPath) init];
  *(v0 + qword_1004A2260) = 0;
  v4 = v0 + qword_1004A2270;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  v5 = v0 + qword_1004A2278;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + qword_1004A2280) = 0;
  *(v0 + qword_1004A2288) = 0;
  *(v0 + qword_1004A2290) = 0;
  v6 = (v0 + qword_1004A2298);
  *v6 = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  *(v0 + qword_1004A22A0) = 0;
  *(v0 + qword_1004A22A8) = 0;
  v7 = qword_1004A22B0;
  KeyPath = swift_getKeyPath();
  v9 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v9 + 272);
  swift_retain_n();
  *(v1 + v7) = v11(KeyPath, v10);
  v12 = qword_1004A22B8;
  v13 = swift_getKeyPath();
  v14 = sub_10000F974(&unk_1004A2520);
  *(v1 + v12) = (*(v14 + 272))(v13, v10);
  v15 = v1 + qword_1004A22C0;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000321B4()
{
  v1 = OBJC_IVAR____TtC7Measure13SceneDelegate____lazy_storage___perfTestRunner;
  result = *(v0 + OBJC_IVAR____TtC7Measure13SceneDelegate____lazy_storage___perfTestRunner);
  if (result)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Measure13SceneDelegate____lazy_storage___perfTestRunner);
LABEL_5:

    return v3;
  }

  v4 = *(v0 + OBJC_IVAR____TtC7Measure13SceneDelegate_coordinator);
  if (v4)
  {
    type metadata accessor for PerformanceTestRunner();
    v3 = swift_allocObject();
    *(v3 + 16) = v4;
    *(v0 + v1) = v3;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032240(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC7Measure13SceneDelegate_coordinator))
  {

    sub_1000ECFF4();
  }

  return result;
}

void sub_100032298(void *a1)
{
  v1 = a1;
  v2 = sub_1001A122C(v1);
  if (v2 == 2)
  {
    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    _StringGuts.grow(_:)(46);

    v3 = [v1 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    String.append(_:)(v7);

    v8._countAndFlagsBits = 0x6C7561666544202ELL;
    v8._object = 0xED00002E676E6974;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 0xD00000000000001FLL;
    v9._object = 0x8000000100400AC0;
    Log.error(_:isPrivate:)(v9, 0);
  }

  else
  {
    v10 = v2 & 1;

    sub_1000326F8(v10);
  }
}

void sub_1000326F8(char a1)
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  _StringGuts.grow(_:)(21);
  v3._object = 0x8000000100400AE0;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  v4 = a1 & 1;
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  Log.default(_:isPrivate:)(v5, 0);

  v6 = *(**(v1 + OBJC_IVAR____TtC7Measure13SceneDelegate__appState) + 200);

  v8 = v6(v7);

  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  (*(*v8 + 280))(sub_100033650, v9);

  v10 = *(v1 + OBJC_IVAR____TtC7Measure13SceneDelegate_coordinator);
  if (v10)
  {
    v11 = *(v10 + 112);
    if (v11)
    {
      v12 = v11;

      v13 = sub_100054FB4(v4, &off_100464D78);
      if ((v14 & 1) == 0)
      {
        [v12 setSelectedIndex:v13];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_100032928()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7Measure13SceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC7Measure13SceneDelegate_coordinator] = 0;
  *&v0[OBJC_IVAR____TtC7Measure13SceneDelegate____lazy_storage___perfTestRunner] = 0;
  v3 = OBJC_IVAR____TtC7Measure13SceneDelegate__appState;
  KeyPath = swift_getKeyPath();
  v5 = sub_10000F974(&unk_1004A1940);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D5058;
  v7 = *(v5 + 272);

  *&v1[v3] = v7(KeyPath, v6);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_100032C34(void *a1)
{
  v10[3] = swift_getObjectType();
  v10[4] = &off_100468778;
  v10[0] = a1;
  sub_1000336B4(v10, v9);
  type metadata accessor for AppDependencyManager();
  v2 = a1;
  static AppDependencyManager.shared.getter();
  sub_10001D8BC();
  AnyHashable.init<A>(_:)();
  sub_100033718(v9, v6);
  v3 = swift_allocObject();
  v4 = v6[1];
  *(v3 + 16) = v6[0];
  *(v3 + 32) = v4;
  *(v3 + 48) = v7;
  sub_10000F974(&qword_1004A2648);
  AppDependencyManager.add<A>(key:dependency:)();

  sub_100018F04(v8, &unk_1004A2650);
  sub_100018F04(v9, &qword_1004A2648);
  return sub_10000FF00(v10);
}

void sub_100032D68(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    sub_100032C34(v3);
    v9 = [objc_allocWithZone(UIWindow) initWithWindowScene:v7];
    v10 = *&v3[OBJC_IVAR____TtC7Measure13SceneDelegate_window];
    *&v3[OBJC_IVAR____TtC7Measure13SceneDelegate_window] = v9;
    v11 = v9;

    type metadata accessor for MeasureCoordinator();
    swift_allocObject();
    v12 = v11;
    v13 = sub_1000ED700(v12);
    v14 = OBJC_IVAR____TtC7Measure13SceneDelegate_coordinator;
    *&v3[OBJC_IVAR____TtC7Measure13SceneDelegate_coordinator] = v13;

    v15 = objc_opt_self();
    v16 = [v15 sharedApplication];
    v17 = [v16 statusBarOrientation];

    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v18 = qword_1004D4AE0;
    if (v17 == qword_1004D4AE0)
    {
      if (*&v3[v14])
      {

        sub_1000ECFF4();
      }
    }

    else
    {
      v19 = [v15 sharedApplication];
      v20 = swift_allocObject();
      *(v20 + 16) = v3;
      aBlock[4] = sub_100033694;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100041180;
      aBlock[3] = &unk_1004687D8;
      v21 = _Block_copy(aBlock);
      v22 = v3;

      [v19 performWhileOverriddingStatusBarOrientation:v18 block:v21];
      _Block_release(v21);
    }

    v23 = *(**&v3[OBJC_IVAR____TtC7Measure13SceneDelegate__appState] + 200);

    v25 = v23(v24);

    (*(*v25 + 280))(sub_1000337C8, 0);

    v26 = [a2 shortcutItem];
    if (v26)
    {
      v27 = v26;
      sub_100032298(v26);
    }
  }

  else
  {
    if (qword_1004A0280 != -1)
    {
      swift_once();
    }

    v28._countAndFlagsBits = 0xD00000000000003CLL;
    v28._object = 0x8000000100400B80;
    Log.error(_:isPrivate:)(v28, 0);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100033144()
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v1._object = 0x8000000100400B60;
  v1._countAndFlagsBits = 0xD000000000000015;
  Log.default(_:isPrivate:)(v1, 0);
  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  sub_100121D38();
  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure13SceneDelegate__appState) + 200);

  v4 = v2(v3);

  (*(*v4 + 280))(sub_1000337C8, 0);

  v5 = [objc_opt_self() currentDevice];
  [v5 beginGeneratingDeviceOrientationNotifications];
}

void sub_1000332F4()
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v1._object = 0x8000000100400B40;
  v1._countAndFlagsBits = 0xD000000000000016;
  Log.default(_:isPrivate:)(v1, 0);
  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure13SceneDelegate__appState) + 200);

  v4 = v2(v3);

  (*(*v4 + 280))(sub_100032520, 0);

  v5 = [objc_opt_self() currentDevice];
  [v5 endGeneratingDeviceOrientationNotifications];
}

void sub_100033464()
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v1._object = 0x8000000100400B20;
  v1._countAndFlagsBits = 0xD000000000000018;
  Log.default(_:isPrivate:)(v1, 0);
  v2 = *(**(v0 + OBJC_IVAR____TtC7Measure13SceneDelegate__appState) + 200);

  v4 = v2(v3);

  (*(*v4 + 280))(sub_10003258C, 0);

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  sub_100121F10();
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (qword_1004D4AD0)
  {
    v5 = qword_1004D4AD0;
    sub_1001815F0(0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003365C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003369C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000336B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100033718(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004A2648);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033788()
{
  sub_10000FF00(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

__n128 sub_1000337CC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100033800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100033848(uint64_t result, int a2, int a3)
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
      *(result + 144) = (a2 - 1);
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

id sub_1000338BC()
{
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  result = *(&xmmword_1004D4AE8 + 1);
  if (*(&xmmword_1004D4AE8 + 1))
  {
    v1 = *(&xmmword_1004D4AE8 + 1);
    qword_1004D4A30 = Contexts.PrivateQueue.init(_:)();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003393C@<X0>(void *a1@<X8>)
{
  if (qword_1004A00D0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D4A30;
  *a1 = qword_1004D4A30;

  return v2;
}

uint64_t sub_1000339AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_100033D00(v11, v13) & 1;
}

unint64_t sub_100033A40(uint64_t a1)
{
  result = sub_100033A68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100033A68()
{
  result = qword_1004A26E8;
  if (!qword_1004A26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A26E8);
  }

  return result;
}

BOOL sub_100033ABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_100033B40(v11, v13);
}

BOOL sub_100033B40(uint64_t a1, uint64_t a2)
{
  v4 = (*((swift_isaMask & **a1) + 0xB8))();
  v6 = v5;
  if (v4 == (*((swift_isaMask & **a2) + 0xB8))() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a2 + 48) == 1)
  {
    return (*(a1 + 48) & 1) != 0;
  }

  if (*(a1 + 48))
  {
    return 0;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v13.i64[0] = v11;
  v14.i64[0] = v12;
  v14.i64[1] = *(a2 + 24);
  v13.i64[1] = *(a1 + 24);
  v15 = vsubq_f32(v13, v14);
  v16 = vmulq_f32(v15, v15);
  if ((v16.f32[2] + vaddv_f32(*v16.f32)) > 0.00000011921)
  {
    return 0;
  }

  v17 = *(a2 + 32);
  v18 = *(a1 + 32);
  v19.i64[0] = v18;
  v20.i64[0] = v17;
  v20.i64[1] = *(a2 + 40);
  v19.i64[1] = *(a1 + 40);
  v21 = vsubq_f32(v19, v20);
  v22 = vmulq_f32(v21, v21);
  return (v22.f32[2] + vaddv_f32(*v22.f32)) <= 0.00000011921;
}

uint64_t sub_100033D00(__int128 *a1, uint64_t a2)
{
  v4 = a1[5];
  v5 = a1[7];
  v90 = a1[6];
  v91 = v5;
  v6 = a1[1];
  v7 = a1[3];
  v86 = a1[2];
  v87 = v7;
  v9 = a1[3];
  v8 = a1[4];
  v10 = v8;
  v89 = a1[5];
  v88 = v8;
  v11 = *a1;
  v12 = *a1;
  v85[1] = a1[1];
  v85[0] = v11;
  v13 = *(a2 + 80);
  v14 = *(a2 + 112);
  v82 = *(a2 + 96);
  v83 = v14;
  v15 = *(a2 + 16);
  v16 = *(a2 + 48);
  v78 = *(a2 + 32);
  v79 = v16;
  v18 = *(a2 + 48);
  v17 = *(a2 + 64);
  v19 = v17;
  v81 = *(a2 + 80);
  v80 = v17;
  v20 = *(a2 + 16);
  v77[0] = *a2;
  v77[1] = v20;
  v21 = a1[5];
  v22 = a1[7];
  __src[6] = a1[6];
  __src[7] = v22;
  v23 = a1[1];
  v24 = a1[3];
  __src[2] = a1[2];
  __src[3] = v24;
  __src[4] = a1[4];
  __src[5] = v21;
  __src[0] = *a1;
  __src[1] = v23;
  v25 = *(a2 + 112);
  __src[15] = v82;
  __src[16] = v25;
  __src[11] = v78;
  __src[12] = v18;
  __src[13] = v19;
  __src[14] = v13;
  __src[9] = v77[0];
  __src[10] = v15;
  v26 = a1[7];
  v102[6] = v90;
  v102[7] = v26;
  v102[2] = v86;
  v102[3] = v9;
  v102[4] = v10;
  v102[5] = v4;
  v92 = *(a1 + 128);
  v84 = *(a2 + 128);
  LOBYTE(__src[8]) = *(a1 + 128);
  LOBYTE(__src[17]) = *(a2 + 128);
  v103 = *(a1 + 128);
  v102[0] = v12;
  v102[1] = v6;
  if (sub_10001376C(v102) != 1)
  {
    v35 = *(a2 + 112);
    v73[6] = *(a2 + 96);
    v73[7] = v35;
    v74 = *(a2 + 128);
    v36 = *(a2 + 48);
    v73[2] = *(a2 + 32);
    v73[3] = v36;
    v37 = *(a2 + 80);
    v73[4] = *(a2 + 64);
    v73[5] = v37;
    v38 = *(a2 + 16);
    v73[0] = *a2;
    v73[1] = v38;
    if (sub_10001376C(v73) != 1)
    {
      v41 = *(a2 + 80);
      v42 = *(a2 + 112);
      v68 = *(a2 + 96);
      v69 = v42;
      v43 = *(a2 + 16);
      v44 = *(a2 + 48);
      v64 = *(a2 + 32);
      v65 = v44;
      v45 = *(a2 + 48);
      v46 = *(a2 + 80);
      v66 = *(a2 + 64);
      v67 = v46;
      v47 = *(a2 + 16);
      v63[0] = *a2;
      v63[1] = v47;
      v48 = *(a2 + 112);
      __dst[6] = v68;
      __dst[7] = v48;
      __dst[2] = v64;
      __dst[3] = v45;
      __dst[4] = v66;
      __dst[5] = v41;
      v70 = *(a2 + 128);
      LOBYTE(__dst[8]) = *(a2 + 128);
      __dst[0] = v63[0];
      __dst[1] = v43;
      v49 = a1[7];
      v99 = a1[6];
      v100 = v49;
      v101 = *(a1 + 128);
      v50 = a1[3];
      v95 = a1[2];
      v96 = v50;
      v51 = a1[4];
      v98 = a1[5];
      v97 = v51;
      v52 = *a1;
      v94 = a1[1];
      v93 = v52;
      sub_100013784(v85, v71);
      sub_100013784(v77, v71);
      v53 = sub_100033B40(&v93, __dst);
      sub_100018F04(v63, &qword_1004A1208);
      v54 = a1[7];
      v71[6] = a1[6];
      v71[7] = v54;
      v72 = *(a1 + 128);
      v55 = a1[3];
      v71[2] = a1[2];
      v71[3] = v55;
      v56 = a1[5];
      v71[4] = a1[4];
      v71[5] = v56;
      v57 = a1[1];
      v71[0] = *a1;
      v71[1] = v57;
      sub_100018F04(v71, &qword_1004A1208);
      if (!v53)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

LABEL_5:
    memcpy(__dst, __src, 0x111uLL);
    sub_100013784(v85, &v93);
    sub_100013784(v77, &v93);
    sub_100018F04(__dst, &qword_1004A26F0);
    goto LABEL_6;
  }

  v27 = *(a2 + 112);
  __dst[6] = *(a2 + 96);
  __dst[7] = v27;
  LOBYTE(__dst[8]) = *(a2 + 128);
  v28 = *(a2 + 48);
  __dst[2] = *(a2 + 32);
  __dst[3] = v28;
  v29 = *(a2 + 80);
  __dst[4] = *(a2 + 64);
  __dst[5] = v29;
  v30 = *(a2 + 16);
  __dst[0] = *a2;
  __dst[1] = v30;
  if (sub_10001376C(__dst) != 1)
  {
    goto LABEL_5;
  }

  v31 = a1[7];
  v99 = a1[6];
  v100 = v31;
  v101 = *(a1 + 128);
  v32 = a1[3];
  v95 = a1[2];
  v96 = v32;
  v33 = a1[4];
  v98 = a1[5];
  v97 = v33;
  v34 = *a1;
  v94 = a1[1];
  v93 = v34;
  sub_100013784(v85, v73);
  sub_100013784(v77, v73);
  sub_100018F04(&v93, &qword_1004A1208);
LABEL_9:
  v58 = *(a1 + 17);
  v59 = *(a2 + 136);
  if (v58)
  {
    if (v59)
    {
      type metadata accessor for WorldEdge();
      v60 = v59;
      v61 = v58;
      v62 = static NSObject.== infix(_:_:)();

      if (v62)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!v59)
  {
LABEL_14:
    v39 = sub_10007C878(*(a1 + 18), *(a2 + 144));
    return v39 & 1;
  }

LABEL_6:
  v39 = 0;
  return v39 & 1;
}