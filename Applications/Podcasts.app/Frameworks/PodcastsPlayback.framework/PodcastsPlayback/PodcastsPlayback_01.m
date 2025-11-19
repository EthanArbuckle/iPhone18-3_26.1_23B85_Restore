uint64_t sub_14918()
{
  v0 = sub_5A264();
  v4 = sub_14998(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_14998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_5A1D4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_5A674();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1428C(v9, 0);
  v12 = sub_14AF0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_5A1D4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_5A744();
LABEL_4:

  return sub_5A1D4();
}

unint64_t sub_14AF0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_14D10(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_5A234();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_5A744();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_14D10(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_5A214();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_14D10(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_5A244();
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
    v5 = sub_5A224();
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

uint64_t sub_14D8C(uint64_t a1, unint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (*a3.i64 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*a3.i64 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *a4.i64 = *vbslq_s8(vnegq_f64(v5), a4, a3).i64 * 100000.0;
  if ((a3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (a4.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (*a4.i64 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*a4.i64 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return String.init(format:_:)(a1, a2);
  }

  v6 = *a3.i64 % 60;
  v7 = *a3.i64 / 3600;
  v8 = ((((34953 * (*a3.i64 % 3600)) >> 16) >> 5) + ((((*a3.i64 % 3600) + ((-30583 * (*a3.i64 % 3600)) >> 16)) & 0x8000) >> 15));
  v9 = *a4.i64 / 1000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5C330;
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v7;
  *(v10 + 96) = &type metadata for Int;
  *(v10 + 104) = &protocol witness table for Int;
  *(v10 + 72) = v8;
  *(v10 + 136) = &type metadata for Int;
  *(v10 + 144) = &protocol witness table for Int;
  *(v10 + 112) = v6;
  a1 = 0x3A643230253A6425;
  a2 = 0xEF64252E64323025;
  *(v10 + 176) = &type metadata for Int;
  *(v10 + 184) = &protocol witness table for Int;
  *(v10 + 152) = v9;

  return String.init(format:_:)(a1, a2);
}

uint64_t sub_14F70()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  v2 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t NowPlayingItemPlayheadSynchronizer.__allocating_init(asPartOf:)()
{
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D530, &qword_5C3E8);
  sub_5A094();
  *(v0 + 16) = v2;
  type metadata accessor for PlaybackController(0);
  sub_5A094();

  *(v0 + 24) = v2;
  return v0;
}

uint64_t NowPlayingItemPlayheadSynchronizer.init(asPartOf:)()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D530, &qword_5C3E8);
  sub_5A094();
  *(v0 + 16) = v2;
  type metadata accessor for PlaybackController(0);
  sub_5A094();

  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_151A8()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v11 = sub_1571C;
  v12 = v2;
  aBlock = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_159C8;
  v10 = &block_descriptor_1;
  v3 = _Block_copy(&aBlock);

  v4 = [v1 addEpisodeObserverUsingBlock:v3];
  _Block_release(v3);
  if (v4)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v8 = 0;
    v9 = 0;
  }

  aBlock = v4;
  v10 = ObjectType;
  swift_beginAccess();
  sub_15A5C(&aBlock, v0 + 32);
  return swift_endAccess();
}

uint64_t sub_152D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_15310(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_59D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v18 = v35;
    if (v35)
    {
      v19 = [v35 identifiers];
      v20 = [v19 library];

      if (!v20)
      {

        return;
      }

      v34 = v11;
      v21 = [v20 databaseID];
      swift_unknownObjectRelease();
      v22 = sub_5A194();
      v24 = v23;

      if (v22 == a1 && v24 == a2)
      {

        v25 = v34;
        goto LABEL_9;
      }

      v26 = sub_5A8E4();

      v25 = v34;
      if (v26)
      {
LABEL_9:
        v27 = *(v16 + 24);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_59E24();

        if (v35 != 1)
        {
          sub_59CC4();
          v28 = sub_59D04();
          v29 = sub_5A474();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 134217984;
            *(v30 + 4) = a3;
            _os_log_impl(&dword_0, v28, v29, "Received playhead sync event for currently playing item. Moving playhead to %f", v30, 0xCu);
          }

          (*(v25 + 8))(v14, v10);
          v31 = sub_5A3B4();
          (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
          v32 = swift_allocObject();
          *(v32 + 16) = 0;
          *(v32 + 24) = 0;
          *(v32 + 32) = v16;
          *(v32 + 40) = a3;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;

          sub_424B4(0, 0, v9, &unk_5C508, v32);
        }
      }
    }
  }
}

uint64_t sub_15724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  return _swift_task_switch(sub_1574C, 0, 0);
}

uint64_t sub_1574C()
{
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 64) + 24);
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_15810;

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_15810(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_15964;
  }

  else
  {
    *(v4 + 112) = a1;
    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v7 = sub_15940;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_15964()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_159C8(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_5A194();
  v7 = v6;

  v4(v5, v7, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_15A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC80, &qword_5C3F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlayingItemPlayheadSynchronizer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  sub_15AFC(v0 + 32);
  return v0;
}

uint64_t sub_15AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC80, &qword_5C3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NowPlayingItemPlayheadSynchronizer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  sub_15AFC(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_15C30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_15C70(uint64_t a1)
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
  v10[1] = sub_15D44;

  return sub_15724(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_15D44()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_15E38(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  if (!v2)
  {
    return 0;
  }

  result = sub_59C54();
  if (v4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_15E80(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v5)
  {
    result = sub_15E38(a1, a2);
    if (v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_15EF0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MTEpisodeLookupRequest) init];
  result = sub_15E38(a1, a2);
  if ((v6 & 1) == 0)
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    [v4 setStoreTrackId:result];
  }

  (*(a2 + 24))(a1, a2);
  if (v7)
  {
    v8 = sub_5A174();
  }

  else
  {
    v8 = 0;
  }

  [v4 setUuid:v8];

  return v4;
}

uint64_t getEnumTagSinglePayload for PlaybackPositionTrackerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackPositionTrackerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_16208()
{
  result = qword_7D608;
  if (!qword_7D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D608);
  }

  return result;
}

void QueueModelSection.init(tracklistSection:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_5A194();
  v6 = v5;
  if (v4 == sub_5A194() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_5A8E4();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = sub_5A194();
  v13 = v12;
  if (v11 == sub_5A194() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v16 = sub_5A8E4();

    if (v16)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_9:
  *a2 = v10;
}

PodcastsPlayback::QueueModelSection_optional __swiftcall QueueModelSection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_71E50;
  v8._object = object;
  v5 = sub_5A874(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t QueueModelSection.rawValue.getter()
{
  if (*v0)
  {
    return 0x7565755174666F73;
  }

  else
  {
    return 0x7565755164726168;
  }
}

uint64_t sub_16460(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7565755174666F73;
  }

  else
  {
    v2 = 0x7565755164726168;
  }

  if (*a2)
  {
    v3 = 0x7565755174666F73;
  }

  else
  {
    v3 = 0x7565755164726168;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_5A8E4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_164F4()
{
  v1 = *v0;
  sub_5A974();
  sub_5A1E4();

  return sub_5A9A4();
}

uint64_t sub_16574()
{
  *v0;
  sub_5A1E4();
}

Swift::Int sub_165D8()
{
  v1 = *v0;
  sub_5A974();
  sub_5A1E4();

  return sub_5A9A4();
}

uint64_t sub_16654@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_71E50;
  v8._object = v3;
  v5 = sub_5A874(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_166B4(uint64_t *a1@<X8>)
{
  v2 = 0x7565755164726168;
  if (*v1)
  {
    v2 = 0x7565755174666F73;
  }

  *a1 = v2;
  a1[1] = 0xE900000000000065;
}

unint64_t sub_166F4()
{
  result = qword_7D610;
  if (!qword_7D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D610);
  }

  return result;
}

void sub_16758()
{
  v0 = objc_allocWithZone(MPRemoteCommandCenter);
  v1 = sub_5A174();
  v2 = [v0 initWithPlayerID:v1];

  qword_7D618 = v2;
}

id RemoteFollowCommandCenter.__allocating_init(asPartOf:subscriptionUtility:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_subscriptionUtility] = a2;
  type metadata accessor for PlaybackController(0);
  swift_unknownObjectRetain();
  sub_5A094();
  *&v4[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_playbackController] = v8;
  v7.receiver = v4;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "init");

  swift_unknownObjectRelease();
  return v5;
}

id RemoteFollowCommandCenter.init(asPartOf:subscriptionUtility:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_subscriptionUtility] = a2;
  type metadata accessor for PlaybackController(0);
  swift_unknownObjectRetain();
  sub_5A094();
  *&v2[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_playbackController] = v6;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for RemoteFollowCommandCenter();
  v3 = objc_msgSendSuper2(&v5, "init");

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1694C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_5A3B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_5A384();
  v7 = v0;
  v8 = sub_5A374();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = ObjectType;
  sub_17A48(0, 0, v5, &unk_5C750, v9);
}

uint64_t sub_16A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_59D14();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCA0, &qword_5C808);
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = sub_5A4E4();
  v4[23] = v12;
  v13 = *(v12 - 8);
  v4[24] = v13;
  v14 = *(v13 + 64) + 15;
  v4[25] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v4[26] = v15;
  v16 = *(v15 - 8);
  v4[27] = v16;
  v17 = *(v16 + 64) + 15;
  v4[28] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v4[29] = v18;
  v19 = *(v18 - 8);
  v4[30] = v19;
  v20 = *(v19 + 64) + 15;
  v4[31] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D680, &unk_5CF50);
  v4[32] = v21;
  v22 = *(v21 - 8);
  v4[33] = v22;
  v23 = *(v22 + 64) + 15;
  v4[34] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCB0, &unk_5C830);
  v4[35] = v24;
  v25 = *(v24 - 8);
  v4[36] = v25;
  v26 = *(v25 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = sub_5A384();
  v4[39] = sub_5A374();
  v28 = sub_5A354();
  v4[40] = v28;
  v4[41] = v27;

  return _swift_task_switch(sub_16E18, v28, v27);
}

uint64_t sub_16E18()
{
  v31 = v0[37];
  v23 = v0[34];
  v30 = v0[33];
  v27 = v0[32];
  v19 = v0[29];
  v20 = v0[30];
  v15 = v0[28];
  v18 = v0[27];
  v16 = v0[26];
  v17 = v0[31];
  v24 = v0[24];
  v25 = v0[23];
  v21 = v0[25];
  v22 = v0[22];
  v26 = v0[21];
  v28 = v0[19];
  v29 = v0[20];
  v1 = *(v0[15] + OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_playbackController);
  v2 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[10] = (*(v4 + 8))(v3, v4);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  sub_59F64();
  (*(v18 + 8))(v15, v16);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v5 = sub_59E74();
  (*(v20 + 8))(v17, v19);
  v0[11] = v5;
  sub_5A4D4();
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v6 = sub_5A504();
  v0[12] = v6;
  v7 = sub_5A4A4();
  (*(*(v7 - 8) + 56))(v22, 1, 1, v7);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  sub_59F44();
  sub_9708(v22, &unk_7D9C0, &unk_5C810);

  (*(v24 + 8))(v21, v25);

  sub_5108(&qword_7D6B0, &qword_7D680, &unk_5CF50);
  sub_59FA4();
  (*(v30 + 8))(v23, v27);
  sub_59D74();
  (*(v29 + 8))(v26, v28);
  v8 = v0[38];
  v0[42] = sub_5A374();
  v9 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830);
  v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v11 = swift_task_alloc();
  v0[43] = v11;
  *v11 = v0;
  v11[1] = sub_17360;
  v12 = v0[37];
  v13 = v0[35];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 13, v13, v9);
}

uint64_t sub_17360()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_5A354();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_178BC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_5A354();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_174F8;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_174F8()
{
  v1 = v0[42];

  v0[45] = v0[13];
  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_17564, v2, v3);
}

uint64_t sub_17564()
{
  v1 = *(v0 + 360);
  if (v1 == &dword_0 + 1)
  {
    v18 = *(v0 + 312);
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

LABEL_10:
    v19 = *(v0 + 296);
    v20 = *(v0 + 272);
    v21 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 200);
    v25 = *(v0 + 168);
    v24 = *(v0 + 176);
    v26 = *(v0 + 144);

    v27 = *(v0 + 8);

    return v27();
  }

  if (v1)
  {
    v2 = [v1 tracklist];
    v3 = [v2 resetCommand];

    if (v3)
    {
      v4 = *(v0 + 312);
      v5 = *(v0 + 144);
      swift_unknownObjectRelease();

      sub_59CC4();
      v6 = sub_59D04();
      v7 = sub_5A474();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "Registered PodcastsFollowProxyPlayer", v8, 2u);
      }

      v10 = *(v0 + 136);
      v9 = *(v0 + 144);
      v11 = *(v0 + 128);

      (*(v10 + 8))(v9, v11);
      if (qword_7CC58 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 360);
      v14 = *(v0 + 288);
      v13 = *(v0 + 296);
      v15 = *(v0 + 280);
      v16 = *(v0 + 120);
      v17 = [qword_7D618 setPlaybackQueueCommand];
      [v17 addTarget:v16 action:"remoteSetPlaybackQueueCommand:completion:" usingExtendedStatus:1];
      sub_19D78(v12);

      (*(v14 + 8))(v13, v15);
      goto LABEL_10;
    }

    sub_19D78(*(v0 + 360));
  }

  v29 = *(v0 + 304);
  *(v0 + 336) = sub_5A374();
  v30 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830);
  v31 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v32 = swift_task_alloc();
  *(v0 + 344) = v32;
  *v32 = v0;
  v32[1] = sub_17360;
  v33 = *(v0 + 296);
  v34 = *(v0 + 280);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 104, v34, v30);
}

uint64_t sub_178BC()
{
  *(v0 + 112) = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_17948()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_17988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_15D44;

  return sub_16A84(a1, v4, v5, v7);
}

uint64_t sub_17A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_199B4(a3, v27 - v11);
  v13 = sub_5A3B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_9708(v12, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_5A354();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_5A1C4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_17D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_199B4(a3, v27 - v11);
  v13 = sub_5A3B4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_9708(v12, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_5A354();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_5A1C4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D670, &qword_5C7E0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D670, &qword_5C7E0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_1809C(char a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, const char *a7)
{
  v33 = a6;
  v12 = sub_59D14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  if (a1)
  {
    sub_59CC4();

    v20 = sub_59D04();
    v21 = sub_5A474();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = a5;
      v23 = v22;
      v24 = swift_slowAlloc();
      v34 = v24;
      *v23 = 141558275;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      *(v23 + 14) = sub_9430(a3, a4, &v34);
      _os_log_impl(&dword_0, v20, v21, a7, v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);

      a5 = v32;
    }

    (*(v13 + 8))(v19, v12);
    v25 = 0;
  }

  else
  {
    sub_59CC4();

    v26 = sub_59D04();
    v27 = sub_5A454();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      *(v28 + 14) = sub_9430(a3, a4, &v34);
      _os_log_impl(&dword_0, v26, v27, "We didn't follow the show. Perhaps already subscribed?: %{private,mask.hash}s", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
    }

    (*(v13 + 8))(v17, v12);
    v25 = 200;
  }

  v30 = [objc_opt_self() statusWithCode:v25];
  a5();
}

id RemoteFollowCommandCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteFollowCommandCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteFollowCommandCenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_185D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_186C8;

  return v7(a1);
}

uint64_t sub_186C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_187C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_188B4;

  return v6(v2 + 32);
}

