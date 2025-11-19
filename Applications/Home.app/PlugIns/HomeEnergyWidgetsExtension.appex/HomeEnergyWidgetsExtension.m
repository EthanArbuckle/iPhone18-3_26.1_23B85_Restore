uint64_t sub_100001CC8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v22 = sub_1000210BC();
  v20 = *(v22 - 8);
  v2 = *(v20 + 64);
  __chkstk_darwin();
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000211AC() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(sub_100021B7C() - 8) + 64);
  __chkstk_darwin();
  v6 = (*(*(sub_1000066C8(&qword_100030300, &unk_100022A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = (*(*(sub_1000066C8(&qword_1000302C0, &qword_100022A40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v23 = sub_1000210DC();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = *(*(sub_100021B6C() - 8) + 64);
  __chkstk_darwin();
  v15 = type metadata accessor for ForecastLocationEntity();
  if (*(v1 + *(v15 + 28) + 16))
  {
    if (*(v1 + *(v15 + 28) + 16) == 1)
    {
      sub_100021B5C();
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      sub_100021B4C(v26);
      v16 = *(v1 + *(v15 + 24));
      sub_100020F7C();
      sub_100021B3C(v25);

      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      sub_100021B4C(v27);
      sub_1000210CC();
    }

    else
    {
      sub_100021B2C();
      sub_10002119C();
      (*(v20 + 104))(v21, enum case for LocalizedStringResource.BundleDescription.main(_:), v22);
      sub_1000210EC();
    }

    (*(v12 + 56))(v11, 1, 1, v23);
  }

  else
  {
    sub_100021B5C();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_100021B4C(v28);
    v17 = *(v1 + *(v15 + 24));
    sub_100020F7C();
    sub_100021B3C(v25);

    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_100021B4C(v29);
    sub_1000210CC();
    (*(v12 + 56))(v11, 1, 1, v23);
  }

  sub_100020FEC();
  v18 = sub_100020FFC();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  return sub_10002100C();
}

uint64_t sub_1000021D8()
{
  v0 = (*(*(sub_1000066C8(&qword_1000302C0, &qword_100022A40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v14 - v1;
  v14[0] = sub_1000210BC();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1000211AC() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_100021B7C() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_1000210DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = sub_10002106C();
  sub_100008BC0(v12, qword_100030B18);
  sub_100008B88(v12, qword_100030B18);
  sub_100021B2C();
  sub_10002119C();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_1000210EC();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10002105C();
}

uint64_t sub_1000024B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000216DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1000210DC() - 8) + 64);
  __chkstk_darwin();
  v8 = type metadata accessor for ForecastLocationEntity();
  v9 = v8[6];
  sub_1000066C8(&qword_1000302D8, &qword_100022A60);
  sub_1000210AC();
  *(a1 + v9) = sub_100020F9C();
  sub_1000216AC();
  v10 = sub_1000216CC();
  v11 = sub_100021CBC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10001EC04(0x292874696E69, 0xE600000000000000, v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "ForecastLocationEntity:%s creating a Current Location entity.", v12, 0xCu);
    sub_100008C24(v13);
  }

  (*(v3 + 8))(v6, v2);
  v14 = a1 + v8[5];
  sub_10002117C();
  if (qword_1000300E8 != -1)
  {
    swift_once();
  }

  v15 = sub_10002118C();
  v16 = sub_100008B88(v15, qword_100030B30);
  (*(*(v15 - 8) + 16))(a1, v16, v15);
  v17 = a1 + v8[7];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 2;
  v19[0] = 0xD000000000000010;
  v19[1] = 0x80000001000240E0;
  return sub_100020F8C();
}

uint64_t sub_1000027C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v7 = sub_10002118C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin();
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000216DC();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  __chkstk_darwin();
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(*(sub_1000210DC() - 8) + 64);
  __chkstk_darwin();
  v48 = type metadata accessor for ForecastLocationEntity();
  v17 = *(v48 + 24);
  sub_1000066C8(&qword_1000302D8, &qword_100022A60);
  sub_1000210AC();
  v18 = sub_100020F9C();
  v52 = a4;
  v47 = v18;
  *(a4 + v17) = v18;
  sub_1000216AC();
  v19 = v8[2];
  v44 = v11;
  v45 = a1;
  v20 = v11;
  v21 = v7;
  v46 = v19;
  v19(v20, a1, v7);

  v49 = v15;
  v22 = sub_1000216CC();
  v23 = sub_100021CBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v22;
    v25 = v24;
    v43 = swift_slowAlloc();
    v54[0] = v43;
    *v25 = 136315650;
    *(v25 + 4) = sub_10001EC04(0xD000000000000016, 0x80000001000240C0, v54);
    v41 = v23;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10001EC04(v53, a3, v54);
    *(v25 + 22) = 2080;
    v26 = v44;
    v27 = sub_10002115C();
    v29 = v28;
    v30 = v8[1];
    v30(v26, v21);
    v31 = sub_10001EC04(v27, v29, v54);

    *(v25 + 24) = v31;
    v32 = v42;
    _os_log_impl(&_mh_execute_header, v42, v41, "ForecastLocationEntity:%s creating a HMHome entity: %s : %s", v25, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = v8[1];
    v30(v44, v7);
  }

  (*(v50 + 8))(v49, v51);
  v33 = v48;
  v34 = v52;
  v35 = v52 + *(v48 + 20);
  sub_10002117C();
  v36 = v45;
  v46(v34, v45, v21);
  v37 = v34 + *(v33 + 28);
  v38 = v53;
  *v37 = v53;
  *(v37 + 8) = a3;
  *(v37 + 16) = 0;
  v54[0] = v38;
  v54[1] = a3;

  sub_100020F8C();
  return v30(v36, v21);
}

uint64_t sub_100002BF4()
{
  v1 = type metadata accessor for ForecastLocationEntity();
  if (*(v0 + v1[7] + 16))
  {
    if (*(v0 + v1[7] + 16) != 1)
    {
      v3 = 0x8000000100023F40;
      v4 = 0xD000000000000010;
      goto LABEL_7;
    }

    sub_100021D1C(26);

    v8[0] = 0xD000000000000018;
    v8[1] = 0x8000000100023F60;
  }

  else
  {
    strcpy(v8, "Home Entity: ");
    HIWORD(v8[1]) = -4864;
  }

  v2 = *(v0 + v1[6]);
  sub_100020F7C();
  sub_100021BCC(v7);

  v4 = v8[0];
  v3 = v8[1];
LABEL_7:
  v8[0] = v4;
  v8[1] = v3;
  v5 = v1[5];
  sub_10002118C();
  sub_100008D34(&qword_1000302B0, &type metadata accessor for UUID);
  v9._countAndFlagsBits = sub_100021D9C();
  sub_100021BCC(v9);

  v10._countAndFlagsBits = 0x4449677562656420;
  v10._object = 0xEA0000000000203ALL;
  sub_100021BCC(v10);

  return v8[0];
}

uint64_t sub_100002D98()
{
  v0 = (*(*(sub_1000066C8(&qword_1000302E0, &qword_100022A68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = sub_10002118C();
  sub_100008BC0(v3, qword_100030B30);
  v4 = sub_100008B88(v3, qword_100030B30);
  sub_10002114C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100002EC8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 224) = a1;
  v4 = *(type metadata accessor for ForecastLocationEntity() - 8);
  *(v3 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v6 = sub_1000215DC();
  *(v3 + 56) = v6;
  v7 = *(v6 - 8);
  *(v3 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v9 = sub_1000216DC();
  *(v3 + 80) = v9;
  v10 = *(v9 - 8);
  *(v3 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100003064, 0, 0);
}

uint64_t sub_100003064()
{
  v24 = v0;
  v1 = v0[14];
  v2 = v0[3];
  v3 = [objc_opt_self() sharedAuthorization];
  v4 = [v3 isAuthorized];

  sub_1000216AC();

  v5 = sub_1000216CC();
  v6 = sub_100021CBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v21 = v0[10];
    v22 = v0[14];
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, &v23);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10001EC04(v9, v8, &v23);
    *(v10 + 22) = 2080;
    if (v4)
    {
      v11 = 21321;
    }

    else
    {
      v11 = 0x544F4E207369;
    }

    if (v4)
    {
      v12 = 0xE200000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_10001EC04(v11, v12, &v23);

    *(v10 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s from %s: HMFLocationAuthorization %s authorized", v10, 0x20u);
    swift_arrayDestroy();

    v14 = *(v7 + 8);
    v14(v22, v21);
  }

  else
  {
    v15 = v0[14];
    v16 = v0[10];
    v17 = v0[11];

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  v0[15] = v14;
  v0[16] = sub_10002162C();
  v0[17] = sub_10002164C();
  v0[18] = sub_10002163C();
  v0[19] = sub_100008D34(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v19 = sub_100021C4C();

  return _swift_task_switch(sub_100003338, v19, v18);
}

uint64_t sub_100003338()
{
  v1 = v0[18];
  v2 = v0[16];

  v0[20] = sub_10002161C();

  return _swift_task_switch(sub_1000033AC, 0, 0);
}

uint64_t sub_1000033AC()
{
  sub_100021C6C();
  *(v0 + 168) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100003440, v2, v1);
}

uint64_t sub_100003440()
{
  v2 = v0[20];
  v1 = v0[21];

  v0[22] = sub_1000215EC();

  return _swift_task_switch(sub_1000034B8, 0, 0);
}

uint64_t sub_1000034B8()
{
  v24 = v0;
  if (v0[22])
  {
    v1 = v0[19];
    v2 = v0[17];
    v0[23] = sub_10002163C();
    v4 = sub_100021C4C();

    return _swift_task_switch(sub_1000036E4, v4, v3);
  }

  else
  {
    v5 = v0[12];
    sub_1000216AC();
    v6 = sub_1000216CC();
    v7 = sub_100021CBC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[15];
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    if (v8)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, &v23);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s WidgetDataModel returned no home", v13, 0xCu);
      sub_100008C24(v14);
    }

    v9(v10, v12);
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    v18 = v0[9];
    v20 = v0[5];
    v19 = v0[6];

    v21 = v0[1];

    return v21(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000036E4()
{
  v1 = v0[23];
  v2 = v0[16];

  v0[24] = sub_10002161C();
  v3 = async function pointer to WidgetDataModel.orderedHomes.getter[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10000378C;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10000378C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v7 = *(v4 + 192);

    v8 = sub_100003EC4;
  }

  else
  {
    *(v4 + 216) = a1;
    v8 = sub_1000038C8;
  }

  return _swift_task_switch(v8, 0, 0);
}

unint64_t sub_1000038C8()
{
  v64 = v0;
  v1 = *(v0 + 192);

  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(v0 + 104);
  sub_1000216AC();

  v5 = sub_1000216CC();
  v6 = sub_100021CBC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = v3;
    v14 = swift_slowAlloc();
    v63[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, v63);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(v13 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "%s WidgetDataModel returned %ld home(s)", v12, 0x16u);
    sub_100008C24(v14);
    v3 = v13;
  }

  else
  {
  }

  v8(v9, v11);
  v63[0] = _swiftEmptyArrayStorage;
  v15 = *(v3 + 16);
  if (v15)
  {
    v16 = *(v0 + 64);
    v18 = *(v16 + 16);
    v17 = v16 + 16;
    v62 = v18;
    v19 = v3 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    v61 = _swiftEmptyArrayStorage;
    do
    {
      v21 = *(v0 + 176);
      v22 = *(v0 + 72);
      v23 = *(v0 + 56);
      v62(v22, v19, v23);
      v24.super.isa = v21;
      v25 = sub_1000215BC(v24);
      (*(v17 - 8))(v22, v23);
      if (v25)
      {
        sub_100021BFC();
        if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100021C2C();
        }

        sub_100021C3C();
        v61 = v63[0];
      }

      v19 += v20;
      --v15;
    }

    while (v15);

    result = v61;
  }

  else
  {

    result = _swiftEmptyArrayStorage;
  }

  v63[0] = _swiftEmptyArrayStorage;
  if (result >> 62)
  {
    goto LABEL_48;
  }

  v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v29 = _swiftEmptyArrayStorage;
    if (v28)
    {
      v30 = 0;
      v31 = result & 0xC000000000000001;
      v32 = result & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v31)
        {
          v34 = result;
          result = sub_100021D2C();
        }

        else
        {
          if (v30 >= *(v32 + 16))
          {
            goto LABEL_45;
          }

          v34 = result;
          result = *(result + 8 * v30 + 32);
        }

        v35 = result;
        v36 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v37 = [result location];
        if (v37)
        {
        }

        else if (*(v0 + 224))
        {

          goto LABEL_19;
        }

        sub_100021D4C();
        v33 = *(v63[0] + 2);
        sub_100021D6C();
        sub_100021D7C();
        sub_100021D5C();
LABEL_19:
        ++v30;
        result = v34;
        if (v36 == v28)
        {
          v38 = v63[0];
          v29 = _swiftEmptyArrayStorage;

          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_49;
        }
      }
    }

    v38 = _swiftEmptyArrayStorage;

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_31:

    v39 = *(v38 + 16);
    if (!v39)
    {
      goto LABEL_50;
    }

LABEL_33:
    result = sub_10001F1AC(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      return result;
    }

    v40 = 0;
    v41 = *(v0 + 32);
    v29 = _swiftEmptyArrayStorage;
    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ((v38 & 0xC000000000000001) != 0)
      {
        v43 = sub_100021D2C();
      }

      else
      {
        if (v40 >= *(v38 + 16))
        {
          goto LABEL_47;
        }

        v43 = *(v38 + 8 * v40 + 32);
      }

      v44 = v43;
      v45 = *(v0 + 40);
      v63[0] = v43;
      sub_100004494(v63, v45);

      v47 = _swiftEmptyArrayStorage[2];
      v46 = _swiftEmptyArrayStorage[3];
      if (v47 >= v46 >> 1)
      {
        sub_10001F1AC(v46 > 1, v47 + 1, 1);
      }

      v48 = *(v0 + 40);
      _swiftEmptyArrayStorage[2] = v47 + 1;
      result = sub_100008CD0(v48, _swiftEmptyArrayStorage + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v47);
      ++v40;
      if (v42 == v39)
      {
        goto LABEL_50;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v49 = result;
    v28 = sub_100021D8C();
    result = v49;
  }

LABEL_49:
  v39 = sub_100021D8C();
  if (v39)
  {
    goto LABEL_33;
  }

LABEL_50:

  sub_1000024B4(*(v0 + 48));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_100010044(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
  }

  v51 = v29[2];
  v50 = v29[3];
  if (v51 >= v50 >> 1)
  {
    v29 = sub_100010044(v50 > 1, v51 + 1, 1, v29);
  }

  v52 = *(v0 + 48);
  v53 = *(v0 + 32);

  v29[2] = v51 + 1;
  sub_100008CD0(v52, v29 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51);
  v55 = *(v0 + 104);
  v54 = *(v0 + 112);
  v56 = *(v0 + 96);
  v57 = *(v0 + 72);
  v59 = *(v0 + 40);
  v58 = *(v0 + 48);

  v60 = *(v0 + 8);

  return v60(v29);
}

size_t sub_100003EC4()
{
  v59 = v0;
  v1 = *(v0 + 104);
  sub_1000216AC();

  v2 = sub_1000216CC();
  v3 = sub_100021CBC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v58[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, v58);
    *(v9 + 12) = 2048;
    *(v9 + 14) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v2, v3, "%s WidgetDataModel returned %ld home(s)", v9, 0x16u);
    sub_100008C24(v10);
  }

  else
  {
  }

  v5(v6, v8);
  v58[0] = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    v12 = *(v0 + 64);
    v14 = *(v12 + 16);
    v13 = v12 + 16;
    v56 = v14;
    v57 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v17 = *(v0 + 176);
      v18 = *(v0 + 72);
      v19 = *(v0 + 56);
      v56(v18, v15, v19);
      v20.super.isa = v17;
      v21 = sub_1000215BC(v20);
      (*(v13 - 8))(v18, v19);
      if (v21)
      {
        sub_100021BFC();
        if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100021C2C();
        }

        sub_100021C3C();
        v57 = v58[0];
      }

      v15 += v16;
      --v11;
    }

    while (v11);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  v58[0] = _swiftEmptyArrayStorage;
  v23 = v57;
  if (v57 >> 62)
  {
    goto LABEL_47;
  }

  v24 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  if (v24)
  {
    v25 = 0;
    v26 = v23 & 0xC000000000000001;
    v27 = v23 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v29 = sub_100021D2C();
      }

      else
      {
        if (v25 >= *(v27 + 16))
        {
          goto LABEL_44;
        }

        v29 = *(v23 + 8 * v25 + 32);
      }

      v30 = v29;
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v24 = sub_100021D8C();
        goto LABEL_14;
      }

      v32 = [v29 location];
      if (v32)
      {
      }

      else if (*(v0 + 224))
      {

        goto LABEL_18;
      }

      sub_100021D4C();
      v28 = *(v58[0] + 2);
      sub_100021D6C();
      sub_100021D7C();
      sub_100021D5C();
      v23 = v57;
LABEL_18:
      ++v25;
      if (v31 == v24)
      {
        v33 = v58[0];
        goto LABEL_29;
      }
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_29:

  if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
  {
    v34 = sub_100021D8C();
    if (v34)
    {
      goto LABEL_32;
    }

LABEL_49:

    v23 = _swiftEmptyArrayStorage;
LABEL_50:
    sub_1000024B4(*(v0 + 48));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_100010044(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v46 = *(v23 + 16);
    v45 = *(v23 + 24);
    if (v46 >= v45 >> 1)
    {
      v23 = sub_100010044(v45 > 1, v46 + 1, 1, v23);
    }

    v47 = *(v0 + 48);
    v48 = *(v0 + 32);

    *(v23 + 16) = v46 + 1;
    sub_100008CD0(v47, v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46);
    v50 = *(v0 + 104);
    v49 = *(v0 + 112);
    v51 = *(v0 + 96);
    v52 = *(v0 + 72);
    v54 = *(v0 + 40);
    v53 = *(v0 + 48);

    v55 = *(v0 + 8);

    return v55(v23);
  }

  v34 = *(v33 + 16);
  if (!v34)
  {
    goto LABEL_49;
  }

LABEL_32:
  result = sub_10001F1AC(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = *(v0 + 32);
    v23 = _swiftEmptyArrayStorage;
    v57 = v33 & 0xC000000000000001;
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_45;
      }

      if (v57)
      {
        v39 = sub_100021D2C();
      }

      else
      {
        if (v36 >= *(v33 + 16))
        {
          goto LABEL_46;
        }

        v39 = *(v33 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = *(v0 + 40);
      v58[0] = v39;
      sub_100004494(v58, v41);

      v43 = _swiftEmptyArrayStorage[2];
      v42 = _swiftEmptyArrayStorage[3];
      if (v43 >= v42 >> 1)
      {
        sub_10001F1AC(v42 > 1, v43 + 1, 1);
      }

      v44 = *(v0 + 40);
      _swiftEmptyArrayStorage[2] = v43 + 1;
      sub_100008CD0(v44, _swiftEmptyArrayStorage + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v43);
      ++v36;
      if (v38 == v34)
      {

        goto LABEL_50;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004494@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_10002118C() - 8) + 64);
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000216DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1000216AC();
  v13 = v12;
  v14 = sub_1000216CC();
  LODWORD(v12) = sub_100021CBC();

  v40 = v12;
  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v39 = v6;
    v16 = v15;
    v37 = swift_slowAlloc();
    v41 = v37;
    *v16 = 136315394;
    *(v16 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000241B0, &v41);
    *(v16 + 12) = 2080;
    v17 = [v13 name];
    v36 = v7;
    v18 = v17;
    v19 = sub_100021B9C();
    v38 = v13;
    v20 = v8;
    v21 = a2;
    v22 = v19;
    v24 = v23;

    v25 = v22;
    a2 = v21;
    v26 = sub_10001EC04(v25, v24, &v41);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v40, "%s Creating entity for home '%s' with known loc.", v16, 0x16u);
    swift_arrayDestroy();

    v6 = v39;

    v27 = v11;
    v28 = &ResourceBundleClass;
    (*(v20 + 8))(v27, v36);
    v13 = v38;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v28 = &ResourceBundleClass;
  }

  v29 = [v13 uniqueIdentifier];
  sub_10002116C();

  v30 = [v13 v28[2].ivar_lyt];
  v31 = sub_100021B9C();
  v33 = v32;

  return sub_1000027C0(v6, v31, v33, a2);
}

uint64_t sub_1000047BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_10002118C() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1000216DC();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[9] = v6;
  *v6 = v1;
  v6[1] = sub_100004900;

  return sub_1000073DC();
}

uint64_t sub_100004900(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100004A00, 0, 0);
}

uint64_t sub_100004A00()
{
  v57 = v0;
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = [*(v0 + 80) location];
    if (v2)
    {

      v3 = 0xEE002E6E6F697461;
      v4 = 0x636F6C20444F4F47;
    }

    else
    {
      v3 = 0x8000000100024080;
      v4 = 0xD000000000000031;
    }

    v24 = *(v0 + 64);
    sub_1000216AC();
    v25 = v1;

    v26 = sub_1000216CC();
    v27 = sub_100021CBC();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 64);
    v30 = &ResourceBundleClass;
    v31 = *(v0 + 32);
    v32 = *(v0 + 40);
    if (v28)
    {
      v53 = v4;
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v33 = 136315650;
      *(v33 + 4) = sub_10001EC04(0xD000000000000012, 0x8000000100024060, &v56);
      *(v33 + 12) = 2080;
      v55 = v31;
      v34 = [v25 name];
      v54 = v29;
      v35 = sub_100021B9C();
      v37 = v36;

      v38 = sub_10001EC04(v35, v37, &v56);
      v30 = &ResourceBundleClass;

      *(v33 + 14) = v38;
      *(v33 + 22) = 2080;
      v39 = sub_10001EC04(v53, v3, &v56);

      *(v33 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s returning default entity for current home '%s' with %s", v33, 0x20u);
      swift_arrayDestroy();

      (*(v32 + 8))(v54, v55);
    }

    else
    {

      (*(v32 + 8))(v29, v31);
    }

    v41 = *(v0 + 16);
    v40 = *(v0 + 24);
    v42 = [v25 uniqueIdentifier];
    sub_10002116C();

    v43 = [v25 v30[2].ivar_lyt];
    v44 = sub_100021B9C();
    v46 = v45;

    sub_1000027C0(v40, v44, v46, v41);
  }

  else
  {
    v5 = *(v0 + 56);
    sub_1000216AC();
    v6 = sub_1000216CC();
    v7 = sub_100021CBC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 56);
    v10 = *(v0 + 32);
    v11 = *(v0 + 40);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v56 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10001EC04(0xD000000000000012, 0x8000000100024060, &v56);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s no current home found.", v12, 0xCu);
      sub_100008C24(v13);
    }

    v14 = *(v11 + 8);
    v14(v9, v10);
    v15 = *(v0 + 48);
    sub_1000216AC();
    v16 = sub_1000216CC();
    v17 = sub_100021CBC();
    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 40);
    v19 = *(v0 + 48);
    v21 = *(v0 + 32);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v56 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10001EC04(0xD000000000000012, 0x8000000100024060, &v56);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s returning default entity (Current Location)", v22, 0xCu);
      sub_100008C24(v23);
    }

    v14(v19, v21);
    sub_1000024B4(*(v0 + 16));
  }

  v48 = *(v0 + 56);
  v47 = *(v0 + 64);
  v49 = *(v0 + 48);
  v50 = *(v0 + 24);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100004F24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002118C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100004FC8(uint64_t a1)
{
  v2 = sub_100008D34(&qword_1000301B8, type metadata accessor for ForecastLocationEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100005048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000510C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000510C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005200(uint64_t a1)
{
  v2 = sub_100008D34(&qword_100030188, type metadata accessor for ForecastLocationEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000527C(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1000066C8(&qword_1000302C0, &qword_100022A40) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1000216DC();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  v6[1] = sub_1000053BC;

  return sub_100002EC8(1, 0xD000000000000019, 0x8000000100024150);
}

uint64_t sub_1000053BC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1000054BC, 0, 0);
}

uint64_t sub_1000054BC()
{
  v16 = v0;
  v1 = v0[6];
  v2 = *(v0[8] + 16);

  sub_1000216AC();
  v3 = sub_1000216CC();
  v4 = sub_100021CBC();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10001EC04(0xD000000000000013, 0x8000000100024190, &v15);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s returning %ld locations", v9, 0x16u);
    sub_100008C24(v10);
  }

  (*(v7 + 8))(v6, v8);
  v11 = v0[3];
  sub_1000210AC();
  v12 = sub_1000210DC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1000056E4;

  return sub_100002EC8(1, 0xD000000000000018, 0x8000000100024170);
}

uint64_t sub_1000056E4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1000057E4, 0, 0);
}

