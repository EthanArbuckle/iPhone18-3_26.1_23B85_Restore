uint64_t sub_100001738()
{
  v0 = sub_100010504();
  sub_100002654(v0, qword_10001DC60);
  sub_10000180C(v0, qword_10001DC60);
  return sub_1000104F4();
}

uint64_t sub_1000017A8()
{
  if (qword_10001C810 != -1)
  {
    swift_once();
  }

  v0 = sub_100010504();

  return sub_10000180C(v0, qword_10001DC60);
}

uint64_t sub_10000180C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001844@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C810 != -1)
  {
    swift_once();
  }

  v2 = sub_100010504();
  v3 = sub_10000180C(v2, qword_10001DC60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001920()
{
  swift_beginAccess();
  v0 = qword_10001C510;

  return v0;
}

uint64_t sub_100001974(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_10001C510 = a1;
  off_10001C518 = a2;
}

uint64_t (*sub_100001A94(uint64_t *a1))()
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
  *(v2 + 32) = sub_100010294();
  return sub_1000026BC;
}

uint64_t sub_100001B08(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001B50()
{
  result = qword_10001C538;
  if (!qword_10001C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C538);
  }

  return result;
}

uint64_t sub_100001BE8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000102A4();
  *a1 = v5;
  return result;
}

uint64_t sub_100001C24(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000102B4();
}

uint64_t (*sub_100001C5C(uint64_t *a1))()
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
  *(v3 + 32) = sub_100010294();
  return sub_100001CD0;
}

void sub_100001CD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100001D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002558();
  v5 = sub_100002600();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100001DA4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100002558();
  v8 = sub_1000025AC();
  v9 = sub_100002600();
  *v6 = v2;
  v6[1] = sub_100001E78;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100001E78()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100001F80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001FE4();
  *a1 = result;
  return result;
}

uint64_t sub_100001FA8(uint64_t a1)
{
  v2 = sub_100002398();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001FE4()
{
  v20 = sub_1000103F4();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100001B08(&qword_10001C520, &qword_100010C38) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100001B08(&qword_10001C528, &qword_100010C40);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100010504();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100001B08(&qword_10001C530, &qword_100010C48);
  sub_1000104F4();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 25;
  v17 = sub_100010284();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100001B50();
  return sub_1000102D4();
}

unint64_t sub_1000022EC()
{
  result = qword_10001C540;
  if (!qword_10001C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C540);
  }

  return result;
}

unint64_t sub_100002344()
{
  result = qword_10001C548;
  if (!qword_10001C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C548);
  }

  return result;
}

unint64_t sub_100002398()
{
  result = qword_10001C550;
  if (!qword_10001C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C550);
  }

  return result;
}

unint64_t sub_1000023EC()
{
  result = qword_10001C558;
  if (!qword_10001C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C558);
  }

  return result;
}

unint64_t sub_100002448()
{
  result = qword_10001C560;
  if (!qword_10001C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C560);
  }

  return result;
}

unint64_t sub_1000024A0()
{
  result = qword_10001C568;
  if (!qword_10001C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C568);
  }

  return result;
}

unint64_t sub_100002558()
{
  result = qword_10001C570;
  if (!qword_10001C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C570);
  }

  return result;
}

unint64_t sub_1000025AC()
{
  result = qword_10001C578;
  if (!qword_10001C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C578);
  }

  return result;
}

unint64_t sub_100002600()
{
  result = qword_10001C580;
  if (!qword_10001C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C580);
  }

  return result;
}

uint64_t *sub_100002654(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000026CC()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  sub_100002398();
  sub_100010354();
  v21 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v20 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v19 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v18 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010E90;
  v11 = v20;
  *(v10 + 32) = v21;
  *(v10 + 40) = v11;
  v12 = v18;
  *(v10 + 48) = v19;
  *(v10 + 56) = v12;
  v13 = v16;
  *(v10 + 64) = v17;
  *(v10 + 72) = v13;
  *(v10 + 80) = v6;
  *(v10 + 88) = v7;
  *(v10 + 96) = v8;
  *(v10 + 104) = v9;
  v14 = sub_1000102F4();

  return v14;
}

uint64_t sub_100002B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100001A2C();
  *a2 = result;
  return result;
}

uint64_t sub_100002B60(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_100001A60();
}

uint64_t sub_100002B6C()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - v3;
  sub_100002398();
  sub_100010354();
  v18 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v15 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010EA0;
  v11 = v17;
  *(v10 + 32) = v18;
  *(v10 + 40) = v11;
  v12 = v15;
  *(v10 + 48) = v16;
  *(v10 + 56) = v12;
  *(v10 + 64) = v6;
  *(v10 + 72) = v7;
  *(v10 + 80) = v8;
  *(v10 + 88) = v9;
  v13 = sub_1000102F4();

  return v13;
}

