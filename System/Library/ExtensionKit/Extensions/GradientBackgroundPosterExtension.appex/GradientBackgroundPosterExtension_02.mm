uint64_t sub_10002B244(void *a1)
{
  v2 = sub_10004166C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [objc_msgSend(a1 "assertion")];
  swift_unknownObjectRelease();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v3 + 16))(v6, result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_logger, v2);

    v9 = sub_10004164C();
    v10 = sub_100041ACC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = -1;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = *&Strong[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];
      }

      *(v12 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v9, v10, "#%ld releasing assertion snapshot", v12, 0xCu);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

char *sub_10002B578(uint64_t a1)
{
  v3 = sub_10004166C();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004163C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer] = 0;
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor] = 0;
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_lastProgressValue] = 0;
  v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isPreview] = 0;
  v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isSnapshotMode] = 0;
  v11 = sub_10000F51C(1);
  sub_100041BEC();
  v12 = *(v11 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v13 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v13, v6);
  v14 = v12;
  sub_10004161C();

  (*(v7 + 8))(v10, v6);
  v15 = qword_1000611A8 + 1;
  if (__OFADD__(qword_1000611A8, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  ++qword_1000611A8;
  v16 = *(v38 + 16);
  v16(&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_logger], a1, v3);
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID] = v15;
  v16(v37, a1, v3);
  if (qword_10005CD60 != -1)
  {
LABEL_5:
    swift_once();
  }

  v35 = *algn_100061190;
  v36 = xmmword_100061180;
  v17 = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
  v18 = swift_allocObject();
  v41[3] = &type metadata for GradientTranscriptBackground;
  v41[4] = &off_100056488;
  v19 = swift_allocObject();
  v41[0] = v19;
  v20 = v35;
  *(v19 + 16) = v36;
  *(v19 + 32) = v20;
  v40[3] = v17;
  v40[4] = &off_1000563F8;
  v40[0] = v18;
  v21 = type metadata accessor for ViewsManager();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = sub_100032E24(v41, &type metadata for GradientTranscriptBackground);
  v26 = sub_100032E24(v40, v17);
  v27 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = (&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = sub_10002EC9C(v37, *v29, v24, *v25, v25[1]);
  sub_100005500(v40);
  sub_100005500(v41);
  *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager] = v31;
  v32 = type metadata accessor for GradientTranscriptBackgroundPosterController(0);
  v39.receiver = v1;
  v39.super_class = v32;
  v33 = objc_msgSendSuper2(&v39, "init");
  (*(v38 + 8))(a1, v3);
  *(*&v33[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_delegate + 8) = &off_1000564D8;
  swift_unknownObjectWeakAssign();
  return v33;
}

id sub_10002BA08()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_10002C494(0xD000000000000011, 0x80000001000467B0);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v6 + 16);

      return v7;
    }
  }

  return 0;
}

id sub_10002BACC()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000B1E4(0xD000000000000018, 0x8000000100046790, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100005500(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  return sub_10000C6B4();
}

uint64_t sub_10002BC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = sub_10004168C();
  v32 = *(v29 - 8);
  v6 = *(v32 + 64);
  __chkstk_darwin(v29);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000416DC();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000416FC();
  v28 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  sub_10002BACC();
  v21 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer);
  *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer) = 0;

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v22 = sub_100041B0C();
  sub_1000416EC();
  sub_10004171C();
  v27 = *(v14 + 8);
  v27(v18, v13);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  aBlock[4] = sub_10003706C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_1000565C8;
  v24 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100037AE8(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  v25 = v29;
  sub_100041CAC();
  sub_100041AEC();
  _Block_release(v24);

  (*(v32 + 8))(v8, v25);
  (*(v30 + 8))(v12, v31);
  return (v27)(v20, v28);
}

id sub_10002C0F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientTranscriptBackgroundPosterController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002C1F4()
{
  result = sub_10004166C();
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

uint64_t sub_10002C2B8(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1].i64[0];
  if (!v3)
  {
    return 0;
  }

  result = 0;
  for (i = a1 + 3; (vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(i[-1], a2), vceqq_f32(*i, a3)))) & 1) == 0; i += 2)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002C31C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension26TranscriptBackgroundEffect_logger;
  v3 = sub_10004166C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10002C42C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

unint64_t sub_10002C494(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100041F1C();
  sub_1000418BC();
  v6 = sub_100041F3C();

  return sub_10002C71C(a1, a2, v6);
}

unint64_t sub_10002C50C(float *a1)
{
  v3 = *(v1 + 40);
  sub_100041F1C();
  sub_10001AB00();
  sub_1000418BC();

  v4 = sub_100041F3C();

  return sub_10002C7D4(a1, v4);
}

unint64_t sub_10002C594(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100041CDC(*(v2 + 40));

  return sub_10002C944(a1, v4);
}

unint64_t sub_10002C5D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100041F1C();
  type metadata accessor for CFString(0);
  sub_100037AE8(&qword_10005F350, type metadata accessor for CFString);
  sub_1000415CC();
  v4 = sub_100041F3C();

  return sub_10002CA0C(a1, v4);
}

unint64_t sub_10002C68C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1000417FC();
  sub_100041F1C();
  sub_1000418BC();
  v4 = sub_100041F3C();

  return sub_10002CB18(a1, v4);
}

