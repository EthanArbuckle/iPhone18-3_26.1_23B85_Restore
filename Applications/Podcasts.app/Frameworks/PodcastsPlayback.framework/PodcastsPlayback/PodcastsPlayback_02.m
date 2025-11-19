uint64_t sub_316F4(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController);
  *(*a2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController) = *a1;
}

id sub_31740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_317B4()
{
  sub_327D8();
  if (v1 <= 0x3F)
  {
    v18 = *(v0 - 8) + 64;
    sub_32828(319, &qword_7DD50, &qword_7DBC8, &qword_5CEA0);
    if (v3 <= 0x3F)
    {
      v19 = *(v2 - 8) + 64;
      sub_32828(319, &qword_7DD58, &qword_7DBD0, &qword_5CEA8);
      if (v5 <= 0x3F)
      {
        v20 = *(v4 - 8) + 64;
        sub_32828(319, &qword_7DD60, &qword_7DBD8, &qword_5CEB0);
        if (v7 <= 0x3F)
        {
          v21 = *(v6 - 8) + 64;
          sub_32828(319, &qword_7DD68, &qword_7DBE0, &qword_5CEB8);
          if (v9 <= 0x3F)
          {
            v22 = *(v8 - 8) + 64;
            sub_32828(319, &qword_7DD70, &qword_7DBE8, &unk_5CEC0);
            if (v11 <= 0x3F)
            {
              v23 = *(v10 - 8) + 64;
              sub_32828(319, &qword_7DD78, &qword_7DBF0, &unk_5E4A0);
              if (v13 <= 0x3F)
              {
                v24 = *(v12 - 8) + 64;
                sub_32828(319, &unk_7DD80, &qword_7DB10, &qword_5CE20);
                if (v15 <= 0x3F)
                {
                  v25 = *(v14 - 8) + 64;
                  v16 = sub_59C24();
                  if (v17 <= 0x3F)
                  {
                    v26 = *(v16 - 8) + 64;
                    swift_updateClassMetadata2();
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

uint64_t dispatch thunk of PlaybackController.canPerform(_:)(uint64_t a1)
{
  v4 = *(*v1 + 928);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_32310;

  return v8(a1);
}

uint64_t sub_32310(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *(*v3 + 944);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_32E5C;
  v11.n128_f64[0] = a3;

  return v13(a1, a2, v11);
}

uint64_t dispatch thunk of PlaybackController.performCommand(_:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 952);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_32310;

  return v10(a1, a2);
}

uint64_t dispatch thunk of PlaybackController.performCommands(_:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 960);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_32E5C;

  return v10(a1, a2);
}

void sub_327D8()
{
  if (!qword_7DD48)
  {
    v0 = sub_59E44();
    if (!v1)
    {
      atomic_store(v0, &qword_7DD48);
    }
  }
}

void sub_32828(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_59E44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_32890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_59B64();
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

uint64_t sub_32960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_59B64();
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

unint64_t sub_32A18()
{
  result = sub_59B64();
  if (v1 <= 0x3F)
  {
    result = sub_32A9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_32A9C()
{
  result = qword_7E220;
  if (!qword_7E220)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_7E220);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16PodcastsPlayback0B10ControllerC13ResponseErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_32B24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_32B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_32BD4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackController.PreferredJumpInterval(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PlaybackController.PreferredJumpInterval(uint64_t result, int a2, int a3)
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

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_32D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_15D44;

  return sub_275A0(a1, v4, v5, v6);
}

unint64_t sub_32E84()
{
  v1 = *(v0 + 128);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v2 = *(v0 + 112);
  *(v0 + 136) = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 128);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (*(v0 + 64) == 2)
  {

LABEL_4:
    v4 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for PodcastsPlaybackError.PlayChapterError.noItemPlaying(_:), v4);
    swift_willThrow();
LABEL_21:
    v22 = *(v0 + 8);

    return v22();
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  sub_594E4();
  v11 = v8 + (v10 - v6) * *&v9;
  if (v11 >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v2 chapters];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  sub_63F4();
  v15 = sub_5A294();
  *(v0 + 144) = v15;

  *(v0 + 120) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  sub_3354C();
  if ((sub_5A414() & 1) == 0)
  {

LABEL_19:
    v20 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PodcastsPlaybackError.PlayChapterError.hasNoChapters(_:), v20);
    swift_willThrow();
LABEL_20:

    goto LABEL_21;
  }

  result = sub_6440(v15, fmax(v12, 0.0));
  if (result >> 62)
  {
    v23 = result;
    v24 = sub_5A814();
    result = v23;
    if (v24)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_25:

    v25 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for PodcastsPlaybackError.PlayChapterError.lastChapterAlreadyPlaying(_:), v25);
    swift_willThrow();
    v2 = *(v0 + 136);
    v27 = *(v0 + 144);

    goto LABEL_20;
  }

LABEL_12:
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = sub_5A724();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v17 = *(result + 32);
  }

  *(v0 + 152) = v17;

  *(v0 + 96) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 104) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 72) = xmmword_5D350;
  *(v0 + 88) = 0;
  v18 = swift_task_alloc();
  *(v0 + 160) = v18;
  *v18 = v0;
  v18[1] = sub_332D0;
  v19 = *(v0 + 128);

  return sub_2A8B0(v0 + 72, 0);
}

uint64_t sub_332D0(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_3346C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 72));
    v7 = sub_33400;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_33400()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];
  v4 = v0[19];

  return v3(v4);
}

uint64_t sub_3346C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_334EC()
{
  result = qword_7E3E0;
  if (!qword_7E3E0)
  {
    sub_596F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E3E0);
  }

  return result;
}

unint64_t sub_3354C()
{
  result = qword_7E3E8;
  if (!qword_7E3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7DB10, &qword_5CE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E3E8);
  }

  return result;
}

uint64_t sub_335D0()
{
  v1 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v2 = *(v0 + 72);
  *(v0 + 96) = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (*(v0 + 64) == 2)
  {

LABEL_4:
    v4 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for PodcastsPlaybackError.PlayChapterError.noItemPlaying(_:), v4);
    swift_willThrow();
LABEL_14:
    v22 = *(v0 + 8);

    return v22();
  }

  v6 = *(v0 + 16);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  sub_594E4();
  v11 = v10;
  v12 = [v2 chapters];
  if (!v12)
  {
LABEL_13:
    v20 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PodcastsPlaybackError.PlayChapterError.hasNoChapters(_:), v20);
    swift_willThrow();

    goto LABEL_14;
  }

  v13 = v12;
  sub_63F4();
  v14 = sub_5A294();
  *(v0 + 104) = v14;

  *(v0 + 80) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  sub_3354C();
  if ((sub_5A414() & 1) == 0)
  {

    goto LABEL_13;
  }

  v15 = v8 + (v11 - v6) * *&v9;
  if (v15 >= v7)
  {
    v15 = v7;
  }

  v16 = fmax(v15, 0.0);
  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_33904;
  v18 = *(v0 + 88);

  return sub_33B00(v14, v18, v16);
}

uint64_t sub_33904(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_33A98;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_33A2C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_33A2C()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[16];

  return v3(v4);
}

uint64_t sub_33A98()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[15];
  v4 = v0[1];

  return v4();
}

uint64_t sub_33B00(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 72) = a2;
  *(v3 + 64) = a3;
  *(v3 + 56) = a1;
  return _swift_task_switch(sub_33B28, 0, 0);
}

unint64_t sub_33B28()
{
  result = sub_65E8(*(v0 + 56), *(v0 + 64));
  if (result >> 62)
  {
    v8 = result;
    v2 = sub_5A814();
    result = v8;
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((result & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v4 < *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          v5 = *(result + 8 * v4 + 32);
LABEL_8:
          *(v0 + 80) = v5;

          *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
          *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
          *(v0 + 16) = xmmword_5D360;
          *(v0 + 32) = 0;
          v6 = swift_task_alloc();
          *(v0 + 88) = v6;
          *v6 = v0;
          v6[1] = sub_33D3C;
          v7 = *(v0 + 72);

          return sub_2A8B0(v0 + 16, 0);
        }

        __break(1u);
        return result;
      }

      v5 = sub_5A724();
      goto LABEL_8;
    }
  }

  else
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_596F4();
  sub_334EC();
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, enum case for PodcastsPlaybackError.PlayChapterError.firstChapterAlreadyPlaying(_:), v9);
  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_33D3C(void *a1)
{
  v4 = *(*v2 + 88);
  v5 = *v2;
  v5[12] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_33E90, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v5 + 2);
    v6 = v5[1];
    v7 = v5[10];

    return v6(v7);
  }
}

uint64_t sub_33E90()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_33F10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_33F58(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_33FC0()
{
  result = kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier;
  if (kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier)
  {
    v1 = sub_5A194();
    v3 = v2;
    v7 = &_swiftEmptySetSingleton;
    sub_B5B4(&v6, 2);
    sub_B5B4(&v5, 1);
    result = sub_B5B4(&v4, 0);
    *&xmmword_80BD0 = 0x7374736163646F50;
    *(&xmmword_80BD0 + 1) = 0xE800000000000000;
    qword_80BE0 = v1;
    unk_80BE8 = v3;
    qword_80BF0 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_34074()
{
  if (qword_7CC70 != -1)
  {
    swift_once();
  }

  v3[0] = xmmword_80BD0;
  v3[1] = *&qword_80BE0;
  v4 = qword_80BF0;
  v5 = xmmword_80BD0;
  v6 = *&qword_80BE0;
  v7 = qword_80BF0;
  v0 = objc_allocWithZone(_s27AutomaticResponseDataSourceCMa());
  sub_32DEC(&v5, v2);
  sub_32DEC(&v6, v2);
  sub_34130(&v7, v2);
  result = sub_4A4AC(v3);
  qword_80BF8 = result;
  return result;
}

uint64_t sub_34130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED60, &qword_5D320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s13ConfigurationV12PlayerOptionOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13ConfigurationV12PlayerOptionOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_342F4()
{
  result = qword_7E3F0;
  if (!qword_7E3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7E3F8, qword_5D468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E3F0);
  }

  return result;
}

unint64_t sub_3435C()
{
  result = qword_7E400;
  if (!qword_7E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E400);
  }

  return result;
}

uint64_t PlaybackController.LogController.init(playbackController:)@<X0>(void *a1@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v31 = *(v29 - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin(v29);
  v28 = v25 - v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F460, &qword_5E470);
  v32 = *(v30 - 8);
  v4 = *(v32 + 64);
  __chkstk_darwin(v30);
  v27 = v25 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E408, &qword_5D510);
  v25[0] = *(v26 - 8);
  v6 = *(v25[0] + 64);
  __chkstk_darwin(v26);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB8, &qword_5CE90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E410, &qword_5D518);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v25 - v17;
  *a1 = _swiftEmptyArrayStorage;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  sub_59E04();
  swift_endAccess();
  v25[1] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_5108(&qword_7E418, &qword_7DBB8, &qword_5CE90);
  sub_34A58();
  sub_59F64();
  (*(v10 + 8))(v13, v9);
  sub_5108(&qword_7E438, &qword_7E410, &qword_5D518);
  sub_59F84();
  (*(v15 + 8))(v18, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0);
  sub_59D54();

  v33 = sub_1E850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0);
  sub_59F64();

  sub_5108(&qword_7E440, &qword_7E408, &qword_5D510);
  v19 = v26;
  sub_59F84();
  (*(v25[0] + 8))(v8, v19);
  sub_59D54();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  v20 = v28;
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7E448, &qword_7DB78, &qword_5CE50);
  sub_34F8C();
  v21 = v27;
  v22 = v29;
  sub_59F64();
  (*(v31 + 8))(v20, v22);
  sub_5108(&qword_7E458, &qword_7F460, &qword_5E470);
  v23 = v30;
  sub_59F84();
  (*(v32 + 8))(v21, v23);
  sub_59D54();
}

unint64_t sub_34A58()
{
  result = qword_7E420;
  if (!qword_7E420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7DBC8, &qword_5CEA0);
    sub_35028(&qword_7E428, &qword_7E430, MPModelPodcastEpisode_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E420);
  }

  return result;
}