uint64_t sub_188B4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void sub_189C8(void *a1, char *a2, void (**a3)(void, void))
{
  v130 = sub_59A44();
  v136 = *(v130 - 8);
  v6 = *(v136 + 64);
  __chkstk_darwin(v130);
  v129 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_59A84();
  v132 = *(v8 - 8);
  v133 = v8;
  v9 = *(v132 + 64);
  __chkstk_darwin(v8);
  v131 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D658, &qword_5C7B8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v121 - v13;
  v15 = sub_59AB4();
  v135 = *(v15 - 8);
  v16 = *(v135 + 64);
  __chkstk_darwin(v15);
  v134 = v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_59D14();
  v137 = *(v18 - 8);
  v138 = v18;
  v19 = *(v137 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v127 = v121 - v24;
  v25 = __chkstk_darwin(v23);
  v128 = v121 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = v121 - v28;
  __chkstk_darwin(v27);
  v31 = v121 - v30;
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  _Block_copy(a3);
  v33 = [a1 playbackQueue];
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v33;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {

LABEL_7:
    sub_59CC4();
    v51 = sub_59D04();
    v52 = sub_5A454();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "Received an unrecognized playback queue in compatibility command center handler. Dropping this request.", v53, 2u);
    }

    (*(v137 + 8))(v22, v138);
    v54 = [objc_opt_self() statusWithCode:200];
    (a3)[2](a3, v54);

    return;
  }

  v36 = v35;
  v123 = v15;
  v126 = a3;
  v37 = *&a2[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_subscriptionUtility];
  v121[1] = swift_getObjectType();
  sub_59CC4();
  v38 = a2;
  v39 = v34;
  v40 = sub_59D04();
  v41 = sub_5A474();

  v42 = os_log_type_enabled(v40, v41);
  v43 = &off_7B000;
  v125 = v32;
  if (v42)
  {
    v122 = v39;
    v44 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v44 = 136315394;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D660, &qword_5C7C0);
    v45 = sub_5A1B4();
    v47 = sub_9430(v45, v46, &aBlock);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    v48 = [v36 trackIdentifiers];
    if (v48)
    {
      v49 = v48;
      v50 = sub_5A294();
    }

    else
    {
      v50 = 0;
    }

    ObjectType = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D668, &qword_5C7C8);
    v55 = sub_5A1B4();
    v57 = sub_9430(v55, v56, &aBlock);

    *(v44 + 14) = v57;
    _os_log_impl(&dword_0, v40, v41, "Received playback queue in %s: %s", v44, 0x16u);
    swift_arrayDestroy();

    v124 = *(v137 + 8);
    v124(v31, v138);
    v39 = v122;
    v43 = &off_7B000;
  }

  else
  {

    v124 = *(v137 + 8);
    v124(v31, v138);
  }

  v58 = [v36 v43[406]];
  v59 = v126;
  v60 = v136;
  if (!v58)
  {
LABEL_19:
    sub_59CC4();
    v67 = v39;
    v68 = sub_59D04();
    v69 = sub_5A454();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136315138;
      v72 = [v36 trackIdentifiers];
      if (v72)
      {
        v73 = v72;
        v74 = sub_5A294();

        if (v74[2])
        {
          v76 = v74[4];
          v75 = v74[5];
        }

        else
        {
          v76 = 0;
          v75 = 0xE000000000000000;
        }

        v59 = v126;
      }

      else
      {
        v76 = 0;
        v75 = 0xE000000000000000;
      }

      v77 = sub_9430(v76, v75, &aBlock);

      *(v70 + 4) = v77;
      _os_log_impl(&dword_0, v68, v69, "Unable to parse follow queue identifier: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);

      v124(v29, v138);
    }

    else
    {

      v124(v29, v138);
    }

    v78 = [objc_opt_self() statusWithCode:200];
    (v59)[2](v59, v78);

    return;
  }

  v61 = v58;
  v62 = sub_5A294();

  if (!v62[2])
  {

    goto LABEL_19;
  }

  v63 = v62[4];
  v64 = v62[5];

  sub_59A74();
  v65 = v135;
  v66 = v123;
  if ((*(v135 + 48))(v14, 1, v123) == 1)
  {
    sub_9708(v14, &qword_7D658, &qword_5C7B8);
    goto LABEL_19;
  }

  v79 = v134;
  (*(v65 + 32))(v134, v14, v66);
  v80 = v131;
  sub_59A94();
  v82 = v132;
  v81 = v133;
  v83 = (*(v132 + 88))(v80, v133);
  v84 = enum case for URLTrackIdentifier.Command.subscribe(_:);
  (*(v82 + 8))(v80, v81);
  if (v83 == v84)
  {
    v122 = v39;
    v85 = *(v60 + 104);
    v87 = v129;
    v86 = v130;
    v85(v129, enum case for URLTrackIdentifier.ArgumentKey.storeCollectionID(_:), v130);
    v88 = v86;
    v89 = sub_59A64();
    v91 = v90;
    v92 = *(v60 + 8);
    v92(v87, v88);
    if (v91)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v94 = sub_5A174();
      v95 = swift_allocObject();
      v95[2] = v89;
      v95[3] = v91;
      v96 = v125;
      v95[4] = sub_198F4;
      v95[5] = v96;
      v144 = sub_1998C;
      v145 = v95;
      aBlock = _NSConcreteStackBlock;
      v141 = 1107296256;
      v142 = sub_1803C;
      v143 = &block_descriptor_15;
      v97 = v79;
      v98 = _Block_copy(&aBlock);

      [ObjCClassFromMetadata subscribeToPodcastWithAdamID:v94 completion:v98];
      _Block_release(v98);

      (*(v135 + 8))(v97, v123);
    }

    else
    {
      v85(v87, enum case for URLTrackIdentifier.ArgumentKey.feedURL(_:), v88);
      v107 = v79;
      v108 = sub_59A64();
      v110 = v109;
      v92(v87, v88);
      if (v110)
      {
        v111 = swift_getObjCClassFromMetadata();
        v112 = sub_5A174();
        v113 = swift_allocObject();
        v113[2] = v108;
        v113[3] = v110;
        v114 = v125;
        v113[4] = sub_198F4;
        v113[5] = v114;
        v144 = sub_19908;
        v145 = v113;
        aBlock = _NSConcreteStackBlock;
        v141 = 1107296256;
        v142 = sub_1803C;
        v143 = &block_descriptor_2;
        v115 = _Block_copy(&aBlock);

        [v111 subscribeToPodcastWithFeedUrl:v112 completion:v115];
        _Block_release(v115);

        (*(v135 + 8))(v107, v123);
      }

      else
      {
        v116 = v127;
        sub_59CC4();
        v117 = sub_59D04();
        v118 = sub_5A454();
        if (os_log_type_enabled(v117, v118))
        {
          v119 = swift_slowAlloc();
          *v119 = 0;
          _os_log_impl(&dword_0, v117, v118, "Unable to find feed URL or Adam ID in follow request", v119, 2u);
        }

        v124(v116, v138);
        v120 = [objc_opt_self() statusWithCode:200];
        (v59)[2](v59, v120);

        (*(v135 + 8))(v107, v123);
      }
    }
  }

  else
  {
    v99 = v79;
    v100 = v128;
    sub_59CC4();
    v101 = sub_59D04();
    v102 = sub_5A454();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v135;
    if (v103)
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v101, v102, "Received a playback queue without a subscribe request in compatibility command center handler. Dropping this request.", v105, 2u);
      v104 = v135;
    }

    v124(v100, v138);
    v106 = [objc_opt_self() statusWithCode:200];
    (v59)[2](v59, v106);

    (*(v104 + 8))(v99, v123);
  }
}

uint64_t sub_198BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_199B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A24()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_19A5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19D9C;

  return sub_187C0(a1, v5);
}

uint64_t sub_19B14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_15D44;

  return sub_187C0(a1, v5);
}

uint64_t sub_19BCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19D9C;

  return sub_185D0(a1, v5);
}

unint64_t sub_19C84()
{
  result = qword_7D698;
  if (!qword_7D698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_7DA20, &qword_5CDA0);
    sub_19D34(&qword_7D6A0, &unk_7DA30, MPCPlayerResponse_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D698);
  }

  return result;
}

uint64_t sub_19D34(unint64_t *a1, unint64_t *a2, uint64_t *a3)
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

void sub_19D78(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

void *SiriIntentDonator.__allocating_init(asPartOf:)()
{
  v0 = swift_allocObject();
  v0[4] = 0;
  type metadata accessor for PlaybackController(0);
  sub_5A094();
  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D6B8, &qword_5C868);
  sub_5A094();

  v0[3] = v2;
  return v0;
}

void *SiriIntentDonator.init(asPartOf:)()
{
  v0[4] = 0;
  type metadata accessor for PlaybackController(0);
  sub_5A094();
  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D6B8, &qword_5C868);
  sub_5A094();

  v0[3] = v2;
  return v0;
}

void *SiriIntentDonator.__allocating_init(playbackController:donationService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = a1;

  swift_unknownObjectRetain();
  SiriIntentDonator.beginObserving()();

  swift_unknownObjectRelease();
  return v4;
}

void *SiriIntentDonator.init(playbackController:donationService:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;

  swift_unknownObjectRetain();
  SiriIntentDonator.beginObserving()();

  swift_unknownObjectRelease();
  return v2;
}

Swift::Void __swiftcall SiriIntentDonator.beginObserving()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D6C0, &unk_5C870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v9 - v5;
  v9[1] = *(*(v0 + 16) + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DB50, &unk_5CE40);
  sub_59904();
  sub_5108(&qword_7D6C8, &unk_7DB50, &unk_5CE40);
  sub_59E84();

  swift_allocObject();
  swift_weakInit();
  sub_5108(&qword_7D6D0, &qword_7D6C0, &unk_5C870);
  v7 = sub_59F84();

  (*(v3 + 8))(v6, v2);
  v8 = *(v1 + 32);
  *(v1 + 32) = v7;
}

uint64_t sub_1A1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D798, &qword_5C8F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22[-v6 - 8];
  v8 = type metadata accessor for PlaybackController.QueueCommand();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v15 = &v22[-v14 - 8];
  sub_1B0F8(a1, v22);
  if (!v23)
  {
    sub_9708(v22, &qword_7D7A0, qword_5C900);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
  v16 = swift_dynamicCast();
  (*(v9 + 56))(v7, v16 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_6:
    sub_9708(v7, &qword_7D798, &qword_5C8F8);
    goto LABEL_7;
  }

  sub_1B168(v7, v15);
  sub_1B168(v15, v13);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v17 = sub_59904();
    v18 = *(v17 - 8);
    (*(v18 + 32))(a2, v13, v17);
    return (*(v18 + 56))(a2, 0, 1, v17);
  }

  sub_1B1CC(v13);
LABEL_7:
  v20 = sub_59904();
  return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
}

uint64_t sub_1A4B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A4E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A550();
  }

  return result;
}

void sub_1A550()
{
  v1 = sub_59D14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1ACC8();
  if (v7)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = *(v0 + 24);

    v15 = sub_5A174();

    if (v13)
    {

      v16 = sub_5A174();
    }

    else
    {
      v16 = 0;
    }

    v20 = swift_allocObject();
    v20[2] = v10;
    v20[3] = v11;
    v20[4] = v12;
    v20[5] = v13;
    aBlock[4] = sub_1B0D4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB98;
    aBlock[3] = &block_descriptor_3;
    v21 = _Block_copy(aBlock);

    [v14 donateEpisodeUuid:v15 stationUuid:v16 isPlaybackFromSiri:0 completion:v21];
    _Block_release(v21);
  }

  else
  {
    sub_59CB4();
    v17 = sub_59D04();
    v18 = sub_5A434();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "No identifiers to donate for intent", v19, 2u);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_1A7C8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_59D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  if (a1)
  {
    sub_59CB4();

    v18 = sub_59D04();
    v19 = sub_5A474();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = v10;
      v21 = a4;
      v22 = v20;
      v41 = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_9430(a2, a3, &v41);
      *(v22 + 12) = 2082;
      v39 = v21;
      v40 = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D790, &unk_5D9E0);
      v23 = sub_5A1B4();
      v25 = sub_9430(v23, v24, &v41);

      *(v22 + 14) = v25;
      _os_log_impl(&dword_0, v18, v19, "Successfully donated playback intent for episode uuid: %{public}s - station uuid: %{public}s", v22, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v17, v38);
    }

    v36 = *(v11 + 8);
    v37 = v17;
  }

  else
  {
    sub_59CB4();

    v27 = sub_59D04();
    v28 = sub_5A474();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = v10;
      v30 = a2;
      v31 = a4;
      v32 = v29;
      v41 = swift_slowAlloc();
      *v32 = 136446466;
      *(v32 + 4) = sub_9430(v30, a3, &v41);
      *(v32 + 12) = 2082;
      v39 = v31;
      v40 = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D790, &unk_5D9E0);
      v33 = sub_5A1B4();
      v35 = sub_9430(v33, v34, &v41);

      *(v32 + 14) = v35;
      _os_log_impl(&dword_0, v27, v28, "Error donating: %{public}s - station uuid: %{public}s", v32, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v15, v38);
    }

    v36 = *(v11 + 8);
    v37 = v15;
  }

  return v36(v37, v10);
}

uint64_t sub_1AB98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void *SiriIntentDonator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return v0;
}

uint64_t SiriIntentDonator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1ACC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A0, &qword_5C8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v26 - v2;
  v4 = sub_59604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_59944();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_59884();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for MediaIdentifier.podcast(_:))
  {
    return 0;
  }

  if (v14 == enum case for MediaIdentifier.episodes(_:))
  {
    goto LABEL_3;
  }

  if (v14 == enum case for MediaIdentifier.localEpisodes(_:))
  {
    (*(v10 + 96))(v13, v9);
    v16 = *v13;
    if (*(*v13 + 16))
    {
      v18 = *(v16 + 32);
      v17 = *(v16 + 40);

      return v18;
    }

    v21 = *v13;

    return 0;
  }

  if (v14 != enum case for MediaIdentifier.localPodcast(_:))
  {
    if (v14 == enum case for MediaIdentifier.station(_:))
    {
      (*(v10 + 96))(v13, v9);
      v19 = v13[1];
      if (v13[3])
      {
        result = v13[2];
        v20 = *v13;
        return result;
      }

      v25 = v13[1];

      return 0;
    }

    if (v14 != enum case for MediaIdentifier.snapshot(_:) && v14 != enum case for MediaIdentifier.mediaQuery(_:) && v14 != enum case for MediaIdentifier.universalEpisodeIdentifiers(_:) && v14 == enum case for MediaIdentifier.library(_:))
    {
      return 0;
    }

LABEL_3:
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  (*(v10 + 8))(v13, v9);
  sub_597F4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_9708(v3, &qword_7E2A0, &qword_5C8F0);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v22 = sub_595F4();
  v24 = v23;
  (*(v5 + 8))(v8, v4);
  if (v24)
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B094()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A0, qword_5C900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackController.QueueCommand();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1CC(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackController.QueueCommand();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Dependencies.allDependencies()()
{
  v0 = sub_5A084();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A8, &qword_5C918);
  sub_5A074();
  type metadata accessor for PlaybackController(0);
  sub_5A074();
  sub_5A0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7B0, qword_5C920);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5BC80;
  (*(v1 + 16))(v10 + v9, v7, v0);
  sub_5A0A4();
  v11 = sub_5A0B4();

  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v7, v0);
  return v11;
}

uint64_t sub_1B434@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_597A4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_59794();
  *a1 = result;
  return result;
}

uint64_t sub_1B474@<X0>(uint64_t *a1@<X8>)
{
  sub_5A0D4();
  sub_5A0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A8, &qword_5C918);
  sub_5A094();
  v2 = type metadata accessor for PlaybackController(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = PlaybackController.init(reachability:)(v7);

  *a1 = v5;
  return result;
}

uint64_t PendingPlaybackController.__allocating_init(pendingPlaybackStore:playbackController:playStateEstimationProvider:legacyPlayerController:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_12440(a3, v8 + 32);
  *(v8 + 24) = a2;
  sub_12440(a4, v8 + 72);
  return v8;
}

uint64_t PendingPlaybackController.init(pendingPlaybackStore:playbackController:playStateEstimationProvider:legacyPlayerController:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  sub_12440(a3, v4 + 32);
  *(v4 + 24) = a2;
  sub_12440(a4, v4 + 72);
  return v4;
}

uint64_t PendingPlaybackController.__allocating_init(asPartOf:)()
{
  type metadata accessor for PendingPlaybackStore();
  sub_5A0D4();
  sub_5A0E4();
  type metadata accessor for PlaybackController(0);
  sub_5A0E4();
  v0 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7B8, "8<");
  sub_5A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7C0, "8<");
  sub_5A0E4();

  v1 = swift_allocObject();
  *(v1 + 16) = v6;
  sub_12440(&v4, v1 + 32);
  *(v1 + 24) = v0;
  sub_12440(&v3, v1 + 72);
  return v1;
}

uint64_t PendingPlaybackController.preflight(_:)(uint64_t a1)
{
  v86 = sub_59984();
  v79 = *(v86 - 8);
  v2 = *(v79 + 64);
  __chkstk_darwin(v86);
  v75 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v84 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v67 - v8;
  v10 = *a1;
  v78 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = sub_595D4();
  v98 = v16;
  v17 = sub_A5B8();
  v99 = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
  v19 = enum case for Podcasts.responsivePlayback(_:);
  v20 = *(v16 - 8);
  v21 = *(v20 + 104);
  v22 = v20 + 104;
  v21(boxed_opaque_existential_1, enum case for Podcasts.responsivePlayback(_:), v16);
  LOBYTE(a1) = sub_595B4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v95);
  if (a1)
  {
    v67 = v22;
    v68 = v21;
    v69 = v19;
    v70 = v17;
    v71 = v16;
    v77 = v9;
    v73 = v11;
    v72 = v12;
    v74 = v10;
    v24 = sub_59B94();
    v25 = v24 + 56;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 56);
    v29 = (v26 + 63) >> 6;
    v80 = (v79 + 48);
    v83 = v24;

    v30 = 0;
    v76 = _swiftEmptyArrayStorage;
    v82 = v25;
    v81 = v29;