unint64_t sub_10002C71C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100041EEC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10002C7D4(float *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v6 = *a1;
    v7 = *(a1 + 1);
    v8 = *(v2 + 48);
    do
    {
      v9 = v8 + (v4 << 6);
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = *(v9 + 32);
      v14 = *(v9 + 40);
      v13 = *(v9 + 48);
      v15 = *(v9 + 56);
      v16 = *(v9 + 60);
      v17 = *v9 == v6 && *(v9 + 8) == v7;
      if (!v17 && (sub_100041EEC() & 1) == 0)
      {
        goto LABEL_4;
      }

      v18 = *(a1 + 3);
      if (v10)
      {
        if (!v18)
        {
          goto LABEL_4;
        }

        v19 = v11 == *(a1 + 2) && v10 == v18;
        if (!v19 && (sub_100041EEC() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v18)
      {
        goto LABEL_4;
      }

      if (v12 == a1[8] && v14 == *(a1 + 5) && v13 == *(a1 + 6) && v15 == a1[14] && v16 == (a1[15] & 1))
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v21;
    }

    while (((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002C944(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100037094(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100041CEC();
      sub_10000BAB0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002CA0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100037AE8(&qword_10005F350, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000415BC();

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

unint64_t sub_10002CB18(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000417FC();
      v9 = v8;
      if (v7 == sub_1000417FC() && v9 == v10)
      {
        break;
      }

      v12 = sub_100041EEC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10002CC1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000054B8(&qword_10005F358, &qword_100045500);
  v50 = a2;
  result = sub_100041DFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v49 = v5;
    v47 = v2;
    v48 = v14;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v21 = (v13 - 1) & v13;
LABEL_17:
      v24 = v20 | (v9 << 6);
      v53 = v21;
      if (v50)
      {
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + (v24 << 6);
        v27 = *v26;
        v28 = *(v26 + 8);
        v52 = *(v26 + 16);
        v51 = *(v26 + 24);
        v29 = *(v26 + 32);
        v31 = *(v26 + 40);
        v30 = *(v26 + 48);
        v32 = *(v26 + 56);
        v54 = *(v26 + 60);
        v55 = *(v25 + 8 * v24);
      }

      else
      {
        v33 = (*(v5 + 48) + (v24 << 6));
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[2];
        *&v57[13] = *(v33 + 45);
        v56[1] = v35;
        *v57 = v36;
        v56[0] = v34;
        v37 = *(*(v5 + 56) + 8 * v24);
        v54 = v57[28];
        v32 = *&v57[24];
        v31 = *(&v36 + 1);
        v30 = *&v57[16];
        v29 = v36;
        v51 = *(&v35 + 1);
        v52 = v35;
        v28 = *(&v34 + 1);
        v27 = v34;
        sub_1000072B8(v56, v58);
        v55 = v37;
      }

      v38 = *(v8 + 40);
      sub_100041F1C();
      v58[0] = 0;
      v58[1] = 0xE000000000000000;
      v59._countAndFlagsBits = v27;
      v59._object = v28;
      sub_1000418CC(v59);
      v60._countAndFlagsBits = 45;
      v60._object = 0xE100000000000000;
      sub_1000418CC(v60);
      v61._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v61);

      v62._countAndFlagsBits = 45;
      v62._object = 0xE100000000000000;
      sub_1000418CC(v62);
      v63._countAndFlagsBits = sub_100041EDC();
      sub_1000418CC(v63);

      v64._countAndFlagsBits = 45;
      v64._object = 0xE100000000000000;
      sub_1000418CC(v64);
      sub_100041A3C();
      v65._countAndFlagsBits = 45;
      v65._object = 0xE100000000000000;
      sub_1000418CC(v65);
      sub_100041A3C();
      sub_1000418BC();

      result = sub_100041F3C();
      v39 = -1 << *(v8 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v15 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v18 = v28;
        v17 = v27;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v15 + 8 * v41);
          if (v45 != -1)
          {
            v16 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v40) & ~*(v15 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v18 = v28;
      v17 = v27;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = *(v8 + 48) + (v16 << 6);
      *v19 = v17;
      *(v19 + 8) = v18;
      *(v19 + 16) = v52;
      *(v19 + 24) = v51;
      *(v19 + 32) = v29;
      v13 = v53;
      *(v19 + 40) = v31;
      *(v19 + 48) = v30;
      *(v19 + 56) = v32;
      *(v19 + 60) = v54;
      *(*(v8 + 56) + 8 * v16) = v55;
      ++*(v8 + 16);
      v14 = v48;
      v5 = v49;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v10, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10002D074(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000054B8(&qword_10005F1D0, &qword_100045430);
  v39 = a2;
  result = sub_100041DFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_100041F1C();
      sub_1000418BC();
      result = sub_100041F3C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002D318(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000054B8(&qword_10005F1D8, &qword_100045438);
  v38 = a2;
  result = sub_100041DFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100041F1C();
      sub_1000418BC();
      result = sub_100041F3C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002D5C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000054B8(&unk_10005F1E0, &unk_100045440);
  v36 = a2;
  result = sub_100041DFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10000E988(v25, v37);
      }

      else
      {
        sub_10000B78C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100041F1C();
      sub_1000418BC();
      result = sub_100041F3C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10000E988(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10002D878(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
  result = sub_100041DFC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10000E988((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100037094(v24, &v37);
        sub_10000B78C(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100041CDC(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10000E988(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10002DB30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100041CCC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100041F1C();

      sub_1000418BC();
      v13 = sub_100041F3C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
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

LABEL_4:
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

  return result;
}

uint64_t sub_10002DCE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10002C50C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10002CC1C(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_10002C50C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_100041EFC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_10002E4D4();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    v24 = (v20[6] + (v9 << 6));
    v25 = *a2;
    v26 = *(a2 + 16);
    v27 = *(a2 + 32);
    *(v24 + 45) = *(a2 + 45);
    v24[1] = v26;
    v24[2] = v27;
    *v24 = v25;
    *(v20[7] + 8 * v9) = a1;
    v28 = v20[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v20[2] = v29;
      return sub_1000072B8(a2, &v30);
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

uint64_t sub_10002DE5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C494(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10002D074(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10002C494(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100041EFC();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10002E678();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_10002DFD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C494(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10002D318(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10002C494(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_100041EFC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10002E7E4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_10002E150(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002C494(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10002E954();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10002D5C0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10002C494(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_100041EFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100005500(v23);

    return sub_10000E988(a1, v23);
  }

  else
  {
    sub_10002E3EC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_10002E2A0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10002C594(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10002EAF8();
      goto LABEL_7;
    }

    sub_10002D878(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10002C594(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100037094(a2, v22);
      return sub_10002E458(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_100041EFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100005500(v17);

  return sub_10000E988(a1, v17);
}

_OWORD *sub_10002E3EC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000E988(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_10002E458(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000E988(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_10002E4D4()
{
  v1 = v0;
  sub_1000054B8(&qword_10005F358, &qword_100045500);
  v2 = *v0;
  v3 = sub_100041DEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v25[13] = *(v18 + 45);
        v24[1] = v20;
        *v25 = v19;
        v24[0] = v21;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x3DuLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1000072B8(v24, &v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10002E678()
{
  v1 = v0;
  sub_1000054B8(&qword_10005F1D0, &qword_100045430);
  v2 = *v0;
  v3 = sub_100041DEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002E7E4()
{
  v1 = v0;
  sub_1000054B8(&qword_10005F1D8, &qword_100045438);
  v2 = *v0;
  v3 = sub_100041DEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002E954()
{
  v1 = v0;
  sub_1000054B8(&unk_10005F1E0, &unk_100045440);
  v2 = *v0;
  v3 = sub_100041DEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000B78C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000E988(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10002EAF8()
{
  v1 = v0;
  sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
  v2 = *v0;
  v3 = sub_100041DEC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100037094(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000B78C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000E988(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002EC9C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v20 = &type metadata for GradientTranscriptBackground;
  v21 = &off_100056488;
  v8 = swift_allocObject();
  *&v19 = v8;
  v8[1] = a4;
  v8[2] = a5;
  v17 = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
  v18 = &off_1000563F8;
  *&v16 = a2;
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  *(a3 + v9) = sub_100032FA4(&_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  *(a3 + v10) = sub_1000330A8(&_swiftEmptyArrayStorage);
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = 0;
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;
  v12 = sub_10004166C();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  sub_10000B9F0(&v19, a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  sub_10000B9F0(&v16, a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_factory);
  return a3;
}

double sub_10002EE00@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  v63 = &type metadata for GradientTranscriptBackground;
  v64 = &off_100056488;
  v6 = swift_allocObject();
  v62[0] = v6;
  v6[1] = a3;
  v6[2] = a4;
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor;
  v8 = 0.0;
  if (!*(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor))
  {
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    if ([qword_1000611A0 resumeFromLastPlayTime])
    {
      if (qword_10005CD78 != -1)
      {
        swift_once();
      }

      v9 = sub_10000BA6C(v62, &type metadata for GradientTranscriptBackground);
      v49 = *v9;
      v52 = v9[1];
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100044360;
      v11 = sub_1000229F4(v49);
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      v14 = sub_10000CBA4();
      *(v10 + 64) = v14;
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      v15 = sub_1000229F4(v52);
      *(v10 + 96) = &type metadata for String;
      *(v10 + 104) = v14;
      *(v10 + 72) = v15;
      *(v10 + 80) = v16;
      v17 = sub_10004181C();
      sub_10003803C(v17, v18);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        v8 = v22;
      }

      v23 = sub_10004164C();
      v24 = sub_100041A9C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v23, v24, "Effect time for snapshot: %f", v25, 0xCu);
      }
    }
  }

  v26 = sub_10000BA6C(v62, v63);
  v50 = *v26;
  v53 = v26[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100044360;
  v28 = sub_1000229F4(v50);
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v31 = sub_10000CBA4();
  *(v27 + 64) = v31;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v32 = sub_1000229F4(v53);
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v31;
  *(v27 + 72) = v32;
  *(v27 + 80) = v33;
  v54 = sub_10004181C();
  v35 = v34;
  *&v55 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);
  v36 = sub_100041EDC();
  v38 = v37;
  v39 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isSnapshotMode);
  v40 = *(a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_isPreview);
  v41 = *(a1 + v7);
  if (v41)
  {
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    v42 = [qword_1000611A0 posterKitEditor];
    if (*(a1 + v7))
    {
      v43 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v42 = 0;
  }

  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v43 = [qword_1000611A0 resumeFromLastPlayTime];
LABEL_21:
  *&v55 = 0x746E656964617247;
  *(&v55 + 1) = 0xE800000000000000;
  *&v56 = v54;
  *(&v56 + 1) = v35;
  *&v57 = v36;
  *(&v57 + 1) = v38;
  *&v58 = 115;
  BYTE8(v58) = 0;
  *&v59 = 0;
  WORD4(v59) = 0;
  v60 = xmmword_100045350;
  v61[0] = v39;
  v61[1] = v40;
  v61[2] = v41 != 0;
  *&v61[4] = 1090519040;
  *&v61[8] = 0;
  *&v61[16] = 0;
  *&v61[24] = v8;
  v61[28] = v42;
  v61[29] = v43;
  nullsub_1(&v55);
  sub_100005500(v62);
  v44 = v60;
  a2[4] = v59;
  a2[5] = v44;
  a2[6] = *v61;
  *(a2 + 110) = *&v61[14];
  v45 = v56;
  *a2 = v55;
  a2[1] = v45;
  result = *&v57;
  v47 = v58;
  a2[2] = v57;
  a2[3] = v47;
  return result;
}

id sub_10002F2A4(uint64_t a1, __n128 a2, __n128 a3)
{
  v31[3] = &type metadata for GradientTranscriptBackground;
  v31[4] = &off_100056488;
  v4 = swift_allocObject();
  v31[0] = v4;
  v4[1] = a2;
  v4[2] = a3;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 posterKitEditor])
  {
    v5 = sub_10000BA6C(v31, &type metadata for GradientTranscriptBackground);
    v28 = *v5;
    v30 = v5[1];
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100044360;
    v7 = sub_1000229F4(v28);
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    v10 = sub_10000CBA4();
    *(v6 + 64) = v10;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v11 = sub_1000229F4(v30);
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v10;
    *(v6 + 72) = v11;
    *(v6 + 80) = v12;
    v13 = sub_10004181C();
    v15 = v14;
    v16 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v17 = *(a1 + v16);
    if (!*(v17 + 16) || (, v18 = sub_10002C494(v13, v15), v20 = v19, , (v20 & 1) == 0))
    {

      v25 = 0;
      goto LABEL_10;
    }

    v21 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v22 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v23 = *(a1 + v22);

    v21 = sub_100027F04(v24);
  }

  v25 = v21;

LABEL_10:
  sub_100005500(v31);
  return v25;
}

uint64_t sub_10002F4C4(uint64_t a1, __n128 a2, __n128 a3)
{
  v36 = &type metadata for GradientTranscriptBackground;
  v37 = &off_100056488;
  v4 = swift_allocObject();
  v35[0] = v4;
  v4[1] = a2;
  v4[2] = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = (a1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v7 = sub_10000BA6C(v6, v6[3]);
    v29 = *v7;
    v32 = v7[1];
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100044360;
    v9 = sub_1000229F4(v29);
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_10000CBA4();
    *(v8 + 64) = v12;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v13 = sub_1000229F4(v32);
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
    *(v8 + 72) = v13;
    *(v8 + 80) = v14;
    v15 = sub_10004181C();
    v17 = v16;
    v18 = sub_10000BA6C(v35, v36);
    v30 = *v18;
    v33 = v18[1];
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100044360;
    v20 = sub_1000229F4(v30);
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v12;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    v22 = sub_1000229F4(v33);
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v12;
    *(v19 + 72) = v22;
    *(v19 + 80) = v23;
    if (v15 == sub_10004181C() && v17 == v24)
    {

      Strong = 1;
    }

    else
    {
      v25 = sub_100041EEC();

      if (v25)
      {

        Strong = 1;
      }

      else
      {
        if (qword_10005CD70 != -1)
        {
          swift_once();
        }

        v26 = qword_1000611A0;
        v27 = [v26 posterKitEditor];

        Strong = v27 ^ 1;
      }
    }
  }

  sub_100005500(v35);
  return Strong;
}

void sub_10002F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v166 = a5;
  v151 = a4;
  v169 = a2;
  v171 = a1;
  v8 = sub_1000054B8(&qword_10005D9A0, &qword_100044440);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v156 = &v141 - v10;
  v11 = sub_10004168C();
  v153 = *(v11 - 8);
  v154 = v11;
  v12 = *(v153 + 64);
  __chkstk_darwin(v11);
  v152 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1000414BC();
  v155 = *(v158 - 8);
  v14 = *(v155 + 64);
  v15 = __chkstk_darwin(v158);
  v150 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v16;
  __chkstk_darwin(v15);
  v157 = &v141 - v17;
  v170 = sub_10004166C();
  v173 = *(v170 - 8);
  v18 = *(v173 + 64);
  v19 = __chkstk_darwin(v170);
  v165 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v164 = &v141 - v21;
  v168 = sub_10004163C();
  v172 = *(v168 - 8);
  v22 = *(v172 + 64);
  __chkstk_darwin(v168);
  v167 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100041AFC();
  v162 = *(v24 - 8);
  v163 = v24;
  v25 = *(v162 + 64);
  __chkstk_darwin(v24);
  v161 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100041BFC();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v160 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000416DC();
  v148 = *(v30 - 8);
  v149 = v30;
  v31 = *(v148 + 64);
  __chkstk_darwin(v30);
  v33 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179[3] = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
  v179[4] = &off_1000563F8;
  v179[0] = a3;
  v34 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *&a6[v34] = [objc_allocWithZone(VFXView) init];
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect] = 0;
  v35 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *&a6[v35] = v36;
  *(v36 + 16) = v37;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot] = 1;
  *(v36 + 24) = 0;
  v38 = &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  v38[4] = 1;
  *v38 = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;
  *(v36 + 32) = &_swiftEmptyArrayStorage;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling] = 0;
  v159 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  sub_1000416BC();
  *&v176 = &_swiftEmptyArrayStorage;
  sub_100037AE8(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v162 + 104))(v161, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v163);
  v146 = v33;
  *&a6[v159] = sub_100041C0C();
  v39 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v40 = swift_slowAlloc();
  v163 = v39;
  *&a6[v39] = v40;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
  a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
  v41 = &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed];
  *v41 = 0;
  v41[1] = 0;
  if (qword_10005CD28 != -1)
  {
    swift_once();
  }

  v42 = qword_100061090;
  sub_100041BEC();
  v159 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog;
  v43 = *(v42 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v44 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  v45 = v172;
  v46 = *(v172 + 16);
  v144 = v172 + 16;
  v145 = v44;
  v160 = v42;
  v47 = v42 + v44;
  v49 = v167;
  v48 = v168;
  v143 = v46;
  v46(v167, v47, v168);
  v50 = v43;
  sub_10004161C();

  v52 = *(v45 + 8);
  v51 = v45 + 8;
  v142 = v52;
  v52(v49, v48);
  v53 = v173 + 16;
  v54 = *(v173 + 16);
  v56 = v170;
  v55 = v171;
  (v54)(&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger], v171, v170);
  v57 = &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v58 = v169;
  v59 = *(v169 + 48);
  *(v57 + 2) = *(v169 + 32);
  *(v57 + 3) = v59;
  v60 = *(v58 + 16);
  *v57 = *v58;
  *(v57 + 1) = v60;
  *(v57 + 110) = *(v58 + 110);
  v61 = *(v58 + 96);
  *(v57 + 5) = *(v58 + 80);
  *(v57 + 6) = v61;
  *(v57 + 4) = *(v58 + 64);
  sub_10000BA08(v179, &a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_factory]);
  v62 = v164;
  v161 = v54;
  v162 = v53;
  (v54)(v164, v55, v56);
  v63 = type metadata accessor for SnapshotWriter();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  sub_100005408(v58, &v176);
  sub_100005408(v58, &v176);
  *&a6[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_100015684(v58, v62);
  **&a6[v163] = 0;
  v66 = v173;
  if (__OFADD__(qword_1000611B8, 1))
  {
    __break(1u);
  }

  else
  {
    v172 = v51;
    ++qword_1000611B8;
    if (qword_10005CD30 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  sub_100012084();
  v67 = *(v57 + 13);
  v68 = *(v57 + 14);
  v69 = type metadata accessor for TranscriptBackgroundView(0);
  v175.receiver = a6;
  v175.super_class = v69;
  v70 = objc_msgSendSuper2(&v175, "initWithFrame:", 0.0, 0.0, v67, v68);
  [v70 setAlpha:0.0];
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005408(v58, &v176);
  v71 = v55;
  v72 = sub_10004164C();
  v73 = sub_100041ACC();
  sub_100005464(v58);
  v74 = v66;
  if (os_log_type_enabled(v72, v73))
  {
    v75 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *&v176 = v163;
    *v75 = 136316162;
    v164 = v70;
    v77 = *(v58 + 32);
    v76 = *(v58 + 40);

    v78 = sub_10000B1E4(v77, v76, &v176);

    *(v75 + 4) = v78;
    *(v75 + 12) = 2080;
    *(v75 + 14) = sub_10000B1E4(0xD00000000000002FLL, 0x8000000100047990, &v176);
    *(v75 + 22) = 2080;
    v79 = v74;
    v80 = v58;
    v81 = *v58;
    v82 = *(v58 + 8);

    v83 = sub_10000B1E4(v81, v82, &v176);
    v58 = v80;
    v74 = v79;

    *(v75 + 24) = v83;
    *(v75 + 32) = 2080;

    v84 = v77;
    v56 = v170;
    v85 = sub_10000B1E4(v84, v76, &v176);
    v70 = v164;
    v71 = v171;

    *(v75 + 34) = v85;
    *(v75 + 42) = 2048;
    *(v75 + 44) = qword_1000611B8;
    _os_log_impl(&_mh_execute_header, v72, v73, "#%s %s %s %s live count %ld", v75, 0x34u);
    swift_arrayDestroy();
  }

  v86 = v165;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  if ([qword_1000611A0 nullMode])
  {
    (*(v74 + 8))(v71, v56);

    sub_100005464(v58);
LABEL_23:
    sub_100005500(v179);
    return;
  }

  v87 = *(v58 + 64);
  v180[0] = *(v58 + 48);
  v180[1] = v87;
  v180[2] = *(v58 + 80);
  sub_10003C97C(v180);
  v88 = *&v70[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];

  v89 = sub_100015870();

  if (!v89)
  {
    (v161)(v86, &v70[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger], v56);
    v123 = v70;
    v124 = sub_10004164C();
    v125 = sub_100041ACC();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v164 = v70;
      v127 = v126;
      v128 = swift_slowAlloc();
      *&v176 = v128;
      *v127 = 136315138;
      v129 = &v123[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v130 = v71;
      v131 = v74;
      v132 = *&v123[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v133 = *(v129 + 5);

      v134 = sub_10000B1E4(v132, v133, &v176);
      v74 = v131;
      v71 = v130;

      *(v127 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v124, v125, "#%s No need to go live", v127, 0xCu);
      sub_100005500(v128);

      v58 = v169;

      (*(v74 + 8))(v165, v56);
    }

    else
    {

      (*(v74 + 8))(v86, v56);
    }

    goto LABEL_17;
  }

  v90 = *v58;
  v91 = *(v58 + 8);
  v92 = [objc_opt_self() mainBundle];
  v93 = sub_1000417CC();
  v94 = sub_1000417CC();
  v95 = [v92 URLForResource:v93 withExtension:v94];

  if (v95)
  {
    v96 = v157;
    sub_10004147C();

    sub_100041BDC();
    v97 = *&v160[v159];
    v99 = v167;
    v98 = v168;
    v143(v167, &v160[v145], v168);
    v100 = v97;
    sub_10004161C();

    v142(v99, v98);
    v102 = *&v70[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v101 = *&v70[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];
    v172 = *&v70[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue];
    v103 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v104 = v155;
    v105 = v150;
    v106 = v158;
    (*(v155 + 16))(v150, v96, v158);
    v107 = *(v104 + 80);
    v164 = v70;
    v108 = (v107 + 40) & ~v107;
    v109 = (v147 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    *(v110 + 2) = v103;
    *(v110 + 3) = v102;
    *(v110 + 4) = v101;
    (*(v104 + 32))(&v110[v108], v105, v106);
    v111 = &v110[v109];
    v112 = v166;
    *v111 = v151;
    *(v111 + 1) = v112;
    *&v178[0] = sub_1000376C0;
    *(&v178[0] + 1) = v110;
    *&v176 = _NSConcreteStackBlock;
    *(&v176 + 1) = 1107296256;
    *&v177 = sub_100028728;
    *(&v177 + 1) = &unk_1000567D0;
    v113 = _Block_copy(&v176);

    v114 = v146;
    sub_1000416AC();
    v174 = &_swiftEmptyArrayStorage;
    sub_100037AE8(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000054B8(&unk_10005D640, "B|");
    sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
    v115 = v152;
    v116 = v154;
    sub_100041CAC();
    sub_100041B1C();
    _Block_release(v113);
    v117 = v116;
    v118 = v164;
    (*(v153 + 8))(v115, v117);
    (*(v148 + 8))(v114, v149);

    v119 = qword_1000611A0;
    *&v176 = qword_1000611A0;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v120 = v119;
    v121 = sub_1000413FC();

    (*(v104 + 8))(v157, v158);

    v122 = *&v118[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
    *&v118[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = v121;

    v56 = v170;
    v71 = v171;
    v58 = v169;
    v74 = v173;
LABEL_17:
    if (qword_10005CD38 != -1)
    {
      swift_once();
    }

    v135 = qword_100061130;
    sub_10001A9FC(&v176);
    if (*(v135 + 16) == 1)
    {
      v136 = sub_100041A0C();
      v137 = v156;
      (*(*(v136 - 8) + 56))(v156, 1, 1, v136);
      v138 = swift_allocObject();
      swift_weakInit();
      v139 = swift_allocObject();
      *(v139 + 16) = 0;
      *(v139 + 24) = 0;
      *(v139 + 32) = v138;
      v140 = v177;
      *(v139 + 40) = v176;
      *(v139 + 56) = v140;
      *(v139 + 72) = v178[0];
      *(v139 + 85) = *(v178 + 13);
      *(v139 + 104) = v135;

      sub_100028428(0, 0, v137, &unk_100045470, v139);
    }

    else
    {
      sub_100007314(&v176);
    }

    sub_100005464(v58);
    (*(v74 + 8))(v71, v56);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_100030AD0(uint64_t a1, __n128 a2, __n128 a3)
{
  v54 = &type metadata for GradientTranscriptBackground;
  v55 = &off_100056488;
  v4 = swift_allocObject();
  v53[0] = v4;
  v4[1] = a2;
  v4[2] = a3;
  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if (*(v6 + 16))
  {
    v7 = *(a1 + v5);

    v8 = sub_10002C494(0xD000000000000010, 0x80000001000467D0);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);

      swift_beginAccess();
      v11 = sub_10000BA6C((v10 + 24), *(v10 + 48));
      v45 = *v11;
      v48 = v11[1];
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100044360;
      v13 = sub_1000229F4(v45);
      v15 = v14;
      *(v12 + 56) = &type metadata for String;
      v16 = sub_10000CBA4();
      *(v12 + 64) = v16;
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      v17 = sub_1000229F4(v48);
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v16;
      *(v12 + 72) = v17;
      *(v12 + 80) = v18;
      v19 = sub_10004181C();
      v21 = v20;
      v22 = sub_10000BA6C(v53, v54);
      v46 = *v22;
      v49 = v22[1];
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100044360;
      v24 = sub_1000229F4(v46);
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = v16;
      *(v23 + 32) = v24;
      *(v23 + 40) = v25;
      v26 = sub_1000229F4(v49);
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = v16;
      *(v23 + 72) = v26;
      *(v23 + 80) = v27;
      if (v19 == sub_10004181C() && v21 == v28)
      {
      }

      else
      {
        v29 = sub_100041EEC();

        if ((v29 & 1) == 0)
        {
LABEL_17:

          return sub_100005500(v53);
        }
      }

      v30 = *(a1 + v5);
      if (*(v30 + 16))
      {
        v31 = *(a1 + v5);

        v32 = sub_10002C494(0xD000000000000011, 0x80000001000467B0);
        if (v33)
        {
          v34 = *(*(v30 + 56) + 8 * v32);

          v35 = sub_10004164C();
          v36 = sub_100041ACC();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v35, v36, "swap current and target", v37, 2u);
          }

          swift_beginAccess();

          v38 = *(a1 + v5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = *(a1 + v5);
          *(a1 + v5) = 0x8000000000000000;
          sub_10002DFD4(v10, 0xD000000000000011, 0x80000001000467B0, isUniquelyReferenced_nonNull_native);
          *(a1 + v5) = v51;

          v40 = swift_isUniquelyReferenced_nonNull_native();
          v52 = *(a1 + v5);
          *(a1 + v5) = 0x8000000000000000;
          sub_10002DFD4(v34, 0xD000000000000010, 0x80000001000467D0, v40);
          *(a1 + v5) = v52;
          swift_endAccess();
          v41 = [*(v10 + 16) superview];
          if (v41)
          {
            v42 = v41;
            v43 = *(v10 + 16);
            [v42 bringSubviewToFront:v43];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      goto LABEL_17;
    }
  }

  return sub_100005500(v53);
}

uint64_t sub_100030F24(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4, __n128 a5, double a6)
{
  v113 = &type metadata for GradientTranscriptBackground;
  v114 = &off_100056488;
  v10 = swift_allocObject();
  v112[0] = v10;
  v10[1] = a4;
  v10[2] = a5;
  v11 = sub_10000BA6C(v112, &type metadata for GradientTranscriptBackground);
  v12 = sub_10002F2A4(a3, *v11, v11[1]);
  if (!v12)
  {
    sub_10000BA08(v112, &v124);
    v42 = sub_10004164C();
    v43 = sub_100041ACC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v117 = v45;
      *v44 = 136315138;
      v46 = sub_10000BA6C(&v124, *(&v125 + 1));
      v90 = *v46;
      v94 = v46[1];
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_100044360;
      v48 = sub_1000229F4(v90);
      v50 = v49;
      *(v47 + 56) = &type metadata for String;
      v51 = sub_10000CBA4();
      *(v47 + 64) = v51;
      *(v47 + 32) = v48;
      *(v47 + 40) = v50;
      v52 = sub_1000229F4(v94);
      *(v47 + 96) = &type metadata for String;
      *(v47 + 104) = v51;
      *(v47 + 72) = v52;
      *(v47 + 80) = v53;
      v54 = sub_10004181C();
      v56 = v55;
      sub_100005500(&v124);
      v57 = sub_10000B1E4(v54, v56, &v117);

      *(v44 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v42, v43, "placeholderViewByEffect missing for effectType: %s", v44, 0xCu);
      sub_100005500(v45);
    }

    else
    {

      sub_100005500(&v124);
    }

    return sub_100005500(v112);
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v15 = *(a3 + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_10002C494(a1, a2);
  if ((v17 & 1) == 0)
  {

LABEL_14:

    v58 = sub_10004164C();
    v59 = sub_100041ACC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v124 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_10000B1E4(a1, a2, &v124);
      _os_log_impl(&_mh_execute_header, v58, v59, "effectView missing for key: %s", v60, 0xCu);
      sub_100005500(v61);
    }

    return sub_100005500(v112);
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  v111 = 0;
  v19 = *(v18 + 16);
  sub_1000043C4(v19, &v111);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_20:

    return sub_100005500(v112);
  }

  v21 = Strong;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v22 = &unk_100061000;
  v23 = &selRef_removeFromSuperview;
  if ([qword_1000611A0 posterKitEditor])
  {
    v93 = v21;
    swift_beginAccess();
    v24 = sub_10000BA6C((v18 + 24), *(v18 + 48));
    v85 = *v24;
    v86 = v24[1];
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100044360;
    v26 = sub_1000229F4(v85);
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_10000CBA4();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = sub_1000229F4(v86);
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    v32 = sub_10004181C();
    v34 = v33;
    v35 = sub_10000BA6C(v112, v113);
    v84 = *v35;
    v87 = v35[1];
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100044360;
    v37 = sub_1000229F4(v84);
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v29;
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    v39 = sub_1000229F4(v87);
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v29;
    *(v36 + 72) = v39;
    *(v36 + 80) = v40;
    if (v32 == sub_10004181C() && v34 == v41)
    {

      return sub_100005500(v112);
    }

    v62 = sub_100041EEC();

    v21 = v93;
    v22 = &unk_100061000;
    v23 = &selRef_removeFromSuperview;
    if (v62)
    {

      goto LABEL_20;
    }
  }

  if ([v22[52] v23[1]])
  {
    v63 = sub_10000BA6C(v112, v113);
    if (sub_100033DE8(*v63, v63[1]))
    {
      [*(v18 + 16) setAlpha:0.0];
    }
  }

  v64 = *(*(v18 + 16) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (v64)
  {
    swift_weakInit();
    v65 = *(v64 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v65);
    v66 = *(v64 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    swift_beginAccess();
    v67 = swift_weakLoadStrong();
    if (v67)
    {
      v68 = v67;
      v69 = sub_10000BA6C(v112, v113);
      v88 = v69[1];
      v91 = *v69;
      v70 = swift_unknownObjectWeakLoadStrong();
      if (v70)
      {
        v71 = v70;
        v95 = v21;
        v72 = v66;
        sub_100033608(v72, v71, v91, v88, a6);
        if ((sub_10002F4C4(v68, v91, v88) & 1) == 0)
        {
          sub_10000C14C(a6);
        }

        v21 = v95;
      }

      v22 = &unk_100061000;
    }

    os_unfair_lock_unlock(v65);

    swift_weakDestroy();
    v23 = &selRef_removeFromSuperview;
  }

  if (([v22[52] v23[1]] & 1) != 0 || a6 == 1.0)
  {
    swift_beginAccess();
    sub_1000372A0((v18 + 24), v112);
    swift_endAccess();
    v73 = swift_unknownObjectWeakLoadStrong();
    if (!v73)
    {
      goto LABEL_37;
    }

    v74 = v73;
    v75 = sub_10000BA6C(v112, v113);
    sub_10002EE00(v74, v115, *v75, v75[1]);

    v121 = v115[4];
    v122 = v115[5];
    *v123 = v116[0];
    *&v123[14] = *(v116 + 14);
    v117 = v115[0];
    v118 = v115[1];
    v119 = v115[2];
    v120 = v115[3];
    if (sub_100037204(&v117) != 1)
    {
      v108 = v121;
      v109 = v122;
      v110 = *v123;
      v104 = v117;
      v105 = v118;
      v106 = v119;
      v107 = v120;
      v102 = *&v123[24];
      v103 = *&v123[28];
      [*&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView] bounds];
      v77 = v76;
      v79 = v78;
      if ([v22[52] v23[1]])
      {
        v80 = sub_10000BA6C(v112, v113);
        v81 = sub_100033DE8(*v80, v80[1]);
      }

      else
      {
        v81 = 0;
      }

      v82 = *(v18 + 16);
      v128 = v108;
      v129 = v109;
      v130 = v110;
      v124 = v104;
      v125 = v105;
      v126 = v106;
      v127 = v107;
      v131 = v77;
      v132 = v79;
      v134 = v103;
      v133 = v102;
      sub_10003A18C(&v124, v81);

      v96[4] = v108;
      v96[5] = v109;
      v97 = v110;
      v96[0] = v104;
      v96[1] = v105;
      v96[2] = v106;
      v96[3] = v107;
      v98 = v77;
      v99 = v79;
      v101 = v103;
      v100 = v102;
      sub_100005464(v96);
    }

    else
    {
LABEL_37:
    }
  }

  else
  {
  }

  return sub_100005500(v112);
}

uint64_t sub_100031820(unint64_t a1, __n128 a2, __n128 a3, double a4)
{
  v142 = a2;
  v143 = a3;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v139 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = &type metadata for GradientTranscriptBackground;
  v176 = &off_100056488;
  v10 = swift_allocObject();
  v174[0] = v10;
  v11 = v143;
  *(v10 + 16) = v142;
  *(v10 + 32) = v11;
  v143.n128_u64[0] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v138 = v7;
    v14 = (v143.n128_u64[0] + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v15 = sub_10000BA6C(v14, v14[3]);
    v16 = v15[1];
    v140 = *v15;
    v141 = v16;
    v17 = sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v18 = swift_allocObject();
    v142 = xmmword_100044360;
    *(v18 + 16) = xmmword_100044360;
    v19 = sub_1000229F4(v140);
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    v22 = sub_10000CBA4();
    *(v18 + 64) = v22;
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v23 = sub_1000229F4(v141);
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v22;
    *(v18 + 72) = v23;
    *(v18 + 80) = v24;
    v25 = sub_10004181C();
    v27 = v26;
    v28 = sub_10000BA6C(v174, v175);
    v29 = v28[1];
    v140 = *v28;
    v141 = v29;
    v137 = v17;
    v30 = swift_allocObject();
    *(v30 + 16) = v142;
    v31 = sub_1000229F4(v140);
    *(v30 + 56) = &type metadata for String;
    *(v30 + 64) = v22;
    *(v30 + 32) = v31;
    *(v30 + 40) = v32;
    v33 = sub_1000229F4(v141);
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v22;
    v141.n128_u64[0] = v22;
    *(v30 + 72) = v33;
    *(v30 + 80) = v34;
    if (v25 == sub_10004181C() && v27 == v35)
    {
      v36 = 1;
    }

    else
    {
      v36 = sub_100041EEC();
    }

    v37 = sub_10000BA6C(v174, v175);
    v38 = sub_10002F4C4(v143.n128_i64[0], *v37, v37[1]);
    if ((v36 & 1) != 0 && a4 == 1.0)
    {
      v39 = sub_10000BA6C(v174, v175);
      sub_100030AD0(v143.n128_i64[0], *v39, v39[1]);
    }

    if (v38)
    {
      v40 = 0xD000000000000011;
    }

    else
    {
      v40 = 0xD000000000000010;
    }

    if (v38)
    {
      v41 = "cleanupBackgroundViews()";
    }

    else
    {
      v41 = "currentEffectView";
    }

    v42 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_effectViewByEffect;
    v43 = v143.n128_u64[0];
    swift_beginAccess();
    if (*(*(v43 + v42) + 16) && (, sub_10002C494(v40, v41 | 0x8000000000000000), v45 = v44, , (v45 & 1) != 0))
    {
      if (a4 != -1.0)
      {
        v46 = sub_10000BA6C(v174, v175);
        sub_100030F24(v40, v41 | 0x8000000000000000, v143.n128_i64[0], *v46, v46[1], a4);
      }
    }

    else
    {
      v140.n128_u64[0] = v42;
      v47 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;

      v48 = sub_10004164C();
      v49 = sub_100041ACC();

      v50 = os_log_type_enabled(v48, v49);
      v136 = v6;
      if (v50)
      {
        v51 = v40;
        v52 = swift_slowAlloc();
        v53 = v47;
        v54 = v13;
        v55 = swift_slowAlloc();
        *&v181[0] = v55;
        *v52 = 136315138;
        v56 = v41;
        *(v52 + 4) = sub_10000B1E4(v51, v41 | 0x8000000000000000, v181);
        _os_log_impl(&_mh_execute_header, v48, v49, " effectViewByEffect[%s] == nil", v52, 0xCu);
        sub_100005500(v55);
        v13 = v54;
        v47 = v53;

        v40 = v51;
      }

      else
      {
        v56 = v41;
      }

      v57 = sub_10000BA6C(v174, v175);
      v58 = sub_10002F2A4(v143.n128_i64[0], *v57, v57[1]);
      if (v58)
      {
        v59 = v58;
        v60 = sub_10000BA6C(v174, v175);
        sub_10002EE00(v13, v177, *v60, v60[1]);
        v61 = v56;
        if (sub_100037204(v177) == 1)
        {
        }

        else
        {
          v135 = v13;
          v171 = v177[4];
          v172 = v177[5];
          v173 = v178;
          v167 = v177[0];
          v168 = v177[1];
          v169 = v177[2];
          v170 = v177[3];
          v165 = v179;
          v166 = v180;
          [*&v59[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_contentView] bounds];
          v63 = v62;
          v65 = v64;
          sub_10000BA08(v174, v164);

          v66 = v59;
          v67 = sub_10004164C();
          v68 = sub_100041ACC();

          v69 = os_log_type_enabled(v67, v68);
          v133 = v66;
          v134 = v40;
          if (v69)
          {
            v70 = swift_slowAlloc();
            v131 = v67;
            v71 = v70;
            v132 = swift_slowAlloc();
            *&v181[0] = v132;
            *v71 = 136315650;
            *(v71 + 4) = sub_10000B1E4(v40, v56 | 0x8000000000000000, v181);
            *(v71 + 12) = 2080;
            v72 = sub_10000BA6C(v164, v164[3]);
            v73 = v72[1];
            v129 = *v72;
            v130 = v73;
            v74 = swift_allocObject();
            *(v74 + 16) = v142;
            v75 = sub_1000229F4(v129);
            LODWORD(v142) = v68;
            v76 = v141.n128_u64[0];
            *(v74 + 56) = &type metadata for String;
            *(v74 + 64) = v76;
            *(v74 + 32) = v75;
            *(v74 + 40) = v77;
            v78 = sub_1000229F4(v130);
            *(v74 + 96) = &type metadata for String;
            *(v74 + 104) = v76;
            *(v74 + 72) = v78;
            *(v74 + 80) = v79;
            v80 = sub_10004181C();
            v82 = v81;
            sub_100005500(v164);
            v83 = sub_10000B1E4(v80, v82, v181);

            *(v71 + 14) = v83;
            *(v71 + 22) = 2080;
            v84 = v66;
            v85 = [v84 description];
            v86 = sub_1000417FC();
            v88 = v87;

            v89 = sub_10000B1E4(v86, v88, v181);

            *(v71 + 24) = v89;
            v90 = v131;
            _os_log_impl(&_mh_execute_header, v131, v142, "creating view for %s %s placeholder: %s", v71, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_100005500(v164);
          }

          v91 = v143.n128_u64[0];
          v92 = v143.n128_u64[0] + v47;
          v93 = v139;
          (*(v138 + 16))(v139, v92, v136);
          v181[4] = v171;
          v181[5] = v172;
          v182 = v173;
          v181[0] = v167;
          v181[1] = v168;
          v181[2] = v169;
          v181[3] = v170;
          v183 = v63;
          v184 = v65;
          v186 = v166;
          v185 = v165;
          sub_10000BA08(v91 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_factory, v150);
          v94 = swift_allocObject();
          swift_weakInit();
          sub_10000BA08(v174, &v147);
          v95 = swift_allocObject();
          *(v95 + 16) = v94;
          sub_10000B9F0(&v147, v95 + 24);
          v96 = v151;
          v97 = sub_100032E24(v150, v151);
          *&v142 = &v129;
          v98 = *(v96[-1].Description + 8);
          __chkstk_darwin(v97);
          v100 = (&v129 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v101 + 16))(v100);
          v102 = *v100;
          v145 = type metadata accessor for TranscriptBackgroundGradientEffectFactory();
          v146 = &off_1000563F8;
          v144[0] = v102;
          v141.n128_u64[0] = objc_allocWithZone(type metadata accessor for TranscriptBackgroundView(0));
          v103 = v145;
          v104 = sub_100032E24(v144, v145);
          v105 = *(*(v103 - 8) + 64);
          __chkstk_darwin(v104);
          v107 = (&v129 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v108 + 16))(v107);
          v109 = *v107;
          sub_100005408(v181, &v153);

          sub_10002F75C(v93, v181, v109, sub_100037294, v95, v141.n128_u64[0]);
          v111 = v110;
          sub_100005500(v144);
          sub_100005500(v150);

          [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
          sub_10000BA08(v174, &v153);
          v112 = sub_100032E24(&v153, *(&v154 + 1));
          v113 = *v112;
          v141 = *(v112 + 16);
          v142 = v113;
          v151 = &type metadata for GradientTranscriptBackground;
          v152 = &off_100056488;
          v114 = swift_allocObject();
          v150[0] = v114;
          v115 = v141;
          *(v114 + 16) = v142;
          *(v114 + 32) = v115;
          type metadata accessor for ViewsManager.EffectView();
          v116 = swift_allocObject();
          v117 = sub_100032E24(v150, &type metadata for GradientTranscriptBackground);
          v118 = *v117;
          v141 = *(v117 + 16);
          v142 = v118;
          v148 = &type metadata for GradientTranscriptBackground;
          v149 = &off_100056488;
          v119 = swift_allocObject();
          *&v147 = v119;
          v120 = v141;
          *(v119 + 16) = v142;
          *(v119 + 32) = v120;
          *(v116 + 16) = v111;
          sub_10000B9F0(&v147, v116 + 24);

          v121 = v111;
          sub_100005500(v150);
          sub_100005500(&v153);
          v122 = v140.n128_u64[0];
          swift_beginAccess();
          v123 = *(v91 + v122);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150[0] = *(v91 + v122);
          *(v91 + v122) = 0x8000000000000000;
          v125 = v116;
          v126 = v134;
          sub_10002DFD4(v125, v134, v61 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

          *(v91 + v122) = v150[0];
          swift_endAccess();
          v127 = sub_10000BA6C(v174, v175);
          sub_100030F24(v126, v61 | 0x8000000000000000, v91, *v127, v127[1], 1.0);

          v156 = v170;
          v157 = v171;
          v158 = v172;
          v153 = v167;
          v159 = v173;
          v154 = v168;
          v155 = v169;
          v160 = v63;
          v161 = v65;
          v163 = v166;
          v162 = v165;
          sub_100005464(&v153);
        }
      }

      else
      {
      }
    }
  }

  return sub_100005500(v174);
}

uint64_t sub_100032448(void *a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v111 = a3;
  v112 = a4;
  v6 = sub_10004166C();
  v110.n128_u64[0] = *(v6 - 8);
  v7 = *(v110.n128_u64[0] + 64);
  __chkstk_darwin(v6);
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = &type metadata for GradientTranscriptBackground;
  v136 = &off_100056488;
  v10 = swift_allocObject();
  v134[0] = v10;
  v11 = v112;
  *(v10 + 16) = v111;
  *(v10 + 32) = v11;
  v12 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_logger;
  sub_10000BA08(v134, &v146);
  v13 = a1;
  v14 = sub_10004164C();
  v15 = sub_100041ACC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v112.n128_u64[0] = a2;
    v107 = v17;
    *&v139 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_10000B1E4(0xD000000000000035, 0x80000001000478B0, &v139);
    *(v16 + 12) = 2080;
    v18 = sub_10000BA6C(&v146, *(&v147 + 1));
    v19 = v18[1];
    v109 = *v18;
    v105 = v19;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v20 = swift_allocObject();
    v111.n128_u64[0] = v12;
    v21 = v20;
    *(v20 + 16) = xmmword_100044360;
    v22 = sub_1000229F4(v109);
    v106 = v15;
    v23 = v22;
    v108 = v6;
    v25 = v24;
    v21[7] = &type metadata for String;
    v26 = sub_10000CBA4();
    v109.n128_u64[0] = v9;
    v27 = v26;
    v21[8] = v26;
    v21[4] = v23;
    v21[5] = v25;
    v28 = sub_1000229F4(v105);
    v21[12] = &type metadata for String;
    v21[13] = v27;
    v21[9] = v28;
    v21[10] = v29;
    v30 = sub_10004181C();
    v32 = v31;
    sub_100005500(&v146);
    v33 = sub_10000B1E4(v30, v32, &v139);

    *(v16 + 14) = v33;
    *(v16 + 22) = 2080;
    v34 = v13;
    v35 = [v34 description];
    v36 = sub_1000417FC();
    v38 = v37;

    v12 = v111.n128_u64[0];
    v39 = v36;
    v9 = v109.n128_u64[0];
    v40 = sub_10000B1E4(v39, v38, &v139);
    v6 = v108;

    *(v16 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v14, v106, "%s for %s parentView: %s", v16, 0x20u);
    swift_arrayDestroy();
    a2 = v112.n128_u64[0];
  }

  else
  {

    sub_100005500(&v146);
  }

  [v13 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = sub_10000BA6C(v134, v135);
  v50 = sub_10002F2A4(a2, *v49, v49[1]);
  if (v50)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_17;
    }

    v52 = Strong;
    v53 = sub_10000BA6C(v134, v135);
    sub_10002EE00(v52, v137, *v53, v53[1]);

    v143 = v137[4];
    v144 = v137[5];
    v145[0] = v138[0];
    *(v145 + 14) = *(v138 + 14);
    v139 = v137[0];
    v140 = v137[1];
    v141 = v137[2];
    v142 = v137[3];
    if (sub_100037204(&v139) == 1)
    {
LABEL_17:
      result = sub_100041DCC();
      __break(1u);
      return result;
    }

    v112.n128_u64[0] = v13;
    v131 = v143;
    v132 = v144;
    v133 = *&v145[0];
    v127 = v139;
    v128 = v140;
    v129 = v141;
    v130 = v142;
    v125 = DWORD2(v145[1]);
    v126 = WORD6(v145[1]);
    (*(v110.n128_u64[0] + 16))(v9, a2 + v12, v6);
    v150 = v131;
    v151 = v132;
    v152 = v133;
    v146 = v127;
    v147 = v128;
    v148 = v129;
    v149 = v130;
    v153 = v46;
    v154 = v48;
    v156 = v126;
    v155 = v125;
    v54 = objc_allocWithZone(type metadata accessor for PlaceholderView());
    sub_100005408(&v146, &v114);
    v55 = sub_100005148(v9, &v146);
    sub_100005464(&v146);
    v56 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_pkDeviceOrientation);
    v57 = *&v55[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation];
    *&v55[OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation] = v56;
    if (v57 != v56)
    {
      sub_100003CD4();
    }

    v58 = v55;
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = [objc_opt_self() blackColor];
    [v58 setBackgroundColor:v59];

    v60 = sub_10000BA6C(v134, v135);
    v61 = v60[1];
    v110 = *v60;
    v111 = v61;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_100044360;
    v63 = sub_1000229F4(v110);
    v65 = v64;
    *(v62 + 56) = &type metadata for String;
    v66 = sub_10000CBA4();
    *(v62 + 64) = v66;
    *(v62 + 32) = v63;
    *(v62 + 40) = v65;
    v67 = sub_1000229F4(v111);
    *(v62 + 96) = &type metadata for String;
    *(v62 + 104) = v66;
    *(v62 + 72) = v67;
    *(v62 + 80) = v68;
    v69 = sub_10004181C();
    v71 = v70;
    v72 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v73 = v58;
    v74 = *(a2 + v72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = *(a2 + v72);
    *(a2 + v72) = 0x8000000000000000;
    sub_10002DE5C(v73, v69, v71, isUniquelyReferenced_nonNull_native);

    *(a2 + v72) = v113;
    swift_endAccess();

    v118 = v131;
    v119 = v132;
    v120 = v133;
    v114 = v127;
    v115 = v128;
    v116 = v129;
    v117 = v130;
    v121 = v46;
    v122 = v48;
    v124 = v126;
    v123 = v125;
    sub_100005464(&v114);
    v13 = v112.n128_u64[0];
  }

  v76 = sub_10000BA6C(v134, v135);
  v77 = sub_10002F2A4(a2, *v76, v76[1]);
  if (v77)
  {
    v78 = v77;
    [v77 setFrame:{v42, v44, v46, v48}];
    sub_10000BA08(v134, &v114);
    v79 = v78;
    v80 = sub_10004164C();
    v81 = sub_100041ACC();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v111.n128_u64[0] = swift_slowAlloc();
      *&v127 = v111.n128_u64[0];
      *v82 = 136315394;
      v83 = sub_10000BA6C(&v114, *(&v115 + 1));
      v84 = v83[1];
      v112 = *v83;
      v109 = v84;
      sub_1000054B8(&unk_10005D9B0, &unk_100044760);
      v85 = swift_allocObject();
      v110.n128_u32[0] = v81;
      v86 = v85;
      *(v85 + 16) = xmmword_100044360;
      v87 = sub_1000229F4(v112);
      v112.n128_u64[0] = a2;
      v89 = v88;
      v86[7] = &type metadata for String;
      v90 = sub_10000CBA4();
      v86[8] = v90;
      v86[4] = v87;
      v86[5] = v89;
      v91 = sub_1000229F4(v109);
      v86[12] = &type metadata for String;
      v86[13] = v90;
      v86[9] = v91;
      v86[10] = v92;
      v93 = sub_10004181C();
      v95 = v94;
      sub_100005500(&v114);
      v96 = sub_10000B1E4(v93, v95, &v127);

      *(v82 + 4) = v96;
      *(v82 + 12) = 2080;
      v97 = v79;
      v98 = [v97 description];
      v99 = sub_1000417FC();
      v101 = v100;

      v102 = sub_10000B1E4(v99, v101, &v127);
      a2 = v112.n128_u64[0];

      *(v82 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v80, v110.n128_u8[0], "getting placeholder for %s placeholder: %s", v82, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100005500(&v114);
    }

    [v13 addSubview:v79];
    sub_100021C58(v79);
    v103 = sub_10000BA6C(v134, v135);
    sub_100031820(a2, *v103, v103[1], -1.0);
  }

  return sub_100005500(v134);
}

uint64_t sub_100032E24(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_100032E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&unk_10005F1E0, &unk_100045440);
    v3 = sub_100041E0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100037A80(v4, &v13, &qword_10005ED60, &unk_100045270);
      v5 = v13;
      v6 = v14;
      result = sub_10002C494(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000E988(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100032FA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&qword_10005F1D8, &qword_100045438);
    v3 = sub_100041E0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10002C494(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1000330A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&qword_10005F1D0, &qword_100045430);
    v3 = sub_100041E0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10002C494(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1000331AC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000331F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&unk_10005F340, &unk_1000454F0);
    v3 = sub_100041E0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100037A80(v4, &v11, &qword_10005DE78, &qword_100044638);
      v5 = v11;
      result = sub_10002C5D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000E988(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100033340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054B8(&unk_10005D9C0, &unk_1000444A0);
    v3 = sub_100041E0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100037A80(v4, v13, &qword_10005F328, &qword_1000454D8);
      result = sub_10002C594(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000E988(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1000334A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1000054B8(a2, a3);
    v9 = sub_100041E0C();
    v10 = a1 + 32;

    while (1)
    {
      sub_100037A80(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_10002C68C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10000E988(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

uint64_t sub_1000335B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100033608(void *a1, uint64_t a2, __n128 a3, __n128 a4, double a5)
{
  v82[3] = &type metadata for GradientTranscriptBackground;
  v82[4] = &off_100056488;
  v8 = swift_allocObject();
  v82[0] = v8;
  v8[1] = a3;
  v8[2] = a4;
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100044360;
  v10 = sub_1000229F4(a3);
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000CBA4();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = sub_1000229F4(a4);
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  sub_10004181C();
  *v16.i64 = sub_10002566C();
  v73 = v16;
  *v76 = v17;
  sub_10000BA08(v82, v81);
  v18 = sub_10004164C();
  v19 = sub_100041ACC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v80[0].i64[0] = v21;
    *v20 = 136315394;
    v22 = sub_10000BA6C(v81, v81[3]);
    v68 = *v22;
    *v70 = v22[1];
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100044360;
    v24 = sub_1000229F4(v68);
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v13;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    v26 = sub_1000229F4(*v70);
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v13;
    *(v23 + 72) = v26;
    *(v23 + 80) = v27;
    v28 = sub_10004181C();
    v30 = v29;
    sub_100005500(v81);
    v31 = sub_10000B1E4(v28, v30, v80);

    *(v20 + 4) = v31;
    *(v20 + 12) = 2048;
    *(v20 + 14) = a5;
    _os_log_impl(&_mh_execute_header, v18, v19, " updateEffect %s progress %f", v20, 0x16u);
    sub_100005500(v21);
  }

  else
  {

    sub_100005500(v81);
  }

  v32 = [a1 rootNode];
  v33 = sub_1000417CC();
  v34 = [v32 childNodeWithName:v33];

  if (v34)
  {
    v35 = [v34 behaviorGraph];
    if (v35)
    {
      v36 = v35;
      v37 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v73);
      v38 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, *v76);
      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      v77 = v36;
      v67 = a1;
      if (([qword_1000611A0 posterKitEditor] & 1) == 0)
      {
        v39 = v37;
        v71 = v38;
        v40 = *(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
        v41 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
        swift_beginAccess();
        sub_10000BA08(v40 + v41, v81);
        sub_1000054B8(&qword_10005F2C8, &qword_100045468);
        if (swift_dynamicCast())
        {
          v42 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v80[0]);
        }

        else
        {
          v42 = [objc_opt_self() clearColor];
        }

        v43 = v42;
        v74 = sub_1000226C4(a5);

        sub_10000BA08(v40 + v41, v81);
        if (swift_dynamicCast())
        {
          v44 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v80[1]);
        }

        else
        {
          v44 = [objc_opt_self() clearColor];
        }

        v45 = v44;
        v38 = sub_1000226C4(a5);

        v37 = v74;
      }

      v72 = objc_opt_self();
      [v72 begin];
      v75 = v37;
      v69 = sub_100022754();
      v46 = objc_opt_self();
      v47 = [v46 valueWithVFXFloat4:v69];
      v48 = sub_1000417CC();
      [v77 setObject:v47 forKeyedSubscript:v48];

      v49 = [v46 valueWithVFXFloat4:sub_100022754()];
      v50 = sub_1000417CC();
      [v77 setObject:v49 forKeyedSubscript:v50];

      if (!*(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) && ([qword_1000611A0 resumeFromLastPlayTime] & 1) != 0)
      {
        if (qword_10005CD78 != -1)
        {
          swift_once();
        }

        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100044360;
        v52 = sub_1000229F4(a3);
        *(v51 + 56) = &type metadata for String;
        *(v51 + 64) = v13;
        *(v51 + 32) = v52;
        *(v51 + 40) = v53;
        v54 = sub_1000229F4(a4);
        *(v51 + 96) = &type metadata for String;
        *(v51 + 104) = v13;
        *(v51 + 72) = v54;
        *(v51 + 80) = v55;
        v56 = sub_10004181C();
        sub_10003803C(v56, v57);
        v59 = v58;

        if (v59)
        {
        }

        v60 = [v67 rootNode];
        v61 = sub_1000417CC();
        v62 = [v60 childNodeWithName:v61 recursively:1];

        if (v62)
        {
          v63 = [v62 parameters];

          if (v63)
          {
            isa = sub_100041A2C().super.super.isa;
            v65 = sub_1000417CC();
            [v63 setObject:isa forKeyedSubscript:v65];
            swift_unknownObjectRelease();
          }
        }
      }

      [v72 commit];
      [v72 flush];
    }
  }

  return sub_100005500(v82);
}

BOOL sub_100033DE8(__n128 a1, __n128 a2)
{
  v18[3] = &type metadata for GradientTranscriptBackground;
  v18[4] = &off_100056488;
  v2 = swift_allocObject();
  v18[0] = v2;
  v2[1] = a1;
  v2[2] = a2;
  v3 = sub_10000BA6C(v18, &type metadata for GradientTranscriptBackground);
  v15 = *v3;
  v17 = v3[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100044360;
  v5 = sub_1000229F4(v15);
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_10000CBA4();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = sub_1000229F4(v17);
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_10004181C();
  v11.n128_f64[0] = sub_10002566C();
  LOBYTE(v4) = sub_100024F20(v11, v12);
  sub_100005500(v18);
  return (v4 & 1) == 0;
}

void sub_100033F08(void *a1, double a2)
{
  if (a2 >= 2.22044605e-16)
  {
    v6 = [a1 identifier];
    sub_1000417FC();

    v7.n128_f64[0] = sub_10002566C();
    v14 = v8;
    *osloga = v7;
    if (sub_100024F20(v7, v8))
    {
      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      v9 = [qword_1000611A0 customVariant];
      v11 = v15;
      v10 = *osloga;
      if (v9)
      {
        v12 = v9;
        sub_1000417FC();

        v10.n128_f64[0] = sub_10002566C();
      }
    }

    else
    {
      v11 = v14;
      v10 = *osloga;
    }

    v13 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);

    sub_100031820(v13, v10, v11, a2);
  }

  else
  {
    oslog = sub_10004164C();
    v4 = sub_100041ACC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = a2;
      _os_log_impl(&_mh_execute_header, oslog, v4, "didTransitionTo discard progress change %f", v5, 0xCu);
    }
  }
}

uint64_t sub_1000340D8(void *a1)
{
  v2 = [a1 identifier];
  sub_1000417FC();

  v3.n128_f64[0] = sub_10002566C();
  v14 = v4;
  v15 = v3;
  if (sub_100024F20(v3, v4))
  {
    if (qword_10005CD70 != -1)
    {
      swift_once();
    }

    v5 = [qword_1000611A0 customVariant];
    if (v5)
    {
      v6 = v5;
      sub_1000417FC();

      v7.n128_f64[0] = sub_10002566C();
      v14 = v8;
      v15 = v7;
    }
  }

  v9 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v17 = &type metadata for GradientTranscriptBackground;
  v18 = &off_100056488;
  v10 = swift_allocObject();
  *&v16 = v10;
  *(v10 + 16) = v15;
  *(v10 + 32) = v14;
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_100005500((v9 + v11));
  sub_10000B9F0(&v16, v9 + v11);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor;
  [*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) updateActions];
  [*(v1 + v12) updateLuminanceValuesForLooks];
  return sub_100031820(v9, v15, v14, 1.0);
}

uint64_t sub_10003426C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v46[0] = 0;
  v6 = [v5 loadUserInfoWithError:v46];
  swift_unknownObjectRelease();
  v7 = v46[0];
  if (v6)
  {
    sub_10004178C();
    v8 = v7;
  }

  else
  {
    v9 = v46[0];
    sub_1000413EC();

    swift_willThrow();

    sub_100033340(&_swiftEmptyArrayStorage);
  }

  *&v44 = 0x6D6F74737563;
  *(&v44 + 1) = 0xE600000000000000;
  sub_100041CFC();
  v10 = (*(a2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager) + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
  swift_beginAccess();
  v11 = sub_10000BA6C(v10, v10[3]);
  v40 = *v11;
  v41 = v11[1];
  sub_1000054B8(&unk_10005D9B0, &unk_100044760);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100044360;
  v13 = sub_1000229F4(v40);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_10000CBA4();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v17 = sub_1000229F4(v41);
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v17;
  *(v12 + 80) = v18;
  v45 = &type metadata for String;
  *&v44 = sub_10004181C();
  *(&v44 + 1) = v19;
  sub_10000E988(&v44, v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10002E2A0(v43, v46, isUniquelyReferenced_nonNull_native);
  sub_10000BAB0(v46);
  v21 = sub_10004164C();
  v22 = sub_100041ACC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v46[0] = v24;
    *v23 = 136315138;

    v25 = sub_10004179C();
    v27 = v26;

    v28 = sub_10000B1E4(v25, v27, v46);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "saving userInfo... %s", v23, 0xCu);
    sub_100005500(v24);
  }

  v29 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();

  isa = sub_10004177C().super.isa;

  v46[0] = 0;
  v31 = [v29 storeUserInfo:isa error:v46];

  if (v31)
  {
    v32 = v46[0];
  }

  else
  {
    v33 = v46[0];
    sub_1000413EC();

    swift_willThrow();
    swift_errorRetain();
    v34 = sub_10004164C();
    v35 = sub_100041ABC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error saving userInfo %@", v36, 0xCu);
      sub_100015014(v37, &qword_10005E240, &qword_100043C90);
    }

    else
    {
    }
  }

  (*(a3 + 16))();
}

void sub_1000347D8()
{
  oslog = sub_10004164C();
  v0 = sub_100041ACC();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v4 = v2;
    *v1 = 136315138;
    *(v1 + 4) = sub_10000B1E4(0xD000000000000020, 0x8000000100047AE0, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v0, "%s", v1, 0xCu);
    sub_100005500(v2);
  }
}

void sub_1000348E4(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  swift_getObjectType();
  v6 = [a1 deviceOrientation];
  v7 = 0.0;
  if (a2)
  {
    v8 = [a2 animationSettings];
    if (v8)
    {
      v9 = v8;
      [v8 duration];
      v7 = v10;
    }
  }

  sub_10000BB8C(v6, v7);
  type metadata accessor for TranscriptBackgroundView(0);
  sub_100008D48(a1, v18);
  if ((v19 & 1) == 0)
  {
    v15 = v18[1];
    v16 = v18[0];
    v11 = sub_10002BA08();
    if (v11)
    {
      v17 = v11;
      if ([*&v11[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously])
      {
        v12 = *&v17[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
        if (v12)
        {
          swift_unknownObjectWeakInit();
          v13 = *(v12 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);

          os_unfair_lock_lock(v13);
          v14 = *(v12 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
          sub_100008954(v14, v16, v15);

          os_unfair_lock_unlock(v13);

          swift_unknownObjectWeakDestroy();
        }

        else
        {

          _objc_release_x1();
        }
      }

      else
      {
      }
    }
  }
}

void *sub_100034ADC()
{
  if (qword_10005CD58 != -1)
  {
    swift_once();
  }

  v1 = qword_100061170;
  v2 = qword_10005CD70;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = [qword_1000611A0 customVariant];
  v4 = &unk_100044000;
  v5 = &unk_100044000;
  if (v3)
  {
    v65 = v0;
    v6 = v3;
    v7 = sub_1000417FC();
    v9 = v8;

    v11 = *(v1 + 2);
    v12 = &_swiftEmptyArrayStorage;
    if (v11)
    {
      v63 = v7;
      v64 = v9;
      v73[0] = &_swiftEmptyArrayStorage;
      sub_100022D8C(0, v11, 0);
      v12 = &_swiftEmptyArrayStorage;
      *&v68 = "riptBackgroundPosterDelegate";
      v66 = v1;
      v13 = (v1 + 48);
      v67 = xmmword_100044360;
      v72 = xmmword_100044400;
      do
      {
        v71.i64[0] = v11;
        v14 = *v13;
        v69 = *(v13 - 1);
        v70 = v14;
        sub_1000054B8(&unk_10005D9B0, &unk_100044760);
        v15 = swift_allocObject();
        *(v15 + 16) = v67;
        v16 = swift_allocObject();
        v16[1] = v72;
        v16[3].i64[1] = &type metadata for Float;
        v16[4].i64[0] = &protocol witness table for Float;
        v17 = v69;
        v16[2].i32[0] = v69;
        v16[6].i64[0] = &type metadata for Float;
        v16[6].i64[1] = &protocol witness table for Float;
        v16[4].i32[2] = DWORD1(v17);
        v16[7].i32[0] = DWORD2(v17);
        v16[8].i64[1] = &type metadata for Float;
        v16[9].i64[0] = &protocol witness table for Float;
        v16[11].i64[0] = &type metadata for Float;
        v16[11].i64[1] = &protocol witness table for Float;
        v16[9].i32[2] = HIDWORD(v17);
        v18 = sub_10004181C();
        v20 = v19;
        *(v15 + 56) = &type metadata for String;
        v21 = sub_10000CBA4();
        *(v15 + 64) = v21;
        *(v15 + 32) = v18;
        *(v15 + 40) = v20;
        v22 = swift_allocObject();
        v22[1] = v72;
        v22[3].i64[1] = &type metadata for Float;
        v22[4].i64[0] = &protocol witness table for Float;
        v23 = v70;
        v22[2].i32[0] = v70;
        v22[6].i64[0] = &type metadata for Float;
        v22[6].i64[1] = &protocol witness table for Float;
        v22[4].i32[2] = DWORD1(v23);
        v22[7].i32[0] = DWORD2(v23);
        v22[8].i64[1] = &type metadata for Float;
        v22[9].i64[0] = &protocol witness table for Float;
        v22[11].i64[0] = &type metadata for Float;
        v22[11].i64[1] = &protocol witness table for Float;
        v22[9].i32[2] = HIDWORD(v23);
        v24 = sub_10004181C();
        *(v15 + 96) = &type metadata for String;
        *(v15 + 104) = v21;
        *(v15 + 72) = v24;
        *(v15 + 80) = v25;
        v10 = sub_10004181C();
        v73[0] = v12;
        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          v30 = v10;
          v31 = v26;
          sub_100022D8C((v27 > 1), v28 + 1, 1);
          v26 = v31;
          v10 = v30;
          v12 = v73[0];
        }

        v12[2] = v28 + 1;
        v29 = &v12[2 * v28];
        *(v29 + 4) = v10;
        *(v29 + 5) = v26;
        v13 += 2;
        v11 = v71.i64[0] - 1;
      }

      while (v71.i64[0] != 1);
      v1 = v66;
      v7 = v63;
      v9 = v64;
    }

    v73[0] = v7;
    v73[1] = v9;
    __chkstk_darwin(v10);
    v62[2] = v73;
    v32 = sub_100024674(sub_100037A60, v62, v12);

    if ((v32 & 1) == 0)
    {

      v52 = sub_10004164C();
      v53 = sub_100041ACC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v73[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_10000B1E4(v7, v9, v73);
        _os_log_impl(&_mh_execute_header, v52, v53, "looks adding customVariant: %s", v54, 0xCu);
        sub_100005500(v55);
      }

      v4 = &unk_100044000;
      *v56.i64 = sub_10002566C();
      v71 = v57;
      v72 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1000394CC(0, *(v1 + 2) + 1, 1, v1);
      }

      v59 = *(v1 + 2);
      v58 = *(v1 + 3);
      if (v59 >= v58 >> 1)
      {
        v1 = sub_1000394CC((v58 > 1), v59 + 1, 1, v1);
      }

      *(v1 + 2) = v59 + 1;
      v60 = &v1[32 * v59];
      v61 = v71;
      v60[2] = v72;
      v60[3] = v61;
      v5 = &unk_100044000;
      v33 = *(v1 + 2);
      if (v33)
      {
        goto LABEL_15;
      }

LABEL_25:

      return &_swiftEmptyArrayStorage;
    }

    v5 = &unk_100044000;
    v4 = &unk_100044000;
  }

  v33 = *(v1 + 2);
  if (!v33)
  {
    goto LABEL_25;
  }

LABEL_15:
  v73[0] = &_swiftEmptyArrayStorage;
  sub_100041D8C();
  *&v69 = "riptBackgroundPosterDelegate";
  v66 = v1;
  v34 = (v1 + 48);
  v68 = v4[54];
  v70 = v5[64];
  do
  {
    v35 = *v34;
    v71 = v34[-1];
    v72 = v35;
    sub_1000054B8(&unk_10005D9B0, &unk_100044760);
    v36 = swift_allocObject();
    *(v36 + 16) = v68;
    v37 = swift_allocObject();
    v38 = v71;
    *(v37 + 16) = v70;
    *(v37 + 56) = &type metadata for Float;
    *(v37 + 64) = &protocol witness table for Float;
    *(v37 + 32) = v38.i32[0];
    *(v37 + 96) = &type metadata for Float;
    *(v37 + 104) = &protocol witness table for Float;
    *(v37 + 72) = v38.i32[1];
    *(v37 + 112) = v38.i32[2];
    *(v37 + 136) = &type metadata for Float;
    *(v37 + 144) = &protocol witness table for Float;
    *(v37 + 176) = &type metadata for Float;
    *(v37 + 184) = &protocol witness table for Float;
    *(v37 + 152) = v38.i32[3];
    v39 = sub_10004181C();
    v41 = v40;
    *(v36 + 56) = &type metadata for String;
    v42 = sub_10000CBA4();
    *(v36 + 64) = v42;
    *(v36 + 32) = v39;
    *(v36 + 40) = v41;
    v43 = swift_allocObject();
    *(v43 + 16) = v70;
    *(v43 + 56) = &type metadata for Float;
    *(v43 + 64) = &protocol witness table for Float;
    v44 = v72;
    *(v43 + 32) = v72.i32[0];
    *(v43 + 96) = &type metadata for Float;
    *(v43 + 104) = &protocol witness table for Float;
    *(v43 + 72) = v44.i32[1];
    *(v43 + 112) = v44.i32[2];
    *(v43 + 136) = &type metadata for Float;
    *(v43 + 144) = &protocol witness table for Float;
    *(v43 + 176) = &type metadata for Float;
    *(v43 + 184) = &protocol witness table for Float;
    *(v43 + 152) = v44.i32[3];
    v45 = sub_10004181C();
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v42;
    *(v36 + 72) = v45;
    *(v36 + 80) = v46;
    sub_10004181C();
    sub_10002806C(v71, v72);
    v47 = objc_allocWithZone(PREditingLook);
    v48 = sub_1000417CC();

    v49 = sub_1000417CC();

    [v47 initWithIdentifier:v48 displayName:v49];

    sub_100041D6C();
    v50 = *(v73[0] + 16);
    sub_100041D9C();
    sub_100041DAC();
    sub_100041D7C();
    v34 += 2;
    --v33;
  }

  while (v33);

  return v73[0];
}

double sub_100035234(void *a1)
{
  v2 = [a1 identifier];
  sub_1000417FC();

  sub_10002566C();
  v3 = a1;
  v4 = sub_10004164C();
  v5 = sub_100041ACC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    v8 = [v3 identifier];
    v9 = sub_1000417FC();
    v11 = v10;

    v12 = sub_10000B1E4(v9, v11, &v14);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 0x3FC999999999999ALL;
    _os_log_impl(&_mh_execute_header, v4, v5, "luminanceFor look: %s luminance: %f", v6, 0x16u);
    sub_100005500(v7);
  }

  return 0.2;
}

void sub_1000353C8(void *a1, void *a2)
{
  v3 = v2;
  v5 = a2;
  v6 = sub_10004164C();
  v7 = sub_100041ACC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "loading editor with look %@", v8, 0xCu);
    sub_100015014(v9, &qword_10005E240, &qword_100043C90);
  }

  v11 = *(v3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v15 = [a1 backgroundView];
  v12 = [v5 identifier];
  sub_1000417FC();

  v13.n128_f64[0] = sub_10002566C();
  sub_100032448(v15, v11, v13, v14);
}

uint64_t sub_10003555C(void *a1)
{
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = xmmword_100045360;
  *(v3 + 40) = 0x403D000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000379F8;
  *(v4 + 24) = v3;
  v9[4] = sub_100037A18;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000283DC;
  v9[3] = &unk_1000568E8;
  v5 = _Block_copy(v9);
  v6 = a1;

  v7 = [v2 imageWithActions:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100035704()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v1 + v2, v16);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v3 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v15);
  }

  else
  {
    v3 = [objc_opt_self() clearColor];
  }

  v4 = v3;
  v5 = sub_10003555C(v3);

  sub_10000BB04(0, &qword_10005F310, UIAction_ptr);
  if (qword_10005CD20 != -1)
  {
    swift_once();
  }

  v6 = qword_100061088;
  v14._countAndFlagsBits = 0x8000000100047A60;
  v17._countAndFlagsBits = 0x49505F524F4C4F43;
  v17._object = 0xEC00000052454B43;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v7.super.isa = qword_100061088;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1000413CC(v17, v19, v7, v21, v14);
  sub_1000417CC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v5;
  v9 = sub_100041C4C();
  v18._countAndFlagsBits = 0x49505F524F4C4F43;
  v18._object = 0xEC00000052454B43;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v10.super.isa = v6;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1000413CC(v18, v20, v10, v22, 0x8000000100047A60);
  v11 = sub_1000417CC();

  [v9 setAccessibilityLabel:v11];

  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100045370;
  *(v12 + 32) = v9;

  return v12;
}

uint64_t sub_100035A1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v1 + v2, v16);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v3 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v15);
  }

  else
  {
    v3 = [objc_opt_self() clearColor];
  }

  v4 = v3;
  v5 = sub_10003555C(v3);

  sub_10000BB04(0, &qword_10005F310, UIAction_ptr);
  if (qword_10005CD20 != -1)
  {
    swift_once();
  }

  v6 = qword_100061088;
  v14._countAndFlagsBits = 0x8000000100047A60;
  v17._countAndFlagsBits = 0x49505F524F4C4F43;
  v17._object = 0xEC00000052454B43;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v7.super.isa = qword_100061088;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1000413CC(v17, v19, v7, v21, v14);
  sub_1000417CC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v5;
  v9 = sub_100041C4C();
  v18._countAndFlagsBits = 0x49505F524F4C4F43;
  v18._object = 0xEC00000052454B43;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v10.super.isa = v6;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1000413CC(v18, v20, v10, v22, 0x8000000100047A60);
  v11 = sub_1000417CC();

  [v9 setAccessibilityLabel:v11];

  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100045370;
  *(v12 + 32) = v9;

  return v12;
}

void sub_100035D38(unint64_t a1)
{

  v2 = sub_10004164C();
  v3 = sub_100041ACC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_10000BB04(0, &qword_10005F2F8, UIColor_ptr);
    v6 = sub_10004199C();
    v8 = sub_10000B1E4(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "editor colors %s", v4, 0xCu);
    sub_100005500(v5);
  }

  if (a1 >> 62)
  {
    if (sub_100041DDC() != 2)
    {
      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_100041D3C();
    sub_100029800(v11, 1);

    v10 = sub_100041D3C();
    goto LABEL_9;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = *(a1 + 32);
  sub_100029800(v9, 1);

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = *(a1 + 40);
LABEL_9:
  v12 = v10;
  sub_100029800(v10, 0);
}

uint64_t sub_100035F60()
{
  sub_1000054B8(&qword_10005F300, &qword_100043C98);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100043A80;
  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  v3 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000BA08(v2 + v3, v16);
  sub_1000054B8(&qword_10005F2C8, &qword_100045468);
  if (swift_dynamicCast())
  {
    v4 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v14);
  }

  else
  {
    v4 = [objc_opt_self() clearColor];
  }

  *(v1 + 32) = v4;
  sub_10000BA08(v2 + v3, v16);
  if (swift_dynamicCast())
  {
    v5 = sub_100022854(kCGColorSpaceExtendedLinearSRGB, v15);
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  *(v1 + 40) = v5;

  v6 = sub_10004164C();
  v7 = sub_100041ACC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    sub_10000BB04(0, &qword_10005F2F8, UIColor_ptr);
    v10 = sub_10004199C();
    v12 = sub_10000B1E4(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "initialColors %s", v8, 0xCu);
    sub_100005500(v9);
  }

  return v1;
}

uint64_t sub_1000361D0()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v2, v3, "#%ld shouldAttemptSnapshotForHandle", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  return 1;
}

void sub_1000362A0()
{
  v1 = v0;
  v2 = sub_10002BA08();
  if (v2)
  {
    if (*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor])
    {
    }

    else
    {
      v3 = v2;
      if (qword_10005CD70 != -1)
      {
        swift_once();
      }

      if ([qword_1000611A0 resumeFromLastPlayTime] & 1) == 0 || (v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] & 1) != 0 || (v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime + 4])
      {
      }

      else
      {
        v12 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
        if (qword_10005CD78 != -1)
        {
          swift_once();
        }

        v13 = (*&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC33GradientBackgroundPosterExtension12ViewsManager_currentEffect);
        swift_beginAccess();
        v14 = sub_10000BA6C(v13, v13[3]);
        v29 = *v14;
        v30 = v14[1];
        sub_1000054B8(&unk_10005D9B0, &unk_100044760);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100044360;
        v16 = sub_1000229F4(v29);
        v18 = v17;
        *(v15 + 56) = &type metadata for String;
        v19 = sub_10000CBA4();
        *(v15 + 64) = v19;
        *(v15 + 32) = v16;
        *(v15 + 40) = v18;
        v20 = sub_1000229F4(v30);
        *(v15 + 96) = &type metadata for String;
        *(v15 + 104) = v19;
        *(v15 + 72) = v20;
        *(v15 + 80) = v21;
        v22 = sub_10004181C();
        v24 = 0.0;
        if (v12 >= 0.0)
        {
          v24 = v12;
        }

        sub_1000380FC(v22, v23, v24);

        v25 = v0;
        v26 = sub_10004164C();
        v27 = sub_100041ACC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134218240;
          *(v28 + 4) = *&v25[OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID];

          *(v28 + 12) = 2048;
          *(v28 + 14) = v12;
          _os_log_impl(&_mh_execute_header, v26, v27, "#%ld Updating stored snapshot time to: %f", v28, 0x16u);
        }

        else
        {
        }
      }
    }
  }

  v4 = sub_10002BA08();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];

    v7 = sub_100015870();

    if (v7 && v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] == 1)
    {
      v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
      sub_10003EAB0();
    }
  }

  v8 = v1;
  v9 = sub_10004164C();
  v10 = sub_100041ACC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v8 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v9, v10, "#%ld completedSnapshotForHandle", v11, 0xCu);
  }

  else
  {

    v9 = v8;
  }
}

void sub_100036680()
{
  v1 = v0;
  v2 = sub_10002BA08();
  if (v2)
  {
    v3 = v2;
    v4 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];

    v5 = sub_100015870();

    if (v5 && v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] == 1)
    {
      v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
      sub_10003EAB0();
    }
  }

  v6 = v1;
  swift_errorRetain();
  oslog = sub_10004164C();
  v7 = sub_100041ACC();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = *(v6 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_tagID);

    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, oslog, v7, "#%ld failedToSnapshotWithError %@", v8, 0x16u);
    sub_100015014(v9, &qword_10005E240, &qword_100043C90);

    v11 = oslog;
  }

  else
  {

    v11 = v6;
  }
}

void sub_10003683C(void *a1)
{
  v2 = [a1 type];
  v3 = sub_1000417FC();
  v5 = v4;
  if (v3 == sub_1000417FC() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_100041EEC();

  if (v8)
  {

LABEL_8:
    oslog = sub_10004164C();
    v9 = sub_100041ACC();
    if (!os_log_type_enabled(oslog, v9))
    {
LABEL_11:

      return;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "PRRenderingDelegate  hostWillDisappear";
LABEL_10:
    _os_log_impl(&_mh_execute_header, oslog, v9, v11, v10, 2u);

    goto LABEL_11;
  }

  v12 = sub_1000417FC();
  v14 = v13;
  if (v12 == sub_1000417FC() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_100041EEC();

    if ((v17 & 1) == 0)
    {
      oslog = sub_10004164C();
      v9 = sub_100041ABC();
      if (!os_log_type_enabled(oslog, v9))
      {
        goto LABEL_11;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Unhandled event type";
      goto LABEL_10;
    }
  }

  v18 = sub_10002BA08();
  if (v18)
  {
    v19 = v18;
    v20 = [a1 metadata];
    v21 = sub_10004178C();

    sub_10000A228(v21);
  }
}

void sub_100036AFC()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000B1E4(0xD000000000000019, 0x80000001000477D0, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100005500(v5);
  }

  sub_10002BACC();
  v6 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer);
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_renderer) = 0;
}

uint64_t sub_100036C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004168C();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000416DC();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v28);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004164C();
  v15 = sub_100041ACC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v10;
    v18 = a2;
    v19 = a1;
    v20 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10000B1E4(0xD000000000000024, 0x80000001000477A0, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s", v16, 0xCu);
    sub_100005500(v20);
    a1 = v19;
    a2 = v18;
    v10 = v27;
  }

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v21 = sub_100041B0C();
  v22 = swift_allocObject();
  v22[2] = v3;
  v22[3] = a1;
  v22[4] = a2;
  aBlock[4] = sub_100037048;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100056578;
  v23 = _Block_copy(aBlock);
  v24 = v3;

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100037AE8(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v23);

  (*(v29 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v28);
}

uint64_t sub_100037008()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100037054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003706C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000370F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037144()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003717C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000371DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100037204(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003721C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037254()
{
  v1 = *(v0 + 16);

  sub_100005500((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t *sub_1000372A0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1000374BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100037514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D5F4;

  return sub_10001CB5C(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_1000375DC()
{
  v1 = sub_1000414BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1000376C0()
{
  v1 = *(sub_1000414BC() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  sub_10003CB08(v3, v4, v5, v0 + v2, v7, v8);
}

id sub_100037764@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 metalCapture];
  *a2 = result;
  return result;
}

uint64_t sub_1000377B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000377EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000E9A0;

  return sub_10000DE1C(a1, v5);
}

uint64_t sub_1000378A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D5F4;

  return sub_10000DE1C(a1, v5);
}

uint64_t sub_10003797C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000379C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037A18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100037A80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100037AE8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100037B6C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    [a1 setDeviceMotionEventsRequested:1];
    [a1 setSupportedMotionEffectsMode:2];
    v4 = "setPreferredDeviceMotionUpdateInterval:";
    v5 = 0.0333;
    v6 = a1;
  }

  else
  {
    [a1 setDeviceMotionEventsRequested:0];
    v4 = "setSupportedMotionEffectsMode:";
    v6 = a1;
  }

  return [v6 v4];
}

uint64_t sub_100037C0C()
{
  v0 = type metadata accessor for EffectDataManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger;
  v5 = sub_10004166C();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_1000611B0 = v3;
  return result;
}

uint64_t sub_100037C90(void *a1)
{
  v3 = sub_1000054B8(&qword_10005F530, &qword_100045608);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BA6C(a1, a1[3]);
  sub_100039E4C();
  sub_100041F5C();
  v10[15] = 0;
  sub_100041E8C();
  if (!v1)
  {
    v10[14] = 1;
    sub_100041EAC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100037E44()
{
  if (*v0)
  {
    result = 0x656D695479616C70;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_100037E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_100041EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D695479616C70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100041EEC();

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

uint64_t sub_100037F74(uint64_t a1)
{
  v2 = sub_100039E4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037FB0(uint64_t a1)
{
  v2 = sub_100039E4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100037FEC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_100039C70(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_10003801C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  return sub_100037C90(a1);
}

uint64_t sub_10003803C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100038794();
  v5 = (v4 + 48);
  v6 = *(v4 + 2) + 1;
  while (1)
  {
    if (!--v6)
    {
      v7 = 0;
      goto LABEL_12;
    }

    v7 = *(v5 - 2);
    v8 = *v5;
    if (v7 == a1 && *(v5 - 1) == a2)
    {
      break;
    }

    v5 += 6;
    if (sub_100041EEC())
    {
      goto LABEL_11;
    }
  }

  v7 = a1;
LABEL_11:

LABEL_12:

  return v7;
}

uint64_t sub_1000380FC(uint64_t a1, uint64_t a2, float a3)
{
  v8 = sub_100038794();
  result = sub_100039A50(v8, a1, a2);
  if (v10)
  {
    v11 = *(v8 + 2);
    v12 = v11;
    goto LABEL_7;
  }

  v12 = result;
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_41;
  }

  v14 = *(v8 + 2);

  if (v13 == v14)
  {
LABEL_5:

    v11 = *(v8 + 2);
    if (v11 < v12)
    {
LABEL_35:
      __break(1u);
    }

    else if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_7:
      v3 = v12;
      if (!__OFADD__(v11, v12 - v11))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v12 > *(v8 + 3) >> 1)
        {
          if (v11 <= v12)
          {
            v16 = v12;
          }

          else
          {
            v16 = v11;
          }

          v8 = sub_1000395D0(isUniquelyReferenced_nonNull_native, v16, 1, v8);
        }

        sub_100039AF0(v12, v11, 0);
        v3 = *(v8 + 2);
        v12 = *(v8 + 3);
        v4 = v3 + 1;

        if (v3 < v12 >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      v8 = sub_1000395D0((v12 > 1), v4, 1, v8);
LABEL_15:
      *(v8 + 2) = v4;
      v17 = &v8[24 * v3];
      *(v17 + 4) = a1;
      *(v17 + 5) = a2;
      *(v17 + 12) = a3;
      sub_1000383A0();
    }

    __break(1u);
    goto LABEL_37;
  }

  v18 = 24 * v12;
  while (1)
  {
    if (v13 >= v14)
    {
      __break(1u);
      goto LABEL_35;
    }

    v4 = *&v8[v18 + 56];
    v21 = *&v8[v18 + 64];
    if (v4 != a1 || v21 != a2)
    {
      v23 = *&v8[v18 + 56];
      v24 = *&v8[v18 + 64];
      result = sub_100041EEC();
      if ((result & 1) == 0)
      {
        break;
      }
    }

LABEL_21:
    ++v13;
    v14 = *(v8 + 2);
    v18 += 24;
    if (v13 == v14)
    {
      goto LABEL_5;
    }
  }

  if (v13 == v12)
  {
LABEL_20:
    ++v12;
    goto LABEL_21;
  }

  if (v12 < v14)
  {
    v3 = 24 * v12;
    v25 = &v8[24 * v12 + 32];
    v26 = *(v25 + 8);
    v31 = *v25;
    v27 = *(v25 + 16);
    v28 = *&v8[v18 + 72];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100039884(v8);
    }

    v29 = &v8[v3];
    v30 = *&v8[v3 + 40];
    *(v29 + 4) = v4;
    *(v29 + 5) = v21;
    *(v29 + 12) = v28;

    if (v13 >= *(v8 + 2))
    {
      goto LABEL_40;
    }

    v19 = &v8[v18];
    v20 = *&v8[v18 + 64];
    *(v19 + 7) = v31;
    *(v19 + 8) = v26;
    *(v19 + 18) = v27;

    goto LABEL_20;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1000383A0()
{
  v0 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10004133C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_10004132C();
  sub_1000054B8(&qword_10005F4C8, " v");
  sub_100039740(&qword_10005F4E0, sub_1000397B8);
  v5 = sub_10004131C();
  v7 = v6;
  v8 = v5;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v9 = qword_1000611A0;
  isa = sub_1000414EC().super.isa;
  v11 = sub_1000417CC();
  [v9 setObject:isa forKey:v11];

  return sub_100014E84(v8, v7);
}

void *sub_100038794()
{
  v0 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v2 = qword_1000611A0;
  v3 = sub_1000417CC();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_100041C9C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = sub_10004130C();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_1000412FC();
      sub_1000054B8(&qword_10005F4C8, " v");
      sub_100039740(&qword_10005F4D0, sub_1000396EC);
      sub_1000412EC();

      sub_100014E84(v9, v10);
      return *&v13[0];
    }
  }

  else
  {
    sub_100015014(v13, &qword_10005E220, &qword_100044770);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100038BA4()
{
  v1 = sub_1000054B8(&qword_10005E218, &qword_100045260);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  sub_100038794();
  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger;
  swift_beginAccess();
  sub_100014E14(v0 + v5, v4);
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_10004164C();
    v10 = sub_100041A9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_10004199C();
      v15 = v14;

      v16 = sub_10000B1E4(v13, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Effects data: %s", v11, 0xCu);
      sub_100005500(v12);
    }

    else
    {
    }

    return (*(v7 + 8))(v4, v6);
  }

  return result;
}

uint64_t sub_100038DCC()
{
  sub_100015014(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension17EffectDataManager_logger, &qword_10005E218, &qword_100045260);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EffectDataManager()
{
  result = qword_10005F3F0;
  if (!qword_10005F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038E94()
{
  sub_100013084();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

char *sub_100038F24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005F510, &qword_100045568);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100039030(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005EC30, &qword_100045570);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_10003914C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000054B8(&qword_10005F4F8, &qword_100045540);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000054B8(&qword_10005F500, &unk_100045548);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100039294(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005F518, &qword_100045578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100039398(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000054B8(&qword_10005F508, &qword_100045558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000054B8(&qword_10005EBE0, &qword_100045560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000394CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005ECF0, &unk_100045100);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000395D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054B8(&qword_10005F4F0, &qword_100045538);
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

unint64_t sub_1000396EC()
{
  result = qword_10005F4D8;
  if (!qword_10005F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F4D8);
  }

  return result;
}

uint64_t sub_100039740(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B940(&qword_10005F4C8, " v");
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000397B8()
{
  result = qword_10005F4E8;
  if (!qword_10005F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F4E8);
  }

  return result;
}

uint64_t sub_10003980C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100041DDC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_100041D4C();
}

uint64_t sub_100039898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SnapshotManager.WeakObserver();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_100041DDC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_100041DDC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100039998(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100039A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 3)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (sub_100041EEC() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_100039AF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  v14 = 24 * v12;
  v15 = &v13[24 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

__n128 sub_100039BC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100039BD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_100039C20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

float sub_100039C70(uint64_t *a1)
{
  v4 = sub_1000054B8(&qword_10005F520, &qword_100045600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  sub_10000BA6C(a1, a1[3]);
  sub_100039E4C();
  sub_100041F4C();
  if (!v1)
  {
    v14 = 0;
    sub_100041E3C();
    v13 = 1;
    sub_100041E5C();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  sub_100005500(a1);
  return v2;
}

unint64_t sub_100039E4C()
{
  result = qword_10005F528;
  if (!qword_10005F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F528);
  }

  return result;
}

unint64_t sub_100039EB4()
{
  result = qword_10005F538;
  if (!qword_10005F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F538);
  }

  return result;
}

unint64_t sub_100039F0C()
{
  result = qword_10005F540;
  if (!qword_10005F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F540);
  }

  return result;
}

unint64_t sub_100039F64()
{
  result = qword_10005F548;
  if (!qword_10005F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005F548);
  }

  return result;
}

uint64_t sub_100039FB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (*&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] && (, sub_100027674(), v7 = v6, result = , (v7 & 1) != 0))
  {
    v9 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
      v11 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

      os_unfair_lock_lock(v10);
      v12 = *(v9 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
      sub_10003FC50(v12, 1, v3, a1, a2);

      os_unfair_lock_unlock(v10);

      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = v2;
    v14 = sub_10004164C();
    v15 = sub_100041AAC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = &v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v19 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v20 = *(v18 + 5);

      v21 = sub_10000B1E4(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "#%s resume running not allowed", v16, 0xCu);
      sub_100005500(v17);
    }

    return 0;
  }

  return result;
}

void sub_10003A18C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10004166C();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger;
  sub_100005408(a1, v81);
  v10 = sub_10004164C();
  v11 = sub_100041ACC();
  sub_100005464(a1);
  v12 = os_log_type_enabled(v10, v11);
  v67 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v81[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_10000B1E4(*(a1 + 32), *(a1 + 40), v81);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "#%s vfxview update from editor %{BOOL}d", v13, 0x12u);
    sub_100005500(v14);
  }

  v15 = &v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v16 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
  v81[4] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
  v81[5] = v16;
  v82[0] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
  *(v82 + 14) = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
  v17 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
  v81[0] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
  v81[1] = v17;
  v18 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
  v81[2] = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
  v81[3] = v18;
  sub_100005408(v81, &v74);
  sub_10001A9FC(v72);
  sub_100005464(v81);
  v19 = sub_10001AB00();
  v21 = v20;
  sub_100007314(v72);
  sub_10001A9FC(v73);
  v22 = sub_10001AB00();
  v24 = v23;
  sub_100007314(v73);
  if (v19 == v22 && v21 == v24)
  {
  }

  else
  {
    v25 = sub_100041EEC();

    if ((v25 & 1) == 0)
    {
      sub_100005408(a1, &v74);
      v26 = v3;
      v27 = sub_10004164C();
      v28 = sub_100041ACC();

      sub_100005464(a1);
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v63 = v26;
        v30 = v29;
        v62 = swift_slowAlloc();
        v68 = v62;
        *v30 = 136315650;
        v59 = *(a1 + 32);
        v61 = v28;
        v31 = *(a1 + 40);
        *(v30 + 4) = sub_10000B1E4(v59, v31, &v68);
        *(v30 + 12) = 2080;
        v32 = *(v15 + 5);
        v78 = *(v15 + 4);
        v79 = v32;
        v80[0] = *(v15 + 6);
        *(v80 + 14) = *(v15 + 110);
        v33 = *(v15 + 1);
        v74 = *v15;
        v75 = v33;
        v34 = *(v15 + 3);
        v76 = *(v15 + 2);
        v77 = v34;
        v60 = v27;
        v69[0] = v76;
        sub_100005408(&v74, v70);

        v83._countAndFlagsBits = 8250;
        v83._object = 0xE200000000000000;
        sub_1000418CC(v83);
        sub_1000418CC(v75);
        v84._countAndFlagsBits = 32;
        v84._object = 0xE100000000000000;
        sub_1000418CC(v84);
        v85._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v85);

        v86._countAndFlagsBits = 120;
        v86._object = 0xE100000000000000;
        sub_1000418CC(v86);
        v87._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v87);

        sub_100005464(&v74);
        v35 = sub_10000B1E4(*&v69[0], *(&v69[0] + 1), &v68);

        *(v30 + 14) = v35;
        *(v30 + 22) = 2080;
        *&v70[0] = v59;
        *(&v70[0] + 1) = v31;

        v88._countAndFlagsBits = 8250;
        v88._object = 0xE200000000000000;
        sub_1000418CC(v88);
        sub_1000418CC(*(a1 + 16));
        v89._countAndFlagsBits = 32;
        v89._object = 0xE100000000000000;
        sub_1000418CC(v89);
        v36 = *(a1 + 104);
        v37 = *(a1 + 112);
        v90._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v90);

        v91._countAndFlagsBits = 120;
        v91._object = 0xE100000000000000;
        sub_1000418CC(v91);
        v92._countAndFlagsBits = sub_100041A1C();
        sub_1000418CC(v92);

        v38 = sub_10000B1E4(*&v70[0], *(&v70[0] + 1), &v68);

        *(v30 + 24) = v38;
        v39 = v60;
        _os_log_impl(&_mh_execute_header, v60, v61, "#%s vfxview update old '%s' -> '%s'", v30, 0x20u);
        swift_arrayDestroy();

        v26 = v63;
      }

      else
      {
      }

      v40 = *(v15 + 5);
      v70[4] = *(v15 + 4);
      v70[5] = v40;
      v71[0] = *(v15 + 6);
      *(v71 + 14) = *(v15 + 110);
      v41 = *(v15 + 1);
      v70[0] = *v15;
      v70[1] = v41;
      v42 = *(v15 + 3);
      v70[2] = *(v15 + 2);
      v70[3] = v42;
      v43 = *a1;
      v44 = *(a1 + 16);
      v45 = *(a1 + 48);
      *(v15 + 2) = *(a1 + 32);
      *(v15 + 3) = v45;
      *v15 = v43;
      *(v15 + 1) = v44;
      v46 = *(a1 + 64);
      v47 = *(a1 + 80);
      v48 = *(a1 + 96);
      *(v15 + 110) = *(a1 + 110);
      *(v15 + 5) = v47;
      *(v15 + 6) = v48;
      *(v15 + 4) = v46;
      sub_100005464(v70);
      v49 = *(v15 + 5);
      v78 = *(v15 + 4);
      v79 = v49;
      v80[0] = *(v15 + 6);
      *(v80 + 14) = *(v15 + 110);
      v50 = *(v15 + 1);
      v74 = *v15;
      v75 = v50;
      v51 = *(v15 + 3);
      v76 = *(v15 + 2);
      v77 = v51;
      v52 = v66;
      (*(v64 + 16))(v66, &v3[v9], v65);
      v53 = type metadata accessor for SnapshotWriter();
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      sub_100005408(a1, v69);
      sub_100005408(&v74, v69);
      v56 = sub_100015684(&v74, v52);
      v57 = *&v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];
      *&v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = v56;

      if (v67)
      {
        v58 = *&v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock];
        os_unfair_lock_lock(v58);
        v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
        sub_10003E9E0();
        v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
        os_unfair_lock_unlock(v58);
      }
    }
  }
}

void sub_10003A818()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10003A86C();
  }
}

uint64_t sub_10003A86C()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041AAC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s worldRendered", v4, 0xCu);
    sub_100005500(v5);
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10003C054(sub_100040D9C, v9);
}

uint64_t sub_10003AAFC()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10003AB58()
{
  v1 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_logger;
  v2 = sub_10004166C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10003AC2C()
{
  result = sub_10004166C();
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

uint64_t sub_10003ACFC(void *a1)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_100041AFC();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041BFC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_1000416DC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  v33 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v1 + v10) = [objc_allocWithZone(VFXView) init];
  v34 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  v36 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  v37 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v11 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  v31 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v12 = swift_allocObject();
  *(v12 + 16) = swift_slowAlloc();
  *(v12 + 24) = 0;
  *(v12 + 32) = &_swiftEmptyArrayStorage;
  *(v1 + v11) = v12;
  v32 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v13 = v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v13 = 0;
  v13[4] = 1;
  v30 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v29 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  sub_1000416BC();
  v41 = &_swiftEmptyArrayStorage;
  sub_100041268(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v38 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
  v14 = sub_100041C0C();
  v15 = v29;
  *(v1 + v29) = v14;
  v16 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v17 = swift_slowAlloc();

  *(v2 + v16) = v17;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v18 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v18 = 0;
  v18[1] = 0;

  v19 = *(v2 + v34);

  v20 = *(v2 + v36);

  v21 = *(v2 + v37);

  v22 = *(v2 + v31);

  v23 = *(v2 + v32);

  v24 = v18[1];
  sub_100016A34(*v18);
  type metadata accessor for TranscriptBackgroundView(0);
  v25 = *((swift_isaMask & *v2) + 0x30);
  v26 = *((swift_isaMask & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10003B1C4()
{
  v1 = sub_10004166C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager;
  v7 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager];
  if (v7)
  {
    if (!*(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);

    sub_100009678();

    if (!*(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(v7 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);

    sub_100014310();

    v10 = *&v0[v6];
    if (v10)
    {
      *(v10 + 40) = 0;
      swift_unknownObjectWeakAssign();
      v11 = *&v0[v6];
    }
  }

  *&v0[v6] = 0;

  if (qword_10005CD30 != -1)
  {
    swift_once();
  }

  sub_100012300();
  v12 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
  *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;

  if (__OFSUB__(qword_1000611B8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  --qword_1000611B8;
  (*(v2 + 16))(v5, &v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger], v1);
  v13 = v0;
  v14 = sub_10004164C();
  v15 = sub_100041A9C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v1;
    v27 = v17;
    *v16 = 136315650;
    v18 = &v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v19 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v20 = *&v13[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v21 = sub_10000B1E4(v19, v20, &v27);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = *v18;
    v23 = v18[1];

    v24 = sub_10000B1E4(v22, v23, &v27);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2048;
    *(v16 + 24) = qword_1000611B8;
    _os_log_impl(&_mh_execute_header, v14, v15, "#%s deinit %s alive count %ld", v16, 0x20u);
    swift_arrayDestroy();

    (*(v2 + 8))(v5, v26);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v25 = type metadata accessor for TranscriptBackgroundView(0);
  v28.receiver = v13;
  v28.super_class = v25;
  objc_msgSendSuper2(&v28, "dealloc");
}

id sub_10003B6E0()
{
  v1 = v0;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s didMoveToWindow", v4, 0xCu);
    sub_100005500(v5);
  }

  v9 = type metadata accessor for TranscriptBackgroundView(0);
  v12.receiver = v1;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "didMoveToWindow");
}

void sub_10003B870()
{
  v59.receiver = v0;
  v59.super_class = type metadata accessor for TranscriptBackgroundView(0);
  objc_msgSendSuper2(&v59, "layoutSubviews");
  [v0 bounds];
  if (v1 == 0.0 || ([v0 bounds], CGRectGetHeight(v67) == 0.0))
  {
    v2 = v0;
    v3 = sub_10004164C();
    v4 = sub_100041ACC();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v8 = sub_10000B1E4(v6, v7, &v52);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      [v2 bounds];
      *&v60 = v9;
      *(&v60 + 1) = v10;
      *&v61 = v11;
      *(&v61 + 1) = v12;
      type metadata accessor for CGRect(0);
      v13 = sub_10004186C();
      v15 = sub_10000B1E4(v13, v14, &v52);

      *(v5 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "#%s rejecting layout size 0 layoutSubviews %s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v16 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v0 bounds];
    [v16 setFrame:?];
    v17 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView;
    v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView] = 1;
    if (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] != 1)
    {
      goto LABEL_11;
    }

    v18 = [v16 world];
    if (v18)
    {
    }

    else
    {
      sub_10003BD00();
      sub_10003E33C();
    }

    if (v0[v17] != 1)
    {
      *&v66[14] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v39 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      v40 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v40;
      v41 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      *v66 = v39;
      v42 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v42;
      v64 = v41;
      v43 = v66[29];
      v37 = v66[28];
      v36 = *&v66[24];
      v23 = *(&v39 + 1);
      v25 = *&v66[16];
      v35 = DWORD1(v39);
      v34 = BYTE2(v39);
      v33 = BYTE1(v39);
      v32 = v39;
      v28 = *(&v62 + 1);
      v51 = v42;
      v29 = v41;
      v49 = BYTE8(v41);
      v50 = BYTE8(v42);
      v47 = BYTE9(v41);
      v30 = *(&v65 + 1);
      v27 = *(&v40 + 1);
      v48 = v62;
      v26 = *(&v60 + 1);
      v45 = v65;
      v46 = v40;
      v44 = v60;
      sub_100005408(&v60, &v52);
      v38 = v43;
    }

    else
    {
LABEL_11:
      v19 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80];
      v64 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 64];
      v65 = v19;
      *v66 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 96];
      *&v66[14] = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 110];
      v20 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 16];
      v60 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v61 = v20;
      v21 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
      v62 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v63 = v21;
      sub_100005408(&v60, &v52);
      [v0 bounds];
      v23 = v22;
      v25 = v24;
      v26 = *(&v60 + 1);
      v27 = *(&v61 + 1);
      v46 = v61;
      v28 = *(&v62 + 1);
      v48 = v62;
      v51 = v63;
      v29 = v64;
      v49 = BYTE8(v64);
      v50 = BYTE8(v63);
      v47 = BYTE9(v64);
      v30 = *(&v65 + 1);
      v44 = v60;
      v45 = v65;
      v31 = v64;

      sub_100005464(&v60);
      v32 = v66[0];
      v33 = v66[1];
      v34 = v66[2];
      v35 = *&v66[4];
      v36 = *&v66[24];
      v37 = v66[28];
      v38 = v66[29];
    }

    *&v52 = v44;
    *(&v52 + 1) = v26;
    *&v53 = v46;
    *(&v53 + 1) = v27;
    *&v54 = v48;
    *(&v54 + 1) = v28;
    *&v55 = v51;
    BYTE8(v55) = v50;
    *&v56 = v29;
    BYTE8(v56) = v49;
    BYTE9(v56) = v47;
    *&v57 = v45;
    *(&v57 + 1) = v30;
    v58[0] = v32;
    v58[1] = v33;
    v58[2] = v34;
    *&v58[4] = v35;
    *&v58[8] = v23;
    *&v58[16] = v25;
    *&v58[24] = v36;
    v58[28] = v37;
    v58[29] = v38;
    v62 = v54;
    v63 = v55;
    v60 = v52;
    v61 = v53;
    *&v66[14] = *&v58[14];
    v65 = v57;
    *v66 = *v58;
    v64 = v56;
    sub_10003A18C(&v60, 0);
    sub_100005464(&v52);
  }
}

void sub_10003BD00()
{
  v1 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];

    v3 = v0;
    v4 = sub_10004164C();
    v5 = sub_100041AAC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      v8 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v9 = *&v3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v10 = sub_10000B1E4(v8, v9, &v17);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "#%s provideEmptyMaskIfNeeded", v6, 0xCu);
      sub_100005500(v7);
    }

    [v3 frame];
    v12 = v11;
    v14 = v13;
    sub_100010CE0();
    v15 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_asset);
    v16 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension11MaskManager_provider);
    sub_100010130(0, v12, v14);
    swift_unknownObjectRelease();
    [v15 setTexture:*(v16 + 24)];
  }
}

uint64_t sub_10003BF30()
{
  result = sub_10004166C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10003C054(uint64_t result, NSObject *a2)
{
  v4 = result;
  if (v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 125])
  {
    v5 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    if (!v5)
    {
      return result;
    }

    v6 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
    v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

    os_unfair_lock_lock(v6);
    v8 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world);
    sub_10003C19C(v8, v2, v4, a2);

    os_unfair_lock_unlock(v6);
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];
    v10 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = a2;

    sub_100021184(v4);
    sub_100015AFC(v10, sub_1000400D4, v11);
  }
}

void sub_10003C19C(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  v7 = sub_10004166C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100016C10();
  if ((v12 & 0x100000000) != 0)
  {
    v26 = a2;
    v59 = sub_10004164C();
    v27 = sub_100041ABC();

    if (os_log_type_enabled(v59, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v61[0] = v29;
      *v28 = 136315138;
      v30 = &v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v31 = *&v26[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v32 = *(v30 + 5);

      v33 = sub_10000B1E4(v31, v32, v61);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v59, v27, "#%s Could not get current internal time for Gradient snapshot", v28, 0xCu);
      sub_100005500(v29);
    }

    else
    {
      v55 = v59;
    }
  }

  else
  {
    v13 = *&v12;
    v14 = &unk_100061000;
    v15 = a2;
    v16 = sub_10004164C();
    v17 = sub_100041A9C();

    v18 = os_log_type_enabled(v16, v17);
    if (v13 <= 10000.0)
    {
      if (v18)
      {
        v34 = swift_slowAlloc();
        v59 = a4;
        v35 = v34;
        v36 = swift_slowAlloc();
        v57 = v7;
        v37 = v36;
        *&v61[0] = v36;
        *v35 = 136315394;
        v58 = a3;
        v38 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v39 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v40 = sub_10000B1E4(v38, v39, v61);
        a3 = v58;

        *(v35 + 4) = v40;
        v14 = &unk_100061000;
        *(v35 + 12) = 2048;
        *(v35 + 14) = v13;
        _os_log_impl(&_mh_execute_header, v16, v17, "#%s Snapshot internal time: %f", v35, 0x16u);
        sub_100005500(v37);
        v7 = v57;

        a4 = v59;
      }
    }

    else
    {
      if (v18)
      {
        v19 = swift_slowAlloc();
        v59 = a4;
        v20 = v19;
        v21 = swift_slowAlloc();
        v58 = a3;
        v22 = v21;
        *&v61[0] = v21;
        *v20 = 136315394;
        v57 = v7;
        v23 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
        v24 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

        v25 = sub_10000B1E4(v23, v24, v61);
        v14 = &unk_100061000;

        *(v20 + 4) = v25;
        v7 = v57;
        *(v20 + 12) = 2048;
        *(v20 + 14) = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "#%s Restarting effect internal time next time: %f", v20, 0x16u);
        sub_100005500(v22);
        a3 = v58;

        a4 = v59;
      }

      v13 = 0.0;
    }

    v41 = &v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    *(v41 + 30) = v13;
    v42 = *v41;
    v43 = *(v41 + 1);
    v44 = *(v41 + 3);
    v61[2] = *(v41 + 2);
    v61[3] = v44;
    v61[0] = v42;
    v61[1] = v43;
    v45 = *(v41 + 4);
    v46 = *(v41 + 5);
    v47 = *(v41 + 6);
    *(v62 + 14) = *(v41 + 110);
    v61[5] = v46;
    v62[0] = v47;
    v61[4] = v45;
    (*(v8 + 16))(v11, &v15[v14[56]], v7);
    v48 = type metadata accessor for SnapshotWriter();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    sub_100005408(v61, &v60);
    v51 = sub_100015684(v61, v11);
    v52 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];
    *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = v51;

    v53 = *&v15[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    v54 = swift_allocObject();
    *(v54 + 16) = a3;
    *(v54 + 24) = a4;
    *(v54 + 32) = v13;
    sub_100021184(a3);
    sub_100015AFC(v53, sub_100040170, v54);
  }
}

uint64_t sub_10003C6E0()
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  result = [qword_1000611A0 baseFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 80);
  }

  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 30;
        if (result < 30)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003C794()
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  result = [qword_1000611A0 scrollingFPS];
  if (result <= 0)
  {
    result = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 88);
  }

  v2 = *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);
    if (v3)
    {
      if ((*(v3 + 16) & 1) == 0)
      {
        v4 = *(v3 + 24);
        v5 = 15;
        if (result < 15)
        {
          v5 = result;
        }

        if (v4 == 2)
        {
          return v5;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_10003C848()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling;
  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) == 1)
  {
    v3 = sub_10003C794();
  }

  else
  {
    v3 = sub_10003C6E0();
  }

  if (*(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 124))
  {
    v4 = v3 / 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(v0 + v2);
  v6 = sub_10004164C();
  v7 = sub_100041ACC();
  if (os_log_type_enabled(v6, v7))
  {
    if (v5)
    {
      v8 = "Scrolling - Reducing FPS to %ld";
    }

    else
    {
      v8 = "Using base FPS: %ld";
    }

    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, v8, v9, 0xCu);
  }

  v10 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView);

  return [v10 setPreferredFramesPerSecond:v4];
}

id sub_10003C97C(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v1 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  [v1 addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 bounds];
  [v5 setFrame:?];
  [v5 setUserInteractionEnabled:0];
  [v5 setAntialiasingMode:0];
  [v5 setDelegate:v1];
  if (*(a1 + 24))
  {
    [v5 setWantsExtendedDynamicRange:1];
  }

  if (*(a1 + 16))
  {
    [v5 setColorSpace:?];
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    [v5 setPixelFormat:*a1];
  }

  return sub_10003C848();
}

void sub_10003CB08(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(id), uint64_t a6)
{
  v143[1] = a6;
  v144 = a5;
  v165 = a4;
  v164 = a2;
  v160 = sub_10004163C();
  v159 = *(v160 - 8);
  v8 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10004168C();
  v150 = *(v151 - 8);
  v10 = *(v150 + 64);
  __chkstk_darwin(v151);
  v148 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1000416DC();
  v147 = *(v149 - 8);
  v12 = *(v147 + 64);
  __chkstk_darwin(v149);
  v146 = v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1000414BC();
  v166 = *(v161 - 8);
  v14 = *(v166 + 64);
  v15 = __chkstk_darwin(v161);
  v152 = v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v143 - v17;
  v167 = sub_10004155C();
  v19 = *(v167 - 1);
  v20 = *(v19 + 64);
  __chkstk_darwin(v167);
  v22 = v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004166C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v153 = v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v157 = v143 - v29;
  v30 = __chkstk_darwin(v28);
  v145 = v143 - v31;
  __chkstk_darwin(v30);
  v33 = v143 - v32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v168 = a3;
  v162 = v23;
  if (Strong)
  {
    v35 = Strong;
    (*(v24 + 16))(v33, Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger, v23);

    v36 = v24;
    v37 = sub_10004164C();
    v38 = sub_100041ACC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = a1;
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v39 = 136315138;
      *(v39 + 4) = sub_10000B1E4(v164, v168, aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "#%s------- task loading starting ..", v39, 0xCu);
      sub_100005500(v41);
      a1 = v40;
      v23 = v162;
    }

    (*(v36 + 8))(v33, v23);
    v24 = v36;
  }

  sub_10004154C();
  sub_10004153C();
  v43 = v42;
  v45 = *(v19 + 8);
  v44 = v19 + 8;
  v154 = v45;
  v45(v22, v167);
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  v46 = [qword_1000611A0 allowsFuture];
  v163 = v24;
  v155 = v44;
  if (v46)
  {
    sub_1000054B8(&qword_10005F858, qword_100045870);
    inited = swift_initStackObject();
    v48 = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 32) = VFXWorldLoaderAllowLoadingEffectFromTheFuture;
    *(inited + 16) = xmmword_1000445B0;
    *(inited + 64) = &type metadata for Bool;
    *(inited + 40) = 1;
    v49 = v48;
    v50 = sub_10003347C(inited);
    swift_setDeallocating();
    sub_100041200(inited + 32);
  }

  else
  {
    v50 = sub_10003347C(&_swiftEmptyArrayStorage);
  }

  sub_10000BB04(0, &unk_10005F848, VFXWorld_ptr);
  (*(v166 + 16))(v18, v165, v161);
  v51 = sub_10003E0EC(v18, v50);
  sub_10004154C();
  sub_10004153C();
  v53 = v52;
  v154(v22, v167);
  swift_beginAccess();
  v54 = swift_unknownObjectWeakLoadStrong();
  if (v54)
  {
    v55 = v54;
    v156 = a1;
    v56 = (v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration);
    if (*(v54 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 73))
    {
      v57 = [v51 physicsWorld];
      [v57 setUseFixedTimeStep:1];
    }

    v153 = v56;
    v165 = v51;
    v144(v51);
    v58 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger;
    v59 = v168;

    v60 = v55;
    v61 = sub_10004164C();
    v62 = sub_100041ACC();

    v63 = os_log_type_enabled(v61, v62);
    v166 = v58;
    v161 = v60;
    v152 = v55;
    if (v63)
    {
      v64 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v64 = 136315394;
      *(v64 + 4) = sub_10000B1E4(v164, v59, aBlock);
      *(v64 + 12) = 2080;
      [*&v60[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] bounds];
      v65 = NSStringFromRect(v171);
      v66 = sub_1000417FC();
      v68 = v67;

      v69 = sub_10000B1E4(v66, v68, aBlock);

      *(v64 + 14) = v69;
      v60 = v161;
      _os_log_impl(&_mh_execute_header, v61, v62, "#%s Prepare with size: %s", v64, 0x16u);
      swift_arrayDestroy();

      v55 = v152;
    }

    v70 = v163;
    v71 = v145;
    [v165 prepareForRenderer:*&v60[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] progressHandler:0];
    sub_10004154C();
    sub_10004153C();
    v73 = v72;
    v154(v22, v167);

    v74 = sub_10004164C();
    v75 = sub_100041AAC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v76 = 136315394;
      *(v76 + 4) = sub_10000B1E4(v164, v59, aBlock);
      *(v76 + 12) = 2048;
      *(v76 + 14) = v53 - v43;
      _os_log_impl(&_mh_execute_header, v74, v75, "#%s Reading time: %fs", v76, 0x16u);
      sub_100005500(v77);
    }

    v78 = sub_10004164C();
    v79 = sub_100041AAC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v80 = 136315394;
      *(v80 + 4) = sub_10000B1E4(v164, v59, aBlock);
      *(v80 + 12) = 2048;
      *(v80 + 14) = v73 - v53;
      _os_log_impl(&_mh_execute_header, v78, v79, "#%s Preparing time: %fs", v80, 0x16u);
      sub_100005500(v81);
    }

    v82 = sub_10004164C();
    v83 = sub_100041AAC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock[0] = v85;
      *v84 = 136315394;
      *(v84 + 4) = sub_10000B1E4(v164, v59, aBlock);
      *(v84 + 12) = 2048;
      *(v84 + 14) = v73 - v43;
      _os_log_impl(&_mh_execute_header, v82, v83, "#%s Total time: %fs", v84, 0x16u);
      sub_100005500(v85);
    }

    v86 = v161;
    v87 = sub_100016EE0();
    if (v87)
    {
      v88 = v87;
      v89 = *(v70 + 16);
      v89(v71, &v55[v166], v162);
      v90 = type metadata accessor for MaskManager(0);
      v91 = *(v90 + 48);
      v92 = *(v90 + 52);
      swift_allocObject();
      v93 = sub_1000104D0(v71, v88);
      v94 = *&v86[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager];
      *&v86[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = v93;
      v95 = v88;

      if (v86[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView] == 1)
      {
        sub_10003BD00();
      }

      v96 = v163;
    }

    else
    {
      v96 = v70;
      v89 = *(v70 + 16);
    }

    v167 = v89;
    v97 = v166;
    v98 = &v55[v166];
    v99 = v55;
    v100 = v162;
    v89(v71, v98, v162);
    v101 = type metadata accessor for WorldSerialAccessor(0);
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    v104 = swift_allocObject();
    v105 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock;
    v106 = v165;
    v107 = swift_slowAlloc();
    *(v104 + v105) = v107;
    *v107 = 0;
    (*(v96 + 32))(v104 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_logger, v71, v100);
    v165 = v106;
    *(v104 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world) = v106;
    v108 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;
    v109 = *&v86[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
    *&v86[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = v104;

    v110 = v86;
    v111 = v153[98];
    v167(v71, &v99[v97], v100);
    v112 = v110;
    v113 = sub_100040E94(v104, v111, 0, v112, v71);

    v114 = *&v112[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager];
    *&v112[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = v113;

    sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
    v115 = sub_100041B0C();
    v116 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000411F8;
    aBlock[5] = v116;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100028728;
    aBlock[3] = &unk_100056BC8;
    v117 = _Block_copy(aBlock);

    v118 = v146;
    sub_1000416AC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000054B8(&unk_10005D640, "B|");
    sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
    v119 = v148;
    v120 = v151;
    sub_100041CAC();
    sub_100041B1C();
    _Block_release(v117);

    (*(v150 + 8))(v119, v120);
    (*(v147 + 8))(v118, v149);
    if (*(v161 + v108))
    {
      v121 = *(v153 + 3);

      v123 = sub_100025960(v122, &v152[v166]);

      v124 = *&v112[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect];
      *&v112[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect] = v123;

      sub_10003E558();

      v125 = v163;
      v126 = v157;
      v127 = v168;
      swift_beginAccess();
      v128 = swift_unknownObjectWeakLoadStrong();
      if (v128)
      {
        v129 = v128;
        v130 = v162;
        (*(v125 + 16))(v126, v128 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_logger, v162);

        v131 = sub_10004164C();
        v132 = sub_100041ACC();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v170 = v134;
          *v133 = 136315138;
          *(v133 + 4) = sub_10000B1E4(v164, v127, &v170);
          _os_log_impl(&_mh_execute_header, v131, v132, "#%s------- task loading done", v133, 0xCu);
          sub_100005500(v134);
        }

        (*(v125 + 8))(v126, v130);
      }

      if (qword_10005CD28 != -1)
      {
        swift_once();
      }

      v135 = qword_100061090;
      sub_100041BCC();
      v136 = *(v135 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
      v137 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
      swift_beginAccess();
      v138 = v159;
      v139 = v135 + v137;
      v140 = v158;
      v141 = v160;
      (*(v159 + 16))(v158, v139, v160);
      v142 = v136;
      sub_10004161C();

      (*(v138 + 8))(v140, v141);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

id sub_10003E0EC(uint64_t a1, uint64_t a2)
{
  sub_10004144C(__stack_chk_guard);
  v5 = v4;
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_100041268(&qword_10005CFB8, type metadata accessor for VFXWorldLoaderOption);
    v6.super.isa = sub_10004177C().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v15 = 0;
  v7 = [swift_getObjCClassFromMetadata() worldWithURL:v5 options:v6.super.isa error:&v15];

  v8 = v15;
  if (v7)
  {
    v9 = sub_1000414BC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15;
    sub_1000413EC();

    swift_willThrow();
    v13 = sub_1000414BC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

void sub_10003E2C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 1;
    if (*(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView) == 1)
    {
      sub_10003E33C();
    }
  }
}

void sub_10003E33C()
{
  v1 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_lock);
    v3 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor];

    os_unfair_lock_lock(v2);
    v4 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];
    [v4 setWorld:*(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension19WorldSerialAccessor_world)];
    os_unfair_lock_unlock(v2);

    v5 = v0;
    v6 = sub_10004164C();
    v7 = sub_100041ACC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v11 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v12 = sub_10000B1E4(v10, v11, &v19);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s setting world", v8, 0xCu);
      sub_100005500(v9);
    }

    v13 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
    v14 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 48];
    v15 = v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 56];
    v16 = *(v13 + 8);
    v17 = v13[72];
    v18 = v16;
    if (v17 == 1)
    {
      [v4 setWantsExtendedDynamicRange:1];
    }

    if (v16)
    {
      [v4 setColorSpace:v18];
    }

    if ((v15 & 1) == 0)
    {
      [v4 setPixelFormat:v14];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10003E558()
{
  v0 = sub_10004168C();
  v13 = *(v0 - 8);
  v1 = *(v13 + 64);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000416DC();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v8 = sub_100041B0C();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000400AC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028728;
  aBlock[3] = &unk_100056A60;
  v10 = _Block_copy(aBlock);

  sub_1000416AC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  sub_100041CAC();
  sub_100041B1C();
  _Block_release(v10);

  (*(v13 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_10003E83C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v13 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
    v2 = *(result + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder);
    *(v2 + 24) = 1;
    swift_beginAccess();
    v3 = *(v2 + 32);
    v4 = *(v3 + 16);
    v15 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor;

    v14 = v4;
    if (v4)
    {
      v5 = 0;
      v6 = v3 + 32;
      while (v5 < *(v3 + 16))
      {
        sub_10000BA08(v6, v16);
        v8 = v17;
        v7 = v18;
        result = sub_10000BA6C(v16, v17);
        if (!*&v1[v15])
        {
          goto LABEL_10;
        }

        ++v5;
        v9 = *(v7 + 8);

        v9(v10, v8, v7);

        result = sub_100005500(v16);
        v6 += 40;
        if (v14 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }

    else
    {
LABEL_7:

      v11 = *&v1[v13];

      swift_beginAccess();
      v12 = *(v11 + 32);
      *(v11 + 32) = &_swiftEmptyArrayStorage;
    }
  }

  return result;
}

void sub_10003E9E0()
{
  if ((v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) == 0)
  {
    v1 = v0;
    v2 = sub_10004164C();
    v3 = sub_100041ACC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "show snapshot", v4, 2u);
    }

    [v1 setAlpha:0.0];
    *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  }
}

id sub_10003EAB0()
{
  v1 = v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting];
  v2 = v0;
  v3 = sub_10004164C();
  v4 = sub_100041ACC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v9 = 0x676E69646968;
    }

    else
    {
      v9 = 0x676E69776F6873;
    }

    if (v1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_10000B1E4(v9, v10, &v14);

    *(v5 + 14) = v11;
    *(v5 + 22) = 1024;
    *(v5 + 24) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "#%s %s live view (isSnapshotting = %{BOOL}d", v5, 0x1Cu);
    swift_arrayDestroy();
  }

  v12 = 1.0;
  if (v1)
  {
    v12 = 0.0;
    if (v2[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot])
    {
      v12 = 1.0;
    }
  }

  return [v2 setAlpha:v12];
}