uint64_t sub_1000057E4()
{
  v1 = v0[10];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for ForecastLocationEntity();
  sub_100008D34(&qword_100030150, type metadata accessor for ForecastLocationEntity);
  sub_100008D34(&qword_100030180, type metadata accessor for ForecastLocationEntity);
  sub_100020FDC();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100005900(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008D8C;

  return sub_100007F1C(a1);
}

uint64_t sub_1000059A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000510C;

  return sub_10000527C(a1);
}

uint64_t sub_100005A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005B00;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100005B00(uint64_t a1)
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

uint64_t sub_100005C00(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000068B8();
  *v6 = v2;
  v6[1] = sub_100008D7C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100005CB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100005D50;

  return sub_1000047BC(a1);
}

uint64_t sub_100005D50()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_100005E4C, 0, 0);
}

uint64_t sub_100005E4C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ForecastLocationEntity();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100005EF0()
{
  v0 = sub_1000210BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_1000211AC() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_100021B7C() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_1000210DC();
  sub_100008BC0(v7, qword_100030B48);
  sub_100008B88(v7, qword_100030B48);
  sub_100021B2C();
  sub_10002119C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000210EC();
}

unint64_t sub_1000060D0()
{
  v0 = type metadata accessor for ForecastLocationEntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_1000066C8(&qword_1000302A8, &unk_100022A30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_100021D1C(32);

  v13 = 0xD00000000000001ELL;
  v14 = 0x8000000100023F20;
  sub_100020FBC();
  if ((*(v1 + 48))(v7, 1, v0))
  {
    sub_100008C70(v7, &qword_1000302A8, &unk_100022A30);
    v8 = 0xE500000000000000;
    v9._countAndFlagsBits = 0x3E6C696E3CLL;
  }

  else
  {
    sub_10000731C(v7, v4);
    sub_100008C70(v7, &qword_1000302A8, &unk_100022A30);
    v10 = sub_100002BF4();
    v8 = v11;
    sub_100007380(v4);
    v9._countAndFlagsBits = v10;
  }

  v9._object = v8;
  sub_100021BCC(v9);

  return v13;
}

uint64_t sub_1000062F4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100008B88(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000063B4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008B34();
  *v5 = v2;
  v5[1] = sub_100006460;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_100006460()
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

uint64_t sub_100006568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000861C();
  *a1 = result;
  return result;
}

uint64_t sub_100006590(uint64_t a1)
{
  v2 = sub_100006CEC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000065E8(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000209D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000665C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_1000209D4(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_1000066C8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006710(uint64_t *a1, uint64_t *a2)
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

uint64_t type metadata accessor for ForecastLocationEntity()
{
  result = qword_100030250;
  if (!qword_100030250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000068B8()
{
  result = qword_100030160;
  if (!qword_100030160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030160);
  }

  return result;
}

unint64_t sub_100006B10()
{
  result = qword_1000301A8;
  if (!qword_1000301A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301A8);
  }

  return result;
}

unint64_t sub_100006B68()
{
  result = qword_1000301B0;
  if (!qword_1000301B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301B0);
  }

  return result;
}

unint64_t sub_100006C08()
{
  result = qword_1000301C0;
  if (!qword_1000301C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301C0);
  }

  return result;
}

uint64_t sub_100006CA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006710(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006CEC()
{
  result = qword_1000301D8;
  if (!qword_1000301D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301D8);
  }

  return result;
}

unint64_t sub_100006D44()
{
  result = qword_1000301E0;
  if (!qword_1000301E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301E0);
  }

  return result;
}

unint64_t sub_100006D9C()
{
  result = qword_1000301E8;
  if (!qword_1000301E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301E8);
  }

  return result;
}

unint64_t sub_100006DF4()
{
  result = qword_1000301F0;
  if (!qword_1000301F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000301F0);
  }

  return result;
}

uint64_t sub_100006EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002118C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100006F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002118C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100007044()
{
  sub_10002118C();
  if (v0 <= 0x3F)
  {
    sub_1000070D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000070D0()
{
  if (!qword_100030260)
  {
    sub_10000712C();
    v0 = sub_100020FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_100030260);
    }
  }
}

unint64_t sub_10000712C()
{
  result = qword_100030268;
  if (!qword_100030268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030268);
  }

  return result;
}

uint64_t sub_100007180(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10000719C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000071B0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000071F8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000723C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_100007264(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007274(uint64_t a1, int a2)
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

uint64_t sub_100007294(uint64_t result, int a2, int a3)
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

void type metadata accessor for CGSize()
{
  if (!qword_1000302A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000302A0);
    }
  }
}

uint64_t sub_10000731C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastLocationEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007380(uint64_t a1)
{
  v2 = type metadata accessor for ForecastLocationEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000073DC()
{
  v1 = sub_1000216DC();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v4 = *(*(sub_1000066C8(&qword_1000302E0, &qword_100022A68) - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v5 = sub_1000215DC();
  v0[7] = v5;
  v6 = *(v5 - 8);
  v0[8] = v6;
  v7 = *(v6 + 64) + 15;
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_100007538, 0, 0);
}

uint64_t sub_100007538()
{
  v0[10] = sub_10002162C();
  v0[11] = sub_10002164C();
  v0[12] = sub_10002163C();
  v0[13] = sub_100008D34(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100007610, v2, v1);
}

uint64_t sub_100007610()
{
  v1 = v0[12];
  v2 = v0[10];

  v0[14] = sub_10002161C();

  return _swift_task_switch(sub_100007684, 0, 0);
}

uint64_t sub_100007684()
{
  v1 = v0[6];
  v2 = sub_10002118C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = async function pointer to WidgetDataModel.home(_:)[1];
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100007768;
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[6];

  return WidgetDataModel.home(_:)(v6, v7);
}

uint64_t sub_100007768()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 128) = v0;

  sub_100008C70(v4, &qword_1000302E0, &qword_100022A68);

  if (v0)
  {
    v5 = sub_100007D00;
  }

  else
  {
    v5 = sub_1000078CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000078CC()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[17] = sub_10002163C();
  v4 = sub_100021C4C();

  return _swift_task_switch(sub_100007960, v4, v3);
}

uint64_t sub_100007960()
{
  v1 = v0[17];
  v2 = v0[10];

  v0[18] = sub_10002161C();

  return _swift_task_switch(sub_1000079D4, 0, 0);
}

uint64_t sub_1000079D4()
{
  sub_100021C6C();
  *(v0 + 152) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100007A68, v2, v1);
}

uint64_t sub_100007A68()
{
  v2 = v0[18];
  v1 = v0[19];

  v0[20] = sub_1000215EC();

  return _swift_task_switch(sub_100007AE0, 0, 0);
}

uint64_t sub_100007AE0()
{
  v25 = v0;
  v1 = *(v0 + 160);
  if (v1 && (v2 = *(v0 + 72), v3.super.isa = *(v0 + 160), v4 = sub_1000215BC(v3), v1, v4))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  else
  {
    v5 = *(v0 + 40);
    sub_1000216AC();
    v6 = sub_1000216CC();
    v7 = sub_100021CBC();
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);
    v12 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    if (v8)
    {
      v23 = *(v0 + 72);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10001EC04(0xD000000000000010, 0x8000000100024130, &v24);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s WidgetDataModel failed to load current Home", v15, 0xCu);
      sub_100008C24(v16);

      (*(v13 + 8))(v12, v14);
      (*(v10 + 8))(v23, v11);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
      (*(v10 + 8))(v9, v11);
    }

    v4 = 0;
  }

  v17 = *(v0 + 72);
  v19 = *(v0 + 40);
  v18 = *(v0 + 48);
  v20 = *(v0 + 32);

  v21 = *(v0 + 8);

  return v21(v4);
}

uint64_t sub_100007D00()
{
  v22 = v0;
  v1 = v0[16];
  v2 = v0[4];
  sub_1000216AC();
  swift_errorRetain();
  v3 = sub_1000216CC();
  v4 = sub_100021CBC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[16];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10001EC04(0xD000000000000010, 0x8000000100024130, &v21);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s WidgetDataModel threw an error: %@", v10, 0x16u);
    sub_100008C70(v11, &qword_1000302F0, &qword_100022A70);

    sub_100008C24(v12);
  }

  else
  {
    v14 = v0[16];
  }

  (*(v8 + 8))(v7, v9);
  v15 = v0[9];
  v16 = v0[5];
  v17 = v0[6];
  v18 = v0[4];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_100007F1C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000216DC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for ForecastLocationEntity();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_100008094;

  return sub_100002EC8(0, 0x7365697469746E65, 0xEE00293A726F6628);
}

uint64_t sub_100008094(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100008194, 0, 0);
}

uint64_t sub_100008194()
{
  v49 = v0;
  result = v0[11];
  v44 = *(result + 16);
  if (v44)
  {
    v2 = 0;
    v39 = v0[2];
    v40 = v0[7];
    v41 = v0[11];
    v42 = _swiftEmptyArrayStorage;
    while (v2 < *(result + 16))
    {
      v3 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v4 = v2 + 1;
      v46 = *(v40 + 72);
      sub_10000731C(v0[11] + v3 + v46 * v2, v0[9]);
      v5 = 0;
      v6 = *(v39 + 16);
      do
      {
        v7 = v0[9];
        if (v6 == v5)
        {
          sub_100007380(v0[9]);
          goto LABEL_4;
        }

        v8 = v0[2];
        v9 = *(sub_10002118C() - 8);
        v10 = v5 + 1;
        v11 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5;
        sub_100008D34(&qword_1000302F8, &type metadata accessor for UUID);
        v5 = v10;
      }

      while ((sub_100021B1C() & 1) == 0);
      sub_100008CD0(v0[9], v0[8]);
      v12 = v42;
      v48 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001F1AC(0, v42[2] + 1, 1);
        v12 = v48;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_10001F1AC(v13 > 1, v14 + 1, 1);
        v12 = v48;
      }

      v15 = v0[8];
      *(v12 + 16) = v14 + 1;
      v42 = v12;
      sub_100008CD0(v15, v12 + v3 + v14 * v46);
LABEL_4:
      v2 = v4;
      result = v41;
      if (v4 == v44)
      {
        v16 = v0[11];
        v17 = v42;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_16:
    v18 = v0[5];
    v19 = v0[2];

    sub_1000216AC();
    swift_retain_n();

    v20 = sub_1000216CC();
    v21 = sub_100021CBC();

    if (os_log_type_enabled(v20, v21))
    {
      v47 = v0[5];
      v22 = v0[4];
      v43 = v0[6];
      v45 = v0[3];
      v23 = v0[2];
      v24 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v24 = 136315906;
      *(v24 + 4) = sub_10001EC04(0x7365697469746E65, 0xEE00293A726F6628, &v48);
      *(v24 + 12) = 2080;
      sub_10002118C();
      v25 = sub_100021C1C();
      v27 = sub_10001EC04(v25, v26, &v48);

      *(v24 + 14) = v27;
      *(v24 + 22) = 2048;
      v28 = v17[2];

      *(v24 + 24) = v28;

      *(v24 + 32) = 2080;
      v29 = sub_100021C1C();
      v31 = sub_10001EC04(v29, v30, &v48);

      *(v24 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s requested entities (%s) returning %ld: %s", v24, 0x2Au);
      swift_arrayDestroy();

      (*(v22 + 8))(v47, v45);
    }

    else
    {
      v32 = v0[4];
      v33 = v0[5];
      v34 = v0[3];

      (*(v32 + 8))(v33, v34);
    }

    v36 = v0[8];
    v35 = v0[9];
    v37 = v0[5];

    v38 = v0[1];

    return v38(v17);
  }

  return result;
}

uint64_t sub_10000861C()
{
  v0 = sub_10002102C();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  (__chkstk_darwin)();
  v34 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_1000066C8(&qword_1000302B8, &unk_100023530) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = v31 - v6;
  v7 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v10 = v31 - v9;
  v11 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11 - 8);
  v14 = v31 - v13;
  v15 = sub_1000210BC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000211AC();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100021B7C();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_1000210DC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v31[1] = sub_1000066C8(&qword_1000302C8, &qword_100022A48);
  sub_100021B2C();
  sub_10002119C();
  (*(v16 + 104))(v19, enum case for LocalizedStringResource.BundleDescription.main(_:), v15);
  sub_1000210EC();
  (*(v25 + 56))(v14, 1, 1, v24);
  v27 = type metadata accessor for ForecastLocationEntity();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v28 = sub_100020F6C();
  v29 = *(*(v28 - 8) + 56);
  v29(v32, 1, 1, v28);
  v29(v33, 1, 1, v28);
  (*(v35 + 104))(v34, enum case for InputConnectionBehavior.default(_:), v36);
  sub_100008D34(&qword_1000301B8, type metadata accessor for ForecastLocationEntity);
  return sub_100020FCC();
}

unint64_t sub_100008B34()
{
  result = qword_1000302D0;
  if (!qword_1000302D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000302D0);
  }

  return result;
}