uint64_t sub_34AF4(id *a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  if (*a1)
  {
    v10 = *a1;
    sub_59CC4();
    v11 = v10;
    v12 = sub_59D04();
    v13 = sub_5A474();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = [v11 title];
      if (v16)
      {
        v27 = v15;
        v17 = v2;
        v18 = v16;
        v19 = sub_5A194();
        v21 = v20;

        v2 = v17;
        v15 = v27;
      }

      else
      {
        v21 = 0xE500000000000000;
        v19 = 0x3E4C494E3CLL;
      }

      v26 = sub_9430(v19, v21, &v28);

      *(v14 + 14) = v26;
      _os_log_impl(&dword_0, v12, v13, "Now playing item changed to: '%{private,mask.hash}s'", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    sub_59CC4();
    v22 = sub_59D04();
    v23 = sub_5A474();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Now playing item is empty", v24, 2u);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_34DCC(unsigned __int8 *a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_59CC4();
  v8 = sub_59D04();
  v9 = sub_5A474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    if (v7)
    {
      v12 = 0x676E6979616C70;
    }

    else
    {
      v12 = 0x646570706F7473;
    }

    v13 = sub_9430(v12, 0xE700000000000000, &v16);

    *(v10 + 4) = v13;
    _os_log_impl(&dword_0, v8, v9, "Is playing state changed to %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_34F8C()
{
  result = qword_7F4A0;
  if (!qword_7F4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7DBF0, &unk_5E4A0);
    sub_35028(&unk_7F4B0, &qword_7E450, MPAVRoute_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7F4A0);
  }

  return result;
}

uint64_t sub_35028(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4FE4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_35078(void **a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_59CC4();
  v8 = v7;
  v9 = sub_59D04();
  v10 = sub_5A474();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    if (v7)
    {
      v13 = [v8 routeName];
      v14 = sub_5A194();
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
      v14 = 0x3E4C494E3CLL;
    }

    v17 = sub_9430(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_0, v9, v10, "Current route changed to %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_35278(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_352C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3530C()
{
  v1 = 0xE90000000000005DLL;
  v2 = [v0 state];
  if (v2 == (&dword_0 + 1))
  {
    v6._countAndFlagsBits = 0x646570706F74535BLL;
  }

  else
  {
    v3 = 0x6E776F6E6B6E555BLL;
    v4 = 0xE800000000000000;
    if (v2 == &dword_4)
    {
      v3 = 0x5D6465737561505BLL;
    }

    else
    {
      v4 = 0xE90000000000005DLL;
    }

    v5 = v2 == (&dword_0 + 2);
    if (v2 == (&dword_0 + 2))
    {
      v6._countAndFlagsBits = 0x676E6979616C505BLL;
    }

    else
    {
      v6._countAndFlagsBits = v3;
    }

    if (!v5)
    {
      v1 = v4;
    }
  }

  v6._object = v1;
  sub_5A1F4(v6);

  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  sub_5A1F4(v12);
  v7 = [v0 debugDescription];
  v8 = sub_5A194();
  v10 = v9;

  v13._countAndFlagsBits = v8;
  v13._object = v10;
  sub_5A1F4(v13);

  return 0;
}

uint64_t sub_35430(uint64_t a1, uint64_t a2)
{
  v3 = sub_59894();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_3B904(&qword_7E548), v9 = sub_5A154(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_3B904(&qword_7E550);
      v17 = sub_5A164();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_35620(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_5A974();
  sub_5A984(v3);
  v5 = sub_5A9A4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_356EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_5A974();
  sub_5A1E4();
  v7 = sub_5A9A4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_5A8E4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t PlaybackController.TransportCommand.request(for:)(id a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v3 >> 61;
  if ((v3 >> 61) <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [a1 tracklist];
        v7 = [v6 playingItem];

        if (v7)
        {
          v8 = [v7 seekCommand];

          if (v8)
          {
            v9 = v2;
            if (v3)
            {
              v9 = v4;
            }

            v10 = [v8 changePositionToElapsedInterval:v9 referenceInterval:?];
            goto LABEL_19;
          }
        }

        return 0;
      }

      v16 = [a1 tracklist];
      v17 = [v16 playingItem];

      if (v17)
      {
        v18 = [v17 playbackRateCommand];

        if (v18)
        {
          LODWORD(v19) = LODWORD(v2);
          v10 = [v18 setPlaybackRate:v19];
          goto LABEL_19;
        }
      }
    }

    else
    {
      v13 = [a1 tracklist];
      v14 = [v13 playingItem];

      if (v14)
      {
        v15 = [v14 seekCommand];

        if (v15)
        {
          v10 = [v15 changePositionToElapsedInterval:v2];
LABEL_19:
          v20 = v10;
          swift_unknownObjectRelease();
          return v20;
        }
      }
    }

    return 0;
  }

  if (v5 == 3)
  {
    type metadata accessor for PlaybackController(0);
    return sub_36064(LOBYTE(v2) & 1, BYTE1(v2) & 1, a1);
  }

  if (v5 == 4)
  {
    type metadata accessor for PlaybackController(0);
    return sub_36440(LOBYTE(v2) & 1, BYTE1(v2) & 1, a1);
  }

  if (v3 == 0xA000000000000000 && (*&v4 | *&v2) == 0)
  {
    return [a1 play];
  }

  if (*&v2 == 1 && v3 == 0xA000000000000000 && v4 == 0.0)
  {
    return [a1 pause];
  }

  if (*&v2 != 2 || v3 != 0xA000000000000000 || v4 != 0.0)
  {
    if (*&v2 == 3 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v22 = [a1 tracklist];
      v23 = [v22 playingItem];

      if (!v23)
      {
        return 0;
      }

      v24 = [v23 seekCommand];

      if (!v24)
      {
        return 0;
      }

      v25 = [v24 preferredForwardJumpIntervals];
      sub_4FE4(0, &qword_7E338, NSNumber_ptr);
      v26 = sub_5A294();

      if (v26 >> 62)
      {
        if (!sub_5A814())
        {
          goto LABEL_96;
        }

        goto LABEL_41;
      }

      if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_41:
        if ((v26 & 0xC000000000000001) != 0)
        {
          goto LABEL_99;
        }

        if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_53;
        }

        __break(1u);
        goto LABEL_95;
      }

LABEL_96:

      swift_unknownObjectRelease();
      return 0;
    }

    if (*&v2 == 4 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v27 = [a1 tracklist];
      v28 = [v27 playingItem];

      if (!v28)
      {
        return 0;
      }

      v24 = [v28 seekCommand];

      if (!v24)
      {
        return 0;
      }

      v29 = [v24 preferredBackwardJumpIntervals];
      sub_4FE4(0, &qword_7E338, NSNumber_ptr);
      v26 = sub_5A294();

      if (v26 >> 62)
      {
LABEL_95:
        result = sub_5A814();
        if (!result)
        {
          goto LABEL_96;
        }

LABEL_51:
        if ((v26 & 0xC000000000000001) == 0)
        {
          if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
          {
LABEL_53:
            v30 = *(v26 + 32);
LABEL_54:
            v31 = v30;

            [v31 doubleValue];
            v32 = [v24 jumpByInterval:?];
            swift_unknownObjectRelease();

            return v32;
          }

          __break(1u);
LABEL_101:
          v49 = result;
          v50 = sub_5A814();
          result = v49;
          if (!v50)
          {
            goto LABEL_104;
          }

          goto LABEL_75;
        }

LABEL_99:
        v30 = sub_5A724();
        goto LABEL_54;
      }

      result = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_51;
      }

      goto LABEL_96;
    }

    if (*&v2 == 5 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v33 = [a1 tracklist];
      v34 = [v33 changeItemCommand];

      if (v34)
      {
        v10 = [v34 nextItem];
        goto LABEL_19;
      }

      return 0;
    }

    if (*&v2 == 6 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      v35 = [a1 tracklist];
      v36 = [v35 changeItemCommand];

      if (v36)
      {
        v10 = [v36 previousItem];
        goto LABEL_19;
      }

      return 0;
    }

    if (*&v2 == 7 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      return [a1 prepare];
    }

    if (*&v2 == 8 && v3 == 0xA000000000000000 && v4 == 0.0)
    {
      result = MPCPlayerResponse.remainingChapters.getter();
      if (!result)
      {
        return result;
      }

      v24 = (result & 0xFFFFFFFFFFFFFF8);
      if (result >> 62)
      {
        goto LABEL_101;
      }

      if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_75:
        if ((result & 0xC000000000000001) != 0)
        {
          goto LABEL_108;
        }

        if (v24[2])
        {
          v37 = *(result + 32);
LABEL_86:
          v42 = v37;
          goto LABEL_87;
        }

        goto LABEL_107;
      }

LABEL_104:

      return 0;
    }

    result = MPCPlayerResponse.previousChapters.getter();
    if (!result)
    {
      return result;
    }

    v38 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v51 = result;
      v39 = sub_5A814();
      result = v51;
      if (!v39)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v39 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (!v39)
      {
        goto LABEL_104;
      }
    }

    v40 = __OFSUB__(v39, 1);
    v41 = v39 - 1;
    if (!v40)
    {
      if ((result & 0xC000000000000001) == 0)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v41 < *(v38 + 16))
        {
          v37 = *(result + 8 * v41 + 32);
          goto LABEL_86;
        }

        __break(1u);
        return result;
      }

LABEL_108:
      v42 = sub_5A724();
LABEL_87:
      v43 = v42;

      v44 = v43;
      v45 = [a1 tracklist];
      v46 = [v45 playingItem];

      if (v46)
      {
        v47 = [v46 seekCommand];

        if (v47)
        {
          [v44 startTime];
          v48 = [v47 changePositionToElapsedInterval:?];

          swift_unknownObjectRelease();
          return v48;
        }
      }

      return 0;
    }

    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  result = [a1 play];
  if (!result)
  {
    return [a1 pause];
  }

  return result;
}

char *sub_36064(int a1, char a2, void *a3)
{
  v6 = sub_59D14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  result = sub_3A574(a1, a3);
  if (!result)
  {
    sub_59CC4();
    v18 = sub_59D04();
    v19 = sub_5A454();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136315138;
      v22 = sub_5A9F4();
      v24 = sub_9430(v22, v23, &v39);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v18, v19, "[%s] Error: unable to createIncreasePlaybackSpeedCommand", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(result + 2);
  if ((a2 & 1) == 0)
  {
    if ((v17 - 1) < v16)
    {
      v16 = v17 - 1;
    }

LABEL_11:
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (v16 < v17)
      {
        v25 = *&result[4 * v16 + 32];

        sub_59CC4();
        v26 = sub_59D04();
        v27 = sub_5A444();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v39 = v29;
          *v28 = 136315394;
          v30 = sub_5A9F4();
          v32 = sub_9430(v30, v31, &v39);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v25;
          _os_log_impl(&dword_0, v26, v27, "[%s] createIncreasePlaybackSpeedCommand: created with rate %f", v28, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
        }

        (*(v7 + 8))(v13, v6);
        v33 = [a3 tracklist];
        v34 = [v33 playingItem];

        if (v34)
        {
          v35 = [v34 playbackRateCommand];

          if (v35)
          {
            *&v36 = v25;
            v37 = [v35 setPlaybackRate:v36];
            swift_unknownObjectRelease();
            return v37;
          }
        }

        return 0;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17)
  {
    v16 %= v17;
    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_36440(int a1, char a2, void *a3)
{
  v6 = sub_59D14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  result = sub_3A574(a1, a3);
  if (!result)
  {
LABEL_7:
    sub_59CC4();
    v19 = sub_59D04();
    v20 = sub_5A454();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136315138;
      v23 = sub_5A9F4();
      v25 = sub_9430(v23, v24, &v40);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "[%s] Error: unable to createDecreasePlaybackSpeedCommand", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((a2 & 1) == 0)
  {
    v18 = v16 & ~(v16 >> 63);
    v17 = *(result + 2);
LABEL_11:
    if (v18 < v17)
    {
      v26 = *&result[4 * v18 + 32];

      sub_59CC4();
      v27 = sub_59D04();
      v28 = sub_5A444();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40 = v30;
        *v29 = 136315394;
        v31 = sub_5A9F4();
        v33 = sub_9430(v31, v32, &v40);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2048;
        *(v29 + 14) = v26;
        _os_log_impl(&dword_0, v27, v28, "[%s] createDecreasePlaybackSpeedCommand: created with rate %f", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
      }

      (*(v7 + 8))(v13, v6);
      v34 = [a3 tracklist];
      v35 = [v34 playingItem];

      if (v35)
      {
        v36 = [v35 playbackRateCommand];

        if (v36)
        {
          *&v37 = v26;
          v38 = [v36 setPlaybackRate:v37];
          swift_unknownObjectRelease();
          return v38;
        }
      }

      return 0;
    }

    goto LABEL_19;
  }

  v17 = *(result + 2);
  if (v17)
  {
    v18 = v16 % v17;
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *PlaybackController.TransportCommand.canPerform(for:)(id a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[1] >> 61;
  if (v5 == 4)
  {
    if ((v3 & 0x100) == 0)
    {
      type metadata accessor for PlaybackController(0);
      if (sub_3A574(v3 & 1, a1))
      {
        v11 = v10;

        if (v11 < 1)
        {
          return 0;
        }
      }
    }
  }

  else if (v5 == 3 && (v3 & 0x100) == 0)
  {
    type metadata accessor for PlaybackController(0);
    v6 = sub_3A574(v3 & 1, a1);
    if (v6)
    {
      v8 = v7;
      v9 = *(v6 + 2);

      if (v8 >= v9 - 1)
      {
        return 0;
      }
    }
  }

  result = PlaybackController.TransportCommand.request(for:)(a1);
  if (result)
  {

    return &dword_0 + 1;
  }

  return result;
}

uint64_t sub_3692C(void *a1)
{
  v2 = PlaybackController.TransportCommand.request(for:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_3698C(void *a1)
{
  v2 = PlaybackController.TransportCommand.canPerform(for:)(a1);
  v3 = *(v1 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

id PlaybackController.EnhanceDialogueCommand.request(for:)(void *a1)
{
  v2 = *v1;
  v3 = [a1 tracklist];
  v4 = [v3 enhanceDialogueCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activate:v2];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t PlaybackController.EnhanceDialogueCommand.canPerform(for:)(void *a1)
{
  v2 = *v1;
  v3 = [a1 tracklist];
  v4 = [v3 enhanceDialogueCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activate:v2];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  return 1;
}

id sub_36B1C(void *a1)
{
  v2 = *v1;
  v3 = [a1 tracklist];
  v4 = [v3 enhanceDialogueCommand];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 activate:v2];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_36BB8(void *a1)
{
  v3 = *v1;
  v4 = [a1 tracklist];
  v5 = [v4 enhanceDialogueCommand];

  if (v5)
  {
    v6 = [v5 activate:v3];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v2 + 8);

  return v7(v6);
}

uint64_t sub_36C8C(void *a1)
{
  v3 = *v1;
  v4 = [a1 tracklist];
  v5 = [v4 enhanceDialogueCommand];

  if (v5 && (v6 = [v5 activate:v3], swift_unknownObjectRelease(), v6))
  {

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v2 + 8);

  return v8(v7);
}

id PlaybackController.SleepTimerCommand.request(for:)(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = [a1 tracklist];
  v5 = [v4 sleepTimerCommand];

  if (v3 != 1)
  {
    if (v5)
    {
      v6 = [v5 startWithTime:v2];
      goto LABEL_12;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    if (v5)
    {
      v6 = [v5 startForChapterEnd];
      goto LABEL_12;
    }

    return 0;
  }

  if (*&v2 != 1)
  {
    if (v5)
    {
      v6 = [v5 reset];
      goto LABEL_12;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 startForItemEnd];
LABEL_12:
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

BOOL PlaybackController.SleepTimerCommand.canPerform(for:)(void *a1)
{
  v5 = *v1;
  v6 = *(v1 + 8);
  v2 = PlaybackController.SleepTimerCommand.request(for:)(a1);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

BOOL static PlaybackController.SleepTimerCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v5 = *(a2 + 8);
      }

      else
      {
        v5 = 0;
      }

      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v9 = *(a2 + 8);
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    v7 = *a1;
    return v2 == *a2;
  }

  return 0;
}

uint64_t sub_36F44(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v9 = *a1, v10 = *a2, v2 == v3);
  }

  if (v3 == 0.0)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *&v3 > 1uLL;
  if (*&v3 == 1)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (!v6)
  {
    v4 = 0;
  }

  if (*&v2 != 1)
  {
    v7 = v4;
  }

  if (v2 == 0.0)
  {
    return v5;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_36FA8(void *a1)
{
  v2 = PlaybackController.SleepTimerCommand.request(for:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_37008(void *a1)
{
  v7 = *v1;
  v8 = *(v1 + 8);
  v3 = PlaybackController.SleepTimerCommand.request(for:)(a1);
  v4 = v3;
  if (v3)
  {
  }

  v5 = *(v2 + 8);

  return v5(v4 != 0);
}

uint64_t PlaybackController.QueueCommand.request(for:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_59904();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_59944();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackController.QueueCommand();
  v2[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_371DC, 0, 0);
}

uint64_t sub_371DC()
{
  v1 = *(v0 + 96);
  sub_3AFC0(*(v0 + 40), *(v0 + 104));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v3 = **(v0 + 104);
        v4 = [v3 remove];

LABEL_36:
        v41 = *(v0 + 104);
        v42 = *(v0 + 88);
        v43 = *(v0 + 64);

        v44 = *(v0 + 8);

        return v44(v4);
      }

      v24 = *(v0 + 104);
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (!*(v24 + 16))
      {
        v37 = [*(v0 + 32) tracklist];
        v38 = [v37 reorderCommand];

        if (v38)
        {
          v4 = [v38 moveItem:v25 beforeItem:v26];

          v30 = v26;
          v31 = 0;
          goto LABEL_30;
        }

        v39 = v26;
        v40 = 0;
        goto LABEL_34;
      }

      if (v27 != 255)
      {
        if (v27 == 1)
        {
          v28 = [*(v0 + 32) tracklist];
          v29 = [v28 reorderCommand];

          if (v29)
          {
            v4 = [v29 moveItem:v25 afterItem:v26];

            v30 = v26;
            v31 = 1;
LABEL_30:
            sub_3B038(v30, v31);
            swift_unknownObjectRelease();
            goto LABEL_36;
          }

          v39 = v26;
          v40 = 1;
        }

        else
        {

          v39 = v26;
          v40 = v27;
        }

LABEL_34:
        sub_3B038(v39, v40);
        goto LABEL_35;
      }
    }

    else
    {
      v10 = **(v0 + 104);
      v11 = [*(v0 + 32) tracklist];
      v12 = [v11 changeItemCommand];

      if (v12)
      {
        v4 = [v12 changeToItem:v10];

        swift_unknownObjectRelease();
        goto LABEL_36;
      }
    }

LABEL_35:
    v4 = 0;
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v13 = *(v0 + 104);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 72);
    v17 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E460, &qword_5D580) + 48));
    v18 = *v17;
    *(v0 + 112) = *v17;
    v19 = *(v17 + 8);
    *(v0 + 25) = v19;
    (*(v15 + 32))(v14, v13, v16);
    *(v0 + 16) = v18;
    *(v0 + 24) = v19;
    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    *v20 = v0;
    v20[1] = sub_376B0;
    v21 = *(v0 + 88);
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);

    return sub_37BA8(v21, (v0 + 16), v22);
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      v32 = *(v0 + 32);
      v33 = [objc_opt_self() supportsBlueMoon];
      v34 = [v32 tracklist];
      v35 = [v34 resetCommand];

      if (v33)
      {
        if (!v35)
        {
          goto LABEL_35;
        }

        v36 = [v35 clearUpNextItems];
      }

      else
      {
        if (!v35)
        {
          goto LABEL_35;
        }

        v36 = [v35 clear];
      }

      v4 = v36;
      swift_unknownObjectRelease();
      goto LABEL_36;
    }

    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 104), *(v0 + 48));
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_37890;
    v6 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);

    return sub_386F8(v6, v7);
  }
}

uint64_t sub_376B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_37A5C;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_377D8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_377D8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_3B024(*(v0 + 112), *(v0 + 25));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_37890(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_37B0C;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_379B8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_379B8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_37A5C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 25);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  sub_3B024(v1, v2);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_37B0C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[19];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_37BA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A8, &unk_5D8E0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v7 = sub_59944();
  *(v4 + 56) = v7;
  v8 = *(v7 - 8);
  *(v4 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v10 = sub_59904();
  *(v4 + 80) = v10;
  v11 = *(v10 - 8);
  *(v4 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *a2;
  *(v4 + 104) = v13;
  *(v4 + 112) = v14;
  *(v4 + 184) = *(a2 + 8);

  return _swift_task_switch(sub_37D1C, 0, 0);
}

uint64_t sub_37D1C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[6];
  v23 = v0[4];
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v6 = sub_59AE4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_5A3F4();
  sub_59864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2B8, &qword_5D2A8);
  v7 = sub_59894();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5BC80;
  (*(v8 + 104))(v11 + v10, enum case for PlaybackIntent.Option.ignoreContinuousPlaybackSetting(_:), v7);
  sub_3A27C(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  sub_59814();

  v12 = *(v4 + 8);
  v0[15] = v12;
  v0[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v3);
  v13 = [v23 tracklist];
  v14 = [v13 playingItem];

  if (v14)
  {

    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_3804C;
    v16 = v0[13];
    v17 = v0[4];

    return PlaybackIntent.generateMPCIntent(for:)(v17);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[20] = v19;
    *v19 = v0;
    v19[1] = sub_38160;
    v20 = v0[13];
    v21 = v0[4];
    v22 = v0[5];

    return sub_386F8(v20, v21);
  }
}

uint64_t sub_3804C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_38654;
  }

  else
  {
    v5 = sub_38288;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_38160(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_385B0;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_38504;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_38288()
{
  v1 = [*(v0 + 32) tracklist];
  *(v0 + 16) = MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_71E28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
  sub_3B948(&qword_7E558, &unk_7F5A0, &qword_5D8F0);
  v2 = sub_5A414();

  if ((v2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 184);
  v4 = *(v0 + 112);
  if (v3 != 2)
  {
    goto LABEL_7;
  }

  if (v4 == &dword_0 + 1)
  {
    v19 = [*(v0 + 32) tracklist];
    v20 = [v19 insertCommand];

    if (v20)
    {
      v7 = [v20 insertAtEndOfUpNextWithPlaybackIntent:*(v0 + 144)];
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v21 = v7;
    v8 = 2;
    v9 = &dword_0 + 1;
    goto LABEL_10;
  }

  if (v4)
  {
LABEL_7:
    sub_3B8F0(v4, v3);
    v7 = 0;
    v8 = *(v0 + 184);
    v9 = *(v0 + 112);
  }

  else
  {
LABEL_5:
    v5 = [*(v0 + 32) tracklist];
    v6 = [v5 insertCommand];

    if (v6)
    {
      v7 = [v6 insertAfterPlayingItemWithPlaybackIntent:*(v0 + 144)];
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v10 = v7;
    v9 = 0;
    v8 = 2;
  }

LABEL_10:
  v11 = *(v0 + 144);
  v12 = *(v0 + 40);
  sub_394F4(v7);

  sub_3B024(v9, v8);
  v13 = *(v0 + 128);
  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v17 = *(v0 + 8);

  return v17(v7);
}

uint64_t sub_38504()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_385B0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_38654()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  (*(v0 + 120))(*(v0 + 104), *(v0 + 80));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_386F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_387A8;

  return PlaybackIntent.generateMPCIntent(for:)(a2);
}

uint64_t sub_387A8(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_388DC, 0, 0);
  }
}

uint64_t sub_388DC()
{
  v1 = [*(v0 + 24) tracklist];
  v2 = [v1 resetCommand];

  if (v2)
  {
    v3 = [v2 replaceWithPlaybackIntent:*(v0 + 48) replaceIntent:1];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = *(v0 + 16);
      v5 = v3;
      sub_59824();
      v6 = sub_5A174();

      if (!kMRMediaRemoteOptionDesiredSessionID)
      {
        __break(1u);
        return result;
      }

      [v5 setCommandOptionValue:v6 forKey:?];
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  sub_394F4(v3);

  v10 = *(v0 + 8);

  return v10(v3);
}

uint64_t PlaybackController.QueueCommand.canPerform(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PlaybackController.QueueCommand();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_38ACC, 0, 0);
}

uint64_t sub_38ACC()
{
  v1 = v0[4];
  sub_3AFC0(v0[3], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v10 = v0[2];
    sub_3AFC0(v0[7], v0[5]);
    v11 = [v10 tracklist];
    v12 = [v11 resetCommand];

    v13 = v12;
    v14 = v12 != 0;
    if (v13)
    {
      swift_unknownObjectRelease();
    }

    v15 = v0[5];
    v16 = sub_59904();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_5:
      v6 = swift_task_alloc();
      v0[8] = v6;
      *v6 = v0;
      v6[1] = sub_38D28;
      v7 = v0[2];
      v8 = v0[3];

      return PlaybackController.QueueCommand.request(for:)(v7);
    }

    v3 = v0[6];
    sub_3AFC0(v0[7], v3);
    v4 = *v3;
    v5 = *(v3 + 16);
    if (v5 != 255)
    {
      sub_3B038(*(v0[6] + 8), v5);

      goto LABEL_5;
    }

    v20 = [v0[2] tracklist];
    v21 = [v20 reorderCommand];

    if (v21)
    {
      v14 = [v21 canMoveItem:v4];

      swift_unknownObjectRelease();
    }

    else
    {

      v14 = 0;
    }
  }

  v17 = v0[6];
  v18 = v0[5];
  sub_1B1CC(v0[7]);

  v19 = v0[1];

  return v19(v14);
}

uint64_t sub_38D28(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_38EF0;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_38E54;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_38E54()
{
  v1 = v0[9];
  v2 = v1 != 0;

  v3 = v0[6];
  v4 = v0[5];
  sub_1B1CC(v0[7]);

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_38EF0()
{
  v1 = v0[6];
  v2 = v0[5];
  sub_1B1CC(v0[7]);

  v3 = v0[1];

  return v3(0);
}

uint64_t PlaybackController.QueueCommand.requiresLocalRoute.getter()
{
  v1 = v0;
  v2 = sub_59894();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_59904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaybackController.QueueCommand();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3AFC0(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v8 + 32))(v11, v15, v7);
    v16 = sub_598F4();
    (*(v3 + 104))(v6, enum case for PlaybackIntent.Option.forceLocalPlayback(_:), v2);
    v17 = sub_35430(v6, v16);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_1B1CC(v15);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_391CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_39260;

  return PlaybackController.QueueCommand.request(for:)(a1);
}

uint64_t sub_39260(uint64_t a1)
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

uint64_t sub_39360(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_393F4;

  return PlaybackController.QueueCommand.canPerform(for:)(a1);
}

uint64_t sub_393F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_394F4(void *a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() currentPersona];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 isGuestPersona];

  if (v9)
  {
    sub_59CC4();
    v10 = sub_59D04();
    v11 = sub_5A474();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Enabling private listening for guest mode", v12, 2u);
    }

    (*(v3 + 8))(v6, v2);
    if (a1)
    {
      v13.super.super.isa = sub_5A344().super.super.isa;
      if (kMRMediaRemoteOptionPrivateListeningEnabled)
      {
        isa = v13.super.super.isa;
        [a1 setCommandOptionValue:v13.super.super.isa forKey:?];

        return;
      }

LABEL_10:
      __break(1u);
    }
  }
}

uint64_t _s16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO2eeoiySbAG_AGtFZ_0(uint64_t a1, char **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_4FE4(0, &qword_7E540, NSObject_ptr);
      sub_3B8F0(v4, 0);
      sub_3B8F0(v2, 0);
      v6 = sub_5A624();
      sub_3B024(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_4FE4(0, &qword_7E540, NSObject_ptr);
      sub_3B8F0(v4, 1u);
      sub_3B8F0(v2, 1u);
      LOBYTE(v6) = sub_5A624();
      sub_3B024(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_3B024(v7, v8);
      return v6 & 1;
    }

    goto LABEL_19;
  }

  if (!v2)
  {
    if (v5 == 2 && v4 == 0)
    {
      sub_3B024(0, 2u);
      sub_3B024(0, 2u);
      return 1;
    }

    goto LABEL_19;
  }

  if (v5 != 2 || v4 != &dword_0 + 1)
  {
LABEL_19:
    sub_3B8F0(*a2, *(a2 + 8));
    sub_3B8F0(v2, v3);
    sub_3B024(v2, v3);
    sub_3B024(v4, v5);
    return 0;
  }

  v11 = 1;
  sub_3B024(&dword_0 + 1, 2u);
  sub_3B024(&dword_0 + 1, 2u);
  return v11;
}

uint64_t _s16PodcastsPlayback0B10ControllerC12QueueCommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_59904();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_59944();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  __chkstk_darwin(v7);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaybackController.QueueCommand();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v62 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v62 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = (&v62 - v22);
  __chkstk_darwin(v21);
  v25 = (&v62 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E538, &qword_5D8D8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v30 = &v62 - v29;
  v31 = &v62 + *(v28 + 56) - v29;
  sub_3AFC0(a1, &v62 - v29);
  sub_3AFC0(a2, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_3AFC0(v30, v14);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v37 = v64;
          v36 = v65;
          v38 = v62;
          (*(v64 + 32))(v62, v31, v65);
          v35 = sub_59854();
          v39 = *(v37 + 8);
          v39(v38, v36);
          v39(v14, v36);
          goto LABEL_15;
        }

        (*(v64 + 8))(v14, v65);
        goto LABEL_27;
      }

      if (swift_getEnumCaseMultiPayload() != 5)
      {
LABEL_27:
        sub_3B874(v30);
LABEL_28:
        v35 = 0;
        return v35 & 1;
      }

      goto LABEL_23;
    }

    sub_3AFC0(v30, v17);
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E460, &qword_5D580) + 48);
    v41 = *&v17[v40];
    v42 = v17[v40 + 8];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_3B024(v41, v42);
      (*(v66 + 8))(v17, v67);
      goto LABEL_27;
    }

    v43 = *&v31[v40];
    LODWORD(v65) = v31[v40 + 8];
    v45 = v66;
    v44 = v67;
    v46 = v63;
    (*(v66 + 32))(v63, v31, v67);
    v47 = sub_59934();
    v48 = *(v45 + 8);
    v48(v17, v44);
    if (v47)
    {
      v70 = v41;
      v71 = v42;
      v49 = v43;
      v68 = v43;
      v50 = v65;
      v69 = v65;
      v35 = _s16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO2eeoiySbAG_AGtFZ_0(&v70, &v68);
      v48(v46, v44);
      sub_3B024(v49, v50);
      sub_3B024(v41, v42);
      goto LABEL_15;
    }

    v48(v46, v44);
    sub_3B024(v43, v65);
    sub_3B024(v41, v42);
