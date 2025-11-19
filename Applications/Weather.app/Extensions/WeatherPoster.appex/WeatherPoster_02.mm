uint64_t sub_10002FB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FBE8(uint64_t a1)
{
  v2 = sub_100002D54(&qword_100064958, &qword_10004DE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002FC88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100005A24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_10002FCE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100005A24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002FD40()
{

  return swift_once();
}

uint64_t sub_10002FD78(uint64_t a1, unint64_t a2)
{

  return sub_1000230EC(a1, a2, (v2 - 152));
}

uint64_t sub_10002FD90()
{
  v1 = sub_100002D54(&unk_100063DE0, "4E");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  sub_100049B4C();
  v5 = sub_100049B7C();
  sub_100004544(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  sub_100013F40();
  sub_100031B94(v4, v0 + v6);
  return swift_endAccess();
}

uint64_t sub_10002FE54()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DE0, "4E");
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-v4];
  if (qword_1000634B8 != -1)
  {
LABEL_19:
    sub_100031C5C();
  }

  v6 = sub_100049FCC();
  sub_10001A018(v6, qword_1000683D8);
  v7 = sub_100049FAC();
  v8 = sub_10004AB9C();
  if (sub_10001A094(v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Invalidating all extended sessions", v9, 2u);
    sub_100009830();
  }

  v10 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
  v11 = *(v1 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v1 + v10);
  }

  else
  {
    v12 = 0;
  }

  *(v1 + v10) = 0;

  v13 = sub_100049B7C();
  sub_100004544(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  sub_100013F40();
  sub_100031B94(v5, v1 + v14);
  swift_endAccess();
  swift_beginAccess();
  v15 = *(v1 + 16);
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = *(v1 + 16);
  swift_bridgeObjectRetain_n();
  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_15:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v5 = *(*(v15 + 56) + ((v22 << 10) | (16 * v23)));
      [objc_msgSend(v5 "assertion")];

      swift_unknownObjectRelease();
      if (!v18)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_15;
    }
  }

  sub_100013F40();
  sub_100002D54(&qword_100064A60, &qword_10004DFC8);
  sub_10004A91C(0);
  return swift_endAccess();
}

uint64_t sub_100030114(char *a1)
{
  sub_100030E8C(3);
  if (v3 < 2.0 && (sub_10003026C(3u, a1) & 1) == 0)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
  v5 = *(v1 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer);
  if (v5)
  {
    [v5 invalidate];
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_100031C3C;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100011A98;
  v12[3] = &unk_10005F2C8;
  v8 = _Block_copy(v12);

  v9 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:2.0];
  _Block_release(v8);
  v10 = *(v1 + v4);
  *(v1 + v4) = v9;

  return 1;
}

uint64_t sub_10003026C(unsigned __int8 a1, char *a2)
{
  v3 = v2;
  v6 = sub_100002D54(&unk_100063DE0, "4E");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v73 - v8;
  v10 = sub_100049B7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v73 - v17;
  __chkstk_darwin(v16);
  v20 = &v73 - v19;
  sub_100030A2C(a1);
  v21 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  swift_beginAccess();
  v22 = v3 + v21;
  v23 = v10;
  sub_1000318D8(v22, v9);
  if (sub_100004288(v9, 1, v10) == 1)
  {
    v24 = v11;
    sub_100049AEC();
    if (sub_100004288(v9, 1, v23) != 1)
    {
      sub_100031948(v9);
    }
  }

  else
  {
    v24 = v11;
    (*(v11 + 32))(v20, v9, v23);
  }

  v75 = v23;
  if (a1 < 5u)
  {
    sub_100049B4C();
    sub_100049AFC();
    v26 = v25;
    v27 = *(v24 + 8);
    (v27)(v18, v75);
    if (v26 >= 7.0)
    {
      if (qword_1000634B8 != -1)
      {
        sub_100031C5C();
      }

      v46 = sub_100049FCC();
      sub_10001A018(v46, qword_1000683D8);
      v47 = v75;
      (*(v24 + 16))(v15, v20, v75);
      v48 = sub_100049FAC();
      v49 = sub_10004AB9C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v74 = v27;
        v51 = v50;
        v77[0] = swift_slowAlloc();
        *v51 = 136446466;
        v52 = sub_100030C88(a1);
        v54 = v20;
        v55 = sub_1000230EC(v52, v53, v77);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2082;
        sub_100031AF0();
        v56 = sub_10004AF1C();
        v58 = v57;
        v59 = v15;
        v60 = v74;
        (v74)(v59, v47);
        v61 = sub_1000230EC(v56, v58, v77);

        *(v51 + 14) = v61;
        _os_log_impl(&_mh_execute_header, v48, v49, "Not enough time to extend session before unlimited assertion is dropped; reason=%{public}s, lastUnlimitedAssertionTakenAt=%{public}s", v51, 0x16u);
        swift_arrayDestroy();
        sub_100013F58();
        sub_100013F58();

        (v60)(v54, v47);
      }

      else
      {

        (v27)(v15, v47);
        (v27)(v20, v47);
      }

      return 0;
    }
  }

  sub_100030C88(a1);
  v28 = sub_10004A95C();

  v29 = [a2 extendRenderingSessionForReason:v28];

  v30 = sub_100030E2C(v29);
  if (!v30)
  {
    if (qword_1000634B8 != -1)
    {
      sub_100031C5C();
    }

    v41 = sub_100049FCC();
    sub_10001A018(v41, qword_1000683D8);
    v42 = sub_100049FAC();
    v43 = sub_10004AB9C();
    if (sub_10001A094(v43))
    {
      swift_slowAlloc();
      v44 = sub_100031C98();
      v77[0] = v44;
      *v20 = 136446210;
      v45 = sub_100031C7C();

      *(v20 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v42, v43, "Not granted an extented session for reason=%{public}s", v20, 0xCu);
      sub_100008FC8(v44);
      sub_100009830();
      sub_100013F58();

      (*(v24 + 8))(a2, v75);
      return 0;
    }

LABEL_28:
    (*(v24 + 8))(v20, v75);
    return 0;
  }

  v32 = v30;
  v33 = v31;
  [v30 timeRemaining];
  v35 = v34;
  if (v34 < 5.0)
  {
    if (qword_1000634B8 != -1)
    {
      sub_100031C5C();
    }

    v36 = sub_100049FCC();
    sub_10001A018(v36, qword_1000683D8);
    v37 = sub_100049FAC();
    v38 = sub_10004AB9C();
    if (sub_10001A094(v38))
    {
      swift_slowAlloc();
      v39 = sub_100031C98();
      v77[0] = v39;
      *v20 = 136446466;
      v40 = sub_100031C7C();

      *(v20 + 4) = v40;
      *(v20 + 6) = 2050;
      *(v20 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v37, v38, "Granted extended session, but not enough time remaining to do work; reason=%{public}s, timeGranted=%{public}f seconds", v20, 0x16u);
      sub_100008FC8(v39);
      sub_100009830();
      v20 = a2;
      sub_100013F58();
    }

    [objc_msgSend(v32 "assertion")];
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v62 = v33;
  if (qword_1000634B8 != -1)
  {
    sub_100031C5C();
  }

  v74 = v20;
  v63 = sub_100049FCC();
  sub_10001A018(v63, qword_1000683D8);
  v64 = sub_100049FAC();
  v65 = sub_10004AB9C();
  if (sub_10001A094(v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v77[0] = v67;
    *v66 = 136446466;
    v68 = sub_100031C7C();

    *(v66 + 4) = v68;
    *(v66 + 12) = 2050;
    *(v66 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v64, v65, "Granted extended session for reason=%{public}s and timeGranted=%{public}f seconds", v66, 0x16u);
    sub_100008FC8(v67);
    sub_100013F58();
    sub_100013F58();
  }

  sub_100013F40();
  v69 = v32;
  v70 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v3 + 16);
  sub_1000319B0(v69, a1, isUniquelyReferenced_nonNull_native, v62);
  *(v3 + 16) = v76;
  swift_endAccess();

  (*(v24 + 8))(v74, v75);
  return 1;
}

void sub_100030A2C(char a1)
{
  v2 = v1;
  sub_100031CB8();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_10002365C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
    swift_endAccess();
    v8 = qword_1000634B8;
    v9 = v7;
    if (v8 != -1)
    {
      sub_100031C5C();
    }

    v10 = sub_100049FCC();
    sub_10001A018(v10, qword_1000683D8);
    v11 = sub_100049FAC();
    v12 = sub_10004AB9C();
    if (sub_10001A094(v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136446210;
      v15 = sub_100030C88(a1);
      v17 = sub_1000230EC(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalidating extended session; reason=%{public}s", v13, 0xCu);
      sub_100008FC8(v14);
      sub_100013F58();
      sub_100009830();
    }

    [objc_msgSend(v9 "assertion")];
    swift_unknownObjectRelease();
    sub_100013F40();
    v18 = sub_1000317B0(a1);
    swift_endAccess();

    if (sub_100030C88(a1) == 0xD000000000000016 && 0x800000010004E8D0 == v19)
    {
    }

    else
    {
      v21 = sub_10004AF3C();

      if ((v21 & 1) == 0)
      {

        return;
      }
    }

    v22 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
    v23 = *(v2 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer);
    if (v23)
    {
      v24 = v23;
      [v24 invalidate];
    }

    v25 = *(v2 + v22);
    *(v2 + v22) = 0;
  }

  else
  {
    swift_endAccess();
  }
}

unint64_t sub_100030C88(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 2:
    case 3:
    case 5:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100030D50(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005E060;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100030DC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100030D50(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100030DF0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100030C88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100030E2C(id a1)
{
  v1 = a1;
  if (a1)
  {
    if ([a1 assertion])
    {
      swift_unknownObjectRelease();
      CFAbsoluteTimeGetCurrent();
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

void sub_100030E8C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_10002365C(a1), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 16 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    swift_endAccess();
    v9 = v7;
    CFAbsoluteTimeGetCurrent();
    [v9 timeRemaining];
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100030F48()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100030A2C(3);
  }

  return result;
}

uint64_t sub_100030FA4(char a1)
{
  sub_100031CB8();
  if (*(*(v1 + 16) + 16))
  {
    sub_10002365C(a1);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4 & 1;
}

uint64_t sub_100030FFC()
{
  v1 = v0;
  if (qword_1000634B8 != -1)
  {
    sub_100031C5C();
  }

  v2 = sub_100049FCC();
  sub_10001A018(v2, qword_1000683D8);
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();
  if (sub_10001A094(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating all extended sessions that require rendering", v5, 2u);
    sub_100013F58();
  }

  v6 = 0;
  v7 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer;
  while (2)
  {
    v8 = *(&off_10005DD30 + v6 + 32);
    result = 0xD000000000000010;
    v10 = "weatherRendering";
    switch(v8)
    {
      case 0:
      case 1:
      case 4:
        goto LABEL_10;
      case 2:
        goto LABEL_8;
      case 3:
        v10 = "weatherUnloadingMemory";
LABEL_8:
        if ((v10 | 0x8000000000000000) == 0x800000010004E8D0)
        {
        }

        else
        {
LABEL_10:
          v11 = sub_10004AF3C();

          if ((v11 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v12 = *(v1 + v7);
        if (v12)
        {
          [v12 invalidate];
          v13 = *(v1 + v7);
        }

        else
        {
          v13 = 0;
        }

        *(v1 + v7) = 0;

LABEL_15:
        sub_100013F40();
        v14 = *(v1 + 16);
        v15 = sub_10002365C(v8);
        if (v16)
        {
          v17 = v15;
          v18 = *(v1 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *(v1 + 16);
          *(v1 + 16) = 0x8000000000000000;
          v20 = *(v22 + 24);
          sub_100002D54(&qword_100064A50, &unk_10004DFB8);
          sub_10004AE1C(isUniquelyReferenced_nonNull_native, v20);
          v21 = *(*(v22 + 56) + 16 * v17);
          sub_100031884();
          sub_10004AE2C();
          *(v1 + 16) = v22;
          swift_endAccess();
          [objc_msgSend(v21 "assertion")];

          result = swift_unknownObjectRelease();
        }

        else
        {
          result = swift_endAccess();
        }

LABEL_18:
        if (++v6 != 7)
        {
          continue;
        }

        return result;
      default:
        goto LABEL_18;
    }
  }
}

uint64_t sub_100031318()
{
  v1 = *(v0 + 16);

  sub_100031948(v0 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt);

  return v0;
}

uint64_t sub_100031358()
{
  sub_100031318();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for RenderingSessionManager()
{
  result = qword_1000649A0;
  if (!qword_1000649A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031404()
{
  sub_1000314AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000314AC()
{
  if (!qword_100063818)
  {
    sub_100049B7C();
    v0 = sub_10004ACDC();
    if (!v1)
    {
      atomic_store(v0, &qword_100063818);
    }
  }
}

uint64_t sub_100031504(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100031544(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RenderingSessionManager.ExtensionReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x10003165CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100031698()
{
  result = qword_100064A38;
  if (!qword_100064A38)
  {
    sub_100009240(&qword_100064A40, qword_10004DED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A38);
  }

  return result;
}

unint64_t sub_100031700()
{
  result = qword_100064A48;
  if (!qword_100064A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A48);
  }

  return result;
}

uint64_t sub_100031754()
{
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_springBoardUnlimitedAssertionTakenAt;
  v2 = sub_100049B7C();
  sub_100004544(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13WeatherPoster23RenderingSessionManager_unlockSessionTimer) = 0;
  return v0;
}

uint64_t sub_1000317B0(char a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10002365C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v9 = *(*v2 + 24);
  sub_100002D54(&qword_100064A50, &unk_10004DFB8);
  sub_10004AE1C(isUniquelyReferenced_nonNull_native, v9);
  v10 = (*(v14 + 56) + 16 * v6);
  v11 = *v10;
  v12 = v10[1];
  sub_100031884();
  sub_10004AE2C();
  *v2 = v14;
  return v11;
}

unint64_t sub_100031884()
{
  result = qword_100064A58;
  if (!qword_100064A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A58);
  }

  return result;
}

uint64_t sub_1000318D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DE0, "4E");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031948(uint64_t a1)
{
  v2 = sub_100002D54(&unk_100063DE0, "4E");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000319B0(uint64_t a1, char a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10002365C(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100002D54(&qword_100064A50, &unk_10004DFB8);
  if (!sub_10004AE1C(a3 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_10002365C(a2);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    sub_10004AF8C();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * v16;
    v23 = *v22;
    *v22 = a1;
    *(v22 + 8) = a4;
  }

  else
  {

    sub_100031B48(v16, a2, a1, v21, a4);
  }
}

unint64_t sub_100031AF0()
{
  result = qword_100063C88;
  if (!qword_100063C88)
  {
    sub_100049B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C88);
  }

  return result;
}

unint64_t sub_100031B48(unint64_t result, char a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v5 = a4[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_100031B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DE0, "4E");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031C04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031C5C()
{

  return swift_once();
}

uint64_t sub_100031C7C()
{

  return sub_1000230EC(v1, v0, (v2 - 144));
}

uint64_t sub_100031C98()
{

  return swift_slowAlloc();
}

uint64_t sub_100031CB8()
{

  return swift_beginAccess();
}

uint64_t sub_100031CD8(uint64_t a1)
{
  v1 = 0xE800000000000000;
  v3._countAndFlagsBits = 0x7469617274726F70;
  switch(a1)
  {
    case 1:
      break;
    case 2:
      v1 = 0x800000010004EEB0;
      v3._countAndFlagsBits = 0xD000000000000012;
      break;
    case 3:
      v1 = 0xEE00746867695265;
      goto LABEL_6;
    case 4:
      v1 = 0xED00007466654C65;
LABEL_6:
      v3._countAndFlagsBits = 0x70616373646E616CLL;
      break;
    default:
      v1 = 0xE700000000000000;
      v3._countAndFlagsBits = 0x6E776F6E6B6E75;
      break;
  }

  v3._object = v1;
  sub_10004A9DC(v3);

  return 0x2D7972656C6C6167;
}

uint64_t sub_100031DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_100049A6C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100004544(a2, v7, 1, v6);
}

Swift::Int sub_100031EC0(Swift::UInt a1)
{
  sub_10004AFEC();
  sub_10004AFFC(0);
  sub_10004AFFC(a1);
  return sub_10004B00C();
}

Swift::Int sub_100031F30()
{
  v1 = *v0;
  sub_10004AFEC();
  sub_10004AFFC(0);
  sub_10004AFFC(v1);
  return sub_10004B00C();
}

uint64_t sub_100031F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = [*(v2 + 16) URLsForDirectory:9 inDomains:1];
  v10 = sub_100049A6C();
  v11 = sub_10004AA5C();

  sub_100031DE4(v11, v8);

  if (sub_100004288(v8, 1, v10) == 1)
  {
    sub_100023F18(v8, &unk_100063E80, &qword_10004D0F8);
    v12 = 1;
  }

  else
  {
    sub_10003433C(a1);
    sub_100049A2C();

    (*(*(v10 - 8) + 8))(v8, v10);
    v12 = 0;
  }

  return sub_100004544(a2, v12, 1, v10);
}

void sub_10003212C(UIImage *a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_100049A6C();
  v9 = sub_1000059BC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031F80(a2, v7);
  if (sub_100004288(v7, 1, v8) == 1)
  {
    sub_100023F18(v7, &unk_100063E80, &qword_10004D0F8);
LABEL_6:
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8();
    }

    v21 = sub_100049FCC();
    sub_100008F90(v21, qword_1000683A8);
    v22 = sub_100049FAC();
    v23 = sub_10004AB7C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_100014030();
      v25 = sub_10001A07C();
      v43 = v25;
      *v24 = 136446210;
      v26 = sub_100031CD8(a2);
      v28 = sub_100034808(v26, v27);

      *(v24 + 4) = v28;
      sub_1000347E8(&_mh_execute_header, v29, v30, "Failed to create PNG data when saving snapshot to disk for kind=%{public}s");
      sub_100008FC8(v25);
      sub_100013F58();
      sub_100013F58();
    }

    return;
  }

  (*(v11 + 32))(v15, v7, v8);
  v16 = UIImagePNGRepresentation(a1);
  if (!v16)
  {
    (*(v11 + 8))(v15, v8);
    goto LABEL_6;
  }

  v17 = v16;
  v18 = sub_100049A8C();
  v20 = v19;

  sub_100049A9C();
  if (qword_1000634A8 != -1)
  {
    sub_1000347A8();
  }

  v31 = sub_100049FCC();
  sub_100008F90(v31, qword_1000683A8);
  v32 = sub_100049FAC();
  v33 = sub_10004AB9C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_100014030();
    v35 = sub_10001A07C();
    v43 = v35;
    *v34 = 136446210;
    v36 = sub_100031CD8(a2);
    v38 = sub_100034808(v36, v37);
    v42 = v18;
    v39 = v38;

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Saved snapshot view for kind=%{public}s to disk", v34, 0xCu);
    sub_100008FC8(v35);
    sub_100013F58();
    sub_100013F58();
    v40 = v42;
  }

  else
  {
    v40 = v18;
  }

  sub_10001B984(v40, v20);

  (*(v11 + 8))(v15, v8);
}

void *sub_100032634(uint64_t a1)
{
  v2 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v50 - v4;
  v6 = sub_100049A6C();
  v7 = sub_1000059BC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031F80(a1, v5);
  if (sub_100004288(v5, 1, v6) == 1)
  {
    sub_100023F18(v5, &unk_100063E80, &qword_10004D0F8);
LABEL_12:
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8();
    }

    v29 = sub_100049FCC();
    sub_100008F90(v29, qword_1000683A8);
    v30 = sub_100049FAC();
    v31 = sub_10004AB9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_100014030();
      v33 = sub_10001A07C();
      v51 = v33;
      *v32 = 136446210;
      v34 = sub_100031CD8(a1);
      v36 = sub_1000230EC(v34, v35, &v51);

      *(v32 + 4) = v36;
      sub_1000347E8(&_mh_execute_header, v37, v38, "No snapshot found on disk for kind=%{public}s");
      sub_100008FC8(v33);
      sub_100013F58();
      sub_100013F58();
    }

    return 0;
  }

  (*(v9 + 32))(v13, v5, v6);
  sub_100034764();
  sub_100049A4C();
  v14 = sub_100032AB0();
  if (!v14)
  {
    v27 = sub_1000347C8();
    v28(v27);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 CGImage];
  if (!v16)
  {
LABEL_18:
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8();
    }

    v39 = sub_100049FCC();
    sub_100008F90(v39, qword_1000683A8);
    v40 = sub_100049FAC();
    v41 = sub_10004AB7C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_100014030();
      v43 = sub_10001A07C();
      v51 = v43;
      *v42 = 136446210;
      v44 = sub_100031CD8(a1);
      v46 = sub_1000230EC(v44, v45, &v51);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to find valid snapshot on disk for kind=%{public}s", v42, 0xCu);
      sub_100008FC8(v43);
      sub_100013F58();
      sub_100013F58();
    }

    v47 = sub_1000347C8();
    v48(v47);
    return 0;
  }

  v17 = v16;
  if ((sub_100041F18() & 1) == 0)
  {

    goto LABEL_18;
  }

  if (qword_1000634A8 != -1)
  {
    sub_1000347A8();
  }

  v18 = sub_100049FCC();
  sub_100008F90(v18, qword_1000683A8);
  v19 = sub_100049FAC();
  v20 = sub_10004AB9C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_100014030();
    v50 = sub_10001A07C();
    v51 = v50;
    *v21 = 136446210;
    v22 = sub_100031CD8(a1);
    v24 = sub_1000230EC(v22, v23, &v51);

    *(v21 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "Found valid cached snapshot on disk for kind=%{public}s", v21, 0xCu);
    sub_100008FC8(v50);
    sub_100013F58();
    sub_100013F58();
  }

  v25 = sub_1000347C8();
  v26(v25);
  return v15;
}

id sub_100032AB0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10004A95C();

  v2 = [v0 initWithContentsOfFile:v1];

  return v2;
}

uint64_t sub_100032B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_100032B88(a1, a2, a3, &v8);
  objc_autoreleasePoolPop(v6);
  return v8;
}

void sub_100032B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v130 = a3;
  v127 = a2;
  v140 = a4;
  v136 = sub_10004A71C();
  v129 = *(v136 - 8);
  v5 = *(v129 + 64);
  __chkstk_darwin(v136);
  v128 = v6;
  v135 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v125 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v116 - v11;
  v13 = sub_10004A5AC();
  v132 = *(v13 - 8);
  v14 = *(v132 + 64);
  __chkstk_darwin(v13);
  v16 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100049A6C();
  v137 = *(v139 - 8);
  v17 = *(v137 + 64);
  v18 = __chkstk_darwin(v139);
  v134 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v124 = &v116 - v20;
  __chkstk_darwin(v19);
  v138 = &v116 - v21;
  v22 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v116 - v24;
  v26 = sub_10004A39C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v133 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v30;
  __chkstk_darwin(v29);
  v32 = &v116 - v31;
  sub_10003434C(a1, v25);
  if (sub_100004288(v25, 1, v26) == 1)
  {
    sub_100023F18(v25, &qword_100064B10, &unk_10004E3B0);
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v33 = sub_100049FCC();
    sub_100008F90(v33, qword_1000683A8);
    v34 = sub_100049FAC();
    v35 = sub_10004AB7C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to create snapshot because no configuration was provided", v36, 2u);
    }

    goto LABEL_21;
  }

  v131 = v27;
  v123 = *(v27 + 32);
  v123(v32, v25, v26);
  v37 = MTLCreateSystemDefaultDevice();
  v38 = v26;
  if (!v37)
  {
    goto LABEL_15;
  }

  v39 = v37;
  v40 = [v37 newCommandQueue];
  if (!v40)
  {
    swift_unknownObjectRelease();
LABEL_15:
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v49 = sub_100049FCC();
    sub_100008F90(v49, qword_1000683A8);
    v44 = sub_100049FAC();
    v50 = sub_10004AB7C();
    v51 = os_log_type_enabled(v44, v50);
    v47 = v131;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v44, v50, "Failed to create snapshot because command queue was not able to be setup", v52, 2u);
    }

    goto LABEL_19;
  }

  v122 = v40;
  v121 = v39;
  v41 = v132;
  (*(v132 + 104))(v16, enum case for VFXEffectType.background(_:), v13);
  sub_10004A59C();
  (*(v41 + 8))(v16, v13);
  v42 = v139;
  if (sub_100004288(v12, 1, v139) == 1)
  {
    sub_100023F18(v12, &unk_100063E80, &qword_10004D0F8);
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v43 = sub_100049FCC();
    sub_100008F90(v43, qword_1000683A8);
    v44 = sub_100049FAC();
    v45 = sub_10004AB7C();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v131;
    if (!v46)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Failed to create snapshot because URL for effect could not be created", v48, 2u);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_19:

LABEL_20:
    (*(v47 + 8))(v32, v38);
LABEL_21:
    v53 = 0;
    goto LABEL_22;
  }

  v54 = v137;
  v55 = *(v137 + 32);
  v119 = v137 + 32;
  v118 = v55;
  v55(v138, v12, v42);
  if (qword_1000634A8 != -1)
  {
    swift_once();
  }

  v56 = sub_100049FCC();
  v120 = sub_100008F90(v56, qword_1000683A8);
  v57 = sub_100049FAC();
  v58 = sub_10004AB9C();
  v59 = os_log_type_enabled(v57, v58);
  v132 = v38;
  if (v59)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Starting to create new snapshot", v60, 2u);
  }

  v61 = [objc_allocWithZone(sub_10004A03C()) init];
  sub_10004A01C();
  sub_10004A02C();
  sub_100049FDC();
  sub_10004A00C();
  sub_100049FFC();
  if (qword_100063460 != -1)
  {
    swift_once();
  }

  v62 = sub_1000343BC(0x746C7561666564, 0xE700000000000000, 0x62696C6C6174656DLL, 0xE800000000000000, qword_1000682D0);
  if (v62)
  {
    v63 = v62;
    v64 = v124;
    sub_100049A3C();

    v65 = v125;
    (*(v54 + 16))(v125, v64, v42);
    sub_100004544(v65, 0, 1, v42);
    sub_100049FEC();
    (*(v54 + 8))(v64, v42);
  }

  v66 = objc_allocWithZone(sub_10004A0CC());
  v124 = v61;
  v117 = sub_10004A06C();
  v67 = dispatch_group_create();
  v116 = v67;
  dispatch_group_enter(v67);
  v68 = v54 + 16;
  (*(v54 + 16))(v134, v138, v42);
  v69 = v132;
  v71 = v131 + 16;
  v70 = *(v131 + 16);
  v125 = v32;
  v70(v133, v32, v132);
  v72 = v129;
  (*(v129 + 16))(v135, v127, v136);
  v73 = (*(v68 + 64) + 32) & ~*(v68 + 64);
  v74 = (v17 + *(v71 + 64) + v73) & ~*(v71 + 64);
  v75 = (v126 + *(v72 + 80) + v74) & ~*(v72 + 80);
  v76 = (v128 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v42;
  v79 = v77;
  *(v77 + 16) = v67;
  v80 = v117;
  *(v77 + 24) = v117;
  v118(v77 + v73, v134, v78);
  v123((v79 + v74), v133, v69);
  (*(v72 + 32))(v79 + v75, v135, v136);
  *(v79 + v76) = v130;
  v81 = v116;
  v82 = v80;
  sub_10004A04C();

  sub_10004ABBC();
  v83 = sub_10004A05C();
  v84 = sub_100034318(v83);

  if (!v84)
  {
    v101 = sub_100049FAC();
    v102 = sub_10004AB7C();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v101, v102, "Failed to create snapshot because effect was not added to scene", v103, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v137 + 8))(v138, v139);
    v104 = *(v131 + 8);
    v105 = v125;
    goto LABEL_45;
  }

  v85 = objc_allocWithZone(VFXRenderer);
  v86 = [v85 initWithCommandQueue:v122];
  v87 = [objc_opt_self() blackColor];
  [v86 setBackgroundColor:v87];

  [v86 setScene:v82];
  v88 = [objc_opt_self() mainScreen];
  [v88 nativeBounds];
  v90 = v89;
  v92 = v91;

  v93 = [v86 snapshotImageWithSize:{v90, v92}];
  if (!v93)
  {
    v106 = sub_100049FAC();
    v107 = sub_10004AB7C();
    v108 = os_log_type_enabled(v106, v107);
    v109 = v125;
    v110 = v137;
    if (v108)
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "Failed to create snapshot because VFX renderer did not provide an image", v111, 2u);
      v69 = v132;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v110 + 8))(v138, v139);
    v104 = *(v131 + 8);
    v105 = v109;