uint64_t sub_100008B88(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100008BC0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100008C24(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100008C70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000066C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastLocationEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008D34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008D90@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v59 = sub_10002150C();
  v52 = *(v59 - 8);
  v2 = *(v52 + 64);
  __chkstk_darwin(v59);
  v51 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000212EC();
  v48 = *(v50 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v50);
  v49 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10002113C();
  v45 = *(v46 - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin(v46);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002144C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  v10 = __chkstk_darwin(v8);
  v53 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v43 - v12;
  v56 = sub_1000066C8(&qword_1000303F8, &unk_100022BE0);
  v14 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v57 = (v43 - v15);
  v16 = sub_100021A5C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = v43 - v23;
  __chkstk_darwin(v22);
  v26 = v43 - v25;
  v27 = type metadata accessor for HistoricalUsageWidgetEntryView();
  v28 = v1 + *(v27 + 24);
  v29 = type metadata accessor for HistoricalUsageEntry();
  if (*(v28 + v29[7]) == 2)
  {
    v30 = v1 + *(v27 + 20);
    sub_10000A44C(v26);
    (*(v17 + 104))(v24, enum case for WidgetFamily.accessoryCircular(_:), v16);
    sub_10000A844(&qword_100030438, &type metadata accessor for WidgetFamily);
    sub_100021BEC();
    sub_100021BEC();
    v31 = *(v17 + 8);
    v31(v24, v16);
    v31(v26, v16);
    if (v65 == v60)
    {
      v32 = v29[8];
      v64 = 0;
      LOBYTE(v60) = 2;
      *v61 = *(v28 + v32);
      HIBYTE(v62) = 0;
    }

    else
    {
      v36 = sub_10002192C();
      v64 = 1;
      v63 = 1;
      LOBYTE(v60) = 2;
      v61[0] = v36;
      memset(&v61[8], 0, 32);
      v62 = 257;
    }

    sub_1000066C8(&qword_100030420, &unk_100022BF0);
    sub_10000A710();
    sub_10000A764();
    sub_1000218BC();
    v37 = v66;
    v38 = v57;
    *v57 = v65;
    v38[1] = v37;
    v38[2] = v67;
    *(v38 + 24) = v68;
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000A844(&qword_100030430, &type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    return sub_1000218BC();
  }

  else
  {
    (*(v45 + 16))(v47, v28, v46);
    (*(v48 + 16))(v49, v28 + v29[5], v50);
    sub_10002143C();
    v33 = v1 + *(v27 + 20);
    sub_10000A44C(v21);
    (*(v54 + 16))(v53, v13, v55);
    v34 = *(v28 + v29[6]);
    sub_100020FBC();
    v44 = v13;
    v43[1] = v21;
    if (*(&v65 + 1) && (sub_10000A634(v65, *(&v65 + 1)), sub_100020FBC(), *(&v65 + 1)))
    {
      sub_100020F7C();

      v50 = v65;
    }

    else
    {
      v50 = 0;
    }

    sub_100020FBC();
    v35 = v65;
    if (*(&v65 + 1))
    {
    }

    sub_10000A634(v35, *(&v35 + 1));
    v40 = v51;
    sub_1000214FC();
    v41 = v52;
    v42 = v59;
    (*(v52 + 16))(v57, v40, v59);
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000A844(&qword_100030430, &type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    sub_1000218BC();
    (*(v41 + 8))(v40, v42);
    return (*(v54 + 8))(v44, v55);
  }
}

HomeEnergyWidgetsExtension::HistoricalUsageWidget __swiftcall HistoricalUsageWidget.init()()
{
  v0 = 0x8000000100022A90;
  v1 = 0xD000000000000015;
  result.kind._object = v0;
  result.kind._countAndFlagsBits = v1;
  return result;
}

uint64_t HistoricalUsageWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a1;
  v40 = a2;
  v2 = sub_1000066C8(&qword_100030118, "$+");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v35 - v5;
  v7 = sub_1000066C8(&qword_100030308, "*'");
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = v35 - v9;
  v41 = sub_1000066C8(&qword_100030310, ">'");
  v37 = *(v41 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v41);
  v13 = v35 - v12;
  v14 = sub_1000066C8(&qword_100030318, "^'");
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v35[0] = v35 - v17;
  type metadata accessor for HistoricalUsageWidgetEntryView();
  sub_10000A844(&qword_100030320, type metadata accessor for HistoricalUsageWidgetEntryView);
  sub_100009CFC();

  sub_100021A9C();
  v18 = sub_100009D50();
  sub_10002189C();
  (*(v3 + 8))(v6, v2);
  v42 = sub_10002153C();
  v43 = v19;
  v46 = v2;
  v47 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_100009DB4();
  sub_1000218AC();

  (*(v36 + 8))(v10, v7);
  v46 = sub_10002152C();
  v47 = v22;
  v42 = v7;
  v43 = &type metadata for String;
  v44 = OpaqueTypeConformance2;
  v45 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v35[0];
  v25 = v41;
  sub_10002187C();

  (*(v37 + 8))(v13, v25);
  sub_1000066C8(&qword_100030338, &qword_100022AE8);
  v26 = sub_100021A5C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100022AA0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v30 + v29, enum case for WidgetFamily.systemSmall(_:), v26);
  v32(v31 + v28, enum case for WidgetFamily.accessoryRectangular(_:), v26);
  v32(v31 + 2 * v28, enum case for WidgetFamily.accessoryCircular(_:), v26);
  v42 = v41;
  v43 = &type metadata for String;
  v44 = v23;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_10002188C();

  return (*(v39 + 8))(v24, v33);
}

uint64_t sub_100009BF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HistoricalUsageWidgetEntryView();
  sub_10000A8FC(a1, a2 + *(v4 + 24));
  *a2 = swift_getKeyPath();
  sub_1000066C8(&qword_100030448, &qword_100022C30);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1000066C8(&qword_100030440, &qword_100022E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for HistoricalUsageWidgetEntryView()
{
  result = qword_1000303A8;
  if (!qword_1000303A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100009CFC()
{
  result = qword_100030328;
  if (!qword_100030328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030328);
  }

  return result;
}

unint64_t sub_100009D50()
{
  result = qword_100030120;
  if (!qword_100030120)
  {
    sub_100006710(&qword_100030118, "$+");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030120);
  }

  return result;
}

unint64_t sub_100009DB4()
{
  result = qword_100030330;
  if (!qword_100030330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030330);
  }

  return result;
}

uint64_t sub_100009E4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100009E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009EE0()
{
  sub_100006710(&qword_100030318, "^'");
  sub_100006710(&qword_100030310, ">'");
  sub_100006710(&qword_100030308, "*'");
  sub_100006710(&qword_100030118, "$+");
  sub_100009D50();
  swift_getOpaqueTypeConformance2();
  sub_100009DB4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for HistoricalUsageEntry();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10000A1A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for HistoricalUsageEntry();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10000A308()
{
  sub_10000A3DC(319, &qword_1000303B8, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_10000A3DC(319, &unk_1000303C0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HistoricalUsageEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000A3DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000216EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000A44C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000217CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000066C8(&qword_100030440, &qword_100022E10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000A88C(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100021A5C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_100021CAC();
    v16 = sub_10002191C();
    sub_10002168C();

    sub_1000217BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10000A634(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10000A684()
{
  result = qword_100030408;
  if (!qword_100030408)
  {
    sub_100006710(&qword_100030400, &unk_1000238B0);
    sub_10000A710();
    sub_10000A764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030408);
  }

  return result;
}

unint64_t sub_10000A710()
{
  result = qword_100030410;
  if (!qword_100030410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030410);
  }

  return result;
}

unint64_t sub_10000A764()
{
  result = qword_100030418;
  if (!qword_100030418)
  {
    sub_100006710(&qword_100030420, &unk_100022BF0);
    sub_10000A7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030418);
  }

  return result;
}

unint64_t sub_10000A7F0()
{
  result = qword_100030428;
  if (!qword_100030428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030428);
  }

  return result;
}

uint64_t sub_10000A844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000A88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066C8(&qword_100030440, &qword_100022E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000A970()
{
  result = qword_100030450;
  if (!qword_100030450)
  {
    sub_100006710(&qword_100030458, qword_100022C68);
    sub_10000A684();
    sub_10000A844(&qword_100030430, &type metadata accessor for HistoricalUsageWidgetCommon.HistoricalUsageWidgetForFamily);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030450);
  }

  return result;
}

uint64_t sub_10000AA2C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v62 = sub_10002133C();
  v54 = *(v62 - 8);
  v2 = *(v54 + 64);
  __chkstk_darwin(v62);
  v53 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10002113C();
  v50 = *(v52 - 8);
  v4 = *(v50 + 64);
  __chkstk_darwin(v52);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10002131C();
  v47 = *(v48 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v48);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002126C();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = __chkstk_darwin(v8);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v59 = sub_1000066C8(&qword_100030520, &qword_100022DA0);
  v14 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = (&v47 - v15);
  v16 = sub_100021A5C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v47 - v23;
  __chkstk_darwin(v22);
  v26 = &v47 - v25;
  v27 = type metadata accessor for UtilityRateInfoWidgetEntryView();
  v28 = *(v27 + 24);
  v55 = v1;
  v29 = &v1[v28];
  v30 = type metadata accessor for UtilityRateInfoEntry();
  v31 = v30;
  if (v29[*(v30 + 28)] == 2)
  {
    v32 = &v55[*(v27 + 20)];
    sub_10000A44C(v26);
    (*(v17 + 104))(v24, enum case for WidgetFamily.accessoryCircular(_:), v16);
    sub_10000BFB0(&qword_100030438, &type metadata accessor for WidgetFamily);
    sub_100021BEC();
    sub_100021BEC();
    v33 = *(v17 + 8);
    v33(v24, v16);
    v33(v26, v16);
    if (v68 == v63)
    {
      v34 = *(v31 + 32);
      v67 = 0;
      LOBYTE(v63) = 2;
      *v64 = *&v29[v34];
      HIBYTE(v65) = 0;
    }

    else
    {
      v39 = sub_10002192C();
      v67 = 1;
      v66 = 1;
      LOBYTE(v63) = 2;
      v64[0] = v39;
      memset(&v64[8], 0, 32);
      v65 = 257;
    }

    sub_1000066C8(&qword_100030420, &unk_100022BF0);
    sub_10000A710();
    sub_10000A764();
    sub_1000218BC();
    v40 = v69;
    v41 = v60;
    *v60 = v68;
    v41[1] = v40;
    v41[2] = v70;
    *(v41 + 24) = v71;
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000BFB0(&qword_100030528, &type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
    return sub_1000218BC();
  }

  else
  {
    v35 = *&v29[*(v30 + 24)];
    sub_100020FBC();
    v36 = *(&v68 + 1);
    v37 = BYTE8(v70);
    sub_10000A634(v68, *(&v68 + 1));
    (*(v47 + 16))(v49, &v29[*(v31 + 20)], v48);
    (*(v50 + 16))(v51, v29, v52);
    sub_10002122C();
    v38 = &v55[*(v27 + 20)];
    sub_10000A44C(v21);
    (*(v57 + 16))(v56, v13, v58);
    if (v36)
    {
      if (v37)
      {
        sub_100020FBC();
        if (*(&v68 + 1))
        {
          sub_100020F7C();
        }
      }
    }

    v52 = v21;
    v55 = v13;
    sub_100020FBC();
    v43 = v68;
    if (*(&v68 + 1))
    {
    }

    sub_10000A634(v43, *(&v43 + 1));
    v44 = v53;
    sub_10002132C();
    v45 = v54;
    v46 = v62;
    (*(v54 + 16))(v60, v44, v62);
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_10000BFB0(&qword_100030528, &type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
    sub_1000218BC();
    (*(v45 + 8))(v44, v46);
    return (*(v57 + 8))(v55, v58);
  }
}

HomeEnergyWidgetsExtension::UtilityRateInfoWidget __swiftcall UtilityRateInfoWidget.init()()
{
  v0 = 0x8000000100022C60;
  v1 = 0xD000000000000015;
  result.kind._object = v0;
  result.kind._countAndFlagsBits = v1;
  return result;
}

uint64_t UtilityRateInfoWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a1;
  v40 = a2;
  v2 = sub_1000066C8(&qword_100030128, &qword_100022428);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v35 - v5;
  v7 = sub_1000066C8(&qword_100030460, "H'");
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = v35 - v9;
  v41 = sub_1000066C8(&qword_100030468, "\\'");
  v37 = *(v41 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v41);
  v13 = v35 - v12;
  v14 = sub_1000066C8(&qword_100030470, "|'");
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v35[0] = v35 - v17;
  type metadata accessor for UtilityRateInfoWidgetEntryView();
  sub_10000BFB0(&qword_100030478, type metadata accessor for UtilityRateInfoWidgetEntryView);
  sub_10000B98C();

  sub_100021A9C();
  v18 = sub_10000B9E0();
  sub_10002189C();
  (*(v3 + 8))(v6, v2);
  v42 = sub_10002136C();
  v43 = v19;
  v46 = v2;
  v47 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_100009DB4();
  sub_1000218AC();

  (*(v36 + 8))(v10, v7);
  v46 = sub_10002135C();
  v47 = v22;
  v42 = v7;
  v43 = &type metadata for String;
  v44 = OpaqueTypeConformance2;
  v45 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v35[0];
  v25 = v41;
  sub_10002187C();

  (*(v37 + 8))(v13, v25);
  sub_1000066C8(&qword_100030338, &qword_100022AE8);
  v26 = sub_100021A5C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100022AA0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v30 + v29, enum case for WidgetFamily.accessoryRectangular(_:), v26);
  v32(v31 + v28, enum case for WidgetFamily.systemSmall(_:), v26);
  v32(v31 + 2 * v28, enum case for WidgetFamily.accessoryCircular(_:), v26);
  v42 = v41;
  v43 = &type metadata for String;
  v44 = v23;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_10002188C();

  return (*(v39 + 8))(v24, v33);
}

uint64_t sub_10000B880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UtilityRateInfoWidgetEntryView();
  sub_10000BFF8(a1, a2 + *(v4 + 24));
  *a2 = swift_getKeyPath();
  sub_1000066C8(&qword_100030448, &qword_100022C30);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1000066C8(&qword_100030440, &qword_100022E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for UtilityRateInfoWidgetEntryView()
{
  result = qword_1000304E0;
  if (!qword_1000304E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000B98C()
{
  result = qword_100030480;
  if (!qword_100030480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030480);
  }

  return result;
}

unint64_t sub_10000B9E0()
{
  result = qword_100030130;
  if (!qword_100030130)
  {
    sub_100006710(&qword_100030128, &qword_100022428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030130);
  }

  return result;
}

uint64_t sub_10000BA98()
{
  sub_100006710(&qword_100030470, "|'");
  sub_100006710(&qword_100030468, "\\'");
  sub_100006710(&qword_100030460, "H'");
  sub_100006710(&qword_100030128, &qword_100022428);
  sub_10000B9E0();
  swift_getOpaqueTypeConformance2();
  sub_100009DB4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for UtilityRateInfoEntry();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10000BD5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for UtilityRateInfoEntry();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10000BEC0()
{
  sub_10000A3DC(319, &qword_1000303B8, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_10000A3DC(319, &unk_1000303C0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UtilityRateInfoEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000BFB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UtilityRateInfoEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000C06C()
{
  result = qword_100030530;
  if (!qword_100030530)
  {
    sub_100006710(&qword_100030538, &qword_100022E18);
    sub_10000A684();
    sub_10000BFB0(&qword_100030528, &type metadata accessor for UtilityRateWidgetCommon.UtilityRateWidgetForFamily);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030530);
  }

  return result;
}

uint64_t sub_10000C128()
{

  sub_1000066C8(&qword_100030548, &qword_100022E78);
  sub_10002170C();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000C230();
  sub_10002171C();
  return 0;
}

unint64_t sub_10000C230()
{
  result = qword_100030540;
  if (!qword_100030540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030540);
  }

  return result;
}

unint64_t sub_10000C2B4()
{
  result = qword_100030550;
  if (!qword_100030550)
  {
    sub_100006710(&qword_100030558, &unk_100022E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030550);
  }

  return result;
}

uint64_t sub_10000C33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002113C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10002131C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000C45C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002113C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10002131C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for UtilityRateInfoEntry()
{
  result = qword_1000305B8;
  if (!qword_1000305B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000C5B0()
{
  sub_10002113C();
  if (v0 <= 0x3F)
  {
    sub_10002131C();
    if (v1 <= 0x3F)
    {
      sub_10000C66C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000C66C()
{
  if (!qword_1000305C8)
  {
    v0 = sub_100021CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000305C8);
    }
  }
}

uint64_t sub_10000C6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a1;
  v3 = sub_10002131C();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = sub_10002113C();
  v7 = *(v25[0] - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v25[0]);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002126C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002134C();
  sub_10002125C();
  sub_10002123C();
  v16 = sub_100020540();
  if (sub_10002124C())
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  sub_100021ACC();
  v19 = v18;
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  (*(v7 + 32))(a2, v10, v25[0]);
  v22 = type metadata accessor for UtilityRateInfoEntry();
  result = (*(v26 + 32))(a2 + v22[5], v6, v27);
  *(a2 + v22[6]) = v16;
  *(a2 + v22[7]) = v17;
  v24 = (a2 + v22[8]);
  *v24 = v19;
  v24[1] = v21;
  return result;
}

uint64_t sub_10000C934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_10002131C();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = sub_10002113C();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v10 = sub_10002126C();
  v3[10] = v10;
  v11 = *(v10 - 8);
  v3[11] = v11;
  v12 = *(v11 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10000CAAC, 0, 0);
}

uint64_t sub_10000CAAC()
{
  v1 = v0[12];
  sub_10002134C();
  v0[13] = sub_10002162C();
  sub_10002164C();
  v0[14] = sub_10002163C();
  sub_10000EA40(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v3 = sub_100021C4C();

  return _swift_task_switch(sub_10000CB84, v3, v2);
}

uint64_t sub_10000CB84()
{
  v2 = v0[13];
  v1 = v0[14];

  v0[15] = sub_10002161C();

  return _swift_task_switch(sub_10000CBF4, 0, 0);
}

uint64_t sub_10000CBF4()
{
  sub_100021C6C();
  *(v0 + 128) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_10000CC88, v2, v1);
}

uint64_t sub_10000CC88()
{
  v2 = v0[15];
  v1 = v0[16];

  v0[17] = sub_1000215EC();

  return _swift_task_switch(sub_10000CD00, 0, 0);
}

uint64_t sub_10000CD00()
{
  v1 = v0[17];
  v22 = v1;
  if (v1)
  {
    v2 = [v1 homes];
    sub_10000E9F4();
    v3 = sub_100021C0C();

    if (v3 >> 62)
    {
      v4 = sub_100021D8C();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ((v4 == 0) | [v1 hasOptedToHH2] & 1)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 3;
  }

  v27 = v5;
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[9];
  v23 = v0[10];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[3];
  v25 = v0[7];
  v26 = v0[4];
  v13 = v0[2];
  sub_10002125C();
  sub_10002123C();
  v24 = sub_100020540();
  sub_100021ACC();
  v15 = v14;
  v17 = v16;

  (*(v6 + 8))(v7, v23);
  (*(v9 + 32))(v13, v8, v25);
  v18 = type metadata accessor for UtilityRateInfoEntry();
  (*(v11 + 32))(v13 + v18[5], v10, v26);
  *(v13 + v18[6]) = v24;
  *(v13 + v18[7]) = v27;
  v19 = (v13 + v18[8]);
  *v19 = v15;
  v19[1] = v17;

  v20 = v0[1];

  return v20();
}

uint64_t sub_10000CF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = sub_100021A8C();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = *(*(sub_10002118C() - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = sub_1000215DC();
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v11 = sub_1000214EC();
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v14 = sub_1000216DC();
  v3[22] = v14;
  v15 = *(v14 - 8);
  v3[23] = v15;
  v16 = *(v15 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10000D128, 0, 0);
}

uint64_t sub_10000D128()
{
  v18 = v0;
  v1 = v0[24];
  v2 = v0[9];
  sub_10002169C();

  v3 = sub_1000216CC();
  v4 = sub_100021CBC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  if (v5)
  {
    v9 = v0[9];
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v17);
    *(v10 + 12) = 2080;
    v11 = sub_10001FFD0();
    v13 = sub_10001EC04(v11, v12, &v17);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s resolving usageSnapshot type for configuration: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v6, v8);
  v0[25] = sub_10002162C();
  sub_10002164C();
  v0[26] = sub_10002163C();
  sub_10000EA40(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v15 = sub_100021C4C();

  return _swift_task_switch(sub_10000D35C, v15, v14);
}

uint64_t sub_10000D35C()
{
  v2 = v0[25];
  v1 = v0[26];

  v0[27] = sub_10002161C();
  v3 = async function pointer to WidgetDataModel.orderedHomes.getter[1];
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_10000D400;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_10000D400(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v8 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v5 = v3[27];

    v6 = sub_10000D7BC;
  }

  else
  {
    v6 = sub_10000D528;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000D528()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  v3 = *(v1 + 16);
  v4 = *(v0 + 232);
  if (v3)
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    sub_10001F234(0, v3, 0);
    v7 = *(v6 + 16);
    v6 += 16;
    v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v30 = *(v6 + 56);
    v31 = v7;
    v9 = (v6 - 8);
    do
    {
      v10 = *(v0 + 168);
      v11 = *(v0 + 144);
      v12 = *(v0 + 128);
      v31(v11, v8, v12);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*v9)(v11, v12);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001F234(v13 > 1, v14 + 1, 1);
      }

      v15 = *(v0 + 168);
      v16 = *(v0 + 152);
      _swiftEmptyArrayStorage[2] = v14 + 1;
      (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v8 += v30;
      --v3;
    }

    while (v3);
  }

  v17 = *(v0 + 232);

  *(v0 + 248) = *(v0 + 240);
  *(v0 + 256) = _swiftEmptyArrayStorage;
  v18 = *(v0 + 72);
  sub_100020FBC();
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  *(v0 + 264) = v19;
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  if (v19)
  {

    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  sub_10000A634(v20, v19);
  v26 = async function pointer to static UtilityRateWidgetCommon.timeline(siteDetailIdentifier:homes:)[1];
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_10000D8DC;
  v28 = *(v0 + 112);

  return static UtilityRateWidgetCommon.timeline(siteDetailIdentifier:homes:)(v28, v25, v19, _swiftEmptyArrayStorage);
}

uint64_t sub_10000D7BC()
{
  *(v0 + 248) = 0;
  *(v0 + 256) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 72);
  sub_100020FBC();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 264) = v2;
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  if (v2)
  {

    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  sub_10000A634(v3, v2);
  v9 = async function pointer to static UtilityRateWidgetCommon.timeline(siteDetailIdentifier:homes:)[1];
  v10 = swift_task_alloc();
  *(v0 + 272) = v10;
  *v10 = v0;
  v10[1] = sub_10000D8DC;
  v11 = *(v0 + 112);

  return static UtilityRateWidgetCommon.timeline(siteDetailIdentifier:homes:)(v11, v8, v2, _swiftEmptyArrayStorage);
}

uint64_t sub_10000D8DC(uint64_t a1)
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_10000DA18, 0, 0);
}

uint64_t sub_10000DA18()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 192);
  v12 = *(v0 + 168);
  v13 = *(v0 + 144);
  v4 = *(v0 + 112);
  v14 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v9 + 16) = *(v0 + 72);
  sub_10001CDC4(sub_10000E9D4, v9, v1);

  (*(v6 + 16))(v5, v4, v7);
  type metadata accessor for UtilityRateInfoEntry();
  sub_10000EA40(&qword_100030608, type metadata accessor for UtilityRateInfoEntry);
  sub_100021B0C();
  (*(v6 + 8))(v4, v7);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000DBC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a1;
  v4 = sub_10002131C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002113C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002125C();
  sub_10002123C();
  if (sub_10002124C())
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  sub_100021ACC();
  v16 = v15;
  v18 = v17;
  (*(v10 + 32))(a3, v13, v9);
  v19 = type metadata accessor for UtilityRateInfoEntry();
  (*(v5 + 32))(a3 + v19[5], v8, v4);
  *(a3 + v19[6]) = v23;
  *(a3 + v19[7]) = v14;
  v20 = (a3 + v19[8]);
  *v20 = v16;
  v20[1] = v18;
}

uint64_t sub_10000DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10000C934(a1, v6, a3);
}

uint64_t sub_10000DE58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10000CF18(a1, v6, a3);
}

uint64_t sub_10000DF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000510C;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008D7C;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000E080()
{
  sub_100021D1C(53);
  v5._countAndFlagsBits = 0xD000000000000018;
  v5._object = 0x8000000100024320;
  sub_100021BCC(v5);
  v6._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v6);

  v7._countAndFlagsBits = 2106912;
  v7._object = 0xE300000000000000;
  sub_100021BCC(v7);
  v1 = type metadata accessor for UtilityRateInfoEntry();
  v2 = *(v0 + *(v1 + 24));
  v8._countAndFlagsBits = sub_10001FFD0();
  sub_100021BCC(v8);

  v9._object = 0x8000000100024340;
  v9._countAndFlagsBits = 0xD000000000000014;
  sub_100021BCC(v9);
  v3 = *(v1 + 20);
  sub_10002131C();
  sub_10000EA40(&qword_100030630, &type metadata accessor for UtilityRateInfoSnapshot);
  v10._countAndFlagsBits = sub_100021D9C();
  sub_100021BCC(v10);

  return 0;
}

uint64_t sub_10000E1D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002113C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_10000E294()
{
  result = qword_100030610;
  if (!qword_100030610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030610);
  }

  return result;
}

uint64_t sub_10000E2E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v27 = a2;
  v5 = type metadata accessor for UtilityRateInfoEntry();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000216DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002169C();
  v14 = sub_1000216CC();
  v15 = sub_100021C9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = a1;
    v19 = v18;
    v28 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242E0, &v28);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s THIS SHOULD NEVER GET CALLED", v17, 0xCu);
    sub_100008C24(v19);
    a1 = v25;

    a3 = v26;
  }

  (*(v10 + 8))(v13, v9);
  sub_10002111C();
  v20 = &v8[v5[5]];
  sub_10002130C();
  sub_100021ACC();
  *&v8[v5[6]] = a1;
  v8[v5[7]] = 3;
  v21 = &v8[v5[8]];
  *v21 = v22;
  *(v21 + 1) = v23;

  a3(v8);
  return sub_10000E978(v8);
}