uint64_t sub_100002F14()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t sub_100003094()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v33 - v3;
  sub_100002398();
  sub_100010354();
  v75 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v74 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v73 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v72 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v71 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v70 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v69 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v68 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v67 = sub_100010304();
  v5(v4, v0);
  v61 = 0xD000000000000020;
  sub_100010354();
  v66 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v65 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v64 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v63 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v62 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v60 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v59 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v58 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v57 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v56 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v55 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v54 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v53 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v52 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v51 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v50 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v49 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v48 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v47 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v46 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v45 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v44 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v43 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v42 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v41 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v40 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v39 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v38 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v37 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v36 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v35 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v34 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v33 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v9 = swift_allocObject();
  v10 = v74;
  *(v9 + 32) = v75;
  *(v9 + 40) = v10;
  v11 = v72;
  *(v9 + 48) = v73;
  *(v9 + 56) = v11;
  v12 = v70;
  *(v9 + 64) = v71;
  *(v9 + 72) = v12;
  v13 = v68;
  *(v9 + 80) = v69;
  *(v9 + 88) = v13;
  v14 = v66;
  *(v9 + 96) = v67;
  *(v9 + 104) = v14;
  v15 = v64;
  *(v9 + 112) = v65;
  *(v9 + 120) = v15;
  v16 = v62;
  *(v9 + 128) = v63;
  *(v9 + 136) = v16;
  v17 = v59;
  *(v9 + 144) = v60;
  *(v9 + 152) = v17;
  *(v9 + 16) = xmmword_100010EC0;
  v18 = v57;
  *(v9 + 160) = v58;
  *(v9 + 168) = v18;
  v19 = v55;
  *(v9 + 176) = v56;
  *(v9 + 184) = v19;
  v20 = v53;
  *(v9 + 192) = v54;
  *(v9 + 200) = v20;
  v21 = v51;
  *(v9 + 208) = v52;
  *(v9 + 216) = v21;
  v22 = v49;
  *(v9 + 224) = v50;
  *(v9 + 232) = v22;
  v23 = v47;
  *(v9 + 240) = v48;
  *(v9 + 248) = v23;
  v24 = v45;
  *(v9 + 256) = v46;
  *(v9 + 264) = v24;
  v25 = v43;
  *(v9 + 272) = v44;
  *(v9 + 280) = v25;
  v26 = v41;
  *(v9 + 288) = v42;
  *(v9 + 296) = v26;
  v27 = v39;
  *(v9 + 304) = v40;
  *(v9 + 312) = v27;
  v28 = v37;
  *(v9 + 320) = v38;
  *(v9 + 328) = v28;
  v29 = v35;
  *(v9 + 336) = v36;
  *(v9 + 344) = v29;
  v30 = v33;
  *(v9 + 352) = v34;
  *(v9 + 360) = v30;
  *(v9 + 368) = v6;
  *(v9 + 376) = v7;
  *(v9 + 384) = v8;
  v31 = sub_1000102F4();

  return v31;
}

uint64_t sub_1000040C4()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t sub_100004244()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  sub_100002398();
  sub_100010354();
  v5 = sub_100010304();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v6(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v6(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v6(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010ED0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_1000102F4();

  return v11;
}

uint64_t sub_1000044A8()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t sub_100004628()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - v3;
  sub_100002398();
  sub_100010354();
  v5 = sub_100010304();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v6(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v6(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100010EE0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  v10 = sub_1000102F4();

  return v10;
}

uint64_t sub_100004864()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_100002398();
  sub_100010354();
  v17 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v15 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010EF0;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v15;
  *(v10 + 56) = v6;
  *(v10 + 64) = v7;
  *(v10 + 72) = v8;
  *(v10 + 80) = v9;
  v12 = sub_1000102F4();

  return v12;
}

uint64_t sub_100004BC0()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t sub_100004D40()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  sub_100002398();
  sub_100010354();
  v5 = sub_100010304();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v6(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100010F00;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_1000102F4();

  return v9;
}

uint64_t sub_100004F18()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - v3;
  sub_100002398();
  sub_100010354();
  v18 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v15 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010EA0;
  v11 = v17;
  *(v10 + 32) = v18;
  *(v10 + 40) = v11;
  v12 = v15;
  *(v10 + 48) = v16;
  *(v10 + 56) = v12;
  *(v10 + 64) = v6;
  *(v10 + 72) = v7;
  *(v10 + 80) = v8;
  *(v10 + 88) = v9;
  v13 = sub_1000102F4();

  return v13;
}

uint64_t sub_1000052E4()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_100002398();
  sub_100010354();
  v17 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v15 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010EF0;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v15;
  *(v10 + 56) = v6;
  *(v10 + 64) = v7;
  *(v10 + 72) = v8;
  *(v10 + 80) = v9;
  v12 = sub_1000102F4();

  return v12;
}

uint64_t sub_100005664()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  sub_100002398();
  sub_100010354();
  v21 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v20 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v19 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v18 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010E90;
  v11 = v20;
  *(v10 + 32) = v21;
  *(v10 + 40) = v11;
  v12 = v18;
  *(v10 + 48) = v19;
  *(v10 + 56) = v12;
  v13 = v16;
  *(v10 + 64) = v17;
  *(v10 + 72) = v13;
  *(v10 + 80) = v6;
  *(v10 + 88) = v7;
  *(v10 + 96) = v8;
  *(v10 + 104) = v9;
  v14 = sub_1000102F4();

  return v14;
}

uint64_t sub_100005AD0()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_100002398();
  sub_100010354();
  v15 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v14 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010F10;
  v11 = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v11;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 72) = v9;
  v12 = sub_1000102F4();

  return v12;
}

uint64_t sub_100005DD8()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t sub_100005F58()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - v3;
  sub_100002398();
  sub_100010354();
  v20 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v19 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v18 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010F20;
  v11 = v19;
  *(v10 + 32) = v20;
  *(v10 + 40) = v11;
  v12 = v17;
  *(v10 + 48) = v18;
  *(v10 + 56) = v12;
  *(v10 + 64) = v16;
  *(v10 + 72) = v6;
  *(v10 + 80) = v7;
  *(v10 + 88) = v8;
  *(v10 + 96) = v9;
  v13 = sub_1000102F4();

  return v13;
}

uint64_t sub_100006378()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - v3;
  sub_100002398();
  sub_100010354();
  v20 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v19 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v18 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010F20;
  v11 = v19;
  *(v10 + 32) = v20;
  *(v10 + 40) = v11;
  v12 = v17;
  *(v10 + 48) = v18;
  *(v10 + 56) = v12;
  *(v10 + 64) = v16;
  *(v10 + 72) = v6;
  *(v10 + 80) = v7;
  *(v10 + 88) = v8;
  *(v10 + 96) = v9;
  v13 = sub_1000102F4();

  return v13;
}