LABEL_45:
    v112 = v69;
LABEL_50:
    v104(v105, v112);
    goto LABEL_21;
  }

  v53 = v93;
  v94 = [v93 CGImage];
  v95 = v125;
  v96 = v137;
  if (!v94)
  {
LABEL_47:
    v113 = sub_100049FAC();
    v114 = sub_10004AB7C();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "Failed to create valid snapshot", v115, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v96 + 8))(v138, v139);
    v112 = v132;
    v104 = *(v131 + 8);
    v105 = v95;
    goto LABEL_50;
  }

  v97 = v94;
  if ((sub_100041F18() & 1) == 0)
  {

    goto LABEL_47;
  }

  v98 = sub_100049FAC();
  v99 = sub_10004AB9C();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "Successfully created new snapshot", v100, 2u);
    v95 = v125;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v96 + 8))(v138, v139);
  (*(v131 + 8))(v95, v132);
LABEL_22:
  *v140 = v53;
}

void sub_100033AD0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a6;
  v52 = a4;
  v49 = a5;
  v53 = a1;
  v7 = sub_100002D54(&qword_100063C78, &qword_10004E0A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v47 - v9;
  v11 = sub_10004A38C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004A5AC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v47 - v23;
  v50 = a2;
  v25 = sub_10004A09C();
  v26 = sub_10004A51C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v48 = v25;
  sub_10004A50C();
  v29 = sub_10004A39C();
  sub_100004544(v24, 1, 1, v29);
  (*(v17 + 104))(v20, enum case for VFXEffectType.background(_:), v16);
  (*(v12 + 104))(v15, enum case for WeatherConditionBackgroundConfig.CameraPositionType.default(_:), v11);
  v30 = sub_10004A71C();
  (*(*(v30 - 8) + 16))(v10, v49, v30);
  sub_100004544(v10, 0, 1, v30);
  sub_10004A4EC();
  sub_100023F18(v10, &qword_100063C78, &qword_10004E0A0);
  (*(v12 + 8))(v15, v11);
  (*(v17 + 8))(v20, v16);
  sub_100023F18(v24, &qword_100064B10, &unk_10004E3B0);
  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  v33 = v51;
  if (v32 == 1 && sub_100034754(v51))
  {
    if (qword_1000634A8 != -1)
    {
      swift_once();
    }

    v34 = sub_100049FCC();
    sub_100008F90(v34, qword_1000683A8);
    v35 = sub_100049FAC();
    v36 = sub_10004AB9C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136446210;
      v39 = sub_100031CD8(v33);
      v41 = sub_1000230EC(v39, v40, &v54);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v35, v36, "Applying overrides for landscape snapshot; kind=%{public}s", v37, 0xCu);
      sub_100008FC8(v38);
    }

    sub_100002D54(&qword_100064B18, &qword_10004E0A8);
    v42 = sub_10004A65C();
    v43 = *(v42 - 8);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10004CBE0;
    sub_10004A73C();
    (*(v43 + 104))(v46 + v45, enum case for VFXOverrideModel.deviceRotation(_:), v42);
    sub_10004A4FC();
  }

  sub_10004A07C();

  dispatch_group_leave(v53);
}

uint64_t sub_1000341F4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for SnapshotKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SnapshotKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1000342C0()
{
  result = qword_100064B08;
  if (!qword_100064B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064B08);
  }

  return result;
}

uint64_t sub_100034318(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10004AE5C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10003434C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000343BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10004A95C();

  v7 = sub_10004A95C();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_100034450()
{
  v24 = sub_100049A6C();
  sub_1000059BC(v24);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v23 = sub_10004A39C();
  sub_1000059BC(v23);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_10004A71C();
  sub_1000059BC(v13);
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v20 = v3 | v9 | v18;
  v21 = (*(v17 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v24);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, v13);

  return _swift_deallocObject(v0, v21 + 8, v20 | 7);
}

void sub_100034614()
{
  v1 = sub_100049A6C();
  sub_1000347D8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_10004A39C();
  sub_1000347D8(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_10004A71C();
  sub_1000347D8(v11);
  v13 = v12;
  v15 = v14;
  v16 = (v8 + v10 + *(v13 + 80)) & ~*(v13 + 80);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = *(v0 + ((*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100033AD0(v17, v18, v0 + v3, v0 + v8, v0 + v16, v19);
}

unint64_t sub_100034764()
{
  result = qword_100064B20;
  if (!qword_100064B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100064B20);
  }

  return result;
}

uint64_t sub_1000347A8()
{

  return swift_once();
}

void sub_1000347E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100034808(uint64_t a1, unint64_t a2)
{

  return sub_1000230EC(a1, a2, (v2 - 88));
}

uint64_t *WeatherLocation.currentLocationID.unsafeMutableAddressor()
{
  if (qword_100063468 != -1)
  {
    sub_100034908();
  }

  return &static WeatherLocation.currentLocationID;
}

uint64_t sub_100034860()
{
  result = sub_100049ECC();
  static WeatherLocation.currentLocationID = result;
  *algn_1000682E8 = v1;
  return result;
}

uint64_t static WeatherLocation.currentLocationID.getter()
{
  if (qword_100063468 != -1)
  {
    sub_100034908();
  }

  v0 = static WeatherLocation.currentLocationID;

  return v0;
}

uint64_t sub_100034908()
{

  return swift_once();
}

void sub_100034928()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 removeFromSuperview];
    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_100034968()
{
  if (*(v0 + 33) == 1)
  {
    v1 = *(v0 + 32) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10003498C()
{
  if (!UIAccessibilityIsReduceMotionEnabled() && *(v0 + 33) == 1 && (*(v0 + 32) & 1) == 0)
  {
    v1 = *(v0 + 24);
    if (v1)
    {
      sub_100035294();
      v2 = v1;
      sub_10004A92C();
      sub_1000027DC((1.0 - v3) * 0.2 + 1.0, 0.5, 0.25);
    }
  }
}

void sub_100034A54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + 33) != 1 || (*(v3 + 32) & 1) != 0)
  {
LABEL_14:
    v17 = *(v4 + 16);
    goto LABEL_15;
  }

  if (!a1)
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v13 = sub_100049FCC();
    sub_100008F90(v13, qword_100068378);
    v14 = sub_100049FAC();
    v15 = sub_10004AB7C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_10001A048();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to unload background on home screen because renderer is not set", v16, 2u);
    }

    goto LABEL_14;
  }

  v6 = *(v3 + 16);
  v7 = a1;
  if (sub_100030FA4(1))
  {
    if (qword_100063498 != -1)
    {
      sub_100019F98();
    }

    v8 = sub_100049FCC();
    sub_100008F90(v8, qword_100068378);
    v9 = sub_100049FAC();
    v10 = sub_10004AB9C();
    if (!sub_1000352E8(v10))
    {
      goto LABEL_31;
    }

    v11 = sub_10001A048();
    *v11 = 0;
    v12 = "Skipping unload of background because rendering is in progress";
    goto LABEL_30;
  }

  if (*(v3 + 24))
  {
    v18 = [v7 backgroundView];
    v19 = [v18 subviews];

    sub_1000047A4();
    v20 = sub_10004AA5C();

    v21 = sub_100034FC8(v20);

    sub_100002D54(&qword_100064BE0, &qword_10004E118);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004CBE0;
    v23 = *(v4 + 24);
    *(inited + 32) = v23;
    v24 = v23;
    sub_10002B404(v21, inited);
    v26 = v25;

    swift_setDeallocating();
    sub_100035234();
    if (v26)
    {
      if (qword_100063498 != -1)
      {
        sub_100019F98();
      }

      v27 = sub_100049FCC();
      sub_100008F90(v27, qword_100068378);
      v9 = sub_100049FAC();
      v28 = sub_10004AB9C();
      if (!sub_1000352E8(v28))
      {
        goto LABEL_31;
      }

      v11 = sub_10001A048();
      *v11 = 0;
      v12 = "Skipping unload of background because a snapshot already exists";
      goto LABEL_30;
    }
  }

  if (qword_100063498 != -1)
  {
    sub_100019F98();
  }

  v29 = sub_100049FCC();
  sub_100008F90(v29, qword_100068378);
  v30 = sub_100049FAC();
  v31 = sub_10004AB9C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_10001A048();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Starting to unload background while on home screen", v32, 2u);
  }

  v33 = [v7 backgroundView];
  v34 = sub_100002008();

  if (!v34)
  {
    v9 = sub_100049FAC();
    v37 = sub_10004AB7C();
    if (!sub_1000352E8(v37))
    {
LABEL_31:

      goto LABEL_15;
    }

    v11 = sub_10001A048();
    *v11 = 0;
    v12 = "Failed to snapshot the background view when unloading on home screen";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v9, v4, v12, v11, 2u);

    goto LABEL_31;
  }

  v35 = sub_100035110(v4, v7);
  [v35 setImage:v34];
  ObjectType = swift_getObjectType();
  (*(a3 + 80))(2, ObjectType, a3);
  sub_100030FFC();

LABEL_15:
  sub_100030A2C(2);
}

void sub_100034EC0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 33) == 1 && (*(v3 + 32) & 1) == 0)
  {
    v7 = [a1 environment];
    swift_getObjectType();
    sub_100035304();
    v9 = v8;
    swift_unknownObjectRelease();
    if (v9 == 1)
    {

      sub_100034A54(a1, a2, a3);
    }

    else
    {
      v10 = *(v3 + 24);
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *(v3 + 24);
      }

      *(v3 + 24) = 0;
    }
  }
}

uint64_t sub_100034FB4(char a1, uint64_t a2)
{
  *(v2 + 33) = a1;
  *(v2 + 32) = 0;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  return v2;
}

void *sub_100034FC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10004AE5C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_10004ADDC();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_10004AD7C();
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        sub_1000047A4();
        sub_100002D54(&qword_100064BE8, &qword_10004E120);
        swift_dynamicCast();
        sub_10004ADBC();
        v6 = _swiftEmptyArrayStorage[2];
        sub_10004ADEC();
        sub_10004ADFC();
        sub_10004ADCC();
      }

      while (v2 != v4);
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

id sub_100035110(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v6 = [objc_allocWithZone(UIImageView) init];
    v7 = [a2 backgroundView];
    sub_100002560(v6, 2);

    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1000351B4()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1000351DC()
{
  sub_1000351B4();

  return _swift_deallocClassInstance(v0, 34, 7);
}

uint64_t sub_100035234()
{
  v1 = *(v0 + 16);
  sub_100002D54(&qword_100064BE8, &qword_10004E120);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100035294()
{
  result = qword_100064BF0;
  if (!qword_100064BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064BF0);
  }

  return result;
}

BOOL sub_1000352E8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double sub_100035304()
{
  [v0 unlockProgress];
  v1 = sub_100049F3C();
  [v0 unlockProgress];
  v3 = v2;
  if ((v1 & 1) == 0)
  {
    sub_100049F3C();
    [v0 unlockProgress];
    return v4;
  }

  return v3;
}

double sub_100035390()
{
  [v0 linearBacklightProgress];
  v1 = sub_100049F3C();
  [v0 linearBacklightProgress];
  v3 = v2;
  if ((v1 & 1) == 0)
  {
    sub_100049F3C();
    [v0 linearBacklightProgress];
    return v4;
  }

  return v3;
}

uint64_t sub_10003541C(uint64_t a1)
{
  v2 = sub_100049BAC();
  v3 = sub_1000059BC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004A7EC();
  v11 = sub_1000059BC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v2);
  v18 = type metadata accessor for DynamicRotationState();
  v19 = *(a1 + v18[7]);
  v20 = *(a1 + v18[8]);
  v21 = *(a1 + v18[6]);
  sub_10004A7DC();
  sub_10004A7FC();
  return (*(v13 + 8))(v17, v10);
}

uint64_t sub_100035598@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = sub_10004A72C();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for TargetWindowSizeClass.maglev(_:);
  if (v3 != 1)
  {
    v6 = &enum case for TargetWindowSizeClass.poster(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

void sub_100035658(uint64_t a1@<X8>)
{
  v2 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15[-v4];
  swift_beginAccess();
  sub_1000139C8();
  v6 = type metadata accessor for PosterData(0);
  if (sub_100004288(v5, 1, v6) == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_100063460 != -1)
    {
      swift_once();
    }

    v11 = qword_1000682D0;
    v14._countAndFlagsBits = 0x800000010004F820;
    v19._object = 0x800000010004F7F0;
    v19._countAndFlagsBits = 0xD000000000000021;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v12.super.isa = v11;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v7 = sub_10004990C(v19, v20, v12, v21, v14);
    v8 = v13;

    sub_100038C6C(v5, type metadata accessor for PosterData);
    v10 = xmmword_10004E140;
    v9 = 1;
  }

  else
  {
    sub_10002CF38(*v5, 1, v16);
    v7 = v16[0];
    v8 = v16[1];
    v10 = v17;
    v9 = v18;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
}

id sub_100035854(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100049FCC();
  v6 = sub_1000059BC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100005A34();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  *&v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor] = 0;
  v17 = type metadata accessor for PosterData(0);
  sub_100013E80(v17);
  v18 = type metadata accessor for PosterAnimationViewModel();
  sub_100013E80(v18);
  v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_hasPosterDataUpdated] = 0;
  if (qword_100063490 != -1)
  {
    sub_100038CDC();
  }

  v19 = sub_100008F90(v5, qword_100068360);
  v20 = *(v8 + 16);
  v20(v16, v19, v5);
  v20(v13, v16, v5);
  if (a1)
  {
    v21 = type metadata accessor for VFXAnimation();
    sub_10001A0AC(v21);
    v22 = sub_10000AFA4(v13);
    v23 = &off_10005E690;
  }

  else
  {
    v24 = type metadata accessor for MicaAnimation();
    sub_10001A0AC(v24);
    v22 = sub_10003D3EC(v13);
    v23 = &off_10005F490;
  }

  v25 = &v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation];
  *v25 = v22;
  v25[1] = v23;
  v26 = objc_allocWithZone(type metadata accessor for PosterDataManager());
  *&v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager] = sub_100042BFC(1);
  v20(v13, v16, v5);
  v27 = type metadata accessor for PosterLabelManager();
  sub_10001A0AC(v27);
  *&v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_labelManager] = sub_1000393F8(v13);
  v1[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_deviceSupportsVFX] = a1 & 1;
  v28 = type metadata accessor for DynamicRotationManager();
  sub_10001A0AC(v28);
  v29 = sub_10002F6A0();
  (*(v8 + 8))(v16, v5);
  *&v2[OBJC_IVAR____TtC13WeatherPoster12PosterEditor_rotationManager] = v29;
  v31.receiver = v2;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, "init");
}

uint64_t sub_100035AEC(void *a1, void *a2)
{
  v76 = a2;
  v4 = sub_100049E9C();
  v5 = sub_1000059BC(v4);
  v73 = v6;
  v74 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v72 = v10 - v9;
  v11 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v11);
  v13 = *(v12 + 64);
  sub_100013ED4();
  __chkstk_darwin(v14);
  v75 = &v69 - v15;
  v16 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v16);
  v18 = *(v17 + 64);
  sub_100013ED4();
  __chkstk_darwin(v19);
  v21 = &v69 - v20;
  v22 = type metadata accessor for PosterData(0);
  v23 = sub_100005A24(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100005A34();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v77 = &v69 - v30;
  sub_100013EFC();
  __chkstk_darwin(v31);
  v33 = &v69 - v32;
  v34 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor);
  *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor) = a1;

  *(*(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_rotationManager) + OBJC_IVAR____TtC13WeatherPoster22DynamicRotationManager_delegate + 8) = &off_10005F3E8;
  swift_unknownObjectWeakAssign();
  sub_100002D54(&unk_100063E10, &qword_10004D0C0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10004CFA0;
  v36 = *(*(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation + 8) + 8);
  *(v35 + 32) = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation);
  *(v35 + 40) = v36;
  *(v35 + 48) = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_labelManager);
  *(v35 + 56) = &off_10005F460;
  v37 = a1;
  v38 = v76;
  swift_unknownObjectRetain();

  sub_10002D7A8(v35);
  v39 = v33;

  sub_10002D844([v38 deviceOrientation]);
  v40 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager);
  sub_1000425C8(v39);
  sub_100038CFC();
  sub_100038C14();
  sub_100038D5C(v21);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  if (qword_100063490 != -1)
  {
    sub_100038CDC();
  }

  v41 = sub_100049FCC();
  sub_100008F90(v41, qword_100068360);
  sub_100038D44();
  v42 = v77;
  sub_100038C14();
  sub_100038C14();
  swift_unknownObjectRetain();
  v43 = sub_100049FAC();
  v44 = sub_10004AB9C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v43, v44))
  {
    v70 = v44;
    v71 = v39;
    v45 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v78[0] = v69;
    *v45 = 136447235;
    [v38 deviceOrientation];
    v46 = sub_10001A1C4();
    v48 = sub_1000230EC(v46, v47, v78);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2160;
    v76 = v28;
    *(v45 + 14) = 1752392040;
    *(v45 + 22) = 2081;
    v49 = sub_100026D60();
    v51 = v50;
    sub_100038CC4();
    sub_100038C6C(v42, v52);
    v53 = sub_1000230EC(v49, v51, v78);

    *(v45 + 24) = v53;
    *(v45 + 32) = 2160;
    *(v45 + 34) = 1752392040;
    v55 = v75;
    v54 = v76;
    *(v45 + 42) = 2081;
    sub_100026C88(v55);
    v56 = type metadata accessor for PosterDataModel(0);
    if (sub_100004288(v55, 1, v56) == 1)
    {
      sub_10000591C(v55, &qword_100063DC0, &qword_10004E5C0);
      v57 = 0xE300000000000000;
      v58 = 7104878;
    }

    else
    {
      v61 = v72;
      v60 = v73;
      v62 = v74;
      (*(v73 + 16))(v72, v55 + *(v56 + 20), v74);
      sub_100038D2C();
      sub_100038C6C(v55, v63);
      v58 = sub_100049E4C();
      v57 = v64;
      (*(v60 + 8))(v61, v62);
      v54 = v76;
    }

    sub_100038CC4();
    sub_100038C6C(v54, v65);
    v66 = sub_1000230EC(v58, v57, v78);

    *(v45 + 44) = v66;
    _os_log_impl(&_mh_execute_header, v43, v70, "Did initialize; orientation=%{public}s, data=%{private,mask.hash}s, location=%{private,mask.hash}s", v45, 0x34u);
    swift_arrayDestroy();
    sub_100013F58();
    sub_100013F58();

    v39 = v71;
  }

  else
  {

    sub_100038D14();
    sub_100038C6C(v28, v59);
    sub_100038C6C(v42, v44);
  }

  *(v40 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = &off_10005F430;
  swift_unknownObjectWeakAssign();
  *(v40 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate + 8) = &off_10005F418;
  swift_unknownObjectWeakAssign();
  sub_100042830();
  sub_100038CC4();
  return sub_100038C6C(v39, v67);
}