LABEL_5:
    v31 = v30;
    if (!v28)
    {
      goto LABEL_7;
    }

    do
    {
      v30 = v31;
LABEL_10:
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v33 = *(v83 + 48) + 24 * (v32 | (v30 << 6));
      v34 = *v33;
      v35 = *(v33 + 8);
      v36 = *(v33 + 16);
      v37 = v85[7];
      v38 = v85[8];
      __swift_project_boxed_opaque_existential_1(v85 + 4, v37);
      v87 = *(v38 + 8);
      sub_5340(v34, v35, v36);
      v39 = v84;
      v87(v34, v35, v36, v37, v38);
      sub_5350(v34, v35, v36);
      if ((*v80)(v39, 1, v86) != 1)
      {
        sub_11AAC(v39, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_1C558(0, v76[2] + 1, 1, v76, &qword_7D888, &qword_5CA58, &type metadata accessor for EpisodePlayState);
        }

        v25 = v82;
        v41 = v76[2];
        v40 = v76[3];
        if (v41 >= v40 >> 1)
        {
          v76 = sub_1C558(v40 > 1, v41 + 1, 1, v76, &qword_7D888, &qword_5CA58, &type metadata accessor for EpisodePlayState);
        }

        v42 = v76;
        v76[2] = v41 + 1;
        result = sub_11AAC(v75, v42 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v41);
        v29 = v81;
        goto LABEL_5;
      }

      result = sub_AD84(v39);
      v31 = v30;
      v25 = v82;
      v29 = v81;
    }

    while (v28);
    while (1)
    {
LABEL_7:
      v30 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      if (v30 >= v29)
      {
        break;
      }

      v28 = *(v25 + 8 * v30);
      ++v31;
      if (v28)
      {
        goto LABEL_10;
      }
    }

    if (v76[2])
    {
      v43 = v79;
      v44 = v77;
      sub_5B84(v76 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v77);
      v45 = 0;
    }

    else
    {
      v45 = 1;
      v44 = v77;
      v43 = v79;
    }

    v46 = v78;
    v47 = v74;
    v48 = v73;
    v49 = v72;

    (*(v43 + 56))(v44, v45, 1, v86);
    v88 = v47;
    v89 = v46;
    v90 = v48;
    v91 = v49;
    v92 = v13;
    v93 = v14;
    v94 = v15;
    PendingPlaybackMetadata.withPlayState(with:)(v44, &v95);
    v50 = v98;
    if (v98 != 1)
    {
      v51 = v95;
      v52 = v96;
      v53 = v97;
      v55 = v99;
      v54 = v100;
      v56 = v101;
      v57 = v85[2];
      v58 = v71;
      v98 = v71;
      v99 = v70;
      v59 = __swift_allocate_boxed_opaque_existential_1(&v95);
      v68(v59, v69, v58);
      LOBYTE(v58) = sub_595B4();
      __swift_destroy_boxed_opaque_existential_0Tm(&v95);
      if (v58)
      {
        swift_beginAccess();
        v60 = *(v57 + 16);
        v95 = v51;
        v96 = v52 & 1;
        v97 = v53;
        v98 = v50;
        v99 = v55;
        v100 = v54;
        v101 = v56;

        sub_1C73C(v51, v52, v53, v50);
        sub_59D84();

        sub_A674(v95, v96, v97, v98);
      }

      v61 = v54;
      if (([objc_opt_self() supportsBlueMoon] & 1) == 0)
      {
        v62 = v85[3];
        swift_getKeyPath();
        swift_getKeyPath();
        sub_59E24();

        v44 = v77;

        v63 = v95;
        if (!v95 || (v64 = [v95 isDeviceRoute], v63, v64))
        {
          v65 = v85[12];
          v66 = v85[13];
          __swift_project_boxed_opaque_existential_1(v85 + 9, v65);
          v95 = v51;
          LOBYTE(v96) = v52 & 1;
          v97 = v53;
          v98 = v50;
          v99 = v55;
          v100 = v61;
          v101 = v56;
          (*(v66 + 8))(&v95, v65, v66);
          sub_AD84(v77);
          return sub_A674(v51, v52, v53, v50);
        }
      }

      sub_A674(v51, v52, v53, v50);
    }

    return sub_AD84(v44);
  }

  return result;
}

Swift::Void __swiftcall PendingPlaybackController.reset()()
{
  v1 = *(v0 + 16);
  v2 = sub_595D4();
  v6 = v2;
  v7 = sub_A5B8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.responsivePlayback(_:), v2);
  LOBYTE(v2) = sub_595B4();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  if (v2)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    memset(v5, 0, sizeof(v5));
    v6 = 1;
    v8 = 0;
    v9 = 0;
    v7 = 0;

    sub_59D84();
  }
}

void *PendingPlaybackController.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);
  return v0;
}

uint64_t PendingPlaybackController.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 9);

  return swift_deallocClassInstance();
}

uint64_t sub_1C0C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a2 = v5;
  return result;
}

uint64_t sub_1C148(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_59E34();
}

char *sub_1C1C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F410, &qword_5CA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_1C304(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1C410(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C558(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

uint64_t sub_1C73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

char *sub_1C7A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D880, &unk_5CA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t PlaybackController.PreferredJumpInterval.localizedStringForSkipBackward.getter()
{
  v1 = fabs(*v0);
  isa = sub_5A3C4().super.super.isa;
  v3 = IMAccessibilityLocalizedNumber();

  if (v3)
  {
    v4 = sub_5A194();
    v6 = v5;
  }

  else
  {
    sub_5A3D4();
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [objc_opt_self() mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x2520646E69776552;
  v13._object = 0xED00006365732040;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v8.super.isa = v7;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_59484(v13, v14, v8, v15, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_5BC80;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_502C();
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  v10 = sub_5A184();

  return v10;
}

uint64_t PlaybackController.PreferredJumpInterval.localizedStringForSkipForward.getter()
{
  v1 = fabs(*(v0 + 8));
  isa = sub_5A3C4().super.super.isa;
  v3 = IMAccessibilityLocalizedNumber();

  if (v3)
  {
    v4 = sub_5A194();
    v6 = v5;
  }

  else
  {
    sub_5A3D4();
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = [objc_opt_self() mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v13._countAndFlagsBits = 0x2040252070696B53;
  v13._object = 0xEB00000000636573;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v8.super.isa = v7;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_59484(v13, v14, v8, v15, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_5BC80;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_502C();
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  v10 = sub_5A184();

  return v10;
}

uint64_t MPCPlayerResponse.currentItem.getter()
{
  v1 = [v0 playerPath];
  v2 = [v1 isInProcess];

  if ((v2 & 1) != 0 || (v3 = [v0 playerPath], v4 = objc_msgSend(v3, "isNativePodcastsPath"), v3, v4))
  {
    v5 = [v0 tracklist];
    v6 = [v5 playingItem];

    if (v6)
    {
      v7 = [v6 metadataObject];

      if (v7)
      {
        v8 = [v7 flattenedGenericObject];

        if (v8)
        {
          v9 = [v8 anyObject];

          if (v9)
          {
            objc_opt_self();
            result = swift_dynamicCastObjCClass();
            if (result)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

void *sub_1CD1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_5A814();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_10618(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_5A724();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10618((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_4FE4(0, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
        v16 = sub_19D34(&qword_7E270, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_12440(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_10618((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_4FE4(0, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
        v16 = sub_19D34(&qword_7E270, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_12440(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1CF54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_10658(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v15 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        sub_10658((v7 > 1), v8 + 1, 1);
        v5 = v10;
        v2 = v15;
      }

      v13 = &type metadata for PlaybackController.TransportCommand;
      v14 = &protocol witness table for PlaybackController.TransportCommand;
      v11 = v5;
      v12 = v6;
      v2[2] = v8 + 1;
      sub_12440(&v11, &v2[5 * v8 + 4]);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PlaybackController.__allocating_init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A8, &qword_5C918);
  sub_5A094();
  v0 = type metadata accessor for PlaybackController(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PlaybackController.init(reachability:)(v5);

  return v3;
}

uint64_t PlaybackController.ErrorDialog.dialog.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_59B64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaybackController.ErrorDialog.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaybackController.ErrorDialog(0) + 20));
  swift_errorRetain();
  return v1;
}

uint64_t sub_1D1BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a2 = v5;
  return result;
}

uint64_t sub_1D23C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_59E34();
}

uint64_t sub_1D2B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v1;
}

uint64_t sub_1D324(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC0, &qword_5CE98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8E8, &qword_5CB28);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1D500(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB8, &qword_5CE90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1D6C8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_59E34();
}

uint64_t sub_1D750(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA0, &qword_5CE78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

double sub_1D8F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1D980(__int128 *a1, uint64_t *a2)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = a1[1];
  v7 = *a1;

  return sub_59E34();
}

double sub_1DA1C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1DAA8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB0, &qword_5CE88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D918, &qword_5CC18);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

double sub_1DC48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1DCD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_59E34();
}

uint64_t sub_1DD54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();
}

uint64_t sub_1DDCC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA8, &qword_5CE80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D928, &unk_5CC68);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1DF80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a2 = v5;
  return result;
}

uint64_t sub_1DFFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  return sub_59E34();
}

uint64_t sub_1E08C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB90, &qword_5CE68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D998, &qword_5CCC0);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1E240()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v1;
}

uint64_t sub_1E2AC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1E44C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a2 = v5;
  return result;
}

uint64_t sub_1E4CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_59E34();
}

uint64_t sub_1E548()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v1;
}

uint64_t sub_1E5BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_59E04();
  return swift_endAccess();
}

uint64_t sub_1E638(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB98, &qword_5CE70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9B8, &unk_5CD60);
  sub_59E14();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1E7D8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_59E04();
  return swift_endAccess();
}

uint64_t sub_1E850()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D8, &qword_5CD80);
  v41 = *(v38 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v38);
  v32 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9E0, &qword_5CD88);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v37 = &v31 - v14;
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v15, v44);
  v16 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v43 = (*(v17 + 8))(v16, v17);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v18 = v31;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v19 = v34;
  sub_59F64();
  (*(v36 + 8))(v18, v19);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v20 = v33;
  v21 = sub_59E74();
  (*(v35 + 8))(v8, v20);
  v44[0] = v21;
  v22 = v32;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v44[0] = v23;
  v24 = sub_5A4A4();
  v25 = v42;
  (*(*(v24 - 8) + 56))(v42, 1, 1, v24);
  sub_5108(&qword_7DA48, &qword_7D9D8, &qword_5CD80);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v27 = v37;
  v26 = v38;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v41 + 8))(v22, v26);
  sub_5108(&qword_7DA58, &qword_7D9E0, &qword_5CD88);
  v28 = v39;
  v29 = sub_59E74();
  (*(v40 + 8))(v27, v28);
  return v29;
}

void sub_1EEE8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if ([*a1 state] == &dword_0 + 2)
    {
      v4 = [v3 playerPath];
      v5 = [v4 isInProcess];

      if (v5)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        v6 = [v3 playerPath];
        LOBYTE(v3) = [v6 isNativePodcastsPath];
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *a2 = v3;
}

uint64_t MPCPlayerResponse.isSystemPodcastsResponse.getter()
{
  v1 = [v0 playerPath];
  v2 = [v1 isInProcess];

  if (v2)
  {
    return 1;
  }

  v4 = [v0 playerPath];
  v5 = [v4 isNativePodcastsPath];

  return v5;
}

uint64_t sub_1F03C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA60, &qword_5CDA8);
  v41 = *(v38 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v38);
  v32 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA68, &qword_5CDB0);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v37 = &v31 - v14;
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v15, v44);
  v16 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v43 = (*(v17 + 8))(v16, v17);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v18 = v31;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v19 = v34;
  sub_59F64();
  (*(v36 + 8))(v18, v19);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v20 = v33;
  v21 = sub_59E74();
  (*(v35 + 8))(v8, v20);
  v44[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA70, &unk_5CDB8);
  v22 = v32;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v44[0] = v23;
  v24 = sub_5A4A4();
  v25 = v42;
  (*(*(v24 - 8) + 56))(v42, 1, 1, v24);
  sub_5108(&qword_7DA78, &qword_7DA60, &qword_5CDA8);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v27 = v37;
  v26 = v38;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v41 + 8))(v22, v26);
  sub_5108(&qword_7DA80, &qword_7DA68, &qword_5CDB0);
  v28 = v39;
  v29 = sub_59E74();
  (*(v40 + 8))(v27, v28);
  return v29;
}

void sub_1F6E4(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0;
  if (v3 && (v5 = [v3 tracklist], v6 = objc_msgSend(v5, "playingItem"), v5, v6) && (v7 = objc_msgSend(v6, "playbackRateCommand"), v6, v7))
  {
    [v7 preferredPlaybackRate];
    v4 = v8;
    swift_unknownObjectRelease();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  *a2 = v4;
  *(a2 + 4) = v9;
}

uint64_t sub_1F7AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA88, &qword_5CDC8);
  v41 = *(v38 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v38);
  v32 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA90, &qword_5CDD0);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v37 = &v31 - v14;
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v15, v44);
  v16 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v43 = (*(v17 + 8))(v16, v17);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v18 = v31;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v19 = v34;
  sub_59F64();
  (*(v36 + 8))(v18, v19);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v20 = v33;
  v21 = sub_59E74();
  (*(v35 + 8))(v8, v20);
  v44[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA98, &qword_5CDD8);
  v22 = v32;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v44[0] = v23;
  v24 = sub_5A4A4();
  v25 = v42;
  (*(*(v24 - 8) + 56))(v42, 1, 1, v24);
  sub_5108(&qword_7DAA0, &qword_7DA88, &qword_5CDC8);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v27 = v37;
  v26 = v38;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v41 + 8))(v22, v26);
  sub_5108(&qword_7DAA8, &qword_7DA90, &qword_5CDD0);
  v28 = v39;
  v29 = sub_59E74();
  (*(v40 + 8))(v27, v28);
  return v29;
}

void sub_1FE54(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 tracklist];
    v5 = [v4 sleepTimerCommand];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_1FEC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v62 = &v43 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v49 = *(v47 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v47);
  v44 = &v43 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v48 = *(v46 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v46);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAB0, &qword_5CDE0);
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v50 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAB8, &qword_5CDE8);
  v14 = *(v13 - 8);
  v55 = v13;
  v56 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v51 = &v43 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAC0, &qword_5CDF0);
  v61 = *(v58 - 8);
  v17 = *(v61 + 64);
  __chkstk_darwin(v58);
  v52 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAC8, &qword_5CDF8);
  v20 = *(v19 - 8);
  v59 = v19;
  v60 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v57 = &v43 - v22;
  v23 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  v45 = v0;
  swift_beginAccess();
  sub_123D8(v0 + v23, v64);
  v24 = v65;
  v25 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v63 = (*(v25 + 8))(v24, v25);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v26 = v44;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v27 = v47;
  sub_59F64();
  (*(v49 + 8))(v26, v27);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v28 = v46;
  v29 = sub_59E74();
  (*(v48 + 8))(v8, v28);
  v64[0] = v29;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  v30 = v50;
  sub_59E94();

  sub_5108(&qword_7DAD0, &qword_7DAB0, &qword_5CDE0);
  v31 = v51;
  v32 = v53;
  sub_59F14();
  (*(v54 + 8))(v30, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAD8, &qword_5CE00);
  sub_5108(&qword_7DAE0, &qword_7DAB8, &qword_5CDE8);
  v33 = v52;
  v34 = v55;
  sub_59E84();
  (*(v56 + 8))(v31, v34);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v35 = sub_5A504();
  v64[0] = v35;
  v36 = sub_5A4A4();
  v37 = v62;
  (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
  sub_5108(&qword_7DAE8, &qword_7DAC0, &qword_5CDF0);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v39 = v57;
  v38 = v58;
  sub_59F34();
  sub_9708(v37, &unk_7D9C0, &unk_5C810);

  (*(v61 + 8))(v33, v38);
  sub_5108(&qword_7DAF0, &qword_7DAC8, &qword_5CDF8);
  v40 = v59;
  v41 = sub_59E74();
  (*(v60 + 8))(v39, v40);
  return v41;
}

uint64_t sub_2084C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
    (*(v3 + 64))(1, v2, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_2090C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
    (*(v3 + 64))(0, v2, v3);
    swift_endAccess();
  }

  return result;
}

void *sub_209CC(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = [result request];
    v3 = sub_49750();

    return (v3 & 1);
  }

  return result;
}

void sub_20A1C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 && (v3 = MPCPlayerResponse.currentItem.getter()) != 0 && (v4 = v3, v5 = [v3 transcriptAlignments], v4, v5))
  {
    sub_4FE4(0, &qword_7E3B8, MPTranscriptAlignment_ptr);
    v6 = sub_5A294();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t sub_20AB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAF8, &qword_5CE08);
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19);
  v7 = &v18 - v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB00, &qword_5CE10);
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v20);
  v11 = &v18 - v10;
  v21 = sub_214E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB08, &qword_5CE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  sub_5108(&qword_7DB18, &qword_7DB08, &qword_5CE18);
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v12 = sub_5A504();
  v21 = v12;
  v13 = sub_5A4A4();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_5108(&qword_7DB20, &qword_7DAF8, &qword_5CE08);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v14 = v19;
  sub_59F34();
  sub_9708(v3, &unk_7D9C0, &unk_5C810);

  (*(v4 + 8))(v7, v14);
  sub_5108(&qword_7DB28, &qword_7DB00, &qword_5CE10);
  v15 = v20;
  v16 = sub_59E74();
  (*(v8 + 8))(v11, v15);
  return v16;
}

