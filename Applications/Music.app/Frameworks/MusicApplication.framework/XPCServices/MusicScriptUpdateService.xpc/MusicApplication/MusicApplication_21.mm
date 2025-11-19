Swift::Bool __swiftcall MPCPlayerResponse.canPerform(all:)(Swift::OpaquePointer all)
{
  v2 = sub_100218B50(all._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = v2[2];
    if (v4)
    {
      v5 = 0;
      v6 = (v2 + 4);
      while (v5 < v3[2])
      {
        sub_10001342C(v6, v11);
        v7 = v12;
        v8 = v13;
        sub_100009178(v11, v12);
        v9 = (*(v8 + 24))(v1, v7, v8);
        if (!v9)
        {

          sub_100004C6C(v11);
          LOBYTE(v2) = 0;
          return v2;
        }

        ++v5;

        LOBYTE(v2) = sub_100004C6C(v11);
        v6 += 40;
        if (v4 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

uint64_t sub_100218DDC()
{
  v1 = *(v0 + 88);
  sub_100003ABC(&unk_100606020);
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  *(inited + 16) = xmmword_1004C50A0;
  sub_10001342C(v1, inited + 32);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_100218ED0;
  v4 = *(v0 + 104);
  v5 = *(v0 + 152);
  v6 = *(v0 + 96);

  return sub_1002196EC(inited, v6, v4, v5);
}

uint64_t sub_100218ED0(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_1002190DC;
  }

  else
  {
    v5 = v3[15];
    swift_setDeallocating();
    sub_100004C6C(v5 + 32);
    v4 = sub_100218FF8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100218FF8()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    result = sub_1004BD6A4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004BD484();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 136) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1002190DC()
{
  v1 = *(v0 + 120);
  swift_setDeallocating();
  sub_100004C6C(v1 + 32);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021914C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    result = sub_1004BD6A4();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004BD484();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  v7 = [v5 error];

  if (v7)
  {
    sub_1001F2034();
    v8 = swift_allocError();
    *v9 = v7;
    v9[1] = a1;
    sub_100003ABC(&qword_100604C30);
    swift_allocError();
    *v10 = v8;

    return swift_continuation_throwingResumeWithError();
  }

LABEL_11:
  **(*(a2 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

uint64_t sub_1002192B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100009130(0, &qword_100606740);
  v2 = sub_1004BC2A4();

  v1(v2);
}

id Artwork.Placeholder.background.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id MPCPlayerResponse.isPlayingItemFavorited.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 likeCommand];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_10021941C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100606FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Player.CommandIssuance()
{
  result = qword_1006071A0;
  if (!qword_1006071A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s9MusicCore6PlayerC13ChangeCommandO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, unint64_t a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return !a2;
      case 1:
        return a2 == 1;
      case 2:
        return a2 == 2;
    }

LABEL_16:
    if (a2 >= 6)
    {
      sub_100009130(0, &qword_100604490);
      return sub_1004BCFA4() & 1;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    goto LABEL_16;
  }

  return a2 == 4;
}

uint64_t _s9MusicCore6PlayerC14CommandOptionsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6)
{
  result = 0;
  if (a1 == a4 && ((a2 ^ a5) & 1) == 0)
  {
    if (a3)
    {
      if (a6)
      {
        sub_100009130(0, &qword_100607018);
        v10 = a6;
        v11 = a3;
        v12 = sub_1004BCFA4();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s9MusicCore6PlayerC15CommandIssuanceV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0())
  {
    v4 = *(type metadata accessor for Player.CommandIssuance() + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_1004BD9C4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002196EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 352) = a4;
  *(v5 + 304) = a3;
  *(v5 + 312) = v4;
  *(v5 + 288) = a1;
  *(v5 + 296) = a2;
  return _swift_task_switch(sub_100219714, 0, 0);
}

uint64_t sub_100219714()
{
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  v43 = v2;
  if (v2)
  {
    v3 = v1 + 32;
    v4 = &qword_100606050;
    do
    {
      sub_10001342C(v3, v0 + 144);
      sub_10001342C(v0 + 144, v0 + 248);
      sub_100003ABC(v4);
      sub_100003ABC(&qword_100606FD0);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 312);
        v6 = v4;
        v7 = *(v0 + 232);
        v8 = *(v0 + 240);
        sub_100009178((v0 + 208), v7);
        v9 = v7;
        v4 = v6;
        v10 = (*(v8 + 24))(v5, v9, v8);
        sub_100004C6C(v0 + 144);
        sub_100004C6C(v0 + 208);
        if (v10)
        {
          sub_1004BC274();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
            v4 = v6;
          }

          sub_1004BC334();
        }
      }

      else
      {
        *(v0 + 240) = 0;
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        sub_100004C6C(v0 + 144);
        sub_10021941C(v0 + 208);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_29;
  }

  v11 = v43;
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) != v43)
  {
LABEL_35:

    sub_100213880();
    swift_allocError();
    v42 = v28;
    if (!v11)
    {
LABEL_50:
      *v42 = _swiftEmptyArrayStorage;
      *(v42 + 40) = 1;
      swift_willThrow();
      v37 = *(v0 + 8);

      return v37();
    }

    v29 = *(v0 + 288) + 32;
    while (1)
    {
      sub_10001342C(v29, v0 + 144);
      sub_10001342C(v0 + 144, v0 + 248);
      sub_100003ABC(&qword_100606050);
      sub_100003ABC(&qword_100606FD0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v30 = *(v0 + 312);
      v31 = *(v0 + 232);
      v32 = *(v0 + 240);
      sub_100009178((v0 + 208), v31);
      v33 = (*(v32 + 24))(v30, v31, v32);
      sub_100004C6C(v0 + 208);
      if (!v33)
      {
        goto LABEL_42;
      }

      sub_100004C6C(v0 + 144);
LABEL_39:
      v29 += 40;
      if (!--v43)
      {
        goto LABEL_50;
      }
    }

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_10021941C(v0 + 208);
LABEL_42:
    sub_100013414((v0 + 144), v0 + 208);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000150C0(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v35 = _swiftEmptyArrayStorage[2];
    v34 = _swiftEmptyArrayStorage[3];
    if (v35 >= v34 >> 1)
    {
      sub_1000150C0((v34 > 1), v35 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = (v35 + 1);
    sub_100013414((v0 + 208), &_swiftEmptyArrayStorage[5 * v35 + 4]);
    goto LABEL_39;
  }

  if (v43)
  {
    do
    {
      v12 = 0;
      v39 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
      v40 = v11;
      v41 = kMRMediaRemoteOptionCommandID;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v13 = sub_1004BD484();
        }

        else
        {
          if (v12 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v13 = _swiftEmptyArrayStorage[v12 + 4];
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_1004B6CE4();
        if (v43 < 2)
        {
          v16 = 0;
          v17 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 144) = v12;
          v45._countAndFlagsBits = sub_1004BD934();
          sub_1004BC024(v45);

          v46._countAndFlagsBits = 93;
          v46._object = 0xE100000000000000;
          sub_1004BC024(v46);
          v16 = 23341;
          v17 = 0xE200000000000000;
        }

        v47._countAndFlagsBits = v16;
        v47._object = v17;
        sub_1004BC024(v47);

        v18 = sub_1004BBE24();

        if (!v41)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          return _swift_continuation_await(v19);
        }

        v20 = *(v0 + 296);
        [v14 setCommandOptionValue:v18 forKey:v41];

        if (*(v20 + *(type metadata accessor for Player.CommandIssuance() + 20) + 8))
        {
          v19 = sub_1004BBE24();
          if (!v39)
          {
            goto LABEL_54;
          }

          v21 = v19;
          v22 = v39;
          [v14 setCommandOptionValue:v21 forKey:v22];
        }

        ++v12;
        if (v15 == v40)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v11 = v43;
      if (sub_1004BD6A4() != v43)
      {
        goto LABEL_35;
      }

      v11 = sub_1004BD6A4();
    }

    while (v11);
  }

LABEL_31:
  v23 = *(v0 + 352);
  v24 = *(v0 + 304);
  v25 = objc_allocWithZone(MPCPlayerChangeRequest);
  sub_100009130(0, &qword_1006071D8);
  isa = sub_1004BC284().super.isa;

  v27 = [v25 initWithCommandRequests:isa];
  *(v0 + 320) = v27;

  [v27 setOptions:v24];
  if (v23 != 1)
  {
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10021A204;
    v36 = swift_continuation_init();
    *(v0 + 200) = sub_100003ABC(&unk_100606750);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1000DB4B0;
    *(v0 + 168) = &unk_1005B9EF8;
    *(v0 + 176) = v36;
    [v27 performWithCompletion:v0 + 144];
    v19 = v0 + 16;

    return _swift_continuation_await(v19);
  }

  return _swift_task_switch(sub_100219EC8, 0, 0);
}

uint64_t sub_100219EC8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 10;
  v5 = v0 + 26;
  v6 = v0[40];
  v1[10] = v2;
  v1[15] = v5;
  v1[11] = sub_10021A010;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[22] = sub_10021AE64;
  v1[23] = v8;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1002192B0;
  v1[21] = &unk_1005B9F48;
  v9 = _Block_copy(v3);

  [v6 performWithExtendedStatusCompletion:v9];
  _Block_release(v9);

  return _swift_continuation_await(v4);
}

uint64_t sub_10021A010()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 328) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_10021A1A0;
  }

  else
  {
    *(v1 + 336) = *(v1 + 208);
    v3 = sub_10021A134;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021A134()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10021A1A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10021A204()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_10021A380;
  }

  else
  {
    v2 = sub_10021A314;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021A314()
{
  v1 = *(v0 + 8);

  return v1(&_swiftEmptyArrayStorage);
}

uint64_t sub_10021A380()
{
  v1 = *(v0 + 320);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10021A3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10021A410()
{
  result = qword_1006070D0;
  if (!qword_1006070D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006070D0);
  }

  return result;
}

unint64_t sub_10021A498()
{
  result = qword_1006070E8;
  if (!qword_1006070E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006070E8);
  }

  return result;
}

unint64_t sub_10021A520()
{
  result = qword_100607100;
  if (!qword_100607100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607100);
  }

  return result;
}

unint64_t sub_10021A578()
{
  result = qword_100607108;
  if (!qword_100607108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607108);
  }

  return result;
}

unint64_t sub_10021A600()
{
  result = qword_100607120;
  if (!qword_100607120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607120);
  }

  return result;
}

unint64_t sub_10021A688()
{
  result = qword_100607138;
  if (!qword_100607138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607138);
  }

  return result;
}

unint64_t sub_10021A6E0()
{
  result = qword_100607140;
  if (!qword_100607140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607140);
  }

  return result;
}

uint64_t sub_10021A744(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10021A7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10021A818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B6D14();
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

uint64_t sub_10021A8F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004B6D14();
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

void sub_10021A9B4()
{
  sub_1004B6D14();
  if (v0 <= 0x3F)
  {
    sub_1000E461C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10021AA48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021AAA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_10021AB60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021ABB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_10021AC4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10021AC94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13VocalsCommandOwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s13VocalsCommandOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13VocalsCommandOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_10021AD9C(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021ADB8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t sub_10021ADFC(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t SampleReceiver.waveforms()()
{
  v0 = sub_100003ABC(&qword_1006071F8);
  __chkstk_darwin(v0);
  *(&v4 - v1) = 1;
  (*(v2 + 104))(&v4 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:));
  sub_100003ABC(&qword_100607200);
  return sub_1004BC4F4();
}

uint64_t sub_10021AFE0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100601B90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_10021B8D4();
  v10 = sub_1004BC4B4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v9;
  (*(v3 + 32))(&v12[v11], v5, v2);
  sub_1000FD6BC(0, 0, v8, &unk_1004D5020, v12);
}

uint64_t sub_10021B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100003ABC(&unk_100607670);
  v5[7] = swift_task_alloc();
  v7 = sub_1004B6D14();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_10021B2E4, a4, 0);
}

uint64_t sub_10021B2E4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v7 = *(v4 + 16);
  v0[13] = v7;
  v0[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1, v3);
  v8 = sub_100003ABC(&qword_100601B90);
  v0[15] = v8;
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, v6, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  swift_beginAccess();
  sub_1001C08DC(v5, v2);
  swift_endAccess();
  sub_10021BD3C();

  return _swift_task_switch(sub_10021B454, 0, 0);
}

uint64_t sub_10021B454()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  (*(v0 + 104))(v2, v1, v3);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v4 + 32))(v7 + v6, v2, v3);

  sub_1004BC4C4();
  (*(v4 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10021B598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004B6D14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1004BC4B4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1000FD6BC(0, 0, v10, &unk_1004D5038, v13);
}

uint64_t sub_10021B778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100003ABC(&unk_100607670);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_10021B818, a4, 0);
}

uint64_t sub_10021B818()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();
  sub_100210828(v2, v1);
  sub_100007214(v1, &unk_100607670);
  swift_endAccess();
  sub_10021BD3C();

  v3 = v0[1];

  return v3();
}

void *sub_10021B8D4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_10021C5A0();
    v3 = *(sub_10021C524() + 104);

    type metadata accessor for SampleReceiver.ContinuationStorage();
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    v1[16] = _swiftEmptyDictionarySingleton;
    v1[17] = 0;
    v1[14] = v2;
    v1[15] = v3;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10021B96C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_100003ABC(&unk_100607648);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100601B90);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10021BAAC, v1, 0);
}

uint64_t sub_10021BAAC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  swift_beginAccess();
  v26 = v3;
  v4 = *(v3 + 128);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;
  v27 = v1;
  v28 = v4;
  v24 = (v2 + 8);
  v25 = (v1 + 8);

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[11];
      (*(v27 + 16))(v13, *(v28 + 56) + *(v27 + 72) * (__clz(__rbit64(v8)) | (v12 << 6)), v15);
      (*(v27 + 32))(v14, v13, v15);
      v16 = *(v26 + 136);
      if (!v16)
      {
        (*v25)(v0[13], v0[11]);
        goto LABEL_13;
      }

      v17 = v16;
      v18 = [v17 isEnabled];
      v19 = v0[13];
      v20 = v0[11];
      if ((v18 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v21 = v0[10];
      v22 = v0[8];
      v0[5] = v0[6];

      sub_1004BC4D4();

      (*v24)(v21, v22);
      result = (*v25)(v19, v20);
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    (*v25)(v0[13], v0[11]);

LABEL_14:

    v23 = v0[1];

    return v23();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10021BD3C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0[16] + 16);
  if (qword_100600080 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, qword_1006071E0);

  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1[16] + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "SampleReceiver continuation count %ld", v6, 0xCu);

    v7 = v1[17];
    if (v2)
    {
LABEL_5:
      if (v7)
      {
        v8 = v7;
        v9 = v7;
      }

      else
      {
        v14 = [objc_allocWithZone(NSNumber) initWithInteger:v1[15]];
        v9 = [objc_allocWithZone(MPCProcessAudioTap) initWithRefreshRate:v14 delegate:v1[14]];

        v8 = 0;
        v7 = v1[17];
      }

      v1[17] = v9;
      v13 = v9;
      v15 = v8;
      sub_10021C048(v7);

      [v13 setEnabled:1];
      [v13 start];
      v16 = sub_1004B8094();
      v17 = sub_1004BC9A4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "SampleReceiver audio tap active", v18, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {

    v7 = v1[17];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  [v7 stop];
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SampleReceiver audio tap inactive", v12, 2u);
  }

  v13 = v1[17];
  v1[17] = 0;
  sub_10021C048(v13);
LABEL_15:
}

void sub_10021C048(void *a1)
{
  v3 = *(v1 + 136);
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_11;
  }

  if (a1)
  {
    v4 = v1;
    sub_10021DD58();
    v5 = v3;
    v6 = a1;
    v7 = sub_1004BCFA4();

    if (v7)
    {
      return;
    }

    v3 = *(v4 + 136);
    if (!v3)
    {
LABEL_11:
      v17 = qword_100600080;
      v18 = v6;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = sub_1004B80B4();
      sub_100007084(v19, qword_1006071E0);
      v11 = v18;
      oslog = sub_1004B8094();
      v12 = sub_1004BC9A4();

      if (!os_log_type_enabled(oslog, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = a1;
      v15 = v11;
      v16 = "Audio tap destroyed: %@";
      goto LABEL_15;
    }
  }

  v8 = qword_100600080;
  v9 = v3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1004B80B4();
  sub_100007084(v10, qword_1006071E0);
  v11 = v9;
  oslog = sub_1004B8094();
  v12 = sub_1004BC9A4();

  if (!os_log_type_enabled(oslog, v12))
  {
    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 138412290;
  *(v13 + 4) = v11;
  *v14 = v3;
  v15 = v11;
  v16 = "Audio tap created: %@";
LABEL_15:
  _os_log_impl(&_mh_execute_header, oslog, v12, v16, v13, 0xCu);
  sub_100007214(v14, &qword_100602710);

  v11 = oslog;
  oslog = v15;
LABEL_16:
}

uint64_t sub_10021C2F4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10021C33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10021C35C, 0, 0);
}

uint64_t sub_10021C35C()
{
  v0[4] = sub_10021B8D4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_10021C400;
  v2 = v0[3];

  return sub_10021B96C(v2);
}