uint64_t sub_10000E558(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v38 = a2;
  v39 = a1;
  v6 = sub_100021A8C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v41 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000066C8(&qword_100030618, &unk_100022FD0);
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  __chkstk_darwin(v42);
  v11 = v35 - v10;
  v12 = type metadata accessor for UtilityRateInfoEntry();
  v37 = *(v12 - 1);
  v13 = *(v37 + 64);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000216DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002169C();
  v21 = sub_1000216CC();
  v22 = sub_100021C9C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35[1] = a4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v36 = a3;
    v26 = v25;
    v43 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242C0, &v43);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s THIS SHOULD NEVER GET CALLED", v24, 0xCu);
    sub_100008C24(v26);
    a3 = v36;
  }

  (*(v17 + 8))(v20, v16);
  sub_10002111C();
  v27 = &v15[v12[5]];
  sub_1000212FC();
  sub_100021ACC();
  *&v15[v12[6]] = v39;
  v15[v12[7]] = 3;
  v28 = &v15[v12[8]];
  *v28 = v29;
  *(v28 + 1) = v30;
  sub_1000066C8(&qword_100030620, &unk_100023D20);
  v31 = *(v37 + 72);
  v32 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100022E90;
  sub_10000BFF8(v15, v33 + v32);

  sub_100021A7C();
  sub_10000EA40(&qword_100030608, type metadata accessor for UtilityRateInfoEntry);
  sub_100021B0C();
  a3(v11);
  (*(v40 + 8))(v11, v42);
  return sub_10000E978(v15);
}

uint64_t sub_10000E978(uint64_t a1)
{
  v2 = type metadata accessor for UtilityRateInfoEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000E9F4()
{
  result = qword_100030628;
  if (!qword_100030628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100030628);
  }

  return result;
}

uint64_t sub_10000EA40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000EA8C()
{
  result = qword_100030638;
  if (!qword_100030638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030638);
  }

  return result;
}

unint64_t sub_10000EAE0()
{
  sub_100021D1C(31);

  sub_100020FBC();
  sub_1000066C8(&qword_1000306D8, &qword_100023528);
  v1._countAndFlagsBits = sub_100021BBC();
  sub_100021BCC(v1);

  return 0xD00000000000001DLL;
}

uint64_t sub_10000EB9C()
{
  v0 = sub_1000210BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000211AC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100021B7C();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000210DC();
  sub_100008BC0(v9, qword_100030B60);
  sub_100008B88(v9, qword_100030B60);
  sub_100021B2C();
  sub_10002119C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000210EC();
}

unint64_t sub_10000ED8C()
{
  result = qword_100030640;
  if (!qword_100030640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030640);
  }

  return result;
}

unint64_t sub_10000EDE4()
{
  result = qword_100030648;
  if (!qword_100030648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030648);
  }

  return result;
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100013034();
  *v5 = v2;
  v5[1] = sub_100006460;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_10000EF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000103E4();
  *a1 = result;
  return result;
}

uint64_t sub_10000EF94(uint64_t a1)
{
  v2 = sub_10000EA8C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000EFD4()
{
  result = qword_100030650;
  if (!qword_100030650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030650);
  }

  return result;
}

unint64_t sub_10000F02C()
{
  result = qword_100030658;
  if (!qword_100030658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030658);
  }

  return result;
}

unint64_t sub_10000F084()
{
  result = qword_100030660;
  if (!qword_100030660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030660);
  }

  return result;
}

unint64_t sub_10000F0DC()
{
  result = qword_100030668;
  if (!qword_100030668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030668);
  }

  return result;
}

uint64_t sub_10000F13C()
{
  v0 = sub_10002106C();
  sub_100008BC0(v0, qword_100030B78);
  sub_100008B88(v0, qword_100030B78);
  return sub_10002104C();
}

uint64_t sub_10000F194()
{
  v1 = sub_1000066C8(&qword_100030300, &unk_100022A90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1000210DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100021B6C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  sub_100021B5C();
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100021B4C(v18);
  v14 = *(v0 + 16);
  sub_100020F7C();
  sub_100021B3C(v17);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_100021B4C(v19);
  sub_1000210CC();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_100020FFC();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_10002100C();
}

uint64_t sub_10000F404(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001021C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_10000F500()
{
  result = qword_100030670;
  if (!qword_100030670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030670);
  }

  return result;
}

unint64_t sub_10000F558()
{
  result = qword_100030678;
  if (!qword_100030678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030678);
  }

  return result;
}

unint64_t sub_10000F5B0()
{
  result = qword_100030680;
  if (!qword_100030680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030680);
  }

  return result;
}

unint64_t sub_10000F608()
{
  result = qword_100030688;
  if (!qword_100030688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030688);
  }

  return result;
}

uint64_t sub_10000F668@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10000F6AC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100008B88(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_10000F758()
{
  result = qword_100030690;
  if (!qword_100030690)
  {
    sub_100006710(&qword_100030698, &qword_100023278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030690);
  }

  return result;
}

uint64_t sub_10000F7BC(uint64_t a1)
{
  v2 = sub_10000F964();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000F80C()
{
  result = qword_1000306A0;
  if (!qword_1000306A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306A0);
  }

  return result;
}

uint64_t sub_10000F864(uint64_t a1)
{
  v2 = sub_10000F608();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000F8B4()
{
  result = qword_1000306A8;
  if (!qword_1000306A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306A8);
  }

  return result;
}

unint64_t sub_10000F90C()
{
  result = qword_1000306B0;
  if (!qword_1000306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306B0);
  }

  return result;
}

unint64_t sub_10000F964()
{
  result = qword_1000306B8;
  if (!qword_1000306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306B8);
  }

  return result;
}

uint64_t sub_10000F9B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008D8C;

  return sub_100011D48(a1);
}

uint64_t sub_10000FA60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000FB04;

  return sub_100012398();
}

uint64_t sub_10000FB04(uint64_t a1)
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

unint64_t sub_10000FC18()
{
  result = qword_1000306C0;
  if (!qword_1000306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306C0);
  }

  return result;
}

unint64_t sub_10000FC70()
{
  result = qword_1000306C8;
  if (!qword_1000306C8)
  {
    sub_100006710(&qword_1000306D0, qword_1000233B8);
    sub_10000F5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306C8);
  }

  return result;
}

uint64_t sub_10000FCF4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000F0DC();
  *v6 = v2;
  v6[1] = sub_10000510C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000FDA8(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_10000FE54;

  return sub_100012790(v1 + 16);
}

uint64_t sub_10000FE54()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v8 = *v0;

  v4 = v1[1];
  v5 = v1[2];
  *(v3 + 25) = *(v1 + 41);
  *v3 = v4;
  v3[1] = v5;
  v6 = *(v8 + 8);

  return v6();
}

__n128 sub_10000FF7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FF90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10000FFD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

size_t sub_100010044(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000066C8(&qword_100030700, &qword_100023588);
  v10 = *(type metadata accessor for ForecastLocationEntity() - 8);
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
  v15 = *(type metadata accessor for ForecastLocationEntity() - 8);
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

char *sub_10001021C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000066C8(&qword_1000306F0, &qword_100023570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100010338(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1000103E4()
{
  v0 = sub_1000216DC();
  v42 = *(v0 - 8);
  v43 = v0;
  v1 = *(v42 + 64);
  __chkstk_darwin(v0);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002102C();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000066C8(&qword_1000302B8, &unk_100023530);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_1000066C8(&qword_1000302C0, &qword_100022A40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_1000210BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000211AC();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_100021B7C();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = sub_1000210DC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v36 = sub_1000066C8(&qword_1000306E0, &qword_100023540);
  sub_100021B2C();
  sub_10002119C();
  (*(v17 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  sub_1000210EC();
  (*(v26 + 56))(v15, 1, 1, v25);
  v28 = v38;
  v29 = sub_100020F6C();
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v30 = *(*(v29 - 8) + 56);
  v30(v11, 1, 1, v29);
  v30(v37, 1, 1, v29);
  (*(v40 + 104))(v39, enum case for InputConnectionBehavior.default(_:), v41);
  sub_10000F964();
  v31 = sub_100020FCC();
  sub_1000216BC();
  v32 = sub_1000216CC();
  v33 = sub_100021CBC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "HistoricalUsageWidgetConfiguration init without siteDetail...", v34, 2u);
  }

  (*(v42 + 8))(v28, v43);
  return v31;
}

uint64_t sub_100010950()
{
  v1 = *(*(sub_1000210DC() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();
  v2 = sub_1000066C8(&qword_1000306E8, &unk_100023560);
  v0[8] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v4 = sub_10002118C();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 64) + 15;
  v0[13] = swift_task_alloc();
  v7 = sub_1000215DC();
  v0[14] = v7;
  v8 = *(v7 - 8);
  v0[15] = v8;
  v9 = *(v8 + 64) + 15;
  v0[16] = swift_task_alloc();
  v10 = sub_1000214EC();
  v0[17] = v10;
  v11 = *(v10 - 8);
  v0[18] = v11;
  v12 = *(v11 + 64) + 15;
  v0[19] = swift_task_alloc();
  v13 = sub_1000216DC();
  v0[20] = v13;
  v14 = *(v13 - 8);
  v0[21] = v14;
  v15 = *(v14 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();

  return _swift_task_switch(sub_100010BAC, 0, 0);
}

uint64_t sub_100010BAC()
{
  v0[6] = _swiftEmptyArrayStorage;
  v0[25] = sub_10002162C();
  sub_10002164C();
  v0[26] = sub_10002163C();
  sub_100012F18();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100010C58, v2, v1);
}

uint64_t sub_100010C58()
{
  v2 = v0[25];
  v1 = v0[26];

  v0[27] = sub_10002161C();
  v3 = async function pointer to WidgetDataModel.orderedHomes.getter[1];
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = sub_100010CFC;

  return WidgetDataModel.orderedHomes.getter();
}

uint64_t sub_100010CFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 216);

    v8 = sub_100011164;
  }

  else
  {
    *(v4 + 232) = a1;
    v8 = sub_100010E34;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100010E34()
{
  v33 = v0;
  v1 = v0[27];

  v2 = v0[29];
  v0[30] = v2;
  v3 = v0[24];
  sub_1000216BC();

  v4 = sub_1000216CC();
  v5 = sub_100021CBC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v8 = v0[20];
  v9 = v0[21];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v32);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v2 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "%s WidgetDataModel returned %ld home(s), checking if onboarded...", v10, 0x16u);
    sub_100008C24(v11);
  }

  else
  {
  }

  v12 = *(v9 + 8);
  v12(v7, v8);
  v0[31] = v12;
  v13 = *(v2 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v15 = v0[18];
    v16 = v0[15];
    v32 = _swiftEmptyArrayStorage;
    sub_10001F234(0, v13, 0);
    v14 = v32;
    v17 = *(v16 + 16);
    v16 += 16;
    v18 = v2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v30 = *(v16 + 56);
    v31 = v17;
    v19 = (v16 - 8);
    do
    {
      v20 = v0[19];
      v21 = v0[16];
      v22 = v0[14];
      v31(v21, v18, v22);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*v19)(v21, v22);
      v32 = v14;
      v24 = v14[2];
      v23 = v14[3];
      if (v24 >= v23 >> 1)
      {
        sub_10001F234(v23 > 1, v24 + 1, 1);
        v14 = v32;
      }

      v25 = v0[19];
      v26 = v0[17];
      v14[2] = v24 + 1;
      (*(v15 + 32))(v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v24, v25, v26);
      v18 += v30;
      --v13;
    }

    while (v13);
  }

  v0[32] = v14;
  v27 = async function pointer to static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)[1];
  v28 = swift_task_alloc();
  v0[33] = v28;
  *v28 = v0;
  v28[1] = sub_10001148C;

  return static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)(v14);
}

uint64_t sub_100011164()
{
  v31 = v0;
  v1 = _swiftEmptyArrayStorage;
  v0[30] = _swiftEmptyArrayStorage;
  v2 = v0[24];
  sub_1000216BC();

  v3 = sub_1000216CC();
  v4 = sub_100021CBC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[21];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v30);
    *(v9 + 12) = 2048;
    *(v9 + 14) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v3, v4, "%s WidgetDataModel returned %ld home(s), checking if onboarded...", v9, 0x16u);
    sub_100008C24(v10);
  }

  else
  {
  }

  v11 = *(v8 + 8);
  v11(v6, v7);
  v0[31] = v11;
  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    v13 = v0[18];
    v14 = v0[15];
    v30 = _swiftEmptyArrayStorage;
    sub_10001F234(0, v12, 0);
    v15 = *(v14 + 16);
    v14 += 16;
    v16 = _swiftEmptyArrayStorage + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v1 = v30;
    v28 = *(v14 + 56);
    v29 = v15;
    v17 = (v14 - 8);
    do
    {
      v18 = v0[19];
      v19 = v0[16];
      v20 = v0[14];
      v29(v19, v16, v20);
      sub_1000215AC();
      sub_1000215CC();
      sub_1000214CC();
      (*v17)(v19, v20);
      v30 = v1;
      v22 = v1[2];
      v21 = v1[3];
      if (v22 >= v21 >> 1)
      {
        sub_10001F234(v21 > 1, v22 + 1, 1);
        v1 = v30;
      }

      v23 = v0[19];
      v24 = v0[17];
      v1[2] = v22 + 1;
      (*(v13 + 32))(v1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v23, v24);
      v16 += v28;
      --v12;
    }

    while (v12);
  }

  v0[32] = v1;
  v25 = async function pointer to static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)[1];
  v26 = swift_task_alloc();
  v0[33] = v26;
  *v26 = v0;
  v26[1] = sub_10001148C;

  return static HistoricalUsageWidgetCommon.utilityOnboardedHomesAndEnergySites(homes:)(v1);
}