LABEL_37:
    sub_1B1CC(v30);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_3AFC0(v30, v25);
    v33 = *v25;
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_3AFC0(v30, v20);
    v52 = *v20;
    v51 = *(v20 + 1);
    v53 = v20[16];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_3B038(v51, v53);

      goto LABEL_27;
    }

    v55 = *v31;
    v54 = *(v31 + 1);
    v56 = v31[16];
    sub_4FE4(0, &qword_7E540, NSObject_ptr);
    v57 = sub_5A624();

    if (v57)
    {
      if (v53 == 255)
      {
        if (v56 == 255)
        {
          sub_3B038(v51, 0xFFu);
          goto LABEL_23;
        }
      }

      else
      {
        v70 = v51;
        v71 = v53;
        if (v56 != 255)
        {
          v68 = v54;
          v69 = v56;
          sub_3B8DC(v51, v53);
          v58 = _s16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO2eeoiySbAG_AGtFZ_0(&v70, &v68);
          sub_3B024(v68, v69);
          sub_3B024(v70, v71);
          sub_3B038(v51, v53);
          if ((v58 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_23:
          sub_1B1CC(v30);
          v35 = 1;
          return v35 & 1;
        }

        sub_3B8DC(v51, v53);
        sub_3B024(v51, v53);
      }

      sub_3B038(v51, v53);
      v60 = v54;
      v61 = v56;
    }

    else
    {
      sub_3B038(v54, v56);
      v60 = v51;
      v61 = v53;
    }

    sub_3B038(v60, v61);
    goto LABEL_37;
  }

  sub_3AFC0(v30, v23);
  v33 = *v23;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_11:

    goto LABEL_27;
  }

