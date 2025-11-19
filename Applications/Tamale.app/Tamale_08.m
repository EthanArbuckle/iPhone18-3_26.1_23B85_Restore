uint64_t sub_1000D6864()
{

  if (!v0)
  {

    return _swift_task_switch(sub_1000D6974, 0, 0);
  }

  return result;
}

uint64_t sub_1000D6974()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_15;
  }

  (*(v3 + 32))(*(v0 + 160), v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
LABEL_15:
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v27 = *(v0 + 8);

    return v27();
  }

  v36 = Strong;
  v5 = TrackManager.State.tracks.getter();
  v38 = *(v5 + 16);
  if (v38)
  {
    v8 = 0;
    v9 = &_swiftEmptyArrayStorage;
    v37 = v5;
    while (v8 < *(v5 + 16))
    {
      v42 = v9;
      v41 = *(v0 + 232);
      v10 = *(v0 + 120);
      v12 = *(v0 + 96);
      v11 = *(v0 + 104);
      v14 = *(v0 + 80);
      v13 = *(v0 + 88);
      v15 = *(v0 + 64);
      v16 = *(v0 + 72);
      v17 = *(v0 + 56);
      v18 = *(v10 + 16);
      v10 += 16;
      v40 = (*(v10 + 64) + 32) & ~*(v10 + 64);
      v39 = *(v10 + 56);
      v18(*(v0 + 136), v5 + v40 + v39 * v8, *(v0 + 112));
      CVTrackSnapshot.latestEstimate.getter();
      CVDetection.detectionType.getter();
      (*(v12 + 8))(v11, v13);
      (*(v15 + 104))(v16, v41, v17);
      sub_1000DDDB8(&qword_1001D8390, &type metadata accessor for CVDetection.DetectionType);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v15 + 8);
      v20(v16, v17);
      v20(v14, v17);
      if (v19)
      {
        (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
        v9 = v42;
      }

      else
      {
        v21 = *(*(v0 + 120) + 32);
        v21(*(v0 + 128), *(v0 + 136), *(v0 + 112));
        v9 = v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 40) = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000594C0(0, v42[2] + 1, 1);
          v9 = *(v0 + 40);
        }

        v24 = v9[2];
        v23 = v9[3];
        if (v24 >= v23 >> 1)
        {
          sub_1000594C0(v23 > 1, v24 + 1, 1);
          v9 = *(v0 + 40);
        }

        v25 = *(v0 + 128);
        v26 = *(v0 + 112);
        v9[2] = v24 + 1;
        v21(v9 + v40 + v24 * v39, v25, v26);
      }

      ++v8;
      v5 = v37;
      if (v38 == v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_19:
    v29 = *(v0 + 152);
    v30 = *(v0 + 160);
    v31 = *(v0 + 144);

    v32 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksLock;
    v33 = *(v36 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksLock);

    os_unfair_lock_lock(v33 + 4);

    *(v36 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksInternal) = v9;

    v34 = *(v36 + v32);

    os_unfair_lock_unlock(v34 + 4);

    (*(v29 + 8))(v30, v31);

    sub_100013608(&qword_1001DA778, &qword_1001DA768);
    v35 = swift_task_alloc();
    *(v0 + 224) = v35;
    *v35 = v0;
    v35[1] = sub_1000D6864;
    v5 = *(v0 + 168);
    v6 = 0;
    v7 = 0;
  }

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v6, v7);
}

uint64_t sub_1000D6E70(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return _swift_task_switch(sub_1000D6E90, 0, 0);
}

uint64_t sub_1000D6E90()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v1 + *(type metadata accessor for CameraControllerConfiguration(0) + 32));
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      if (v3 == 1)
      {
        v4 = v2 & 0x3FFFFFFFFFFFFFFFLL;
        v5 = &qword_1001DA6E0;
        *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
        *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
        v6 = &qword_1001DA6F0;
LABEL_9:
        *(v0 + 104) = sub_100013608(v6, v5);
        *(v0 + 64) = v4;
        goto LABEL_10;
      }
    }

    else if (v3 == 2)
    {
      v4 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      v5 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v6 = &qword_1001DA6D8;
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v2;
LABEL_10:
    sub_1000DD748((v0 + 64), (v0 + 16));
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    sub_100006AAC((v0 + 16), v7);
    v9 = *(v8 + 48);

    v15 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_1000D71DC;
    v11 = *(v0 + 112);

    return v15(v11, v7, v8);
  }

  sub_10006043C();
  swift_allocError();
  *v13 = 0;
  v13[1] = 0;
  swift_willThrow();
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000D71DC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000D7354;
  }

  else
  {
    v2 = sub_1000D72F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D72F0()
{
  sub_100006B44(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D7354()
{
  sub_100006B44(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v10;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  v8[15] = a2;
  v8[16] = a3;
  v8[14] = a1;
  return _swift_task_switch(sub_1000D73F0, 0, 0);
}

uint64_t sub_1000D73F0()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  sub_100006AAC((v0 + 16), *(v0 + 40));

  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_1000D7650;
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);

  return dispatch thunk of SaliencyStreamActionable.executeAction<A, B>(_:pill:executionParameter:)(v11, v12, v9, v10, v7, v8, v5, v6);
}

uint64_t sub_1000D7650()
{

  return _swift_task_switch(sub_1000D774C, 0, 0);
}

uint64_t sub_1000D774C()
{
  sub_100006B44(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D77AC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 112) = a1;
  *(v2 + 120) = v3;
  return _swift_task_switch(sub_1000D77D0, 0, 0);
}

uint64_t sub_1000D77D0()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 32);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1000D7A90;
  v8 = *(v0 + 112);

  return v10(v8, v4, v5);
}

uint64_t sub_1000D7A90()
{

  return _swift_task_switch(sub_1000DDEEC, 0, 0);
}

uint64_t sub_1000D7B8C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 112) = a1;
  *(v2 + 120) = v3;
  return _swift_task_switch(sub_1000D7BB0, 0, 0);
}

uint64_t sub_1000D7BB0()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 40);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1000D7A90;
  v8 = *(v0 + 112);

  return v10(v8, v4, v5);
}

uint64_t sub_1000D7E70(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019340;

  return sub_1000D6E70(a1, v4);
}

uint64_t sub_1000D7F30()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 56);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1000D81E8;

  return v9(v4, v5);
}

uint64_t sub_1000D81E8()
{

  return _swift_task_switch(sub_1000DDEEC, 0, 0);
}

uint64_t sub_1000D82E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 112) = a1;
  *(v2 + 120) = v3;
  return _swift_task_switch(sub_1000D8308, 0, 0);
}

uint64_t sub_1000D8308()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 72);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1000D7A90;
  v8 = *(v0 + 112);

  return v10(v8, v4, v5);
}

uint64_t sub_1000D85C8(uint64_t a1, uint64_t a2)
{
  v3[14] = a1;
  v3[15] = a2;
  v3[16] = *v2;
  return _swift_task_switch(sub_1000D85F0, 0, 0);
}

uint64_t sub_1000D85F0()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 80);

  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_1000D88B0;
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);

  return v11(v8, v9, v4, v5);
}

uint64_t sub_1000D88B0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1000D89C4;
  }

  else
  {
    v2 = sub_1000DDEF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D89C4()
{
  sub_100006B44(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D8A28(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  v4 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v4;
  return _swift_task_switch(sub_1000D8A50, 0, 0);
}

uint64_t sub_1000D8A50()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  v4 = *(v0 + 136);
  sub_1000DD748((v0 + 64), (v0 + 16));
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v5);
  v7 = *(v6 + 88);

  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_1000D7A90;
  v9 = *(v0 + 112);

  return (v11)(v9, v4 & 1, v5, v6);
}

uint64_t sub_1000D8D44()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 96);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1000D81E8;

  return v9(v4, v5);
}

uint64_t sub_1000D8FFC(char a1)
{
  *(v2 + 128) = a1;
  *(v2 + 112) = *v1;
  return _swift_task_switch(sub_1000D9024, 0, 0);
}

uint64_t sub_1000D9024()
{
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 104);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1000D81E8;
  v8 = *(v0 + 128);

  return v10(v8, v4, v5);
}

uint64_t sub_1000D92E4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = &qword_1001DA6E0;
      v7 = sub_1000033A8(&qword_1001DA6E0);
      v8 = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v4 = &qword_1001DA6F0;
    }

    else
    {
      v3 = &qword_1001DA6C8;
      v7 = sub_1000033A8(&qword_1001DA6C8);
      v8 = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v4 = &qword_1001DA6D8;
    }

    v9 = sub_100013608(v4, v3);
    *&v6 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1000033A8(&qword_1001DA6F8);
    v8 = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    v9 = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *&v6 = v1;
  }

  sub_1000DD748(&v6, &v10);
  sub_100006AAC(&v10, v11);

  dispatch thunk of SaliencyStreamIngredientsProviding.saliencyStreamIngredients.getter();
  return sub_100006B44(&v10);
}

uint64_t sub_1000D94D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100019340;

  return sub_1000D73B8(a1, a2, a3, a4, v16, a5, a6, a7);
}

uint64_t sub_1000D95CC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 112) = a1;
  v8 = *v6;
  *(v7 + 152) = a2;
  *(v7 + 160) = v8;
  return _swift_task_switch(sub_1000D95FC, 0, 0);
}

uint64_t sub_1000D95FC()
{
  v1 = *(v0 + 160);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 8);

  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_1000D985C;
  v8 = *(v0 + 152);
  v9.n128_u64[0] = *(v0 + 136);
  v10.n128_u64[0] = *(v0 + 144);
  v11.n128_u64[0] = *(v0 + 120);
  v12.n128_u64[0] = *(v0 + 128);
  v13 = *(v0 + 112);

  return dispatch thunk of SaliencyStreamActionable.actionPinFromUserSelection(_:excludedIdentifiers:)(v13, v8, v4, v6, v11, v12, v9, v10);
}

uint64_t sub_1000D985C()
{

  return _swift_task_switch(sub_1000DDEEC, 0, 0);
}

uint64_t sub_1000D9958()
{
  sub_1000DD760();

  return SaliencyStreamIdentifierProviding<>.streamIdentifier.getter();
}

uint64_t sub_1000D99A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1000DD760();
  *v9 = v4;
  v9[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.makeBundleManagerOutputStream(bufferingPolicyOverride:)(a1, a2, a3, v10, a4);
}

uint64_t sub_1000D9A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1000DD760();
  *v9 = v4;
  v9[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, v10, a4);
}

uint64_t sub_1000D9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1000DD760();
  *v9 = v4;
  v9[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, v10, a4);
}

uint64_t sub_1000D9C08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000DD760();
  v7 = sub_1000DD6F4();
  *v5 = v2;
  v5[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(a1, a2, v6, v7);
}

uint64_t sub_1000D9CD0(uint64_t a1)
{
  v3 = type metadata accessor for TrackManager();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100019774;

  return dispatch thunk of OutputStreamProviding.makeOutputStream()(a1, v3, &protocol witness table for TrackManager);
}

uint64_t sub_1000D9D90(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = *v1;
  v2[7] = type metadata accessor for CameraControllerConfiguration(0);
  v2[8] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[9] = v3;
  *v3 = v2;
  v3[1] = sub_1000D9EA0;

  return sub_1000DA4B0();
}

uint64_t sub_1000D9EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;

  v6 = v2 + 80;
  v5 = *(v2 + 80);
  v4 = *(v6 + 8);
  v10 = (*(v4 + 48) + **(v4 + 48));
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  *v7 = v3;
  v7[1] = sub_1000DA0B4;
  v8 = *(v1 + 24);

  return v10(v8, v5, v4);
}

uint64_t sub_1000DA0B4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 88) = v6;
    *v6 = v3;
    v6[1] = sub_1000DA22C;

    return sub_1000DA4B0();
  }
}

uint64_t sub_1000DA22C()
{

  return _swift_task_switch(sub_1000DA328, 0, 0);
}

uint64_t sub_1000DA328()
{
  v1 = v0[7];
  v2 = v0[3];
  sub_1000DABA8(1);
  if (*(v2 + *(v1 + 76)) == 1)
  {
    v3 = v0[4];
    v0[2] = v3;
    v4 = v0[8];
    v5 = v0[3];
    swift_getWitnessTable();
    v6 = SaliencyStreamIngredientsProviding.trackManager.getter();
    v7 = *(v3 + *(*v3 + 104));
    sub_10001FFF8(v5, v4);
    type metadata accessor for DebugPreviewLayer(0);
    swift_allocObject();
    v8 = sub_1000D5C94(v4, &unk_10017A0B0, v6);
  }

  else
  {
    v8 = 0;
    v7 = *(v0[4] + *(*v0[4] + 104));
  }

  *(v7 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer) = v8;

  sub_1000DABA8(0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000DA4B0()
{
  *(v1 + 64) = v0;
  *(v1 + 72) = *v0;
  return _swift_task_switch(sub_1000DA4F8, 0, 0);
}

uint64_t sub_1000DA4F8()
{
  v0[2] = v0[8];
  v0[10] = swift_getWitnessTable();
  v0[11] = SaliencyStreamIngredientsProviding.trackManager.getter();
  type metadata accessor for TrackManager();
  sub_1000DDDB8(&qword_1001DA730, &type metadata accessor for TrackManager);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DA5EC, v2, v1);
}

uint64_t sub_1000DA5EC()
{
  dispatch thunk of TrackManager.reset()();

  return _swift_task_switch(sub_1000DA65C, 0, 0);
}

uint64_t sub_1000DA65C()
{
  v0[2] = v0[8];
  v0[12] = SaliencyStreamIngredientsProviding.bundleManager.getter();
  type metadata accessor for BundleManager();
  sub_1000DDDB8(&qword_1001DA738, &type metadata accessor for BundleManager);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DA72C, v2, v1);
}

uint64_t sub_1000DA72C()
{
  dispatch thunk of BundleManager.reset()();

  return _swift_task_switch(sub_1000DA79C, 0, 0);
}

uint64_t sub_1000DA79C()
{
  v0[2] = v0[8];
  v0[13] = SaliencyStreamIngredientsProviding.bundleSelector.getter();
  type metadata accessor for BundleSelector();
  sub_1000DDDB8(&qword_1001DA740, &type metadata accessor for BundleSelector);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DA86C, v2, v1);
}

uint64_t sub_1000DA86C()
{
  dispatch thunk of BundleSelector.reset()();

  return _swift_task_switch(sub_1000DA8DC, 0, 0);
}

uint64_t sub_1000DA8DC()
{
  v0[2] = v0[8];
  v0[14] = SaliencyStreamIngredientsProviding.actionPredictor.getter();
  type metadata accessor for ActionPredictor();
  sub_1000DDDB8(&qword_1001DA748, &type metadata accessor for ActionPredictor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DA9AC, v2, v1);
}

uint64_t sub_1000DA9AC()
{
  dispatch thunk of ActionPredictor.reset()();

  return _swift_task_switch(sub_1000DAA1C, 0, 0);
}

uint64_t sub_1000DAA1C()
{
  v1 = *(v0[8] + *(*v0[8] + 104));
  v2 = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000DDED8;
  *(v3 + 24) = v1;
  v0[6] = sub_1000C5638;
  v0[7] = v3;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100071D78;
  v0[5] = &unk_1001C49F8;
  v4 = _Block_copy(v0 + 2);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_1000DABA8(char a1)
{
  if (a1)
  {
    swift_getWitnessTable();
    SaliencyStreamIngredientsProviding.cvCoordinator.getter();
    dispatch thunk of CVCoordinator.pause()();
  }

  else
  {
    swift_getWitnessTable();
    SaliencyStreamIngredientsProviding.cvCoordinator.getter();
    dispatch thunk of CVCoordinator.resume()();
  }
}

uint64_t sub_1000DAC74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return _swift_task_switch(sub_1000DACC0, 0, 0);
}

uint64_t sub_1000DACC0()
{
  v1 = (*(*(v0[5] + 88) + 72))(*(v0[5] + 80));
  if (v3 == 3 && (v1 | v2) == 0)
  {
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_1000DAE8C;
    v12 = v0[2];
    v13 = v0[3];

    return sub_1000EECE8(v12, v13);
  }

  else
  {
    sub_1000616E4(v1, v2, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "qualityFrame() called on unpaused camera source", v7, 2u);
    }

    v8 = v0[2];
    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000DAE8C()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_1000DAFC4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000DAFC4()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return (*(v0 + 8))();
}

uint64_t sub_1000DAFE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = sub_1000033A8(&qword_1001DA720);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  sub_1000033A8(&qword_1001D41B0);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB11C, 0, 0);
}

uint64_t sub_1000DB11C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v15 = v0[7];
  v16 = v1;
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v2, v7, v5);
  v10 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = *(v4 + 80);
  *(v11 + 5) = *(v4 + 88);
  (*(v3 + 32))(&v11[v10], v2, v5);
  *&v11[(v15 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v9;
  v12 = sub_1000154EC(0, 0, v16, &unk_10017A088, v11);
  sub_1000DDA14();
  *(v6 + *(*v6 + 136)) = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000DB2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v8 = sub_1000033A8(&qword_1001DA728);
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB3C8, 0, 0);
}

uint64_t sub_1000DB3C8()
{
  sub_1000033A8(&qword_1001DA720);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_1000DB4B0;
  v2 = *(v0 + 232);

  return AsyncStream.Iterator.next(isolation:)(v0 + 136, 0, 0, v2);
}