uint64_t sub_10001148C(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_1000115AC, 0, 0);
}

uint64_t sub_1000115AC()
{
  v81 = v0;
  v1 = v0[34];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[12];
    v71 = v0[8];
    v70 = v2 != 1;
    v80 = _swiftEmptyArrayStorage;
    sub_10001F278(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v1 + 64);
    v7 = -1 << *(v1 + 32);
    v8 = sub_100021CEC();
    sub_1000066C8(&qword_1000302D8, &qword_100022A60);
    v72 = v3;
    v9 = v4 + 8;
    v69 = (v4 + 8);
    v67 = (v1 + 64);
    v68 = v1;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v9 = 1 << *(v1 + 32);
      if (v8 >= v9)
      {
        break;
      }

      v9 = *&v6[8 * (v8 >> 6)];
      if ((v9 & (1 << v8)) == 0)
      {
        goto LABEL_27;
      }

      v73 = v2;
      v74 = *(v1 + 36);
      v10 = v0[17];
      v78 = v5;
      v11 = v0[13];
      v12 = v0[10];
      v75 = v0[11];
      v13 = v0[9];
      v14 = v0[7];
      (*(v72 + 16))(v12, *(v1 + 48) + *(v72 + 72) * v8, v10);
      v15 = *(*(v1 + 56) + 8 * v8);
      (*(v72 + 32))(v13, v12, v10);
      *(v13 + *(v71 + 48)) = v15;

      v77 = sub_10002165C();
      v3 = v16;
      v17 = sub_1000214DC();
      v2 = v18;
      sub_1000214BC();
      v76 = sub_10002115C();
      v4 = v19;
      v20 = v11;
      v5 = v78;
      (*v69)(v20, v75);
      sub_1000210AC();
      v21 = sub_100020F9C();
      v79[2] = v17;
      v79[3] = v2;
      v0 = v79;

      v6 = v21;
      sub_100020F8C();

      sub_100012F70(v13);
      v80 = v78;
      v23 = v78[2];
      v22 = v78[3];
      if (v23 >= v22 >> 1)
      {
        v6 = &v80;
        sub_10001F278((v22 > 1), v23 + 1, 1);
        v5 = v80;
      }

      v5[2] = v23 + 1;
      v24 = &v5[6 * v23];
      v24[4] = v77;
      v24[5] = v3;
      v24[6] = v21;
      v24[7] = v76;
      v24[8] = v4;
      *(v24 + 72) = v70;
      v1 = v68;
      v9 = -1 << *(v68 + 32);
      if (v8 >= -v9)
      {
        goto LABEL_28;
      }

      v6 = v67;
      if ((*&v67[8 * (v8 >> 6)] & (1 << v8)) == 0)
      {
        goto LABEL_29;
      }

      if (v74 != *(v68 + 36))
      {
        goto LABEL_30;
      }

      v8 = sub_100021CFC();
      v2 = v73 - 1;
      if (v73 == 1)
      {
        v25 = v79[34];
        v26 = v79[30];

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v6 = sub_10001021C((v9 > 1), v4, 1, v6);
    goto LABEL_22;
  }

  v27 = v0[30];

  v5 = _swiftEmptyArrayStorage;
LABEL_14:
  v28 = v0[23];
  swift_bridgeObjectRetain_n();
  sub_1000216BC();

  v29 = sub_1000216CC();
  v30 = sub_100021CBC();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[31];
  v33 = v0[23];
  v34 = v0[20];
  v35 = v0[21];
  if (v31)
  {
    v36 = v0[31];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v80 = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v80);
    *(v37 + 12) = 2048;
    v39 = v5[2];

    *(v37 + 14) = v39;

    _os_log_impl(&_mh_execute_header, v29, v30, "%s Found %ld home(s) with an onboarded utility)", v37, 0x16u);
    sub_100008C24(v38);

    v36(v33, v34);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v32(v33, v34);
  }

  v40 = v5[2];

  v41 = v79;
  if (v40)
  {
    sub_10000F404(v5);
    v6 = v79[6];
    goto LABEL_23;
  }

  v5 = 0xD000000000000017;
  v42 = v79[22];

  sub_1000216BC();
  v43 = sub_1000216CC();
  v44 = sub_100021CBC();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v79[31];
  v48 = v79[21];
  v47 = v79[22];
  v49 = v79[20];
  if (v45)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v80 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_10001EC04(0xD000000000000017, 0x80000001000243D0, &v80);
    _os_log_impl(&_mh_execute_header, v43, v44, "%s No onboarded homes found! (returning error SiteDetail: <NO ONBOARDED HOMES ERROR>)", v50, 0xCu);
    sub_100008C24(v51);

    v41 = v79;
  }

  v46(v47, v49);
  v52 = v41[7];
  v1 = 0x80000001000243B0;
  sub_1000066C8(&qword_1000302D8, &qword_100022A60);
  sub_1000210AC();
  v0 = sub_100020F9C();
  v53 = v41;
  v2 = 0xE000000000000000;
  v53[4] = 0;
  v53[5] = 0xE000000000000000;

  sub_100020F8C();

  v6 = sub_10001021C(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = *(v6 + 2);
  v9 = *(v6 + 3);
  v4 = v3 + 1;
  if (v3 >= v9 >> 1)
  {
    goto LABEL_31;
  }

LABEL_22:
  *(v6 + 2) = v4;
  v54 = &v6[48 * v3];
  *(v54 + 4) = v5 + 3;
  *(v54 + 5) = v1;
  *(v54 + 6) = v0;
  *(v54 + 7) = 0;
  *(v54 + 8) = v2;
  v54[72] = 0;
  v41 = v79;
LABEL_23:
  v56 = v41[23];
  v55 = v41[24];
  v57 = v41[22];
  v58 = v41[19];
  v59 = v41;
  v60 = v41[16];
  v61 = v59[13];
  v63 = v59[9];
  v62 = v59[10];
  v64 = v59[7];

  v65 = v59[1];

  return v65(v6);
}

uint64_t sub_100011D48(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1000216DC();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  v5[1] = sub_100011E48;

  return sub_100010950();
}

uint64_t sub_100011E48(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100011F48, 0, 0);
}

void sub_100011F48()
{
  v54 = v0;
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v47 = -v2;
    v48 = v0 + 2;
    v4 = v1 + 72;
    v5 = _swiftEmptyArrayStorage;
    v49 = v0[9];
    v45 = v1 + 72;
    do
    {
      v46 = v5;
      v6 = (v4 + 48 * v3);
      v7 = v3 + 1;
      while (1)
      {
        if ((v7 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v51 = v7;
        v8 = v0[4];
        v10 = *(v6 - 5);
        v9 = *(v6 - 4);
        v12 = *(v6 - 3);
        v11 = *(v6 - 2);
        v13 = *(v6 - 1);
        v14 = *v6;
        v0[2] = v10;
        v0[3] = v9;
        v15 = v13;
        v16 = swift_task_alloc();
        *(v16 + 16) = v48;

        LOBYTE(v8) = sub_100010338(sub_100012FDC, v16, v8);

        if (v8)
        {
          break;
        }

        v0 = v50;
        v7 = v51 + 1;
        v6 += 48;
        v1 = v49;
        if (v47 + v51 + 1 == 1)
        {
          v5 = v46;
          goto LABEL_15;
        }
      }

      v17 = v12;
      v5 = v46;
      v53[0] = v46;
      v18 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001F278(0, *(v46 + 16) + 1, 1);
        v5 = v53[0];
      }

      v19 = v11;
      v4 = v45;
      v20 = v10;
      v21 = v14;
      v23 = v5[2];
      v22 = v5[3];
      if (v23 >= v22 >> 1)
      {
        sub_10001F278((v22 > 1), v23 + 1, 1);
        v21 = v14;
        v19 = v11;
        v4 = v45;
        v20 = v10;
        v5 = v53[0];
      }

      v5[2] = v23 + 1;
      v24 = &v5[6 * v23];
      v24[4] = v20;
      v24[5] = v9;
      v24[6] = v17;
      v24[7] = v19;
      v24[8] = v18;
      *(v24 + 72) = v21;
      v0 = v50;
      v3 = v51;
      v1 = v49;
    }

    while (v47 + v51);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  v25 = v0[9];
  v26 = v0[7];
  v27 = v0[4];

  sub_1000216BC();
  swift_retain_n();

  v28 = sub_1000216CC();
  v29 = sub_100021CBC();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[6];
  v32 = v0[7];
  v33 = v0[5];
  if (v30)
  {
    v34 = v0[4];
    v35 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v35 = 136315906;
    *(v35 + 4) = sub_10001EC04(0x7365697469746E65, 0xEE00293A726F6628, v53);
    *(v35 + 12) = 2080;
    v36 = sub_100021C1C();
    v52 = v32;
    v38 = sub_10001EC04(v36, v37, v53);

    *(v35 + 14) = v38;
    *(v35 + 22) = 2048;
    v39 = v5[2];

    *(v35 + 24) = v39;

    *(v35 + 32) = 2080;
    v40 = sub_100021C1C();
    v42 = sub_10001EC04(v40, v41, v53);

    *(v35 + 34) = v42;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s filtering for utility onboarded homes with these IDs: %s, FOUND %ld: %s", v35, 0x2Au);
    swift_arrayDestroy();
    v0 = v50;

    (*(v31 + 8))(v52, v33);
  }

  else
  {

    (*(v31 + 8))(v32, v33);
  }

  v43 = v0[7];

  v44 = v0[1];

  v44(v5);
}

uint64_t sub_100012398()
{
  v1 = sub_1000216DC();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100012494;

  return sub_100010950();
}

uint64_t sub_100012494(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100012594, 0, 0);
}

uint64_t sub_100012594()
{
  v21 = v0;
  v1 = v0[6];
  v2 = v0[4];
  sub_1000216BC();

  v3 = sub_1000216CC();
  v4 = sub_100021CBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10001EC04(0xD000000000000013, 0x8000000100024190, &v20);
    *(v9 + 12) = 2080;
    v10 = sub_100021C1C();
    v12 = sub_10001EC04(v10, v11, &v20);

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s returning all utility onboarded homes: %s", v9, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v14 = v0[3];
    v13 = v0[4];
    v15 = v0[2];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[4];

  v17 = v0[1];
  v18 = v0[6];

  return v17(v18);
}

uint64_t sub_100012790(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000216DC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_100012890;

  return sub_100012398();
}

uint64_t sub_100012890(uint64_t a1)
{
  v3 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = sub_100012CA0;
  }

  else
  {
    v4 = sub_1000129AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000129AC()
{
  v34 = v0;
  v1 = v0[7];
  if (*(v1 + 16))
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
    v5 = *(v1 + 48);
    v4 = *(v1 + 56);
    v6 = *(v1 + 64);
    v7 = *(v1 + 72);
  }

  else
  {
    v8 = v0[7];

    v3 = 0;
    v2 = 0;
    v5 = 0;
    v4 = 0;
    v6 = 0;
    v7 = 0;
  }

  v9 = v0[5];
  sub_1000216BC();
  sub_100012EC8(v3, v2);
  v10 = sub_1000216CC();
  v11 = sub_100021CBC();
  if (os_log_type_enabled(v10, v11))
  {
    v30 = v6;
    v31 = v5;
    v12 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10001EC04(0x52746C7561666564, 0xEF2928746C757365, &v33);
    *(v12 + 12) = 2080;
    v29 = v3;
    if (v2)
    {
      v13 = v3;
      v14 = v2;
      v15 = v2;
      v16 = v30;
      v17 = v7;
      sub_10000A634(v13, v15);

      v18 = v4;
    }

    else
    {
      v14 = 0;
      v17 = v7;
      v16 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    v21 = v0[4];
    v27 = v0[3];
    v28 = v0[5];
    v22 = sub_10001EC04(v18, v16, &v33);

    *(v12 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s returning: %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v21 + 8))(v28, v27);
    v5 = v31;
    v7 = v17;
    v2 = v14;
    v3 = v29;
    v6 = v30;
  }

  else
  {
    v19 = v0[4];
    v32 = v0[5];
    v20 = v0[3];
    sub_10000A634(v3, v2);

    (*(v19 + 8))(v32, v20);
  }

  v23 = v0[5];
  v24 = v0[2];

  *v24 = v3;
  *(v24 + 8) = v2;
  *(v24 + 16) = v5;
  *(v24 + 24) = v4;
  *(v24 + 32) = v6;
  *(v24 + 40) = v7;
  v25 = v0[1];

  return v25();
}

uint64_t sub_100012CA0()
{
  v17 = v0;
  v1 = v0[5];
  sub_1000216BC();
  sub_100012EC8(0, 0);
  v2 = sub_1000216CC();
  v3 = sub_100021CBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10001EC04(0x52746C7561666564, 0xEF2928746C757365, &v16);
    *(v4 + 12) = 2080;
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[3];
    v8 = sub_10001EC04(0x3E6C696E3CLL, 0xE500000000000000, &v16);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s returning: %s", v4, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    sub_10000A634(0, 0);

    (*(v10 + 8))(v9, v11);
  }

  v12 = v0[5];
  v13 = v0[2];

  *(v13 + 25) = 0u;
  *v13 = 0u;
  v13[1] = 0u;
  v14 = v0[1];

  return v14();
}

uint64_t sub_100012EC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100012F18()
{
  result = qword_1000302E8;
  if (!qword_1000302E8)
  {
    sub_10002164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000302E8);
  }

  return result;
}

uint64_t sub_100012F70(uint64_t a1)
{
  v2 = sub_1000066C8(&qword_1000306E8, &unk_100023560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012FDC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100021DAC() & 1;
  }
}

unint64_t sub_100013034()
{
  result = qword_1000306F8;
  if (!qword_1000306F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000306F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlockOutError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BlockOutError(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 initializeBufferWithCopyOfBuffer for BlockoutCirculeView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BlockoutCirculeView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BlockoutCirculeView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1000132B4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v25 = a1;
  v28 = a2;
  v3 = sub_1000218FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000066C8(&qword_100030758, &qword_100023720);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v24[-v10];
  v12 = sub_1000217DC();
  v33 = 1;
  sub_100013674(v2, &v42);
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  v34 = v42;
  v35 = v43;
  v41 = v47;
  v40[2] = v44;
  v40[3] = v45;
  v40[4] = v46;
  v40[0] = v42;
  v40[1] = v43;
  sub_1000148C8(&v34, &v29);
  sub_100008C70(v40, &qword_100030760, &qword_100023728);
  *&v32[39] = v36;
  *&v32[55] = v37;
  *&v32[71] = v38;
  v32[87] = v39;
  *&v32[7] = v34;
  *&v32[23] = v35;
  v13 = v33;
  v14 = sub_1000219FC();
  KeyPath = swift_getKeyPath();
  *(&v30[2] + 1) = *&v32[32];
  *(&v30[3] + 1) = *&v32[48];
  *(&v30[4] + 1) = *&v32[64];
  *(v30 + 1) = *v32;
  v29 = v12;
  LOBYTE(v30[0]) = v13;
  *(&v30[5] + 1) = *&v32[80];
  *(&v30[1] + 1) = *&v32[16];
  *&v31 = KeyPath;
  *(&v31 + 1) = v14;
  sub_1000218EC();
  v16 = sub_1000066C8(&qword_100030768, &qword_100023760);
  v17 = sub_100014990();
  sub_1000219DC();
  (*(v4 + 8))(v7, v3);
  v46 = v30[3];
  v47 = v30[4];
  v48 = v30[5];
  v49 = v31;
  v42 = v29;
  v43 = v30[0];
  v44 = v30[1];
  v45 = v30[2];
  sub_100008C70(&v42, &qword_100030768, &qword_100023760);
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_100021D1C(36);

  v18._countAndFlagsBits = 0xD00000000000001CLL;
  *&v29 = 0xD000000000000022;
  *(&v29 + 1) = 0x80000001000245D0;
  if (!v25)
  {
    v18._countAndFlagsBits = 0xD00000000000002BLL;
    v20 = "NoAccessOutsideOfScheduleForRestrictedGuest";
LABEL_6:
    v19 = v20 - 32;
    goto LABEL_7;
  }

  if (v25 != 1)
  {
    v20 = "AppleHomeUpdateToHH2Required";
    goto LABEL_6;
  }

  v19 = "AppleHomeUpdateToHH2Required";
  v18._countAndFlagsBits = 0xD000000000000026;
LABEL_7:
  v21 = v27;
  v22 = v26;
  v18._object = (v19 | 0x8000000000000000);
  sub_100021BCC(v18);

  *&v29 = v16;
  *(&v29 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  sub_1000219EC();

  return (*(v22 + 8))(v11, v21);
}

uint64_t sub_100013674@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10002184C();
  sub_100013740(a1, v12);
  v5 = v12[0];
  v6 = v12[1];
  v7 = v13;
  v9 = v14;
  v8 = v15;
  v10 = v16;
  LOBYTE(v12[0]) = 0;
  v18 = v13;
  v17 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v8;
  *(a2 + 64) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  sub_100014A74(v5, v6, v7);

  sub_1000147F8(v5, v6, v7);
}

uint64_t sub_100013740@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10002182C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10002181C();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_10002180C(v13);
  sub_100021A0C();
  sub_1000217EC();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_10002180C(v14);
  v15._countAndFlagsBits = sub_1000138B0(a1);
  sub_1000217FC(v15);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10002180C(v16);
  sub_10002183C();
  v6 = sub_10002196C();
  v8 = v7;
  *a2 = v6;
  *(a2 + 8) = v7;
  v10 = v9 & 1;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  sub_100014A74(v6, v7, v9 & 1);

  sub_1000147F8(v6, v8, v10);
}

uint64_t sub_1000138B0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1000211AC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100021B7C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  if (v1 != 2)
  {
    return 0;
  }

  sub_100021B2C();
  v6 = sub_100021B8C();
  v7 = [objc_opt_self() bundleWithIdentifier:v6];

  sub_10002119C();
  return sub_100021BAC();
}

uint64_t sub_100013A54()
{
  v0 = sub_1000211AC();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100021B7C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100009DB4();
  if (sub_100021CDC() & 1) != 0 || (sub_100021CDC())
  {
  }

  else
  {
    v4 = sub_100021CDC();

    if ((v4 & 1) == 0)
    {
      return sub_10002197C();
    }
  }

  sub_100021B2C();
  sub_10002119C();
  sub_100021BAC();
  return sub_10002197C();
}

