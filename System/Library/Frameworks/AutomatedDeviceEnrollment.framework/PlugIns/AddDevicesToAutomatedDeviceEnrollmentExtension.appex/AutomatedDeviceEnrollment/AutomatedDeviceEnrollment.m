uint64_t sub_100002040()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10008CC3C();
}

uint64_t sub_10000208C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10008CC2C();
}

Swift::Int sub_1000020E4()
{
  sub_10008E1FC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_10008CC2C();
  return sub_10008E22C();
}

void *sub_10000214C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002168(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_10008CC1C();
}

void sub_100002224(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000022D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100002324()
{
  v1 = *(v0 + 16);
  v2 = sub_10008C7FC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10008C7EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_100009C08(&unk_1000C90E8, &qword_10008F350);
  sub_10000B9F8();
  v5 = sub_10008C7DC();
  v7 = v6;
  sub_10000C3F8(v10, &unk_1000C90E8, &qword_10008F350);

  v11[0] = v5;
  v11[1] = v7;
  v8 = sub_10008E17C();
  sub_10000BAD0(v11);
  v9 = sub_10008DBCC();
  [v1 setValue:v8 forKey:v9];
  swift_unknownObjectRelease();
}

__n128 sub_100002520@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void (*sub_1000025C4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x238uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 560) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v6 = v5[12];
  v5[4] = v5[11];
  v5[5] = v6;
  v5[6] = v5[13];
  v7 = v5[8];
  *v5 = v5[7];
  v5[1] = v7;
  v8 = v5[10];
  v5[2] = v5[9];
  v5[3] = v8;
  return sub_1000026A4;
}

void sub_1000026A4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 560);
  if (a2)
  {
    v4 = v2[5];
    v2[18] = v2[4];
    v2[19] = v4;
    v2[20] = v2[6];
    v5 = v2[1];
    v2[14] = *v2;
    v2[15] = v5;
    v6 = v2[3];
    v2[16] = v2[2];
    v2[17] = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v2[19];
    v2[25] = v2[18];
    v2[26] = v7;
    v2[27] = v2[20];
    v8 = v2[15];
    v2[21] = v2[14];
    v2[22] = v8;
    v9 = v2[17];
    v2[23] = v2[16];
    v2[24] = v9;

    sub_10000C314((v2 + 14), (v2 + 28), &unk_1000C90E8, &qword_10008F350);
    sub_10008CDBC();
    sub_100002324();
    v10 = v2[5];
    v2[11] = v2[4];
    v2[12] = v10;
    v2[13] = v2[6];
    v11 = v2[1];
    v2[7] = *v2;
    v2[8] = v11;
    v12 = v2[3];
    v2[9] = v2[2];
    v2[10] = v12;
    sub_10000C3F8((v2 + 7), &unk_1000C90E8, &qword_10008F350);
  }

  else
  {
    v17 = v2[4];
    v18 = v2[5];
    v19 = v2[6];
    v13 = *v2;
    v14 = v2[1];
    v15 = v2[2];
    v16 = v2[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v2[11] = v17;
    v2[12] = v18;
    v2[13] = v19;
    v2[7] = v13;
    v2[8] = v14;
    v2[9] = v15;
    v2[10] = v16;

    sub_10008CDBC();
    sub_100002324();
  }

  free(v2);
}

uint64_t sub_100002854()
{
  v1 = *(v0 + 16);
  v2 = sub_10008DBCC();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    sub_10008DF4C();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    return sub_10000C3F8(v37, &qword_1000C9338, &qword_10008F488);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v5 = v33;
    v6 = v34;
    v7 = sub_10008C7CC();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_10008C7BC();
    sub_10000C458();
    sub_10008C7AC();

    v30 = v23;
    v31 = v24;
    v32 = v25;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = v22;
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v10 = sub_10008CCDC();
    sub_100009F94(v10, qword_1000D6D38);
    sub_10000C314(&v26, &v19, &unk_1000C90E8, &qword_10008F350);
    v11 = sub_10008CCBC();
    v12 = sub_10008DE1C();
    sub_10000C3F8(&v26, &unk_1000C90E8, &qword_10008F350);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18[0] = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_10000A2D8(0x6F63634164616F6CLL, 0xED00002928746E75, v18);
      *(v13 + 12) = 2082;
      v23 = v30;
      v24 = v31;
      v25 = v32;
      v19 = v26;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      sub_10000C314(&v26, &v17, &unk_1000C90E8, &qword_10008F350);
      sub_100009C08(&unk_1000C90E8, &qword_10008F350);
      v14 = sub_10008DC4C();
      v16 = sub_10000A2D8(v14, v15, v18);

      *(v13 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s Account retrieved from UserDefaults: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;

    sub_10008CDBC();
    sub_100002324();
    return sub_10000B408(v5, v6);
  }

  return result;
}

void sub_100002C3C()
{
  v7 = sub_10000B11C();
  v0 = [objc_allocWithZone(DMTMobileGestaltBackedDeviceInformationPrimitives) init];
  v1 = [v0 deviceUDID];

  if (!v1)
  {
    sub_10008DBDC();
    v1 = sub_10008DBCC();
  }

  v2 = sub_10008DBCC();
  [v7 setValue:v1 forHTTPHeaderField:v2];

  [v7 ak_addClientInfoHeader];
  v3 = sub_10008DBCC();
  v4 = sub_10008DBCC();
  [v7 setValue:v3 forHTTPHeaderField:v4];

  v5 = sub_10008DBCC();
  v6 = sub_10008DBCC();
  [v7 ak_addAuthorizationHeaderWithServiceToken:v5 forAltDSID:v6];

  sub_10008C76C();
}

uint64_t sub_100002E24(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_10008C79C();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100002EF4, 0, 0);
}

uint64_t sub_100002EF4()
{
  v1 = *sub_10000BB24((*(v0 + 152) + 24), *(*(v0 + 152) + 48));
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = sub_100002F94;

  return sub_10007901C();
}

uint64_t sub_100002F94(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 192);
  v6 = *v3;
  v4[25] = a1;
  v4[26] = a2;

  if (v2)
  {
    v8 = v4[22];
    v7 = v4[23];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_1000030EC, 0, 0);
  }
}

uint64_t sub_1000030EC()
{
  v40 = v0;
  if (v0[26])
  {
    v1 = [objc_opt_self() ephemeralSessionConfiguration];
    v0[27] = v1;
    v2 = objc_allocWithZone(AKAppleIDSession);
    v3 = sub_10008DBCC();
    v4 = [v2 initWithIdentifier:v3];

    if (v4)
    {
      v8 = v0[25];
      v7 = v0[26];
      v9 = v0[23];
      v11 = v0[17];
      v10 = v0[18];
      [v1 set_appleIDContext:v4];

      v0[28] = [objc_opt_self() sessionWithConfiguration:v1];
      sub_100002C3C();

      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v13 = v0[22];
      v12 = v0[23];
      v15 = v0[20];
      v14 = v0[21];
      v16 = sub_10008CCDC();
      v0[29] = sub_100009F94(v16, qword_1000D6D38);
      (*(v14 + 16))(v13, v12, v15);
      v17 = sub_10008CCBC();
      v18 = sub_10008DE1C();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v0[21];
      v21 = v0[22];
      v22 = v0[20];
      if (v19)
      {
        v23 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = v38;
        *v23 = 136446210;
        v0[16] = sub_10008C75C();
        sub_100009C08(&qword_1000C9330, &qword_10008F480);
        v24 = sub_10008DC4C();
        v26 = v25;
        v27 = *(v20 + 8);
        v27(v21, v22);
        v28 = sub_10000A2D8(v24, v26, &v39);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v17, v18, "Authtoken request headers: %{public}s", v23, 0xCu);
        sub_10000BC74(v38);
      }

      else
      {

        v27 = *(v20 + 8);
        v27(v21, v22);
      }

      v0[30] = v27;
      v36 = async function pointer to NSURLSession.data(for:delegate:)[1];
      v37 = swift_task_alloc();
      v0[31] = v37;
      *v37 = v0;
      v37[1] = sub_100003584;
      v5 = v0[23];
      v6 = 0;
    }

    else
    {
      __break(1u);
    }

    return NSURLSession.data(for:delegate:)(v5, v6);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v29 = sub_10008CCDC();
    sub_100009F94(v29, qword_1000D6D38);
    v30 = sub_10008CCBC();
    v31 = sub_10008DE2C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "No grand slam token found, unable to fetch nonce", v32, 2u);
    }

    v33 = swift_task_alloc();
    v0[38] = v33;
    *v33 = v0;
    v33[1] = sub_100003B88;
    v34 = v0[19];

    return sub_100003E9C();
  }
}

uint64_t sub_100003584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 248);
  v10 = *v4;
  v8[32] = a1;
  v8[33] = a2;
  v8[34] = a3;
  v8[35] = v3;

  if (v3)
  {

    return _swift_task_switch(sub_100003D24, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v8[36] = v11;
    *v11 = v10;
    v11[1] = sub_100003728;
    v12 = v8[19];

    return sub_100004E74(a1, a2, a3);
  }
}

uint64_t sub_100003728()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_100003DD0;
  }

  else
  {
    v3 = sub_10000383C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000383C()
{
  v37 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  sub_10000B3B4(v2, v3);
  v4 = sub_10000AF70(v2, v3);
  v6 = v5;
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  if (!v6)
  {
    *(v0 + 96) = v7;
    *(v0 + 104) = v8;
    sub_10000B3B4(v7, v8);
    sub_100009C08(&qword_1000C9320, &qword_10008F470);
    if (swift_dynamicCast())
    {
      sub_10000C3E0((v0 + 56), v0 + 16);
      v9 = *(v0 + 48);
      sub_10000BB24((v0 + 16), *(v0 + 40));
      if (sub_10008E05C())
      {
        sub_10000B408(*(v0 + 256), *(v0 + 264));
        v10 = *(v0 + 48);
        sub_10000BB24((v0 + 16), *(v0 + 40));
        sub_10008E04C();
        v4 = *(v0 + 112);
        v6 = *(v0 + 120);
        sub_10000BC74((v0 + 16));
        goto LABEL_9;
      }

      sub_10000BC74((v0 + 16));
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_10000C3F8(v0 + 56, &qword_1000C9328, &qword_10008F478);
    }

    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v4 = sub_10000A880(v12, v11);
    v6 = v13;
    v7 = v12;
    v8 = v11;
  }

  sub_10000B408(v7, v8);
LABEL_9:
  v14 = *(v0 + 232);

  v15 = sub_10008CCBC();
  v16 = sub_10008DE1C();

  v17 = os_log_type_enabled(v15, v16);
  v32 = *(v0 + 264);
  v33 = *(v0 + 272);
  v18 = *(v0 + 256);
  v19 = *(v0 + 240);
  v20 = *(v0 + 216);
  v21 = *(v0 + 224);
  v22 = *(v0 + 184);
  v34 = *(v0 + 168);
  v35 = *(v0 + 160);
  if (v17)
  {
    v31 = *(v0 + 184);
    v23 = swift_slowAlloc();
    v30 = v19;
    v24 = v4;
    v25 = swift_slowAlloc();
    v36 = v25;
    *v23 = 136380675;
    *(v23 + 4) = sub_10000A2D8(v24, v6, &v36);
    _os_log_impl(&_mh_execute_header, v15, v16, "Decoded authorization token: '%{private}s'", v23, 0xCu);
    sub_10000BC74(v25);
    v4 = v24;

    sub_10000B408(v18, v32);
    v30(v31, v35);
  }

  else
  {

    sub_10000B408(v18, v32);
    v19(v22, v35);
  }

  v27 = *(v0 + 176);
  v26 = *(v0 + 184);

  v28 = *(v0 + 8);

  return v28(v4, v6);
}

uint64_t sub_100003B88()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return _swift_task_switch(sub_100003C84, 0, 0);
}

uint64_t sub_100003C84()
{
  sub_100009FCC();
  swift_allocError();
  *v1 = 3;
  swift_willThrow();
  v3 = v0[22];
  v2 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100003D24()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  v1(v3, v4);
  v6 = *(v0 + 280);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100003DD0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);

  sub_10000B408(v3, v1);
  v4(v6, v7);
  v9 = *(v0 + 296);
  v11 = *(v0 + 176);
  v10 = *(v0 + 184);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100003EBC()
{
  v1 = *(v0 + 128);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 16) = 0u;

  sub_10008CDBC();
  sub_100002324();
  v2 = sub_10000BB24((v1 + 24), *(v1 + 48));
  v3 = *v2;
  *(v0 + 136) = *(*v2 + 16);
  v4 = *(v3 + 24);
  *(v0 + 144) = v4;
  *(v0 + 152) = swift_getObjectType();
  v5 = *(v4 + 32);
  v4 += 32;
  *(v0 + 160) = v5;
  *(v0 + 168) = v4 & 0xFFFFFFFFFFFFLL | 0x5359000000000000;
  v6 = *(v4 - 24);
  v8 = sub_10008DD8C();

  return _swift_task_switch(sub_100003FCC, v8, v7);
}

uint64_t sub_100003FCC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  (*(v0 + 160))(0xD000000000000011, 0x8000000100097CC0, *(v0 + 152), *(v0 + 144));
  *(v0 + 176) = 0;

  return _swift_task_switch(sub_100004078, 0, 0);
}

uint64_t sub_100004078()
{
  v1 = *(v0 + 128);
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_100004388;

  return v9(ObjectType, v2);
}

uint64_t sub_10000419C()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_10008CCDC();
  sub_100009F94(v1, qword_1000D6D38);
  v2 = sub_10008CCBC();
  v3 = sub_10008DE2C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[22];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to remove grand slam token on sign out.", v6, 2u);
  }

  v7 = v0[16];
  v9 = *(v7 + 64);
  v8 = *(v7 + 72);
  ObjectType = swift_getObjectType();
  v11 = *(v8 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_100004388;

  return v15(ObjectType, v8);
}

uint64_t sub_100004388()
{
  v1 = *(*v0 + 184);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000447C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_10008C79C();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100004540, 0, 0);
}

uint64_t sub_100004540()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_10000B11C();
  sub_10008C76C();

  v13._object = 0x8000000100097C20;
  v11.value._countAndFlagsBits = v3;
  v11.value._object = v2;
  v13._countAndFlagsBits = 0xD000000000000012;
  sub_10008C78C(v11, v13);
  sub_10008C74C();
  v14._countAndFlagsBits = 0x2D746E65746E6F43;
  v14._object = 0xEC00000065707954;
  v12.value._countAndFlagsBits = 0xD00000000000001FLL;
  v12.value._object = 0x8000000100097C40;
  sub_10008C78C(v12, v14);
  v5 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[9] = v5;
  v0[10] = [objc_opt_self() sessionWithConfiguration:v5];
  v6 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1000046EC;
  v8 = v0[8];

  return NSURLSession.data(for:delegate:)(v8, 0);
}

uint64_t sub_1000046EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 88);
  v10 = *v4;
  v8[12] = a1;
  v8[13] = a2;
  v8[14] = a3;
  v8[15] = v3;

  if (v3)
  {

    return _swift_task_switch(sub_100004D1C, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v8[16] = v11;
    *v11 = v10;
    v11[1] = sub_100004890;
    v12 = v8[5];

    return sub_100004E74(a1, a2, a3);
  }
}

uint64_t sub_100004890()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_100004DB4;
  }

  else
  {
    v3 = sub_1000049A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000049A4()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = sub_10008C7CC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_10008C7BC();
  sub_10000C38C();
  sub_10008C7AC();
  if (v1)
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    sub_10000B408(v9, v7);
    v12 = *(v0 + 64);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 16);
  v16 = *(v15 + 16);
  if (!v16)
  {
    v39 = &_swiftEmptyArrayStorage;
    goto LABEL_22;
  }

  v17 = 0;
  v41 = -v16;
  v18 = v15 + 64;
  v39 = &_swiftEmptyArrayStorage;
  v40 = *(v0 + 16);
  v38 = v15 + 64;
  do
  {
    v19 = (v18 + 40 * v17++);
    while (1)
    {
      if ((v17 - 1) >= *(v15 + 16))
      {
        __break(1u);
        return result;
      }

      v21 = *(v19 - 4);
      v20 = *(v19 - 3);
      v23 = *(v19 - 2);
      v22 = *(v19 - 1);
      v24 = *v19;
      if (!*v19 || v24 != 1)
      {
        break;
      }

LABEL_9:
      ++v17;
      v19 += 40;
      if (v41 + v17 == 1)
      {
        goto LABEL_22;
      }
    }

    v25 = sub_10008E18C();

    if (v25)
    {

      v15 = v40;
      goto LABEL_9;
    }

    v26 = v39;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000A928(0, v39[2] + 1, 1);
      v26 = v39;
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      result = sub_10000A928((v27 > 1), v28 + 1, 1);
      v26 = v39;
    }

    v26[2] = v28 + 1;
    v39 = v26;
    v29 = &v26[5 * v28];
    v29[4] = v21;
    v29[5] = v20;
    v29[6] = v23;
    v29[7] = v22;
    *(v29 + 64) = v24;
    v15 = v40;
    v18 = v38;
  }

  while (v41 + v17);