uint64_t sub_10021C400()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10021C524()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    type metadata accessor for SampleReceiver.SampleTransformer();
    v1 = swift_allocObject();
    sub_10021CC44(48000, 15);
    *(v2 + 24) = v1;
  }

  return v1;
}

id sub_10021C5A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = type metadata accessor for SampleReceiver.TapDelegate();
    v4 = objc_allocWithZone(v3);
    swift_weakInit();
    swift_weakAssign();
    v9.receiver = v4;
    v9.super_class = v3;
    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 32);
    *(v0 + 32) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_10021C640(float *a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3)
    {
      v33 = result;
      v9 = sub_10021C524();
      swift_beginAccess();
      v10 = *(v9 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 24) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_10003B250(v10);
        *(v9 + 24) = v10;
      }

      swift_beginAccess();
      v12 = *(v9 + 32);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 32) = v12;
      if ((v13 & 1) == 0)
      {
        v12 = sub_10003B250(v12);
        *(v9 + 32) = v12;
      }

      swift_beginAccess();
      v14 = *(v9 + 40);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 40) = v14;
      if ((v15 & 1) == 0)
      {
        v14 = sub_10003B250(v14);
        *(v9 + 40) = v14;
      }

      swift_beginAccess();
      v16 = *(v9 + 48);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 48) = v16;
      if ((v17 & 1) == 0)
      {
        v16 = sub_10003B250(v16);
        *(v9 + 48) = v16;
      }

      v18 = *(v9 + 72);
      __Z.realp = (v10 + 4);
      __Z.imagp = (v12 + 4);
      if (v18 >= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v18;
      }

      v35.realp = (v14 + 4);
      v35.imagp = (v16 + 4);
      if (v18 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v18)
        {
          v19 = sub_1004BC314();
          v19[2] = v18;
        }

        else
        {
          v19 = _swiftEmptyArrayStorage;
        }

        __B = 0;
        v37[0] = v19 + 4;
        v37[1] = v18;
        v20 = a1;
        a1 = 0;
        sub_10021D0A0(v37, &__B, v20, v3, v9);
        if (v18 >= __B)
        {
          v19[2] = __B;
          v3 = *(v9 + 80);
          swift_beginAccess();
          sub_10021D140(v19, v3, (v9 + 16));
          swift_endAccess();

          v21 = *(v9 + 16);
          v22 = *(v21 + 16);
          if (!(v22 >> 61))
          {
            v32 = v10;
            if (v22 >= 2)
            {
              v24 = v22 >> 1;
              v23 = sub_10024C798(v22 >> 1, 0);
              memcpy(v23 + 4, (v21 + 32), 8 * v24);
            }

            else
            {
              v23 = _swiftEmptyArrayStorage;
            }

            v25 = v23[2];

            vDSP_ctoz(v23 + 4, 2, &__Z, 1, v25);

            sub_1004B6464();

            v26 = sub_10021D5B0(v18, v9, &v35);

            v37[0] = v26;

            sub_10021D1E0(v27, v37);

            v2 = *(v9 + 64);
            a1 = v37[0];
            v3 = *(v37[0] + 2);

            v28 = a1;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          v28 = sub_10003B250(a1);
LABEL_27:
          LODWORD(__B) = v2;
          vDSP_vsmul(a1 + 8, 1, &__B, v28 + 8, 1, v3);

          *(v9 + 48) = v16;
          swift_endAccess();
          *(v9 + 40) = v14;
          swift_endAccess();
          *(v9 + 32) = v12;
          swift_endAccess();
          *(v9 + 24) = v32;
          swift_endAccess();

          v29 = sub_1004BC4B4();
          (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
          v30 = swift_allocObject();
          v30[2] = 0;
          v30[3] = 0;
          v30[4] = v33;
          v30[5] = v28;
          sub_1000FD6BC(0, 0, v7, &unk_1004D4FF0, v30);
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  return result;
}

id sub_10021CC00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleReceiver.TapDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10021CC44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1004B6474();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004B6444();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v14 = log2f(ceilf(a1 / a2));
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v14 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 1.8447e19)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 >= 0x40)
  {
    v15 = 0;
  }

  else
  {
    v15 = (1 << v14) / 2;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v33 = v7;
  if (v15)
  {
    v16 = sub_1004BC314();
    v32 = v6;
    v17 = v9;
    v18 = v16;
    *(v16 + 16) = v15;
    bzero((v16 + 32), 4 * v15);
    *(v3 + 16) = v18;
    v19 = sub_1004BC314();
    *(v19 + 16) = v15;
    bzero((v19 + 32), 4 * v15);
    *(v3 + 24) = v19;
    v20 = sub_1004BC314();
    *(v20 + 16) = v15;
    bzero((v20 + 32), 4 * v15);
    *(v3 + 32) = v20;
    v21 = sub_1004BC314();
    *(v21 + 16) = v15;
    bzero((v21 + 32), 4 * v15);
    *(v3 + 40) = v21;
    v22 = sub_1004BC314();
    *(v22 + 16) = v15;
    bzero((v22 + 32), 4 * v15);
    *(v3 + 48) = v22;
    v9 = v17;
    v6 = v32;
    v23 = sub_1004BC314();
    v23[2] = v15;
    bzero(v23 + 4, 4 * v15);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    *(v3 + 16) = _swiftEmptyArrayStorage;
    *(v3 + 24) = _swiftEmptyArrayStorage;
    *(v3 + 32) = _swiftEmptyArrayStorage;
    *(v3 + 40) = _swiftEmptyArrayStorage;
    *(v3 + 48) = _swiftEmptyArrayStorage;
  }

  *(v3 + 56) = v23;
  *(v3 + 64) = 2.0 / v15;
  v24 = (*(v11 + 104))(v13, enum case for vDSP.WindowSequence.hanningDenormalized(_:), v10);
  if (!v15)
  {
    goto LABEL_18;
  }

  __chkstk_darwin(v24);
  *(&v31 - 4) = v13;
  *(&v31 - 24) = 0;
  v29 = v15;
  v25 = sub_10021D4B0(v15, sub_10021D794);
  v26 = sub_1001A5258(v25);

  (*(v11 + 8))(v13, v10);
  *(v3 + 72) = v15;
  *(v3 + 80) = v26;
  (*(v33 + 104))(v9, enum case for vDSP.Radix.radix2(_:), v6);
  type metadata accessor for DSPSplitComplex(0);
  sub_100003ABC(&qword_100607658);
  swift_allocObject();
  v27 = sub_1004B6454();
  if (v27)
  {
    *(v3 + 88) = v27;
    return v3;
  }

LABEL_19:
  v30 = 0;
  v29 = 177;
  result = sub_1004BD624();
  __break(1u);
  return result;
}

void sub_10021D0A0(void **a1, void *a2, void *__src, char *a4, uint64_t a5)
{
  v7 = 0;
  v8 = *a1;
  if (a4)
  {
    v9 = a1[1];
    if (v9)
    {
      if (v9 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = a1[1];
      }

      memcpy(*a1, __src, 4 * v7);
    }
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = *(a5 + 72);
  v11 = __OFSUB__(v10, v7);
  v12 = v10 - v7;
  if (v11)
  {
    __break(1u);
  }

  else if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      bzero(&v8[4 * v7], 4 * v12);
    }

LABEL_12:
    *a2 = *(a5 + 72);
    return;
  }

  __break(1u);
}

void sub_10021D140(uint64_t a1, uint64_t a2, id **a3)
{
  v6 = *a3;
  v7 = (*a3)[2];
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v6 = sub_10003B250(v6);
  }

  vDSP_vmul((v5 + 32), 1, (v4 + 32), 1, v6 + 8, 1, v7);
  *v3 = v6;
}

void sub_10021D1E0(uint64_t a1, id **a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  if (v4 != (*a2)[2])
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >> 31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = a2;
  v3 = a1;
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = sub_10003B250(v5);
  }

  vvsqrtf(v5 + 8, (v3 + 32), &v6);
  *v2 = v5;
}

uint64_t sub_10021D298()
{

  return v0;
}

uint64_t sub_10021D2F0()
{
  sub_10021D298();

  return swift_deallocClassInstance();
}

uint64_t SampleReceiver.deinit()
{

  return v0;
}

uint64_t SampleReceiver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10021D42C()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1006071E0);
  sub_100007084(v0, qword_1006071E0);
  return sub_1004B80A4();
}

uint64_t sub_10021D4B0(uint64_t result, uint64_t (*a2)(void *, void **))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1004BC314();
    v5[2] = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5 + 4;
  v8 = 0;
  v7[0] = v5 + 4;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        v5[2] = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      v5[2] = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

id *sub_10021D5B0(int64_t a1, uint64_t a2, DSPSplitComplex *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1)
  {
    v6 = sub_1004BC314();
    v6[2] = a1;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = *(a2 + 72);
  v9 = *a3;
  vDSP_zvmags(&v9, 1, v6 + 8, 1, a1);
  if (v7 > a1)
  {
LABEL_8:
    __break(1u);
  }

  v6[2] = v7;
  return v6;
}

uint64_t sub_10021D68C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10021D6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_10021C33C(a1, v4, v5, v7, v6);
}

uint64_t sub_10021D794(uint64_t a1, void *a2)
{
  v4 = *(v2 + 32);
  sub_100003ABC(&qword_100607660);
  sub_10021D81C();
  result = sub_1004B6434();
  *a2 = v4;
  return result;
}

unint64_t sub_10021D81C()
{
  result = qword_100607668;
  if (!qword_100607668)
  {
    sub_100003B68(&qword_100607660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607668);
  }

  return result;
}

uint64_t sub_10021D880()
{
  v1 = sub_100003ABC(&qword_100601B90);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10021D958(uint64_t a1)
{
  v4 = *(sub_100003ABC(&qword_100601B90) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_10021B1D4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10021DA5C()
{
  v1 = sub_1004B6D14();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10021DB20(uint64_t a1)
{
  v3 = *(sub_1004B6D14() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10021B598(a1, v4, v5);
}

uint64_t sub_10021DB94()
{
  v1 = sub_1004B6D14();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10021DC60(uint64_t a1)
{
  v4 = *(sub_1004B6D14() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_10021B778(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_10021DD58()
{
  result = qword_100607680;
  if (!qword_100607680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100607680);
  }

  return result;
}

uint64_t SequentialVocalCommandsFilter.__allocating_init(playbackController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 124) = 0;
  *(v2 + 120) = 0;
  *(v2 + 126) = 1;
  *(v2 + 132) = 0;
  *(v2 + 128) = 0;
  *(v2 + 134) = 1;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t SequentialVocalCommandsFilter.init(playbackController:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 124) = 0;
  *(v1 + 120) = 0;
  *(v1 + 126) = 1;
  *(v1 + 132) = 0;
  *(v1 + 128) = 0;
  *(v1 + 134) = 1;
  *(v1 + 112) = a1;
  return v1;
}

void SequentialVocalCommandsFilter.append(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100600088 != -1)
  {
    swift_once();
  }

  v4 = a1 & 0xFFFFFFFFFFLL;
  v5 = a1 & 0x10000000000;
  v6 = sub_1004B80B4();
  sub_100007084(v6, qword_100607690);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v9 = 136446210;
    LOBYTE(v44) = v5 != 0;
    v11 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v13 = sub_100012018(v11, v12, v45);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "↪️ Queuing %{public}s", v9, 0xCu);
    sub_100004C6C(v10);

    v4 = a1 & 0xFFFFFFFFFFLL;
    v5 = a1 & 0x10000000000;
  }

  if (*(v1 + 134))
  {
    goto LABEL_6;
  }

  v22 = *(v1 + 128) | (*(v1 + 132) << 32);
  if (v5)
  {
    if ((v22 & 0x10000000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v22 & 0x10000000000) == 0)
  {
    if ((v4 & 0x100000000) != 0)
    {
      if ((v22 & 0x100000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((v22 & 0x100000000) != 0 || *&a1 != *(v1 + 128))
    {
      goto LABEL_6;
    }

LABEL_14:
    oslog = sub_1004B8094();
    v23 = sub_1004BC9A4();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136446210;
      LOBYTE(v44) = v5 != 0;
      v26 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
      v28 = sub_100012018(v26, v27, v45);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, oslog, v23, "↪️❌ Ignored %{public}s; already executing.", v24, 0xCu);
      sub_100004C6C(v25);
    }

    else
    {
    }

    return;
  }

LABEL_6:
  swift_beginAccess();
  if ((*(v1 + 126) & 1) == 0)
  {
    v14 = *(v1 + 120) | (*(v1 + 124) << 32);
    if ((v14 & 0x10000000000) != 0)
    {
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else if (!v5)
    {
      if ((v14 & 0x100000000) != 0)
      {
        if ((v4 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v4 & 0x100000000) == 0 && *(v1 + 120) == *&a1)
      {
LABEL_9:
        v15 = sub_1004B8094();
        v16 = sub_1004BC9A4();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v44 = v18;
          *v17 = 136446210;
          v19 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
          v21 = sub_100012018(v19, v20, &v44);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "↪️❌ Ignored %{public}s; Already enqueued.", v17, 0xCu);
          sub_100004C6C(v18);
        }

        return;
      }
    }

    v29 = sub_1004B8094();
    v30 = sub_1004BC9A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136446210;
      v33 = Player.VocalsCommand.description.getter(v14 & 0xFFFFFFFFFFLL | (((v14 >> 40) & 1) << 40));
      v35 = sub_100012018(v33, v34, &v44);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "↪️🫳 Dropping queued command %{public}s", v31, 0xCu);
      sub_100004C6C(v32);
    }
  }

  v36 = sub_1004B8094();
  v37 = sub_1004BC9A4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v38 = 136446210;
    v40 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v42 = sub_100012018(v40, v41, &v44);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "↪️✅ Queued %{public}s", v38, 0xCu);
    sub_100004C6C(v39);
  }

  *(v2 + 120) = a1 | v5;
  *(v2 + 124) = (a1 & 0xFFFFFFFFFFLL | v5) >> 32;
  *(v2 + 126) = 0;
  sub_10021E734();
}

uint64_t sub_10021E474(unint64_t a1)
{
  if ((*(v1 + 134) & 1) == 0)
  {
    v12 = *(v1 + 128) | (*(v1 + 132) << 32);
    v13 = swift_beginAccess();
    if ((*(v1 + 126) & 1) == 0)
    {
      v14 = *(v1 + 120) | (*(v1 + 124) << 32);
      if ((v12 & 0x10000000000) == 0)
      {
        if ((v14 & 0x10000000000) != 0)
        {
          goto LABEL_17;
        }

        if ((v12 & 0x100000000) != 0)
        {
          if ((v14 & 0x100000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else if ((v14 & 0x100000000) != 0 || *&v12 != *(v1 + 120))
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      if ((v14 & 0x10000000000) != 0)
      {
LABEL_10:
        *(v1 + 124) = 0;
        *(v1 + 120) = 0;
        *(v1 + 126) = 1;
        sub_10021E734(v13);
      }
    }

LABEL_17:
    if (qword_100600088 != -1)
    {
      swift_once();
    }

    v15 = sub_1004B80B4();
    sub_100007084(v15, qword_100607690);
    v4 = sub_1004B8094();
    v5 = sub_1004BC9A4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136446210;
    v16 = Player.VocalsCommand.description.getter(v12 & 0xFFFFFFFFFFLL | (((v12 >> 40) & 1) << 40));
    v18 = sub_100012018(v16, v17, &v20);

    *(v6 + 4) = v18;
    v11 = "▶️ Executing %{public}s";
    goto LABEL_21;
  }

  if ((a1 & 0x1000000000000) == 0)
  {
    if (qword_100600088 != -1)
    {
      swift_once();
    }

    v3 = sub_1004B80B4();
    sub_100007084(v3, qword_100607690);
    v4 = sub_1004B8094();
    v5 = sub_1004BC9A4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21[0] = v7;
    *v6 = 136446210;
    v8 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | (((a1 >> 40) & 1) << 40));
    v10 = sub_100012018(v8, v9, v21);

    *(v6 + 4) = v10;
    v11 = "✅ Finished executing %{public}s";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v4, v5, v11, v6, 0xCu);
    sub_100004C6C(v7);

LABEL_22:
  }

  return sub_10021E734(a1);
}

uint64_t sub_10021E734()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_1006014F0);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  if (*(v0 + 134) == 1)
  {
    result = swift_beginAccess();
    if ((*(v0 + 126) & 1) == 0)
    {
      v6 = *(v0 + 120) | (*(v0 + 124) << 32);
      v7 = v6 & 0xFFFFFFFFFFLL;
      if (qword_100600088 != -1)
      {
        swift_once();
      }

      v8 = sub_1004B80B4();
      sub_100007084(v8, qword_100607690);
      v9 = sub_1004B8094();
      v10 = sub_1004BC9A4();
      v11 = (v6 >> 40) & 1;
      if (os_log_type_enabled(v9, v10))
      {
        v12 = swift_slowAlloc();
        v23 = v6 & 0xFFFFFFFFFFLL;
        v13 = v12;
        v14 = swift_slowAlloc();
        v24 = v14;
        *v13 = 136446210;
        v15 = Player.VocalsCommand.description.getter(v6 & 0xFFFFFFFFFFLL | (v11 << 40));
        v17 = sub_100012018(v15, v16, &v24);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v9, v10, "↪️ Dequeuing %{public}s", v13, 0xCu);
        sub_100004C6C(v14);

        v7 = v23;
      }

      v18 = *(v1 + 128) | (*(v1 + 132) << 32);
      v19 = *(v1 + 134);
      *(v1 + 128) = v6;
      *(v1 + 132) = WORD2(v6) & 0x1FF;
      *(v1 + 134) = 0;
      LOBYTE(v24) = v19;
      sub_10021E474(v18 | (v19 << 48));
      v20 = sub_1004BC4B4();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
      v21 = sub_10021F2AC();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      *(v22 + 24) = v21;
      *(v22 + 32) = v1;
      *(v22 + 44) = BYTE4(v7);
      *(v22 + 40) = v7;
      *(v22 + 45) = v11;
      swift_retain_n();
      sub_1000FD6BC(0, 0, v5, &unk_1004D50D0, v22);
    }
  }

  return result;
}

uint64_t sub_10021EA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return _swift_task_switch(sub_10021EA28, a4, 0);
}

