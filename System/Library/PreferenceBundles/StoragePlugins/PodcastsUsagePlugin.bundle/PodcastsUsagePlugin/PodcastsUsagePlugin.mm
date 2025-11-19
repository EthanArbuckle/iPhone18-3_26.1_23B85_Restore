uint64_t sub_19A8(uint64_t a1, void (*a2)(void, void, uint64_t), uint64_t a3)
{
  v21 = a2;
  v4 = sub_8E28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8DC8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_9018();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_8D98();
    if (sub_8DB8())
    {
      v15 = sub_90A8();
      v16 = swift_allocObject();
      v16[2] = v21;
      v16[3] = a3;
      v16[4] = v15;

      sub_9028();
    }

    else
    {
      sub_8E08();
      v17 = sub_8E18();
      v18 = sub_9008();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "Will not present storage tip, less than 1GB of storage used.", v19, 2u);
      }

      (*(v5 + 8))(v8, v4);
      v21(0, 0, 1);
    }

    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_1C3C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_8E28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if (a1 < 1)
  {
    sub_8E08();
    v21 = sub_8E18();
    v22 = sub_9008();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Will not present storage tip, no space will be reclaimed by the default policy", v23, 2u);
    }

    (*(v8 + 8))(v12, v7);
    v18 = 0;
    v19 = 0;
    v20 = 1;
  }

  else
  {
    sub_8E08();
    v15 = sub_8E18();
    v16 = sub_9008();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = a4;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a1;
      _os_log_impl(&dword_0, v15, v16, "present storage - threshold say yes, with number of episodes to delete: %ld, size: %ld", v17, 0x16u);
    }

    (*(v8 + 8))(v14, v7);
    v18 = a4;
    v19 = a1;
    v20 = 0;
  }

  return a2(v18, v19, v20);
}

void type metadata accessor for MTPodcastEpisodeLimit()
{
  if (!qword_105D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_105D0);
    }
  }
}

void *sub_1F20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1F3C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1F84()
{
  v1 = (*(*(sub_6A3C(&qword_10670, &qword_98D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = OBJC_IVAR___PodcastsUsagePlugin_usageController;
  type metadata accessor for PodcastsUsageController();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_9098();
  *&v0[v4] = v5;
  v6 = type metadata accessor for PodcastsUsagePlugin();
  v14.receiver = v0;
  v14.super_class = v6;
  v7 = objc_msgSendSuper2(&v14, "init");
  sub_8FA8();
  v8 = sub_8FC8();
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 0, 1, v8);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v7;
  v11 = v7;
  sub_2D3C(0, 0, v3, &unk_9950, v10);

  sub_8FA8();
  v9(v3, 0, 1, v8);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  sub_2D3C(0, 0, v3, &unk_9960, v12);

  return v11;
}

id sub_2188(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [v1 tips];
  sub_89DC(0, &qword_106E8, STStorageTip_ptr);
  v5 = sub_8F18();

  sub_8EF8();
  if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v8 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    sub_8F28();
  }

  sub_8F38();
  isa = sub_8F08().super.isa;

  [v2 setTips:isa];

  return [v2 reloadTips];
}

uint64_t sub_2310(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_8EA8();
  v5 = v4;

  if (v3 == 0xD000000000000012 && 0x80000000000099F0 == v5)
  {

    goto LABEL_13;
  }

  v7 = sub_9178();

  if (v7)
  {
LABEL_13:

    return sub_5BA0(a1);
  }

  v8 = [a1 identifier];
  v9 = sub_8EA8();
  v11 = v10;

  if (v9 == 0x6F69746E65746572 && v11 == 0xEF7963696C6F506ELL)
  {
  }

  else
  {
    v13 = sub_9178();

    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  return sub_3E8C(a1);
}

uint64_t sub_2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_8E28();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_2610;

  return sub_300C();
}

uint64_t sub_2610(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 72);
  v8 = *v4;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  *(v6 + 96) = v3;

  if (v3)
  {
    v9 = sub_2A4C;
  }

  else
  {
    *(v6 + 120) = a3;
    v9 = sub_273C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_273C()
{
  v38 = v0;
  if ((*(v0 + 120) & 1) != 0 || (v1 = *(v0 + 24), v2 = sub_3A54(*(v0 + 80), *(v0 + 88)), (*(v0 + 104) = v2) == 0))
  {
    v20 = *(v0 + 56);
    sub_8E08();
    v21 = sub_8E18();
    v22 = sub_9008();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 56);
    v25 = *(v0 + 32);
    v26 = *(v0 + 40);
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v21, v22, "Not displaying the retention policy tip.", v27, 2u);
    }

    (*(v26 + 8))(v24, v25);
    v29 = *(v0 + 56);
    v28 = *(v0 + 64);
    v30 = *(v0 + 48);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v3 = v2;
    v4 = *(v0 + 48);
    sub_8E08();
    v5 = v3;
    v6 = sub_8E18();
    v7 = sub_9008();

    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 32);
    if (v8)
    {
      v36 = *(v0 + 32);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37 = v13;
      *v12 = 136315138;
      v14 = v5;
      v15 = [v14 description];
      v16 = sub_8EA8();
      v35 = v9;
      v18 = v17;

      v19 = sub_6CF0(v16, v18, &v37);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_0, v6, v7, "Displaying retention policy tip: %s", v12, 0xCu);
      sub_81CC(v13);

      (*(v10 + 8))(v35, v36);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    sub_8F88();
    *(v0 + 112) = sub_8F78();
    v34 = sub_8F48();

    return _swift_task_switch(sub_2C4C, v34, v33);
  }
}