LABEL_22:
  v31 = *(v0 + 104);
  v30 = *(v0 + 112);
  v32 = *(v0 + 96);
  v33 = *(v0 + 80);
  v35 = *(v0 + 56);
  v34 = *(v0 + 64);
  v36 = *(v0 + 48);

  sub_10000B408(v32, v31);
  (*(v35 + 8))(v34, v36);

  v37 = *(v0 + 8);

  return v37(v39);
}

uint64_t sub_100004D1C()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100004DB4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);

  sub_10000B408(v3, v1);
  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 136);
  v9 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100004E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_10008DC2C() - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_10008CB9C() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_10008CBBC();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100004F90, 0, 0);
}

uint64_t sub_100004F90()
{
  v1 = *(v0 + 32);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 32);
    v12 = sub_10008CCDC();
    sub_100009F94(v12, qword_1000D6D38);
    v13 = v11;
    v14 = sub_10008CCBC();
    v15 = sub_10008DE2C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 32);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = v16;
      *v18 = v16;
      v19 = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Account details request failed with response: %{public}@", v17, 0xCu);
      sub_10000C3F8(v18, &qword_1000C9308, &qword_1000935D0);
    }

    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v23 = *(v0 + 56);
    v22 = *(v0 + 64);

    sub_10008CB7C();
    sub_10000B50C(&_swiftEmptyArrayStorage);
    sub_10000C2BC();
    sub_10008C8CC();
    sub_10008CBAC();
    (*(v21 + 8))(v20, v22);
    swift_willThrow();
    goto LABEL_39;
  }

  v3 = v2;
  v4 = *(v0 + 32);
  v5 = [v3 statusCode];
  if (v5 != 401)
  {
    if (v5 != 403)
    {
      if ((v5 - 300) >= 0xFFFFFFFFFFFFFF9CLL)
      {
        v50 = *(v0 + 80);
        v52 = *(v0 + 48);
        v51 = *(v0 + 56);

        v53 = *(v0 + 8);
LABEL_40:

        return v53();
      }

      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 32);
      v37 = sub_10008CCDC();
      sub_100009F94(v37, qword_1000D6D38);
      v38 = v36;
      v39 = sub_10008CCBC();
      v40 = sub_10008DE2C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = *(v0 + 32);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        *(v42 + 4) = v41;
        *v43 = v41;
        v44 = v41;
        _os_log_impl(&_mh_execute_header, v39, v40, "Account details request failed with response: %{public}@", v42, 0xCu);
        sub_10000C3F8(v43, &qword_1000C9308, &qword_1000935D0);
      }

      v46 = *(v0 + 72);
      v45 = *(v0 + 80);
      v48 = *(v0 + 56);
      v47 = *(v0 + 64);
      v49 = *(v0 + 32);

      sub_10008CB8C();
      sub_10000B50C(&_swiftEmptyArrayStorage);
      sub_10000C2BC();
      sub_10008C8CC();
      sub_10008CBAC();
      (*(v46 + 8))(v45, v47);
      swift_willThrow();

LABEL_39:
      v76 = *(v0 + 80);
      v78 = *(v0 + 48);
      v77 = *(v0 + 56);

      v53 = *(v0 + 8);
      goto LABEL_40;
    }

    v6 = *(v0 + 48);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    sub_10008DC1C();
    v9 = sub_10008DBFC();
    if (v10)
    {
      if (v9 == 0xD000000000000010 && v10 == 0x8000000100097D50)
      {

LABEL_28:
        if (qword_1000C8CF8 != -1)
        {
          swift_once();
        }

        v55 = *(v0 + 32);
        v56 = sub_10008CCDC();
        sub_100009F94(v56, qword_1000D6D38);
        v57 = v55;
        v58 = sub_10008CCBC();
        v59 = sub_10008DE2C();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = *(v0 + 32);
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138543362;
          *(v61 + 4) = v60;
          *v62 = v60;
          v63 = v60;
          _os_log_impl(&_mh_execute_header, v58, v59, "An administrator needs to accept the updated Terms and Conditions: %{public}@", v61, 0xCu);
          sub_10000C3F8(v62, &qword_1000C9308, &qword_1000935D0);
        }

        v64 = *(v0 + 32);

        sub_100009FCC();
        swift_allocError();
        *v65 = 0;
LABEL_38:
        swift_willThrow();

        goto LABEL_39;
      }

      v54 = sub_10008E18C();

      if (v54)
      {
        goto LABEL_28;
      }
    }

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 32);
    v67 = sub_10008CCDC();
    sub_100009F94(v67, qword_1000D6D38);
    v68 = v66;
    v69 = sub_10008CCBC();
    v70 = sub_10008DE2C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 32);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138543362;
      *(v72 + 4) = v71;
      *v73 = v71;
      v74 = v71;
      _os_log_impl(&_mh_execute_header, v69, v70, "This user does not have privileges to add devices. signed in failed: %{public}@", v72, 0xCu);
      sub_10000C3F8(v73, &qword_1000C9308, &qword_1000935D0);
    }

    v64 = *(v0 + 32);

    sub_100009FCC();
    swift_allocError();
    *v75 = 1;
    goto LABEL_38;
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 32);
  v25 = sub_10008CCDC();
  sub_100009F94(v25, qword_1000D6D38);
  v26 = v24;
  v27 = sub_10008CCBC();
  v28 = sub_10008DE2C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v0 + 32);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    *(v30 + 4) = v29;
    *v31 = v29;
    v32 = v29;
    _os_log_impl(&_mh_execute_header, v27, v28, "The grand slam token expired, the user has to sign in again. response: %{public}@", v30, 0xCu);
    sub_10000C3F8(v31, &qword_1000C9308, &qword_1000935D0);
  }

  v33 = swift_task_alloc();
  *(v0 + 88) = v33;
  *v33 = v0;
  v33[1] = sub_100005854;
  v34 = *(v0 + 40);

  return sub_100003E9C();
}

uint64_t sub_100005854()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_100005950, 0, 0);
}

uint64_t sub_100005950()
{
  v1 = v0[4];
  sub_100009FCC();
  swift_allocError();
  *v2 = 5;
  swift_willThrow();

  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100005A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000C92F8, &qword_10008F438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v9 = sub_100009C08(&qword_1000C92C8, &qword_100090DC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  swift_beginAccess();
  sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  sub_10008CD8C();
  swift_endAccess();
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v5 + 32))(v15 + v14, v8, v4);
  sub_10000BB68();

  v16 = sub_10008CE1C();

  (*(v10 + 8))(v13, v9);
  v17 = *(a2 + 96);
  *(a2 + 96) = v16;
}

void sub_100005C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v44 = sub_100009C08(&qword_1000C92F8, &qword_10008F438);
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v44);
  v43 = &v41 - v7;
  v8 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v41 - v10;
  v12 = *(a1 + 8);
  v46 = *a1;
  v13 = *(a1 + 64);
  v63 = *(a1 + 48);
  v64 = v13;
  v14 = *(a1 + 96);
  v65 = *(a1 + 80);
  v66 = v14;
  v15 = *(a1 + 32);
  v61 = *(a1 + 16);
  v62 = v15;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v16 = sub_10008CCDC();
  sub_100009F94(v16, qword_1000D6D38);
  v17 = sub_10008CCBC();
  v18 = sub_10008DE1C();
  v19 = os_log_type_enabled(v17, v18);
  v45 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000A2D8(0xD000000000000032, 0x8000000100097D10, v48);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s account updated", v20, 0xCu);
    sub_10000BC74(v21);
  }

  if (v12)
  {
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v55 = v61;
    v56 = v62;
    v48[0] = v46;
    v48[1] = v12;
    v49 = v61;
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v54 = v66;
    sub_10000C048(v48, v47);
    v22 = sub_10008CCBC();
    v23 = sub_10008DE1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000A2D8(0xD000000000000032, 0x8000000100097D10, v47);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s we have an account, user signed in", v24, 0xCu);
      sub_10000BC74(v25);
    }

    v26 = v45;
    if (*(v45 + 96))
    {
      v27 = *(v45 + 96);

      sub_10008CCFC();
    }

    v28 = sub_10008DDEC();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    v29 = v43;
    v30 = v44;
    (*(v5 + 16))(v43, v42, v44);
    v31 = (*(v5 + 80) + 152) & ~*(v5 + 80);
    v32 = swift_allocObject();
    v33 = v58;
    *(v32 + 88) = v57;
    *(v32 + 104) = v33;
    v34 = v60;
    *(v32 + 120) = v59;
    *(v32 + 136) = v34;
    v35 = v56;
    *(v32 + 56) = v55;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    v36 = v46;
    *(v32 + 32) = v26;
    *(v32 + 40) = v36;
    *(v32 + 48) = v12;
    *(v32 + 72) = v35;
    (*(v5 + 32))(v32 + v31, v29, v30);

    sub_10007B228(0, 0, v11, &unk_10008F450, v32);
  }

  else
  {
    v46 = sub_10008CCBC();
    v37 = sub_10008DE1C();
    if (os_log_type_enabled(v46, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_10000A2D8(0xD000000000000032, 0x8000000100097D10, v48);
      _os_log_impl(&_mh_execute_header, v46, v37, "%s no account yet", v38, 0xCu);
      sub_10000BC74(v39);
    }

    else
    {
      v40 = v46;
    }
  }
}

uint64_t sub_1000061E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  v9 = swift_task_alloc();
  *(v6 + 64) = v9;
  *v9 = v6;
  v9[1] = sub_100006290;

  return sub_100002E24(v7, v8);
}

uint64_t sub_100006290(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  v8 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v6 = sub_100006550;
  }

  else
  {
    v6 = sub_1000063A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000063A8()
{
  v11 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = sub_10008CCDC();
  sub_100009F94(v1, qword_1000D6D38);
  v2 = sub_10008CCBC();
  v3 = sub_10008DE1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000A2D8(0xD000000000000032, 0x8000000100097D10, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s successfully fetched authSessionToken", v4, 0xCu);
    sub_10000BC74(v5);
  }

  v6 = v0[10];
  v7 = v0[7];
  v0[4] = v0[9];
  v0[5] = v6;
  sub_100009C08(&qword_1000C92F8, &qword_10008F438);
  sub_10008DD9C();
  v8 = v0[1];

  return v8();
}

uint64_t sub_100006550()
{
  v15 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  swift_errorRetain();
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10000A2D8(0xD000000000000032, 0x8000000100097D10, &v14);
    *(v6 + 12) = 2082;
    v0[6] = v5;
    swift_errorRetain();
    sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
    v7 = sub_10008DC4C();
    v9 = sub_10000A2D8(v7, v8, &v14);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed fetching authSessionToken: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[11];
  v11 = v0[7];
  v0[3] = 0;
  v0[2] = 0;
  sub_100009C08(&qword_1000C92F8, &qword_10008F438);
  sub_10008DD9C();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000067A0()
{
  v1 = *(v0 + 264);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v2;
  *(v0 + 112) = *(v0 + 224);
  v3 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v4;
  if (*(v0 + 24))
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = swift_task_alloc();
    *(v0 + 272) = v7;
    *v7 = v0;
    v7[1] = sub_1000069CC;
    v8 = *(v0 + 264);

    return sub_100002E24(v5, v6);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v10 = sub_10008CCDC();
    sub_100009F94(v10, qword_1000D6D38);
    v11 = sub_10008CCBC();
    v12 = sub_10008DE2C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No account found, fetch nonce failed", v13, 2u);
    }

    sub_100009FCC();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1000069CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 272);
  v8 = *v3;
  *(*v3 + 280) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100006B48, 0, 0);
  }

  else
  {
    sub_10000C3F8(v6 + 16, &unk_1000C90E8, &qword_10008F350);
    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_100006B48()
{
  v1 = *(v0 + 280);
  sub_10000C3F8(v0 + 16, &unk_1000C90E8, &qword_10008F350);
  *(v0 + 256) = v1;
  swift_errorRetain();
  sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
  if (swift_dynamicCast() && ((v2 = *(v0 + 296), v2 != 5) ? (v3 = v2 == 3) : (v3 = 1), v3))
  {
    v4 = *(v0 + 280);

    v5 = *(v0 + 256);

    v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    *(v0 + 288) = v7;
    v8 = sub_100009C08(&qword_1000C92F0, &qword_10008F430);
    *v7 = v0;
    v7[1] = sub_100006CE8;
    v9 = *(v0 + 264);

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 240, 0, 0, 0xD000000000000032, 0x8000000100097D10, sub_10000BEF0, v9, v8);
  }

  else
  {
    v10 = *(v0 + 256);

    v11 = *(v0 + 280);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100006CE8()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return _swift_task_switch(sub_100006DE4, 0, 0);
}

uint64_t sub_100006DE4()
{
  if (v0[31])
  {
    v1 = v0[30];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    sub_100009FCC();
    swift_allocError();
    *v4 = 5;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100006EB8()
{
  sub_10000BC74((v0 + 24));
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension33UserDefaultsBackedAccountProvider__account;
  v6 = sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserDefaultsBackedAccountProvider()
{
  result = qword_1000C90D0;
  if (!qword_1000C90D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006FE4()
{
  sub_1000070A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000070A4()
{
  if (!qword_1000C90E0)
  {
    sub_100007108(&unk_1000C90E8, &qword_10008F350);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C90E0);
    }
  }
}

uint64_t sub_100007108(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[48] = a6;
  v7[49] = v6;
  v7[46] = a4;
  v7[47] = a5;
  v7[44] = a2;
  v7[45] = a3;
  v7[43] = a1;
  v8 = sub_10008C79C();
  v7[50] = v8;
  v9 = *(v8 - 8);
  v7[51] = v9;
  v10 = *(v9 + 64) + 15;
  v7[52] = swift_task_alloc();

  return _swift_task_switch(sub_10000721C, 0, 0);
}

uint64_t sub_10000721C()
{
  v1 = v0[48];
  v2 = *sub_10000BB24((v0[49] + 24), *(v0[49] + 48));
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_1000072C8;
  v4 = v0[47];

  return sub_1000793E8(v4, v1);
}

uint64_t sub_1000072C8()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[52];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[54] = v8;
    *v8 = v4;
    v8[1] = sub_100007448;
    v9 = v2[49];
    v10 = v2[46];
    v11 = v2[45];

    return sub_100002E24(v11, v10);
  }
}

uint64_t sub_100007448(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 432);
  v6 = *v3;
  v4[55] = a1;
  v4[56] = a2;

  if (v2)
  {
    v7 = v4[52];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100007598, 0, 0);
  }
}

uint64_t sub_100007598()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[52];
  v4 = sub_10000B11C();
  sub_10008C76C();

  v12._object = 0x8000000100097C20;
  v11.value._countAndFlagsBits = v1;
  v11.value._object = v2;
  v12._countAndFlagsBits = 0xD000000000000012;
  sub_10008C78C(v11, v12);
  v5 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[57] = v5;
  v0[58] = [objc_opt_self() sessionWithConfiguration:v5];
  v6 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v7 = swift_task_alloc();
  v0[59] = v7;
  *v7 = v0;
  v7[1] = sub_1000076F4;
  v8 = v0[52];

  return NSURLSession.data(for:delegate:)(v8, 0);
}

uint64_t sub_1000076F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 472);
  v10 = *v4;
  v8[60] = a1;
  v8[61] = a2;
  v8[62] = a3;
  v8[63] = v3;

  if (v3)
  {

    return _swift_task_switch(sub_1000079AC, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v8[64] = v11;
    *v11 = v10;
    v11[1] = sub_100007898;
    v12 = v8[49];

    return sub_100004E74(a1, a2, a3);
  }
}

uint64_t sub_100007898()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_100007C74;
  }

  else
  {
    v3 = sub_100007A58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000079AC()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 400);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 504);
  v7 = *(v0 + 416);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100007A58()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = sub_10008C7CC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_10008C7BC();
  sub_10000BBCC();
  sub_10008C7AC();
  if (v1)
  {
    v7 = *(v0 + 488);
    v8 = *(v0 + 496);
    v9 = *(v0 + 480);
    v10 = *(v0 + 464);
    v11 = *(v0 + 448);
    v12 = *(v0 + 408);
    v30 = *(v0 + 416);
    v13 = *(v0 + 400);

    sub_10000B408(v9, v7);

    (*(v12 + 8))(v30, v13);
    v14 = *(v0 + 416);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 488);
    v18 = *(v0 + 496);
    v19 = *(v0 + 480);
    v20 = *(v0 + 464);
    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v23 = *(v0 + 400);

    sub_10000B408(v19, v17);

    (*(v22 + 8))(v21, v23);
    v24 = *(v0 + 128);
    *(v0 + 216) = *(v0 + 144);
    v25 = *(v0 + 176);
    *(v0 + 232) = *(v0 + 160);
    *(v0 + 248) = v25;
    *(v0 + 264) = *(v0 + 192);
    *(v0 + 200) = v24;
    v26 = swift_task_alloc();
    *(v0 + 528) = v26;
    *v26 = v0;
    v26[1] = sub_100007D40;
    v28 = *(v0 + 440);
    v27 = *(v0 + 448);
    v29 = *(v0 + 392);

    return sub_10000447C(v28, v27);
  }
}