void sub_20E70(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 chapters]) != 0)
  {
    v5 = v4;
    sub_4FE4(0, &qword_7E390, MPModelPodcastChapter_ptr);
    v6 = sub_5A294();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
}

uint64_t sub_20EF8@<X0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  sub_2F368(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 32))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v8);
  *a2 = v6;
  return result;
}

uint64_t sub_20F7C(float *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2F368(&v9);
  v4 = v10;
  v5 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(&v9, v10);
  (*(v5 + 40))(v4, v5, v2);
  sub_12440(&v9, v8);
  v6 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_312E8(v8, v3 + v6, &qword_7DB38, &qword_5CE28);
  return swift_endAccess();
}

float sub_21044()
{
  sub_2F368(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 32))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2;
}

uint64_t sub_210C0(float a1)
{
  v2 = v1;
  sub_2F368(&v9);
  v4 = v10;
  v5 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(&v9, v10);
  (*(v5 + 40))(v4, v5, a1);
  sub_12440(&v9, v8);
  v6 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_312E8(v8, v2 + v6, &qword_7DB38, &qword_5CE28);
  return swift_endAccess();
}

void (*sub_21184(uint64_t **a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[13] = v1;
  sub_2F368(v3);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  *(v4 + 28) = v7;
  return sub_2124C;
}

void sub_2124C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 112);
  v3 = *(*a1 + 104);
  sub_2F368(*a1);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 40))(v4, v5, v2);
  sub_12440(v1, v1 + 40);
  v6 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_312E8(v1 + 40, v3 + v6, &qword_7DB38, &qword_5CE28);
  swift_endAccess();

  free(v1);
}

uint64_t sub_2132C()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_21398()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 16))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_21404()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 24))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_21470()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 56))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  return v0 & 1;
}

uint64_t sub_214E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E398, &qword_5D328);
  v41 = *(v38 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v38);
  v32 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E3A0, &qword_5D330);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v37 = &v31 - v14;
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v15, v44);
  v16 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v43 = (*(v17 + 8))(v16, v17);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v18 = v31;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v19 = v34;
  sub_59F64();
  (*(v36 + 8))(v18, v19);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v20 = v33;
  v21 = sub_59E74();
  (*(v35 + 8))(v8, v20);
  v44[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC8, &qword_5CEA0);
  v22 = v32;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v44[0] = v23;
  v24 = sub_5A4A4();
  v25 = v42;
  (*(*(v24 - 8) + 56))(v42, 1, 1, v24);
  sub_5108(&qword_7E3A8, &qword_7E398, &qword_5D328);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v27 = v37;
  v26 = v38;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v41 + 8))(v22, v26);
  sub_5108(&qword_7E3B0, &qword_7E3A0, &qword_5D330);
  v28 = v39;
  v29 = sub_59E74();
  (*(v40 + 8))(v27, v28);
  return v29;
}

uint64_t sub_21B8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    result = MPCPlayerResponse.currentItem.getter();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_21BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E340, &qword_5D300);
  v41 = *(v38 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v38);
  v32 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E348, &qword_5D308);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v37 = &v31 - v14;
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v15, v44);
  v16 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v43 = (*(v17 + 8))(v16, v17);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v18 = v31;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v19 = v34;
  sub_59F64();
  (*(v36 + 8))(v18, v19);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v20 = v33;
  v21 = sub_59E74();
  (*(v35 + 8))(v8, v20);
  v44[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD8, &qword_5CEB0);
  v22 = v32;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v44[0] = v23;
  v24 = sub_5A4A4();
  v25 = v42;
  (*(*(v24 - 8) + 56))(v42, 1, 1, v24);
  sub_5108(&qword_7E350, &qword_7E340, &qword_5D300);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v27 = v37;
  v26 = v38;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v41 + 8))(v22, v26);
  sub_5108(&qword_7E358, &qword_7E348, &qword_5D308);
  v28 = v39;
  v29 = sub_59E74();
  (*(v40 + 8))(v27, v28);
  return v29;
}

void sub_2226C(id *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = [v3 playerPath];
    v5 = [v4 isInProcess];

    if (((v5 & 1) != 0 || (v6 = [v3 playerPath], v7 = objc_msgSend(v6, "isNativePodcastsPath"), v6, v7)) && (v8 = objc_msgSend(v3, "tracklist"), v9 = objc_msgSend(v8, "playingItem"), v8, v9))
    {
      [v9 duration];
      v15 = v18;
      v16 = v17;
      v14 = v19;
      v10 = v20;
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v10 = 2;
      v14 = 0u;
    }

    v12 = v15;
    v11 = v16;
    v13 = v14;
  }

  else
  {
    v11 = 0uLL;
    v10 = 2;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 48) = v10;
}

uint64_t sub_223BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v52 = &v37 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v44 = *(v42 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v42);
  v38 = &v37 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v43 = *(v41 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v41);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E308, &qword_5D2E0);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v40 = &v37 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E310, &qword_5D2E8);
  v51 = *(v48 - 8);
  v13 = *(v51 + 64);
  __chkstk_darwin(v48);
  v39 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E318, &qword_5D2F0);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v47 = &v37 - v18;
  v19 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v19, v54);
  v20 = v55;
  v21 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v53 = (*(v21 + 8))(v20, v21);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v22 = v38;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v23 = v42;
  sub_59F64();
  (*(v44 + 8))(v22, v23);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v24 = v41;
  v25 = sub_59E74();
  (*(v43 + 8))(v8, v24);
  v54[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E320, &qword_5D2F8);
  v26 = v40;
  sub_59EC4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE0, &qword_5CEB8);
  v27 = v39;
  v28 = v45;
  sub_59D24();
  (*(v46 + 8))(v26, v28);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v29 = sub_5A504();
  v54[0] = v29;
  v30 = sub_5A4A4();
  v31 = v52;
  (*(*(v30 - 8) + 56))(v52, 1, 1, v30);
  sub_5108(&qword_7E328, &qword_7E310, &qword_5D2E8);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v33 = v47;
  v32 = v48;
  sub_59F34();
  sub_9708(v31, &unk_7D9C0, &unk_5C810);

  (*(v51 + 8))(v27, v32);
  sub_5108(&qword_7E330, &qword_7E318, &qword_5D2F0);
  v34 = v49;
  v35 = sub_59E74();
  (*(v50 + 8))(v33, v34);
  return v35;
}

void sub_22B60(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 tracklist], v5 = objc_msgSend(v4, "playingItem"), v4, v5))
  {
    v6 = [v5 seekCommand];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_22BF4(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v6 = [*a1 preferredBackwardJumpIntervals];
  sub_4FE4(0, &qword_7E338, NSNumber_ptr);
  v7 = sub_5A294();

  if (v7 >> 62)
  {
    if (!sub_5A814())
    {
      goto LABEL_17;
    }
  }

  else if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_5A724();
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_20;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v2 = &off_7B000;
  [v9 doubleValue];
  v3 = v10;

  v11 = [v5 preferredForwardJumpIntervals];
  v12 = sub_5A294();

  if (!(v12 >> 62))
  {
    if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (!sub_5A814())
  {
LABEL_17:

LABEL_18:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v13 = sub_5A724();
    goto LABEL_12;
  }

  if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(v12 + 32);
LABEL_12:
    v14 = v13;

    [v14 v2[437]];
    v16 = v15;

    *a2 = v3;
    *(a2 + 8) = v16;
    *(a2 + 16) = 0;
    return;
  }

  __break(1u);
}

uint64_t sub_22DC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v42 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v34);
  v31 = &v31 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v35 = *(v33 - 8);
  v6 = *(v35 + 64);
  __chkstk_darwin(v33);
  v8 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2E8, &qword_5D2C8);
  v41 = *(v38 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v38);
  v32 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2F0, &unk_5D2D0);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v37 = &v31 - v14;
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v15, v44);
  v16 = v45;
  v17 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v43 = (*(v17 + 8))(v16, v17);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v18 = v31;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v19 = v34;
  sub_59F64();
  (*(v36 + 8))(v18, v19);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v20 = v33;
  v21 = sub_59E74();
  (*(v35 + 8))(v8, v20);
  v44[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD0, &qword_5CEA8);
  v22 = v32;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v44[0] = v23;
  v24 = sub_5A4A4();
  v25 = v42;
  (*(*(v24 - 8) + 56))(v42, 1, 1, v24);
  sub_5108(&qword_7E2F8, &qword_7E2E8, &qword_5D2C8);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v27 = v37;
  v26 = v38;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v41 + 8))(v22, v26);
  sub_5108(&qword_7E300, &qword_7E2F0, &unk_5D2D0);
  v28 = v39;
  v29 = sub_59E74();
  (*(v40 + 8))(v27, v28);
  return v29;
}

uint64_t sub_23478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v52 = &v37 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v44 = *(v42 - 8);
  v4 = *(v44 + 64);
  __chkstk_darwin(v42);
  v38 = &v37 - v5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v43 = *(v41 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v41);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2C0, &qword_5D2B0);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v40 = &v37 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2C8, &qword_5D2B8);
  v51 = *(v48 - 8);
  v13 = *(v51 + 64);
  __chkstk_darwin(v48);
  v39 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2D0, &qword_5D2C0);
  v16 = *(v15 - 8);
  v49 = v15;
  v50 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v47 = &v37 - v18;
  v19 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v19, v54);
  v20 = v55;
  v21 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v53 = (*(v21 + 8))(v20, v21);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  v22 = v38;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v23 = v42;
  sub_59F64();
  (*(v44 + 8))(v22, v23);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v24 = v41;
  v25 = sub_59E74();
  (*(v43 + 8))(v8, v24);
  v54[0] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DA20, &qword_5CDA0);
  v26 = v40;
  sub_59EC4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE8, &unk_5CEC0);
  v27 = v39;
  v28 = v45;
  sub_59D24();
  (*(v46 + 8))(v26, v28);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v29 = sub_5A504();
  v54[0] = v29;
  v30 = sub_5A4A4();
  v31 = v52;
  (*(*(v30 - 8) + 56))(v52, 1, 1, v30);
  sub_5108(&qword_7E2D8, &qword_7E2C8, &qword_5D2B8);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
  v33 = v47;
  v32 = v48;
  sub_59F34();
  sub_9708(v31, &unk_7D9C0, &unk_5C810);

  (*(v51 + 8))(v27, v32);
  sub_5108(&qword_7E2E0, &qword_7E2D0, &qword_5D2C0);
  v34 = v49;
  v35 = sub_59E74();
  (*(v50 + 8))(v33, v34);
  return v35;
}

void sub_23C1C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 playerPath];
    v5 = [v4 isInProcess];

    if ((v5 & 1) != 0 || (v6 = [v3 playerPath], v7 = objc_msgSend(v6, "isNativePodcastsPath"), v6, v7))
    {
      v8 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  *a2 = v3;
}

id sub_23CD4@<X0>(id *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result *a2];
  }

  *a3 = result;
  return result;
}

uint64_t sub_23D10()
{
  if ([objc_opt_self() supportsBlueMoon] && (v0 = objc_msgSend(objc_opt_self(), "mainBundle"), v1 = sub_23E6C(), v0, (v1 & 1) != 0))
  {
    if (qword_7CC68 != -1)
    {
      swift_once();
    }

    v6[0] = xmmword_7D8B0;
    v6[1] = *&qword_7D8C0;
    v7 = qword_7D8D0;
    v8 = xmmword_7D8B0;
    v9 = *&qword_7D8C0;
    v10 = qword_7D8D0;
    v2 = objc_allocWithZone(_s9MPCPlayerCMa());
    sub_32DEC(&v8, v5);
    sub_32DEC(&v9, v5);
    sub_9768(&v10, v5, &unk_7ED60, &qword_5D320);
    result = sub_3B99C(v6);
    v4 = &off_73628;
  }

  else
  {
    type metadata accessor for EmptyPlayer();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0;
    v4 = &off_735C0;
  }

  *&xmmword_7D8A0 = result;
  *(&xmmword_7D8A0 + 1) = v4;
  return result;
}

uint64_t sub_23E6C()
{
  result = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  if (result)
  {
    v2 = result;
    v3 = sub_5A194();
    v5 = v4;

    v6 = [v0 bundleIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = sub_5A194();
      v10 = v9;

      if (v8 == v3 && v10 == v5)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_5A8E4();
      }
    }

    else
    {
      v12 = 0;
    }

    return v12 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23F34()
{
  if (qword_7CC70 != -1)
  {
    swift_once();
  }

  xmmword_7D8B0 = xmmword_80BD0;
  qword_7D8C0 = qword_80BE0;
  unk_7D8C8 = unk_80BE8;
  qword_7D8D0 = qword_80BF0;
}

uint64_t sub_23FE8(uint64_t a1, uint64_t *a2)
{
  sub_9768(a1, v9, &qword_7DB40, &qword_5CE30);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  sub_2F4CC(v9, v3 + v4);
  swift_endAccess();
  if (qword_7CC60 != -1)
  {
    swift_once();
  }

  v5 = *(&xmmword_7D8A0 + 1);
  ObjectType = swift_getObjectType();
  sub_9768(v3 + v4, v8, &qword_7DB40, &qword_5CE30);
  (*(v5 + 40))(v8, ObjectType, v5);
  return sub_9708(v9, &qword_7DB40, &qword_5CE30);
}

uint64_t sub_24110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  return sub_9768(v1 + v3, a1, &qword_7DB40, &qword_5CE30);
}

uint64_t sub_24178(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  sub_2F4CC(a1, v1 + v3);
  swift_endAccess();
  if (qword_7CC60 != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_7D8A0 + 1);
  ObjectType = swift_getObjectType();
  sub_9768(v1 + v3, v7, &qword_7DB40, &qword_5CE30);
  (*(v4 + 40))(v7, ObjectType, v4);
  return sub_9708(a1, &qword_7DB40, &qword_5CE30);
}

void (*sub_24288(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  swift_beginAccess();
  return sub_24310;
}

void sub_24310(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (qword_7CC60 != -1)
    {
      swift_once();
    }

    v5 = v3[5];
    v4 = v3[6];
    v6 = *(&xmmword_7D8A0 + 1);
    ObjectType = swift_getObjectType();
    sub_9768(v5 + v4, v3, &qword_7DB40, &qword_5CE30);
    (*(v6 + 40))(v3, ObjectType, v6);
  }

  free(v3);
}

uint64_t sub_243EC()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v18 = *(v16 - 8);
  v1 = *(v18 + 64);
  __chkstk_darwin(v16);
  v3 = &v14 - v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v17 = *(v15 - 8);
  v4 = *(v17 + 64);
  __chkstk_darwin(v15);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v7, v20);
  v9 = v21;
  v8 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v19 = (*(v8 + 8))(v9, v8);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
  sub_19C84();
  v10 = v16;
  sub_59F64();
  (*(v18 + 8))(v3, v10);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
  v11 = v15;
  v12 = sub_59E74();
  (*(v17 + 8))(v6, v11);
  return v12;
}

uint64_t sub_2474C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E3C0, &qword_5D338);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E3C8, &unk_5D340);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DA20, &qword_5CDA0);
    sub_59DD4();
    sub_5108(&qword_7E3D0, &qword_7E3C0, &qword_5D338);
    v14 = sub_59E74();
    result = (*(v5 + 8))(v8, v4);
  }

  else
  {
    v18 = *a1;
    v16 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DA20, &qword_5CDA0);
    sub_59DC4();
    sub_5108(&qword_7E3D8, &qword_7E3C8, &unk_5D340);
    v14 = sub_59E74();
    result = (*(v10 + 8))(v13, v9);
  }

  *a2 = v14;
  return result;
}

uint64_t sub_249B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB48, &qword_5CE38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DB50, &unk_5CE40);
  sub_5108(&qword_7D6C8, &unk_7DB50, &unk_5CE40);
  sub_59E84();

  sub_5108(&qword_7DB60, &qword_7DB48, &qword_5CE38);
  v6 = sub_59E74();
  (*(v2 + 8))(v5, v1);
  return v6;
}

double sub_24B78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9768(a1, v4, &qword_7D7A0, qword_5C900);
  if (!v5)
  {
    sub_9708(v4, &qword_7D7A0, qword_5C900);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    result = 0.0;
    *a2 = xmmword_5CA70;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_24C20()
{
  v1 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController;
  if (*(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController);
  }

  else
  {
    type metadata accessor for PlaybackController.QueueController();
    v2 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_24CC8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController);
  *(v1 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController) = a1;
}

uint64_t (*sub_24CE0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24C20();
  return sub_24D28;
}

uint64_t sub_24D28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController);
  *(v1 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController) = v2;
}