uint64_t sub_2A4C()
{
  v24 = v0;
  v1 = v0[12];
  v2 = v0[8];
  sub_8E08();
  swift_errorRetain();
  v3 = sub_8E18();
  v4 = sub_8FF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v22 = v0[8];
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_6A3C(&qword_10708, &qword_9968);
    v10 = sub_8EB8();
    v12 = sub_6CF0(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "Unable to show retention policy tip: %s", v8, 0xCu);
    sub_81CC(v9);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v13 = v0[12];
    v14 = v0[8];
    v15 = v0[4];
    v16 = v0[5];

    (*(v16 + 8))(v14, v15);
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2C4C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[3];

  sub_2188(v2);

  return _swift_task_switch(sub_2CC0, 0, 0);
}

uint64_t sub_2CC0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_6A3C(&qword_10670, &qword_98D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_8A24(a3, v26 - v10, &qword_10670, &qword_98D8);
  v12 = sub_8FC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_6FB8(v11);
  }

  else
  {
    sub_8FB8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_8F48();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_8EC8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_6FB8(a3);

      return v24;
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

  sub_6FB8(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_302C()
{
  v1 = *(v0[5] + OBJC_IVAR___PodcastsUsagePlugin_usageController);
  v2 = *(v1 + 16);
  v3 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

  if (v2 == v4)
  {
    v5 = v0[1];

    return v5(0, 0, 1);
  }

  else
  {
    v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v8 = swift_task_alloc();
    v0[6] = v8;
    v9 = sub_6A3C(&qword_106D8, &qword_9920);
    *v8 = v0;
    v8[1] = sub_31C0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000021, 0x8000000000009BE0, sub_8720, v1, v9);
  }
}

uint64_t sub_31C0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_32F4;
  }

  else
  {
    v3 = sub_32D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_330C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_8E38();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8E68();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6A3C(&qword_106E0, &qword_9928);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_89DC(0, &qword_106B8, OS_dispatch_queue_ptr);
  v16 = sub_9058();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  (*(v12 + 32))(v18 + v17, v15, v11);
  aBlock[4] = sub_87F8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8D48;
  aBlock[3] = &unk_C850;
  v19 = _Block_copy(aBlock);

  sub_8E58();
  v26 = _swiftEmptyArrayStorage;
  sub_85A4();
  sub_6A3C(&qword_106C8, &qword_9918);
  sub_85FC();
  sub_9118();
  sub_9078();
  _Block_release(v19);

  (*(v25 + 8))(v6, v3);
  (*(v23 + 8))(v10, v24);
}

uint64_t sub_3678(uint64_t a1, uint64_t a2)
{
  v4 = sub_6A3C(&qword_106E0, &qword_9928);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - v9;
  v11 = *(v5 + 16);
  v11(&aBlock[-1] - v9, a2, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  v14 = [objc_opt_self() defaultMediaLibrary];
  v15 = objc_opt_self();
  v16 = *(a1 + 16);
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = sub_88FC;
  v17[4] = v13;
  v17[5] = v16;
  aBlock[4] = sub_89D0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8D48;
  aBlock[3] = &unk_C8C8;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  aBlock[0] = 0;
  [v15 perform:v18 error:aBlock];
  _Block_release(v18);
  v20 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    aBlock[0] = v20;
    v21 = v20;
    sub_8F58();
  }

  else
  {
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_397C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 && a1)
  {
    swift_errorRetain();
    sub_6A3C(&qword_106E0, &qword_9928);
    return sub_8F58();
  }

  else
  {
    sub_6A3C(&qword_106E0, &qword_9928);
    return sub_8F68();
  }
}