uint64_t sub_10000676C()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t sub_1000068EC()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - v3;
  sub_100002398();
  sub_100010354();
  v18 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v15 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010EA0;
  v11 = v17;
  *(v10 + 32) = v18;
  *(v10 + 40) = v11;
  v12 = v15;
  *(v10 + 48) = v16;
  *(v10 + 56) = v12;
  *(v10 + 64) = v6;
  *(v10 + 72) = v7;
  *(v10 + 80) = v8;
  *(v10 + 88) = v9;
  v13 = sub_1000102F4();

  return v13;
}

uint64_t sub_100006CBC()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_100002398();
  sub_100010354();
  v15 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v14 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010F10;
  v11 = v14;
  *(v10 + 32) = v15;
  *(v10 + 40) = v11;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  *(v10 + 72) = v9;
  v12 = sub_1000102F4();

  return v12;
}

uint64_t sub_100006FE8()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  sub_100002398();
  sub_100010354();
  v17 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v15 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010EF0;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v15;
  *(v10 + 56) = v6;
  *(v10 + 64) = v7;
  *(v10 + 72) = v8;
  *(v10 + 80) = v9;
  v12 = sub_1000102F4();

  return v12;
}

uint64_t sub_100007370()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - v3;
  sub_100002398();
  sub_100010354();
  v20 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v19 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v18 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v17 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v16 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010F20;
  v11 = v19;
  *(v10 + 32) = v20;
  *(v10 + 40) = v11;
  v12 = v17;
  *(v10 + 48) = v18;
  *(v10 + 56) = v12;
  *(v10 + 64) = v16;
  *(v10 + 72) = v6;
  *(v10 + 80) = v7;
  *(v10 + 88) = v8;
  *(v10 + 96) = v9;
  v13 = sub_1000102F4();

  return v13;
}

uint64_t sub_100007794()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t sub_10000790C()
{
  v0 = sub_100001B08(&qword_10001C5A0, &qword_100011008);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - v3;
  sub_100002398();
  sub_100010354();
  v26 = sub_100010304();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_100010354();
  v25 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v24 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v23 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v22 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v21 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v20 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v19 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v18 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v6 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v7 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v8 = sub_100010304();
  v5(v4, v0);
  sub_100010354();
  v9 = sub_100010304();
  v5(v4, v0);
  sub_100001B08(&qword_10001C5A8, &unk_100011010);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100010F30;
  v11 = v25;
  *(v10 + 32) = v26;
  *(v10 + 40) = v11;
  v12 = v23;
  *(v10 + 48) = v24;
  *(v10 + 56) = v12;
  v13 = v21;
  *(v10 + 64) = v22;
  *(v10 + 72) = v13;
  v14 = v19;
  *(v10 + 80) = v20;
  *(v10 + 88) = v14;
  *(v10 + 96) = v18;
  *(v10 + 104) = v6;
  *(v10 + 112) = v7;
  *(v10 + 120) = v8;
  *(v10 + 128) = v9;
  v15 = sub_1000102F4();

  return v15;
}