uint64_t PlaybackController.__allocating_init(reachability:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PlaybackController.init(reachability:)(a1);
  return v5;
}

uint64_t PlaybackController.init(reachability:)(uint64_t a1)
{
  v2 = v1;
  v224 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v164 = &v163 - v5;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v173 = *(v174 - 8);
  v6 = *(v173 + 64);
  v7 = __chkstk_darwin(v174);
  v171 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v172 = &v163 - v9;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB80, &qword_5CE58);
  v166 = *(v167 - 8);
  v10 = *(v166 + 64);
  __chkstk_darwin(v167);
  v165 = &v163 - v11;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB88, &qword_5CE60);
  v169 = *(v170 - 8);
  v12 = *(v169 + 64);
  __chkstk_darwin(v170);
  v168 = &v163 - v13;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB90, &qword_5CE68);
  v216 = *(v217 - 8);
  v14 = *(v216 + 64);
  v15 = __chkstk_darwin(v217);
  v214 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v215 = &v163 - v17;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB98, &qword_5CE70);
  v212 = *(v213 - 8);
  v18 = *(v212 + 64);
  v19 = __chkstk_darwin(v213);
  v210 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v211 = &v163 - v21;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA0, &qword_5CE78);
  v208 = *(v209 - 8);
  v22 = *(v208 + 64);
  v23 = __chkstk_darwin(v209);
  v206 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v207 = &v163 - v25;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA8, &qword_5CE80);
  v204 = *(v205 - 8);
  v26 = *(v204 + 64);
  v27 = __chkstk_darwin(v205);
  v202 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v203 = &v163 - v29;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB0, &qword_5CE88);
  v200 = *(v201 - 8);
  v30 = *(v200 + 64);
  v31 = __chkstk_darwin(v201);
  v198 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v199 = &v163 - v33;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB8, &qword_5CE90);
  v196 = *(v197 - 8);
  v34 = *(v196 + 64);
  v35 = __chkstk_darwin(v197);
  v194 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v195 = &v163 - v37;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC0, &qword_5CE98);
  v192 = *(v193 - 8);
  v38 = *(v192 + 64);
  v39 = __chkstk_darwin(v193);
  v190 = &v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v191 = &v163 - v41;
  v187 = sub_59C24();
  v186 = *(v187 - 8);
  v42 = *(v186 + 64);
  __chkstk_darwin(v187);
  v185 = &v163 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9B8, &unk_5CD60);
  v184 = *(v222 - 8);
  v44 = *(v184 + 64);
  __chkstk_darwin(v222);
  v183 = &v163 - v45;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  v182 = *(v218 - 8);
  v46 = *(v182 + 64);
  __chkstk_darwin(v218);
  v181 = &v163 - v47;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D998, &qword_5CCC0);
  v180 = *(v223 - 8);
  v48 = *(v180 + 64);
  __chkstk_darwin(v223);
  v179 = &v163 - v49;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D928, &unk_5CC68);
  v178 = *(v220 - 8);
  v50 = *(v178 + 64);
  __chkstk_darwin(v220);
  v177 = &v163 - v51;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D918, &qword_5CC18);
  v176 = *(v219 - 8);
  v52 = *(v176 + 64);
  __chkstk_darwin(v219);
  v175 = &v163 - v53;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  v54 = *(v221 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v221);
  v57 = &v163 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  __chkstk_darwin(v58);
  v62 = &v163 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8E8, &qword_5CB28);
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(v63);
  v67 = &v163 - v66;
  v68 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__isPlaying;
  LOBYTE(aBlock) = 0;
  sub_59DF4();
  v69 = *(v64 + 32);
  v188 = v63;
  v69(v2 + v68, v67, v63);
  v70 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__nowPlayingItem;
  *&aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC8, &qword_5CEA0);
  sub_59DF4();
  v71 = *(v59 + 32);
  v189 = v58;
  v71(v2 + v70, v62, v58);
  v72 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__tracklist;
  *&aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD0, &qword_5CEA8);
  sub_59DF4();
  (*(v54 + 32))(v2 + v72, v57, v221);
  v73 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__durationSnapshot;
  v227 = 0u;
  v228 = 0u;
  aBlock = 0u;
  v229 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD8, &qword_5CEB0);
  v74 = v175;
  sub_59DF4();
  (*(v176 + 32))(v2 + v73, v74, v219);
  v75 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__preferredJumpInterval;
  aBlock = 0uLL;
  LOBYTE(v227) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE0, &qword_5CEB8);
  v76 = v177;
  sub_59DF4();
  (*(v178 + 32))(v2 + v75, v76, v220);
  v77 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__videoOutput;
  *&aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE8, &unk_5CEC0);
  v78 = v179;
  sub_59DF4();
  (*(v180 + 32))(v2 + v77, v78, v223);
  v79 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__currentRoute;
  *&aBlock = 0;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBF0, &unk_5E4A0);
  v81 = v181;
  v180 = v80;
  sub_59DF4();
  (*(v182 + 32))(v2 + v79, v81, v218);
  v82 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__chapters;
  *&aBlock = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  v83 = v183;
  sub_59DF4();
  (*(v184 + 32))(v2 + v82, v83, v222);
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_logController) = 0;
  v84 = (v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_preparationObserver);
  *v84 = 0u;
  v84[1] = 0u;
  v85 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher;
  *&v228 = 0;
  aBlock = 0u;
  v227 = 0u;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DB50, &unk_5CE40);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  *(v2 + v85) = sub_59DA4();
  v89 = v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  *v89 = 0u;
  *(v89 + 16) = 0u;
  *(v89 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController) = 0;
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath) = 0;
  v90 = v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  *v90 = 0u;
  *(v90 + 16) = 0u;
  *(v90 + 32) = 0;
  if (qword_7CC60 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player) = xmmword_7D8A0;
  swift_unknownObjectRetain();
  sub_5A2C4();
  v91 = v185;
  sub_59C14();
  (*(v186 + 32))(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_errorTransformer, v91, v187);
  if (qword_7CC78 != -1)
  {
    swift_once();
  }

  v92 = qword_80BF8;
  v93 = (v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource);
  v93[3] = _s27AutomaticResponseDataSourceCMa();
  v93[4] = &off_73D50;
  *v93 = v92;
  swift_beginAccess();
  v94 = v93[3];
  v95 = v93[4];
  v96 = __swift_project_boxed_opaque_existential_1(v93, v94);
  v97 = *(v94 - 8);
  v98 = *(v97 + 64);
  __chkstk_darwin(v96);
  v100 = &v163 - v99;
  (*(v97 + 16))(&v163 - v99);
  v101 = *(v95 + 8);
  v102 = v92;
  v103 = v101(v94, v95);
  (*(v97 + 8))(v100, v94);
  *&aBlock = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
  v104 = sub_59E74();

  _s17PlayerInvalidatorCMa();
  swift_allocObject();
  v105 = sub_3F3A8(v104, 5);

  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerMonitor) = v105;
  sub_123D8(v93, &aBlock);
  type metadata accessor for PlaybackController.RouteController();
  v106 = swift_allocObject();
  v107 = *(&v227 + 1);
  v108 = v228;
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v227 + 1));
  *(v106 + 16) = (*(v108 + 24))(v107, v108);
  sub_12440(&aBlock, v106 + 24);
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_routeController) = v106;
  v225 = sub_1E850();
  swift_beginAccess();
  v109 = v191;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0);
  sub_59F94();

  v110 = v192;
  v111 = v193;
  (*(v192 + 16))(v190, v109, v193);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v110 + 8))(v109, v111);
  v225 = sub_214E4();
  swift_beginAccess();
  v112 = v195;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB08, &qword_5CE18);
  sub_5108(&qword_7DB18, &qword_7DB08, &qword_5CE18);
  sub_59F94();

  v113 = v196;
  v114 = v197;
  (*(v196 + 16))(v194, v112, v197);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v113 + 8))(v112, v114);
  v225 = sub_21BC4();
  swift_beginAccess();
  v115 = v199;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC30, &qword_5CED8);
  sub_5108(&qword_7DC38, &qword_7DC30, &qword_5CED8);
  sub_59F94();

  v116 = v200;
  v117 = v201;
  (*(v200 + 16))(v198, v115, v201);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v116 + 8))(v115, v117);
  v225 = sub_223BC();
  swift_beginAccess();
  v118 = v203;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC40, &qword_5CEE0);
  sub_5108(&qword_7DC48, &qword_7DC40, &qword_5CEE0);
  sub_59F94();

  v119 = v204;
  v120 = v205;
  (*(v204 + 16))(v202, v118, v205);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v119 + 8))(v118, v120);
  v225 = sub_22DC4();
  swift_beginAccess();
  v121 = v207;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC50, &qword_5CEE8);
  sub_5108(&qword_7DC58, &qword_7DC50, &qword_5CEE8);
  sub_59F94();

  v122 = v208;
  v123 = v209;
  (*(v208 + 16))(v206, v121, v209);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v122 + 8))(v121, v123);
  v225 = sub_20AB0();
  swift_beginAccess();
  v124 = v211;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC60, &qword_5CEF0);
  sub_5108(&qword_7DC68, &qword_7DC60, &qword_5CEF0);
  sub_59F94();

  v125 = v212;
  v126 = v213;
  (*(v212 + 16))(v210, v124, v213);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v125 + 8))(v124, v126);
  v225 = sub_23478();
  swift_beginAccess();
  v127 = v215;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC70, &unk_5CEF8);
  sub_5108(&qword_7DC78, &qword_7DC70, &unk_5CEF8);
  sub_59F94();

  v128 = v216;
  v129 = v217;
  (*(v216 + 16))(v214, v127, v217);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v128 + 8))(v127, v129);
  v131 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource + 24);
  v130 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource + 32);
  v132 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource), v131);
  v133 = *(v131 - 8);
  v134 = *(v133 + 64);
  __chkstk_darwin(v132);
  v136 = &v163 - v135;
  (*(v133 + 16))(&v163 - v135);
  v137 = (*(v130 + 24))(v131, v130);
  (*(v133 + 8))(v136, v131);
  if (v137)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC88, &qword_5CF18);
    v138 = v165;
    sub_59E04();
    swift_endAccess();

    sub_5108(&qword_7DC90, &qword_7DB80, &qword_5CE58);
    v139 = v168;
    v140 = v167;
    sub_59EC4();
    (*(v166 + 8))(v138, v140);
    swift_beginAccess();
    v141 = v172;
    sub_59E04();
    swift_endAccess();
    sub_5108(&qword_7DC98, &qword_7DB88, &qword_5CE60);
    v142 = v170;
    sub_59F94();
    (*(v169 + 8))(v139, v142);
    v143 = v173;
    v144 = v174;
    (*(v173 + 16))(v171, v141, v174);
    swift_beginAccess();
    sub_59E14();
    swift_endAccess();
    (*(v143 + 8))(v141, v144);
  }

  PlaybackController.LogController.init(playbackController:)(&aBlock);
  v145 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_logController);
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_logController) = aBlock;

  sub_2B8B4();
  v146 = (v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player);
  v147 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player);
  v148 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player + 8);
  ObjectType = swift_getObjectType();
  *(&v227 + 1) = type metadata accessor for PlaybackController(0);
  *&v228 = &off_72D98;
  *&aBlock = v2;
  v150 = *(v148 + 88);

  v150(&aBlock, ObjectType, v148);
  v151 = *v146;
  _s9MPCPlayerCMa();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v152 = [objc_opt_self() sharedApplication];
    v153 = [v152 applicationState];

    if (!v153)
    {
      v154 = sub_5A3B4();
      v155 = v164;
      (*(*(v154 - 8) + 56))(v164, 1, 1, v154);
      v156 = swift_allocObject();
      v156[2] = 0;
      v156[3] = 0;
      v156[4] = v2;

      sub_17D38(0, 0, v155, &unk_5CF10, v156);
    }

    v157 = [objc_opt_self() defaultCenter];
    v158 = swift_allocObject();
    swift_weakInit();
    *&v228 = sub_312C8;
    *(&v228 + 1) = v158;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v227 = sub_278F4;
    *(&v227 + 1) = &block_descriptor_4;
    v159 = _Block_copy(&aBlock);

    v160 = [v157 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:0 usingBlock:v159];
    _Block_release(v159);

    *(&v227 + 1) = swift_getObjectType();
    swift_unknownObjectRelease();
    *&aBlock = v160;
    v161 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_preparationObserver;
    swift_beginAccess();
    sub_312E8(&aBlock, v2 + v161, &qword_7DC80, &qword_5C3F0);
    swift_endAccess();
  }

  return v2;
}

uint64_t sub_26E68(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_26F28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 8) route];
  *a2 = result;
  return result;
}

uint64_t sub_26F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_26F84, 0, 0);
}

uint64_t sub_26F84()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CA80;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_27044;
  v2 = *(v0 + 64);

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_27044(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    v7 = sub_271A4;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v7 = sub_2717C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_271A4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  **(v0 + 56) = *(v0 + 80) != 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27238()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CA80;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_272F8;
  v2 = *(v0 + 56);

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_272F8(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_32E4C, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_27450()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_5A3B4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_17D38(0, 0, v3, &unk_5D298, v6);
}

uint64_t sub_275A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return _swift_task_switch(sub_275C0, 0, 0);
}

uint64_t sub_275C0()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
    *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
    *(v0 + 16) = xmmword_5CA80;
    *(v0 + 32) = 0;
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_276E4;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {
    **(v0 + 80) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_276E4(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_27880;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v7 = sub_27818;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_27818()
{
  v1 = *(v0 + 96);

  **(v0 + 80) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27880()
{
  v1 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  **(v0 + 80) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_278F4(uint64_t a1)
{
  v2 = sub_59474();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_59454();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t PlaybackController.deinit()
{
  v1 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_preparationObserver;
  swift_beginAccess();
  sub_9768(v0 + v1, &v28, &qword_7DC80, &qword_5C3F0);
  if (v29)
  {
    sub_31404(&v28, v30);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(v30, v31);
    [v2 removeObserver:sub_5A8D4()];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  else
  {
    sub_9708(&v28, &qword_7DC80, &qword_5C3F0);
  }

  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__isPlaying;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8E8, &qword_5CB28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__nowPlayingItem;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__tracklist;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__durationSnapshot;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D918, &qword_5CC18);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__preferredJumpInterval;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D928, &unk_5CC68);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__videoOutput;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D998, &qword_5CCC0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__currentRoute;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__chapters;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9B8, &unk_5CD60);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource));
  v20 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerMonitor);

  v21 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_errorTransformer;
  v22 = sub_59C24();
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_logController);

  sub_9708(v0 + v1, &qword_7DC80, &qword_5C3F0);
  v24 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_routeController);

  v25 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher);

  sub_9708(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker, &qword_7DB40, &qword_5CE30);
  v26 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController);

  sub_9708(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController, &qword_7DB38, &qword_5CE28);
  return v0;
}

uint64_t PlaybackController.__deallocating_deinit()
{
  PlaybackController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_27EB8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = v3 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 40))(v2, v8, v9);
  return swift_endAccess();
}

void *sub_27F78()
{
  v1 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_27FC4(void *a1)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 40))(a1, v7, v8);
  return swift_endAccess();
}

void (*sub_2807C(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_28104;
}

void sub_28104(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = v4 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    v9 = *(v8 + 40);
    v10 = v5;
    v9(v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_281CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2825C;

  return sub_2E290();
}

uint64_t sub_2825C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_283AC, 0, 0);
  }
}

uint64_t sub_283AC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_284D8;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_284D8(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_285D8, 0, 0);
}

uint64_t sub_285D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_28640(void *a1)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v3, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  if (v6)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 24))(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_28728(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 416) = v3;
  *(v4 + 408) = a3;
  *(v4 + 392) = a1;
  *(v4 + 400) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCA0, &qword_5C808);
  *(v4 + 424) = v5;
  v6 = *(v5 - 8);
  *(v4 + 432) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 440) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810) - 8) + 64) + 15;
  *(v4 + 448) = swift_task_alloc();
  v9 = sub_5A4E4();
  *(v4 + 456) = v9;
  v10 = *(v9 - 8);
  *(v4 + 464) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 472) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  *(v4 + 480) = v12;
  v13 = *(v12 - 8);
  *(v4 + 488) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 496) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  *(v4 + 504) = v15;
  v16 = *(v15 - 8);
  *(v4 + 512) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 520) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D680, &unk_5CF50);
  *(v4 + 528) = v18;
  v19 = *(v18 - 8);
  *(v4 + 536) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 544) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCB0, &unk_5C830);
  *(v4 + 552) = v21;
  v22 = *(v21 - 8);
  *(v4 + 560) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 568) = swift_task_alloc();
  v24 = sub_59D14();
  *(v4 + 576) = v24;
  v25 = *(v24 - 8);
  *(v4 + 584) = v25;
  v26 = *(v25 + 64) + 15;
  *(v4 + 592) = swift_task_alloc();
  *(v4 + 600) = swift_task_alloc();
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  v27 = swift_task_alloc();
  *(v4 + 632) = v27;
  *v27 = v4;
  v27[1] = sub_28AE8;

  return sub_2E290();
}