uint64_t sub_3A10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_3A54(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(STStorageOptionTip) init];
  v4 = sub_8E88();
  [v3 setIdentifier:v4];

  v21._object = 0x8000000000009B40;
  v21._countAndFlagsBits = 0xD000000000000017;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_8DD8(v21, v26);
  v5 = sub_8E88();

  [v3 setTitle:v5];

  v22._countAndFlagsBits = 0xD000000000000019;
  v22._object = 0x8000000000009B60;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_8DD8(v22, v27);
  sub_6A3C(&qword_106A8, &qword_9910);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_98A0;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 localizedModel];

  v9 = sub_8EA8();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_8530();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  sub_8E98();

  v12 = sub_8E88();

  [v3 setInfoText:v12];

  [v3 setRepresentedApp:comApplePodcasts];
  [v3 setMayCauseDataLoss:1];
  v23._countAndFlagsBits = 0xD000000000000026;
  v23._object = 0x8000000000009B80;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_8DD8(v23, v28);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_98A0;
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = a1;
  sub_8E98();

  v14 = sub_8E88();

  [v3 setConfirmationText:v14];

  v24._countAndFlagsBits = 0xD000000000000025;
  v24._object = 0x8000000000009BB0;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_8DD8(v24, v29);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_98A0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = a1;
  sub_8E98();

  v16 = sub_8E88();

  [v3 setConfirmationButtonTitle:v16];

  [v3 setDelegate:v19];
  [v3 setImmediateGain:a2];
  v25._countAndFlagsBits = 0x54504F5F45524F4DLL;
  v25._object = 0xEC000000534E4F49;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_8DD8(v25, v30);
  v17 = sub_8E88();

  [v3 setAdditionalButtonTitle:v17];

  return v3;
}

uint64_t sub_3E8C(void *a1)
{
  v2 = sub_8E28();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  __chkstk_darwin();
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_8E38();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  __chkstk_darwin();
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_8E68();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  __chkstk_darwin();
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_8E48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 identifier];
  v19 = sub_8EA8();
  v21 = v20;

  if (v19 == 0x6F69746E65746572 && v21 == 0xEF7963696C6F506ELL)
  {

LABEL_5:
    sub_89DC(0, &qword_106B8, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v17, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v23 = sub_9088();
    (*(v14 + 8))(v17, v13);
    v24 = swift_allocObject();
    v25 = v43;
    *(v24 + 16) = v43;
    *(v24 + 24) = a1;
    aBlock[4] = sub_8584;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_8D48;
    aBlock[3] = &unk_C7B0;
    v26 = _Block_copy(aBlock);
    v27 = v25;
    v28 = a1;
    sub_8E58();
    v47 = &_swiftEmptyArrayStorage;
    sub_85A4();
    sub_6A3C(&qword_106C8, &qword_9918);
    sub_85FC();
    sub_9118();
    sub_9078();
    _Block_release(v26);

    (*(v46 + 8))(v8, v5);
    (*(v44 + 8))(v12, v45);
  }

  v22 = sub_9178();

  if (v22)
  {
    goto LABEL_5;
  }

  v30 = v40;
  sub_8E08();
  v31 = a1;
  v32 = sub_8E18();
  v33 = sub_8FF8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_6CF0(0x6F69746E65746572, 0xEF7963696C6F506ELL, aBlock);
    *(v34 + 12) = 2080;
    v35 = [v31 identifier];
    v36 = sub_8EA8();
    v38 = v37;

    v39 = sub_6CF0(v36, v38, aBlock);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_0, v32, v33, "Attempting to apply unknown tip as a retention policy change. Expected '%s', but found '%s'", v34, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v41 + 8))(v30, v42);
}