uint64_t sub_1000DB4B0()
{

  return _swift_task_switch(sub_1000DB5AC, 0, 0);
}

uint64_t sub_1000DB5AC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  if (v2 == 255)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
LABEL_8:

    v5 = *(v0 + 8);

    return v5();
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 264) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    goto LABEL_7;
  }

  isEscapingClosureAtFileLocation = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

LABEL_7:
    sub_1000DDA94(v1, v2);
    goto LABEL_8;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      sub_1000DABA8(v1 & 1);
LABEL_23:

      goto LABEL_24;
    }
  }

  else
  {
    v7 = *(isEscapingClosureAtFileLocation + *(*isEscapingClosureAtFileLocation + 112));
    sub_100014FBC();
    sub_1000DDAB8(v1, 0);
    v8 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000DDB08;
    *(v10 + 24) = v9;
    *(v0 + 48) = sub_10006180C;
    *(v0 + 56) = v10;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_100071D78;
    *(v0 + 40) = &unk_1001C4958;
    v11 = _Block_copy((v0 + 16));
    sub_1000DDB38(v1, 0);

    dispatch_sync(v8, v11);

    sub_1000DDA94(v1, 0);
    sub_1000DDA94(v1, 0);

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_24:
      v14 = swift_task_alloc();
      *(v0 + 256) = v14;
      *v14 = v0;
      v14[1] = sub_1000DB4B0;
      v15 = *(v0 + 232);

      return AsyncStream.Iterator.next(isolation:)(v0 + 136, 0, 0, v15);
    }

    __break(1u);
  }

  if (v1)
  {
    if (v1 == 1)
    {
      (*(*(v0 + 224) + 104))(*(v0 + 216));
    }

    else
    {
      (*(*(v0 + 224) + 96))(*(v0 + 216));
    }

    goto LABEL_23;
  }

  *(v0 + 152) = isEscapingClosureAtFileLocation;
  *(v0 + 272) = type metadata accessor for CameraSourceWrapper();
  *(v0 + 280) = swift_getWitnessTable();
  SaliencyStreamIngredientsProviding.cvCoordinator.getter();
  dispatch thunk of CVCoordinator.pause()();

  *(v0 + 160) = isEscapingClosureAtFileLocation;
  *(v0 + 288) = SaliencyStreamIngredientsProviding.trackManager.getter();
  type metadata accessor for TrackManager();
  sub_1000DDDB8(&qword_1001DA730, &type metadata accessor for TrackManager);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DBA7C, v13, v12);
}

uint64_t sub_1000DBA7C()
{
  dispatch thunk of TrackManager.reset()();

  return _swift_task_switch(sub_1000DBAEC, 0, 0);
}

uint64_t sub_1000DBAEC()
{
  v0[21] = v0[33];
  v0[37] = SaliencyStreamIngredientsProviding.bundleManager.getter();
  type metadata accessor for BundleManager();
  sub_1000DDDB8(&qword_1001DA738, &type metadata accessor for BundleManager);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DBBBC, v2, v1);
}

uint64_t sub_1000DBBBC()
{
  dispatch thunk of BundleManager.reset()();

  return _swift_task_switch(sub_1000DBC2C, 0, 0);
}

uint64_t sub_1000DBC2C()
{
  v0[22] = v0[33];
  v0[38] = SaliencyStreamIngredientsProviding.bundleSelector.getter();
  type metadata accessor for BundleSelector();
  sub_1000DDDB8(&qword_1001DA740, &type metadata accessor for BundleSelector);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DBCFC, v2, v1);
}

uint64_t sub_1000DBCFC()
{
  dispatch thunk of BundleSelector.reset()();

  return _swift_task_switch(sub_1000DBD6C, 0, 0);
}

uint64_t sub_1000DBD6C()
{
  v0[23] = v0[33];
  v0[39] = SaliencyStreamIngredientsProviding.actionPredictor.getter();
  type metadata accessor for ActionPredictor();
  sub_1000DDDB8(&qword_1001DA748, &type metadata accessor for ActionPredictor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DBE3C, v2, v1);
}

uint64_t sub_1000DBE3C()
{
  dispatch thunk of ActionPredictor.reset()();

  return _swift_task_switch(sub_1000DBEAC, 0, 0);
}

uint64_t sub_1000DBEAC()
{
  v1 = *(v0[33] + *(*v0[33] + 104));
  v2 = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000DDB4C;
  *(v3 + 24) = v1;
  v0[12] = sub_1000C5638;
  v0[13] = v3;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100071D78;
  v0[11] = &unk_1001C49A8;
  v4 = _Block_copy(v0 + 8);
  swift_retain_n();

  dispatch_sync(v2, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[33];
    (*(v0[28] + 88))(v0[27]);
    v0[24] = v9;
    SaliencyStreamIngredientsProviding.cvCoordinator.getter();
    dispatch thunk of CVCoordinator.resume()();

    v10 = swift_task_alloc();
    v0[32] = v10;
    *v10 = v0;
    v10[1] = sub_1000DB4B0;
    v8 = v0[29];
    v5 = (v0 + 17);
    v6 = 0;
    v7 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v5, v6, v7, v8);
}

uint64_t sub_1000DC0F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1000DC198;

  return sub_1000DAC74(v2 + 16, a2);
}

uint64_t sub_1000DC198()
{

  return _swift_task_switch(sub_1000DC294, 0, 0);
}

uint64_t sub_1000DC294()
{
  if (*(v0 + 40))
  {
    sub_10002AAA4((v0 + 16), *(v0 + 56));
  }

  else
  {
    sub_1000056C0(v0 + 16);
    v2 = type metadata accessor for CVError();
    sub_1000DDDB8(&qword_1001DA718, &type metadata accessor for CVError);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for CVError.frameNotFound(_:), v2);
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC434@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(*v1 + 104));
  v4 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_captureEffectsStreamInternal;
  v5 = sub_1000033A8(&qword_1001DA780);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000DC630()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  v1 = *(*v0 + 120);
  v2 = type metadata accessor for SaliencyStreamIngredients();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 144);
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1000DC794()
{
  sub_1000DC630();

  return swift_deallocClassInstance();
}

uint64_t sub_1000DC81C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000DC878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1000DC8FC()
{
  sub_1000DC3C0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC960(uint64_t a1)
{
  sub_1000DC434(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1000DC9C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000D9D90(a1);
}

uint64_t sub_1000DCA5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_1000DA4B0();
}

uint64_t sub_1000DCAEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000DAFE8(a1);
}

uint64_t sub_1000DCB84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019774;

  return sub_1000DC0F8(a1, a2);
}

uint64_t sub_1000DCC30(uint64_t a1, char a2)
{
  sub_1000DC4D0(a1, a2 & 1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1000DCC94()
{
  sub_1000DC548();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DCCF4(uint64_t a1)
{
  sub_1000DC5BC(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1000DCD54@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 120);
  v5 = type metadata accessor for SaliencyStreamIngredients();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000DCDDC()
{
  swift_getWitnessTable();

  return SaliencyStreamIngredientsProviding.bundleManager.getter();
}

uint64_t sub_1000DCE30()
{
  swift_getWitnessTable();

  return SaliencyStreamIngredientsProviding.bundleSelector.getter();
}

uint64_t sub_1000DCE84()
{
  swift_getWitnessTable();

  return SaliencyStreamIngredientsProviding.actionPredictor.getter();
}

uint64_t sub_1000DCED8()
{
  swift_getWitnessTable();

  return SaliencyStreamIdentifierProviding<>.streamIdentifier.getter();
}

uint64_t sub_1000DCF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.makeBundleManagerOutputStream(bufferingPolicyOverride:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t sub_1000DD020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t sub_1000DD104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t sub_1000DD1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = v9;
  v18 = swift_task_alloc();
  *(v16 + 16) = v18;
  WitnessTable = swift_getWitnessTable();
  *v18 = v16;
  v18[1] = sub_100019774;

  return SaliencyStreamActionProviding.executeAction<A, B>(_:pill:executionParameter:)(a1, a2, a3, a4, a9, a5, a6, WitnessTable, a7, a8);
}

uint64_t sub_1000DD300(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  WitnessTable = swift_getWitnessTable();
  *v15 = v7;
  v15[1] = sub_100019774;
  v17.n128_f64[0] = a4;
  v18.n128_f64[0] = a5;
  v19.n128_f64[0] = a6;
  v20.n128_f64[0] = a7;

  return SaliencyStreamActionProviding.actionPinFromUserSelection(_:excludedIdentifiers:)(a1, a2, a3, WitnessTable, v17, v18, v19, v20);
}

uint64_t sub_1000DD40C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_100019774;

  return SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(a1, a2, WitnessTable, v7);
}

uint64_t sub_1000DD53C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_1000DD5C0()
{
  result = qword_1001DA6A8;
  if (!qword_1001DA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA6A8);
  }

  return result;
}

unint64_t sub_1000DD614(void *a1)
{
  a1[1] = sub_1000DD64C();
  a1[2] = sub_1000DD6A0();
  result = sub_1000DD6F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1000DD64C()
{
  result = qword_1001DA6B0;
  if (!qword_1001DA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA6B0);
  }

  return result;
}

unint64_t sub_1000DD6A0()
{
  result = qword_1001DA6B8;
  if (!qword_1001DA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA6B8);
  }

  return result;
}

unint64_t sub_1000DD6F4()
{
  result = qword_1001DA6C0;
  if (!qword_1001DA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA6C0);
  }

  return result;
}

_OWORD *sub_1000DD748(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1000DD760()
{
  result = qword_1001DA710;
  if (!qword_1001DA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA710);
  }

  return result;
}

uint64_t sub_1000DD7B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DD7EC()
{
  v1 = sub_1000033A8(&qword_1001DA720);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000DD8D0(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(sub_1000033A8(&qword_1001DA720) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100019774;

  return sub_1000DB2F8(a1, v9, v10, v1 + v8, v11, v6, v5);
}

uint64_t sub_1000DDA14()
{
  if (*(v0 + *(*v0 + 136)))
  {

    Task.cancel()();
  }

  return result;
}

void sub_1000DDA94(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1000DDAA8(a1, a2);
  }
}

void sub_1000DDAA8(id a1, char a2)
{
  if (!a2)
  {
  }
}

id sub_1000DDAB8(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000DDAC8()
{

  return swift_deallocObject();
}

uint64_t sub_1000DDB20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000DDB38(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000DDAB8(result, a2);
  }

  return result;
}

uint64_t sub_1000DDB54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000D9CD0(a1);
}

dispatch_workloop_t sub_1000DDBF0()
{
  inactive = dispatch_workloop_create_inactive("DebugDraw");

  return inactive;
}

id sub_1000DDC20(void *a1)
{
  v1 = a1;
  if (FigCaptureGetExperimentsEnabled())
  {
    v2 = objc_alloc(NSClassFromString(@"CMIDrawShapeGPU"));
    v3 = [v2 performSelector:"initWithOptionalCommandQueue:" withObject:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1000DDCA8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DDCF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100019340;

  return sub_1000D62A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000DDDB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DDE00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DDE50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000DDEA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t Numeric<>.isApproximatelyEqual(to:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  v20 = a1;
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = __chkstk_darwin(AssociatedTypeWitness);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  dispatch thunk of static FloatingPoint.leastNormalMagnitude.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v18 = *(v12 + 8);
  v18(v15, AssociatedTypeWitness);
  LOBYTE(a7) = AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(v20, v17, a2, v21, v22, a5, AssociatedTypeWitness, *(a6 + 8), a7);
  v18(v17, AssociatedTypeWitness);
  return a7 & 1;
}

uint64_t AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a4;
  v46 = a3;
  v47 = a2;
  v12 = *(a6 - 8);
  v40 = a5;
  v41 = v12;
  v13 = __chkstk_darwin(a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v16 - 8);
  v17 = __chkstk_darwin(v13);
  v45 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v38 - v23;
  v25 = __chkstk_darwin(v22);
  v42 = &v38 - v26;
  __chkstk_darwin(v25);
  v28 = &v38 - v27;
  v30 = v29;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v31 = 1;
  }

  else
  {
    v38 = a9;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v39 = v28;
    v32 = v44;
    v44(v15);
    (*(v41 + 8))(v15, a6);
    v32(v9);
    v33 = v39;
    v32(v30);
    v34 = v42;
    max<A>(_:_:)();
    v35 = *(v43 + 8);
    v35(v21, a7);
    v35(v24, a7);
    dispatch thunk of static Numeric.* infix(_:_:)();
    v36 = v45;
    max<A>(_:_:)();
    v35(v24, a7);
    if (dispatch thunk of FloatingPoint.isFinite.getter())
    {
      v31 = dispatch thunk of static Comparable.<= infix(_:_:)();
    }

    else
    {
      v31 = 0;
    }

    v35(v36, a7);
    v35(v34, a7);
    v35(v33, a7);
  }

  return v31 & 1;
}

uint64_t Numeric<>.isApproximatelyEqual(to:absoluteTolerance:relativeTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v14 = a5;
  v15 = a6;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = AdditiveArithmetic.isApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(a1, a2, a3, sub_1000DE560, v13, a4, AssociatedTypeWitness, *(v14 + 8), v15);

  return v11 & 1;
}

__n128 sub_1000DE54C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1000DE57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcmeState();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DE5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcmeState();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ACMEResultView()
{
  result = qword_1001DA7E0;
  if (!qword_1001DA7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DE6B8()
{
  result = type metadata accessor for AcmeState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000DE740@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_1000033A8(&qword_1001DA818);
  __chkstk_darwin(v34);
  v3 = &v31 - v2;
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000033A8(&qword_1001DA820);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v33 = sub_1000033A8(&qword_1001DA828);
  __chkstk_darwin(v33);
  v9 = &v31 - v8;
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for AcmeState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for AcmeState.onboardingRequired(_:))
  {
    (*(v13 + 96))(v15, v12);
    v17 = type metadata accessor for AskAcmeRequirement();
    (*(*(v17 - 8) + 8))(v15, v17);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_1000DED2C();
    return _ConditionalContent<>.init(storage:)();
  }

  if (v16 == enum case for AcmeState.error(_:))
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_5;
  }

  if (v16 == enum case for AcmeState.running(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    sub_100019848();
    if (!NSBundle.init(__dsoHandle:)())
    {
      v19 = [objc_opt_self() mainBundle];
    }

    static Locale.current.getter();
    v20 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v21;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0x20676E69646E6553;
    v23._object = 0xEB00000000206F74;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
    v24._countAndFlagsBits = v20;
    v24._object = v22;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v24);

    v25._countAndFlagsBits = 10911970;
    v25._object = 0xA300000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
    LocalizedStringKey.init(stringInterpolation:)();
    v26 = Text.init(_:tableName:bundle:comment:)();
    v28 = v27;
    LOBYTE(v22) = v29;
    Text.latencyTextStyle()();
    sub_100020D44(v26, v28, v22 & 1);

    swift_getOpaqueTypeConformance2();
    v30 = v32;
    View.accessibilityIdentifier(_:)();
    (*(v31 + 8))(v7, v30);
    sub_1000DEE28(v9, v3);
    swift_storeEnumTagMultiPayload();
    sub_1000DED2C();
    _ConditionalContent<>.init(storage:)();
    return sub_1000DEE98(v9);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000DED2C()
{
  result = qword_1001DA830;
  if (!qword_1001DA830)
  {
    sub_10001276C(&qword_1001DA828);
    swift_getOpaqueTypeConformance2();
    sub_1000DEDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA830);
  }

  return result;
}

unint64_t sub_1000DEDD0()
{
  result = qword_1001D3DB8;
  if (!qword_1001D3DB8)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D3DB8);
  }

  return result;
}

uint64_t sub_1000DEE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DEE98(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DA828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DEF04()
{
  result = qword_1001DA838;
  if (!qword_1001DA838)
  {
    sub_10001276C(&qword_1001DA840);
    sub_1000DED2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA838);
  }

  return result;
}

uint64_t sub_1000DEFBC(uint64_t a1, uint64_t a2)
{
  v4 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v7 = v4;
  v13[24] = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_1000033A8(&qword_1001DA848);
  sub_1000DF144();
  View.onTapGesture(count:perform:)();

  v14[4] = v11;
  v14[5] = v12;
  v15[0] = *v13;
  *(v15 + 9) = *&v13[9];
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  return sub_1000DF2B8(v14);
}

uint64_t sub_1000DF10C()
{

  return swift_deallocObject();
}

unint64_t sub_1000DF144()
{
  result = qword_1001DA850;
  if (!qword_1001DA850)
  {
    sub_10001276C(&qword_1001DA848);
    sub_1000DF1D0();
    sub_1000DF254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA850);
  }

  return result;
}

unint64_t sub_1000DF1D0()
{
  result = qword_1001DA858;
  if (!qword_1001DA858)
  {
    sub_10001276C(&qword_1001DA860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA858);
  }

  return result;
}

unint64_t sub_1000DF254()
{
  result = qword_1001DA868;
  if (!qword_1001DA868)
  {
    sub_10001276C(&qword_1001DA870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA868);
  }

  return result;
}

