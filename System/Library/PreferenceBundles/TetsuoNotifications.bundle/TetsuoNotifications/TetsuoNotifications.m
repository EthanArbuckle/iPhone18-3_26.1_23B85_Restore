uint64_t sub_13C8()
{
  sub_5B88();
  sub_5C18();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v1 = sub_5B08();
    if (qword_C1A8 != -1)
    {
      swift_once();
    }

    v2 = sub_5BB8();
    sub_2B64(v2, qword_C248);
    v3 = sub_5B98();
    v4 = sub_5C98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_4D18(0xD00000000000001CLL, 0x8000000000006240, &v9);
      *(v5 + 12) = 1024;
      *(v5 + 14) = v1 & 1;
      _os_log_impl(&dword_0, v3, v4, "%s Push notification environment is staging: %{BOOL}d", v5, 0x12u);
      sub_2C4C(v6);
    }

    v7 = v1 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1560(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_5B68();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_1620, 0, 0);
}

uint64_t sub_1620()
{
  v1 = *(v0 + 32);
  sub_5B58();
  v2 = async function pointer to PushNotificationService.activate()[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_16BC;
  v4 = *(v0 + 32);

  return PushNotificationService.activate()();
}

uint64_t sub_16BC()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_17B8, 0, 0);
}

uint64_t sub_17B8()
{
  v18 = v0;
  v1 = sub_13C8();
  v2 = *(v0 + 80);
  v3 = "/2sbWvYVEe8AAKpp3X8o0g==";
  v4 = "RemoteNotificationsUtilities";
  if (v2 != 2)
  {
    v4 = &qword_6220;
  }

  if (*(v0 + 80))
  {
    v3 = "0n7oiTKlEfAAAOYe7g8NMw==";
  }

  if (*(v0 + 80) > 1u)
  {
    v3 = v4;
  }

  v5 = "vnsFHvYWEe8AALaqsIHZDA==";
  v6 = "TGdm/z2ZEfAAAMJ1L5v+8Q==";
  if (v2 != 2)
  {
    v6 = "nKvCfPYWEe8AAKpp3X8o0g==";
  }

  if (*(v0 + 80))
  {
    v5 = "+ubhGDKlEfAAAHLUCeQW0A==";
  }

  if (*(v0 + 80) <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  *(v0 + 48) = v8;
  if (qword_C1A8 != -1)
  {
    swift_once();
  }

  v9 = sub_5BB8();
  *(v0 + 56) = sub_2B64(v9, qword_C248);

  v10 = sub_5B98();
  v11 = sub_5C98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_4D18(0xD00000000000001CLL, 0x8000000000006240, &v17);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_4D18(0xD000000000000018, v8 | 0x8000000000000000, &v17);
    _os_log_impl(&dword_0, v10, v11, "%s Registering push notification channel %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = async function pointer to PushNotificationService.registerChannel(channelID:)[1];
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_1A68;
  v15 = *(v0 + 32);

  return PushNotificationService.registerChannel(channelID:)(0xD000000000000018, v8 | 0x8000000000000000);
}

uint64_t sub_1A68()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1C14;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B88;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1B88()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_5B18();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C14()
{
  v19 = v0;
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  swift_errorRetain();
  v4 = sub_5B98();
  v5 = sub_5CA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v8 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_4D18(0xD00000000000001CLL, 0x8000000000006240, &v18);
    *(v9 + 12) = 2080;
    v11 = sub_4D18(0xD000000000000018, v8 | 0x8000000000000000, &v18);

    *(v9 + 14) = v11;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v4, v5, "%s Error registering push notification channel:  %s / %@", v9, 0x20u);
    sub_2B9C(v10);

    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  sub_5B18();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E54(char a1)
{
  *(v1 + 80) = a1;
  v2 = sub_5B68();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_1F14, 0, 0);
}

uint64_t sub_1F14()
{
  v1 = *(v0 + 32);
  sub_5B58();
  v2 = async function pointer to PushNotificationService.activate()[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1FB0;
  v4 = *(v0 + 32);

  return PushNotificationService.activate()();
}

uint64_t sub_1FB0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_20AC, 0, 0);
}