uint64_t sub_100007C74()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  v4 = *(v0 + 456);
  v5 = *(v0 + 448);
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  v8 = *(v0 + 400);

  sub_10000B408(v3, v1);

  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 520);
  v10 = *(v0 + 416);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100007D40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[56];
    sub_10000BC20((v4 + 25));

    v8 = v4[52];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[56];
    v4[67] = a1;

    return _swift_task_switch(sub_100007EB0, 0, 0);
  }
}

uint64_t sub_100007EB0()
{
  v1 = *(v0 + 536);
  v13 = *(v0 + 416);
  v2 = *(v0 + 392);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v7 = *(v0 + 216);
  v8 = *(v0 + 248);
  *(v0 + 304) = *(v0 + 232);
  *(v0 + 320) = v8;
  *(v0 + 336) = *(v0 + 264);
  *(v0 + 272) = *(v0 + 200);
  *(v0 + 288) = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  v9 = *(v0 + 320);
  *(v0 + 80) = *(v0 + 304);
  *(v0 + 96) = v9;
  *(v0 + 112) = *(v0 + 336);
  v10 = *(v0 + 288);
  *(v0 + 48) = *(v0 + 272);
  *(v0 + 64) = v10;
  *(v0 + 120) = v1;

  sub_10008CDBC();
  sub_100002324();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100007FE8(uint64_t a1)
{
  v2[95] = v1;
  v2[94] = a1;
  v3 = sub_10008C79C();
  v2[96] = v3;
  v4 = *(v3 - 8);
  v2[97] = v4;
  v5 = *(v4 + 64) + 15;
  v2[98] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[99] = v6;
  *v6 = v2;
  v6[1] = sub_1000080D8;

  return sub_100006780();
}

uint64_t sub_1000080D8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 792);
  v6 = *v3;
  v4[100] = a1;
  v4[101] = a2;
  v4[102] = v2;

  if (v2)
  {
    v7 = v4[98];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100008230, 0, 0);
  }
}

uint64_t sub_100008230()
{
  v1 = v0[102];
  v2 = v0[94];
  sub_100009C08(&qword_1000C9280, &qword_10008F390);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10008F280;
  v5 = *(v2 + 16);
  v4 = *(v2 + 32);
  v6 = *v2;
  *(v3 + 80) = *(v2 + 48);
  *(v3 + 48) = v5;
  *(v3 + 64) = v4;
  *(v3 + 32) = v6;
  v7 = sub_10008C7FC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_100009C50(v2, (v0 + 64));
  sub_10008C7EC();
  v0[92] = v3;
  sub_100009CAC();
  v10 = sub_10008C7DC();
  v0[103] = v10;
  v0[104] = v11;
  if (v1)
  {
    v12 = v0[101];

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v13 = sub_10008CCDC();
    sub_100009F94(v13, qword_1000D6D38);
    v14 = sub_10008CCBC();
    v15 = sub_10008DE2C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not encode nonce request Info, fetch nonce failed", v16, 2u);
    }

    sub_100009FCC();
    swift_allocError();
    *v17 = 4;
    swift_willThrow();
    v18 = v0[98];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[101];
    v22 = v0[100];
    v23 = v0[98];
    v24 = v10;
    v25 = v11;

    v26 = sub_10000B11C();
    sub_10008C76C();

    v34._object = 0x8000000100097C20;
    v32.value._countAndFlagsBits = v22;
    v32.value._object = v21;
    v34._countAndFlagsBits = 0xD000000000000012;
    sub_10008C78C(v32, v34);
    sub_10008C74C();
    v35._countAndFlagsBits = 0x2D746E65746E6F43;
    v35._object = 0xEC00000065707954;
    v33.value._countAndFlagsBits = 0xD00000000000001FLL;
    v33.value._object = 0x8000000100097C40;
    sub_10008C78C(v33, v35);

    sub_10000B3B4(v24, v25);
    sub_10008C77C();
    v27 = [objc_opt_self() ephemeralSessionConfiguration];
    v0[105] = v27;
    v0[106] = [objc_opt_self() sessionWithConfiguration:v27];
    v28 = async function pointer to NSURLSession.data(for:delegate:)[1];
    v29 = swift_task_alloc();
    v0[107] = v29;
    *v29 = v0;
    v29[1] = sub_100008618;
    v30 = v0[98];

    return NSURLSession.data(for:delegate:)(v30, 0);
  }
}

uint64_t sub_100008618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 856);
  v10 = *v4;
  v8[108] = a1;
  v8[109] = a2;
  v8[110] = a3;
  v8[111] = v3;

  if (v3)
  {

    return _swift_task_switch(sub_100009050, 0, 0);
  }

  else
  {
    v11 = swift_task_alloc();
    v8[112] = v11;
    *v11 = v10;
    v11[1] = sub_1000087C4;
    v12 = v8[95];

    return sub_100004E74(a1, a2, a3);
  }
}

uint64_t sub_1000087C4()
{
  v2 = *(*v1 + 896);
  v5 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {
    v3 = sub_10000910C;
  }

  else
  {
    v3 = sub_1000088D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000088D8()
{
  v101 = v0;
  v2 = v0 + 744;
  v3 = *(v0 + 904);
  v4 = *(v0 + 872);
  v5 = *(v0 + 864);
  v6 = sub_10008C7CC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_10008C7BC();
  sub_10000B45C();
  sub_10008C7AC();
  if (v3)
  {
    v9 = *(v0 + 880);
    v10 = *(v0 + 872);
    v11 = *(v0 + 864);
    v12 = *(v0 + 848);
    v13 = *(v0 + 840);
    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));
    sub_10000B408(v15, v14);

    sub_10000B408(v11, v10);
    v20 = *(v0 + 784);

    v21 = *(v0 + 8);

    return v21();
  }

  v16 = *v2;
  if (*(*v2 + 16))
  {
    *(v0 + 352) = v16[2];
    v17 = v16[3];
    v18 = v16[4];
    v19 = v16[5];
    *(v0 + 409) = *(v16 + 89);
    *(v0 + 384) = v18;
    *(v0 + 400) = v19;
    *(v0 + 368) = v17;
    sub_10000B4B0(v0 + 352, v0 + 432);

    v1 = sub_10000B63C(v0 + 352);
    v4 = v23;
    v87 = v0 + 352;
    if (qword_1000C8CF8 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_41:
    __break(1u);
  }

  swift_once();
LABEL_9:
  v24 = *(v0 + 752);
  v25 = sub_10008CCDC();
  sub_100009F94(v25, qword_1000D6D38);
  sub_100009C50(v24, v0 + 568);

  v26 = sub_10008CCBC();
  v27 = sub_10008DE1C();
  sub_10000B93C(v24);

  v90 = v4;
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v1;
    v29 = *(v0 + 752);
    v30 = swift_slowAlloc();
    *&v94 = swift_slowAlloc();
    *v30 = 136446467;
    v32 = *(v29 + 16);
    v31 = *(v29 + 32);
    v33 = *v29;
    *(v0 + 672) = *(v29 + 48);
    *(v0 + 640) = v32;
    *(v0 + 656) = v31;
    *(v0 + 624) = v33;
    sub_100009C50(v29, v0 + 680);
    v34 = sub_10008DC4C();
    v36 = sub_10000A2D8(v34, v35, &v94);

    *(v30 + 4) = v36;
    v1 = v28;
    *(v30 + 12) = 2081;
    *(v30 + 14) = sub_10000A2D8(v28, v4, &v94);
    _os_log_impl(&_mh_execute_header, v26, v27, "Nonce value for device %{public}s is '%{private}s'", v30, 0x16u);
    swift_arrayDestroy();
  }

  v37 = *(v0 + 760);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v38 = *(v0 + 120);
  v99 = *(v0 + 112);
  v40 = *(v0 + 16);
  v39 = *(v0 + 24);
  v41 = *(v0 + 80);
  v96 = *(v0 + 64);
  v97 = v41;
  v98 = *(v0 + 96);
  v42 = *(v0 + 48);
  v94 = *(v0 + 32);
  v95 = v42;
  if (!v39)
  {
    v66 = v38;
    sub_10000B8E8(v87);
    *(v0 + 240) = v40;
    *(v0 + 248) = 0;
    v67 = v97;
    *(v0 + 288) = v96;
    *(v0 + 304) = v67;
    *(v0 + 320) = v98;
    v68 = v99;
    v69 = v95;
    *(v0 + 256) = v94;
    *(v0 + 272) = v69;
    *(v0 + 336) = v68;
    *(v0 + 344) = v66;
    sub_10000C3F8(v0 + 240, &unk_1000C90E8, &qword_10008F350);
    goto LABEL_36;
  }

  v86 = v1;
  v43 = *(v0 + 408);
  v1 = *(v0 + 416);
  *(v0 + 128) = v40;
  *(v0 + 136) = v39;
  v44 = v97;
  *(v0 + 176) = v96;
  *(v0 + 192) = v44;
  *(v0 + 208) = v98;
  v45 = v99;
  v46 = v95;
  *(v0 + 144) = v94;
  *(v0 + 160) = v46;
  *(v0 + 224) = v45;
  *(v0 + 232) = v38;
  v91 = v38;

  sub_10000C3F8(v0 + 128, &unk_1000C90E8, &qword_10008F350);
  v47 = v91;
  v48 = *(v91 + 16);
  if (!v48)
  {
    v88 = &_swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v4 = 0;
  v92 = -v48;
  v49 = v91 + 64;
  v88 = &_swiftEmptyArrayStorage;
  do
  {
    v50 = (v49 + 40 * v4++);
    while (1)
    {
      if (v4 - 1 >= *(v47 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (!v1)
      {
        goto LABEL_15;
      }

      v51 = *(v50 - 4);
      v52 = *(v50 - 3);
      v53 = *(v50 - 2);
      v54 = *(v50 - 1);
      v55 = *v50;
      if (v51 == v43 && v1 == v52)
      {
        break;
      }

      v57 = *(v50 - 4);
      v58 = *(v50 - 3);
      v59 = sub_10008E18C();
      v47 = v91;
      if (v59)
      {
        goto LABEL_25;
      }

LABEL_15:
      ++v4;
      v50 += 40;
      if (v92 + v4 == 1)
      {
        goto LABEL_33;
      }
    }

    v51 = v43;
LABEL_25:

    v60 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v88;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000A928(0, v88[2] + 1, 1);
      v60 = v100;
    }

    v63 = v60[2];
    v62 = v60[3];
    v64 = v63 + 1;
    v47 = v91;
    if (v63 >= v62 >> 1)
    {
      v89 = v63 + 1;
      v85 = v60[2];
      sub_10000A928((v62 > 1), v63 + 1, 1);
      v64 = v89;
      v63 = v85;
      v47 = v91;
      v60 = v100;
    }

    v60[2] = v64;
    v88 = v60;
    v65 = &v60[5 * v63];
    v65[4] = v51;
    v65[5] = v52;
    v65[6] = v53;
    v65[7] = v54;
    *(v65 + 64) = v55;
    v49 = v91 + 64;
  }

  while (v92 + v4);
LABEL_33:
  sub_10000B8E8(v87);

  if (v88[2])
  {
    v70 = *(v0 + 880);
    v93 = *(v0 + 872);
    v71 = *(v0 + 864);
    v72 = *(v0 + 848);
    v73 = *(v0 + 840);
    v74 = *(v0 + 832);
    v75 = *(v0 + 824);
    v76 = v88[6];
    v77 = v88[7];

    sub_10000B408(v75, v74);

    sub_10000B408(v71, v93);
    v1 = v86;
    goto LABEL_37;
  }

  v1 = v86;
LABEL_36:
  v78 = *(v0 + 880);
  v79 = *(v0 + 872);
  v80 = *(v0 + 864);
  v81 = *(v0 + 840);
  v82 = *(v0 + 832);
  v83 = *(v0 + 824);

  sub_10000B408(v80, v79);
  sub_10000B408(v83, v82);
  v76 = 0;
  v77 = 0xE000000000000000;
LABEL_37:
  (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));

  v84 = *(v0 + 8);

  return v84(v1, v90, v76, v77);
}

uint64_t sub_100009050()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);

  sub_10000B408(v3, v2);
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 888);
  v8 = *(v0 + 784);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000910C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 840);
  v5 = *(v0 + 832);
  v6 = *(v0 + 824);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);

  sub_10000B408(v3, v2);
  sub_10000B408(v6, v5);
  (*(v8 + 8))(v7, v9);
  v10 = *(v0 + 904);
  v11 = *(v0 + 784);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000091F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000092CC;

  return sub_100007150(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000092CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 sub_1000093C0@<Q0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v6;
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v11;
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

uint64_t sub_100009470()
{
  v1 = sub_100009C08(&qword_1000C92C8, &qword_100090DC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  sub_10008CD8C();
  swift_endAccess();
  sub_10000BB68();
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_1000095A0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000092CC;

  return sub_100003E9C();
}

uint64_t sub_100009630(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000096C8;

  return sub_100007FE8(a1);
}

uint64_t sub_1000096C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v5 + 16);
  v17 = *v5;

  v15 = *(v17 + 8);
  if (!v4)
  {
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = a4;
  }

  return v15(v11, v12, v13, v14);
}

uint64_t sub_1000097F0()
{
  *(v1 + 48) = *v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100009884;

  return sub_100006780();
}

uint64_t sub_100009884(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    v6[8] = a2;
    v11 = swift_task_alloc();
    v6[9] = v11;
    *v11 = v8;
    v11[1] = sub_100009A14;
    v12 = v6[6];

    return sub_10000447C(a1, a2);
  }
}

uint64_t sub_100009A14(uint64_t a1)
{
  v3 = *(*v2 + 72);
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(v5 + 80) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100009B68, 0, 0);
  }
}

uint64_t sub_100009B68()
{
  v1 = v0[6];
  v3 = sub_1000025C4(v0 + 2);
  if (*(v2 + 8))
  {
    v4 = *(v2 + 104);
    *(v2 + 104) = v0[10];
  }

  v3((v0 + 2), 0);
  v5 = v0[1];

  return v5();
}

uint64_t sub_100009C08(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100009CAC()
{
  result = qword_1000C9288;
  if (!qword_1000C9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9288);
  }

  return result;
}

uint64_t sub_100009D0C@<X0>(char **a1@<X8>)
{
  if (qword_1000C8D10 != -1)
  {
    swift_once();
  }

  sub_10000BE8C(&qword_1000D6D68, v24);
  v2 = type metadata accessor for KeychainBackedGrandSlamTokenStorage();
  v3 = swift_allocObject();
  v4 = v25;
  v5 = v26;
  sub_10000BB24(v24, v25);
  *(v3 + 16) = (v5[1])(v4, v5);
  *(v3 + 24) = v6;
  sub_10000BC74(v24);
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = qword_1000C8D50;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1000D6DD0;
  v10 = *algn_1000D6DD8;
  v25 = v2;
  v26 = &off_1000C2200;
  v24[0] = v3;
  v11 = type metadata accessor for UserDefaultsBackedAccountProvider();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_10000BCC0(v24, v2);
  v16 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  swift_unknownObjectRetain();
  v21 = sub_10000BD10(v7, v20, v9, v10, v14);

  swift_unknownObjectRelease();
  sub_10000BC74(v24);
  a1[3] = v11;
  a1[4] = &off_1000BEE70;

  *a1 = v21;
  return result;
}

uint64_t sub_100009F94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100009FCC()
{
  result = qword_1000C9290;
  if (!qword_1000C9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9290);
  }

  return result;
}

__n128 sub_10000A020@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = v6;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  return result;
}

void sub_10000A0D0(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v10[11] = a1[4];
  v10[12] = v7;
  v10[13] = a1[6];
  v8 = a1[1];
  v10[7] = *a1;
  v10[8] = v8;
  v9 = a1[3];
  v10[9] = a1[2];
  v10[10] = v9;
  sub_10000C314(v11, v10, &unk_1000C90E8, &qword_10008F350);

  sub_10008CDBC();
  sub_100002324();
}

unint64_t sub_10000A1A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10008E1FC();
  sub_10008DC8C();
  v6 = sub_10008E22C();

  return sub_10000A220(a1, a2, v6);
}