uint64_t sub_100013CF8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v35[1] = a1;
  v2 = sub_1000218FC();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  __chkstk_darwin(v2);
  v39 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000066C8(&qword_100030708, &qword_1000236A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v35 - v7;
  v9 = sub_1000066C8(&qword_100030710, &qword_1000236B0);
  v10 = *(v9 - 8);
  v37 = v9;
  v38 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v35 - v12;
  v40 = sub_1000066C8(&qword_100030718, &qword_1000236B8);
  v42 = *(v40 - 8);
  v14 = *(v42 + 64);
  __chkstk_darwin(v40);
  v36 = v35 - v15;
  v41 = sub_1000066C8(&qword_100030720, &qword_1000236C0);
  v16 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v18 = v35 - v17;
  v19 = sub_100021A3C();
  v21 = v20;
  sub_1000143C0(&v50);
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v63 = v52;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v61 = v50;
  v62 = v51;
  v71[6] = v56;
  v71[7] = v57;
  v71[8] = v58;
  v71[2] = v52;
  v71[3] = v53;
  v71[4] = v54;
  v71[5] = v55;
  v70 = v59;
  v72 = v59;
  v71[0] = v50;
  v71[1] = v51;
  sub_100014860(&v61, v48, &qword_100030728, &qword_1000236C8);
  sub_100008C70(v71, &qword_100030728, &qword_1000236C8);
  v57 = v67;
  v58 = v68;
  v59 = v69;
  v60 = v70;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v66;
  v51 = v61;
  v52 = v62;
  *&v50 = v19;
  *(&v50 + 1) = v21;
  sub_1000210FC();

  v22 = sub_1000066C8(&qword_100030730, &qword_1000236D0);
  v23 = sub_100006CA0(&qword_100030738, &qword_100030730, &qword_1000236D0);
  sub_10002198C();
  sub_100008C70(v8, &qword_100030708, &qword_1000236A8);
  v48[7] = v57;
  v48[8] = v58;
  v48[9] = v59;
  v49 = v60;
  v48[4] = v54;
  v48[5] = v55;
  v48[6] = v56;
  v48[0] = v50;
  v48[1] = v51;
  v48[2] = v52;
  v48[3] = v53;
  sub_100008C70(v48, &qword_100030730, &qword_1000236D0);
  v24 = v39;
  sub_1000218DC();
  v46 = v22;
  v47 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v36;
  v26 = v37;
  sub_1000219DC();
  (*(v43 + 8))(v24, v44);
  v28 = v26;
  (*(v38 + 8))(v13, v26);
  v29 = sub_100013A54();
  v31 = v30;
  LOBYTE(v26) = v32;
  v46 = v28;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v40;
  sub_1000219CC();
  sub_1000147F8(v29, v31, v26 & 1);

  (*(v42 + 8))(v27, v33);
  sub_10002173C();
  return sub_100008C70(v18, &qword_100030720, &qword_1000236C0);
}

uint64_t sub_1000143C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000066C8(&qword_100030740, &qword_1000236D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_1000066C8(&qword_100030748, &qword_1000236E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v38 = sub_1000218CC();
  sub_1000216FC();
  v10 = v63;
  v11 = v64;
  v12 = v65;
  v13 = v66;
  v35 = v67;
  v14 = v68;
  v15 = sub_100021A3C();
  v36 = v16;
  v37 = v15;
  sub_100021A3C();
  sub_10002172C();
  sub_100021A1C();
  sub_10002185C();
  v17 = sub_10002186C();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v34 = sub_100021A2C();

  sub_100008C70(v9, &qword_100030748, &qword_1000236E0);
  sub_10002194C();
  v18 = sub_10002193C();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = sub_10002195C();
  sub_100008C70(v5, &qword_100030740, &qword_1000236D8);
  KeyPath = swift_getKeyPath();
  *&v39 = v10 * 0.5;
  *(&v39 + 1) = v10;
  *&v40 = __PAIR64__(v12, v11);
  *(&v40 + 1) = v13;
  v22 = v35;
  v21 = v36;
  *&v41 = v35;
  *(&v41 + 1) = v14;
  v23 = v11;
  v24 = v38;
  *&v42 = v38 | 0x3F80000000000000;
  WORD4(v42) = 256;
  HIWORD(v42) = v73;
  *(&v42 + 10) = v72;
  v25 = v12;
  v26 = v37;
  *&v43 = v37;
  *(&v43 + 1) = v36;
  v46 = v71;
  v45 = v70;
  v44 = v69;
  v27 = v39;
  v28 = v40;
  v29 = v42;
  *(a1 + 32) = v41;
  *(a1 + 48) = v29;
  *a1 = v27;
  *(a1 + 16) = v28;
  v30 = v43;
  v31 = v44;
  v32 = v46;
  *(a1 + 96) = v45;
  *(a1 + 112) = v32;
  *(a1 + 64) = v30;
  *(a1 + 80) = v31;
  *(a1 + 128) = v34;
  *(a1 + 136) = KeyPath;
  *(a1 + 144) = v19;
  sub_100014860(&v39, v47, &qword_100030750, &qword_100023718);
  v47[0] = v10 * 0.5;
  v47[1] = v10;
  v48 = v23;
  v49 = v25;
  v50 = v13;
  v51 = v22;
  v52 = v14;
  v53 = v24;
  v54 = 1065353216;
  v55 = 256;
  v56 = v72;
  v57 = v73;
  v58 = v26;
  v59 = v21;
  v62 = v71;
  v61 = v70;
  v60 = v69;
  return sub_100008C70(v47, &qword_100030750, &qword_100023718);
}

uint64_t sub_1000147EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  return sub_100013CF8(*v1, a1);
}

uint64_t sub_1000147F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100014808@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002176C();
  *a1 = result;
  return result;
}

uint64_t sub_100014834(uint64_t *a1)
{
  v1 = *a1;

  return sub_10002177C();
}

uint64_t sub_100014860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000066C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000148C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000066C8(&qword_100030760, &qword_100023728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002174C();
  *a1 = result;
  return result;
}

uint64_t sub_100014964(uint64_t *a1)
{
  v1 = *a1;

  return sub_10002175C();
}

unint64_t sub_100014990()
{
  result = qword_100030770;
  if (!qword_100030770)
  {
    sub_100006710(&qword_100030768, &qword_100023760);
    sub_100006CA0(&qword_100030778, &qword_100030780, &qword_100023768);
    sub_100006CA0(&qword_100030788, &qword_100030790, &qword_100023770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030770);
  }

  return result;
}

uint64_t sub_100014A74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100014A88()
{
  result = qword_100030798;
  if (!qword_100030798)
  {
    sub_100006710(&qword_100030720, &qword_1000236C0);
    sub_100006710(&qword_100030710, &qword_1000236B0);
    sub_100006710(&qword_100030730, &qword_1000236D0);
    sub_100006CA0(&qword_100030738, &qword_100030730, &qword_1000236D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100014BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030798);
  }

  return result;
}

unint64_t sub_100014BC8()
{
  result = qword_1000307A0;
  if (!qword_1000307A0)
  {
    sub_10002190C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000307A0);
  }

  return result;
}

unint64_t sub_100014C24()
{
  result = qword_1000307A8;
  if (!qword_1000307A8)
  {
    sub_100006710(&qword_1000307B0, &qword_100023778);
    sub_100006710(&qword_100030768, &qword_100023760);
    sub_100014990();
    swift_getOpaqueTypeConformance2();
    sub_100014BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000307A8);
  }

  return result;
}

HomeEnergyWidgetsExtension::EnergyForecastWidget __swiftcall EnergyForecastWidget.init()()
{
  v0 = 0x8000000100023760;
  v1 = 0xD000000000000014;
  result.kind._object = v0;
  result.kind._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_100014D14()
{
  result = os_variant_has_internal_diagnostics();
  byte_100030B90 = result;
  return result;
}

uint64_t sub_100014D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v64 = sub_10002118C();
  v63 = *(v64 - 8);
  v3 = *(v63 + 64);
  __chkstk_darwin(v64);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v73 = &v62 - v7;
  v80 = sub_1000213AC();
  v75 = *(v80 - 8);
  v8 = *(v75 + 64);
  __chkstk_darwin(v80);
  v74 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10002113C();
  v68 = *(v70 - 8);
  v10 = *(v68 + 64);
  v11 = __chkstk_darwin(v70);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v62 - v13;
  v65 = sub_10002121C();
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v65);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000212BC();
  v71 = *(v72 - 8);
  v18 = *(v71 + 64);
  v19 = __chkstk_darwin(v72);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v62 - v21;
  v78 = sub_1000066C8(&qword_100030878, &qword_1000238A8);
  v22 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = (&v62 - v23);
  v24 = sub_100021A5C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v62 - v31;
  __chkstk_darwin(v30);
  v34 = &v62 - v33;
  v35 = type metadata accessor for EnergyForecastWidgetEntryView();
  v36 = *(v35 + 24);
  v76 = v2;
  v37 = v2 + v36;
  v38 = type metadata accessor for GridForecastEntry();
  if (*(v37 + v38[9]) == 2)
  {
    v39 = v76 + *(v35 + 20);
    sub_10000A44C(v34);
    (*(v25 + 104))(v32, enum case for WidgetFamily.accessoryCircular(_:), v24);
    sub_100016950(&qword_100030438, &type metadata accessor for WidgetFamily);
    sub_100021BEC();
    sub_100021BEC();
    v40 = *(v25 + 8);
    v40(v32, v24);
    v40(v34, v24);
    if (*&v87[0] == v82)
    {
      v41 = v38[10];
      v86 = 0;
      LOBYTE(v82) = 2;
      *v83 = *(v37 + v41);
      HIBYTE(v84) = 0;
    }

    else
    {
      v52 = sub_10002192C();
      v86 = 1;
      v85 = 1;
      LOBYTE(v82) = 2;
      v83[0] = v52;
      memset(&v83[8], 0, 32);
      v84 = 257;
    }

    sub_1000066C8(&qword_100030420, &unk_100022BF0);
    sub_10000A710();
    sub_10000A764();
    sub_1000218BC();
    v53 = v87[1];
    v54 = v79;
    *v79 = v87[0];
    v54[1] = v53;
    v54[2] = v87[2];
    *(v54 + 24) = v88;
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_100016950(&qword_100030880, &type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    return sub_1000218BC();
  }

  else
  {
    (*(v14 + 16))(v17, v37, v65);
    sub_100016884(v37 + v38[5], v87);
    v42 = *(v68 + 16);
    v43 = v70;
    v42(v66, v37 + v38[6], v70);
    v42(v69, v37 + v38[7], v43);
    v44 = v77;
    sub_10002128C();
    v45 = v76 + *(v35 + 20);
    sub_10000A44C(v29);
    v46 = v71;
    v47 = v72;
    (*(v71 + 16))(v67, v44, v72);
    v48 = *(v37 + v38[8]);
    v49 = v73;
    sub_100020FBC();
    v50 = type metadata accessor for ForecastLocationEntity();
    v51 = v47;
    if ((*(*(v50 - 8) + 48))(v49, 1, v50))
    {
      sub_1000168E8(v49);
    }

    else
    {
      v56 = v63;
      v57 = v62;
      v58 = v64;
      (*(v63 + 16))(v62, v49, v64);
      sub_1000168E8(v49);
      sub_10002115C();
      v51 = v47;
      (*(v56 + 8))(v57, v58);
    }

    sub_100015700();
    v59 = v74;
    sub_10002139C();
    v60 = v75;
    v61 = v80;
    (*(v75 + 16))(v79, v59, v80);
    swift_storeEnumTagMultiPayload();
    sub_1000066C8(&qword_100030400, &unk_1000238B0);
    sub_10000A684();
    sub_100016950(&qword_100030880, &type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    sub_1000218BC();
    (*(v60 + 8))(v59, v61);
    return (*(v46 + 8))(v77, v51);
  }
}

uint64_t sub_100015700()
{
  v1 = sub_1000216DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002118C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v30 - v13;
  if (qword_100030108 != -1)
  {
    swift_once();
  }

  if (byte_100030B90 != 1)
  {
    return 0;
  }

  v15 = objc_allocWithZone(NSUserDefaults);
  v16 = sub_100021B8C();
  v17 = [v15 initWithSuiteName:v16];

  if (!v17)
  {
    return 0;
  }

  v30 = v2;
  v18 = sub_100021B8C();
  v19 = [v17 BOOLForKey:v18];

  if (!v19)
  {

    return 0;
  }

  v20 = v0 + *(type metadata accessor for EnergyForecastWidgetEntryView() + 24);
  v21 = *(v20 + *(type metadata accessor for GridForecastEntry() + 32));
  sub_100020FBC();
  v22 = type metadata accessor for ForecastLocationEntity();
  if ((*(*(v22 - 8) + 48))(v14, 1, v22))
  {

    sub_1000168E8(v14);
    return 0;
  }

  (*(v7 + 16))(v10, &v14[*(v22 + 20)], v6);
  sub_1000168E8(v14);
  v24 = sub_10002115C();
  v26 = v25;
  (*(v7 + 8))(v10, v6);
  sub_1000216AC();

  v27 = sub_1000216CC();
  v28 = sub_100021C8C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v29 = 136315394;
    *(v29 + 4) = sub_10001EC04(0x7865546775626564, 0xE900000000000074, &v31);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_10001EC04(v24, v26, &v31);
    _os_log_impl(&_mh_execute_header, v27, v28, "EnergyForecastWidgetEntryView:%s will show debug text: %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  (*(v30 + 8))(v5, v1);
  return v24;
}

uint64_t EnergyForecastWidget.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35[1] = a1;
  v40 = a2;
  v2 = sub_1000066C8(&qword_100030138, &qword_100022430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v35 - v5;
  v7 = sub_1000066C8(&qword_1000307B8, ":#");
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v7);
  v10 = v35 - v9;
  v41 = sub_1000066C8(&qword_1000307C0, "N#");
  v37 = *(v41 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v41);
  v13 = v35 - v12;
  v14 = sub_1000066C8(&qword_1000307C8, "n#");
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v35[0] = v35 - v17;
  type metadata accessor for EnergyForecastWidgetEntryView();
  sub_100016950(&qword_1000307D0, type metadata accessor for EnergyForecastWidgetEntryView);
  sub_100016260();

  sub_100021A9C();
  v18 = sub_1000162B4();
  sub_10002189C();
  (*(v3 + 8))(v6, v2);
  v42 = sub_1000213DC();
  v43 = v19;
  v46 = v2;
  v47 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_100009DB4();
  sub_1000218AC();

  (*(v36 + 8))(v10, v7);
  v46 = sub_1000213CC();
  v47 = v22;
  v42 = v7;
  v43 = &type metadata for String;
  v44 = OpaqueTypeConformance2;
  v45 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v35[0];
  v25 = v41;
  sub_10002187C();

  (*(v37 + 8))(v13, v25);
  sub_1000066C8(&qword_100030338, &qword_100022AE8);
  v26 = sub_100021A5C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100022AA0;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v30 + v29, enum case for WidgetFamily.accessoryRectangular(_:), v26);
  v32(v31 + v28, enum case for WidgetFamily.systemSmall(_:), v26);
  v32(v31 + 2 * v28, enum case for WidgetFamily.systemMedium(_:), v26);
  v42 = v41;
  v43 = &type metadata for String;
  v44 = v23;
  v45 = v21;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_10002188C();

  return (*(v39 + 8))(v24, v33);
}