LABEL_5:
  v34 = *v31;
  sub_4FE4(0, &qword_7E540, NSObject_ptr);
  v35 = sub_5A624();

LABEL_15:
  sub_1B1CC(v30);
  return v35 & 1;
}

BOOL _s16PodcastsPlayback0B10ControllerC16TransportCommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v3 >> 61;
  if ((v3 >> 61) <= 2)
  {
    if (!v8)
    {
      if (!(v5 >> 61))
      {
        v9 = *a1;
        v10 = *a2;
        if (v2 == v6)
        {
          return 1;
        }
      }

      return 0;
    }

    if (v8 != 1)
    {
      return v5 >> 61 == 2 && *&v2 == *&v6;
    }

    if (v5 >> 61 == 1)
    {
      if (v3)
      {
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v5)
        {
          return 0;
        }

        v13 = *a1;
        v14 = *a2;
        if (v2 != v6)
        {
          return 0;
        }
      }

      v15 = *(a1 + 16);
      v16 = *(a2 + 16);
      return v4 == v7;
    }

    return 0;
  }

  if (v8 == 3)
  {
    if (v5 >> 61 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v8 != 4)
    {
      if (v3 == 0xA000000000000000 && (*&v4 | *&v2) == 0)
      {
        if (v5 >> 61 == 5 && v5 == 0xA000000000000000 && !(*&v7 | *&v6))
        {
          return 1;
        }
      }

      else if (*&v2 == 1 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 1 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 2 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 2 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 3 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 3 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 4 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 4 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 5 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 5 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 6 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 6 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 7 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 7 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (*&v2 == 8 && v3 == 0xA000000000000000 && v4 == 0.0)
      {
        if (v5 >> 61 == 5 && *&v6 == 8 && v5 == 0xA000000000000000 && v7 == 0.0)
        {
          return 1;
        }
      }

      else if (v5 >> 61 == 5 && *&v6 == 9 && v5 == 0xA000000000000000 && v7 == 0.0)
      {
        return 1;
      }

      return 0;
    }

    if (v5 >> 61 != 4)
    {
      return 0;
    }
  }

  if ((LOBYTE(v6) ^ LOBYTE(v2)))
  {
    return 0;
  }

  else
  {
    return (*&v2 >> 8) & 1 ^ ((*a2 & 0x100) == 0);
  }
}

void *sub_3A27C(uint64_t a1)
{
  v2 = sub_59894();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E560, &qword_5D8F8);
    v10 = sub_5A6E4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_3B904(&qword_7E548);
      v18 = sub_5A154();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_3B904(&qword_7E550);
          v25 = sub_5A164();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

char *sub_3A574(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v81 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v82 = &v76[-v9];
  v10 = [a2 tracklist];
  v11 = [v10 playingItem];

  if (!v11)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v12 = [v11 playbackRateCommand];

  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = a2;
  v15 = [v12 supportedPlaybackRates];
  swift_unknownObjectRelease();
  sub_4FE4(0, &qword_7E338, NSNumber_ptr);
  v16 = sub_5A294();

  if (v16 >> 62)
  {
    v17 = sub_5A814();
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_16:

    a2 = v14;
    goto LABEL_17;
  }

  v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (!v17)
  {
    goto LABEL_16;
  }

LABEL_5:
  v77 = v3;
  v78 = v5;
  v80 = v4;
  v83 = _swiftEmptyArrayStorage;
  result = sub_105F8(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  v19 = 0;
  v13 = v83;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = sub_5A724();
    }

    else
    {
      v20 = *(v16 + 8 * v19 + 32);
    }

    v21 = v20;
    [v20 floatValue];
    v23 = v22;

    v83 = v13;
    v25 = v13[2];
    v24 = v13[3];
    if (v25 >= v24 >> 1)
    {
      sub_105F8((v24 > 1), v25 + 1, 1);
      v13 = v83;
    }

    ++v19;
    v13[2] = v25 + 1;
    *(v13 + v25 + 8) = v23;
  }

  while (v17 != v19);

  v4 = v80;
  v5 = v78;
  a2 = v14;
  LODWORD(v3) = v77;
LABEL_17:
  v26 = [a2 tracklist];
  v27 = [v26 playingItem];

  if (!v27)
  {
    v29 = _swiftEmptyArrayStorage;
    v40 = v82;
    if (v3)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v28 = [v27 playbackRateCommand];

  v29 = _swiftEmptyArrayStorage;
  if (!v28)
  {
    goto LABEL_32;
  }

  v79 = a2;
  v30 = [v28 extendedSupportedPlaybackRates];
  swift_unknownObjectRelease();
  sub_4FE4(0, &qword_7E338, NSNumber_ptr);
  v31 = sub_5A294();

  if (!(v31 >> 62))
  {
    v32 = *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8));
    if (v32)
    {
      goto LABEL_21;
    }

LABEL_36:

    a2 = v79;
    v40 = v82;
    if (v3)
    {
LABEL_33:
      if (v29[2])
      {
        goto LABEL_41;
      }

LABEL_38:
      sub_59CC4();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v41 = sub_59D04();
      v42 = sub_5A454();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v79 = a2;
        v44 = v43;
        v78 = swift_slowAlloc();
        v83 = v78;
        *v44 = 136316418;
        v45 = sub_5A9F4();
        v77 = v42;
        v47 = sub_9430(v45, v46, &v83);
        v80 = v4;
        v48 = v47;

        *(v44 + 4) = v48;
        *(v44 + 12) = 1024;
        *(v44 + 14) = v3 & 1;
        *(v44 + 18) = 1024;
        v49 = v13[2];

        *(v44 + 20) = v49 == 0;

        *(v44 + 24) = 1024;
        v50 = v29[2];

        *(v44 + 26) = v50 == 0;

        *(v44 + 30) = 2080;
        sub_59A34();
        sub_59A14();
        v51 = sub_5A2A4();
        v52 = v3;
        v3 = v5;
        v54 = v53;

        v55 = sub_9430(v51, v54, &v83);
        v5 = v3;
        LOBYTE(v3) = v52;

        *(v44 + 32) = v55;
        v4 = v80;
        *(v44 + 40) = 1024;
        v56 = *(sub_59A24() + 16);

        *(v44 + 42) = v56 == 0;
        _os_log_impl(&dword_0, v41, v77, "[%s] Missing one or both of the command provided supportedPlaybackRates or extendedSupportedPlaybackRates. Will attempt to fall back to supported rates when extended rates is empty. State: useExtendedRates = %{BOOL}d, commandRates.isEmpty = %{BOOL}d, commandExtendedRates.isEmpty = %{BOOL}d, PlaybackRateHelper.supportedRates = %s, PlaybackRateHelper.extendedSupportedRates.isEmpty = %{BOOL}d", v44, 0x2Eu);
        swift_arrayDestroy();

        a2 = v79;

        (v5[1])(v82, v4);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        (v5[1])(v40, v4);
      }

LABEL_41:
      v83 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E568, &qword_5D900);
      sub_3B948(&unk_7E570, &qword_7E568, &qword_5D900);
      if ((sub_5A414() & 1) == 0)
      {

        sub_59A34();
        v13 = sub_59A14();
      }

      v83 = v29;
      if ((sub_5A414() & 1) == 0)
      {

        v29 = v13;
      }

      if (v3)
      {
        v57 = v29;
      }

      else
      {
        v57 = v13;
      }

      v58 = [a2 tracklist];
      v59 = [v58 playingItem];

      if (v59 && (v60 = [v59 playbackRateCommand], v59, v60))
      {
        [v60 preferredPlaybackRate];
        v62 = v61;
        swift_unknownObjectRelease();
        v83 = v57;
        v63 = sub_5A414();
        v64 = v81;
        if (v63)
        {
          v65 = v57[2];
          v66 = 0;
          if (v65)
          {
            do
            {
              if (*(v57 + v66 + 8) == v62)
              {
                break;
              }

              ++v66;
            }

            while (v65 != v66);
          }

          do
          {
            if (!v65)
            {
              break;
            }

            v67 = *(v57 + v65-- + 7);
          }

          while (v67 >= v62);
          return v57;
        }
      }

      else
      {
        v83 = v57;
        sub_5A414();
        v64 = v81;
      }

      sub_59CC4();
      v68 = sub_59D04();
      v69 = sub_5A454();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = v4;
        v72 = swift_slowAlloc();
        v83 = v72;
        *v70 = 136315138;
        v73 = sub_5A9F4();
        v75 = sub_9430(v73, v74, &v83);

        *(v70 + 4) = v75;
        _os_log_impl(&dword_0, v68, v69, "[%s] Either supportedPlaybackRates is empty or no current playback rate is found. Exiting", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);

        (v5[1])(v64, v71);
      }

      else
      {

        (v5[1])(v64, v4);
      }

      return 0;
    }

LABEL_37:
    if (v13[2])
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v32 = sub_5A814();
  if (!v32)
  {
    goto LABEL_36;
  }

LABEL_21:
  v77 = v3;
  v78 = v5;
  v80 = v4;
  v83 = _swiftEmptyArrayStorage;
  result = sub_105F8(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    v29 = v83;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = sub_5A724();
      }

      else
      {
        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      [v34 floatValue];
      v37 = v36;

      v83 = v29;
      v39 = v29[2];
      v38 = v29[3];
      if (v39 >= v38 >> 1)
      {
        sub_105F8((v38 > 1), v39 + 1, 1);
        v29 = v83;
      }

      ++v33;
      v29[2] = v39 + 1;
      *(v29 + v39 + 8) = v37;
    }

    while (v32 != v33);

    a2 = v79;
    v4 = v80;
    v5 = v78;
    LOBYTE(v3) = v77;