uint64_t sub_1000DF2B8(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DA848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DF320()
{
  sub_10001276C(&qword_1001DA848);
  sub_1000DF144();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000DF3B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v41 = a3;
  v13 = sub_1000033A8(&qword_1001DA8A8);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_1000033A8(&qword_1001DA8C8);
  v39 = *(v16 - 8);
  v40 = v16;
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = sub_1000033A8(&qword_1001DA8A0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v38 - v21;
  if (TransitionPhase.isIdentity.getter())
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 16.0;
  }

  v24 = sub_1000033A8(&qword_1001DA8C0);
  (*(*(v24 - 8) + 16))(v15, a1, v24);
  v25 = &v15[*(v13 + 36)];
  *v25 = v23;
  v25[8] = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  *(v26 + 32) = a6;
  *(v26 + 40) = a7;
  *(v26 + 48) = a2;
  sub_1000033A8(&qword_1001D73C0);
  sub_1000DFC80();
  v27 = type metadata accessor for EmptyVisualEffect();
  v28 = sub_1000DFD78();
  v42 = v27;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  sub_1000DFDF0(v15);
  if (TransitionPhase.isIdentity.getter())
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  (*(v39 + 32))(v22, v18, v40);
  *&v22[*(v20 + 44)] = v29;
  if (TransitionPhase.isIdentity.getter())
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.98;
  }

  static UnitPoint.center.getter();
  v32 = v31;
  v34 = v33;
  v35 = v41;
  sub_1000DFE58(v22, v41);
  result = sub_1000033A8(&qword_1001DA880);
  v37 = v35 + *(result + 36);
  *v37 = v30;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  return result;
}

uint64_t sub_1000DF700(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  v8 = type metadata accessor for NamedCoordinateSpace();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0x6C61626F6C67;
  *&v29 = -2.12455197e183;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.bounds(of:)();
  v12 = *&v28;
  v13 = *&v29;
  v14 = v30;
  v15 = v31;
  v16 = *(v9 + 8);
  v16(v11, v8);
  if (v32)
  {
    v17 = a4;
  }

  else
  {
    a1 = v12;
    a2 = v13;
    a3 = v14;
    v17 = v15;
  }

  *v27 = v17;
  v27[1] = 0x6C61626F6C67;
  v27[2] = 0xE600000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v16(v11, v8);
  if ((TransitionPhase.isIdentity.getter() & 1) == 0)
  {
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    *&v33.size.height = v27[0];
    CGRectGetMidY(v33);
    v34.origin.x = v19;
    v34.origin.y = v21;
    v34.size.width = v23;
    v34.size.height = v25;
    CGRectGetMinY(v34);
  }

  type metadata accessor for EmptyVisualEffect();
  sub_1000DFD78();
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_1000DF944()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.speed(_:)();

  sub_1000033A8(&qword_1001DA878);
  sub_1000033A8(&qword_1001DA880);
  sub_1000DFD24(&qword_1001DA888, &qword_1001DA878);
  sub_1000DFAC8();
  View.animation<A>(_:body:)();
}

unint64_t sub_1000DFAC8()
{
  result = qword_1001DA890;
  if (!qword_1001DA890)
  {
    sub_10001276C(&qword_1001DA880);
    sub_1000DFB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA890);
  }

  return result;
}

unint64_t sub_1000DFB54()
{
  result = qword_1001DA898;
  if (!qword_1001DA898)
  {
    sub_10001276C(&qword_1001DA8A0);
    sub_10001276C(&qword_1001DA8A8);
    sub_10001276C(&qword_1001D73C0);
    sub_1000DFC80();
    type metadata accessor for EmptyVisualEffect();
    sub_1000DFD78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA898);
  }

  return result;
}

unint64_t sub_1000DFC80()
{
  result = qword_1001DA8B0;
  if (!qword_1001DA8B0)
  {
    sub_10001276C(&qword_1001DA8A8);
    sub_1000DFD24(&qword_1001DA8B8, &qword_1001DA8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA8B0);
  }

  return result;
}

uint64_t sub_1000DFD24(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DFD78()
{
  result = qword_1001D73E0;
  if (!qword_1001D73E0)
  {
    type metadata accessor for EmptyVisualEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73E0);
  }

  return result;
}

uint64_t sub_1000DFDF0(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DA8A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DFE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA8A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DFEC8()
{
  sub_10001276C(&qword_1001DA878);
  sub_10001276C(&qword_1001DA880);
  sub_1000DFD24(&qword_1001DA888, &qword_1001DA878);
  sub_1000DFAC8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000DFF70()
{
  swift_getKeyPath();
  sub_1000E1668();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000DFFE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E1668();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000E0080(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E1668();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000E0158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E024C, v7, v6);
}

uint64_t sub_1000E024C()
{
  v21 = v0;

  static Log.ui.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = 0xEA0000000000676ELL;
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    swift_getKeyPath();
    v0[4] = v4;
    sub_1000E1668();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + 16))
    {
      if (*(v4 + 16) == 1)
      {
        v7 = 0x69746E6573657270;
      }

      else
      {
        v3 = 0xE400000000000000;
        v7 = 1701602409;
      }
    }

    else
    {
      v7 = 0x69737365636F7270;
    }

    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];
    v14 = sub_1000E0FE0(v7, v3, &v20);

    *(v5 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "SiriRequestStateResponder - siriWillPresentResults received, currentState: %s", v5, 0xCu);
    sub_100006B44(v6);

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];

    (*(v9 + 8))(v8, v10);
  }

  v15 = v0[5];
  swift_getKeyPath();
  v0[2] = v15;
  sub_1000E1668();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v15 + 16))
  {
    v16 = v0[5];
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 1;
    v0[3] = v16;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000E054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0640, v7, v6);
}

uint64_t sub_1000E0640()
{
  v22 = v0;

  static Log.ui.getter();
  swift_retain_n();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = 0xEA0000000000676ELL;
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v5 = 136315394;
    swift_getKeyPath();
    v0[4] = v4;
    sub_1000E1668();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + 16))
    {
      if (*(v4 + 16) == 1)
      {
        v6 = 0x69746E6573657270;
      }

      else
      {
        v3 = 0xE400000000000000;
        v6 = 1701602409;
      }
    }

    else
    {
      v6 = 0x69737365636F7270;
    }

    v10 = v0[8];
    v11 = v0[6];
    v18 = v0[7];
    v19 = v0[9];
    v12 = sub_1000E0FE0(v6, v3, &v21);

    *(v5 + 4) = v12;
    *(v5 + 12) = 1024;
    swift_getKeyPath();
    v0[5] = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LODWORD(v12) = *(v4 + 16);

    *(v5 + 14) = v12 == 2;

    _os_log_impl(&_mh_execute_header, v1, v2, "SiriRequestStateResponder - siriWillProcessRequest received, currentState: %s idle: %{BOOL}d", v5, 0x12u);
    sub_100006B44(v20);

    (*(v10 + 8))(v19, v18);
  }

  else
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];

    (*(v8 + 8))(v7, v9);
  }

  v13 = v0[6];
  swift_getKeyPath();
  v0[2] = v13;
  sub_1000E1668();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v13 + 16) == 2)
  {
    v14 = v0[6];
    swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    v0[3] = v14;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E09A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for Logger();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0A9C, v7, v6);
}