uint64_t sub_10021EA28()
{
  v1 = *(v0 + 104);
  *(v0 + 112) = *(*(v0 + 96) + 112);
  *(v0 + 40) = &type metadata for Player.VocalsCommand;
  *(v0 + 48) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 16) = v1;
  *(v0 + 20) = BYTE4(v1);
  *(v0 + 21) = BYTE5(v1) & 1;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = 0x726564696C534156;
  *(v0 + 64) = 0xE800000000000000;
  *(v0 + 120) = sub_1004BC474();
  *(v0 + 128) = sub_1004BC464();
  v3 = sub_1004BC3E4();
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;

  return _swift_task_switch(sub_10021EB20, v3, v2);
}

uint64_t sub_10021EB20()
{
  sub_100003ABC(&unk_100606020);
  v1 = swift_allocObject();
  v0[19] = v1;
  *(v1 + 16) = xmmword_1004C50A0;
  sub_10001342C((v0 + 2), v1 + 32);
  v0[20] = sub_1004BC464();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_10021EC14;

  return sub_1001E4818(v1, 0x10000, 1, 0, 0, (v0 + 7));
}

uint64_t sub_10021EC14(uint64_t a1)
{
  *(*v2 + 176) = a1;

  if (v1)
  {

    v3 = sub_1004BC3E4();
    v5 = v4;
    v6 = sub_10021EEF0;
  }

  else
  {
    v3 = sub_1004BC3E4();
    v5 = v7;
    v6 = sub_10021ED9C;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10021ED9C()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_10021EE08, v1, v2);
}

uint64_t sub_10021EE08()
{
  v1 = *(v0 + 176);

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!sub_1004BD6A4())
      {
        goto LABEL_9;
      }
    }

    sub_1004BD484();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  v2 = *(v0 + 96);
  sub_10021F41C(v0 + 56);
  sub_100004C6C(v0 + 16);

  return _swift_task_switch(sub_10021F060, v2, 0);
}

uint64_t sub_10021EEF0()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_10021EF54, v1, v2);
}

uint64_t sub_10021EF54()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_10021EFC0, v1, 0);
}

uint64_t sub_10021EFC0()
{
  sub_10021F41C(v0 + 56);
  sub_100004C6C(v0 + 16);
  v1 = *(v0 + 96);
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  sub_10021E474(v2 | (v3 << 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10021F060()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  sub_10021E474(v2 | (v3 << 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t SequentialVocalCommandsFilter.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10021F150()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_100607690);
  sub_100007084(v0, qword_100607690);
  return sub_1004B80A4();
}

uint64_t sub_10021F1D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 120);
  v6 = *(v3 + 126);
  *(a2 + 4) = *(v3 + 124);
  *a2 = v5;
  *(a2 + 6) = v6;
  return result;
}

uint64_t sub_10021F228(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 6);
  v5 = *a2;
  swift_beginAccess();
  *(v5 + 124) = v3;
  *(v5 + 120) = v2;
  *(v5 + 126) = v4;
  return sub_10021E734();
}

unint64_t sub_10021F2AC()
{
  result = qword_1006077A0;
  if (!qword_1006077A0)
  {
    type metadata accessor for SequentialVocalCommandsFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006077A0);
  }

  return result;
}

uint64_t sub_10021F300()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10021F340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32) | (*(v1 + 45) << 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_10021EA08(a1, v4, v5, v6, v7);
}

uint64_t sub_10021F41C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100601C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()
{
  if (qword_100600090 != -1)
  {
    swift_once();
  }

  return &static PlaylistCovers.ArtworkDataSource.shared;
}

__n128 PlaylistCovers.Recipe.init(_:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100221990(a1, a2);
  v7 = v6;
  sub_1004B6524();
  swift_allocObject();
  sub_1004B6514();
  sub_100223534();
  sub_1004B6504();

  sub_100004D90(v5, v7);
  if (!v3)
  {
    *(a3 + 64) = v13;
    *(a3 + 80) = v14;
    *(a3 + 96) = v15;
    *a3 = v9;
    *(a3 + 16) = v10;
    result = v12;
    *(a3 + 32) = v11;
    *(a3 + 48) = v12;
  }

  return result;
}

void PlaylistCovers.Recipe.asCoverRepresentation(_:)(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3 == 3157553 && v3[1] == 0xE300000000000000;
  if (v7 || (sub_1004BD9C4() & 1) != 0)
  {
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[9];
    v13 = v3[10];
    v14 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v3[3], v3[4]);
    if (!v14)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_14;
    }

    v15 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v8, v9);
    if (!v15)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      goto LABEL_16;
    }

    v16 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v10, v11);
    if (!v16)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_17;
    }

    v17 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v12, v13);
    if (!v17)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v18 = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(v3[2]);
    if (v18 != 8)
    {
      v22 = v18;
      sub_100223588();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = v14;
      v27 = v15;
      v24 = v16;
      v28 = v17;
      v25 = [ObjCClassFromMetadata preferredFormat];
      v20 = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v29, v27, v24, v28, v25, v22, a2, a3);
      v21 = v26;

      v19 = v22;
      goto LABEL_19;
    }
  }

  v19 = 0;
  v20 = 0;
  v14 = 0;
LABEL_14:
  v15 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = 0;
LABEL_18:
  v21 = 0;
LABEL_19:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v21;
}

id PlaylistCovers.ArtworkToken.__allocating_init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 6) = *(a1 + 48);
  v10 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, "init");
}

id PlaylistCovers.ArtworkToken.init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v6 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v6 = a2;
  *(v6 + 1) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for PlaylistCovers.ArtworkToken();
  return objc_msgSendSuper2(&v8, "init");
}

id PlaylistCovers.ArtworkToken.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v3 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8);
  v4 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v5 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24);
  v6 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v7 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40);
  v8 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  v10 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v9 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);
  v11 = type metadata accessor for PlaylistCovers.ArtworkToken();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  *v13 = v2;
  *(v13 + 1) = v3;
  *(v13 + 2) = v4;
  *(v13 + 3) = v5;
  *(v13 + 4) = v6;
  *(v13 + 5) = v7;
  *(v13 + 6) = v8;
  v14 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v14 = v10;
  *(v14 + 1) = v9;
  v23.receiver = v12;
  v23.super_class = v11;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  result = objc_msgSendSuper2(&v23, "init");
  a1[3] = v11;
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall PlaylistCovers.ArtworkToken.stringRepresentation()()
{
  v1 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v14[0] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v14[1] = v1;
  v14[2] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v15 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_1002235F8(v14, &v12);
  v2 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v4 = v3;
  sub_100223654(v14);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1004BD404(19);

  v12 = 0xD000000000000011;
  v13 = 0x8000000100504710;
  v5 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v6 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);

  v16._countAndFlagsBits = v5;
  v16._object = v6;
  sub_1004BC024(v16);

  v7 = v12;
  v8 = v13;
  v12 = v2;
  v13 = v4;

  v17._countAndFlagsBits = v7;
  v17._object = v8;
  sub_1004BC024(v17);

  v9 = v12;
  v10 = v13;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

id sub_10021FCD0()
{
  result = [objc_allocWithZone(type metadata accessor for PlaylistCovers.ArtworkDataSource()) init];
  static PlaylistCovers.ArtworkDataSource.shared = result;
  return result;
}

id static PlaylistCovers.ArtworkDataSource.shared.getter()
{
  if (qword_100600090 != -1)
  {
    swift_once();
  }

  v1 = static PlaylistCovers.ArtworkDataSource.shared;

  return v1;
}

id PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(void *a1)
{
  v3 = [a1 token];
  sub_1004BD284();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    [a1 fittingSize];
    v4 = sub_1002236A8(v8);
    if (v4)
    {
      v5 = v4;
      v6 = [*(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) objectForKey:v4];

      return v6;
    }
  }

  return 0;
}

uint64_t PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_1004B6E64();
  v2[27] = swift_task_alloc();
  v3 = sub_1004BBE14();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10021FFA8, 0, 0);
}

uint64_t sub_10021FFA8()
{
  v1 = [*(v0 + 200) token];
  sub_1004BD284();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (!swift_dynamicCast())
  {
    v10 = *(v0 + 200);
    sub_1004BD404(58);
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    v71._countAndFlagsBits = 0x206E656B6F54;
    v71._object = 0xE600000000000000;
    sub_1004BC024(v71);
    v11 = [v10 token];
    sub_1004BD284();
    swift_unknownObjectRelease();
    sub_1004BD5C4();
    sub_100004C6C(v0 + 144);
    v72._object = 0x8000000100504750;
    v72._countAndFlagsBits = 0xD000000000000032;
    sub_1004BC024(v72);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    sub_100223888();
    swift_allocError();
    *v14 = v12;
    v14[1] = v13;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  [v2 fittingSize];
  v5 = v4;
  v7 = v6;
  v8 = PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(v2);
  if (v8)
  {
    v9 = v8;
LABEL_4:

    goto LABEL_28;
  }

  aBlock = (v0 + 16);
  v69 = v3;
  v17 = *(v0 + 200);
  v18 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8];
  v19 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16];
  v20 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24];
  v21 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32];
  v23 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40];
  v22 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48];
  sub_100223588();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = v18;
  v63 = v19;
  v64 = v20;
  v65 = v21;
  v66 = v23;
  v25 = v22;
  v26 = [ObjCClassFromMetadata preferredFormat];
  [v17 destinationScale];
  [v26 setScale:?];
  [v17 fittingSize];
  v28 = v27;
  v30 = v29;
  v32 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  v31 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8];

  v33 = String.trim()();

  v34 = (v33._object >> 56) & 0xF;
  if ((v33._object & 0x2000000000000000) == 0)
  {
    v34 = v33._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    goto LABEL_13;
  }

  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);

  sub_1004BBDA4();
  (*(v37 + 16))(v36, v35, v38);
  if (qword_1005FFD30 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v39 = *(v0 + 248);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = qword_100617118;
    sub_1004B6DF4();
    v32 = sub_1004BBED4();
    v31 = v43;
    (*(v40 + 8))(v39, v41);
LABEL_13:

    v44 = sub_1004BBE24();

    v45 = [v44 _containsEmoji];

    v46 = 270.0;
    if (v28 > 270.0)
    {
      v46 = v28;
    }

    if (v45)
    {
      v47 = v46;
    }

    else
    {
      v47 = v28;
    }

    if (v45)
    {
      v48 = v46;
    }

    else
    {
      v48 = v30;
    }

    v49 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v26 format:{v47, v48}];
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    *(v50 + 24) = v48;
    *(v50 + 32) = v67;
    *(v50 + 40) = v26;
    *(v50 + 48) = v32;
    *(v50 + 56) = v31;
    *(v50 + 64) = v25;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10022392C;
    *(v51 + 24) = v50;
    *(v0 + 48) = sub_100124268;
    *(v0 + 56) = v51;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10011FE68;
    *(v0 + 40) = &unk_1005BA098;
    v52 = _Block_copy(aBlock);
    v67 = v67;
    aBlock = v26;
    v26 = v25;

    v53 = v49;
    v25 = [v49 imageWithActions:v52];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
      goto LABEL_33;
    }

    v73.width = v47;
    v73.height = v48;
    v74.width = v28;
    v74.height = v30;
    if (CGSizeEqualToSize(v73, v74))
    {

      goto LABEL_26;
    }

    v62 = v26;
    v54 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:aBlock format:{v28, v30}];
    v55 = swift_allocObject();
    *(v55 + 16) = v25;
    *(v55 + 24) = v28;
    *(v55 + 32) = v30;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1002239A0;
    *(v56 + 24) = v55;
    *(v0 + 96) = sub_10012511C;
    *(v0 + 104) = v56;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_10011FE68;
    *(v0 + 88) = &unk_1005BA110;
    v57 = _Block_copy((v0 + 64));
    v26 = *(v0 + 104);
    v58 = v25;

    v25 = [v54 imageWithActions:v57];

    _Block_release(v57);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if ((v58 & 1) == 0)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v26 = v62;
LABEL_26:
  v3 = v69;
  v9 = [objc_opt_self() representationForVisualIdentity:v69 withSize:v25 image:{v5, v7}];
  v59 = sub_1002236A8(v69);
  if (!v59)
  {

    goto LABEL_4;
  }

  v60 = v59;
  [*(*(v0 + 208) + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) setObject:v9 forKey:v59];

LABEL_28:

  v61 = *(v0 + 8);

  return v61(v9);
}

uint64_t sub_1002209F0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100220AB4;

  return PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(v6);
}