uint64_t sub_100016154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for EnergyForecastWidgetEntryView();
  sub_100016AA8(a1, a2 + *(v4 + 24));
  *a2 = swift_getKeyPath();
  sub_1000066C8(&qword_100030448, &qword_100022C30);
  swift_storeEnumTagMultiPayload();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1000066C8(&qword_100030440, &qword_100022E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for EnergyForecastWidgetEntryView()
{
  result = qword_100030838;
  if (!qword_100030838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100016260()
{
  result = qword_1000307D8;
  if (!qword_1000307D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000307D8);
  }

  return result;
}

unint64_t sub_1000162B4()
{
  result = qword_100030140;
  if (!qword_100030140)
  {
    sub_100006710(&qword_100030138, &qword_100022430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030140);
  }

  return result;
}

uint64_t sub_10001636C()
{
  sub_100006710(&qword_1000307C8, "n#");
  sub_100006710(&qword_1000307C0, "N#");
  sub_100006710(&qword_1000307B8, ":#");
  sub_100006710(&qword_100030138, &qword_100022430);
  sub_1000162B4();
  swift_getOpaqueTypeConformance2();
  sub_100009DB4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000164C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for GridForecastEntry();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100016630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000066C8(&qword_100030340, &qword_100022B60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000066C8(&qword_100030348, &qword_100022B68);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for GridForecastEntry();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100016794()
{
  sub_10000A3DC(319, &qword_1000303B8, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_10000A3DC(319, &unk_1000303C0, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GridForecastEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100016884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000168E8(uint64_t a1)
{
  v2 = sub_1000066C8(&qword_1000302A8, &unk_100022A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016950(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000169E0(uint64_t a1)
{
  v2 = sub_100021A4C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000217AC();
}

uint64_t sub_100016AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100016B5C()
{
  result = qword_100030888;
  if (!qword_100030888)
  {
    sub_100006710(&qword_100030890, &unk_100023930);
    sub_10000A684();
    sub_100016950(&qword_100030880, &type metadata accessor for GridForecastWidgetCommon.GridForecastWidgetForFamily);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030888);
  }

  return result;
}

uint64_t sub_100016C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002121C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10002113C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100016D78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002121C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_10002113C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for GridForecastEntry()
{
  result = qword_1000308F0;
  if (!qword_1000308F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016EEC()
{
  sub_10002121C();
  if (v0 <= 0x3F)
  {
    sub_100016FC8();
    if (v1 <= 0x3F)
    {
      sub_10002113C();
      if (v2 <= 0x3F)
      {
        sub_10000C66C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_100016FC8()
{
  result = qword_100030900;
  if (!qword_100030900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100030900);
  }

  return result;
}

uint64_t sub_10001702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1000212BC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000170F0, 0, 0);
}

uint64_t sub_1000170F0()
{
  v1 = v0[7];
  sub_1000213EC();
  v0[8] = sub_10002162C();
  sub_10002164C();
  v0[9] = sub_10002163C();
  sub_10001C774(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v3 = sub_100021C4C();

  return _swift_task_switch(sub_1000171C8, v3, v2);
}

uint64_t sub_1000171C8()
{
  v2 = v0[8];
  v1 = v0[9];

  v0[10] = sub_10002161C();

  return _swift_task_switch(sub_100017238, 0, 0);
}

uint64_t sub_100017238()
{
  sub_100021C6C();
  *(v0 + 88) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_1000172CC, v2, v1);
}

uint64_t sub_1000172CC()
{
  v2 = v0[10];
  v1 = v0[11];

  v0[12] = sub_1000215EC();

  return _swift_task_switch(sub_100017344, 0, 0);
}

uint64_t sub_100017344()
{
  v1 = *(v0 + 96);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = [*(v0 + 96) homes];
  sub_10000E9F4();
  v3 = sub_100021C0C();

  v4 = v3 >> 62 ? sub_100021D8C() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v5 = [v1 hasOptedToHH2];
  if (v4 && v5 == 0)
  {
    v7 = 2;
  }

  else
  {
LABEL_8:
    v7 = 3;
  }

  v25 = v7;
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  sub_10002129C();
  v14 = type metadata accessor for GridForecastEntry();
  v15 = (v13 + v14[5]);
  v15[3] = sub_10002121C();
  v15[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot);
  sub_10001C6E8(v15);
  sub_10002129C();
  v16 = v13 + v14[6];
  sub_1000212AC();
  v17 = v13 + v14[7];
  sub_10002127C();
  sub_100021ACC();
  v19 = v18;
  v21 = v20;

  (*(v9 + 8))(v8, v10);
  *(v13 + v14[8]) = v12;
  *(v13 + v14[9]) = v25;
  v22 = (v13 + v14[10]);
  *v22 = v19;
  v22[1] = v21;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100017558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for GridForecastEntry();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_1000212BC();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(sub_1000066C8(&qword_100030968, &qword_100023A88) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_1000211EC();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = sub_100021A8C();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v16 = *(v15 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v17 = sub_10002121C();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v20 = sub_1000216DC();
  v3[24] = v20;
  v21 = *(v20 - 8);
  v3[25] = v21;
  v22 = *(v21 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_100017844, 0, 0);
}

uint64_t sub_100017844()
{
  v20 = v0;
  v1 = v0[27];
  v2 = v0[4];
  sub_1000216AC();

  v3 = sub_1000216CC();
  v4 = sub_100021CBC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  if (v5)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v19);
    *(v10 + 12) = 2080;
    v11 = sub_1000060D0();
    v13 = sub_10001EC04(v11, v12, &v19);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s resolving forecastSnapshot type for configuration: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  v0[28] = v14;
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_100017A44;
  v16 = v0[23];
  v17 = v0[4];

  return sub_1000185B0(v16, v17);
}

uint64_t sub_100017A44()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100018044;
  }

  else
  {
    v3 = sub_100017B58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100017B58()
{
  v1 = v0[23];
  v2 = v0[20];
  v0[31] = sub_1000213FC();
  v0[32] = sub_10002162C();
  sub_10002164C();
  v0[33] = sub_10002163C();
  sub_10001C774(&qword_1000302E8, &type metadata accessor for WidgetActor);
  v4 = sub_100021C4C();

  return _swift_task_switch(sub_100017C38, v4, v3);
}

uint64_t sub_100017C38()
{
  v2 = v0[32];
  v1 = v0[33];

  v0[34] = sub_10002161C();

  return _swift_task_switch(sub_100017CA8, 0, 0);
}

uint64_t sub_100017CA8()
{
  sub_100021C6C();
  *(v0 + 280) = sub_100021C5C();
  v2 = sub_100021C4C();

  return _swift_task_switch(sub_100017D3C, v2, v1);
}

uint64_t sub_100017D3C()
{
  v2 = v0[34];
  v1 = v0[35];

  v0[36] = sub_1000215EC();

  return _swift_task_switch(sub_100017DB4, 0, 0);
}

uint64_t sub_100017DB4()
{
  v1 = v0[36];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = [v1 homes];
  sub_10000E9F4();
  v3 = sub_100021C0C();

  v4 = v3 >> 62 ? sub_100021D8C() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v5 = [v1 hasOptedToHH2];
  if (v4 && v5 == 0)
  {
    v7 = 2;
  }

  else
  {
LABEL_8:
    v7 = 3;
  }

  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[22];
  v32 = v0[21];
  v33 = v0[23];
  v11 = v0[19];
  v12 = v0[17];
  v28 = v0[16];
  v29 = v0[20];
  v13 = v0[5];
  v14 = v0[4];
  v30 = v0[3];
  v31 = v0[6];
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = v7;
  *(v15 + 32) = v13;
  sub_10001CE2C(sub_10001C74C, v15, v9);

  (*(v12 + 16))(v11, v29, v28);
  sub_10001C774(&qword_100030948, type metadata accessor for GridForecastEntry);
  sub_100021B0C();

  (*(v12 + 8))(v29, v28);
  (*(v10 + 8))(v33, v32);
  v17 = v0[26];
  v16 = v0[27];
  v18 = v0[23];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[18];
  v22 = v0[15];
  v24 = v0[11];
  v23 = v0[12];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100018044()
{
  v67 = v0;
  v1 = v0[30];
  v2 = v0[26];
  sub_1000216AC();
  swift_errorRetain();
  v3 = sub_1000216CC();
  v4 = sub_100021C9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v64 = v0[28];
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v66 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_10001EC04(0xD000000000000011, 0x8000000100024300, &v66);
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s:ERROR: %@", v9, 0x16u);
    sub_100008C70(v10, &qword_1000302F0, &qword_100022A70);

    sub_100008C24(v11);

    v64(v6, v8);
  }

  else
  {
    v13 = v0[28];
    v15 = v0[25];
    v14 = v0[26];
    v16 = v0[24];

    v13(v14, v16);
  }

  v17 = v0[13];
  v18 = v0[14];
  v19 = v0[12];
  v0[2] = v0[30];
  swift_errorRetain();
  sub_1000066C8(&qword_100030970, &unk_100023A98);
  v20 = swift_dynamicCast();
  v21 = *(v18 + 56);
  v23 = v0[14];
  v22 = v0[15];
  v25 = v0[12];
  v24 = v0[13];
  if (v20)
  {
    v21(v0[12], 0, 1, v0[13]);
    (*(v23 + 32))(v22, v25, v24);
  }

  else
  {
    v21(v0[12], 1, 1, v0[13]);
    (*(v23 + 104))(v22, enum case for GridForecastError.otherError(_:), v24);
  }

  v26 = v0[21];
  v55 = v0[19];
  v56 = v0[18];
  v27 = v0[17];
  v59 = v0[15];
  v60 = v0[30];
  v63 = v0[14];
  v65 = v0[13];
  v28 = v0[11];
  v29 = v0[8];
  v61 = v0[10];
  v62 = v0[9];
  v30 = v0[6];
  v31 = v0[7];
  v33 = v0[4];
  v32 = v0[5];
  v57 = v0[16];
  v58 = v0[3];
  sub_10002138C();
  sub_10002129C();
  v34 = (v29 + v30[5]);
  v34[3] = v26;
  v34[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot);
  sub_10001C6E8(v34);
  sub_10002129C();
  v35 = v29 + v30[6];
  sub_1000212AC();
  v36 = v29 + v30[7];
  sub_10002127C();
  sub_100021ACC();
  *(v29 + v30[8]) = v33;
  *(v29 + v30[9]) = 3;
  v37 = (v29 + v30[10]);
  *v37 = v38;
  v37[1] = v39;
  sub_1000066C8(&qword_100030960, &qword_100023A78);
  v40 = *(v31 + 72);
  v41 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100022E90;
  sub_100016AA8(v29, v42 + v41);
  (*(v27 + 16))(v56, v55, v57);
  sub_10001C774(&qword_100030948, type metadata accessor for GridForecastEntry);

  sub_100021B0C();

  (*(v27 + 8))(v55, v57);
  (*(v61 + 8))(v28, v62);
  (*(v63 + 8))(v59, v65);
  sub_10001C7BC(v29, type metadata accessor for GridForecastEntry);
  v44 = v0[26];
  v43 = v0[27];
  v45 = v0[23];
  v47 = v0[19];
  v46 = v0[20];
  v48 = v0[18];
  v49 = v0[15];
  v51 = v0[11];
  v50 = v0[12];
  v52 = v0[8];

  v53 = v0[1];

  return v53();
}

uint64_t sub_1000185B0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1000215DC();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_10002118C();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = *(*(sub_1000066C8(&qword_1000302E0, &qword_100022A68) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = sub_10002147C();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = sub_1000216DC();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v16 = *(*(sub_1000066C8(&qword_1000302A8, &unk_100022A30) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v17 = type metadata accessor for ForecastLocationEntity();
  v2[30] = v17;
  v18 = *(v17 - 8);
  v2[31] = v18;
  v19 = *(v18 + 64) + 15;
  v2[32] = swift_task_alloc();
  sub_100021C6C();
  v2[33] = sub_100021C5C();
  v21 = sub_100021C4C();
  v2[34] = v21;
  v2[35] = v20;

  return _swift_task_switch(sub_1000188FC, v21, v20);
}

uint64_t sub_1000188FC()
{
  v91 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[5];
  sub_100020FBC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[33];
    v6 = v0[29];
    v7 = v0[21];

    sub_100008C70(v6, &qword_1000302A8, &unk_100022A30);
    sub_1000216AC();
    v8 = sub_1000216CC();
    v9 = sub_100021C9C();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[19];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v90[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v90);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: Widget configuration has no entity (home not found)", v14, 0xCu);
      sub_100008C24(v15);
    }

    (*(v12 + 8))(v11, v13);
    v16 = sub_1000211EC();
    sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for GridForecastError.homeNotFound(_:), v16);
    swift_willThrow();
    v18 = v0[32];
    v20 = v0[28];
    v19 = v0[29];
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[24];
    v24 = v0[25];
    v26 = v0[22];
    v25 = v0[23];
    v27 = v0[21];
    v82 = v0[18];
    v83 = v0[15];
    v84 = v0[14];
    v85 = v0[13];
    v86 = v0[12];
    v87 = v0[11];
    v88 = v0[8];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[32];
    v31 = v0[30];
    sub_100008CD0(v0[29], v30);
    v32 = *(v30 + *(v31 + 24));
    sub_100020F7C();
    v34 = v0[2];
    v33 = v0[3];
    v35 = v30 + *(v31 + 28);
    v36 = *v35;
    v0[36] = *v35;
    v0[37] = *(v35 + 8);
    v37 = *(v35 + 16);
    if (v37)
    {
      if (v37 == 1)
      {
        v38 = v0[28];
        v39 = v36;
        sub_1000216AC();

        v40 = sub_1000216CC();
        v41 = sub_100021CBC();

        v42 = os_log_type_enabled(v40, v41);
        v43 = v0[28];
        v45 = v0[19];
        v44 = v0[20];
        if (v42)
        {
          v89 = v39;
          v46 = swift_slowAlloc();
          v90[0] = swift_slowAlloc();
          *v46 = 136315394;
          *(v46 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v90);
          *(v46 + 12) = 2080;
          *(v46 + 14) = sub_10001EC04(v34, v33, v90);
          _os_log_impl(&_mh_execute_header, v40, v41, "%s: Widget configuration is for static location: %s", v46, 0x16u);
          swift_arrayDestroy();

          v39 = v89;

          (*(v44 + 8))(v43, v45);
        }

        else
        {

          (*(v44 + 8))(v43, v45);
        }

        v72 = v0[15];
        v73 = v0[9];
        v74 = v0[10];
        (*(v0[17] + 104))(v0[18], enum case for GridForecastSnapshotManager.SnapshotManagerType.widgetSingleShot(_:), v0[16]);
        (*(v74 + 56))(v72, 1, 1, v73);
        v75 = sub_10002149C();
        v76 = *(v75 + 48);
        v77 = *(v75 + 52);
        swift_allocObject();
        v78 = v39;
        v0[38] = sub_10002148C();
        v79 = async function pointer to GridForecastSnapshotManager.retrieveFixedSnapshot()[1];
        v80 = swift_task_alloc();
        v0[39] = v80;
        *v80 = v0;
        v80[1] = sub_1000191C8;
        v81 = v0[4];

        return GridForecastSnapshotManager.retrieveFixedSnapshot()(v81);
      }

      else
      {
        v54 = v0[22];

        sub_1000216AC();
        v55 = sub_1000216CC();
        v56 = sub_100021CBC();
        v57 = os_log_type_enabled(v55, v56);
        v58 = v0[22];
        v59 = v0[19];
        v60 = v0[20];
        if (v57)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v90[0] = v62;
          *v61 = 136315138;
          *(v61 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v90);
          _os_log_impl(&_mh_execute_header, v55, v56, "%s: Widget configuration is for current location.", v61, 0xCu);
          sub_100008C24(v62);
        }

        (*(v60 + 8))(v58, v59);
        v63 = v0[15];
        v64 = v0[9];
        v65 = v0[10];
        (*(v0[17] + 104))(v0[18], enum case for GridForecastSnapshotManager.SnapshotManagerType.widgetSingleShot(_:), v0[16]);
        (*(v65 + 56))(v63, 1, 1, v64);
        v66 = sub_10002149C();
        v67 = *(v66 + 48);
        v68 = *(v66 + 52);
        swift_allocObject();
        v0[58] = sub_10002148C();
        v69 = async function pointer to GridForecastSnapshotManager.retrieveImmediateLocationSnapshotForWidget()[1];
        v70 = swift_task_alloc();
        v0[59] = v70;
        *v70 = v0;
        v70[1] = sub_10001AB0C;
        v71 = v0[4];

        return GridForecastSnapshotManager.retrieveImmediateLocationSnapshotForWidget()(v71);
      }
    }

    else
    {
      v47 = v0[32];
      v48 = v0[13];
      v49 = v0[9];
      v50 = v0[10];

      v51 = *(v50 + 16);
      v0[40] = v51;
      v0[41] = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v51(v48, v47, v49);
      v0[42] = sub_10002162C();
      v0[43] = sub_10002164C();
      v0[44] = sub_10002163C();
      v0[45] = sub_10001C774(&qword_1000302E8, &type metadata accessor for WidgetActor);
      v53 = sub_100021C4C();

      return _swift_task_switch(sub_10001946C, v53, v52);
    }
  }
}

uint64_t sub_1000191C8()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *(v1 + 280);
  v4 = *(v1 + 272);

  return _swift_task_switch(sub_1000192E8, v4, v3);
}

uint64_t sub_1000192E8()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[33];

  sub_10001C81C(v3, v2, 1);
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[22];
  v11 = v0[23];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[8];
  sub_10001C7BC(v0[32], type metadata accessor for ForecastLocationEntity);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001946C()
{
  v1 = v0[44];
  v2 = v0[42];

  v0[46] = sub_10002161C();
  v3 = v0[34];
  v4 = v0[35];

  return _swift_task_switch(sub_1000194DC, v3, v4);
}

uint64_t sub_1000194DC()
{
  v59 = v0;
  v1 = v0[46];
  v2 = sub_1000215EC();
  v0[47] = v2;

  if (v2)
  {
    v3 = v0[45];
    v4 = v0[43];
    v0[48] = sub_10002163C();
    v6 = sub_100021C4C();

    return _swift_task_switch(sub_10001994C, v6, v5);
  }

  else
  {
    v7 = v0[33];

    v9 = v0[40];
    v8 = v0[41];
    v10 = v0[23];
    v11 = v0[13];
    v12 = v0[11];
    v13 = v0[9];
    sub_1000216AC();
    v9(v12, v11, v13);
    v14 = sub_1000216CC();
    v15 = sub_100021CBC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[23];
    v19 = v0[19];
    v18 = v0[20];
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[9];
    if (v16)
    {
      v52 = v15;
      v23 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v58);
      *(v23 + 12) = 2080;
      v57 = v19;
      v24 = sub_10002115C();
      v54 = v17;
      v26 = v25;
      v27 = v22;
      v28 = *(v21 + 8);
      v28(v20, v27);
      v29 = sub_10001EC04(v24, v26, v58);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v14, v52, "%s: Widget configuration could not find %s", v23, 0x16u);
      swift_arrayDestroy();

      v30 = v28;

      (*(v18 + 8))(v54, v57);
    }

    else
    {

      v30 = *(v21 + 8);
      v30(v20, v22);
      (*(v18 + 8))(v17, v19);
    }

    v31 = v0[32];
    v32 = v0[13];
    v33 = v0[9];
    v34 = sub_1000211EC();
    sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, enum case for GridForecastError.homeNotFound(_:), v34);
    swift_willThrow();
    v30(v32, v33);
    sub_10001C7BC(v31, type metadata accessor for ForecastLocationEntity);
    v36 = v0[32];
    v38 = v0[28];
    v37 = v0[29];
    v40 = v0[26];
    v39 = v0[27];
    v41 = v0[24];
    v42 = v0[25];
    v44 = v0[22];
    v43 = v0[23];
    v45 = v0[21];
    v48 = v0[18];
    v49 = v0[15];
    v50 = v0[14];
    v51 = v0[13];
    v53 = v0[12];
    v55 = v0[11];
    v56 = v0[8];

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_10001994C()
{
  v1 = v0[48];
  v2 = v0[42];

  v0[49] = sub_10002161C();
  v3 = v0[34];
  v4 = v0[35];

  return _swift_task_switch(sub_1000199BC, v3, v4);
}

uint64_t sub_1000199BC()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  (*(v0 + 320))(v2, *(v0 + 104), v3);
  v5 = *(v4 + 56);
  *(v0 + 400) = v5;
  *(v0 + 408) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v2, 0, 1, v3);
  v6 = async function pointer to WidgetDataModel.home(_:)[1];
  v7 = swift_task_alloc();
  *(v0 + 416) = v7;
  *v7 = v0;
  v7[1] = sub_100019AA8;
  v8 = *(v0 + 392);
  v9 = *(v0 + 112);
  v10 = *(v0 + 64);

  return WidgetDataModel.home(_:)(v10, v9);
}

uint64_t sub_100019AA8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 416);
  v5 = *v1;

  v6 = *(v2 + 392);
  v7 = *(v2 + 112);
  if (v0)
  {

    sub_100008C70(v7, &qword_1000302E0, &qword_100022A68);
    v8 = *(v3 + 272);
    v9 = *(v3 + 280);
    v10 = sub_10001AD9C;
  }

  else
  {
    sub_100008C70(v7, &qword_1000302E0, &qword_100022A68);

    v8 = *(v3 + 272);
    v9 = *(v3 + 280);
    v10 = sub_100019C38;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100019C38()
{
  v149 = v0;
  v1.super.isa = *(v0 + 376);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = sub_1000215BC(v1);
  *(v0 + 424) = v5;
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v7 = *(v0 + 320);
    v6 = *(v0 + 328);
    v8 = *(v0 + 216);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 72);
    sub_1000216AC();
    v7(v10, v9, v11);
    v12 = v5;
    v13 = sub_1000216CC();
    LOBYTE(v8) = sub_100021CBC();

    v138 = v8;
    v14 = os_log_type_enabled(v13, v8);
    v15 = *(v0 + 216);
    v16 = *(v0 + 160);
    v143 = *(v0 + 152);
    v146 = v12;
    v17 = *(v0 + 96);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v132 = v5;
    if (v14)
    {
      v129 = *(v0 + 216);
      v20 = swift_slowAlloc();
      log = v13;
      v21 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v148);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v12;
      *v21 = v5;
      *(v20 + 22) = 2080;
      v22 = v12;
      v23 = sub_10002115C();
      v25 = v24;
      v26 = *(v18 + 8);
      v26(v17, v19);
      v27 = v23;
      v12 = v146;
      v28 = sub_10001EC04(v27, v25, v148);

      *(v20 + 24) = v28;
      _os_log_impl(&_mh_execute_header, log, v138, "%s: Widget configuration is for a home: %@ with ID: %s", v20, 0x20u);
      sub_100008C70(v21, &qword_1000302F0, &qword_100022A70);

      swift_arrayDestroy();

      v29 = *(v16 + 8);
      v29(v129, v143);
    }

    else
    {

      v26 = *(v18 + 8);
      v26(v17, v19);
      v29 = *(v16 + 8);
      v29(v15, v143);
    }

    *(v0 + 432) = v26;
    v55 = [v12 location];
    v144 = v55;
    if (v55)
    {
      v56 = v55;
      v140 = v29;
      v57 = *(v0 + 208);
      sub_1000216AC();
      v58 = v56;
      v59 = sub_1000216CC();
      v60 = sub_100021C7C();

      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 208);
      v64 = *(v0 + 152);
      v63 = *(v0 + 160);
      if (v61)
      {
        v134 = *(v0 + 208);
        v65 = swift_slowAlloc();
        v148[0] = swift_slowAlloc();
        *v65 = 136315394;
        *(v65 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v148);
        *(v65 + 12) = 2080;
        v66 = sub_10002167C();
        v68 = sub_10001EC04(v66, v67, v148);

        *(v65 + 14) = v68;
        _os_log_impl(&_mh_execute_header, v59, v60, "%s: Home location found...%s", v65, 0x16u);
        swift_arrayDestroy();

        v69 = v134;
      }

      else
      {

        v69 = v62;
      }

      v140(v69, v64);
      v82 = *(v0 + 200);
      sub_1000216AC();
      v83 = v58;
      v84 = sub_1000216CC();
      v85 = sub_100021C8C();

      v86 = os_log_type_enabled(v84, v85);
      v87 = *(v0 + 200);
      v88 = *(v0 + 152);
      v89 = *(v0 + 160);
      if (v86)
      {
        v90 = swift_slowAlloc();
        v135 = v87;
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v148[0] = v92;
        *v90 = 136315394;
        *(v90 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v148);
        *(v90 + 12) = 2112;
        *(v90 + 14) = v83;
        *v91 = v144;
        v83 = v83;
        _os_log_impl(&_mh_execute_header, v84, v85, "\t...%s:%@", v90, 0x16u);
        sub_100008C70(v91, &qword_1000302F0, &qword_100022A70);

        sub_100008C24(v92);

        v93 = v88;
        v94 = v144;
        v140(v135, v93);
      }

      else
      {

        v140(v87, v88);
        v94 = v144;
      }
    }

    else
    {
      v70 = *(v0 + 192);
      sub_1000216AC();
      v71 = v12;
      v72 = sub_1000216CC();
      v73 = sub_100021C9C();

      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v0 + 192);
      v77 = *(v0 + 152);
      v76 = *(v0 + 160);
      if (v74)
      {
        v141 = v29;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v148[0] = v80;
        *v78 = 136315394;
        *(v78 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v148);
        *(v78 + 12) = 2112;
        *(v78 + 14) = v71;
        *v79 = v132;
        v81 = v71;
        _os_log_impl(&_mh_execute_header, v72, v73, "%s: Home location disappeared, no longer valid: %@", v78, 0x16u);
        sub_100008C70(v79, &qword_1000302F0, &qword_100022A70);

        sub_100008C24(v80);

        v141(v75, v77);
      }

      else
      {

        v29(v75, v77);
      }

      v83 = sub_10002166C();
      v94 = 0;
    }

    *(v0 + 440) = v83;
    v131 = *(v0 + 400);
    v137 = *(v0 + 408);
    v112 = *(v0 + 320);
    v113 = *(v0 + 328);
    v114 = *(v0 + 120);
    v115 = *(v0 + 104);
    v116 = *(v0 + 72);
    (*(*(v0 + 136) + 104))(*(v0 + 144), enum case for GridForecastSnapshotManager.SnapshotManagerType.widgetSingleShot(_:), *(v0 + 128));
    v117 = v94;
    v118 = [v146 name];
    sub_100021B9C();

    v112(v114, v115, v116);
    v131(v114, 0, 1, v116);
    v119 = sub_10002149C();
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    swift_allocObject();
    *(v0 + 448) = sub_10002148C();
    v122 = async function pointer to GridForecastSnapshotManager.retrieveFixedSnapshot()[1];
    v123 = swift_task_alloc();
    *(v0 + 456) = v123;
    *v123 = v0;
    v123[1] = sub_10001A848;
    v124 = *(v0 + 32);

    return GridForecastSnapshotManager.retrieveFixedSnapshot()(v124);
  }

  else
  {
    v30 = *(v0 + 376);
    v31 = *(v0 + 264);

    v33 = *(v0 + 320);
    v32 = *(v0 + 328);
    v34 = *(v0 + 184);
    v35 = *(v0 + 104);
    v36 = *(v0 + 88);
    v37 = *(v0 + 72);
    sub_1000216AC();
    v33(v36, v35, v37);
    v38 = sub_1000216CC();
    v39 = sub_100021CBC();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 184);
    v43 = *(v0 + 152);
    v42 = *(v0 + 160);
    v45 = *(v0 + 80);
    v44 = *(v0 + 88);
    v46 = *(v0 + 72);
    if (v40)
    {
      v133 = v39;
      v47 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v47 = 136315394;
      *(v47 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v148);
      *(v47 + 12) = 2080;
      v147 = v43;
      v48 = sub_10002115C();
      v139 = v41;
      v50 = v49;
      v51 = v46;
      v52 = *(v45 + 8);
      v52(v44, v51);
      v53 = sub_10001EC04(v48, v50, v148);

      *(v47 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v38, v133, "%s: Widget configuration could not find %s", v47, 0x16u);
      swift_arrayDestroy();

      v54 = v52;

      (*(v42 + 8))(v139, v147);
    }

    else
    {

      v54 = *(v45 + 8);
      v54(v44, v46);
      (*(v42 + 8))(v41, v43);
    }

    v95 = *(v0 + 256);
    v96 = *(v0 + 104);
    v97 = *(v0 + 72);
    v98 = sub_1000211EC();
    sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError);
    swift_allocError();
    (*(*(v98 - 8) + 104))(v99, enum case for GridForecastError.homeNotFound(_:), v98);
    swift_willThrow();
    v54(v96, v97);
    sub_10001C7BC(v95, type metadata accessor for ForecastLocationEntity);
    v100 = *(v0 + 256);
    v102 = *(v0 + 224);
    v101 = *(v0 + 232);
    v104 = *(v0 + 208);
    v103 = *(v0 + 216);
    v105 = *(v0 + 192);
    v106 = *(v0 + 200);
    v108 = *(v0 + 176);
    v107 = *(v0 + 184);
    v109 = *(v0 + 168);
    v125 = *(v0 + 144);
    loga = *(v0 + 120);
    v128 = *(v0 + 112);
    v130 = *(v0 + 104);
    v136 = *(v0 + 96);
    v142 = *(v0 + 88);
    v145 = *(v0 + 64);

    v110 = *(v0 + 8);

    return v110();
  }
}

uint64_t sub_10001A848()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v6 = *v0;

  v3 = *(v1 + 280);
  v4 = *(v1 + 272);

  return _swift_task_switch(sub_10001A968, v4, v3);
}