void sub_10003619C(int a1, id a2, void *a3)
{
  v4 = v3;
  [a2 deviceOrientation];
  if (qword_100063490 != -1)
  {
    sub_100038CDC();
  }

  v7 = sub_100049FCC();
  sub_100008F90(v7, qword_100068360);
  v8 = sub_100049FAC();
  v9 = sub_10004AB9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = sub_10001A1C4();
    v14 = sub_1000230EC(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did update; orientation=%{public}s", v10, 0xCu);
    sub_100008FC8(v11);
    sub_100013F58();
    sub_100013F58();
  }

  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    v17 = *(v4 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_rotationManager);
    v18 = [a2 deviceOrientation];
    v19 = [a3 animationSettings];
    sub_10002DD38(v18, v19);
  }
}

double sub_100036438()
{
  if (qword_100063460 != -1)
  {
    swift_once();
  }

  v0 = qword_1000682D0;
  v11._countAndFlagsBits = 0x800000010004F8A0;
  v13._countAndFlagsBits = 0x72656874616557;
  v13._object = 0xE700000000000000;
  v14.value._countAndFlagsBits = 0;
  v14.value._object = 0;
  v1.super.isa = v0;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v2 = sub_10004990C(v13, v14, v1, v15, v11);
  v4 = v3;

  v5 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierSoft];
  v6 = [objc_opt_self() vibrantMaterialColor];
  v12[3] = sub_100013820(0, &qword_100064260, PRPosterColor_ptr);
  v12[0] = v6;
  v7 = objc_allocWithZone(PREditingLook);
  v8 = sub_100038974(0xD000000000000013, 0x800000010004F880, v2, v4, v5, v12);
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_10004D2F0;
  *(v9 + 32) = v8;
  return result;
}

id sub_100036674()
{
  v0 = [objc_allocWithZone(PREditorContentStylePickerConfiguration) init];
  [v0 setColorWellDisplayMode:1];
  sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10004E150;
  *(v1 + 32) = [objc_allocWithZone(PRPosterContentVibrantMaterialStyle) init];
  *(v1 + 40) = [objc_allocWithZone(PRPosterContentVibrantMonochromeStyle) init];
  v2 = objc_allocWithZone(PREditorContentStylePalette);
  v3 = sub_100038B0C(v1, 0, 0xE000000000000000);
  [v0 setStylePalette:v3];

  return v0;
}

uint64_t sub_1000367C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v5);
  v7 = *(v6 + 64);
  sub_100013ED4();
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for PosterAnimationViewModel();
  v12 = sub_100005A24(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_1000059D0();
  v17 = v16 - v15;
  sub_100035658(&v27);
  v18 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_labelManager);
  v19 = [a2 backgroundView];
  if (v28)
  {
    v31[0] = v27;
    v31[1] = v28;
    v32 = v29;
    v33 = v30;
    sub_10003948C(v31, v19);
  }

  else
  {
    sub_100039370();
  }

  sub_100036A2C(v3, &v27, a2, v17);
  sub_10000591C(&v27, &unk_100064CD0, &unk_10004E210);
  sub_100038C14();
  sub_100004544(v10, 0, 1, v11);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  v20 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation);
  v21 = *(v3 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 24);
  v24 = swift_unknownObjectRetain();
  v23(v24, &off_10005F400, ObjectType, v21);
  (*(v21 + 40))(v17, 0, ObjectType, v21);
  (*(v21 + 56))(ObjectType, v21);
  return sub_100038C6C(v17, type metadata accessor for PosterAnimationViewModel);
}

void sub_100036A2C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v133 = a4;
  v131 = *(a2 + 8);
  v5 = sub_100002D54(&qword_1000637A8, "4E");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v114 = &v103 - v7;
  v116 = sub_10004A8AC();
  v115 = *(v116 - 8);
  v8 = *(v115 + 64);
  __chkstk_darwin(v116);
  v122 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10004A69C();
  v123 = *(v129 - 8);
  v10 = *(v123 + 64);
  __chkstk_darwin(v129);
  v124 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100049D9C();
  v121 = *(v128 - 8);
  v12 = *(v121 + 64);
  __chkstk_darwin(v128);
  v126 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100049B7C();
  v120 = *(v127 - 8);
  v14 = *(v120 + 64);
  __chkstk_darwin(v127);
  v125 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002D54(&unk_100063DE0, "4E");
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v119 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v106 = &v103 - v20;
  v112 = sub_100049E9C();
  v111 = *(v112 - 8);
  v21 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100049C2C();
  v107 = *(v108 - 1);
  v23 = *(v107 + 64);
  __chkstk_darwin(v108);
  v109 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100049F2C();
  v113 = *(v118 - 8);
  v25 = *(v113 + 64);
  __chkstk_darwin(v118);
  v117 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PosterDataModel.DataPoint(0);
  v130 = *(v27 - 8);
  v28 = *(v130 + 64);
  __chkstk_darwin(v27);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PosterData(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v38 = &v103 - v37;
  v39 = type metadata accessor for PosterDataModel(0);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39);
  v43 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v103 - v44;
  v46 = OBJC_IVAR____TtC13WeatherPoster12PosterEditor_posterData;
  swift_beginAccess();
  if (sub_100004288(a1 + v46, 1, v31))
  {
    sub_100004544(v38, 1, 1, v39);
LABEL_4:
    sub_10000591C(v38, &qword_100063DC0, &qword_10004E5C0);
LABEL_5:
    v48 = v131;
    if (qword_100063498 != -1)
    {
      swift_once();
    }

    v49 = sub_100049FCC();
    sub_100008F90(v49, qword_100068378);
    v50 = sub_100049FAC();
    v51 = sub_10004AB9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67109120;
      *(v52 + 4) = v48 != 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Rendering default view model because the editor has no valid weather data; shouldShowAnimation=%{BOOL}d", v52, 8u);
    }

    v53 = v132;
    v54 = [v132 backgroundView];
    v55 = [v53 foregroundView];
    sub_1000050D8(v54, v55, v48 != 0, v133);

    return;
  }

  v47 = v130;
  v103 = v27;
  v105 = v45;
  v104 = v30;
  sub_100038C14();
  sub_100026C88(v38);
  sub_100038C6C(v34, type metadata accessor for PosterData);
  if (sub_100004288(v38, 1, v39) == 1)
  {
    goto LABEL_4;
  }

  v56 = v105;
  sub_100038BBC();
  if (!*(*(v56 + *(v39 + 40)) + 16))
  {
    sub_100038C6C(v56, type metadata accessor for PosterDataModel);
    goto LABEL_5;
  }

  v57 = v39;
  v58 = *(v47 + 80);
  v59 = *(v47 + 72);
  sub_100038C14();
  if (qword_100063490 != -1)
  {
    swift_once();
  }

  v60 = sub_100049FCC();
  sub_100008F90(v60, qword_100068360);
  v61 = v43;
  sub_100038C14();
  v62 = sub_100049FAC();
  v63 = sub_10004AB9C();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v112;
  if (v64)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v134 = v67;
    *v66 = 136446210;
    v68 = sub_10002A190();
    v70 = v69;
    sub_100038C6C(v61, type metadata accessor for PosterDataModel);
    v71 = sub_1000230EC(v68, v70, &v134);

    *(v66 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v62, v63, "Rendering poster; data=%{public}s", v66, 0xCu);
    sub_100008FC8(v67);
  }

  else
  {

    sub_100038C6C(v43, type metadata accessor for PosterDataModel);
  }

  v72 = v123;
  v74 = v127;
  v73 = v128;
  v75 = v121;
  v76 = v117;
  v77 = v105;
  (*(v107 + 16))(v109, &v105[v57[6]], v108);
  (*(v111 + 16))(v110, v77 + v57[5], v65);
  sub_10004AC9C();
  v78 = v106;
  sub_100004544(v106, 1, 1, v74);
  sub_100049EFC();
  v79 = v74;
  v80 = *(v120 + 16);
  v112 = v120 + 16;
  v131 = v80;
  v81 = v76;
  v82 = v104;
  v80(v125, v104, v79);
  v83 = v103;
  v84 = v103[5];
  v130 = *(v75 + 16);
  (v130)(v126, v82 + v84, v73);
  v85 = *(v82 + v83[6]);
  v86 = *(v82 + v83[7]);
  v87 = v83[8];
  v111 = *(v72 + 16);
  (v111)(v124, v82 + v87, v129);
  v88 = v57[7];
  sub_1000139C8();
  v89 = v57[8];
  sub_1000139C8();
  v90 = v83[9];
  v109 = *(v115 + 16);
  (v109)(v122, v82 + v90, v116);
  LODWORD(v110) = *(v82 + v83[10]);
  v91 = v77 + v57[9];
  v92 = v114;
  sub_1000139C8();
  v93 = v132;
  v108 = [v132 backgroundView];
  v132 = [v93 foregroundView];
  v94 = v113;
  v95 = v133;
  (*(v113 + 16))(v133, v81, v118);
  v96 = type metadata accessor for PosterAnimationViewModel();
  v131(v95 + v96[5], v125, v127);
  (v130)(v95 + v96[6], v126, v128);
  *(v95 + v96[7]) = v85;
  *(v95 + v96[8]) = v86;
  (v111)(v95 + v96[9], v124, v129);
  v97 = v96[10];
  sub_1000139C8();
  v98 = v96[11];
  v99 = v119;
  sub_1000139C8();
  v100 = v122;
  v101 = v116;
  (v109)(v95 + v96[12], v122, v116);
  *(v95 + v96[13]) = v110;
  v102 = v96[14];
  sub_1000139C8();
  *(v95 + v96[15]) = 1;
  *(v95 + v96[17]) = v108;
  *(v95 + v96[18]) = v132;
  sub_100035598(v95 + v96[16]);
  sub_10000591C(v92, &qword_1000637A8, "4E");
  (*(v115 + 8))(v100, v101);
  sub_10000591C(v99, &unk_100063DE0, "4E");
  sub_10000591C(v78, &unk_100063DE0, "4E");
  (*(v123 + 8))(v124, v129);
  (*(v121 + 8))(v126, v128);
  (*(v120 + 8))(v125, v127);
  (*(v94 + 8))(v117, v118);
  sub_100038C6C(v104, type metadata accessor for PosterDataModel.DataPoint);
  sub_100038C6C(v105, type metadata accessor for PosterDataModel);
}

void sub_100037A34(void *a1, uint64_t a2, void (**a3)(void))
{
  if (qword_100063490 != -1)
  {
    swift_once();
  }

  v6 = sub_100049FCC();
  sub_100008F90(v6, qword_100068360);
  v7 = sub_100049FAC();
  v8 = sub_10004AB9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Editor did finalize", v9, 2u);
  }

  *(*(a2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager) + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v10 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  isa = sub_10004AA9C().super.super.isa;
  v12 = sub_10004A95C();
  [v10 setObject:isa forUserInfoKey:v12];

  [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  swift_getObjectType();
  LOBYTE(isa) = sub_100019B58();
  swift_unknownObjectRelease();
  if ((isa & 1) == 0)
  {
    sub_100038F8C(1);
  }

  a3[2](a3);

  _Block_release(a3);
}

void sub_100037CDC()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  sub_100005A50(v2);
  v4 = *(v3 + 64);
  sub_100013ED4();
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  if (qword_100063490 != -1)
  {
    sub_100038CDC();
  }

  v8 = sub_100049FCC();
  sub_100008F90(v8, qword_100068360);
  v9 = sub_100049FAC();
  v10 = sub_10004AB9C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidated", v11, 2u);
    sub_100013F58();
  }

  v12 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_rotationManager);
  sub_10002DBA0();
  v13 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation);
  v14 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_animation + 8);
  ObjectType = swift_getObjectType();
  (*(v14 + 80))(1, ObjectType, v14);
  v16 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_labelManager);
  sub_1000391F0();
  v17 = *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor);
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor) = 0;

  v18 = type metadata accessor for PosterData(0);
  sub_100004544(v7, 1, 1, v18);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_hasPosterDataUpdated) = 0;
  *(*(v1 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_dataManager) + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_10004287C();
}

void sub_100037F4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100049E9C();
  v5 = sub_1000059BC(v4);
  v84 = v6;
  v85 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v83 = v10 - v9;
  v11 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  sub_100005A50(v11);
  v13 = *(v12 + 64);
  sub_100013ED4();
  __chkstk_darwin(v14);
  v87 = &v82 - v15;
  v16 = type metadata accessor for PosterData(0);
  v17 = sub_100005A24(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100005A34();
  v91 = v20 - v21;
  sub_100013EFC();
  __chkstk_darwin(v22);
  v88 = &v82 - v23;
  sub_100013EFC();
  __chkstk_darwin(v24);
  v26 = (&v82 - v25);
  v27 = (sub_100002D54(&qword_100063DC8, &qword_10004D0B0) - 8);
  v28 = *(*v27 + 64);
  sub_100013ED4();
  __chkstk_darwin(v29);
  v31 = (&v82 - v30);
  v32 = sub_100002D54(&unk_100063DD0, &unk_10004D100);
  v33 = sub_100005A50(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100005A34();
  v89 = v36 - v37;
  sub_100013EFC();
  v39 = __chkstk_darwin(v38);
  v41 = &v82 - v40;
  __chkstk_darwin(v39);
  v43 = &v82 - v42;
  *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_hasPosterDataUpdated) = 1;
  sub_100038CFC();
  v90 = a1;
  sub_100038C14();
  sub_100038D5C(v43);
  v44 = OBJC_IVAR____TtC13WeatherPoster12PosterEditor_posterData;
  swift_beginAccess();
  v45 = v27[14];
  sub_1000139C8();
  sub_1000139C8();
  sub_100013F08(v31);
  if (v46)
  {
    sub_10000591C(v43, &unk_100063DD0, &unk_10004D100);
    sub_100013F08(v31 + v45);
    if (v46)
    {
      sub_10000591C(v31, &unk_100063DD0, &unk_10004D100);
LABEL_17:
      if (qword_100063490 != -1)
      {
        sub_100038CDC();
      }

      v67 = sub_100049FCC();
      sub_100008F90(v67, qword_100068360);
      v68 = sub_100049FAC();
      v69 = sub_10004AB9C();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Poster data updated, but did not change", v70, 2u);
        sub_100013F58();
      }

      return;
    }

    goto LABEL_9;
  }

  sub_1000139C8();
  sub_100013F08(v31 + v45);
  if (v46)
  {
    sub_10000591C(v43, &unk_100063DD0, &unk_10004D100);
    sub_100038CC4();
    sub_100038C6C(v41, v47);
LABEL_9:
    sub_10000591C(v31, &qword_100063DC8, &qword_10004D0B0);
    goto LABEL_10;
  }

  sub_100038BBC();
  v66 = sub_10002A500(v41, v26);
  sub_100038C6C(v26, type metadata accessor for PosterData);
  sub_10000591C(v43, &unk_100063DD0, &unk_10004D100);
  sub_100038C6C(v41, type metadata accessor for PosterData);
  sub_10000591C(v31, &unk_100063DD0, &unk_10004D100);
  if (v66)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (qword_100063490 != -1)
  {
    sub_100038CDC();
  }

  v48 = sub_100049FCC();
  sub_100008F90(v48, qword_100068360);
  sub_100038D44();
  v49 = v88;
  sub_100038C14();
  v50 = v91;
  sub_100038C14();
  v51 = sub_100049FAC();
  LODWORD(v52) = sub_10004AB9C();
  v53 = os_log_type_enabled(v51, v52);
  v86 = v44;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v92[0] = v82;
    *v54 = 136446723;
    v55 = sub_100026D60();
    v57 = v56;
    sub_100038CC4();
    sub_100038C6C(v58, v59);
    v60 = sub_1000230EC(v55, v57, v92);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2160;
    *(v54 + 14) = 1752392040;
    *(v54 + 22) = 2081;
    v61 = v87;
    sub_100026C88(v87);
    v62 = type metadata accessor for PosterDataModel(0);
    if (sub_100004288(v61, 1, v62) == 1)
    {
      sub_10000591C(v61, &qword_100063DC0, &qword_10004E5C0);
      v63 = 0xE300000000000000;
      v64 = 7104878;
    }

    else
    {
      v72 = v84;
      v71 = v85;
      v73 = *(v84 + 16);
      v74 = v61 + *(v62 + 20);
      LODWORD(v88) = v52;
      v52 = v83;
      v73(v83, v74, v85);
      sub_100038D2C();
      sub_100038C6C(v61, v75);
      v64 = sub_100049E4C();
      v63 = v76;
      v77 = v52;
      LOBYTE(v52) = v88;
      (*(v72 + 8))(v77, v71);
      v50 = v91;
    }

    sub_100038CC4();
    sub_100038C6C(v50, v78);
    v79 = sub_1000230EC(v64, v63, v92);

    *(v54 + 24) = v79;
    _os_log_impl(&_mh_execute_header, v51, v52, "Updating looks to reflect latest data; data=%{public}s, location=%{private,mask.hash}s", v54, 0x20u);
    swift_arrayDestroy();
    sub_100013F58();
    sub_100013F58();
  }

  else
  {

    sub_100038D14();
    sub_100038C6C(v50, v65);
    sub_100038C6C(v49, v31);
  }

  sub_100038CFC();
  v80 = v89;
  sub_100038C14();
  sub_100038D5C(v80);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  v81 = *(v2 + OBJC_IVAR____TtC13WeatherPoster12PosterEditor_editor);
  if (v81)
  {
    [v81 updateLooks];
  }
}

uint64_t type metadata accessor for PosterEditor()
{
  result = qword_100064CC0;
  if (!qword_100064CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038828()
{
  sub_100016CAC(319, &qword_100063DB0, type metadata accessor for PosterData);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100016CAC(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_100038974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = sub_10004A95C();

  v10 = sub_10004A95C();

  v11 = a6[3];
  if (v11)
  {
    v12 = sub_10002B4C4(a6, a6[3]);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16);
    v17 = sub_10004AF2C();
    (*(v13 + 8))(v16, v11);
    sub_100008FC8(a6);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithIdentifier:v9 displayName:v10 initialTimeFontConfiguration:a5 initialTitleColor:v17];

  swift_unknownObjectRelease();
  return v18;
}

id sub_100038B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002D54(&qword_100064CE0, &qword_10004E220);
  v5.super.isa = sub_10004AA4C().super.isa;

  if (a3)
  {
    v6 = sub_10004A95C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithContentStyles:v5.super.isa localizedName:v6];

  return v7;
}

uint64_t sub_100038BBC()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 32);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

uint64_t sub_100038C14()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 16);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

uint64_t sub_100038C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100005A24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100038CDC()
{

  return swift_once();
}

uint64_t sub_100038D5C(uint64_t a1)
{

  return sub_100004544(a1, 0, 1, v1);
}

double sub_100038D88()
{
  sub_100039068();
  if (v0 <= 0.0)
  {
    if (sub_1000390F0())
    {
      if (qword_100063480 != -1)
      {
        sub_100039168();
      }

      v12 = sub_100049FCC();
      sub_100008F90(v12, qword_100068330);
      v13 = sub_100049FAC();
      v14 = sub_10004AB9C();
      if (sub_1000391B4(v14))
      {
        *swift_slowAlloc() = 0;
        sub_100039188();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        sub_100039198();
      }

      sub_100038F8C(0);
      return 2.6;
    }

    else
    {
      if (qword_100063480 != -1)
      {
        sub_100039168();
      }

      v20 = sub_100049FCC();
      sub_100008F90(v20, qword_100068330);
      v21 = sub_100049FAC();
      v22 = sub_10004AB9C();
      if (sub_1000391B4(v22))
      {
        *swift_slowAlloc() = 0;
        sub_100039188();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        sub_100039198();
      }

      return 1.1;
    }
  }

  else
  {
    if (qword_100063480 != -1)
    {
      sub_100039168();
    }

    v1 = sub_100049FCC();
    sub_100008F90(v1, qword_100068330);
    v2 = sub_100049FAC();
    v3 = sub_10004AB9C();
    if (sub_1000391B4(v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349056;
      sub_100039068();
      *(v4 + 4) = v5;
      sub_100039188();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
      sub_100039198();
    }

    sub_100039068();
  }

  return result;
}

void sub_100038F8C(char a1)
{
  sub_10001C9A4();
  v2 = sub_10004ABAC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000391D0();
    [v3 setBool:a1 & 1 forKey:v4];
  }
}

id sub_10003901C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_100068300 = result;
  return result;
}

void sub_100039068()
{
  sub_10001C9A4();
  v0 = sub_10004ABAC();
  if (v0)
  {
    v1 = v0;
    v2 = sub_10004A95C();
    [v1 doubleForKey:v2];
  }
}

id sub_1000390F0()
{
  sub_10001C9A4();
  v0 = sub_10004ABAC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1000391D0();
  v3 = [v1 BOOLForKey:v2];

  return v3;
}

uint64_t sub_100039168()
{

  return swift_once();
}

uint64_t sub_100039198()
{
}

BOOL sub_1000391B4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

NSString sub_1000391D0()
{

  return sub_10004A95C();
}

uint64_t sub_1000391F0()
{
  v1 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  sub_100039370();
  v5 = type metadata accessor for DynamicRotationState();
  sub_100004544(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  swift_beginAccess();
  sub_100024F7C(v4, v0 + v6);
  result = swift_endAccess();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

void sub_1000392BC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7[0] = *a1;
    v7[1] = v4;
    v8 = *(a1 + 16);
    v9 = *(a1 + 32);
    sub_10003948C(v7, a2);
    if (a3 != 3)
    {

      sub_1000393C4(*&a4);
    }
  }

  else
  {

    sub_100039370();
  }
}

void sub_100039370()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 removeFromSuperview];
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 24) = 0;

  v3 = *(v0 + 16);
  *(v0 + 16) = 0;
}

id sub_1000393C4(double a1)
{
  result = *(v1 + 16);
  if (result)
  {
    v3 = a1 * 6.66666667;
    if (v3 > 1.0)
    {
      v3 = 1.0;
    }

    return [result setAlpha:1.0 - v3];
  }

  return result;
}

uint64_t sub_1000393F8(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  v4 = type metadata accessor for DynamicRotationState();
  sub_100004544(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_logger;
  v6 = sub_100049FCC();
  sub_100005A24(v6);
  (*(v7 + 32))(v1 + v5, a1);
  return v1;
}

void sub_10003948C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v56 = sub_10002D164();
    v5 = [objc_opt_self() tertiaryLabelColor];
    v6 = sub_10003A130(v2, v4);
    v7 = sub_10003A29C(v2, v6, a1, v5);
    [v7 setFont:v56];
    [v7 setTextColor:v5];

    sub_10003A69C();
    if (*(a1 + 32))
    {
      v8 = v7;
      v9 = [v8 widthAnchor];
      v10 = [v6 widthAnchor];
      v11 = [v9 constraintLessThanOrEqualToAnchor:v10 multiplier:0.35];

      v12 = *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint];
      *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint] = v11;

      v13 = [v8 widthAnchor];
      v14 = [v6 widthAnchor];
      v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:-32.0];

      v16 = *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint];
      *&v8[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint] = v15;

      v17 = objc_opt_self();
      sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10004E150;
      v19 = [v8 centerXAnchor];
      v20 = [v6 centerXAnchor];
      v21 = sub_10003B1AC();
      v23 = [v21 v22];

      *(v18 + 32) = v23;
      v24 = [v8 bottomAnchor];

      v25 = [v6 safeAreaLayoutGuide];
      v26 = [v25 bottomAnchor];

      v27 = [v24 constraintLessThanOrEqualToAnchor:v26 constant:-50.0];
      *(v18 + 40) = v27;
      sub_100013820(0, &qword_1000634E8, NSLayoutConstraint_ptr);
      isa = sub_10004AA4C().super.isa;

      [v17 activateConstraints:isa];

      sub_10003A924();
    }

    else
    {
      v35 = *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint];
      *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint] = 0;

      v36 = *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint];
      *&v7[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint] = 0;

      v37 = objc_opt_self();
      sub_100002D54(&qword_1000634E0, &qword_10004C3C0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_10004C280;
      v39 = v7;
      v40 = [v39 centerXAnchor];
      v41 = [v6 centerXAnchor];
      v42 = sub_10003B1AC();
      v44 = [v42 v43];

      *(v38 + 32) = v44;
      v45 = [v39 centerYAnchor];
      v46 = [v6 centerYAnchor];
      v47 = sub_10003B1AC();
      v49 = [v47 v48];

      *(v38 + 40) = v49;
      v50 = [v39 widthAnchor];

      v51 = [v6 widthAnchor];
      v52 = sub_10003B1AC();
      v54 = [v52 v53];

      *(v38 + 48) = v54;
      sub_100013820(0, &qword_1000634E8, NSLayoutConstraint_ptr);
      v55 = sub_10004AA4C().super.isa;

      [v37 activateConstraints:v55];
    }
  }

  else
  {
    v29 = *a1;
    v30 = *(a1 + 8);
    v58 = *(a1 + 16);

    sub_10003B0A4(&v58, v57);
    v31 = sub_100049FAC();
    v32 = sub_10004AB7C();

    sub_10003B100(&v58);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1000230EC(v29, v30, v57);
      _os_log_impl(&_mh_execute_header, v31, v32, "No parent view exists to add label; skipping showing message=%s", v33, 0xCu);
      sub_100008FC8(v34);
    }
  }
}