uint64_t sub_20AC()
{
  v18 = v0;
  v1 = sub_13C8();
  v2 = *(v0 + 80);
  v3 = "/2sbWvYVEe8AAKpp3X8o0g==";
  v4 = "RemoteNotificationsUtilities";
  if (v2 != 2)
  {
    v4 = &qword_6220;
  }

  if (*(v0 + 80))
  {
    v3 = "0n7oiTKlEfAAAOYe7g8NMw==";
  }

  if (*(v0 + 80) > 1u)
  {
    v3 = v4;
  }

  v5 = "vnsFHvYWEe8AALaqsIHZDA==";
  v6 = "TGdm/z2ZEfAAAMJ1L5v+8Q==";
  if (v2 != 2)
  {
    v6 = "nKvCfPYWEe8AAKpp3X8o0g==";
  }

  if (*(v0 + 80))
  {
    v5 = "+ubhGDKlEfAAAHLUCeQW0A==";
  }

  if (*(v0 + 80) <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  *(v0 + 48) = v8;
  if (qword_C1A8 != -1)
  {
    swift_once();
  }

  v9 = sub_5BB8();
  *(v0 + 56) = sub_2B64(v9, qword_C248);

  v10 = sub_5B98();
  v11 = sub_5C98();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_4D18(0xD00000000000001CLL, 0x8000000000006240, &v17);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_4D18(0xD000000000000018, v8 | 0x8000000000000000, &v17);
    _os_log_impl(&dword_0, v10, v11, "%s Unregistering push notification channel  %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = async function pointer to PushNotificationService.unregisterChannel(channelID:)[1];
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_235C;
  v15 = *(v0 + 32);

  return PushNotificationService.unregisterChannel(channelID:)(0xD000000000000018, v8 | 0x8000000000000000);
}

uint64_t sub_235C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_247C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2C98;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_247C()
{
  v19 = v0;
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  swift_errorRetain();
  v4 = sub_5B98();
  v5 = sub_5CA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v8 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_4D18(0xD00000000000001CLL, 0x8000000000006240, &v18);
    *(v9 + 12) = 2080;
    v11 = sub_4D18(0xD000000000000018, v8 | 0x8000000000000000, &v18);

    *(v9 + 14) = v11;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v4, v5, "%s Error unregistering push notification channel: %s / %@", v9, 0x20u);
    sub_2B9C(v10);

    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  sub_5B18();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26DC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[3] = v2;
  v0[4] = 0;
  v3 = (v1 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (!v4)
    {
      v5 = swift_task_alloc();
      v0[5] = v5;
      *v5 = v0;
      v5[1] = sub_27F4;

      return sub_1560(0);
    }
  }

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_2A68;

  return sub_1E54(0);
}

uint64_t sub_27F4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_28F0, 0, 0);
}

uint64_t sub_28F0()
{
  v1 = v0[4] + 1;
  if (v0[4] == 3)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = *(&off_8460 + v1 + 32);
    v5 = 32;
    while (v5 - v0[3] != 32)
    {
      v6 = *(v0[2] + v5++);
      if (v6 == v4)
      {
        v7 = swift_task_alloc();
        v0[5] = v7;
        *v7 = v0;
        v7[1] = sub_27F4;

        return sub_1560(v4);
      }
    }

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_2A68;

    return sub_1E54(v4);
  }
}

uint64_t sub_2A68()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_2C9C, 0, 0);
}