uint64_t sub_4458(void *a1, void *a2)
{
  v4 = sub_8E38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_8E68();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_9098();
  isa = sub_9198().super.super.isa;
  [v13 setObject:isa forKey:kMTPodcastEpisodeLimitDefaultKey];

  v15 = [objc_opt_self() defaultMediaLibrary];
  sub_9098();
  sub_9038();

  sub_89DC(0, &qword_106B8, OS_dispatch_queue_ptr);
  v16 = sub_9068();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_86A8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8D48;
  aBlock[3] = &unk_C800;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = a2;

  sub_8E58();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_85A4();
  sub_6A3C(&qword_106C8, &qword_9918);
  sub_85FC();
  sub_9118();
  sub_9078();
  _Block_release(v18);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v23);
}

uint64_t sub_477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_8E28();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_4884;

  return sub_4F80();
}

uint64_t sub_4884(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_4D80;
  }

  else
  {
    v5 = sub_4998;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_4998()
{
  v36 = v0;
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[7];
    sub_8E08();
    v3 = v1;
    v4 = sub_8E18();
    v5 = sub_9008();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    if (v6)
    {
      v34 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;
      v12 = v3;
      v13 = [v12 description];
      v14 = sub_8EA8();
      v33 = v7;
      v16 = v15;

      v17 = sub_6CF0(v14, v16, &v35);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_0, v4, v5, "Displaying tip for abandoned downloads: %s", v10, 0xCu);
      sub_81CC(v11);

      (*(v8 + 8))(v33, v34);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    sub_8F88();
    v0[12] = sub_8F78();
    v32 = sub_8F48();

    return _swift_task_switch(sub_4C8C, v32, v31);
  }

  else
  {
    v18 = v0[8];
    sub_8E08();
    v19 = sub_8E18();
    v20 = sub_9008();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[8];
    v23 = v0[4];
    v24 = v0[5];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v19, v20, "Not displaying tip for abandoned downloads.", v25, 2u);
    }

    (*(v24 + 8))(v22, v23);
    v27 = v0[7];
    v26 = v0[8];
    v28 = v0[6];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_4C8C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[3];

  sub_2188(v2);

  return _swift_task_switch(sub_4D04, 0, 0);
}

uint64_t sub_4D04()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_4D80()
{
  v24 = v0;
  v1 = v0[11];
  v2 = v0[6];
  sub_8E08();
  swift_errorRetain();
  v3 = sub_8E18();
  v4 = sub_8FF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[5];
    v22 = v0[6];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_6A3C(&qword_10708, &qword_9968);
    v10 = sub_8EB8();
    v12 = sub_6CF0(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "Unable to show abandoned downloads tip: %s", v8, 0xCu);
    sub_81CC(v9);

    (*(v6 + 8))(v22, v7);
  }

  else
  {
    v13 = v0[11];
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];

    (*(v15 + 8))(v14, v16);
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t sub_4F80()
{
  v1[2] = v0;
  v2 = sub_8E28();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = sub_8DC8();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_8FC8();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_5104, 0, 0);
}

uint64_t sub_5104()
{
  v1 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v2 = [v1 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

  if (v2 == 0x100000000)
  {
    sub_89DC(0, &qword_10678, MTDB_ptr);
    v3 = sub_90F8();
    v5 = v0[11];
    v4 = v0[12];
    v6 = v0[10];
    sub_8FD8();
    v7 = sub_90E8();
    v0[13] = v7;
    (*(v5 + 8))(v4, v6);

    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_5408;

    return sub_7C78(v7);
  }

  else
  {
    v8 = v0[5];
    sub_8E08();
    v9 = sub_8E18();
    v10 = sub_8FE8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = 0x100000000;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v2;
      _os_log_impl(&dword_0, v9, v10, "Not displaying the abandoned downloads tip, users retention policy is not 'off'(%lld: %lld", v11, 0x16u);
    }

    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[6];
    (*(v0[4] + 8))(v0[5], v0[3]);

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_5408(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_56D4, 0, 0);
  }

  else
  {
    sub_8DF8();
    v7 = async function pointer to static MediaSpaceCalculator.spaceOccupied(by:managedObjectContext:mediaLibrary:)[1];
    v8 = swift_task_alloc();
    v4[17] = v8;
    *v8 = v6;
    v8[1] = sub_55B8;
    v9 = v4[13];
    v10 = v4[9];

    return static MediaSpaceCalculator.spaceOccupied(by:managedObjectContext:mediaLibrary:)(v10, a1, v9, sub_5998, 0);
  }
}