uint64_t sub_1000E0A9C()
{
  v20 = v0;

  static Log.ui.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = 0xEA0000000000676ELL;
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getKeyPath();
    v0[3] = v4;
    sub_1000E1668();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + 16))
    {
      if (*(v4 + 16) == 1)
      {
        v7 = 0x69746E6573657270;
      }

      else
      {
        v3 = 0xE400000000000000;
        v7 = 1701602409;
      }
    }

    else
    {
      v7 = 0x69737365636F7270;
    }

    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = sub_1000E0FE0(v7, v3, &v19);

    *(v5 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "SiriRequestStateResponder - siriDidDeactivate received, currentState: %s", v5, 0xCu);
    sub_100006B44(v6);

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];

    (*(v9 + 8))(v8, v10);
  }

  v15 = v0[4];
  if (*(v15 + 16) != 2)
  {
    swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v15;
    *(v16 + 24) = 2;
    v0[2] = v15;
    sub_1000E1668();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000E0D68()
{
  v1 = OBJC_IVAR____TtC6Tamale25SiriRequestStateResponder___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriRequestStateResponder()
{
  result = qword_1001DA900;
  if (!qword_1001DA900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E0E58()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000E0F08()
{
  result = qword_1001DAA08;
  if (!qword_1001DAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAA08);
  }

  return result;
}

uint64_t sub_1000E0F84(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000E0FE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000E0FE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000E10AC(v11, 0, 0, 1, a1, a2);
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
    sub_10005BB68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006B44(v11);
  return v7;
}

unint64_t sub_1000E10AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000E11B8(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000E11B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000E1204(a1, a2);
  sub_1000E1334(&off_1001BEAE0);
  return v3;
}

char *sub_1000E1204(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000E1420(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000E1420(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_1000E1334(uint64_t result)
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

  result = sub_1000E1494(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1000E1420(uint64_t a1, uint64_t a2)
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

  sub_1000033A8(&qword_1001DAA10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000E1494(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000033A8(&qword_1001DAA10);
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

_BYTE **sub_1000E1588(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1000E1598(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_1000E160C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1000E1668()
{
  result = qword_1001D4218;
  if (!qword_1001D4218)
  {
    type metadata accessor for SiriRequestStateResponder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D4218);
  }

  return result;
}

uint64_t sub_1000E16D8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000E16F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000E170C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000E1768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000E17FC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for ScrollBounceBehavior();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000033A8(&qword_1001DAA18);
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v28 - v5;
  v34 = sub_1000033A8(&qword_1001DAA20);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v28 - v7;
  v30 = sub_1000033A8(&qword_1001DAA28);
  __chkstk_darwin(v30);
  v9 = &v28 - v8;
  v32 = sub_1000033A8(&qword_1001DAA30);
  __chkstk_darwin(v32);
  v11 = &v28 - v10;
  v33 = sub_1000033A8(&qword_1001DAA38);
  __chkstk_darwin(v33);
  v13 = &v28 - v12;
  v40 = v1;
  static Axis.Set.vertical.getter();
  sub_1000033A8(&qword_1001DAA40);
  sub_100013608(&qword_1001DAA48, &qword_1001DAA40);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v14 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v14)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100013608(&qword_1001DAA50, &qword_1001DAA18);
  v15 = v29;
  v16 = v36;
  View.scrollBounceBehavior(_:axes:)();
  (*(v37 + 8))(v4, v38);
  (*(v35 + 8))(v6, v16);
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  (*(v31 + 32))(v9, v15, v34);
  v19 = &v9[*(v30 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v9, v11, &qword_1001DAA28);
  v20 = &v11[*(v32 + 36)];
  v21 = v46;
  *(v20 + 4) = v45;
  *(v20 + 5) = v21;
  *(v20 + 6) = v47;
  v22 = v42;
  *v20 = v41;
  *(v20 + 1) = v22;
  v23 = v44;
  *(v20 + 2) = v43;
  *(v20 + 3) = v23;
  sub_10002091C(v11, v13, &qword_1001DAA30);
  *&v13[*(v33 + 36)] = 0;
  v24 = static SafeAreaRegions.all.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  v25 = v39;
  sub_10002091C(v13, v39, &qword_1001DAA38);
  result = sub_1000033A8(&qword_1001DAA58);
  v27 = v25 + *(result + 36);
  *v27 = v24;
  *(v27 + 8) = KeyPath;
  return result;
}

uint64_t sub_1000E1DA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000033A8(&qword_1001DAA60);
  return sub_1000E1DF4(a1, a2 + *(v5 + 44));
}

uint64_t sub_1000E1DF4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v39 = a2;
  v38 = sub_1000033A8(&qword_1001DAA68);
  v2 = __chkstk_darwin(v38);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v37 - v5);
  v7 = sub_1000033A8(&qword_1001D50B0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  *&v40 = 0;
  BYTE8(v40) = 1;
  sub_1000033A8(&qword_1001D50B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100170800;
  v15 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v15;
  v16 = static Axis.Set.vertical.getter();
  *(inited + 33) = v16;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  View.containerRelativeFrame(_:alignment:)();
  *v6 = static Alignment.center.getter();
  v6[1] = v17;
  v18 = sub_1000033A8(&qword_1001DAA70);
  sub_1000E21DC(v37, v6 + *(v18 + 44));
  v19 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v6 + *(sub_1000033A8(&qword_1001DAA78) + 36);
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  static Edge.Set.vertical.getter();
  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  SafeAreaPaddingModifier.init(edges:insets:)();
  v29 = *(v8 + 16);
  v29(v11, v13, v7);
  sub_1000138BC(v6, v4, &qword_1001DAA68);
  v30 = v13;
  v31 = v11;
  v32 = v4;
  v33 = v39;
  v29(v39, v31, v7);
  v34 = sub_1000033A8(&qword_1001DAA80);
  sub_1000138BC(v32, &v33[*(v34 + 48)], &qword_1001DAA68);
  sub_10001370C(v6, &qword_1001DAA68);
  v35 = *(v8 + 8);
  v35(v30, v7);
  sub_10001370C(v32, &qword_1001DAA68);
  return (v35)(v31, v7);
}

uint64_t sub_1000E21DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1000033A8(&qword_1001DAA88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - v5;
  v7 = sub_1000033A8(&qword_1001DAA90);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_1000033A8(&qword_1001DAA98);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  *v18 = static HorizontalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = sub_1000033A8(&qword_1001DAAA0);
  sub_1000E251C(a1, &v18[*(v19 + 44)]);
  v20 = a1[6];
  v21 = 1;
  if (v20)
  {

    *v6 = static HorizontalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v22 = sub_1000033A8(&qword_1001DAAB0);
    sub_1000E3688(v20, &v6[*(v22 + 44)]);
    sub_100005640(v20);
    sub_10002091C(v6, v12, &qword_1001DAA88);
    v21 = 0;
  }

  (*(v4 + 56))(v12, v21, 1, v3);
  sub_1000138BC(v18, v16, &qword_1001DAA98);
  sub_1000138BC(v12, v10, &qword_1001DAA90);
  v23 = v27;
  sub_1000138BC(v16, v27, &qword_1001DAA98);
  v24 = sub_1000033A8(&qword_1001DAAA8);
  sub_1000138BC(v10, v23 + *(v24 + 48), &qword_1001DAA90);
  sub_10001370C(v12, &qword_1001DAA90);
  sub_10001370C(v18, &qword_1001DAA98);
  sub_10001370C(v10, &qword_1001DAA90);
  return sub_10001370C(v16, &qword_1001DAA98);
}

uint64_t sub_1000E251C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v3 = sub_1000033A8(&qword_1001DA3C0);
  v147 = *(v3 - 8);
  v148 = v3;
  __chkstk_darwin(v3);
  v140 = &v129 - v4;
  v5 = sub_1000033A8(&qword_1001DA3C8);
  v6 = __chkstk_darwin(v5 - 8);
  v150 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v149 = &v129 - v8;
  v9 = type metadata accessor for Font.Leading();
  v137 = *(v9 - 8);
  v138 = v9;
  __chkstk_darwin(v9);
  v136 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000033A8(&qword_1001DAB40);
  v143 = *(v11 - 8);
  v144 = v11;
  __chkstk_darwin(v11);
  v139 = &v129 - v12;
  v13 = sub_1000033A8(&qword_1001DAB48);
  v14 = __chkstk_darwin(v13 - 8);
  v146 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v155 = &v129 - v16;
  v17 = type metadata accessor for SymbolEffectOptions();
  v135 = *(v17 - 8);
  __chkstk_darwin(v17);
  v134 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BounceSymbolEffect();
  v132 = *(v19 - 8);
  v133 = v19;
  v20 = __chkstk_darwin(v19);
  v152 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v129 - v22;
  v24 = type metadata accessor for Image.ResizingMode();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_1000033A8(&qword_1001DAB50);
  __chkstk_darwin(v153);
  v29 = &v129 - v28;
  v30 = sub_1000033A8(&qword_1001DAB58);
  v31 = *(v30 - 8);
  v141 = v30;
  v142 = v31;
  __chkstk_darwin(v30);
  v131 = &v129 - v32;
  v33 = sub_1000033A8(&qword_1001DAB60);
  v34 = __chkstk_darwin(v33 - 8);
  v145 = &v129 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = a1[5];
  v156 = a1;
  v154 = &v129 - v36;
  if (v37)
  {
    v38 = a1[4];
    v129 = v37;
    v130 = v38;

    Image.init(systemName:)();
    (*(v25 + 104))(v27, enum case for Image.ResizingMode.stretch(_:), v24);
    v39 = v17;
    v40 = Image.resizable(capInsets:resizingMode:)();

    (*(v25 + 8))(v27, v24);
    v41 = &v29[*(sub_1000033A8(&qword_1001DABB0) + 36)];
    v42 = *(sub_1000033A8(&qword_1001D5148) + 28);
    static SymbolRenderingMode.multicolor.getter();
    v43 = type metadata accessor for SymbolRenderingMode();
    (*(*(v43 - 8) + 56))(v41 + v42, 0, 1, v43);
    *v41 = swift_getKeyPath();
    *v29 = v40;
    *(v29 + 1) = 0;
    *(v29 + 8) = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = &v29[*(sub_1000033A8(&qword_1001DABB8) + 36)];
    v45 = v176;
    *v44 = v175;
    *(v44 + 1) = v45;
    *(v44 + 2) = v177;
    LOBYTE(v41) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = &v29[*(sub_1000033A8(&qword_1001DABC0) + 36)];
    *v54 = v41;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    BounceSymbolEffect.init()();
    BounceSymbolEffect.up.getter();
    v55 = v133;
    v132 = *(v132 + 8);
    (v132)(v23, v133);
    v56 = v134;
    static SymbolEffectOptions.default.getter();
    v57 = &v29[*(v153 + 36)];
    v58 = sub_1000033A8(&qword_1001D6C80);
    v59 = v135;
    (*(v135 + 16))(&v57[*(v58 + 36)], v56, v39);
    v60 = &v57[*(v58 + 40)];
    v61 = v129;
    *v60 = v130;
    *(v60 + 1) = v61;
    sub_1000E44D4(&qword_1001D6C88, &type metadata accessor for BounceSymbolEffect);

    v62 = v152;
    a1 = v156;
    dispatch thunk of SymbolEffect.configuration.getter();
    (*(v59 + 8))(v56, v39);
    (v132)(v62, v55);
    sub_1000E451C();
    v63 = v131;
    View.accessibilityIdentifier(_:)();
    sub_10001370C(v29, &qword_1001DAB50);
    v64 = v154;
    sub_10002091C(v63, v154, &qword_1001DAB58);
    (*(v142 + 56))(v64, 0, 1, v141);
  }

  else
  {
    (*(v142 + 56))(&v129 - v36, 1, 1, v141);
  }

  v65 = a1[1];
  if (v65)
  {
    *&v165 = *a1;
    *(&v165 + 1) = v65;
    sub_10002EC9C();

    v66 = Text.init<A>(_:)();
    v68 = v67;
    v70 = v69;
    static Font.largeTitle.getter();
    v72 = v136;
    v71 = v137;
    v73 = v138;
    (*(v137 + 104))(v136, enum case for Font.Leading.tight(_:), v138);
    Font.leading(_:)();

    (*(v71 + 8))(v72, v73);
    v74 = Text.font(_:)();
    v76 = v75;
    LOBYTE(v72) = v77;

    sub_100020D44(v66, v68, v70 & 1);

    static Font.Weight.regular.getter();
    v153 = Text.fontWeight(_:)();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_100020D44(v74, v76, v72 & 1);

    KeyPath = swift_getKeyPath();
    v85 = static Color.white.getter();
    v86 = v81 & 1;
    LOBYTE(v157) = v81 & 1;
    v87 = swift_allocObject();
    v88 = v156[3];
    v87[3] = v156[2];
    v87[4] = v88;
    v87[5] = v156[4];
    v89 = v156[1];
    v87[1] = *v156;
    v87[2] = v89;
    sub_1000E42A4(v156, &v165);
    v90 = static Alignment.center.getter();
    v92 = v91;
    LOBYTE(v72) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v174 = 0;
    *&v157 = v153;
    *(&v157 + 1) = v79;
    LOBYTE(v158) = v86;
    *(&v158 + 1) = v83;
    *&v159 = KeyPath;
    BYTE8(v159) = 1;
    *&v160 = v85;
    WORD4(v160) = 256;
    *&v161 = sub_1000E429C;
    *(&v161 + 1) = v87;
    *&v162 = v90;
    *(&v162 + 1) = v92;
    LOBYTE(v163) = v72;
    *(&v163 + 1) = v93;
    *&v164[0] = v94;
    *(&v164[0] + 1) = v95;
    *&v164[1] = v96;
    BYTE8(v164[1]) = 0;
    sub_1000033A8(&qword_1001DAB70);
    sub_1000E42DC();
    v97 = v139;
    View.accessibilityIdentifier(_:)();
    v171 = v163;
    v172[0] = v164[0];
    *(v172 + 9) = *(v164 + 9);
    v167 = v159;
    v168 = v160;
    v169 = v161;
    v170 = v162;
    v165 = v157;
    v166 = v158;
    a1 = v156;
    sub_10001370C(&v165, &qword_1001DAB70);
    v98 = v155;
    sub_10002091C(v97, v155, &qword_1001DAB40);
    (*(v143 + 56))(v98, 0, 1, v144);
  }

  else
  {
    (*(v143 + 56))(v155, 1, 1, v144);
  }

  v99 = a1[3];
  if (v99)
  {
    *&v165 = a1[2];
    *(&v165 + 1) = v99;
    sub_10002EC9C();

    v100 = Text.init<A>(_:)();
    v102 = v101;
    v104 = v103;
    static Font.title3.getter();
    v105 = Text.font(_:)();
    v107 = v106;
    v109 = v108;
    v111 = v110;

    sub_100020D44(v100, v102, v104 & 1);

    v112 = swift_getKeyPath();
    static Color.white.getter();
    v113 = Color.opacity(_:)();

    LOBYTE(v102) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v174 = v109 & 1;
    v173 = 0;
    *&v157 = v105;
    *(&v157 + 1) = v107;
    LOBYTE(v158) = v109 & 1;
    *(&v158 + 1) = v111;
    *&v159 = v112;
    BYTE8(v159) = 1;
    *&v160 = v113;
    BYTE8(v160) = v102;
    *&v161 = v114;
    *(&v161 + 1) = v115;
    *&v162 = v116;
    *(&v162 + 1) = v117;
    LOBYTE(v163) = 0;
    sub_1000033A8(&qword_1001DA3D8);
    sub_1000CEA30();
    v118 = v140;
    View.accessibilityIdentifier(_:)();
    v169 = v161;
    v170 = v162;
    LOBYTE(v171) = v163;
    v165 = v157;
    v166 = v158;
    v167 = v159;
    v168 = v160;
    sub_10001370C(&v165, &qword_1001DA3D8);
    v119 = v149;
    sub_10002091C(v118, v149, &qword_1001DA3C0);
    (*(v147 + 56))(v119, 0, 1, v148);
  }

  else
  {
    v119 = v149;
    (*(v147 + 56))(v149, 1, 1, v148);
  }

  v120 = v154;
  v121 = v145;
  sub_1000138BC(v154, v145, &qword_1001DAB60);
  v122 = v155;
  v123 = v146;
  sub_1000138BC(v155, v146, &qword_1001DAB48);
  v124 = v150;
  sub_1000138BC(v119, v150, &qword_1001DA3C8);
  v125 = v151;
  sub_1000138BC(v121, v151, &qword_1001DAB60);
  v126 = v119;
  v127 = sub_1000033A8(&qword_1001DAB68);
  sub_1000138BC(v123, v125 + *(v127 + 48), &qword_1001DAB48);
  sub_1000138BC(v124, v125 + *(v127 + 64), &qword_1001DA3C8);
  sub_10001370C(v126, &qword_1001DA3C8);
  sub_10001370C(v122, &qword_1001DAB48);
  sub_10001370C(v120, &qword_1001DAB60);
  sub_10001370C(v124, &qword_1001DA3C8);
  sub_10001370C(v123, &qword_1001DAB48);
  return sub_10001370C(v121, &qword_1001DAB60);
}

uint64_t sub_1000E34B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static Color.clear.getter();
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v10 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = a2[3];
  *(v11 + 3) = a2[2];
  *(v11 + 4) = v12;
  *(v11 + 5) = a2[4];
  v13 = a2[1];
  *(v11 + 1) = *a2;
  *(v11 + 2) = v13;
  (*(v7 + 32))(&v11[v10], &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  *a3 = v9;
  a3[1] = sub_1000E4890;
  a3[2] = v11;
  a3[3] = 0;
  a3[4] = 0;
  return sub_1000E42A4(a2, v15);
}

uint64_t sub_1000E3628()
{
  GeometryProxy.size.getter();
  sub_1000033A8(&qword_1001D4888);
  return State.wrappedValue.setter();
}

uint64_t sub_1000E3688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v26[1] = a1;
  v30 = a2;
  v2 = type metadata accessor for BorderedButtonStyle();
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin(v2);
  v27 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001DAAB8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  v9 = sub_1000033A8(&qword_1001DAAC0);
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = sub_1000033A8(&qword_1001DAAC8);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v26 - v17;

  sub_1000033A8(&qword_1001DAAD0);
  sub_1000E3E94();
  Button.init(action:label:)();
  sub_100013608(&qword_1001DAB00, &qword_1001DAAB8);
  View.accessibilityIdentifier(_:)();
  (*(v6 + 8))(v8, v5);
  v19 = &v11[*(v9 + 36)];
  sub_1000033A8(&qword_1001DAB08);
  static ButtonBorderShape.capsule.getter();
  *v19 = swift_getKeyPath();
  v20 = v27;
  BorderedButtonStyle.init()();
  sub_1000E408C();
  sub_1000E44D4(&qword_1001DAB30, &type metadata accessor for BorderedButtonStyle);
  v21 = v28;
  View.buttonStyle<A>(_:)();
  (*(v29 + 8))(v20, v21);
  sub_10001370C(v11, &qword_1001DAAC0);
  *&v18[*(v13 + 44)] = static HierarchicalShapeStyle.primary.getter();
  sub_1000138BC(v18, v16, &qword_1001DAAC8);
  v22 = v30;
  *v30 = 0;
  *(v22 + 8) = 1;
  v23 = v22;
  v24 = sub_1000033A8(&qword_1001DAB38);
  sub_1000138BC(v16, v23 + *(v24 + 48), &qword_1001DAAC8);
  sub_10001370C(v18, &qword_1001DAAC8);
  return sub_10001370C(v16, &qword_1001DAAC8);
}

uint64_t sub_1000E3AC4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title3.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100020D44(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100020D44(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v9) = v16 & 1;
  v28 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  result = static Color.white.getter();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v9;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = v21;
  *(a1 + 72) = v23;
  *(a1 + 80) = v25;
  *(a1 + 88) = v27;
  *(a1 + 96) = 0;
  *(a1 + 104) = v28;
  *(a1 + 112) = v30;
  *(a1 + 120) = v32;
  *(a1 + 128) = v34;
  *(a1 + 136) = v36;
  *(a1 + 144) = 0;
  *(a1 + 152) = result;
  return result;
}

uint64_t sub_1000E3D1C(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D61F0);
  __chkstk_darwin(v2 - 8);
  sub_1000138BC(a1, &v5 - v3, &qword_1001D61F0);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_1000E3DC4(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues._buttonBorderShape.setter();
}

unint64_t sub_1000E3E94()
{
  result = qword_1001DAAD8;
  if (!qword_1001DAAD8)
  {
    sub_10001276C(&qword_1001DAAD0);
    sub_1000E3F4C();
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAAD8);
  }

  return result;
}

unint64_t sub_1000E3F4C()
{
  result = qword_1001DAAE0;
  if (!qword_1001DAAE0)
  {
    sub_10001276C(&qword_1001DAAE8);
    sub_1000E3FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAAE0);
  }

  return result;
}

unint64_t sub_1000E3FD8()
{
  result = qword_1001DAAF0;
  if (!qword_1001DAAF0)
  {
    sub_10001276C(&qword_1001DAAF8);
    sub_100035D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAAF0);
  }

  return result;
}

unint64_t sub_1000E408C()
{
  result = qword_1001DAB10;
  if (!qword_1001DAB10)
  {
    sub_10001276C(&qword_1001DAAC0);
    sub_1000E4144();
    sub_100013608(&qword_1001DAB28, &qword_1001DAB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAB10);
  }

  return result;
}

unint64_t sub_1000E4144()
{
  result = qword_1001DAB18;
  if (!qword_1001DAB18)
  {
    sub_10001276C(&qword_1001DAB20);
    sub_100013608(&qword_1001DAB00, &qword_1001DAAB8);
    sub_1000E44D4(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAB18);
  }

  return result;
}

uint64_t sub_1000E423C()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1000E42DC()
{
  result = qword_1001DAB78;
  if (!qword_1001DAB78)
  {
    sub_10001276C(&qword_1001DAB70);
    sub_1000E4368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAB78);
  }

  return result;
}

unint64_t sub_1000E4368()
{
  result = qword_1001DAB80;
  if (!qword_1001DAB80)
  {
    sub_10001276C(&qword_1001DAB88);
    sub_1000E4420();
    sub_100013608(&qword_1001DABA0, &qword_1001DABA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAB80);
  }

  return result;
}

unint64_t sub_1000E4420()
{
  result = qword_1001DAB90;
  if (!qword_1001DAB90)
  {
    sub_10001276C(&qword_1001DAB98);
    sub_1000CEABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAB90);
  }

  return result;
}

uint64_t sub_1000E44D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E451C()
{
  result = qword_1001DABC8;
  if (!qword_1001DABC8)
  {
    sub_10001276C(&qword_1001DAB50);
    sub_1000E45D4();
    sub_100013608(&qword_1001D6C98, &qword_1001D6C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DABC8);
  }

  return result;
}

unint64_t sub_1000E45D4()
{
  result = qword_1001DABD0;
  if (!qword_1001DABD0)
  {
    sub_10001276C(&qword_1001DABC0);
    sub_1000E4660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DABD0);
  }

  return result;
}

unint64_t sub_1000E4660()
{
  result = qword_1001DABD8;
  if (!qword_1001DABD8)
  {
    sub_10001276C(&qword_1001DABB8);
    sub_1000E46EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DABD8);
  }

  return result;
}

unint64_t sub_1000E46EC()
{
  result = qword_1001DABE0;
  if (!qword_1001DABE0)
  {
    sub_10001276C(&qword_1001DABB0);
    sub_100013360();
    sub_100013608(&qword_1001D5168, &qword_1001D5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DABE0);
  }

  return result;
}

uint64_t sub_1000E47A4()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 64))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 96) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1000E4890()
{
  type metadata accessor for GeometryProxy();

  return sub_1000E3628();
}

unint64_t sub_1000E48F8()
{
  result = qword_1001DABE8;
  if (!qword_1001DABE8)
  {
    sub_10001276C(&qword_1001DAA58);
    sub_1000E4984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DABE8);
  }

  return result;
}

unint64_t sub_1000E4984()
{
  result = qword_1001DABF0;
  if (!qword_1001DABF0)
  {
    sub_10001276C(&qword_1001DAA38);
    sub_1000E4A10();
    sub_1000CF0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DABF0);
  }

  return result;
}

unint64_t sub_1000E4A10()
{
  result = qword_1001DABF8;
  if (!qword_1001DABF8)
  {
    sub_10001276C(&qword_1001DAA30);
    sub_1000E4A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DABF8);
  }

  return result;
}

unint64_t sub_1000E4A9C()
{
  result = qword_1001DAC00;
  if (!qword_1001DAC00)
  {
    sub_10001276C(&qword_1001DAA28);
    sub_10001276C(&qword_1001DAA18);
    sub_100013608(&qword_1001DAA50, &qword_1001DAA18);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAC00);
  }

  return result;
}

uint64_t sub_1000E4BC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000E4C0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000E4C78@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1000033A8(&qword_1001D4E88);
  __chkstk_darwin(v4 - 8);
  v6 = v46 - v5;
  v7 = sub_1000033A8(&qword_1001D61F0);
  __chkstk_darwin(v7 - 8);
  v9 = v46 - v8;

  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v10 = type metadata accessor for SymbolRenderingMode();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = Image.symbolRenderingMode(_:)();

  sub_10001370C(v9, &qword_1001D61F0);
  v12 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = static Font.system(size:weight:design:)();
  sub_10001370C(v6, &qword_1001D4E88);
  v16 = swift_getKeyPath();
  v46[1] = v11;
  v46[2] = KeyPath;
  v46[3] = v12;
  v46[4] = v16;
  v46[5] = v15;
  static Font.Weight.medium.getter();
  sub_1000033A8(&qword_1001DAC08);
  sub_1000E5084();
  View.fontWeight(_:)();

  v17 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = a2 + *(sub_1000033A8(&qword_1001DAC28) + 36);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21;
  *(v26 + 24) = v23;
  *(v26 + 32) = v25;
  *(v26 + 40) = 0;
  v27 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(sub_1000033A8(&qword_1001DAC30) + 36);
  *v36 = v27;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  v37 = a2 + *(sub_1000033A8(&qword_1001DAC38) + 36);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(v37, v38, v39);
  v40 = sub_1000033A8(&qword_1001D86E0);
  *(v37 + *(v40 + 52)) = a1;
  *(v37 + *(v40 + 56)) = 256;

  v41 = static Alignment.center.getter();
  v43 = v42;
  result = sub_1000033A8(&qword_1001D8708);
  v45 = (v37 + *(result + 36));
  *v45 = v41;
  v45[1] = v43;
  return result;
}

unint64_t sub_1000E5084()
{
  result = qword_1001DAC10;
  if (!qword_1001DAC10)
  {
    sub_10001276C(&qword_1001DAC08);
    sub_1000E513C();
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAC10);
  }

  return result;
}

unint64_t sub_1000E513C()
{
  result = qword_1001DAC18;
  if (!qword_1001DAC18)
  {
    sub_10001276C(&qword_1001DAC20);
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAC18);
  }

  return result;
}

unint64_t sub_1000E51F8()
{
  result = qword_1001DAC40;
  if (!qword_1001DAC40)
  {
    sub_10001276C(&qword_1001DAC38);
    sub_1000E52B0();
    sub_100013608(&qword_1001D87A0, &qword_1001D8708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAC40);
  }

  return result;
}

unint64_t sub_1000E52B0()
{
  result = qword_1001DAC48;
  if (!qword_1001DAC48)
  {
    sub_10001276C(&qword_1001DAC30);
    sub_1000E533C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAC48);
  }

  return result;
}