uint64_t sub_2B64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2B9C(uint64_t a1)
{
  v2 = sub_2C04(&qword_C1B0, &qword_6168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2C04(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2C4C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2CA0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_5BF8();
  v4 = [v0 valueForKey:v3];

  if (v4)
  {
    sub_5CC8();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (*(&v28 + 1))
  {
    sub_2C04(&qword_C228, &qword_6220);
    if (swift_dynamicCast())
    {
      return v26[1];
    }
  }

  else
  {
    sub_5858(&v29, &qword_C210, &qword_6210);
  }

  sub_5B78();
  v6 = sub_5BF8();

  v7 = [objc_opt_self() bundleWithIdentifier:v6];

  if (v7)
  {
    v25._countAndFlagsBits = 0xE000000000000000;
    v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v32.value._object = 0xEB00000000656C62;
    v31._countAndFlagsBits = 0xD000000000000015;
    v31._object = 0x80000000000063F0;
    v8.super.isa = v7;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_5AA8(v31, v32, v8, v33, v25);
  }

  else
  {
    v7 = sub_5B98();
    v9 = sub_5CA8();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v7, v9, "Error accessing the notifications bundle", v10, 2u);
    }
  }

  sub_2C04(&qword_C218, &qword_6218);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_6170;
  *(&v30 + 1) = ObjectType;
  *&v29 = v1;
  v12 = v1;
  v13 = sub_5BF8();
  v14 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    v15 = sub_5904(&v29, *(&v30 + 1));
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15, v15);
    v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = sub_5D18();
    (*(v16 + 8))(v19, v14);
    sub_2C4C(&v29);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(PSSpecifier) initWithName:v13 target:v20 set:"setLatestNews:" get:"getLatestNews" detail:0 cell:6 edit:0];

  result = swift_unknownObjectRelease();
  if (v21)
  {

    *(v11 + 32) = v21;
    sub_58B8();
    isa = sub_5C38().super.isa;
    v24 = sub_5BF8();
    [v12 setValue:isa forKey:v24];

    v5 = sub_3110(v11);

    return v5;
  }

  __break(1u);
  return result;
}

char *sub_3110(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_5D08();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_56C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_5CE8();
        sub_58B8();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_56C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_5948(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_58B8();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_56C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_5948(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_334C(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2C04(&qword_C1F8, &qword_61D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v19 - v6;
  v8 = [a1 BOOLValue];
  v9 = sub_5B98();
  v10 = sub_5CB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_0, v9, v10, "Settings changed the latest news setting to %{BOOL}d", v11, 8u);
  }

  v12 = sub_5AB8();
  if (v12)
  {
    v13 = v12;
    sub_5AD8();
    v14 = sub_5BF8();

    [v13 setObject:a1 forKey:v14];
  }

  v15 = sub_5C88();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_5C68();
  v16 = sub_5C58();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  *(v17 + 32) = v8;
  *(v17 + 40) = ObjectType;
  sub_4450(0, 0, v7, &unk_61E0, v17);
}

uint64_t sub_3564(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 160) = a4;
  v6 = *(*(sub_2C04(&qword_C200, &qword_6200) - 8) + 64) + 15;
  *(v5 + 24) = swift_task_alloc();
  *(v5 + 32) = swift_task_alloc();
  v7 = sub_5BE8();
  *(v5 + 40) = v7;
  v8 = *(v7 - 8);
  *(v5 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  sub_5C68();
  *(v5 + 72) = sub_5C58();
  v11 = sub_5C48();
  *(v5 + 80) = v11;
  *(v5 + 88) = v10;

  return _swift_task_switch(sub_36AC, v11, v10);
}

uint64_t sub_36AC()
{
  v16 = v0;
  if (*(v0 + 160) == 1)
  {
    v1 = async function pointer to static Storefront.current.getter[1];
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_390C;
    v3 = *(v0 + 32);

    return static Storefront.current.getter(v3);
  }

  else
  {
    if (qword_C1A8 != -1)
    {
      swift_once();
    }

    v4 = sub_5BB8();
    sub_2B64(v4, qword_C248);
    v5 = sub_5B98();
    v6 = sub_5CB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 16);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = sub_5D38();
      v12 = sub_4D18(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v5, v6, "%s unregistering for Cloud Channels", v8, 0xCu);
      sub_2C4C(v9);
    }

    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_4330;

    return sub_26BC(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_390C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_3A08, 0, 0);
}

uint64_t sub_3A08()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + 48);
  v0[13] = v4;
  v0[14] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_5858(v3, &qword_C200, &qword_6200);