uint64_t sub_55B8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);

    v5 = sub_5904;
  }

  else
  {
    v5 = sub_5768;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_56D4()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_5768()
{
  v1 = v0[9];
  if (sub_8DB8())
  {
    v2 = v0[15];
    v3 = v0[13];
    v4 = v0[9];
    v5 = v0[2];
    v6 = sub_8274();
  }

  else
  {
    v7 = v0[15];
    v8 = v0[6];

    sub_8E08();
    v9 = sub_8E18();
    v10 = sub_9008();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[13];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v9, v10, "Will not present abandoned downloads, less than 1GB of storage used.", v16, 2u);
    }

    (*(v15 + 8))(v13, v14);
    v6 = 0;
  }

  v17 = v0[6];
  v18 = v0[12];
  v19 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v20 = v0[1];

  return v20(v6);
}

uint64_t sub_5904()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

id sub_5998()
{
  v0 = [objc_opt_self() defaultMediaLibrary];

  return v0;
}

unint64_t sub_59D8@<X0>(void *a1@<X8>)
{
  sub_89DC(0, &qword_10690, NSManagedObjectID_ptr);
  result = sub_90C8();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      goto LABEL_17;
    }

    for (i = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)); i; i = sub_9158())
    {
      v12 = a1;
      result = sub_762C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v6 = 0;
      a1 = (&dword_0 + 1);
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = sub_9138();
          goto LABEL_11;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v6 + 32);
LABEL_11:
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          v11 = v7;
          sub_762C((v8 > 1), v9 + 1, 1);
          v7 = v11;
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[3 * v9];
        *(v10 + 4) = v7;
        *(v10 + 5) = 0;
        v10[48] = 1;
        if (i == v6)
        {

          *v12 = _swiftEmptyArrayStorage;
          return result;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    *a1 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_5BA0(void *a1)
{
  v3 = sub_8E28();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_6A3C(&qword_10670, &qword_98D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v30 - v8;
  v10 = [a1 identifier];
  v11 = sub_8EA8();
  v13 = v12;

  if (v11 == 0xD000000000000012 && 0x80000000000099F0 == v13)
  {

    goto LABEL_10;
  }

  v15 = sub_9178();

  if (v15)
  {
LABEL_10:
    sub_8F98();
    v26 = sub_8FC8();
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v1;
    v27[5] = a1;
    v28 = v1;
    v29 = a1;
    sub_6758(0, 0, v9, &unk_98E8, v27);
  }

  sub_8E08();
  v16 = a1;
  v17 = sub_8E18();
  v18 = sub_8FF8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_6CF0(0xD000000000000012, 0x80000000000099F0, &v31);
    *(v19 + 12) = 2080;
    v20 = [v16 identifier];
    v21 = sub_8EA8();
    v23 = v22;

    v24 = sub_6CF0(v21, v23, &v31);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_0, v17, v18, "Attempting to apply unknown tip as a retention policy change. Expected '%s', but found '%s'", v19, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v30 + 8))(v6, v3);
}

uint64_t sub_5F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_8FC8();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  v8 = *(v7 + 64) + 15;
  v5[5] = swift_task_alloc();

  return _swift_task_switch(sub_5FDC, 0, 0);
}

uint64_t sub_5FDC()
{
  sub_89DC(0, &qword_10678, MTDB_ptr);
  v1 = sub_90F8();
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_8FD8();
  v5 = sub_90E8();
  v0[6] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_6154;

  return sub_7C78(v5);
}