unint64_t sub_1000E533C()
{
  result = qword_1001DAC50;
  if (!qword_1001DAC50)
  {
    sub_10001276C(&qword_1001DAC28);
    sub_10001276C(&qword_1001DAC08);
    sub_1000E5084();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAC50);
  }

  return result;
}

unint64_t sub_1000E5404(unsigned __int8 a1)
{
  v1 = 0x6F6E206B63617254;
  v2 = 0x7070757320746F4ELL;
  if (a1 != 4)
  {
    v2 = 0x6C706D6920746F4ELL;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  v3 = 0xD000000000000017;
  v4 = 0xD000000000000013;
  if (a1 != 1)
  {
    v4 = 0xD000000000000018;
  }

  if (a1)
  {
    v3 = v4;
  }

  if (a1 <= 2u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000E554C()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 56);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1000D7A90;

  return v9(v4, v5);
}

uint64_t sub_1000E5804()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000E5874(uint64_t a1)
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

uint64_t sub_1000E5890(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000E58D8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000E591C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1000E5950(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return _swift_task_switch(sub_1000E5970, v1, 0);
}

uint64_t sub_1000E5998()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 32);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_1000E5C58;
  v8 = *(v0 + 112);

  return v10(v8, v4, v5);
}

uint64_t sub_1000E5C58()
{

  return _swift_task_switch(sub_1000DDEEC, 0, 0);
}

uint64_t sub_1000E5D54(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return _swift_task_switch(sub_1000E5D74, v1, 0);
}

uint64_t sub_1000E5D9C()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 40);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_1000E5C58;
  v8 = *(v0 + 112);

  return v10(v8, v4, v5);
}

uint64_t sub_1000E605C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 152) = a2;
  *(v7 + 160) = v6;
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 112) = a1;
  return _swift_task_switch(sub_1000E6088, v6, 0);
}

uint64_t sub_1000E60B0()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 8);

  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1000E6310;
  v8 = *(v0 + 152);
  v9.n128_u64[0] = *(v0 + 136);
  v10.n128_u64[0] = *(v0 + 144);
  v11.n128_u64[0] = *(v0 + 120);
  v12.n128_u64[0] = *(v0 + 128);
  v13 = *(v0 + 112);

  return dispatch thunk of SaliencyStreamActionable.actionPinFromUserSelection(_:excludedIdentifiers:)(v13, v8, v4, v6, v11, v12, v9, v10);
}

uint64_t sub_1000E6310()
{

  return _swift_task_switch(sub_1000DDEEC, 0, 0);
}

uint64_t sub_1000E640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return _swift_task_switch(sub_1000E643C, v8, 0);
}

uint64_t sub_1000E643C()
{
  v1 = *(v0[10] + 112);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1000E64F0;
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_1000D73B8(v8, v9, v6, v7, v1, v4, v5, v3);
}

uint64_t sub_1000E64F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E65E4(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return _swift_task_switch(sub_1000E6604, v1, 0);
}

uint64_t sub_1000E662C()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 72);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_1000E5C58;
  v8 = *(v0 + 112);

  return v10(v8, v4, v5);
}

uint64_t sub_1000E68EC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return _swift_task_switch(sub_1000E6910, v2, 0);
}

uint64_t sub_1000E6938()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 80);

  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1000E6BF8;
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);

  return v11(v8, v9, v4, v5);
}

uint64_t sub_1000E6BF8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1000E6D0C;
  }

  else
  {
    v2 = sub_1000D72F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E6D0C()
{
  sub_100006B44(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E6D70(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  return _swift_task_switch(sub_1000E6D94, v2, 0);
}

uint64_t sub_1000E6DBC()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  v4 = *(v0 + 144);
  sub_1000DD748((v0 + 64), (v0 + 16));
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v5);
  v7 = *(v6 + 88);

  v11 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1000E5C58;
  v9 = *(v0 + 112);

  return (v11)(v9, v4 & 1, v5, v6);
}

uint64_t sub_1000E70D4()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 96);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1000D7A90;

  return v9(v4, v5);
}

uint64_t sub_1000E738C(char a1)
{
  *(v2 + 112) = v1;
  *(v2 + 136) = a1;
  return _swift_task_switch(sub_1000E73B0, v1, 0);
}

uint64_t sub_1000E73D8()
{
  v1 = *(v0 + 120);
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = &qword_1001DA6E0;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6E0);
      *(v0 + 96) = sub_100013608(&qword_1001DA6E8, &qword_1001DA6E0);
      v3 = &qword_1001DA6F0;
    }

    else
    {
      v2 = &qword_1001DA6C8;
      *(v0 + 88) = sub_1000033A8(&qword_1001DA6C8);
      *(v0 + 96) = sub_100013608(&qword_1001DA6D0, &qword_1001DA6C8);
      v3 = &qword_1001DA6D8;
    }

    *(v0 + 104) = sub_100013608(v3, v2);
    *(v0 + 64) = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v0 + 88) = sub_1000033A8(&qword_1001DA6F8);
    *(v0 + 96) = sub_100013608(&qword_1001DA700, &qword_1001DA6F8);
    *(v0 + 104) = sub_100013608(&qword_1001DA708, &qword_1001DA6F8);
    *(v0 + 64) = v1;
  }

  sub_1000DD748((v0 + 64), (v0 + 16));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  sub_100006AAC((v0 + 16), v4);
  v6 = *(v5 + 104);

  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1000E7698;
  v8 = *(v0 + 136);

  return v10(v8, v4, v5);
}

uint64_t sub_1000E7698()
{

  return _swift_task_switch(sub_1000D774C, 0, 0);
}

uint64_t sub_1000E7794(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000E5950(a1);
}

uint64_t sub_1000E7830(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000E5D54(a1);
}

uint64_t sub_1000E78CC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_1000E78EC, v3, 0);
}

uint64_t sub_1000E78EC()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1000E798C;
  v3 = v0[2];

  return sub_1000D6E70(v3, v1);
}

uint64_t sub_1000E798C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E7A80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_1000E5504();
}

uint64_t sub_1000E7B10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000E65E4(a1);
}

uint64_t sub_1000E7BA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019340;

  return sub_1000E68EC(a1, a2);
}

uint64_t sub_1000E7C54(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100019774;

  return sub_1000E6D70(a1, a2 & 1);
}

uint64_t sub_1000E7CFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100019774;

  return sub_1000E708C();
}

uint64_t sub_1000E7D8C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100019774;

  return sub_1000E738C(a1);
}

uint64_t sub_1000E7E24()
{
  sub_1000DD6A0();
  sub_1000DD760();
  return SaliencyStreamIdentifierProviding<>.streamIdentifier.getter();
}

uint64_t sub_1000E7E78(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = *v2;
  v3[5] = *v2;
  return _swift_task_switch(sub_1000E7E9C, v4, 0);
}

uint64_t sub_1000E7E9C()
{
  v0[2] = *(v0[5] + 112);
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_1000E7F68;
  v4 = v0[3];
  v5 = v0[4];

  return SaliencyStreamInternalMonitorable<>.makeBundleManagerOutputStream(bufferingPolicyOverride:)(v4, v5, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_1000E7F68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E805C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = *v2;
  v3[5] = *v2;
  return _swift_task_switch(sub_1000E8080, v4, 0);
}

uint64_t sub_1000E8080()
{
  v0[2] = *(v0[5] + 112);
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_1000E87F0;
  v4 = v0[3];
  v5 = v0[4];

  return SaliencyStreamInternalMonitorable<>.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(v4, v5, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_1000E814C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = *v2;
  v3[5] = *v2;
  return _swift_task_switch(sub_1000E8170, v4, 0);
}

uint64_t sub_1000E8170()
{
  v0[2] = *(v0[5] + 112);
  v1 = swift_task_alloc();
  v0[6] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_1000E87F0;
  v4 = v0[3];
  v5 = v0[4];

  return SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(v4, v5, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_1000E823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100019340;

  return sub_1000E640C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1000E8334(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 136) = a5;
  *(v7 + 144) = a6;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 112) = a1;
  v8 = *v6;
  *(v7 + 152) = a2;
  *(v7 + 160) = v8;
  return _swift_task_switch(sub_1000E6088, v8, 0);
}

uint64_t sub_1000E8364(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return _swift_task_switch(sub_1000E8384, v3, 0);
}

uint64_t sub_1000E8384()
{
  v0[2] = *(v0[4] + 112);
  v1 = swift_task_alloc();
  v0[5] = v1;
  v2 = sub_1000DD760();
  v3 = sub_1000DD6F4();
  *v1 = v0;
  v1[1] = sub_1000E8450;
  v4 = v0[3];

  return SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(v4, &type metadata for CameraSource, v2, v3);
}

uint64_t sub_1000E8450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E8578(void *a1)
{
  a1[1] = sub_1000E8604(&qword_1001DAD40);
  a1[2] = sub_1000E8604(&qword_1001DAD48);
  result = sub_1000E8604(&qword_1001DAD50);
  a1[3] = result;
  return result;
}

uint64_t sub_1000E8604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Camera();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E879C()
{
  result = qword_1001DAD58;
  if (!qword_1001DAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAD58);
  }

  return result;
}

uint64_t MapsConfiguration.Form.init(configuration:initialValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000E887C(a1, a3);
  v5 = *(type metadata accessor for MapsConfiguration.Form() + 20);
  v6 = type metadata accessor for MapsConfiguration();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t sub_1000E887C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D85B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MapsConfiguration.Form()
{
  result = qword_1001DADD8;
  if (!qword_1001DADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MapsConfiguration.Form.body.getter@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1000033A8(&qword_1001D85B0);
  __chkstk_darwin(v1);
  v3 = &v22 - v2;
  v4 = type metadata accessor for ConfigToggle();
  v25 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v27 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v26 = &v22 - v8;
  v9 = __chkstk_darwin(v7);
  v24 = &v22 - v10;
  __chkstk_darwin(v9);
  v22 = "Configuration not ready";
  v23 = &v22 - v11;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_1000E8D28(v3);
  type metadata accessor for MapsConfiguration.Form();
  MapsConfiguration.showDebugGeoLookupResults.getter();
  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  Binding.projectedValue.getter();
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_1000E8D28(v3);
  MapsConfiguration.showGeoLocatePill.getter();
  v12 = v24;
  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  v13 = v25;
  v14 = v26;
  v15 = *(v25 + 16);
  v16 = v23;
  v15(v26, v23, v4);
  v17 = v27;
  v15(v27, v12, v4);
  v18 = v28;
  v15(v28, v14, v4);
  v19 = sub_1000033A8(&qword_1001DAD60);
  v15(&v18[*(v19 + 48)], v17, v4);
  v20 = *(v13 + 8);
  v20(v12, v4);
  v20(v16, v4);
  v20(v17, v4);
  return (v20)(v14, v4);
}

uint64_t sub_1000E8CD0@<X0>(_BYTE *a1@<X8>)
{
  result = MapsConfiguration.showDebugGeoLookupResults.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E8D28(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D85B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E8D90@<X0>(_BYTE *a1@<X8>)
{
  result = MapsConfiguration.showGeoLocatePill.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E8E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000E887C(a1, a4);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for MapsConfiguration();
  v9 = *(*(v8 - 8) + 32);

  return v9(a4 + v7, a2, v8);
}

uint64_t sub_1000E8F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E8FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D85B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MapsConfiguration();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000E90D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000033A8(&qword_1001D85B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MapsConfiguration();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000E91D8()
{
  sub_1000E925C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MapsConfiguration();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E925C()
{
  if (!qword_1001DADE8)
  {
    type metadata accessor for MapsConfiguration();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DADE8);
    }
  }
}

unint64_t sub_1000E92B8()
{
  result = qword_1001DAE18;
  if (!qword_1001DAE18)
  {
    sub_10001276C(&unk_1001DAE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DAE18);
  }

  return result;
}

id sub_1000E9418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageDataConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000E94BC()
{
  result = qword_1001DAED0;
  if (!qword_1001DAED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001DAED0);
  }

  return result;
}

uint64_t sub_1000E9508()
{
  swift_getKeyPath();
  sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1000E95C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1000E9680()
{
  swift_getKeyPath();
  sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000E974C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1000E97B4()
{
  swift_getKeyPath();
  sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000E9858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_1000E9904(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    if (a1)
    {
      type metadata accessor for AnyCancellable();
      sub_1000EA5CC(&qword_1001DB088, &type metadata accessor for AnyCancellable);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 24) = a1;
}

uint64_t sub_1000E9AAC()
{
  v0 = sub_1000033A8(&qword_1001DB060);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  sub_1000EA438();
  v3 = [objc_opt_self() mainRunLoop];
  v4 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000EA484(v2);
  v10 = v5;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1000EA5CC(&qword_1001DB070, &type metadata accessor for NSTimer.TimerPublisher);
  v6 = ConnectablePublisher.autoconnect()();

  v10 = v6;
  swift_allocObject();
  swift_weakInit();
  sub_1000033A8(&qword_1001DB078);
  sub_1000EA52C();
  v7 = Publisher<>.sink(receiveValue:)();

  return sub_1000E9904(v7);
}

uint64_t sub_1000E9CC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v2 = *(v1 + 16);
    v3 = *(v2 + 16);
    if (v3)
    {

      v4 = v2 + 56;
      do
      {
        v5 = *(v4 - 24);
        v6 = *(v4 - 8);

        v8 = v6(v7);
        if (v8)
        {
          v5(v8);
        }

        v4 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000E9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getKeyPath();
  sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
  swift_retain_n();
  swift_retain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v4;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v10 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100095520(0, *(v10 + 2) + 1, 1, v10);
    *(v5 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100095520((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[32 * v13];
  *(v14 + 4) = a1;
  *(v14 + 5) = a2;
  *(v14 + 6) = a3;
  *(v14 + 7) = a4;
  *(v5 + 16) = v10;
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000EA020()
{
  swift_getKeyPath();
  sub_1000EA5CC(&qword_1001DB058, type metadata accessor for PromptScheduler);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  *(v0 + 16) = _swiftEmptyArrayStorage;

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 24))
  {

    AnyCancellable.cancel()();
  }

  return sub_1000E9904(0);
}

uint64_t sub_1000EA1A4()
{

  v1 = OBJC_IVAR____TtC6Tamale15PromptScheduler___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PromptScheduler()
{
  result = qword_1001DAF10;
  if (!qword_1001DAF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EA2A4()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EA34C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000EA394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000EA438()
{
  result = qword_1001DB068;
  if (!qword_1001DB068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001DB068);
  }

  return result;
}

uint64_t sub_1000EA484(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001DB060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EA4EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1000EA52C()
{
  result = qword_1001DB080;
  if (!qword_1001DB080)
  {
    sub_10001276C(&qword_1001DB078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB080);
  }

  return result;
}

uint64_t sub_1000EA590()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1000EA5CC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000EA61C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.acme.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "CustomView becomeFirstResponder", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 becomeFirstResponder];
}

id sub_1000EA7EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextResponderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000EA844()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ContextResponderView();
  v1 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v1 setAlpha:0.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_1000033A8(&qword_1001D5248);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017AF40;
  v4 = [v1 widthAnchor];
  v5 = [v4 constraintEqualToConstant:0.0];

  *(v3 + 32) = v5;
  v6 = [v1 heightAnchor];

  v7 = [v6 constraintEqualToConstant:0.0];
  *(v3 + 40) = v7;
  sub_1000EA9D0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  return v1;
}

unint64_t sub_1000EA9D0()
{
  result = qword_1001DB0B8;
  if (!qword_1001DB0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001DB0B8);
  }

  return result;
}

uint64_t sub_1000EAA2C(void *a1)
{
  v3 = sub_1000033A8(&qword_1001DB0F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006AAC(a1, a1[3]);
  sub_1000EB798();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000EABAC()
{
  if (*v0)
  {
    return 0x6153656C62616E65;
  }

  else
  {
    return 0x6F43656C62616E65;
  }
}

uint64_t sub_1000EAC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43656C62616E65 && a2 == 0xEF6F746F68507970;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6153656C62616E65 && a2 == 0xEF6F746F68506576)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000EACEC(uint64_t a1)
{
  v2 = sub_1000EB798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EAD28(uint64_t a1)
{
  v2 = sub_1000EB798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EAD64@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  v2 = dispatch thunk of UserDefaultsUtility.enableCopyPhoto.getter();

  UserDefaultsUtility.__allocating_init()();
  v3 = dispatch thunk of UserDefaultsUtility.enableSavePhoto.getter();

  *a1 = v2 & 1;
  a1[1] = v3 & 1;
  return result;
}

uint64_t sub_1000EADE0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EB5AC(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

unint64_t sub_1000EAE4C()
{
  result = qword_1001DB0C0;
  if (!qword_1001DB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB0C0);
  }

  return result;
}

unint64_t sub_1000EAEA4()
{
  result = qword_1001DB0C8;
  if (!qword_1001DB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB0C8);
  }

  return result;
}

unint64_t sub_1000EAEFC()
{
  result = qword_1001DB0D0;
  if (!qword_1001DB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB0D0);
  }

  return result;
}

uint64_t sub_1000EAF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v49 = a4;
  v46 = a5;
  v8 = type metadata accessor for ConfigToggle();
  v45 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v44 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v43 = v39 - v12;
  v13 = __chkstk_darwin(v11);
  v42 = v39 - v14;
  __chkstk_darwin(v13);
  v50 = v39 - v15;
  v41 = " not been implemented";
  v55 = a1;
  v56 = a2;
  v48 = a3 & 1;
  v57 = a3 & 0x101;
  v47 = (a3 >> 8) & 1;
  sub_1000033A8(&qword_1001D85B8);
  Binding.projectedValue.getter();
  v16 = v51;
  v17 = v52;
  v18 = v53;
  v19 = v54;
  swift_getKeyPath();
  v55 = v16;
  v56 = v17;
  LOBYTE(v57) = v18;
  HIBYTE(v57) = v19;
  Binding.subscript.getter();

  v39[0] = v52;
  v39[1] = v51;

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v22 = v47;
  v21 = v48;
  *(v20 + 32) = v48;
  *(v20 + 33) = v22;
  LODWORD(v16) = HIWORD(a3) & 1;
  *(v20 + 34) = BYTE2(a3) & 1;
  v40 = HIBYTE(a3) & 1;
  *(v20 + 35) = HIBYTE(a3) & 1;
  *(v20 + 40) = v49;

  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  v41 = "Enable Copy Photo";
  v55 = a1;
  v56 = a2;
  LOBYTE(v57) = v21;
  HIBYTE(v57) = v22;
  Binding.projectedValue.getter();
  v23 = v51;
  v24 = v52;
  v25 = v53;
  LOBYTE(a3) = v54;
  swift_getKeyPath();
  v55 = v23;
  v56 = v24;
  LOBYTE(v57) = v25;
  HIBYTE(v57) = a3;
  Binding.subscript.getter();

  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  v27 = v47;
  *(v26 + 32) = v48;
  *(v26 + 33) = v27;
  *(v26 + 34) = v16;
  *(v26 + 35) = v40;
  *(v26 + 40) = v49;

  v28 = v42;
  ConfigToggle.init(_:isOn:initialValue:onChange:)();
  v29 = v45;
  v30 = *(v45 + 16);
  v31 = v43;
  v32 = v50;
  v30(v43, v50, v8);
  v33 = v44;
  v34 = v28;
  v30(v44, v28, v8);
  v35 = v46;
  v30(v46, v31, v8);
  v36 = sub_1000033A8(&qword_1001DAD60);
  v30(&v35[*(v36 + 48)], v33, v8);
  v37 = *(v29 + 8);
  v37(v34, v8);
  v37(v32, v8);
  v37(v33, v8);
  return (v37)(v31, v8);
}

uint64_t sub_1000EB3DC@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *a2;
  v9 = a2[1];
  type metadata accessor for UserDefaultsUtility();
  result = UserDefaultsUtility.__allocating_init()();
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 17) = v7;
  *(a3 + 18) = v8;
  *(a3 + 19) = v9;
  *(a3 + 24) = result;
  return result;
}

uint64_t sub_1000EB46C@<X0>(char *a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 16);
  if (*(v1 + 18))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 19))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  return sub_1000EAF50(*v1, *(v1 + 8), v3 | v4 | v5, *(v1 + 24), a1);
}

unint64_t sub_1000EB4C4()
{
  result = qword_1001DB0D8;
  if (!qword_1001DB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB0D8);
  }

  return result;
}

uint64_t sub_1000EB540()
{

  return swift_deallocObject();
}

uint64_t sub_1000EB5AC(void *a1)
{
  v3 = sub_1000033A8(&qword_1001DB0E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  type metadata accessor for UserDefaultsUtility();
  UserDefaultsUtility.__allocating_init()();
  dispatch thunk of UserDefaultsUtility.enableCopyPhoto.getter();

  UserDefaultsUtility.__allocating_init()();
  dispatch thunk of UserDefaultsUtility.enableSavePhoto.getter();

  sub_100006AAC(a1, a1[3]);
  sub_1000EB798();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006B44(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100006B44(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

unint64_t sub_1000EB798()
{
  result = qword_1001DB0E8;
  if (!qword_1001DB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB0E8);
  }

  return result;
}

unint64_t sub_1000EB814()
{
  result = qword_1001DB0F8;
  if (!qword_1001DB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB0F8);
  }

  return result;
}

unint64_t sub_1000EB86C()
{
  result = qword_1001DB100;
  if (!qword_1001DB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB100);
  }

  return result;
}

unint64_t sub_1000EB8C4()
{
  result = qword_1001DB108;
  if (!qword_1001DB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DB108);
  }

  return result;
}

uint64_t sub_1000EB94C(uint64_t a1)
{
  v77 = type metadata accessor for Text.Layout.Run();
  v3 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001DB570);
  v6 = __chkstk_darwin(v5 - 8);
  v76 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v73 = &v62 - v9;
  __chkstk_darwin(v8);
  v78 = &v62 - v10;
  v11 = type metadata accessor for Text.Layout.Line();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000033A8(&qword_1001DB578);
  __chkstk_darwin(v71);
  v82 = &v62 - v15;
  sub_1000F46BC(&qword_1001DB580, &type metadata accessor for Text.Layout.Line);
  v16 = dispatch thunk of Sequence.underestimatedCount.getter();
  v79 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  v19 = v18 + v16;
  if (__OFADD__(v18, v16))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v16;
  v80 = v11;
  v81 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v22 = v17[3] >> 1, v22 < v19))
  {
    if (v18 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v18;
    }

    v17 = sub_1000954D0(isUniquelyReferenced_nonNull_native, v23, 1, v17);
    v22 = v17[3] >> 1;
  }

  v24 = v80;
  v25 = *(v81 + 72);
  v26 = v22 - v17[2];
  v72 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v75 = v25;
  (*(v12 + 16))(v14, a1, v80);
  v27 = dispatch thunk of Sequence._copyContents(initializing:)();
  (*(v12 + 8))(a1, v24);
  if (v27 < v20)
  {
    goto LABEL_16;
  }

  if (v27 >= 1)
  {
    v28 = v17[2];
    v29 = __OFADD__(v28, v27);
    v30 = v28 + v27;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    v17[2] = v30;
  }

  if (v27 != v26)
  {
    v31 = &qword_1001DB578;
    v32 = v82;
    goto LABEL_14;
  }