LABEL_32:
    v40 = v82;
    if (v3)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PlaybackController.QueueCommand()
{
  result = qword_7E4D8;
  if (!qword_7E4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3AFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackController.QueueCommand();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_3B024(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

void sub_3B038(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_3B024(a1, a2);
  }
}

uint64_t dispatch thunk of PlaybackCommand.request(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_32310;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PlaybackCommand.canPerform(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_393F4;

  return v11(a1, a2, a3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s16TransportCommandOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
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

uint64_t _s16TransportCommandOwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3B398(uint64_t a1)
{
  v1 = *(a1 + 8) >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

void *sub_3B3C4(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    result[1] = result[1] & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 5);
    *(result + 1) = xmmword_5D560;
  }

  return result;
}

uint64_t _s22EnhanceDialogueCommandOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s17SleepTimerCommandOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s17SleepTimerCommandOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_3B518(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3B534(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_3B5B4()
{
  sub_4FE4(319, &qword_7E4E8, MPCPlayerResponseItem_ptr);
  if (v0 <= 0x3F)
  {
    sub_3B660();
    if (v1 <= 0x3F)
    {
      sub_3B6F0();
      if (v2 <= 0x3F)
      {
        sub_3B75C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_3B660()
{
  if (!qword_7E4F0)
  {
    sub_4FE4(255, &qword_7E4E8, MPCPlayerResponseItem_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7E4F8, "\\;");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_7E4F0);
    }
  }
}

void sub_3B6F0()
{
  if (!qword_7E500)
  {
    sub_59944();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_7E500);
    }
  }
}

void sub_3B75C()
{
  if (!qword_7E508)
  {
    v0 = sub_59904();
    if (!v1)
    {
      atomic_store(v0, &qword_7E508);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16PodcastsPlayback0B10ControllerC12QueueCommandO8LocationO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_3B7C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_3B808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_3B84C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_3B874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E538, &qword_5D8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_3B8DC(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_3B8F0(result, a2);
  }

  return result;
}

id sub_3B8F0(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_3B904(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_59894();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3B948(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_3B99C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v7 = &v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_playbackPositionTracker];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_observer];
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = *a1;
  v10 = a1[1];
  v11 = objc_allocWithZone(MPCPlaybackEngine);
  v12 = sub_5A174();
  v13 = [v11 initWithPlayerID:v12];

  v14 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine;
  *&v1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine] = v13;
  v15 = a1[4];
  [v13 setStateRestorationSupported:{sub_35620(0, v15)}];
  [*&v1[v14] setVideoSupported:{sub_35620(1u, v15)}];
  [*&v1[v14] setPictureInPictureSupported:{sub_35620(2u, v15)}];
  v16 = _s9MPCPlayerCMa();
  v25.receiver = v1;
  v25.super_class = v16;
  v17 = objc_msgSendSuper2(&v25, "init");
  v18 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine;
  v19 = *&v17[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine];
  v20 = v17;
  [v19 setDelegate:v20];
  [*&v17[v18] becomeActive];
  sub_5A394();
  v21 = sub_5A3B4();
  (*(*(v21 - 8) + 56))(v6, 0, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = *(a1 + 1);
  *(v22 + 32) = *a1;
  *(v22 + 48) = v23;
  *(v22 + 64) = a1[4];
  *(v22 + 72) = v20;
  sub_17A48(0, 0, v6, &unk_5D9F8, v22);

  return v20;
}

uint64_t sub_3BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = sub_59D14();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v8 = *(v7 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return _swift_task_switch(sub_3BCDC, 0, 0);
}

uint64_t sub_3BCDC()
{
  if (sub_35620(0, *(v0[18] + 32)))
  {
    v1 = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_3BE98;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E748, &unk_5DA00);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_3C454;
    v0[13] = &block_descriptor_5;
    v0[14] = v2;
    [v1 restoreStateWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v0[26] = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
    sub_5A384();
    v0[27] = sub_5A374();
    v4 = sub_5A354();

    return _swift_task_switch(sub_3C0E8, v4, v3);
  }
}

uint64_t sub_3BE98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_3C27C;
  }

  else
  {
    v3 = sub_3BFA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3BFA8()
{
  v1 = v0[24];
  sub_59CC4();
  v2 = sub_59D04();
  v3 = sub_5A474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Engine successfully restored a playback queue", v4, 2u);
  }

  (*(v0[21] + 8))(v0[24], v0[20]);
  v0[26] = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
  sub_5A384();
  v0[27] = sub_5A374();
  v6 = sub_5A354();

  return _swift_task_switch(sub_3C0E8, v6, v5);
}

uint64_t sub_3C0E8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  [v2 start];

  return _swift_task_switch(sub_3C160, 0, 0);
}

uint64_t sub_3C160()
{
  v1 = v0[23];
  sub_59CC4();
  v2 = sub_59D04();
  v3 = sub_5A474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "MPC Playback Engine started", v4, 2u);
  }

  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];

  (*(v8 + 8))(v6, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_3C27C()
{
  v1 = v0[25];
  v2 = v0[22];
  swift_willThrow();
  sub_59CC4();
  swift_errorRetain();
  v3 = sub_59D04();
  v4 = sub_5A474();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Error restoring playback queue: %{public}@", v7, 0xCu);
    sub_9708(v8, &qword_7E260, &qword_5BE50);
  }

  else
  {
    v10 = v0[25];
  }

  (*(v0[21] + 8))(v0[22], v0[20]);
  v0[26] = *(v0[19] + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine);
  sub_5A384();
  v0[27] = sub_5A374();
  v12 = sub_5A354();

  return _swift_task_switch(sub_3C0E8, v12, v11);
}

uint64_t sub_3C454(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

id sub_3C550()
{
  v2.receiver = v0;
  v2.super_class = _s9MPCPlayerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

float sub_3C5F4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  [v0 floatForKey:IMAVPlayerVolumeUserDefaultKey];
  v2 = v1;

  return v2;
}

void sub_3C67C(void *a1)
{
  [*(v1 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_engine) setFallbackPlaybackIntent:a1];
}

uint64_t sub_3C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *a4;
  swift_beginAccess();
  sub_312E8(a1, v6 + v10, a5, a6);
  return swift_endAccess();
}

uint64_t sub_3C85C(uint64_t a1, char a2)
{
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_59CD4();
    swift_errorRetain();
    v10 = sub_59D04();
    v11 = sub_5A454();
    sub_3D940(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_0, v10, v11, "Error updating playback position: %@", v12, 0xCu);
      sub_9708(v13, &qword_7E260, &qword_5BE50);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

id sub_3CA10(void *a1)
{
  v3 = [a1 episodeUUID];
  if (v3)
  {
    v4 = sub_5A194();
    v6 = v5;
  }

  else
  {
    result = [a1 episodeAdamID];
    if (!result)
    {
      return result;
    }

    v12 = result;
    sub_5A194();

    result = sub_59C54();
    if (v13)
    {
      return result;
    }

    v4 = result;
    v6 = 0;
  }

  if ([a1 completed])
  {
    v7 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_observer;
    swift_beginAccess();
    sub_9768(v1 + v7, v16, &unk_7E730, &unk_5D9D0);
    if (v17)
    {
      v8 = v3 != 0;
      sub_123D8(v16, v15);
      sub_9708(v16, &unk_7E730, &unk_5D9D0);
      v9 = v1;
      v10 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_306C0(v4, v6, v8);
      v1 = v9;
      sub_5350(v4, v6, v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    else
    {
      sub_5350(v4, v6, v3 != 0);
      sub_9708(v16, &unk_7E730, &unk_5D9D0);
    }
  }

  else
  {
    sub_5350(v4, v6, v3 != 0);
  }

  v14 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_observer;
  swift_beginAccess();
  sub_9768(v1 + v14, v16, &unk_7E730, &unk_5D9D0);
  return sub_9708(v16, &unk_7E730, &unk_5D9D0);
}

uint64_t sub_3CD34()
{
  sub_9708(v0 + 24, &qword_7DB40, &qword_5CE30);
  sub_9708(v0 + 64, &unk_7E730, &unk_5D9D0);

  return swift_deallocClassInstance();
}

uint64_t sub_3CDA4(uint64_t a1)
{
  swift_beginAccess();
  sub_312E8(a1, v1 + 24, &qword_7DB40, &qword_5CE30);
  return swift_endAccess();
}

uint64_t sub_3CE04(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return _objc_release_x1();
}

uint64_t sub_3CE10(uint64_t a1)
{
  swift_beginAccess();
  sub_312E8(a1, v1 + 64, &unk_7E730, &unk_5D9D0);
  return swift_endAccess();
}

uint64_t sub_3CEA0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_5A194();

  return v6;
}

id sub_3CF04()
{
  v1 = [*v0 accountID];

  return v1;
}

void *sub_3D11C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_3D13C(uint64_t a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CC4();
  swift_errorRetain();
  v7 = sub_59D04();
  v8 = sub_5A454();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v11 = sub_5A1B4();
    v13 = sub_9430(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "engine:didFailToPlay: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_3D310()
{
  v0 = sub_59D14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59CC4();
  swift_errorRetain();
  v5 = sub_59D04();
  v6 = sub_5A454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "engine:didFailToPlayFirstItem: %@", v7, 0xCu);
    sub_9708(v8, &qword_7E260, &qword_5BE50);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_3D4B8(void *a1)
{
  v2 = v1;
  v4 = sub_59D14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9MPCPlayer_playbackPositionTracker;
  swift_beginAccess();
  sub_9768(v2 + v12, &v44, &qword_7DB40, &qword_5CE30);
  if (v45)
  {
    v41 = v5;
    v42 = v4;
    sub_12440(&v44, v47);
    v14 = v48;
    v13 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v15 = sub_3D8F4();
    v45 = v15;
    v46 = &protocol witness table for MPCPodcastPlaybackPositionEvent;
    *&v44 = a1;
    v16 = *(v13 + 8);
    v17 = a1;
    v18 = v16(&v44, v14, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    if (v18)
    {
      v19 = v48;
      v20 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v45 = v15;
      v46 = &protocol witness table for MPCPodcastPlaybackPositionEvent;
      *&v44 = v17;
      v21 = *(v20 + 16);
      v22 = v17;
      v21(&v44, sub_3C85C, 0, v19, v20);
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      sub_3CA10(v22);
    }

    else
    {
      sub_59CD4();
      v27 = v17;
      v28 = sub_59D04();
      v29 = sub_5A474();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43 = v31;
        *v30 = 141558275;
        *(v30 + 4) = 1752392040;
        *(v30 + 12) = 2081;
        v32 = [v27 episodeAdamID];
        v33 = v42;
        if (v32)
        {
          v34 = v32;
          v35 = sub_5A194();
          v37 = v36;
        }

        else
        {
          v35 = 0;
          v37 = 0;
        }

        *&v44 = v35;
        *(&v44 + 1) = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D790, &unk_5D9E0);
        v38 = sub_5A1B4();
        v40 = sub_9430(v38, v39, &v43);

        *(v30 + 14) = v40;
        _os_log_impl(&dword_0, v28, v29, "Not allowing sync for episode adam id %{private,mask.hash}s", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v31);

        (*(v41 + 8))(v11, v33);
      }

      else
      {

        (*(v41 + 8))(v11, v42);
      }
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v47);
  }

  else
  {
    sub_9708(&v44, &qword_7DB40, &qword_5CE30);
    sub_59CD4();
    v23 = sub_59D04();
    v24 = sub_5A454();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "No playback positon tracker setup.", v25, 2u);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

unint64_t sub_3D8F4()
{
  result = qword_7E740;
  if (!qword_7E740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7E740);
  }

  return result;
}

uint64_t sub_3D940(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_3D94C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_3D9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_15D44;

  return sub_3BC04(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_3DA90(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_5A7D4();

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8E0, &unk_5DA60);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_56674(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

void sub_3DB4C(uint64_t a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v9 >= 2)
    {
      v10 = v5;
      v11 = *a1;
      v24 = *(a1 + 8);
      sub_3F9A8(v11, v8);
      if (sub_3DE94())
      {
        sub_59CC4();
        v12 = v9;
        v13 = sub_59D04();
        v14 = sub_5A474();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          v17 = [v12 playerPath];
          *(v15 + 4) = v17;
          *v16 = v17;
          _os_log_impl(&dword_0, v13, v14, "Received timeout for player path %@", v15, 0xCu);
          sub_9708(v16, &qword_7E260, &qword_5BE50);
        }

        (*(v3 + 8))(v7, v10);
        swift_beginAccess();
        if (!swift_weakLoadStrong())
        {
          goto LABEL_9;
        }

        v18 = [v12 playerPath];
        if (v18)
        {
          v19 = v18;
          sub_3E268(v18);

LABEL_9:
          return;
        }

        __break(1u);
      }

      else
      {

        v22 = v24;
      }
    }
  }

  else if (v9)
  {
    v24 = *(a1 + 8);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v20 = [v9 playerPath];
      swift_beginAccess();
      v21 = sub_3EE40(v20);
      swift_endAccess();
      if (v21)
      {
        swift_getObjectType();
        sub_5A584();
        sub_3F9EC(v9, v24, 0);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_3F9EC(v9, v24, 0);
      }
    }
  }
}

uint64_t sub_3DE94()
{
  v1 = v0;
  v2 = [v0 domain];
  v3 = sub_5A194();
  v5 = v4;

  v6 = [v1 code];
  if (sub_5A194() == v3 && v7 == v5)
  {

    if (v6 == &dword_0 + 2)
    {
LABEL_7:
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v9 = sub_5A8E4();

    if ((v9 & 1) != 0 && v6 == &dword_0 + 2)
    {
      goto LABEL_7;
    }
  }

  v36 = _swiftEmptyArrayStorage;
  v11 = [v1 userInfo];
  v12 = sub_5A104();

  v13 = sub_5A194();
  if (!*(v12 + 16))
  {

    goto LABEL_14;
  }

  v15 = sub_565FC(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_9E04(*(v12 + 56) + 32 * v15, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E958, &unk_5DA90);
  if (swift_dynamicCast())
  {
    sub_50F5C(v34);
  }

LABEL_15:
  v18 = [v1 userInfo];
  v19 = sub_5A104();

  v20 = sub_5A194();
  if (*(v19 + 16))
  {
    v22 = sub_565FC(v20, v21);
    v24 = v23;

    if (v24)
    {
      sub_9E04(*(v19 + 56) + 32 * v22, v35);

      sub_4FE4(0, &qword_7E950, NSError_ptr);
      if (swift_dynamicCast())
      {
        v25 = v34;
        sub_5A274();
        if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v33 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
          sub_5A2B4();
        }

        sub_5A304();
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_23:
  v26 = v36;
  if (v36 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)); i; i = sub_5A814())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_5A724();
      }

      else
      {
        if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v10 = sub_3DE94();

      if ((v10 & 1) == 0)
      {
        ++v28;
        if (v31 != i)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v10 = 0;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_3E268(void *a1)
{
  v2 = v1;
  v4 = sub_59FC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v69 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (&v53 - v9);
  v11 = sub_5A034();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  v13 = __chkstk_darwin(v11);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v53 - v15;
  v16 = sub_59FE4();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  __chkstk_darwin(v16);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_5A014();
  v59 = *(v61 - 8);
  v19 = *(v59 + 64);
  __chkstk_darwin(v61);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_5A554();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v27 = *(v1 + 32);

  v64 = a1;
  v28 = sub_3DA90(a1, v27);

  if (v28)
  {
    return swift_unknownObjectRelease();
  }

  v56 = sub_4FE4(0, &qword_7E8C0, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_3F360(&qword_7E8C8, &type metadata accessor for OS_dispatch_source.TimerFlags);
  v58 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E8D0, &unk_5DA50);
  v57 = v4;
  sub_5108(&qword_7E8D8, &qword_7E8D0, &unk_5DA50);
  sub_5A694();
  v29 = *(v2 + 24);
  v30 = sub_5A564();

  (*(v23 + 8))(v26, v22);
  v55 = v30;
  ObjectType = swift_getObjectType();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = v64;
  *(v33 + 16) = v32;
  *(v33 + 24) = v34;
  aBlock[4] = sub_3EE20;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_6;
  v35 = _Block_copy(aBlock);

  v54 = v34;
  sub_5A004();
  v36 = v60;
  v56 = ObjectType;
  sub_3EC50();
  sub_5A574();
  _Block_release(v35);
  (*(v62 + 8))(v36, v63);
  (*(v59 + 8))(v21, v61);

  v37 = v65;
  sub_5A024();
  *v10 = *(v2 + 40);
  v38 = v58;
  v39 = *(v58 + 104);
  v40 = v57;
  v39(v10, enum case for DispatchTimeInterval.seconds(_:), v57);
  v41 = v66;
  sub_5A054();
  v42 = *(v38 + 8);
  v42(v10, v40);
  v64 = v2;
  v43 = v68;
  v67 = *(v67 + 8);
  (v67)(v37, v68);
  v39(v10, enum case for DispatchTimeInterval.never(_:), v40);
  v44 = v69;
  *v69 = 0;
  v39(v44, enum case for DispatchTimeInterval.nanoseconds(_:), v40);
  v45 = v55;
  sub_5A5E4();
  v42(v44, v40);
  v42(v10, v40);
  v46 = v64;
  (v67)(v41, v43);
  v47 = v45;
  sub_5A594();
  swift_beginAccess();
  v48 = v46[4];
  if ((v48 & 0xC000000000000001) == 0)
  {
    v51 = v46[4];
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  if (v48 < 0)
  {
    v49 = v46[4];
  }

  else
  {
    v49 = v48 & 0xFFFFFFFFFFFFFF8;
  }

  swift_unknownObjectRetain();
  result = sub_5A7C4();
  if (!__OFADD__(result, 1))
  {
    v46[4] = sub_3EF8C(v49, result + 1);
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v46[4];
    sub_57284(v47, v54, isUniquelyReferenced_nonNull_native);
    v46[4] = v70;
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_3EA08(uint64_t a1, void *a2)
{
  v3 = sub_59D14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_3EE40(a2);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  sub_59CC4();
  v8 = a2;
  v9 = sub_59D04();
  v10 = sub_5A474();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_0, v9, v10, "Route for player path %@ has timed out, switching to system route", v11, 0xCu);
    sub_9708(v12, &qword_7E260, &qword_5BE50);
  }

  (*(v4 + 8))(v7, v3);
  v14 = objc_opt_self();
  v15 = [v14 systemRoute];
  [v14 setActiveRoute:v15 completion:0];
}

uint64_t sub_3EC50()
{
  sub_59FE4();
  sub_3F360(&qword_7ECF0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0);
  return sub_5A694();
}

uint64_t sub_3ED3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_3EDA8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3EDE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3EE40(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_56674(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_3F1D4(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_57560();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_5A7D4();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_5A7C4();
  v8 = sub_3EF8C(v4, v7);

  v9 = sub_56674(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_3F1D4(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_3EF8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
    v2 = sub_5A844();
    v19 = v2;
    sub_5A7B4();
    v3 = sub_5A7E4();
    if (v3)
    {
      v4 = v3;
      sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8E0, &unk_5DA60);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_569F8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_5A614(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_5A7E4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_3F1D4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_5A6B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_5A614(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_3F360(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_3F3A8(void *a1, uint64_t a2)
{
  v40 = a2;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E900, &unk_5DA70);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v42 = &v35 - v9;
  v38 = sub_5A4F4();
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v38);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5A494();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = sub_5A014();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v43 = v2 + 16;
  v18 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v35 = "e";
  v36 = v18;
  sub_59FF4();
  v46 = _swiftEmptyArrayStorage;
  sub_3F360(&qword_7E910, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0);
  sub_5A694();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v19 = v36;
  v20 = sub_5A544();
  v21 = v37;
  v37[3] = v20;
  v22 = sub_11830(_swiftEmptyArrayStorage);
  v24 = v40;
  v23 = v41;
  v21[4] = v22;
  v21[5] = v24;
  v46 = v23;
  v50 = v21[3];
  v25 = v50;
  v26 = sub_5A4A4();
  v27 = v39;
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  v28 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E928, &unk_5DA80);
  v30 = sub_5108(&unk_7E930, &qword_7E928, &unk_5DA80);
  v31 = sub_3F938();
  v32 = v42;
  sub_59E64();
  sub_9708(v27, &unk_7D9C0, &unk_5C810);

  swift_allocObject();
  swift_weakInit();
  v46 = v29;
  v47 = v19;
  v48 = v30;
  v49 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v44;
  sub_59F84();

  (*(v45 + 8))(v32, v33);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0);
  sub_59D54();
  swift_endAccess();

  return v21;
}

unint64_t sub_3F938()
{
  result = qword_7DA50;
  if (!qword_7DA50)
  {
    sub_4FE4(255, &qword_7DA40, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7DA50);
  }

  return result;
}

id sub_3F9A8(id result, void *a2)
{
  if (result >= 2)
  {
    v3 = result;

    return a2;
  }

  return result;
}

void sub_3F9EC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    sub_3F9F8(a1, a2);
  }

  else
  {
  }
}

void sub_3F9F8(void *a1, void *a2)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_3FA3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v1;
}

uint64_t sub_3FAB0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_4FE4(0, &qword_7E540, NSObject_ptr);
  if (sub_5A624())
  {
    return sub_5A624() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3FB28()
{
  v10 = sub_5A4F4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5A494();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_5A014();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  sub_5A004();
  v11 = _swiftEmptyArrayStorage;
  sub_42328(&qword_7E910, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0);
  sub_5A694();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_5A544();
  qword_7E960 = result;
  return result;
}

uint64_t sub_3FD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_59FE4();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5A014();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_7CC80;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = sub_42454;
  *(v14 + 24) = v12;
  aBlock[4] = sub_42494;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_38;
  v15 = _Block_copy(aBlock);
  sub_5A004();
  v20 = _swiftEmptyArrayStorage;
  sub_42328(&qword_7ECF0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0);
  sub_5A694();
  sub_5A534();
  _Block_release(v15);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void sub_400D0(void (*a1)(id, void))
{
  v2 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
  v3 = objc_allocWithZone(MPAVRoutingController);
  v4 = sub_5A174();
  v5 = [v3 initWithDataSource:v2 name:v4];

  a1(v5, 0);
}

void *sub_401A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v146 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v142 = &v101 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB80, &qword_5CE58);
  v127 = *(v125 - 8);
  v12 = *(v127 + 64);
  __chkstk_darwin(v125);
  v123 = &v101 - v13;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9D0, &qword_5DB80);
  v126 = *(v124 - 8);
  v14 = *(v126 + 64);
  __chkstk_darwin(v124);
  v122 = &v101 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9D8, &qword_5DB88);
  v134 = *(v132 - 8);
  v16 = *(v134 + 64);
  __chkstk_darwin(v132);
  v128 = &v101 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9E0, &qword_5DB90);
  v133 = *(v131 - 8);
  v18 = *(v133 + 64);
  __chkstk_darwin(v131);
  v129 = &v101 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9E8, &qword_5DB98);
  v21 = *(v20 - 8);
  v135 = v20;
  v136 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v130 = &v101 - v23;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9F0, &qword_5DBA0);
  v138 = *(v140 - 8);
  v24 = *(v138 + 64);
  __chkstk_darwin(v140);
  v121 = &v101 - v25;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E9F8, &qword_5DBA8);
  v139 = *(v141 - 8);
  v26 = *(v139 + 64);
  __chkstk_darwin(v141);
  v137 = &v101 - v27;
  v120 = sub_5A4E4();
  v118 = *(v120 - 8);
  v28 = *(v118 + 64);
  __chkstk_darwin(v120);
  v112 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_5A5C4();
  v147 = *(v104 - 8);
  v30 = *(v147 + 64);
  __chkstk_darwin(v104);
  v143 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA00, &qword_5DBB0);
  v109 = *(v108 - 8);
  v32 = *(v109 + 64);
  __chkstk_darwin(v108);
  v105 = &v101 - v33;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA08, &qword_5DBB8);
  v111 = *(v110 - 8);
  v34 = *(v111 + 64);
  __chkstk_darwin(v110);
  v106 = &v101 - v35;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA10, &qword_5DBC0);
  v114 = *(v113 - 8);
  v36 = *(v114 + 64);
  __chkstk_darwin(v113);
  v107 = &v101 - v37;
  v38 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_routingController;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA18, &qword_5DBC8);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v115 = v39;
  swift_allocObject();
  *&v4[v38] = sub_59DE4();
  *&v4[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_subscriptions] = _swiftEmptyArrayStorage;
  v42 = &v4[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_playerID];
  *v42 = a1;
  *(v42 + 1) = a2;
  v43 = &v4[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_bundleID];
  *v43 = v146;
  v43[1] = a4;

  v44 = sub_5A174();
  v45 = sub_5A174();
  v46 = [objc_opt_self() pathWithRoute:0 bundleID:v44 playerID:v45];

  v47 = v46;

  swift_beginAccess();
  v153 = v47;
  v154 = v47;
  sub_59DF4();
  swift_endAccess();
  v48 = _s21PlayerPathCoordinatorCMa();
  v152.receiver = v5;
  v152.super_class = v48;
  v49 = objc_msgSendSuper2(&v152, "init");
  v119 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_routingController;
  v50 = *&v49[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_routingController];
  v51 = v49;
  v117 = v49;
  v148 = v50;
  v116 = sub_5108(&qword_7EA20, &qword_7EA18, &qword_5DBC8);
  v52 = v51;

  sub_59F84();

  v102 = v52;
  v146 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_subscriptions;
  swift_beginAccess();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  v144 = sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0);
  sub_59D54();
  swift_endAccess();

  v53 = objc_opt_self();
  v54 = [v53 defaultCenter];
  v55 = v143;
  sub_5A5D4();

  sub_42328(&qword_7E370, &type metadata accessor for NSNotificationCenter.Publisher);
  v56 = v104;
  v57 = sub_59E54();
  v58 = *(v147 + 8);
  v147 += 8;
  v58(v55, v56);
  v148 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA28, &qword_5DBD8);
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA30, &qword_5DBE0) - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_5BC80;
  v63 = sub_59474();
  (*(*(v63 - 8) + 56))(v62 + v61, 1, 1, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EA38, &qword_5DBE8);
  v103 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_5108(&qword_7EA40, &qword_7EA38, &qword_5DBE8);
  v64 = v105;
  sub_59F24();

  v65 = [v53 defaultCenter];
  v66 = v143;
  sub_5A5D4();

  v67 = v66;
  v68 = sub_59E54();
  v69 = v56;
  v70 = v102;
  v58(v67, v69);
  v148 = v68;
  sub_5108(&qword_7EA48, &qword_7EA00, &qword_5DBB0);
  v71 = v106;
  v72 = v108;
  sub_59EF4();

  (*(v109 + 8))(v64, v72);
  v73 = v112;
  sub_5A4B4();
  v74 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v75 = sub_5A504();
  v148 = v75;
  sub_5108(&qword_7EA50, &qword_7EA08, &qword_5DBB8);
  v76 = sub_3F938();
  v77 = v107;
  v78 = v110;
  sub_59F54();

  (*(v118 + 8))(v73, v120);
  (*(v111 + 8))(v71, v78);
  *(swift_allocObject() + 16) = v70;
  sub_5108(&qword_7EA58, &qword_7EA10, &qword_5DBC0);
  v79 = v113;
  sub_59F84();

  (*(v114 + 8))(v77, v79);
  swift_beginAccess();
  sub_59D54();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC88, &qword_5CF18);
  v80 = v123;
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7DC90, &qword_7DB80, &qword_5CE58);
  v81 = v122;
  v82 = v125;
  sub_59EC4();
  (*(v127 + 8))(v80, v82);
  sub_5108(&qword_7EA60, &qword_7E9D0, &qword_5DB80);
  v83 = v124;
  v84 = sub_59E74();
  (*(v126 + 8))(v81, v83);
  v148 = v84;
  v153 = sub_30F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0);
  v85 = v128;
  v86 = v121;
  sub_59EB4();

  sub_5108(&qword_7EA68, &qword_7E9D8, &qword_5DB88);
  v87 = v129;
  v88 = v132;
  sub_59EC4();
  (*(v134 + 8))(v85, v88);
  sub_5108(&qword_7EA70, &qword_7E9E0, &qword_5DB90);
  v89 = v130;
  v90 = v131;
  sub_59F64();
  (*(v133 + 8))(v87, v90);
  v148 = *&v117[v119];
  sub_5108(&qword_7EA78, &qword_7E9E8, &qword_5DB98);
  v91 = v135;
  sub_59EB4();
  (*(v136 + 8))(v89, v91);
  if (qword_7CC80 != -1)
  {
    swift_once();
  }

  v92 = qword_7E960;
  v148 = qword_7E960;
  v93 = sub_5A4A4();
  v94 = v142;
  (*(*(v93 - 8) + 56))(v142, 1, 1, v93);
  v95 = sub_5108(&qword_7EA80, &qword_7E9F0, &qword_5DBA0);
  v96 = v92;
  v97 = v137;
  v98 = v140;
  sub_59E64();
  sub_422C0(v94);

  (*(v138 + 8))(v86, v98);
  v148 = v98;
  v149 = v74;
  v150 = v95;
  v151 = v76;
  swift_getOpaqueTypeConformance2();
  v99 = v141;
  sub_59F84();
  (*(v139 + 8))(v97, v99);
  swift_beginAccess();
  sub_59D54();
  swift_endAccess();

  return v70;
}

