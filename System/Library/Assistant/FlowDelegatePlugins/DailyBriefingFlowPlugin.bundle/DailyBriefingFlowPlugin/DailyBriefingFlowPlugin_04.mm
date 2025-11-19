void sub_551BC()
{
  sub_55D40();
  if (v3)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_4BF0(&qword_DC9D0, &qword_A84E8);
    v9 = sub_55DCC();
    j__malloc_size(v9);
    sub_55CE0();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_55290()
{
  sub_55D40();
  if (v5)
  {
    sub_55CA0();
    if (v7 != v8)
    {
      sub_55D34();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_55D04(v6);
  if (v3)
  {
    sub_4BF0(&qword_DD958, &qword_AAE70);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * v10 - 64;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void sub_55364()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_55DB4(v2, v5, &qword_DDCC8, &qword_A9878);
  sub_55D4C();
  v9 = sub_A32E4();
  sub_11F80(v9);
  v11 = *(v10 + 80);
  sub_55D58();
  if (v1)
  {
    v13 = sub_55CB0(v12);
    sub_55AC8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_55440()
{
  sub_55D24();
  if (v4)
  {
    sub_55D14();
    if (v6 != v7)
    {
      sub_55D74();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_55CF4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_55DB4(v2, v5, &qword_DDCB0, &qword_A9870);
  sub_55D4C();
  v9 = sub_A3784();
  sub_11F80(v9);
  v11 = *(v10 + 80);
  sub_55D58();
  if (v1)
  {
    v13 = sub_55CB0(v12);
    sub_55AC8(v13, v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void sub_5551C()
{
  sub_55D40();
  if (v5)
  {
    sub_55CA0();
    if (v7 != v8)
    {
      sub_55D34();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_55D04(v6);
  if (v3)
  {
    sub_4BF0(&qword_DDCB8, &unk_A9930);
    v9 = sub_55D94();
    j__malloc_size(v9);
    sub_55D64();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_555FC()
{
  sub_55D40();
  if (v3)
  {
    sub_55CA0();
    if (v5 != v6)
    {
      sub_55D34();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_55C90();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_557A0(*(v0 + 16), v4);
  v7 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  sub_11F80(v7);
  v9 = *(v8 + 80);
  sub_55D58();
  if (v1)
  {
    v11 = sub_55CB0(v10);
    sub_55B88(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_55CC0();
  }
}

void *sub_556BC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_4BF0(&qword_DBB88, &unk_A6EB0);
  v4 = sub_55DCC();
  j__malloc_size(v4);
  sub_55CE0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_55728(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v4 = sub_55DCC();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_557A0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_4BF0(&qword_DDCA8, &qword_A9868);
  v4 = *(sub_4BF0(&qword_DDCA0, &qword_A9AF0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_558D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_4BF0(a3, a4);
  v8 = sub_55D4C();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_559F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_55C80(a3, result);
  }

  return result;
}

char *sub_55A18(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_55C80(a3, result);
  }

  return result;
}

char *sub_55A50(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_55A78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_55C80(a3, result);
  }

  return result;
}

uint64_t sub_55AC8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = sub_7A14(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_55D80();

    return _swift_arrayInitWithTakeFrontToBack(v12);
  }

  else if (a3 != a1)
  {
    v11 = sub_55D80();

    return _swift_arrayInitWithTakeBackToFront(v11);
  }

  return result;
}

uint64_t sub_55B88(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_4BF0(&qword_DDCA0, &qword_A9AF0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_4BF0(&qword_DDCA0, &qword_A9AF0);

    return _swift_arrayInitWithTakeFrontToBack(a3);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3);
  }

  return result;
}

uint64_t sub_55CC0()
{

  return swift_arrayInitWithCopy();
}

void sub_55D04(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_55D94()
{

  return swift_allocObject();
}

void *sub_55DB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_558D0(v5, a2, a3, a4, v4);
}

uint64_t sub_55DCC()
{

  return swift_allocObject();
}

uint64_t sub_55DE4(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = *(*(type metadata accessor for CurrentWeatherForecast() - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v6 = sub_A2F34();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v8 = *(v7 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_55F0C, 0, 0);
}

uint64_t sub_55F0C()
{
  v1 = *(v0 + 144);
  v2 = sub_A45C4();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_A4AB4();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  *(v0 + 88) = v38;
  *(v0 + 72) = v37;
  if (!*(v0 + 96))
  {
    sub_1085C(v0 + 72, &unk_DB870, &qword_A5CB0);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v5 = 0;
    v4 = 0;
    goto LABEL_9;
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
LABEL_9:
  v6 = *(v0 + 152);
  sub_A4B54(25);

  *(v0 + 104) = v5;
  *(v0 + 112) = v4;

  sub_4BF0(&qword_DDC90, &qword_A9858);
  v40._countAndFlagsBits = sub_A4644();
  sub_A46D4(v40);

  sub_810AC(0xD000000000000017, 0x80000000000B1590, 0xD000000000000036, 0x80000000000B15B0, 0xD00000000000001FLL, 0x80000000000B15F0);

  if (!v4 || (v7 = sub_A4654(), v9 = v8, , sub_567E8(v7, v9) == 3))
  {
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    sub_A2F24();
    sub_A2F04();
    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 136);
  v14 = type metadata accessor for WeatherPreprocessingResult(0);
  v15 = v13 + *(v14 + 24);
  v16 = *(v15 + 24);
  if (v16)
  {
    v17 = *(v15 + 48);
    v18 = *(v15 + 8);
    v19 = *(v15 + 32);
    *(v0 + 16) = *v15 & 1;
    *(v0 + 24) = v18;
    *(v0 + 40) = v16;
    *(v0 + 48) = v19;
    *(v0 + 64) = v17;
    type metadata accessor for WeatherAirQuality();

    sub_8D0FC();
    v21 = v20;
    v13 = *(v0 + 136);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 168);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v23 = swift_allocObject();
  *(v0 + 200) = v23;
  *(v23 + 16) = xmmword_A6E60;
  strcpy((v23 + 32), "weatherCurrent");
  *(v23 + 47) = -18;
  v24 = type metadata accessor for WeatherCurrent();
  sub_56784(v13, v22);
  sub_8D1AC();
  *(v23 + 48) = v25;
  *(v23 + 72) = v24;
  *(v23 + 80) = 0x4572656874616577;
  *(v23 + 88) = 0xEF64657463657078;
  v26 = type metadata accessor for WeatherExpected();
  v27 = *(v13 + *(v14 + 20));

  sub_8D488();
  *(v23 + 96) = v28;
  *(v23 + 120) = v26;
  *(v23 + 128) = 0xD000000000000011;
  *(v23 + 136) = 0x80000000000B1610;
  v29 = 0;
  if (v21)
  {
    v29 = type metadata accessor for WeatherAirQuality();
  }

  else
  {
    *(v23 + 152) = 0;
    *(v23 + 160) = 0;
  }

  *(v0 + 208) = v21;
  v30 = *(v0 + 152);
  v31 = *(v0 + 160);
  *(v23 + 144) = v21;
  *(v23 + 168) = v29;
  v32 = *(v30 + 16);
  v33 = sub_A3744();
  sub_A924(v31, 1, 1, v33);

  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  *v34 = v0;
  v34[1] = sub_5639C;
  v35 = *(v0 + 160);

  return sub_6E46C(v23, v35, v32);
}

uint64_t sub_5639C(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 224) = a1;

  sub_1085C(v4, &qword_DB5A8, &unk_A67C0);

  return _swift_task_switch(sub_564E8, 0, 0);
}

uint64_t sub_564E8()
{
  v1 = v0[26];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];

  v5 = v0[1];
  v6 = v0[28];

  return v5(v6);
}

uint64_t sub_56574(uint64_t *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin24WeatherTemplatingService_logger;
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0BB8);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_5663C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin24WeatherTemplatingService_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_56698()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin24WeatherTemplatingService_logger;
  v3 = sub_A43D4();
  sub_5908(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for WeatherTemplatingService()
{
  result = qword_DDD10;
  if (!qword_DDD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_56784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherForecast();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_567E8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF018;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_56834(char a1)
{
  if (!a1)
  {
    return 0x737569736C6563;
  }

  if (a1 == 1)
  {
    return 0x65686E6572686166;
  }

  return 0x6E69766C656BLL;
}

uint64_t sub_5688C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return sub_58F8();
}

uint64_t sub_568A0()
{
  if (qword_DAA50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  sub_7A124(1, qword_E0D58, unk_E0D60, byte_E0D68, qword_E0D70);
  v2 = *(v1 + 16);
  *(v0 + 40) = &type metadata for PodcastsDialogs;
  *(v0 + 48) = &off_D3350;
  *(v0 + 16) = 0;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_569B0;
  v4 = *(v0 + 56);

  return sub_6B4A0(v4, v0 + 16, _swiftEmptyArrayStorage);
}

uint64_t sub_569B0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v5 = *v0;

  sub_761C((v1 + 16));
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_56AC0()
{
  v1 = v0[2];
  sub_4BF0(&qword_DDCB8, &unk_A9930);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_A6E60;
  *(v2 + 56) = &type metadata for PodcastsDialogs;
  *(v2 + 64) = &off_D3350;
  *(v2 + 32) = 3;
  *(v2 + 72) = _swiftEmptyArrayStorage;
  *(v2 + 104) = &type metadata for CommonDialogs;
  *(v2 + 112) = &off_D30C8;
  *(v2 + 80) = 7;
  *(v2 + 120) = _swiftEmptyArrayStorage;
  *(v2 + 152) = &type metadata for CommonDialogs;
  *(v2 + 160) = &off_D30C8;
  *(v2 + 128) = 8;
  *(v2 + 168) = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_56BEC;

  return sub_6BD4C();
}

uint64_t sub_56BEC(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_56D28(Swift::UInt32 a1, uint64_t a2)
{
  if ((a2 - 1) < 2 || a2 == 19)
  {
    v4 = &off_CF868;
LABEL_9:
    v5 = sub_61288(v4);
    v6 = sub_9D698(a1, v5);

    return v6 & 1;
  }

  if (a2 == 3)
  {
    v4 = &off_CF890;
    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_56DA0(uint64_t a1)
{
  v2 = sub_A3974();
  v3 = sub_591C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A3914();
  v10 = sub_A3A44();
  (*(v5 + 8))(v9, v2);
  if (!v10)
  {
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v14 = sub_A43D4();
    sub_48A4(v14, qword_E0BA0);
    sub_58530();
    sub_81094(0xD000000000000035, v15 | 0x8000000000000000, 0xD000000000000035, v16 | 0x8000000000000000, v17, v18);
    v19 = sub_A3924();
    sub_5908(v19);
    (*(v20 + 8))(a1);
    return 0;
  }

  type metadata accessor for DailyBriefingNLv4Intent();
  swift_allocObject();
  v11 = sub_57024(v10);
  v12 = sub_A3924();
  sub_5908(v12);
  (*(v13 + 8))(a1);
  if (!v11)
  {
    return 0;
  }

  return v11;
}

uint64_t sub_56F80()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  if (sub_58540())
  {
    return 0;
  }

  objc_opt_self();
  if (sub_58540())
  {
    return 0;
  }

  objc_opt_self();
  if (sub_58540())
  {
    return 1;
  }

  objc_opt_self();
  if (sub_58540())
  {
    return 1;
  }

  objc_opt_self();
  if (sub_58540())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_57024(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 517;
  *(v1 + 32) = 6;
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  v3 = sub_A3C04();
  v4 = sub_1BF68(v3);
  if (!v4)
  {
LABEL_15:
    if (qword_DA9D0 != -1)
    {
      sub_58D8();
    }

    v11 = sub_A43D4();
    v12 = sub_48A4(v11, qword_E0BA0);
    sub_2BB18();
    sub_A4B54(17);
    v41._countAndFlagsBits = 0x6C61694472657355;
    v41._object = 0xEF203A746341676FLL;
    sub_A46D4(v41);
    sub_4BF0(&unk_DDF90, &qword_A99B8);
    sub_A4C44();
    sub_58520();
    sub_58530();
    sub_810C4(v13, v14, v15, v16, v17, v18);

    if (!v4)
    {

LABEL_38:
      swift_unknownObjectRelease();
      return v2;
    }

    sub_58558();
    if (v12)
    {
      sub_A4B74();
    }

    else
    {
      v19 = *(v3 + 32);
    }

    sub_A3FE4();
    v20 = sub_1D0C8();
    if (v20 == 6)
    {
      v20 = 0;
    }

    *(v2 + 32) = v20;
    if (sub_1C878(v20) != 0x657461647075 || v21 != 0xE600000000000000)
    {
      v23 = sub_A4E44();

      if (v23)
      {
LABEL_37:
        sub_58520();
        sub_58530();
        sub_810C4(v28, v29, v30, v31, v32, v33);
        sub_57578();

        goto LABEL_38;
      }

      v24 = *(v2 + 32);
      if (v24 == 6)
      {
LABEL_28:
        swift_unknownObjectRelease();

        return v2;
      }

      if (sub_1C878(v24) != 0x6574656C6564 || v25 != 0xE600000000000000)
      {
        v27 = sub_A4E44();

        if ((v27 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  sub_58558();
  if (v1)
  {
    sub_A4B74();
  }

  else
  {
    v5 = *(v3 + 32);
  }

  v6 = sub_A3FF4();
  v8 = v7;

  v9 = v6 == 0xD000000000000014 && 0x80000000000B1790 == v8;
  if (v9 || (sub_A4E44() & 1) != 0 || (v6 == 0x6E456F4E5F6F7375 ? (v10 = v8 == 0xEC00000079746974) : (v10 = 0), v10 || (sub_A4E44() & 1) != 0))
  {

    goto LABEL_15;
  }

  if (qword_DA9D0 != -1)
  {
    sub_58D8();
  }

  v35 = sub_A43D4();
  sub_48A4(v35, qword_E0BA0);
  sub_2BB18();
  sub_A4B54(47);

  v42._countAndFlagsBits = v6;
  v42._object = v8;
  sub_A46D4(v42);

  sub_58520();
  sub_81094(v36, v37, v38, v39, v40, 0xEB00000000293A6DLL);

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_57578()
{
  sub_A3C24();
  sub_584B0(v15, &v12);
  if (v14)
  {
    sub_A3DF4();
    if (swift_dynamicCast())
    {

      sub_A3DB4();

      if (v12)
      {
        v1 = sub_A3CF4();
        if (v1)
        {
          v2 = v1;
          v12 = _swiftEmptyArrayStorage;
          v3 = sub_1BF68(v1);
          for (i = 0; ; ++i)
          {
            if (v3 == i)
            {

              sub_5000(v15);
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v5 = sub_A4B74();
            }

            else
            {
              if (i >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_27;
              }

              v5 = *(v2 + 8 * i + 32);
            }

            if (__OFADD__(i, 1))
            {
              break;
            }

            v10 = v5;
            sub_57948(&v10, v0, &v9);

            if (v9)
            {
              sub_A4744();
              if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v12 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                sub_A4784();
              }

              sub_A47A4();
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      if (qword_DA9D0 != -1)
      {
        sub_58D8();
      }

      v8 = sub_A43D4();
      sub_48A4(v8, qword_E0BA0);
      sub_81094(0xD00000000000007CLL, 0x80000000000B18C0, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

      return sub_5000(v15);
    }
  }

  else
  {
    sub_5000(&v12);
  }

  if (qword_DA9D0 != -1)
  {
LABEL_28:
    sub_58D8();
  }

  v6 = sub_A43D4();
  sub_48A4(v6, qword_E0BA0);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_A4B54(62);
  v10 = v12;
  v11 = v13;
  v16._countAndFlagsBits = 0xD000000000000014;
  v16._object = 0x80000000000B1810;
  sub_A46D4(v16);
  sub_584B0(v15, &v12);
  sub_4BF0(&unk_DB870, &qword_A5CB0);
  v17._countAndFlagsBits = sub_A4644();
  sub_A46D4(v17);

  v18._countAndFlagsBits = 0xD000000000000028;
  v18._object = 0x80000000000B1830;
  sub_A46D4(v18);
  v12 = v10;
  v13 = v11;

  v19._countAndFlagsBits = 0xD000000000000037;
  v19._object = 0x80000000000B1860;
  sub_A46D4(v19);

  sub_81094(v12, v13, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

  return sub_5000(v15);
}

void sub_57948(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a2;
  v6 = sub_A3B04();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v38 - v12;
  v14 = *a1;
  v15 = sub_A3B84();
  if (!v15)
  {
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v24 = sub_A43D4();
    sub_48A4(v24, qword_E0BA0);
    sub_81094(0xD000000000000068, 0x80000000000B1940, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);
    goto LABEL_44;
  }

  v38[1] = v14;
  v41 = v3;
  v42 = a3;
  v43 = v15;
  v16 = sub_A3BB4();
  v18 = v17;
  v40 = v7[13];
  v40(v13, enum case for ListOperators.addToSet(_:), v6);
  v19 = sub_A3AF4();
  v21 = v20;
  v39 = v7[1];
  v39(v13, v6);
  if (v18)
  {
    if (v19 == v16 && v18 == v21)
    {

LABEL_21:

      v29 = v44;
      *(v44 + 32) = 2;
      a3 = v42;
      goto LABEL_25;
    }

    v23 = sub_A4E44();

    if (v23)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v40(v11, enum case for ListOperators.removeFromSet(_:), v6);
  v25 = sub_A3AF4();
  v27 = v26;
  v39(v11, v6);
  if (v18)
  {
    v28 = v25 == v16 && v18 == v27;
    a3 = v42;
    v29 = v44;
    if (v28)
    {
    }

    else
    {
      v30 = sub_A4E44();

      if ((v30 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    *(v29 + 32) = 3;
  }

  else
  {

    a3 = v42;
    v29 = v44;
  }

LABEL_25:
  sub_A3BC4();
  if (!v45)
  {
    goto LABEL_41;
  }

  v31 = sub_A3BD4();

  if (!v31)
  {
    goto LABEL_41;
  }

  v32 = sub_57F0C();
  if (!v32)
  {

LABEL_41:
    if (qword_DA9D0 != -1)
    {
      swift_once();
    }

    v37 = sub_A43D4();
    sub_48A4(v37, qword_E0BA0);
    sub_81094(0xD00000000000003FLL, 0x80000000000B19B0, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

LABEL_44:
    *a3 = 0;
    return;
  }

  *(v29 + 16) = 5;
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = (v32 + 40);
    do
    {
      v35 = *(v34 - 1) == 0x6C7070612E6D6F63 && *v34 == 0xEE007377656E2E65;
      if (v35 || (sub_A4E44() & 1) != 0)
      {
        *(v29 + 16) = 1;
      }

      v34 += 2;
      --v33;
    }

    while (v33);
  }

  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v36 = sub_A43D4();
  sub_48A4(v36, qword_E0BA0);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_A4B54(51);
  v48._countAndFlagsBits = 0xD000000000000031;
  v48._object = 0x80000000000B19F0;
  sub_A46D4(v48);
  v47 = *(v29 + 16);
  sub_4BF0(&qword_DDFA0, qword_A8788);
  v49._countAndFlagsBits = sub_A4644();
  sub_A46D4(v49);

  sub_810C4(v45, v46, 0xD000000000000035, 0x80000000000B1710, 0xD00000000000001DLL, 0x80000000000B18A0);

  sub_A3B94();
}

unint64_t sub_57F0C()
{
  v0 = sub_A3B34();
  v1 = sub_591C(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v1);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v42 = &v39 - v9;
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = sub_A3BE4();
  if (!v12)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v13 = v12;
  v14 = 0;
  v44 = *(v12 + 16);
  v45 = v3 + 16;
  v40 = (v3 + 32);
  v15 = (v3 + 8);
  v41 = _swiftEmptyArrayStorage;
  while (v44 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = *(v3 + 72);
    (*(v3 + 16))(v11, v13 + v16 + v17 * v14, v0);
    v18 = sub_A3B24();
    if (v19)
    {
      if (v18 == 0x656D614E707061 && v19 == 0xE700000000000000)
      {
      }

      else
      {
        v21 = sub_A4E44();

        if ((v21 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v39 = *v40;
      v39(v42, v11, v0);
      v22 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_7AE30(0, v22[2] + 1, 1);
        v22 = v47;
      }

      v25 = v22[2];
      v24 = v22[3];
      v26 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        v41 = (v25 + 1);
        sub_7AE30(v24 > 1, v25 + 1, 1);
        v26 = v41;
        v22 = v47;
      }

      ++v14;
      v22[2] = v26;
      v41 = v22;
      v39(v22 + v16 + v25 * v17, v42, v0);
    }

    else
    {
LABEL_11:
      (*v15)(v11, v0);
      ++v14;
    }
  }

  v27 = v41[2];
  if (v27)
  {
    v47 = _swiftEmptyArrayStorage;
    v28 = v41;
    sub_7AC94(0, v27, 0);
    v14 = v47;
    v29 = v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v44 = *(v3 + 72);
    v42 = *(v3 + 16);
    do
    {
      v30 = v43;
      (v42)(v43, v29, v0);
      v31 = sub_A3B14();
      v33 = v32;
      (*v15)(v30, v0);
      v47 = v14;
      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_7AC94((v34 > 1), v35 + 1, 1);
        v14 = v47;
      }

      *(v14 + 16) = v35 + 1;
      v36 = (v14 + 16 * v35);
      v36[4] = v31;
      v36[5] = v33;
      v29 = v44 + v29;
      --v27;
    }

    while (v27);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

LABEL_26:
  if (qword_DA9D0 != -1)
  {
LABEL_32:
    sub_58D8();
  }

  v37 = sub_A43D4();
  sub_48A4(v37, qword_E0BA0);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_A4B54(42);

  v47 = 0xD000000000000028;
  v48 = 0x80000000000B1A30;
  v46 = v14;

  sub_4BF0(&qword_DDFA8, qword_A99C0);
  v49._countAndFlagsBits = sub_A4644();
  sub_A46D4(v49);

  sub_810AC(v47, v48, 0xD000000000000035, 0x80000000000B1710, 0x746163696C707061, 0xEE007364496E6F69);

  if (v14 && !*(v14 + 16))
  {

    return 0;
  }

  return v14;
}

uint64_t sub_583F4()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_584B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&unk_DB870, &qword_A5CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_58540()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_58558()
{

  return sub_1BF70(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_5858C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_4BF0(&qword_DB768, &unk_A9650);
  v7 = sub_11F80(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_4BF0(&qword_DB760, qword_A6AE8);
    v12 = sub_11F80(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 233)
      {
        v15 = *(a1 + a3[7]);
        if (v15 >= 0x17)
        {
          return v15 - 22;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_A2EA4();
      v14 = a3[8];
    }

    v10 = a1 + v14;
  }

  return sub_CF2C(v10, a2, v9);
}

uint64_t sub_586BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_4BF0(&qword_DB768, &unk_A9650);
  v9 = sub_11F80(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_4BF0(&qword_DB760, qword_A6AE8);
    result = sub_11F80(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 233)
      {
        *(a1 + a4[7]) = a2 + 22;
        return result;
      }

      v11 = sub_A2EA4();
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return sub_A924(v12, a2, a2, v11);
}

uint64_t type metadata accessor for CurrentWeatherForecast()
{
  result = qword_DE008;
  if (!qword_DE008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_58824()
{
  sub_588D0();
  if (v0 <= 0x3F)
  {
    sub_5896C();
    if (v1 <= 0x3F)
    {
      sub_A2EA4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_588D0()
{
  if (!qword_DE018)
  {
    sub_58928();
    v0 = sub_A2B74();
    if (!v1)
    {
      atomic_store(v0, &qword_DE018);
    }
  }
}

unint64_t sub_58928()
{
  result = qword_DE020;
  if (!qword_DE020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE020);
  }

  return result;
}

void sub_5896C()
{
  if (!qword_DE028)
  {
    sub_1B4B0(&qword_DB768, &unk_A9650);
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DE028);
    }
  }
}

uint64_t sub_589D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for CalendarEvent(0);
  v6 = v5;
  if (v4)
  {
    sub_106FC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_A924(a2, v7, 1, v6);
}

uint64_t sub_58A74@<X0>(uint64_t a1@<X8>)
{
  sub_4BF0(&qword_DE088, qword_A9A40);
  sub_1E530(&qword_DE090, &qword_DE088, qword_A9A40);
  sub_A48E4();
  sub_A4904();
  if (v10[4] == v10[0])
  {
    v2 = sub_A3074();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_A4924();
    v7 = v6;
    v8 = sub_A3074();
    (*(*(v8 - 8) + 16))(a1, v7, v8);
    v5(v10, 0);
    v3 = a1;
    v4 = 0;
    v2 = v8;
  }

  return sub_A924(v3, v4, 1, v2);
}

uint64_t sub_58BCC()
{
  v1 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v24[-v3];
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_A4B54(16);

  strcpy(v25, "temperature: ");
  HIWORD(v25[1]) = -4864;
  sub_4BF0(&qword_DB768, &unk_A9650);
  sub_1E530(&qword_DE068, &qword_DB768, &unk_A9650);
  v26._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v26);

  sub_59ACC();
  v6 = v25[0];
  v5 = v25[1];
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_A4B54(20);

  v25[0] = 0xD000000000000011;
  v25[1] = 0x80000000000B1A60;
  v7 = type metadata accessor for CurrentWeatherForecast();
  sub_CEBC(v0 + v7[5], v4);
  sub_59AC0();
  v27._countAndFlagsBits = sub_A4644();
  sub_A46D4(v27);

  sub_59ACC();
  v8 = v25[0];
  v9 = v25[1];
  v25[0] = v6;
  v25[1] = v5;

  v28._countAndFlagsBits = v8;
  v28._object = v9;
  sub_A46D4(v28);

  v11 = v25[0];
  v10 = v25[1];
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_A4B54(19);

  v25[0] = 0xD000000000000010;
  v25[1] = 0x80000000000B1A80;
  sub_CEBC(v0 + v7[6], v4);
  sub_59AC0();
  v29._countAndFlagsBits = sub_A4644();
  sub_A46D4(v29);

  sub_59ACC();
  v12 = v25[0];
  v13 = v25[1];
  v25[0] = v11;
  v25[1] = v10;

  v30._countAndFlagsBits = v12;
  v30._object = v13;
  sub_A46D4(v30);

  v15 = v25[0];
  v14 = v25[1];
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  v31._countAndFlagsBits = 0x6F697469646E6F63;
  v31._object = 0xEB00000000203A6ELL;
  sub_A46D4(v31);
  v24[15] = *(v0 + v7[7]);
  sub_A4C44();
  sub_59ACC();
  v16 = v25[0];
  v17 = v25[1];
  v25[0] = v15;
  v25[1] = v14;

  v32._countAndFlagsBits = v16;
  v32._object = v17;
  sub_A46D4(v32);

  v19 = v25[0];
  v18 = v25[1];
  strcpy(v25, "startTime: ");
  HIDWORD(v25[1]) = -352321536;
  v20 = v7[8];
  sub_A2EA4();
  sub_29CFC();
  v33._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v33);

  v21 = v25[0];
  v22 = v25[1];
  v25[0] = v19;
  v25[1] = v18;

  v34._countAndFlagsBits = v21;
  v34._object = v22;
  sub_A46D4(v34);

  return v25[0];
}

uint64_t sub_58F50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v86 = a1;
  v92 = a2;
  v2 = sub_A3174();
  v3 = sub_591C(v2);
  v90 = v4;
  v91 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_AA54();
  v89 = v8 - v7;
  v9 = sub_4BF0(&qword_DE080, &qword_A9A38);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_36194();
  v79 = v11 - v12;
  __chkstk_darwin(v13);
  v78 = &v78 - v14;
  v15 = sub_A3074();
  v16 = sub_591C(v15);
  v80 = v17;
  v81 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_AA54();
  v22 = v21 - v20;
  v23 = sub_4BF0(&qword_DB760, qword_A6AE8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  sub_36194();
  v85 = v25 - v26;
  __chkstk_darwin(v27);
  v93 = &v78 - v28;
  v82 = sub_4BF0(&qword_DB768, &unk_A9650);
  v29 = sub_591C(v82);
  v88 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  v34 = &v78 - v33;
  v35 = sub_A2EA4();
  v36 = sub_591C(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  sub_36194();
  v43 = v41 - v42;
  __chkstk_darwin(v44);
  v46 = &v78 - v45;
  sub_A30D4();
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v47 = sub_A43D4();
  sub_48A4(v47, qword_E0BB8);
  v94[0] = 0;
  v94[1] = 0xE000000000000000;
  sub_A4B54(16);

  strcpy(v94, "current date: ");
  HIBYTE(v94[1]) = -18;
  sub_29CFC();
  v95._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v95);

  sub_810AC(v94[0], v94[1], 0xD000000000000034, 0x80000000000B1AA0, 0xD00000000000001CLL, 0x80000000000B1AE0);

  v48 = *(v38 + 16);
  v83 = v46;
  v87 = v35;
  v48(v43, v46, v35);
  v49 = sub_67C20(v43);
  sub_A30C4();
  v84 = v38;
  if (v49 == 1)
  {
    sub_4BF0(&qword_DE088, qword_A9A40);
    sub_A3254();
    v50 = v93;
    sub_A3064();
    v51 = v81;
    v52 = *(v80 + 8);
    v52(v22, v81);
    v53 = v82;
    sub_A924(v50, 0, 1, v82);
    v54 = v53;
    sub_4BF0(&qword_DE088, qword_A9A40);
    sub_A3254();
    v55 = v85;
    sub_A3054();
    v52(v22, v51);
    v56 = 0;
  }

  else
  {
    v57 = v78;
    sub_58A74(v78);
    v58 = v81;
    v59 = sub_CF2C(v57, 1, v81);
    v60 = v93;
    if (v59 == 1)
    {
      sub_AD70(v57, &qword_DE080, &qword_A9A38);
      v61 = 1;
    }

    else
    {
      sub_A3064();
      v62 = *(v80 + 8);
      v63 = sub_59AC0();
      v64(v63);
      v61 = 0;
    }

    v65 = v79;
    v66 = v60;
    v54 = v82;
    sub_A924(v66, v61, 1, v82);
    sub_58A74(v65);
    if (sub_CF2C(v65, 1, v58) == 1)
    {
      sub_AD70(v65, &qword_DE080, &qword_A9A38);
      v56 = 1;
      v55 = v85;
    }

    else
    {
      v55 = v85;
      sub_A3054();
      v67 = *(v80 + 8);
      v68 = sub_59AC0();
      v69(v68);
      v56 = 0;
    }

    v50 = v93;
  }

  sub_A924(v55, v56, 1, v54);
  v70 = v54;
  v71 = v89;
  sub_A30E4();
  v72 = v88;
  v73 = v92;
  (*(v88 + 16))(v92, v34, v70);
  v74 = v55;
  v75 = type metadata accessor for CurrentWeatherForecast();
  sub_CEBC(v50, v73 + v75[5]);
  sub_CEBC(v74, v73 + v75[6]);
  v76 = sub_3951C();
  (*(v90 + 8))(v71, v91);
  sub_AD70(v74, &qword_DB760, qword_A6AE8);
  sub_AD70(v50, &qword_DB760, qword_A6AE8);
  (*(v72 + 8))(v34, v70);
  *(v73 + v75[7]) = v76;
  return (*(v84 + 32))(v73 + v75[8], v83, v87);
}

uint64_t sub_59680(uint64_t a1)
{
  v41 = sub_A3174();
  v2 = sub_591C(v41);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_AA54();
  v40 = v8 - v7;
  v39 = sub_A30B4();
  v9 = sub_591C(v39);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_AA54();
  v36 = v15 - v14;
  v16 = type metadata accessor for CurrentWeatherForecast();
  v37 = sub_591C(v16);
  v38 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v37);
  sub_AA54();
  v22 = v21 - v20;
  sub_4BF0(&qword_DE070, &qword_A9A30);
  sub_1E530(&qword_DE078, &qword_DE070, &qword_A9A30);
  v23 = sub_A48F4();
  v24 = _swiftEmptyArrayStorage;
  if (!v23)
  {
    return v24;
  }

  v25 = v23;
  v43 = _swiftEmptyArrayStorage;
  sub_7AE88(0, v23 & ~(v23 >> 63), 0);
  v24 = _swiftEmptyArrayStorage;
  result = sub_A48E4();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v35 = (v11 + 16);
    v34 = (v11 + 8);
    do
    {
      v27 = sub_A4924();
      (*v35)(v36);
      v27(v42, 0);
      sub_A3084();
      v28 = a1;
      v29 = v37[5];
      v30 = sub_4BF0(&qword_DB768, &unk_A9650);
      sub_A924(v22 + v29, 1, 1, v30);
      sub_A924(v22 + v37[6], 1, 1, v30);
      sub_A30A4();
      LOBYTE(v29) = sub_3951C();
      (*(v4 + 8))(v40, v41);
      v31 = v22 + v37[8];
      sub_A3094();
      (*v34)(v36, v39);
      *(v22 + v37[7]) = v29;
      v43 = v24;
      v33 = v24[2];
      v32 = v24[3];
      if (v33 >= v32 >> 1)
      {
        sub_7AE88(v32 > 1, v33 + 1, 1);
        v24 = v43;
      }

      v24[2] = v33 + 1;
      sub_59A5C(v22, v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v33);
      sub_A4914();
      --v25;
      a1 = v28;
    }

    while (v25);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_59A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherForecast();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_59ACC()
{
  v1._countAndFlagsBits = 10;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

uint64_t sub_59AE4()
{
  v0 = type metadata accessor for DBDateTimeRangeStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_A4074();
  qword_E08E0 = v3;
  return result;
}

uint64_t sub_59B30()
{
  v0 = sub_4BF0(&qword_DE158, qword_A9A88);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_A4054();
  sub_A924(v3, 1, 1, v4);
  sub_A4094();
  sub_A40A4();
  sub_59DE0();
  sub_A4544();
  v5 = sub_A4064();

  sub_59E38(v3);
  return v5 & 1;
}

uint64_t sub_59C60()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin20DBDateTimeRangeStore_store;
  v2 = sub_A4084();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DBDateTimeRangeStore()
{
  result = qword_DE0C8;
  if (!qword_DE0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_59D50()
{
  result = sub_A4084();
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

unint64_t sub_59DE0()
{
  result = qword_DE160;
  if (!qword_DE160)
  {
    sub_A4094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE160);
  }

  return result;
}

uint64_t sub_59E38(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DE158, qword_A9A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_59EB4()
{
  sub_5950();
  v1 = v0[2];
  sub_4BF0(&qword_DDCB8, &unk_A9930);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_A6E60;
  *(v2 + 56) = &type metadata for WarningsDialogs;
  *(v2 + 64) = &off_D3020;
  *(v2 + 32) = 2;
  *(v2 + 72) = _swiftEmptyArrayStorage;
  *(v2 + 104) = &type metadata for PodcastsDialogs;
  *(v2 + 112) = &off_D3350;
  *(v2 + 80) = 1;
  *(v2 + 120) = _swiftEmptyArrayStorage;
  *(v2 + 152) = &type metadata for PodcastsDialogs;
  *(v2 + 160) = &off_D3350;
  *(v2 + 128) = 2;
  *(v2 + 168) = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_59FD0;

  return sub_6BD4C();
}

uint64_t sub_59FD0()
{
  sub_5950();
  v2 = v1;
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *v0;
  sub_5930();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_5A0DC()
{
  sub_5950();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = *(*(sub_4BF0(&qword_DDCA0, &qword_A9AF0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v5 = sub_A3784();
  v1[27] = v5;
  v6 = *(v5 - 8);
  v1[28] = v6;
  v7 = *(v6 + 64) + 15;
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_5A1D4, 0, 0);
}

uint64_t sub_5A1D4()
{
  *(v0 + 64) = 0u;
  v1 = *(v0 + 192);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  v2 = v1[4];
  sub_7584(v1, v1[3]);
  if (sub_A3464())
  {
    sub_5AB0C(v0 + 64);
    *(v0 + 64) = 1;
    *(v0 + 88) = &type metadata for WarningsDialogs;
    *(v0 + 96) = &off_D3020;
  }

  sub_5AA9C(v0 + 64, v0 + 144);
  if (*(v0 + 168))
  {
    sub_A814((v0 + 144), v0 + 104);
  }

  else
  {
    *(v0 + 128) = &type metadata for WarningsDialogs;
    *(v0 + 136) = &off_D3020;
    *(v0 + 104) = 0;
  }

  sub_A814((v0 + 104), v0 + 16);
  *(v0 + 56) = _swiftEmptyArrayStorage;
  sub_5551C();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    sub_5AE60();
    v4 = v17;
  }

  v6 = *(v0 + 192);
  *(v4 + 16) = v5 + 1;
  v7 = (v4 + 48 * v5);
  v8 = *(v0 + 16);
  v9 = *(v0 + 48);
  v7[3] = *(v0 + 32);
  v7[4] = v9;
  v7[2] = v8;
  v11 = v1[3];
  v10 = v1[4];
  sub_7584(v6, v11);
  if (sub_A34C4())
  {
    v12 = *(v4 + 16);
    if (v12 >= *(v4 + 24) >> 1)
    {
      sub_5AE60();
      v4 = v18;
    }

    *(v4 + 16) = v12 + 1;
    v13 = v4 + 48 * v12;
    *(v13 + 32) = 6;
    *(v13 + 48) = *&v19[15];
    *(v13 + 56) = &type metadata for CommonDialogs;
    *(v13 + 33) = *v19;
    *(v13 + 64) = &off_D30C8;
    *(v13 + 72) = _swiftEmptyArrayStorage;
  }

  *(v0 + 240) = v4;
  v14 = *(*(v0 + 200) + 16);
  v15 = swift_task_alloc();
  *(v0 + 248) = v15;
  *v15 = v0;
  v15[1] = sub_5A3F8;

  return sub_6BD4C();
}

uint64_t sub_5A3F8()
{
  sub_5950();
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *v0;
  sub_5930();
  *v4 = v3;
  *(v6 + 256) = v5;

  return _swift_task_switch(sub_5A50C, 0, 0);
}

void sub_5A50C()
{
  v1 = v0[32];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[28];
    v4 = *(v3 + 16);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v4(v0[29], v5, v0[27]);
    v6 = v0[32];
    if (v2 == 1)
    {
      sub_5AB0C((v0 + 8));

      v7 = 1;
    }

    else
    {
      v4(v0[26], v5 + *(v0[28] + 72), v0[27]);

      sub_5AB0C((v0 + 8));
      v7 = 0;
    }

    v9 = v0[28];
    v8 = v0[29];
    v11 = v0[26];
    v10 = v0[27];
    v12 = v0[23];
    sub_A924(v11, v7, 1, v10);
    (*(v9 + 32))(v12, v8, v10);
    v13 = type metadata accessor for LocationWarningTemplatingResult(0);
    sub_5AB94(v11, v12 + *(v13 + 20));

    v14 = v0[1];

    v14();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5A664(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return sub_58F8();
}

uint64_t sub_5A67C()
{
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 64) + 16);
  *(v0 + 40) = &type metadata for WarningsDialogs;
  *(v0 + 48) = &off_D3020;
  *(v0 + 16) = 3;
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  *(v3 + 16) = xmmword_A6E70;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x80000000000B1B80;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_5A7AC;
  v5 = *(v0 + 56);

  return sub_6B4A0(v5, v0 + 16, v3);
}

uint64_t sub_5A7AC()
{
  sub_5950();
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v6 = *v0;
  sub_5930();
  *v3 = v6;

  sub_761C((v6 + 16));
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_5A8B8(uint64_t *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25WarningsTemplatingService_logger;
  if (qword_DAA08 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0C48);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_5A980()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25WarningsTemplatingService_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_5A9DC()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25WarningsTemplatingService_logger;
  v3 = sub_A43D4();
  sub_5908(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_5AA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DE238, &qword_A9AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5AB0C(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DE238, &qword_A9AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5AB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5AC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A3784();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_CF2C(v8, a2, v7);
}

uint64_t sub_5ACD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_A3784();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_A924(v10, a2, a2, v9);
}

void sub_5AD84()
{
  sub_A3784();
  if (v0 <= 0x3F)
  {
    sub_5AE08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_5AE08()
{
  if (!qword_DE2A8)
  {
    sub_A3784();
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DE2A8);
    }
  }
}

void sub_5AE60()
{

  sub_5551C();
}

uint64_t sub_5AE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A2EA4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_CF2C(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_4BF0(&qword_DD220, qword_A9B20);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_5AF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_A2EA4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_4BF0(&qword_DD220, qword_A9B20);
    v10 = a1 + *(a4 + 24);
  }

  return sub_A924(v10, a2, a2, v9);
}

uint64_t type metadata accessor for DBCalendarState()
{
  result = qword_DE330;
  if (!qword_DE330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5B0AC()
{
  v0 = sub_A2EA4();
  if (v1 <= 0x3F)
  {
    sub_5B204(319, &qword_DE340, &type metadata accessor for URL, &type metadata accessor for Array);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_5B204(319, &qword_DE348, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_5B268();
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_5B204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_5B268()
{
  if (!qword_DE350)
  {
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DE350);
    }
  }
}

uint64_t sub_5B2B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7261646E656C6163 && a2 == 0xEB00000000734449;
    if (v6 || (sub_A4E44() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_A4E44() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_A4E44() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756F436C61746F74 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_A4E44() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000000000B1BA0 == a2;
            if (v10 || (sub_A4E44() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000000000B1BC0 == a2;
              if (v11 || (sub_A4E44() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000000000B1BE0 == a2;
                if (v12 || (sub_A4E44() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000012 && 0x80000000000B1C00 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_A4E44();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_5B59C(char a1)
{
  result = 0x697461636F766E69;
  switch(a1)
  {
    case 1:
      result = 0x7261646E656C6163;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x746E756F63;
      break;
    case 4:
      result = 0x756F436C61746F74;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5B6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_A2EA4();
  v5 = sub_591C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_AA54();
  v12 = v11 - v10;
  v13 = sub_4BF0(&qword_DD220, qword_A9B20);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_36194();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v21 = sub_4BF0(&qword_DD520, &qword_A9BD0);
  v22 = sub_7A14(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_36194();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v30 = &v68 - v29;
  if ((sub_A2E64() & 1) == 0)
  {
    return 0;
  }

  v71 = v27;
  v31 = type metadata accessor for DBCalendarState();
  if ((sub_1B950(*(a1 + *(v31 + 20)), *(a2 + *(v31 + 20))) & 1) == 0)
  {
    return 0;
  }

  v68 = v17;
  v69 = v31;
  v70 = v7;
  v32 = *(v31 + 24);
  v33 = *(v21 + 48);
  sub_4D1A4(a1 + v32, v30);
  sub_4D1A4(a2 + v32, &v30[v33]);
  sub_11FCC(v30);
  if (v34)
  {
    sub_11FCC(&v30[v33]);
    if (v34)
    {
      sub_11E34(v30, &qword_DD220, qword_A9B20);
      goto LABEL_14;
    }

LABEL_11:
    v38 = v30;
LABEL_12:
    sub_11E34(v38, &qword_DD520, &qword_A9BD0);
    return 0;
  }

  sub_4D1A4(v30, v20);
  sub_11FCC(&v30[v33]);
  if (v34)
  {
    v35 = *(v70 + 8);
    v36 = sub_5CB30();
    v37(v36);
    goto LABEL_11;
  }

  v39 = v70;
  (*(v70 + 32))(v12, &v30[v33], v4);
  sub_5CAB8();
  sub_5C7DC(v40, v41);
  v42 = sub_5CB70();
  v43 = *(v39 + 8);
  v43(v12, v4);
  v44 = sub_5CB30();
  (v43)(v44);
  sub_11E34(v30, &qword_DD220, qword_A9B20);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v45 = v69;
  if (*(a1 + v69[7]) != *(a2 + v69[7]))
  {
    return 0;
  }

  sub_5CB5C(v69[8]);
  if (v47)
  {
    if (!v46)
    {
      return 0;
    }
  }

  else
  {
    sub_5CB3C();
    if (v48)
    {
      return 0;
    }
  }

  if (*(a1 + v45[9]) != *(a2 + v45[9]) || (sub_1B950(*(a1 + v45[10]), *(a2 + v45[10])) & 1) == 0)
  {
    return 0;
  }

  v49 = v45[11];
  v50 = *(v21 + 48);
  v51 = v71;
  sub_4D1A4(a1 + v49, v71);
  sub_4D1A4(a2 + v49, v51 + v50);
  sub_11FCC(v51);
  if (v34)
  {
    sub_11FCC(v51 + v50);
    if (v34)
    {
      sub_11E34(v51, &qword_DD220, qword_A9B20);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_4D1A4(v51, v68);
  sub_11FCC(v51 + v50);
  v53 = v51;
  if (v52)
  {
    v54 = *(v70 + 8);
    v55 = sub_5CB30();
    v56(v55);
LABEL_29:
    v38 = v51;
    goto LABEL_12;
  }

  v57 = v70;
  (*(v70 + 32))(v12, v51 + v50, v4);
  sub_5CAB8();
  sub_5C7DC(v58, v59);
  v60 = sub_5CB70();
  v61 = *(v57 + 8);
  v61(v12, v4);
  v62 = sub_5CB30();
  (v61)(v62);
  v63 = v53;
  v45 = v69;
  sub_11E34(v63, &qword_DD220, qword_A9B20);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  sub_5CB5C(v45[12]);
  if (v65)
  {
    if ((v64 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_5CB3C();
    if (v67)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_5BBA8(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DE3C8, &qword_A9BE8);
  v6 = sub_591C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = v31 - v11;
  v13 = a1[4];
  sub_7584(a1, a1[3]);
  sub_5C620();
  sub_A4F64();
  LOBYTE(v35) = 0;
  sub_A2EA4();
  sub_5CAB8();
  sub_5C7DC(v14, v15);
  sub_5CAF4();
  sub_A4DF4();
  if (!v2)
  {
    v16 = type metadata accessor for DBCalendarState();
    v32 = v3;
    v33 = v16;
    v35 = *(v3 + *(v16 + 20));
    v34 = 1;
    v17 = sub_4BF0(&qword_DE3B0, &qword_A9BE0);
    v18 = sub_5C740(&qword_DE3D0, &qword_DE3D8);
    sub_5CB0C();
    sub_A4DF4();
    v31[1] = v18;
    v31[2] = v17;
    v19 = v32;
    v20 = v33[6];
    LOBYTE(v35) = 2;
    sub_5CAF4();
    sub_A4DA4();
    v21 = *(v19 + v33[7]);
    sub_5CB50(3);
    sub_5CB0C();
    sub_A4DE4();
    v22 = (v19 + v33[8]);
    v23 = *v22;
    v24 = *(v22 + 8);
    LOBYTE(v35) = 4;
    sub_5CB0C();
    sub_A4D94();
    v25 = *(v19 + v33[9]);
    sub_5CB50(5);
    sub_5CB0C();
    sub_A4DE4();
    v35 = *(v19 + v33[10]);
    v34 = 6;
    sub_5CB0C();
    sub_A4DF4();
    v26 = v33[11];
    LOBYTE(v35) = 7;
    sub_5CAF4();
    sub_A4DA4();
    v27 = (v19 + v33[12]);
    v28 = *v27;
    v29 = *(v27 + 8);
    LOBYTE(v35) = 8;
    sub_5CB0C();
    sub_A4D94();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_5BEEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_4BF0(&qword_DD220, qword_A9B20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_36194();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_A2EA4();
  v12 = sub_591C(v11);
  v55 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_AA54();
  v18 = v17 - v16;
  v19 = sub_4BF0(&qword_DE3A0, &qword_A9BD8);
  v20 = sub_591C(v19);
  v52 = v21;
  v53 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  v58 = type metadata accessor for DBCalendarState();
  v24 = sub_7A14(v58);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_AA54();
  v57 = v28 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v59 = a1;
  sub_7584(a1, v29);
  sub_5C620();
  v31 = v56;
  sub_A4F54();
  v54 = v11;
  if (v31)
  {
    return sub_761C(v59);
  }

  v56 = v10;
  v50 = v7;
  LOBYTE(v61) = 0;
  sub_5CAB8();
  v34 = sub_5C7DC(v32, v33);
  sub_A4D74();
  v49 = v34;
  v35 = v57;
  (*(v55 + 32))(v57, v18, v11);
  sub_4BF0(&qword_DE3B0, &qword_A9BE0);
  v60 = 1;
  sub_5C740(&qword_DE3B8, &qword_DE3C0);
  sub_5CB18();
  sub_A4D74();
  v36 = v58;
  *(v35 + v58[5]) = v61;
  sub_5CB50(2);
  v37 = v56;
  sub_A4D24();
  sub_5C674(v37, v35 + v36[6]);
  sub_5CAE0(3);
  *(v35 + v36[7]) = sub_A4D64();
  sub_5CAE0(4);
  v38 = sub_A4D14();
  v39 = v35 + v36[8];
  *v39 = v38;
  *(v39 + 8) = v40 & 1;
  sub_5CAE0(5);
  *(v35 + v36[9]) = sub_A4D64();
  v60 = 6;
  sub_5CB18();
  sub_A4D74();
  *(v35 + v36[10]) = v61;
  sub_5CB50(7);
  v41 = v50;
  sub_A4D24();
  sub_5C674(v41, v35 + v36[11]);
  sub_5CAE0(8);
  v42 = sub_A4D14();
  v44 = v43;
  v45 = sub_5CAD0();
  v46(v45);
  v47 = v35 + v36[12];
  *v47 = v42;
  *(v47 + 8) = v44 & 1;
  sub_2E43C(v35, v51);
  sub_761C(v59);
  return sub_5C6E4(v35);
}

uint64_t sub_5C524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5B2B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5C54C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5B594();
  *a1 = result;
  return result;
}

uint64_t sub_5C574(uint64_t a1)
{
  v2 = sub_5C620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5C5B0(uint64_t a1)
{
  v2 = sub_5C620();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_5C620()
{
  result = qword_DE3A8;
  if (!qword_DE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3A8);
  }

  return result;
}

uint64_t sub_5C674(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD220, qword_A9B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C6E4(uint64_t a1)
{
  v2 = type metadata accessor for DBCalendarState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5C740(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4B0(&qword_DE3B0, &qword_A9BE0);
    sub_5C7DC(a2, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5C7DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DBCalendarState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBCalendarState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x5C978);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5C9B4()
{
  result = qword_DE3E0;
  if (!qword_DE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3E0);
  }

  return result;
}

unint64_t sub_5CA0C()
{
  result = qword_DE3E8;
  if (!qword_DE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3E8);
  }

  return result;
}

unint64_t sub_5CA64()
{
  result = qword_DE3F0;
  if (!qword_DE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3F0);
  }

  return result;
}

uint64_t sub_5CB70()
{

  return sub_A45B4();
}

uint64_t sub_5CB90()
{
  type metadata accessor for UnsupportedFlow();
  sub_5DDD0();
  return sub_A3334();
}

uint64_t sub_5CBF0()
{
  sub_5950();
  v1[15] = v2;
  v1[16] = v0;
  v3 = *(*(sub_4BF0(&qword_DB5A8, &unk_A67C0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v4 = sub_A3944();
  v1[18] = v4;
  v5 = *(v4 - 8);
  v1[19] = v5;
  v6 = *(v5 + 64) + 15;
  v1[20] = swift_task_alloc();
  v7 = *(*(sub_A4354() - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = sub_A3784();
  v1[22] = v8;
  v9 = *(v8 - 8);
  v1[23] = v9;
  v10 = *(v9 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_5CD80()
{
  sub_59C4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  *(v0 + 216) = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
  sub_A4B54(20);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  v12._object = 0x80000000000B1C80;
  v12._countAndFlagsBits = 0xD000000000000012;
  sub_A46D4(v12);
  v3 = *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_unsupportedCode);
  *(v0 + 280) = v3;
  sub_A4C44();
  sub_810AC(*(v0 + 96), *(v0 + 104), 0xD00000000000002DLL, 0x80000000000B1CA0, 0x2865747563657865, 0xE900000000000029);

  type metadata accessor for DailyBriefingCommonCATs();
  sub_A4344();
  *(v0 + 224) = sub_A4284();
  if (v3)
  {
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 248) = v4;
    *v4 = v5;
    v4[1] = sub_5D208;
    v6 = *(v0 + 192);

    return sub_2C424(v6);
  }

  else
  {
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 232) = v8;
    *v8 = v9;
    v8[1] = sub_5CFA4;
    v10 = *(v0 + 200);

    return sub_2C26C(v10);
  }
}

uint64_t sub_5CFA4()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  sub_40210();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_5D0A4()
{
  v6 = v2[25];
  v7 = v2[26];
  v8 = v2[22];
  v9 = sub_5DF40(v2[23]);
  v10(v9);
  sub_5DF90(OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
  v11 = sub_A3744();
  sub_A924(v3, 1, 1, v11);
  sub_5DF5C();
  sub_5DF10(v12, v13, v14, _swiftEmptyArrayStorage);
  sub_1085C(v4, &qword_DE4F0, &unk_AADA0);
  sub_1085C(v3, &qword_DB5A8, &unk_A67C0);
  v15 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync + 32);
  sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync), *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync + 24));
  v2[10] = v24;
  v2[11] = &protocol witness table for AceOutput;
  v16 = sub_76B0(v2 + 7);
  (*(v5 + 16))(v16, v1);
  v17 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  sub_1A6A0();
  v2[33] = v18;
  *v18 = v19;
  v20 = sub_5DEBC(v18);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v20, v21, v22);
}

uint64_t sub_5D208()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  sub_40210();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_5D308()
{
  v6 = v2[24];
  v7 = v2[26];
  v8 = v2[22];
  v9 = sub_5DF40(v2[23]);
  v10(v9);
  sub_5DF90(OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
  v11 = sub_A3744();
  sub_A924(v3, 1, 1, v11);
  sub_5DF5C();
  sub_5DF10(v12, v13, v14, _swiftEmptyArrayStorage);
  sub_1085C(v4, &qword_DE4F0, &unk_AADA0);
  sub_1085C(v3, &qword_DB5A8, &unk_A67C0);
  v15 = *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync + 32);
  sub_7584((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync), *(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync + 24));
  v2[10] = v24;
  v2[11] = &protocol witness table for AceOutput;
  v16 = sub_76B0(v2 + 7);
  (*(v5 + 16))(v16, v1);
  v17 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  swift_task_alloc();
  sub_1A6A0();
  v2[33] = v18;
  *v18 = v19;
  v20 = sub_5DEBC(v18);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v20, v21, v22);
}

uint64_t sub_5D470()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  sub_5930();
  *v8 = v7;
  *(v3 + 272) = v0;

  if (!v0)
  {
    sub_761C((v3 + 56));
  }

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5D570()
{
  v3 = sub_5DF78();
  v4(v3);
  (*(v2 + 8))(v1, v0);
  sub_5DE98();

  sub_AA9C();

  return v5();
}

uint64_t sub_5D630()
{
  sub_59C4();
  v1 = v0[28];

  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[16];
  sub_5DEEC();

  sub_5DE68();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v19._countAndFlagsBits = sub_A4644();
  sub_A46D4(v19);

  sub_5DE28(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

  sub_5DE98();

  sub_AA9C();

  return v13();
}

uint64_t sub_5D748()
{
  sub_59C4();
  v1 = v0[28];

  v2 = v0[32];
  v3 = v0[27];
  v4 = v0[16];
  sub_5DEEC();

  sub_5DE68();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v19._countAndFlagsBits = sub_A4644();
  sub_A46D4(v19);

  sub_5DE28(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17);

  sub_5DE98();

  sub_AA9C();

  return v13();
}

uint64_t sub_5D860()
{
  sub_59C4();
  v4 = sub_5DF78();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  sub_761C(v3 + 7);
  v6 = v3[34];
  v7 = v3[27];
  v8 = v3[16];
  sub_5DEEC();

  sub_5DE68();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v23._countAndFlagsBits = sub_A4644();
  sub_A46D4(v23);

  sub_5DE28(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21);

  sub_5DE98();

  sub_AA9C();

  return v17();
}

uint64_t sub_5D9A0()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  (*(v3 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_catProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync));
  return v0;
}

uint64_t sub_5DA24()
{
  sub_5D9A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for UnsupportedFlow()
{
  result = qword_DE428;
  if (!qword_DE428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5DAD0()
{
  result = sub_A43D4();
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

_BYTE *storeEnumTagSinglePayload for UnsupportedFlow.UnsupportedError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x5DC44);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5DC80()
{
  result = qword_DE4E8;
  if (!qword_DE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE4E8);
  }

  return result;
}

uint64_t sub_5DCF8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_A648;

  return sub_5CBF0();
}

uint64_t sub_5DD94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_5DDD0()
{
  result = qword_DD108;
  if (!qword_DD108)
  {
    type metadata accessor for UnsupportedFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD108);
  }

  return result;
}

void sub_5DE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{

  sub_81094(a10, a11, v12 | 9, v11 | 0x8000000000000000, 0x2865747563657865, 0xE900000000000029);
}

uint64_t sub_5DE68()
{
  *(v1 + 112) = v0;

  return swift_errorRetain();
}

uint64_t sub_5DE98()
{
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];
  v8 = v0[15];

  return sub_A3664();
}

void sub_5DEEC()
{

  sub_A4B54(38);
}

uint64_t sub_5DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(v6, v7, v4 & 1, a4, 0, 1, v5, a4);
}

uint64_t sub_5DF40@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[19];
  v3 = v1[20];
  v5 = v1[17];
  v9 = v1[18];
  v6 = v1[16];
  v7 = *(a1 + 32);
  return v2;
}

double sub_5DF5C()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_5DF78()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  result = v0[20];
  v5 = v0[18];
  v6 = *(v0[19] + 8);
  return result;
}

uint64_t sub_5DF90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 32);
  sub_7584((v1 + a1), *(v1 + a1 + 24));

  return sub_A3494();
}

uint64_t sub_5DFD0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 56);
    type metadata accessor for CommonTemplatingService();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_5E040()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    sub_A760(v0 + 16, v9);
    v3 = *(v0 + 56);
    v4 = type metadata accessor for WarningsTemplatingService(0);
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();

    v1 = sub_5A8B8(v9, v3);
    v7 = *(v2 + 72);
    *(v2 + 72) = v1;
  }

  return v1;
}

uint64_t sub_5E0E4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 56);
    type metadata accessor for PodcastTemplatingService();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_5E154(__int128 *a1, uint64_t a2)
{
  *(v2 + 112) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 64) = 0u;
  sub_AA3C(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t *sub_5E194()
{
  sub_761C(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  return v0;
}

uint64_t sub_5E1F4()
{
  sub_5E194();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_5E24C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_4BF0(&qword_DC748, &qword_A8330);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v79 - v9;
  v11 = sub_A2DB4();
  v12 = sub_14CB8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  if (!*(a3 + 16) || !a2)
  {
    goto LABEL_5;
  }

  v17 = *(a3 + 56);
  sub_2C0F0(a1, v10);
  if (sub_CF2C(v10, 1, v3) == 1)
  {
    sub_2C160(v10);
LABEL_5:
    if (qword_DA9E0 != -1)
    {
      sub_5ED34();
    }

    v18 = sub_A43D4();
    sub_48A4(v18, qword_E0BD0);
    sub_5ED54();
    sub_810C4(v19, v20, v21, v22, v23, v24);
    return 0;
  }

  v25 = sub_5ED9C(v14);
  v26(v25);
  v27 = a2;
  v80 = sub_A2D94();
  v81 = v28;
  v29 = [v27 uniqueIdentifier];
  v30 = sub_A45F4();
  v32 = v31;

  v79[0] = v30;
  v79[1] = v32;
  sub_10760();
  LOBYTE(v29) = sub_A4A94();

  if ((v29 & 1) == 0 || (v33 = [v27 ETAForKey:@"MapsSuggestionsETAKey"]) == 0 || (v34 = v33, objc_msgSend(v33, "seconds"), v36 = v35, v34, (v37 = objc_msgSend(v17, "ETAForKey:", @"MapsSuggestionsETAKey")) == 0))
  {
    if (qword_DA9E0 != -1)
    {
      sub_5ED34();
    }

    v45 = sub_A43D4();
    sub_48A4(v45, qword_E0BD0);
    sub_5ED54();
    sub_810C4(v46, v47, v48, v49, v50, v51);

    v52 = sub_5ED8C();
    v53(v52);
    return 0;
  }

  v38 = v37;
  [v37 seconds];
  v40 = v39;

  v41 = [v27 geoMapItem];
  v42 = [v17 geoMapItem];
  v43 = v42;
  if (!v41)
  {
    if (!v42)
    {
      goto LABEL_21;
    }

LABEL_34:

LABEL_35:
    if (qword_DA9E0 != -1)
    {
      sub_5ED34();
    }

    v70 = sub_A43D4();
    sub_48A4(v70, qword_E0BD0);
    sub_5ED54();
    sub_810AC(v71, v72, v73, v74, v75, v76);

    v77 = sub_5ED8C();
    v78(v77);
    return 1;
  }

  if (!v42)
  {
    v43 = v41;
    goto LABEL_34;
  }

  sub_5ECF0();
  v44 = sub_A4A04();

  if ((v44 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  sub_5ED70();
  if (v57 ^ v58 | v56)
  {
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  if (qword_DA9E0 != -1)
  {
    sub_5ED34();
  }

  v59 = sub_A43D4();
  sub_48A4(v59, qword_E0BD0);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_A4B54(19);

  v80 = 0xD000000000000011;
  v81 = 0x80000000000B1F50;
  if (v36 <= v40)
  {
    v60._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v60._countAndFlagsBits = 1702195828;
  }

  if (v36 <= v40)
  {
    v61 = 0xE500000000000000;
  }

  else
  {
    v61 = 0xE400000000000000;
  }

  v60._object = v61;
  sub_A46D4(v60);

  sub_31578();
  sub_810C4(v62, v63, v64, v65, v66, v67);

  v68 = sub_5ED8C();
  v69(v68);
  return v54;
}

uint64_t sub_5E790(void *a1, uint64_t a2)
{
  if (!*(a2 + 16) || !a1)
  {
    if (qword_DA9E0 != -1)
    {
      sub_5ED34();
    }

    v14 = sub_A43D4();
    sub_48A4(v14, qword_E0BD0);
    sub_31578();
    sub_810C4(v15, v16, v17, v18, v19, v20);
    return 0;
  }

  v2 = *(a2 + 56);
  v3 = a1;
  v4 = [v3 uniqueIdentifier];
  v5 = sub_A45F4();
  v7 = v6;

  v8 = [v2 uniqueIdentifier];
  v9 = sub_A45F4();
  v11 = v10;

  v12 = v5 == v9 && v7 == v11;
  if (v12)
  {
  }

  else
  {
    v13 = sub_A4E44();

    if ((v13 & 1) == 0)
    {
LABEL_27:
      if (qword_DA9E0 != -1)
      {
        sub_5ED34();
      }

      v41 = sub_A43D4();
      sub_48A4(v41, qword_E0BD0);
      sub_31578();
      sub_810C4(v42, v43, v44, v45, v46, v47);

      return 0;
    }
  }

  v21 = [v3 ETAForKey:@"MapsSuggestionsETAKey"];
  if (!v21)
  {
    goto LABEL_27;
  }

  v22 = v21;
  [v21 seconds];
  v24 = v23;

  v25 = [v2 ETAForKey:@"MapsSuggestionsETAKey"];
  if (!v25)
  {
    goto LABEL_27;
  }

  v26 = v25;
  [v25 seconds];
  v28 = v27;

  sub_5ED70();
  if (v29 ^ v30 | v12)
  {
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  if (qword_DA9E0 != -1)
  {
    sub_5ED34();
  }

  v32 = sub_A43D4();
  sub_48A4(v32, qword_E0BD0);
  sub_A4B54(19);

  if (v24 <= v28)
  {
    v33._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v33._countAndFlagsBits = 1702195828;
  }

  if (v24 <= v28)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  v33._object = v34;
  sub_A46D4(v33);

  sub_31578();
  sub_810C4(v35, v36, v37, v38, v39, v40);

  return v31;
}

id sub_5EAFC(void *a1)
{
  v3 = sub_A2EA4();
  v4 = sub_14CB8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = [a1 geoMapItem];
  if (result)
  {

    v16 = off_DDE58;

    v17 = sub_7B710([a1 type], v16);

    if (!v17)
    {
      return 0;
    }

    if ([a1 type] != &dword_0 + 3)
    {
      return &dword_0 + 1;
    }

    v18 = [a1 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
    if (!v18)
    {
      return &dword_0 + 1;
    }

    v19 = v18;
    sub_A2E74();

    v20 = sub_5ED9C(v6);
    v21(v20);
    sub_A2E94();
    v22 = sub_A2E14();
    v23 = *(v6 + 8);
    v23(v11, v1);
    v23(v14, v1);
    return ((v22 & 1) == 0);
  }

  return result;
}

unint64_t sub_5ECF0()
{
  result = qword_DE6C0;
  if (!qword_DE6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE6C0);
  }

  return result;
}

uint64_t sub_5ED34()
{

  return swift_once();
}

uint64_t INTask.entityBuilder.getter()
{
  v1 = v0;
  v2 = sub_A2D04();
  v3 = sub_591C(v2);
  v62 = v4;
  v63 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v58 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5F35C();
  __chkstk_darwin(v8);
  v59 = &v58 - v9;
  sub_5F35C();
  __chkstk_darwin(v10);
  v60 = &v58 - v11;
  sub_5F35C();
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  sub_5F35C();
  v15 = __chkstk_darwin(v14);
  v17 = &v58 - v16;
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  v20 = sub_A3A84();
  v21 = sub_591C(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_A3E94();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_A3E84();
  v32 = [v0 title];
  v33 = [v32 spokenPhrase];

  sub_A45F4();
  sub_A3E74();
  v34 = v31;

  v35 = sub_A3AB4();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  sub_A3AA4();
  (*(v23 + 104))(v27, enum case for UsoEntity_commonNotebook_NotebookItemType.DefinedValues.commonNotebook_NotebookItemType_Reminder(_:), v20);
  sub_A3A94();
  v38 = v20;
  v39 = v1;
  (*(v23 + 8))(v27, v38);
  v41 = v62;
  v40 = v63;

  sub_A3E34();

  v42 = [v39 createdDateComponents];
  if (v42)
  {
    v43 = v42;
    sub_A2C54();

    (*(v41 + 32))(v19, v17, v40);
    if (sub_603E8())
    {
      sub_A3E54();
    }

    (*(v41 + 8))(v19, v40);
  }

  v44 = [v39 modifiedDateComponents];
  if (v44)
  {
    v45 = v44;
    v46 = v60;
    sub_A2C54();

    v47 = v61;
    (*(v41 + 32))(v61, v46, v40);
    if (sub_603E8())
    {
      sub_A3E64();
    }

    (*(v41 + 8))(v47, v40);
  }

  v48 = [v39 temporalEventTrigger];
  if (!v48)
  {
    goto LABEL_15;
  }

  v49 = v48;
  v50 = [v48 dateComponentsRange];
  v51 = [v50 startDateComponents];

  if (!v51)
  {
LABEL_14:

LABEL_15:

    return v34;
  }

  v52 = v58;
  sub_A2C54();

  v53 = v59;
  (*(v41 + 32))(v59, v52, v40);
  if (!sub_603E8())
  {
    (*(v41 + 8))(v53, v40);
    goto LABEL_14;
  }

  v54 = sub_A3E24();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_A3E14();

  sub_A3E04();

  sub_A3E44();

  (*(v41 + 8))(v53, v40);
  return v34;
}

uint64_t sub_5F330@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = INTask.entityBuilder.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonSpecs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x5F434);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SupportedFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x5F538);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5F570()
{
  result = qword_DE6E8;
  if (!qword_DE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6E8);
  }

  return result;
}

uint64_t sub_5F5E8(char a1)
{
  result = 0x7261646E656C6163;
  switch(a1)
  {
    case 1:
      result = 0x7265646E696D6572;
      break;
    case 2:
      result = 0x72656874616577;
      break;
    case 3:
      result = 1936744813;
      break;
    case 4:
      result = 0x74736163646F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5F6B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF8C0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5F704(char a1)
{
  result = 0x676E697465657267;
  switch(a1)
  {
    case 1:
      result = 0x676E696E726177;
      break;
    case 2:
      result = 0x6973756C636E6F63;
      break;
    case 3:
      result = 1702060386;
      break;
    case 4:
      result = 0x6C616974696E69;
      break;
    case 5:
      result = 0x6F5474706D6F7270;
      break;
    case 6:
      result = 0x766F6D6552646461;
      break;
    case 7:
      result = 0x6F6C466472617567;
      break;
    case 8:
      result = 0x656E696C66666FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5F860@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5F6B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5F890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5F704(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5F8C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF9B8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5F928@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5F8C4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5F958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5F5E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5FA3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_52D88();
}

unint64_t sub_5FAA4()
{
  result = qword_DE6F0;
  if (!qword_DE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6F0);
  }

  return result;
}

unint64_t sub_5FAF8()
{
  result = qword_DE6F8;
  if (!qword_DE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6F8);
  }

  return result;
}

id sub_5FB74()
{
  v0 = sub_A4964();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_AA54();
  v5 = v4 - v3;
  v6 = sub_A4954();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_AA54();
  v8 = sub_A44B4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  sub_AA54();
  sub_35BE0();
  sub_A4464();
  sub_5FF9C();
  sub_4BF0(&qword_DE7B0, &qword_AAFD0);
  sub_5FFF4();
  sub_A4AC4();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v10 = sub_A4994();
  v11 = objc_allocWithZone(AFNotifyObserver);
  result = sub_60058(0xD000000000000021, 0x80000000000B2070, 1, v10, 0);
  if (result)
  {
    *(v13 + 16) = result;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_5FDC0()
{
  v1 = [*(v0 + 16) state];
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0BA0);
  sub_A4B54(25);

  v3 = v1 == 0;
  v4 = v1 == 0;
  if (v3)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_A46D4(v5);

  sub_812F4(0xD000000000000017, 0x80000000000B20D0, 0xD00000000000002ELL, 0x80000000000B20F0, 0x746E656C69537369, 0xEE00292865646F4DLL);

  return v4;
}

uint64_t sub_5FF18()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_5FF9C()
{
  result = qword_DE7A8;
  if (!qword_DE7A8)
  {
    sub_A4954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE7A8);
  }

  return result;
}

unint64_t sub_5FFF4()
{
  result = qword_DE7B8;
  if (!qword_DE7B8)
  {
    sub_1B4B0(&qword_DE7B0, &qword_AAFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE7B8);
  }

  return result;
}

id sub_60058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_A45C4();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithName:v10 options:a3 queue:a4 delegate:a5];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_600EC()
{
  v28 = sub_A2D04();
  v0 = sub_591C(v28);
  v2 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v0);
  sub_AA54();
  v7 = v6 - v5;
  v27 = sub_A3004();
  v8 = sub_591C(v27);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_AA54();
  v15 = v14 - v13;
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v16 = sub_A2FE4();
  sub_591C(v16);
  v18 = v17;
  v20 = *(v19 + 72);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_AA250;
  v23 = v22 + v21;
  v24 = *(v18 + 104);
  v24(v23, enum case for Calendar.Component.year(_:), v16);
  v24(v23 + v20, enum case for Calendar.Component.month(_:), v16);
  v24(v23 + 2 * v20, enum case for Calendar.Component.day(_:), v16);
  v24(v23 + 3 * v20, enum case for Calendar.Component.hour(_:), v16);
  v24(v23 + 4 * v20, enum case for Calendar.Component.minute(_:), v16);
  v24(v23 + 5 * v20, enum case for Calendar.Component.second(_:), v16);
  v24(v23 + 6 * v20, enum case for Calendar.Component.timeZone(_:), v16);
  sub_608AC(v22);
  sub_A2F74();

  v25 = sub_603E8();
  (*(v2 + 8))(v7, v28);
  (*(v10 + 8))(v15, v27);
  return v25;
}

uint64_t sub_603E8()
{
  v0 = sub_A2EA4();
  v1 = sub_591C(v0);
  v42 = v2;
  v43 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_AA54();
  v41 = v6 - v5;
  v7 = sub_4BF0(&qword_DD970, &qword_A95B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v40 - v9;
  v11 = sub_A3D24();
  sub_5D78(v11);
  v12 = sub_A3D14();
  v13 = sub_A2C94();
  sub_6144C(v13, v14);
  sub_A3D04();
  sub_61430();
  v15 = sub_A3D14();
  v16 = sub_A2CA4();
  sub_6144C(v16, v17);
  sub_A3D04();
  v18 = sub_A3DE4();
  sub_5D78(v18);
  v19 = sub_A3DD4();

  sub_A3DC4();
  v45 = v15;

  sub_61430();
  v20 = sub_A3D14();
  v21 = sub_A2C64();
  sub_6144C(v21, v22);
  sub_A3D04();
  v23 = sub_A3C84();
  sub_5D78(v23);
  sub_A3C74();

  sub_A3C64();
  v46 = v12;

  sub_A3C54();
  v44 = v19;

  sub_A3C44();

  sub_61430();
  sub_A3D14();
  v24 = sub_A2C84();
  sub_6144C(v24, v25);
  sub_A3D04();
  sub_61430();
  sub_A3D14();
  v26 = sub_A2CB4();
  sub_6144C(v26, v27);
  sub_A3D04();
  sub_61430();
  sub_A3D14();
  v28 = sub_A2CC4();
  sub_6144C(v28, v29);
  sub_A3D04();
  v30 = sub_A3DA4();
  sub_5D78(v30);
  sub_A3D94();
  sub_A2CF4();
  v31 = sub_A3044();
  if (sub_CF2C(v10, 1, v31) == 1)
  {
    sub_613C8(v10);
LABEL_4:

    v33 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_5;
  }

  v40[1] = v20;
  v32 = v41;
  sub_A2E94();
  v33 = sub_A3014();
  v35 = v34;
  (*(v42 + 8))(v32, v43);
  (*(*(v31 - 8) + 8))(v10, v31);
  if (!v35)
  {
    goto LABEL_4;
  }

LABEL_5:
  v47 = v33;
  v48 = v35;
  sub_A4704();
  sub_A3D84();

  v36 = sub_A3CE4();
  sub_5D78(v36);
  sub_A3CD4();

  sub_A3CA4();

  sub_A3CB4();

  sub_A3CC4();

  sub_A3C94();

  v37 = sub_A3D74();
  sub_5D78(v37);
  v38 = sub_A3D64();

  sub_A3D54();

  sub_A3D44();

  return v38;
}

uint64_t sub_608AC(uint64_t a1)
{
  v2 = sub_A2FE4();
  v3 = sub_591C(v2);
  v37 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v32 - v10;
  if (!*(a1 + 16))
  {
    v12 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_4BF0(&qword_DE7C8, &qword_AA260);
  result = sub_61458();
  v12 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v40 = result + 56;
  v14 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v14 + 32) & ~v14);
  v39 = v37 + 16;
  v15 = (v37 + 8);
  v33 = (v37 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v37 + 72);
    v38 = v13 + 1;
    v17 = *(v37 + 16);
    v17(v41, v35 + v16 * v13, v2);
    v18 = v12[5];
    sub_60BB0(&qword_DE7D0);
    v19 = sub_A4564();
    v20 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v21 = v19 & v20;
      v22 = (v19 & v20) >> 6;
      v23 = *(v40 + 8 * v22);
      v24 = 1 << (v19 & v20);
      if ((v24 & v23) == 0)
      {
        break;
      }

      v25 = v12;
      v17(v9, v12[6] + v21 * v16, v2);
      sub_60BB0(&qword_DE7D8);
      v26 = sub_A45B4();
      v27 = *v15;
      (*v15)(v9, v2);
      if (v26)
      {
        result = (v27)(v41, v2);
        v12 = v25;
        goto LABEL_12;
      }

      v19 = v21 + 1;
      v12 = v25;
    }

    v28 = v41;
    *(v40 + 8 * v22) = v24 | v23;
    result = (*v33)(v12[6] + v21 * v16, v28, v2);
    v29 = v12[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v12[2] = v31;
LABEL_12:
    v13 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_60BB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_A2FE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_60BF4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_4BF0(&qword_DE7E8, &unk_AA270);
    v2 = sub_61458();
    v30 = *(v1 + 16);
    if (v30)
    {
      v3 = 0;
      v28 = v1;
      v29 = v1 + 32;
      do
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          JUMPOUT(0x611D0);
        }

        v4 = *(v29 + v3);
        v5 = v2[5];
        sub_A4F14();
        sub_13894(v4);
        sub_A46A4();

        v6 = sub_A4F44();
        v7 = ~(-1 << *(v2 + 32));
        v8 = v6 & v7;
        sub_61474();
        if ((v11 & v10) != 0)
        {
          while (1)
          {
            v12 = 0xE900000000000065;
            v13 = 0x6E61636972727568;
            switch(*(v2[6] + v8))
            {
              case 1:
                v12 = 0xE700000000000000;
                v13 = 0x6F64616E726F74;
                break;
              case 2:
                v13 = 0x6C616369706F7274;
                v12 = 0xED00006D726F7453;
                break;
              case 3:
                v12 = 0xE800000000000000;
                v13 = 0x6472617A7A696C62;
                break;
              case 4:
                v12 = 0xE400000000000000;
                v13 = 1818845544;
                break;
              case 5:
                v13 = 0x737265646E756874;
                v14 = 1836216180;
                goto LABEL_30;
              case 6:
                v12 = 0xE500000000000000;
                v13 = 0x7465656C73;
                break;
              case 7:
                v12 = 0xE500000000000000;
                v15 = 2003791475;
                goto LABEL_26;
              case 8:
                v13 = 0x53676E69776F6C62;
                v16 = 7827310;
                goto LABEL_28;
              case 9:
                v12 = 0xE500000000000000;
                v15 = 1852399986;
                goto LABEL_26;
              case 0xA:
                v12 = 0xE500000000000000;
                v15 = 1802464627;
                goto LABEL_26;
              case 0xB:
                v12 = 0xE400000000000000;
                v13 = 1953723748;
                break;
              case 0xC:
                v12 = 0xE500000000000000;
                v15 = 1684957559;
                goto LABEL_26;
              case 0xD:
                v12 = 0xE500000000000000;
                v15 = 1734831974;
LABEL_26:
                v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
                break;
              case 0xE:
                v12 = 0xE400000000000000;
                v13 = 1702519144;
                break;
              case 0xF:
                v12 = 0xE600000000000000;
                v13 = 0x7964756F6C63;
                break;
              case 0x10:
                v13 = 0x6C43796C74726170;
                v14 = 2036626799;
                goto LABEL_30;
              case 0x11:
                v12 = 0xE500000000000000;
                v13 = 0x7261656C63;
                break;
              case 0x12:
                v12 = 0xE400000000000000;
                v13 = 1684828003;
                break;
              case 0x13:
                v12 = 0xE300000000000000;
                v13 = 7630696;
                break;
              case 0x14:
                v13 = 0x6F6C43646578696DLL;
                v16 = 7955573;
LABEL_28:
                v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 0x15:
                v13 = 0x656C43646578696DLL;
                v12 = 0xEA00000000007261;
                break;
              case 0x16:
                v13 = 0x6C69617641746F6ELL;
                v14 = 1701601889;
LABEL_30:
                v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              default:
                break;
            }

            v17 = 0x6E61636972727568;
            v18 = 0xE900000000000065;
            switch(v4)
            {
              case 1:
                v18 = 0xE700000000000000;
                v17 = 0x6F64616E726F74;
                break;
              case 2:
                v17 = 0x6C616369706F7274;
                v18 = 0xED00006D726F7453;
                break;
              case 3:
                v18 = 0xE800000000000000;
                v17 = 0x6472617A7A696C62;
                break;
              case 4:
                v18 = 0xE400000000000000;
                v17 = 1818845544;
                break;
              case 5:
                v17 = 0x737265646E756874;
                v19 = 1836216180;
                goto LABEL_56;
              case 6:
                v18 = 0xE500000000000000;
                v17 = 0x7465656C73;
                break;
              case 7:
                v18 = 0xE500000000000000;
                v20 = 2003791475;
                goto LABEL_52;
              case 8:
                v17 = 0x53676E69776F6C62;
                v21 = 7827310;
                goto LABEL_54;
              case 9:
                v18 = 0xE500000000000000;
                v20 = 1852399986;
                goto LABEL_52;
              case 10:
                v18 = 0xE500000000000000;
                v20 = 1802464627;
                goto LABEL_52;
              case 11:
                v18 = 0xE400000000000000;
                v17 = 1953723748;
                break;
              case 12:
                v18 = 0xE500000000000000;
                v20 = 1684957559;
                goto LABEL_52;
              case 13:
                v18 = 0xE500000000000000;
                v20 = 1734831974;
LABEL_52:
                v17 = v20 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
                break;
              case 14:
                v18 = 0xE400000000000000;
                v17 = 1702519144;
                break;
              case 15:
                v18 = 0xE600000000000000;
                v17 = 0x7964756F6C63;
                break;
              case 16:
                v17 = 0x6C43796C74726170;
                v19 = 2036626799;
                goto LABEL_56;
              case 17:
                v18 = 0xE500000000000000;
                v17 = 0x7261656C63;
                break;
              case 18:
                v18 = 0xE400000000000000;
                v17 = 1684828003;
                break;
              case 19:
                v18 = 0xE300000000000000;
                v17 = 7630696;
                break;
              case 20:
                v17 = 0x6F6C43646578696DLL;
                v21 = 7955573;
LABEL_54:
                v18 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 21:
                v17 = 0x656C43646578696DLL;
                v18 = 0xEA00000000007261;
                break;
              case 22:
                v17 = 0x6C69617641746F6ELL;
                v19 = 1701601889;
LABEL_56:
                v18 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              default:
                break;
            }

            if (v13 == v17 && v12 == v18)
            {
              break;
            }

            v23 = sub_A4E44();

            if (v23)
            {
              goto LABEL_67;
            }

            v8 = (v8 + 1) & v7;
            sub_61474();
            if ((v10 & v11) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
LABEL_64:
          v2[v9 + 7] = v10 | v11;
          *(v2[6] + v8) = v4;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_72;
          }

          v2[2] = v26;
        }

LABEL_67:
        ++v3;
        v1 = v28;
      }

      while (v3 != v30);
    }
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_61288(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_4BF0(&qword_DE7E0, &qword_AA268);
  result = sub_61458();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 4 * v5++);
    v8 = v3[5];
    sub_A4F14();
    sub_A4F34(v7);
    result = sub_A4F44();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(v3[6] + 4 * v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(v3[6] + 4 * v10) = v7;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    v3[2] = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_613C8(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD970, &qword_A95B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_61430()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_6144C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_61458()
{

  return static _SetStorage.allocate(capacity:)(v0);
}

uint64_t sub_61488(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_614B0, 0, 0);
}

uint64_t sub_614B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_AA280;
  strcpy((v3 + 32), "transportType");
  *(v3 + 46) = -4864;
  v4 = *(v2 + 6);
  *(v3 + 48) = v4;
  *(v3 + 72) = &type metadata for Double;
  strcpy((v3 + 80), "suggestionType");
  *(v3 + 95) = -18;
  *(v3 + 96) = v2[6];
  *(v3 + 120) = &type metadata for Double;
  *(v3 + 128) = 6386789;
  *(v3 + 136) = 0xE300000000000000;
  v5 = sub_A4234();
  v6 = *v2;
  *(v3 + 144) = sub_8CD90();
  *(v3 + 168) = v5;
  *(v3 + 176) = 0x6E6F697461636F6CLL;
  *(v3 + 184) = 0xE800000000000000;
  v7 = v2[1];
  v8 = v2[2];
  *(v3 + 216) = sub_A42E4();
  sub_76B0((v3 + 192));

  sub_A42C4();
  strcpy((v3 + 224), "hasETAUpdated");
  *(v3 + 238) = -4864;
  *(v3 + 264) = &type metadata for Bool;
  *(v3 + 240) = v1;
  if (v4 == 1)
  {
    v9 = qword_DAA48;
    v10 = &qword_E0D38;
  }

  else if (v4)
  {
    v9 = qword_DAA60;
    v10 = &qword_E0D98;
  }

  else
  {
    v9 = qword_DAA40;
    v10 = &qword_E0D18;
  }

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 32);
  sub_7A124(1, *v10, v10[1], *(v10 + 16), v10[3]);
  v12 = *(v11 + 16);
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_61774;
  v14 = *(v0 + 24);

  return (sub_6E710)(v3, v14, v12);
}

uint64_t sub_61774(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_6188C(uint64_t *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsTemplatingService_logger;
  if (qword_DA9F8 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0C18);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_61954()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsTemplatingService_logger;
  v2 = sub_A43D4();
  sub_5908(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_619B0()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsTemplatingService_logger;
  v3 = sub_A43D4();
  sub_5908(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for MapsTemplatingService()
{
  result = qword_DE820;
  if (!qword_DE820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61A9C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v5 = type metadata accessor for CalendarEvent(0);
  v6 = sub_5940(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v17 == v16)
    {

      return v30;
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v19 = *(v8 + 72);
    sub_106FC(a3 + v18 + v19 * v16, v15);
    v20 = v31(v15);
    if (v3)
    {
      sub_662B8(v15);
      v26 = v30;

      return v26;
    }

    if (v20)
    {
      sub_66314(v15, v29);
      v21 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_7AD08(0, v21[2] + 1, 1);
        v21 = v33;
      }

      v24 = v21[2];
      v23 = v21[3];
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v30 = (v24 + 1);
        v28 = v24;
        sub_7AD08(v23 > 1, v24 + 1, 1);
        v25 = v30;
        v24 = v28;
        v21 = v33;
      }

      ++v16;
      v21[2] = v25;
      v30 = v21;
      result = sub_66314(v29, v21 + v18 + v24 * v19);
    }

    else
    {
      result = sub_662B8(v15);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

void sub_61CF0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a3;
  v22 = _swiftEmptyArrayStorage;
  v8 = a4(a3);
  v9 = 0;
  v10 = v5 & 0xC000000000000001;
  v19 = v5;
  v20 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 == v9)
    {

      return;
    }

    if (v10)
    {
      v11 = sub_A4B74();
    }

    else
    {
      if (v9 >= *(v20 + 16))
      {
        goto LABEL_16;
      }

      v11 = *(v5 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v21 = v11;
    v13 = a1(&v21);
    if (v4)
    {

      return;
    }

    if (v13)
    {
      sub_A4BB4();
      v14 = v8;
      v15 = v10;
      v16 = a1;
      v17 = a2;
      v18 = v22[2];
      sub_A4BE4();
      a2 = v17;
      a1 = v16;
      v10 = v15;
      v8 = v14;
      v5 = v19;
      sub_A4BF4();
      sub_A4BC4();
    }

    else
    {
    }

    ++v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_61E70()
{
  sub_5950();
  v0[16] = v1;
  v0[17] = v2;
  v0[14] = v3;
  v0[15] = v4;
  v0[12] = v5;
  v0[13] = v6;
  v7 = sub_A2EA4();
  v0[18] = v7;
  sub_5940(v7);
  v0[19] = v8;
  v0[20] = *(v9 + 64);
  v0[21] = swift_task_alloc();
  v10 = sub_4BF0(&qword_DD4B8, &qword_A9240);
  v0[22] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v0[23] = swift_task_alloc();
  v12 = sub_A43A4();
  v0[24] = v12;
  sub_5940(v12);
  v0[25] = v13;
  v15 = *(v14 + 64) + 15;
  v0[26] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_61FC0()
{
  if (qword_DA8F0 != -1)
  {
    sub_66508();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v30 = *(v0 + 136);
  v31 = *(v0 + 160);
  v29 = *(v0 + 128);
  v34 = *(v0 + 120);
  v32 = *(v0 + 112);
  v5 = *(v0 + 104);
  v6 = *(&xmmword_DE8D0 + 1);
  *(v0 + 216) = xmmword_DE8D0;
  *(v0 + 224) = v6;
  *(v0 + 273) = byte_DE8E0;
  v7 = qword_DE8E8;
  *(v0 + 232) = qword_DE8E8;
  v8 = v7;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v9 = v2;
  (*(v3 + 16))(v2, v5, v4);
  sub_A760(v29, v0 + 16);
  sub_A760(v30, v0 + 56);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v31 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v0 + 240) = v13;
  (*(v3 + 32))(v13 + v10, v9, v4);
  v14 = (v13 + v11);
  *v14 = v32;
  v14[1] = v34;
  sub_A814((v0 + 16), v13 + v12);
  sub_A814((v0 + 56), v13 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8));

  v15 = swift_task_alloc();
  *(v0 + 248) = v15;
  v15[2] = 0x4018000000000000;
  v15[3] = &unk_AA2F0;
  v15[4] = v13;
  v15[5] = 0xD000000000000036;
  v15[6] = 0x80000000000B2160;
  v16 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = sub_62250;
  v18 = *(v0 + 184);
  v33 = *(v0 + 176);
  sub_25660();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_62250()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  v4 = v2[32];
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  v3[33] = v0;

  if (!v0)
  {
    v7 = v3[30];
    v8 = v3[31];
  }

  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_62360()
{
  sub_5950();
  v1 = v0[23];
  v2 = v0[12];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_3FAE8(v1, v2, &qword_DD4B8, &qword_A9240);
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[21];

  sub_AA9C();

  return v6();
}

uint64_t sub_62408()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 273);

  *(v0 + 272) = 3;
  sub_660C8();
  sub_A4EC4();
  sub_6657C();
  sub_664F8();
  sub_665B0(v8, v9, v10, v11);

  if (qword_DA8E8 != -1)
  {
    sub_664D8();
  }

  v12 = *(v0 + 264);
  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  v15 = *(v0 + 192);
  v16 = *(v0 + 176);
  v17 = *(v0 + 96);
  v18 = sub_A43D4();
  sub_48A4(v18, qword_DE8B8);
  sub_81094(0xD000000000000026, 0x80000000000B21A0, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000036, 0x80000000000B2160);
  v19 = swift_allocError();
  *v20 = 3;

  (*(v14 + 8))(v13, v15);
  *v17 = v19;
  swift_storeEnumTagMultiPayload();
  v21 = *(v0 + 208);
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);

  sub_AA9C();

  return v24();
}

id sub_625E0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(SAReminderSiriKitInteraction) init];
  v5 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
  v6 = sub_65D60([a1 backingStore]);
  if (v7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v9 = v6;
    v10 = v7;
    isa = sub_A2DC4().super.isa;
    sub_65DDC(v9, v10);
  }

  [v5 setData:isa];

  v11 = [a1 typeName];
  v12 = sub_A45F4();
  v14 = v13;

  sub_1323C(v12, v14, v5, &selRef_setTypeName_);
  v15 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
  result = [a2 backingStore];
  if (result)
  {
    v17 = sub_65D60(result);
    if (v18 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v20 = v17;
      v21 = v18;
      v19 = sub_A2DC4().super.isa;
      sub_65DDC(v20, v21);
    }

    [v15 setData:v19];

    sub_5CDC(a2, &selRef__payloadResponseTypeName);
    if (v22)
    {
      v23 = sub_A45C4();
    }

    else
    {
      v23 = 0;
    }

    [v15 setTypeName:v23];

    [v4 setIntent:v5];
    [v4 setIntentResponse:v15];
    sub_4BF0(&qword_DBB70, &unk_A6E90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_A6E80;
    *(v24 + 32) = v4;

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6282C()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_DE8B8);
  v1 = sub_48A4(v0, qword_DE8B8);
  if (qword_DAA00 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0C30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_628F4()
{
  if (qword_DA980 != -1)
  {
    swift_once();
  }

  v1 = qword_E0A78;
  xmmword_DE8D0 = xmmword_E0A60;
  byte_DE8E0 = byte_E0A70;
  qword_DE8E8 = qword_E0A78;

  return v1;
}

uint64_t sub_62970()
{
  result = sub_7B510(&off_CF0C0);
  qword_E0910 = result;
  return result;
}

uint64_t sub_62998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_A648;

  return sub_62A68(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_62A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v12 = *(*(sub_4BF0(&qword_DD970, &qword_A95B8) - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v13 = *(*(sub_4BF0(&qword_DD988, &unk_AA310) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v14 = *(*(sub_4BF0(&qword_DD220, qword_A9B20) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v15 = sub_A2EA4();
  v6[10] = v15;
  v16 = *(v15 - 8);
  v6[11] = v16;
  v17 = *(v16 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v18 = swift_task_alloc();
  v6[14] = v18;
  *v18 = v6;
  v18[1] = sub_62C50;

  return sub_63194(a2, a3, a4, a5, a6);
}

uint64_t sub_62C50()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  v3 = *(v1 + 112);
  v10 = *v0;
  *(v2 + 120) = v4;
  *(v2 + 128) = v5;

  sub_40210();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_62D48()
{
  v1 = *(v0 + 120);
  if (*(v0 + 128))
  {
    sub_660C8();
    v2 = swift_allocError();
    *v3 = v1;
LABEL_3:
    v4 = *(v0 + 16);
    goto LABEL_9;
  }

  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 24);
  v9 = sub_63D30(v8, *(v0 + 120));
  sub_4F714(v8, v5);
  v10 = sub_63F34(v8, v5, v1);
  (*(v6 + 8))(v5, v7);
  if (!sub_1BF68(v9) && !sub_1BF68(v10))
  {

    if (qword_DA8E8 != -1)
    {
      sub_664D8();
    }

    v50 = *(v0 + 120);
    v51 = sub_A43D4();
    sub_48A4(v51, qword_DE8B8);
    sub_810AC(0xD000000000000025, 0x80000000000B2220, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000037, 0x80000000000B2250);
    sub_24824();
    v2 = swift_allocError();
    *v52 = 2;
    sub_6626C(v50, 0);
    goto LABEL_3;
  }

  v56 = v9;
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  v11 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (v11)
  {
    v13 = *(v0 + 32);
    v12 = *(v0 + 40);
    sub_10944();
    v57 = v14;
    v15 = v11;
    v59._countAndFlagsBits = v13;
    v59._object = v12;
    sub_A46D4(v59);
    sub_1323C(0xD000000000000013, v57, v15, &selRef_setLaunchId_);
  }

  v55 = *(v0 + 96);
  v53 = *(v0 + 120);
  v54 = *(v0 + 88);
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v20 = *(v0 + 48);
  v21 = *(v0 + 16);
  v22 = *(v0 + 24);
  sub_4FE8C(v22, v17);
  sub_66544(v17);
  sub_4F714(v22, v18);
  sub_66544(v18);
  v23 = sub_A3004();
  sub_665D0(v19, v24, v25, v23);
  v26 = sub_A3044();
  sub_665D0(v20, v27, v28, v26);
  v29 = objc_allocWithZone(INDateComponentsRange);
  v30 = sub_66588();
  sub_64D6C(v30, v31, v32, v20);
  sub_29D54(0, &qword_DD7A8, INSearchForNotebookItemsIntent_ptr);
  v33 = sub_66528();
  v38 = sub_67DF4(v33, v34, v35, v36, v37, v11);

  sub_4B85C(v39);
  v2 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:3 userActivity:0];
  sub_661F0(v10, v2);
  sub_6626C(v53, 0);

  *v21 = v10;
  v21[1] = v56;
  v40 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(v54 + 32))(v21 + v40[6], v55, v16);
  *(v21 + v40[7]) = v38;
  v4 = (v21 + v40[8]);
  v41 = *(v0 + 16);
LABEL_9:
  v43 = *(v0 + 96);
  v42 = *(v0 + 104);
  v45 = *(v0 + 64);
  v44 = *(v0 + 72);
  v47 = *(v0 + 48);
  v46 = *(v0 + 56);
  *v4 = v2;
  sub_4BF0(&qword_DD4B8, &qword_A9240);
  swift_storeEnumTagMultiPayload();

  sub_AA9C();

  return v48();
}

uint64_t sub_63194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a3;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a2;
  v6 = *(*(sub_4BF0(&qword_DD970, &qword_A95B8) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = *(*(sub_4BF0(&qword_DD988, &unk_AA310) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v8 = *(*(sub_4BF0(&qword_DD220, qword_A9B20) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v9 = sub_A43A4();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_6330C, 0, 0);
}

uint64_t sub_6330C()
{
  if (qword_DA8F0 != -1)
  {
    sub_66508();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v3 = *(&xmmword_DE8D0 + 1);
  *(v0 + 144) = xmmword_DE8D0;
  *(v0 + 152) = v3;
  *(v0 + 203) = byte_DE8E0;
  v4 = qword_DE8E8;
  *(v0 + 160) = qword_DE8E8;
  v5 = v4;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v38 = v2[4];
  sub_7584(v2, v2[3]);
  v6 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (v6)
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    sub_10944();
    v39 = v9;
    v10 = v6;
    v40._countAndFlagsBits = v8;
    v40._object = v7;
    sub_A46D4(v40);
    sub_1323C(0xD000000000000013, v39, v10, &selRef_setLaunchId_);
  }

  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 56);
  sub_4FE8C(v17, v11);
  sub_A2EA4();
  sub_66544(v11);
  sub_4F714(v17, v12);
  sub_66544(v12);
  v18 = sub_A3004();
  sub_665D0(v14, v19, v20, v18);
  v21 = sub_A3044();
  sub_665D0(v13, v22, v23, v21);
  v24 = objc_allocWithZone(INDateComponentsRange);
  v25 = sub_66588();
  sub_64D6C(v25, v26, v27, v13);
  sub_29D54(0, &qword_DD7A8, INSearchForNotebookItemsIntent_ptr);
  v28 = sub_66528();
  v33 = sub_67DF4(v28, v29, v30, v31, v32, v6);
  sub_29D54(0, &qword_DE8F8, SAIntentGroupHandleIntent_ptr);

  *(v0 + 168) = sub_67EAC(v33, v16, v15);
  v34 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v35 = swift_task_alloc();
  *(v0 + 176) = v35;
  sub_29D54(0, &qword_DE900, SAIntentGroupHandleIntentCompleted_ptr);
  *v35 = v0;
  v35[1] = sub_635D0;
  sub_25660();

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_635D0()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  v4 = *(v2 + 176);
  v10 = *v1;
  *(v3 + 184) = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  sub_40210();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_636E0()
{
  v1 = sub_64138(*(v0 + 184));
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_8:
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    *(v0 + 201) = 1;
    v15 = *(v0 + 203);
    sub_660C8();
    sub_A4EC4();
    sub_6657C();
    sub_664F8();
    sub_7A58C(v16, v17, v18, v19);

    if (qword_DA8E8 != -1)
    {
      sub_664D8();
    }

    v20 = *(v0 + 184);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);
    v24 = sub_A43D4();
    sub_48A4(v24, qword_DE8B8);
    sub_66560();
    sub_81094(v25, v26, v27, v28, v29, v30);

    (*(v22 + 8))(v21, v23);
    goto LABEL_11;
  }

  v4 = sub_66180(v3);
  if (!v4)
  {
    v40 = *(v0 + 152);
    v39 = *(v0 + 160);
    v42 = *(v0 + 136);
    v41 = *(v0 + 144);
    *(v0 + 202) = 2;
    v43 = *(v0 + 203);
    sub_660C8();
    sub_A4EC4();
    sub_6657C();
    sub_664F8();
    sub_665B0(v44, v45, v46, v47);

    if (qword_DA8E8 != -1)
    {
      sub_664D8();
    }

    v48 = *(v0 + 184);
    v50 = *(v0 + 128);
    v49 = *(v0 + 136);
    v51 = *(v0 + 120);
    v52 = sub_A43D4();
    sub_48A4(v52, qword_DE8B8);
    sub_66560();
    sub_810AC(v53, v54, v55, v56, v57, v58);

    (*(v50 + 8))(v49, v51);
LABEL_11:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v5 = v4;
  if (qword_DA8E8 != -1)
  {
    sub_664D8();
  }

  v61 = *(v0 + 152);
  v62 = *(v0 + 160);
  v6 = *(v0 + 136);
  v60 = *(v0 + 144);
  v7 = *(v0 + 128);
  v63 = *(v0 + 120);
  v64 = *(v0 + 184);
  v59 = *(v0 + 203);
  v8 = sub_A43D4();
  sub_48A4(v8, qword_DE8B8);
  sub_A4B54(45);

  sub_10944();
  v65 = v9;
  v10 = sub_1BF68(v5);
  *(v0 + 48) = v10;
  v67._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v67);

  v68._countAndFlagsBits = 0x65646E696D657220;
  v68._object = 0xEB000000002E7372;
  sub_A46D4(v68);
  sub_810AC(0xD000000000000020, v65, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000038, 0x80000000000B2350);

  sub_7A58C(v6, v10, 0, 0x6000u);

  (*(v7 + 8))(v6, v63);
LABEL_12:
  v31 = *(v0 + 136);
  v32 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 88);
  v34 = *(v0 + 96);
  v36 = *(v0 + 192) != 0;

  v37 = *(v0 + 8);

  return v37(v5, v36);
}

void sub_63B20()
{
  if (qword_DA8E8 != -1)
  {
    sub_664D8();
  }

  v1 = *(v0 + 192);
  v24 = *(v0 + 152);
  v25 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v26 = *(v0 + 120);
  v5 = *(v0 + 203);
  v6 = sub_A43D4();
  sub_48A4(v6, qword_DE8B8);
  sub_A4B54(28);

  sub_10944();
  v27 = v7;
  swift_getErrorValue();
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 32);
  v28._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v28);

  sub_81094(0xD00000000000001ALL, v27, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000038, 0x80000000000B2350);

  *(v0 + 200) = 0;
  sub_660C8();
  sub_A4EC4();
  sub_6657C();
  sub_664F8();
  sub_7A58C(v11, v12, v13, v14);

  (*(v4 + 8))(v2, v26);
  v15 = *(v0 + 192);
  v16 = *(v0 + 136);
  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);

  v21 = *(v0 + 8);
  sub_25660();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_63D30(uint64_t a1, uint64_t a2)
{
  v8[2] = a1;

  sub_61CF0(sub_66298, v8, a2, sub_1BF68);
  v4 = v3;
  if (sub_1BF68(v3))
  {
    if (qword_DAA38 != -1)
    {
      swift_once();
    }

    sub_7A124(1, qword_E0CF8, unk_E0D00, byte_E0D08, qword_E0D10);
  }

  if (qword_DA8E8 != -1)
  {
    swift_once();
  }

  v5 = sub_A43D4();
  sub_48A4(v5, qword_DE8B8);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_A4B54(27);

  v9 = 0x20646E756F46;
  v10 = 0xE600000000000000;
  v8[4] = sub_1BF68(v4);
  v11._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v11);

  v12._object = 0x80000000000B22E0;
  v12._countAndFlagsBits = 0xD000000000000013;
  sub_A46D4(v12);
  sub_810AC(v9, v10, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000022, 0x80000000000B2300);

  v6 = sub_645E8(v4);

  return v6;
}

uint64_t sub_63F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = a1;
  v9[3] = a2;

  sub_61CF0(sub_66278, v9, a3, sub_1BF68);
  v5 = v4;
  if (sub_1BF68(v4))
  {
    if (qword_DAA30 != -1)
    {
      swift_once();
    }

    sub_7A124(1, qword_E0CD8, unk_E0CE0, byte_E0CE8, qword_E0CF0);
  }

  if (qword_DA8E8 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  sub_48A4(v6, qword_DE8B8);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_A4B54(28);

  v10 = 0x20646E756F46;
  v11 = 0xE600000000000000;
  v9[4] = sub_1BF68(v5);
  v12._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v12);

  v13._object = 0x80000000000B2290;
  v13._countAndFlagsBits = 0xD000000000000014;
  sub_A46D4(v13);
  sub_810AC(v10, v11, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000025, 0x80000000000B22B0);

  v7 = sub_645E8(v5);

  return v7;
}

id sub_64138(void *a1)
{
  v1 = [a1 intentResponse];
  if (v1)
  {
    v2 = v1;
    sub_5CDC(v1, &selRef_typeName);
    if (v3)
    {
      v4 = sub_A45C4();
    }

    else
    {
      v4 = 0;
    }

    v7 = sub_6611C(v2);
    if (v8 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v10 = v7;
      v11 = v8;
      isa = sub_A2DC4().super.isa;
      sub_65DDC(v10, v11);
    }

    v6 = INIntentResponseCreate();
  }

  else
  {
    if (qword_DA8E8 != -1)
    {
      swift_once();
    }

    v5 = sub_A43D4();
    sub_48A4(v5, qword_DE8B8);
    sub_81094(0xD000000000000059, 0x80000000000B2410, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000029, 0x80000000000B2470);
    return 0;
  }

  return v6;
}

uint64_t sub_642A8(id *a1, uint64_t a2)
{
  v33 = a2;
  v4 = sub_A3004();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4BF0(&qword_DD220, qword_A9B20);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = sub_A2EA4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*a1 temporalEventTrigger];
  if (!v20)
  {
    sub_A924(v14, 1, 1, v15);
LABEL_7:
    sub_37774(v14);
    v25 = 0;
    return v25 & 1;
  }

  v21 = v20;
  v34 = v2;
  v22 = [v20 dateComponentsRange];

  v23 = [v22 startDate];
  if (v23)
  {
    sub_A2E74();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  sub_A924(v12, v24, 1, v15);
  sub_3FAE8(v12, v14, &qword_DD220, qword_A9B20);
  if (sub_CF2C(v14, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  (*(v16 + 32))(v19, v14, v15);
  if (sub_4CAE4())
  {
    sub_A2FD4();
    v26 = sub_A2F54();
    (*(v31 + 8))(v7, v32);
    v27 = v26 ^ 1;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_A2E14();
  (*(v16 + 8))(v19, v15);
  v25 = v28 & v27;
  return v25 & 1;
}

uint64_t sub_645E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_A4C94();
    if (v4)
    {
      v5 = v4;
      v2 = sub_55C7C(v4, 0);

      sub_29854((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v2 = _swiftEmptyArrayStorage;
    goto LABEL_3;
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFF8);

LABEL_3:
  v8 = v2;
  sub_64FCC(&v8);
  return v8;
}

uint64_t sub_646B4(id *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v5 = sub_A3004();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4BF0(&qword_DD220, qword_A9B20);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = sub_A2EA4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [*a1 temporalEventTrigger];
  if (!v21)
  {
    sub_A924(v15, 1, 1, v16);
LABEL_7:
    sub_37774(v15);
    v26 = 0;
    return v26 & 1;
  }

  v22 = v21;
  v33 = v3;
  v23 = [v21 dateComponentsRange];

  v24 = [v23 startDate];
  if (v24)
  {
    sub_A2E74();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_A924(v13, v25, 1, v16);
  sub_3FAE8(v13, v15, &qword_DD220, qword_A9B20);
  if (sub_CF2C(v15, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  (*(v17 + 32))(v20, v15, v16);
  if (sub_4CAE4() & 1) != 0 && (sub_A2FD4(), v27 = sub_A2F54(), (*(v29 + 8))(v8, v30), (v27))
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_4FBDC(v31, v32);
  }

  (*(v17 + 8))(v20, v16);
  return v26 & 1;
}

uint64_t sub_649F0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 priority];
  if (v4 == [v3 priority])
  {
    if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
    {
      v5 = sub_4CAE4() ^ 1;
    }

    else
    {
      v5 = sub_4CD28(v3) == -1;
    }
  }

  else
  {
    v5 = [v2 priority] == &dword_0 + 2 && objc_msgSend(v3, "priority") != &dword_0 + 2;
  }

  return v5 & 1;
}

uint64_t sub_64AC8(char a1)
{
  sub_A4B54(17);

  v2 = 0xEF65736E6F707365;
  v3._countAndFlagsBits = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      break;
    case 2:
      v3._countAndFlagsBits = 0xD000000000000010;
      v2 = 0x80000000000AD1A0;
      break;
    case 3:
      sub_6659C();
      v3._countAndFlagsBits = v5 | 6;
      break;
    default:
      sub_6659C();
      v3._countAndFlagsBits = v4 | 3;
      break;
  }

  v3._object = v2;
  sub_A46D4(v3);

  return 0x7265646E696D6552;
}

unint64_t sub_64BE4(char a1)
{
  result = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_64C98(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFA50;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_64D08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_64C98(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_64D38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_64BE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_64D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_A2EA4();
  isa = 0;
  if (sub_CF2C(a1, 1, v10) != 1)
  {
    isa = sub_A2DF4().super.isa;
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  if (sub_CF2C(a2, 1, v10) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_A2DF4().super.isa;
    (*(*(v10 - 8) + 8))(a2, v10);
  }

  v13 = sub_A3004();
  v14 = 0;
  if (sub_CF2C(a3, 1, v13) != 1)
  {
    v14 = sub_A2F94().super.isa;
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  v15 = sub_A3044();
  v16 = 0;
  if (sub_CF2C(a4, 1, v15) != 1)
  {
    v16 = sub_A3034().super.isa;
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  v17 = [v5 initWithStartDate:isa endDate:v12 onCalendar:v14 inTimeZone:v16];

  return v17;
}

BOOL sub_64F80(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_64FCC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29DE8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_65048(v6);
  return sub_A4BC4();
}

void sub_65048(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_A4E14(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_2734C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_652A4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_65128(0, v3, 1, a1);
  }
}

void sub_65128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = a3;
  v5 = *a4;
  v6 = *a4 + 8 * a3 - 8;
  v7 = a1 - a3;
  while (2)
  {
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v20 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = [v11 priority];
      if (v13 == [v12 priority])
      {
        if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
        {
          v14 = sub_4CAE4();

          if (v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = sub_4CD28(v12);

          if (v16 != -1)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_13;
      }

      if ([v11 priority] != &dword_0 + 2)
      {
        break;
      }

      v15 = [v12 priority];

      if (v15 == &dword_0 + 2)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (!v5)
      {
        __break(1u);
        return;
      }

      v17 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v17;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    ++v4;
    v6 = v20 + 8;
    --v7;
    if (v4 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_652A4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_109;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_3:
  v8 = v6 + 1;
  if (v6 + 1 >= v5)
  {
    v17 = v6 + 1;
  }

  else
  {
    v101 = v5;
    v9 = *a3;
    v106 = *(*a3 + 8 * v8);
    v105 = *(v9 + 8 * v6);
    v10 = v105;
    v11 = v106;
    v4 = v10;
    v12 = sub_649F0(&v106, &v105);
    if (v104)
    {

      return;
    }

    v13 = v12;
    v95 = v7;

    v14 = v9 + 8 * v6;
    v15 = 8 * v6;
    v16 = (v14 + 16);
    v17 = v101;
    while (v8 + 1 < v17)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v20 = v18;
      v4 = [v19 priority];
      if (v4 == [v20 priority])
      {
        if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
        {
          v4 = sub_4CAE4();

          v21 = v4 ^ 1;
        }

        else
        {
          v4 = sub_4CD28(v20);

          v21 = v4 == -1;
        }

        v17 = v101;
        if ((v13 ^ v21))
        {
          v17 = v8 + 1;
          break;
        }
      }

      else if ([v19 priority] == &dword_0 + 2)
      {
        v4 = [v20 priority];

        v17 = v101;
        if (((v13 ^ (v4 == 2)) & 1) == 0)
        {
          v17 = v8 + 1;
          break;
        }
      }

      else
      {

        v17 = v101;
        if (v13)
        {
          v17 = v8 + 1;
          v7 = v95;
          goto LABEL_22;
        }
      }

      ++v16;
      ++v8;
    }

    v7 = v95;
    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_22:
    if (v17 < v6)
    {
      goto LABEL_142;
    }

    if (v6 < v17)
    {
      v22 = 8 * v17 - 8;
      v23 = v17;
      v24 = v6;
      do
      {
        if (v24 != --v23)
        {
          v25 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v26 = *(v25 + v15);
          *(v25 + v15) = *(v25 + v22);
          *(v25 + v22) = v26;
        }

        ++v24;
        v22 -= 8;
        v15 += 8;
      }

      while (v24 < v23);
    }
  }

LABEL_29:
  v27 = a3[1];
  if (v17 >= v27)
  {
    goto LABEL_37;
  }

  if (__OFSUB__(v17, v6))
  {
    goto LABEL_141;
  }

  if (v17 - v6 >= a4)
  {
    goto LABEL_37;
  }

  v28 = v6 + a4;
  if (__OFADD__(v6, a4))
  {
    goto LABEL_143;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v6)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    v7 = sub_29650(v7);
LABEL_111:
    v85 = v7;
    v86 = (v7 + 16);
    for (i = *(v7 + 2); ; *v86 = i)
    {
      v7 = (i - 2);
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_148;
      }

      v88 = &v85[16 * i];
      v89 = *v88;
      v90 = &v86[2 * i];
      v91 = *(v90 + 1);
      sub_65A0C((*a3 + 8 * *v88), (*a3 + 8 * *v90), (*a3 + 8 * v91), v4);
      if (v104)
      {
        break;
      }

      if (v91 < v89)
      {
        goto LABEL_136;
      }

      if (v7 >= *v86)
      {
        goto LABEL_137;
      }

      *v88 = v89;
      *(v88 + 1) = v91;
      v92 = *v86 - i;
      if (*v86 < i)
      {
        goto LABEL_138;
      }

      i = *v86 - 1;
      sub_29664(v90 + 16, v92, v90);
    }

LABEL_119:

    return;
  }

  if (v17 == v28)
  {
LABEL_37:
    v29 = v17;
    goto LABEL_38;
  }

  v94 = v6;
  v96 = v7;
  v71 = *a3;
  v72 = *a3 + 8 * v17 - 8;
  v73 = v6 - v17;
  v99 = v28;
LABEL_90:
  v103 = v17;
  v74 = *(v71 + 8 * v17);
  v75 = v73;
  v76 = v72;
  while (1)
  {
    v77 = *v76;
    v78 = v74;
    v79 = v77;
    v4 = [v78 priority];
    if (v4 == [v79 priority])
    {
      if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
      {
        v4 = sub_4CAE4();

        if (v4)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v4 = sub_4CD28(v79);

        if (v4 != -1)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      if ([v78 priority] != &dword_0 + 2)
      {

LABEL_105:
        v17 = v103 + 1;
        v72 += 8;
        --v73;
        v29 = v99;
        if (v103 + 1 != v99)
        {
          goto LABEL_90;
        }

        v6 = v94;
        v7 = v96;
LABEL_38:
        if (v29 < v6)
        {
          goto LABEL_140;
        }

        v98 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = *(v7 + 2);
          sub_551BC();
          v7 = v83;
        }

        v30 = *(v7 + 2);
        v31 = v30 + 1;
        v32 = v98;
        if (v30 >= *(v7 + 3) >> 1)
        {
          sub_551BC();
          v32 = v98;
          v7 = v84;
        }

        *(v7 + 2) = v31;
        v33 = v7 + 32;
        v34 = &v7[16 * v30 + 32];
        *v34 = v6;
        *(v34 + 1) = v32;
        v102 = *a1;
        if (!*a1)
        {
          goto LABEL_150;
        }

        if (v30)
        {
          while (2)
          {
            v35 = v31 - 1;
            v36 = &v33[16 * v31 - 16];
            v37 = &v7[16 * v31];
            if (v31 >= 4)
            {
              v42 = &v33[16 * v31];
              v43 = *(v42 - 8);
              v44 = *(v42 - 7);
              v48 = __OFSUB__(v44, v43);
              v45 = v44 - v43;
              if (v48)
              {
                goto LABEL_125;
              }

              v47 = *(v42 - 6);
              v46 = *(v42 - 5);
              v48 = __OFSUB__(v46, v47);
              v40 = v46 - v47;
              v41 = v48;
              if (v48)
              {
                goto LABEL_126;
              }

              v49 = *(v37 + 1);
              v50 = v49 - *v37;
              if (__OFSUB__(v49, *v37))
              {
                goto LABEL_128;
              }

              v48 = __OFADD__(v40, v50);
              v51 = v40 + v50;
              if (v48)
              {
                goto LABEL_131;
              }

              if (v51 >= v45)
              {
                v65 = *v36;
                v64 = *(v36 + 1);
                v48 = __OFSUB__(v64, v65);
                v66 = v64 - v65;
                if (v48)
                {
                  goto LABEL_139;
                }

                if (v40 < v66)
                {
                  v35 = v31 - 2;
                }
              }

              else
              {
LABEL_58:
                if (v41)
                {
                  goto LABEL_127;
                }

                v53 = *v37;
                v52 = *(v37 + 1);
                v54 = __OFSUB__(v52, v53);
                v55 = v52 - v53;
                v56 = v54;
                if (v54)
                {
                  goto LABEL_130;
                }

                v57 = *(v36 + 1);
                v58 = v57 - *v36;
                if (__OFSUB__(v57, *v36))
                {
                  goto LABEL_133;
                }

                if (__OFADD__(v55, v58))
                {
                  goto LABEL_135;
                }

                if (v55 + v58 < v40)
                {
                  goto LABEL_73;
                }

                if (v40 < v58)
                {
                  v35 = v31 - 2;
                }
              }
            }

            else
            {
              if (v31 == 3)
              {
                v38 = *(v7 + 4);
                v39 = *(v7 + 5);
                v48 = __OFSUB__(v39, v38);
                v40 = v39 - v38;
                v41 = v48;
                goto LABEL_58;
              }

              if (v31 < 2)
              {
                goto LABEL_129;
              }

              v60 = *v37;
              v59 = *(v37 + 1);
              v48 = __OFSUB__(v59, v60);
              v55 = v59 - v60;
              v56 = v48;
LABEL_73:
              if (v56)
              {
                goto LABEL_132;
              }

              v62 = *v36;
              v61 = *(v36 + 1);
              v48 = __OFSUB__(v61, v62);
              v63 = v61 - v62;
              if (v48)
              {
                goto LABEL_134;
              }

              if (v63 < v55)
              {
                break;
              }
            }

            if (v35 - 1 >= v31)
            {
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
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
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            if (!*a3)
            {
              goto LABEL_147;
            }

            v4 = v7;
            v67 = &v33[16 * v35 - 16];
            v7 = *v67;
            v68 = &v33[16 * v35];
            v69 = *(v68 + 1);
            sub_65A0C((*a3 + 8 * *v67), (*a3 + 8 * *v68), (*a3 + 8 * v69), v102);
            if (v104)
            {
              goto LABEL_119;
            }

            if (v69 < v7)
            {
              goto LABEL_122;
            }

            v70 = *(v4 + 16);
            if (v35 > v70)
            {
              goto LABEL_123;
            }

            *v67 = v7;
            *(v67 + 1) = v69;
            if (v35 >= v70)
            {
              goto LABEL_124;
            }

            v31 = v70 - 1;
            sub_29664(v68 + 16, v70 - 1 - v35, &v33[16 * v35]);
            v7 = v4;
            *(v4 + 16) = v70 - 1;
            if (v70 <= 2)
            {
              break;
            }

            continue;
          }
        }

        v6 = v98;
        v5 = a3[1];
        if (v98 >= v5)
        {
LABEL_109:
          v4 = *a1;
          if (!*a1)
          {
            goto LABEL_151;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_111;
          }

          goto LABEL_145;
        }

        goto LABEL_3;
      }

      v4 = [v79 priority];

      if (v4 == 2)
      {
        goto LABEL_105;
      }
    }

    if (!v71)
    {
      break;
    }

    v80 = *v76;
    v74 = *(v76 + 8);
    *v76 = v74;
    *(v76 + 8) = v80;
    v76 -= 8;
    if (__CFADD__(v75++, 1))
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_65A0C(void **a1, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_55C74(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v23 = v7;
        goto LABEL_45;
      }

      v12 = v5;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 priority];
      if (v16 == [v15 priority])
      {
        if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
        {
          v17 = sub_4CAE4();

          if (v17)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v19 = sub_4CD28(v15);

          if (v19 != -1)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        if ([v14 priority] != &dword_0 + 2)
        {

LABEL_17:
          v20 = v4;
          v21 = v7 == v4++;
          goto LABEL_19;
        }

        v18 = [v15 priority];

        if (v18 == &dword_0 + 2)
        {
          goto LABEL_17;
        }
      }

      v20 = v6;
      v21 = v7 == v6++;
LABEL_19:
      v5 = v12;
      if (!v21)
      {
        *v7 = *v20;
      }

      ++v7;
    }
  }

  sub_55C74(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v22 = &unk_D9000;
  v38 = v7;
LABEL_23:
  v23 = v6;
  v39 = v6 - 1;
  v24 = v5 - 1;
  while (v10 > v4 && v23 > v7)
  {
    v26 = v24;
    v27 = v22;
    v28 = *v39;
    v29 = *(v10 - 1);
    v30 = v28;
    v31 = [v29 v27[194]];
    if (v31 == [v30 v27[194]])
    {
      if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
      {
        v32 = sub_4CAE4();

        if ((v32 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v34 = sub_4CD28(v30);

        if (v34 == -1)
        {
LABEL_42:
          v5 = v26;
          v21 = v26 + 1 == v23;
          v7 = v38;
          v6 = v39;
          v22 = &unk_D9000;
          if (!v21)
          {
            *v5 = *v39;
          }

          goto LABEL_23;
        }
      }
    }

    else if ([v29 v27[194]] == &dword_0 + 2)
    {
      v33 = [v30 v27[194]];

      if (v33 != &dword_0 + 2)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    if (v10 != v26 + 1)
    {
      *v26 = *(v10 - 1);
    }

    v24 = v26 - 1;
    --v10;
    v7 = v38;
    v22 = &unk_D9000;
  }

LABEL_45:
  v35 = v10 - v4;
  if (v23 != v4 || v23 >= &v4[v35])
  {
    memmove(v23, v4, 8 * v35);
  }

  return 1;
}

uint64_t sub_65D60(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_A2DD4();

  return v3;
}

uint64_t sub_65DDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2E38C(a1, a2);
  }

  return a1;
}

uint64_t sub_65DF0()
{
  v1 = sub_A2EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  sub_761C((v0 + v6));
  sub_761C((v0 + v7));

  return _swift_deallocObject(v0, v7 + 40, v3 | 7);
}

uint64_t sub_65EB8(uint64_t a1)
{
  v3 = v2;
  v5 = sub_A2EA4();
  sub_5940(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_A648;

  return sub_62998(a1, v1 + v7, v12, v13, v1 + v10, v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_65FF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v5 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_A648;

  return sub_3BDE8();
}

unint64_t sub_660C8()
{
  result = qword_DE8F0;
  if (!qword_DE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8F0);
  }

  return result;
}

uint64_t sub_6611C(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_A2DD4();

  return v3;
}

uint64_t sub_66180(void *a1)
{
  v1 = [a1 tasks];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_29D54(0, &qword_DC1C8, INTask_ptr);
  v3 = sub_A4764();

  return v3;
}

void sub_661F0(uint64_t a1, void *a2)
{
  sub_29D54(0, &qword_DC1C8, INTask_ptr);
  isa = sub_A4754().super.isa;
  [a2 setTasks:isa];
}

uint64_t sub_6626C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_662B8(uint64_t a1)
{
  v2 = type metadata accessor for CalendarEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_66314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for RemindersError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x66444);
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

unint64_t sub_66484()
{
  result = qword_DE908;
  if (!qword_DE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE908);
  }

  return result;
}

uint64_t sub_664D8()
{

  return swift_once();
}

uint64_t sub_66508()
{

  return swift_once();
}

uint64_t sub_66544(uint64_t a1)
{

  return sub_A924(a1, 0, 1, v1);
}

uint64_t sub_665B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{

  return sub_7A58C(a1, a2, a3, a4);
}

uint64_t sub_665D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_A924(a1, 1, 1, a4);
}

uint64_t sub_665F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    return 0;
  }

  else
  {
    return dword_AA480[a1];
  }
}

uint64_t sub_66634()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28WeatherConditionsInterpreter_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for WeatherConditionsInterpreter()
{
  result = qword_DE940;
  if (!qword_DE940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_66724()
{
  result = sub_A43D4();
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

uint64_t sub_667B4()
{
  if (qword_DA888 != -1)
  {
    swift_once();
  }
}

uint64_t sub_66858(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  type metadata accessor for DailyBriefingNLv3Intent();
  sub_66DE8(&qword_DEAD0);
  sub_66E0C();
  return v5;
}

unint64_t sub_668EC()
{
  if (qword_DA860 != -1)
  {
    swift_once();
  }

  type metadata accessor for DailyBriefingNLv3Intent();
  sub_66DE8(&qword_DEAD0);
  sub_66E0C();
  return 0x600000203000200uLL >> (8 * v1);
}

uint64_t sub_6698C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent;
  v2 = sub_A4004();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DailyBriefingNLv3Intent()
{
  result = qword_DEA00;
  if (!qword_DEA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_66A7C()
{
  result = sub_A4004();
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

uint64_t sub_66B0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent;
  v5 = sub_A4004();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_66C30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t sub_66C94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t sub_66CE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.description.getter(a1, WitnessTable);
}

uint64_t sub_66DA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DailyBriefingNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_66DE8(unint64_t *a1)
{

  return sub_66DA4(a1);
}

uint64_t sub_66E0C()
{

  return sub_A3C14();
}

void sub_66E30(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_66E9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_66EC0, 0, 0);
}

uint64_t sub_66EC0()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_66FC4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD00000000000001BLL, 0x80000000000B2560, sub_6797C, v2, &type metadata for Bool);
}

uint64_t sub_66FC4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_670DC, 0, 0);
}

uint64_t sub_670F4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a3;
  v40 = a1;
  v6 = sub_4BF0(&qword_DEBC0, &unk_AA620);
  v41 = *(v6 - 8);
  v42 = v6;
  v39 = *(v41 + 64);
  __chkstk_darwin(v6);
  v44 = &v33 - v7;
  v38 = sub_A43A4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v38);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  if (qword_DA990 != -1)
  {
    swift_once();
  }

  v13 = qword_E0AB8;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  sub_810C4(0xD000000000000010, 0x80000000000B2580, 0xD000000000000031, 0x80000000000B25A0, 0xD00000000000001BLL, 0x80000000000B2560);
  v14 = *(a2 + 16);
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_A6E80;
  *(v15 + 32) = a4;
  sub_247E0();
  v37 = v14;
  v35 = a4;
  isa = sub_A4754().super.isa;

  v16 = v8;
  v17 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v38;
  (*(v8 + 16))(v17, v12, v38);
  v19 = v41;
  v20 = v42;
  (*(v41 + 16))(v44, v40, v42);
  v21 = *(v16 + 80);
  v34 = a2;
  v22 = (v21 + 16) & ~v21;
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v19 + 80) + v23 + 8) & ~*(v19 + 80);
  v40 = v12;
  v25 = (v39 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v16 + 32))(v26 + v22, v17, v18);
  *(v26 + v23) = v34;
  (*(v19 + 32))(v26 + v24, v44, v20);
  v27 = v35;
  *(v26 + v25) = v35;
  aBlock[4] = sub_67AEC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_66E30;
  aBlock[3] = &unk_D2290;
  v28 = _Block_copy(aBlock);
  v29 = v27;

  v31 = isa;
  v30 = v37;
  [v37 ETAsFromLocation:v43 toEntries:isa completion:v28];
  _Block_release(v28);

  return (*(v16 + 8))(v40, v18);
}

uint64_t sub_67568(uint64_t a1, uint64_t a2, int a3, int a4, id a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_DA990 != -1)
    {
      swift_once();
    }

    sub_7A58C(a2, 0xD000000000000014, 0x80000000000B2600, 0x9000u);
    sub_A4B54(34);

    swift_getErrorValue();
    v11._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v11);

    sub_81094(0xD000000000000020, 0x80000000000B2620, 0xD000000000000031, 0x80000000000B25A0, 0xD00000000000001BLL, 0x80000000000B2560);

    sub_4BF0(&qword_DEBC0, &unk_AA620);
    sub_A47E4();
  }

  else
  {
    v7 = [a5 ETAForKey:@"MapsSuggestionsETAKey"];
    if (v7)
    {
      v8 = v7;
      [v7 seconds];
      v10 = v9;

      if (qword_DA990 != -1)
      {
        swift_once();
      }

      sub_7A58C(a2, v10, 0, 0x8000u);
      sub_A4B54(25);
      v12._countAndFlagsBits = 0xD000000000000017;
      v12._object = 0x80000000000B25E0;
      sub_A46D4(v12);
      sub_A48A4();
      sub_810C4(0, 0xE000000000000000, 0xD000000000000031, 0x80000000000B25A0, 0xD00000000000001BLL, 0x80000000000B2560);
    }

    sub_4BF0(&qword_DEBC0, &unk_AA620);
    return sub_A47E4();
  }
}

uint64_t sub_67884()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin19ETARequesterService_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ETARequesterService()
{
  result = qword_DEB10;
  if (!qword_DEB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_67988()
{
  v1 = sub_A43A4();
  sub_591C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_4BF0(&qword_DEBC0, &unk_AA620);
  sub_591C(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v1);
  v17 = *(v0 + v7);

  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v16 + 8, v15 | 7);
}

uint64_t sub_67AEC(uint64_t a1)
{
  v3 = *(sub_A43A4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_4BF0(&qword_DEBC0, &unk_AA620) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_67568(a1, v1 + v4, v8, v1 + v7, v9);
}

uint64_t sub_67C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_67C20(uint64_t a1)
{
  v2 = sub_A2FE4();
  v3 = sub_591C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_A3004();
  v11 = sub_591C(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A2FD4();
  (*(v5 + 104))(v9, enum case for Calendar.Component.hour(_:), v2);
  v18 = sub_A2FF4();
  v19 = sub_A2EA4();
  (*(*(v19 - 8) + 8))(a1, v19);
  (*(v5 + 8))(v9, v2);
  (*(v13 + 8))(v17, v10);
  if (v18 - 24 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v18 <= 0xB)
  {
    return 0;
  }

  else
  {
    return v20;
  }
}

id sub_67DF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:0 content:0 itemType:a1 status:a2 location:0 locationSearchType:0 dateTime:a3 dateSearchType:a4 temporalEventTriggerTypes:a5 taskPriority:0 notebookItemIdentifier:0];
  [v8 _setMetadata:a6];

  return v8;
}

id sub_67EAC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_A2ED4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_A2EC4();
  v11 = sub_A2EB4();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  sub_13230(v11, v13, v10);
  if (a3)
  {
    v14 = sub_A45C4();
  }

  else
  {
    v14 = 0;
  }

  [v10 setAppId:v14];

  sub_68158();
  v15 = a1;
  v16 = sub_68058(v15);
  [v10 setIntent:v16];

  return v10;
}

id sub_68058(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_65D60([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    isa = sub_A2DC4().super.isa;
    sub_65DDC(v6, v7);
  }

  [v2 setData:isa];

  v8 = [a1 typeName];
  v9 = sub_A45F4();
  v11 = v10;

  sub_65DD0(v9, v11, v2);
  return v2;
}

unint64_t sub_68158()
{
  result = qword_DEBC8;
  if (!qword_DEBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEBC8);
  }

  return result;
}

uint64_t sub_6819C()
{
  sub_5950();
  v0[7] = v1;
  v0[8] = v2;
  v3 = sub_A2EA4();
  v0[9] = v3;
  sub_5940(v3);
  v0[10] = v4;
  v0[11] = *(v5 + 64);
  v0[12] = swift_task_alloc();
  v6 = sub_A43A4();
  v0[13] = v6;
  sub_5940(v6);
  v0[14] = v7;
  v0[15] = *(v8 + 64);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_682BC()
{
  if (qword_DA908 != -1)
  {
    sub_69D14();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v18 = *(v0 + 104);
  v19 = *(v0 + 128);
  v15 = *(v0 + 96);
  v3 = *(v0 + 80);
  v20 = *(v0 + 88);
  v21 = *(v0 + 120);
  v4 = *(v0 + 72);
  v16 = v4;
  v17 = *(v0 + 64);
  v5 = *(v0 + 56);
  v6 = *(&xmmword_DEBE8 + 1);
  *(v0 + 144) = xmmword_DEBE8;
  *(v0 + 152) = v6;
  *(v0 + 200) = byte_DEBF8;
  v7 = qword_DEC00;
  *(v0 + 160) = qword_DEC00;
  v8 = v7;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  (*(v3 + 16))(v15, v5, v4);
  sub_A760(v17, v0 + 16);
  (*(v2 + 16))(v19, v1, v18);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v20 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v2 + 80) + v10 + 40) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v0 + 168) = v12;
  (*(v3 + 32))(v12 + v9, v15, v16);
  sub_AA3C((v0 + 16), v12 + v10);
  (*(v2 + 32))(v12 + v11, v19, v18);
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_68534;

  return sub_3B2C8(&unk_AA640, v12, 0xD000000000000023, 0x80000000000B2650, 6.0);
}

uint64_t sub_68534(uint64_t a1, char a2)
{
  sub_AAA8();
  v7 = v6;
  sub_25540();
  *v8 = v7;
  v10 = *(v9 + 176);
  v11 = *v3;
  sub_25540();
  *v12 = v11;
  *(v7 + 184) = v2;

  if (!v2)
  {
    v13 = *(v7 + 168);

    *(v7 + 201) = a2;
    *(v7 + 192) = a1;
  }

  sub_40210();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_68664()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 201);
  v3 = sub_69D54();
  v4(v3);

  sub_255F0();

  return v5(v1, v2 & 1);
}

uint64_t sub_68700()
{
  v1 = *(v0 + 168);

  if (qword_DA900 != -1)
  {
    sub_69D34();
  }

  v2 = *(v0 + 184);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 200);
  v8 = sub_A43D4();
  sub_48A4(v8, qword_DEBD0);
  sub_81094(0xD00000000000002FLL, 0x80000000000B2680, 0xD000000000000038, 0x80000000000B26B0, 0xD000000000000023, 0x80000000000B2650);
  sub_7A58C(v6, 0xD000000000000039, 0x80000000000B26F0, 0x9000u);
  sub_68F24();
  v9 = sub_394DC();
  *v10 = 2;

  v11 = sub_69D54();
  v12(v11);

  sub_255F0();

  return v13(v9, 1);
}

uint64_t sub_68898()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_DEBD0);
  v1 = sub_48A4(v0, qword_DEBD0);
  if (qword_DA9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_68960()
{
  if (qword_DA978 != -1)
  {
    swift_once();
  }

  v1 = qword_E0A58;
  xmmword_DEBE8 = xmmword_E0A40;
  byte_DEBF8 = byte_E0A50;
  qword_DEC00 = qword_E0A58;

  return v1;
}

uint64_t sub_689DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_68A8C;

  return sub_68F78(a2, a3, a4);
}

uint64_t sub_68A8C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_68B80()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t sub_68BAC()
{
  v1 = sub_A2EA4();
  sub_591C(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_A43A4();
  sub_591C(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 40) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  sub_761C((v0 + v7));
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_68CF0(uint64_t a1)
{
  v3 = v2;
  v5 = sub_A2EA4();
  sub_5940(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_A43A4() - 8);
  v11 = (v9 + *(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_68E3C;

  return sub_689DC(a1, v1 + v7, v1 + v9, v1 + v11);
}

uint64_t sub_68E3C()
{
  sub_5950();
  sub_AAA8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_25540();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

unint64_t sub_68F24()
{
  result = qword_DEC08;
  if (!qword_DEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEC08);
  }

  return result;
}

uint64_t sub_68F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_A3004();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_A2EA4();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_690A4, 0, 0);
}

uint64_t sub_690A4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[2];
  v8 = [objc_allocWithZone(SACalendarEventSearch) init];
  v0[12] = v8;
  sub_A2FD4();
  sub_A2F44();
  (*(v5 + 8))(v4, v6);
  isa = sub_A2DF4().super.isa;
  v10 = *(v3 + 8);
  v10(v1, v2);
  [v8 setStartDate:isa];

  v11 = (sub_79D74() - 6);
  v12 = v0[10];
  v13 = v0[2];
  if (v11 >= 3)
  {
    sub_4F714(v13, v12);
  }

  else
  {
    sub_4F704(v13, v12);
  }

  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[3];
  v17 = sub_A2DF4().super.isa;
  v10(v14, v15);
  [v8 setEndDate:v17];

  v18 = v16[3];
  v19 = v16[4];
  sub_7584(v16, v18);
  v20 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v21 = swift_task_alloc();
  v0[13] = v21;
  v22 = sub_29D54(0, &qword_DEC10, SABaseCommand_ptr);
  *v21 = v0;
  v21[1] = sub_69298;

  return AceServiceInvokerAsync.submit<A>(_:)(v8, v18, v22, v19);
}

uint64_t sub_69298()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v3 = v2;
  v5 = *(v4 + 104);
  *v3 = *v1;
  *(v2 + 112) = v6;
  *(v2 + 120) = v0;

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

id sub_6939C()
{
  result = [*(v0 + 112) dictionary];
  if (result)
  {
    result = sub_A4514();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_69754()
{
  if (qword_DA900 != -1)
  {
    sub_69D34();
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_DEBD0);
  sub_81094(0xD000000000000020, 0x80000000000B2730, 0xD000000000000038, 0x80000000000B26B0, 0xD00000000000002FLL, 0x80000000000B2760);
  if (qword_DA908 != -1)
  {
    sub_69D14();
  }

  v2 = v0[15];
  v3 = v0[12];
  sub_7A58C(v0[4], 0xD00000000000003DLL, 0x80000000000B2790, 0x9000u);
  sub_68F24();
  v4 = sub_394DC();
  *v5 = 0;

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  sub_255F0();

  return v9(v4, 1);
}

uint64_t sub_698DC(char a1)
{
  sub_A4B54(16);

  strcpy(v9, "CalendarError.");
  HIBYTE(v9[1]) = -18;
  if (a1)
  {
    sub_69D6C();
    v3._countAndFlagsBits = sub_69D90(v2);
    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v3._countAndFlagsBits = 0xD000000000000012;
    v7 = 0x80000000000AD1E0;
  }

  v3._object = v7;
  sub_A46D4(v3);

  return v9[0];
}

unint64_t sub_69994(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  sub_69D6C();
  return sub_69D90(v1);
}

uint64_t sub_699F0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFAD0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_69A60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_699F0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_69A90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_69994(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_69AC4(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_A4504().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithDictionary:v2.super.isa];

  return v3;
}

uint64_t sub_69B44(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_29D54(0, &qword_DC9F0, SACalendarEvent_ptr);
  v3 = sub_A4764();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for CalendarError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x69C80);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_69CC0()
{
  result = qword_DEC18;
  if (!qword_DEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEC18);
  }

  return result;
}

uint64_t sub_69D14()
{

  return swift_once();
}

uint64_t sub_69D34()
{

  return swift_once();
}

uint64_t sub_69D54()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[12];
  v4 = *(v0[14] + 8);
  return v0[17];
}

unint64_t sub_69D90@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}