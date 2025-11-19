uint64_t static AAKEngagementPluginProvider.performRequest(with:)(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  v3 = sub_100003604();
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v6 = *(*(sub_100001BD0(&qword_10000C300, &qword_100003B18) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_1000013DC, 0, 0);
}

uint64_t sub_1000013DC()
{
  sub_100001C18(*(v0 + 288), v0 + 16);
  sub_100001BD0(&qword_10000C308, &qword_100003B20);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 256);
    if (*(v1 + 16))
    {
      v2 = sub_100002B7C(0xD000000000000012, 0x8000000100003D80);
      if (v3)
      {
        sub_100001C18(*(v1 + 56) + 32 * v2, v0 + 48);
        if (swift_dynamicCast())
        {
          if (*(v1 + 16))
          {
            v4 = *(v0 + 264);
            v5 = sub_100002B7C(0x76632D656E6966, 0xE700000000000000);
            if (v6)
            {
              sub_100001C18(*(v1 + 56) + 32 * v5, v0 + 80);
              if (swift_dynamicCast())
              {
                if (*(v1 + 16))
                {
                  v7 = *(v0 + 272);
                  v8 = sub_100002B7C(0x69737265766E6F63, 0xEE006761742D6E6FLL);
                  if (v9)
                  {
                    sub_100001C18(*(v1 + 56) + 32 * v8, v0 + 112);
                    if (swift_dynamicCast())
                    {
                      v10 = *(v0 + 328);
                      v11 = *(v0 + 208);
                      v12 = *(v0 + 216);
                      v13 = sub_100003624();
                      (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
                      if (*(v1 + 16))
                      {
                        v14 = sub_100002B7C(0x632D657372616F63, 0xE900000000000076);
                        if (v15)
                        {
                          sub_100001C18(*(v1 + 56) + 32 * v14, v0 + 144);
                          if (swift_dynamicCast())
                          {
                            v17 = *(v0 + 320);
                            v16 = *(v0 + 328);
                            v18 = *(v0 + 240);
                            v19 = *(v0 + 248);
                            sub_100003614();
                            sub_100003330(v16, &qword_10000C300, &qword_100003B18);
                            sub_100002DA8(v17, v16);
                          }
                        }
                      }

                      if (*(v1 + 16) && (v20 = sub_100002B7C(0x656B636F6C2D7369, 0xE900000000000064), (v21 & 1) != 0))
                      {
                        sub_100001C18(*(v1 + 56) + 32 * v20, v0 + 176);

                        if (swift_dynamicCast())
                        {
                          v22 = *(v0 + 352);
                        }
                      }

                      else
                      {
                      }

                      v30 = *(v0 + 312);
                      sub_1000032C8(*(v0 + 328), *(v0 + 320), &qword_10000C300, &qword_100003B18);
                      sub_1000035F4();
                      v31 = async function pointer to static PostbackProxy.updateConversionValue(_:advertisedItemID:)[1];
                      v32 = swift_task_alloc();
                      *(v0 + 336) = v32;
                      *v32 = v0;
                      v32[1] = sub_10000181C;
                      v33 = *(v0 + 312);

                      return static PostbackProxy.updateConversionValue(_:advertisedItemID:)(v33, v4);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  sub_100001C74();
  swift_allocError();
  *v24 = v23;
  swift_willThrow();
  v26 = *(v0 + 320);
  v25 = *(v0 + 328);
  v27 = *(v0 + 312);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10000181C()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_100001B1C;
  }

  else
  {
    v3 = sub_100001930;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100001930()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  sub_100001BD0(&qword_10000C318, &qword_100003B28);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100003B00;
  sub_1000036A4(33);
  v0[28] = 0;
  v0[29] = 0xE000000000000000;
  v15._object = 0x8000000100003DA0;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  sub_100003654(v15);
  sub_1000036B4();
  v9 = v0[28];
  v10 = v0[29];
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_100003734();

  v11 = sub_100002CAC(&off_1000082F8);
  sub_100003330(&unk_100008318, &qword_10000C320, &qword_100003B30);
  v7[3] = sub_100001BD0(&qword_10000C328, &qword_100003B38);
  *v7 = v11;
  (*(v4 + 8))(v3, v5);
  sub_100003330(v2, &qword_10000C300, &qword_100003B18);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100001B1C()
{
  v1 = v0[41];
  (*(v0[38] + 8))(v0[39], v0[37]);
  sub_100003330(v1, &qword_10000C300, &qword_100003B18);
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[39];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100001BD0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100001C74()
{
  result = qword_10000C310;
  if (!qword_10000C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C310);
  }

  return result;
}

uint64_t sub_100001E50(int a1, void *aBlock)
{
  *(v2 + 80) = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_100003694();
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_100001F10;

  return static AAKEngagementPluginProvider.performRequest(with:)(v2 + 16, v2 + 48);
}

uint64_t sub_100001F10()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  sub_100003538(v3 + 6);
  v6 = v3[10];
  if (v2)
  {
    v7 = sub_1000035D4();

    (v6)[2](v6, 0, v7);

    _Block_release(v6);
  }

  else
  {
    sub_100003584(v3 + 2, v3[5]);
    v8 = sub_1000036D4();
    v6[2](v6, v8, 0);
    _Block_release(v6);
    swift_unknownObjectRelease();
    sub_100003538(v3 + 2);
  }

  v9 = *(v5 + 8);

  return v9();
}

id AAKEngagementPluginProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AAKEngagementPluginProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id AAKEngagementPluginProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t AAKEngagementPluginProviderError.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (a1 == 1)
  {
    return 0xD000000000000042;
  }

  return 0xD000000000000024;
}

Swift::Int AAKEngagementPluginProviderError.hashValue.getter(unsigned __int8 a1)
{
  sub_100003744();
  sub_100003754(a1);
  return sub_100003764();
}

Swift::Int sub_10000229C()
{
  v1 = *v0;
  sub_100003744();
  sub_100003754(v1);
  return sub_100003764();
}

Swift::Int sub_100002310()
{
  v1 = *v0;
  sub_100003744();
  sub_100003754(v1);
  return sub_100003764();
}

uint64_t sub_100002364()
{
  v1 = 0xD000000000000042;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_1000023CC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000035D0;

  return v7();
}

uint64_t sub_1000024B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000259C;

  return v8();
}

uint64_t sub_10000259C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001BD0(&qword_10000C420, &qword_100003C98) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_1000032C8(a3, v24 - v10, &qword_10000C420, &qword_100003C98);
  v12 = sub_100003684();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100003330(v11, &qword_10000C420, &qword_100003C98);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100003674();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_100003664();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_100003634() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_100003330(a3, &qword_10000C420, &qword_100003C98);

    return v22;
  }

LABEL_8:
  sub_100003330(a3, &qword_10000C420, &qword_100003C98);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000298C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002A84;

  return v7(a1);
}

uint64_t sub_100002A84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100002B7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100003744();
  sub_100003644();
  v6 = sub_100003764();

  return sub_100002BF4(a1, a2, v6);
}

unint64_t sub_100002BF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000036E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100002CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001BD0(&qword_10000C428, &qword_100003CE8);
    v3 = sub_1000036C4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100002B7C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_100002DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001BD0(&qword_10000C300, &qword_100003B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100002E1C()
{
  result = qword_10000C330;
  if (!qword_10000C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAKEngagementPluginProviderError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AAKEngagementPluginProviderError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100003004()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003044()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000259C;

  return sub_100001E50(v2, v3);
}

uint64_t sub_1000030FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000035D0;

  return sub_1000023CC(v2, v3, v5);
}

uint64_t sub_1000031BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000031FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000035D0;

  return sub_1000024B4(a1, v4, v5, v7);
}

uint64_t sub_1000032C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001BD0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001BD0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003390()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000033C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000035D0;

  return sub_10000298C(a1, v5);
}

uint64_t sub_100003480(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000259C;

  return sub_10000298C(a1, v5);
}

uint64_t sub_100003538(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100003584(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}