void sub_100039AEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v59 = &v54[-v6];
  v7 = sub_100049BAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v56 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100002D54(&qword_100064E28, &qword_10004E308);
  v12 = sub_100005A24(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v54[-v15];
  v17 = type metadata accessor for DynamicRotationState();
  v18 = sub_100005A24(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_100002D54(&qword_100064E30, &unk_10004E310);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v57 = &v54[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v29 = &v54[-v28];
  __chkstk_darwin(v27);
  v31 = &v54[-v30];
  v58 = v8;
  v32 = *(v8 + 16);
  *&v61 = a1;
  v32(&v54[-v30], a1, v7);
  v33 = 1;
  sub_100004544(v31, 0, 1, v7);
  v34 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  swift_beginAccess();
  *&v60 = v17;
  if (!sub_100004288(v2 + v34, 1, v17))
  {
    sub_100024F18(v2 + v34, v22);
    (*(v58 + 32))(v29, v22, v7);
    v33 = 0;
  }

  sub_100004544(v29, v33, 1, v7);
  v35 = *(v11 + 48);
  sub_1000058BC(v31, v16, &qword_100064E30, &unk_10004E310);
  sub_1000058BC(v29, &v16[v35], &qword_100064E30, &unk_10004E310);
  sub_1000059E0(v16);
  if (v38)
  {
    sub_10003B1B8(v29);
    sub_10003B1B8(v31);
    sub_1000059E0(&v16[v35]);
    if (v38)
    {
      sub_10000591C(v16, &qword_100064E30, &unk_10004E310);
      v36 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v37 = v57;
    sub_1000058BC(v16, v57, &qword_100064E30, &unk_10004E310);
    sub_1000059E0(&v16[v35]);
    if (!v38)
    {
      v39 = v58;
      v40 = v56;
      (*(v58 + 32))(v56, &v16[v35], v7);
      sub_10003B154();
      v55 = sub_10004A94C();
      v41 = *(v39 + 8);
      v41(v40, v7);
      sub_10000591C(v29, &qword_100064E30, &unk_10004E310);
      sub_10000591C(v31, &qword_100064E30, &unk_10004E310);
      v41(v57, v7);
      v36 = v55;
      sub_10000591C(v16, &qword_100064E30, &unk_10004E310);
      goto LABEL_12;
    }

    sub_10003B1B8(v29);
    sub_10003B1B8(v31);
    (*(v58 + 8))(v37, v7);
  }

  sub_10000591C(v16, &qword_100064E28, &qword_10004E308);
  v36 = 0;
LABEL_12:
  v42 = v61;
  v43 = v59;
  sub_100024F18(v61, v59);
  v44 = v60;
  sub_100004544(v43, 0, 1, v60);
  swift_beginAccess();
  sub_100024F7C(v43, v2 + v34);
  swift_endAccess();
  v45 = *(v2 + 3);
  if (v45)
  {
    v46 = v45;
    v47 = [v46 superview];
    if (v47)
    {
      v48 = v47;
      [v47 frame];

      if ((v36 & 1) == 0 || v2[4] == 0.0 && v2[5] == 0.0)
      {
        [v46 bounds];
        *(v2 + 4) = v49;
        *(v2 + 5) = v50;
      }

      sub_10003433C(*(v42 + v44[8]));
      v51 = *(v42 + v44[6]);
      CGAffineTransformMakeRotation(&v62, ((*(v42 + v44[5]) * 3.1416) / 180.0));
      tx = v62.tx;
      ty = v62.ty;
      v60 = *&v62.c;
      v61 = *&v62.a;
      [v46 bounds];
      [v46 setBounds:?];
      *&v62.a = v61;
      *&v62.c = v60;
      v62.tx = tx;
      v62.ty = ty;
      [v46 setTransform:&v62];
    }
  }
}

id sub_10003A130(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 superview];
    if (v6)
    {
      v7 = v6;
      sub_100013820(0, &qword_100063830, UIView_ptr);
      v8 = a2;
      v9 = sub_10004ACBC();

      if (v9)
      {
        return v5;
      }
    }
  }

  v11 = [objc_allocWithZone(UIView) init];
  [a2 bounds];
  [v11 setFrame:?];
  v12 = [v11 layer];
  [v12 setZPosition:4.0];

  v13 = [v11 layer];
  [v13 setAllowsGroupBlending:0];

  [a2 addSubview:v11];
  v14 = *(a1 + 24);
  *(a1 + 24) = v11;
  v15 = v11;

  return v15;
}

char *sub_10003A29C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for DynamicRotationState();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v45 = v12;
    v17 = v15;
    v18 = a2;
    v19 = v16;
    v20 = [v19 superview];
    if (v20)
    {
      v21 = v20;
      sub_100013820(0, &qword_100063830, UIView_ptr);
      v22 = v18;
      v23 = sub_10004ACBC();

      if (v23)
      {
        v25 = *(a3 + 16);
        v46[0] = *a3;
        v24 = v46[0];
        v48 = v25;
        v26 = &v19[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model];
        v27 = *&v19[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model + 8];
        v28 = *&v19[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model + 24];
        v26[32] = *(a3 + 32);
        *v26 = v24;
        *(v26 + 1) = v25;
        sub_10003B0A4(v46, &v47);
        sub_10003B0A4(&v48, &v47);

        v29 = *&v19[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color];
        *&v19[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color] = a4;
        v30 = a4;

        return v19;
      }
    }

    a2 = v18;
    v15 = v17;
    v12 = v45;
  }

  v31 = *a3;
  v47 = *(a3 + 16);
  v48 = v31;
  v32 = objc_allocWithZone(type metadata accessor for PosterLabel());
  v33 = a4;
  sub_10003B0A4(&v48, v46);
  sub_10003B0A4(&v47, v46);
  v34 = sub_10003AC28(a3, v33);
  [v34 setTextAlignment:1];
  [v34 setNumberOfLines:0];
  v35 = v34;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = [v35 layer];
  v37 = sub_10004A95C();
  [v36 setCompositingFilter:v37];

  [v35 setOverrideUserInterfaceStyle:2];
  [v35 setAdjustsFontForContentSizeCategory:1];

  LODWORD(v38) = 1148846080;
  [v35 setContentCompressionResistancePriority:1 forAxis:v38];
  [a2 addSubview:v35];
  v39 = *(a1 + 16);
  *(a1 + 16) = v35;
  v19 = v35;

  v40 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState;
  swift_beginAccess();
  sub_1000058BC(a1 + v40, v11, &qword_100063C18, &qword_10004E300);
  if (sub_100004288(v11, 1, v12) == 1)
  {
    sub_10000591C(v11, &qword_100063C18, &qword_10004E300);
  }

  else
  {
    sub_100025184(v11, v15);
    v41 = [objc_opt_self() currentDevice];
    v42 = [v41 userInterfaceIdiom];

    if (v42 == 1)
    {
      sub_100039AEC(v15);
    }

    sub_1000251E8(v15);
  }

  return v19;
}

void sub_10003A69C()
{
  v1 = v0;
  v2 = [v0 font];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() configurationWithFont:v2];

    sub_100013820(0, &qword_100064B20, UIImage_ptr);
    v5 = &v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model];
    v6 = *&v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model + 16];
    v7 = *&v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model + 24];

    v8 = v4;
    v9 = sub_10003AD74(v6, v7, v4);
    v10 = [objc_allocWithZone(NSTextAttachment) init];
    if (v9)
    {
      v11 = [v9 imageWithTintColor:*&v1[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color]];
    }

    else
    {
      v11 = 0;
    }

    [v10 setImage:v11];

    sub_100013820(0, &qword_100064E18, NSMutableAttributedString_ptr);
    v17 = sub_10003ADE4();
    v12 = [objc_opt_self() attributedStringWithAttachment:v10];
    [v17 appendAttributedString:v12];

    if (v5[32])
    {
      v13 = 10;
    }

    else
    {
      v13 = 32;
    }

    sub_100013820(0, &qword_100064E20, NSAttributedString_ptr);
    v19._countAndFlagsBits = v13;
    v19._object = 0xE100000000000000;
    sub_10004A9DC(v19);

    v14 = *v5;
    v15 = *(v5 + 1);

    v20._countAndFlagsBits = v14;
    v20._object = v15;
    sub_10004A9DC(v20);

    v16 = sub_10003ADE4();
    [v17 appendAttributedString:v16];

    [v1 setAttributedText:v17];
  }

  else
  {
    __break(1u);
  }
}

id sub_10003A924()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_10004AC4C();
  v4 = *&v0[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint];
  if (v3)
  {
    if (v4)
    {
      [v4 setActive:1];
    }
  }

  else if (v4)
  {
    [v4 setActive:0];
  }

  result = *&v0[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint];
  if (result)
  {

    return [result setActive:(v3 & 1) == 0];
  }

  return result;
}

uint64_t sub_10003AA0C()
{
  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_rotationState, &qword_100063C18, &qword_10004E300);
  v1 = OBJC_IVAR____TtC13WeatherPoster18PosterLabelManager_logger;
  v2 = sub_100049FCC();
  sub_100005A24(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_10003AA94()
{
  sub_10003AA0C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PosterLabelManager()
{
  result = qword_100064D28;
  if (!qword_100064D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003AB40()
{
  sub_100024EBC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_100049FCC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_10003AC28(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint] = 0;
  v6 = &v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_model];
  v7 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 1) = v7;
  v6[32] = *(a1 + 32);
  *&v2[OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_color] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

void sub_10003ACC8()
{
  *(v0 + OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_smallTypeWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC13WeatherPosterP33_A76A6EA094F378CBF19696357987AB1611PosterLabel_largeTypeWidthConstraint) = 0;
  sub_10004AE3C();
  __break(1u);
}

id sub_10003AD74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10004A95C();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id sub_10003ADE4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10004A95C();

  v2 = [v0 initWithString:v1];

  return v2;
}

id sub_10003AE58()
{
  ObjectType = swift_getObjectType();
  sub_10003A924();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "updateConstraints");
}

id sub_10003AEE8(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", a1);
  sub_10003A69C();
  return [v1 setNeedsUpdateConstraints];
}

unint64_t sub_10003B154()
{
  result = qword_100064E38;
  if (!qword_100064E38)
  {
    sub_100049BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064E38);
  }

  return result;
}

uint64_t sub_10003B1B8(uint64_t a1)
{

  return sub_10000591C(a1, v1, v2);
}

uint64_t sub_10003B1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049BAC();

  return sub_100004288(a1, a2, v4);
}

uint64_t sub_10003B240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049BAC();

  return sub_100004544(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DynamicRotationState()
{
  result = qword_100064E98;
  if (!qword_100064E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B2D8()
{
  sub_100049BAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003B36C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100049BAC();
  v250 = *(v5 - 8);
  v6 = *(v250 + 64);
  __chkstk_darwin(v5);
  sub_10003D33C();
  sub_10003D350(v7);
  v248 = type metadata accessor for DynamicRotationState();
  v8 = sub_100005A24(v248);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10003D33C();
  sub_10003D360(v11);
  v12 = sub_100002D54(&qword_100063C90, &unk_10004E3A0);
  sub_100005A50(v12);
  v14 = *(v13 + 64);
  sub_100013ED4();
  __chkstk_darwin(v15);
  sub_100013F88();
  sub_10003D350(v16);
  v17 = sub_10004A45C();
  v18 = sub_10003D324(v17, &v301);
  v275 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10003D33C();
  sub_10003D350(v22);
  v23 = sub_10004A72C();
  v24 = sub_10003D324(v23, v299);
  v272 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_10003D33C();
  sub_10003D350(v28);
  v29 = sub_10004A1BC();
  v30 = sub_10003D324(v29, &v298);
  v269 = v31;
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  sub_10003D33C();
  sub_10003D350(v34);
  v35 = sub_10004A38C();
  v36 = sub_10003D324(v35, v295);
  v267 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_10003D33C();
  sub_10003D360(v40);
  v41 = sub_100002D54(&qword_1000637A8, "4E");
  sub_100005A50(v41);
  v43 = *(v42 + 64);
  sub_100013ED4();
  __chkstk_darwin(v44);
  sub_100013F88();
  sub_10003D350(v45);
  v46 = sub_100049C2C();
  v47 = sub_100005A50(v46);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  sub_10003D33C();
  sub_10003D360(v50);
  v51 = sub_100002D54(&unk_100063DE0, "4E");
  v52 = sub_100005A50(v51);
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52);
  v266 = v241 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  sub_10003D350(v241 - v57);
  v58 = sub_100049B7C();
  v59 = sub_10003D324(v58, &v288);
  v260 = v60;
  v62 = *(v61 + 64);
  __chkstk_darwin(v59);
  sub_10003D33C();
  v287 = v63;
  v64 = sub_100002D54(&qword_100063970, &unk_10004CC60);
  sub_100005A50(v64);
  v66 = *(v65 + 64);
  sub_100013ED4();
  __chkstk_darwin(v67);
  sub_100013F88();
  v286 = v68;
  sub_100005A44();
  v69 = sub_10004A48C();
  v70 = sub_10003D324(v69, &v291);
  v263 = v71;
  v73 = *(v72 + 64);
  __chkstk_darwin(v70);
  sub_10003D33C();
  sub_10003D360(v74);
  v75 = sub_100002D54(&qword_100064B10, &unk_10004E3B0);
  sub_100005A50(v75);
  v77 = *(v76 + 64);
  sub_100013ED4();
  __chkstk_darwin(v78);
  sub_100013F88();
  sub_10003D350(v79);
  v80 = sub_10004A69C();
  v81 = sub_10003D324(v80, &v305);
  v259 = v82;
  v84 = *(v83 + 64);
  __chkstk_darwin(v81);
  sub_10003D33C();
  v285 = v85;
  sub_100005A44();
  v86 = sub_10004A2EC();
  v87 = sub_10003D324(v86, &v284);
  v256 = v88;
  v90 = *(v89 + 64);
  __chkstk_darwin(v87);
  sub_10003D33C();
  sub_10003D350(v91);
  v92 = sub_10004A8AC();
  v93 = sub_10003D324(v92, &v304);
  v289 = v94;
  v96 = *(v95 + 64);
  __chkstk_darwin(v93);
  sub_10003D33C();
  v290 = v97;
  sub_100005A44();
  v98 = sub_100049D9C();
  v99 = sub_10003D324(v98, &v303);
  v255 = v100;
  v102 = *(v101 + 64);
  __chkstk_darwin(v99);
  sub_10003D33C();
  v284 = v103;
  sub_100005A44();
  v104 = sub_10004A2FC();
  v105 = sub_10003D324(v104, &v281);
  v253 = v106;
  v108 = *(v107 + 64);
  __chkstk_darwin(v105);
  sub_10003D33C();
  sub_10003D350(v109);
  v110 = sub_10004A71C();
  v111 = sub_10003D324(v110, &v302);
  v278 = v112;
  v114 = *(v113 + 64);
  __chkstk_darwin(v111);
  sub_10003D33C();
  v288 = v115;
  sub_100005A44();
  v116 = type metadata accessor for PosterAnimationViewModel();
  v117 = sub_100005A24(v116);
  v119 = *(v118 + 64);
  __chkstk_darwin(v117);
  sub_10003D33C();
  sub_10003D360(v120);
  v121 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  sub_100005A24(v121);
  v123 = *(v122 + 64);
  sub_100013ED4();
  __chkstk_darwin(v124);
  v126 = v241 - v125;
  v127 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v128 = sub_100005A50(v127);
  v130 = *(v129 + 64);
  v131 = __chkstk_darwin(v128);
  v133 = v241 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __chkstk_darwin(v131);
  v136 = v241 - v135;
  __chkstk_darwin(v134);
  v138 = v241 - v137;
  v139 = v116[17];
  v292 = a1;
  v140 = *(a1 + v139);
  if (!v140)
  {
    v293 = sub_100049FAC();
    v146 = sub_10004AB9C();
    if (os_log_type_enabled(v293, v146))
    {
      v147 = sub_100014030();
      v148 = swift_slowAlloc();
      v298 = v148;
      *v147 = 136446210;
      v149 = sub_100031CD8(a2);
      v151 = sub_1000230EC(v149, v150, &v298);

      *(v147 + 4) = v151;
      _os_log_impl(&_mh_execute_header, v293, v146, "Skipping creating snapshot for model because parent view does not exist for kind=%{public}s", v147, 0xCu);
      sub_100008FC8(v148);
      sub_100013F58();
      sub_100013F58();
    }

    else
    {
      v152 = v293;
    }

    return;
  }

  v244 = v5;
  v293 = v2;
  v291 = a2;
  v141 = objc_opt_self();
  v142 = v140;
  v245 = v141;
  v143 = [v141 currentDevice];
  v144 = [v143 userInterfaceIdiom];

  v280 = v142;
  if (v144 == 1)
  {
    v145 = (*(&v293[1].isa + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind) & 1) != 0 || *(&v293->isa + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind) != v291;
    LODWORD(v246) = v145;
  }

  else
  {
    LODWORD(v246) = 0;
  }

  sub_10003D204(v292, v138);
  sub_100004544(v138, 0, 1, v116);
  v153 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel;
  v154 = v293;
  swift_beginAccess();
  v155 = *(v121 + 48);
  sub_1000058BC(v138, v126, &unk_100063DF0, &qword_10004CF28);
  sub_1000058BC(v154 + v153, &v126[v155], &unk_100063DF0, &qword_10004CF28);
  sub_10003D3CC(v126);
  if (v158)
  {
    sub_10000591C(v138, &unk_100063DF0, &qword_10004CF28);
    sub_10003D3CC(&v126[v155]);
    if (v158)
    {
      sub_10000591C(v126, &unk_100063DF0, &qword_10004CF28);
      v156 = v291;
      v157 = v293;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_1000058BC(v126, v136, &unk_100063DF0, &qword_10004CF28);
  sub_10003D3CC(&v126[v155]);
  if (v158)
  {
    sub_10000591C(v138, &unk_100063DF0, &qword_10004CF28);
    sub_10003D268(v136, type metadata accessor for PosterAnimationViewModel);
LABEL_21:
    sub_10000591C(v126, &qword_100063C80, &qword_10004CF50);
    v156 = v291;
    v157 = v293;
    goto LABEL_24;
  }

  v159 = v251;
  sub_10003D2C0(&v126[v155], v251);
  v160 = sub_1000047E8(v136, v159);
  sub_10003D268(v159, type metadata accessor for PosterAnimationViewModel);
  sub_10000591C(v138, &unk_100063DF0, &qword_10004CF28);
  sub_10003D268(v136, type metadata accessor for PosterAnimationViewModel);
  sub_10000591C(v126, &unk_100063DF0, &qword_10004CF28);
  v156 = v291;
  v157 = v293;
  if (v160)
  {
LABEL_23:
    if (!((*(&v157->isa + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView) == 0) | v246 & 1))
    {
      v208 = v157 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
      v209 = sub_100049FAC();
      v210 = sub_10004AB9C();
      if (os_log_type_enabled(v209, v210))
      {
        sub_100014030();
        v211 = sub_10003D3A4();
        v296 = v211;
        *v208 = 136446210;
        v212 = sub_100031CD8(v156);
        v214 = sub_1000230EC(v212, v213, &v296);

        *(v208 + 4) = v214;
        sub_10003D388(&_mh_execute_header, v215, v210, "Skipping creating snapshot for model because we already have a snapshot for kind=%{public}s");
        sub_100008FC8(v211);
        sub_100013F58();
        sub_100013F58();
      }

      return;
    }
  }

LABEL_24:
  sub_10003D204(v292, v133);
  sub_100004544(v133, 0, 1, v116);
  swift_beginAccess();
  sub_10003D194(v133, v157 + v153);
  swift_endAccess();
  v161 = v157 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind;
  *v161 = v156;
  v161[8] = 0;
  if (qword_100063478 != -1)
  {
    swift_once();
  }

  v162 = *sub_10002B4C4(qword_100064EE0, qword_100064EF8);
  v163 = sub_100032634(v156);
  if (!v163)
  {
    isa = v157[2].isa;
    v246 = v116[6];
    v243 = *(v255 + 2);
    v174 = v292;
    v175 = v284;
    v243(v284, v292 + v246, v281);
    v251 = v116[12];
    v176 = *(v289 + 16);
    v289 += 16;
    v255 = v176;
    v176(v290, v174 + v251, v282);
    v241[1] = *(v174 + v116[13]);
    v177 = enum case for WeatherConditionGradientModel.AnimationContext.vfx(_:);
    v178 = sub_10004A2DC();
    sub_100005A24(v178);
    v180 = v258;
    (*(v179 + 104))(v258, v177);
    sub_10003D3C0(&v283);
    v181(v180);
    v182 = v116[8];
    v257 = v116[9];
    v183 = *(v174 + v182);
    v256 = *(v259 + 2);
    v184 = v285;
    v256(v285, v174 + v257, v283);
    v185 = v252;
    sub_10004A2CC();
    sub_10004A35C();
    (*(v253 + 8))(v185, v254);
    v259 = v157[3].isa;
    v243(v175, v174 + v246, v281);
    v186 = *(v174 + v116[7]);
    v187 = [objc_opt_self() milesPerHour];
    sub_100013820(0, &qword_100063C98, NSUnitSpeed_ptr);
    sub_1000498DC();
    v256(v184, v174 + v257, v283);
    v255(v290, v174 + v251, v282);
    (*(v260 + 16))(v287, v174 + v116[5], v261);
    sub_1000058BC(v174 + v116[10], v265, &unk_100063DE0, "4E");
    sub_1000058BC(v174 + v116[11], v266, &unk_100063DE0, "4E");
    sub_100049F0C();
    sub_1000058BC(v174 + v116[14], v268, &qword_1000637A8, "4E");
    sub_10003D3C0(v294);
    v188(v270);
    sub_10003D3C0(v297);
    v189(v271);
    (*(v272 + 16))(v274, v174 + v116[16], v273);
    sub_10003D3C0(&v300);
    v190(v276);
    v191 = sub_10004A6EC();
    sub_100004544(v277, 1, 1, v191);
    v192 = v262;
    v193 = v291;
    v194 = v288;
    sub_10004A47C();
    v195 = v279;
    sub_10004A49C();
    (*(v263 + 8))(v192, v264);
    v196 = *sub_10002B4C4(qword_100064EE0, qword_100064EF8);
    v197 = sub_100032B24(v195, v194, v193);
    if (v197)
    {
      v198 = v197;
      v199 = sub_100049FAC();
      v200 = sub_10004AB9C();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = sub_100014030();
        v202 = swift_slowAlloc();
        v296 = v202;
        *v201 = 136446210;
        v203 = sub_100031CD8(v193);
        v205 = sub_1000230EC(v203, v204, &v296);

        *(v201 + 4) = v205;
        _os_log_impl(&_mh_execute_header, v199, v200, "Adding snapshot to view for kind=%{public}s", v201, 0xCu);
        sub_100008FC8(v202);
        sub_100013F58();
        sub_100013F58();
      }

      v206 = v280;
      sub_10003CCF4(v198, v193, v280);
      v207 = *sub_10002B4C4(qword_100064EE0, qword_100064EF8);
      sub_10003212C(v198, v193);
    }

    else
    {
      v216 = v293;
      v217 = v293 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
      v218 = sub_100049FAC();
      v219 = sub_10004AB7C();
      if (os_log_type_enabled(v218, v219))
      {
        sub_100014030();
        v220 = sub_10003D3A4();
        v296 = v220;
        *v217 = 136446210;
        v221 = sub_100031CD8(v193);
        v223 = sub_1000230EC(v221, v222, &v296);
        v194 = v288;

        *(v217 + 4) = v223;
        sub_10003D388(&_mh_execute_header, v224, v219, "Adding gradient to view because no snapshot image exists for kind=%{public}s");
        sub_100008FC8(v220);
        sub_100013F58();
        sub_100013F58();
      }

      v225 = v280;
      v226 = sub_100002474(v194);
      v227 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotGradientView;
      swift_beginAccess();
      v228 = *(&v216->isa + v227);
      *(&v216->isa + v227) = v226;

      v229 = [v245 currentDevice];
      v230 = [v229 userInterfaceIdiom];

      if (v230 == 1)
      {
        swift_beginAccess();
        v231 = *(&v216->isa + v227);
        if (!v231)
        {
          sub_10000591C(v195, &qword_100064B10, &unk_10004E3B0);
          v239 = sub_10003D36C();
          v240(v239);
          swift_endAccess();

          return;
        }

        swift_endAccess();
        v232 = v231;
        v233 = v247;
        sub_100049B9C();
        v234 = 0;
        if ((v193 - 2) <= 2)
        {
          v234 = dword_10004E3C4[v193 - 2];
        }

        v235 = v249;
        (*(v250 + 32))(v249, v233, v244);
        v236 = v248;
        *(v235 + v248[5]) = v234;
        *(v235 + v236[6]) = 1065353216;
        *(v235 + v236[7]) = v193;
        *(v235 + v236[8]) = v193;
        sub_10002424C(v235);

        sub_10003D268(v235, type metadata accessor for DynamicRotationState);
      }

      else
      {
      }
    }

    sub_10000591C(v195, &qword_100064B10, &unk_10004E3B0);
    v237 = sub_10003D36C();
    v238(v237);
    return;
  }

  v164 = v163;
  v165 = v157 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
  v166 = sub_100049FAC();
  v167 = sub_10004AB9C();
  if (os_log_type_enabled(v166, v167))
  {
    sub_100014030();
    v168 = sub_10003D3A4();
    v296 = v168;
    *v165 = 136446210;
    v169 = sub_100031CD8(v156);
    v171 = sub_1000230EC(v169, v170, &v296);

    *(v165 + 4) = v171;
    sub_10003D388(&_mh_execute_header, v172, v167, "Adding cached snapshot to view for kind=%{public}s");
    sub_100008FC8(v168);
    sub_100013F58();
    sub_100013F58();
  }

  v173 = v280;
  sub_10003CCF4(v164, v156, v280);
}

uint64_t sub_10003CA44()
{
  v1 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v1);
  v3 = *(v2 + 64);
  sub_100013ED4();
  __chkstk_darwin(v4);
  v6 = &v17[-v5];
  v7 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView;
  v8 = *(v0 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView);
  if (v8)
  {
    [v8 removeFromSuperview];
  }

  v9 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotGradientView;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  v11 = *(v0 + v7);
  *(v0 + v7) = 0;

  v12 = *(v0 + v9);
  *(v0 + v9) = 0;

  v13 = type metadata accessor for PosterAnimationViewModel();
  sub_100004544(v6, 1, 1, v13);
  v14 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel;
  swift_beginAccess();
  sub_10003D194(v6, v0 + v14);
  result = swift_endAccess();
  v16 = v0 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind;
  *v16 = 0;
  *(v16 + 8) = 1;
  return result;
}

id sub_10003CB80()
{
  v0 = type metadata accessor for VFXSnapshotManager();
  v1 = swift_allocObject();
  result = [objc_opt_self() defaultManager];
  *(v1 + 16) = result;
  qword_100064EF8 = v0;
  unk_100064F00 = &off_10005F380;
  qword_100064EE0 = v1;
  return result;
}

uint64_t sub_10003CBF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004A37C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_10004A36C();
  v7 = sub_10004A4BC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v1 + 24) = sub_10004A4AC();
  v10 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel;
  v11 = type metadata accessor for PosterAnimationViewModel();
  sub_100004544(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView) = 0;
  *(v2 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotGradientView) = 0;
  v12 = v2 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotKind;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
  v14 = sub_100049FCC();
  sub_100005A24(v14);
  (*(v15 + 32))(v2 + v13, a1);
  return v2;
}