uint64_t sub_100007E4C()
{
  v0 = sub_100010334();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10000898C();
  sub_1000102E4();

  sub_100002398();
  sub_100010344();
  v5 = sub_100010324();
  (*(v1 + 8))(v4, v0);
  sub_100001B08(&qword_10001C598, &qword_100011000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100010EB0;
  *(v6 + 32) = v5;
  v7 = sub_100010314();

  return v7;
}

uint64_t *sub_100007FE0()
{
  if (qword_10001CBA0 != -1)
  {
    swift_once();
  }

  return &qword_10001DC78;
}

uint64_t sub_100008030()
{
  if (qword_10001CBA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100008090()
{
  v0 = sub_100010384();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100001BC8();
  sub_100002398();
  sub_100010394();
  v32 = sub_100010374();
  v5 = *(v1 + 8);
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v31 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v30 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v29 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v28 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v27 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v26 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v25 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v24 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v23 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v22 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v21 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v20 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v6 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v7 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v8 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v9 = sub_100010374();
  v5(v4, v0);
  v33 = sub_100001BC8();
  sub_100010394();
  v10 = sub_100010374();
  v5(v4, v0);
  sub_100001B08(&qword_10001C588, "~6");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100010F40;
  v12 = v31;
  *(v11 + 32) = v32;
  *(v11 + 40) = v12;
  v13 = v29;
  *(v11 + 48) = v30;
  *(v11 + 56) = v13;
  v14 = v27;
  *(v11 + 64) = v28;
  *(v11 + 72) = v14;
  v15 = v25;
  *(v11 + 80) = v26;
  *(v11 + 88) = v15;
  v16 = v23;
  *(v11 + 96) = v24;
  *(v11 + 104) = v16;
  v17 = v21;
  *(v11 + 112) = v22;
  *(v11 + 120) = v17;
  *(v11 + 128) = v20;
  *(v11 + 136) = v6;
  *(v11 + 144) = v7;
  *(v11 + 152) = v8;
  *(v11 + 160) = v9;
  *(v11 + 168) = v10;
  v18 = sub_100010364();

  return v18;
}

unint64_t sub_10000898C()
{
  result = qword_10001C590;
  if (!qword_10001C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C590);
  }

  return result;
}

uint64_t sub_100008A14()
{
  swift_beginAccess();
  v0 = qword_10001C5B0;

  return v0;
}

uint64_t sub_100008A68(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_10001C5B0 = a1;
  off_10001C5B8 = a2;
}

uint64_t sub_100008B1C()
{
  v0 = sub_100001B08(&qword_10001C5C0, &qword_100011020);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100001B08(&qword_10001C5C8, &qword_100011028);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100001B50();
  sub_100010464();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100010454(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100010444();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100010454(v10);
  return sub_100010474();
}

uint64_t sub_100008CD4(char a1)
{
  v2 = sub_100001B08(&qword_10001C5D0, &unk_100011030);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_100001B08(&qword_10001C528, &qword_100010C40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_100010504();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  switch(a1)
  {
    case 1:
      sub_1000104F4();
      sub_1000104F4();
      v19 = *(v11 + 56);
      v18 = v11 + 56;
      v19(v9, 0, 1, v10);
      v20 = sub_1000103A4();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
      sub_100001B08(&qword_10001C5D8, &qword_100011040);
      v21 = *(v18 + 16);
      v22 = (*(v18 + 24) + 32) & ~*(v18 + 24);
      *(swift_allocObject() + 16) = xmmword_100010EB0;
      goto LABEL_5;
    case 2:
      sub_1000104F4();
      sub_1000104F4();
      v14 = *(v11 + 56);
      v13 = v11 + 56;
      v14(v9, 0, 1, v10);
      v15 = sub_1000103A4();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_100001B08(&qword_10001C5D8, &qword_100011040);
      v16 = *(v13 + 16);
      v17 = (*(v13 + 24) + 32) & ~*(v13 + 24);
      *(swift_allocObject() + 16) = xmmword_100010F00;
      sub_1000104F4();
LABEL_5:
      sub_1000104F4();
      return sub_1000103B4();
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
      sub_1000104F4();
      sub_1000104F4();
      (*(v11 + 56))(v9, 0, 1, v10);
      goto LABEL_7;
    default:
      sub_1000104F4();
      (*(v11 + 56))(v9, 1, 1, v10);
LABEL_7:
      v24 = sub_1000103A4();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      return sub_1000103C4();
  }
}

uint64_t sub_1000096EC()
{
  v0 = sub_100001B08(&qword_10001C528, &qword_100010C40);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100010504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100010494();
  sub_100002654(v7, qword_10001DC80);
  sub_10000180C(v7, qword_10001DC80);
  sub_1000104F4();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100010484();
}

uint64_t sub_100009864()
{
  if (qword_10001CC40 != -1)
  {
    swift_once();
  }

  v0 = sub_100010494();

  return sub_10000180C(v0, qword_10001DC80);
}

uint64_t sub_1000098C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001CC40 != -1)
  {
    swift_once();
  }

  v2 = sub_100010494();
  v3 = sub_10000180C(v2, qword_10001DC80);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_100009988(uint64_t a1)
{
  if (qword_10001CC40 != -1)
  {
    swift_once();
  }

  v2 = sub_100010494();
  v3 = sub_10000180C(v2, qword_10001DC80);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_100009A7C())()
{
  if (qword_10001CC40 != -1)
  {
    swift_once();
  }

  v0 = sub_100010494();
  sub_10000180C(v0, qword_10001DC80);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_100009B10()
{
  v0 = AppleAccountSettingsModel.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
  qword_10001DC98 = *v0;

  return v1;
}

id sub_100009B68()
{
  v0 = AppleAccountSettingsModel.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;

  return v1;
}

uint64_t *sub_100009BB8()
{
  if (qword_10001CC48 != -1)
  {
    swift_once();
  }

  return &qword_10001DC98;
}

id sub_100009C08()
{
  if (qword_10001CC48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_10001DC98;

  return v0;
}

void sub_100009C8C(uint64_t a1)
{
  if (qword_10001CC48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_10001DC98;
  qword_10001DC98 = a1;
}

uint64_t (*sub_100009D0C())()
{
  if (qword_10001CC48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100009DE8()
{
  v1 = (*((swift_isaMask & **(v0 + 16)) + 0x140))();
  if (v1)
  {
    v2 = v1;
    for (i = 0; i != 25; ++i)
    {
      v4 = *(&off_100018C08 + i + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000B8CC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        sub_10000B8CC((v5 > 1), v7, 1);
        v7 = v6 + 1;
      }

      _swiftEmptyArrayStorage[2] = v7;
      *(&_swiftEmptyArrayStorage[4] + v6) = v4;
    }

    sub_10000B8AC(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    v9 = v6 + 1;
    v10 = 32;
    do
    {
      v11 = *(_swiftEmptyArrayStorage + v10);
      v12 = _swiftEmptyArrayStorage[3];
      if (v8 >= v12 >> 1)
      {
        sub_10000B8AC((v12 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *(&_swiftEmptyArrayStorage[4] + v8) = v11;
      ++v10;
      ++v8;
      --v9;
    }

    while (v9);
  }

  else
  {
    for (j = 0; j != 25; ++j)
    {
      if (!*(&off_100018C08 + j + 32))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000B8CC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10000B8CC((v14 > 1), v15 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v15 + 1;
        *(&_swiftEmptyArrayStorage[4] + v15) = 0;
      }
    }

    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      sub_10000B8AC(0, v16, 0);
      v17 = _swiftEmptyArrayStorage[2];
      v18 = 32;
      do
      {
        v19 = *(_swiftEmptyArrayStorage + v18);
        v20 = _swiftEmptyArrayStorage[3];
        if (v17 >= v20 >> 1)
        {
          sub_10000B8AC((v20 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        *(&_swiftEmptyArrayStorage[4] + v17) = v19;
        ++v18;
        ++v17;
        --v16;
      }

      while (v16);
    }
  }

  v21 = *(v0 + 8);

  return v21(_swiftEmptyArrayStorage);
}

uint64_t sub_10000A130(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10000A150, 0, 0);
}

uint64_t sub_10000A150()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0x140))();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10000B8CC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        v10 = v9 + 1;
        if (v9 >= v8 >> 1)
        {
          sub_10000B8CC((v8 > 1), v9 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10;
        *(&_swiftEmptyArrayStorage[4] + v9) = v6;
        --v4;
      }

      while (v4);
    }

    else
    {
      v10 = _swiftEmptyArrayStorage[2];
      if (!v10)
      {
LABEL_29:

        goto LABEL_31;
      }
    }

    sub_10000B8AC(0, v10, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 32;
    do
    {
      v21 = *(_swiftEmptyArrayStorage + v20);
      v22 = _swiftEmptyArrayStorage[3];
      if (v19 >= v22 >> 1)
      {
        sub_10000B8AC((v22 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      *(&_swiftEmptyArrayStorage[4] + v19) = v21;
      ++v20;
      ++v19;
      --v10;
    }

    while (v10);
    goto LABEL_29;
  }

  for (i = 0; i != 25; ++i)
  {
    if (!*(&off_100018C08 + i + 32))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000B8CC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10000B8CC((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = 0;
    }
  }

  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    sub_10000B8AC(0, v14, 0);
    v15 = _swiftEmptyArrayStorage[2];
    v16 = 32;
    do
    {
      v17 = *(_swiftEmptyArrayStorage + v16);
      v18 = _swiftEmptyArrayStorage[3];
      if (v15 >= v18 >> 1)
      {
        sub_10000B8AC((v18 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v17;
      ++v16;
      ++v15;
      --v14;
    }

    while (v14);
  }

LABEL_31:
  v23 = *(v0 + 8);

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_10000A498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000A538;

  return sub_10000BAD4();
}

uint64_t sub_10000A538(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000A634()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000C5B4;

  return sub_10000BC04();
}

id sub_10000A6D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = AppleAccountSettingsModel.shared.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *v2;
  *a1 = *v2;

  return v3;
}

uint64_t sub_10000A72C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C5B4;

  return sub_10000A130(a1, v4);
}

uint64_t sub_10000A7C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10000C594;

  return sub_100009DC8(v3);
}

uint64_t sub_10000A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000A920;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000A920(uint64_t a1)
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

uint64_t sub_10000AA20(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000AAC4;

  return sub_10000BC04();
}

uint64_t sub_10000AAC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_10000ABD8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000BE28();
  *v6 = v2;
  v6[1] = sub_10000AC8C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000AC8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000AD80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000AE24;

  return sub_10000BAD4();
}

uint64_t sub_10000AE24(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10000AF38()
{
  v0 = sub_100001B08(&qword_10001C5C0, &qword_100011020);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100001B08(&qword_10001C5C8, &qword_100011028);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100001B50();
  sub_100010464();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_100010454(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100010444();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100010454(v10);
  return sub_100010474();
}

id sub_10000B0EC@<X0>(void *a1@<X8>)
{
  if (qword_10001CC48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_10001DC98;
  *a1 = qword_10001DC98;

  return v2;
}

uint64_t sub_10000B178()
{
  sub_100002600();
  v1 = sub_100010404();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000B1F4(uint64_t a1)
{
  v2 = sub_100001B50();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000AC8C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000B30C(uint64_t a1)
{
  v2 = sub_10000C1C4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B35C(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000033;
      break;
    case 3:
      result = 0xD000000000000032;
      break;
    case 4:
      result = 0xD00000000000002ALL;
      break;
    case 5:
    case 7:
      result = 0xD00000000000002BLL;
      break;
    case 6:
      result = 0xD00000000000002CLL;
      break;
    case 8:
      result = 0xD00000000000002ELL;
      break;
    case 9:
      result = 0xD00000000000004CLL;
      break;
    case 10:
    case 14:
      result = 0xD000000000000049;
      break;
    case 11:
      result = 0xD000000000000045;
      break;
    case 12:
      result = 0xD00000000000004DLL;
      break;
    case 13:
    case 19:
      result = 0xD000000000000046;
      break;
    case 15:
    case 17:
      result = 0xD000000000000047;
      break;
    case 16:
      result = 0xD00000000000004ALL;
      break;
    case 18:
      result = 0xD00000000000003BLL;
      break;
    case 20:
      result = 0xD00000000000003DLL;
      break;
    case 21:
      result = 0xD000000000000041;
      break;
    case 22:
      result = 0xD00000000000005FLL;
      break;
    case 23:
      result = 0xD000000000000031;
      break;
    case 24:
      result = 0xD000000000000034;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000B608()
{

  return sub_10000BD24();
}

uint64_t sub_10000B650(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000B35C(*a1);
  v5 = v4;
  if (v3 == sub_10000B35C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100010674();
  }

  return v8 & 1;
}

Swift::Int sub_10000B6D8()
{
  v1 = *v0;
  sub_1000106B4();
  sub_10000B35C(v1);
  sub_100010604();

  return sub_1000106C4();
}

uint64_t sub_10000B73C()
{
  sub_10000B35C(*v0);
  sub_100010604();
}

Swift::Int sub_10000B790()
{
  v1 = *v0;
  sub_1000106B4();
  sub_10000B35C(v1);
  sub_100010604();

  return sub_1000106C4();
}

uint64_t sub_10000B7F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10000BD24();
  *a2 = result;
  return result;
}

unint64_t sub_10000B820@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000B35C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000B864@<X0>(_BYTE *a1@<X8>)
{

  result = sub_10000BD24();
  *a1 = result;
  return result;
}

char *sub_10000B8AC(char *a1, int64_t a2, char a3)
{
  result = sub_10000B8EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000B8CC(char *a1, int64_t a2, char a3)
{
  result = sub_10000B9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000B8EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B08(&qword_10001C688, &qword_100011680);
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

char *sub_10000B9E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B08(&qword_10001C680, &qword_100011678);
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

uint64_t sub_10000BAF0()
{
  for (i = 0; i != 25; ++i)
  {
    v2 = *(&off_100018C08 + i + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000B8CC(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v4 = *(&_swiftEmptyArrayStorage + 2);
    v3 = *(&_swiftEmptyArrayStorage + 3);
    if (v4 >= v3 >> 1)
    {
      sub_10000B8CC((v3 > 1), v4 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
    *(&_swiftEmptyArrayStorage + v4 + 32) = v2;
  }

  v5 = *(&_swiftEmptyArrayStorage + 32);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_10000BC20()
{
  sub_10000B8AC(0, 25, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_100018C08 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_10000B8AC((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 25);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000BD24()
{
  v0 = sub_100010684();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_10000BD7C()
{
  result = qword_10001C5E0;
  if (!qword_10001C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5E0);
  }

  return result;
}

unint64_t sub_10000BDD4()
{
  result = qword_10001C5E8;
  if (!qword_10001C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5E8);
  }

  return result;
}

unint64_t sub_10000BE28()
{
  result = qword_10001C5F0;
  if (!qword_10001C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5F0);
  }

  return result;
}

unint64_t sub_10000BE80()
{
  result = qword_10001C5F8;
  if (!qword_10001C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C5F8);
  }

  return result;
}

unint64_t sub_10000BED8()
{
  result = qword_10001C600;
  if (!qword_10001C600)
  {
    sub_10000BF5C(&qword_10001C608, qword_100011130);
    sub_10000898C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C600);
  }

  return result;
}

uint64_t sub_10000BF5C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000BFA8()
{
  result = qword_10001C610;
  if (!qword_10001C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C610);
  }

  return result;
}

unint64_t sub_10000C004()
{
  result = qword_10001C618;
  if (!qword_10001C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C618);
  }

  return result;
}

unint64_t sub_10000C05C()
{
  result = qword_10001C620;
  if (!qword_10001C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C620);
  }

  return result;
}

unint64_t sub_10000C0B8()
{
  result = qword_10001C628;
  if (!qword_10001C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C628);
  }

  return result;
}

unint64_t sub_10000C110()
{
  result = qword_10001C630;
  if (!qword_10001C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C630);
  }

  return result;
}

unint64_t sub_10000C168()
{
  result = qword_10001C638;
  if (!qword_10001C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C638);
  }

  return result;
}

unint64_t sub_10000C1C4()
{
  result = qword_10001C640;
  if (!qword_10001C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C640);
  }

  return result;
}

unint64_t sub_10000C21C()
{
  result = qword_10001C648;
  if (!qword_10001C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C648);
  }

  return result;
}

unint64_t sub_10000C2B8()
{
  result = qword_10001C660;
  if (!qword_10001C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C660);
  }

  return result;
}

unint64_t sub_10000C310()
{
  result = qword_10001C668;
  if (!qword_10001C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C668);
  }

  return result;
}

uint64_t sub_10000C3A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000BF5C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s19AppleAccountIntents32AppleAccountMainDynamicDeepLinksVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19AppleAccountIntents32AppleAccountMainDynamicDeepLinksVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_10000C5B8()
{
  result = [objc_allocWithZone(type metadata accessor for AppleAccountSettingsModel()) init];
  static AppleAccountSettingsModel.shared = result;
  return result;
}

id AppleAccountSettingsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *AppleAccountSettingsModel.shared.unsafeMutableAddressor()
{
  if (qword_10001D760 != -1)
  {
    swift_once();
  }

  return &static AppleAccountSettingsModel.shared;
}

id static AppleAccountSettingsModel.shared.getter()
{
  if (qword_10001D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static AppleAccountSettingsModel.shared;

  return v0;
}

void static AppleAccountSettingsModel.shared.setter(uint64_t a1)
{
  if (qword_10001D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AppleAccountSettingsModel.shared;
  static AppleAccountSettingsModel.shared = a1;
}

uint64_t (*static AppleAccountSettingsModel.shared.modify())()
{
  if (qword_10001D760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10000C810@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000C86C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x88);

  return v4(v2, v3);
}

uint64_t (*sub_10000C8F8(uint64_t *a1))()
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_100010564();
  return sub_10000FFBC;
}

uint64_t (*sub_10000C9D0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001B08(&qword_10001C698, &qword_1000116E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__fullname;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001B08(&qword_10001C690, &qword_1000116D8);
  sub_100010544();
  swift_endAccess();
  return sub_10000FFC0;
}

uint64_t sub_10000CB84@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000CBE0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xB8);

  return v4(v2, v3);
}

uint64_t (*sub_10000CC6C(uint64_t *a1))()
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_100010564();
  return sub_10000CD10;
}

uint64_t (*sub_10000CD3C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001B08(&qword_10001C698, &qword_1000116E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__formattedUsername;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001B08(&qword_10001C690, &qword_1000116D8);
  sub_100010544();
  swift_endAccess();
  return sub_10000CEAC;
}

uint64_t sub_10000CEC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100010574();

  return v1;
}

uint64_t sub_10000CF30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xE0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000CF8C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0xE8);

  return v4(v2, v3);
}

uint64_t sub_10000D018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_100010584();
}

uint64_t (*sub_10000D08C(uint64_t *a1))()
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
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_100010564();
  return sub_10000FFBC;
}

void sub_10000D130(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10000D1C0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100001B08(&qword_10001C698, &qword_1000116E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  sub_100001B08(&qword_10001C690, &qword_1000116D8);
  sub_100010554();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_10000D2F8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001B08(&qword_10001C698, &qword_1000116E0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__accountDescription;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001B08(&qword_10001C690, &qword_1000116D8);
  sub_100010544();
  swift_endAccess();
  return sub_10000FFC0;
}

char *AppleAccountSettingsModel.init()()
{
  v28 = sub_100001B08(&qword_10001C6A0, &qword_100011778);
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v28);
  v4 = &v27 - v3;
  v5 = sub_100001B08(&qword_10001C690, &qword_1000116D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__fullname;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_100010534();
  v11 = *(v6 + 32);
  v11(&v0[v10], v9, v5);
  v12 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__formattedUsername;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_100010534();
  v11(&v0[v12], v9, v5);
  v13 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__accountDescription;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_100010534();
  v11(&v0[v13], v9, v5);
  v14 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__account;
  v30 = 0;
  sub_100001B08(&qword_10001C6A8, &qword_100011780);
  sub_100010534();
  (*(v1 + 32))(&v0[v14], v4, v28);
  v15 = objc_opt_self();
  result = [v15 defaultStore];
  if (result)
  {
    v17 = result;
    v18 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel_serviceOwnersManager;
    v19 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:result];

    *&v0[v18] = v19;
    result = [v15 defaultStore];
    if (result)
    {
      v20 = result;
      v21 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel_accountManager;
      v22 = [objc_allocWithZone(AIDAAccountManager) initWithAccountStore:result];

      *&v0[v21] = v22;
      v23 = type metadata accessor for AppleAccountSettingsModel();
      v29.receiver = v0;
      v29.super_class = v23;
      v24 = objc_msgSendSuper2(&v29, "init");
      v25 = *&v24[OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel_accountManager];
      v26 = v24;
      [v25 setDelegate:v26];
      sub_10000E8BC();

      return v26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AppleAccountSettingsModel()
{
  result = qword_10001D850;
  if (!qword_10001D850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000D858(Class *a1)
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v3 = result;
    v4 = [objc_allocWithZone(*a1) initWithAccountStore:result];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D8EC()
{
  v1 = v0;
  v2 = sub_100001B08(&qword_10001C790, &qword_1000119F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_1000104E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((swift_isaMask & *v0) + 0x110))(v9);
  if (v12)
  {
    v13 = v12;
    *&v33 = sub_1000105F4();
    *(&v33 + 1) = v14;
    v15 = [v13 objectForKeyedSubscript:sub_100010694()];
    swift_unknownObjectRelease();
    if (v15)
    {
      sub_100010624();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33 = v31;
    v34 = v32;
    if (*(&v32 + 1))
    {
      v18 = swift_dynamicCast();
      v19 = v30;
      if (!v18)
      {
        v19 = 0;
      }

      v29 = v19;
    }

    else
    {
      sub_10000FD94(&v33);
      v29 = 0;
    }

    *&v33 = sub_1000105F4();
    *(&v33 + 1) = v20;
    v21 = [v13 objectForKeyedSubscript:sub_100010694()];
    swift_unknownObjectRelease();
    if (v21)
    {
      sub_100010624();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33 = v31;
    v34 = v32;
    if (*(&v32 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10000FD94(&v33);
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    sub_1000104C4();
    v22 = objc_opt_self();
    v23 = sub_1000104D4();
    v24 = [v22 localizedStringFromPersonNameComponents:v23 style:2 options:0];

    v25 = sub_1000105F4();
    v27 = v26;

    (*((swift_isaMask & *v1) + 0x88))(v25, v27);
    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    v16 = *((swift_isaMask & *v0) + 0x88);

    return v16();
  }
}

uint64_t sub_10000DD54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100010574();

  return v1;
}

uint64_t sub_10000DDC8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x110))();
  *a2 = result;
  return result;
}

uint64_t sub_10000DE2C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0x118);
  v4 = *a1;
  return v3(v2);
}

void sub_10000DE9C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  v4 = v1;
  sub_100010584();
  sub_10000D8EC();
}

void (*sub_10000DF1C(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100010574();

  *a1 = a1[1];
  return sub_10000DFB0;
}

void sub_10000DFB0(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  v5 = *(a1 + 16);
  v8 = v4;
  v5;
  if (a2)
  {
    v6 = v8;
    sub_100010584();
    sub_10000D8EC();

    v7 = *a1;
  }

  else
  {
    sub_100010584();
    sub_10000D8EC();
    v7 = v8;
  }
}

uint64_t sub_10000E0B8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  sub_100001B08(a2, a3);
  sub_100010544();
  return swift_endAccess();
}

uint64_t sub_10000E130(uint64_t a1)
{
  v2 = sub_100001B08(&qword_10001C6B0, &qword_1000117D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_100001B08(&qword_10001C6A0, &qword_100011778);
  sub_100010554();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10000E268(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100001B08(&qword_10001C6B0, &qword_1000117D0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel__account;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100001B08(&qword_10001C6A0, &qword_100011778);
  sub_100010544();
  swift_endAccess();
  return sub_10000FFC0;
}

void sub_10000E3D8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_100010554();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_100010554();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

id sub_10000E578(uint64_t *a1)
{
  v2 = *a1;
  result = [*(v1 + OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel_accountManager) accounts];
  if (result)
  {
    v4 = result;
    type metadata accessor for AIDAServiceType(0);
    sub_10000EA54();
    sub_10000FCE8(&qword_10001C6C0);
    v5 = sub_1000105B4();

    if (*(v5 + 16) && (v6 = sub_10000F110(v2), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = v8;
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000E658()
{
  result = (*((swift_isaMask & *v0) + 0x140))();
  if (!result)
  {
    v2 = *((swift_isaMask & *v0) + 0x148);

    return v2();
  }

  return result;
}

void sub_10000E704(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_10000F734(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_10000F110(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_10000F89C();
        v13 = v16;
      }

      sub_10000F56C(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_10000E8BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel_accountManager);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_10000FE34;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10000EAA0;
  v6[3] = &unk_100019048;
  v3 = _Block_copy(v6);

  [v1 addAccountChangeObserver:v0 handler:v3];
  _Block_release(v3);
  v4 = (*((swift_isaMask & *v0) + 0x150))();
  return (*((swift_isaMask & *v0) + 0x118))(v4);
}

unint64_t sub_10000EA54()
{
  result = qword_10001C6B8;
  if (!qword_10001C6B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C6B8);
  }

  return result;
}

uint64_t sub_10000EAA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for AIDAServiceType(0);
  sub_10000EA54();
  sub_10000FCE8(&qword_10001C6C0);
  v3 = sub_1000105B4();
  v4 = sub_1000105B4();

  v2(v3, v4);
}

id AppleAccountSettingsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleAccountSettingsModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000ECF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppleAccountSettingsModel();
  result = sub_100010524();
  *a1 = result;
  return result;
}

uint64_t sub_10000ED34()
{
  v1 = *v0;
  sub_1000105F4();
  v2 = sub_100010614();

  return v2;
}

uint64_t sub_10000ED70()
{
  v1 = *v0;
  sub_1000105F4();
  sub_100010604();
}

Swift::Int sub_10000EDC4()
{
  v1 = *v0;
  sub_1000105F4();
  sub_1000106B4();
  sub_100010604();
  v2 = sub_1000106C4();

  return v2;
}

uint64_t sub_10000EE40(uint64_t a1, id *a2)
{
  result = sub_1000105D4();
  *a2 = 0;
  return result;
}

uint64_t sub_10000EEB8(uint64_t a1, id *a2)
{
  v3 = sub_1000105E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000EF38@<X0>(void *a1@<X8>)
{
  sub_1000105F4();
  v2 = sub_1000105C4();

  *a1 = v2;
  return result;
}

uint64_t sub_10000EF7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000105F4();
  v6 = v5;
  if (v4 == sub_1000105F4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100010674();
  }

  return v9 & 1;
}

uint64_t sub_10000F004@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000105C4();

  *a2 = v5;
  return result;
}

uint64_t sub_10000F04C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000105F4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000F078(uint64_t a1)
{
  v2 = sub_10000FCE8(&qword_10001C6C0);
  v3 = sub_10000FCE8(&qword_10001C780);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10000F110(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000105F4();
  sub_1000106B4();
  sub_100010604();
  v4 = sub_1000106C4();

  return sub_10000F1A4(a1, v4);
}

unint64_t sub_10000F1A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000105F4();
      v9 = v8;
      if (v7 == sub_1000105F4() && v9 == v10)
      {
        break;
      }

      v12 = sub_100010674();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t sub_10000F2A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001B08(&qword_10001C788, &qword_1000119E8);
  v38 = a2;
  result = sub_100010654();
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
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_1000105F4();
      sub_1000106B4();
      sub_100010604();
      v27 = sub_1000106C4();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v39 = (v19 - 1) & v19;
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

void sub_10000F56C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100010634() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1000105F4();
      sub_1000106B4();
      v11 = v10;
      sub_100010604();
      v12 = sub_1000106C4();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_10000F734(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10000F110(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10000F2A8(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10000F110(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType(0);
        sub_1000106A4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10000F89C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

id sub_10000F89C()
{
  v1 = v0;
  sub_100001B08(&qword_10001C788, &qword_1000119E8);
  v2 = *v0;
  v3 = sub_100010644();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *_s19AppleAccountIntents0aB13SettingsModelC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19AppleAccountIntents25AppleAccountSettingsModel_serviceOwnersManager);
  v2 = AIDAServiceTypeCloud;
  v3 = [v1 accountForService:AIDAServiceTypeCloud];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_10000E704(v4, v2);
  }

  v6 = AIDAServiceTypeStore;
  v7 = [v1 accountForService:AIDAServiceTypeStore];
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v10 = v8;
    sub_10000E704(v8, v9);
  }

  return &_swiftEmptyDictionarySingleton;
}

void sub_10000FAFC()
{
  sub_10000FC00(319, &qword_10001C750, &type metadata for String, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000FC50();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000FC00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10000FC50()
{
  if (!qword_10001C758)
  {
    sub_10000BF5C(&qword_10001C6A8, &qword_100011780);
    v0 = sub_100010594();
    if (!v1)
    {
      atomic_store(v0, &qword_10001C758);
    }
  }
}

uint64_t sub_10000FCE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FD94(uint64_t a1)
{
  v2 = sub_100001B08(&qword_10001C798, qword_1000119F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FDFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000FE34(uint64_t a1, uint64_t a2)
{
  v3 = AIDAServiceTypeCloud;
  if (*(a1 + 16) && ((v5 = sub_10000F110(AIDAServiceTypeCloud), (v6 & 1) != 0) || *(a1 + 16) && (v5 = sub_10000F110(AIDAServiceTypeStore), (v7 & 1) != 0)))
  {
    v8 = *(*(a1 + 56) + 8 * v5);
    v9 = v8;
    if (!*(a2 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if (!*(a2 + 16))
    {
      goto LABEL_12;
    }
  }

  v10 = sub_10000F110(v3);
  if (v11 & 1) != 0 || *(a2 + 16) && (v10 = sub_10000F110(AIDAServiceTypeStore), (v12))
  {
    v13 = *(*(a2 + 56) + 8 * v10);
    v14 = v13;
    goto LABEL_13;
  }

LABEL_12:
  v13 = 0;
LABEL_13:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_16:
    v16 = v8;
    goto LABEL_17;
  }

  v16 = Strong;
  if (v13)
  {

    goto LABEL_16;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  (*((swift_isaMask & *Strong) + 0x118))(0);
  v13 = v8;
LABEL_17:

  v16 = v13;
LABEL_18:
}

uint64_t sub_10000FFA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100010000()
{
  result = qword_10001C800;
  if (!qword_10001C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C800);
  }

  return result;
}

uint64_t sub_100010054(uint64_t a1)
{
  v2 = sub_100010150();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100010000();
  sub_100010514();
  return 0;
}

unint64_t sub_100010150()
{
  result = qword_10001C808;
  if (!qword_10001C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C808);
  }

  return result;
}