uint64_t sub_10003EC98(void (*a1)(void), uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v5 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v6 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_100021184(a1);
  result = sub_100016A34(v5);
  if (a1)
  {
    v8 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock);
    os_unfair_lock_lock(v8);
    v9 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented);
    os_unfair_lock_unlock(v8);
    if ((v9 & 1) != 0 || (v10 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter), , v11 = sub_100015870(), , !v11))
    {
      a1();
      sub_100016A34(a1);
      v12 = *v4;
      v13 = v4[1];
      *v4 = 0;
      v4[1] = 0;
    }

    else
    {
      v12 = a1;
    }

    return sub_100016A34(v12);
  }

  return result;
}

void sub_10003ED98(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v5 = a3;
    v6 = sub_10004164C();
    v7 = sub_100041A9C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      v10 = &v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v11 = *&v5[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v12 = *(v10 + 5);

      v13 = sub_10000B1E4(v11, v12, &v15);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2048;
      *(v8 + 14) = *&a2;
      _os_log_impl(&_mh_execute_header, v6, v7, "#%s Snapshot for PosterKit done. lastSnapshotTime: %f", v8, 0x16u);
      sub_100005500(v9);
    }
  }

  v14 = &a3[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  *v14 = a2;
  v14[4] = BYTE4(a2) & 1;
}