LABEL_3:
    v5 = async function pointer to static Storefront.current.getter[1];
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_3D64;
    v7 = v0[3];

    return static Storefront.current.getter(v7);
  }

  (*(v2 + 32))(v0[8], v3, v1);
  v8 = sub_5BC8();
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];
  if (v8 == 5130307 && v9 == 0xE300000000000000)
  {

    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v14 = sub_5D28();

    (*(v12 + 8))(v10, v11);
    if ((v14 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_3C44;

  return sub_26BC(&off_8488);
}

uint64_t sub_3C44()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_595C, v4, v3);
}

uint64_t sub_3D64()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_3E60, 0, 0);
}

uint64_t sub_3E60()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v0 + 104))(v3, 1, v2) == 1)
  {
    sub_5858(v3, &qword_C200, &qword_6200);
LABEL_3:
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_4180;
    v5 = &off_84D8;
    goto LABEL_12;
  }

  (*(*(v0 + 48) + 32))(*(v0 + 56), v3, v2);
  v6 = sub_5BC8();
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);
  if (v6 == 4281173 && v7 == 0xE300000000000000)
  {

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v12 = sub_5D28();

    (*(v9 + 8))(v8, v10);
    if ((v12 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_4060;
  v5 = &off_84B0;
LABEL_12:

  return sub_26BC(v5);
}

uint64_t sub_4060()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_595C, v4, v3);
}

uint64_t sub_4180()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_42A0, v4, v3);
}

uint64_t sub_42A0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_4330()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_595C, v4, v3);
}

uint64_t sub_4450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2C04(&qword_C1F8, &qword_61D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_54B0(a3, v28 - v12);
  v14 = sub_5C88();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_5858(v13, &qword_C1F8, &qword_61D0);
  }

  else
  {
    sub_5C78();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_5C48();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_5C18() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_5858(a3, &qword_C1F8, &qword_61D0);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_5858(a3, &qword_C1F8, &qword_61D0);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

id sub_49A0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PushNotificationSettingsView()
{
  result = qword_C1E8;
  if (!qword_C1E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_4A98()
{
  result = sub_5BB8();
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

uint64_t sub_4B28(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4C20;

  return v7(a1);
}

uint64_t sub_4C20()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4D18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4DE4(v11, 0, 0, 1, a1, a2);
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
    sub_57F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2C4C(v11);
  return v7;
}

unint64_t sub_4DE4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4EF0(a5, a6);
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
    result = sub_5CF8();
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

char *sub_4EF0(uint64_t a1, unint64_t a2)
{
  v4 = sub_4F3C(a1, a2);
  sub_506C(&off_8438);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4F3C(uint64_t a1, unint64_t a2)
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

  v6 = sub_5158(v5, 0);
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

  result = sub_5CF8();
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
        v10 = sub_5C28();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_5158(v10, 0);
        result = sub_5CD8();
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

uint64_t sub_506C(uint64_t result)
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

  result = sub_51CC(result, v12, 1, v3);
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

void *sub_5158(uint64_t a1, uint64_t a2)
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

  sub_2C04(&qword_C208, &qword_6208);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_51CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2C04(&qword_C208, &qword_6208);
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

uint64_t sub_52C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_52F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_53BC;

  return sub_3564(a1, v4, v5, v6, v7);
}

uint64_t sub_53BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_54B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2C04(&qword_C1F8, &qword_61D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5520()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5558(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5960;

  return sub_4B28(a1, v5);
}

uint64_t sub_5610(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_53BC;

  return sub_4B28(a1, v5);
}

char *sub_56C8(char *a1, int64_t a2, char a3)
{
  result = sub_56E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_56E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2C04(&qword_C230, qword_6228);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_57F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2C04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_58B8()
{
  result = qword_C220;
  if (!qword_C220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C220);
  }

  return result;
}

void *sub_5904(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_5948(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5964()
{
  result = sub_5B88();
  qword_C238 = result;
  unk_C240 = v1;
  return result;
}

uint64_t sub_5988()
{
  v0 = sub_5BB8();
  sub_5A44(v0, qword_C248);
  sub_2B64(v0, qword_C248);
  if (qword_C1A0 != -1)
  {
    swift_once();
  }

  return sub_5BA8();
}

uint64_t *sub_5A44(uint64_t a1, uint64_t *a2)
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