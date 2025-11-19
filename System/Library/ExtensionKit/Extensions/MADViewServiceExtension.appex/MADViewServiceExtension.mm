uint64_t sub_1000014F8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100001994(&qword_100010130, &qword_100007D40);
  swift_storeEnumTagMultiPayload();
  v2 = sub_1000070B4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = sub_100007004();
  result = type metadata accessor for ManagedAppCell();
  v7 = a1 + *(result + 20);
  *v7 = sub_1000019DC;
  *(v7 + 1) = v5;
  v7[16] = 0;
  return result;
}

uint64_t sub_1000015A8()
{
  v0 = type metadata accessor for ManagedAppCell();
  v1 = sub_100001860(&qword_100010128, type metadata accessor for ManagedAppCell);

  return MADViewServiceScene.init(content:)(sub_1000014F8, 0, v0, v1);
}

uint64_t sub_10000163C(uint64_t a1)
{
  v2 = sub_10000180C();

  return MADViewServiceExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000016E8();
  sub_100006F34();
  return 0;
}

unint64_t sub_1000016E8()
{
  result = qword_100010108;
  if (!qword_100010108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010108);
  }

  return result;
}

unint64_t sub_100001754()
{
  result = qword_100010110;
  if (!qword_100010110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010110);
  }

  return result;
}

unint64_t sub_10000180C()
{
  result = qword_100010120;
  if (!qword_100010120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010120);
  }

  return result;
}

uint64_t sub_100001860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000018CC(uint64_t a1)
{
  v2 = *(*(sub_100007104() - 8) + 64);
  __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100007214();
}