void sub_10003EF04(char a1, uint64_t a2)
{
  v4 = sub_10004168C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000416DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v77 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1000416FC();
  v76 = *(v79 - 8);
  v13 = *(v76 + 64);
  v14 = __chkstk_darwin(v79);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v78 = &v66 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = (a1 & 1) == 0;
  v20 = Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed;
  v21 = *(Strong + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v75 = v10;
  if (!v21)
  {
    v33 = *&v19[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];

    v34 = sub_100015870();

    if (v34)
    {
      sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
      v35 = sub_100041B0C();
      v74 = v9;
      v79 = v35;
      v36 = swift_allocObject();
      *(v36 + 16) = v19;
      v84 = sub_100040DF0;
      v85 = v36;
      aBlock = _NSConcreteStackBlock;
      v81 = 1107296256;
      v82 = sub_100028728;
      v83 = &unk_100056B28;
      v37 = _Block_copy(&aBlock);
      v38 = v19;

      v39 = v77;
      sub_1000416AC();
      aBlock = &_swiftEmptyArrayStorage;
      sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000054B8(&unk_10005D640, "B|");
      sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
      sub_100041CAC();
      v40 = v79;
      sub_100041B1C();
      _Block_release(v37);

      (*(v5 + 8))(v8, v4);
      (*(v75 + 8))(v39, v74);
    }

    else
    {
    }

    return;
  }

  v72 = v5;
  v73 = v4;
  v22 = *(v20 + 8);
  v74 = v9;
  v70 = v21;
  v71 = v8;
  v69 = v22;
  if (a1)
  {
    v23 = &v19[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
    *v23 = a2;
    v23[4] = BYTE4(a2) & 1;
    sub_100021184(v21);
    v24 = v19;
    v25 = sub_10004164C();
    v26 = sub_100041ACC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136315394;
      v29 = &v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v30 = *&v24[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v31 = *(v29 + 5);

      v32 = sub_10000B1E4(v30, v31, &aBlock);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2048;
      if (v23[4])
      {
        __break(1u);
        return;
      }

      *(v27 + 14) = *v23;
      _os_log_impl(&_mh_execute_header, v25, v26, "#%s snapshot succeeded: %f", v27, 0x16u);
      sub_100005500(v28);

      goto LABEL_11;
    }
  }

  else
  {

    [v19 setAlpha:1.0];
    v41 = v19;
    v25 = sub_10004164C();
    v42 = sub_100041ACC();

    if (os_log_type_enabled(v25, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      v45 = &v41[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v46 = *&v41[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v47 = *(v45 + 5);

      v48 = sub_10000B1E4(v46, v47, &aBlock);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v25, v42, "#%s Failed snapshot", v43, 0xCu);
      sub_100005500(v44);

LABEL_11:
    }
  }

  v49 = v19;
  v50 = sub_10004164C();
  v51 = sub_100041ACC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v52 = 136315138;
    v54 = *&v49[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v55 = *&v49[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v56 = sub_10000B1E4(v54, v55, &aBlock);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "#%s readyForSnapshot", v52, 0xCu);
    sub_100005500(v53);
  }

  sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
  v68 = sub_100041B0C();
  sub_1000416EC();
  sub_10004171C();
  v76 = *(v76 + 8);
  (v76)(v16, v79);
  v57 = swift_allocObject();
  v58 = v69;
  v59 = v70;
  v57[2] = v70;
  v57[3] = v58;
  v57[4] = v49;
  v84 = sub_100040E38;
  v85 = v57;
  aBlock = _NSConcreteStackBlock;
  v81 = 1107296256;
  v82 = sub_100028728;
  v83 = &unk_100056B78;
  v60 = _Block_copy(&aBlock);
  sub_100021184(v59);
  v67 = v49;

  v61 = v77;
  sub_1000416AC();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000054B8(&unk_10005D640, "B|");
  sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
  v62 = v71;
  v63 = v73;
  sub_100041CAC();
  v64 = v78;
  v65 = v68;
  sub_100041AEC();
  _Block_release(v60);

  sub_100016A34(v59);
  (*(v72 + 8))(v62, v63);
  (*(v75 + 8))(v61, v74);
  (v76)(v64, v79);
}

void sub_10003F89C(void *a1)
{
  v1 = a1;
  v2 = sub_10004164C();
  v3 = sub_100041ACC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12[0] = v5;
    *v4 = 136315138;
    v6 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v7 = *&v1[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

    v8 = sub_10000B1E4(v6, v7, v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "#%s showing live view (worldRendered)", v4, 0xCu);
    sub_100005500(v5);
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_100040E8C;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100028728;
  v12[3] = &unk_100056BA0;
  v11 = _Block_copy(v12);

  [v9 animateWithDuration:v11 animations:0.25];
  _Block_release(v11);
}

void sub_10003FA8C()
{
  v0 = sub_10004163C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10005CD28 != -1)
  {
    swift_once();
  }

  v5 = qword_100061090;
  sub_100041BEC();
  v6 = *(v5 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostLog);
  v7 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v1 + 16))(v4, v5 + v7, v0);
  v8 = v6;
  sub_10004161C();

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong setAlpha:1.0];
  }
}