LABEL_17:
  v14 = v17[2];
  v34 = *(v71 + 36);
  sub_1000F46BC(&qword_1001DB588, &type metadata accessor for Text.Layout.Line);
  v35 = v82;
  dispatch thunk of Collection.endIndex.getter();
  v36 = *(v35 + v34);
  v68 = v34;
  if (v36 != v83[0])
  {
LABEL_20:
    v42 = dispatch thunk of Collection.subscript.read();
    v41 = v81;
    v39 = v77;
    v38 = v78;
    (*(v81 + 16))(v78);
    v42(v83, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v37 = 0;
    v40 = v74;
    goto LABEL_21;
  }

  v37 = 1;
  v39 = v77;
  v38 = v78;
  v40 = v74;
  v41 = v81;
LABEL_21:
  v43 = *(v41 + 56);
  v66 = v41 + 56;
  v67 = v43;
  v43(v38, v37, 1, v39);
  v44 = v38;
  v45 = v73;
  sub_1000138BC(v44, v73, &qword_1001DB570);
  v47 = *(v41 + 48);
  v46 = v41 + 48;
  v71 = v47;
  if (v47(v45, 1, v39) != 1)
  {
    v65 = (v3 + 32);
    v64 = (v3 + 16);
    v63 = (v3 + 8);
    v48 = v76;
    v81 = v46;
    do
    {
      sub_10001370C(v45, &qword_1001DB570);
      v49 = v17[3];
      v50 = v49 >> 1;
      if ((v49 >> 1) < (v14 + 1))
      {
        v17 = sub_1000954D0(v49 > 1, (v14 + 1), 1, v17);
        v50 = v17[3] >> 1;
      }

      v51 = v65;
      sub_1000138BC(v78, v48, &qword_1001DB570);
      if ((v71)(v48, 1, v77) == 1)
      {
        v48 = v76;
        v52 = v77;
LABEL_30:
        sub_10001370C(v48, &qword_1001DB570);
        v53 = v14;
      }

      else
      {
        v54 = *v51;
        if (v14 <= v50)
        {
          v53 = v50;
        }

        else
        {
          v53 = v14;
        }

        v48 = v76;
        v55 = v17 + v72 + v75 * v14;
        v52 = v77;
        v69 = *v51;
        v70 = v53;
        while (1)
        {
          v54(v40, v48, v52);
          if (v53 == v14)
          {
            break;
          }

          v60 = v78;
          sub_10001370C(v78, &qword_1001DB570);
          v54(v55, v40, v52);
          v61 = v82;
          dispatch thunk of Collection.endIndex.getter();
          if (*(v61 + v68) == v83[0])
          {
            v57 = 1;
          }

          else
          {
            v56 = dispatch thunk of Collection.subscript.read();
            (*v64)(v60);
            v56(v83, 0);
            v52 = v77;
            dispatch thunk of Collection.formIndex(after:)();
            v57 = 0;
          }

          v67(v60, v57, 1, v52);
          v58 = v60;
          v48 = v76;
          sub_1000138BC(v58, v76, &qword_1001DB570);
          v59 = (v71)(v48, 1, v52);
          v40 = v74;
          v55 += v75;
          ++v14;
          v54 = v69;
          v53 = v70;
          if (v59 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v63)(v40, v52);
        v14 = v53;
        v48 = v76;
      }

      v17[2] = v53;
      v45 = v73;
      sub_1000138BC(v78, v73, &qword_1001DB570);
    }

    while ((v71)(v45, 1, v52) != 1);
  }

  sub_10001370C(v78, &qword_1001DB570);
  sub_10001370C(v82, &qword_1001DB578);
  v32 = v45;
  v31 = &qword_1001DB570;
LABEL_14:
  result = sub_10001370C(v32, v31);
  *v79 = v17;
  return result;
}

uint64_t sub_1000EC20C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000EC350()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewLayerCallbackQueue);
    *v3 = v5;
    (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
    v6 = v5;
    LOBYTE(v5) = _dispatchPreconditionTest(_:)();
    result = (*(v1 + 8))(v3, v0);
    if (v5)
    {
      sub_1000EC980(1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000EC4A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewLayerCallbackQueue);
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v1;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1000F3A98;
      *(v6 + 24) = v5;
      v9[4] = sub_1000C5638;
      v9[5] = v6;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100071D78;
      v9[3] = &unk_1001C5610;
      v7 = _Block_copy(v9);

      dispatch_sync(v4, v7);

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000EC670(uint64_t a1, uint64_t a2)
{
  sub_1000B88E0();
  v9 = 0;
  v3 = *(a2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = &v9;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F4774;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000C5638;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C5688;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EC7E0()
{
  swift_weakAssign();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = (Strong + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback);
    v4 = *(Strong + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback);
    *v3 = sub_1000F3A44;
    v3[1] = v2;

    sub_100005640(v4);

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = (Strong + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback);
    v9 = *(Strong + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewLayerInvalidatedCallback);
    *v8 = sub_1000F3A50;
    v8[1] = v7;

    sub_100005640(v9);
  }

  return result;
}

uint64_t sub_1000EC980(char a1)
{
  v11 = 0;
  v3 = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = &v11;
  *(v4 + 24) = v1;
  *(v4 + 32) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F4774;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000C5638;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C5520;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v11 & 1) == 0 && (a1)
    {
      v8 = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback);
      if (v8)
      {

        v8(v9);
        sub_100005640(v8);
      }
    }
  }

  return result;
}

uint64_t sub_1000ECB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataProducerInternal;
  swift_beginAccess();
  result = sub_1000138BC(a1 + v4, &v6, &qword_1001DB530);
  if (v7)
  {
    return sub_10002AAA4(&v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ECBBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5 + 22;
  sub_10002A860(a2, v14);
  v7 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataProducerInternal;
  swift_beginAccess();
  sub_1000F3AA0(v14, a1 + v7);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingProcessorTask;
  if (*(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingProcessorTask))
  {

    Task.cancel()();
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = v10;

  *(a1 + v8) = sub_1000154EC(0, 0, v6, &unk_10017B4C8, v11);
}

uint64_t sub_1000ECD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v6 = sub_1000033A8(&qword_1001D6468);
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v7 = sub_1000033A8(&qword_1001DB540);
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();

  return _swift_task_switch(sub_1000ECEB8, 0, 0);
}

uint64_t sub_1000ECEB8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  sub_1000033A8(&qword_1001DB548);
  OS_dispatch_queue.sync<A>(execute:)();
  v4 = sub_100006AAC(v0 + 8, v0[11]);
  (*(v2 + 16))(v1, *v4 + OBJC_IVAR____TtC6Tamale26StreamingMetadataProcessor_resultStream, v3);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  sub_100006B44((v0 + 8));
  swift_beginAccess();
  v0[41] = 0;
  v0[42] = 0;
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_1000ED054;
  v6 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v0 + 23, 0, 0, v6);
}

uint64_t sub_1000ED054()
{

  return _swift_task_switch(sub_1000ED150, 0, 0);
}

uint64_t sub_1000ED150()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  if (!v2)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
LABEL_8:
    sub_100005640(*(v0 + 328));

    v8 = *(v0 + 8);

    return v8();
  }

  v3 = *(v0 + 200);
  v4 = *(v0 + 212);
  v5 = *(v0 + 208);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    goto LABEL_7;
  }

  v7 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

LABEL_7:

    goto LABEL_8;
  }

  v10 = v5 | (v4 << 32);
  v11 = *(v0 + 328);
  queue = *(v7 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v1;
  *(v12 + 32) = v2;
  *(v12 + 40) = v3;
  *(v12 + 48) = v5;
  v24 = v10;
  v13 = HIDWORD(v10) & 1;
  *(v12 + 52) = v13;

  sub_100005640(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000F3C24;
  *(v14 + 24) = v12;
  *(v0 + 48) = sub_1000C5638;
  *(v0 + 56) = v14;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100071D78;
  *(v0 + 40) = &unk_1001C5728;
  v15 = _Block_copy((v0 + 16));

  dispatch_sync(queue, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    v20 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataConsumer;
    swift_beginAccess();
    sub_1000138BC(v7 + v20, v0 + 104, &qword_1001DB538);
    if (*(v0 + 128))
    {
      sub_10002A860(v0 + 104, v0 + 144);
      sub_10001370C(v0 + 104, &qword_1001DB538);
      v21 = *(v0 + 168);
      v22 = *(v0 + 176);
      sub_100006AAC((v0 + 144), v21);
      (*(v22 + 8))(v2, v24 | (v13 << 32), v21, v22, v3);

      sub_100006B44(v0 + 144);
    }

    else
    {

      sub_10001370C(v0 + 104, &qword_1001DB538);
    }

    *(v0 + 328) = sub_1000F3C24;
    *(v0 + 336) = v12;
    v23 = swift_task_alloc();
    *(v0 + 344) = v23;
    *v23 = v0;
    v23[1] = sub_1000ED054;
    v19 = *(v0 + 304);
    v16 = v0 + 184;
    v17 = 0;
    v18 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v16, v17, v18, v19);
}

uint64_t sub_1000ED588(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v10 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamMetadata;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  sub_1000C1724(a2, a3 | ((HIDWORD(a3) & 1) << 32), isUniquelyReferenced_nonNull_native, a5, a4);
  *(a1 + v10) = v13;
  return swift_endAccess();
}

id sub_1000ED648()
{
  v1 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___captureEffectsContext;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___captureEffectsContext);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(CIContext) init];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100061950(v4);
  }

  sub_100061960(v2);
  return v3;
}

id sub_1000ED6C8()
{
  v1 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___monocularDepthExecutor;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___monocularDepthExecutor);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(ADMonocularV2Executor) initWithInputPrioritization:3];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100061950(v4);
  }

  sub_100061960(v2);
  return v3;
}

uint64_t sub_1000ED74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for DetectionRequest();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v8 = sub_1000033A8(&qword_1001DB558);
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v9 = sub_1000033A8(&qword_1001DB560);
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  type metadata accessor for BundleSelector();
  sub_1000F46BC(&qword_1001DA740, &type metadata accessor for BundleSelector);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000ED944, v11, v10);
}

uint64_t sub_1000ED944()
{
  dispatch thunk of BundleSelector.requestsStream.getter();

  return _swift_task_switch(sub_1000ED9B0, 0, 0);
}

uint64_t sub_1000ED9B0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[27] = 0;
  v0[28] = 0;
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1000EDAA8;
  v5 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v5);
}

uint64_t sub_1000EDAA8()
{

  return _swift_task_switch(sub_1000EDBA4, 0, 0);
}