uint64_t sub_6154(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_6468;
  }

  else
  {
    v5 = sub_6268;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6268()
{
  v0[10] = [objc_opt_self() defaultMediaLibrary];
  v1 = async function pointer to MPMediaLibrary.remove(episodeIDs:in:)[1];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_632C;
  v3 = v0[8];
  v4 = v0[6];

  return MPMediaLibrary.remove(episodeIDs:in:)(v3, v4);
}

uint64_t sub_632C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_66DC;
  }

  else
  {
    v8 = *(v4 + 80);
    v9 = *(v4 + 64);

    *(v4 + 112) = a1 & 1;
    v7 = sub_64D4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_6468()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_64D4()
{
  if (*(v0 + 112) == 1)
  {
    sub_8F88();
    *(v0 + 104) = sub_8F78();
    v2 = sub_8F48();

    return _swift_task_switch(sub_65B8, v2, v1);
  }

  else
  {

    v3 = *(v0 + 40);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_65B8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);

  LODWORD(v3) = -1.0;
  [v2 setActivationPercent:v3];
  LODWORD(v4) = 1.0;
  [v2 setActivationPercent:v4];
  [v2 setImmediateGain:0];
  [v2 setSize:0];

  return _swift_task_switch(sub_6670, 0, 0);
}

uint64_t sub_6670()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_66DC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 96);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_6758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_6A3C(&qword_10670, &qword_98D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_8A24(a3, v23 - v9, &qword_10670, &qword_98D8);
  v11 = sub_8FC8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_6FB8(v10);
  }

  else
  {
    sub_8FB8();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_8F48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_8EC8() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_6FB8(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_6FB8(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

id sub_69D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsUsagePlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6A3C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_6A84(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_6AD0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6BC8;

  return v7(a1);
}

uint64_t sub_6BC8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_6CC0(void *__src, uint64_t a2, void *__dst)
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

_BYTE **sub_6CE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_6CF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_7020(v11, 0, 0, 1, a1, a2);
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
    sub_8218(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_81CC(v11);
  return v7;
}

uint64_t sub_6DBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_6E04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_6EC4;

  return sub_5F1C(a1, v4, v5, v7, v6);
}

uint64_t sub_6EC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_6FB8(uint64_t a1)
{
  v2 = sub_6A3C(&qword_10670, &qword_98D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_7020(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_712C(a5, a6);
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
    result = sub_9148();
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

char *sub_712C(uint64_t a1, unint64_t a2)
{
  v4 = sub_7178(a1, a2);
  sub_72A8(&off_C6C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_7178(uint64_t a1, unint64_t a2)
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

  v6 = sub_7394(v5, 0);
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

  result = sub_9148();
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
        v10 = sub_8EE8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_7394(v10, 0);
        result = sub_9128();
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

uint64_t sub_72A8(uint64_t result)
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

  result = sub_7408(result, v12, 1, v3);
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

void *sub_7394(uint64_t a1, uint64_t a2)
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

  sub_6A3C(&qword_106A0, &qword_9908);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_7408(char *result, int64_t a2, char a3, char *a4)
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
    sub_6A3C(&qword_106A0, &qword_9908);
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

unint64_t sub_74FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_91A8();
  sub_8ED8();
  v6 = sub_91B8();

  return sub_7574(a1, a2, v6);
}

unint64_t sub_7574(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_9178())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_762C(char *a1, int64_t a2, char a3)
{
  result = sub_764C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_764C(char *result, int64_t a2, char a3, char *a4)
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
    sub_6A3C(&qword_10698, &qword_9900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_7768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_6A3C(&qword_106F8, &qword_9938);
    v3 = sub_9168();
    v4 = a1 + 32;

    while (1)
    {
      sub_8A24(v4, &v13, &qword_10700, &qword_9940);
      v5 = v13;
      v6 = v14;
      result = sub_74FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_8A8C(&v15, (v3[7] + 32 * result));
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

void sub_7898(void *a1)
{
  v2 = sub_8E28();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_6A3C(&qword_106F0, &qword_9930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v33 - v7;
  v9 = [a1 identifier];
  v10 = sub_8EA8();
  v12 = v11;

  if (v10 == 0x6F69746E65746572 && v12 == 0xEF7963696C6F506ELL)
  {
  }

  else
  {
    v14 = sub_9178();

    if ((v14 & 1) == 0)
    {
      sub_8E08();
      v15 = a1;
      v16 = sub_8E18();
      v17 = sub_8FF8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34 = v19;
        *v18 = 136315138;
        v20 = [v15 identifier];
        v21 = sub_8EA8();
        v23 = v22;

        v24 = sub_6CF0(v21, v23, &v34);

        *(v18 + 4) = v24;
        _os_log_impl(&dword_0, v16, v17, "Unable to satisfy 'more' action of downloads tip for %s. Nothing will happen.", v18, 0xCu);
        sub_81CC(v19);
      }

      (*(v33 + 8))(v5, v2);
      return;
    }
  }

  v25 = [objc_opt_self() defaultWorkspace];
  if (v25)
  {
    v26 = v25;
    sub_8D68();
    v27 = sub_8D88();
    v28 = *(v27 - 8);
    v30 = 0;
    if ((*(v28 + 48))(v8, 1, v27) != 1)
    {
      sub_8D78(v29);
      v30 = v31;
      (*(v28 + 8))(v8, v27);
    }

    sub_7768(&_swiftEmptyArrayStorage);
    isa = sub_8E78().super.isa;

    [v26 openSensitiveURL:v30 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7C78(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_90B8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_7D38, 0, 0);
}

uint64_t sub_7D38()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v0[7] = v5;
  sub_89DC(0, &qword_10680, MTEpisode_ptr);
  v6 = sub_9108();
  [v5 setPredicate:v6];

  [v5 setResultType:1];
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v8 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v9 = v4;
  v10 = v5;
  v11 = swift_task_alloc();
  v0[9] = v11;
  v12 = sub_6A3C(&qword_10688, &qword_98F8);
  *v11 = v0;
  v11[1] = sub_7EF8;
  v13 = v0[6];
  v14 = v0[3];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v13, sub_81AC, v7, v12);
}

uint64_t sub_7EF8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 80) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_8100;
  }

  else
  {
    v7 = sub_808C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_808C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_8100()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_816C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_81AC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_59D8(a1);
}

uint64_t sub_81CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_8218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_8274()
{
  v1 = [objc_allocWithZone(STStorageOptionTip) init];
  v2 = sub_8E88();
  [v1 setIdentifier:v2];

  v13._object = 0x8000000000009A10;
  v13._countAndFlagsBits = 0xD00000000000001ALL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_8DD8(v13, v16);
  v3 = sub_8E88();

  [v1 setTitle:v3];

  v4 = sub_8DA8();
  result = [objc_opt_self() stringWithBytesize:v4];
  if (result)
  {
    v6 = result;
    v7 = sub_8EA8();
    v9 = v8;

    v14._countAndFlagsBits = 0xD00000000000002CLL;
    v14._object = 0x8000000000009A30;
    v17._countAndFlagsBits = 0xD0000000000000D5;
    v17._object = 0x8000000000009A60;
    sub_8DD8(v14, v17);
    sub_6A3C(&qword_106A8, &qword_9910);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_98A0;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_8530();
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    sub_8E98();

    v11 = sub_8E88();

    [v1 setInfoText:v11];

    [v1 setRepresentedApp:comApplePodcasts];
    [v1 setMayCauseDataLoss:1];
    v15._object = 0x8000000000009A10;
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_8DD8(v15, v18);
    v12 = sub_8E88();

    [v1 setConfirmationButtonTitle:v12];

    [v1 setDelegate:v0];
    result = sub_8DA8();
    if ((result & 0x8000000000000000) == 0)
    {
      [v1 setImmediateGain:result];
      return v1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_8530()
{
  result = qword_106B0;
  if (!qword_106B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106B0);
  }

  return result;
}

uint64_t sub_858C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_85A4()
{
  result = qword_106C0;
  if (!qword_106C0)
  {
    sub_8E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106C0);
  }

  return result;
}

unint64_t sub_85FC()
{
  result = qword_106D0;
  if (!qword_106D0)
  {
    sub_8660(&qword_106C8, &qword_9918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_106D0);
  }

  return result;
}

uint64_t sub_8660(uint64_t *a1, uint64_t *a2)
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

id sub_86A8(double a1)
{
  v2 = *(v1 + 24);
  LODWORD(a1) = -1.0;
  [v2 setActivationPercent:a1];
  LODWORD(v3) = 1.0;
  [v2 setActivationPercent:v3];
  [v2 setImmediateGain:0];

  return [v2 setSize:0];
}

uint64_t sub_8728()
{
  v1 = sub_6A3C(&qword_106E0, &qword_9928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_87F8()
{
  v1 = *(sub_6A3C(&qword_106E0, &qword_9928) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_3678(v2, v3);
}

uint64_t sub_8868()
{
  v1 = sub_6A3C(&qword_106E0, &qword_9928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_88FC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(*(sub_6A3C(&qword_106E0, &qword_9928) - 8) + 80);

  return sub_397C(a1, a2, a3 & 1);
}

uint64_t sub_8990()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_89DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_8A24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_6A3C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_8A8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_8AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6EC4;

  return sub_2508(a1, v4, v5, v6);
}

uint64_t sub_8B54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8B94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_8D50;

  return sub_477C(a1, v4, v5, v6);
}

uint64_t sub_8C48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8C80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_8D50;

  return sub_6AD0(a1, v5);
}