id sub_10003FC50(void *a1, char a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;

  v10 = sub_10004164C();
  v11 = sub_100041ACC();

  v12 = os_log_type_enabled(v10, v11);
  if (a2)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v15 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v16 = sub_10000B1E4(v14, v15, &v31);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_10000B1E4(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Starting VFXWorld clock and rendering, reason: %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v17 = [a1 clock];
    [v17 setPaused:0];

    [*&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView] setRendersContinuously:1];
    v18 = [a1 rootNode];
    v19 = sub_1000417CC();
    v20 = [v18 childNodeWithName:v19 recursively:1];

    if (v20)
    {
      v21 = [v20 parameters];

      if (v21)
      {
        isa = sub_1000419DC().super.super.isa;
        v23 = sub_1000417CC();
        [v21 setObject:isa forKeyedSubscript:v23];
        swift_unknownObjectRelease();
      }
    }

    return sub_10003C848();
  }

  else
  {
    if (v12)
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v27 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

      v28 = sub_10000B1E4(v26, v27, &v31);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_10000B1E4(a4, a5, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "#%s Pausing VFXWorld clock and rendering, reason: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = [a1 clock];
    [v29 setPaused:1];

    v30 = *&v9[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView];

    return [v30 setRendersContinuously:0];
  }
}