uint64_t sub_100220AB4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_1004B69A4();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t PlaylistCovers.ArtworkDataSource.visualIdenticalityIdentifier(for:)(void *a1)
{
  v1 = [a1 token];
  sub_1004BD284();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id PlaylistCovers.ArtworkDataSource.init()()
{
  v1 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  *&v0[v1] = [objc_allocWithZone(NSCache) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100220E68(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t PlaylistCovers.Recipe.textColor.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PlaylistCovers.Recipe.textColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t SharedListening.Reaction.senderID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SharedListening.Reaction.senderID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100220FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100223A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100220FF8(uint64_t a1)
{
  v2 = sub_100223A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221034(uint64_t a1)
{
  v2 = sub_100223A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.HexColors.encode(to:)(void *a1)
{
  v3 = sub_100003ABC(&qword_1006077E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100009178(a1, a1[3]);
  sub_100223A40();
  sub_1004BDC44();
  v8[15] = 0;
  sub_1004BD854();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004BD854();
  v8[13] = 2;
  sub_1004BD854();
  v8[12] = 3;
  sub_1004BD854();
  return (*(v4 + 8))(v6, v3);
}

double PlaylistCovers.Recipe.HexColors.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100223BE8(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_100221290(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v8) & 1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaylistCovers.Recipe.rawJSONRepresentation()()
{
  v3 = sub_1004BBEB4();
  __chkstk_darwin(v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6554();
  swift_allocObject();
  sub_1004B6544();
  v6 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v6;
  v17 = *(v0 + 96);
  v7 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v7;
  v8 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v8;
  sub_100223EDC();
  v9 = sub_1004B6534();
  if (v1)
  {
  }

  else
  {
    v11 = v9;
    v12 = v10;
    sub_1004BBEA4();
    v13 = sub_1004BBE84();
    if (!v14)
    {
      __break(1u);
      goto LABEL_7;
    }

    v5 = v13;
    v2 = v14;
    sub_100004D90(v11, v12);
  }

  v13 = v5;
  v14 = v2;
LABEL_7:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_10022141C()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x666E49726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F4374786574;
  }

  if (*v0)
  {
    v1 = 0x6973736572707865;
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

uint64_t sub_1002214A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100224008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002214D8(uint64_t a1)
{
  v2 = sub_100223F30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100221514(uint64_t a1)
{
  v2 = sub_100223F30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100003ABC(&qword_1006077F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_100009178(a1, a1[3]);
  sub_100223F30();
  sub_1004BDC44();
  LOBYTE(v16) = 0;
  sub_1004BD854();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1004BD884();
    v10 = *(v3 + 24);
    v11 = *(v3 + 56);
    v20[1] = *(v3 + 40);
    v20[2] = v11;
    v20[3] = *(v3 + 72);
    v12 = *(v3 + 40);
    v16 = *(v3 + 24);
    v17 = v12;
    v18 = *(v3 + 56);
    v19 = *(v3 + 72);
    v20[0] = v10;
    v15 = 2;
    sub_1002239D0(v20, v14);
    sub_100223F84();
    sub_1004BD894();
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_100223FD8(v14);
    v13[15] = 3;
    sub_1004BD854();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 PlaylistCovers.Recipe.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022417C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10022186C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13) & 1;
}

void PlaylistCovers.Recipe.HexColors.init(from:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v21 = v11;
  v22 = v10;
  v20 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v14 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  v17 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v19 = v18;

  *a5 = v22;
  a5[1] = v21;
  a5[2] = v20;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v16;
  a5[6] = v17;
  a5[7] = v19;
}

uint64_t sub_100221990(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100003ABC(&qword_100607970);
  if (swift_dynamicCast())
  {
    sub_100013414(__src, &v41);
    sub_100009178(&v41, v42);
    sub_1004B6804();
    __src[0] = v40;
    sub_100004C6C(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100007214(__src, &qword_100607978);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1004BD4C4();
  }

  sub_1002224FC(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_100222E8C(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_1002225C4(sub_100224D98);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1004B6B44();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100222480(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1004BC044();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1004BC074();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1004BD4C4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100222480(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1004BC054();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1004B6B54();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1004B6B54();
    sub_100004D7C(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100004D7C(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_10003E428(*&__src[0], *(&__src[0] + 1));

  sub_100004D90(v32, *(&v32 + 1));
  return v32;
}

uint64_t PlaylistCovers.Recipe.init(from:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v29 = *a1 + 1;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 2);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v12;
  v28 = v11;
  v13 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v25 = v14;
  v26 = v13;
  v15 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v17 = v16;
  v18 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v20 = v19;

  v21 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v23 = v22;
  result = sub_100223654(a1);
  *a2 = 3157553;
  a2[1] = 0xE300000000000000;
  a2[2] = v29;
  a2[3] = v28;
  a2[4] = v27;
  a2[5] = v26;
  a2[6] = v25;
  a2[7] = v15;
  a2[8] = v17;
  a2[9] = v18;
  a2[10] = v20;
  a2[11] = v21;
  a2[12] = v23;
  return result;
}

uint64_t sub_100221FC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001384C;

  return v6();
}

uint64_t sub_1002220AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000136EC;

  return v7();
}

uint64_t sub_100222194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003ABC(&qword_1006014F0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100021174(a3, v23 - v10);
  v12 = sub_1004BC4B4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100007214(v11, &qword_1006014F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1004BC4A4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1004BC3E4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1004BBF54() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100007214(a3, &qword_1006014F0);

    return v21;
  }

LABEL_8:
  sub_100007214(a3, &qword_1006014F0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100222480(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1004BC094();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1004BC064();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1002224FC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100222DD4(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1004B6764();
      swift_allocObject();
      v8 = sub_1004B6714();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1004B6B34();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1002225C4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100004D90(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100004D90(v6, v5);
    *v3 = xmmword_1004C51E0;
    sub_100004D90(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1004B6724() && __OFSUB__(v6, sub_1004B6754()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1004B6764();
      swift_allocObject();
      v13 = sub_1004B6704();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_100222A68(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100004D90(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1004C51E0;
    sub_100004D90(0, 0xC000000000000000);
    sub_1004B6B14();
    result = sub_100222A68(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_100222968@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100222DD4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100222F2C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100222FA8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1002229FC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100222A68(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1004B6724();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1004B6754();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1004B6744();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100222B1C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_1004BD414();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1004BD9C4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_1004BD9C4();
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v16 = a1[10];
  v17 = a1[9];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v14 = a2[10];
  v15 = a2[9];
  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  if ((v5 != v9 || v6 != v10) && (sub_1004BD9C4() & 1) == 0 || (v7 != v11 || v8 != v12) && (sub_1004BD9C4() & 1) == 0 || (v17 != v15 || v16 != v14) && (sub_1004BD9C4() & 1) == 0)
  {
    return 0;
  }

  if (a1[11] == a2[11] && a1[12] == a2[12])
  {
    return 1;
  }

  return sub_1004BD9C4();
}

uint64_t sub_100222DD4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100222E8C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1004B6764();
      swift_allocObject();
      sub_1004B6734();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1004B6B34();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_100222F2C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1004B6764();
  swift_allocObject();
  result = sub_1004B6714();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004B6B34();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100222FA8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1004B6764();
  swift_allocObject();
  result = sub_1004B6714();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_100221990(a1, a2);
  v10 = v9;
  sub_1004B6524();
  swift_allocObject();
  sub_1004B6514();
  sub_100223534();
  sub_1004B6504();

  sub_100004D90(v8, v10);
  v30[4] = v24;
  v30[5] = v25;
  v31 = v26;
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  PlaylistCovers.Recipe.asCoverRepresentation(_:)(&v20, 180.0, 180.0);
  sub_100224D68(v30);
  v11 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v12 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v13 = type metadata accessor for PlaylistCovers.ArtworkToken();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
    *v15 = v12;
    *(v15 + 1) = v11;
    v16 = v28;
    *(v15 + 1) = v27;
    *(v15 + 2) = v16;
    *(v15 + 6) = v29;
    v17 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
    *v17 = a3;
    *(v17 + 1) = a4;
    v19.receiver = v14;
    v19.super_class = v13;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {

    return 0;
  }
}

unint64_t sub_100223534()
{
  result = qword_1006077B0;
  if (!qword_1006077B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006077B0);
  }

  return result;
}

unint64_t sub_100223588()
{
  result = qword_1006077B8;
  if (!qword_1006077B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006077B8);
  }

  return result;
}

id sub_1002236A8(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v21[0] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v21[1] = v2;
  v21[2] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v22 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_1002235F8(v21, &v19);
  v3 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v5 = v4;
  sub_100223654(v21);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1004BD404(19);

  v19 = 0xD000000000000011;
  v20 = 0x8000000100504710;
  v6 = a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle;
  v7 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v8 = *(v6 + 8);

  v23._countAndFlagsBits = v7;
  v23._object = v8;
  sub_1004BC024(v23);

  v9 = v19;
  v10 = v20;
  v19 = v3;
  v20 = v5;

  v24._countAndFlagsBits = v9;
  v24._object = v10;
  sub_1004BC024(v24);

  v12 = v19;
  v11 = v20;
  v19 = 0x203A657A6973202CLL;
  v20 = 0xE800000000000000;
  v25._countAndFlagsBits = sub_1004BCE04();
  sub_1004BC024(v25);

  v13 = v19;
  v14 = v20;
  v19 = v12;
  v20 = v11;

  v26._countAndFlagsBits = v13;
  v26._object = v14;
  sub_1004BC024(v26);

  v15 = objc_allocWithZone(NSString);
  v16 = sub_1004BBE24();

  v17 = [v15 initWithString:v16];

  return v17;
}

unint64_t sub_100223888()
{
  result = qword_1006077D8;
  if (!qword_1006077D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006077D8);
  }

  return result;
}

uint64_t sub_1002238DC()
{

  return swift_deallocObject();
}

uint64_t sub_100223950(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100223968()
{

  return swift_deallocObject();
}

unint64_t sub_100223A40()
{
  result = qword_1006077E8;
  if (!qword_1006077E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006077E8);
  }

  return result;
}

uint64_t sub_100223A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000 || (sub_1004BD9C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004BD9C4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100223BE8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003ABC(&qword_100607968);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_100009178(a1, a1[3]);
  sub_100223A40();
  sub_1004BDC34();
  if (v2)
  {
    return sub_100004C6C(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1004BD7C4();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1004BD7C4();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1004BD7C4();
  v25 = v13;
  v33 = 3;
  v14 = sub_1004BD7C4();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_1002239D0(&v28, v32);
  sub_100004C6C(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_100223FD8(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_100223EDC()
{
  result = qword_1006077F0;
  if (!qword_1006077F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006077F0);
  }

  return result;
}

unint64_t sub_100223F30()
{
  result = qword_100607800;
  if (!qword_100607800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607800);
  }

  return result;
}

unint64_t sub_100223F84()
{
  result = qword_100607808;
  if (!qword_100607808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607808);
  }

  return result;
}

uint64_t sub_100224008(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1004BD9C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEC00000064496E6FLL || (sub_1004BD9C4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F6C6F63 && a2 == 0xE90000000000006FLL || (sub_1004BD9C4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_1004BD9C4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10022417C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = sub_100003ABC(&qword_100607958);
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v20 - v6;
  sub_100009178(a1, a1[3]);
  sub_100223F30();
  sub_1004BDC34();
  if (v2)
  {
    return sub_100004C6C(a1);
  }

  LOBYTE(v26[0]) = 0;
  v8 = sub_1004BD7C4();
  v10 = v9;
  v22 = v8;
  LOBYTE(v26[0]) = 1;
  v21 = sub_1004BD7F4();
  v34 = 2;
  sub_100224CDC();
  sub_1004BD804();
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v33 = 3;
  v11 = sub_1004BD7C4();
  v12 = *(v5 + 8);
  v14 = v13;
  v12(v7, v43);
  v15 = v22;
  *&v23 = v22;
  *(&v23 + 1) = v10;
  *&v24[0] = v21;
  *(v24 + 8) = v39;
  *(&v24[1] + 8) = v40;
  *(&v24[2] + 8) = v41;
  *(&v24[3] + 8) = v42;
  *(&v24[4] + 1) = v11;
  v25 = v14;
  sub_100224D30(&v23, v26);
  sub_100004C6C(a1);
  v26[0] = v15;
  v26[1] = v10;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v26[2] = v21;
  v31 = v11;
  v32 = v14;
  result = sub_100224D68(v26);
  v17 = v24[4];
  *(a2 + 64) = v24[3];
  *(a2 + 80) = v17;
  *(a2 + 96) = v25;
  v18 = v24[0];
  *a2 = v23;
  *(a2 + 16) = v18;
  v19 = v24[2];
  *(a2 + 32) = v24[1];
  *(a2 + 48) = v19;
  return result;
}

__n128 sub_1002244A4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002244D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_100224518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100224580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1002245C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10022465C()
{
  result = qword_100607920;
  if (!qword_100607920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607920);
  }

  return result;
}

unint64_t sub_1002246B4()
{
  result = qword_100607928;
  if (!qword_100607928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607928);
  }

  return result;
}

unint64_t sub_10022470C()
{
  result = qword_100607930;
  if (!qword_100607930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607930);
  }

  return result;
}

unint64_t sub_100224764()
{
  result = qword_100607938;
  if (!qword_100607938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607938);
  }

  return result;
}

unint64_t sub_1002247BC()
{
  result = qword_100607940;
  if (!qword_100607940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607940);
  }

  return result;
}

unint64_t sub_100224814()
{
  result = qword_100607948;
  if (!qword_100607948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607948);
  }

  return result;
}

uint64_t sub_100224868()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1002248B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000136EC;

  return sub_1002209F0(v2, v3, v4);
}

uint64_t sub_100224968()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001384C;

  return sub_100221FC4(v2, v3, v4);
}

uint64_t sub_100224A28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100224A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001384C;

  return sub_1002220AC(a1, v4, v5, v6);
}

uint64_t sub_100224B34()
{

  return swift_deallocObject();
}

uint64_t sub_100224B6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_100224C24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100109480(a1, v4);
}

unint64_t sub_100224CDC()
{
  result = qword_100607960;
  if (!qword_100607960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607960);
  }

  return result;
}

void *sub_100224D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1002229FC(sub_100224E00, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.stringRepresentation.getter()
{
  sub_1004BD404(68);
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x80000001005048E0;
  sub_1004BC024(v6);
  v7._countAndFlagsBits = sub_1004BD934();
  sub_1004BC024(v7);

  v8._object = 0x8000000100504910;
  v8._countAndFlagsBits = 0xD000000000000010;
  sub_1004BC024(v8);
  v9._countAndFlagsBits = PlaylistCovers.RecipeColors.description.getter(v0[2], v0[3], v0[4], v0[5]);
  sub_1004BC024(v9);

  v10._countAndFlagsBits = 0x6F4374786574202CLL;
  v10._object = 0xED0000203A726F6CLL;
  sub_1004BC024(v10);
  v1 = [v0[6] description];
  v2 = sub_1004BBE64();
  v4 = v3;

  v11._countAndFlagsBits = v2;
  v11._object = v4;
  sub_1004BC024(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_1004BC024(v12);
  return 0;
}

uint64_t static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(void *a1, char **a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7)
{
  v46 = a1;
  v13 = sub_1004B6E64();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1004BBE14();
  isEscapingClosureAtFileLocation = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v44 - v19;
  if (!a4)
  {
LABEL_7:
    sub_1004BBDA4();
    (*(isEscapingClosureAtFileLocation + 16))(v17, v20, v14);
    if (qword_1005FFD30 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v45 = a5;

  v21 = String.trim()();

  v22 = (v21._object >> 56) & 0xF;
  if ((v21._object & 0x2000000000000000) == 0)
  {
    v22 = v21._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    a5 = v45;
    goto LABEL_7;
  }

  a5 = v45;
  while (1)
  {
    v25 = sub_1004BBE24();

    v26 = [v25 _containsEmoji];

    v27 = 270.0;
    if (a6 > 270.0)
    {
      v27 = a6;
    }

    v28 = v26 ? v27 : a6;
    v29 = v26 ? v27 : a7;
    v20 = &_s7SwiftUI30_SafeAreaRegionsIgnoringLayoutVAA12ViewModifierAAWP_ptr;
    v30 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{v28, v29}];
    v14 = swift_allocObject();
    *(v14 + 16) = v28;
    *(v14 + 24) = v29;
    v31 = v46;
    *(v14 + 32) = v46;
    *(v14 + 40) = a5;
    *(v14 + 48) = a3;
    *(v14 + 56) = a4;
    *(v14 + 64) = a2;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_10022392C;
    *(v32 + 24) = v14;
    v51 = sub_1001F3CC0;
    v52 = v32;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_10011FE68;
    v50 = &unk_1005BA510;
    v33 = _Block_copy(&aBlock);
    v34 = v31;
    a5 = a5;
    v35 = a2;

    a2 = &off_1005F2000;
    v36 = [v30 imageWithActions:v33];
    _Block_release(v33);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
LABEL_8:
    v23 = qword_100617118;
    sub_1004B6DF4();
    a3 = sub_1004BBED4();
    a4 = v24;
    (*(isEscapingClosureAtFileLocation + 8))(v20, v14);
  }

  v53.width = v28;
  v53.height = v29;
  v54.width = a6;
  v54.height = a7;
  if (CGSizeEqualToSize(v53, v54))
  {

    return v36;
  }

  v37 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = a6;
  *(v38 + 32) = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_10022628C;
  *(v39 + 24) = v38;
  v51 = sub_100226ABC;
  v52 = v39;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_10011FE68;
  v50 = &unk_1005BA588;
  v40 = _Block_copy(&aBlock);
  v41 = v36;

  v36 = [v37 imageWithActions:v40];

  _Block_release(v40);
  v42 = swift_isEscapingClosureAtFileLocation();

  if ((v42 & 1) == 0)
  {
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.init(expression:backgroundImage:recipeColors:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void *PlaylistCovers.Cover.Representation.recipeColors.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v1;
  v6 = v2;
  v7 = v4;
  v8 = v3;
  return v1;
}

uint64_t PlaylistCovers.Cover.Representation.hash(into:)()
{
  sub_1004BDBB4(*v0 + 1);
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BCFB4();
}

Swift::Int PlaylistCovers.Cover.Representation.hashValue.getter()
{
  sub_1004BDBA4();
  sub_1004BDBB4(*v0 + 1);
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BDBF4();
}

uint64_t sub_100225760(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v5, v7) & 1;
}

Swift::Int sub_1002257BC()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1 + 1);
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BDBF4();
}

uint64_t sub_100225864()
{
  sub_1004BDBB4(*v0 + 1);
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BCFB4();
}

Swift::Int sub_1002258F4()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1 + 1);
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BDBF4();
}

__n128 PlaylistCovers.Cover.init(image:representation:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 5);
  v22 = *(a2 + 6);
  v20 = *(a2 + 24);
  v21 = *(a2 + 8);
  sub_1002235F8(a2, v23);
  v8 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v10 = v9;
  v11 = *a2;
  v12 = PlaylistCovers.Expression.accessibilityLabel.getter();
  v14 = v13;
  sub_100223654(a2);
  v15 = PlaylistCovers.Expression.accessibilityIdentifier.getter(v11);
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  result = v21;
  *(a3 + 32) = v21;
  *(a3 + 48) = v20;
  *(a3 + 64) = v7;
  *(a3 + 72) = v22;
  *(a3 + 80) = v12;
  *(a3 + 88) = v14;
  *(a3 + 96) = v15;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  return result;
}

double PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  result = 0.0;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

uint64_t sub_100225A94@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_100225AA0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14) & 1;
}

id sub_100225B28()
{
  v0 = [objc_opt_self() whiteColor];
  sub_100009130(0, &qword_100607990);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 128, 128, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 230, 230, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(250, 35, 59, 1.0);
  qword_100617678 = v0;
  unk_100617680 = v1;
  qword_100617688 = v2;
  unk_100617690 = result;
  return result;
}

id sub_100225BE0()
{
  sub_100009130(0, &qword_100607990);
  v0 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(238, 238, 238, 1.0);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(187, 187, 187, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(70, 70, 70, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(17, 17, 17, 1.0);
  qword_100617698 = v0;
  unk_1006176A0 = v1;
  qword_1006176A8 = v2;
  unk_1006176B0 = result;
  return result;
}

void sub_100225C8C(int a1, id a2, double a3, double a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  [a2 drawInRect:{0.0, 0.0, a3, a4}];
  v11 = sub_1004BBFB4();
  v12 = objc_opt_self();
  [a5 scale];
  if (v11 <= 30)
  {
    v13 = 33.0;
  }

  else
  {
    v13 = 27.0;
  }

  sub_1004B7174();
  v14 = [v12 systemFontOfSize:? weight:?];
  v15 = [v14 fontDescriptor];

  v16 = kCTFontIgnoreLegibilityWeightAttribute;
  sub_100003ABC(&qword_100607998);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = v16;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCTFontOpticalSizeAttribute;
  *(inited + 104) = &type metadata for CGFloat;
  *(inited + 80) = v13;
  v18 = v16;
  v19 = kCTFontOpticalSizeAttribute;
  v45 = v18;
  v44 = v19;
  v20 = v15;
  sub_10003DFDC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100601B88);
  swift_arrayDestroy();
  type metadata accessor for AttributeName(0);
  sub_100226A3C();
  isa = sub_1004BBC24().super.isa;

  v42 = [v20 fontDescriptorByAddingAttributes:isa];

  v22 = [v12 fontWithDescriptor:v42 size:0.0];
  [a5 scale];
  sub_1004B7174();
  v24 = v23;
  v25 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v25 setMinimumLineHeight:v24];
  [v25 setMaximumLineHeight:v24];
  sub_100003ABC(&qword_1006079A0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1004C50B0;
  *(v26 + 32) = NSFontAttributeName;
  v27 = sub_100009130(0, &qword_1006079A8);
  *(v26 + 40) = v22;
  *(v26 + 64) = v27;
  *(v26 + 72) = NSForegroundColorAttributeName;
  v28 = sub_100009130(0, &qword_100607990);
  *(v26 + 80) = a8;
  *(v26 + 104) = v28;
  *(v26 + 112) = NSKernAttributeName;
  *(v26 + 120) = -0.25 / (270.0 / a3);
  *(v26 + 144) = &type metadata for CGFloat;
  *(v26 + 152) = NSParagraphStyleAttributeName;
  *(v26 + 184) = sub_100009130(0, &qword_1006079B0);
  *(v26 + 160) = v25;
  v29 = NSFontAttributeName;
  v30 = v22;
  v31 = NSForegroundColorAttributeName;
  v32 = a8;
  v33 = NSKernAttributeName;
  v34 = NSParagraphStyleAttributeName;
  v35 = v25;
  sub_10003E000(v26);
  swift_setDeallocating();
  sub_100003ABC(&qword_100601B78);
  swift_arrayDestroy();
  v36 = sub_1004B8134();
  sub_1004B8124();
  v37 = objc_allocWithZone(v36);

  v38 = sub_1004B8144();
  v39 = sub_1004B8114();

  [a5 scale];
  sub_1004B7174();
  sub_1004BC924();
  [v39 drawWithRect:1 options:0 context:{sub_100226A94(0.0, 0.0, a3, a4, v40, v41)}];
}

uint64_t sub_1002261BC()
{

  return swift_deallocObject();
}

uint64_t sub_10022621C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100226254()
{

  return swift_deallocObject();
}

uint64_t sub_1002262A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100607980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v4 = v3;
  v26 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v5;
  v25 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v29 = v6;
  v23 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v30 = v7;
  v8 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v10 = v9;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v24 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v28 = v14;
  v22 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  if (v2 == v8 && v4 == v10)
  {
  }

  else
  {
    v17 = sub_1004BD9C4();

    if ((v17 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v26 == v11 && v27 == v13)
  {
  }

  else
  {
    v18 = sub_1004BD9C4();

    if ((v18 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v25 == v24 && v29 == v28)
  {

    goto LABEL_14;
  }

  v19 = sub_1004BD9C4();

  if ((v19 & 1) == 0)
  {
LABEL_21:

    return 0;
  }

LABEL_14:
  if (v23 == v22 && v30 == v16)
  {

LABEL_19:
    sub_100009130(0, &qword_100604490);
    return sub_1004BCFA4() & 1;
  }

  v20 = sub_1004BD9C4();

  if (v20)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100009130(0, &qword_100604490);
  if ((sub_1004BCFA4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1004BD9C4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v35 = *(a1 + 24);
  v5 = *(a1 + 56);
  v36 = *(a1 + 40);
  v37 = v5;
  v6 = *(a1 + 72);
  v38 = v6;
  v7 = *(a2 + 40);
  v32[0] = *(a2 + 24);
  v32[1] = v7;
  v33 = *(a2 + 56);
  v8 = *(a2 + 72);
  v34 = v8;
  v9 = v35;
  v10 = v36;
  v11 = v32[0];
  v12 = *(&v33 + 1);
  if (!*(&v35 + 1))
  {
    if (!*(&v32[0] + 1))
    {
      v18 = *(&v37 + 1);
      v19 = v36;
      v20 = v37;
      v21 = v35;
      v22 = *(&v36 + 1);
      sub_1002262A8(&v35, v44);
      sub_1002262A8(v32, v44);
      sub_1002269CC(v21, 0, v19, v22, v20, v18, v6);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!*(&v32[0] + 1))
  {
LABEL_12:
    v13 = *(&v37 + 1);
    v14 = v37;
    v26 = *(&v33 + 1);
    v28 = v7;
    v15 = *(&v36 + 1);
    v30 = v33;
    sub_1002262A8(&v35, v44);
    sub_1002262A8(v32, v44);
    sub_1002269CC(v9, *(&v9 + 1), v10, v15, v14, v13, v6);
    sub_1002269CC(v11, *(&v11 + 1), v28, *(&v28 + 1), v30, v26, v8);
    goto LABEL_13;
  }

  v44[0] = v32[0];
  v45 = *(&v32[0] + 1);
  v46 = v7;
  v47 = v33;
  v48 = v8;
  v39[0] = v35;
  v40 = *(&v35 + 1);
  v41 = v36;
  v42 = v37;
  v43 = v6;
  v25 = v37;
  v24 = *(&v36 + 1);
  v29 = v33;
  v27 = v7;
  sub_1002262A8(&v35, v31);
  sub_1002262A8(v32, v31);
  v23 = _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v39, v44);
  sub_1002269CC(v11, *(&v11 + 1), v27, *(&v27 + 1), v29, v12, v8);
  sub_1002269CC(v9, *(&v9 + 1), v10, v24, v25, *(&v25 + 1), v6);
  if ((v23 & 1) == 0)
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

LABEL_16:
  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_1004BD9C4() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1004BD9C4();
  }

  return v16 & 1;
}

unint64_t sub_100226878()
{
  result = qword_100607988;
  if (!qword_100607988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100607988);
  }

  return result;
}

uint64_t sub_1002268DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002268F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_10022693C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002269CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

unint64_t sub_100226A3C()
{
  result = qword_100600FF0;
  if (!qword_100600FF0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100600FF0);
  }

  return result;
}

uint64_t PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int8 a6, double a7, double a8)
{
  if (a6 > 3u)
  {
    if (a6 > 5u)
    {
      if (a6 == 6)
      {
        v8 = sub_10022C854(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      sub_100227C48(a1, a2, a3, a4, a5, a7, a8);
    }

    else
    {
      if (a6 == 4)
      {
        v8 = sub_1002278A0(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      v11 = sub_100227A74(a1, a2, a3, a4, a5, a7, a8);
    }

LABEL_17:
    v9 = v11;
    v10 = &selRef_whiteColor;
    goto LABEL_18;
  }

  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      v8 = sub_1002274F8(a1, a2, a3, a4, a5, a7, a8);
      goto LABEL_12;
    }

    v11 = sub_1002276CC(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  if (a6)
  {
    v11 = sub_100227318(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  v8 = sub_100227144(a1, a2, a3, a4, a5, a7, a8);
LABEL_12:
  v9 = v8;
  v10 = &selRef_blackColor;
LABEL_18:
  v12 = [objc_opt_self() *v10];
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityLabel.getter()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        if (qword_1006005F0 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
      }

      else
      {
        if (qword_1006005F8 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
      }
    }

    else if (a1 == 4)
    {
      if (qword_1006005E0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
    }

    else
    {
      if (qword_1006005E8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_1006005D0 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
    }

    else
    {
      if (qword_1006005D8 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
    }
  }

  else if (a1)
  {
    if (qword_1006005C8 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
  }

  else
  {
    if (qword_1006005C0 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
  }

  v2 = *v1;

  return v2;
}

id PlaylistCovers.Expression.textColor.getter(char a1)
{
  v1 = [objc_opt_self() *off_1005BAD88[a1]];

  return v1;
}

uint64_t sub_100227144(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10022CF68;
  *(v15 + 24) = v14;
  v23[4] = sub_1001F3CC0;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10011FE68;
  v23[3] = &unk_1005BA838;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100227318(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10022CFF0;
  *(v15 + 24) = v14;
  v24[4] = sub_100226ABC;
  v24[5] = v15;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_10011FE68;
  v24[3] = &unk_1005BA8B0;
  v16 = _Block_copy(v24);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v13;

  v22 = [v21 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002274F8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10022D024;
  *(v15 + 24) = v14;
  v23[4] = sub_100226ABC;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10011FE68;
  v23[3] = &unk_1005BA9A0;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002276CC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10022D03C;
  *(v15 + 24) = v14;
  v23[4] = sub_100226ABC;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10011FE68;
  v23[3] = &unk_1005BAA18;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002278A0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10022D054;
  *(v15 + 24) = v14;
  v23[4] = sub_100226ABC;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10011FE68;
  v23[3] = &unk_1005BAA90;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100227A74(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10022D06C;
  *(v15 + 24) = v14;
  v23[4] = sub_100226ABC;
  v23[5] = v15;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_10011FE68;
  v23[3] = &unk_1005BAB08;
  v16 = _Block_copy(v23);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  v21 = [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

void sub_100227C48(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6 * 1.1, a7 * 1.1}];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a6 * 1.1;
  *(v16 + 56) = a7 * 1.1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10022D188;
  *(v17 + 24) = v16;
  v52 = sub_100226ABC;
  v53 = v17;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10011FE68;
  v51 = &unk_1005BAC70;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v23 = [v15 imageWithActions:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v21;
  v47 = v15;
  [v23 scale];
  v25 = v24;
  [v23 scale];
  v27 = v26;
  v28 = [v23 CGImage];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v14;
  v55.size.height = v27 * a7;
  v55.origin.y = v27 * a7 * 0.05;
  v55.size.width = v25 * a6;
  v55.origin.x = v25 * a6 * 0.05;
  v31 = CGImageCreateWithImageInRect(v28, v55);

  if (v31)
  {
    v32 = [objc_allocWithZone(UIImage) initWithCGImage:v31];

    v54 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = a6;
    *(v33 + 24) = a7;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10022D1B8;
    *(v34 + 24) = v33;
    v52 = sub_100226ABC;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10011FE68;
    v51 = &unk_1005BACE8;
    v35 = _Block_copy(&aBlock);

    v36 = [v14 imageWithActions:v35];
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = v19;
      *(v37 + 24) = v20;
      *(v37 + 32) = v46;
      *(v37 + 40) = v22;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = a6;
      *(v37 + 72) = a7;
      *(v37 + 80) = v36;
      *(v37 + 88) = &v54;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_10022D218;
      *(v38 + 24) = v37;
      v52 = sub_100226ABC;
      v53 = v38;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_10011FE68;
      v51 = &unk_1005BAD60;
      v39 = _Block_copy(&aBlock);
      v40 = v19;
      v41 = v20;
      v42 = v46;
      v43 = v22;
      v44 = v36;

      [v30 imageWithActions:v39];

      _Block_release(v39);
      LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

      if ((v39 & 1) == 0)
      {
        v45 = v54;

        return;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

Swift::Int sub_10022819C()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1 + 1);
  return sub_1004BDBF4();
}

Swift::Int sub_100228214()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1 + 1);
  return sub_1004BDBF4();
}

uint64_t sub_100228258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  return _swift_task_switch(sub_1002282D0, 0, 0);
}

uint64_t sub_1002282D0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = sub_100003ABC(&qword_1006079B8);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  *(v6 + 56) = v8;
  *(v6 + 72) = v1;
  v9 = sub_100003ABC(&qword_1006079C0);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_100228410;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v9, 0, 0, &unk_1004D57D8, v6, v5);
}

uint64_t sub_100228410()
{

  return _swift_task_switch(sub_100228528, 0, 0);
}

uint64_t sub_100228540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v10 + 168) = a7;
  *(v10 + 176) = a8;
  *(v10 + 152) = a5;
  *(v10 + 160) = a6;
  *(v10 + 144) = a4;
  *(v10 + 128) = a9;
  *(v10 + 136) = a10;
  *(v10 + 112) = a2;
  *(v10 + 120) = a3;
  *(v10 + 104) = a1;
  sub_100003ABC(&qword_1006014F0);
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();
  v11 = sub_100003ABC(&qword_1006079E0);
  *(v10 + 200) = v11;
  *(v10 + 208) = *(v11 - 8);
  *(v10 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_100228664, 0, 0);
}

uint64_t sub_100228664()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = **(v0 + 112);
    v3 = (v1 + 32);
    v38 = sub_1004BC4B4();
    v4 = *(v38 - 8);
    v37 = *(v4 + 56);
    v36 = (v4 + 48);
    v35 = (v4 + 8);
    do
    {
      v40 = v2;
      v6 = *(v0 + 168);
      v5 = *(v0 + 176);
      v7 = *(v0 + 152);
      v8 = *(v0 + 160);
      v9 = *(v0 + 144);
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = v3 + 1;
      v13 = *v3;
      v41 = v12;
      v37(*(v0 + 192), 1, 1, v38);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v13;
      *(v14 + 40) = v11;
      *(v14 + 48) = v10;
      *(v14 + 56) = v9;
      *(v14 + 64) = v7;
      *(v14 + 72) = v8;
      *(v14 + 80) = v6;
      *(v14 + 88) = v5;
      v15 = v9;
      v16 = v7;
      v17 = v8;
      v18 = v6;
      v19 = v5;
      v20 = swift_taskGroup_addPending();
      v21 = *(v0 + 192);
      if (v20)
      {
        v22 = *(v0 + 184);
        sub_100021174(v21, v22);
        v23 = (*v36)(v22, 1, v38);
        v24 = *(v0 + 184);
        if (v23 == 1)
        {
          sub_1000247E4(*(v0 + 184));
        }

        else
        {
          sub_1004BC4A4();
          (*v35)(v24, v38);
        }

        v3 = v41;
        if (*(v14 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_1004BC3E4();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = swift_allocObject();
        *(v28 + 16) = &unk_1004D58E8;
        *(v28 + 24) = v14;

        sub_100003ABC(&qword_1006079B8);
        v29 = v27 | v25;
        if (v27 | v25)
        {
          v29 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v25;
          *(v0 + 40) = v27;
        }

        v30 = *(v0 + 192);
        *(v0 + 72) = 1;
        *(v0 + 80) = v29;
        *(v0 + 88) = v39;
        swift_task_create();

        sub_1000247E4(v30);
      }

      else
      {
        sub_1000247E4(v21);

        v3 = v41;
      }

      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  sub_100003ABC(&qword_1006079B8);
  sub_1004BC424();
  *(v0 + 224) = _swiftEmptyDictionarySingleton;
  v31 = sub_1000206D4(&qword_1006079E8, &qword_1006079E0);
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  *v32 = v0;
  v32[1] = sub_100228A3C;
  v33 = *(v0 + 200);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 48, v33, v31);
}

uint64_t sub_100228A3C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 216);
    v6 = v2 + 200;
    v4 = *(v2 + 200);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = CFRange.init(_:);
  }

  else
  {
    v7 = sub_100228B8C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100228B8C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = v1;
    v10 = v7;
    v11 = v9;
    v12 = v10;
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v2;
    v18 = sub_100034A54(v8);
    v20 = *(v2 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v3) = v19;
      if (*(*(v0 + 224) + 24) < v23)
      {
        sub_100037AA0(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_100034A54(v8);
        if ((v3 & 1) != (v24 & 1))
        {

          return sub_1004BDAA4();
        }

LABEL_21:
        v46 = *(v0 + 96);
        v48 = *(v0 + 160);
        v47 = *(v0 + 168);
        v50 = *(v0 + 144);
        v49 = *(v0 + 152);
        if (v3)
        {
          v51 = v46[7] + 56 * v18;
          v52 = *(v51 + 8);
          v53 = *(v51 + 16);
          v54 = *(v51 + 24);
          v55 = *(v51 + 32);
          v56 = *(v51 + 40);
          v57 = *(v51 + 48);
          *v51 = v8;
          *(v51 + 8) = v11;
          *(v51 + 16) = v50;
          *(v51 + 24) = v49;
          *(v51 + 32) = v48;
          *(v51 + 40) = v47;
          *(v51 + 48) = v12;
        }

        else
        {
          v46[(v18 >> 6) + 8] |= 1 << v18;
          *(v46[6] + v18) = v8;
          v58 = v46[7] + 56 * v18;
          *v58 = v8;
          *(v58 + 8) = v11;
          *(v58 + 16) = v50;
          *(v58 + 24) = v49;
          *(v58 + 32) = v48;
          *(v58 + 40) = v47;
          *(v58 + 48) = v12;

          v62 = v46[2];
          v22 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v22)
          {
            __break(1u);
            return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
          }

          v46[2] = v63;
        }

        *(v0 + 224) = v46;
        v64 = sub_1000206D4(&qword_1006079E8, &qword_1006079E0);
        v65 = swift_task_alloc();
        *(v0 + 232) = v65;
        *v65 = v0;
        v65[1] = sub_100228A3C;
        v60 = *(v0 + 200);
        v59 = v0 + 48;
        v61 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }
    }

    v66 = v18;
    sub_10003AC64();
    v18 = v66;
    goto LABEL_21;
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v67 = v0;
  do
  {
    if (*(v2 + 16))
    {
      v29 = sub_100034A54(*(&off_1005A5EA8 + v26 + 32));
      if (v30)
      {
        v31 = *(v2 + 56) + 56 * v29;
        v69 = *v31;
        v32 = *(v31 + 16);
        v33 = *(v31 + 24);
        v34 = *(v31 + 32);
        v35 = *(v31 + 40);
        v36 = *(v31 + 48);
        v68 = *(v31 + 8);
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v40 = v35;
        v41 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_100018A7C(0, v27[2] + 1, 1, v27);
        }

        v43 = v27[2];
        v42 = v27[3];
        if (v43 >= v42 >> 1)
        {
          v27 = sub_100018A7C((v42 > 1), v43 + 1, 1, v27);
        }

        v27[2] = (v43 + 1);
        v28 = &v27[7 * v43];
        *(v28 + 32) = v69;
        v0 = v67;
        v28[5] = v68;
        v28[6] = v37;
        v28[7] = v38;
        v28[8] = v39;
        v28[9] = v40;
        v28[10] = v41;
      }
    }

    ++v26;
  }

  while (v26 != 8);
  v44 = *(v0 + 104);

  *v44 = v27;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100229000(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 48) = a8;
  *(v10 + 56) = a9;
  *(v10 + 40) = a7;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 80) = a6;
  *(v10 + 16) = a1;
  return _swift_task_switch(sub_10022903C, 0, 0);
}

uint64_t sub_10022903C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 80);
  *v8 = v9;
  *(v8 + 8) = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v5, v3, v4, v1, v2, v9, v6, v7);
  *(v8 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

CGColorSpaceRef sub_1002290B8()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_1006176B8 = result;
  return result;
}

void sub_1002290D8(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a2 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  [a1 fillRect:{0.0, 0.0, a4, a5}];
  if (qword_1006000A8 != -1)
  {
    swift_once();
  }

  v15 = qword_1006176B8;
  sub_100003ABC(&qword_100603C50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004C51A0;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004BC284().super.isa;

  v18 = CGGradientCreateWithColors(v15, isa, dbl_1005A5EF0);

  if (v18)
  {
    v19 = [a1 CGContext];
    v49.x = 0.0;
    v49.y = 0.0;
    v54.x = a4;
    v54.y = a5;
    CGContextDrawLinearGradient(v19, v18, v49, v54, 0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C5130;
  *(v20 + 32) = [a7 CGColor];
  *(v20 + 40) = [a7 CGColor];
  v21 = [a7 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v20 + 48) = v22;
  v23 = sub_1004BC284().super.isa;

  v24 = CGGradientCreateWithColors(v15, v23, dbl_1005A5F20);

  if (v24)
  {
    v25 = [a1 CGContext];
    v50.x = a4;
    v50.y = a5;
    v55.x = a4;
    v55.y = a5;
    CGContextDrawRadialGradient(v25, v24, v50, 0.0, v55, a4, 0);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004C5130;
  *(v26 + 32) = [a3 CGColor];
  v27 = [a3 colorWithAlphaComponent:0.0];
  v28 = [v27 CGColor];

  *(v26 + 40) = v28;
  v29 = [a3 colorWithAlphaComponent:0.0];
  v30 = [v29 CGColor];

  *(v26 + 48) = v30;
  v31 = sub_1004BC284().super.isa;

  v32 = CGGradientCreateWithColors(v15, v31, dbl_1005A5F58);

  if (v32)
  {
    v33 = [a1 CGContext];
    v51.x = 0.0;
    v56.x = 0.0;
    v51.y = a5;
    v56.y = a5;
    CGContextDrawRadialGradient(v33, v32, v51, 0.0, v56, a4, 0);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1004C5130;
  *(v34 + 32) = [a3 CGColor];
  v35 = [a3 colorWithAlphaComponent:0.0];
  v36 = [v35 CGColor];

  *(v34 + 40) = v36;
  v37 = [a3 colorWithAlphaComponent:0.0];
  v38 = [v37 CGColor];

  *(v34 + 48) = v38;
  v39 = sub_1004BC284().super.isa;

  v40 = CGGradientCreateWithColors(v15, v39, dbl_1005A5F90);

  if (v40)
  {
    v41 = [a1 CGContext];
    v52.y = 0.0;
    v57.y = 0.0;
    v52.x = a4;
    v57.x = a4;
    CGContextDrawRadialGradient(v41, v40, v52, 0.0, v57, a4, 0);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1004C51A0;
  *(v42 + 32) = [a2 CGColor];
  v43 = [a2 colorWithAlphaComponent:0.0];
  v44 = [v43 CGColor];

  *(v42 + 40) = v44;
  v45 = sub_1004BC284().super.isa;

  v46 = CGGradientCreateWithColors(v15, v45, dbl_1005A5FC8);

  if (v46)
  {
    v47 = [a1 CGContext];
    v53.x = 0.0;
    v53.y = 0.0;
    v58.x = 0.0;
    v58.y = 0.0;
    CGContextDrawRadialGradient(v47, v46, v53, 0.0, v58, a4, 0);
  }
}

void sub_100229748(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, CGFloat a7, CGFloat a8)
{
  v119 = a6;
  v117 = a3;
  v125 = sub_1004B7154();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a2;
  v16 = [a2 CGColor];
  v118 = a4;
  v17 = [a4 CGColor];
  v120 = a5;
  v18 = [a5 CGColor];
  if (qword_1006000A8 != -1)
  {
    swift_once();
  }

  v19 = qword_1006176B8;
  v124 = sub_100003ABC(&qword_100603C50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C51F0;
  *(v20 + 32) = v18;
  *(v20 + 40) = v18;
  *(v20 + 48) = v16;
  *(v20 + 56) = v16;
  type metadata accessor for CGColor(0);
  v22 = v21;
  v23 = v18;
  v24 = v16;
  v25 = v23;
  v26 = v24;
  v121 = v22;
  isa = sub_1004BC284().super.isa;

  v122 = v19;
  v28 = CGGradientCreateWithColors(v19, isa, dbl_1005A5FF8);

  if (v28)
  {
    v29 = [a1 CGContext];
    v132.x = 0.0;
    v132.y = 0.0;
    v135.x = a7;
    v135.y = a8;
    CGContextDrawLinearGradient(v29, v28, v132, v135, 0);
  }

  v30 = [a1 CGContext];
  CGContextSaveGState(v30);

  v31 = a7 * -0.235;
  v32 = a7 * 1.47;
  v137.origin.x = a7 * -0.235;
  v137.origin.y = a8 * 0.15;
  v137.size.width = a7 * 1.47;
  v137.size.height = a8 * 0.7;
  v33 = -CGRectGetMidX(v137);
  v138.origin.x = a7 * -0.235;
  v138.origin.y = a8 * 0.15;
  v138.size.width = a7 * 1.47;
  v138.size.height = a8 * 0.7;
  MidY = CGRectGetMidY(v138);
  CGAffineTransformMakeTranslation(&t1, v33, -MidY);
  tx = t1.tx;
  ty = t1.ty;
  v126 = *&t1.a;
  v123 = *&t1.c;
  *&v111 = 0xBFE0C152382D7365;
  CGAffineTransformMakeRotation(&t1, -0.523598776);
  v37 = *&t1.a;
  v38 = *&t1.c;
  v39 = *&t1.tx;
  *&t1.a = v126;
  *&t1.c = v123;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v37;
  *&t2.c = v38;
  *&t2.tx = v39;
  CGAffineTransformConcat(&v129, &t1, &t2);
  v40 = v129.tx;
  *&v126 = a7;
  v41 = v129.ty;
  v123 = *&v129.a;
  v115 = *&v129.c;
  v139.origin.x = v31;
  v139.origin.y = a8 * 0.15;
  v139.size.width = v32;
  v139.size.height = a8 * 0.7;
  MidX = CGRectGetMidX(v139);
  v140.origin.x = v31;
  v140.origin.y = a8 * 0.15;
  v140.size.width = v32;
  v140.size.height = a8 * 0.7;
  v43 = CGRectGetMidY(v140);
  CGAffineTransformMakeTranslation(&t1, MidX, v43);
  *&t2.a = v123;
  *&t2.c = v115;
  t2.tx = v40;
  t2.ty = v41;
  v44 = *&v126;
  v129 = t1;
  CGAffineTransformConcat(&t1, &t2, &v129);
  Mutable = CGPathCreateMutable();
  sub_1004BCA24();
  v46 = [a1 CGContext];
  *&v115 = Mutable;
  CGContextAddPath(v46, Mutable);

  v47 = [a1 CGContext];
  v48 = v127;
  v49 = *(v127 + 104);
  v114 = enum case for CGPathFillRule.winding(_:);
  v50 = v125;
  v113 = v49;
  v49(v15);
  sub_1004BC8D4();

  v51 = *(v48 + 8);
  v110 = v15;
  v127 = v48 + 8;
  v112 = v51;
  v51(v15, v50);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1004C5200;
  *(v52 + 32) = v17;
  *(v52 + 40) = v17;
  *(v52 + 48) = v25;
  *(v52 + 56) = v25;
  *(v52 + 64) = v26;
  *(v52 + 72) = v26;
  *(v52 + 80) = v25;
  *(v52 + 88) = v25;
  *(v52 + 96) = v17;
  *(v52 + 104) = v17;
  *(v52 + 112) = v25;
  v53 = v25;
  v54 = v17;
  v55 = v53;
  v56 = v54;
  v57 = v55;
  v58 = v26;
  v59 = v56;
  v60 = v57;
  *&v123 = v58;
  v61 = v59;
  v62 = v60;
  v63 = v120;
  v64 = [v120 colorWithAlphaComponent:0.8];
  v65 = [v64 CGColor];

  *(v52 + 120) = v65;
  v66 = [v63 colorWithAlphaComponent:0.5];
  v67 = [v66 CGColor];

  *(v52 + 128) = v67;
  v68 = [v63 colorWithAlphaComponent:0.5];
  v69 = [v68 CGColor];

  *(v52 + 136) = v69;
  v70 = [v63 colorWithAlphaComponent:0.8];
  v71 = [v70 CGColor];

  *(v52 + 144) = v71;
  *(v52 + 152) = v62;
  *(v52 + 160) = v61;
  *(v52 + 168) = v61;
  v72 = v61;
  v73 = v62;
  v109 = v72;
  v74 = sub_1004BC284().super.isa;

  v75 = v122;
  v76 = CGGradientCreateWithColors(v122, v74, dbl_1005A6038);

  if (v76)
  {
    v77 = [a1 CGContext];
    v133.x = v44 * 0.5;
    v133.y = a8 * 0.5;
    CGContextDrawConicGradient(v77, v76, v133, 0.0);
  }

  v78 = [a1 CGContext];
  CGContextRestoreGState(v78);

  v79 = v44 * 0.26375;
  v80 = v44 * 0.4725;
  v141.origin.x = v44 * 0.26375;
  v141.origin.y = a8 * 0.388888889;
  v141.size.width = v44 * 0.4725;
  v141.size.height = a8 * 0.2225;
  v81 = -CGRectGetMidX(v141);
  v142.origin.x = v44 * 0.26375;
  v142.origin.y = a8 * 0.388888889;
  v142.size.width = v44 * 0.4725;
  v142.size.height = a8 * 0.2225;
  v82 = CGRectGetMidY(v142);
  CGAffineTransformMakeTranslation(&t2, v81, -v82);
  v83 = t2.tx;
  v84 = t2.ty;
  v108 = *&t2.a;
  v107 = *&t2.c;
  CGAffineTransformMakeRotation(&t2, *&v111);
  v85 = *&t2.a;
  v86 = *&t2.c;
  v87 = *&t2.tx;
  *&t2.a = v108;
  *&t2.c = v107;
  t2.tx = v83;
  t2.ty = v84;
  *&v129.a = v85;
  *&v129.c = v86;
  *&v129.tx = v87;
  CGAffineTransformConcat(&v128, &t2, &v129);
  v88 = v128.tx;
  v89 = v128.ty;
  v111 = *&v128.a;
  v108 = *&v128.c;
  v143.origin.x = v79;
  v143.origin.y = a8 * 0.388888889;
  v143.size.width = v80;
  v143.size.height = a8 * 0.2225;
  v90 = CGRectGetMidX(v143);
  v144.origin.x = v79;
  v144.origin.y = a8 * 0.388888889;
  v144.size.width = v80;
  v144.size.height = a8 * 0.2225;
  v91 = CGRectGetMidY(v144);
  CGAffineTransformMakeTranslation(&t2, v90, v91);
  *&v129.c = v108;
  *&v129.a = v111;
  v129.tx = v88;
  v92 = *&v126;
  v129.ty = v89;
  v128 = t2;
  CGAffineTransformConcat(&t2, &v129, &v128);
  v93 = sub_10022A328(v119, v116, v117, v118, v63, &t2, v79, a8 * 0.388888889, v80, a8 * 0.2225);
  [v93 drawInRect:{0.0, 0.0, v92, a8}];

  v94 = [a1 CGContext];
  CGContextSetFillColorWithColor(v94, v123);

  v95 = CGPathCreateMutable();
  sub_1004BCA24();
  v96 = [a1 CGContext];
  CGContextAddPath(v96, v95);

  v97 = [a1 CGContext];
  v98 = v110;
  v99 = v125;
  v113(v110, v114, v125);
  sub_1004BC8F4();

  v112(v98, v99);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1004C51A0;
  *(v100 + 32) = v73;
  v101 = v73;
  v102 = [v63 colorWithAlphaComponent:0.0];
  v103 = [v102 CGColor];

  *(v100 + 40) = v103;
  v104 = sub_1004BC284().super.isa;

  v105 = CGGradientCreateWithColors(v75, v104, dbl_1005A60E8);

  if (v105)
  {
    v106 = [a1 CGContext];
    v134.y = 0.0;
    v136.y = 0.0;
    v134.x = v92 * 0.5;
    v136.x = v92 * 0.5;
    CGContextDrawRadialGradient(v106, v105, v134, 0.0, v136, v134.x, 0);

    v95 = v106;
  }

  else
  {
    v105 = v115;
  }
}

uint64_t sub_10022A328(void *a1, void *a2, void *a3, void *a4, void *a5, _OWORD *a6, double a7, double a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  *(v20 + 64) = a9;
  *(v20 + 72) = a10;
  v21 = a6[1];
  *(v20 + 80) = *a6;
  *(v20 + 96) = v21;
  *(v20 + 112) = a6[2];
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10022D00C;
  *(v22 + 24) = v20;
  v37[4] = sub_100226ABC;
  v37[5] = v22;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  v37[2] = sub_10011FE68;
  v37[3] = &unk_1005BA928;
  v23 = _Block_copy(v37);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;

  v28 = [a1 imageWithActions:v23];
  _Block_release(v23);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    v30 = [v28 CGImage];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_allocWithZone(CIImage) initWithCGImage:v30];
      v33 = [v32 imageByClampingToExtent];
      v34 = [v33 imageByApplyingGaussianBlurWithSigma:20.0];
      [v32 extent];
      v35 = [v34 imageByCroppingToRect:?];
      v36 = [objc_allocWithZone(UIImage) initWithCIImage:v35];

      return v36;
    }

    else
    {
    }

    return v28;
  }

  return result;
}

uint64_t sub_10022A5E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1004B7154();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 CGContext];
  v12 = [a5 colorWithAlphaComponent:0.55];
  v13 = [v12 CGColor];

  CGContextSetFillColorWithColor(v11, v13);
  Mutable = CGPathCreateMutable();
  sub_1004BCA24();
  v15 = [a1 CGContext];
  CGContextAddPath(v15, Mutable);

  v16 = [a1 CGContext];
  (*(v8 + 104))(v10, enum case for CGPathFillRule.winding(_:), v7);
  sub_1004BC8F4();

  return (*(v8 + 8))(v10, v7);
}

void sub_10022A7E4(void *a1, void *a2, void *a3, void *a4, double a5, CGFloat a6)
{
  if (qword_1006000A8 != -1)
  {
    swift_once();
  }

  v12 = qword_1006176B8;
  sub_100003ABC(&qword_100603C50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004C5210;
  *(v13 + 32) = [a2 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  *(v13 + 56) = [a4 CGColor];
  *(v13 + 64) = [a3 CGColor];
  *(v13 + 72) = [a3 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004BC284().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1005A6118);

  if (v15)
  {
    v16 = [a1 CGContext];
    v31.x = 0.0;
    v31.y = 0.0;
    v34.x = 0.0;
    v34.y = a6;
    CGContextDrawLinearGradient(v16, v15, v31, v34, 0);
  }

  v17 = [a1 CGContext];
  CGContextSaveGState(v17);

  v18 = a5 * 0.5;
  [a1 clipToRect:{v18, 0.0, v18, a6}];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C5210;
  *(v19 + 32) = [a2 CGColor];
  *(v19 + 40) = [a2 CGColor];
  *(v19 + 48) = [a3 CGColor];
  *(v19 + 56) = [a4 CGColor];
  *(v19 + 64) = [a3 CGColor];
  *(v19 + 72) = [a3 CGColor];
  v20 = sub_1004BC284().super.isa;

  v21 = CGGradientCreateWithColors(v12, v20, dbl_1005A6168);

  if (v21)
  {
    v22 = [a1 CGContext];
    v35.y = 0.0;
    v32.x = v18;
    v32.y = a6;
    v35.x = v18;
    CGContextDrawLinearGradient(v22, v21, v32, v35, 0);
  }

  v23 = [a1 CGContext];
  CGContextRestoreGState(v23);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1004C51A0;
  *(v24 + 32) = [a2 CGColor];
  v25 = [a2 colorWithAlphaComponent:0.0];
  v26 = [v25 CGColor];

  *(v24 + 40) = v26;
  v27 = sub_1004BC284().super.isa;

  v28 = CGGradientCreateWithColors(v12, v27, dbl_1005A61B8);

  if (v28)
  {
    v29 = [a1 CGContext];
    v36.y = a6 * 0.5;
    v33.x = 0.0;
    v33.y = 0.0;
    v36.x = 0.0;
    CGContextDrawLinearGradient(v29, v28, v33, v36, 0);
  }
}

void sub_10022AC7C(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a7 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  v15 = 0.0;
  [a1 fillRect:{0.0, 0.0, a4, a5}];
  sub_100003ABC(&qword_100603C50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004C5130;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a3 CGColor];
  v17 = [a7 colorWithAlphaComponent:0.0];
  v18 = [v17 CGColor];

  *(v16 + 48) = v18;
  type metadata accessor for CGColor(0);
  colors = sub_1004BC284().super.isa;

  if (qword_1006000A8 != -1)
  {
    swift_once();
  }

  v19 = 0;
  v20 = qword_1006176B8;
  v21 = a4 / 9.0;
  while (1)
  {
    v22 = *(&off_1005A61C8 + v19 + 32);
    v23 = CGGradientCreateWithColors(v20, colors, *(&off_1005A6458 + v19 + 32) + 4);
    if (v23)
    {
      v24 = v23;
      v25 = v22 * a5;
      v26 = [a1 CGContext];
      CGContextSaveGState(v26);

      [a1 clipToRect:{v15, a5 - v25, v21, v25}];
      v27 = [a1 CGContext];
      v38.x = v15;
      v38.y = a5;
      v40.x = v15;
      v40.y = a5 - v25;
      CGContextDrawLinearGradient(v27, v24, v38, v40, 0);

      v28 = [a1 CGContext];
      CGContextRestoreGState(v28);
    }

    if (v19 == 64)
    {
      break;
    }

    v15 = v21 + v15;
    v19 += 8;
  }

  sub_100003ABC(&qword_1006079F0);
  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004C51A0;
  *(v29 + 32) = [a7 CGColor];
  v30 = [a7 colorWithAlphaComponent:0.0];
  v31 = [v30 CGColor];

  *(v29 + 40) = v31;
  isa = sub_1004BC284().super.isa;

  v33 = CGGradientCreateWithColors(v20, isa, dbl_1005A6448);

  if (v33)
  {
    v34 = [a1 CGContext];
    v39.x = a4 * 0.145;
    v39.y = a5 * 0.23;
    v41.x = a4 * 0.145;
    v41.y = a5 * 0.23;
    CGContextDrawRadialGradient(v34, v33, v39, 0.0, v41, a4 * 0.3715, 0);

    v35 = v34;
  }

  else
  {
    v35 = colors;
  }
}

void sub_10022B0C8(void *a1, void *a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  if (qword_1006000A8 != -1)
  {
    swift_once();
  }

  v13 = qword_1006176B8;
  sub_100003ABC(&qword_100603C50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C5210;
  *(v14 + 32) = [a2 CGColor];
  *(v14 + 40) = [a6 CGColor];
  *(v14 + 48) = [a7 CGColor];
  *(v14 + 56) = [a2 CGColor];
  *(v14 + 64) = [a6 CGColor];
  *(v14 + 72) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004BC284().super.isa;

  v16 = CGGradientCreateWithColors(v13, isa, dbl_1005A64E0);

  if (v16)
  {
    v17 = [a1 CGContext];
    v27.x = a3 * 0.5;
    v27.y = a4 * 0.5;
    CGContextDrawConicGradient(v17, v16, v27, -0.77562432);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004C5130;
  *(v18 + 32) = [a2 CGColor];
  v19 = [a2 colorWithAlphaComponent:0.7];
  v20 = [v19 CGColor];

  *(v18 + 40) = v20;
  v21 = [a2 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v18 + 48) = v22;
  v23 = sub_1004BC284().super.isa;

  v24 = CGGradientCreateWithColors(v13, v23, dbl_1005A6530);

  if (v24)
  {
    v25 = [a1 CGContext];
    v29.y = a4 * 0.5;
    v28.x = 0.0;
    v28.y = 0.0;
    v29.x = 0.0;
    CGContextDrawLinearGradient(v25, v24, v28, v29, 0);
  }
}

void sub_10022B424(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  if (qword_1006000A8 != -1)
  {
    swift_once();
  }

  v12 = qword_1006176B8;
  sub_100003ABC(&qword_100603C50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004C5130;
  *(v13 + 32) = [a7 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004BC284().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1005A6568);

  if (v15)
  {
    v16 = [a1 CGContext];
    v35.x = 0.0;
    v35.y = 0.0;
    v38.x = 0.0;
    v38.y = a5;
    CGContextDrawLinearGradient(v16, v15, v35, v38, 0);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004C5130;
  *(v18 + 32) = [a7 CGColor];
  *(v18 + 40) = [a7 CGColor];
  v19 = [a7 colorWithAlphaComponent:0.0];
  v20 = [v19 CGColor];

  *(v18 + 48) = v20;
  v21 = sub_1004BC284().super.isa;

  v22 = CGGradientCreateWithColors(DeviceRGB, v21, dbl_1005A65A0);

  if (v22)
  {
    v23 = [a1 CGContext];
    v36.x = a4 * 0.5;
    v36.y = a5 * 0.907407407;
    v39.y = a5 * 0.5;
    v39.x = a4 * 0.5;
    CGContextDrawRadialGradient(v23, v22, v36, a4 * 0.0185185185, v39, a4 * 0.472222222, 3u);
  }

  v24 = CGColorSpaceCreateDeviceRGB();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004C51F0;
  *(v25 + 32) = [a2 CGColor];
  *(v25 + 40) = [a2 CGColor];
  v26 = [a7 colorWithAlphaComponent:0.0];
  v27 = [v26 CGColor];

  *(v25 + 48) = v27;
  v28 = [a7 colorWithAlphaComponent:0.0];
  v29 = [v28 CGColor];

  *(v25 + 56) = v29;
  v30 = sub_1004BC284().super.isa;

  v31 = CGGradientCreateWithColors(v24, v30, dbl_1005A65D8);

  if (v31)
  {
    v33 = [a1 CGContext];
    v37.x = a4 * 0.5;
    v37.y = a5 * 0.907407407;
    v40.y = a5 * 0.5;
    v40.x = a4 * 0.5;
    CGContextDrawRadialGradient(v33, v31, v37, a4 * 0.0185185185, v40, a4 * 0.472222222, 3u);
  }
}

void sub_10022B894(double a1, double a2, double a3, double a4)
{
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v8 = qword_100617118;
  v9 = sub_1004BBE24();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    [v10 drawInRect:{a1, a2, a3, a4}];
  }

  else
  {
    __break(1u);
  }
}

void sub_10022B9AC(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, void *a11, void *a12)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  sub_100003ABC(&qword_100603C50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1004C51F0;
  *(v24 + 32) = [a2 CGColor];
  *(v24 + 40) = [a2 CGColor];
  *(v24 + 48) = [a3 CGColor];
  *(v24 + 56) = [a11 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004BC284().super.isa;

  v26 = CGGradientCreateWithColors(DeviceRGB, isa, dbl_1005A6618);

  if (v26)
  {
    v27 = [a1 CGContext];
    v48.x = a4 * 0.324074074;
    v51.x = a4 * 0.724074074;
    v48.y = 0.0;
    v51.y = a5;
    CGContextDrawLinearGradient(v27, v26, v48, v51, 3u);
  }

  v28 = [a1 CGContext];
  CGContextSaveGState(v28);

  v29 = [a1 CGContext];
  CGContextTranslateCTM(v29, 0.0, a9);

  v30 = [a1 CGContext];
  CGContextScaleCTM(v30, 1.0, -1.0);

  v31 = [a1 CGContext];
  v32 = [a12 CGImage];
  if (v32)
  {
    v33 = v32;
    v54.origin.x = a6;
    v54.origin.y = a7;
    v54.size.width = a8;
    v54.size.height = a9;
    CGContextClipToMask(v31, v54, v32);

    v34 = CGColorSpaceCreateDeviceRGB();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1004C51F0;
    *(v35 + 32) = [a11 CGColor];
    *(v35 + 40) = [a3 CGColor];
    *(v35 + 48) = [a2 CGColor];
    *(v35 + 56) = [a2 CGColor];
    v36 = sub_1004BC284().super.isa;

    v37 = CGGradientCreateWithColors(v34, v36, dbl_1005A6658);

    if (v37)
    {
      v38 = [a1 CGContext];
      v49.y = 0.0;
      v52.x = 0.0;
      v49.x = a4;
      v52.y = a5;
      CGContextDrawLinearGradient(v38, v37, v49, v52, 0);
    }

    v39 = [a1 CGContext];
    CGContextRestoreGState(v39);

    v40 = CGColorSpaceCreateDeviceRGB();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1004C51A0;
    *(v41 + 32) = [a2 CGColor];
    v42 = [a3 colorWithAlphaComponent:0.0];
    v43 = [v42 CGColor];

    *(v41 + 40) = v43;
    v44 = sub_1004BC284().super.isa;

    v45 = CGGradientCreateWithColors(v40, v44, dbl_1005A6698);

    if (v45)
    {
      v46 = [a1 CGContext];
      v53.y = a5 * 0.5;
      v50.x = 0.0;
      v50.y = 0.0;
      v53.x = 0.0;
      CGContextDrawLinearGradient(v46, v45, v50, v53, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10022BE90(void *a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v13 = [a1 CGContext];
  CGContextSetBlendMode(v13, kCGBlendModeNormal);

  [a2 setFill];
  [a1 fillRect:{0.0, 0.0, a3, a4}];
  if (qword_1006000A8 != -1)
  {
    swift_once();
  }

  v14 = qword_1006176B8;
  sub_100003ABC(&qword_100603C50);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004C51B0;
  *(v15 + 32) = [a2 CGColor];
  *(v15 + 40) = [a2 CGColor];
  *(v15 + 48) = [a6 CGColor];
  v16 = [a7 colorWithAlphaComponent:0.9];
  v17 = [v16 CGColor];

  *(v15 + 56) = v17;
  *(v15 + 64) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_1004BC284().super.isa;

  v19 = CGGradientCreateWithColors(v14, isa, dbl_1005A66C8);

  if (v19)
  {
    v20 = [a1 CGContext];
    v30.x = 0.0;
    v30.y = 0.0;
    v28.x = a3;
    v28.y = a4;
    CGContextDrawLinearGradient(v20, v19, v28, v30, 3u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004C51A0;
  *(v21 + 32) = [a7 CGColor];
  v22 = [a7 colorWithAlphaComponent:0.0];
  v23 = [v22 CGColor];

  *(v21 + 40) = v23;
  v24 = sub_1004BC284().super.isa;

  v25 = CGGradientCreateWithColors(v14, v24, dbl_1005A6710);

  if (v25)
  {
    v26 = [a1 CGContext];
    v31.y = a4 * 0.5;
    v29.x = 0.0;
    v29.y = 0.0;
    v31.x = 0.0;
    CGContextDrawLinearGradient(v26, v25, v29, v31, 3u);
  }
}

uint64_t sub_10022C1F4(void *a1, double a2, double a3)
{
  v6 = sub_1004B7154();
  result = __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 / 3.0;
  if (a2 / 3.0 == 0.0)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v12 = a2 >= 0.0;
  if (v11 > 0.0)
  {
    v12 = a2 <= 0.0;
  }

  if (!v12)
  {
    v13 = 0;
    v14 = a3 / 3.0;
    v15 = a3 >= 0.0;
    if (a3 / 3.0 > 0.0)
    {
      v15 = a3 <= 0.0;
    }

    v29 = v15;
    v31 = enum case for CGPathFillRule.winding(_:);
    v16 = (v8 + 104);
    v17 = (v8 + 8);
    v28 = a2;
    while (1)
    {
      v20 = __OFADD__(v13, 1);
      v21 = v13 + 1;
      if (v20)
      {
        break;
      }

      if (v14 == 0.0)
      {
        goto LABEL_23;
      }

      v30 = v21;
      if (!v29)
      {
        v22 = 0;
        while (!__OFADD__(v22, 1))
        {
          v23 = (v22 + 1) * v14 + 0.0;
          Mutable = CGPathCreateMutable();
          v33 = 0;
          v34 = 0;
          v32 = 0x3FF0000000000000;
          v35 = 0x3FF0000000000000;
          v36 = 0;
          v37 = 0;
          sub_1004BCA34();
          v25 = [a1 CGContext];
          CGContextAddPath(v25, Mutable);

          v26 = [a1 CGContext];
          (*v16)(v10, v31, v6);
          sub_1004BC8F4();

          result = (*v17)(v10, v6);
          v27 = v23 <= a3;
          if (v14 > 0.0)
          {
            v27 = v23 >= a3;
          }

          ++v22;
          if (v27)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

LABEL_9:
      v13 = v30;
      v18 = v30 * v11 + 0.0;
      v19 = v18 <= v28;
      if (v11 > 0.0)
      {
        v19 = v18 >= v28;
      }

      if (v19)
      {
        return result;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

void sub_10022C4C0(void *a1, int a2, int a3, int a4, id a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, void *a10, id *a11)
{
  [a5 setFill];
  [a1 fillRect:0 blendMode:{a6, a7, a8, a9}];
  v18 = [a1 CGContext];
  CGContextSaveGState(v18);

  v19 = [a1 CGContext];
  v20 = [a10 CGImage];
  if (v20)
  {
    v21 = v20;
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGContextClipToMask(v19, v24, v20);

    [*a11 drawInRect:0 blendMode:a6 alpha:{a7, a8, a9, 1.0}];
    v22 = [a1 CGContext];
    CGContextRestoreGState(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10022C630(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_10022C724;

  return v5(v2 + 16);
}

uint64_t sub_10022C724()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_10022C854(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10022D094;
  *(v14 + 24) = v13;
  v33 = sub_100226ABC;
  v34 = v14;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10011FE68;
  v32 = &unk_1005BAB80;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 imageWithActions:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    *(v18 + 48) = a6;
    *(v18 + 56) = a7;
    *(v18 + 64) = 0;
    *(v18 + 72) = 0;
    *(v18 + 80) = a6;
    *(v18 + 88) = a7;
    *(v18 + 96) = v16;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10022D108;
    *(v19 + 24) = v18;
    v33 = sub_100226ABC;
    v34 = v19;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_10011FE68;
    v32 = &unk_1005BABF8;
    v20 = _Block_copy(&aBlock);
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v25 = v16;

    v26 = [v12 imageWithActions:v20];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10022CB74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10001384C;

  return sub_100228540(a1, a2, v6, v9, v10, v11, v12, v13, v7, v8);
}

unint64_t sub_10022CC6C()
{
  result = qword_1006079C8;
  if (!qword_1006079C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006079C8);
  }

  return result;
}

uint64_t sub_10022CD14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10022CD74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1000136EC;

  return sub_100229000(a1, v6, v7, v4, v5, v12, v8, v9, v10, v11);
}

uint64_t sub_10022CE78()
{

  return swift_deallocObject();
}

uint64_t sub_10022CEB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_10022C630(a1, v4);
}

uint64_t sub_10022CF80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10022CF98()
{

  return swift_deallocObject();
}

uint64_t sub_10022D0B0()
{

  return swift_deallocObject();
}

uint64_t sub_10022D12C()
{

  return swift_deallocObject();
}

uint64_t sub_10022D1C0()
{

  return swift_deallocObject();
}

uint64_t Logger.playlistCovers.unsafeMutableAddressor()
{
  if (qword_1006000B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();

  return sub_100007084(v0, static Logger.playlistCovers);
}

uint64_t PlaylistCovers.RecipeColors.description.getter(void *a1, void *a2, void *a3, void *a4)
{
  sub_1004BD404(60);
  v25._object = 0x80000001005049B0;
  v25._countAndFlagsBits = 0xD000000000000015;
  sub_1004BC024(v25);
  v8 = [a1 description];
  v9 = sub_1004BBE64();
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_1004BC024(v26);

  v27._countAndFlagsBits = 0x32726F6C6F63202CLL;
  v27._object = 0xEA0000000000203ALL;
  sub_1004BC024(v27);
  v12 = [a2 description];
  v13 = sub_1004BBE64();
  v15 = v14;

  v28._countAndFlagsBits = v13;
  v28._object = v15;
  sub_1004BC024(v28);

  v29._countAndFlagsBits = 0x33726F6C6F63202CLL;
  v29._object = 0xEA0000000000203ALL;
  sub_1004BC024(v29);
  v16 = [a3 description];
  v17 = sub_1004BBE64();
  v19 = v18;

  v30._countAndFlagsBits = v17;
  v30._object = v19;
  sub_1004BC024(v30);

  v31._countAndFlagsBits = 0x34726F6C6F63202CLL;
  v31._object = 0xEA0000000000203ALL;
  sub_1004BC024(v31);
  v20 = [a4 description];
  v21 = sub_1004BBE64();
  v23 = v22;

  v32._countAndFlagsBits = v21;
  v32._object = v23;
  sub_1004BC024(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_1004BC024(v33);
  return 0;
}

uint64_t static PlaylistCovers.RecipeColors.__derived_struct_equals(_:_:)()
{
  sub_1000E6B44();
  if (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4())
  {
    return sub_1004BCFA4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PlaylistCovers.RecipeColors.hash(into:)()
{
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BCFB4();
}

Swift::Int PlaylistCovers.RecipeColors.hashValue.getter()
{
  sub_1004BDBA4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BDBF4();
}

uint64_t sub_10022D6D8()
{
  sub_1000E6B44();
  if (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4())
  {
    return sub_1004BCFA4() & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10022D778()
{
  sub_1004BDBA4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BDBF4();
}

uint64_t sub_10022D7F8()
{
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BCFB4();
}

Swift::Int sub_10022D85C()
{
  sub_1004BDBA4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  sub_1004BCFB4();
  return sub_1004BDBF4();
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)(uint64_t a1)
{
  v1[17] = a1;
  v2 = sub_1004BB9B4();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_1004BBA44();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  sub_100003ABC(&unk_100603F30);
  v1[24] = swift_task_alloc();
  v4 = sub_1004BB4D4();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = sub_100003ABC(&qword_100601DF0);
  v1[31] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100601E00);
  v1[32] = v5;
  v1[33] = *(v5 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = type metadata accessor for PlaylistCovers.Source();
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_10022DB74, 0, 0);
}

uint64_t sub_10022DB74()
{
  sub_1002324C8(*(v0 + 136), *(v0 + 288));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 288);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    *(v0 + 344) = *v2;
    v4 = *(v3 + 16);
    *(v0 + 352) = v4;
    if (!v4)
    {
LABEL_19:

      goto LABEL_20;
    }

    *(v0 + 404) = *(*(v0 + 176) + 80);
    *(v0 + 408) = enum case for Playlist.Entry.InternalItem.musicMovie(_:);
    *(v0 + 412) = enum case for Playlist.Entry.InternalItem.musicVideo(_:);
    *(v0 + 416) = enum case for Playlist.Entry.InternalItem.song(_:);
    *(v0 + 360) = 0;
    if (*(v3 + 16))
    {
      v5 = 0;
      do
      {
        (*(*(v0 + 176) + 16))(*(v0 + 184), v3 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v5, *(v0 + 168));
        v6 = sub_1004BB9E4();
        *(v0 + 368) = v7;
        if (v7)
        {
          v8 = v7;
          v9 = v6;
          v10 = *(v0 + 408);
          v12 = *(v0 + 152);
          v11 = *(v0 + 160);
          v13 = *(v0 + 144);
          sub_1004BB9C4();
          v14 = (*(v12 + 88))(v11, v13);
          if (v14 != v10)
          {
            v15 = *(v0 + 412);
            if (v14 == v15 || v14 == *(v0 + 416))
            {
              v63 = v14 == v15;
              (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
              sub_1004BBA34();
              v64 = swift_task_alloc();
              *(v0 + 376) = v64;
              *v64 = v0;
              v64[1] = sub_10022E714;
              v59 = *(v0 + 192);
              v60 = v9;
              v61 = v8;
              v62 = v63;
              goto LABEL_33;
            }
          }

          v18 = *(v0 + 152);
          v17 = *(v0 + 160);
          v19 = *(v0 + 144);

          (*(v18 + 8))(v17, v19);
        }

        v20 = *(v0 + 352);
        v21 = *(v0 + 360) + 1;
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        if (v21 == v20)
        {
          goto LABEL_19;
        }

        v5 = *(v0 + 360) + 1;
        *(v0 + 360) = v5;
        v3 = *(v0 + 344);
      }

      while (v5 < *(v3 + 16));
    }

    __break(1u);
  }

  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v25 = *(v0 + 248);
  v24 = *(v0 + 256);
  v26 = *(v0 + 240);
  (*(v23 + 32))(v22, v2, v24);
  (*(v23 + 16))(v25, v22, v24);
  *(v0 + 392) = *(v26 + 36);
  *(v0 + 296) = sub_10023252C();
  sub_1004BC724();
  *(v0 + 396) = enum case for Track.song(_:);
  *(v0 + 400) = enum case for Track.musicVideo(_:);
  v27 = *(v0 + 392);
  v28 = *(v0 + 248);
  sub_1004BC764();
  if (*(v28 + v27) == *(v0 + 128))
  {
LABEL_18:
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    sub_100007214(*(v0 + 248), &qword_100601DF0);
    (*(v41 + 8))(v40, v42);
LABEL_20:
    if (qword_100600098 != -1)
    {
      swift_once();
    }

    v43 = unk_100617680;
    v45 = qword_100617688;
    v44 = unk_100617690;
    v68 = qword_100617678;
    v66 = v43;
    v46 = v45;
    v47 = v44;

    v48 = *(v0 + 8);

    return v48(v68, v66, v46, v47);
  }

  while (1)
  {
    v29 = *(v0 + 232);
    v67 = *(v0 + 224);
    v30 = *(v0 + 208);
    v65 = *(v0 + 200);
    v31 = sub_1004BC844();
    v32 = *(v30 + 16);
    v32(v29);
    v31(v0 + 96, 0);
    sub_1004BC774();
    (*(v30 + 32))(v67, v29, v65);
    v33 = sub_1004BB484();
    v35 = v34;
    *(v0 + 304) = v34;
    v36 = *(v0 + 200);
    v37 = *(v0 + 208);
    if (v35)
    {
      break;
    }

    v38 = *(v0 + 392);
    v39 = *(v0 + 248);
    (*(v37 + 8))(*(v0 + 224), v36);
    sub_1004BC764();
    if (*(v39 + v38) == *(v0 + 128))
    {
      goto LABEL_18;
    }
  }

  v50 = *(v0 + 400);
  v51 = *(v0 + 396);
  v52 = *(v0 + 216);
  v69 = v33;
  v53 = *(v0 + 200);
  (v32)(v52, *(v0 + 224), v36);
  v54 = (*(v37 + 88))(v52, v53);
  v56 = v54 != v51 && v54 == v50;
  v57 = *(v37 + 8);
  *(v0 + 312) = v57;
  *(v0 + 320) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v57(v52, v53);
  sub_1004BB4C4();
  v58 = swift_task_alloc();
  *(v0 + 328) = v58;
  *v58 = v0;
  v58[1] = sub_10022E1C0;
  v59 = *(v0 + 192);
  v60 = v69;
  v61 = v35;
  v62 = v56;
LABEL_33:

  return sub_10022EBB0(v60, v61, v62, v59);
}

uint64_t sub_10022E1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v7 = v5[24];
  v6[42] = a1;

  sub_100007214(v7, &unk_100603F30);

  return _swift_task_switch(sub_10022E318, 0, 0);
}

uint64_t sub_10022E318()
{
  v1 = *(v0 + 336);
  (*(v0 + 312))(*(v0 + 224), *(v0 + 200));
  if (v1)
  {
    v37 = *(v0 + 32);
    v39 = *(v0 + 336);
    v36 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 264);
    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    sub_100007214(*(v0 + 248), &qword_100601DF0);
    (*(v3 + 8))(v4, v5);
LABEL_9:

    v22 = *(v0 + 8);

    return v22(v39, v37, v36, v2);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 248);
  sub_1004BC764();
  if (*(v7 + v6) == *(v0 + 128))
  {
LABEL_6:
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_100007214(*(v0 + 248), &qword_100601DF0);
    (*(v17 + 8))(v16, v18);
    if (qword_100600098 != -1)
    {
      swift_once();
    }

    v19 = unk_100617680;
    v20 = qword_100617688;
    v21 = unk_100617690;
    v39 = qword_100617678;
    v37 = v19;
    v36 = v20;
    v2 = v21;
    goto LABEL_9;
  }

  while (1)
  {
    v8 = *(v0 + 232);
    v40 = *(v0 + 224);
    v9 = *(v0 + 208);
    v35 = *(v0 + 200);
    v10 = sub_1004BC844();
    v11 = *(v9 + 16);
    v11(v8);
    v10(v0 + 96, 0);
    sub_1004BC774();
    (*(v9 + 32))(v40, v8, v35);
    v12 = sub_1004BB484();
    *(v0 + 304) = v13;
    if (v13)
    {
      break;
    }

    v14 = *(v0 + 392);
    v15 = *(v0 + 248);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    sub_1004BC764();
    if (*(v15 + v14) == *(v0 + 128))
    {
      goto LABEL_6;
    }
  }

  v24 = *(v0 + 400);
  v25 = *(v0 + 396);
  v26 = *(v0 + 208);
  v27 = *(v0 + 216);
  v28 = *(v0 + 200);
  v38 = v13;
  v41 = v12;
  (v11)(v27, *(v0 + 224), v28);
  v29 = (*(v26 + 88))(v27, v28);
  v31 = v29 != v25 && v29 == v24;
  v32 = *(v26 + 8);
  *(v0 + 312) = v32;
  *(v0 + 320) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v27, v28);
  sub_1004BB4C4();
  v33 = swift_task_alloc();
  *(v0 + 328) = v33;
  *v33 = v0;
  v33[1] = sub_10022E1C0;
  v34 = *(v0 + 192);

  return sub_10022EBB0(v41, v38, v31, v34);
}

uint64_t sub_10022E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[7] = v4;
  v6[8] = a1;
  v6[9] = a2;
  v6[10] = a3;
  v6[11] = a4;
  v7 = v5[24];
  v6[48] = a1;

  sub_100007214(v7, &unk_100603F30);

  return _swift_task_switch(sub_10022E86C, 0, 0);
}

uint64_t sub_10022E86C()
{
  v1 = *(v0 + 384);
  if (!v1)
  {
    while (1)
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 360) + 1;
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      if (v9 == v8)
      {
        break;
      }

      v10 = *(v0 + 360) + 1;
      *(v0 + 360) = v10;
      v11 = *(v0 + 344);
      if (v10 >= *(v11 + 16))
      {
        __break(1u);
LABEL_22:
        swift_once();
LABEL_17:
        v27 = unk_100617680;
        v28 = qword_100617688;
        v29 = unk_100617690;
        v1 = qword_100617678;
        v33 = v27;
        v32 = v28;
        v31 = v29;
        goto LABEL_18;
      }

      (*(*(v0 + 176) + 16))(*(v0 + 184), v11 + ((*(v0 + 404) + 32) & ~*(v0 + 404)) + *(*(v0 + 176) + 72) * v10, *(v0 + 168));
      v12 = sub_1004BB9E4();
      *(v0 + 368) = v13;
      if (v13)
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v0 + 408);
        v18 = *(v0 + 152);
        v17 = *(v0 + 160);
        v19 = *(v0 + 144);
        sub_1004BB9C4();
        v20 = (*(v18 + 88))(v17, v19);
        if (v20 != v16)
        {
          v21 = *(v0 + 412);
          if (v20 == v21 || v20 == *(v0 + 416))
          {
            v23 = v20 == v21;
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
            sub_1004BBA34();
            v24 = swift_task_alloc();
            *(v0 + 376) = v24;
            *v24 = v0;
            v24[1] = sub_10022E714;
            v25 = *(v0 + 192);

            return sub_10022EBB0(v15, v14, v23, v25);
          }
        }

        v6 = *(v0 + 152);
        v5 = *(v0 + 160);
        v7 = *(v0 + 144);

        (*(v6 + 8))(v5, v7);
      }
    }

    if (qword_100600098 != -1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 72);
  v31 = *(v0 + 88);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v2 + 8))(v3, v4);
LABEL_18:

  v30 = *(v0 + 8);

  return v30(v1, v33, v32, v31);
}

uint64_t sub_10022EBB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 256) = a3;
  *(v4 + 16) = a1;
  sub_100003ABC(&unk_100603F30);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_1004BB6C4();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10022ECC8, 0, 0);
}

uint64_t sub_10022ECC8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_100232724(*(v0 + 32), v3);
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  *(v0 + 96) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_100007214(*(v0 + 48), &unk_100603F30);
LABEL_16:
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_10022F110;
    v16 = *(v0 + 40);
    v17 = *(v0 + 256);
    v18 = *(v0 + 16);
    v19 = *(v0 + 24);

    return sub_10022F628(v16, v18, v19, v17);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  v5 = sub_1004BB674();
  *(v0 + 104) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_1004BB684();
  *(v0 + 112) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v8 = v7;
  v9 = sub_1004BB6A4();
  *(v0 + 120) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v10 = v9;
  v11 = sub_1004BB694();
  *(v0 + 128) = v11;
  if (!v11)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));

    goto LABEL_14;
  }

  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_10022EF28;

  return sub_100232BAC(v6, v8, v10, v12);
}

uint64_t sub_10022EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  return _swift_task_switch(sub_10022F02C, 0, 0);
}

uint64_t sub_10022F02C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_10022F110()
{

  return _swift_task_switch(sub_10022F20C, 0, 0);
}

uint64_t sub_10022F20C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  if ((*(v0 + 88))(v2, 1, v1) == 1)
  {
    sub_100007214(v2, &unk_100603F30);
LABEL_16:

    v13 = *(v0 + 8);

    return v13(0, 0, 0, 0);
  }

  (*(*(v0 + 64) + 32))(*(v0 + 72), v2, v1);
  v3 = sub_1004BB674();
  *(v0 + 184) = v3;
  if (!v3)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_1004BB684();
  *(v0 + 192) = v5;
  if (!v5)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_15:

    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_1004BB6A4();
  *(v0 + 200) = v7;
  if (!v7)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
LABEL_14:

    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_1004BB694();
  *(v0 + 208) = v9;
  if (!v9)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    goto LABEL_14;
  }

  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_10022F440;

  return sub_100232BAC(v4, v6, v8, v10);
}

uint64_t sub_10022F440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[28] = a1;
  v5[29] = a2;
  v5[30] = a3;
  v5[31] = a4;

  return _swift_task_switch(sub_10022F544, 0, 0);
}

uint64_t sub_10022F544()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 224);
  v9 = *(v0 + 232);

  v11 = *(v0 + 8);

  return v11(v10, v9, v7, v8);
}

uint64_t sub_10022F628(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 288) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  v5 = sub_100003ABC(&qword_1006027C8);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  sub_100003ABC(&qword_100601E90);
  *(v4 + 96) = swift_task_alloc();
  v6 = sub_100003ABC(&qword_1006027D0);
  *(v4 + 104) = v6;
  *(v4 + 112) = *(v6 - 8);
  *(v4 + 120) = swift_task_alloc();
  v7 = sub_100003ABC(&qword_1006027D8);
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = sub_100003ABC(&qword_100602770);
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();
  sub_100003ABC(&qword_100601E88);
  *(v4 + 176) = swift_task_alloc();
  v9 = sub_100003ABC(&qword_100602778);
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  v10 = sub_100003ABC(&qword_100602780);
  *(v4 + 208) = v10;
  *(v4 + 216) = *(v10 - 8);
  *(v4 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10022F974, 0, 0);
}

uint64_t sub_10022F974()
{
  v20 = v0;
  if (qword_1006000B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1004B80B4();
  *(v0 + 232) = sub_100007084(v1, static Logger.playlistCovers);

  v2 = sub_1004B8094();
  v3 = sub_1004BC9A4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v5 = 136315394;
    if (v4)
    {
      v6 = 0x697620636973756DLL;
    }

    else
    {
      v6 = 1735290739;
    }

    if (v4)
    {
      v7 = 0xEB000000006F6564;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v8 = sub_100012018(v6, v7, &v19);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = sub_1004BAD14();
    v11 = sub_100012018(v9, v10, &v19);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Media API request for %s with catalogID=%{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  if (*(v0 + 288) == 1)
  {
    swift_getKeyPath();
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 240) = sub_1004BAD04();
    sub_1002338E4(&qword_100602788, &type metadata accessor for MusicVideo);

    sub_1004BABD4();
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v14[1] = sub_10022FD4C;
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    *(v0 + 264) = sub_1004BB384();
    sub_1002338E4(&qword_1006027E0, &type metadata accessor for Song);

    sub_1004BABD4();
    v17 = swift_task_alloc();
    *(v0 + 272) = v17;
    *v17 = v0;
    v17[1] = sub_1002300B8;
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
  }

  return MusicCatalogResourceRequest.response()(v15, v16);
}