uint64_t sub_28AE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 632);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[78];
    v8 = v4[77];
    v9 = v4[76];
    v10 = v4[75];
    v11 = v4[74];
    v12 = v4[71];
    v13 = v4[68];
    v14 = v4[65];
    v15 = v4[62];
    v16 = v4[59];
    v18 = v4 + 55;
    v17 = v4[55];
    v21 = v18[1];

    v19 = *(v6 + 8);

    return v19();
  }

  else
  {
    v4[80] = a1;

    return _swift_task_switch(sub_28CE4, 0, 0);
  }
}

uint64_t sub_28CE4()
{
  v1 = v0[49];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_28E10;
  v7 = v0[80];

  return v9(v7, v2, v3);
}

uint64_t sub_28E10(char a1)
{
  v2 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 720) = a1;

  return _swift_task_switch(sub_28F10, 0, 0);
}

uint64_t sub_28F10()
{
  v75 = v0;
  v1 = *(v0 + 720);

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 712) = v2;
    *v2 = v0;
    v2[1] = sub_2A4E8;
    v3 = *(v0 + 416);
    v4 = *(v0 + 392);

    return sub_2A8B0(v4, 0);
  }

  else
  {
    v6 = *(v0 + 624);
    sub_59CC4();
    v7 = sub_59D04();
    v8 = sub_5A474();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "╭ ⏱️ Await for command", v9, 2u);
    }

    v10 = *(v0 + 624);
    v11 = *(v0 + 616);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    v14 = *(v0 + 392);

    v15 = *(v12 + 8);
    *(v0 + 656) = v15;
    v15(v10, v13);
    sub_59CC4();
    sub_123D8(v14, v0 + 16);
    v16 = sub_59D04();
    v17 = sub_5A474();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 616);
    v20 = *(v0 + 584);
    v21 = *(v0 + 576);
    if (v18)
    {
      v71 = *(v0 + 616);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v74 = v23;
      *v22 = 136446210;
      sub_123D8(v0 + 16, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
      v24 = v15;
      v25 = sub_5A1B4();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      v28 = sub_9430(v25, v27, &v74);

      *(v22 + 4) = v28;
      v15 = v24;
      _os_log_impl(&dword_0, v16, v17, "| %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);

      v24(v71, v21);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      v15(v19, v21);
    }

    v29 = *(v0 + 608);
    sub_59CC4();
    v30 = sub_59D04();
    v31 = sub_5A474();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 608);
    v34 = *(v0 + 584);
    v35 = *(v0 + 576);
    if (v32)
    {
      v72 = v15;
      v36 = *(v0 + 400);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v74 = v38;
      *v37 = 136446210;
      *(v0 + 384) = v36;
      type metadata accessor for MPCPlayerChangeRequestOptions(0);
      v39 = sub_5A1B4();
      v41 = sub_9430(v39, v40, &v74);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_0, v30, v31, "╰ options=%{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);

      v72(v33, v35);
    }

    else
    {

      v15(v33, v35);
    }

    v73 = *(v0 + 568);
    v63 = *(v0 + 544);
    v70 = *(v0 + 536);
    v67 = *(v0 + 528);
    v59 = *(v0 + 504);
    v60 = *(v0 + 512);
    v42 = *(v0 + 496);
    v58 = *(v0 + 488);
    v56 = *(v0 + 480);
    v57 = *(v0 + 520);
    v64 = *(v0 + 464);
    v65 = *(v0 + 456);
    v61 = *(v0 + 472);
    v62 = *(v0 + 448);
    v66 = *(v0 + 440);
    v69 = *(v0 + 432);
    v68 = *(v0 + 424);
    v43 = *(v0 + 416);
    v44 = *(v0 + 408);
    v45 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    sub_123D8(v43 + v45, v0 + 56);
    v46 = *(v0 + 80);
    v47 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v46);
    *(v0 + 344) = (*(v47 + 8))(v46, v47);
    sub_59D34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
    sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90);
    sub_5108(&qword_7D690, &qword_7D688, &unk_5C840);
    sub_59FB4();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70);
    sub_19C84();
    sub_59F64();
    (*(v58 + 8))(v42, v56);
    sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820);
    v48 = sub_59E74();
    (*(v60 + 8))(v57, v59);
    *(v0 + 352) = v48;
    sub_5A4C4();
    sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
    v49 = sub_5A504();
    *(v0 + 360) = v49;
    v50 = sub_5A4A4();
    (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
    sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr);
    sub_59F44();
    sub_9708(v62, &unk_7D9C0, &unk_5C810);

    (*(v64 + 8))(v61, v65);

    sub_5108(&qword_7D6B0, &qword_7D680, &unk_5CF50);
    sub_59FA4();
    (*(v70 + 8))(v63, v67);
    sub_59D74();
    (*(v69 + 8))(v66, v68);
    v51 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830);
    v52 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v53 = swift_task_alloc();
    *(v0 + 664) = v53;
    *v53 = v0;
    v53[1] = sub_29828;
    v54 = *(v0 + 568);
    v55 = *(v0 + 552);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 368, v55, v51);
  }
}

uint64_t sub_29828()
{
  v2 = *(*v1 + 664);
  v5 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = sub_29E04;
  }

  else
  {
    v3 = sub_2993C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_29960()
{
  v46 = v0;
  v1 = v0[85];
  if (v1 == 1)
  {
    v7 = v0[74];
    v8 = v0[49];
    (*(v0[70] + 8))(v0[71], v0[69]);
    sub_59CC4();
    sub_123D8(v8, (v0 + 12));
    v9 = sub_59D04();
    v10 = sub_5A454();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[82];
    v13 = v0[74];
    v14 = v0[73];
    v15 = v0[72];
    if (v11)
    {
      v43 = v0[82];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45 = v17;
      *v16 = 136446210;
      sub_123D8((v0 + 12), (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
      v18 = sub_5A1B4();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v21 = sub_9430(v18, v20, &v45);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_0, v9, v10, "⌛️❌ Timed out waiting for command %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);

      v43(v13, v15);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v12(v13, v15);
    }

    sub_31414();
    swift_allocError();
    *v28 = xmmword_5CA90;
    swift_willThrow();
    v29 = v0[78];
    v30 = v0[77];
    v31 = v0[76];
    v32 = v0[75];
    v33 = v0[74];
    v34 = v0[71];
    v35 = v0[68];
    v36 = v0[65];
    v37 = v0[62];
    v38 = v0[59];
    v41 = v0[56];
    v42 = v0[55];

    v39 = v0[1];

    return v39();
  }

  else if (v1)
  {
    v22 = v0[49];
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v25 = *(v24 + 16);
    v44 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    v0[86] = v27;
    *v27 = v0;
    v27[1] = sub_29E90;

    return v44(v1, v23, v24);
  }

  else
  {
    v2 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830);
    v3 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v4 = swift_task_alloc();
    v0[83] = v4;
    *v4 = v0;
    v4[1] = sub_29828;
    v5 = v0[71];
    v6 = v0[69];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 46, v6, v2);
  }
}

uint64_t sub_29E04()
{
  *(v0 + 376) = *(v0 + 672);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_29E90(char a1)
{
  v2 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 721) = a1;

  return _swift_task_switch(sub_29F90, 0, 0);
}

uint64_t sub_29F90()
{
  v28 = v0;
  if (*(v0 + 721) == 1)
  {
    v1 = *(v0 + 600);
    v2 = *(v0 + 392);
    sub_59CC4();
    sub_123D8(v2, v0 + 176);
    v3 = sub_59D04();
    v4 = sub_5A474();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 656);
    v7 = *(v0 + 600);
    v8 = *(v0 + 584);
    v9 = *(v0 + 576);
    if (v5)
    {
      v26 = *(v0 + 656);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136446210;
      sub_123D8(v0 + 176, v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
      v12 = sub_5A1B4();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v15 = sub_9430(v12, v14, &v27);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_0, v3, v4, "⏱️✅ Command available. Performing: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);

      v26(v7, v9);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v6(v7, v9);
    }

    v21 = swift_task_alloc();
    *(v0 + 696) = v21;
    *v21 = v0;
    v21[1] = sub_2A28C;
    v22 = *(v0 + 416);
    v24 = *(v0 + 392);
    v23 = *(v0 + 400);

    return sub_2A8B0(v24, v23);
  }

  else
  {
    sub_19D78(*(v0 + 680));
    v16 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830);
    v17 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v18 = swift_task_alloc();
    *(v0 + 664) = v18;
    *v18 = v0;
    v18[1] = sub_29828;
    v19 = *(v0 + 568);
    v20 = *(v0 + 552);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 368, v20, v16);
  }
}

uint64_t sub_2A28C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[40] = v2;
  v4[41] = a1;
  v4[42] = v1;
  v5 = v3[87];
  v8 = *v2;
  v4[88] = v1;

  if (v1)
  {
    v6 = sub_2A774;
  }

  else
  {
    v6 = sub_2A3A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_2A3A8()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_19D78(*(v0 + 680));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v0 + 568);
  v10 = *(v0 + 544);
  v11 = *(v0 + 520);
  v12 = *(v0 + 496);
  v13 = *(v0 + 472);
  v16 = *(v0 + 448);
  v17 = *(v0 + 440);
  v18 = *(v0 + 328);

  v14 = *(v0 + 8);

  return v14(v18);
}

uint64_t sub_2A4E8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v4 = *v1;

  v5 = v2[78];
  v6 = v2[77];
  v7 = v2[76];
  v8 = v2[75];
  v9 = v2[74];
  v10 = v2[71];
  v11 = v2[68];
  v12 = v2[65];
  v18 = v2[62];
  v19 = v2[59];
  v20 = v2[56];
  v13 = v2[55];

  v15 = *(v4 + 8);
  if (!v21)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_2A774()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_19D78(*(v0 + 680));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v0 + 600);
  v8 = *(v0 + 592);
  v9 = *(v0 + 568);
  v10 = *(v0 + 544);
  v11 = *(v0 + 520);
  v12 = *(v0 + 496);
  v13 = *(v0 + 472);
  v16 = *(v0 + 448);
  v17 = *(v0 + 440);
  v18 = *(v0 + 704);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2A8B0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return _swift_task_switch(sub_2A8D4, 0, 0);
}

uint64_t sub_2A8D4()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = xmmword_5BC80;
  sub_123D8(v1, inited + 32);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2A9A8;
  v4 = v0[12];
  v5 = v0[13];

  return sub_2AC24(inited, v4);
}

uint64_t sub_2A9A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v8 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v5 = sub_2ABB4;
  }

  else
  {
    v6 = v3[14];
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0Tm((v6 + 32));
    v5 = sub_2AAD0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2AAD0()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 128);
    }

    result = sub_5A814();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = *(v0 + 128);

    v3 = 0;
    goto LABEL_11;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = *(v0 + 128);
    v3 = sub_5A724();
    v8 = *(v0 + 128);
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 128) + 32);
  }

LABEL_11:
  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_2ABB4()
{
  v1 = v0[14];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 32));
  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_2AC24(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE8, &qword_5CF70) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCF0, &qword_5CF78) - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v7 = sub_59B64();
  v3[33] = v7;
  v8 = *(v7 - 8);
  v3[34] = v8;
  v9 = *(v8 + 64) + 15;
  v3[35] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[36] = v10;
  *v10 = v3;
  v10[1] = sub_2ADA0;

  return sub_2BF98(a1);
}

uint64_t sub_2ADA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[35];
    v8 = v4[31];
    v9 = v4[32];
    v10 = v4[30];

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    v4[37] = a1;
    v13 = swift_task_alloc();
    v4[38] = v13;
    *v13 = v6;
    v13[1] = sub_2AF44;
    v14 = v4[28];

    return sub_309C0(a1, v14);
  }
}

uint64_t sub_2AF44(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_2B064, 0, 0);
}

uint64_t sub_2B064()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0[29] + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher);
    v4 = v1 + 32;
    do
    {
      sub_123D8(v4, (v0 + 2));
      sub_123D8((v0 + 2), (v0 + 7));
      sub_59D84();
      sub_9708((v0 + 7), &qword_7D7A0, qword_5C900);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v5 = v0[39];
  if (v5 >> 62)
  {
LABEL_39:
    v6 = sub_5A814();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_40:
    v61 = v0[35];
    v62 = v0[31];
    v63 = v0[32];
    v64 = v0[30];

    v65 = v0[1];
    v66 = v0[39];

    return v65(v66);
  }

  v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  if (!v6)
  {
    goto LABEL_40;
  }

LABEL_6:
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = v0[39] + 32;
  while (1)
  {
    if (v8)
    {
      v14 = v0[39];
      v11 = sub_5A724();
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_38;
      }

      v11 = *(v10 + 8 * v7);
    }

    v5 = v11;
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v13 = [v11 error];
    if (v13)
    {
      break;
    }

    ++v7;
    if (v12 == v6)
    {
      goto LABEL_40;
    }
  }

  v15 = v0[39];
  v16 = v0[29];
  v17 = v13;

  v18 = v17;
  sub_59C04();

  sub_9768((v0 + 12), (v0 + 17), &qword_7DD00, &qword_5CF98);
  v19 = v0[20];
  if (v19)
  {
    v20 = v0[21];
    v21 = __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    v22 = *(v19 - 8);
    v23 = *(v22 + 64) + 15;
    v24 = swift_task_alloc();
    (*(v22 + 16))(v24, v21, v19);
    v25 = *(v20 + 8);
    v26 = sub_5A8C4();
    if (v26)
    {
      v27 = v26;
      (*(v22 + 8))(v24, v19);
    }

    else
    {
      v27 = swift_allocError();
      (*(v22 + 32))(v28, v24, v19);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);

    v18 = v27;
  }

  else
  {
    sub_9708((v0 + 17), &qword_7DD00, &qword_5CF98);
  }

  v29 = [v5 dialog];
  v30 = v0[33];
  v31 = v0[34];
  if (!v29)
  {
    v36 = *(v31 + 56);
    v36(v0[31], 1, 1, v0[33]);
    sub_9768((v0 + 12), (v0 + 22), &qword_7DD00, &qword_5CF98);
    if (v0[25])
    {
      v37 = v0[30];
      v38 = v0[26];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
      sub_59774();
      v39 = sub_59B84();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v37, 1, v39) != 1)
      {
        v45 = v0[32];
        v46 = v0[30];
        sub_59B74();
        (*(v40 + 8))(v46, v39);
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
LABEL_29:
        v47 = v0[31];
        v35 = *(v0[34] + 48);
        if (v35(v47, 1, v0[33]) != 1)
        {
          sub_9708(v47, &unk_7DCF0, &qword_5CF78);
        }

        goto LABEL_31;
      }

      v41 = v0[30];
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
      v42 = &unk_7DCE8;
      v43 = &unk_5CF70;
      v44 = v41;
    }

    else
    {
      v42 = &qword_7DD00;
      v43 = &qword_5CF98;
      v44 = (v0 + 22);
    }

    sub_9708(v44, v42, v43);
    v36(v0[32], 1, 1, v0[33]);
    goto LABEL_29;
  }

  v33 = v0[31];
  v32 = v0[32];
  sub_2B770(v29);
  v34 = *(v31 + 56);
  v34(v33, 0, 1, v30);
  (*(v31 + 32))(v32, v33, v30);
  v34(v32, 0, 1, v30);
  v35 = *(v31 + 48);
LABEL_31:
  v49 = v0[32];
  v48 = v0[33];
  if (v35(v49, 1, v48) == 1)
  {
    sub_9708(v49, &unk_7DCF0, &qword_5CF78);
    swift_willThrow();
  }

  else
  {
    v51 = v0[34];
    v50 = v0[35];
    (*(v51 + 32))(v50, v49, v48);
    v52 = type metadata accessor for PlaybackController.ErrorDialog(0);
    sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog);
    swift_allocError();
    v54 = v53;
    (*(v51 + 16))(v53, v50, v48);
    *(v54 + *(v52 + 20)) = v18;
    swift_willThrow();

    (*(v51 + 8))(v50, v48);
  }

  sub_9708((v0 + 12), &qword_7DD00, &qword_5CF98);
  v55 = v0[35];
  v56 = v0[31];
  v57 = v0[32];
  v58 = v0[30];

  v59 = v0[1];

  return v59();
}