uint64_t sub_100040074()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000400B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000400D4(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1, 0);
  }

  return result;
}

uint64_t sub_100040124(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100040170(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 24);
    return v2(result & 1, v3);
  }

  return result;
}

uint64_t sub_1000401BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_isMonitoring) = 0;
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureSource) = 0;
  *(a3 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_memoryPressureQueue) = 0;
  *(a3 + 40) = &off_1000564B8;
  swift_unknownObjectWeakAssign();

  v5 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension18PerformanceMonitor_logger;
  v6 = sub_10004166C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3 + v5, a2, v6);
  v8 = objc_opt_self();
  v9 = [v8 processInfo];
  v10 = [v9 thermalState];

  *(a3 + 24) = v10;
  v11 = [v8 processInfo];
  LOBYTE(v9) = [v11 isLowPowerModeEnabled];

  *(a3 + 16) = v9;

  v12 = sub_10004164C();
  v13 = sub_100041A9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 67109378;
    *(v14 + 4) = *(a3 + 16);

    *(v14 + 8) = 2080;
    v16 = *(a3 + 24);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = 0xE700000000000000;
        v18 = 0x73756F69726573;
        goto LABEL_13;
      }

      if (v16 == 3)
      {
        v17 = 0xE800000000000000;
        v18 = 0x6C61636974697263;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = 0xE700000000000000;
        v18 = 0x6C616E696D6F6ELL;
        goto LABEL_13;
      }

      if (v16 == 1)
      {
        v17 = 0xE400000000000000;
        v18 = 1919508838;
LABEL_13:
        v19 = sub_10000B1E4(v18, v17, &v21);

        *(v14 + 10) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "lowPowerEnabled base state: %{BOOL}d. thermalState: %s", v14, 0x12u);
        sub_100005500(v15);

        goto LABEL_14;
      }
    }

    v17 = 0xE600000000000000;
    v18 = 0x6E776F6B6E75;
    goto LABEL_13;
  }