unint64_t sub_10000A220(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10008E18C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10000A2D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000A3A4(v11, 0, 0, 1, a1, a2);
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
    sub_10000B998(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BC74(v11);
  return v7;
}

unint64_t sub_10000A3A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A4B0(a5, a6);
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
    result = sub_10008DFFC();
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

char *sub_10000A4B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000A4FC(a1, a2);
  sub_10000A62C(&off_1000BE808);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000A4FC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000A718(v5, 0);
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

  result = sub_10008DFFC();
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
        v10 = sub_10008DCCC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000A718(v10, 0);
        result = sub_10008DFAC();
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

uint64_t sub_10000A62C(uint64_t result)
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

  result = sub_10000A78C(result, v12, 1, v3);
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

void *sub_10000A718(uint64_t a1, uint64_t a2)
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

  sub_100009C08(&qword_1000C92A0, &qword_10008F3E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000A78C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009C08(&qword_1000C92A0, &qword_10008F3E0);
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

uint64_t sub_10000A880(uint64_t a1, unint64_t a2)
{
  sub_10000B3B4(a1, a2);
  v4 = *(sub_10000ADF4(a1, a2) + 2);
  v5 = sub_10008DC7C();

  return v5;
}

uint64_t sub_10000A8EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008DC7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *sub_10000A928(char *a1, int64_t a2, char a3)
{
  result = sub_10000A9F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000A948(size_t a1, int64_t a2, char a3)
{
  result = sub_10000AB0C(a1, a2, a3, *v3, &qword_1000C9350, qword_10008F498, type metadata accessor for DeviceRowViewModel);
  *v3 = result;
  return result;
}

size_t sub_10000A98C(size_t a1, int64_t a2, char a3)
{
  result = sub_10000AB0C(a1, a2, a3, *v3, &qword_1000C92E8, &unk_10008F420, type metadata accessor for EnrolledDeviceRecord);
  *v3 = result;
  return result;
}

char *sub_10000A9D0(char *a1, int64_t a2, char a3)
{
  result = sub_10000ACE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A9F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009C08(&qword_1000C92A8, &qword_10008F3E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000AB0C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100009C08(a5, a6);
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

char *sub_10000ACE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009C08(&qword_1000C9348, &qword_10008F490);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10000ADF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10008CA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_10000B408(a1, a2);
      return &_swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_10000A718(v11, 0);
      v15 = sub_10008C9EC();
      sub_10000B408(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10000AF70(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_10008DC7C();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_10008DC7C();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_10008C83C();
  if (a1)
  {
    a1 = sub_10008C85C();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_10008C83C() || !__OFSUB__(v5, sub_10008C85C()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_10008C84C();
  return sub_10008DC7C();
}

uint64_t sub_10000B11C()
{
  v0 = *(*(sub_100009C08(&qword_1000CD6D0, &qword_100095B50) - 8) + 64);
  v1 = (__chkstk_darwin)();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v18 - v4;
  sub_10008C9AC();
  sub_10000C314(v5, v3, &qword_1000CD6D0, &qword_100095B50);
  v6 = sub_10008C9BC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v3, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = objc_allocWithZone(NSMutableURLRequest);
    sub_10008C95C(v10);
    v12 = v11;
    v13 = [v9 initWithURL:v11];

    (*(v7 + 8))(v3, v6);
    [v13 setCachePolicy:1];
    v14 = sub_10008DBCC();
    v15 = sub_10008DBCC();
    [v13 setValue:v14 forHTTPHeaderField:v15];

    v16 = sub_10008DBCC();
    v17 = sub_10008DBCC();

    [v13 setValue:v16 forHTTPHeaderField:v17];

    sub_10000C3F8(v5, &qword_1000CD6D0, &qword_100095B50);
    return v13;
  }

  return result;
}

uint64_t sub_10000B3B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000B408(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000B45C()
{
  result = qword_1000C9298;
  if (!qword_1000C9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9298);
  }

  return result;
}

unint64_t sub_10000B50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009C08(&qword_1000C9420, &qword_10008F460);
    v3 = sub_10008E03C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C314(v4, &v13, &qword_1000C9310, &qword_10008F468);
      v5 = v13;
      v6 = v14;
      result = sub_10000A1A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C37C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10000B63C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v4 = sub_10008CCDC();
    sub_100009F94(v4, qword_1000D6D38);
    v5 = sub_10008CCBC();
    v6 = sub_10008DE2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Nonce value missing, request failed.", v7, 2u);
    }

    if (*a1 == 1)
    {
    }

    else
    {
      v8 = sub_10008E18C();

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    sub_10000B4B0(a1, v20);
    v9 = sub_10008CCBC();
    v10 = sub_10008DE2C();
    sub_10000B8E8(a1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315138;
      v21 = *(a1 + 72);
      sub_100009C08(&qword_1000C92C0, &unk_10008F3F0);
      v13 = sub_10008DC4C();
      v15 = sub_10000A2D8(v13, v14, v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Nonce error reason: %s", v11, 0xCu);
      sub_10000BC74(v12);
    }

    v16 = *(a1 + 72);
    if (v16 != 2 && (v16 & 1) != 0)
    {
      v17 = 7;
LABEL_16:
      sub_100009FCC();
      v2 = swift_allocError();
      *v18 = v17;
      swift_willThrow();
      return v2;
    }

LABEL_15:
    v17 = 6;
    goto LABEL_16;
  }

  v2 = *(a1 + 8);
  v3 = *(a1 + 16);

  return v2;
}

uint64_t sub_10000B998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000B9F8()
{
  result = qword_1000C92B0;
  if (!qword_1000C92B0)
  {
    sub_100007108(&unk_1000C90E8, &qword_10008F350);
    sub_10000BA7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C92B0);
  }

  return result;
}

unint64_t sub_10000BA7C()
{
  result = qword_1000C92B8;
  if (!qword_1000C92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C92B8);
  }

  return result;
}

void *sub_10000BB24(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000BB68()
{
  result = qword_1000C92D8;
  if (!qword_1000C92D8)
  {
    sub_100007108(&qword_1000C92C8, &qword_100090DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C92D8);
  }

  return result;
}

unint64_t sub_10000BBCC()
{
  result = qword_1000C92E0;
  if (!qword_1000C92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C92E0);
  }

  return result;
}

uint64_t sub_10000BC74(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000BCC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

char *sub_10000BD10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = sub_100009C08(&qword_1000C92D0, &qword_10008F410);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  v19[3] = type metadata accessor for KeychainBackedGrandSlamTokenStorage();
  v19[4] = &off_1000C2200;
  v19[0] = a2;
  *(a5 + 11) = 0;
  *(a5 + 12) = 0;
  *(a5 + 10) = 0;
  v15 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension33UserDefaultsBackedAccountProvider__account;
  memset(v18, 0, sizeof(v18));
  sub_100009C08(&unk_1000C90E8, &qword_10008F350);
  sub_10008CD7C();
  (*(v11 + 32))(&a5[v15], v14, v10);
  *(a5 + 2) = a1;
  sub_10000BE8C(v19, (a5 + 24));
  *(a5 + 8) = a3;
  *(a5 + 9) = a4;
  v16 = a1;
  swift_unknownObjectRetain();
  sub_100002854();
  sub_10000BC74(v19);
  return a5;
}

uint64_t sub_10000BE8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000BEF8()
{
  v1 = sub_100009C08(&qword_1000C92F8, &qword_10008F438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10000BFC8(uint64_t a1)
{
  v3 = *(sub_100009C08(&qword_1000C92F8, &qword_10008F438) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100005C64(a1, v4, v5);
}

uint64_t sub_10000C0A4()
{
  v1 = sub_100009C08(&qword_1000C92F8, &qword_10008F438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  v10 = *(v0 + 10);

  v11 = *(v0 + 12);

  v12 = *(v0 + 14);

  v13 = *(v0 + 16);

  v14 = *(v0 + 18);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000C1B4(uint64_t a1)
{
  v4 = *(sub_100009C08(&qword_1000C92F8, &qword_10008F438) - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000092CC;

  return sub_1000061E8(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

unint64_t sub_10000C2BC()
{
  result = qword_1000C9300;
  if (!qword_1000C9300)
  {
    sub_10008CBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9300);
  }

  return result;
}

uint64_t sub_10000C314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009C08(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10000C37C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000C38C()
{
  result = qword_1000C9318;
  if (!qword_1000C9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9318);
  }

  return result;
}

uint64_t sub_10000C3E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000C3F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009C08(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000C458()
{
  result = qword_1000C9340;
  if (!qword_1000C9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9340);
  }

  return result;
}

__n128 sub_10000C4E0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000C4EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000C548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10000C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v40 - v14;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v16 = sub_10008CCDC();
    sub_100009F94(v16, qword_1000D6D38);
    swift_errorRetain();
    v17 = sub_10008CCBC();
    v18 = sub_10008DE1C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v41 = a6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v40 = a4;
      v43 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_10000A2D8(0xD000000000000038, 0x8000000100098040, &v43);
      *(v20 + 12) = 2082;
      v42 = a2;
      swift_errorRetain();
      sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
      v22 = sub_10008DC4C();
      v24 = sub_10000A2D8(v22, v23, &v43);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: Authentication failed with error %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      a4 = v40;

      a6 = v41;
    }

    sub_10008DDCC();
    v25 = sub_10008DDEC();
    (*(*(v25 - 8) + 56))(v15, 0, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = a3;
    v26[5] = a4;
    v26[6] = a5;
    v26[7] = a6;
    v26[8] = a2;
    swift_errorRetain();

    sub_10007FA54(0, 0, v15, &unk_10008F698, v26);
  }

  else
  {
    if (a1)
    {

      sub_10008DDCC();
      v27 = sub_10008DDEC();
      (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = a3;
      v28[5] = a4;
      v28[6] = a5;
      v28[7] = a6;
      v28[8] = a1;

      v29 = &unk_10008F688;
      v30 = v15;
      v31 = v28;
    }

    else
    {
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v32 = sub_10008CCDC();
      sub_100009F94(v32, qword_1000D6D38);
      v33 = sub_10008CCBC();
      v34 = sub_10008DE1C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v43 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_10000A2D8(0xD000000000000038, 0x8000000100098040, &v43);
        _os_log_impl(&_mh_execute_header, v33, v34, "%s: Authentication finished without any errors, but we don't have results either, this should never happen", v35, 0xCu);
        sub_10000BC74(v36);
      }

      sub_10008DDCC();
      v37 = sub_10008DDEC();
      (*(*(v37 - 8) + 56))(v15, 0, 1, v37);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = a3;
      v38[5] = a4;
      v38[6] = a5;
      v38[7] = a6;

      v29 = &unk_10008F678;
      v30 = v15;
      v31 = v38;
    }

    sub_10007FA54(0, 0, v30, v29, v31);
  }

  return sub_10000DFE0(v15);
}

uint64_t sub_10000CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a8;
  v8[2] = a4;
  return _swift_task_switch(sub_10000CB4C, 0, 0);
}

uint64_t sub_10000CB4C()
{
  sub_10008DDBC();
  *(v0 + 40) = sub_10008DDAC();
  v2 = sub_10008DD8C();

  return _swift_task_switch(sub_10000CBE0, v2, v1);
}

uint64_t sub_10000CBE0()
{
  v1 = v0[5];
  v2 = v0[2];

  if (v2)
  {
    v3 = v0[2];

    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_10000E294;
    v5 = v0[4];

    return sub_100058600(v5);
  }

  else
  {
    v7 = v0[3];
    type metadata accessor for SignInViewModel();
    sub_10000DE7C(&unk_1000CD6E0, type metadata accessor for SignInViewModel);

    return sub_10008D13C();
  }
}

uint64_t sub_10000CD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a8;
  v8[2] = a4;
  return _swift_task_switch(sub_10000CD2C, 0, 0);
}

uint64_t sub_10000CD2C()
{
  sub_10008DDBC();
  *(v0 + 40) = sub_10008DDAC();
  v2 = sub_10008DD8C();

  return _swift_task_switch(sub_10000CDC0, v2, v1);
}

uint64_t sub_10000CDC0()
{
  v1 = v0[5];
  v2 = v0[2];

  if (v2)
  {
    v3 = v0[2];

    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_10000CEE8;
    v5 = v0[4];

    return sub_100056F08(v5);
  }

  else
  {
    v7 = v0[3];
    type metadata accessor for SignInViewModel();
    sub_10000DE7C(&unk_1000CD6E0, type metadata accessor for SignInViewModel);

    return sub_10008D13C();
  }
}

uint64_t sub_10000CEE8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10000CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10000D018, 0, 0);
}

uint64_t sub_10000D018()
{
  sub_10008DDBC();
  *(v0 + 32) = sub_10008DDAC();
  v2 = sub_10008DD8C();

  return _swift_task_switch(sub_10000D0AC, v2, v1);
}

uint64_t sub_10000D0AC()
{
  v1 = v0[4];
  v2 = v0[2];

  if (v2)
  {
    v3 = v0[2];

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_10000D1D0;

    return sub_100058AE8(0);
  }

  else
  {
    v6 = v0[3];
    type metadata accessor for SignInViewModel();
    sub_10000DE7C(&unk_1000CD6E0, type metadata accessor for SignInViewModel);

    return sub_10008D13C();
  }
}

uint64_t sub_10000D1D0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id sub_10000D2F4@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DMCEnrollmentAuthenticationCoordinator();
  v7 = v1[1];
  v8 = *v1;
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38DMCEnrollmentAuthenticationCoordinator_parentView];
  *v5 = v8;
  *(v5 + 1) = v7;
  v9.receiver = v4;
  v9.super_class = v3;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10000D3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000DBC4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000D424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000DBC4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000D4A4()
{
  sub_10000DBC4();
  sub_10008D4EC();
  __break(1u);
}

unint64_t sub_10000D4D0()
{
  result = qword_1000CDB00;
  if (!qword_1000CDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDB00);
  }

  return result;
}

uint64_t sub_10000D524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_10000D5A4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

id sub_10000D618()
{
  v0 = sub_10008CB2C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10008DBBC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = [objc_allocWithZone(DMCEnrollmentAuthenticationViewController) init];
  sub_100009C08(&qword_1000C9400, &unk_10008F660);
  sub_10008D51C();
  [v4 setDelegate:v12];

  v5 = v4;
  sub_10008DB5C();
  sub_10008CB1C();
  sub_10008DC3C();
  v6 = sub_10008DBCC();

  [v5 setTitleText:v6];

  sub_10008DB5C();
  sub_10008CB1C();
  sub_10008DC3C();
  v7 = sub_10008DBCC();

  [v5 setSubtitleText:v7];

  sub_10008DB5C();
  sub_10008CB1C();
  sub_10008DC3C();
  v8 = sub_10008DBCC();

  [v5 setCancelButtonTitle:v8];

  sub_10008DB5C();
  sub_10008CB1C();
  sub_10008DC3C();
  v9 = sub_10008DBCC();

  [v5 setBottomText:v9];

  v10 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v5];
  return v10;
}

void sub_10000D944(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 viewControllers];
  sub_10000DB70();
  v5 = sub_10008DD3C();

  if (v5 >> 62)
  {
    if (sub_10008E00C())
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_10008DFCC();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_18:
      type metadata accessor for SignInViewModel();
      sub_10000DE7C(&unk_1000CD6E0, type metadata accessor for SignInViewModel);
      v10 = v11;
      sub_10008D13C();
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v11 = v6;

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    if (a3)
    {
      v8 = v7;
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v11;

      sub_10008CDAC();

      [v8 setInProgress:v12];

      return;
    }

    goto LABEL_18;
  }
}

unint64_t sub_10000DB70()
{
  result = qword_1000C93F8;
  if (!qword_1000C93F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C93F8);
  }

  return result;
}

unint64_t sub_10000DBC4()
{
  result = qword_1000C9408;
  if (!qword_1000C9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9408);
  }

  return result;
}

void sub_10000DC18(uint64_t a1)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000A2D8(0xD000000000000012, 0x8000000100098020, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  if (a1)
  {
    if (*(a1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo))
    {
      v7 = [objc_opt_self() standardUserDefaults];
      v9 = sub_10008DBCC();
      [v7 setBool:0 forKey:v9];
    }

    else
    {
      v8 = *(a1 + 16);

      [v8 dismissAutomatedDeviceEnrollmentAdditionExtension];
    }
  }

  else
  {
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    sub_10000DE7C(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
    sub_10008D13C();
    __break(1u);
  }
}

uint64_t sub_10000DE7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DEC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000DF0C(uint64_t a1)
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
  v10[1] = sub_10000E290;

  return sub_10000CFF8(a1, v4, v5, v6, v7);
}