void sub_10003CCF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView;
  v9 = *(v3 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotView);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_100013820(0, &qword_100063830, UIView_ptr);
      v13 = a3;
      v14 = sub_10004ACBC();

      if (v14)
      {
        [v10 setImage:a1];
        goto LABEL_7;
      }
    }
  }

  v10 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  sub_100002560(v10, 3);
LABEL_7:
  v15 = *(v4 + v8);
  *(v4 + v8) = v10;
  v20 = v10;

  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1)
  {
    if (a2 == 4 || a2 == 2)
    {
      CGAffineTransformMakeRotation(&v21, 3.1415925);
    }

    else
    {
      v19 = *&CGAffineTransformIdentity.c;
      *&v21.a = *&CGAffineTransformIdentity.a;
      *&v21.c = v19;
      *&v21.tx = *&CGAffineTransformIdentity.tx;
    }

    [v20 setTransform:&v21];
  }

  else
  {
  }
}

uint64_t sub_10003CEF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10000591C(v0 + OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_snapshotModel, &unk_100063DF0, &qword_10004CF28);

  v3 = OBJC_IVAR____TtC13WeatherPoster19VFXSnapshotRenderer_logger;
  v4 = sub_100049FCC();
  sub_100005A24(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_10003CFA0()
{
  sub_10003CEF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for VFXSnapshotRenderer()
{
  result = qword_100064F58;
  if (!qword_100064F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003D04C()
{
  sub_10003D13C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_100049FCC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003D13C()
{
  if (!qword_100063AD8)
  {
    type metadata accessor for PosterAnimationViewModel();
    v0 = sub_10004ACDC();
    if (!v1)
    {
      atomic_store(v0, &qword_100063AD8);
    }
  }
}

uint64_t sub_10003D194(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterAnimationViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100005A24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10003D2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterAnimationViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D324@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_10003D36C()
{
  v2 = *(*(v1 - 312) + 8);
  result = v0;
  v4 = *(v1 - 304);
  return result;
}

void sub_10003D388(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_10003D3A4()
{

  return swift_slowAlloc();
}

char *sub_10003D3EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004A80C();
  v5 = sub_1000059BC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  v12 = v11 - v10;
  v13 = [objc_opt_self() mainScreen];
  [v13 bounds];

  (*(v7 + 104))(v12, enum case for MicaBackgroundAnimation.Mode.poster(_:), v4);
  v14 = objc_allocWithZone(sub_10004A84C());
  *(v2 + 2) = sub_10004A7BC();
  v15 = sub_10004A37C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v2 + 3) = sub_10004A36C();
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  *(v2 + 6) = 0;
  v18 = type metadata accessor for PosterAnimationViewModel();
  sub_100013E80(v18);
  v19 = type metadata accessor for DynamicRotationState();
  sub_100013E80(v19);
  *&v2[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer] = 0;
  *&v2[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_logger;
  v21 = sub_100049FCC();
  sub_100005A24(v21);
  (*(v22 + 32))(&v2[v20], a1);
  return v2;
}

void sub_10003D5E0(uint64_t a1, int a2)
{
  v3 = v2;
  v187 = a2;
  v181 = sub_10004A1DC();
  v5 = sub_1000059BC(v181);
  v180 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000059D0();
  sub_10003D350(v10 - v9);
  v179 = sub_10004A1FC();
  v11 = sub_1000059BC(v179);
  v177 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000059D0();
  sub_10003D350(v16 - v15);
  v190 = sub_10004A21C();
  v17 = sub_1000059BC(v190);
  v175 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100041EB0();
  sub_100041EC4();
  __chkstk_darwin(v21);
  sub_100041ED4();
  sub_10003D350(v22);
  v189 = sub_100049FCC();
  v23 = sub_1000059BC(v189);
  v192 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_100041EEC();
  v174 = v27;
  v173 = v28;
  __chkstk_darwin(v29);
  sub_100041ED4();
  sub_10003D350(v30);
  v183 = sub_10004A71C();
  v31 = sub_1000059BC(v183);
  v186 = v32;
  v34 = *(v33 + 64);
  __chkstk_darwin(v31);
  sub_1000059D0();
  v169 = v36 - v35;
  v37 = sub_100002D54(&qword_100063C78, &qword_10004E0A0);
  v38 = sub_100005A50(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_100041EB0();
  sub_100041EC4();
  __chkstk_darwin(v41);
  sub_100041ED4();
  sub_10003D350(v42);
  v43 = type metadata accessor for PosterAnimationViewModel();
  v44 = sub_1000059BC(v43);
  v170 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_100041EEC();
  v195 = v48;
  __chkstk_darwin(v49);
  sub_100041ED4();
  v197 = v50;
  __chkstk_darwin(v51);
  sub_100041ED4();
  v184 = v52;
  v171 = v53;
  __chkstk_darwin(v54);
  sub_100041ED4();
  v194 = v55;
  v56 = (sub_100002D54(&qword_100063C80, &qword_10004CF50) - 8);
  v57 = *(*v56 + 64);
  sub_100013ED4();
  __chkstk_darwin(v58);
  v60 = &v167 - v59;
  v61 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v62 = sub_100005A50(v61);
  v64 = *(v63 + 64);
  __chkstk_darwin(v62);
  sub_100041EB0();
  sub_100041EC4();
  __chkstk_darwin(v65);
  sub_100041EC4();
  v67 = __chkstk_darwin(v66);
  v196 = &v167 - v68;
  v69 = __chkstk_darwin(v67);
  v71 = &v167 - v70;
  __chkstk_darwin(v69);
  v73 = &v167 - v72;
  sub_100041E68();
  sub_100041E00();
  sub_100013FE8();
  sub_100004544(v74, v75, v76, v43);
  swift_beginAccess();
  v77 = v56[14];
  sub_1000139C8();
  sub_1000139C8();
  if (sub_100041F00(v60) == 1)
  {
    sub_1000090CC(v73, &unk_100063DF0, &qword_10004CF28);
    v78 = a1;
    if (sub_100041F00(&v60[v77]) == 1)
    {
      sub_1000090CC(v60, &unk_100063DF0, &qword_10004CF28);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1000139C8();
  if (sub_100041F00(&v60[v77]) == 1)
  {
    sub_1000090CC(v73, &unk_100063DF0, &qword_10004CF28);
    sub_100041E80();
    sub_10004162C(v71, v79);
    v78 = a1;
LABEL_6:
    sub_1000090CC(v60, &qword_100063C80, &qword_10004CF50);
    goto LABEL_7;
  }

  v168 = v43;
  v103 = v194;
  sub_1000415D4();
  v104 = sub_1000047E8(v71, v103);
  sub_10004162C(v103, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v73, &unk_100063DF0, &qword_10004CF28);
  v43 = v168;
  sub_10004162C(v71, type metadata accessor for PosterAnimationViewModel);
  sub_1000090CC(v60, &unk_100063DF0, &qword_10004CF28);
  v78 = a1;
  if (v104)
  {
LABEL_14:
    sub_100041E68();
    v90 = v195;
    sub_100041E00();
    v91 = sub_100049FAC();
    v105 = sub_10004AB9C();
    if (os_log_type_enabled(v91, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      aBlock[0] = v107;
      *v106 = 136446210;
      v108 = v43[5];
      sub_100049B7C();
      sub_100041E98();
      sub_100041A80(v109, v110);
      v111 = sub_10004AF1C();
      v113 = v112;
      sub_100041E80();
      sub_10004162C(v90, v114);
      v115 = sub_1000230EC(v111, v113, aBlock);

      *(v106 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v91, v105, "Animation already reflects the view model with weather data at date=%{public}s", v106, 0xCu);
      sub_100008FC8(v107);
      sub_100013F58();
      goto LABEL_16;
    }

LABEL_17:

    sub_100041E80();
    sub_10004162C(v90, v116);
    return;
  }

LABEL_7:
  v80 = &v3[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate];
  if (!swift_unknownObjectWeakLoadStrong() || (v81 = *(v80 + 1), ObjectType = swift_getObjectType(), LOBYTE(v81) = (*(v81 + 8))(ObjectType, v81), swift_unknownObjectRelease(), (v81 & 1) == 0))
  {
    sub_100041E68();
    v90 = v197;
    sub_100041E00();
    v91 = sub_100049FAC();
    v92 = sub_10004AB9C();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      aBlock[0] = v94;
      *v93 = 136446210;
      v95 = v43[5];
      sub_100049B7C();
      sub_100041E98();
      sub_100041A80(v96, v97);
      v98 = sub_10004AF1C();
      v100 = v99;
      sub_100041E80();
      sub_10004162C(v90, v101);
      v102 = sub_1000230EC(v98, v100, aBlock);

      *(v93 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v91, v92, "Animation was not granted a render session; Skipping render of weather data at date=%{public}s", v93, 0xCu);
      sub_100008FC8(v94);
      sub_100013F58();
LABEL_16:
      sub_100013F58();

      return;
    }

    goto LABEL_17;
  }

  sub_100041EE0();
  sub_1000139C8();
  sub_100041E68();
  sub_100041E00();
  sub_100013FE8();
  sub_100004544(v83, v84, v85, v43);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  v86 = v193;
  sub_100041EE0();
  sub_1000139C8();
  if (sub_100041F00(v86) != 1)
  {
    sub_100041E68();
    v117 = v184;
    sub_1000415D4();
    v118 = v43[17];
    v119 = *(v117 + v118);
    v120 = *(v78 + v118);
    if (v119)
    {
      v121 = v186;
      v122 = v185;
      if (v120)
      {
        sub_100013820(0, &qword_100063830, UIView_ptr);
        v123 = v120;
        v124 = v119;
        v125 = sub_10004ACBC();

        if (v125)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v121 = v186;
      v122 = v185;
      if (!v120)
      {
        goto LABEL_34;
      }
    }

    v126 = sub_100049FAC();
    v127 = sub_10004AB9C();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "Resetting views due to change in background view", v128, 2u);
      sub_100013F58();
    }

    v129 = 1;
    swift_beginAccess();
    v130 = *(v3 + 5);
    if (v130)
    {
      v131 = OBJC_IVAR____TtC13WeatherPoster12GradientView_skyBackgroundGradient;
      swift_beginAccess();
      v132 = v183;
      (*(v121 + 16))(v122, &v130[v131], v183);
      v129 = 0;
    }

    else
    {
      v132 = v183;
    }

    sub_100004544(v122, v129, 1, v132);
    *(v3 + 5) = 0;

    v133 = *(v3 + 4);
    *(v3 + 4) = 0;

    v134 = *(v3 + 6);
    *(v3 + 6) = 0;

    v135 = v182;
    sub_1000139C8();
    if (sub_100004288(v135, 1, v132) == 1)
    {
      sub_100041EE0();
      sub_1000090CC(v136, v137, v138);
      sub_100041E80();
      sub_10004162C(v117, v139);
      sub_100041EE0();
      goto LABEL_30;
    }

    v140 = *(v121 + 32);
    v141 = v169;
    v142 = sub_100013F94();
    v143(v142);
    if ((*(v117 + v43[15]) & 1) == 0)
    {
      sub_10003E6F0(v141);
    }

    (*(v121 + 8))(v141, v132);
    sub_1000090CC(v122, &qword_100063C78, &qword_10004E0A0);
LABEL_34:
    sub_100041E80();
    sub_10004162C(v117, v144);
    goto LABEL_35;
  }

  v87 = &unk_100063DF0;
  v88 = &qword_10004CF28;
  v89 = v86;
LABEL_30:
  sub_1000090CC(v89, v87, v88);
LABEL_35:
  if (*(v78 + v43[15]) == 1)
  {
    if (v187)
    {
      v145 = *(v3 + 2);
      sub_10004A84C();
      sub_10004A4DC(0);
    }

    v146 = *(v3 + 2);
    v147 = sub_10004A82C();
    [v147 speed];
    v149 = v148;

    if (v149 == 0.0)
    {
      v150 = 0.0;
    }

    else
    {
      v150 = 0.25;
    }

    v151 = v192;
    v152 = *(v192 + 16);
    v153 = v191;
    v154 = v189;
    v152(v191, &v3[OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_logger], v189);
    sub_10003F0B0(v78, 1);
    if (v150 <= 0.0)
    {
      sub_10003FBA8();
      (*(v151 + 8))(v153, v154);
    }

    else
    {
      sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
      v195 = sub_10004ABFC();
      v155 = v172;
      sub_10004A20C();
      sub_10004A23C();
      v197 = *(v175 + 8);
      v197(v155, v190);
      v156 = swift_allocObject();
      swift_weakInit();
      sub_100041E00();
      v157 = v174;
      v152(v174, v153, v154);
      v158 = v192;
      v159 = (v171 + *(v192 + 80) + ((*(v170 + 80) + 24) & ~*(v170 + 80))) & ~*(v192 + 80);
      v160 = swift_allocObject();
      *(v160 + 16) = v156;
      sub_1000415D4();
      (*(v158 + 32))(v160 + v159, v157, v154);
      aBlock[4] = sub_1000419B4;
      aBlock[5] = v160;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012500;
      aBlock[3] = &unk_10005F588;
      v161 = _Block_copy(aBlock);

      v162 = v176;
      sub_10004A1EC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100041A80(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags);
      sub_100002D54(&qword_100063C58, &unk_10004DE10);
      sub_10002FB14();
      v163 = v178;
      v164 = v181;
      sub_10004ACFC();
      v165 = v188;
      v166 = v195;
      sub_10004ABDC();
      _Block_release(v161);

      (*(v180 + 8))(v163, v164);
      (*(v177 + 8))(v162, v179);
      v197(v165, v190);
      (*(v158 + 8))(v191, v154);
    }
  }

  else
  {
    sub_10003EA8C();
  }

  sub_1000090CC(v196, &unk_100063DF0, &qword_10004CF28);
}

void sub_10003E6F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30[-v6];
  v8 = type metadata accessor for DynamicRotationState();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10004A71C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel;
  swift_beginAccess();
  v18 = type metadata accessor for PosterAnimationViewModel();
  if (!sub_100004288(v17, 1, v18))
  {
    v19 = *(v17 + *(v18 + 68));
    if (v19)
    {
      swift_beginAccess();
      v20 = *(v2 + 40);
      if (v20)
      {
        (*(v13 + 16))(v16, a1, v12);
        v21 = v19;
        v22 = v20;
        sub_1000243AC(v16);

        return;
      }

      v23 = v19;
      v24 = sub_100002474(a1);
      v25 = *(v2 + 40);
      *(v2 + 40) = v24;

      swift_beginAccess();
      sub_1000139C8();
      if (sub_100004288(v7, 1, v8) == 1)
      {

        sub_1000090CC(v7, &qword_100063C18, &qword_10004E300);
        return;
      }

      sub_1000415D4();
      v26 = [objc_opt_self() currentDevice];
      v27 = [v26 userInterfaceIdiom];

      if (v27 == 1)
      {
        swift_beginAccess();
        v28 = *(v2 + 40);
        if (v28)
        {
          swift_endAccess();
          v29 = v28;
          sub_10002424C(v11);

          sub_10004162C(v11, type metadata accessor for DynamicRotationState);
          return;
        }

        sub_10004162C(v11, type metadata accessor for DynamicRotationState);
        swift_endAccess();
      }

      else
      {
        sub_10004162C(v11, type metadata accessor for DynamicRotationState);
      }
    }
  }
}

uint64_t sub_10003EA8C()
{
  v1 = v0;
  v40 = sub_10004A1DC();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v40);
  v46 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004A1FC();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10004A21C();
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  v8 = __chkstk_darwin(v47);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v36 - v11;
  v12 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_100049FAC();
  v19 = sub_10004AB9C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Skipping showing mica because the poster should not show animation", v20, 2u);
  }

  v21 = *(v1 + 32);
  if (v21)
  {
    [v21 removeFromSuperview];
    v22 = *(v1 + 32);
  }

  else
  {
    v22 = 0;
  }

  *(v1 + 32) = 0;

  if (qword_100063458 != -1)
  {
    swift_once();
  }

  v23 = sub_10004A71C();
  v24 = sub_100008F90(v23, qword_1000682B8);
  sub_10003E6F0(v24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    swift_beginAccess();
    v36 = v17;
    sub_1000139C8();
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v37 = sub_10004ABFC();
    sub_10004A20C();
    v26 = v41;
    sub_10004A23C();
    v27 = v40;
    v38 = v4;
    v28 = v42;
    v43 = *(v43 + 8);
    (v43)(v10, v47);
    v29 = swift_allocObject();
    swift_weakInit();
    sub_1000139C8();
    v30 = (*(v39 + 80) + 24) & ~*(v39 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    sub_1000138F4(v15, v31 + v30);
    aBlock[4] = sub_100041D94;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012500;
    aBlock[3] = &unk_10005F5D8;
    v32 = _Block_copy(aBlock);

    v33 = v44;
    sub_10004A1EC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100041A80(&qword_100063C50, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002D54(&qword_100063C58, &unk_10004DE10);
    sub_10002FB14();
    v34 = v46;
    sub_10004ACFC();
    v35 = v37;
    sub_10004ABDC();
    _Block_release(v32);

    (*(v28 + 8))(v34, v27);
    (*(v45 + 8))(v33, v38);
    (v43)(v26, v47);
    return sub_1000090CC(v36, &unk_100063DF0, &qword_10004CF28);
  }

  return result;
}

uint64_t sub_10003F0B0(uint64_t a1, char a2)
{
  v5 = sub_10004A69C();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  __chkstk_darwin(v5);
  v64 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004A2EC();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  __chkstk_darwin(v8);
  v63 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10004A8AC();
  v50 = *(v51 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v51);
  v57 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004A2FC();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  __chkstk_darwin(v13);
  v55 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10004A71C();
  v56 = *(v58 - 8);
  v16 = *(v56 + 64);
  __chkstk_darwin(v58);
  v54 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004A6CC();
  v52 = *(v18 - 8);
  v53 = v18;
  v19 = *(v52 + 64);
  __chkstk_darwin(v18);
  v47 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100049D9C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v43 - v27;
  v49 = v22;
  v48 = v2;
  if (a2)
  {
    sub_10000AB68(a1);
    v29 = *(v22 + 16);
  }

  else
  {
    v30 = type metadata accessor for PosterAnimationViewModel();
    v29 = *(v22 + 16);
    v29(v28, a1 + *(v30 + 24), v21);
  }

  v29(v26, v28, v21);
  v31 = type metadata accessor for PosterAnimationViewModel();
  v43[3] = *(a1 + v31[13]);
  v32 = objc_opt_self();
  v46 = v21;
  v33 = [v32 mainScreen];
  [v33 bounds];

  v34 = [v32 mainScreen];
  [v34 scale];

  v35 = v47;
  sub_10004A6BC();
  v45 = v28;
  v44 = *(v48 + 24);
  v29(v26, v28, v21);
  (*(v50 + 16))(v57, a1 + v31[12], v51);
  v36 = enum case for WeatherConditionGradientModel.AnimationContext.mica(_:);
  v37 = sub_10004A2DC();
  v38 = v63;
  (*(*(v37 - 8) + 104))(v63, v36, v37);
  (*(v61 + 104))(v38, enum case for WeatherConditionGradientModel.PresentationContext.fullScreen(_:), v62);
  v39 = *(a1 + v31[8]);
  (*(v65 + 16))(v64, a1 + v31[9], v66);
  v40 = v55;
  sub_10004A2CC();
  v41 = v54;
  sub_10004A35C();
  (*(v59 + 8))(v40, v60);
  sub_10003E6F0(v41);
  sub_100040E10(v35, a1);
  (*(v56 + 8))(v41, v58);
  (*(v52 + 8))(v35, v53);
  return (*(v49 + 8))(v45, v46);
}

void sub_10003F794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for PosterAnimationViewModel();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v24 - v10;
  v12 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v24 - v17;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v24[1] = a3;
    swift_beginAccess();
    sub_100041E00();
    sub_100004544(v18, 0, 1, v4);
    v19 = *(v8 + 48);
    sub_1000139C8();
    sub_1000139C8();
    if (sub_100004288(v11, 1, v4) == 1)
    {
      sub_1000090CC(v18, &unk_100063DF0, &qword_10004CF28);
      if (sub_100004288(&v11[v19], 1, v4) == 1)
      {
        sub_1000090CC(v11, &unk_100063DF0, &qword_10004CF28);
LABEL_13:
        sub_10003FBA8();

        return;
      }

      goto LABEL_8;
    }

    sub_1000139C8();
    if (sub_100004288(&v11[v19], 1, v4) == 1)
    {

      sub_1000090CC(v18, &unk_100063DF0, &qword_10004CF28);
      sub_10004162C(v16, type metadata accessor for PosterAnimationViewModel);
LABEL_8:
      sub_1000090CC(v11, &qword_100063C80, &qword_10004CF50);
      goto LABEL_9;
    }

    sub_1000415D4();
    v23 = sub_1000047E8(v16, v7);
    sub_10004162C(v7, type metadata accessor for PosterAnimationViewModel);
    sub_1000090CC(v18, &unk_100063DF0, &qword_10004CF28);
    sub_10004162C(v16, type metadata accessor for PosterAnimationViewModel);
    sub_1000090CC(v11, &unk_100063DF0, &qword_10004CF28);
    if (v23)
    {
      goto LABEL_13;
    }
  }

LABEL_9:
  v20 = sub_100049FAC();
  v21 = sub_10004AB9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Skipping notifying of completion because a newer request is inflight that will notify instead", v22, 2u);
  }
}

uint64_t sub_10003FBA8()
{
  v1 = v0;
  v2 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - v4;
  v5 = sub_100049B7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_100049FAC();
  v11 = sub_10004AB9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136446210;
    v14 = v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel;
    swift_beginAccess();
    v15 = type metadata accessor for PosterAnimationViewModel();
    if (sub_100004288(v14, 1, v15))
    {
      v16 = 0;
      v17 = 0xE000000000000000;
    }

    else
    {
      (*(v6 + 16))(v9, v14 + *(v15 + 20), v5);
      v16 = sub_100049ADC();
      v17 = v18;
      (*(v6 + 8))(v9, v5);
    }

    v19 = sub_1000230EC(v16, v17, &v27);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Completed rendering of weather data at date=%{public}s", v12, 0xCu);
    sub_100008FC8(v13);
  }

  else
  {
  }

  v20 = v1 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v24 = v26;
    sub_1000139C8();
    (*(v22 + 16))(v24, ObjectType, v22);
    swift_unknownObjectRelease();
    return sub_1000090CC(v24, &unk_100063DF0, &qword_10004CF28);
  }

  return result;
}

uint64_t sub_10003FED8(uint64_t a1)
{
  v2 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v2);
  v4 = *(v3 + 64);
  sub_100013ED4();
  __chkstk_darwin(v5);
  sub_100041E68();
  sub_100041E00();
  type metadata accessor for PosterAnimationViewModel();
  sub_100013FE8();
  sub_100004544(v6, v7, v8, v9);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  return sub_10003F0B0(a1, 0);
}

void sub_10003FFC4()
{
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v1 = *(v0 + 16);
    sub_10004A81C(0);
  }
}