uint64_t sub_415B0(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = ObjectType;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_423A8;
  *(v6 + 24) = v4;
  v10[4] = sub_423E8;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_41DF0;
  v10[3] = &block_descriptor_7;
  v7 = _Block_copy(v10);
  v8 = a2;

  [v5 getActiveRouteWithTimeout:v7 completion:1.0];
  _Block_release(v7);
}

id sub_41704(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return [v2 setDiscoveryMode:v3];
}

void sub_41724(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = [*(a1 + 8) route];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isDeviceRoute];
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
}

uint64_t sub_4178C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_59FE4();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_5A014();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v14 = sub_5A504();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  aBlock[4] = sub_42448;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_29;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a1;

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_42328(&qword_7ECF0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0);
  sub_5A694();
  sub_5A534();
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

void sub_41A90(char *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v4 = [v25 route];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v5 = [v25 route];
  if (v5 && (v6 = [v5 connection], v5, v6))
  {
    v7 = [v6 isInvalidated];

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  sub_4FE4(0, &qword_7E450, MPAVRoute_ptr);
  v8 = v4;
  v9 = a2;
  v10 = sub_5A624();

  if (!(v7 & 1 | ((v10 & 1) == 0)))
  {

    return;
  }

LABEL_7:
  v11 = *&a1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_bundleID];
  v12 = *&a1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_bundleID + 8];
  v13 = *&a1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_playerID];
  v14 = *&a1[OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController21PlayerPathCoordinator_playerID + 8];
  v15 = sub_5A174();
  v16 = sub_5A174();
  v17 = objc_opt_self();
  v18 = [v17 pathWithRoute:a2 bundleID:v15 playerID:v16];

  if ([a2 isDeviceRoute])
  {
    v19 = v18;
  }

  else
  {
    v19 = [v17 pathWithRoute:a2 bundleID:0 playerID:0];
  }

  v20 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v18;
  v22 = a1;
  v23 = v20;
  sub_59E34();
}

void sub_41D64(void *a1, void (*a2)(id))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = [objc_opt_self() systemRoute];
  }

  v4 = a1;
  a2(v5);
}