uint64_t sub_100001994(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000019E8()
{
  result = qword_100010138;
  if (!qword_100010138)
  {
    sub_100001A4C(&qword_100010140, &qword_1000079C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010138);
  }

  return result;
}

uint64_t sub_100001A4C(uint64_t *a1, uint64_t *a2)
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

__n128 sub_100001A94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001AA4(uint64_t a1, int a2)
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

uint64_t sub_100001AC4(uint64_t result, int a2, int a3)
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

__n128 sub_100001B00(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001B0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001B2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_100001B80(uint64_t a1, unint64_t *a2)
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

void sub_100001BDC()
{
  sub_100001F74(319, &qword_1000101F0, &type metadata accessor for AsyncImagePhase, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_100001F74(319, &qword_1000101F8, &type metadata accessor for URLRequest, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100001FD8();
      if (v2 <= 0x3F)
      {
        sub_100002024();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100001D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001994(&qword_100010160, qword_100007A20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001994(qword_100010168, &qword_100007D60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100001E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001994(&qword_100010160, qword_100007A20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001994(qword_100010168, &qword_100007D60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100001F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100001FD8()
{
  result = qword_100010200;
  if (!qword_100010200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010200);
  }

  return result;
}

unint64_t sub_100002024()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

uint64_t sub_1000020B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v4 = sub_1000073A4();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  v6 = (__chkstk_darwin)();
  v50 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v46 = *(v8 + 64);
  __chkstk_darwin(v6);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100007164();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 16);
  v49 = *(v42 - 8);
  v15 = *(v49 + 64);
  __chkstk_darwin(v12);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001A4C(&qword_100010210, &qword_100007AC8);
  v17 = sub_100007174();
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  v19 = __chkstk_darwin(v17);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v47 = &v40 - v21;
  v22 = v2 + *(a1 + 44);
  v23 = *v22;
  v24 = *(v22 + 8);
  sub_100001994(&qword_100010160, qword_100007A20);
  sub_100007334();
  v23(v14);
  (*(v10 + 8))(v14, v44);
  v25 = *(a1 + 36);
  v26 = v45;
  (*(v8 + 16))(v45, v2, a1);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v29 = *(a1 + 24);
  v30 = v42;
  *(v28 + 16) = v42;
  *(v28 + 24) = v29;
  (*(v8 + 32))(v28 + v27, v26, a1);
  sub_100001994(qword_100010168, &qword_100007D60);
  sub_100003520();
  v31 = v50;
  sub_100007394();
  v32 = v43;
  v33 = v41;
  sub_1000072C4();

  (*(v51 + 8))(v31, v52);
  (*(v49 + 8))(v33, v30);
  v34 = sub_1000035FC();
  v54 = v29;
  v55 = v34;
  swift_getWitnessTable();
  v36 = v47;
  v35 = v48;
  v37 = *(v48 + 16);
  v37(v47, v32, v17);
  v38 = *(v35 + 8);
  v38(v32, v17);
  v37(v53, v36, v17);
  return (v38)(v36, v17);
}

uint64_t sub_1000025A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_100007164();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = *(*(sub_100001994(qword_100010168, &qword_100007D60) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_100006EF4();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  sub_100007384();
  v3[17] = sub_100007374();
  v12 = sub_100007364();
  v3[18] = v12;
  v3[19] = v11;

  return _swift_task_switch(sub_10000273C, v12, v11);
}

uint64_t sub_10000273C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = type metadata accessor for CachedAsyncImage();
  sub_100003660(v6 + *(v7 + 36), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[17];
    v9 = v0[13];

    sub_1000036D0(v9);
    v10 = v0[16];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[11];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[6];
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v0[20] = *(v16 + *(v7 + 40));
    v17 = async function pointer to NSURLSession.data(for:delegate:)[1];
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_1000028D4;
    v19 = v0[16];

    return NSURLSession.data(for:delegate:)(v19, 0);
  }
}

uint64_t sub_1000028D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 168);
  v8 = *v4;
  v6[22] = a1;
  v6[23] = a2;
  v6[24] = a3;
  v6[25] = v3;

  v9 = v5[19];
  v10 = v5[18];
  if (v3)
  {
    v11 = sub_100002EF8;
  }

  else
  {
    v11 = sub_100002A1C;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100002A1C()
{
  v54 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[17];

  v4 = objc_allocWithZone(UIImage);
  isa = sub_100006F14().super.isa;
  v6 = [v4 initWithData:isa];

  if (v6)
  {
    v7 = v0[20];
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    v12 = v0[6];
    *v8 = sub_1000072E4();
    (*(v11 + 104))(v8, enum case for AsyncImagePhase.success(_:), v10);
    (*(v11 + 16))(v9, v8, v10);

    sub_100001994(&qword_100010160, qword_100007A20);
    sub_100007344();
    (*(v11 + 8))(v8, v10);
    v13 = [v7 configuration];
    v14 = [v13 URLCache];

    v15 = v0[23];
    v16 = v0[24];
    v17 = v0[22];
    if (v14)
    {
      v18 = v0[16];
      v19 = objc_allocWithZone(NSCachedURLResponse);
      v20 = v16;
      sub_100003E1C(v17, v15);
      v21 = sub_100006F14().super.isa;
      v22 = [v19 initWithResponse:v20 data:v21];

      sub_100003DC8(v17, v15);
      v23 = sub_100006ED4();
      [v14 storeCachedResponse:v22 forRequest:v23];

      sub_100003DC8(v17, v15);
    }

    else
    {

      sub_100003DC8(v17, v15);
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    v24 = v0[23];
    v25 = v0[24];
    v26 = v0[22];
    v28 = v0[15];
    v27 = v0[16];
    v29 = v0[14];
    sub_100003D74();
    v30 = swift_allocError();
    swift_willThrow();
    (*(v28 + 8))(v27, v29);

    sub_100003DC8(v26, v24);
    if (qword_1000100F0 != -1)
    {
      swift_once();
    }

    v31 = sub_100006F94();
    sub_100003748(v31, qword_100010808);
    swift_errorRetain();
    v32 = sub_100006F74();
    v33 = sub_1000073C4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v37 = v0[2];
      v36 = v0[3];
      v38 = v0[4];
      v39 = sub_100007414();
      v41 = sub_100003780(v39, v40, &v53);

      *(v34 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "CachedAsyncImageError: %s", v34, 0xCu);
      sub_100003D28(v35);
    }

    v43 = v0[11];
    v42 = v0[12];
    v44 = v0[9];
    v45 = v0[10];
    v46 = v0[6];
    *v42 = v30;
    (*(v45 + 104))(v42, enum case for AsyncImagePhase.failure(_:), v44);
    (*(v45 + 16))(v43, v42, v44);
    sub_100001994(&qword_100010160, qword_100007A20);
    sub_100007344();
    (*(v45 + 8))(v42, v44);
  }

  v47 = v0[16];
  v48 = v0[12];
  v49 = v0[13];
  v50 = v0[11];

  v51 = v0[1];

  return v51();
}

uint64_t sub_100002EF8()
{
  v29 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[25];
  if (qword_1000100F0 != -1)
  {
    swift_once();
  }

  v6 = sub_100006F94();
  sub_100003748(v6, qword_100010808);
  swift_errorRetain();
  v7 = sub_100006F74();
  v8 = sub_1000073C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_100007414();
    v16 = sub_100003780(v14, v15, &v28);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "CachedAsyncImageError: %s", v9, 0xCu);
    sub_100003D28(v10);
  }

  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[9];
  v20 = v0[10];
  v21 = v0[6];
  *v17 = v5;
  (*(v20 + 104))(v17, enum case for AsyncImagePhase.failure(_:), v19);
  (*(v20 + 16))(v18, v17, v19);
  sub_100001994(&qword_100010160, qword_100007A20);
  sub_100007344();
  (*(v20 + 8))(v17, v19);
  v22 = v0[16];
  v23 = v0[12];
  v24 = v0[13];
  v25 = v0[11];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000031A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CachedAsyncImage();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = sub_100007164();
  (*(*(v8 - 8) + 8))(v0 + v5, v8);
  v9 = *(v0 + v5 + *(sub_100001994(&qword_100010160, qword_100007A20) + 28));

  v10 = v3[9];
  v11 = sub_100006EF4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = *(v7 + v3[11] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_100003344()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for CachedAsyncImage() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000342C;

  return sub_1000025A4(v0 + v5, v2, v3);
}

uint64_t sub_10000342C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100003520()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    sub_100001A4C(qword_100010168, &qword_100007D60);
    sub_1000035A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

unint64_t sub_1000035A4()
{
  result = qword_100010220;
  if (!qword_100010220)
  {
    sub_100006EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010220);
  }

  return result;
}

unint64_t sub_1000035FC()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    sub_100001A4C(&qword_100010210, &qword_100007AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

uint64_t sub_100003660(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001994(qword_100010168, &qword_100007D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000036D0(uint64_t a1)
{
  v2 = sub_100001994(qword_100010168, &qword_100007D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003748(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003780(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000384C(v11, 0, 0, 1, a1, a2);
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
    sub_100003E70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003D28(v11);
  return v7;
}

unint64_t sub_10000384C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003958(a5, a6);
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
    result = sub_100007404();
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

char *sub_100003958(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000039A4(a1, a2);
  sub_100003AD4(&off_10000C910);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000039A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003BC0(v5, 0);
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

  result = sub_100007404();
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
        v10 = sub_100007354();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003BC0(v10, 0);
        result = sub_1000073F4();
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

uint64_t sub_100003AD4(uint64_t result)
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

  result = sub_100003C34(result, v12, 1, v3);
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

void *sub_100003BC0(uint64_t a1, uint64_t a2)
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

  sub_100001994(&qword_100010238, &unk_100007AE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003C34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001994(&qword_100010238, &unk_100007AE0);
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

uint64_t sub_100003D28(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100003D74()
{
  result = qword_100010230;
  if (!qword_100010230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010230);
  }

  return result;
}

uint64_t sub_100003DC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003E1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003F10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100001A4C(&qword_100010210, &qword_100007AC8);
  sub_100007174();
  sub_1000035FC();
  return swift_getWitnessTable();
}

uint64_t sub_100003F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v74 = a1;
  v5 = sub_100001994(&qword_100010160, qword_100007A20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v64 = &v63 - v7;
  v8 = sub_100001994(qword_100010168, &qword_100007D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v70 = &v63 - v10;
  v11 = sub_100006EF4();
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001994(&qword_1000103C0, &qword_100007D48);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v63 - v16;
  v18 = sub_100006F04();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v65 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v63 - v23;
  v25 = sub_100007164();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = [objc_opt_self() defaultSessionConfiguration];
  v73 = [objc_allocWithZone(NSURLCache) init];
  [v30 setURLCache:?];
  v31 = objc_opt_self();
  v71 = v30;
  v32 = [v31 sessionWithConfiguration:v30];
  v33 = sub_100001994(&qword_100010328, &qword_100007BF0);
  *(a4 + v33[10]) = v32;
  v34 = (a4 + v33[11]);
  v35 = v67;
  *v34 = v66;
  v34[1] = v35;
  v36 = *(v26 + 104);
  v66 = v26 + 104;
  v36(v29, enum case for AsyncImagePhase.empty(_:), v25);
  v63 = v29;
  v67 = v25;
  sub_100007324();
  sub_1000067AC(v74, v17, &qword_1000103C0, &qword_100007D48);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v37 = v68;
    v38 = v69;
    sub_100006814(v17, &qword_1000103C0, &qword_100007D48);
    if (qword_1000100F0 != -1)
    {
      swift_once();
    }

    v39 = sub_100006F94();
    sub_100003748(v39, qword_100010808);
    v40 = sub_100006F74();
    v41 = sub_1000073E4();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v37;
    v44 = v72;
    if (v42)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "CachedAsyncImage URL is nil", v45, 2u);
    }

    (*(v37 + 56))(a4 + v33[9], 1, 1, v38);
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
    v46 = v33[9];
    (*(v19 + 16))(v65, v24, v18);
    sub_100006EE4();
    (*(v19 + 8))(v24, v18);
    v43 = v68;
    v38 = v69;
    (*(v68 + 56))(a4 + v46, 0, 1, v69);
    v44 = v72;
  }

  v47 = v70;
  sub_1000067AC(a4 + v33[9], v70, qword_100010168, &qword_100007D60);
  v48 = (*(v43 + 48))(v47, 1, v38);
  v49 = v73;
  if (v48 == 1)
  {
    sub_100006814(v74, &qword_1000103C0, &qword_100007D48);

    return sub_100006814(v47, qword_100010168, &qword_100007D60);
  }

  (*(v43 + 32))(v44, v47, v38);
  v51 = sub_100006ED4();
  v52 = [v49 cachedResponseForRequest:v51];

  if (v52)
  {
    v53 = [v52 data];
    v54 = sub_100006F24();
    v56 = v55;

    v57 = objc_allocWithZone(UIImage);
    isa = sub_100006F14().super.isa;
    v59 = [v57 initWithData:isa];

    if (v59)
    {
      v60 = sub_1000072E4();
      sub_100003DC8(v54, v56);
      v61 = v63;
      *v63 = v60;
      v36(v61, enum case for AsyncImagePhase.success(_:), v67);

      v62 = v64;
      sub_100007324();

      sub_100006814(v74, &qword_1000103C0, &qword_100007D48);
      (*(v43 + 8))(v44, v38);
      return sub_100006874(v62, a4);
    }

    sub_100003DC8(v54, v56);
  }

  else
  {
  }

  sub_100006814(v74, &qword_1000103C0, &qword_100007D48);
  return (*(v43 + 8))(v44, v38);
}

uint64_t sub_1000047A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001994(&qword_100010240, qword_100007B50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100004884(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100001994(&qword_100010240, qword_100007B50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for ManagedAppCell()
{
  result = qword_1000102A0;
  if (!qword_1000102A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004998()
{
  sub_100004A1C();
  if (v0 <= 0x3F)
  {
    sub_100004A74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004A1C()
{
  if (!qword_1000102B0)
  {
    sub_100007104();
    v0 = sub_100007114();
    if (!v1)
    {
      atomic_store(v0, &qword_1000102B0);
    }
  }
}

void sub_100004A74()
{
  if (!qword_1000102B8)
  {
    sub_1000070B4();
    sub_100004AD8();
    v0 = sub_100007134();
    if (!v1)
    {
      atomic_store(v0, &qword_1000102B8);
    }
  }
}

unint64_t sub_100004AD8()
{
  result = qword_1000102C0;
  if (!qword_1000102C0)
  {
    sub_1000070B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102C0);
  }

  return result;
}

uint64_t sub_100004B4C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v60 = sub_100007104();
  v59 = *(v60 - 8);
  v2 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100006FB4();
  v55 = *(v56 - 8);
  v4 = *(v55 + 64);
  __chkstk_darwin(v56);
  v54 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006FC4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v51[1] = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100001994(&qword_1000102F0, &qword_100007BD8);
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v52 = v51 - v10;
  v11 = (v1 + *(type metadata accessor for ManagedAppCell() + 20));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  sub_1000070B4();
  sub_100004AD8();
  sub_100007124();
  v15 = sub_100007034();
  v17 = v16;

  v77 = &type metadata for String;
  v18 = sub_100005F2C();
  v78 = v18;
  v75 = v15;
  v76 = v17;
  sub_100007124();
  v19 = sub_100007084();
  v21 = v20;

  v73 = &type metadata for String;
  v74 = v18;
  v71 = v19;
  v72 = v21;
  v69 = &type metadata for String;
  v70 = v18;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_100007124();
  v22 = sub_100007014();
  v24 = v23;

  v65 = &type metadata for String;
  v66 = v18;
  v63 = v22;
  v64 = v24;
  sub_100007124();
  sub_100006FD4();

  sub_100007124();
  sub_100006FE4();

  v62 = v61;
  sub_100001994(&qword_100010300, &qword_100007BE0);
  sub_100005F88();
  v25 = v52;
  sub_100006FA4();
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  sub_100007124();
  swift_weakInit();

  v28 = (v25 + *(sub_100001994(&qword_100010330, &qword_100007C28) + 36));
  *v28 = KeyPath;
  v28[1] = sub_100006100;
  v28[2] = v27;
  v29 = *(sub_100001994(&qword_100010338, &qword_100007C30) + 36);
  v30 = enum case for OfferView.Space.offerButtonParent(_:);
  v31 = sub_1000070F4();
  (*(*(v31 - 8) + 104))(v25 + v29, v30, v31);
  v32 = sub_100007124();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_100006108;
  *(v33 + 24) = v32;
  v34 = (v25 + *(v53 + 36));
  *v34 = sub_100005E34;
  v34[1] = 0;
  v34[2] = sub_10000610C;
  v34[3] = v33;
  sub_100007124();
  v35 = v54;
  sub_100007054();

  sub_100006138();
  v36 = v57;
  sub_100007284();
  (*(v55 + 8))(v35, v56);
  sub_100006814(v25, &qword_1000102F0, &qword_100007BD8);
  v37 = swift_getKeyPath();
  v38 = v36 + *(sub_100001994(&qword_100010398, &qword_100007C88) + 36);
  v39 = v36;
  *v38 = v37;
  *(v38 + 8) = 1;
  v40 = swift_getKeyPath();
  sub_100007124();
  LOBYTE(v36) = sub_1000070A4();

  v41 = v39 + *(sub_100001994(&qword_1000103A0, &qword_100007CC0) + 36);
  *v41 = v40;
  *(v41 + 8) = v36 & 1;
  v42 = swift_getKeyPath();
  sub_100007124();
  v43 = (v39 + *(sub_100001994(&qword_1000103A8, &qword_100007CF8) + 36));
  v44 = v43 + *(sub_100001994(&qword_1000103B0, &qword_100007D00) + 28);
  sub_100007024();

  *v43 = v42;
  sub_1000072D4();
  v45 = v58;
  sub_100006464(v58);
  v46 = sub_100007044();

  (*(v59 + 8))(v45, v60);
  v47 = swift_getKeyPath();
  v75 = v46;
  v48 = sub_100007144();
  result = sub_100001994(&qword_1000103B8, &qword_100007D38);
  v50 = (v39 + *(result + 36));
  *v50 = v47;
  v50[1] = v48;
  return result;
}

uint64_t sub_1000052F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_100001994(&qword_1000103C0, &qword_100007D48);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v23 = v22 - v5;
  v6 = sub_100001994(&qword_100010328, &qword_100007BF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v24 = v22 - v8;
  v9 = sub_100001994(&qword_1000103C8, &unk_100007D50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  v13 = (a1 + *(type metadata accessor for ManagedAppCell() + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  sub_1000070B4();
  sub_100004AD8();
  sub_100007124();
  v17 = sub_1000070A4();

  if (v17)
  {
    v26 = 0;
    sub_100007264();
    *v12 = v27;
    swift_storeEnumTagMultiPayload();
    sub_100001994(&qword_100010318, &qword_100007BE8);
    sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
    sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0);
    return sub_100007264();
  }

  v22[1] = v6;
  sub_100007124();
  v18 = sub_100007094();

  if (v18)
  {
    v28 = 1;
    sub_100007264();
    *v12 = v29;
    swift_storeEnumTagMultiPayload();
    sub_100001994(&qword_100010318, &qword_100007BE8);
    sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
    sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0);
    return sub_100007264();
  }

  sub_100007124();
  v20 = v23;
  sub_100006FF4();

  v21 = v24;
  sub_100003F88(v20, sub_100005784, 0, v24);
  sub_1000067AC(v21, v12, &qword_100010328, &qword_100007BF0);
  swift_storeEnumTagMultiPayload();
  sub_100001994(&qword_100010318, &qword_100007BE8);
  sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
  sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0);
  sub_100007264();
  return sub_100006814(v21, &qword_100010328, &qword_100007BF0);
}

uint64_t sub_100005784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_100006F54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000072F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007164();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v14 + 96))(v17, v13);
    v19 = *v17;
    (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
    v20 = sub_100007304();
    (*(v9 + 8))(v12, v8);
    v30 = v20;
    LOBYTE(v31) = 0;
    swift_retain_n();
    sub_100007264();
    v30 = v32;
    v31 = v33;

    sub_100001994(&qword_1000103D0, &qword_100007D68);
    sub_1000068E4(&qword_1000103D8, &qword_1000103D0, &qword_100007D68);
    sub_100007264();
  }

  else
  {
    if (v18 == enum case for AsyncImagePhase.failure(_:))
    {
      (*(v14 + 8))(v17, v13);
    }

    else if (v18 != enum case for AsyncImagePhase.empty(_:))
    {
      v30 = 0;
      v31 = 256;
      sub_100001994(&qword_1000103D0, &qword_100007D68);
      sub_1000068E4(&qword_1000103D8, &qword_1000103D0, &qword_100007D68);
      sub_100007264();
      v24 = v32;
      v25 = v33;
      v26 = v34;
      result = (*(v14 + 8))(v17, v13);
      goto LABEL_10;
    }

    if (qword_100010100 != -1)
    {
      swift_once();
    }

    v21 = sub_100003748(v3, qword_100010820);
    (*(v4 + 16))(v7, v21, v3);
    sub_100007314();
    (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
    v22 = sub_100007304();

    (*(v9 + 8))(v12, v8);
    v30 = v22;
    LOBYTE(v31) = 1;

    sub_100007264();
    v30 = v32;
    v31 = v33;
    sub_100001994(&qword_1000103D0, &qword_100007D68);
    sub_1000068E4(&qword_1000103D8, &qword_1000103D0, &qword_100007D68);
    sub_100007264();
  }

  v24 = v32;
  v25 = v33;
  v26 = v34;
LABEL_10:
  v27 = v29;
  *v29 = v24;
  *(v27 + 8) = v25;
  *(v27 + 9) = v26;
  return result;
}

uint64_t sub_100005D48(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1000071D4();
}

uint64_t sub_100005DB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100007064();
  }

  return result;
}

uint64_t sub_100005E34@<X0>(void *a1@<X8>)
{
  result = sub_100007154();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100005E60(uint64_t a1)
{
  v2 = sub_1000070C4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000071B4();
}

unint64_t sub_100005F2C()
{
  result = qword_1000102F8;
  if (!qword_1000102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000102F8);
  }

  return result;
}

unint64_t sub_100005F88()
{
  result = qword_100010308;
  if (!qword_100010308)
  {
    sub_100001A4C(&qword_100010300, &qword_100007BE0);
    sub_1000068E4(&qword_100010310, &qword_100010318, &qword_100007BE8);
    sub_100006C6C(&qword_100010320, &qword_100010328, &qword_100007BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010308);
  }

  return result;
}

uint64_t sub_100006060@<X0>(uint64_t (**a1)(double *a1)@<X8>)
{
  v2 = sub_1000071C4();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_10000677C;
  a1[1] = result;
  return result;
}

uint64_t sub_1000060C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000610C(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_100006138()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    sub_100001A4C(&qword_1000102F0, &qword_100007BD8);
    sub_1000061F0();
    sub_100006C6C(&qword_100010388, &qword_100010390, &qword_100007C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

unint64_t sub_1000061F0()
{
  result = qword_100010348;
  if (!qword_100010348)
  {
    sub_100001A4C(&qword_100010338, &qword_100007C30);
    sub_1000062A8();
    sub_100006C6C(&qword_100010378, &qword_100010380, &qword_100007C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010348);
  }

  return result;
}

unint64_t sub_1000062A8()
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    sub_100001A4C(&qword_100010330, &qword_100007C28);
    sub_100006C6C(&qword_100010358, &qword_100010360, &qword_100007C38);
    sub_100006C6C(&qword_100010368, &qword_100010370, &qword_100007C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010350);
  }

  return result;
}

uint64_t sub_10000638C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100007184();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000063E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000071E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100006464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100007254();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001994(&qword_100010130, &qword_100007D40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000067AC(v2, &v17 - v11, &qword_100010130, &qword_100007D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100007104();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1000073D4();
    v16 = sub_100007274();
    sub_100006F64();

    sub_100007244();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100006664(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000066B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007224();
  *a1 = result;
  return result;
}

uint64_t sub_1000066DC(uint64_t *a1)
{
  v1 = *a1;

  return sub_100007234();
}

uint64_t sub_100006708()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006740(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *v8 = a1;
  *&v8[1] = a2;
  *&v8[2] = a3;
  *&v8[3] = a4;
  return v5(v8);
}

uint64_t sub_10000677C(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2], a1[3]);
}

uint64_t sub_1000067AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001994(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006814(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001994(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006874(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001994(&qword_100010160, qword_100007A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000068E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006950()
{
  result = qword_1000103E0;
  if (!qword_1000103E0)
  {
    sub_100001A4C(&qword_1000103B8, &qword_100007D38);
    sub_100006A08();
    sub_100006C6C(&qword_100010418, &qword_100010420, qword_100007D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E0);
  }

  return result;
}

unint64_t sub_100006A08()
{
  result = qword_1000103E8;
  if (!qword_1000103E8)
  {
    sub_100001A4C(&qword_1000103A8, &qword_100007CF8);
    sub_100006AC0();
    sub_100006C6C(&qword_100010410, &qword_1000103B0, &qword_100007D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E8);
  }

  return result;
}

unint64_t sub_100006AC0()
{
  result = qword_1000103F0;
  if (!qword_1000103F0)
  {
    sub_100001A4C(&qword_1000103A0, &qword_100007CC0);
    sub_100006B78();
    sub_100006C6C(&qword_100010400, &qword_100010408, &qword_100007D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F0);
  }

  return result;
}

unint64_t sub_100006B78()
{
  result = qword_1000103F8;
  if (!qword_1000103F8)
  {
    sub_100001A4C(&qword_100010398, &qword_100007C88);
    sub_100001A4C(&qword_1000102F0, &qword_100007BD8);
    sub_100006138();
    swift_getOpaqueTypeConformance2();
    sub_100006C6C(&qword_100010400, &qword_100010408, &qword_100007D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103F8);
  }

  return result;
}

uint64_t sub_100006C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006CBC()
{
  v0 = sub_100006F94();
  sub_100006D3C(v0, qword_100010808);
  sub_100003748(v0, qword_100010808);
  return sub_100006F84();
}

uint64_t *sub_100006D3C(uint64_t a1, uint64_t *a2)
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

id sub_100006DD4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100010428 = result;
  return result;
}

uint64_t sub_100006E2C()
{
  v0 = sub_100006F54();
  sub_100006D3C(v0, qword_100010820);
  sub_100003748(v0, qword_100010820);
  if (qword_1000100F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100010428;
  return sub_100006F44();
}