LABEL_14:
  sub_1000131CC();
  (*(v7 + 8))(a2, v6);
  return a3;
}

void sub_1000404E8()
{
  v1 = sub_10004168C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000416DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock];
  os_unfair_lock_lock(v11);
  v12 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented;
  v13 = (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] & 1) != 0 || *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] > 1;
  if (v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] == 1)
  {
    v14 = *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *&v0[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = v16;
      os_unfair_lock_unlock(v11);
      if (!v13)
      {
        v28 = v7;
        v29 = v6;
        v30 = v2;
        v17 = v0;
        v31 = v0;
        v18 = sub_10004164C();
        v19 = sub_100041AAC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v27[0] = swift_slowAlloc();
          aBlock[0] = v27[0];
          *v20 = 136315138;
          v27[1] = v17;
          v21 = *&v17[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
          v22 = *&v17[OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];

          v23 = sub_10000B1E4(v21, v22, aBlock);

          *(v20 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v18, v19, "#%s didPresent", v20, 0xCu);
          sub_100005500(v27[0]);
        }

        os_unfair_lock_lock(v11);
        v31[v12] = 1;
        sub_10003E9E0();
        os_unfair_lock_unlock(v11);
        sub_10000BB04(0, &unk_10005D630, OS_dispatch_queue_ptr);
        v24 = sub_100041B0C();
        v25 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100040D94;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100028728;
        aBlock[3] = &unk_100056AD8;
        v26 = _Block_copy(aBlock);

        sub_1000416AC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100041268(&qword_10005F830, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000054B8(&unk_10005D640, "B|");
        sub_100014D24(&qword_10005F840, &unk_10005D640, "B|");
        sub_100041CAC();
        sub_100041B1C();
        _Block_release(v26);

        (*(v30 + 8))(v5, v1);
        (*(v28 + 8))(v10, v29);
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(v11);
  }
}

void sub_1000409A0()
{
  v1 = v0;
  v2 = sub_100041AFC();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v17 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041BFC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1000416DC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *(v0 + v9) = [objc_allocWithZone(VFXView) init];
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_maskManager) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_effect) = 0;
  v10 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v11 = swift_allocObject();
  *(v11 + 16) = swift_slowAlloc();
  *(v11 + 24) = 0;
  *(v11 + 32) = &_swiftEmptyArrayStorage;
  *(v0 + v10) = v11;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot) = 1;
  v12 = v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime;
  *v12 = 0;
  *(v12 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp) = 0;
  *(v0 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isScrolling) = 0;
  v16 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000BB04(0, &unk_10005E1C0, OS_dispatch_queue_serial_ptr);
  sub_1000416BC();
  v20 = &_swiftEmptyArrayStorage;
  sub_100041268(&unk_10005F2D0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1000054B8(&unk_10005E1D0, ">~");
  sub_100014D24(&qword_10005F2E0, &unk_10005E1D0, ">~");
  sub_100041CAC();
  (*(v18 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  *(v0 + v16) = sub_100041C0C();
  v13 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock;
  *(v1 + v13) = swift_slowAlloc();
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_inView) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_frameCounter) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) = 0;
  *(v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
  v14 = (v1 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  *v14 = 0;
  v14[1] = 0;
  sub_100041DCC();
  __break(1u);
}

uint64_t sub_100040DB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040DF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100040E38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  v3 = (v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v4 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
  v5 = *(v2 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);
  *v3 = 0;
  v3[1] = 0;

  return sub_100016A34(v4);
}

uint64_t sub_100040E94(uint64_t a1, char a2, char a3, void *a4, uint64_t a5)
{
  v10 = sub_10004166C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LifecycleManager();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = 0;
  *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor) = 0;
  *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_hostAllowsRunning) = 1;
  v19 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning;
  *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_forceAlwaysRunning) = 0;
  *(v18 + 40) = &off_100056A20;
  v39 = a4;
  swift_unknownObjectWeakAssign();
  *(v18 + 16) = a2;
  *(v18 + 17) = a3;
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  *(v18 + v19) = [qword_1000611A0 alwaysRender];
  *(v18 + 24) = a1;
  v20 = *(v11 + 16);
  v20(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_logger, a5, v10);
  v20(v14, a5, v10);
  v21 = type metadata accessor for SimulationSpeedManager();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[5] = 0;
  swift_unknownObjectWeakInit();
  v25 = v24 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_lastSimulationSpeed;
  *v25 = 0;
  v25[4] = 1;
  v24[5] = &off_1000564C8;
  swift_unknownObjectWeakAssign();
  v24[3] = a1;
  v40 = v11;
  (*(v11 + 32))(v24 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension22SimulationSpeedManager_logger, v14, v10);
  v26 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager;
  v27 = *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager);
  *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_simulationSpeedManager) = v24;
  swift_retain_n();

  v20(v14, a5, v10);
  v28 = type metadata accessor for PerformanceMonitor(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();

  v33 = sub_1000401BC(v32, v14, v31);
  v34 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor;
  v35 = *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor);
  *(v18 + OBJC_IVAR____TtC33GradientBackgroundPosterExtension16LifecycleManager_performanceMonitor) = v33;

  if (*(v18 + v26))
  {
    v37 = *(v18 + v26);

    sub_100009184();

    if (*(v18 + v34))
    {
      v38 = *(v18 + v34);

      sub_10001418C();

      sub_1000278F8();
      (*(v40 + 8))(a5, v10);
      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100041200(uint64_t a1)
{
  v2 = sub_1000054B8(&qword_10005F2F0, &qword_1000454B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100041268(unint64_t *a1, void (*a2)(uint64_t))
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

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}