void sub_2B770(void *a1)
{
  v1 = [a1 localizedTitle];
  if (v1)
  {
    v2 = v1;
    sub_5A194();
  }

  v3 = [a1 localizedMessage];
  if (v3)
  {
    v4 = v3;
    sub_5A194();
  }

  v5 = [a1 actions];
  sub_4FE4(0, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
  v6 = sub_5A294();

  sub_1CD1C(v6);

  sub_59B54();
}

uint64_t sub_2B8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A0, &qword_5C8F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v55 = v46 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A8, &unk_5D8E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v51 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2B0, &qword_5D2A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v50 = v46 - v8;
  v49 = sub_598A4();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v49);
  v47 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_598E4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v48 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_59944();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[1] = v19;
  v20 = sub_59904();
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  __chkstk_darwin(v20);
  v52 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_59AC4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_59AE4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0;
  v58 = 6;
  sub_59AF4();
  (*(v24 + 104))(v27, enum case for EpisodeListSettings.InitialItemBehavior.trimHeadAndInitialItem(_:), v23);
  sub_59AD4();
  (*(v16 + 104))(v19, enum case for MediaIdentifier.library(_:), v15);
  (*(v9 + 104))(v47, enum case for PlaybackIntent.Origin.endOfQueue(_:), v49);
  (*(v16 + 56))(v50, 1, 1, v15);
  v33 = v51;
  (*(v29 + 16))(v51, v32, v28);
  (*(v29 + 56))(v33, 0, 1, v28);
  sub_598D4();
  v34 = sub_59604();
  (*(*(v34 - 8) + 56))(v55, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2B8, &qword_5D2A8);
  v35 = sub_59894();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_5BC80;
  (*(v36 + 104))(v39 + v38, enum case for PlaybackIntent.Option.preventQueueing(_:), v35);
  sub_3A27C(v39);
  swift_setDeallocating();
  (*(v36 + 8))(v39 + v38, v35);
  swift_deallocClassInstance();
  v40 = v52;
  sub_59874();
  v41 = *(v56 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player);
  v42 = *(v56 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player + 8);
  ObjectType = swift_getObjectType();
  v44 = PlaybackIntent.generateLocalMPCIntent()();
  (*(v42 + 64))(v44, ObjectType, v42);
  (*(v53 + 8))(v40, v54);
  return (*(v29 + 8))(v32, v28);
}

uint64_t sub_2BF98(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE8, &qword_5CF70) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v4 = sub_59B64();
  v2[48] = v4;
  v5 = *(v4 - 8);
  v2[49] = v5;
  v6 = *(v5 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v7 = sub_59D14();
  v2[52] = v7;
  v8 = *(v7 - 8);
  v2[53] = v8;
  v9 = *(v8 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return _swift_task_switch(sub_2C104, 0, 0);
}

uint64_t sub_2C104()
{
  v1 = v0[46];
  if (sub_2E748(v0[45]))
  {
    v2 = v0[55];
    sub_59CC4();
    v3 = sub_59D04();
    v4 = sub_5A474();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "Converting current route to a buffered AirPlay route", v5, 2u);
    }

    v6 = v0[55];
    v7 = v0[52];
    v8 = v0[53];
    v9 = v0[46];

    (*(v8 + 8))(v6, v7);
    v10 = *(v9 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_routeController);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v11 = v0[44];
    v0[56] = v11;
    v12 = swift_task_alloc();
    v0[57] = v12;
    *v12 = v0;
    v12[1] = sub_2C314;

    return sub_4D088(v11);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[59] = v14;
    *v14 = v0;
    v14[1] = sub_2C818;
    v15 = v0[46];

    return sub_2E290();
  }
}

uint64_t sub_2C314(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;
  v5 = *(v3 + 456);
  v8 = *v2;
  *(v4 + 464) = v1;

  if (v1)
  {
    v6 = sub_2D318;
  }

  else
  {

    v6 = sub_2C438;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_2C438()
{
  v38 = v0;
  v1 = v0[38];
  v2 = v0[45];
  v0[61] = v1;
  v0[43] = _swiftEmptyArrayStorage;
  v3 = *(v2 + 16);
  v0[62] = v3;
  if (v3)
  {
    v0[66] = 0;
    v0[65] = _swiftEmptyArrayStorage;
    v0[63] = _swiftEmptyArrayStorage;
    v0[64] = _swiftEmptyArrayStorage;
    sub_123D8(v2 + 32, (v0 + 12));
    v4 = v0[15];
    v5 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
    v6 = *(v5 + 8);
    v35 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[67] = v8;
    *v8 = v0;
    v8[1] = sub_2CD14;
    v9 = v0[61];

    v35(v9, v4, v5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage[2];
    if (v10)
    {
      v11 = 0;
      v12 = &_swiftEmptyArrayStorage[4];
      v13 = (v0[53] + 8);
      v33 = _swiftEmptyArrayStorage[2];
      while (v11 < _swiftEmptyArrayStorage[2])
      {
        v14 = v0[54];
        sub_123D8(v12, (v0 + 22));
        sub_59CC4();
        sub_123D8((v0 + 22), (v0 + 27));
        v15 = sub_59D04();
        v16 = sub_5A454();
        v17 = os_log_type_enabled(v15, v16);
        v18 = v0[54];
        v19 = v0[52];
        if (v17)
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v37 = v21;
          *v20 = 136446210;
          sub_123D8((v0 + 27), (v0 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
          v34 = v18;
          v36 = v19;
          v22 = v13;
          v23 = sub_5A1B4();
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          v26 = sub_9430(v23, v25, &v37);

          *(v20 + 4) = v26;
          v13 = v22;
          _os_log_impl(&dword_0, v15, v16, "Trying to perform unavailable command: %{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
          v10 = v33;

          (*v22)(v34, v36);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          (*v13)(v18, v19);
        }

        ++v11;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
        v12 += 5;
        if (v10 == v11)
        {
          v1 = v0[61];
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      v27 = v0[54];
      v28 = v0[55];
      v30 = v0[50];
      v29 = v0[51];
      v31 = v0[47];

      v32 = v0[1];

      v32(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_2C818(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[40] = v2;
  v4[41] = a1;
  v4[42] = v1;
  v5 = v3[59];
  v8 = *v2;
  v4[60] = v1;

  if (v1)
  {
    v6 = sub_2D840;
  }

  else
  {
    v6 = sub_2C934;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_2C934()
{
  v38 = v0;
  v1 = v0[41];
  v2 = v0[45];
  v0[61] = v1;
  v0[43] = _swiftEmptyArrayStorage;
  v3 = *(v2 + 16);
  v0[62] = v3;
  if (v3)
  {
    v0[66] = 0;
    v0[65] = _swiftEmptyArrayStorage;
    v0[63] = _swiftEmptyArrayStorage;
    v0[64] = _swiftEmptyArrayStorage;
    sub_123D8(v2 + 32, (v0 + 12));
    v4 = v0[15];
    v5 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
    v6 = *(v5 + 8);
    v35 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[67] = v8;
    *v8 = v0;
    v8[1] = sub_2CD14;
    v9 = v0[61];

    v35(v9, v4, v5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage[2];
    if (v10)
    {
      v11 = 0;
      v12 = &_swiftEmptyArrayStorage[4];
      v13 = (v0[53] + 8);
      v33 = _swiftEmptyArrayStorage[2];
      while (v11 < _swiftEmptyArrayStorage[2])
      {
        v14 = v0[54];
        sub_123D8(v12, (v0 + 22));
        sub_59CC4();
        sub_123D8((v0 + 22), (v0 + 27));
        v15 = sub_59D04();
        v16 = sub_5A454();
        v17 = os_log_type_enabled(v15, v16);
        v18 = v0[54];
        v19 = v0[52];
        if (v17)
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v37 = v21;
          *v20 = 136446210;
          sub_123D8((v0 + 27), (v0 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
          v34 = v18;
          v36 = v19;
          v22 = v13;
          v23 = sub_5A1B4();
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          v26 = sub_9430(v23, v25, &v37);

          *(v20 + 4) = v26;
          v13 = v22;
          _os_log_impl(&dword_0, v15, v16, "Trying to perform unavailable command: %{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
          v10 = v33;

          (*v22)(v34, v36);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          (*v13)(v18, v19);
        }

        ++v11;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
        v12 += 5;
        if (v10 == v11)
        {
          v1 = v0[61];
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      v27 = v0[54];
      v28 = v0[55];
      v30 = v0[50];
      v29 = v0[51];
      v31 = v0[47];

      v32 = v0[1];

      v32(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_2CD14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 536);
  v9 = *v2;
  v3[68] = a1;
  v3[69] = v1;

  if (v1)
  {
    v5 = v3[65];
    v6 = v3[64];

    v7 = sub_2DD60;
  }

  else
  {
    v7 = sub_2CE40;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2CE40()
{
  v49 = v0;
  v1 = *(v0 + 544);
  if (!v1)
  {
    v6 = *(v0 + 520);
    sub_123D8(v0 + 96, v0 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 520);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1C410(0, v4[2] + 1, 1, *(v0 + 520));
    }

    v9 = v4[2];
    v8 = v4[3];
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1C410((v8 > 1), v9 + 1, 1, v4);
    }

    v4[2] = v9 + 1;
    sub_12440((v0 + 136), &v4[5 * v9 + 4]);
    v5 = *(v0 + 504);
    v3 = *(v0 + 512);
    goto LABEL_9;
  }

  v2 = v1;
  sub_5A274();
  if (*(&dword_10 + (*(v0 + 344) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 344) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    sub_5A304();

    v3 = *(v0 + 344);
    v4 = *(v0 + 520);
    v5 = v3;
LABEL_9:
    v10 = *(v0 + 496);
    v11 = *(v0 + 528) + 1;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    if (v11 != v10)
    {
      break;
    }

    v42 = v5;
    v2 = v4[2];
    if (!v2)
    {
LABEL_20:
      v37 = *(v0 + 432);
      v36 = *(v0 + 440);
      v39 = *(v0 + 400);
      v38 = *(v0 + 408);
      v40 = *(v0 + 376);

      v41 = *(v0 + 8);

      return v41(v42);
    }

    v12 = 0;
    v13 = (v4 + 4);
    v14 = (*(v0 + 424) + 8);
    v43 = v14;
    v44 = v4;
    while (v12 < v4[2])
    {
      v15 = *(v0 + 432);
      sub_123D8(v13, v0 + 176);
      sub_59CC4();
      sub_123D8(v0 + 176, v0 + 216);
      v16 = sub_59D04();
      v17 = sub_5A454();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 432);
      v20 = *(v0 + 416);
      if (v18)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v48 = v22;
        *v21 = 136446210;
        sub_123D8(v0 + 216, v0 + 256);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
        v45 = v19;
        v46 = v20;
        v23 = sub_5A1B4();
        v24 = v2;
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));
        v27 = sub_9430(v23, v26, &v48);
        v2 = v24;

        *(v21 + 4) = v27;
        _os_log_impl(&dword_0, v16, v17, "Trying to perform unavailable command: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        v4 = v44;

        v14 = v43;

        (*v43)(v45, v46);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));
        (*v14)(v19, v20);
      }

      ++v12;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v13 += 40;
      if (v2 == v12)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    sub_5A2B4();
  }

  v28 = *(v0 + 528);
  *(v0 + 528) = v28 + 1;
  *(v0 + 520) = v4;
  *(v0 + 504) = v5;
  *(v0 + 512) = v3;
  sub_123D8(*(v0 + 360) + 40 * v28 + 72, v0 + 96);
  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v29);
  v31 = *(v30 + 8);
  v47 = (v31 + *v31);
  v32 = v31[1];
  v33 = swift_task_alloc();
  *(v0 + 536) = v33;
  *v33 = v0;
  v33[1] = sub_2CD14;
  v34 = *(v0 + 488);

  return v47(v34, v29, v30);
}

uint64_t sub_2D318()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 368) + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_errorTransformer;
  sub_59C04();
  if (*(v0 + 80))
  {
    v3 = *(v0 + 376);
    sub_12440((v0 + 56), v0 + 16);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_59774();
    v5 = sub_59B84();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = *(v0 + 376);
    if (v7 == 1)
    {
      sub_9708(v8, &qword_7DCE8, &qword_5CF70);
    }

    else
    {
      if ((*(v6 + 88))(v8, v5) == enum case for PlaybackErrorBehavior.dialog(_:))
      {
        v10 = *(v0 + 400);
        v9 = *(v0 + 408);
        v11 = *(v0 + 384);
        v12 = *(v0 + 392);
        v13 = *(v0 + 376);
        (*(v6 + 96))(v13, v5);
        v46 = *(v12 + 32);
        v46(v9, v13, v11);
        (*(v12 + 16))(v10, v9, v11);
        v14 = *(v0 + 40);
        v15 = *(v0 + 48);
        v16 = __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        v17 = *(v14 - 8);
        v18 = *(v17 + 64) + 15;
        v19 = swift_task_alloc();
        (*(v17 + 16))(v19, v16, v14);
        v20 = *(v15 + 8);
        v21 = sub_5A8C4();
        if (v21)
        {
          v22 = v21;
          (*(v17 + 8))(v19, v14);
        }

        else
        {
          v22 = swift_allocError();
          (*(v17 + 32))(v31, v19, v14);
        }

        v32 = *(v0 + 400);
        v45 = *(v0 + 408);
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = type metadata accessor for PlaybackController.ErrorDialog(0);
        sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog);
        swift_allocError();
        v37 = v36;
        v46(v36, v32, v34);
        *(v37 + *(v35 + 20)) = v22;

        swift_willThrow();

        (*(v33 + 8))(v45, v34);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_15;
      }

      (*(v6 + 8))(*(v0 + 376), v5);
    }

    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v26 = *(v23 - 8);
    v27 = *(v26 + 64) + 15;
    v28 = swift_task_alloc();
    (*(v26 + 16))(v28, v25, v23);
    v29 = *(v24 + 8);
    if (sub_5A8C4())
    {
      (*(v26 + 8))(v28, v23);
    }

    else
    {
      swift_allocError();
      (*(v26 + 32))(v30, v28, v23);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_9708(v0 + 56, &qword_7DD00, &qword_5CF98);
    swift_willThrow();
  }

LABEL_15:
  v39 = *(v0 + 432);
  v38 = *(v0 + 440);
  v41 = *(v0 + 400);
  v40 = *(v0 + 408);
  v42 = *(v0 + 376);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2D840()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 368) + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_errorTransformer;
  sub_59C04();
  if (*(v0 + 80))
  {
    v3 = *(v0 + 376);
    sub_12440((v0 + 56), v0 + 16);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_59774();
    v5 = sub_59B84();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = *(v0 + 376);
    if (v7 == 1)
    {
      sub_9708(v8, &qword_7DCE8, &qword_5CF70);
    }

    else
    {
      if ((*(v6 + 88))(v8, v5) == enum case for PlaybackErrorBehavior.dialog(_:))
      {
        v10 = *(v0 + 400);
        v9 = *(v0 + 408);
        v11 = *(v0 + 384);
        v12 = *(v0 + 392);
        v13 = *(v0 + 376);
        (*(v6 + 96))(v13, v5);
        v46 = *(v12 + 32);
        v46(v9, v13, v11);
        (*(v12 + 16))(v10, v9, v11);
        v14 = *(v0 + 40);
        v15 = *(v0 + 48);
        v16 = __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        v17 = *(v14 - 8);
        v18 = *(v17 + 64) + 15;
        v19 = swift_task_alloc();
        (*(v17 + 16))(v19, v16, v14);
        v20 = *(v15 + 8);
        v21 = sub_5A8C4();
        if (v21)
        {
          v22 = v21;
          (*(v17 + 8))(v19, v14);
        }

        else
        {
          v22 = swift_allocError();
          (*(v17 + 32))(v31, v19, v14);
        }

        v32 = *(v0 + 400);
        v45 = *(v0 + 408);
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = type metadata accessor for PlaybackController.ErrorDialog(0);
        sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog);
        swift_allocError();
        v37 = v36;
        v46(v36, v32, v34);
        *(v37 + *(v35 + 20)) = v22;

        swift_willThrow();

        (*(v33 + 8))(v45, v34);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_15;
      }

      (*(v6 + 8))(*(v0 + 376), v5);
    }

    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v26 = *(v23 - 8);
    v27 = *(v26 + 64) + 15;
    v28 = swift_task_alloc();
    (*(v26 + 16))(v28, v25, v23);
    v29 = *(v24 + 8);
    if (sub_5A8C4())
    {
      (*(v26 + 8))(v28, v23);
    }

    else
    {
      swift_allocError();
      (*(v26 + 32))(v30, v28, v23);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_9708(v0 + 56, &qword_7DD00, &qword_5CF98);
    swift_willThrow();
  }

LABEL_15:
  v39 = *(v0 + 432);
  v38 = *(v0 + 440);
  v41 = *(v0 + 400);
  v40 = *(v0 + 408);
  v42 = *(v0 + 376);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2DD60()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v1 = *(v0 + 552);
  v2 = *(v0 + 368) + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_errorTransformer;
  sub_59C04();
  if (*(v0 + 80))
  {
    v3 = *(v0 + 376);
    sub_12440((v0 + 56), v0 + 16);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_59774();
    v5 = sub_59B84();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = *(v0 + 376);
    if (v7 == 1)
    {
      sub_9708(v8, &qword_7DCE8, &qword_5CF70);
    }

    else
    {
      if ((*(v6 + 88))(v8, v5) == enum case for PlaybackErrorBehavior.dialog(_:))
      {
        v10 = *(v0 + 400);
        v9 = *(v0 + 408);
        v11 = *(v0 + 384);
        v12 = *(v0 + 392);
        v13 = *(v0 + 376);
        (*(v6 + 96))(v13, v5);
        v46 = *(v12 + 32);
        v46(v9, v13, v11);
        (*(v12 + 16))(v10, v9, v11);
        v14 = *(v0 + 40);
        v15 = *(v0 + 48);
        v16 = __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
        v17 = *(v14 - 8);
        v18 = *(v17 + 64) + 15;
        v19 = swift_task_alloc();
        (*(v17 + 16))(v19, v16, v14);
        v20 = *(v15 + 8);
        v21 = sub_5A8C4();
        if (v21)
        {
          v22 = v21;
          (*(v17 + 8))(v19, v14);
        }

        else
        {
          v22 = swift_allocError();
          (*(v17 + 32))(v31, v19, v14);
        }

        v32 = *(v0 + 400);
        v45 = *(v0 + 408);
        v34 = *(v0 + 384);
        v33 = *(v0 + 392);
        v35 = type metadata accessor for PlaybackController.ErrorDialog(0);
        sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog);
        swift_allocError();
        v37 = v36;
        v46(v36, v32, v34);
        *(v37 + *(v35 + 20)) = v22;

        swift_willThrow();

        (*(v33 + 8))(v45, v34);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_15;
      }

      (*(v6 + 8))(*(v0 + 376), v5);
    }

    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
    v26 = *(v23 - 8);
    v27 = *(v26 + 64) + 15;
    v28 = swift_task_alloc();
    (*(v26 + 16))(v28, v25, v23);
    v29 = *(v24 + 8);
    if (sub_5A8C4())
    {
      (*(v26 + 8))(v28, v23);
    }

    else
    {
      swift_allocError();
      (*(v26 + 32))(v30, v28, v23);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_9708(v0 + 56, &qword_7DD00, &qword_5CF98);
    swift_willThrow();
  }

LABEL_15:
  v39 = *(v0 + 432);
  v38 = *(v0 + 440);
  v41 = *(v0 + 400);
  v40 = *(v0 + 408);
  v42 = *(v0 + 376);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2E290()
{
  v1[10] = v0;
  v2 = sub_59D14();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_2E350, 0, 0);
}

uint64_t sub_2E350()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v5)
  {
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v7 = [v6 playerPath];
    v8 = [v7 isInProcess];

    if ((v8 & 1) != 0 || (v9 = [v6 playerPath], v10 = objc_msgSend(v9, "isNativePodcastsPath"), v9, v10))
    {
      v11 = v0[13];
      sub_59CC4();
      v12 = v6;
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
        _os_log_impl(&dword_0, v13, v14, "Client response - fetched cached response with player path %@", v15, 0xCu);
        sub_9708(v16, &qword_7E260, &qword_5BE50);
      }

      v19 = v0[12];
      v18 = v0[13];
      v20 = v0[11];

      (*(v19 + 8))(v18, v20);
      v21 = v0[13];

      v22 = v0[1];

      return v22(v12);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v24 = swift_task_alloc();
  v0[14] = v24;
  *v24 = v0;
  v24[1] = sub_2E61C;
  v25 = v0[10];

  return sub_2E85C();
}

uint64_t sub_2E61C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  v7 = *(v4 + 104);

  v9 = *(v6 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

BOOL sub_2E748(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (!v11[0])
  {
    return 0;
  }

  v2 = [v11[0] isDeviceRoute];

  if (v2)
  {
    return 0;
  }

  v5 = a1 + 32;
  v6 = *(a1 + 16) + 1;
  do
  {
    v3 = --v6 != 0;
    if (!v6)
    {
      break;
    }

    v7 = v5 + 40;
    sub_123D8(v5, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v5 = v7;
  }

  while ((v10 & 1) == 0);
  return v3;
}

uint64_t sub_2E85C()
{
  v1[25] = v0;
  v2 = sub_59D14();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = sub_5A384();
  v1[30] = sub_5A374();
  v6 = sub_5A354();
  v1[31] = v6;
  v1[32] = v5;

  return _swift_task_switch(sub_2E954, v6, v5);
}

uint64_t sub_2E954()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v2, (v0 + 16));
  v3 = v0[19];
  v4 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v3);
  v5 = *(v4 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_2EAA4;

  return v9(v3, v4);
}

uint64_t sub_2EAA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = a1;

  v4 = *(v2 + 256);
  v5 = *(v2 + 248);

  return _swift_task_switch(sub_2EBCC, v5, v4);
}

uint64_t sub_2EBCC()
{
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v2 = qword_7CC68;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = v0[28];
  v5 = sub_5A174();
  v6 = sub_5A174();
  v7 = [objc_opt_self() pathWithRoute:v3 bundleID:v5 playerID:v6];
  v0[35] = v7;

  v8 = sub_4CE48();
  v0[36] = v8;
  [v8 setPlayerPath:v7];
  sub_59CC4();
  v9 = v7;
  v10 = sub_59D04();
  v11 = sub_5A474();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_0, v10, v11, "Client response - force fetched response with player path %@", v12, 0xCu);
    sub_9708(v13, &qword_7E260, &qword_5BE50);
  }

  v15 = v0[28];
  v16 = v0[29];
  v17 = v0[26];
  v18 = v0[27];

  (*(v18 + 8))(v15, v17);
  v19 = sub_5A374();
  v0[37] = v19;
  if (v19)
  {
    swift_getObjectType();
    v20 = sub_5A354();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  return _swift_task_switch(sub_2EE20, v20, v22);
}

uint64_t sub_2EE20()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 24;
  v6 = v0[36];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2EF7C;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_32CC0;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_498CC;
  v1[13] = &block_descriptor_172;
  v9 = _Block_copy(v4);
  v10 = v1[15];

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_2EF7C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 48);
  *(*v0 + 304) = v4;
  v5 = v1[37];
  if (v4)
  {
    swift_willThrow();

    v6 = v2[31];
    v7 = v2[32];
    v8 = sub_2F160;
  }

  else
  {
    v9 = v1[37];

    v2[39] = v2[24];
    v6 = v2[31];
    v7 = v2[32];
    v8 = sub_2F0CC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_2F0CC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);

  v5 = *(v0 + 8);
  v6 = *(v0 + 312);

  return v5(v6);
}

uint64_t sub_2F160()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);

  v5 = *(v0 + 8);
  v6 = *(v0 + 304);

  return v5();
}

uint64_t sub_2F1F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    **(*(a3 + 64) + 40) = a1;
    v4 = a1;

    return _swift_continuation_throwingResume(a3);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_31414();
      v5 = swift_allocError();
      *v6 = 0;
      v6[1] = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v7 = swift_allocError();
    *v8 = v5;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v7);
  }
}

uint64_t sub_2F2E4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_4FE4(0, &qword_7E298, MPCPlayerCommandStatus_ptr);
  **(*(v1 + 64) + 40) = sub_5A294();

  return _swift_continuation_resume(v1);
}

uint64_t sub_2F368@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_9768(v1 + v3, &v7, &qword_7DB38, &qword_5CE28);
  if (v8)
  {
    return sub_12440(&v7, a1);
  }

  sub_9708(&v7, &qword_7DB38, &qword_5CE28);
  v5 = _s20VolumeController_iOSCMa();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  a1[3] = v5;
  a1[4] = &off_740A0;
  *a1 = v6;
  sub_123D8(a1, &v7);
  swift_beginAccess();
  sub_312E8(&v7, v1 + v3, &qword_7DB38, &qword_5CE28);
  return swift_endAccess();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2F4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB40, &qword_5CE30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t PlaybackController.currentTime.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (v7 == 2)
  {
    return 0;
  }

  sub_594E4();
  v2 = v5 + (v1 - v3) * v6;
  if (v2 >= v4)
  {
    v2 = v4;
  }

  return fmax(v2, 0.0);
}

uint64_t sub_2F62C()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CAA0;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_272F8;
  v2 = *(v0 + 56);

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_2F70C()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CAB0;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_272F8;
  v2 = *(v0 + 56);

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_2F7EC()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CAC0;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2F8AC;
  v2 = *(v0 + 56);

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_2F8AC(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2FA04, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_2FA04()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t PlaybackController.performIntent(_:whenPossible:)(uint64_t a1, char a2)
{
  *(v3 + 289) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = sub_59D14();
  *(v3 + 176) = v4;
  v5 = *(v4 - 8);
  *(v3 + 184) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v7 = sub_59944();
  *(v3 + 200) = v7;
  v8 = *(v7 - 8);
  *(v3 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_2FB88, 0, 0);
}

uint64_t sub_2FB88()
{
  if ([objc_opt_self() supportsBlueMoon])
  {
    v2 = *(v0 + 208);
    v1 = *(v0 + 216);
    v3 = *(v0 + 200);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    sub_59884();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v6 = *(v0 + 144);
    LOBYTE(v4) = MediaIdentifier.firstItemMatchesEpisode(_:)(v6);

    (*(v2 + 8))(v1, v3);
    if (v4)
    {
      v7 = *(v0 + 168);
      *(v0 + 152) = _swiftEmptyArrayStorage;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_59E24();

      if ((*(v0 + 288) & 1) == 0)
      {
        v8 = *(v0 + 192);
        sub_59CC4();
        v9 = sub_59D04();
        v10 = sub_5A434();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_0, v9, v10, "Resuming episode that's already in the player", v11, 2u);
        }

        v13 = *(v0 + 184);
        v12 = *(v0 + 192);
        v14 = *(v0 + 176);

        (*(v13 + 8))(v12, v14);
        *(v0 + 96) = xmmword_5CAB0;
        *(v0 + 112) = 0;
        sub_5A2D4();
      }

      v15 = *(v0 + 160);
      v16 = sub_59844();
      if ((v17 & 1) == 0)
      {
        *(v0 + 128) = 0;
        *(v0 + 136) = 0;
        *(v0 + 120) = v16;
        sub_5A2D4();
      }

      v18 = sub_1CF54(*(v0 + 152));
      *(v0 + 224) = v18;

      v19 = swift_task_alloc();
      *(v0 + 232) = v19;
      *v19 = v0;
      v19[1] = sub_30074;
      v20 = *(v0 + 168);

      return sub_2AC24(v18, 0);
    }

    else
    {
      v25 = *(v0 + 160);
      if (*(v0 + 289) == 1)
      {
        *(v0 + 80) = type metadata accessor for PlaybackController.QueueCommand();
        *(v0 + 88) = &protocol witness table for PlaybackController.QueueCommand;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        v27 = sub_59904();
        (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v25, v27);
        swift_storeEnumTagMultiPayload();
        v28 = swift_task_alloc();
        *(v0 + 256) = v28;
        *v28 = v0;
        v28[1] = sub_30288;
        v29 = *(v0 + 168);

        return sub_28728(v0 + 56, 0, 5.0);
      }

      else
      {
        *(v0 + 40) = type metadata accessor for PlaybackController.QueueCommand();
        *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
        v31 = sub_59904();
        (*(*(v31 - 8) + 16))(v30, v25, v31);
        swift_storeEnumTagMultiPayload();
        v32 = swift_task_alloc();
        *(v0 + 272) = v32;
        *v32 = v0;
        v32[1] = sub_303F0;
        v33 = *(v0 + 168);

        return sub_2A8B0(v0 + 16, 0);
      }
    }
  }

  else
  {
    v22 = *(v0 + 216);
    v23 = *(v0 + 192);

    v24 = *(v0 + 8);

    return v24(0);
  }
}