uint64_t sub_1000EDBA4()
{
  v1 = v0[11];
  if (!v1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_18:
    sub_100005640(v0[27]);

    v32 = v0[1];

    return v32();
  }

  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);

    goto LABEL_18;
  }

  v3 = Strong;
  v37 = v1;
  v4 = v0[27];
  v5 = v0[16];
  v0[12] = 0;
  v6 = *(Strong + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  v7 = swift_allocObject();
  v0[31] = v7;
  v7[2] = v3;
  v7[3] = v0 + 12;
  v8 = v1;
  v7[4] = v1;
  v7[5] = v5;

  sub_100005640(v4);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000F3E0C;
  *(v9 + 24) = v7;
  v0[6] = sub_1000C5638;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100071D78;
  v0[5] = &unk_1001C57C8;
  v10 = _Block_copy(v0 + 2);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
LABEL_29:
    __break(1u);
    return AsyncStream.Iterator.next(isolation:)(v11, v12, v13, v14);
  }

  v15 = v0[12];
  v0[32] = v15;
  if (!v15)
  {

    v34 = v0[31];

    v0[27] = sub_1000F3E0C;
    v0[28] = v34;
    v35 = swift_task_alloc();
    v0[29] = v35;
    *v35 = v0;
    v35[1] = sub_1000EDAA8;
    v14 = v0[24];
    v11 = (v0 + 11);
    v12 = 0;
    v13 = 0;

    return AsyncStream.Iterator.next(isolation:)(v11, v12, v13, v14);
  }

  v16 = *(v1 + 16);

  if (v16)
  {
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    while (v17 < *(v8 + 16))
    {
      v19 = v0[18];
      v20 = *(v19 + 16);
      v19 += 16;
      v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
      v22 = *(v19 + 56);
      v20(v0[20], v8 + v21 + v22 * v17, v0[17]);
      DetectionRequest.timestamp.getter();
      v24 = v23;
      dispatch thunk of StillImageMediaManifest.timestamp.getter();
      if (v24 == v25)
      {
        v26 = *(v0[18] + 32);
        v26(v0[19], v0[20], v0[17]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v0[13] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10005973C(0, *(v18 + 2) + 1, 1);
          v18 = v0[13];
        }

        v29 = *(v18 + 2);
        v28 = *(v18 + 3);
        if (v29 >= v28 >> 1)
        {
          sub_10005973C(v28 > 1, v29 + 1, 1);
          v18 = v0[13];
        }

        v30 = v0[19];
        v31 = v0[17];
        *(v18 + 2) = v29 + 1;
        v11 = v26(&v18[v21 + v29 * v22], v30, v31);
        v8 = v37;
      }

      else
      {
        v11 = (*(v0[18] + 8))(v0[20], v0[17]);
      }

      if (v16 == ++v17)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_25:
  v0[33] = v18;

  v38 = (&async function pointer to dispatch thunk of StillImageMediaManifest.service(requests:) + async function pointer to dispatch thunk of StillImageMediaManifest.service(requests:));
  v36 = swift_task_alloc();
  v0[34] = v36;
  *v36 = v0;
  v36[1] = sub_1000EE0E4;

  return v38(v18);
}

uint64_t sub_1000EE0E4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_1000EE2E4;
  }

  else
  {
    v2 = sub_1000EE200;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EE200()
{

  v1 = v0[31];

  v0[27] = sub_1000F3E0C;
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_1000EDAA8;
  v3 = v0[24];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v3);
}

uint64_t sub_1000EE2E4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000EE3C4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v6 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests;
    v7 = *(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests);

    v9 = sub_1000F3E18(a3, v7);

    *(a1 + v6) = v9;
  }
}

uint64_t sub_1000EE478(uint64_t a1)
{
  v55 = type metadata accessor for CVDetection.DetectionType();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DetectionRequest();
  v5 = __chkstk_darwin(v63);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v60 = &v47 - v8;
  __chkstk_darwin(v7);
  v57 = &v47 - v10;
  v11 = 0;
  v12 = &_swiftEmptyDictionarySingleton;
  v64 = &_swiftEmptyDictionarySingleton;
  v58 = a1;
  v15 = *(a1 + 56);
  v14 = a1 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v56 = v9 + 16;
  v61 = v9;
  v62 = v9 + 32;
  v50 = v2 + 32;
  v51 = v2;
  v49 = (v2 + 8);
  v48 = xmmword_100171DA0;
  v54 = v4;
  v52 = v19;
  while (v18)
  {
LABEL_9:
    v21 = v57;
    v22 = *(v58 + 48);
    v23 = v61;
    v59 = *(v61 + 72);
    v24 = v63;
    (*(v61 + 16))(v57, v22 + v59 * (__clz(__rbit64(v18)) | (v11 << 6)), v63);
    v25 = *(v23 + 32);
    v25(v60, v21, v24);
    DetectionRequest.detectionType.getter();
    v27 = sub_100095CDC(v4);
    v28 = v12[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_23;
    }

    v31 = v26;
    if (v12[3] < v30)
    {
      sub_1000C0170(v30, 1);
      v12 = v64;
      v32 = sub_100095CDC(v4);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

      v27 = v32;
    }

    v18 &= v18 - 1;
    if (v31)
    {
      (*v49)(v4, v55);
      v34 = v12[7];
      v25(v53, v60, v63);
      v35 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_10009562C(0, *(v35 + 2) + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v38 = *(v35 + 2);
      v37 = *(v35 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v47 = v38 + 1;
        v45 = sub_10009562C(v37 > 1, v38 + 1, 1, v35);
        v39 = v47;
        v35 = v45;
        *(v34 + 8 * v27) = v45;
      }

      *(v35 + 2) = v39;
      v25(&v35[((*(v61 + 80) + 32) & ~*(v61 + 80)) + v38 * v59], v53, v63);
      v4 = v54;
      v19 = v52;
    }

    else
    {
      sub_1000033A8(&qword_1001D6320);
      v40 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      v4 = v54;
      v25((v41 + v40), v60, v63);
      v12[(v27 >> 6) + 8] |= 1 << v27;
      (*(v51 + 32))(v12[6] + *(v51 + 72) * v27, v4, v55);
      *(v12[7] + 8 * v27) = v41;
      v42 = v12[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_24;
      }

      v12[2] = v44;
      v19 = v52;
    }
  }

  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v12;
    }

    v18 = *(v14 + 8 * v20);
    ++v11;
    if (v18)
    {
      v11 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000EE954(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamMetadata;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (v12 = sub_1000960F8(a1), (v13 & 1) != 0))
    {
      v14 = *(*(v11 + 56) + 24 * v12);
    }

    else
    {
      v15 = 1 << *(v11 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v11 + 64);
      v18 = (v15 + 63) >> 6;

      v19 = 0;
      v20 = _swiftEmptyArrayStorage;
      if (!v17)
      {
        goto LABEL_10;
      }

      do
      {
LABEL_8:
        while (1)
        {
          v21 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
          v22 = *(*(v11 + 48) + ((v19 << 9) | (8 * v21)));
          if (v22 < a1)
          {
            break;
          }

          if (!v17)
          {
            goto LABEL_10;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100059780(0, *(v20 + 2) + 1, 1);
          v20 = v42;
        }

        v25 = *(v20 + 2);
        v26 = *(v20 + 3);
        v27 = v25 + 1;
        if (v25 >= v26 >> 1)
        {
          v40 = *(v20 + 2);
          v41 = v25 + 1;
          sub_100059780((v26 > 1), v25 + 1, 1);
          v25 = v40;
          v27 = v41;
          v20 = v42;
        }

        *(v20 + 2) = v27;
        *&v20[8 * v25 + 32] = v22;
      }

      while (v17);
      while (1)
      {
LABEL_10:
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v23 >= v18)
        {
          break;
        }

        v17 = *(v11 + 64 + 8 * v23);
        ++v19;
        if (v17)
        {
          v19 = v23;
          goto LABEL_8;
        }
      }

      v42 = v20;

      sub_1000BCDBC(&v42);

      v28 = *(v42 + 2);
      if (v28)
      {
        v29 = *&v42[8 * v28 + 24];

        v30 = *(v2 + v10);
        if (*(v30 + 16))
        {
          v31 = sub_1000960F8(v29);
          if (v32)
          {
            v33 = *(v30 + 56) + 24 * v31;
            v34 = *(v33 + 16);
            v35 = *(v33 + 20);

            LOBYTE(v42) = v35;
            sub_100054F80(v36, v34 | (v35 << 32), a1);
            v14 = v37;

            return v14;
          }
        }
      }

      else
      {
      }

      return 0;
    }

    return v14;
  }

  else
  {
LABEL_28:
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000EECE8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return _swift_task_switch(sub_1000EED0C, 0, 0);
}

uint64_t sub_1000EED0C()
{
  v0[8] = 0;
  v1 = v0[11];
  v2 = *(v1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  v3 = swift_allocObject();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000F39BC;
  *(v4 + 24) = v3;
  v0[6] = sub_1000C5638;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100071D78;
  v0[5] = &unk_1001C54A8;
  v5 = _Block_copy(v0 + 2);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[8];
    v0[13] = v7;
    if (v7)
    {
      v13 = (&async function pointer to dispatch thunk of StillImageMediaManifest.safeAreaFrame(maxDimension:) + async function pointer to dispatch thunk of StillImageMediaManifest.safeAreaFrame(maxDimension:));

      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = sub_1000EEF60;
      v9 = v0[9];
      v10 = v0[10];

      return v13(v9, v10);
    }

    else
    {
      v11 = v0[9];
      *(v11 + 32) = 0;
      *v11 = 0u;
      *(v11 + 16) = 0u;

      v12 = v0[1];

      return v12();
    }
  }

  return result;
}

uint64_t sub_1000EEF60()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000EF0EC;
  }

  else
  {

    v2 = sub_1000EF07C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EF07C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EF0EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EF164(uint64_t a1, uint64_t *a2)
{
  result = *(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest);
  if (result)
  {
    *a2 = result;
  }

  return result;
}

void sub_1000EF1B4(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer__previewRunningInternal))
  {
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "CVFS ignoring reset while preview is running", v2, 2u);
    }
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest) = 0;

    v4 = a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
    *v4 = 0;
    *(v4 + 8) = 1;
    v5 = sub_100097C40(&_swiftEmptyArrayStorage);
    v6 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamMetadata;
    swift_beginAccess();
    *(a1 + v6) = v5;

    *(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests) = &_swiftEmptyArrayStorage;
  }
}

uint64_t sub_1000EF310(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a1 / a2;
  v9 = 2 * (v8 > 1.55555556);
  if (v8 >= 0.642857143)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  if (v8 <= 1.0)
  {
    v9 = v10;
  }

  *(v2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_monocularDepthAspectRatio) = v9;
  v11 = qword_10017B540[v9];
  v12 = qword_10017B560[v9];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = v11;
  v14[6] = v12;

  sub_1000EF5F8(0, 0, v7, &unk_10017B490, v14);

  return sub_10001370C(v7, &qword_1001D41B0);
}

uint64_t sub_1000EF4B4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  return _swift_task_switch(sub_1000EF4D8, 0, 0);
}