uint64_t sub_10000DFE0(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000092CC;

  return sub_10000CD08(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10000E154(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[6];

  a1(v1[8]);

  return _swift_deallocObject(v1, 72, 7);
}

uint64_t sub_10000E1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000E290;

  return sub_10000CB28(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_10000E298(OSStatus a1)
{
  if (a1 == -25300 || a1 == 0)
  {
    return 0;
  }

  v4 = SecCopyErrorMessageString(a1, 0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_10008DBDC();
    v8 = v7;

    sub_100009C08(&qword_1000C9410, &qword_10008F6A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008F280;
    *(inited + 32) = sub_10008DBDC();
    *(inited + 40) = v10;
    *(inited + 48) = v6;
    *(inited + 56) = v8;
    v11 = sub_10002E8A8(inited);
    swift_setDeallocating();
    sub_10000EDE0(inited + 32);
    v12 = NSOSStatusErrorDomain;
    sub_10000E420(v11);

    v13.super.isa = sub_10008DB0C().super.isa;
  }

  else
  {
    v12 = NSOSStatusErrorDomain;
    v13.super.isa = 0;
  }

  v14 = [objc_allocWithZone(NSError) initWithDomain:v12 code:a1 userInfo:v13.super.isa];

  return v14;
}

unint64_t sub_10000E420(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009C08(&qword_1000C9420, &qword_10008F460);
    v2 = sub_10008E03C();
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
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_10000C37C(&v27, v29);
        sub_10000C37C(v29, v30);
        sub_10000C37C(v30, &v28);
        result = sub_10000A1A8(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000BC74(v12);
          result = sub_10000C37C(&v28, v12);
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
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_10000C37C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
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

unint64_t sub_10000E678(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009C08(&qword_1000C9420, &qword_10008F460);
    v2 = sub_10008E03C();
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

        swift_unknownObjectRetain();
        sub_100009C08(&qword_1000C9440, &unk_100090E40);
        swift_dynamicCast();
        sub_10000C37C(&v25, v27);
        sub_10000C37C(v27, v28);
        sub_10000C37C(v28, &v26);
        result = sub_10000A1A8(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000BC74(v12);
          result = sub_10000C37C(&v26, v12);
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
          result = sub_10000C37C(&v26, (v2[7] + 32 * result));
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

unint64_t sub_10000E8D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10008E1FC();
  type metadata accessor for CFString(0);
  sub_10000EE48(&qword_1000C9428, type metadata accessor for CFString);
  sub_10008CC2C();
  v4 = sub_10008E22C();

  return sub_10000EB34(a1, v4);
}

unint64_t sub_10000E98C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10008CABC();
  sub_10000EE48(&qword_1000C9448, &type metadata accessor for Date);
  v5 = sub_10008DB2C();
  return sub_10000EC40(a1, v5, &type metadata accessor for Date, &unk_1000C9450, &type metadata accessor for Date, &protocol conformance descriptor for Date);
}

unint64_t sub_10000EA60(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10008CB0C();
  sub_10000EE48(&qword_1000C9430, &type metadata accessor for UUID);
  v5 = sub_10008DB2C();
  return sub_10000EC40(a1, v5, &type metadata accessor for UUID, &qword_1000CCBC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10000EB34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10000EE48(&qword_1000C9428, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10008CC1C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000EC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10000EE48(v24, v25);
      v20 = sub_10008DB4C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_10000EDE0(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000C9418, &unk_10008F6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000EE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EE90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AddDevicesExtensionContainerViewModelProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &off_1000BF130;
  sub_10000F480();

  v5 = sub_10008CC0C();

  *a2 = v5;
  return result;
}

uint64_t sub_10000EF24(void *a1)
{
  v2 = v1;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);
  v5 = sub_10008CCBC();
  v6 = sub_10008DE4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000A2D8(0xD000000000000019, 0x8000000100098110, &v16);
    _os_log_impl(&_mh_execute_header, v5, v6, "Begin %s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  v9 = objc_opt_self();
  v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP25AutomatedDeviceEnrollment39HostAppToAddDevicesExtensionXPCProtocol_];
  [a1 setExportedInterface:v10];

  [a1 setExportedObject:*(v2 + 16)];
  v11 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP25AutomatedDeviceEnrollment39AddDevicesExtensionToHostAppXPCProtocol_];
  [a1 setRemoteObjectInterface:v11];

  [a1 resume];
  v12 = *(v2 + 16);
  v13 = *(v12 + 16);
  *(v12 + 16) = a1;

  v14 = a1;

  return 1;
}

uint64_t sub_10000F13C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesToADEExtensionConfiguration_content;
  v3 = sub_10008CBFC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddDevicesToADEExtensionConfiguration()
{
  result = qword_1000C9488;
  if (!qword_1000C9488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F234()
{
  result = sub_10008CBFC();
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

uint64_t sub_10000F2D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesToADEExtensionConfiguration_content;
  v5 = sub_10008CBFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10000F350(void *a1)
{
  v2 = *v1;
  sub_10000EF24(a1);
  return 1;
}

uint64_t sub_10000F3B0(void *a1)
{
  a1[1] = sub_10000F43C(&qword_1000C9540);
  a1[2] = sub_10000F43C(&qword_1000C9548);
  result = sub_10000F43C(&qword_1000C9550);
  a1[3] = result;
  return result;
}

uint64_t sub_10000F43C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddDevicesToADEExtensionConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000F480()
{
  result = qword_1000C9558;
  if (!qword_1000C9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9558);
  }

  return result;
}

uint64_t sub_10000F4D8()
{
  sub_10000BC74((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10000F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  v6 = sub_10000F5C0(&v9);
  (*(*(a3 - 8) + 32))(v6, a1, a3);
  type metadata accessor for SignInViewModelProvider();
  v7 = swift_allocObject();
  sub_10000C3E0(&v9, v7 + 16);
  return v7;
}

uint64_t *sub_10000F5C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000F718(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008CB0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for Device()
{
  result = qword_1000C9678;
  if (!qword_1000C9678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F820()
{
  sub_10008CB0C();
  if (v0 <= 0x3F)
  {
    sub_10000F8A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000F8A8()
{
  if (!qword_1000C9688)
  {
    v0 = sub_10008DF1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C9688);
    }
  }
}

Swift::Int sub_10000F90C()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008E20C(v1);
  return sub_10008E22C();
}

Swift::Int sub_10000F980()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008E20C(v1);
  return sub_10008E22C();
}

uint64_t sub_10000F9C4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6564496C65646F6DLL;
  v4 = 0x754E6C6169726573;
  if (v1 != 3)
  {
    v4 = 0x65767265536D646DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D614E6C65646F6DLL;
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

uint64_t sub_10000FA88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000105B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000FAC8(uint64_t a1)
{
  v2 = sub_1000101E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FB04(uint64_t a1)
{
  v2 = sub_1000101E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000FB40(void *a1)
{
  v3 = v1;
  v5 = sub_100009C08(&qword_1000C96E0, &qword_10008F880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  sub_10000BB24(a1, a1[3]);
  sub_1000101E4();
  sub_10008E24C();
  v25[15] = 0;
  sub_10008CB0C();
  sub_1000102F8(&qword_1000C96E8);
  sub_10008E14C();
  if (!v2)
  {
    v11 = type metadata accessor for Device();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v25[14] = 1;
    sub_10008E10C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v25[13] = 2;
    sub_10008E10C();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v25[12] = 3;
    sub_10008E10C();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    v25[11] = 4;
    sub_10008E10C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000FD7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_10008CB0C();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100009C08(&qword_1000C96C8, &qword_10008F878);
  v37 = *(v39 - 8);
  v7 = *(v37 + 64);
  __chkstk_darwin(v39);
  v9 = v33 - v8;
  v10 = type metadata accessor for Device();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10000BB24(a1, a1[3]);
  sub_1000101E4();
  v38 = v9;
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(a1);
  }

  v15 = v35;
  v44 = 0;
  sub_1000102F8(&qword_1000C96D8);
  v16 = v36;
  sub_10008E0DC();
  (*(v15 + 32))(v13, v16, v4);
  v43 = 1;
  v17 = sub_10008E09C();
  v18 = &v13[v10[5]];
  *v18 = v17;
  v18[1] = v19;
  v36 = v19;
  v42 = 2;
  v20 = sub_10008E09C();
  v21 = v37;
  v22 = &v13[v10[6]];
  *v22 = v20;
  v22[1] = v23;
  v33[1] = v23;
  v41 = 3;
  v24 = sub_10008E09C();
  v25 = &v13[v10[7]];
  *v25 = v24;
  v25[1] = v26;
  v40 = 4;
  v27 = sub_10008E09C();
  v28 = v21;
  v29 = &v13[v10[8]];
  v31 = v30;
  (*(v28 + 8))(v38, v39);
  *v29 = v27;
  v29[1] = v31;
  sub_100010238(v13, v34);
  sub_10000BC74(a1);
  return sub_10001029C(v13);
}

unint64_t sub_1000101E4()
{
  result = qword_1000C96D0;
  if (!qword_1000C96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C96D0);
  }

  return result;
}

uint64_t sub_100010238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001029C(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000102F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10008CB0C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Device.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Device.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000104B4()
{
  result = qword_1000C96F0;
  if (!qword_1000C96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C96F0);
  }

  return result;
}

unint64_t sub_10001050C()
{
  result = qword_1000C96F8;
  if (!qword_1000C96F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C96F8);
  }

  return result;
}

unint64_t sub_100010564()
{
  result = qword_1000C9700;
  if (!qword_1000C9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9700);
  }

  return result;
}

uint64_t sub_1000105B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_10008E18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065 || (sub_10008E18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL || (sub_10008E18C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_10008E18C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65767265536D646DLL && a2 == 0xED0000656D614E72)
  {

    return 4;
  }

  else
  {
    v6 = sub_10008E18C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10001078C()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension19FakeDevicesProvider__enrollmentErrors;
  v2 = sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension19FakeDevicesProvider__assignmentStatus;
  v4 = sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension19FakeDevicesProvider_nearbyDevicesSubject);

  v6 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension19FakeDevicesProvider_pendingDevicesSubject);

  v7 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension19FakeDevicesProvider_enrolledDeviceRecordsSubject);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeDevicesProvider()
{
  result = qword_1000C9740;
  if (!qword_1000C9740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100010904()
{
  sub_1000109E0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100010A44();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000109E0()
{
  if (!qword_1000CC850[0])
  {
    sub_100007108(&qword_1000C9750, &qword_1000945E0);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, qword_1000CC850);
    }
  }
}

void sub_100010A44()
{
  if (!qword_1000C9758)
  {
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C9758);
    }
  }
}

uint64_t sub_100010AB8()
{
  v1 = sub_100009C08(&unk_1000CCC00, &unk_1000946C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  sub_10008CD8C();
  swift_endAccess();
  sub_10001121C(&unk_1000CCC10, &unk_1000CCC00, &unk_1000946C0);
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100010C1C()
{
  v1 = sub_100009C08(&qword_1000C98A0, &unk_1000946B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  sub_10008CD8C();
  swift_endAccess();
  sub_10001121C(&qword_1000C98A8, &qword_1000C98A0, &unk_1000946B0);
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100010DA4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(*v6 + *a3);
  sub_100009C08(a4, a5);
  sub_10001121C(a6, a4, a5);
  return sub_10008CDDC();
}

void sub_100010E44()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000A2D8(0xD000000000000019, 0x80000001000982C0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000BC74(v3);
  }
}

void sub_100010F8C()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000A2D8(0xD000000000000013, 0x8000000100098300, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000BC74(v3);
  }
}

void sub_1000110D4()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000A2D8(0xD00000000000001DLL, 0x80000001000982E0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000BC74(v3);
  }
}

uint64_t sub_10001121C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100011264@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000112E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000092CC;

  return sub_100011378();
}

uint64_t sub_100011398()
{
  v1 = v0[12];
  v0[13] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[14] = v2;
  v0[15] = swift_getObjectType();
  v3 = *(v2 + 24);
  v2 += 24;
  v0[16] = v3;
  v0[17] = v2 & 0xFFFFFFFFFFFFLL | 0xA2EC000000000000;
  v4 = *(v2 - 16);
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_100011438, v6, v5);
}

uint64_t sub_100011438()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = sub_100011FCC();
  v7 = sub_100012098();
  v2(&type metadata for MDMServerInfo, 0x65767265536D646DLL, 0xED00006F666E4972, &type metadata for MDMServerInfo, v6, v7, v3, v4);
  v0[18] = 0;

  return _swift_task_switch(sub_100011528, 0, 0);
}

uint64_t sub_100011528()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = v5;
  *(v0 + 56) = v6;
  *(v0 + 88) = v2;

  sub_10008CDBC();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001160C()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension39KeyValueStoreBackedMDMServerInfoStorage__mdmServerInfo;
  v3 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeyValueStoreBackedMDMServerInfoStorage()
{
  result = qword_1000C98F0;
  if (!qword_1000C98F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100011710()
{
  sub_1000117AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000117AC()
{
  if (!qword_1000C9900)
  {
    sub_100007108(&unk_1000CD8B0, &qword_100090200);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C9900);
    }
  }
}

uint64_t sub_100011810(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return _swift_task_switch(sub_100011830, 0, 0);
}

uint64_t sub_100011830()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  *(v0 + 112) = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 120) = v3;
  *(v0 + 128) = swift_getObjectType();
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = *(v3 + 16);
  v3 += 16;
  *(v0 + 136) = v6;
  *(v0 + 144) = v3 & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v7 = *(v3 - 8);
  v9 = sub_10008DD8C();

  return _swift_task_switch(sub_1000118E8, v9, v8);
}

uint64_t sub_1000118E8()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = sub_100009C08(&unk_1000CD8B0, &qword_100090200);
  v7 = sub_100012020(&qword_1000C99D0, sub_100011FCC);
  v8 = sub_100012020(&qword_1000C99E0, sub_100012098);
  v2(v0 + 2, 0x65767265536D646DLL, 0xED00006F666E4972, v6, v7, v8, v3, v4);
  v0[19] = 0;

  return _swift_task_switch(sub_100011A48, 0, 0);
}

uint64_t sub_100011A48()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;

  sub_100012228(v1, v0 + 56);
  sub_10008CDBC();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100011B20(uint64_t a1)
{
  v3 = *v1;
  v2[7] = a1;
  v2[8] = v3;
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_100011BB4;

  return sub_100011378();
}

uint64_t sub_100011BB4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100011CE4, 0, 0);
  }
}

uint64_t sub_100011CE4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100011DA0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E290;

  return sub_100011810(a1);
}

uint64_t sub_100011E38()
{
  v1 = sub_100009C08(&qword_1000C99C0, &unk_10008FA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  sub_10008CD8C();
  swift_endAccess();
  sub_100011F68();
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

unint64_t sub_100011F68()
{
  result = qword_1000C99C8;
  if (!qword_1000C99C8)
  {
    sub_100007108(&qword_1000C99C0, &unk_10008FA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C99C8);
  }

  return result;
}

unint64_t sub_100011FCC()
{
  result = qword_1000C99D8;
  if (!qword_1000C99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C99D8);
  }

  return result;
}

uint64_t sub_100012020(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&unk_1000CD8B0, &qword_100090200);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012098()
{
  result = qword_1000C99E8;
  if (!qword_1000C99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C99E8);
  }

  return result;
}

double sub_1000120EC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_100012178(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100012298(v2, v3);

  return sub_10008CDBC();
}

uint64_t sub_100012228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CD8B0, &qword_100090200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012298(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000122A8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000122A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1000122F0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100012358()
{
  v2 = sub_10008C7FC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10008C7EC();
  v5 = sub_10008C7DC();
  v7 = v6;

  if (!v1)
  {
    v9 = *(v0 + 112);
    isa = sub_10008C9FC().super.isa;
    v11 = sub_10008DBCC();
    [v9 setObject:isa forKey:v11];

    return sub_10000B408(v5, v7);
  }

  return result;
}

uint64_t sub_100012454@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v10 = *(v4 + 112);
  v11 = sub_10008DBCC();
  v12 = [v10 valueForKey:v11];

  if (v12)
  {
    sub_10008DF4C();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_1000128E0(v30);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v24 = 1;
    return (*(*(a3 - 8) + 56))(a4, v24, 1, a3);
  }

  v13 = sub_10008C7CC();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_10008C7BC();
  v31 = a4;
  sub_10008C7AC();
  if (v5)
  {

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v16 = sub_10008CCDC();
    sub_100009F94(v16, qword_1000D6D38);

    sub_10000B3B4(v26, v27);
    v17 = sub_10008CCBC();
    v18 = sub_10008DE2C();

    sub_10000B408(v26, v27);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *&v30[0] = swift_slowAlloc();
      *v19 = 136446466;
      *(v19 + 4) = sub_10000A2D8(a1, a2, v30);
      *(v19 + 12) = 2082;
      sub_10000B3B4(v26, v27);
      v20 = sub_10008C9DC();
      v22 = v21;
      sub_10000B408(v26, v27);
      v23 = sub_10000A2D8(v20, v22, v30);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error decoding value for key: %{public}s, encodedValue: %{public}s", v19, 0x16u);
      swift_arrayDestroy();

      sub_10000B408(v26, v27);
    }

    else
    {

      sub_10000B408(v26, v27);
    }

    v24 = 1;
  }

  else
  {
    sub_10000B408(v26, v27);

    v24 = 0;
  }

  a4 = v31;
  return (*(*(a3 - 8) + 56))(a4, v24, 1, a3);
}

void sub_100012814()
{
  v1 = *(v0 + 112);
  v2 = sub_10008DBCC();
  [v1 removeObjectForKey:v2];
}

unint64_t sub_100012864(uint64_t a1)
{
  result = sub_10001288C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001288C()
{
  result = qword_1000C9A98;
  if (!qword_1000C9A98)
  {
    type metadata accessor for UserDefaultsBackedKeyValueStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9A98);
  }

  return result;
}

uint64_t sub_1000128E0(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000C9338, &qword_10008F488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012948()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

void sub_1000129C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 remoteObjectProxy];
    sub_10008DF4C();
    swift_unknownObjectRelease();
    sub_100009C08(&qword_1000C9BF0, &qword_10008FC98);
    if (swift_dynamicCast())
    {
      [v9 dismissAutomatedDeviceEnrollmentAdditionExtension];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v4 = sub_10008CCDC();
      sub_100009F94(v4, qword_1000D6D38);
      v5 = sub_10008CCBC();
      v6 = sub_10008DE2C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v10 = v8;
        *v7 = 136315138;
        *(v7 + 4) = sub_10000A2D8(0xD000000000000033, 0x80000001000984D0, &v10);
        _os_log_impl(&_mh_execute_header, v5, v6, "%s Unable to retrieve remote object proxy to talk to the app", v7, 0xCu);
        sub_10000BC74(v8);
      }
    }
  }
}