uint64_t sub_30074(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v8 = *v2;
  v3[30] = a1;
  v3[31] = v1;

  if (v1)
  {
    v5 = sub_30558;
  }

  else
  {
    v6 = v3[28];

    v5 = sub_30190;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_30190()
{
  v1 = v0[30];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = v0[30];
    }

    result = sub_5A814();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = v0[30];

    v3 = 0;
    goto LABEL_11;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v9 = v0[30];
    v3 = sub_5A724();
    v10 = v0[30];
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[30] + 32);
  }

LABEL_11:
  v6 = v0[27];
  v7 = v0[24];

  v8 = v0[1];

  return v8(v3);
}

uint64_t sub_30288(uint64_t a1)
{
  v4 = *(*v2 + 256);
  v5 = *v2;
  v5[33] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_305D0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v5 + 7);
    v6 = v5[27];
    v7 = v5[24];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_303F0(uint64_t a1)
{
  v4 = *(*v2 + 272);
  v5 = *v2;
  v5[35] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_30648, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v5 + 2);
    v6 = v5[27];
    v7 = v5[24];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_30558()
{
  v1 = v0[28];

  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[24];

  v5 = v0[1];

  return v5();
}

uint64_t sub_305D0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v0[1];

  return v4();
}

uint64_t sub_30648()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[35];
  v2 = v0[27];
  v3 = v0[24];

  v4 = v0[1];

  return v4();
}

uint64_t sub_306C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    sub_24C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_5BC80;
    *(inited + 32) = a1;
    v6 = inited + 32;
    *(inited + 40) = a2;
    sub_4411C(inited, &off_71EC8);

    swift_setDeallocating();
    return sub_32C5C(v6);
  }

  else
  {
    sub_24C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D880, &unk_5CA40);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_5BC80;
    *(v8 + 32) = a1;
    sub_43BC4(v8, &off_71EA0);

    return swift_setDeallocating();
  }
}

void sub_307C4(char *a1@<X8>)
{
  v2 = sub_59464();
  v3 = sub_5A194();
  v5 = v4;
  if (v3 == sub_5A194() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_5A8E4();

  if (v8)
  {

LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  v10 = sub_5A194();
  v12 = v11;
  if (v10 == sub_5A194() && v12 == v13)
  {

    v9 = 0;
  }

  else
  {
    v15 = sub_5A8E4();

    if (v15)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_9:
  *a1 = v9;
}

uint64_t MPCPlayerCommandDialogAction.title.getter()
{
  v1 = [v0 localizedTitle];
  v2 = sub_5A194();

  return v2;
}

uint64_t sub_30968()
{
  v1 = [*v0 localizedTitle];
  v2 = sub_5A194();

  return v2;
}

uint64_t sub_309C0(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = sub_59D14();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  sub_5A384();
  v2[25] = sub_5A374();
  v7 = sub_5A354();
  v2[26] = v7;
  v2[27] = v6;

  return _swift_task_switch(sub_30AB4, v7, v6);
}

uint64_t sub_30AB4()
{
  v0[18] = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E278, &qword_5D280);
  sub_5108(&qword_7E280, &qword_7E278, &qword_5D280);
  if (sub_5A414())
  {
    v1 = v0[20];
    v2 = v0[21];
    v3 = objc_allocWithZone(MPCPlayerChangeRequest);
    sub_4FE4(0, &qword_7E288, MPCPlayerCommandRequest_ptr);
    isa = sub_5A284().super.isa;
    v5 = [v3 initWithCommandRequests:isa];
    v0[28] = v5;

    [v5 setOptions:v2];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_30D94;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E290, &qword_5D288);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_2F2E4;
    v0[13] = &block_descriptor_177;
    v0[14] = v6;
    [v5 performWithExtendedStatusCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v8 = v0[24];
    v7 = v0[25];

    sub_59CC4();
    v9 = sub_59D04();
    v10 = sub_5A454();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[22];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v9, v10, "No command requests are available to perform. Skipping.", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);
    v16 = v0[24];

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_30D94()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *v0;

  return _swift_task_switch(sub_30E9C, v2, v1);
}

uint64_t sub_30E9C()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 152);
  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_30F18()
{
  v0 = sub_5A5C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E360, &qword_5D310);
  v9 = *(v8 - 8);
  v27 = v8;
  v28 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E368, &qword_5D318);
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v26);
  v16 = &v25 - v15;
  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  sub_5A5D4();

  v19 = [v17 defaultCenter];
  sub_5A5D4();

  sub_31468(&qword_7E370, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_59F04();
  v20 = *(v1 + 8);
  v20(v5, v0);
  v20(v7, v0);
  sub_5108(&qword_7E378, &qword_7E360, &qword_5D310);
  v21 = v27;
  sub_59E84();
  (*(v28 + 8))(v12, v21);
  sub_5108(&unk_7E380, &qword_7E368, &qword_5D318);
  v22 = v26;
  v23 = sub_59E74();
  (*(v13 + 8))(v16, v22);
  return v23;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_312E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_31350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D9C;

  return sub_26F64(a1, v4, v5, v6);
}

_OWORD *sub_31404(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_31414()
{
  result = qword_7DCD0;
  if (!qword_7DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7DCD0);
  }

  return result;
}

uint64_t sub_31468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_31658@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  return sub_9768(v3 + v4, a2, &qword_7DB40, &qword_5CE30);
}

uint64_t sub_316C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_24C20();
  *a2 = result;
  return result;
}