void sub_10003FFF4(char a1, void (*a2)(void), uint64_t a3, double a4)
{
  if ((a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled())
  {
    v12 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
    v13 = *(v4 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
    if (v13)
    {
      [v13 invalidate];
    }

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a2;
    v16[4] = a3;
    v20[4] = sub_1000415B0;
    v20[5] = v16;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100011A98;
    v20[3] = &unk_10005F538;
    v17 = _Block_copy(v20);

    v18 = [v14 scheduledTimerWithTimeInterval:0 repeats:v17 block:a4];
    _Block_release(v17);
    v19 = *(v4 + v12);
    *(v4 + v12) = v18;
  }

  else
  {
    v8 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
    v9 = *(v4 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
    if (v9)
    {
      [v9 invalidate];
      v10 = *(v4 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v4 + v8) = 0;

    v11 = *(v4 + 16);
    sub_10004A84C();
    sub_10004A4DC(0);
    a2();
  }
}

void sub_1000401C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
    v3 = *(Strong + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;

    v5 = *(v1 + 16);
    sub_10004A83C();
  }
}

void sub_100040280(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  if ((IsReduceMotionEnabled & 1) == 0)
  {
    sub_100035294();
    IsReduceMotionEnabled = sub_10004A92C();
    v7 = *(v2 + 32);
    if (v7)
    {
      v8 = v7;
      sub_10004A5EC();
    }
  }

  if (a2)
  {
    a2(IsReduceMotionEnabled, v5, v6);
  }
}

uint64_t sub_100040344(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v4);
  v6 = *(v5 + 64);
  sub_100013ED4();
  __chkstk_darwin(v7);
  v8 = *(v1 + 16);
  sub_10003541C(a1);
  swift_beginAccess();
  v9 = *(v2 + 40);
  if (v9)
  {
    v10 = v9;
    sub_10002424C(a1);
  }

  sub_100041E00();
  type metadata accessor for DynamicRotationState();
  sub_100013FE8();
  sub_100004544(v11, v12, v13, v14);
  sub_100013F40();
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_100040468(char a1)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063C18, &qword_10004E300);
  sub_100005A50(v4);
  v6 = *(v5 + 64);
  sub_100013ED4();
  __chkstk_darwin(v7);
  v9 = &v32[-v8];
  v10 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v10);
  v12 = *(v11 + 64);
  sub_100013ED4();
  __chkstk_darwin(v13);
  v15 = &v32[-v14];
  v16 = sub_100049FAC();
  v17 = sub_10004AB9C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136446210;
    if (a1)
    {
      if (a1 == 1)
      {
        v20 = 0xD000000000000011;
      }

      else
      {
        v20 = 0x646564616F6C6E75;
      }

      if (a1 == 1)
      {
        v21 = 0x800000010004E960;
      }

      else
      {
        v21 = 0xE800000000000000;
      }
    }

    else
    {
      v21 = 0x800000010004E980;
      v20 = 0xD000000000000013;
    }

    v22 = sub_1000230EC(v20, v21, &v33);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Invalidating animation for reason=%{public}s", v18, 0xCu);
    sub_100008FC8(v19);
    sub_100013F58();
    sub_100013F58();
  }

  v23 = type metadata accessor for PosterAnimationViewModel();
  sub_100004544(v15, 1, 1, v23);
  sub_100013F40();
  sub_100013120();
  swift_endAccess();
  v24 = v2[4];
  v2[4] = 0;

  swift_beginAccess();
  v25 = v2[5];
  v2[5] = 0;

  v26 = v2[6];
  v2[6] = 0;

  v27 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer;
  v28 = *(v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_freezeTimer);
  if (v28)
  {
    [v28 invalidate];
    v29 = *(v2 + v27);
  }

  else
  {
    v29 = 0;
  }

  *(v2 + v27) = 0;

  v30 = type metadata accessor for DynamicRotationState();
  sub_100004544(v9, 1, 1, v30);
  sub_100013F40();
  sub_100013120();
  return swift_endAccess();
}

uint64_t sub_100040764()
{
  v1 = *(v0 + 24);

  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel, &unk_100063DF0, &qword_10004CF28);
  sub_1000090CC(v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rotationState, &qword_100063C18, &qword_10004E300);

  v2 = OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_logger;
  v3 = sub_100049FCC();
  sub_100009714(v3);
  (*(v4 + 8))(v0 + v2);
  sub_100013DE4(v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate);
  return v0;
}

uint64_t sub_100040840()
{
  sub_100040764();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for MicaAnimation()
{
  result = qword_100065038;
  if (!qword_100065038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000408EC()
{
  sub_100040A5C(319, &qword_100063AD8, type metadata accessor for PosterAnimationViewModel);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100040A5C(319, &qword_100063AE8, type metadata accessor for DynamicRotationState);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_100049FCC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100040A5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10004ACDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100040AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_rendererDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100040B18()
{
  v0 = type metadata accessor for PosterAnimationViewModel();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15[-v6];
  v8 = sub_100002D54(&qword_100063C80, &qword_10004CF50);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v15[-v10];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v13 = *(v8 + 48);
    sub_1000139C8();
    sub_1000139C8();
    if (sub_100004288(v11, 1, v0) == 1)
    {
      if (sub_100004288(&v11[v13], 1, v0) == 1)
      {
        sub_1000090CC(v11, &unk_100063DF0, &qword_10004CF28);
        goto LABEL_10;
      }
    }

    else
    {
      sub_1000139C8();
      if (sub_100004288(&v11[v13], 1, v0) != 1)
      {
        sub_1000415D4();
        v14 = sub_1000047E8(v7, v3);
        sub_10004162C(v3, type metadata accessor for PosterAnimationViewModel);
        sub_10004162C(v7, type metadata accessor for PosterAnimationViewModel);
        sub_1000090CC(v11, &unk_100063DF0, &qword_10004CF28);
        if ((v14 & 1) == 0)
        {
        }

LABEL_10:
        sub_10003FBA8();
      }

      sub_10004162C(v7, type metadata accessor for PosterAnimationViewModel);
    }

    return sub_1000090CC(v11, &qword_100063C80, &qword_10004CF50);
  }

  return result;
}

uint64_t sub_100040E10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v48 = a1;
  v4 = sub_10004A8DC();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D54(&unk_100063E80, &qword_10004D0F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v42 - v9;
  v11 = sub_100049A6C();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v42 - v17;
  v19 = type metadata accessor for PosterAnimationViewModel();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1000139C8();
  if (sub_100004288(v18, 1, v19) == 1)
  {
    v23 = &unk_100063DF0;
    v24 = &qword_10004CF28;
    v25 = v18;
    return sub_1000090CC(v25, v23, v24);
  }

  sub_1000415D4();
  v26 = *&v22[*(v19 + 68)];
  if (v26)
  {
    v27 = sub_10004A56C();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = v26;
    sub_10004A55C();
    sub_10004A53C();
    if (sub_100004288(v10, 1, v11) == 1)
    {
      sub_10004162C(v22, type metadata accessor for PosterAnimationViewModel);

      v23 = &unk_100063E80;
      v24 = &qword_10004D0F8;
      v25 = v10;
      return sub_1000090CC(v25, v23, v24);
    }

    (*(v47 + 32))(v14, v10, v11);
    if (!*(v3 + 32))
    {
      v32 = *(v3 + 16);
      v33 = objc_allocWithZone(sub_10004A60C());
      v34 = v32;
      v35 = sub_10004A5FC();
      sub_100002560(v35, 0);
      v36 = *(v3 + 32);
      *(v3 + 32) = v35;
    }

    v37 = sub_10004A54C();
    v38 = *(v3 + 16);
    v39 = v37;
    v40 = v30;
    v41 = v43;
    sub_10004A8CC();
    sub_10004A7CC();
    (*(v44 + 8))(v41, v45);
    sub_100041274();

    (*(v47 + 8))(v14, v11);
  }

  return sub_10004162C(v22, type metadata accessor for PosterAnimationViewModel);
}

void sub_100041274()
{
  v1 = v0;
  v2 = sub_100049D9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + OBJC_IVAR____TtC13WeatherPoster13MicaAnimation_posterViewModel;
  swift_beginAccess();
  v8 = type metadata accessor for PosterAnimationViewModel();
  if (!sub_100004288(v7, 1, v8))
  {
    v9 = *(v7 + *(v8 + 72));
    if (v9)
    {
      v10 = v9;
      if (sub_10000AF08())
      {
        v19 = 0;
        v20 = 0xE000000000000000;
        sub_10004AD6C(39);
        v21._countAndFlagsBits = 0x6F697469646E6F43;
        v21._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v21);
        sub_10004A6AC();
        sub_100041A80(&qword_100065108, &type metadata accessor for WeatherCondition);
        v22._countAndFlagsBits = sub_10004AF1C();
        sub_10004A9DC(v22);

        (*(v3 + 8))(v6, v2);
        v23._countAndFlagsBits = 0x6F697461636F4C0ALL;
        v23._object = 0xEB00000000203A6ELL;
        sub_10004A9DC(v23);
        sub_100049EDC();
        v18[1] = v11;
        v18[2] = v12;
        type metadata accessor for CLLocationCoordinate2D(0);
        sub_10004AE0C();
        v24._object = 0xEB00000000203A65;
        v24._countAndFlagsBits = 0x6D616E656C69460ALL;
        sub_10004A9DC(v24);
        v25._countAndFlagsBits = sub_100049A1C();
        sub_10004A9DC(v25);

        v13 = v19;
        v14 = v20;
        v15 = *(v1 + 48);
        if (v15)
        {
          v16 = v15;
          sub_1000137BC(v13, v14, v16);
        }

        else
        {
          v17 = sub_1000020E8(v19, v20);

          v10 = *(v1 + 48);
          *(v1 + 48) = v17;
        }
      }
    }
  }
}

uint64_t sub_100041538()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041570()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000415B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000401C8();
}

uint64_t sub_1000415BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000415D4()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 32);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

uint64_t sub_10004162C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100009714(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100041680()
{
  v1 = type metadata accessor for PosterAnimationViewModel();
  v2 = *(*(v1 - 1) + 80);
  v34 = *(*(v1 - 1) + 64);
  v36 = sub_100049FCC();
  sub_1000059BC(v36);
  v4 = v3;
  v5 = *(v3 + 80);
  v35 = *(v6 + 64);
  v7 = *(v0 + 16);

  v8 = v0 + ((v2 + 24) & ~v2);
  v9 = sub_100049F2C();
  sub_100009714(v9);
  (*(v10 + 8))(v8);
  v11 = v1[5];
  v12 = sub_100049B7C();
  sub_100005A24(v12);
  v14 = *(v13 + 8);
  v14(v8 + v11, v12);
  v15 = v1[6];
  v16 = sub_100049D9C();
  sub_100009714(v16);
  (*(v17 + 8))(v8 + v15);
  v18 = v1[9];
  v19 = sub_10004A69C();
  sub_100009714(v19);
  (*(v20 + 8))(v8 + v18);
  v21 = v1[10];
  if (!sub_100004288(v8 + v21, 1, v12))
  {
    v14(v8 + v21, v12);
  }

  v22 = v1[11];
  if (!sub_100004288(v8 + v22, 1, v12))
  {
    v14(v8 + v22, v12);
  }

  v23 = v1[12];
  v24 = sub_10004A8AC();
  sub_100009714(v24);
  (*(v25 + 8))(v8 + v23);
  v26 = v1[14];
  v27 = sub_10004A6DC();
  if (!sub_100004288(v8 + v26, 1, v27))
  {
    (*(*(v27 - 8) + 8))(v8 + v26, v27);
  }

  v28 = v2 | v5;
  v29 = (((v2 + 24) & ~v2) + v34 + v5) & ~v5;
  v30 = v1[16];
  v31 = sub_10004A72C();
  sub_100009714(v31);
  (*(v32 + 8))(v8 + v30);

  (*(v4 + 8))(v0 + v29, v36);

  return _swift_deallocObject(v0, v29 + v35, v28 | 7);
}

void sub_1000419B4()
{
  v1 = *(type metadata accessor for PosterAnimationViewModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_100049FCC();
  sub_100005A50(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  sub_10003F794(v6, v0 + v2, v7);
}

uint64_t sub_100041A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100041AC8()
{
  v1 = *(sub_100002D54(&unk_100063DF0, &qword_10004CF28) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = type metadata accessor for PosterAnimationViewModel();
  if (!sub_100004288(v0 + v3, 1, v7))
  {
    v8 = sub_100049F2C();
    sub_100009714(v8);
    (*(v9 + 8))(v0 + v3);
    v10 = v7[5];
    v11 = sub_100049B7C();
    sub_100005A24(v11);
    v13 = *(v12 + 8);
    v13(v6 + v10, v11);
    v14 = v7[6];
    v15 = sub_100049D9C();
    sub_100009714(v15);
    (*(v16 + 8))(v6 + v14);
    v17 = v7[9];
    v18 = sub_10004A69C();
    sub_100009714(v18);
    (*(v19 + 8))(v6 + v17);
    v20 = v7[10];
    if (!sub_100004288(v6 + v20, 1, v11))
    {
      v13(v6 + v20, v11);
    }

    v21 = v7[11];
    if (!sub_100004288(v6 + v21, 1, v11))
    {
      v13(v6 + v21, v11);
    }

    v22 = v7[12];
    v23 = sub_10004A8AC();
    sub_100009714(v23);
    (*(v24 + 8))(v6 + v22);
    v25 = v7[14];
    v26 = sub_10004A6DC();
    if (!sub_100004288(v6 + v25, 1, v26))
    {
      (*(*(v26 - 8) + 8))(v6 + v25, v26);
    }

    v27 = v7[16];
    v28 = sub_10004A72C();
    sub_100009714(v28);
    (*(v29 + 8))(v6 + v27);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100041D94()
{
  v1 = sub_100002D54(&unk_100063DF0, &qword_10004CF28);
  sub_100005A50(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return sub_100040B18();
}

uint64_t sub_100041E00()
{
  sub_100013FF4();
  v2 = v1(0);
  sub_100005A24(v2);
  v4 = *(v3 + 16);
  v5 = sub_100013F94();
  v6(v5);
  return v0;
}

uint64_t sub_100041F00(uint64_t a1)
{

  return sub_100004288(a1, 1, v1);
}

uint64_t sub_100041F18()
{
  sub_100042220(0, 0, v25);
  if (v26)
  {
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8();
    }

    v0 = sub_100049FCC();
    sub_100008F90(v0, qword_1000683A8);
    v1 = sub_100049FAC();
    v2 = sub_10004AB7C();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_17;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Snapshot image is not valid because color components do not exist", v3, 2u);
LABEL_16:
    sub_100013F58();
LABEL_17:

    return 0;
  }

  if (*&v25[3] != 1.0)
  {
    if (qword_1000634A8 != -1)
    {
      sub_1000347A8();
    }

    v15 = sub_100049FCC();
    sub_100008F90(v15, qword_1000683A8);
    v1 = sub_100049FAC();
    v16 = sub_10004AB7C();
    if (!os_log_type_enabled(v1, v16))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    sub_100002D54(&unk_100065110, &qword_10004E460);
    v19 = sub_10004A9AC();
    v21 = sub_1000230EC(v19, v20, &v24);

    *(v17 + 4) = v21;
    sub_1000347E8(&_mh_execute_header, v22, v23, "Snapshot image is not valid because image has transparency; colorComponents=%{public}s");
    sub_100008FC8(v18);
    sub_100013F58();
    goto LABEL_16;
  }

  if (qword_1000634A8 != -1)
  {
    sub_1000347A8();
  }

  v4 = sub_100049FCC();
  sub_100008F90(v4, qword_1000683A8);
  v5 = sub_100049FAC();
  v6 = sub_10004AB9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446210;
    v24 = v8;
    sub_100002D54(&unk_100065110, &qword_10004E460);
    v9 = sub_10004A9AC();
    v11 = sub_1000230EC(v9, v10, &v24);

    *(v7 + 4) = v11;
    sub_1000347E8(&_mh_execute_header, v12, v13, "Snapshot image is valid; colorComponents=%{public}s");
    sub_100008FC8(v8);
    sub_100013F58();
    sub_100013F58();
  }

  return 1;
}

void sub_100042220(size_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  Width = CGImageGetWidth(v3);
  if ((Width & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v10 = 0uLL;
  if (Width <= a1)
  {
    v26 = 1;
    v27 = 0uLL;
LABEL_18:
    *a3 = v10;
    *(a3 + 16) = v27;
    *(a3 + 32) = v26;
    return;
  }

  Height = CGImageGetHeight(v3);
  if ((Height & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (Height <= a2)
  {
    goto LABEL_17;
  }

  v12 = CGImageGetDataProvider(v3);
  if (!v12)
  {
    goto LABEL_17;
  }

  v13 = v12;
  v14 = CGDataProviderCopyData(v12);

  if (!v14)
  {
    goto LABEL_17;
  }

  BytePtr = CFDataGetBytePtr(v14);
  if (!BytePtr)
  {

LABEL_17:
    v26 = 1;
    v27 = 0uLL;
    v10 = 0uLL;
    goto LABEL_18;
  }

  v16 = BytePtr;
  BytesPerRow = CGImageGetBytesPerRow(v5);
  v18 = a2 * BytesPerRow;
  if ((a2 * BytesPerRow) >> 64 != (a2 * BytesPerRow) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  BitsPerPixel = CGImageGetBitsPerPixel(v5);
  if ((a1 * BitsPerPixel) >> 64 != (a1 * BitsPerPixel) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = (a1 * BitsPerPixel) / 8;
  v21 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (CGImageGetBitsPerComponent(v5) == 16 && (CGImageGetBitmapInfo(v5) & 0x100) != 0)
  {
    v22.i32[0] = *&v16[v21];
    v4.i32[0] = *&v16[v21 + 4];
    v33 = vcvtq_f64_f32(*&vcvtq_f32_f16(v22));

    v10 = v33;
    v26 = 0;
    v27 = vcvtq_f64_f32(*&vcvtq_f32_f16(v4));
    goto LABEL_18;
  }

  if (CGImageGetBitsPerComponent(v5) == 16)
  {
    v23.i64[0] = *&v16[v21];
    v23.i64[1] = *&v16[v21 + 2];
    v31 = vdupq_n_s64(0x40EFFFE000000000uLL);
    v32 = vdivq_f64(vcvtq_f64_u64(v23), v31);
    LODWORD(v24) = *&v16[v21 + 4];
    v25 = *&v16[v21 + 6];
LABEL_21:
    HIDWORD(v24) = v25;
    v30 = v24;

    v10 = v32;
    v26 = 0;
    v29.i64[0] = v30;
    v29.i64[1] = HIDWORD(v30);
    v27 = vdivq_f64(vcvtq_f64_u64(v29), v31);
    goto LABEL_18;
  }

  if (v21 <= 0x7FFFFFFFFFFFFFFCLL)
  {
    v28.i64[0] = v16[v21];
    v28.i64[1] = v16[v21 + 1];
    v31 = vdupq_n_s64(0x406FE00000000000uLL);
    v32 = vdivq_f64(vcvtq_f64_u64(v28), v31);
    LODWORD(v24) = v16[v21 + 2];
    v25 = v16[v21 + 3];
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
}

Swift::Int sub_100042468()
{
  sub_10004AFEC();
  sub_100020E2C();
  return sub_10004B00C();
}

Swift::Int sub_100042504(uint64_t a1, void (*a2)(uint64_t))
{
  sub_10004AFEC();
  a2(a1);
  sub_10004A9CC();

  return sub_10004B00C();
}

Swift::Int sub_100042580(Swift::UInt a1)
{
  sub_10004AFEC();
  sub_10004AFFC(a1);
  return sub_10004B00C();
}

void sub_1000425C8(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002D54(&qword_100063DC0, &qword_10004E5C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_100049E9C();
  v9 = sub_1000059BC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v9);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_cacheManager);
  sub_10001A674(a1);
  sub_100026C88(v7);
  v20 = type metadata accessor for PosterDataModel(0);
  if (sub_100004288(v7, 1, v20) == 1)
  {
    sub_10000591C(v7, &qword_100063DC0, &qword_10004E5C0);
  }

  else
  {
    (*(v11 + 16))(v16, &v7[*(v20 + 20)], v8);
    sub_10004767C(v7, type metadata accessor for PosterDataModel);
    (*(v11 + 32))(v18, v16, v8);
    v21 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location;
    if (*(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location))
    {
      (*(v11 + 8))(v18, v8);
    }

    else
    {
      sub_100049E7C();
      v23 = v22;
      sub_100049E8C();
      v25 = [objc_allocWithZone(CLLocation) initWithLatitude:v23 longitude:v24];
      (*(v11 + 8))(v18, v8);
      v26 = *(v2 + v21);
      *(v2 + v21) = v25;
    }
  }
}

void sub_100042830()
{
  if ((*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents) = 1;
    sub_100042E00();
    sub_100042E48();

    sub_100042F4C();
  }
}

void sub_10004287C()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents;
  if (*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents) == 1)
  {
    v2 = v0;
    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v3 = sub_100049FCC();
    sub_10001A018(v3, qword_100068348);
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      *sub_10001A048() = 0;
      sub_1000479A0(&_mh_execute_header, v6, v7, "Stopping monitoring of significant events for data manager");
      sub_100013F58();
    }

    *(v2 + v1) = 0;
    v8 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationSessionExtender);
    v9 = v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10001BD48(Strong, *(v9 + 8));
    swift_unknownObjectRelease();
    v11 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkSessionExtender);
    v12 = swift_unknownObjectWeakLoadStrong();
    sub_10001BD48(v12, *(v9 + 8));
    swift_unknownObjectRelease();
    sub_100043210();
    sub_100043270();
    sub_1000432AC();
    v13 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_dataUpdater);
    sub_10000823C();
    v14 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation);
    *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation) = 0;
  }
}

uint64_t sub_1000429F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005E128;
  v6._object = a2;
  v4 = sub_10004AE7C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100042A40(char a1)
{
  if (!a1)
  {
    return 0x64657472617473;
  }

  if (a1 == 1)
  {
    return 0x646570706F7473;
  }

  return 0x646573756170;
}

uint64_t sub_100042AAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000429F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100042ADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100042A40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_100042B14()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager;
  v2 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager);
  }

  else
  {
    v4 = sub_100042B78(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100042B78(uint64_t a1)
{
  v2 = [objc_allocWithZone(CLLocationManager) init];
  [v2 setDelegate:a1];
  [v2 setDistanceFilter:500.0];
  [v2 setDesiredAccuracy:kCLLocationAccuracyKilometer];
  return v2;
}

id sub_100042BFC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_cacheManager;
  if (qword_100063450 != -1)
  {
    swift_once();
  }

  *&v1[v4] = qword_1000682A8;
  v5 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_dataUpdater;
  type metadata accessor for PosterDataUpdater();
  swift_allocObject();

  *&v1[v5] = sub_1000084B4();
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager____lazy_storage___locationManager] = 0;
  v6 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkMonitor;
  type metadata accessor for NetworkMonitor();
  swift_allocObject();
  *&v1[v6] = sub_100025D20();
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer] = 0;
  v7 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationSessionExtender;
  type metadata accessor for RenderSessionExtender();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 5;
  *&v1[v7] = v8;
  v9 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkSessionExtender;
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 6;
  *&v1[v9] = v10;
  v11 = &v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus];
  *v11 = 0;
  v11[4] = 1;
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location] = 0;
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus] = 2;
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus] = 1;
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation] = 0;
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_isMonitoringEvents] = 0;
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_canRequestLocationAuthorization] = a1 & 1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