void sub_41DF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_41E8C()
{
  v2.receiver = v0;
  v2.super_class = _s21PlayerPathCoordinatorCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s21PlayerPathCoordinatorCMa()
{
  result = qword_7E9B8;
  if (!qword_7E9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_41FD8()
{
  sub_42090();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_42090()
{
  if (!qword_7E9C8)
  {
    v0 = sub_59E44();
    if (!v1)
    {
      atomic_store(v0, &qword_7E9C8);
    }
  }
}

uint64_t sub_420E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_42128(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_42174@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_421F8(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  v6 = v2;
  v7 = v3;
  return sub_59E34();
}

uint64_t sub_42280()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_422C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_42328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_42370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_423B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_42408()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_42454(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_424B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_199B4(a3, v24 - v10);
  v12 = sub_5A3B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_9708(v11, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_5A354();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_5A1C4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_42760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_199B4(a3, v24 - v10);
  v12 = sub_5A3B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_9708(v11, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_5A354();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_5A1C4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_429FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_42AEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_59944();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v22 - v13);
  v22 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_4411C(a1, &off_71F40);
  *v14 = a1;
  (*(v9 + 104))(v14, enum case for MediaIdentifier.localEpisodes(_:), v8);

  sub_5A394();
  v15 = sub_5A3B4();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = Strong;
  (*(v9 + 32))(&v18[v17], v12, v8);
  v19 = &v18[(v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  v20 = v22;
  *v19 = v22;
  v19[8] = a2;
  sub_3B8F0(v20, a2);
  sub_43418(0, 0, v7, &unk_5DC28, v18);

  sub_9708(v7, &qword_7DB70, &qword_5C740);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_42DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_59944();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (&v22 - v13);
  v22 = *a2;
  LOBYTE(a2) = *(a2 + 8);
  sub_43BC4(a1, &off_71F68);
  *v14 = a1;
  (*(v9 + 104))(v14, enum case for MediaIdentifier.episodes(_:), v8);

  sub_5A394();
  v15 = sub_5A3B4();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = Strong;
  (*(v9 + 32))(&v18[v17], v12, v8);
  v19 = &v18[(v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  v20 = v22;
  *v19 = v22;
  v19[8] = a2;
  sub_3B8F0(v20, a2);
  sub_43418(0, 0, v7, &unk_5DC30, v18);

  sub_9708(v7, &qword_7DB70, &qword_5C740);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_43094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 112) = a7;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 56) = a1;
  *(v7 + 64) = a4;
  return _swift_task_switch(sub_430BC, 0, 0);
}

uint64_t sub_430BC()
{
  if (*(v0 + 64))
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 112);
    *(v0 + 40) = type metadata accessor for PlaybackController.QueueCommand();
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v5 = boxed_opaque_existential_1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E460, &qword_5D580) + 48);
    v6 = sub_59944();
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v2, v6);
    *v5 = v1;
    v5[8] = v3;
    swift_storeEnumTagMultiPayload();
    sub_3B8F0(v1, v3);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_43260;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {
    **(v0 + 56) = 0;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_43260(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_433B4;
  }

  else
  {
    *(v4 + 104) = a1;
    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v7 = sub_43390;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_433B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t sub_43418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_199B4(a3, v24 - v10);
  v12 = sub_5A3B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_9708(v11, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_5A354();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_5A1C4() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7EBC0, &unk_5DDD0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_43684(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for PlaybackController.QueueCommand();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_43718, 0, 0);
}

uint64_t sub_43718()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    **(v0 + 64) = v4;
    swift_storeEnumTagMultiPayload();
    v5 = v4;
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_43834;

    return sub_2E290();
  }

  else
  {

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_43834(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = v4[9];

    return _swift_task_switch(sub_43B4C, 0, 0);
  }

  else
  {
    v4[12] = a1;
    v8 = swift_task_alloc();
    v4[13] = v8;
    *v8 = v6;
    v8[1] = sub_439C8;
    v9 = v4[8];

    return PlaybackController.QueueCommand.canPerform(for:)(a1);
  }
}

uint64_t sub_439C8(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_43AC8, 0, 0);
}

uint64_t sub_43AC8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  sub_1B1CC(v1);
  v3 = *(v0 + 112);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_43B4C()
{
  v1 = v0[11];
  sub_1B1CC(v0[8]);

  v2 = v0[8];

  v3 = v0[1];

  return v3(0);
}

void sub_43BC4(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v29 = &v29 - v6;
  swift_beginAccess();
  v30 = v2;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v33 = v37;
  if (!v37)
  {
    return;
  }

  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_28:

    return;
  }

  v7 = 0;
  v31 = a1 + 32;
  v8 = &off_7B000;
  while (1)
  {
    v9 = *(v31 + 8 * v7);
    v35 = v7;
    v36 = v9;
    v10 = MPCPlayerResponseTracklist.itemsInSections(sections:)(v34);
    v11 = v10;
    if (!(v10 >> 62))
    {
      v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
        break;
      }

      goto LABEL_26;
    }

    v12 = sub_5A814();
    if (v12)
    {
      break;
    }

LABEL_26:

LABEL_27:
    v7 = v35 + 1;
    if (v35 + 1 == v32)
    {
      goto LABEL_28;
    }
  }

  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = sub_5A724();
    }

    else
    {
      if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_31;
      }

      v16 = *(v11 + 8 * v13 + 32);
    }

    v15 = v16;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v18 = [v16 v8[361]];
    if (!v18)
    {
      goto LABEL_10;
    }

    v19 = v18;
    v20 = [v18 flattenedGenericObject];

    if (!v20)
    {
      goto LABEL_10;
    }

    v21 = [v20 anyObject];

    if (!v21)
    {
      goto LABEL_10;
    }

    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (!v22)
    {
      v14 = v15;
      v15 = v21;
LABEL_9:

      goto LABEL_10;
    }

    v23 = [v22 identifiers];
    v24 = [v23 universalStore];

    if (!v24)
    {
      v14 = v21;
      v8 = &off_7B000;
      goto LABEL_9;
    }

    [v24 adamID];
    swift_unknownObjectRelease();
    v25 = sub_59C44();

    if (v25 == v36)
    {

      v26 = sub_5A3B4();
      v27 = v29;
      (*(*(v26 - 8) + 56))(v29, 1, 1, v26);
      v28 = swift_allocObject();
      v28[2] = 0;
      v28[3] = 0;
      v28[4] = v30;
      v28[5] = v15;

      sub_17A48(0, 0, v27, &unk_5DC90, v28);

      v8 = &off_7B000;
      goto LABEL_27;
    }

    v8 = &off_7B000;
LABEL_10:

    ++v13;
    if (v17 == v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t MPCPlayerResponseTracklist.itemsInSections(sections:)(uint64_t a1)
{
  v2 = v1;
  v12 = _swiftEmptyArrayStorage;
  v4 = [v1 displayItems];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = &v12;
  v5[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_4875C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_48778;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_466E0;
  aBlock[3] = &block_descriptor_8;
  v7 = _Block_copy(aBlock);

  v8 = v2;

  [v4 enumerateSectionsUsingBlock:v7];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

void sub_4411C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v42 = &v41 - v7;
  swift_beginAccess();
  v47 = v2;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v8 = v53;
  if (!v53)
  {
    return;
  }

  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_32:

    return;
  }

  v9 = 0;
  v44 = a2;
  v45 = a1 + 32;
  v10 = &off_7B000;
  v43 = v53;
  while (1)
  {
    v11 = (v45 + 16 * v9);
    v12 = v11[1];
    v49 = *v11;
    v50 = v12;

    v13 = MPCPlayerResponseTracklist.itemsInSections(sections:)(a2);
    v14 = v13;
    v48 = v9;
    if (v13 >> 62)
    {
      break;
    }

    v15 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    v16 = &off_7B000;
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_30:

    sub_59924();
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v8 = v43;
    a2 = v44;
    v39[2] = v43;
    v39[3] = a2;
    v39[4] = v38;
    v40 = v8;

    sub_59914();

LABEL_31:
    v9 = v48 + 1;
    if (v48 + 1 == v46)
    {
      goto LABEL_32;
    }
  }

  v15 = sub_5A814();
  v16 = &off_7B000;
  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_7:
  v17 = 0;
  v51 = v14 & 0xFFFFFFFFFFFFFF8;
  v52 = v14 & 0xC000000000000001;
  while (1)
  {
    if (v52)
    {
      v19 = sub_5A724();
    }

    else
    {
      if (v17 >= *(v51 + 16))
      {
        goto LABEL_35;
      }

      v19 = *(v14 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v22 = [v19 v10[361]];
    if (v22 && (v23 = v22, v24 = [v22 v16[362]], v23, v24) && (v18 = objc_msgSend(v24, "anyObject"), v24, v18))
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25 && (v26 = [v25 identifiers], v27 = objc_msgSend(v26, "library"), v26, v27))
      {
        v28 = v10;
        v29 = [v27 databaseID];
        swift_unknownObjectRelease();
        v30 = sub_5A194();
        v32 = v31;

        if (v30 == v49 && v32 == v50)
        {

          v10 = v28;
LABEL_28:

          v35 = sub_5A3B4();
          v36 = v42;
          (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
          v37 = swift_allocObject();
          v37[2] = 0;
          v37[3] = 0;
          v37[4] = v47;
          v37[5] = v20;

          sub_17A48(0, 0, v36, &unk_5DC98, v37);

          v8 = v43;
          a2 = v44;
          goto LABEL_31;
        }

        v34 = sub_5A8E4();

        v10 = v28;
        if (v34)
        {
          goto LABEL_28;
        }

        v18 = v20;
        v16 = &off_7B000;
      }

      else
      {
      }
    }

    else
    {
      v18 = v20;
    }

    ++v17;
    if (v21 == v15)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_445E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v33 - v9;
  if (a1)
  {
    v33[0] = v10;
    v34 = [a1 storeTrackId];
    v11 = MPCPlayerResponseTracklist.itemsInSections(sections:)(a3);
    v12 = v11;
    v33[1] = a4;
    if (v11 >> 62)
    {
LABEL_29:
      v13 = sub_5A814();
      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      if (v13)
      {
LABEL_4:
        v14 = 0;
        v15 = &off_7B000;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v18 = sub_5A724();
          }

          else
          {
            if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_27;
            }

            v18 = *(v12 + 8 * v14 + 32);
          }

          v17 = v18;
          v19 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v20 = [v18 v15[361]];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 flattenedGenericObject];

            if (v22)
            {
              v23 = [v22 anyObject];

              if (v23)
              {
                objc_opt_self();
                v24 = swift_dynamicCastObjCClass();
                if (!v24)
                {
                  v16 = v17;
                  v17 = v23;
LABEL_6:

                  goto LABEL_7;
                }

                v25 = [v24 identifiers];
                v26 = [v25 universalStore];

                if (!v26)
                {
                  v16 = v23;
                  v15 = &off_7B000;
                  goto LABEL_6;
                }

                [v26 adamID];
                swift_unknownObjectRelease();
                v27 = sub_59C44();

                if (v27 < 0)
                {
                  goto LABEL_28;
                }

                if (v27 == v34)
                {

                  swift_beginAccess();
                  Strong = swift_weakLoadStrong();
                  if (Strong)
                  {
                    v29 = Strong;
                    v30 = sub_5A3B4();
                    v31 = v33[0];
                    (*(*(v30 - 8) + 56))(v33[0], 1, 1, v30);
                    v32 = swift_allocObject();
                    v32[2] = 0;
                    v32[3] = 0;
                    v32[4] = v29;
                    v32[5] = v17;
                    sub_17A48(0, 0, v31, &unk_5DDC8, v32);
                  }

                  else
                  {
                  }

                  return;
                }

                v15 = &off_7B000;
              }
            }
          }

LABEL_7:

          ++v14;
        }

        while (v19 != v13);
      }
    }
  }
}

void sub_44954(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v7 = v32;
    if (v32)
    {
      v8 = [v32 items];
      v9 = [v8 allItems];

      sub_48844();
      v10 = sub_5A294();

      v27 = v6;
      v28 = v2;
      v29 = v7;
      if (v10 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_5A814())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = sub_5A724();
          }

          else
          {
            if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_21;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v16 = [v13 contentItemIdentifier];
          v17 = sub_5A194();
          v19 = v18;

          if (v17 == v30 && v19 == v31)
          {

LABEL_19:

            v22 = sub_5A3B4();
            v23 = v27;
            (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
            v24 = swift_allocObject();
            v24[2] = 0;
            v24[3] = 0;
            v24[4] = v28;
            v24[5] = v14;

            v25 = v14;
            sub_17A48(0, 0, v23, &unk_5DCA0, v24);

            return;
          }

          v21 = sub_5A8E4();

          if (v21)
          {
            goto LABEL_19;
          }

          ++v12;
          if (v15 == i)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

LABEL_23:
    }
  }
}

uint64_t sub_44C7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_5A3B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  v9 = a1;
  sub_17A48(0, 0, v6, &unk_5DCA8, v8);
}

uint64_t sub_44D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_59D14();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackController.QueueCommand();
  v5[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_44E7C, 0, 0);
}

uint64_t sub_44E7C()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 88);
    **(v0 + 128) = v4;
    swift_storeEnumTagMultiPayload();
    v5 = v4;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_44FA0;

    return sub_2E290();
  }

  else
  {
    v8 = *(v0 + 112);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_44FA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = v4[17];

    return _swift_task_switch(sub_45390, 0, 0);
  }

  else
  {
    v4[20] = a1;
    v8 = swift_task_alloc();
    v4[21] = v8;
    *v8 = v6;
    v8[1] = sub_45134;
    v9 = v4[16];

    return PlaybackController.QueueCommand.canPerform(for:)(a1);
  }
}

uint64_t sub_45134(char a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_45234, 0, 0);
}

uint64_t sub_45234()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  sub_1B1CC(v2);
  if (v1 == 1 && (v4 = *(v0 + 80), Strong = swift_weakLoadStrong(), (*(v0 + 176) = Strong) != 0))
  {
    v6 = *(v0 + 88);
    *(v0 + 40) = *(v0 + 120);
    *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v0 + 16)) = v6;
    swift_storeEnumTagMultiPayload();
    v7 = v6;
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_45410;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_45390()
{
  v1 = v0[19];
  sub_1B1CC(v0[16]);

  v2 = v0[16];
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_45410(void *a1)
{
  v4 = *(*v2 + 184);
  v5 = *(*v2 + 176);
  v6 = *v2;
  v6[24] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_45590, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v6 + 2);
    v7 = v6[16];
    v8 = v6[14];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_45590()
{
  v30 = v0;
  v1 = v0[24];
  v2 = v0[14];
  v3 = v0[11];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_59CA4();
  v4 = v3;
  swift_errorRetain();
  v5 = sub_59D04();
  v6 = sub_5A454();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v7)
  {
    v12 = v0[11];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v13 = 136446466;
    v15 = [v12 contentItemIdentifier];
    v27 = v11;
    v28 = v9;
    v16 = sub_5A194();
    v18 = v17;

    v19 = sub_9430(v16, v18, &v29);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_0, v5, v6, "Failed to remove item %{public}s from queue with error %@", v13, 0x16u);
    sub_9708(v14, &qword_7E260, &qword_5BE50);

    __swift_destroy_boxed_opaque_existential_0Tm(v26);

    (*(v10 + 8))(v28, v27);
  }

  else
  {
    v21 = v0[24];

    (*(v10 + 8))(v9, v11);
  }

  v22 = v0[16];
  v23 = v0[14];

  v24 = v0[1];

  return v24();
}