uint64_t sub_10001A968()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[47];
  v6 = v0[33];
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[10];

  v3(v7, v8);
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[26];
  v13 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v17 = v0[22];
  v16 = v0[23];
  v20 = v0[21];
  v21 = v0[18];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[12];
  v26 = v0[11];
  v27 = v0[8];
  sub_10001C7BC(v0[32], type metadata accessor for ForecastLocationEntity);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10001AB0C()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v6 = *v0;

  v3 = *(v1 + 280);
  v4 = *(v1 + 272);

  return _swift_task_switch(sub_10001AC2C, v4, v3);
}

uint64_t sub_10001AC2C()
{
  v1 = v0[58];
  v2 = v0[33];

  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[11];
  v20 = v0[8];
  sub_10001C7BC(v0[32], type metadata accessor for ForecastLocationEntity);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10001AD9C()
{
  v54 = v0;
  v1 = v0[47];
  v2 = v0[33];

  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[23];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[9];
  sub_1000216AC();
  v4(v7, v6, v8);
  v9 = sub_1000216CC();
  v10 = sub_100021CBC();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[23];
  v14 = v0[19];
  v13 = v0[20];
  v16 = v0[10];
  v15 = v0[11];
  v17 = v0[9];
  if (v11)
  {
    v47 = v10;
    v18 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10001EC04(0xD000000000000026, 0x80000001000246E0, v53);
    *(v18 + 12) = 2080;
    v52 = v14;
    v19 = sub_10002115C();
    v49 = v12;
    v21 = v20;
    v22 = v17;
    v23 = *(v16 + 8);
    v23(v15, v22);
    v24 = sub_10001EC04(v19, v21, v53);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v9, v47, "%s: Widget configuration could not find %s", v18, 0x16u);
    swift_arrayDestroy();

    v25 = v23;

    (*(v13 + 8))(v49, v52);
  }

  else
  {

    v25 = *(v16 + 8);
    v25(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v26 = v0[32];
  v27 = v0[13];
  v28 = v0[9];
  v29 = sub_1000211EC();
  sub_10001C774(&qword_100030978, &type metadata accessor for GridForecastError);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, enum case for GridForecastError.homeNotFound(_:), v29);
  swift_willThrow();
  v25(v27, v28);
  sub_10001C7BC(v26, type metadata accessor for ForecastLocationEntity);
  v31 = v0[32];
  v33 = v0[28];
  v32 = v0[29];
  v35 = v0[26];
  v34 = v0[27];
  v36 = v0[24];
  v37 = v0[25];
  v39 = v0[22];
  v38 = v0[23];
  v40 = v0[21];
  v43 = v0[18];
  v44 = v0[15];
  v45 = v0[14];
  v46 = v0[13];
  v48 = v0[12];
  v50 = v0[11];
  v51 = v0[8];

  v41 = v0[1];

  return v41();
}

uint64_t sub_10001B184@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  sub_10002129C();
  v6 = type metadata accessor for GridForecastEntry();
  v7 = (a3 + v6[5]);
  v7[3] = sub_10002121C();
  v7[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot);
  sub_10001C6E8(v7);
  sub_10002129C();
  v8 = a3 + v6[6];
  sub_1000212AC();
  v9 = a3 + v6[7];
  sub_10002127C();
  sub_100021ACC();
  *(a3 + v6[8]) = a1;
  *(a3 + v6[9]) = a2;
  v10 = (a3 + v6[10]);
  *v10 = v11;
  v10[1] = v12;
}

uint64_t sub_10001B284@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000212BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000213BC();
  sub_10002129C();
  v7 = type metadata accessor for GridForecastEntry();
  v8 = (a1 + v7[5]);
  v8[3] = sub_10002121C();
  v8[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot);
  sub_10001C6E8(v8);
  sub_10002129C();
  v9 = a1 + v7[6];
  sub_1000212AC();
  v10 = a1 + v7[7];
  sub_10002127C();
  v11 = sub_10000861C();
  sub_100021ACC();
  v13 = v12;
  v15 = v14;
  result = (*(v3 + 8))(v6, v2);
  *(a1 + v7[8]) = v11;
  *(a1 + v7[9]) = 3;
  v17 = (a1 + v7[10]);
  *v17 = v13;
  v17[1] = v15;
  return result;
}

uint64_t sub_10001B42C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_10001702C(a1, v6, a3);
}

uint64_t sub_10001B4DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008D7C;

  return sub_100017558(a1, v6, a3);
}

uint64_t sub_10001B59C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1000066C8(&qword_100030980, &qword_100023AB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_10002159C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000066C8(&qword_100030988, &qword_100023AB8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_10002157C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002120C();
  v20 = *(type metadata accessor for GridForecastEntry() + 24);
  v27 = v1;
  sub_10002158C();
  (*(v7 + 8))(v10, v6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100008C70(v14, &qword_100030988, &qword_100023AB8);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_10002156C();
    v21 = sub_10002113C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v5, 1, v21) != 1)
    {
      sub_10002110C();
      (*(v22 + 8))(v5, v21);
      v24 = v28;
      sub_100021AAC();
      (*(v16 + 8))(v19, v15);
      v23 = 0;
      goto LABEL_7;
    }

    sub_100008C70(v5, &qword_100030980, &qword_100023AB0);
    (*(v16 + 8))(v19, v15);
  }

  v23 = 1;
  v24 = v28;
LABEL_7:
  v25 = sub_100021ABC();
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_10001B958()
{
  v1 = v0;
  sub_100021D1C(91);
  v7._countAndFlagsBits = 0xD000000000000013;
  v7._object = 0x8000000100024710;
  sub_100021BCC(v7);
  v2 = type metadata accessor for GridForecastEntry();
  v3 = v0 + v2[6];
  v8._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v8);

  v9._object = 0x8000000100024730;
  v9._countAndFlagsBits = 0xD000000000000011;
  sub_100021BCC(v9);
  v4 = *(v1 + v2[8]);
  v10._countAndFlagsBits = sub_1000060D0();
  sub_100021BCC(v10);

  v11._countAndFlagsBits = 0xD000000000000018;
  v11._object = 0x8000000100024750;
  sub_100021BCC(v11);
  v12._countAndFlagsBits = sub_1000211FC();
  sub_100021BCC(v12);

  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x8000000100024770;
  sub_100021BCC(v13);
  v5 = v1 + v2[7];
  v14._countAndFlagsBits = sub_10002112C();
  sub_100021BCC(v14);

  return 0;
}

uint64_t sub_10001BAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_10002113C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10001BB7C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v51 = a2;
  v52 = a1;
  v6 = type metadata accessor for GridForecastEntry();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000211EC();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100021A8C();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v44 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000212BC();
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = *(v49 + 64);
  __chkstk_darwin(v17);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000216DC();
  v21 = *(v43 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v43);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000216AC();
  v25 = sub_1000216CC();
  v26 = sub_100021C9C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v41[1] = a4;
    v28 = v27;
    v29 = swift_slowAlloc();
    v42 = a3;
    v30 = v29;
    v53 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242E0, &v53);
    _os_log_impl(&_mh_execute_header, v25, v26, "%s THIS SHOULD NEVER GET CALLED", v28, 0xCu);
    sub_100008C24(v30);
    a3 = v42;
  }

  (*(v21 + 8))(v24, v43);
  v32 = v47;
  v31 = v48;
  (*(v47 + 104))(v13, enum case for GridForecastError.otherError(_:), v48);
  v33 = v44;
  sub_10002138C();
  (*(v32 + 8))(v13, v31);
  (*(v45 + 8))(v33, v46);
  sub_10002129C();
  v34 = &v9[v6[5]];
  v34[3] = sub_10002121C();
  v34[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot);
  sub_10001C6E8(v34);
  sub_10002129C();
  v35 = &v9[v6[6]];
  sub_1000212AC();
  v36 = &v9[v6[7]];
  sub_10002127C();
  sub_100021ACC();
  *&v9[v6[8]] = v52;
  v9[v6[9]] = 3;
  v37 = &v9[v6[10]];
  *v37 = v38;
  *(v37 + 1) = v39;

  a3(v9);
  (*(v49 + 8))(v20, v50);
  return sub_10001C7BC(v9, type metadata accessor for GridForecastEntry);
}

uint64_t sub_10001C048(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v64 = a4;
  v65 = a3;
  v58 = a2;
  v61 = a1;
  v4 = sub_1000066C8(&qword_100030950, &qword_100023A70);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  __chkstk_darwin(v4);
  v60 = &v49 - v6;
  v7 = type metadata accessor for GridForecastEntry();
  v56 = *(v7 - 1);
  v8 = *(v56 + 64);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000211EC();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100021A8C();
  v57 = *(v59 - 8);
  v15 = *(v57 + 64);
  v16 = __chkstk_darwin(v59);
  v52 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v55 = &v49 - v18;
  v19 = sub_1000212BC();
  v53 = *(v19 - 8);
  v54 = v19;
  v20 = *(v53 + 64);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000216DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000216AC();
  v28 = sub_1000216CC();
  v29 = sub_100021C9C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v49 = v23;
    v31 = v30;
    v32 = swift_slowAlloc();
    v50 = v11;
    v33 = v32;
    v66 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_10001EC04(0xD00000000000001FLL, 0x80000001000242C0, &v66);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s THIS SHOULD NEVER GET CALLED", v31, 0xCu);
    sub_100008C24(v33);
    v11 = v50;

    (*(v24 + 8))(v27, v49);
  }

  else
  {

    (*(v24 + 8))(v27, v23);
  }

  v34 = v51;
  (*(v51 + 104))(v14, enum case for GridForecastError.otherError(_:), v11);
  v35 = v55;
  sub_10002138C();
  (*(v34 + 8))(v14, v11);
  sub_10002129C();
  v36 = &v10[v7[5]];
  v36[3] = sub_10002121C();
  v36[4] = sub_10001C774(&qword_100030958, &type metadata accessor for GridForecastSnapshot);
  sub_10001C6E8(v36);
  sub_10002129C();
  v37 = &v10[v7[6]];
  sub_1000212AC();
  v38 = &v10[v7[7]];
  sub_10002127C();
  sub_100021ACC();
  *&v10[v7[8]] = v61;
  v10[v7[9]] = 3;
  v39 = &v10[v7[10]];
  *v39 = v40;
  *(v39 + 1) = v41;
  sub_1000066C8(&qword_100030960, &qword_100023A78);
  v42 = *(v56 + 72);
  v43 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100022E90;
  sub_100016AA8(v10, v44 + v43);
  v45 = v57;
  v46 = v59;
  (*(v57 + 16))(v52, v35, v59);
  sub_10001C774(&qword_100030948, type metadata accessor for GridForecastEntry);

  v47 = v60;
  sub_100021B0C();
  v65(v47);
  (*(v62 + 8))(v47, v63);
  (*(v45 + 8))(v35, v46);
  (*(v53 + 8))(v22, v54);
  return sub_10001C7BC(v10, type metadata accessor for GridForecastEntry);
}

uint64_t *sub_10001C6E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001C774(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001C7BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10001C81C(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t BlockOutError.description.getter(char a1)
{
  if (!a1)
  {
    return 0xD00000000000002BLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000026;
  }

  return 0xD00000000000001CLL;
}

Swift::Int BlockOutError.hashValue.getter(unsigned __int8 a1)
{
  sub_100021DFC();
  sub_100021E0C(a1);
  return sub_100021E1C();
}

Swift::Int sub_10001C928()
{
  v1 = *v0;
  sub_100021DFC();
  sub_100021E0C(v1);
  return sub_100021E1C();
}

Swift::Int sub_10001C99C()
{
  v1 = *v0;
  sub_100021DFC();
  sub_100021E0C(v1);
  return sub_100021E1C();
}

unint64_t sub_10001C9E4()
{
  result = qword_100030990;
  if (!qword_100030990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100030990);
  }

  return result;
}

uint64_t sub_10001CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002113C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000212EC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10001CBB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10002113C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000212EC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for HistoricalUsageEntry()
{
  result = qword_1000309F0;
  if (!qword_1000309F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001CD08()
{
  sub_10002113C();
  if (v0 <= 0x3F)
  {
    sub_1000212EC();
    if (v1 <= 0x3F)
    {
      sub_10000C66C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10001CE94(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v27 = a7;
  v28 = a1;
  v10 = v7;
  v29 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v24 - v15;
  v17 = *(a3 + 16);
  v18 = _swiftEmptyArrayStorage;
  if (!v17)
  {
    return v18;
  }

  v30 = _swiftEmptyArrayStorage;
  v25 = a5;
  a5(0, v17, 0);
  v18 = v30;
  v19 = *(a6(0) - 8);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v26 = *(v19 + 72);
  while (1)
  {
    v28(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v30 = v18;
    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v25(v21 > 1, v22 + 1, 1);
      v18 = v30;
    }

    v18[2] = v22 + 1;
    sub_10001FEC8(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v27);
    v20 += v26;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = sub_1000212EC();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v7 = sub_10002113C();
  v3[7] = v7;
  v8 = *(v7 - 8);
  v3[8] = v8;
  v9 = *(v8 + 64) + 15;
  v3[9] = swift_task_alloc();
  v10 = sub_10002144C();
  v3[10] = v10;
  v11 = *(v10 - 8);
  v3[11] = v11;
  v12 = *(v11 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10001D218, 0, 0);
}