void sub_100042E00()
{
  v1 = sub_100042B14();
  [v1 setDelegate:v0];
}

void sub_100042E48()
{
  v1 = v0;
  if (qword_100063488 != -1)
  {
    swift_once();
  }

  v2 = sub_100049FCC();
  sub_100008F90(v2, qword_100068348);
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting monitoring for changes in network status", v5, 2u);
  }

  *(*(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkMonitor) + 40) = &off_10005F690;
  swift_unknownObjectWeakAssign();
  sub_10002538C();
}

void sub_100042F4C()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer;
  if (!*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer))
  {
    v2 = v0;
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v3 = sub_100049FCC();
    sub_100008F90(v3, qword_100068348);
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      aBlock = 0;
      *v6 = 136446210;
      v16 = 0xE000000000000000;
      sub_10004AB4C();
      v21._countAndFlagsBits = 1852402976;
      v21._object = 0xE400000000000000;
      sub_10004A9DC(v21);
      v8 = sub_1000230EC(aBlock, 0xE000000000000000, &v14);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Scheduling timer for periodic updates every %{public}s", v6, 0xCu);
      sub_100008FC8(v7);
    }

    sub_100013820(0, &qword_100065258, BSContinuousMachTimer_ptr);
    v9 = sub_100045BA8();
    sub_100013820(0, &qword_100065260, OS_dispatch_queue_ptr);
    v10 = sub_10004ABFC();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_100047928;
    v20 = v11;
    aBlock = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100011A98;
    v18 = &unk_10005F6C8;
    v12 = _Block_copy(&aBlock);

    [v9 scheduleRepeatingWithFireInterval:v10 repeatInterval:v12 leewayInterval:900.0 queue:900.0 handler:60.0];
    _Block_release(v12);

    v13 = *(v2 + v1);
    *(v2 + v1) = v9;
  }
}

void sub_100043210()
{
  sub_1000437D0("Stopping location updates", &selRef_stopUpdatingLocation, 1);
  v0 = sub_100042B14();
  [v0 setDelegate:0];
}

uint64_t sub_100043270()
{
  *(*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkMonitor) + 40) = 0;
  swift_unknownObjectWeakAssign();
  return sub_100025880();
}

void sub_1000432AC()
{
  v1 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer;
  v2 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_periodicTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

void sub_10004343C(char a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus;
  v6 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus);
  if (v6 != 2 && (sub_10000A1F4(a1 & 1, v6 & 1) & 1) != 0)
  {
    sub_10004794C();
    return;
  }

  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v7 = sub_100049FCC();
  sub_10001A018(v7, qword_100068348);
  v8 = sub_100049FAC();
  v9 = sub_10004AB9C();
  if (sub_100047984(v9))
  {
    v10 = swift_slowAlloc();
    v11 = sub_10001A07C();
    v20 = v11;
    *v10 = 136446210;
    if (a1)
    {
      v12 = 0x656E696C66666FLL;
    }

    else
    {
      v12 = 0x6C62616863616572;
    }

    if (a1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE900000000000065;
    }

    v14 = sub_1000230EC(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v2, "Network status changed to %{public}s", v10, 0xCu);
    sub_100008FC8(v11);
    sub_100013F58();
    sub_100047968();
  }

  *(v3 + v5) = a1 & 1;
  if (a1)
  {
    v15 = sub_10004AF3C();

    if ((v15 & 1) == 0)
    {
      sub_10004794C();

      sub_100044818();
      return;
    }
  }

  else
  {
  }

  sub_10004794C();

  sub_1000438B4(v17, v18);
}

void sub_10004365C(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationSessionExtender);
    v4 = v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = sub_10001BBB4(Strong, *(v4 + 8));
    swift_unknownObjectRelease();
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v7 = sub_100049FCC();
    sub_100008F90(v7, qword_100068348);
    v8 = sub_100049FAC();
    v9 = sub_10004AB9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v6 & 1;
      _os_log_impl(&_mh_execute_header, v8, v9, "Requested session extension for location update; extendedSessionGranted=%{BOOL}d", v10, 8u);
    }
  }

  sub_1000437D0("Starting location updates", &selRef_startUpdatingLocation, 0);

  sub_1000438B4(0xD00000000000001DLL, 0x800000010004FD40);
}

void sub_1000437D0(const char *a1, SEL *a2, char a3)
{
  v8 = v3;
  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v9 = sub_100049FCC();
  sub_10001A018(v9, qword_100068348);
  v10 = sub_100049FAC();
  v11 = sub_10004AB9C();
  if (sub_100047984(v11))
  {
    v12 = sub_10001A048();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v4, a1, v12, 2u);
    sub_100047968();
  }

  v13 = sub_100042B14();
  [v13 *a2];

  *(v8 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) = a3;
}

void sub_1000438B4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v98 = a1;
  v5 = sub_100049B7C();
  v97 = *(v5 - 8);
  isa = v97[8].isa;
  __chkstk_darwin(v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v94 - v11;
  v13 = type metadata accessor for PosterDataModel(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PosterData(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus];
  if ((v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus + 4] & 1) != 0 || (v22 = *v21, (sub_10004AC2C() & 1) == 0))
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v32 = sub_100049FCC();
    sub_100008F90(v32, qword_100068348);

    v33 = v3;
    v34 = sub_100049FAC();
    v35 = sub_10004AB9C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v36 = 136446466;
      *(v36 + 4) = sub_1000230EC(v98, a2, &v99);
      *(v36 + 12) = 2082;
      if (v21[4])
      {
        v37 = 0xE700000000000000;
        v38 = 0x6E776F6E6B6E75;
      }

      else
      {
        v39 = *v21;
        v38 = sub_10004AC3C();
        v37 = v40;
      }

      v41 = sub_1000230EC(v38, v37, &v99);

      *(v36 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Update for %{public}s will be skipped because location is unauthorized; status=%{public}s", v36, 0x16u);
      swift_arrayDestroy();
    }

    sub_100044818();
    return;
  }

  v96 = v16;
  v23 = v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus];
  if (v23 != 2)
  {
    if (v23)
    {
    }

    else
    {
      v42 = sub_10004AF3C();

      if ((v42 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v43 = sub_100049FCC();
    sub_100008F90(v43, qword_100068348);

    v44 = sub_100049FAC();
    v45 = sub_10004AB9C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v99 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1000230EC(v98, a2, &v99);
      _os_log_impl(&_mh_execute_header, v44, v45, "Update for %{public}s will be skipped because network is offline", v46, 0xCu);
      sub_100008FC8(v47);
    }

    sub_100044818();
    return;
  }

LABEL_4:
  v24 = *&v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location];
  if (v24)
  {
    v25 = *&v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_cacheManager];
    v95 = v24;
    sub_10001A674(v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v96;
      sub_100047734(v20, v96, type metadata accessor for PosterDataModel);
      v27 = *(v26 + *(v13 + 40));
      v28 = *(v27 + 16);
      v29 = type metadata accessor for PosterDataModel.DataPoint(0);
      v30 = v29;
      if (v28)
      {
        sub_1000476D4(v27 + ((*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80)), v12, type metadata accessor for PosterDataModel.DataPoint);
        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      sub_100004544(v12, v31, 1, v30);
      v61 = sub_100027520(600.0);
      sub_10000591C(v12, &unk_100065230, &qword_10004D7F8);
      v63 = v95;
      if ((v61 & 1) != 0 || (v64 = &v96[*(v13 + 20)], v62.super.isa = v95, sub_100049E5C(v62, 0.001)))
      {
        if (qword_100063488 != -1)
        {
          swift_once();
        }

        v65 = sub_100049FCC();
        sub_100008F90(v65, qword_100068348);
        v66 = v63;

        v67 = v3;
        v68 = sub_100049FAC();
        v69 = sub_10004AB9C();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v99 = v95;
          *v70 = 136446722;
          *(v70 + 4) = sub_1000230EC(v98, a2, &v99);
          *(v70 + 12) = 2082;
          v71 = [(objc_class *)v66 timestamp];
          sub_100049B3C();

          v72 = sub_100049ADC();
          v74 = v73;
          (v97[1].isa)(v8, v5);
          v75 = sub_1000230EC(v72, v74, &v99);

          *(v70 + 14) = v75;
          *(v70 + 22) = 2082;
          if (v67[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus])
          {
            if (v67[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus] == 1)
            {
              v76 = 0xE700000000000000;
              v77 = 0x646570706F7473;
            }

            else
            {
              v76 = 0xE600000000000000;
              v77 = 0x646573756170;
            }
          }

          else
          {
            v77 = 0x64657472617473;
            v76 = 0xE700000000000000;
          }

          v92 = sub_1000230EC(v77, v76, &v99);

          *(v70 + 24) = v92;
          _os_log_impl(&_mh_execute_header, v68, v69, "Update for %{public}s will fetch new data because the current data's weather or location is stale; locationTimestamp=%{public}s, locationUpdateStatus=%{public}s", v70, 0x20u);
          swift_arrayDestroy();
        }

        sub_100045FCC(v66);
      }

      else
      {
        if (qword_100063488 != -1)
        {
          swift_once();
        }

        v78 = sub_100049FCC();
        sub_100008F90(v78, qword_100068348);
        v66 = v63;

        v79 = v3;
        v80 = sub_100049FAC();
        v81 = sub_10004AB9C();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v99 = v95;
          *v82 = 136446722;
          *(v82 + 4) = sub_1000230EC(v98, a2, &v99);
          *(v82 + 12) = 2082;
          v83 = [(objc_class *)v66 timestamp];
          sub_100049B3C();

          v84 = sub_100049ADC();
          v86 = v85;
          (v97[1].isa)(v8, v5);
          v87 = sub_1000230EC(v84, v86, &v99);

          *(v82 + 14) = v87;
          *(v82 + 22) = 2082;
          if (v79[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus])
          {
            if (v79[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus] == 1)
            {
              v88 = 0xE700000000000000;
              v89 = 0x646570706F7473;
            }

            else
            {
              v88 = 0xE600000000000000;
              v89 = 0x646573756170;
            }
          }

          else
          {
            v89 = 0x64657472617473;
            v88 = 0xE700000000000000;
          }

          v93 = sub_1000230EC(v89, v88, &v99);

          *(v82 + 24) = v93;
          _os_log_impl(&_mh_execute_header, v80, v81, "Update for %{public}s will be skipped because the current data's weather and location is recent; locationTimestamp=%{public}s, locationUpdateStatus=%{public}s", v82, 0x20u);
          swift_arrayDestroy();

          goto LABEL_64;
        }
      }

LABEL_64:
      sub_10004767C(v96, type metadata accessor for PosterDataModel);
      return;
    }

    v52 = *v20;
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v53 = sub_100049FCC();
    sub_100008F90(v53, qword_100068348);

    v54 = sub_100049FAC();
    v55 = sub_10004AB9C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *v56 = 136446466;
      *(v56 + 4) = sub_1000230EC(v98, a2, &v99);
      *(v56 + 12) = 2082;
      v57 = 0xEE00656E696C6666;
      v58 = 0x4F6B726F7774656ELL;
      switch(v52)
      {
        case 1:
          break;
        case 2:
          v57 = 0xE600000000000000;
          v58 = 0x617461446F6ELL;
          break;
        case 3:
          v58 = 0xD000000000000014;
          v59 = "weatherRequestFailed";
          goto LABEL_56;
        default:
          v58 = 0xD000000000000014;
          v59 = "locationUnauthorized";
LABEL_56:
          v57 = (v59 - 32) | 0x8000000000000000;
          break;
      }

      v90 = sub_1000230EC(v58, v57, &v99);

      *(v56 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v54, v55, "Update for %{public}s will fetch new data because the current data has error; error=%{public}s", v56, 0x16u);
      swift_arrayDestroy();
    }

    v91 = v95;
    sub_100045FCC(v95);
  }

  else
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v48 = sub_100049FCC();
    sub_100008F90(v48, qword_100068348);

    v97 = sub_100049FAC();
    v49 = sub_10004AB9C();

    if (os_log_type_enabled(v97, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v99 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_1000230EC(v98, a2, &v99);
      _os_log_impl(&_mh_execute_header, v97, v49, "Update for %{public}s will be skipped because current location is unknown", v50, 0xCu);
      sub_100008FC8(v51);
    }

    else
    {
      v60 = v97;
    }
  }
}

void sub_1000446BC(char a1)
{
  sub_1000437D0("Stopping location updates", &selRef_stopUpdatingLocation, 1);
  sub_100044818();
  if ((a1 & 1) != 0 && *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_canRequestLocationAuthorization) == 1)
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v3 = sub_100049FCC();
    sub_100008F90(v3, qword_100068348);
    v4 = sub_100049FAC();
    v5 = sub_10004AB9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Requesting when in use authorization", v6, 2u);
    }

    v7 = sub_100042B14();
    [v7 requestWhenInUseAuthorization];
  }
}

uint64_t sub_100044818()
{
  v1 = type metadata accessor for PosterData(0);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus + 4) & 1) != 0 || (v6 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus), result = sub_10004AC2C(), (result))
  {
    v7 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus);
    if (v7 == 2)
    {
      return result;
    }

    if (v7)
    {
    }

    else
    {
      v9 = sub_10004AF3C();

      if ((v9 & 1) == 0)
      {
        return result;
      }
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *v5 = v8;
  swift_storeEnumTagMultiPayload();
  sub_1000464C0(v5);
  return sub_10004767C(v5, type metadata accessor for PosterData);
}

void sub_10004495C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) && *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) != 1)
  {
  }

  else
  {
    v2 = sub_10004AF3C();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  if ((*(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus + 4) & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus);
    if (sub_10004AC2C())
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v4 = sub_100049FCC();
      sub_100008F90(v4, qword_100068348);
      v5 = sub_100049FAC();
      v6 = sub_10004AB9C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Will resume location updates after being paused", v7, 2u);
      }

      sub_1000437D0("Starting location updates", &selRef_startUpdatingLocation, 0);
    }
  }
}

void sub_100044AE4(void *a1, SEL *a2)
{
  v3 = v2;
  v6 = sub_100049E9C();
  v7 = sub_1000059BC(v6);
  v64 = v8;
  v65 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v62 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002D54(&qword_100065250, &qword_10004E5B8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v61 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = (v60 - v16);
  v17 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationSessionExtender);
  v18 = v3;
  v19 = v3 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10001BD48(Strong, *(v19 + 8));
  swift_unknownObjectRelease();
  v21 = [a1 _limitsPrecision];
  v67 = a2;
  v22 = sub_100034314(a2);
  v23 = v22;
  v66 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_location;
  v24 = a2 & 0xC000000000000001;
  v25 = (a2 & 0xFFFFFFFFFFFFFF8);
  v60[1] = a2;
  v26 = (a2 + 4);
  do
  {
    v27 = v23;
    if (!v23)
    {
      break;
    }

    --v23;
    if (__OFSUB__(v27, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      sub_100009728();
LABEL_22:
      v39 = sub_100049FCC();
      sub_10001A018(v39, qword_100068348);
      v40 = v27;
      v41 = v25;
      v42 = sub_100049FAC();
      v43 = sub_10004AB9C();

      if (os_log_type_enabled(v42, v43))
      {
        LODWORD(v64) = v43;
        v65 = v40;
        v44 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v67 = v63;
        *v44 = 141558787;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        if (*&v27[v66])
        {
          [*&v27[v66] a2[22]];
        }

        v49 = v61;
        sub_100049EAC();
        if (sub_100004288(v49, 1, v26) == 1)
        {
          sub_10000591C(v49, &qword_100065250, &qword_10004E5B8);
          v50 = 0xE300000000000000;
          v51 = 7104878;
        }

        else
        {
          v51 = sub_100049E4C();
          v50 = v52;
          v18[1](v49, v26);
        }

        v53 = sub_1000230EC(v51, v50, &v67);

        *(v44 + 14) = v53;
        *(v44 + 22) = 2160;
        *(v44 + 24) = 1752392040;
        *(v44 + 32) = 2081;
        [v41 coordinate];
        v54 = v62;
        sub_100049EBC();
        v55 = sub_100049E4C();
        v57 = v56;
        v18[1](v54, v26);
        v58 = sub_1000230EC(v55, v57, &v67);

        *(v44 + 34) = v58;
        _os_log_impl(&_mh_execute_header, v42, v64, "Location significantly changed from %{private,mask.hash}s to %{private,mask.hash}s", v44, 0x2Au);
        swift_arrayDestroy();
        sub_100013F58();
        sub_100047968();
      }

      else
      {
      }

      v59 = *&v27[v66];
      *&v27[v66] = v25;
      v25 = v41;

      sub_1000438B4(0x6E6F697461636F6CLL, 0xEF65676E61686320);
      goto LABEL_36;
    }

    if (v24)
    {
      v28 = sub_10004AD7C();
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v23 >= v25[2].isa)
      {
        goto LABEL_39;
      }

      v28 = *(v26 + 8 * v23);
    }

    v29 = v28;
    v30 = *(v18 + v66);
    a2 = v30;
    LOBYTE(v30) = sub_10004AB6C(v21, v30);
  }

  while ((v30 & 1) == 0);
  __chkstk_darwin(v22);
  v60[-2] = &v67;
  v32 = sub_100047874(sub_100047908, &v60[-4], v23, v31);
  if (v32)
  {
    v25 = v32;
    v27 = v18;
    a2 = &selRef_topAnchor;
    if (*(v18 + v66))
    {
      [*(v18 + v66) coordinate];
    }

    v18 = v64;
    v26 = v65;
    v36 = v63;
    sub_100049EAC();
    if (sub_100004288(v36, 1, v26) == 1)
    {
      sub_10000591C(v36, &qword_100065250, &qword_10004E5B8);
      goto LABEL_21;
    }

    v37.super.isa = v25;
    v38 = sub_100049E5C(v37, 0.001);
    v18[1](v36, v26);
    if (v38)
    {
LABEL_21:
      if (qword_100063488 != -1)
      {
        goto LABEL_40;
      }

      goto LABEL_22;
    }

    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v45 = sub_100049FCC();
    sub_10001A018(v45, qword_100068348);
    v46 = sub_100049FAC();
    v47 = sub_10004AB9C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = sub_10001A048();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Location updated but no significant difference from known location; Update will be skipped.", v48, 2u);
      sub_100013F58();
    }
  }

  else
  {
    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v33 = sub_100049FCC();
    sub_10001A018(v33, qword_100068348);
    v25 = sub_100049FAC();
    v34 = sub_10004AB9C();
    if (os_log_type_enabled(v25, v34))
    {
      v35 = sub_10001A048();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v25, v34, "Location updated but did not meet accuracy requirements; Update will be skipped.", v35, 2u);
      sub_100013F58();
    }
  }

LABEL_36:
}