void sub_100012BB0()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000A2D8(0xD000000000000011, 0x8000000100098490, &v32);
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin %s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7;
    [v8 auditToken];
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    sub_10001363C();
    v13 = sub_1000130F8(v9, v10, v11, v12);
    v14 = sub_10008CCBC();
    v15 = sub_10008DE1C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_10000A2D8(0xD000000000000011, 0x8000000100098490, &v32);
      *(v16 + 12) = 2112;
      *(v16 + 14) = v13;
      *v17 = v13;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s bundle record retrieved from auditToken is: %@", v16, 0x16u);
      sub_1000137AC(v17);

      sub_10000BC74(v18);
    }

    v20 = [v13 bundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = sub_10008DBDC();
      v24 = v23;

      if (v22 == 0xD00000000000001ALL && 0x80000001000984B0 == v24)
      {

        v25 = 1;
      }

      else
      {
        v26 = sub_10008E18C();

        v25 = v26 & 1;
      }
    }

    else
    {
      v25 = 0;
    }

    v27 = [v13 bundleIdentifier];
    if (v27)
    {
      v28 = v27;
      v29 = sub_10008DBDC();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v25;
    v33 = v29;
    v34 = v31;

    sub_10008CDBC();
  }
}

id sub_1000130F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    sub_10008C8EC();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_100013218(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_10001325C()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension36ConcreteHostAppCommunicationProvider__hostAppInfo;
  v2 = sub_100009C08(&qword_1000C9BD8, &qword_10008FC38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConcreteHostAppCommunicationProvider()
{
  result = qword_1000C9AD0;
  if (!qword_1000C9AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100013360()
{
  sub_1000133FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000133FC()
{
  if (!qword_1000C9AE0)
  {
    sub_100007108(&unk_1000C9AE8, qword_10008FBE0);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C9AE0);
    }
  }
}

uint64_t sub_10001346C()
{
  v0 = sub_100009C08(&qword_1000C9BD0, &qword_10008FC30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000C9BD8, &qword_10008FC38);
  sub_10008CD8C();
  swift_endAccess();
  sub_1000135D8();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100013598@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConcreteHostAppCommunicationProvider();
  result = sub_10008CD1C();
  *a1 = result;
  return result;
}

unint64_t sub_1000135D8()
{
  result = qword_1000C9BE0;
  if (!qword_1000C9BE0)
  {
    sub_100007108(&qword_1000C9BD0, &qword_10008FC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9BE0);
  }

  return result;
}

unint64_t sub_10001363C()
{
  result = qword_1000C9BE8;
  if (!qword_1000C9BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C9BE8);
  }

  return result;
}

double sub_100013688@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_100013714(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100013814(v2, v3, v4);

  return sub_10008CDBC();
}

uint64_t sub_1000137AC(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000C9308, &qword_1000935D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

__n128 sub_100013828(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100013834(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100013890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100013914()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for SettingsViewModel();
  sub_100013A10();
  sub_10008D15C();
  if (v1)
  {

    sub_10008CD0C();
    sub_100009C08(&qword_1000C9C00, &qword_10008FD38);
    sub_100013A68();
    return sub_10008D03C();
  }

  else
  {
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_100013A10()
{
  result = qword_1000C9BF8;
  if (!qword_1000C9BF8)
  {
    type metadata accessor for SettingsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9BF8);
  }

  return result;
}

unint64_t sub_100013A68()
{
  result = qword_1000C9C08;
  if (!qword_1000C9C08)
  {
    sub_100007108(&qword_1000C9C00, &qword_10008FD38);
    sub_100013B20();
    sub_10001121C(&qword_1000C9C18, &qword_1000C9C20, &qword_10008FD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9C08);
  }

  return result;
}

unint64_t sub_100013B20()
{
  result = qword_1000C9C10;
  if (!qword_1000C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9C10);
  }

  return result;
}

uint64_t sub_100013BE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

BOOL sub_100013C4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v0 = *(v3 + 16);

  if (v0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = *(v3 + 16);

  return v2 != 0;
}

char *sub_100013D2C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v60 = a3;
  v70 = a2;
  v71 = a1;
  v5 = sub_100009C08(&qword_1000C9E08, &qword_10008FEE8);
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v67 = &v56 - v8;
  v9 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v62 = &v56 - v11;
  v12 = sub_100009C08(&qword_1000C9E18, &qword_10008FEF8);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v59 = &v56 - v15;
  v16 = sub_100009C08(&qword_1000C9E20, &qword_10008FF00);
  v17 = *(v16 - 8);
  v65 = v16;
  v66 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v61 = &v56 - v19;
  v20 = sub_100009C08(&qword_1000C9E00, &qword_10008FEE0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v56 - v23;
  v25 = sub_100009C08(&qword_1000C9DF8, &qword_10008FED8);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v56 - v28;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  v30 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension21DeviceStatusViewModel__pendingDevices;
  v73 = &_swiftEmptyArrayStorage;
  sub_100009C08(&qword_1000C9C88, &qword_10008FDE0);
  sub_10008CD7C();
  (*(v26 + 32))(&v4[v30], v29, v25);
  v31 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension21DeviceStatusViewModel__enrolledDeviceSections;
  v73 = &_swiftEmptyArrayStorage;
  sub_100009C08(&unk_1000C9C98, &qword_10008FDE8);
  sub_10008CD7C();
  (*(v21 + 32))(&v4[v31], v24, v20);
  v32 = v71;
  sub_10000BE8C(v71, (v4 + 16));
  v33 = v60;
  *(v4 + 7) = v70;
  *(v4 + 8) = v33;
  v34 = v32[3];
  v35 = v32[4];
  sub_10000BB24(v32, v34);
  v36 = *(v35 + 8);
  swift_unknownObjectRetain();
  v73 = v36(v34, v35);
  sub_100009C08(&qword_1000C9E28, &qword_10008FF08);
  v60 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&qword_1000C9E30, &qword_1000C9E28, &qword_10008FF08);
  v37 = v59;
  sub_10008CDEC();

  sub_1000167AC();
  v38 = sub_10008DE7C();
  v73 = v38;
  v39 = sub_10008DE6C();
  v40 = *(v39 - 8);
  v57 = *(v40 + 56);
  v58 = v40 + 56;
  v41 = v62;
  v57(v62, 1, 1, v39);
  sub_10001121C(&qword_1000C9E38, &qword_1000C9E18, &qword_10008FEF8);
  sub_1000167F8(&qword_1000C9E40, sub_1000167AC);
  v42 = v61;
  v43 = v63;
  sub_10008CE0C();
  sub_100016840(v41);

  (*(v64 + 8))(v37, v43);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v4;
  sub_10001121C(&qword_1000C9E48, &qword_1000C9E20, &qword_10008FF00);
  v44 = v65;
  v45 = v42;
  v46 = sub_10008CE1C();

  (*(v66 + 8))(v45, v44);
  v47 = *(v4 + 9);
  *(v4 + 9) = v46;

  v48 = v71[3];
  v49 = v71[4];
  sub_10000BB24(v71, v48);
  v73 = (*(v49 + 32))(v48, v49);
  v50 = sub_10008DE7C();
  v72 = v50;
  v57(v41, 1, 1, v39);
  sub_100009C08(&qword_1000C9E50, &qword_10008FF10);
  sub_10001121C(&qword_1000C9E58, &qword_1000C9E50, &qword_10008FF10);
  v51 = v67;
  sub_10008CE0C();
  sub_100016840(v41);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v4;
  sub_10001121C(&qword_1000C9E60, &qword_1000C9E08, &qword_10008FEE8);
  v52 = v68;
  v53 = sub_10008CE1C();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v51, v52);
  v54 = *(v4 + 10);
  *(v4 + 10) = v53;

  sub_10000BC74(v71);
  return v4;
}

uint64_t sub_10001455C@<X0>(uint64_t *a1@<X0>, unint64_t **a2@<X8>)
{
  v4 = type metadata accessor for Device();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v27 - v10;
  v11 = type metadata accessor for DeviceRowViewModel();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(*a1 + 16);
  v19 = &_swiftEmptyArrayStorage;
  if (v18)
  {
    v27 = a2;
    v30 = &_swiftEmptyArrayStorage;
    sub_10000A948(0, v18, 0);
    v19 = v30;
    v20 = v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);
    do
    {
      v21 = v29;
      sub_100017168(v20, v29, type metadata accessor for Device);
      sub_100017230(v21, v9, type metadata accessor for Device);
      v22 = v11[8];
      v23 = v11[9];
      v24 = sub_10008CB0C();
      (*(*(v24 - 8) + 32))(v16, v9, v24);
      *&v16[v11[5]] = *&v9[v4[5]];
      *&v16[v11[6]] = *&v9[v4[6]];
      *&v16[v22] = *&v9[v4[7]];
      *&v16[v23] = *&v9[v4[8]];
      v16[v11[7]] = 1;
      v30 = v19;
      v26 = v19[2];
      v25 = v19[3];
      if (v26 >= v25 >> 1)
      {
        sub_10000A948(v25 > 1, v26 + 1, 1);
        v19 = v30;
      }

      v19[2] = v26 + 1;
      result = sub_100017230(v16, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26, type metadata accessor for DeviceRowViewModel);
      v20 += v28;
      --v18;
    }

    while (v18);
    a2 = v27;
  }

  *a2 = v19;
  return result;
}

uint64_t sub_100014858(uint64_t *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_1000148D4(char **a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  sub_10001491C(v1);
}

uint64_t sub_10001491C(char *a1)
{
  v104 = a1;
  v108 = type metadata accessor for Device();
  v1 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v3 = v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for EnrolledDeviceRecord();
  v85 = *(v107 - 8);
  v4 = *(v85 + 64);
  __chkstk_darwin(v107);
  v106 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceRowViewModel();
  v105 = *(v6 - 1);
  v7 = *(v105 + 64);
  __chkstk_darwin(v6);
  v9 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceStatusSectionViewModel();
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  v12 = __chkstk_darwin(v10);
  v92 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v103 = v83 - v14;
  v15 = sub_10008CABC();
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = v83 - v20;
  v21 = sub_100009C08(&qword_1000C9E68, &qword_10008FF18);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v83 - v26;
  if (qword_1000C8CF8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v28 = sub_10008CCDC();
    v83[0] = sub_100009F94(v28, qword_1000D6D38);
    v29 = sub_10008CCBC();
    v30 = sub_10008DE1C();
    v31 = os_log_type_enabled(v29, v30);
    v97 = v25;
    v98 = v19;
    if (v31)
    {
      v32 = v15;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v109 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10000A2D8(0xD00000000000001DLL, 0x8000000100098640, &v109);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s begin", v33, 0xCu);
      sub_10000BC74(v34);
      v35 = v97;

      v15 = v32;
      v19 = v98;
    }

    else
    {
      v35 = v25;
    }

    v25 = v104;

    v37 = sub_1000168F0(v36);

    v38 = 0;
    v40 = v37 + 64;
    v39 = *(v37 + 64);
    v87 = v37;
    v41 = 1 << *(v37 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v39;
    v44 = (v41 + 63) >> 6;
    v100 = (v88 + 16);
    v99 = (v88 + 32);
    v89 = (v88 + 8);
    v104 = &_swiftEmptyArrayStorage;
    v96 = v27;
    v90 = v44;
    v91 = v37 + 64;
    v84 = v15;
    if ((v42 & v39) != 0)
    {
      break;
    }

LABEL_9:
    if (v44 <= v38 + 1)
    {
      v46 = v38 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v45 >= v44)
      {
        v55 = v15;
        v78 = sub_100009C08(&qword_1000C9E70, &qword_10008FF20);
        (*(*(v78 - 8) + 56))(v35, 1, 1, v78);
        v101 = 0;
        v102 = v47;
        goto LABEL_18;
      }

      v43 = *(v40 + 8 * v45);
      ++v38;
      if (v43)
      {
        v102 = v45;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  while (1)
  {
    v102 = v38;
    v45 = v38;
LABEL_17:
    v101 = (v43 - 1) & v43;
    v48 = __clz(__rbit64(v43)) | (v45 << 6);
    v49 = v87;
    v50 = v88;
    (*(v88 + 16))(v86, *(v87 + 48) + *(v88 + 72) * v48, v15);
    v51 = *(*(v49 + 56) + 8 * v48);
    v52 = sub_100009C08(&qword_1000C9E70, &qword_10008FF20);
    v53 = *(v52 + 48);
    v54 = *(v50 + 32);
    v55 = v15;
    v35 = v97;
    v54();
    *(v35 + v53) = v51;
    (*(*(v52 - 8) + 56))(v35, 0, 1, v52);

    v19 = v98;
    v27 = v96;
LABEL_18:
    sub_1000170F8(v35, v27);
    v56 = sub_100009C08(&qword_1000C9E70, &qword_10008FF20);
    if ((*(*(v56 - 8) + 48))(v27, 1, v56) == 1)
    {
      break;
    }

    v57 = *&v27[*(v56 + 48)];
    v15 = v55;
    (*v99)(v19, v27, v55);
    v58 = *(v57 + 16);
    if (v58)
    {
      v109 = &_swiftEmptyArrayStorage;
      v59 = v57;
      sub_10000A948(0, v58, 0);
      v60 = v109;
      v61 = *(v85 + 80);
      v95 = v59;
      v62 = v59 + ((v61 + 32) & ~v61);
      v63 = *(v85 + 72);
      do
      {
        v64 = v106;
        sub_100017168(v62, v106, type metadata accessor for EnrolledDeviceRecord);
        v65 = *(v64 + *(v107 + 24)) + 2;
        sub_100017168(v64, v3, type metadata accessor for Device);
        sub_1000171D0(v64, type metadata accessor for EnrolledDeviceRecord);
        v66 = v6[8];
        v67 = v6[9];
        v68 = sub_10008CB0C();
        (*(*(v68 - 8) + 32))(v9, v3, v68);
        v69 = v108;
        *&v9[v6[5]] = *&v3[*(v108 + 20)];
        *&v9[v6[6]] = *&v3[v69[6]];
        *&v9[v66] = *&v3[v69[7]];
        *&v9[v67] = *&v3[v69[8]];
        v9[v6[7]] = v65;
        v109 = v60;
        v71 = v60[2];
        v70 = v60[3];
        if (v71 >= v70 >> 1)
        {
          sub_10000A948(v70 > 1, v71 + 1, 1);
          v60 = v109;
        }

        v60[2] = v71 + 1;
        sub_100017230(v9, v60 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v71, type metadata accessor for DeviceRowViewModel);
        v62 += v63;
        --v58;
      }

      while (v58);

      v72 = v92;
      v73 = v103;
      v15 = v84;
      v25 = v97;
      v19 = v98;
      v27 = v96;
    }

    else
    {
      v25 = v35;

      v60 = &_swiftEmptyArrayStorage;
      v72 = v92;
      v73 = v103;
    }

    (*v100)(v73, v19, v15);
    *(v73 + *(v94 + 20)) = v60;
    sub_100017168(v73, v72, type metadata accessor for DeviceStatusSectionViewModel);
    v74 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = sub_10003AEDC(0, *(v104 + 2) + 1, 1, v104);
    }

    v76 = *(v104 + 2);
    v75 = *(v104 + 3);
    if (v76 >= v75 >> 1)
    {
      v104 = sub_10003AEDC(v75 > 1, v76 + 1, 1, v104);
    }

    sub_1000171D0(v103, type metadata accessor for DeviceStatusSectionViewModel);
    (*v89)(v19, v15);
    v77 = v104;
    *(v104 + 2) = v76 + 1;
    sub_100017230(v74, &v77[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v76], type metadata accessor for DeviceStatusSectionViewModel);
    v44 = v90;
    v40 = v91;
    v43 = v101;
    v38 = v102;
    v35 = v25;
    if (!v101)
    {
      goto LABEL_9;
    }
  }

  v79 = sub_10008CCBC();
  v80 = sub_10008DE1C();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&_mh_execute_header, v79, v80, "Publishing device status enrolled device changes", v81, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v109 = v104;

  return sub_10008CDBC();
}

uint64_t sub_100015464(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v64 = &v63 - v4;
  v5 = sub_10008CB6C();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  __chkstk_darwin(v5);
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10008C8AC();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  __chkstk_darwin(v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10008CABC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v69 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v63 - v17;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v75 = v11;
  v19 = sub_10008CCDC();
  v20 = sub_100009F94(v19, qword_1000D6D38);
  v21 = v13[2];
  v74 = a1;
  v66 = v21;
  v21(v18, a1, v12);
  v68 = v20;
  v22 = sub_10008CCBC();
  v23 = sub_10008DE1C();
  v24 = os_log_type_enabled(v22, v23);
  v70 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_10000A2D8(0xD00000000000001ALL, 0x8000000100098620, &v78);
    *(v25 + 12) = 2080;
    sub_1000167F8(&qword_1000C9DF0, &type metadata accessor for Date);
    v26 = sub_10008E15C();
    v28 = v27;
    v67 = v13[1];
    v67(v18, v12);
    v29 = sub_10000A2D8(v26, v28, &v78);

    *(v25 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s begin with date: %s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v67 = v13[1];
    v67(v18, v12);
  }

  v30 = v71;
  sub_10008CB4C();
  sub_100009C08(&qword_1000C9DE8, &qword_10008FE30);
  v31 = sub_10008CB5C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10008FD50;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v36, enum case for Calendar.Component.calendar(_:), v31);
  v37(v36 + v33, enum case for Calendar.Component.year(_:), v31);
  v37(v36 + 2 * v33, enum case for Calendar.Component.month(_:), v31);
  v37(v36 + 3 * v33, enum case for Calendar.Component.day(_:), v31);
  sub_10007F650(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v38 = v74;
  v39 = v75;
  sub_10008CB3C();

  (*(v72 + 8))(v30, v73);
  v40 = sub_10008C88C();
  if (v41 & 1) != 0 || (v42 = v40, v43 = sub_10008C89C(), (v44) || (v45 = v43, v46 = sub_10008C86C(), (v47))
  {
    v48 = v69;
    v66(v69, v38, v12);
    v49 = sub_10008CCBC();
    v50 = sub_10008DE2C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v51 = 136315394;
      *(v51 + 4) = sub_10000A2D8(0xD00000000000001ALL, 0x8000000100098620, &v78);
      *(v51 + 12) = 2080;
      sub_1000167F8(&qword_1000C9DF0, &type metadata accessor for Date);
      v52 = sub_10008E15C();
      v54 = v53;
      v67(v48, v12);
      v55 = sub_10000A2D8(v52, v54, &v78);

      *(v51 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s: %s is missing one of the required components", v51, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v67(v48, v12);
    }
  }

  else
  {
    v56 = v46;
    v57 = sub_10008DDEC();
    v58 = v64;
    (*(*(v57 - 8) + 56))(v64, 1, 1, v57);
    sub_10008DDBC();
    v59 = v65;

    v60 = sub_10008DDAC();
    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = &protocol witness table for MainActor;
    v61[4] = v59;
    v61[5] = v42;
    v61[6] = v45;
    v61[7] = v56;
    sub_10007B228(0, 0, v58, &unk_10008FE40, v61);
  }

  return (*(v76 + 8))(v39, v77);
}

uint64_t sub_100015CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10008DDBC();
  v7[6] = sub_10008DDAC();
  v9 = sub_10008DD8C();
  v7[7] = v9;
  v7[8] = v8;

  return _swift_task_switch(sub_100015D7C, v9, v8);
}

uint64_t sub_100015D7C()
{
  v1 = v0[2];
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 32);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100015EAC;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return v12(v10, v8, v9, ObjectType, v2);
}

uint64_t sub_100015EAC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_100015FCC, v4, v3);
}

uint64_t sub_100015FCC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001602C()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10000A2D8(0xD000000000000015, 0x8000000100098600, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000BC74(v6);
  }

  v7 = v1[5];
  v8 = v1[6];
  sub_10000BB24(v1 + 2, v7);
  return (*(v8 + 48))(v7, v8);
}

uint64_t sub_1000161A0()
{
  sub_10000BC74(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];

  v3 = v0[10];

  v4 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension21DeviceStatusViewModel__pendingDevices;
  v5 = sub_100009C08(&qword_1000C9DF8, &qword_10008FED8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension21DeviceStatusViewModel__enrolledDeviceSections;
  v7 = sub_100009C08(&qword_1000C9E00, &qword_10008FEE0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceStatusViewModel()
{
  result = qword_1000C9C70;
  if (!qword_1000C9C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016308()
{
  sub_100016420(319, &qword_1000C9C80, &qword_1000C9C88, &qword_10008FDE0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100016420(319, &qword_1000C9C90, &unk_1000C9C98, &qword_10008FDE8);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100016420(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100007108(a3, a4);
    v5 = sub_10008CDCC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100016474@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DeviceStatusViewModel();
  result = sub_10008CD1C();
  *a1 = result;
  return result;
}

uint64_t sub_1000164F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100016580(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_1000165F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100016638(uint64_t a1)
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
  v10[1] = sub_1000092CC;

  return sub_100015CE0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1000167AC()
{
  result = qword_1000CA440;
  if (!qword_1000CA440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CA440);
  }

  return result;
}

uint64_t sub_1000167F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016840(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000168A8()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000168F0(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000C9E78, &qword_10008FF28);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v83 = &v60[-v4];
  v78 = sub_10008CB6C();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v78);
  v84 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_10008C8AC();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v76);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10008CABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for EnrolledDeviceRecord();
  v17 = *(*(v77 - 8) + 64);
  v18 = __chkstk_darwin(v77);
  v75 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v86 = &v60[-v21];
  v22 = &_swiftEmptyDictionarySingleton;
  v87 = &_swiftEmptyDictionarySingleton;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return v22;
  }

  v63 = *(v20 + 80);
  v24 = *(v20 + 72);
  v65 = (v63 + 32) & ~v63;
  v25 = v8;
  v26 = a1 + v65;
  v74 = enum case for Calendar.Component.calendar(_:);
  v73 = enum case for Calendar.Component.year(_:);
  v72 = enum case for Calendar.Component.month(_:);
  v71 = enum case for Calendar.Component.day(_:);
  v69 = (v13 + 48);
  v70 = (v5 + 8);
  v66 = (v25 + 8);
  v80 = (v13 + 32);
  v64 = v13;
  v62 = (v13 + 8);
  v68 = xmmword_10008FD50;
  v61 = xmmword_10008F280;
  v67 = v16;
  v79 = v24;
  while (1)
  {
    v85 = v22;
    v81 = v26;
    v82 = v23;
    sub_100017168(v26, v86, type metadata accessor for EnrolledDeviceRecord);
    sub_10008CB4C();
    sub_100009C08(&qword_1000C9DE8, &qword_10008FE30);
    v29 = sub_10008CB5C();
    v30 = *(v29 - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v68;
    v34 = v33 + v32;
    v35 = *(v30 + 104);
    v35(v34, v74, v29);
    v35(v34 + v31, v73, v29);
    v35(v34 + 2 * v31, v72, v29);
    v35(v34 + 3 * v31, v71, v29);
    v36 = v83;
    sub_10007F650(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = &v86[*(v77 + 20)];
    v38 = v84;
    sub_10008CB3C();

    (*v70)(v38, v78);
    sub_10008C87C();
    if ((*v69)(v36, 1, v12) == 1)
    {
      break;
    }

    (*v66)(v11, v76);
    v39 = *v80;
    v40 = v67;
    (*v80)(v67, v83, v12);
    v22 = v85;
    v42 = sub_10000E98C(v40);
    v43 = v22[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      break;
    }

    v46 = v41;
    if (v22[3] < v45)
    {
      sub_10006ED80(v45, 1);
      v22 = v87;
      v47 = sub_10000E98C(v40);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_21;
      }

      v42 = v47;
    }

    if (v46)
    {
      (*v62)(v40, v12);
      v85 = v22;
      v49 = v22[7];
      sub_100017230(v86, v75, type metadata accessor for EnrolledDeviceRecord);
      v50 = *(v49 + 8 * v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v42) = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = sub_10003AE50(0, v50[2] + 1, 1, v50);
        *(v49 + 8 * v42) = v50;
      }

      v53 = v50[2];
      v52 = v50[3];
      if (v53 >= v52 >> 1)
      {
        v50 = sub_10003AE50(v52 > 1, v53 + 1, 1, v50);
        *(v49 + 8 * v42) = v50;
      }

      v27 = v81;
      v22 = v85;
      v50[2] = v53 + 1;
      v28 = v79;
      sub_100017230(v75, v50 + v65 + v53 * v79, type metadata accessor for EnrolledDeviceRecord);
    }

    else
    {
      sub_100009C08(&qword_1000C92E8, &unk_10008F420);
      v54 = v65;
      v55 = swift_allocObject();
      *(v55 + 16) = v61;
      sub_100017230(v86, v55 + v54, type metadata accessor for EnrolledDeviceRecord);
      v22[(v42 >> 6) + 8] |= 1 << v42;
      v39(v22[6] + *(v64 + 72) * v42, v40, v12);
      *(v22[7] + 8 * v42) = v55;
      v56 = v22[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_19;
      }

      v22[2] = v58;
      v28 = v79;
      v27 = v81;
    }

    v26 = v27 + v28;
    v23 = v82 - 1;
    if (v82 == 1)
    {
      return v22;
    }
  }

  __break(1u);
LABEL_21:
  result = sub_10008E1AC();
  __break(1u);
  return result;
}

uint64_t sub_1000170F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000C9E68, &qword_10008FF18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000171D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100017230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000172B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
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
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100017390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
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
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DeviceStatusView()
{
  result = qword_1000C9EE0;
  if (!qword_1000C9EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000174A4()
{
  sub_100017558();
  if (v0 <= 0x3F)
  {
    sub_1000175A8();
    if (v1 <= 0x3F)
    {
      sub_100017600();
      if (v2 <= 0x3F)
      {
        sub_100017694();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100017558()
{
  if (!qword_1000C9EF0)
  {
    v0 = sub_10008D8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C9EF0);
    }
  }
}

void sub_1000175A8()
{
  if (!qword_1000C9EF8)
  {
    sub_10008CFDC();
    v0 = sub_10008CF6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C9EF8);
    }
  }
}

void sub_100017600()
{
  if (!qword_1000C9F00)
  {
    type metadata accessor for DeviceStatusViewModel();
    sub_10001ABAC(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
    v0 = sub_10008D16C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C9F00);
    }
  }
}

unint64_t sub_100017694()
{
  result = qword_1000C9F10;
  if (!qword_1000C9F10)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000C9F10);
  }

  return result;
}

uint64_t sub_100017700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_10008CB2C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10008DBBC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100009C08(&qword_1000C9F58, &qword_10008FFB8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  v22[0] = sub_100009C08(&qword_1000C9F50, &qword_10008FFB0);
  v11 = *(v22[0] - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v22[0]);
  v14 = v22 - v13;
  *v10 = sub_10008D2EC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = sub_100009C08(&qword_1000C9F78, &qword_10008FFC8);
  sub_100017A6C(a1, &v10[*(v15 + 44)]);
  v22[4] = a1;
  v16 = sub_100009C08(&qword_1000C9F60, &qword_10008FFC0);
  v17 = sub_10001121C(&qword_1000C9F68, &qword_1000C9F58, &qword_10008FFB8);
  v18 = sub_10001121C(&qword_1000C9F70, &qword_1000C9F60, &qword_10008FFC0);
  sub_10008D79C();
  sub_100019EAC(v10);
  sub_10008DB5C();
  sub_10008CB1C();
  v22[9] = sub_10008DC3C();
  v22[10] = v19;
  v22[5] = v7;
  v22[6] = v16;
  v22[7] = v17;
  v22[8] = v18;
  swift_getOpaqueTypeConformance2();
  sub_100019E50();
  v20 = v22[0];
  sub_10008D71C();

  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_100017A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_10008CB2C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10008DBBC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v51 = sub_100009C08(&qword_1000C9FF8, &qword_100090080);
  v7 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v9 = v46 - v8;
  v52 = sub_10008D44C();
  v48 = *(v52 - 8);
  v10 = *(v48 + 64);
  __chkstk_darwin(v52);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100009C08(&qword_1000CA000, &qword_100090088);
  v47 = *(v50 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v50);
  v15 = v46 - v14;
  v53 = sub_100009C08(&qword_1000CA008, &qword_100090090);
  v49 = *(v53 - 8);
  v16 = *(v49 + 64);
  __chkstk_darwin(v53);
  v18 = v46 - v17;
  v19 = (a1 + *(type metadata accessor for DeviceStatusView() + 24));
  if (*v19)
  {
    v20 = *v19;

    v21 = sub_100013C4C();

    if (v21)
    {
      __chkstk_darwin(v22);
      v46[-2] = a1;
      sub_100009C08(&qword_1000CA030, &qword_1000900D8);
      v46[1] = &protocol conformance descriptor for TupleView<A>;
      sub_10001121C(&qword_1000CA038, &qword_1000CA030, &qword_1000900D8);
      sub_10008D62C();
      sub_10008D43C();
      v23 = sub_10001121C(&qword_1000CA020, &qword_1000CA000, &qword_100090088);
      v24 = v50;
      v25 = v52;
      sub_10008D7AC();
      (*(v48 + 8))(v12, v25);
      (*(v47 + 8))(v15, v24);
      v26 = v49;
      v27 = v53;
      (*(v49 + 16))(v9, v18, v53);
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CA018, &qword_1000900D0);
      *&v66 = v24;
      *(&v66 + 1) = v25;
      *&v67 = v23;
      *(&v67 + 1) = &protocol witness table for InsetGroupedListStyle;
      swift_getOpaqueTypeConformance2();
      sub_10001121C(&qword_1000CA028, &qword_1000CA018, &qword_1000900D0);
      sub_10008D3DC();
      return (*(v26 + 8))(v18, v27);
    }

    else
    {
      sub_10008DB5C();
      sub_10008CB1C();
      *&v66 = sub_10008DC3C();
      *(&v66 + 1) = v29;
      sub_100019E50();
      v30 = sub_10008D68C();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      KeyPath = swift_getKeyPath();
      v38 = sub_10008D89C();
      v39 = swift_getKeyPath();
      v34 &= 1u;
      LOBYTE(v64[0]) = v34;
      v40 = sub_10008D53C();
      *&v59 = v30;
      *(&v59 + 1) = v32;
      LOBYTE(v60) = v34;
      *(&v60 + 1) = v36;
      *&v61 = KeyPath;
      BYTE8(v61) = 1;
      *&v62 = v39;
      *(&v62 + 1) = v38;
      LOBYTE(v63[0]) = v40;
      *(v63 + 8) = 0u;
      *(&v63[1] + 8) = 0u;
      BYTE8(v63[2]) = 1;
      v66 = v59;
      v67 = v60;
      *(v71 + 9) = *(&v63[1] + 9);
      v70 = v63[0];
      v71[0] = v63[1];
      v68 = v61;
      v69 = v62;
      v64[0] = v59;
      v64[1] = v60;
      *(v65 + 9) = *(&v63[1] + 9);
      v64[4] = v63[0];
      v65[0] = v63[1];
      v64[2] = v61;
      v64[3] = v62;
      *(&v57[2] + 7) = v61;
      *(&v57[1] + 7) = v60;
      v58 = 1;
      *(v57 + 7) = v59;
      v57[6] = *(&v63[1] + 9);
      *(&v57[5] + 7) = v63[1];
      *(&v57[4] + 7) = v63[0];
      *(&v57[3] + 7) = v62;
      v56 = 1;
      sub_10000C314(&v59, v55, &qword_1000CA010, &qword_1000900C8);
      sub_10000C314(v64, v55, &qword_1000CA010, &qword_1000900C8);
      sub_10000C3F8(&v66, &qword_1000CA010, &qword_1000900C8);
      v41 = v57[4];
      *(v9 + 57) = v57[3];
      *(v9 + 73) = v41;
      v42 = v57[6];
      *(v9 + 89) = v57[5];
      *(v9 + 105) = v42;
      *(v9 + 9) = v57[0];
      v43 = v57[2];
      *(v9 + 25) = v57[1];
      *v9 = 0;
      v9[8] = 1;
      *(v9 + 41) = v43;
      *(v9 + 16) = 0;
      v9[136] = 1;
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CA018, &qword_1000900D0);
      v44 = sub_10001121C(&qword_1000CA020, &qword_1000CA000, &qword_100090088);
      v55[0] = v50;
      v55[1] = v52;
      v55[2] = v44;
      v55[3] = &protocol witness table for InsetGroupedListStyle;
      swift_getOpaqueTypeConformance2();
      sub_10001121C(&qword_1000CA028, &qword_1000CA018, &qword_1000900D0);
      sub_10008D3DC();
      return sub_10000C3F8(&v59, &qword_1000CA010, &qword_1000900C8);
    }
  }

  else
  {
    v45 = v19[1];
    type metadata accessor for DeviceStatusViewModel();
    sub_10001ABAC(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100018294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for DeviceStatusView();
  v4 = v3 - 8;
  v54 = *(v3 - 8);
  v5 = *(v54 + 64);
  __chkstk_darwin(v3);
  v55 = v6;
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009C08(&qword_1000CA040, &qword_1000900E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v52 - v13;
  v53 = sub_100009C08(&qword_1000CA048, &qword_1000900E8);
  v14 = *(v53 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v53);
  v17 = &v52 - v16;
  v18 = sub_100009C08(&qword_1000CA050, &qword_1000900F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v57 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v52 - v22;
  v24 = *(v4 + 32);
  v56 = a1;
  v25 = (a1 + v24);
  v26 = *v25;
  if (*v25)
  {
    v61 = v12;
    v62 = v8;
    v63 = v7;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    v27 = *(v64 + 16);

    if (v27)
    {
      type metadata accessor for DeviceStatusViewModel();
      sub_10001ABAC(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
      v28 = sub_10008D15C();
      v30 = v29;

      v31 = sub_10008CD0C();
      v64 = v28;
      v65 = v30;
      v66 = v31;
      v67 = v26;
      __chkstk_darwin(v31);
      v32 = v56;
      sub_100009C08(&qword_1000CA0D0, &unk_1000901E0);
      sub_100009C08(&qword_1000CA0B8, &qword_1000901D0);
      sub_10001AAA0();
      sub_10001A9E4();
      sub_10008D98C();
      v33 = v53;
      (*(v14 + 32))(v23, v17, v53);
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v32 = v56;
      v33 = v53;
    }

    v52 = v23;
    (*(v14 + 56))(v23, v34, 1, v33);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    v35 = v64;
    v36 = *(v64 + 16);
    v64 = 0;
    v65 = v36;
    swift_getKeyPath();
    v37 = v58;
    sub_10001ABF4(v32, v58, type metadata accessor for DeviceStatusView);
    v38 = (*(v54 + 80) + 24) & ~*(v54 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v35;
    sub_10001AD28(v37, v39 + v38, type metadata accessor for DeviceStatusView);
    sub_100009C08(&qword_1000CA058, &qword_100095260);
    sub_100009C08(&qword_1000CA060, &qword_1000901B0);
    sub_10001A700();
    sub_10001A7E0();
    v40 = v60;
    sub_10008D96C();
    v41 = v23;
    v42 = v57;
    sub_10000C314(v41, v57, &qword_1000CA050, &qword_1000900F0);
    v44 = v61;
    v43 = v62;
    v45 = *(v62 + 16);
    v46 = v63;
    v45(v61, v40, v63);
    v47 = v59;
    sub_10000C314(v42, v59, &qword_1000CA050, &qword_1000900F0);
    v48 = sub_100009C08(&qword_1000CA0C8, &qword_1000901D8);
    v45((v47 + *(v48 + 48)), v44, v46);
    v49 = *(v43 + 8);
    v49(v40, v46);
    sub_10000C3F8(v52, &qword_1000CA050, &qword_1000900F0);
    v49(v44, v46);
    return sub_10000C3F8(v42, &qword_1000CA050, &qword_1000900F0);
  }

  else
  {
    v51 = v25[1];
    type metadata accessor for DeviceStatusViewModel();
    sub_10001ABAC(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001898C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DeviceStatusView() + 24));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    sub_100009C08(&qword_1000C9C88, &qword_10008FDE0);
    sub_10008CB0C();
    type metadata accessor for DeviceRowView();
    sub_10001121C(&qword_1000CA0E8, &qword_1000C9C88, &qword_10008FDE0);
    sub_10001ABAC(&qword_1000CA0C0, type metadata accessor for DeviceRowView);
    sub_10001ABAC(&qword_1000CA0F0, type metadata accessor for DeviceRowViewModel);
    return sub_10008D97C();
  }

  else
  {
    v3 = v1[1];
    type metadata accessor for DeviceStatusViewModel();
    sub_10001ABAC(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100018BD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v7 = type metadata accessor for DeviceStatusCompleteSectionView();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_100009C08(&qword_1000CA098, &unk_1000901C0);
  v11 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v13 = &v41 - v12;
  v46 = sub_100009C08(&qword_1000CA088, &qword_1000901B8);
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v46);
  v43 = &v41 - v16;
  v17 = sub_100009C08(&qword_1000CA060, &qword_1000901B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v41 - v19;
  v21 = type metadata accessor for DeviceStatusSectionViewModel();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v26 >= *(a2 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v45 = a4;
  sub_10001ABF4(a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + v23[9] * v26, &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceStatusSectionViewModel);
  v27 = *&v25[*(v21 + 20)];
  if (!*(v27 + 16))
  {
    v38 = 1;
    v37 = v46;
    goto LABEL_7;
  }

  v28 = *(v7 + 20);
  v29 = sub_10008CABC();
  (*(*(v29 - 8) + 16))(v10 + v28, v25, v29);
  type metadata accessor for DeviceStatusViewModel();
  sub_10001ABAC(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
  *v10 = sub_10008D15C();
  v10[1] = v30;
  v23 = (v42 + *(type metadata accessor for DeviceStatusView() + 24));
  v31 = *v23;
  if (*v23)
  {
    v32 = *v23;

    v33 = sub_10008CD0C();
    v34 = sub_10001AD28(v10, v13, type metadata accessor for DeviceStatusCompleteSectionView);
    v35 = &v13[*(v44 + 36)];
    *v35 = v33;
    v35[1] = v31;
    __chkstk_darwin(v34);
    *(&v41 - 2) = v27;
    sub_100009C08(&qword_1000CA0B8, &qword_1000901D0);
    sub_10001A8FC();
    sub_10001A9E4();
    v36 = v43;
    sub_10008D98C();
    v37 = v46;
    (*(v14 + 32))(v20, v36, v46);
    v38 = 0;
LABEL_7:
    (*(v14 + 56))(v20, v38, 1, v37);
    sub_10001AC5C(v20, v45);
    return sub_10001ACCC(v25);
  }

LABEL_10:
  v40 = v23[1];
  result = sub_10008D13C();
  __break(1u);
  return result;
}

uint64_t sub_10001906C()
{

  sub_100009C08(&qword_1000C9C88, &qword_10008FDE0);
  sub_10008CB0C();
  type metadata accessor for DeviceRowView();
  sub_10001121C(&qword_1000CA0E8, &qword_1000C9C88, &qword_10008FDE0);
  sub_10001ABAC(&qword_1000CA0C0, type metadata accessor for DeviceRowView);
  sub_10001ABAC(&qword_1000CA0F0, type metadata accessor for DeviceRowViewModel);
  return sub_10008D97C();
}

uint64_t sub_1000191B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_100009C08(&qword_1000C9F80, &qword_10008FFD0);
  v3 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v5 = &v21 - v4;
  v22 = sub_100009C08(&qword_1000C9F88, &qword_10008FFD8);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v22);
  v9 = &v21 - v8;
  v10 = sub_10008D42C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100009C08(&qword_1000C9F90, &qword_10008FFE0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  sub_10008D40C();
  v26 = a1;
  sub_100009C08(&qword_1000C9F98, &qword_10008FFE8);
  sub_100019F1C();
  sub_10008CF7C();
  sub_10008D41C();
  v25 = a1;
  sub_100009C08(&qword_1000C9FC8, &unk_100090000);
  sub_10001121C(&qword_1000C9FD0, &qword_1000C9FC8, &unk_100090000);
  sub_10008CF7C();
  v17 = *(v23 + 48);
  (*(v13 + 16))(v5, v16, v12);
  v18 = &v5[v17];
  v19 = v22;
  (*(v6 + 16))(v18, v9, v22);
  sub_10008D30C();
  (*(v6 + 8))(v9, v19);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1000194FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DeviceStatusView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = sub_100009C08(&qword_1000C9FB0, &qword_10008FFF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  sub_10001ABF4(a1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceStatusView);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_10001AD28(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for DeviceStatusView);
  sub_100009C08(&qword_1000C9FD8, &unk_100090010);
  sub_10001A21C();
  sub_10008D90C();
  v15 = (a1 + *(v5 + 32));
  if (*v15)
  {
    v16 = *v15;

    v17 = sub_100013C4C();

    KeyPath = swift_getKeyPath();
    v19 = swift_allocObject();
    *(v19 + 16) = !v17;
    (*(v9 + 32))(a2, v12, v8);
    result = sub_100009C08(&qword_1000C9F98, &qword_10008FFE8);
    v21 = (a2 + *(result + 36));
    *v21 = KeyPath;
    v21[1] = sub_10001A454;
    v21[2] = v19;
  }

  else
  {
    v22 = v15[1];
    type metadata accessor for DeviceStatusViewModel();
    sub_10001ABAC(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100019800@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1000C8D40 != -1)
  {
    swift_once();
  }

  v2 = qword_1000D6DC0;
  v3 = objc_opt_self();

  v4 = [v3 systemBlueColor];
  v5 = sub_10008D80C();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v5;
  return result;
}

uint64_t sub_1000198AC(uint64_t a1)
{
  v2 = type metadata accessor for DeviceStatusView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10008CEFC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_10008CEEC();
  sub_10001ABF4(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceStatusView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_10001AD28(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for DeviceStatusView);
  return sub_10008D91C();
}

uint64_t sub_100019A28(uint64_t a1)
{
  v20 = sub_10008D29C();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v19 - v8);
  v10 = sub_10008CFDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DeviceStatusView();
  sub_10000C314(a1 + *(v15 + 20), v9, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_10008DE3C();
    v17 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_10008CFCC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100019CB0()
{
  sub_100009C08(&qword_1000C9F48, &qword_10008FFA8);
  sub_100007108(&qword_1000C9F50, &qword_10008FFB0);
  sub_100007108(&qword_1000C9F58, &qword_10008FFB8);
  sub_100007108(&qword_1000C9F60, &qword_10008FFC0);
  sub_10001121C(&qword_1000C9F68, &qword_1000C9F58, &qword_10008FFB8);
  sub_10001121C(&qword_1000C9F70, &qword_1000C9F60, &qword_10008FFC0);
  swift_getOpaqueTypeConformance2();
  sub_100019E50();
  swift_getOpaqueTypeConformance2();
  return sub_10008D04C();
}

unint64_t sub_100019E50()
{
  result = qword_1000CDBA0;
  if (!qword_1000CDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDBA0);
  }

  return result;
}

uint64_t sub_100019EAC(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000C9F58, &qword_10008FFB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100019F1C()
{
  result = qword_1000C9FA0;
  if (!qword_1000C9FA0)
  {
    sub_100007108(&qword_1000C9F98, &qword_10008FFE8);
    sub_10001121C(&qword_1000C9FA8, &qword_1000C9FB0, &qword_10008FFF0);
    sub_10001121C(&qword_1000C9FB8, &qword_1000C9FC0, &qword_10008FFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9FA0);
  }

  return result;
}

uint64_t sub_10001A00C()
{
  v1 = *(type metadata accessor for DeviceStatusView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100019A28(v2);
}

uint64_t sub_10001A06C()
{
  v1 = type metadata accessor for DeviceStatusView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10008CFDC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[6]);

  v11 = *(v5 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001A1B0()
{
  v1 = type metadata accessor for DeviceStatusView();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_10001A21C()
{
  result = qword_1000C9FE0;
  if (!qword_1000C9FE0)
  {
    sub_100007108(&qword_1000C9FD8, &unk_100090010);
    sub_10001121C(&qword_1000C9FE8, &qword_1000C9FF0, &unk_100092390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9FE0);
  }

  return result;
}

uint64_t sub_10001A2D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10008D1EC();
  *a1 = result;
  return result;
}

uint64_t sub_10001A328@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D1AC();
  *a1 = result;
  return result;
}

uint64_t sub_10001A354(uint64_t *a1)
{
  v1 = *a1;

  return sub_10008D1BC();
}

uint64_t sub_10001A380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10008D24C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001A3B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10008D24C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001A46C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D1AC();
  *a1 = result;
  return result;
}

uint64_t sub_10001A498(uint64_t *a1)
{
  v1 = *a1;

  return sub_10008D1BC();
}

uint64_t sub_10001A4C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10008D1EC();
  *a1 = result;
  return result;
}

uint64_t sub_10001A530()
{
  v1 = type metadata accessor for DeviceStatusView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[5];
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10008CFDC();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[6]);

  v12 = *(v6 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001A67C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DeviceStatusView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100018BD0(a1, v6, v7, a2);
}

unint64_t sub_10001A700()
{
  result = qword_1000CA068;
  if (!qword_1000CA068)
  {
    sub_100007108(&qword_1000CA058, &qword_100095260);
    sub_10001A78C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA068);
  }

  return result;
}

unint64_t sub_10001A78C()
{
  result = qword_1000CA070;
  if (!qword_1000CA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA070);
  }

  return result;
}

unint64_t sub_10001A7E0()
{
  result = qword_1000CA078;
  if (!qword_1000CA078)
  {
    sub_100007108(&qword_1000CA060, &qword_1000901B0);
    sub_10001A864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA078);
  }

  return result;
}

unint64_t sub_10001A864()
{
  result = qword_1000CA080;
  if (!qword_1000CA080)
  {
    sub_100007108(&qword_1000CA088, &qword_1000901B8);
    sub_10001A8FC();
    sub_10001A9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA080);
  }

  return result;
}

unint64_t sub_10001A8FC()
{
  result = qword_1000CA090;
  if (!qword_1000CA090)
  {
    sub_100007108(&qword_1000CA098, &unk_1000901C0);
    sub_10001ABAC(&qword_1000CA0A0, type metadata accessor for DeviceStatusCompleteSectionView);
    sub_10001121C(&qword_1000CA0A8, &unk_1000CDB60, &qword_100095600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA090);
  }

  return result;
}

unint64_t sub_10001A9E4()
{
  result = qword_1000CA0B0;
  if (!qword_1000CA0B0)
  {
    sub_100007108(&qword_1000CA0B8, &qword_1000901D0);
    sub_10001ABAC(&qword_1000CA0C0, type metadata accessor for DeviceRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA0B0);
  }

  return result;
}

unint64_t sub_10001AAA0()
{
  result = qword_1000CA0D8;
  if (!qword_1000CA0D8)
  {
    sub_100007108(&qword_1000CA0D0, &unk_1000901E0);
    sub_10001AB58();
    sub_10001121C(&qword_1000CA0A8, &unk_1000CDB60, &qword_100095600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA0D8);
  }

  return result;
}

unint64_t sub_10001AB58()
{
  result = qword_1000CA0E0;
  if (!qword_1000CA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA0E0);
  }

  return result;
}

uint64_t sub_10001ABAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001ABF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001AC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CA060, &qword_1000901B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001ACCC(uint64_t a1)
{
  v2 = type metadata accessor for DeviceStatusSectionViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001AD28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_10001ADF0()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10001AEC8()
{
  *v0;
  *v0;
  *v0;
  sub_10008DC8C();
}

Swift::Int sub_10001AF8C()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10001B060@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001BD80(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001B090(unint64_t *a1@<X8>)
{
  v2 = 0xED00007265626D75;
  v3 = 0x6E5F6C6169726573;
  v4 = 0x8000000100097920;
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0x767265735F6D646DLL;
    v4 = 0xED000064695F7265;
  }

  if (*v1)
  {
    v3 = 1684628597;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_10001B124()
{
  v1 = 0x6E5F6C6169726573;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x767265735F6D646DLL;
  }

  if (*v0)
  {
    v1 = 1684628597;
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

uint64_t sub_10001B1B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001BD80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001B1E8(uint64_t a1)
{
  v2 = sub_10001C2D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001B224(uint64_t a1)
{
  v2 = sub_10001C2D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001B260(void *a1)
{
  v3 = v1;
  v5 = sub_100009C08(&qword_1000CA128, &qword_100090320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000BB24(a1, a1[3]);
  sub_10001C2D0();
  sub_10008E24C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_10008E12C();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18[14] = 1;
    sub_10008E12C();
    v18[13] = *(v3 + 32);
    v18[12] = 2;
    sub_10001C378();
    sub_10008E14C();
    v16 = v3[5];
    v17 = v3[6];
    v18[11] = 3;
    sub_10008E10C();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10001B460()
{
  sub_10008E1FC();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_10008DC8C();
  sub_10008DC8C();
  v6 = v0[5];
  v7 = v0[6];
  sub_10008DC8C();

  if (v7)
  {
    sub_10008E21C(1u);
    sub_10008DC8C();
  }

  else
  {
    sub_10008E21C(0);
  }

  return sub_10008E22C();
}

double sub_10001B550@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001C004(a1, v6);
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

void sub_10001B5BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_10008DC8C();
  sub_10008DC8C();
  sub_10008DC8C();

  if (v7)
  {
    sub_10008E21C(1u);

    sub_10008DC8C();
  }

  else
  {
    sub_10008E21C(0);
  }
}

Swift::Int sub_10001B6C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  sub_10008E1FC();
  sub_10008DC8C();
  sub_10008DC8C();
  sub_10008DC8C();

  if (v7)
  {
    sub_10008E21C(1u);
    sub_10008DC8C();
  }

  else
  {
    sub_10008E21C(0);
  }

  return sub_10008E22C();
}