uint64_t sub_1000EF4D8()
{
  v1 = sub_1000ED6C8();
  if (!v1 || (v2 = v1, v3 = [v1 prepareForEngineType:4 inputColorROI:{0.0, 0.0, *(v0 + 24), *(v0 + 32)}], v2, v3))
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "monocularDepthExecutor.prepare returned nil or an error", v6, 2u);
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000EF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000138BC(a3, v25 - v10, &qword_1001D41B0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001370C(v11, &qword_1001D41B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000EF8B8()
{
  v1 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_signposter;
  v4 = type metadata accessor for LoggingSignposter();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_weakDestroy();

  sub_100005640(*(v0 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback));

  sub_10001370C(v0 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataProducerInternal, &qword_1001DB530);

  sub_10001370C(v0 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_streamingMetadataConsumer, &qword_1001DB538);

  sub_100061950(*(v0 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___captureEffectsContext));
  sub_100061950(*(v0 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer____lazy_storage___monocularDepthExecutor));
  v5 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_captureEffectsStreamInternal;
  v6 = sub_1000033A8(&qword_1001DA780);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_captureEffectsStreamContinuation;
  v8 = sub_1000033A8(&qword_1001DB528);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_1000EFB04()
{
  sub_1000EF8B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CVFrameSynchronizer()
{
  result = qword_1001DB1E0;
  if (!qword_1001DB1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EFBB0()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LoggingSignposter();
    if (v1 <= 0x3F)
    {
      sub_1000EFDB4(319, &qword_1001DB1F0, &type metadata accessor for AsyncStream);
      if (v2 <= 0x3F)
      {
        sub_1000EFDB4(319, &unk_1001DB1F8, &type metadata accessor for AsyncStream.Continuation);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000EFDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CameraCaptureEffectsMedia);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000EFE08(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v9 - 8);
  v116 = &v110 - v10;
  v115 = type metadata accessor for Angle();
  v114 = *(v115 - 8);
  v11 = __chkstk_darwin(v115);
  v111 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v112 = &v110 - v13;
  v119 = type metadata accessor for CameraSourceFrameMetadata();
  v118 = *(v119 - 1);
  v14 = __chkstk_darwin(v119);
  v117 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = *(v4 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewLayerCallbackQueue);
  v19 = *(v16 + 16);
  v128 = a1;
  v123 = v16 + 16;
  v122 = v19;
  v19(v18, a1, a3);
  v144 = *a2;
  v142 = *(a2 + 24);
  v143 = *(a2 + 40);
  v20 = *(v16 + 80);
  v21 = (v20 + 40) & ~v20;
  v121 = v17 + 7;
  v22 = (v17 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = a4;
  v129 = a4;
  *(v23 + 4) = v4;
  v24 = *(v16 + 32);
  v125 = v18;
  v25 = v18;
  v26 = a3;
  v27 = a3;
  v28 = v4;
  v126 = v16 + 32;
  v124 = v24;
  v24(&v23[v21], v25, v27);
  v29 = &v23[v22];
  v30 = a2[1];
  *v29 = *a2;
  *(v29 + 1) = v30;
  *(v29 + 25) = *(a2 + 25);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1000F29BC;
  *(v31 + 24) = v23;
  v120 = v23;
  v140 = sub_10006180C;
  v141 = v31;
  aBlock = _NSConcreteStackBlock;
  v137 = 1107296256;
  v138 = sub_100071D78;
  v139 = &unk_1001C5278;
  v32 = _Block_copy(&aBlock);

  sub_1000C5274(&v144, v130);
  sub_1000C52D0(&v142, v130);

  dispatch_sync(v127, v32);
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v34 = ~v20;
  v35 = *(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_stateQueue);
  OS_dispatch_queue.sync<A>(execute:)();
  v127 = 0;
  v36 = v128;
  v113 = ~v20;
  if (aBlock == 1 && (*(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_cvcPrepared) & 1) == 0)
  {
    *(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_cvcPrepared) = 1;
    v37 = dispatch thunk of CVCoordinator.prepare<A>(frame:)();
    if ((v39 & 1) == 0)
    {
      v40 = v117;
      v41 = v37;
      v42 = v38;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v43 = v112;
      CameraSourceFrameMetadata.rotationAngle.getter();
      (*(v118 + 8))(v40, v119);
      v44 = v41;
      v34 = v113;
      v45 = v42;
      v36 = v128;
      sub_1000EF310(v44, v45);
      (*(v114 + 8))(v43, v115);
    }
  }

  v46 = v129;
  CameraSourceFrame.timestamp.getter();
  v48 = v47;
  v135 = _swiftEmptyArrayStorage;
  v134 = _swiftEmptyArrayStorage;
  v132 = 0;
  v133 = 1;
  v131 = 0;
  v49 = v125;
  v122(v125, v36, v26);
  v50 = (v20 + 72) & v34;
  v51 = (v121 + v50) & 0xFFFFFFFFFFFFFFF8;
  v112 = v20;
  v52 = v26;
  v53 = swift_allocObject();
  *(v53 + 2) = v52;
  *(v53 + 3) = v46;
  *(v53 + 4) = &v135;
  *(v53 + 5) = v28;
  *(v53 + 6) = v48;
  *(v53 + 7) = &v134;
  *(v53 + 8) = &v132;
  v124(&v53[v50], v49, v52);
  *&v53[v51] = &v131;
  v54 = &v53[(v51 + 15) & 0xFFFFFFFFFFFFFFF8];
  *(v54 + 25) = *(a2 + 25);
  v55 = a2[1];
  *v54 = *a2;
  *(v54 + 1) = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1000F2B44;
  *(v56 + 24) = v53;
  v140 = sub_1000C5638;
  v141 = v56;
  aBlock = _NSConcreteStackBlock;
  v137 = 1107296256;
  v138 = sub_100071D78;
  v139 = &unk_1001C52F0;
  v57 = _Block_copy(&aBlock);

  sub_1000C5274(&v144, v130);
  sub_1000C52D0(&v142, v130);

  dispatch_sync(v35, v57);
  _Block_release(v57);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    goto LABEL_44;
  }

  v58 = v131;
  if (v131)
  {

    v59 = v117;
    dispatch thunk of CameraSourceFrame.metadata.getter();
    v60 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
    (*(v118 + 8))(v59, v119);
    if (v60)
    {
      LOBYTE(v130[0]) = 0;
      v61 = swift_allocObject();
      *(v61 + 16) = v130;
      *(v61 + 24) = v28;
      *(v61 + 32) = 0;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_1000F2E68;
      *(v62 + 24) = v61;
      v140 = sub_1000C5638;
      v141 = v62;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_100071D78;
      v139 = &unk_1001C5390;
      v63 = _Block_copy(&aBlock);

      dispatch_sync(v35, v63);
      _Block_release(v63);
      LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

      if ((v63 & 1) == 0)
      {
        v64 = type metadata accessor for TaskPriority();
        v65 = v116;
        (*(*(v64 - 8) + 56))(v116, 1, 1, v64);
        v66 = swift_allocObject();
        v66[2] = 0;
        v66[3] = 0;
        v66[4] = v28;
        v66[5] = v58;

        sub_100044AB8(0, 0, v65, &unk_10017B460, v66);

        v67 = v143;
        v68 = v127;
        goto LABEL_16;
      }

      goto LABEL_45;
    }
  }

  v68 = v127;
  OS_dispatch_queue.sync<A>(execute:)();
  v67 = v143;
  if (aBlock != 1 || v143 != 1)
  {
LABEL_16:
    if (v67 < 3 || v142 ^ 1 | *(&v142 + 1) || *(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_awaitingCaptureEffects) != 1)
    {
      goto LABEL_36;
    }

    v127 = v68;
    *(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_awaitingCaptureEffects) = 0;
    static LoggingSignposter.produceCaptureEffectsMedia.getter();
    default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
    default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
    v70 = v117;
    dispatch thunk of CameraSourceFrame.metadata.getter();
    CameraSourceFrameMetadata.safeArea.getter();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    (*(v118 + 8))(v70, v119);
    v79 = *(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_monocularDepthAspectRatio);
    if (v79 <= 1)
    {
      if (*(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_monocularDepthAspectRatio))
      {
        v80 = 480.0;
        v81 = 360.0;
      }

      else
      {
        v80 = 360.0;
        v81 = 480.0;
      }
    }

    else if (v79 == 2)
    {
      v80 = 280.0;
      v81 = 496.0;
    }

    else
    {
      if (v79 != 3)
      {
LABEL_35:
        sub_100006B44(&aBlock);
        goto LABEL_36;
      }

      v80 = 496.0;
      v81 = 280.0;
    }

    if (v81 > v80)
    {
      v82 = v81;
    }

    else
    {
      v82 = v80;
    }

    v83 = sub_1000ED648();
    if (v83)
    {
      v84 = v83;
      default argument 4 of CVCoordinator.extractPixels<A>(frame:regionOfInterest:maxDimension:orientation:pixelFormat:)();
      LOBYTE(v130[0]) = 0;
      v85 = v127;
      v86 = CVCoordinator.extractPixels<A>(frame:regionOfInterest:maxDimension:orientation:pixelFormat:)();
      if (v85)
      {

        swift_errorRetain();
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v130[0] = v90;
          *v89 = 136315138;
          swift_getErrorValue();
          v91 = Error.localizedDescription.getter();
          v93 = sub_1000E0FE0(v91, v92, v130);

          *(v89 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v87, v88, "Capture effects processing error: %s", v89, 0xCu);
          sub_100006B44(v90);
        }

        else
        {
        }
      }

      else
      {
        if (!v86)
        {
          sub_100006B44(&aBlock);

          goto LABEL_36;
        }

        v127 = v86;
        static CGRect.unitRect.getter();
        v119 = v95;
        v118 = v82;
        v96 = v111;
        CameraSourceFrame.rotationAngle.getter();
        Angle.cgOrientation.getter();
        (*(v114 + 8))(v96, v115);
        LOBYTE(v130[0]) = 0;
        v97 = CVCoordinator.extractPixels<A>(frame:regionOfInterest:maxDimension:orientation:pixelFormat:)();
        if (!v97)
        {
          sub_100006B44(&aBlock);

          goto LABEL_36;
        }

        v98 = v97;
        v119 = v97;
        v99 = type metadata accessor for TaskPriority();
        (*(*(v99 - 8) + 56))(v116, 1, 1, v99);
        v100 = v125;
        v122(v125, v128, v52);
        sub_10002A860(&aBlock, v130);
        v101 = (v112 + 104) & v113;
        v102 = (v121 + v101) & 0xFFFFFFFFFFFFFFF8;
        v103 = swift_allocObject();
        *(v103 + 2) = 0;
        *(v103 + 3) = 0;
        v104 = v129;
        *(v103 + 4) = v52;
        *(v103 + 5) = v104;
        *(v103 + 6) = v28;
        *(v103 + 7) = v98;
        v105 = v127;
        *(v103 + 8) = v127;
        *(v103 + 9) = v72;
        *(v103 + 10) = v74;
        *(v103 + 11) = v76;
        *(v103 + 12) = v78;
        v124(&v103[v101], v100, v52);
        *&v103[v102] = v84;
        sub_10002AAA4(v130, &v103[(v102 + 15) & 0xFFFFFFFFFFFFFFF8]);

        v106 = v119;
        v107 = v105;
        v108 = v84;
        sub_1000154EC(0, 0, v116, &unk_10017B450, v103);
      }
    }

    goto LABEL_35;
  }

  *(v28 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_awaitingCaptureEffects) = 1;
  v69 = v133;

  default argument 1 of CVCoordinator.consumeFrame<A>(_:isFirstCycleOverStill:cadenceMultiplier:upstreamRequests:upstreamResults:uprightTransform:)();
  LOBYTE(aBlock) = v69;
  CVCoordinator.consumeFrame<A>(_:isFirstCycleOverStill:cadenceMultiplier:upstreamRequests:upstreamResults:uprightTransform:)();
  if (!v68)
  {

LABEL_36:
  }

LABEL_46:

  aBlock = 0;
  v137 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  aBlock = 0xD000000000000028;
  v137 = 0x800000010016EA40;
  swift_getErrorValue();
  v109._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v109);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000F1008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __IOSurface *a5)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000C4270(a2, *(a3 + 24), *(a3 + 32), *(a3 + 40), a4, a5);
  }

  if (*(a1 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_debugPreviewLayer))
  {

    sub_1000B9F04(a2, a3, a4, a5);
  }

  return result;
}

void sub_1000F10D4(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, double a9)
{
  v101 = a8;
  v94 = a7;
  v91 = a6;
  v100 = a5;
  v93 = a4;
  v92 = a3;
  v95 = a1;
  v98 = type metadata accessor for CameraSourceFrameMetadata();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DetectionRequest();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v89 - v17;
  v99 = a2;
  v90 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests;
  v19 = *(a2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamRequests);
  v20 = *(v19 + 16);

  v21 = _swiftEmptyArrayStorage;
  v108 = v20;
  if (!v20)
  {
LABEL_12:

    *v95 = v21;

    v31 = v99;
    v32 = sub_1000EE954(a9);
    if (v32)
    {
      v34 = v33;
      sub_1000EC20C(v32, sub_100095654, &type metadata accessor for DetectionResult);
      v35 = v93;
      *v93 = v34;
      *(v35 + 4) = BYTE4(v34) & 1;
    }

    v36 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_upstreamMetadata;
    swift_beginAccess();

    v38 = sub_1000F241C(v37, a9);

    *(v31 + v36) = v38;

    v39 = v96;
    dispatch thunk of CameraSourceFrame.metadata.getter();
    v40 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
    (*(v97 + 8))(v39, v98);
    if (v40)
    {
      v41 = OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest;
      if (*(v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest))
      {
        return;
      }

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v109[0] = v45;
        *v44 = 134218242;
        *(v44 + 4) = a9;
        *(v44 + 12) = 2080;
        if (*(v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8))
        {
          v46 = 7104878;
          v47 = 0xE300000000000000;
        }

        else
        {
          v46 = Double.description.getter();
          v47 = v52;
        }

        v53 = sub_1000E0FE0(v46, v47, v109);

        *(v44 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v42, v43, "Still image processing: currentFrameTime=%f, plausibleFinalFrameTimestamp=%s", v44, 0x16u);
        sub_100006B44(v45);

        v31 = v99;
      }

      else
      {
      }

      v54 = (v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp);
      if ((*(v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8) & 1) != 0 || (v55 = *v54, *v54 <= a9))
      {
        v56 = Logger.logObject.getter();
        v59 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v56, v59))
        {
          v55 = a9;
          goto LABEL_35;
        }

        v60 = swift_slowAlloc();
        *v60 = 134217984;
        *(v60 + 4) = a9;
        _os_log_impl(&_mh_execute_header, v56, v59, "Using original still image timestamp %f (no override needed)", v60, 0xCu);
        v55 = a9;
      }

      else
      {
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v56, v57))
        {
LABEL_35:

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            *v63 = 134217984;
            *(v63 + 4) = v55;
            _os_log_impl(&_mh_execute_header, v61, v62, "Creating StillImageMediaManifest with final timestamp: %f", v63, 0xCu);
          }

          v64 = CameraSourceFrame.createStillImageMediaManifest(cvCoordinator:overrideTimestamp:)();
          *(v31 + v41) = v64;

          *v91 = v64;

          *(v31 + v36) = sub_100097C40(_swiftEmptyArrayStorage);

          *(v31 + v90) = _swiftEmptyArrayStorage;

          v48 = v94;
          v49 = *(v94 + 40);
          goto LABEL_38;
        }

        v58 = swift_slowAlloc();
        *v58 = 134218240;
        *(v58 + 4) = a9;
        *(v58 + 12) = 2048;
        *(v58 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v56, v57, "Still image timestamp %f is too far in the past; overriding it with %f", v58, 0x16u);
      }

      goto LABEL_35;
    }

    v48 = v94;
    v49 = *(v94 + 40);
    if (v49 != 1)
    {
      if (v49 != 3)
      {
LABEL_38:
        v51 = *(v48 + 24);
        v50 = *(v48 + 32);
        if (v49 < 2)
        {
          goto LABEL_48;
        }

        if (v49 == 2)
        {

          LOBYTE(v49) = 2;
          goto LABEL_48;
        }

LABEL_41:
        if (v51 | v50)
        {
          if (v51 ^ 1 | v50)
          {
            v78 = v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
            v79 = *v78;
            if (*(v78 + 8))
            {
              v79 = -INFINITY;
            }

            if (v79 > a9)
            {
              v80 = v79;
            }

            else
            {
              v80 = a9;
            }

            v81 = Logger.logObject.getter();
            v82 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v84 = swift_slowAlloc();
              v109[0] = v84;
              *v83 = 136315650;
              if (*(v78 + 8))
              {
                v85 = 7104878;
                v86 = 0xE300000000000000;
              }

              else
              {
                v85 = Double.description.getter();
                v86 = v87;
              }

              v88 = sub_1000E0FE0(v85, v86, v109);

              *(v83 + 4) = v88;
              *(v83 + 12) = 2048;
              *(v83 + 14) = v80;
              *(v83 + 22) = 2048;
              *(v83 + 24) = a9;
              _os_log_impl(&_mh_execute_header, v81, v82, "pauseRequested: updating plausibleFinalFrameTimestamp from %s to %f (currentFrameTime: %f)", v83, 0x20u);
              sub_100006B44(v84);
            }

            *v78 = v80;
            *(v78 + 8) = 0;
          }

          else
          {
            v65 = v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
            if (*(v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8) == 1)
            {
              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                *v68 = 134217984;
                *(v68 + 4) = a9;
                _os_log_impl(&_mh_execute_header, v66, v67, "pausing fallback: setting plausibleFinalFrameTimestamp to %f", v68, 0xCu);
              }

              *v65 = a9;
              *(v65 + 8) = 0;
            }
          }

          return;
        }

        LOBYTE(v49) = 3;
LABEL_48:
        v69 = v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp;
        if (*(v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_plausibleFinalFrameTimestamp + 8) == 1)
        {
          sub_1000616E4(v51, v50, v49);
        }

        else
        {
          v113[0] = *v48;

          sub_100060424(v51, v50, v49);
          sub_1000C5274(v113, v109);
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.debug.getter();

          sub_1000F2F48(v113);
          sub_1000616E4(v51, v50, v49);
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v111 = v73;
            *v72 = 134218242;
            v74 = *v69;
            if (*(v69 + 8))
            {
              v74 = -INFINITY;
            }

            *(v72 + 4) = v74;
            *(v72 + 12) = 2080;
            v109[0] = v51;
            v109[1] = v50;
            v110 = v49;
            v75 = String.init<A>(describing:)();
            v77 = sub_1000E0FE0(v75, v76, &v111);

            *(v72 + 14) = v77;
            _os_log_impl(&_mh_execute_header, v70, v71, "Clearing plausibleFinalFrameTimestamp (was %f) due to state %s", v72, 0x16u);
            sub_100006B44(v73);
          }

          else
          {
            sub_1000616E4(v51, v50, v49);
          }
        }

        *v69 = 0;
        *(v69 + 8) = 1;
        return;
      }

      v51 = *(v94 + 24);
      v50 = *(v94 + 32);
      if (v50 || v51 != 2)
      {
        goto LABEL_41;
      }
    }

    *(v31 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_currentMediaManifest) = 0;

    goto LABEL_38;
  }

  v22 = 0;
  v106 = (v13 + 32);
  v107 = v13 + 16;
  v102 = (v13 + 8);
  v103 = v16;
  v104 = v19;
  v105 = v12;
  while (v22 < *(v19 + 16))
  {
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v24 = *(v13 + 72);
    (*(v13 + 16))(v18, v19 + v23 + v24 * v22, v12);
    DetectionRequest.timestamp.getter();
    if (v25 > a9)
    {
      (*v102)(v18, v12);
    }

    else
    {
      v26 = *v106;
      (*v106)(v16, v18, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10005973C(0, v21[2] + 1, 1);
        v21 = v112;
      }

      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        sub_10005973C(v28 > 1, v29 + 1, 1);
        v21 = v112;
      }

      v21[2] = v29 + 1;
      v30 = v21 + v23 + v29 * v24;
      v16 = v103;
      v12 = v105;
      v26(v30, v103, v105);
      v19 = v104;
    }

    if (v108 == ++v22)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1000F1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000F1CB4, 0, 0);
}

uint64_t sub_1000F1CB4()
{
  v0[4] = *(v0[2] + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_actionPredictor);
  v0[5] = sub_100013608(&qword_1001DB510, &qword_1001DB518);
  type metadata accessor for ActionPredictor();
  sub_1000F46BC(&qword_1001DA748, &type metadata accessor for ActionPredictor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F1DB0, v2, v1);
}

uint64_t sub_1000F1DB0()
{
  dispatch thunk of ActionPredictor.setVisionProvider(_:)();
  v3 = (&async function pointer to dispatch thunk of StillImageMediaManifest.ingest() + async function pointer to dispatch thunk of StillImageMediaManifest.ingest());
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000E7F68;

  return v3();
}

uint64_t sub_1000F1E60(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 160) = v18;
  *(v12 + 144) = v17;
  *(v12 + 128) = a11;
  *(v12 + 136) = a12;
  *(v12 + 112) = a3;
  *(v12 + 120) = a4;
  *(v12 + 96) = a1;
  *(v12 + 104) = a2;
  *(v12 + 80) = a9;
  *(v12 + 88) = a10;
  *(v12 + 72) = a8;
  v13 = sub_1000033A8(&qword_1001DB520);
  *(v12 + 168) = v13;
  *(v12 + 176) = *(v13 - 8);
  *(v12 + 184) = swift_task_alloc();
  v14 = type metadata accessor for Angle();
  *(v12 + 192) = v14;
  *(v12 + 200) = *(v14 - 8);
  *(v12 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_1000F1FD8, 0, 0);
}

uint64_t sub_1000F1FD8()
{
  *(v0 + 64) = 0;
  v1 = (v0 + 64);
  v2 = sub_1000ED6C8();
  if (v2 && (v3 = v2, v4 = [v2 executeWithColor:*(v0 + 80) outDisparity:v0 + 64], v3, !v4) && (v13 = *v1) != 0)
  {
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v34 = *(v0 + 192);
    v16 = *(v0 + 136);
    type metadata accessor for CVCoordinator();
    CVPixelBufferGetWidth(v13);
    CVPixelBufferGetHeight(v13);
    static CVCoordinator.denormalizeCropRect(cropRect:width:height:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    CameraSourceFrame.rotationAngle.getter();
    v25 = sub_1000210D4(v18, v20, v22, v24, v14, v16);
    (*(v15 + 8))(v14, v34);
    v27 = *(v0 + 176);
    v26 = *(v0 + 184);
    v28 = *(v0 + 168);
    v29 = *(v0 + 88);
    if (v25)
    {
      *(v0 + 48) = v29;
      *(v0 + 56) = v25;
      v30 = v29;
      v31 = v25;
      sub_1000033A8(&qword_1001DB528);
      AsyncStream.Continuation.yield(_:)();
    }

    else
    {
      v32 = [objc_allocWithZone(CIImage) init];
      *(v0 + 32) = v29;
      *(v0 + 40) = v32;
      v33 = v29;
      sub_1000033A8(&qword_1001DB528);
      AsyncStream.Continuation.yield(_:)();
    }

    (*(v27 + 8))(v26, v28);
    sub_100006AAC(*(v0 + 144), *(*(v0 + 144) + 24));
    dispatch thunk of LoggingSignposter.Interval.end()();
  }

  else
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);
    v8 = *(v0 + 88);
    v9 = [objc_allocWithZone(CIImage) init];
    *(v0 + 16) = v8;
    *(v0 + 24) = v9;
    v10 = v8;
    sub_1000033A8(&qword_1001DB528);
    AsyncStream.Continuation.yield(_:)();
    (*(v6 + 8))(v5, v7);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000F2314(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback);
  v4 = *(v2 + OBJC_IVAR____TtC6Tamale19CVFrameSynchronizer_previewStartedCallback);
  *v3 = a1;
  v3[1] = a2;
  return sub_100005640(v4);
}

void sub_1000F235C(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t *sub_1000F2394(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000F2590(result, a2, a3, a4);

    return v8;
  }

  return result;
}