uint64_t sub_100045280()
{
  v1 = v0;
  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v2 = sub_100049FCC();
  sub_10001A018(v2, qword_100068348);
  swift_errorRetain();
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = sub_10001A07C();
    v14 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_10004AFBC();
    v9 = sub_1000230EC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Location request had error=%{public}s", v5, 0xCu);
    sub_100008FC8(v6);
    sub_100047968();
    sub_100013F58();
  }

  type metadata accessor for Code(0);
  v14 = 0;
  sub_100047794();
  result = sub_10004991C();
  if ((result & 1) == 0)
  {
    v11 = *(v0 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationSessionExtender);
    v12 = v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10001BD48(Strong, *(v12 + 8));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100045494(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus;
  v4 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_authorizationStatus);
  v5 = *(v3 + 4);
  v6 = [a1 authorizationStatus];
  *v3 = v6;
  *(v3 + 4) = 0;
  if ((v5 & 1) == 0 && (v7 = sub_10004AC2C() & 1, (sub_10004AC2C() & 1) == v7))
  {
    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v19 = sub_100049FCC();
    sub_10001A018(v19, qword_100068348);
    oslog = sub_100049FAC();
    v20 = sub_10004AB9C();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = sub_10001A07C();
      v31 = v22;
      *v21 = 136446466;
      v23 = sub_10004AC3C();
      v25 = sub_1000230EC(v23, v24, &v31);

      *(v21 + 4) = v25;
      *(v21 + 12) = 1024;
      *(v21 + 14) = sub_10004AC2C() & 1;
      _os_log_impl(&_mh_execute_header, oslog, v20, "Location authorization status changed, but no change to whether the poster is authorized to use location; authorizationStatus=%{public}s, isAuthorized=%{BOOL}d", v21, 0x12u);
      sub_100008FC8(v22);
      sub_100013F58();
      sub_100013F58();
    }

    sub_10004794C();
  }

  else
  {
    if (qword_100063488 != -1)
    {
      sub_100009728();
    }

    v8 = sub_100049FCC();
    sub_10001A018(v8, qword_100068348);
    v9 = sub_100049FAC();
    v10 = sub_10004AB9C();
    if (sub_100047984(v10))
    {
      v11 = swift_slowAlloc();
      v12 = sub_10001A07C();
      v31 = v12;
      *v11 = 136446466;
      v13 = sub_10004AC3C();
      v15 = sub_1000230EC(v13, v14, &v31);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1024;
      *(v11 + 14) = sub_10004AC2C() & 1;
      _os_log_impl(&_mh_execute_header, v9, v2, "Location authorization status changed; authorizationStatus=%{public}s, isAuthorized=%{BOOL}d", v11, 0x12u);
      sub_100008FC8(v12);
      sub_100047968();
      sub_100013F58();
    }

    if (v6 - 1 < 2)
    {
      sub_1000437D0("Stopping location updates", &selRef_stopUpdatingLocation, 1);
      sub_10004794C();

      sub_100044818();
    }

    else if (v6 - 3 >= 2)
    {
      sub_10004794C();

      sub_1000446BC(v28);
    }

    else
    {
      sub_10004794C();

      sub_10004365C(v16);
    }
  }
}

void sub_10004581C()
{
  v1 = v0;
  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v2 = sub_100049FCC();
  sub_10001A018(v2, qword_100068348);
  v3 = sub_100049FAC();
  v4 = sub_10004AB9C();
  if (os_log_type_enabled(v3, v4))
  {
    *sub_10001A048() = 0;
    sub_1000479A0(&_mh_execute_header, v5, v6, "Location manager did pause location updates");
    sub_100013F58();
  }

  *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_locationUpdateStatus) = 2;
}

void sub_100045934()
{
  if (qword_100063488 != -1)
  {
    sub_100009728();
  }

  v0 = sub_100049FCC();
  sub_10001A018(v0, qword_100068348);
  oslog = sub_100049FAC();
  v1 = sub_10004AB9C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_10001A048();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Location manager did resume location updates", v2, 2u);
    sub_100013F58();
  }
}

_BYTE *storeEnumTagSinglePayload for PosterDataManager.LocationUpdateStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100045B18);
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

unint64_t sub_100045B54()
{
  result = qword_100065228;
  if (!qword_100065228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065228);
  }

  return result;
}

id sub_100045BA8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10004A95C();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

void sub_100045C1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkMonitor);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v6 = sub_100049FCC();
      sub_100008F90(v6, qword_100068348);
      v7 = sub_100049FAC();
      v8 = sub_10004AB7C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Found unset network delegate during periodic update", v9, 2u);
      }
    }

    v10 = sub_100042B14();
    v11 = [v10 delegate];

    if (v11)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v12 = sub_100049FCC();
      sub_100008F90(v12, qword_100068348);
      v13 = sub_100049FAC();
      v14 = sub_10004AB7C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Found unset location manager delegate during periodic update", v15, 2u);
      }
    }

    sub_10004495C();
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v16 = sub_100049FCC();
    sub_100008F90(v16, qword_100068348);
    v17 = sub_100049FAC();
    v18 = sub_10004AB9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Periodic timer fired - will check if update is needed", v19, 2u);
    }

    sub_1000438B4(0x6369646F69726570, 0xEE0072656D697420);
  }

  else
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v3 = sub_100049FCC();
    sub_100008F90(v3, qword_100068348);
    v1 = sub_100049FAC();
    v4 = sub_10004AB7C();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v1, v4, "Periodic timer fired - self does not exist so the update will be skipped", v5, 2u);
    }
  }
}

void sub_100045FCC(void *a1)
{
  v2 = v1;
  v4 = sub_100049E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation;
  if (!*(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation))
  {
    goto LABEL_4;
  }

  [a1 coordinate];
  sub_100049EBC();
  v13 = *(v2 + v12);
  if (!v13)
  {
    __break(1u);
    return;
  }

  v40.super.isa = v13;
  isa = v40.super.isa;
  v15 = sub_100049E5C(v40, 0.001);

  v16 = *(v5 + 8);
  v16(v11, v4);
  if (!v15)
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v28 = sub_100049FCC();
    sub_100008F90(v28, qword_100068348);
    v29 = a1;
    v30 = sub_100049FAC();
    v31 = sub_10004AB9C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2081;
      [v29 coordinate];
      sub_100049EBC();
      v34 = sub_100049E4C();
      v36 = v35;
      v16(v9, v4);
      v37 = sub_1000230EC(v34, v36, &v39);

      *(v32 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Update will be skipped because there is already a running request for the location=%{private,mask.hash}s", v32, 0x16u);
      sub_100008FC8(v33);
    }
  }

  else
  {
LABEL_4:
    v17 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkSessionExtender);
    v18 = v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    LOBYTE(v18) = sub_10001BBB4(Strong, *(v18 + 8));
    swift_unknownObjectRelease();
    if (v18)
    {
      v20 = *(v2 + v12);
      *(v2 + v12) = a1;

      v21 = *(v2 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_dataUpdater);
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = a1;

      sub_100005A7C(v23, sub_100047674, v22);
    }

    else
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v24 = sub_100049FCC();
      sub_100008F90(v24, qword_100068348);
      v25 = sub_100049FAC();
      v26 = sub_10004AB9C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Update will be skipped because an extended session was not granted", v27, 2u);
      }
    }
  }
}

void sub_1000463F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation);
    *(Strong + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_activeRequestLocation) = 0;

    v5 = *&v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkSessionExtender];
    v6 = &v3[OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_sessionExtenderDelegate];
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 1);

    sub_10001BD48(v7, v8);

    swift_unknownObjectRelease();
    sub_1000464C0(a1);
  }
}

uint64_t sub_1000464C0(uint64_t a1)
{
  v136 = sub_100049E9C();
  v132 = *(v136 - 8);
  v3 = *(v132 + 64);
  __chkstk_darwin(v136);
  v129 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100049B7C();
  v130 = *(v5 - 8);
  v131 = v5;
  v6 = *(v130 + 64);
  __chkstk_darwin(v5);
  v128 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D54(&unk_100065230, &qword_10004D7F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v126 - v13;
  v137 = type metadata accessor for PosterDataModel(0);
  v15 = *(*(v137 - 1) + 64);
  v16 = __chkstk_darwin(v137);
  v135 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v134 = (&v126 - v19);
  v20 = __chkstk_darwin(v18);
  v133 = &v126 - v21;
  __chkstk_darwin(v20);
  v138 = (&v126 - v22);
  v23 = type metadata accessor for PosterData(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v127 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v126 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v126 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v126 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v126 - v37;
  __chkstk_darwin(v36);
  v40 = &v126 - v39;
  sub_1000476D4(a1, &v126 - v39, type metadata accessor for PosterData);
  v41 = v1;
  v42 = *(v1 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_networkStatus);
  if (v42 == 2)
  {
    goto LABEL_16;
  }

  if (v42)
  {
  }

  else
  {
    v43 = sub_10004AF3C();

    if ((v43 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v44 = *(v41 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_cacheManager);
  sub_10001A674(v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_6:
    sub_10004767C(v38, type metadata accessor for PosterData);
    goto LABEL_16;
  }

  if (*v38 != 1)
  {
    goto LABEL_16;
  }

  sub_1000476D4(v40, v35, type metadata accessor for PosterData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v35;
    goto LABEL_6;
  }

  if (*v35 == 3)
  {
    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v45 = sub_100049FCC();
    sub_100008F90(v45, qword_100068348);
    v46 = sub_100049FAC();
    v47 = sub_10004AB9C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Skipping update to weatherRequestFailed error as network is already known to be offline", v48, 2u);
    }

    return sub_10004767C(v40, type metadata accessor for PosterData);
  }

LABEL_16:
  sub_1000476D4(v40, v32, type metadata accessor for PosterData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = type metadata accessor for PosterData;
    v50 = v32;
LABEL_18:
    sub_10004767C(v50, v49);
    goto LABEL_26;
  }

  v51 = "allery";
  switch(*v32)
  {
    case 1:
    case 2:
      v126 = *v32;
      goto LABEL_25;
    case 3:
      v51 = "ized";
      break;
    default:
      break;
  }

  if (0x800000010004E770 == (v51 | 0x8000000000000000))
  {

LABEL_26:
    v53 = *(v41 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_cacheManager);
    sub_10001AD40();
    v54 = v41 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_posterDataDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v55 = *(v54 + 8);
      ObjectType = swift_getObjectType();
      (*(v55 + 8))(v40, ObjectType, v55);
      swift_unknownObjectRelease();
    }

    return sub_10004767C(v40, type metadata accessor for PosterData);
  }

  v126 = *v32;
LABEL_25:
  v52 = sub_10004AF3C();

  if (v52)
  {
    goto LABEL_26;
  }

  v58 = *(v41 + OBJC_IVAR____TtC13WeatherPoster17PosterDataManager_cacheManager);
  sub_10001A674(v29);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v49 = type metadata accessor for PosterData;
    v50 = v29;
    goto LABEL_18;
  }

  v59 = v138;
  sub_100047734(v29, v138, type metadata accessor for PosterDataModel);
  v60 = *(v59 + v137[10]);
  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = v61 - 1;
    v63 = type metadata accessor for PosterDataModel.DataPoint(0);
    sub_1000476D4(v60 + ((*(*(v63 - 8) + 80) + 32) & ~*(*(v63 - 8) + 80)) + *(*(v63 - 8) + 72) * v62, v14, type metadata accessor for PosterDataModel.DataPoint);
    v64 = v14;
    v65 = 0;
    v66 = v63;
  }

  else
  {
    v66 = type metadata accessor for PosterDataModel.DataPoint(0);
    v64 = v14;
    v65 = 1;
  }

  sub_100004544(v64, v65, 1, v66);
  v67 = sub_100027520(900.0);
  sub_10000591C(v14, &unk_100065230, &qword_10004D7F8);
  if (v67)
  {
    v68 = *(v60 + 16);
    v69 = type metadata accessor for PosterDataModel.DataPoint(0);
    v70 = v69;
    if (v68)
    {
      sub_1000476D4(v60 + ((*(*(v69 - 8) + 80) + 32) & ~*(*(v69 - 8) + 80)), v12, type metadata accessor for PosterDataModel.DataPoint);
      v71 = 0;
    }

    else
    {
      v71 = 1;
    }

    sub_100004544(v12, v71, 1, v70);
    v80 = sub_100027520(86400.0);
    sub_10000591C(v12, &unk_100065230, &qword_10004D7F8);
    if ((v80 & 1) == 0)
    {
      if (qword_100063488 != -1)
      {
        swift_once();
      }

      v89 = sub_100049FCC();
      sub_100008F90(v89, qword_100068348);
      v90 = v134;
      sub_1000476D4(v138, v134, type metadata accessor for PosterDataModel);
      v91 = sub_100049FAC();
      v92 = sub_10004AB9C();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = 0x800000010004E770;
        v94 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v94 = 136446466;
        v95 = 0xD000000000000014;
        switch(v126)
        {
          case 1:
            v95 = 0x4F6B726F7774656ELL;
            v93 = 0xEE00656E696C6666;
            break;
          case 2:
            v93 = 0xE600000000000000;
            v95 = 0x617461446F6ELL;
            break;
          case 3:
            v93 = 0x800000010004E7A0;
            break;
          default:
            break;
        }

        v108 = sub_1000230EC(v95, v93, &v139);

        *(v94 + 4) = v108;
        *(v94 + 12) = 2082;
        v109 = v134;
        v110 = sub_10002A190();
        v112 = v111;
        sub_10004767C(v109, type metadata accessor for PosterDataModel);
        v113 = sub_1000230EC(v110, v112, &v139);

        *(v94 + 14) = v113;
        _os_log_impl(&_mh_execute_header, v91, v92, "Poster data changed to a transient error, but cached data is updatable - will update to show new time of day; error=%{public}s, currentData=%{public}s", v94, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10004767C(v90, type metadata accessor for PosterDataModel);
      }

      v114 = v128;
      sub_100049B6C();
      v115 = v138;
      v135 = sub_100027150(v138, v114);
      v116 = sub_10004A64C();
      v117 = *(v116 + 48);
      v118 = *(v116 + 52);
      swift_allocObject();
      sub_10004A63C();
      v119 = v137;
      v120 = v137[6];
      v126 = v137[5];
      v132 = *(v132 + 16);
      (v132)(v129, v115 + v126, v136);
      sub_10004AC9C();
      v121 = v127;
      v122 = &v127[v119[9]];
      sub_10004A62C();

      (*(v130 + 8))(v114, v131);
      v134 = type metadata accessor for PosterData;
      sub_10004767C(v40, type metadata accessor for PosterData);
      v123 = v115[1];
      v133 = *v115;
      (v132)(&v121[v119[5]], v115 + v126, v136);
      v124 = v119[6];
      v125 = sub_100049C2C();
      (*(*(v125 - 8) + 16))(&v121[v124], v115 + v120, v125);
      sub_1000318D8(v115 + v119[7], &v121[v119[7]]);
      sub_1000318D8(v115 + v119[8], &v121[v119[8]]);

      sub_10004767C(v115, type metadata accessor for PosterDataModel);
      *v121 = v133;
      *(v121 + 1) = v123;
      *&v121[v119[10]] = v135;
      swift_storeEnumTagMultiPayload();
      sub_100047734(v121, v40, v134);
      goto LABEL_26;
    }

    if (qword_100063488 != -1)
    {
      swift_once();
    }

    v81 = sub_100049FCC();
    sub_100008F90(v81, qword_100068348);
    v82 = v138;
    v83 = v133;
    sub_1000476D4(v138, v133, type metadata accessor for PosterDataModel);
    v84 = sub_100049FAC();
    v85 = sub_10004AB9C();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = 0x800000010004E770;
      v87 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v87 = 136446466;
      v88 = 0xD000000000000014;
      switch(v126)
      {
        case 1:
          v88 = 0x4F6B726F7774656ELL;
          v86 = 0xEE00656E696C6666;
          break;
        case 2:
          v86 = 0xE600000000000000;
          v88 = 0x617461446F6ELL;
          break;
        case 3:
          v86 = 0x800000010004E7A0;
          break;
        default:
          break;
      }

      v102 = sub_1000230EC(v88, v86, &v139);

      *(v87 + 4) = v102;
      *(v87 + 12) = 2082;
      v103 = v133;
      v104 = sub_10002A190();
      v106 = v105;
      sub_10004767C(v103, type metadata accessor for PosterDataModel);
      v107 = sub_1000230EC(v104, v106, &v139);

      *(v87 + 14) = v107;
      _os_log_impl(&_mh_execute_header, v84, v85, "Poster data changed to a transient error, and cached data is no longer usable - will update to show error; error=%{public}s, currentData=%{public}s", v87, 0x16u);
      swift_arrayDestroy();

      v50 = v138;
      v49 = type metadata accessor for PosterDataModel;
    }

    else
    {

      sub_10004767C(v83, type metadata accessor for PosterDataModel);
      v50 = v82;
      v49 = type metadata accessor for PosterDataModel;
    }

    goto LABEL_18;
  }

  v72 = 0x800000010004E770;
  if (qword_100063488 != -1)
  {
    swift_once();
  }

  v73 = sub_100049FCC();
  sub_100008F90(v73, qword_100068348);
  v74 = v138;
  v75 = v135;
  sub_1000476D4(v138, v135, type metadata accessor for PosterDataModel);
  v76 = sub_100049FAC();
  v77 = sub_10004AB9C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    *v78 = 136446466;
    v79 = 0xD000000000000014;
    switch(v126)
    {
      case 1:
        v79 = 0x4F6B726F7774656ELL;
        v72 = 0xEE00656E696C6666;
        break;
      case 2:
        v72 = 0xE600000000000000;
        v79 = 0x617461446F6ELL;
        break;
      case 3:
        v72 = 0x800000010004E7A0;
        break;
      default:
        break;
    }

    v96 = sub_1000230EC(v79, v72, &v139);

    *(v78 + 4) = v96;
    *(v78 + 12) = 2082;
    v97 = sub_10002A190();
    v98 = v75;
    v100 = v99;
    sub_10004767C(v98, type metadata accessor for PosterDataModel);
    v101 = sub_1000230EC(v97, v100, &v139);

    *(v78 + 14) = v101;
    _os_log_impl(&_mh_execute_header, v76, v77, "Poster data changed to a transient error, but cached data is recent - will continue to show existing data; error=%{public}s, currentData=%{public}s", v78, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10004767C(v75, type metadata accessor for PosterDataModel);
  }

  sub_10004767C(v74, type metadata accessor for PosterDataModel);
  return sub_10004767C(v40, type metadata accessor for PosterData);
}

uint64_t sub_10004763C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004767C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100005A24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000476D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100005A24(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100047734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100005A24(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_100047794()
{
  result = qword_100065240;
  if (!qword_100065240)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065240);
  }

  return result;
}

unint64_t sub_1000477EC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

id sub_100047810(unint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_1000477EC(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return sub_10004AD7C();
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_100047874(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_1000478CC@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_100047810(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100047930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100047968()
{
}

BOOL sub_100047984(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000479A0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1000479C0(double a1)
{
  *(v1 + 24) = 0;
  v3 = *(v1 + 16);
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = objc_opt_self();
  sub_100013FBC();
  v5 = swift_allocObject();
  swift_weakInit();
  sub_100013FBC();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v11[4] = sub_100048110;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100011A98;
  v11[3] = &unk_10005F768;
  v8 = _Block_copy(v11);

  v9 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:a1];
  _Block_release(v8);
  v10 = *(v1 + 16);
  *(v1 + 16) = v9;
}

void sub_100047B2C()
{
  *(v0 + 24) = 0;
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v1 = *(v0 + 16);
  }

  *(v0 + 16) = 0;
}

uint64_t sub_100047B70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(v1 + 16);
    }

    else
    {
      v3 = 0;
    }

    *(v1 + 16) = 0;

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_10004A0EC();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        swift_weakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v5;

        v10 = v5;
        sub_10004A04C();
      }

      else
      {
      }
    }
  }

  return result;
}

void *sub_100047CC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100049B7C();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004A67C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004A58C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    result = sub_10004A0EC();
    if (result)
    {
      v21[1] = a2;

      (*(v13 + 104))(v16, enum case for BoundEntity.lightning(_:), v12);
      v21[0] = sub_10004A57C();
      (*(v13 + 8))(v16, v12);
      (*(v8 + 104))(v11, enum case for BoundPropertyName.lightningRespawnSeed(_:), v7);
      sub_10004A66C();
      (*(v8 + 8))(v11, v7);
      sub_100049B6C();
      sub_100049AAC();
      v19 = v18;
      v20 = v18;
      result = (*(v22 + 8))(v6, v3);
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v19 > -9.22337204e18)
      {
        if (v19 < 9.22337204e18)
        {
          v23[3] = &type metadata for Int;
          v23[0] = v19;
          sub_10004A0DC();

          return sub_100008FC8(v23);
        }

LABEL_10:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_10004800C()
{

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t sub_100048068()
{
  swift_weakDestroy();
  sub_100013FBC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10004809C()
{
  swift_unknownObjectWeakDestroy();
  sub_100013FBC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000480D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048110()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100047B70();
}

uint64_t sub_100048118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100048130()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048294(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100049FCC();
  sub_10002D6B8(v3, a2);
  sub_100008F90(v3, a2);
  return sub_100049FBC();
}

uint64_t sub_10004830C()
{
  v0 = sub_100049FCC();
  sub_10002D6B8(v0, qword_1000683D8);
  sub_100008F90(v0, qword_1000683D8);
  return sub_100049FBC();
}

id WeatherIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for WeatherIntent();
  v9 = sub_100048F58(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10004A95C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id WeatherIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10004A95C();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for WeatherIntent();
  v12 = sub_100048F58(v16, "initWithIdentifier:backingStore:", v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id WeatherIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = sub_100048F64();

  v3 = sub_10004A95C();

  if (v1)
  {
    v4.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4.super.isa];

  return v5;
}

id WeatherIntent.init(domain:verb:parametersByName:)()
{
  v2 = sub_100048F64();

  v3 = sub_10004A95C();

  if (v1)
  {
    v4.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for WeatherIntent();
  v5 = objc_msgSendSuper2(&v7, "initWithDomain:verb:parametersByName:", v2, v3, v4.super.isa);

  return v5;
}

unint64_t WeatherIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100048848@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = WeatherIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t WeatherIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100048918(uint64_t a1)
{
  v3 = OBJC_IVAR___WeatherIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *WeatherIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___WeatherIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id WeatherIntentResponse.init()()
{
  *&v0[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeatherIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id WeatherLocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id WeatherIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_100048F58(v13, "initWithCoder:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id WeatherIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___WeatherIntentResponse_code) = 0;
  v13 = type metadata accessor for WeatherIntentResponse();
  v9 = sub_100048F58(v13, "initWithBackingStore:", v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id WeatherIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id WeatherIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___WeatherIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10004A8EC().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_100048E5C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100048E98()
{
  result = qword_100065318;
  if (!qword_100065318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065318);
  }

  return result;
}

uint64_t sub_100048EEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = WeatherIntentResponse.code.getter();
  *a2 = result;
  return result;
}

NSString sub_100048F64()
{

  return sub_10004A95C();
}

id WeatherLocation.__allocating_init(identifier:display:pronunciationHint:)()
{
  sub_1000498C8();
  if (v2)
  {
    v3 = sub_10004A95C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10004A95C();

  if (v1)
  {
    v5 = sub_10004A95C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id WeatherLocation.init(identifier:display:pronunciationHint:)()
{
  sub_1000498C8();
  if (v2)
  {
    v3 = sub_10004A95C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10004A95C();

  if (v1)
  {
    v5 = sub_10004A95C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for WeatherLocation();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:displayString:pronunciationHint:", v3, v4, v5);

  return v6;
}

id WeatherLocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WeatherLocation();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static WeatherLocationResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static WeatherLocationResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10004943C();

    sub_10004AE4C();
  }

  else
  {

    sub_10004AF5C();
    sub_10004943C();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10004943C();
  isa = sub_10004AA4C().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_10004943C()
{
  result = qword_100065398;
  if (!qword_100065398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100065398);
  }

  return result;
}

id static WeatherLocationResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___WeatherLocationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id WeatherLocationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10004A8EC().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id WeatherLocationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_10004A8EC().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for WeatherLocationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100049868(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000498A0()
{

  return sub_10004AE3C();
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}