uint64_t sub_457E8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_45808, 0, 0);
}

uint64_t sub_45808()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , *(v0 + 88) == 1))
  {
    v2 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_5BC80;
    *(v3 + 56) = type metadata accessor for PlaybackController.QueueCommand();
    *(v3 + 64) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v3 + 32)) = v2;
    swift_storeEnumTagMultiPayload();
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_5DC00;
    *(v3 + 56) = type metadata accessor for PlaybackController.QueueCommand();
    *(v3 + 64) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v3 + 32)) = v5;
    swift_storeEnumTagMultiPayload();
    *(v3 + 96) = &type metadata for PlaybackController.TransportCommand;
    *(v3 + 104) = &protocol witness table for PlaybackController.TransportCommand;
    *(v3 + 72) = xmmword_5CAB0;
    *(v3 + 88) = 0;
    v4 = 257;
  }

  *(v0 + 56) = v3;
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  v7 = *(v0 + 40);
  if (Strong)
  {
    v8 = v7;
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_45A88;

    return sub_2AC24(v3, v4);
  }

  else
  {
    v11 = v7;

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_45A88()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_45BEC, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_45BEC()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_45C70(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , v4))
  {
    MPCPlayerResponseTracklist.itemsInSections(sections:)(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
    sub_47E34();
    v2 = sub_5A414();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_45D80(uint64_t a1)
{
  MPCPlayerResponseTracklist.itemsInSections(sections:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
  sub_47E34();
  v1 = sub_5A414();

  return v1 & 1;
}

uint64_t sub_45DF4()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v0 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  v4 = MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_72008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
  sub_47E34();
  v1 = sub_5A414();

  if (v1)
  {
    v2 = 1;
  }

  else
  {
LABEL_12:
    if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , v4))
    {
      MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_72030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
      sub_47E34();
      v2 = sub_5A414();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_45FC8(char *a1, void *a2)
{
  v3 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_59E24(), , , , (v4 = v7) != 0))
  {
    LOBYTE(v7) = v3;
    v5 = MPCPlayerResponseTracklist.queueSectionContainsItem(queueSection:item:)(&v7, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MPCPlayerResponseTracklist.queueSectionContainsItem(queueSection:item:)(char *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v15 = 0;
  v6 = [v2 displayItems];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = &v15;
  *(v7 + 40) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_488D8;
  *(v8 + 24) = v7;
  aBlock[4] = sub_4941C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_466E0;
  aBlock[3] = &block_descriptor_66;
  v9 = _Block_copy(aBlock);
  v10 = v3;
  v11 = a2;

  [v6 enumerateSectionsUsingBlock:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

uint64_t sub_46240()
{
  v10[0] = 0;
  v10[1] = 0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v8 = 0;
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (!aBlock[0])
  {
    v8 = 0;
    Strong = 0;
    goto LABEL_7;
  }

  v2 = [aBlock[0] displayItems];

  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v10;
  v4 = swift_allocObject();
  v4[2] = sub_48920;
  v4[3] = v3;
  aBlock[4] = sub_4941C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_466E0;
  aBlock[3] = &block_descriptor_76;
  v5 = _Block_copy(aBlock);

  [v2 enumerateSectionsUsingBlock:v5];

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v8 = v10[0];
    Strong = sub_48920;
LABEL_7:
    sub_227C(Strong);
    return v8;
  }

  __break(1u);
  return result;
}

void sub_46474(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  sub_5A194();
  v8 = sub_5A174();

  QueueModelSection.init(tracklistSection:)(v8, v22);
  if (v22[0] != 2)
  {
    if (v22[0])
    {
      v9 = sub_5A8E4();

      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_59E24();

      if (v21)
      {
        v10 = [v21 displayItems];

        v11 = [v10 itemsInSectionAtIndex:a2];
        sub_48844();
        v12 = sub_5A294();

        if (v12 >> 62)
        {
          if (sub_5A814())
          {
            goto LABEL_10;
          }
        }

        else if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_10:
          if ((v12 & 0xC000000000000001) != 0)
          {
            v13 = sub_5A724();
          }

          else
          {
            if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return;
            }

            v13 = *(v12 + 32);
          }

          v14 = v13;

          v15 = [v14 contentItemIdentifier];

          v16 = sub_5A194();
          v18 = v17;

          v19 = a5[1];
          *a5 = v16;
          a5[1] = v18;
          goto LABEL_17;
        }
      }
    }

    v20 = a5[1];
    *a5 = 0;
    a5[1] = 0;
LABEL_17:

    *a3 = 1;
  }
}

void sub_466E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_46764()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
    *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
    *(v0 + 16) = xmmword_5DC10;
    *(v0 + 32) = 0;
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_4687C;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_4687C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_493E0, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v8 = *(v7 + 8);

    return v8();
  }
}

uint64_t sub_46A1C()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[5] = &type metadata for PlaybackController.TransportCommand;
    v0[6] = &protocol witness table for PlaybackController.TransportCommand;
    v0[3] = 0;
    v0[4] = 0;
    v0[2] = 0;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_4687C;

    return sub_2A8B0((v0 + 2), 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t PlaybackController.QueueController.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24C20();

      sub_4411C(a1, &off_72058);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v4 = v14[0];
    if (v14[0])
    {
      v5 = [v14[0] identifiers];
      v6 = [v5 library];

      if (v6)
      {
        v7 = [v6 databaseID];
        swift_unknownObjectRelease();
        v8 = sub_5A194();
        v10 = v9;

        v14[0] = v8;
        v14[1] = v10;
        __chkstk_darwin(v11);
        v13[2] = v14;
        v12 = sub_429FC(sub_489B0, v13, a1);

        if (v12)
        {
          sub_46E64(a2);
        }
      }

      else
      {
      }
    }
  }
}

BOOL sub_46D8C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0x7565755174666F73;
  }

  else
  {
    v4 = 0x7565755164726168;
  }

  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v7 = 0x7565755174666F73;
    }

    else
    {
      v7 = 0x7565755164726168;
    }

    if (v7 == v4)
    {
      swift_bridgeObjectRelease_n();
      return v5 != 0;
    }

    v8 = sub_5A8E4();
    swift_bridgeObjectRelease_n();
    ++v3;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_46E64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_5A3B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  if (a1)
  {
    v8 = &unk_5DDB0;
  }

  else
  {
    v8 = &unk_5DDC0;
  }

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;

  sub_42760(0, 0, v6, v8, v9);
}

uint64_t PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_59E24();

      if (v18[0])
      {
        v6 = [v18[0] displayItems];

        v7 = swift_allocObject();
        *(v7 + 16) = v2;
        *(v7 + 24) = a1;
        v8 = swift_allocObject();
        v5 = sub_48A48;
        v8[2] = sub_48A48;
        v8[3] = v7;
        v18[4] = sub_48A50;
        v18[5] = v8;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_47354;
        v18[3] = &block_descriptor_96;
        v9 = _Block_copy(v18);

        [v6 enumerateItemsUsingBlock:v9];

        _Block_release(v9);
        LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

        if ((v6 & 1) == 0)
        {
          goto LABEL_8;
        }

        __break(1u);
      }
    }

    v5 = 0;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v10 = v19;
    if (v19)
    {
      v11 = [v19 identifiers];
      v12 = [v11 universalStore];

      if (v12)
      {
        [v12 adamID];
        swift_unknownObjectRelease();
        v13 = sub_59C44();

        v14 = *(a1 + 16);
        v15 = (a1 + 32);
        while (v14)
        {
          v16 = *v15++;
          --v14;
          if (v16 == v13)
          {
            sub_46E64(a2);
            return sub_227C(v5);
          }
        }
      }

      else
      {
      }
    }
  }

  return sub_227C(v5);
}

uint64_t sub_472D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24C20();

    sub_43BC4(a5, &off_72080);
  }

  return result;
}

uint64_t sub_47354(uint64_t a1, void *a2)
{
  v4 = sub_59544();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_59534();
  v11 = a2;
  v10();

  return (*(v5 + 8))(v8, v4);
}

void PlaybackController.QueueController.updatePlayerIfNeededForMarking(playerItems:as:)(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    if (v65)
    {
      v4 = [v65 identifiers];
      v5 = [v4 library];

      if (v5)
      {
        v62 = a2;
        v6 = [v5 databaseID];

        swift_unknownObjectRelease();
        v7 = a1 & 0xFFFFFFFFFFFFFF8;
        if (a1 >> 62)
        {
          goto LABEL_64;
        }

        v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
        if (!v8)
        {
          goto LABEL_65;
        }

        goto LABEL_6;
      }
    }
  }

  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    if (v65)
    {
      v34 = [v65 identifiers];
      v35 = [v34 universalStore];

      if (!v35)
      {

        return;
      }

      v62 = a2;
      [v35 adamID];
      swift_unknownObjectRelease();
      sub_59C44();

      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        v36 = sub_5A814();
        if (v36)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
        if (v36)
        {
LABEL_35:
          v37 = 0;
          v38 = a1 & 0xC000000000000001;
          v39 = _swiftEmptyArrayStorage;
          v40 = &off_7B000;
          v61 = a1;
LABEL_36:
          v64 = v39;
          v41 = v37;
          do
          {
            if (v38)
            {
              v44 = sub_5A724();
            }

            else
            {
              if (v41 >= *(v7 + 16))
              {
                goto LABEL_63;
              }

              v44 = *(a1 + 8 * v41 + 32);
            }

            v43 = v44;
            v37 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              v8 = sub_5A814();
              if (!v8)
              {
LABEL_65:
                v11 = _swiftEmptyArrayStorage;
                goto LABEL_66;
              }

LABEL_6:
              v9 = 0;
              v10 = a1 & 0xC000000000000001;
              v11 = _swiftEmptyArrayStorage;
              v12 = &off_7B000;
              v63 = a1 & 0xC000000000000001;
LABEL_7:
              v60 = v11;
              v13 = v9;
              while (1)
              {
                if (v10)
                {
                  v16 = sub_5A724();
                }

                else
                {
                  if (v13 >= *(v7 + 16))
                  {
                    goto LABEL_61;
                  }

                  v16 = *(a1 + 8 * v13 + 32);
                }

                v15 = v16;
                v9 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  __break(1u);
LABEL_61:
                  __break(1u);
                  goto LABEL_62;
                }

                v17 = [v16 v12[361]];
                if (v17)
                {
                  v18 = v17;
                  v19 = [v17 flattenedGenericObject];

                  if (v19)
                  {
                    v20 = [v19 anyObject];

                    if (v20)
                    {
                      objc_opt_self();
                      v21 = swift_dynamicCastObjCClass();
                      if (v21)
                      {
                        v22 = v7;
                        v23 = a1;
                        v24 = v12;
                        v25 = [v21 identifiers];
                        v26 = [v25 library];

                        if (v26)
                        {
                          v27 = [v26 databaseID];
                          swift_unknownObjectRelease();
                          v28 = sub_5A194();
                          v30 = v29;

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v60 = sub_1C304(0, *(v60 + 2) + 1, 1, v60);
                          }

                          v12 = v24;
                          v32 = *(v60 + 2);
                          v31 = *(v60 + 3);
                          a1 = v23;
                          if (v32 >= v31 >> 1)
                          {
                            v60 = sub_1C304((v31 > 1), v32 + 1, 1, v60);
                          }

                          v7 = v22;
                          *(v60 + 2) = v32 + 1;
                          v33 = &v60[16 * v32];
                          *(v33 + 4) = v28;
                          *(v33 + 5) = v30;
                          v11 = v60;
                          v10 = v63;
                          if (v9 == v8)
                          {
LABEL_66:
                            PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)(v11, v62);
                            goto LABEL_70;
                          }

                          goto LABEL_7;
                        }

                        v14 = v20;
                        v12 = v24;
                        a1 = v23;
                        v7 = v22;
                        v10 = v63;
                      }

                      else
                      {
                        v14 = v15;
                        v15 = v20;
                      }
                    }
                  }
                }

                ++v13;
                if (v9 == v8)
                {
                  v11 = v60;
                  goto LABEL_66;
                }
              }
            }

            v45 = [v44 v40[361]];
            if (v45)
            {
              v46 = v45;
              v47 = [v45 flattenedGenericObject];

              if (v47)
              {
                v48 = [v47 anyObject];

                if (v48)
                {
                  objc_opt_self();
                  v49 = swift_dynamicCastObjCClass();
                  if (v49)
                  {
                    v50 = v36;
                    v51 = v38;
                    v52 = v7;
                    v53 = v40;
                    v54 = [v49 identifiers];
                    v55 = [v54 universalStore];

                    if (v55)
                    {
                      [v55 adamID];
                      swift_unknownObjectRelease();
                      v56 = sub_59C44();

                      v40 = v53;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v64 = sub_1C7A0(0, *(v64 + 2) + 1, 1, v64);
                      }

                      v7 = v52;
                      v58 = *(v64 + 2);
                      v57 = *(v64 + 3);
                      v38 = v51;
                      if (v58 >= v57 >> 1)
                      {
                        v64 = sub_1C7A0((v57 > 1), v58 + 1, 1, v64);
                      }

                      v36 = v50;
                      *(v64 + 2) = v58 + 1;
                      *&v64[8 * v58 + 32] = v56;
                      v39 = v64;
                      v59 = v37 == v50;
                      a1 = v61;
                      if (v59)
                      {
                        goto LABEL_69;
                      }

                      goto LABEL_36;
                    }

                    v42 = v48;
                    v40 = v53;
                    v7 = v52;
                    v38 = v51;
                    v36 = v50;
                    a1 = v61;
                  }

                  else
                  {
                    v42 = v43;
                    v43 = v48;
                  }
                }
              }
            }

            ++v41;
          }

          while (v37 != v36);
          v39 = v64;
          goto LABEL_69;
        }
      }

      v39 = _swiftEmptyArrayStorage;
LABEL_69:
      PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)(v39, v62);
LABEL_70:
    }
  }
}

uint64_t sub_47B98()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[5] = &type metadata for PlaybackController.TransportCommand;
    v0[6] = &protocol witness table for PlaybackController.TransportCommand;
    v0[3] = 0;
    v0[4] = 0;
    v0[2] = 0;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_47CA8;

    return sub_2A8B0((v0 + 2), 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}