uint64_t sub_10001407C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  result = 2;
  if (v2)
  {
    sub_100057CA0();

    return 2;
  }

  return result;
}

void sub_1000140D4()
{
  sub_100019748();
  v55 = v0;
  v54 = sub_1000578D0();
  sub_1000068E4();
  v52 = v1;
  __chkstk_darwin(v2);
  sub_100019500();
  v53 = v3;
  sub_10001970C();
  __chkstk_darwin(v4);
  v46 = &v43 - v5;
  sub_1000197DC();
  v51 = sub_100057930();
  sub_1000068E4();
  v56 = v6;
  __chkstk_darwin(v7);
  sub_100019500();
  v49 = v8;
  sub_10001970C();
  __chkstk_darwin(v9);
  v50 = &v43 - v10;
  sub_1000197DC();
  sub_1000578E0();
  sub_1000068E4();
  v47 = v12;
  v48 = v11;
  __chkstk_darwin(v11);
  sub_1000068D4();
  v15 = v14 - v13;
  v45 = sub_100057910();
  sub_1000068E4();
  v44 = v16;
  __chkstk_darwin(v17);
  sub_1000068D4();
  v20 = v19 - v18;
  v21 = sub_100057E10();
  sub_1000068E4();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_1000068D4();
  v27 = v26 - v25;
  sub_100005A1C(0, &unk_10007F1C0);
  v57[0] = &_swiftEmptyArrayStorage;
  sub_1000192D0(&unk_10007FCE0, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_100005890(&unk_10007F1D0);
  sub_100005968(&unk_10007FCF0, &unk_10007F1D0);
  sub_100058000();
  v28 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
  v29 = v55;
  sub_100019514();
  swift_beginAccess();
  v30 = *(v29 + v28);
  v31 = sub_100057E20();

  (*(v23 + 8))(v27, v21);
  swift_getObjectType();
  sub_10001963C();
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57[4] = sub_10001934C;
  v57[5] = v32;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 1107296256;
  v57[2] = sub_10000AF8C;
  v57[3] = &unk_1000731C0;
  v33 = _Block_copy(v57);

  sub_1000399F4();
  sub_1000399F8();
  sub_100057E50();
  _Block_release(v33);
  (*(v47 + 8))(v15, v48);
  (*(v44 + 8))(v20, v45);

  v34 = v49;
  sub_100057920();
  v35 = v46;
  static DispatchTimeInterval.seconds(_:)(v46, 30.0);
  v36 = v50;
  sub_100057960();
  v37 = *(v52 + 8);
  v38 = v54;
  v37(v35, v54);
  v39 = *(v56 + 8);
  v56 += 8;
  v40 = v34;
  v41 = v51;
  v39(v40, v51);
  sub_1000146B8(v35);
  v42 = v53;
  sub_10001472C(v53);
  sub_100057EC0();
  v37(v42, v38);
  v37(v35, v38);
  sub_100057E90();
  v39(v36, v41);
  *(v55 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_configurationTimer) = v31;
  swift_unknownObjectRelease();
  sub_100019718();
}

void sub_100014664()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000147A4();
  }
}

uint64_t sub_1000146B8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = sub_1000578D0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10001472C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = sub_1000578D0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1000147A4()
{
  v1 = v0;
  v2 = sub_1000577F0();
  sub_1000068E4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000068D4();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
  sub_100019514();
  swift_beginAccess();
  (*(v4 + 16))(v8, v1 + v9, v2);
  isa = sub_1000577A0().super.isa;
  v11 = sub_10001981C();
  v12(v11);
  v13 = sub_100018A40(isa);

  v14 = sub_100057850();
  sub_100057D70();
  v15 = sub_100019834();
  if (os_log_type_enabled(v15, v16))
  {
    sub_1000196C0();
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    sub_100019808();
    _os_log_impl(v18, v19, v20, v21, v22, v23);
    sub_10000DF70();
  }

  sub_100005A1C(0, &qword_10007F000);
  sub_100057A50();
  sub_1000194E0();
  sub_1000194CC();
  v30 = sub_100018664(v24, v25, v26, v27, v28, v29);
  sub_1000161D0(v30);
  sub_100014974();
}

uint64_t sub_100014974()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_configurationTimer;
  if (*(v0 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_configurationTimer))
  {
    swift_getObjectType();
    sub_100019828();
    swift_unknownObjectRetain();
    sub_100057E70();
    swift_unknownObjectRelease();
    *(v0 + v1) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000149F4()
{
  v1 = v0;
  sub_100014974();
  v2 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClient];
  *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoClient] = 0;

  v3 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoStream;
  v4 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoStream];
  if (v4)
  {
    v5 = v4;
    sub_10000C030();

    v6 = *&v1[v3];
    *&v1[v3] = 0;
  }

  v7 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_audioStream;
  v8 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_audioStream];
  if (v8)
  {
    v9 = v8;
    sub_100028B48();

    v10 = *&v1[v7];
    *&v1[v7] = 0;
  }

  v11 = &v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate];
  sub_100019514();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = Strong;
  v14 = *(v11 + 1);
  if (*&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream])
  {
    if (Strong)
    {
      swift_getObjectType();
      v15 = *(v14 + 48);
      swift_unknownObjectRetain();
      sub_1000197E8();
      v15();
      swift_unknownObjectRelease();
    }

    sub_10000F9C0(0);
  }

  if (*&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_coexSession])
  {
    *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_coexSession] = 0;
    sub_100019698();
    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = v13;
    v16[4] = v14;
    swift_unknownObjectRetain();
    v17 = v1;
    sub_10002121C(sub_100019024, v16);

    swift_unknownObjectRelease();
  }

  else if (v13)
  {
    swift_getObjectType();
    v18 = *(v14 + 72);
    swift_unknownObjectRetain();
    sub_1000197E8();
    v18();
    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_100014BE4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000578E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100057910();
  v30 = *(v12 - 8);
  v31 = v12;
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = v9;
    swift_errorRetain();
    v15 = sub_100057850();
    v16 = sub_100057D70();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = a4;
      v19 = v18;
      *v17 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to stop the coex session: %@", v17, 0xCu);
      sub_100019138(v19, &qword_10007EFF0);
      a4 = v28;
    }

    else
    {
    }

    v9 = v29;
  }

  v21 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
  swift_beginAccess();
  v22 = *&a2[v21];
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a2;
  aBlock[4] = sub_10001906C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF8C;
  aBlock[3] = &unk_1000730D0;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v25 = a2;
  v26 = v22;
  sub_100057900();
  v32 = &_swiftEmptyArrayStorage;
  sub_1000192D0(&qword_10007F010, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  sub_100058000();
  sub_100057DE0();
  _Block_release(v24);

  (*(v9 + 8))(v11, v8);
  (*(v30 + 8))(v14, v31);
}

uint64_t sub_100014FD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 72))(a3, ObjectType, a2);
  }

  return result;
}

uint64_t sub_100015038()
{
  sub_100014974();
  v1 = v0 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  sub_100019514();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void SidecarDisplaySession.__deallocating_deinit()
{
  sub_100019748();
  v1 = v0;
  v54 = sub_100057880();
  sub_1000068E4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_1000577F0();
  sub_1000068E4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000068D4();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
  sub_100019514();
  swift_beginAccess();
  (*(v12 + 16))(v16, &v1[v17], v10);
  isa = sub_1000577A0().super.isa;
  v19 = sub_10001981C();
  v20(v19);
  v21 = sub_100018A40(isa);

  v22 = [*&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request] device];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 description];
    v25 = sub_100057A50();
    v27 = v26;

    v28 = [v23 model];
    v29 = sub_100057A50();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {

      v31 = 0xE300000000000000;
      v29 = 6512973;
    }

    (*(v3 + 16))(v9, &v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_logger], v54);

    v33 = sub_100057850();
    v34 = sub_100057D80();
    v53 = v9;
    v35 = v3;
    v36 = v34;

    if (os_log_type_enabled(v33, v36))
    {
      v37 = swift_slowAlloc();
      v51 = v25;
      v38 = v21;
      v39 = v37;
      v52 = swift_slowAlloc();
      v55 = v52;
      *v39 = 134218498;
      *(v39 + 4) = v38;
      *(v39 + 12) = 2082;
      v40 = sub_10000D850(v29, v31, &v55);

      *(v39 + 14) = v40;
      *(v39 + 22) = 2082;
      v41 = sub_10000D850(v51, v27, &v55);

      *(v39 + 24) = v41;
      _os_log_impl(&_mh_execute_header, v33, v36, "=== Sidecar Session %lx Ended %{public}s %{public}s ===", v39, 0x20u);
      v25 = v52;
      swift_arrayDestroy();
      sub_10000DF70();

      sub_10000DF70();
    }

    else
    {
    }

    (*(v35 + 8))(v53, v54);
  }

  else
  {
    (*(v3 + 16))(v6, &v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_logger], v54);
    v42 = sub_100057850();
    v25 = sub_100057D80();
    v43 = sub_100019834();
    if (os_log_type_enabled(v43, v44))
    {
      sub_1000196C0();
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v42, v25, "=== Sidecar Session %lx Ended ===", v45, 0xCu);
      sub_10000DF70();
    }

    (*(v3 + 8))(v6, v54);
  }

  v46 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_hidSidecarStream];
  v47 = sub_100019828();
  sub_10000F834(v47, 0);

  v48 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_videoSidecarStream];
  v49 = sub_100019828();
  sub_10000F834(v49, 0);

  v50 = type metadata accessor for SidecarDisplaySession(0);
  v56.receiver = v1;
  v56.super_class = v50;
  objc_msgSendSuper2(&v56, "dealloc");
  sub_100019718();
}

void SidecarDisplaySession.observeValue(forKeyPath:of:change:context:)()
{
  sub_100019748();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1000578E0();
  sub_1000068E4();
  v72 = v13;
  __chkstk_darwin(v14);
  sub_1000068D4();
  v17 = v16 - v15;
  v18 = sub_100057910();
  sub_1000068E4();
  __chkstk_darwin(v19);
  sub_1000068D4();
  v23 = v22 - v21;
  if (!v3 || v3 != v1)
  {
    if (v9)
    {
      v37 = sub_100057A20();
    }

    else
    {
      v37 = 0;
    }

    sub_100018AB0(v7, &v73);
    v38 = v75;
    if (v75)
    {
      v39 = sub_10000AAF4(&v73, v75);
      v40 = *(v38 - 1);
      __chkstk_darwin(v39);
      sub_1000068D4();
      v43 = v42 - v41;
      (*(v40 + 16))(v42 - v41);
      v44 = sub_100058220();
      (*(v40 + 8))(v43, v38);
      sub_10000904C(&v73);
      if (v5)
      {
LABEL_23:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_1000192D0(&qword_10007EA20, type metadata accessor for NSKeyValueChangeKey);
        v45.super.isa = sub_1000579A0().super.isa;
LABEL_26:
        v46 = type metadata accessor for SidecarDisplaySession(0);
        v79.receiver = v1;
        v79.super_class = v46;
        objc_msgSendSuper2(&v79, "observeValueForKeyPath:ofObject:change:context:", v37, v44, v45.super.isa, v3);

        swift_unknownObjectRelease();
        goto LABEL_44;
      }
    }

    else
    {
      v44 = 0;
      if (v5)
      {
        goto LABEL_23;
      }
    }

    v45.super.isa = 0;
    goto LABEL_26;
  }

  v71 = v20;
  v24 = 0xE000000000000000;
  if (!v9)
  {
    v11 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_46;
  }

  v25 = v11 == 0x64656873696E6966 && v9 == 0xE800000000000000;
  if (v25 || (sub_100058230() & 1) != 0)
  {
    sub_100018AB0(v7, &v73);
    if (v75)
    {
      sub_100005A1C(0, &qword_10007F008);
      if (sub_100019874())
      {
        v26 = v78;
        if ([v78 isFinished])
        {
          v70 = v26;
          if (([v26 isCancelled] & 1) == 0)
          {
            v27 = [v26 error];
            if (v27)
            {
              v28 = v27;
              __chkstk_darwin(v27);
              v69 = v29;
              sub_10002A76C(sub_10000DEF0);
              v30 = sub_100057660();
              v31 = [v30 userInfo];
              v32 = sub_1000579B0();

              v33 = sub_100057A50();
              sub_10000EB54(v33, v34, v32, &v73);

              if (v75)
              {
                sub_100005A1C(0, &qword_10007F000);
                v35 = sub_100019874();
                if (v35)
                {
                  v36 = v78;
                  __chkstk_darwin(v35);
                  sub_10002AC8C(sub_10000CAC0, 0, sub_10000DF6C);
                }

                else
                {
                }
              }

              else
              {

                sub_100019138(&v73, &unk_10007EEE0);
              }
            }
          }

          v59 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
          sub_100019514();
          swift_beginAccess();
          v60 = *&v1[v59];
          sub_10001963C();
          v61 = swift_allocObject();
          *(v61 + 16) = v1;
          v76 = sub_100018B20;
          v77 = v61;
          *&v73 = _NSConcreteStackBlock;
          *(&v73 + 1) = 1107296256;
          sub_1000194A0();
          v74 = v62;
          v75 = &unk_100072DE0;
          v63 = _Block_copy(&v73);
          v64 = v60;
          v65 = v1;
          sub_100057900();
          sub_1000194B4();
          sub_1000192D0(v66, v67);
          sub_100005890(&unk_10007ED80);
          sub_100005968(&qword_10007F020, &unk_10007ED80);
          sub_100058000();
          sub_100057DE0();
          _Block_release(v63);

          (*(v72 + 8))(v17, v12);
          (*(v71 + 8))(v23, v18);
        }

        else
        {
        }
      }

      goto LABEL_44;
    }

LABEL_37:
    sub_100019138(&v73, &unk_10007EEE0);
    goto LABEL_44;
  }

  v47 = v11 == sub_1000196DC() && v9 == 0xE600000000000000;
  if (!v47 && (sub_100058230() & 1) == 0)
  {
    while (1)
    {
      v68 = v9;
LABEL_46:
      *&v73 = 0;
      *(&v73 + 1) = v24;
      v24 = &v73;
      sub_100058070(22);

      *&v73 = 0xD000000000000014;
      *(&v73 + 1) = 0x800000010005E4F0;

      v80._countAndFlagsBits = v11;
      v80._object = v68;
      sub_100057AF0(v80);

      sub_100058160();
      __break(1u);
    }
  }

  sub_100018AB0(v7, &v73);
  if (!v75)
  {
    goto LABEL_37;
  }

  sub_100005A1C(0, &qword_10007EFF8);
  if (swift_dynamicCast())
  {
    v48 = v78;
    v49 = [v78 status];
    if ((v49 & 0x4000000) != 0 || (v49 & 0x2000000) != 0)
    {
      v50 = *&v1[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request];
      sub_100005A1C(0, &qword_10007F000);
      sub_100057A50();
      sub_1000194E0();
      sub_1000194CC();
      v57 = sub_100018664(v51, v52, v53, v54, v55, v56);
      v58 = sub_100057660();

      [v50 setError:v58];
    }
  }

LABEL_44:
  sub_100019718();
}

void sub_1000161D0(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request) isFinished];
  if ((v3 & 1) == 0)
  {
    if (a1)
    {
      __chkstk_darwin(v3);
      swift_errorRetain();
      sub_10002AC8C(variable initialization expression of SidecarDisplaySession.delegate, 0, sub_10000DF6C);

      v3 = sub_100057660();
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    sub_1000198CC(v3, "setError:");
  }
}

Swift::Void __swiftcall SidecarDisplaySession.accept()()
{
  sub_100019748();
  sub_1000578E0();
  sub_1000068E4();
  __chkstk_darwin(v1);
  sub_1000068D4();
  v19 = sub_100057910();
  sub_1000068E4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000068D4();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
  sub_100019514();
  swift_beginAccess();
  v9 = *&v0[v8];
  sub_10001963C();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  sub_100019540(v10);
  v20[1] = 1107296256;
  sub_1000194A0();
  v20[2] = v11;
  v20[3] = &unk_100072E30;
  v12 = _Block_copy(v20);
  v13 = v9;
  v14 = v0;
  sub_100057900();
  sub_1000194B4();
  sub_1000192D0(v15, v16);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  sub_1000196A4();
  sub_100058000();
  sub_1000197E8();
  sub_100057DE0();
  _Block_release(v12);

  v17 = sub_1000197F4();
  v18(v17);
  (*(v3 + 8))(v7, v19);

  sub_100019718();
}

void sub_10001653C()
{
  sub_100019748();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1000578E0();
  sub_1000068E4();
  __chkstk_darwin(v7);
  sub_1000068D4();
  v25 = sub_100057910();
  sub_1000068E4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000068D4();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_queue;
  sub_100019514();
  swift_beginAccess();
  v15 = *&v0[v14];
  v16 = swift_allocObject();
  v16[2] = v6;
  v16[3] = v4;
  v16[4] = v2;
  v16[5] = v0;
  sub_100019540(v16);
  v26[1] = 1107296256;
  sub_1000194A0();
  v26[2] = v17;
  v26[3] = &unk_100073210;
  v18 = _Block_copy(v26);
  v19 = v15;
  swift_errorRetain();

  v20 = v0;
  sub_100057900();
  sub_1000194B4();
  sub_1000192D0(v21, v22);
  sub_100005890(&unk_10007ED80);
  sub_100005968(&qword_10007F020, &unk_10007ED80);
  sub_1000196A4();
  sub_100058000();
  sub_1000197E8();
  sub_100057DE0();
  _Block_release(v18);

  v23 = sub_1000197F4();
  v24(v23);
  (*(v9 + 8))(v13, v25);

  sub_100019718();
}

uint64_t sub_1000167C0(uint64_t a1, uint64_t (*a2)(void))
{
  if (!a1)
  {
    return a2();
  }

  swift_willThrow();
  swift_errorRetain();
  swift_errorRetain();
  sub_1000161D0(a1);
}

uint64_t sub_100016868@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001407C(*(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config), &selRef_lowLatency);
  if (v3 == 2 || (v3 & 1) != 0)
  {
    sub_100005A1C(0, &qword_10007F180);
    result = sub_100016924();
    v5 = xmmword_10005B5C0;
  }

  else
  {
    result = SidecarGetProcessUniqueID();
    v5 = xmmword_10005B5B0;
  }

  *a1 = v5;
  strcpy((a1 + 16), "AVCVideoStream");
  *(a1 + 31) = -18;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100016924()
{
  v0 = sub_100057880();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() getDaemonProcessInfo];
  v5 = sub_1000579B0();

  v12 = sub_100057A50();
  v13 = v6;
  sub_100058030();
  sub_10000EAF0(v14, v5, &v15);
  sub_10000E840(v14);
  if (v16)
  {
    sub_100005890(&qword_10007F188);
    if (swift_dynamicCast())
    {
      v7 = v12;
      v8 = sub_100057860();
      __chkstk_darwin(v8);
      *(&v11 - 2) = v7;
      sub_10002AC8C(sub_1000182B0, 0, sub_10000DF6C);

      (*(v1 + 8))(v3, v0);
    }
  }

  else
  {
    sub_100019138(&v15, &unk_10007EEE0);
  }

  *&v15 = sub_100057A50();
  *(&v15 + 1) = v9;
  sub_100058030();
  sub_10000EAF0(v14, v5, &v15);

  sub_10000E840(v14);
  if (v16)
  {
    if (swift_dynamicCast())
    {
      return v12;
    }
  }

  else
  {
    sub_100019138(&v15, &unk_10007EEE0);
  }

  return 0;
}

void sub_100016C10()
{
  if (v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_inited] == 1 && v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_accepted] == 1)
  {
    sub_100016868(&v12);
    v1 = v12;
    v2 = v13;
    v3 = v16;
    v4 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request];
    v5 = sub_100057A20();
    sub_10001963C();
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v16 = sub_100018DE4;
    v17 = v6;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1000170A8;
    v15 = &unk_100072EC8;
    v7 = _Block_copy(&v12);
    v8 = v0;

    [v4 openStreamForType:v1 flags:v2 identifier:v5 processUniqueID:v3 completion:v7];
    _Block_release(v7);

    v9 = sub_100057A20();
    sub_10001963C();
    *(swift_allocObject() + 16) = v8;
    sub_100019564();
    v13 = 1107296256;
    v14 = sub_1000170A8;
    v15 = &unk_100072F18;
    v10 = _Block_copy(&v12);
    v11 = v8;

    [v4 openStreamForType:2 identifier:v9 completion:v10];
    _Block_release(v10);
  }
}

void sub_100016E18(void *a1, uint64_t a2, char *a3)
{
  if (a1)
  {
    v5 = a1;
    sub_10000F9C0(a1);
    v6 = &a3[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      (*(v7 + 32))(a3, v5, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    aBlock[4] = sub_100018F6C;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001CB40;
    aBlock[3] = &unk_100073030;
    v10 = _Block_copy(aBlock);
    v11 = a3;

    [v5 activateWithCompletion:v10];
    _Block_release(v10);
  }

  else
  {
    sub_100005A1C(0, &qword_10007F000);
    v13 = sub_100057A50();
    v15 = v14;
    swift_errorRetain();
    sub_100018664(v13, v15, -101, 0xD000000000000048, 0x800000010005E860, a2);
    swift_willThrow();
  }
}

uint64_t sub_100017020(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  sub_10001653C();
}

void sub_1000170A8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100017134(void *a1, uint64_t a2, void *a3)
{
  sub_100019698();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;
  swift_errorRetain();
  v8 = a3;
  sub_10001653C();
}

void sub_1000171C0(void *a1, uint64_t a2, char *a3)
{
  if (a1)
  {
    v5 = &a3[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 56))(a3, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = a1;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a1;
    aBlock[4] = sub_100018E74;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001CB40;
    aBlock[3] = &unk_100072F90;
    v14 = _Block_copy(aBlock);
    v15 = a1;
    v16 = a3;

    [v15 activateWithCompletion:v14];
    _Block_release(v14);
  }

  else
  {
    sub_100005A1C(0, &qword_10007F000);
    v9 = sub_100057A50();
    v11 = v10;
    swift_errorRetain();
    sub_100018664(v9, v11, -101, 0xD000000000000043, 0x800000010005E7F0, a2);
    swift_willThrow();
  }
}

uint64_t sub_1000173D0(uint64_t a1, void *a2, void *a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = a2;
  v7 = a3;
  sub_10001653C();
}

uint64_t sub_10001745C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(a1, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id SidecarDisplaySession.close(error:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request);
    swift_errorRetain();
    v3 = sub_100057660();
    [v2 setError:v3];
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request);

    return [v5 cancel];
  }
}

id sub_1000175B0(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtCC17ContinuityDisplay21SidecarDisplaySessionP33_72778A0D8780EB3FED7F582200B6777426SessionVideoClientDelegate_logger;
  v4 = sub_100057880();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SidecarDisplaySession.SessionVideoClientDelegate(0);
  v6 = objc_msgSendSuper2(&v8, "init");
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t sub_1000176B4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000176EC(void *a1)
{
  v1 = a1;
  v2 = sub_100057850();
  v3 = sub_100057D80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = [v1 streamToken];

    _os_log_impl(&_mh_execute_header, v2, v3, "AVC[%{public}ld] First Frame", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 88))(v6, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100017A3C(void *a1, char a2, const char *a3)
{
  v5 = a1;
  oslog = sub_100057850();
  v6 = sub_100057D80();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349312;
    *(v7 + 4) = [v5 streamToken];

    *(v7 + 12) = 1024;
    *(v7 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 0x12u);
    sub_10000DF70();

    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

void sub_100017BB0(void *a1)
{
  v1 = a1;
  oslog = sub_100057850();
  v2 = sub_100057D80();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134349056;
    *(v3 + 4) = [v1 streamToken];

    _os_log_impl(&_mh_execute_header, oslog, v2, "AVC[%{public}ld] Last Frame", v3, 0xCu);

    v4 = oslog;
  }

  else
  {

    v4 = v1;
  }
}

void sub_100017D04(void *a1)
{
  v1 = a1;
  v2 = sub_100057850();
  v3 = sub_100057D70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    *(v4 + 4) = [v1 streamToken];

    _os_log_impl(&_mh_execute_header, v2, v3, "AVC[%{public}ld] Terminated", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  sub_100005A1C(0, &qword_10007F000);
  v5 = sub_100057A50();
  v12 = sub_100018664(v5, v6, -401, 0, 0, 0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 104))(v8, v12, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_100018008(void *a1, uint64_t a2, const char *a3)
{
  v4 = a1;
  oslog = sub_100057850();
  v5 = sub_100057D80();
  if (os_log_type_enabled(oslog, v5))
  {
    sub_1000196C0();
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = [v4 streamToken];

    _os_log_impl(&_mh_execute_header, oslog, v5, a3, v6, 0xCu);
    sub_10000DF70();

    v7 = oslog;
  }

  else
  {

    v7 = v4;
  }
}

id sub_1000181BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidecarDisplaySession.SessionVideoClientDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000182CC(uint64_t a1)
{
  if ((a1 + 1) >= 6)
  {
    return 6;
  }

  else
  {
    return (0x40302010005uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_1000182F4()
{
  result = sub_100027608(3422513, 0xE300000000000000);
  qword_10007EF50 = result;
  return result;
}

uint64_t sub_100018320()
{
  result = sub_100027608(0x3030312E353133, 0xE700000000000000);
  qword_10007EF58 = result;
  return result;
}

uint64_t sub_100018368()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001945C;

  return SidecarDisplaySession.sessionDidResume(_:)();
}

uint64_t sub_1000183F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100018480;

  return SidecarDisplaySession.sessionDidResume(_:)();
}

uint64_t sub_100018480()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100018574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001945C;

  return MediaContinuityCoexSessionDelegate.sessionDidInterrupt(_:error:)(a1, a2, a3, a4);
}

id sub_100018664(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1000579C0();
  if (a5)
  {
    v10 = sub_100057A50();
    v12 = v11;
    v32 = &type metadata for String;
    *&v31 = a4;
    *(&v31 + 1) = a5;
    sub_10000903C(&v31, v28);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100019860();
    sub_100009098(v13, v10, v12, v14);
  }

  if (a6)
  {
    v15 = sub_100057A50();
    v17 = v16;
    swift_getErrorValue();
    v18 = v29;
    v19 = v30;
    v32 = v30;
    v20 = sub_100019270(&v31);
    (*(*(v19 - 1) + 16))(v20, v18, v19);
    sub_10000903C(&v31, v28);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100019860();
    sub_100009098(v21, v15, v17, v22);
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_100057A20();

  sub_1000579A0();
  sub_100019730();

  v25 = [v23 initWithDomain:v24 code:a3 userInfo:a2];

  return v25;
}

id sub_10001886C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100057720().super.isa;
    sub_1000190FC(a1, a2);
  }

  v6 = sub_100057A20();

  v7 = [v2 initWithData:isa type:v6];

  return v7;
}

id sub_100018910(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8.super.isa = sub_100057720().super.isa;
  if (a3)
  {
    v9.super.isa = sub_1000579A0().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v14 = 0;
  v10 = [v4 initWithOffer:v8.super.isa options:v9.super.isa error:&v14];

  if (v10)
  {
    v11 = v14;
  }

  else
  {
    v12 = v14;
    sub_100057670();

    swift_willThrow();
  }

  sub_10000686C(a1, a2);
  return v10;
}

uint64_t sub_100018A40(void *a1)
{
  v1 = a1;
  v4[0] = 0;
  v4[1] = 0;
  [v1 getUUIDBytes:v4];
  v2 = v4[0];

  return bswap32(v2);
}

uint64_t sub_100018AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005890(&unk_10007EEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018B64@<X0>(_BYTE *a1@<X8>)
{
  result = SidecarDisplaySession.peerSupportsHIDReportExtensions.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100018BBC@<X0>(uint64_t *a1@<X8>)
{
  result = SidecarDisplaySession.clock.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100018BF4()
{
  result = sub_100057880();
  if (v1 <= 0x3F)
  {
    result = sub_1000577F0();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100018D38()
{
  result = sub_100057880();
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

uint64_t sub_100018E7C()
{
  v1 = sub_1000196EC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100018ED4()
{

  sub_100019698();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100018F38()
{
  sub_10001963C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100018F90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100018FE8()
{
  swift_unknownObjectRelease();
  sub_100019698();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100019030()
{
  swift_unknownObjectRelease();

  sub_100019698();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100019078(void *a1)
{
  v2 = [a1 streamKey];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100057730();

  return v3;
}

uint64_t sub_1000190E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100018F90(a1, a2);
  }

  return a1;
}

uint64_t sub_1000190FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000686C(a1, a2);
  }

  return a1;
}

uint64_t sub_100019138(uint64_t a1, uint64_t *a2)
{
  sub_100005890(a2);
  sub_100019628();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000191B4()
{
  result = qword_10007F1A8;
  if (!qword_10007F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F1A8);
  }

  return result;
}

uint64_t sub_100019210()
{
  v1 = sub_1000196EC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t *sub_100019270(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1000192D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019318()
{
  swift_unknownObjectWeakDestroy();
  sub_10001963C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019354()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000193A8(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100057730();

  return v3;
}

__n128 sub_1000194F0()
{
  result = *(v0 + 16);
  *(v0 + 32) = *v0;
  *(v0 + 48) = result;
  return result;
}

uint64_t sub_100019520()
{

  return swift_dynamicCast();
}

uint64_t sub_100019540(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = _NSConcreteStackBlock;
  return result;
}

id sub_100019594(uint64_t a1)
{
  v4 = *(v1 + 1376);

  return [v2 v4];
}

id sub_1000195B4(uint64_t a1, SEL *a2)
{

  return sub_100012C60(v2, a2, &static Double._conditionallyBridgeFromObjectiveC(_:result:));
}

id sub_1000195DC(uint64_t a1, SEL *a2)
{

  return sub_100012C60(v2, a2, &static Int._conditionallyBridgeFromObjectiveC(_:result:));
}

uint64_t sub_100019604()
{

  return swift_beginAccess();
}

double sub_100019660()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_10001966C()
{

  return swift_dynamicCast();
}

id sub_100019760()
{
  v3 = *(v0 + 728);

  return [v1 v3];
}

id sub_10001977C(uint64_t a1)
{

  return [v1 __swift_objectForKeyedSubscript:a1];
}

uint64_t sub_1000197A0()
{

  return sub_100058230();
}

uint64_t sub_1000197C4()
{

  return sub_100057FE0();
}

uint64_t sub_100019874()
{

  return swift_dynamicCast();
}

id sub_100019894(uint64_t a1)
{
  v4 = *(v2 + 1376);

  return [v1 v4];
}

id sub_1000198B4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_1000198CC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *sub_1000198E4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v16 = &_swiftEmptyArrayStorage;
    sub_1000580E0();
    for (i = a1 + 32; ; i += 40)
    {
      v7 = *(i + 16);
      v14[0] = *i;
      v14[1] = v7;
      v15 = *(i + 32);
      swift_beginAccess();
      v8 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      sub_10001C3B4(v14, v13);
      v9 = sub_100037FB4();
      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }

      v11 = *(*(v8 + 56) + 8 * v9);
      swift_endAccess();
      v12 = v11;
      sub_10001C410(v14);
      sub_1000580C0();
      sub_1000580F0();
      sub_100058100();
      sub_1000580D0();
      if (!--v3)
      {
        return v16;
      }
    }

    sub_10001C3B4(v14, v13);
LABEL_9:
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

id sub_100019A0C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100005A1C(0, &qword_10007F2D0);
  isa = sub_100057BD0().super.isa;

  v2 = [v0 initWithArrangedSubviews:isa];

  return v2;
}

id sub_100019ABC(void *a1, void *a2)
{
  result = *(v2 + *a1);
  if (result)
  {
    return [result setConstant:*(v2 + *a2)];
  }

  return result;
}

id sub_100019AE0()
{
  result = *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMarginConstraint);
  if (result)
  {
    return [result setConstant:-*(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMargin)];
  }

  return result;
}

uint64_t sub_100019B18(double a1, double a2, double a3)
{
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topMarginConstraint) = 0;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMarginConstraint) = 0;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_widthConstraint) = 0;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonIdentifiers) = &off_100071F70;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton) = 0;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_initalToggleSelected) = 0;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_barWidth) = a1;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topMargin) = a2;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMargin) = a3;
  v79 = _swiftEmptyDictionarySingleton;
  v7 = &stru_100000020;
  do
  {
    v8 = *(&off_100071F70 + v7 + 16);
    v80 = *(&off_100071F70 + v7);
    v81 = v8;
    v82 = *(&off_100071F70 + v7 + 32);
    if (!v82)
    {
LABEL_8:
      v10 = objc_allocWithZone(_s12StickyButtonCMa());
      sub_10001C578();
      sub_10001C578();
      v11 = sub_10003AFA8();
      goto LABEL_21;
    }

    if (v82 == 1)
    {
      v9 = v80 == 8 && *(&v80 + 1) == 6;
      if (!v9 || v81 != __PAIR128__(0xE000000000000000, 0) && (sub_100058230() & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_17:
      v13 = objc_allocWithZone(_s6ButtonCMa());
      goto LABEL_18;
    }

    if (!(v81 | *(&v80 + 1) | v80 | *(&v81 + 1)))
    {
      goto LABEL_17;
    }

    if (v80 == 1 && (v81 | *(&v80 + 1) | *(&v81 + 1)) == 0)
    {
      v14 = objc_allocWithZone(_s6ButtonCMa());
      goto LABEL_20;
    }

    *(objc_allocWithZone(_s11StateButtonCMa()) + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar11StateButton_alternateState) = 0;
LABEL_18:
    sub_10001C578();
    sub_10001C578();
LABEL_20:
    v11 = sub_100039B70(&v80);
LABEL_21:
    v15 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v79;
    v17 = sub_100037FB4();
    v19 = v79[2];
    v20 = (v18 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v22 = v17;
    v23 = v18;
    sub_100005890(&qword_10007F2C0);
    if (sub_100058140(isUniquelyReferenced_nonNull_native, v21))
    {
      v24 = sub_100037FB4();
      if ((v23 & 1) != (v25 & 1))
      {
        result = sub_100058290();
        __break(1u);
        return result;
      }

      v22 = v24;
    }

    if (v23)
    {
      sub_10001C410(&v80);
      v26 = v78;
      v27 = v78[7];
      v28 = *(v27 + 8 * v22);
      *(v27 + 8 * v22) = v15;
    }

    else
    {
      v26 = v78;
      v78[(v22 >> 6) + 8] |= 1 << v22;
      v29 = v26[6] + 40 * v22;
      v30 = v82;
      v31 = v81;
      *v29 = v80;
      *(v29 + 16) = v31;
      *(v29 + 32) = v30;
      *(v26[7] + 8 * v22) = v15;
      v32 = v26[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_47;
      }

      v26[2] = v34;
    }

    v79 = v26;
    v7 += 40;
  }

  while (v7 != 392);
  v7 = v3;
  *(v3 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer) = v26;
  sub_100005890(&qword_10007F2C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005B5A0;
  *(inited + 32) = 3;
  *(inited + 40) = 0;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 2;
  *(inited + 72) = 2;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = 0;
  *(inited + 104) = 2;

  v36 = sub_1000198E4(inited, &v79);
  swift_setDeallocating();
  sub_10001C328();
  if (!(v36 >> 62))
  {

    sub_100058240();
    sub_100005A1C(0, &qword_10007F2D0);
    goto LABEL_32;
  }

LABEL_48:
  sub_100005A1C(0, &qword_10007F2D0);

  sub_100058180();

LABEL_32:

  sub_100005A1C(0, &qword_10007EF40);
  v37 = sub_100019A0C();
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10005B590;
  *(v38 + 32) = 8;
  *(v38 + 40) = 0;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0;
  *(v38 + 64) = 0;
  *(v38 + 72) = 4;
  *(v38 + 80) = 0;
  *(v38 + 88) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 112) = 2;
  *(v38 + 120) = 0;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 144) = 0;
  *(v38 + 152) = 1;
  *(v38 + 160) = 0;
  *(v38 + 184) = 0;
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  v39 = sub_1000198E4(v38, &v79);
  swift_setDeallocating();
  sub_10001C328();
  if (v39 >> 62)
  {
    sub_100005A1C(0, &qword_10007F2D0);

    sub_100058180();
  }

  else
  {

    sub_100058240();
    sub_100005A1C(0, &qword_10007F2D0);
  }

  v40 = sub_100019A0C();
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_10005B7A0;
  *(v41 + 32) = xmmword_10005B7B0;
  *(v41 + 48) = xmmword_10005B7C0;
  *(v41 + 64) = 1;
  *(v41 + 72) = 1;
  *(v41 + 80) = 0;
  *(v41 + 88) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 2;
  *(v41 + 112) = 0u;
  *(v41 + 128) = 0u;
  *(v41 + 144) = 2;
  v42 = sub_1000198E4(v41, &v79);
  swift_setDeallocating();
  sub_10001C328();
  if (v42 >> 62)
  {
    sub_100005A1C(0, &qword_10007F2D0);

    sub_100058180();
  }

  else
  {

    sub_100058240();
    sub_100005A1C(0, &qword_10007F2D0);
  }

  v43 = sub_100019A0C();
  sub_100005890(&unk_10007F1B0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10005B7D0;
  *(v44 + 32) = v37;
  *(v44 + 40) = v40;
  *(v44 + 48) = v43;
  v45 = v37;
  v46 = v40;
  v47 = v43;
  v48 = sub_100019A0C();
  *(v7 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_stack) = v48;
  *(v7 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topStack) = v45;
  *(v7 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_centerStack) = v46;
  *(v7 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomStack) = v47;
  v49 = _s14ViewControllerCMa();
  v77.receiver = v7;
  v77.super_class = v49;
  v50 = v45;
  v51 = v46;
  v52 = v47;
  v53 = v48;
  v54 = objc_msgSendSuper2(&v77, "initWithNibName:bundle:", 0, 0);
  v55 = objc_opt_self();
  v56 = v53;
  v57 = v54;
  v58 = [v55 clearColor];
  [v56 setBackgroundColor:v58];

  [v56 setAxis:1];
  [v56 setDistribution:4];
  [v56 setAlignment:0];
  [v50 setAxis:1];
  v76 = v50;
  [v50 setSpacing:8.0];
  [v51 setAxis:1];
  v75 = v51;
  [v51 setSpacing:8.0];
  [v52 setAxis:1];
  v74 = v52;
  [v52 setSpacing:8.0];
  v73 = v57;
  v59 = *&v57[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer];
  sub_10001C550();
  v7 = v61 & v60;
  v63 = (v62 + 63) >> 6;

  v64 = 0;
  if (v7)
  {
    while (1)
    {
      v65 = v64;
LABEL_42:
      v66 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v67 = *(*(v59 + 56) + ((v65 << 9) | (8 * v66)));
      v68 = [v67 heightAnchor];
      v69 = [v68 constraintEqualToConstant:*&qword_10007F1F0];

      [v69 setActive:1];
      if (!v7)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
LABEL_38:
    v65 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_46;
    }

    if (v65 >= v63)
    {
      break;
    }

    v7 = *(v59 + 64 + 8 * v65);
    ++v64;
    if (v7)
    {
      v64 = v65;
      goto LABEL_42;
    }
  }

  v70 = [v56 widthAnchor];

  v71 = [v70 constraintEqualToConstant:*&qword_10007F1F0];
  [v71 setActive:1];

  return v73;
}

void sub_10001A4EC()
{
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topMarginConstraint) = 0;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMarginConstraint) = 0;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_widthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonIdentifiers) = &off_1000720F8;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton) = 0;
  *(v0 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_initalToggleSelected) = 0;
  sub_100058160();
  __break(1u);
}

void sub_10001A5C8()
{
  _s19_CenteringEventViewCMa();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_stack];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = v1;
  [v3 addSubview:v2];
  v4 = [objc_opt_self() blackColor];
  [v3 setBackgroundColor:v4];

  v5 = [v2 topAnchor];
  v6 = [v3 topAnchor];

  v7 = [v5 constraintEqualToAnchor:v6 constant:*&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topMargin]];
  v8 = [v2 bottomAnchor];
  v9 = [v3 bottomAnchor];

  v10 = [v8 constraintEqualToAnchor:v9 constant:-*&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMargin]];
  v60 = v3;
  v11 = [v3 widthAnchor];

  v12 = [v11 constraintEqualToConstant:*&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_barWidth]];
  v13 = *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_widthConstraint];
  *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_widthConstraint] = v12;
  v14 = v12;

  v15 = *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topMarginConstraint];
  *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_topMarginConstraint] = v7;
  v16 = v7;

  v17 = *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMarginConstraint];
  *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_bottomMarginConstraint] = v10;
  v18 = v10;

  v19 = objc_opt_self();
  sub_100005890(&unk_10007F1B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10005B7E0;
  *(v20 + 32) = v14;
  *(v20 + 40) = v16;
  *(v20 + 48) = v18;
  v57 = v14;
  v58 = v16;
  v59 = v18;
  v21 = [v2 centerXAnchor];
  v22 = [v60 centerXAnchor];

  v23 = [v21 constraintEqualToAnchor:v22];
  *(v20 + 56) = v23;
  sub_100005A1C(0, &qword_10007FB10);
  isa = sub_100057BD0().super.isa;

  [v19 activateConstraints:isa];

  [v0 setView:v60];
  v25 = *&v0[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer];
  v26 = v25 + 64;
  sub_10001C550();
  v29 = v28 & v27;
  v31 = (v30 + 63) >> 6;

  v32 = 0;
  v61 = v25;
  while (v29)
  {
LABEL_7:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = *(*(v25 + 56) + ((v32 << 9) | (8 * v34)));
    v36 = &v35[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier];
    if (!v35[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 32])
    {
      goto LABEL_19;
    }

    v37 = *v36;
    v38 = v36[1];
    v39 = v36[2];
    v40 = v36[3];
    if (v35[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 32] == 2)
    {
      v41 = v39 | v38;
      if (v41 | v37 | v40)
      {
        v42 = v41 | v40;
        if (v37 != 1 || v42 != 0)
        {
          v44 = "_stateButtonPressed:";
          goto LABEL_27;
        }

        v56 = v35;
        [v56 addTarget:v0 action:"_toggleButtonDown:" forControlEvents:{1, v57, v58}];
        [v56 addTarget:v0 action:"_toggleButtonUpIn:" forControlEvents:64];
      }

      else
      {
LABEL_26:
        v44 = "_actionButtonPressed:";
LABEL_27:
        [v35 addTarget:v0 action:v44 forControlEvents:{1, v57}];
      }
    }

    else
    {
      if (v37 == 8 && v38 == 6)
      {
        v55 = !v39 && v40 == 0xE000000000000000;
        if (v55 || (sub_100058230() & 1) != 0)
        {
          goto LABEL_26;
        }
      }

LABEL_19:
      _s12StickyButtonCMa();
      v46 = swift_dynamicCastClass();
      if (!v46)
      {

        return;
      }

      v47 = v46;
      sub_10001963C();
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = (v47 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_downUpHandler);
      *v49 = sub_10001C4EC;
      v49[1] = v48;
      v50 = v35;

      sub_10001963C();
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = (v47 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_stickyHandler);
      *v52 = sub_10001C4F4;
      v52[1] = v51;

      sub_10001963C();
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = (v47 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar12StickyButton_tapHandler);
      *v54 = sub_10001C4FC;
      v54[1] = v53;
      v25 = v61;
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    if (v33 >= v31)
    {
      break;
    }

    v29 = *(v26 + 8 * v33);
    ++v32;
    if (v29)
    {
      v32 = v33;
      goto LABEL_7;
    }
  }
}

void sub_10001AC8C(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton);
    *(Strong + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton) = a1;
    v7 = a1;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *&v7[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 16];
      v9[0] = *&v7[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier];
      v9[1] = v8;
      v10 = v7[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 32];
      sub_100036384(v9, a2 & 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10001AD64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton);
    *(Strong + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton) = 0;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 16);
      v6[0] = *(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier);
      v6[1] = v5;
      v7 = *(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 32);
      sub_100035B94(v6, 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10001AE2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton);
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      sub_10001B61C(a1);
    }
  }
}

void sub_10001AEE8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer);
  if (*(v2 + 16))
  {
    v4 = sub_100037FB4();
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      if ([v6 isSelected] != (a1 & 1))
      {
        [v6 setSelected:?];
      }
    }
  }
}

void sub_10001AFA0(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer);
  if (*(v3 + 16))
  {
    v5 = sub_100037FB4();
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);
      _s11StateButtonCMa();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        if (*(v8 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar11StateButton_alternateState) != (a2 & 1))
        {
          v9 = v7;
          sub_10003B2B4();
        }
      }
    }
  }
}

uint64_t sub_10001B064(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton);
  *(v1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton) = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10001C514(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier);
    sub_100035D88(v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001B160(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton);
  *(v2 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController__lastDownButton) = 0;

  sub_10003B2B4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10001C514(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier);
    sub_1000365A4(&v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10001B278(void *a1)
{
  result = [a1 isSelected];
  *(v1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_initalToggleSelected) = result;
  return result;
}

id sub_10001B30C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_initalToggleSelected) ^ 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10001C514(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier);
    sub_100036384(&v5, v3 & 1);
    swift_unknownObjectRelease();
  }

  return [a1 setSelected:v3 & 1];
}

void sub_10001B414(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar14ViewController_buttonsByIdentifer];
  v5 = 0uLL;
  if (!*(v4 + 16))
  {
    v43 = 1;
LABEL_10:
    *a1 = v5;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = v43;
    return;
  }

  v6 = sub_100037FB4();
  if ((v7 & 1) == 0)
  {
    v43 = 1;
    v5 = 0uLL;
    goto LABEL_10;
  }

  v8 = *(*(v4 + 56) + 8 * v6);
  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    [v9 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = v8;
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [v2 view];
    [v19 convertRect:v28 toView:{v21, v23, v25, v27}];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = v30;
    v38 = v32;
    v39 = v34;
    v40 = v36;
    if (v12 == 0.0)
    {
      MinX = CGRectGetMinX(*&v37);
      v54.origin.x = v12;
      v54.origin.y = v14;
      v54.size.width = v16;
      v54.size.height = v18;
      v42 = CGRectGetWidth(v54) - MinX + -4.0;
    }

    else
    {
      v42 = 4.0 - CGRectGetMinX(*&v37);
    }

    v53 = v42;
    [v19 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    v55.origin.x = v45;
    v55.origin.y = v47;
    v55.size.width = v49;
    v55.size.height = v51;
    MidY = CGRectGetMidY(v55);

    v43 = 0;
    *&v5 = v53;
    *(&v5 + 1) = MidY;
    goto LABEL_10;
  }

  __break(1u);
}

id sub_10001B61C(uint64_t a1)
{
  v2 = v1;
  sub_1000578E0();
  sub_1000068E4();
  v58 = v5;
  v59 = v4;
  __chkstk_darwin(v4);
  sub_10001C564();
  v56 = v6;
  v57 = sub_100057910();
  sub_1000068E4();
  v55 = v7;
  __chkstk_darwin(v8);
  sub_10001C564();
  v54 = v9;
  v60 = sub_100057930();
  sub_1000068E4();
  v53._object = v10;
  __chkstk_darwin(v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v71 = *(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 32);
  v17 = *(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier + 16);
  v69 = *(a1 + OBJC_IVAR____TtCO17ContinuityDisplay7Sidebar6Button_identifier);
  v70 = v17;
  if (v71)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_10;
  }

  if ((v69 & 1) != 0 || (v69 & 2) != 0 || (v69 & 4) != 0)
  {
    v20 = [objc_opt_self() mainBundle];
    sub_10001C528();
  }

  else
  {
    v19 = 0xE000000000000000;
    if ((v69 & 8) == 0)
    {
      v18 = 0;
      goto LABEL_10;
    }

    v1 = [objc_opt_self() mainBundle];
  }

  sub_10001C538();
  v18 = sub_100057650(v74, v77, v72, v80, v53);
  v19 = v21;

LABEL_10:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000328C0();
    swift_unknownObjectRelease();
  }

  v22 = objc_opt_self();
  v23 = [v22 mainBundle];
  v53._countAndFlagsBits = 0xE000000000000000;
  v75._countAndFlagsBits = v18;
  v75._object = v19;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v24.super.isa = v23;
  v81._countAndFlagsBits = 0;
  v81._object = 0xE000000000000000;
  v25 = sub_100057650(v75, v78, v24, v81, v53);
  v27 = v26;

  v28 = [v22 mainBundle];
  v53._countAndFlagsBits = 0xE500000000000000;
  sub_10001C538();
  v29 = sub_100057650(v76, v79, v73, v82, v53);
  v31 = v30;

  v32 = objc_allocWithZone(type metadata accessor for SidebarPopover());
  v33 = sub_10001F3E0(v25, v27, v29, v31);
  [v33 setModalPresentationStyle:7];
  v34 = [v33 popoverPresentationController];

  if (!v34)
  {
    goto LABEL_20;
  }

  result = [v2 view];
  if (result)
  {
    v36 = result;
    [result frame];
    v38 = v37;

    if (v38 == 0.0)
    {
      v39 = 4;
    }

    else
    {
      v39 = 8;
    }

    [v34 setPermittedArrowDirections:{v39, v54}];
    [v34 setSourceView:a1];
    sub_10001B414(v67);
    v40 = 0.0;
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    if ((v68 & 1) == 0)
    {
      v42 = *&v67[2];
      v43 = *&v67[3];
      v40 = *v67;
      v41 = *&v67[1];
    }

    [v34 setSourceRect:{v40, v41, v42, v43}];
    v44 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    [v34 setBackgroundColor:v44];

LABEL_20:
    v65 = VideoStream.qosMonitorServerDidDie(_:);
    v66 = 0;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_10000AF8C;
    v64 = &unk_100073238;
    v45 = _Block_copy(&aBlock);
    [v2 presentViewController:v33 animated:1 completion:v45];
    _Block_release(v45);
    sub_100005A1C(0, &qword_10007EEC0);
    v46 = sub_100057DC0();
    sub_100057920();
    sub_100057970();
    v53._object = *(v53._object + 1);
    (v53._object)(v13, v60);
    sub_10001963C();
    v47 = swift_allocObject();
    *(v47 + 16) = v33;
    v65 = sub_10001C4B0;
    v66 = v47;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_10000AF8C;
    v64 = &unk_100073288;
    v48 = _Block_copy(&aBlock);
    v49 = v33;

    v50 = v54;
    sub_100057900();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000D4A8();
    sub_100005890(&unk_10007ED80);
    sub_10000D500();
    v51 = v56;
    v52 = v59;
    sub_100058000();
    sub_100057DA0();
    _Block_release(v48);

    (*(v58 + 8))(v51, v52);
    (*(v55 + 8))(v50, v57);
    return (v53._object)(v16, v60);
  }

  __break(1u);
  return result;
}

void sub_10001BDC4(void *a1)
{
  v3[4] = VideoStream.qosMonitorServerDidDie(_:);
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10000AF8C;
  v3[3] = &unk_1000732B0;
  v2 = _Block_copy(v3);
  [a1 dismissViewControllerAnimated:1 completion:v2];
  _Block_release(v2);
}

id sub_10001BFE0(uint64_t a1, CGFloat a2, CGFloat a3)
{
  [v3 bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v17.x = a2;
  v17.y = a3;
  if (CGRectContainsPoint(v18, v17))
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    a2 = CGRectGetWidth(v19) * 0.5;
  }

  v16.receiver = v3;
  v16.super_class = _s19_CenteringEventViewCMa();
  v11 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", a1, a2, a3);
  if (v11)
  {
    sub_100005A1C(0, &qword_10007F2D0);
    v12 = v11;
    v13 = v3;
    v14 = sub_100057EF0();

    if (v14)
    {

      return 0;
    }
  }

  return v11;
}

id sub_10001C190(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = _s19_CenteringEventViewCMa();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10001C21C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s19_CenteringEventViewCMa();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10001C2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10001C328()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001C36C()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10001C464(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C47C()
{
  sub_10001963C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10001C4B8()
{
  swift_unknownObjectWeakDestroy();
  sub_10001963C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001C578()
{

  return sub_10001C3B4(v0 - 160, v0 - 208);
}

uint64_t sub_10001C590(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005890(&qword_10007F428);
    v2 = sub_1000581B0();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100008DD8(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000903C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000903C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000903C(v31, v32);
    result = sub_100058010(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = v7[v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_10000903C(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10001C854(uint64_t a1, uint64_t a2)
{
  v10 = sub_100005890(&qword_10007F418);
  v11 = sub_10001DE88();
  v9[0] = a1;
  v9[1] = a2;
  v4 = sub_10000AAF4(v9, v10);
  if (*v4)
  {
    v5 = v4[1] + *v4;
  }

  else
  {
    v5 = 0;
  }

  sub_10001DEEC(*v4, v5, &v8);
  v6 = v8;
  sub_10000904C(v9);
  return v6;
}

uint64_t sub_10001C8F0(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_10000AAF4(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_100057680();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_100057690();
    }

    else
    {
      v6 = sub_1000576C0();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000904C(v8);
  return v6;
}

uint64_t sub_10001C9AC(uint64_t a1, uint64_t a2)
{
  v12[3] = &type metadata for Data;
  v12[4] = &protocol witness table for Data;
  v12[0] = a1;
  v12[1] = a2;
  v2 = sub_10000AAF4(v12, &type metadata for Data);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_10001E060(v6, v7, &v11);
      goto LABEL_9;
    case 3uLL:
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_5;
    default:
      v10[0] = *v2;
      LOWORD(v10[1]) = v4;
      BYTE2(v10[1]) = BYTE2(v4);
      BYTE3(v10[1]) = BYTE3(v4);
      BYTE4(v10[1]) = BYTE4(v4);
      BYTE5(v10[1]) = BYTE5(v4);
      v5 = v10 + BYTE6(v4);
LABEL_5:
      sub_10001DEEC(v10, v5, &v11);
LABEL_9:
      v8 = v11;
      sub_10000904C(v12);
      return v8;
  }
}

void sub_10001CB40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

NSString sub_10001CBAC()
{
  result = sub_100057A20();
  qword_100083CC8 = result;
  return result;
}

uint64_t sub_10001CBE4()
{
  KeyboardReport.reportDescriptor.unsafeMutableAddressor();
  v0 = sub_10001E14C();
  sub_100018F90(v0, v1);
  sub_10001E14C();
  sub_100057760();
  v2 = sub_10001E14C();
  sub_10000686C(v2, v3);
  PencilReport.reportDescriptor.unsafeMutableAddressor();
  v4 = sub_10001E14C();
  sub_100018F90(v4, v5);
  sub_10001E14C();
  sub_100057760();
  v6 = sub_10001E14C();
  sub_10000686C(v6, v7);
  TouchReport.reportDescriptor.unsafeMutableAddressor();
  v8 = sub_10001E14C();
  sub_100018F90(v8, v9);
  sub_10001E14C();
  sub_100057760();
  v10 = sub_10001E14C();
  sub_10000686C(v10, v11);
  MultitouchReport.reportDescriptor.unsafeMutableAddressor();
  v12 = sub_10001E14C();
  sub_100018F90(v12, v13);
  sub_10001E14C();
  sub_100057760();
  v14 = sub_10001E14C();
  sub_10000686C(v14, v15);
  SqueezeGestureReport.reportDescriptor.unsafeMutableAddressor();
  v16 = sub_10001E14C();
  sub_100018F90(v16, v17);
  sub_10001E14C();
  sub_100057760();
  v18 = sub_10001E14C();
  sub_10000686C(v18, v19);
  return 0;
}

uint64_t sub_10001CCD4(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC17ContinuityDisplay16DisplayHIDDevice_logger;
  v6 = sub_100057880();
  (*(*(v6 - 8) + 16))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC17ContinuityDisplay16DisplayHIDDevice_stream) = a2;
  v7 = swift_allocObject();
  swift_weakInit();
  v13[4] = sub_10001DE20;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10001CECC;
  v13[3] = &unk_100073328;
  v8 = _Block_copy(v13);
  v9 = a2;

  [v9 setHandler:v8];
  _Block_release(v8);

  v10 = sub_10001E14C();
  v11(v10);
  return v2;
}

uint64_t sub_10001CE6C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001D0DC(a1);
  }

  return result;
}

uint64_t sub_10001CECC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v5 = a2;
    sub_10000903C(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  swift_unknownObjectRetain();
  v3(v7);

  return sub_100009494(v7);
}

void sub_10001CF58()
{
  sub_100005890(&qword_10007F410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005B860;
  *(inited + 32) = 0;
  v2 = sub_10001CBE4();
  v4 = v3;
  v5 = static HIDDescriptor.dataWithReportDescriptor(_:)();
  v7 = v6;
  sub_10000686C(v2, v4);
  *(inited + 40) = v5;
  *(inited + 48) = v7;
  sub_10001E14C();
  sub_1000579C0();
  v8 = *(v0 + OBJC_IVAR____TtC17ContinuityDisplay16DisplayHIDDevice_stream);
  isa = sub_1000579A0().super.isa;

  sub_10001E158();
  v13 = 1107296256;
  sub_10001E124();
  v14 = v10;
  v15 = &unk_1000733A0;
  v11 = _Block_copy(aBlock);

  [v8 sendOPACK:isa completion:v11];
  _Block_release(v11);
}

void sub_10001D0DC(uint64_t a1)
{
  sub_100018AB0(a1, aBlock);
  if (!v33)
  {
    sub_100009494(aBlock);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_100005A1C(0, &qword_10007F000);
    v11 = sub_10001E10C();
    v14 = sub_10002B0C4(v11, v12, v13);
    __chkstk_darwin(v14);
    sub_10001E138();
    sub_10002AC8C(variable initialization expression of SidecarDisplaySession.delegate, 0, sub_10000DF6C);

    return;
  }

  v2 = sub_10001E17C();
  sub_100018F90(v2, v3);
  v4 = sub_10001E17C();
  v6 = HIDRequest.init(rawData:)(v4, v5);
  if (v6 == 14)
  {
    v9 = sub_10001E17C();
    sub_10000686C(v9, v10);
    goto LABEL_6;
  }

  v15 = v8;
  v16 = sub_10001D344(v6, v7, v8);
  if (v17 >> 60 == 15)
  {
    v18 = sub_10001E17C();
    sub_10000686C(v18, v19);
    v20 = sub_10001E194();
    sub_10001E000(v20, v21, v15);
  }

  else
  {
    v22 = v16;
    v23 = v17;
    v31 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16DisplayHIDDevice_stream);
    isa = sub_100057720().super.isa;
    v34 = sub_10001E01C;
    v35 = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    sub_10001E124();
    aBlock[2] = v24;
    v33 = &unk_100073378;
    v25 = _Block_copy(aBlock);

    [v31 sendOPACK:isa completion:v25];
    v26 = sub_10001E17C();
    sub_10000686C(v26, v27);
    v28 = sub_10001E194();
    sub_10001E000(v28, v29, v15);
    _Block_release(v25);

    sub_1000190FC(v22, v23);
  }
}

uint64_t sub_10001D344(char a1, unint64_t a2, unint64_t a3)
{
  if (a1 == 11)
  {
    return sub_10001D444(11, a2, a3);
  }

  if (a1 != 4)
  {
    return 0;
  }

  v3 = sub_10001CBE4();
  HIDRequest.init(_:wValue:wIndex:data:)(4, 0, 0, v3, v4);
  return v5;
}

uint64_t sub_10001D444(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = v3;
  v9 = HIDRequest.wValue.getter();
  if (HIBYTE(v9) == 3)
  {
LABEL_4:
    v10 = HIDRequest.data.getter(a1, a2, a3);
    sub_1000190FC(v10, v11);
    return 0;
  }

  if (HIBYTE(v9) != 2)
  {
    if (HIBYTE(v9) != 1)
    {
      sub_100005A1C(0, &qword_10007F000);
      v19 = sub_10001E10C();
      v22 = sub_10002B0C4(v19, v20, v21);
      __chkstk_darwin(v22);
      sub_10001E138();
      v12 = v5 + v23;
      sub_10002AC8C(variable initialization expression of SidecarDisplaySession.delegate, 0, sub_10000DF6C);
      swift_willThrow();
      return v12;
    }

    goto LABEL_4;
  }

  v13 = v9;
  v14 = HIDRequest.data.getter(a1, a2, a3);
  v12 = v5;
  v16 = sub_10001D5C8(v13, v14, v15);
  if (!v4)
  {
    v12 = v16;
  }

  v17 = sub_10001E194();
  sub_1000190FC(v17, v18);
  return v12;
}

uint64_t sub_10001D5C8(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    goto LABEL_7;
  }

  sub_100018F90(a2, a3);
  sub_10001E188();
  if (sub_100057750() < 2 || sub_100057710() != a1)
  {
    v4 = sub_10001E188();
    sub_1000190FC(v4, v5);
LABEL_7:
    sub_100005A1C(0, &qword_10007F000);
    v6 = sub_10001E10C();
    v9 = sub_10002B0C4(v6, v7, v8);
    __chkstk_darwin(v9);
    sub_10001E138();
    sub_10002AC8C(variable initialization expression of SidecarDisplaySession.delegate, 0, sub_10000DF6C);
    swift_willThrow();
    return 0;
  }

  if (a1 == 3)
  {
    sub_10001E188();
    sub_10001D7C4();
  }

  else
  {
    sub_100005A1C(0, &qword_10007F000);
    v11 = sub_10001E10C();
    v14 = sub_10002B0C4(v11, v12, v13);
    __chkstk_darwin(v14);
    sub_10001E138();
    sub_10002AC8C(variable initialization expression of SidecarDisplaySession.delegate, 0, sub_10000DF6C);
    swift_willThrow();
  }

  v15 = sub_10001E188();
  sub_1000190FC(v15, v16);
  return 0;
}

uint64_t sub_10001D7C4()
{
  v1 = v0;
  if (sub_100057750() == 2)
  {
    v2 = sub_100005A1C(0, &qword_10007FDF0);
    isa = sub_100057EE0(4294901776).super.super.isa;
    sub_100057710();
    v4 = sub_100057C90().super.super.isa;
    sub_100005890(&qword_10007FAB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10005B5A0;
    *(inited + 32) = 0x6567617375;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = isa;
    *(inited + 72) = v2;
    *(inited + 80) = 0x6574617473;
    *(inited + 120) = v2;
    *(inited + 88) = 0xE500000000000000;
    *(inited + 96) = v4;
    v6 = isa;
    v7 = v4;
    v8 = sub_1000579C0();
    v9 = [objc_opt_self() defaultCenter];
    if (qword_10007E908 != -1)
    {
      swift_once();
    }

    v10 = qword_100083CC8;
    v11 = sub_10001C590(v8);

    sub_10001DF64(v10, v1, v11, v9);
  }

  else
  {
    sub_100005A1C(0, &qword_10007F000);
    v12 = sub_10001E10C();
    v15 = sub_10002B0C4(v12, v13, v14);
    __chkstk_darwin(v15);
    sub_10001E138();
    sub_10002AC8C(variable initialization expression of SidecarDisplaySession.delegate, 0, sub_10000DF6C);
    swift_willThrow();
  }

  return 0;
}

void sub_10001DA2C(uint64_t a1)
{
  SidecarHIDDebugLog(_:)(j___s10SidecarHID9HIDReportC11descriptionSSvg);
  sub_100005890(&qword_10007F410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005B860;
  *(inited + 32) = 1;
  *(inited + 40) = sub_10001C854(*(a1 + 16), *(a1 + 24));
  *(inited + 48) = v4;
  sub_1000579C0();
  v5 = *(v1 + OBJC_IVAR____TtC17ContinuityDisplay16DisplayHIDDevice_stream);
  isa = sub_1000579A0().super.isa;

  sub_10001E158();
  v10 = 1107296256;
  sub_10001E124();
  v11 = v7;
  v12 = &unk_100073350;
  v8 = _Block_copy(aBlock);

  [v5 sendOPACK:isa completion:v8];
  _Block_release(v8);
}

uint64_t sub_10001DBA4(uint64_t result, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  if (result)
  {
    __chkstk_darwin();
    swift_errorRetain();
    sub_10002AC8C(a3, 0, a4);
  }

  return result;
}

uint64_t sub_10001DC4C()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay16DisplayHIDDevice_logger;
  v2 = sub_100057880();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DisplayHIDDevice()
{
  result = qword_10007F310;
  if (!qword_10007F310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DD4C()
{
  result = sub_100057880();
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

uint64_t sub_10001DDE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001DE88()
{
  result = qword_10007F420;
  if (!qword_10007F420)
  {
    sub_1000058D8(&qword_10007F418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F420);
  }

  return result;
}

uint64_t sub_10001DEEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_100057680();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = sub_100057690();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = sub_1000576C0();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_10001DF64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = sub_1000579A0().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

uint64_t sub_10001E000(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 14)
  {
    return sub_10000686C(a2, a3);
  }

  return result;
}

uint64_t sub_10001E060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100057600();
  v7 = result;
  if (result)
  {
    result = sub_100057620();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_100057610();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10001DEEC(v7, v13, a3);
}

uint64_t sub_10001E1A0(char a1)
{
  if (a1)
  {
    return 0x656E6E6F63736964;
  }

  else
  {
    return 0x697463656E6E6F63;
  }
}

Swift::Int sub_10001E21C(char a1)
{
  sub_1000582B0();
  sub_1000582C0(a1 & 1);
  return sub_1000582F0();
}

Swift::Int sub_10001E280()
{
  v1 = *v0;
  sub_1000582B0();
  sub_1000582C0(v1);
  return sub_1000582F0();
}

uint64_t sub_10001E2D4(char a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_error;
  *&v2[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_error] = 0;
  v7 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_disconnectButton;
  type metadata accessor for DisplayAlertButton();
  *&v2[v7] = sub_10001F3AC();
  v8 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_mainLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_secondaryLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_debugLabel;
  *&v3[v10] = [objc_allocWithZone(UILabel) init];
  v3[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_reason] = a1 & 1;
  *&v3[v6] = a2;
  swift_errorRetain();

  v12 = qword_100083CD0;
  *&v3[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_generation] = qword_100083CD0;
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    qword_100083CD0 = v14;
    v16.receiver = v3;
    v16.super_class = type metadata accessor for DisplayModalAlert();
    v15 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);

    return v15;
  }

  return result;
}

void sub_10001E430()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_error) = 0;
  v2 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_disconnectButton;
  type metadata accessor for DisplayAlertButton();
  *(v0 + v2) = sub_10001F3AC();
  v3 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_mainLabel;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_secondaryLabel;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_debugLabel;
  *(v1 + v5) = [objc_allocWithZone(UILabel) init];
  sub_100058160();
  __break(1u);
}

void sub_10001E54C()
{
  v72 = [objc_opt_self() effectWithStyle:2];
  v71 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v72];
  v73 = [v71 contentView];
  v74 = [objc_allocWithZone(UIView) init];
  [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_mainLabel];
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setTextColor:v3];

  v4 = objc_opt_self();
  v5 = [v4 boldSystemFontOfSize:20.0];
  [v1 setFont:v5];

  [v1 setTextAlignment:1];
  v6 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_secondaryLabel];
  v7 = [v4 boldSystemFontOfSize:16.0];
  [v6 setFont:v7];

  v8 = [v2 whiteColor];
  [v6 setTextColor:v8];

  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:0];
  v9 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_debugLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v2 whiteColor];
  [v9 setTextColor:v10];

  v11 = [v4 monospacedSystemFontOfSize:14.0 weight:UIFontWeightThin];
  [v9 setFont:v11];

  [v9 setNumberOfLines:0];
  v68._object = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay17DisplayModalAlert_disconnectButton];
  v13 = [objc_opt_self() mainBundle];
  v68._countAndFlagsBits = 0xEC000000656C7469;
  v76._countAndFlagsBits = 0x656E6E6F63736944;
  v76._object = 0xEA00000000007463;
  v77.value._countAndFlagsBits = 0;
  v77.value._object = 0;
  v14.super.isa = v13;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v15 = sub_100057650(v76, v77, v14, v78, v68);
  v17 = v16;

  sub_100022684(v15, v17, 0, v12);
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 addTarget:v0 action:"_disconnectPressedWithSender:" forControlEvents:64];
  [v73 addSubview:v74];
  [v73 addSubview:v9];
  [v74 addSubview:v1];
  [v74 addSubview:v6];
  [v74 addSubview:v12];
  v70 = objc_opt_self();
  sub_100005890(&unk_10007F1B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10005B8B0;
  v19 = [v74 leftAnchor];
  v20 = [v73 leftAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v18 + 32) = v21;
  v22 = [v74 rightAnchor];
  v23 = sub_10001F380([v73 rightAnchor]);

  *(v18 + 40) = v23;
  v24 = [v74 centerXAnchor];
  v25 = sub_10001F380([v73 centerXAnchor]);

  *(v18 + 48) = v25;
  v26 = [v74 centerYAnchor];
  v27 = sub_10001F380([v73 centerYAnchor]);

  *(v18 + 56) = v27;
  v28 = [v9 leftAnchor];
  v29 = [v73 leftAnchor];
  v30 = sub_10001F3A0();
  v32 = [v30 v31];

  *(v18 + 64) = v32;
  v33 = [v9 topAnchor];
  v34 = [v73 topAnchor];
  v35 = sub_10001F3A0();
  v37 = [v35 v36];

  *(v18 + 72) = v37;
  v38 = [v69 centerXAnchor];
  v39 = [v74 centerXAnchor];
  v40 = sub_10001F3A0();
  v42 = [v40 v41];

  *(v18 + 80) = v42;
  v43 = [v69 topAnchor];
  v44 = sub_10001F380([v74 topAnchor]);

  *(v18 + 88) = v44;
  v45 = [v6 topAnchor];
  v46 = [v69 bottomAnchor];
  v47 = sub_10001F3A0();
  v49 = [v47 v48];

  *(v18 + 96) = v49;
  v50 = [v6 centerXAnchor];
  v51 = sub_10001F380([v74 centerXAnchor]);

  *(v18 + 104) = v51;
  v52 = [v6 widthAnchor];
  v53 = [v52 constraintLessThanOrEqualToConstant:320.0];

  *(v18 + 112) = v53;
  v54 = [v12 topAnchor];
  v55 = [v6 bottomAnchor];
  v56 = sub_10001F3A0();
  v58 = [v56 v57];

  *(v18 + 120) = v58;
  v59 = [v12 centerXAnchor];
  v60 = sub_10001F380([v74 centerXAnchor]);

  *(v18 + 128) = v60;
  v61 = [v12 heightAnchor];
  v62 = [v61 constraintEqualToConstant:54.0];

  *(v18 + 136) = v62;
  v63 = [v12 widthAnchor];
  v64 = [v63 constraintGreaterThanOrEqualToConstant:204.0];

  *(v18 + 144) = v64;
  v65 = [v12 bottomAnchor];
  v66 = sub_10001F380([v74 bottomAnchor]);

  *(v18 + 152) = v66;
  sub_10001F33C();
  isa = sub_100057BD0().super.isa;

  [v70 activateConstraints:isa];

  [v0 setView:v71];
}

uint64_t sub_10001EF50()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10003388C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10001F068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayModalAlert();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for DisplayModalAlert.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisplayModalAlert.Reason(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001F2A0);
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

unint64_t sub_10001F2E8()
{
  result = qword_10007F498;
  if (!qword_10007F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F498);
  }

  return result;
}

unint64_t sub_10001F33C()
{
  result = qword_10007FB10;
  if (!qword_10007FB10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007FB10);
  }

  return result;
}

id sub_10001F380(uint64_t a1)
{
  v4 = *(v2 + 1984);

  return [v1 v4];
}

id sub_10001F3AC()
{

  return sub_100021EC4(0x656E6E6F63736944, 0xEA00000000007463);
}

char *sub_10001F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_titleField;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_detailsField;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v30.receiver = v4;
  v30.super_class = type metadata accessor for SidebarPopover();
  v11 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  v12 = *&v11[OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_titleField];
  v13 = v11;
  sub_100038A3C(a1, a2, v12);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v14 setLineSpacing:2.0];
  v15 = OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_detailsField;
  v16 = *&v13[OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_detailsField];
  if (a4)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0;
  }

  v29 = v17;
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  sub_100005890(&qword_10007F4D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005B860;
  *(inited + 32) = NSParagraphStyleAttributeName;
  *(inited + 64) = sub_100005A1C(0, &qword_10007F4E0);
  *(inited + 40) = v14;
  type metadata accessor for Key(0);
  sub_10001FF6C();
  v20 = v16;
  v21 = NSParagraphStyleAttributeName;
  v22 = v14;

  v23 = sub_1000579C0();
  v24 = objc_allocWithZone(NSAttributedString);
  v25 = sub_10001FEC4(v29, v18, v23);
  [v20 setAttributedText:v25];

  v26 = *&v13[v15];
  if (a4)
  {
    v27 = sub_100057A20();
  }

  else
  {
    v27 = 0;
  }

  [v26 setText:v27];

  return v13;
}

void sub_10001F640()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_titleField;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_detailsField;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  sub_100058160();
  __break(1u);
}

void sub_10001F708()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_titleField];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *&v0[OBJC_IVAR____TtC17ContinuityDisplay14SidebarPopover_detailsField];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = objc_opt_self();
  v7 = [v6 systemFontOfSize:13.0 weight:UIFontWeightMedium];
  [v4 setFont:v7];

  v8 = [v2 whiteColor];
  [v4 setTextColor:v8];

  v9 = [v6 systemFontOfSize:11.0 weight:UIFontWeightRegular];
  [v5 setFont:v9];

  v10 = [v2 whiteColor];
  [v5 setTextColor:v10];

  [v5 setNumberOfLines:0];
  [v1 addSubview:v4];
  [v1 addSubview:v5];
  v38 = objc_opt_self();
  sub_100005890(&unk_10007F1B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10005B9A0;
  v12 = [v4 leadingAnchor];
  v13 = [v1 safeAreaLayoutGuide];
  v14 = [v13 leadingAnchor];

  v15 = sub_10001FFE0();
  *(v11 + 32) = v15;
  v16 = [v5 leadingAnchor];
  v17 = sub_10001FFC4();
  v18 = [v17 leadingAnchor];

  v19 = sub_10001FFE0();
  *(v11 + 40) = v19;
  v20 = [v4 trailingAnchor];
  v21 = sub_10001FFC4();
  v22 = [v21 trailingAnchor];

  v23 = sub_100020000();
  *(v11 + 48) = v23;
  v24 = [v5 trailingAnchor];
  v25 = sub_10001FFC4();
  v26 = [v25 trailingAnchor];

  v27 = sub_100020000();
  *(v11 + 56) = v27;
  v28 = [v4 topAnchor];
  v29 = [v1 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];

  *(v11 + 64) = v30;
  v31 = [v5 topAnchor];
  v32 = [v4 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:4.0];

  *(v11 + 72) = v33;
  v34 = [v5 bottomAnchor];
  v35 = [v1 safeAreaLayoutGuide];
  v36 = [v35 bottomAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-12.0];
  *(v11 + 80) = v37;
  sub_100005A1C(0, &qword_10007FB10);
  isa = sub_100057BD0().super.isa;

  [v38 activateConstraints:isa];
}

id sub_10001FCB0(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SidebarPopover();
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (result)
  {
    v6 = result;
    LODWORD(v4) = 1144750080;
    LODWORD(v5) = 1112014848;
    [result systemLayoutSizeFittingSize:180.0 withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v4, v5}];
    v8 = v7;
    v10 = v9;

    return [v1 setPreferredContentSize:{v8, v10}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10001FE20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarPopover();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100057A20();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_10001FF6C();
    v6.super.isa = sub_1000579A0().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6.super.isa];

  return v7;
}

unint64_t sub_10001FF6C()
{
  result = qword_10007EAA0;
  if (!qword_10007EAA0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007EAA0);
  }

  return result;
}

id sub_10001FFC4()
{
  v3 = *(v1 + 2192);

  return [v0 v3];
}

id sub_10001FFE0()
{
  v4 = *(v0 + 1960);

  return [v1 v4];
}

id sub_100020000()
{
  v4 = *(v0 + 1960);

  return [v1 v4];
}

uint64_t sub_10002002C(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_100020048(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002005C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002009C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000200E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_10002010C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_100020188(uint64_t a1, char a2)
{
  sub_100006F48(a2);
  sub_100057AB0();
}

uint64_t sub_1000201DC()
{
  v2 = *v1;
  if (*(v1 + 32))
  {
    v4 = v1[1];
    v3 = v1[2];
    v5 = v1[3];
    if (*(v1 + 32) == 1)
    {
      v6 = v2 == 8 && v4 == 6;
      if (!v6 || ((v0 = 1868852853, v3) || v5 != 0xE000000000000000) && (sub_100058230() & 1) == 0)
      {
        sub_1000211D4();
      }
    }

    else
    {
      v8 = v3 | v4;
      if (v8 | v2 | v5)
      {
        v9 = v8 | v5;
        if (v2 == 1 && v9 == 0)
        {
          return 0x6279654B776F6873;
        }

        else if (v2 == 2 && v9 == 0)
        {
          return 0x6B636F44776F6873;
        }

        else
        {
          return 0x756E654D776F6873;
        }
      }

      else
      {
        sub_1000211E8();
      }
    }
  }

  else if (v2)
  {
    return 0x7466696873;
  }

  else
  {
    v7 = 7630959;
    if ((v2 & 4) == 0)
    {
      v7 = (v2 << 60 >> 63) & 0x646D63;
    }

    if ((v2 & 2) != 0)
    {
      return 1819440227;
    }

    else
    {
      return v7;
    }
  }

  return v0;
}

uint64_t sub_100020360()
{
  v2 = *v1;
  if (*(v1 + 32))
  {
    v4 = v1[1];
    v3 = v1[2];
    v5 = v1[3];
    if (*(v1 + 32) == 1)
    {
      if (v2 == 8 && v4 == 6)
      {
        v0 = 1868852853;
        if (!v3 && v5 == 0xE000000000000000)
        {
          return v0;
        }

        if (sub_100058230())
        {
          return v0;
        }
      }
    }

    else
    {
      v8 = v3 | v4;
      if (!(v8 | v2 | v5))
      {
        sub_1000211E8();
        return v0;
      }

      v9 = v8 | v5;
      if (v2 != 1 || v9 != 0)
      {
        if (v2 == 2 && v9 == 0)
        {
          return 1801678692;
        }

        else
        {
          return 0x726142756E656DLL;
        }
      }
    }

    sub_1000211D4();
    return v0;
  }

  if (v2)
  {
    return 0x646F4D7466696873;
  }

  v7 = 0x6669646F4D74706FLL;
  if ((v2 & 4) == 0)
  {
    v7 = (v2 << 60 >> 63) & 0x6669646F4D646D63;
  }

  if ((v2 & 2) != 0)
  {
    return 0x69646F4D6C727463;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1000204F8()
{
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      sub_100005890(&qword_10007F4F0);
      inited = swift_initStackObject();
      sub_100021204(inited, xmmword_10005B590);
      *(inited + 48) = sub_100057A20();
      *(inited + 56) = 6582125;
      *(inited + 64) = 0xE300000000000000;
      *(inited + 72) = sub_100057D40();
      *(inited + 80) = 7955819;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = sub_100057F40();
      *(inited + 104) = 7500915;
      *(inited + 112) = 0xE300000000000000;
      *(inited + 120) = sub_100057A20();
    }

    else
    {
      sub_100005890(&qword_10007F4F0);
      v3 = swift_initStackObject();
      sub_1000211A0(v3, xmmword_10005B860);
      v3[3].n128_u64[0] = sub_100057A20();
    }
  }

  else
  {
    sub_100005890(&qword_10007F4F0);
    v2 = swift_initStackObject();
    sub_100021204(v2, xmmword_10005B5A0);
    *(v2 + 48) = sub_100057A20();
    *(v2 + 56) = 6582125;
    *(v2 + 64) = 0xE300000000000000;
    *(v2 + 72) = sub_100057D40();
  }

  return sub_1000579C0();
}

uint64_t sub_1000207AC(uint64_t *a1, int8x16_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 32);
  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      return v2 == a2->i64[0];
    }

    return 0;
  }

  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  if (v3 == 1)
  {
    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    if (v2 != a2->i64[0] || v6 != a2->i64[1])
    {
      return 0;
    }

    if (v5 != a2[1].i64[0] || v7 != a2[1].i64[1])
    {
      return sub_100058230();
    }

    return 1;
  }

  v11 = v5 | v6;
  if (v11 | v2 | v7)
  {
    v12 = v11 | v7;
    if (v2 == 1 && v12 == 0)
    {
      if (a2[2].i8[0] != 2 || a2->i64[0] != 1)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v12)
    {
      if (a2[2].i8[0] != 2 || a2->i64[0] != 3)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0] != 2 || a2->i64[0] != 2)
    {
      return 0;
    }

    if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
    {
      return 1;
    }
  }

  else if (a2[2].i8[0] == 2)
  {
    v14 = vorrq_s8(*a2, a2[1]);
    if (!*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
    {
      return 1;
    }
  }

  return 0;
}

void sub_1000208E4()
{
  v1 = *v0;
  if (!*(v0 + 32))
  {
    sub_1000582C0(0);
    v5 = v1;
LABEL_18:
    sub_1000582C0(v5);
    return;
  }

  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {
    if (v2 | v3 | v1 | v4)
    {
      v6 = v2 | v3 | v4;
      if (v1 == 1 && v6 == 0)
      {
        v5 = 3;
      }

      else if (v1 != 2 || v6)
      {
        v5 = 5;
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 2;
    }

    goto LABEL_18;
  }

  sub_1000582C0(1uLL);
  sub_1000582C0(v1);
  sub_1000582C0(v3);

  sub_100057AB0();
}

Swift::Int sub_1000209D8()
{
  sub_1000582B0();
  sub_1000208E4();
  return sub_1000582F0();
}

Swift::Int sub_100020A20()
{
  sub_1000582B0();
  sub_1000208E4();
  return sub_1000582F0();
}

unint64_t sub_100020A64()
{
  result = qword_10007F4E8;
  if (!qword_10007F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F4E8);
  }

  return result;
}

uint64_t sub_100020AB8(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = &_swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_100008A90();
  v2 = v3;
  v4 = v3[2];
  if (v4 >= v3[3] >> 1)
  {
    sub_10002117C();
    v2 = v14;
  }

  v2[2] = v4 + 1;
  v5 = &v2[2 * v4];
  *(v5 + 4) = 0x7466696873;
  *(v5 + 5) = 0xE500000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000211B0();
      v2 = v15;
    }

    v6 = v2[2];
    if (v6 >= v2[3] >> 1)
    {
      sub_10002117C();
      v2 = v16;
    }

    v2[2] = v6 + 1;
    v7 = &v2[2 * v6];
    *(v7 + 4) = 0x6C6F72746E6F63;
    *(v7 + 5) = 0xE700000000000000;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000211B0();
      v2 = v19;
    }

    v11 = v2[2];
    if (v11 >= v2[3] >> 1)
    {
      sub_100008A90();
      v2 = v20;
    }

    v2[2] = v11 + 1;
    v12 = &v2[2 * v11];
    *(v12 + 4) = 0x646E616D6D6F63;
    *(v12 + 5) = 0xE700000000000000;
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000211B0();
    v2 = v17;
  }

  v9 = v2[2];
  if (v9 >= v2[3] >> 1)
  {
    sub_10002117C();
    v2 = v18;
  }

  v2[2] = v9 + 1;
  v10 = &v2[2 * v9];
  *(v10 + 4) = 0x6E6F6974706FLL;
  *(v10 + 5) = 0xE600000000000000;
  if ((a1 & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v2[2])
  {
LABEL_26:
    sub_100005890(&unk_10007F1E0);
    sub_100021114();
    v8 = sub_1000579D0();

    return v8;
  }

  return 0;
}

uint64_t sub_100020D04@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of VideoStream.session();
  *a1 = result;
  return result;
}

uint64_t sub_100020D38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100020D68(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100020D70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100019434(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100020DA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100020DD0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100020DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100020E14(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100020E14(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100020E38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100020E6C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100020E6C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100020EAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100020EDC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_100020F58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100020F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002010C(a1);
  *a2 = result;
  return result;
}

unint64_t sub_100020FB4()
{
  result = qword_10007F4F8;
  if (!qword_10007F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F4F8);
  }

  return result;
}

unint64_t sub_10002100C()
{
  result = qword_10007F500;
  if (!qword_10007F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F500);
  }

  return result;
}

unint64_t sub_100021068()
{
  result = qword_10007F508;
  if (!qword_10007F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F508);
  }

  return result;
}

unint64_t sub_1000210C0()
{
  result = qword_10007F510;
  if (!qword_10007F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F510);
  }

  return result;
}

unint64_t sub_100021114()
{
  result = qword_10007F518;
  if (!qword_10007F518)
  {
    sub_1000058D8(&unk_10007F1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F518);
  }

  return result;
}

void sub_10002117C()
{

  sub_100008A90();
}

__n128 *sub_1000211A0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

void sub_1000211B0()
{

  sub_100008A90();
}

__n128 *sub_100021204(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701869940;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_10002121C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005890(&qword_10007F520);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_100057CD0();
  sub_10001918C(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_100021798(0, 0, v7, &unk_10005BD18, v9);
}

uint64_t sub_10002131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v9 = (&async function pointer to dispatch thunk of MediaContinuityCoexSession.stop() + async function pointer to dispatch thunk of MediaContinuityCoexSession.stop());
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1000213C4;

  return v9();
}

uint64_t sub_1000213C4()
{
  sub_100021EAC();
  sub_100021EB8();
  v2 = *v1;
  sub_100021E60();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    v5 = sub_100021528;
  }

  else
  {
    v5 = sub_1000214C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000214C8()
{
  sub_100021EAC();
  (*(v0 + 16))(0);
  sub_100021EA0();

  return v1();
}

uint64_t sub_100021528()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  swift_errorRetain();
  v2(v1);

  sub_100021EA0();

  return v3();
}

uint64_t sub_1000215B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000215F8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_100021E90(v8);
  *v9 = v10;
  v9[1] = sub_1000216B8;

  return sub_10002131C(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_1000216B8()
{
  sub_100021EAC();
  sub_100021EB8();
  v1 = *v0;
  sub_100021E60();
  *v2 = v1;

  sub_100021EA0();

  return v3();
}

uint64_t sub_100021798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005890(&qword_10007F520);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100021A3C(a3, v24 - v10);
  v12 = sub_100057CD0();
  v13 = sub_100019110(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100021AAC(v11);
  }

  else
  {
    sub_100057CC0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100057CB0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100057A80() + 32;
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

      sub_100021AAC(a3);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100021AAC(a3);
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

uint64_t sub_100021A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005890(&qword_10007F520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021AAC(uint64_t a1)
{
  v2 = sub_100005890(&qword_10007F520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021B14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100021C0C;

  return v6(a1);
}

uint64_t sub_100021C0C()
{
  sub_100021EAC();
  sub_100021EB8();
  v1 = *v0;
  sub_100021E60();
  *v2 = v1;

  sub_100021EA0();

  return v3();
}

uint64_t sub_100021CF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021D28()
{
  v0 = swift_task_alloc();
  v1 = sub_100021E90(v0);
  *v1 = v2;
  v3 = sub_100021E70(v1);

  return v4(v3);
}

uint64_t sub_100021DC0()
{
  v0 = swift_task_alloc();
  v1 = sub_100021E90(v0);
  *v1 = v2;
  v3 = sub_100021E70(v1);

  return v4(v3);
}

id sub_100021EC4(uint64_t a1, uint64_t a2)
{
  v4 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  sub_100022684(a1, a2, 0, v4);
  sub_1000220C4();

  return v4;
}

id sub_100021F38()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.25];
  qword_100083CD8 = result;
  return result;
}

void *sub_100021F74(CGFloat a1, CGFloat a2)
{
  if ([v2 isHidden])
  {
    return 0;
  }

  if (![v2 isUserInteractionEnabled])
  {
    return 0;
  }

  [v2 alpha];
  if (v5 == 0.0)
  {
    return 0;
  }

  [v2 bounds];
  v7 = 100.0 - v6;
  [v2 bounds];
  v12 = -0.0;
  if (v7 > 0.0)
  {
    v12 = v7 * -0.5;
  }

  v16 = CGRectInset(*&v8, 0.0, v12);
  v15.x = a1;
  v15.y = a2;
  if (!CGRectContainsPoint(v16, v15))
  {
    return 0;
  }

  v13 = v2;
  return v2;
}

void sub_1000220C4()
{
  [v0 setContentEdgeInsets:{0.0, 8.0, 0.0, 8.0}];
  if (qword_10007E910 != -1)
  {
    sub_1000226F8();
  }

  [v0 setBackgroundColor:qword_100083CD8];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTintColor:v1];

  v2 = [v0 layer];
  [v2 setMasksToBounds:1];
  [v2 setCornerRadius:6.0];
}

id sub_1000222A4(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DisplayAlertButton();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_10002233C(char a1, SEL *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DisplayAlertButton();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  v5 = objc_opt_self();
  v6 = v2;
  [v5 begin];
  [v5 setDisableActions:1];
  sub_1000223DC();
  [v5 commit];
}

void sub_1000223DC()
{
  v1 = [v0 isSelected];
  v2 = [v0 isHighlighted];
  v3 = v2;
  if (v1)
  {
    v4 = objc_allocWithZone(UIColor);
    if (v3)
    {
      v5 = 0.623529412;
    }

    else
    {
      v5 = 0.501960784;
    }

    v6 = [v4 initWithWhite:v5 alpha:1.0];
    goto LABEL_8;
  }

  if (v2)
  {
    v6 = [objc_allocWithZone(UIColor) initWithWhite:0.392156863 alpha:1.0];
LABEL_8:
    v8 = v6;
    [v0 setBackgroundColor:v6];

    return;
  }

  if (qword_10007E910 != -1)
  {
    sub_1000226F8();
  }

  v7 = qword_100083CD8;

  [v0 setBackgroundColor:v7];
}

id sub_100022510(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DisplayAlertButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100022598(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DisplayAlertButton();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100022628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayAlertButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100022684(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100057A20();

  [a4 setTitle:v6 forState:a3];
}

uint64_t sub_1000226F8()
{

  return swift_once();
}

uint64_t sub_100022718(uint64_t a1)
{
  memset(&v7, 0, sizeof(v7));
  pthread_attr_init(&v7);
  v6 = 0;
  pthread_attr_setschedpolicy(&v7, 4);
  pthread_attr_getschedparam(&v7, &v6);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a1 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v6.sched_priority = a1;
  pthread_attr_setschedparam(&v7, &v6);
  aBlock[4] = sub_10002292C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000AF8C;
  aBlock[3] = &unk_1000735A8;
  v2 = _Block_copy(aBlock);
  v3 = dispatch_pthread_root_queue_create();
  _Block_release(v2);
  pthread_attr_destroy(&v7);
  return v3;
}

uint64_t sub_100022860(uint64_t a1)
{
  v2 = mach_host_self();
  sub_100023008();
  sub_100022BD0(v3, v4, v2);
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a1 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7[0] = a1;
  v7[1] = v8[3];
  sub_100022DDC(v7, v8);
  v5 = mach_port_deallocate(mach_task_self_, v2);
  return __logMachError(_:)(v5);
}

uint64_t sub_10002292C()
{
  sub_100005A1C(0, &qword_10007ECE0);
  sub_100022978();
  pthread_set_fixedpriority_self();

  return pthread_setname_np("com.apple.sidecar.root-queue.thread");
}

void sub_1000229DC(integer_t *a1, uint64_t a2)
{
  v4 = sub_100057880();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = a2 - a1;
  if (a2 - a1 < -3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v8 / 4) >> 32)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v9 = task_policy_set(mach_task_self_, 8u, a1, v8 / 4);
  if (v9)
  {
    v10 = v9;
    sub_100005A1C(0, &qword_10007F000);
    v11 = sub_10002B0D0(v10, 0, 0);
    v12 = sub_100057870();
    __chkstk_darwin(v12);
    v13[-2] = v11;
    sub_10002AC8C(sub_100022BB4, 0, sub_10000DEF0);

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100022BD0(integer_t *a1, uint64_t a2, host_t a3)
{
  v6 = sub_100057880();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
LABEL_9:
    __break(1u);
  }

  if (a2 - a1 < -3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((a2 - a1) / 4) >> 32)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  host_info_outCnt = (a2 - a1) / 4;
  result = host_info(a3, 3, a1, &host_info_outCnt);
  if (result)
  {
    v11 = result;
    sub_100005A1C(0, &qword_10007F000);
    v12 = sub_10002B0D0(v11, 0, 0);
    v13 = sub_100057870();
    __chkstk_darwin(v13);
    *&v14[-16] = v12;
    sub_10002AC8C(sub_100023004, 0, sub_10000DF6C);

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_100022DDC(integer_t *a1, uint64_t a2)
{
  v4 = sub_100057880();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = a2 - a1;
  if (a2 - a1 < -3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = v8 / 4;
  if ((v8 / 4) >> 32)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v10 = mach_thread_self();
  v11 = thread_policy(v10, 2, a1, v9, 1);
  if (v11)
  {
    v12 = v11;
    sub_100005A1C(0, &qword_10007F000);
    v13 = sub_10002B0D0(v12, 0, 0);
    v14 = sub_100057870();
    __chkstk_darwin(v14);
    *(&v16 - 2) = v13;
    sub_10002AC8C(sub_100023004, 0, sub_10000DF6C);

    (*(v5 + 8))(v7, v4);
  }

  v15 = mach_port_deallocate(mach_task_self_, v10);
  __logMachError(_:)(v15);
}

uint64_t sub_100022FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002302C()
{
  v1 = *(v0 + 24);
  if (*(v0 + 1) != 30 || v1 == 0)
  {
    return 0;
  }

  v3 = swift_slowAlloc();
  if (!if_indextoname(v1, v3))
  {
    sub_100023820();
    return 0;
  }

  v4 = sub_100057B00();
  sub_100023820();
  return v4;
}

uint64_t sub_1000230E0()
{
  v1 = *(v0 + 1);
  if (v1 == 30)
  {
    return sub_1000233DC(*(v0 + 8), *(v0 + 16));
  }

  if (v1 == 2)
  {
    return sub_100023328(*(v0 + 4));
  }

  return 0;
}

unint64_t sub_10002315C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    sub_1000237CC();
    sub_10002383C();
    sub_10002B0DC(v1, v2, v3);
    return swift_willThrow();
  }

  else if (result >> 31)
  {
    __break(1u);
  }

  return result;
}

void *sub_10002328C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, int *)@<X1>, void *a3@<X8>)
{
  memset(v6, 0, sizeof(v6));
  result = sub_1000235E8(v6, 128, a1, a2);
  if (!v3)
  {
    return memcpy(a3, v6, 0x80uLL);
  }

  return result;
}

uint64_t sub_100023328(int a1)
{
  v4 = a1;
  v1 = swift_slowAlloc();
  if (inet_ntop(2, &v4, v1, 0x10u))
  {
    v2 = sub_100057B00();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1000233DC(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v2 = swift_slowAlloc();
  if (inet_ntop(30, v5, v2, 0x2Eu))
  {
    v3 = sub_100057B00();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

const char *sub_100023490()
{
  v10[0].sa_len = *v0;
  memcpy(&v10[0].sa_family, v0 + 1, 0x7FuLL);
  if (v10[0].sa_len)
  {
    sa_len = v10[0].sa_len;
  }

  else
  {
    sa_len = 128;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v4 = getnameinfo(v10, sa_len, v2, 0x401u, v3, 0x20u, 26);
  if (!v4)
  {
    v6 = sub_100057B00();
    v7 = sub_100057B00();
    v9 = v8;
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    sub_100057AF0(v11);
    v12._countAndFlagsBits = v7;
    v12._object = v9;
    sub_100057AF0(v12);

    goto LABEL_8;
  }

  result = gai_strerror(v4);
  if (result)
  {
    v6 = sub_100057B00();
LABEL_8:
    sub_100023820();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000235E8(uint64_t a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, int *))
{
  v8 = a2;
  result = a4(a3, a1, &v8);
  if (result)
  {
    sub_1000237CC();
    sub_1000578A0();
    sub_10002383C();
    sub_10002B0DC(v5, v6, v7);
    return swift_willThrow();
  }

  return result;
}

Swift::Int sub_1000236CC(Swift::UInt32 a1)
{
  sub_1000582B0();
  sub_1000582E0(a1);
  return sub_1000582F0();
}

Swift::Int sub_100023724()
{
  v1 = *v0;
  sub_1000582B0();
  sub_1000582E0(v1);
  return sub_1000582F0();
}

unint64_t sub_100023778()
{
  result = qword_10007F550;
  if (!qword_10007F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F550);
  }

  return result;
}

unint64_t sub_1000237CC()
{
  result = qword_10007F000;
  if (!qword_10007F000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007F000);
  }

  return result;
}

ValueMetadata *type metadata accessor for Sockaddr()
{
  return &type metadata for Sockaddr;
}

{
  return &type metadata for Sockaddr;
}

uint64_t sub_100023820()
{
}

void sub_100023858()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = type metadata accessor for DisplayViewController();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 blackColor];
    [v3 setBackgroundColor:v5];

    v6 = OBJC_IVAR___DisplayViewController_displayView;
    v7 = *&v1[OBJC_IVAR___DisplayViewController_displayView];
    v8 = [v4 blackColor];
    [v7 setBackgroundColor:v8];

    [*&v1[v6] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:*&v1[v6]];
    v9 = objc_opt_self();
    sub_100005890(&unk_10007F1B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10005B7E0;
    v11 = [*&v1[v6] leftAnchor];
    v12 = [v3 leftAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [*&v1[v6] rightAnchor];
    v15 = sub_1000271A8([v3 rightAnchor]);

    *(v10 + 40) = v15;
    v16 = [*&v1[v6] topAnchor];
    v17 = sub_1000271A8([v3 topAnchor]);

    *(v10 + 48) = v17;
    v18 = [*&v1[v6] bottomAnchor];
    v19 = sub_1000271A8([v3 bottomAnchor]);

    *(v10 + 56) = v19;
    sub_100005A1C(0, &qword_10007FB10);
    isa = sub_100057BD0().super.isa;

    [v9 activateConstraints:isa];

    [v3 layoutIfNeeded];
    v21 = *&v1[v6];
    v22 = objc_allocWithZone(type metadata accessor for TouchController());
    sub_10003B734(v21);
    v23 = *&v1[OBJC_IVAR___DisplayViewController_touchController];
    *&v1[OBJC_IVAR___DisplayViewController_touchController] = v24;
    v25 = v24;

    *&v25[OBJC_IVAR____TtC17ContinuityDisplay15TouchController_delegate + 8] = &off_100073678;
    swift_unknownObjectWeakAssign();

    v26 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v1];
    v27 = *&v1[OBJC_IVAR___DisplayViewController_displayViewPointerInteraction];
    *&v1[OBJC_IVAR___DisplayViewController_displayViewPointerInteraction] = v26;
    v28 = v26;

    if (v28)
    {
      v29 = *&v1[v6];
      [v29 addInteraction:v28];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100023D28()
{
  v0 = sub_100057880();
  sub_100026FF4(v0, qword_10007F560);
  sub_100026CEC(v0, qword_10007F560);
  return sub_100057860();
}

void sub_100023DA0(void *a1)
{
  v2 = v1;
  v4 = sub_100057880();
  sub_1000068E4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000068D4();
  v10 = v9 - v8;
  if (qword_10007E918 != -1)
  {
    sub_100027148();
  }

  v11 = sub_100026CEC(v4, qword_10007F560);
  (*(v6 + 16))(v10, v11, v4);
  [objc_allocWithZone(SidecarDisplayConfig) init];
  objc_allocWithZone(type metadata accessor for SidecarDisplaySession(0));
  v12 = a1;
  SidecarDisplaySession.init(logger:request:config:)();
  v14 = v13;
  v15 = v13 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_delegate;
  sub_100027274();
  *(v15 + 8) = &off_100073688;
  swift_unknownObjectWeakAssign();
  SidecarDisplaySession.accept()();
  v16 = *(v2 + OBJC_IVAR___DisplayViewController_session);
  *(v2 + OBJC_IVAR___DisplayViewController_session) = v14;
}

void sub_100023F20(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR___DisplayViewController_delegate];
  v5 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_settings;
  sub_100027224();
  v6 = *(a1 + v5);
  v2[OBJC_IVAR___DisplayViewController_sessionConfiguring] = 1;
  swift_unknownObjectRetain();

  sub_10002606C(a1);
  v2[OBJC_IVAR___DisplayViewController_receivedFirstFrame] = 0;
  v2[OBJC_IVAR___DisplayViewController_receivedConfigComplete] = 0;
  v7 = 0.0;
  if (sub_10002B17C(v6))
  {
    if ((sub_10002B16C(v6) & 1) != 0 && (sub_10002B174(v6) & 1) == 0 && !sub_100027098())
    {
      v7 = 78.0;
      if (v4)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_100008634(17, v6);
    v7 = v8;
  }

  if (v4)
  {
LABEL_7:
    swift_unknownObjectRetain();

    sub_100033B80();
    v10 = v9;
    v12 = v11;
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

LABEL_9:
  v13 = [v2 view];
  if (v13)
  {
    v14 = v13;

    [v14 bounds];
    v10 = v15;
    v12 = v16;

LABEL_11:
    if (v2[OBJC_IVAR___DisplayViewController_portrait])
    {
      v17 = v12 < v10;
    }

    else
    {
      v17 = v10 < v12;
    }

    if (v17)
    {
      v18 = v10;
    }

    else
    {
      v18 = v12;
    }

    if (v17)
    {
      v19 = v12;
    }

    else
    {
      v19 = v10;
    }

    v20 = ceil(v19 - v7);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        v21 = ceil(v18);
        if (v21 > -9.22337204e18)
        {
          if (v21 < 9.22337204e18)
          {
            if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v22 = *(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config);
              [v22 setScale:2.0];
              [v22 setSize:{v20, v21}];
              swift_unknownObjectRelease();
              return;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_33:
  __break(1u);
}

void sub_100024190(uint64_t a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions:1];
  v8 = [*(v1 + OBJC_IVAR___DisplayViewController_displayView) layer];
  sub_10000F3D0(*(a1 + OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_config));
  if ((v5 & 1) == 0)
  {
    [v8 setContentsScale:v4];
  }

  v6 = SidecarDisplaySession.videoSlot.getter();
  if ((v6 & 0x100000000) == 0)
  {
    v7 = v6;
    [v8 setAllowsDisplayCompositing:1];
    [v8 setContents:{objc_msgSend(objc_opt_self(), "objectForSlot:", v7)}];
    swift_unknownObjectRelease();
    [v8 setContentsGravity:kCAGravityBottomLeft];
  }

  [v3 commit];
  *(v1 + OBJC_IVAR___DisplayViewController_sessionConfiguring) = 0;
  sub_1000035B0(a1);
  if (*(v1 + OBJC_IVAR___DisplayViewController_delegate))
  {
    swift_unknownObjectRetain();
    sub_10003517C();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100024364(int a1, id a2)
{
  v3 = [a2 transport];
  v4 = OBJC_IVAR___DisplayViewController_transport;
  *(v2 + OBJC_IVAR___DisplayViewController_transport) = v3;
  v5 = SidecarDisplaySession.codec.getter();
  v6 = *(v2 + v4);

  SidecarPowerLogDisplaySession(1, v5, v6);
}

void sub_1000243D0()
{
  v1 = SidecarDisplaySession.codec.getter();
  v2 = *(v0 + OBJC_IVAR___DisplayViewController_transport);

  SidecarPowerLogDisplaySession(0, v1, v2);
}

void sub_10002447C()
{
  sub_100019748();
  v4 = v3;
  v5 = sub_1000578E0();
  sub_1000068E4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000068D4();
  v19 = sub_100027208();
  sub_1000068E4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000068D4();
  sub_10002723C();
  sub_100005A1C(0, &qword_10007EEC0);
  v12 = sub_100057DC0();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v4;
  sub_100027168(v13);
  v20[1] = 1107296256;
  sub_1000194A0();
  v20[2] = v14;
  v20[3] = &unk_100073818;
  v15 = _Block_copy(v20);
  v16 = v0;
  swift_errorRetain();

  sub_100057900();
  v20[0] = &_swiftEmptyArrayStorage;
  sub_100027130();
  sub_100026FAC(v17, v18);
  sub_100005890(&unk_10007ED80);
  sub_10000D500();
  sub_10002718C();
  sub_100058000();
  sub_1000271F8();
  sub_100057DE0();
  _Block_release(v15);

  (*(v7 + 8))(v1, v5);
  (*(v10 + 8))(v2, v19);
  sub_100019718();
}

uint64_t sub_1000246B0(uint64_t result, void *a2)
{
  if (*(result + OBJC_IVAR___DisplayViewController_delegate))
  {
    v3 = result;
    swift_unknownObjectRetain();
    sub_10002DE34(v3, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100024724(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (!sub_100058190())
    {
      return;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = sub_100058090();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(a2 + 32);
  }

  v13 = v4;
  v5 = [v4 type];
  v6 = sub_100057A50();
  v8 = v7;

  v9 = v6 == 0x7073696464 && v8 == 0xE500000000000000;
  if (v9 || (sub_1000271C8() & 1) != 0)
  {

    sub_100024CB4(v13);
LABEL_12:

    return;
  }

  v10 = v6 == 0x6E6F636572 && v8 == 0xE500000000000000;
  if (v10 || (sub_1000271C8() & 1) != 0)
  {

    sub_100025D1C(v13);
    goto LABEL_12;
  }

  if (v6 == 0x7073696476 && v8 == 0xE500000000000000)
  {

    goto LABEL_31;
  }

  v12 = sub_1000271C8();

  if (v12)
  {
LABEL_31:
    sub_100024E00();
    goto LABEL_12;
  }

  if (!*(v2 + OBJC_IVAR___DisplayViewController_delegate))
  {
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  sub_100033C60(v13);

  swift_unknownObjectRelease();
}

void sub_100024904()
{
  sub_100019748();
  v3 = v0;
  v4 = sub_1000578E0();
  sub_1000068E4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000068D4();
  v8 = sub_100027208();
  sub_1000068E4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000068D4();
  sub_10002723C();
  if (qword_10007E918 != -1)
  {
    sub_100027148();
  }

  v12 = sub_100057880();
  sub_100026CEC(v12, qword_10007F560);
  v13 = sub_100057850();
  v14 = sub_100057D80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "=== Video Start ===", v15, 2u);
  }

  sub_100005A1C(0, &qword_10007EEC0);
  v16 = sub_100057DC0();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  sub_100027168(v17);
  v23[1] = 1107296256;
  sub_1000194A0();
  v23[2] = v18;
  v23[3] = &unk_1000737C8;
  v19 = _Block_copy(v23);
  v20 = v3;

  sub_100057900();
  v23[0] = &_swiftEmptyArrayStorage;
  sub_100027130();
  sub_100026FAC(v21, v22);
  sub_100005890(&unk_10007ED80);
  sub_10000D500();
  sub_10002718C();
  sub_100058000();
  sub_1000271F8();
  sub_100057DE0();
  _Block_release(v19);

  (*(v6 + 8))(v1, v4);
  (*(v10 + 8))(v2, v8);
  sub_100019718();
}

BOOL sub_100024C04@<W0>(uint64_t a1@<X8>)
{
  result = sub_100027098();
  v3 = 0x402C000000000000;
  *a1 = 0;
  *(a1 + 8) = 0;
  if (result)
  {
    v3 = 0;
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_100024C40()
{
  if (*(v0 + OBJC_IVAR___DisplayViewController_delegate))
  {
    swift_unknownObjectRetain();
    sub_10002F894();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100024CB4(void *a1)
{
  if ([a1 objectValue])
  {
    sub_100057FE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    return sub_100026F50(&v7, &unk_10007EEE0);
  }

  sub_100005890(&qword_10007F1A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_10000EB54(0x7073696464, 0xE500000000000000, v4, &v7);

  if (!*(&v8 + 1))
  {
    return sub_100026F50(&v7, &unk_10007EEE0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR___DisplayViewController_delegate);
    if (v3)
    {
      *(v3 + OBJC_IVAR___DisplayMainViewController_dockShown) = v5;
      swift_unknownObjectRetain();
      sub_10002B694();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100024E00()
{
  sub_100019748();
  v3 = sub_1000578E0();
  sub_1000068E4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000068D4();
  v7 = sub_100027208();
  sub_1000068E4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000068D4();
  sub_10002723C();
  sub_100005A1C(0, &qword_10007EEC0);
  v11 = sub_100057DC0();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  sub_100027168(v12);
  v18[1] = 1107296256;
  sub_1000194A0();
  v18[2] = v13;
  v18[3] = &unk_100073778;
  v14 = _Block_copy(v18);
  v15 = v0;

  sub_100057900();
  v18[0] = &_swiftEmptyArrayStorage;
  sub_100027130();
  sub_100026FAC(v16, v17);
  sub_100005890(&unk_10007ED80);
  sub_10000D500();
  sub_10002718C();
  sub_100058000();
  sub_1000271F8();
  sub_100057DE0();
  _Block_release(v14);

  (*(v5 + 8))(v1, v3);
  (*(v9 + 8))(v2, v7);
  sub_100019718();
}

void sub_100025028(uint64_t a1)
{
  if (qword_10007E918 != -1)
  {
    swift_once();
  }

  v2 = sub_100057880();
  sub_100026CEC(v2, qword_10007F560);
  v3 = sub_100057850();
  v4 = sub_100057D80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "=== Virtual Display Configuration Complete ===", v5, 2u);
  }

  *(a1 + OBJC_IVAR___DisplayViewController_receivedConfigComplete) = 1;
  sub_10002511C();
}

void sub_10002511C()
{
  sub_100019748();
  v2 = v0;
  v3 = sub_1000578E0();
  sub_1000068E4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000068D4();
  v68 = v8 - v7;
  v69 = sub_100057910();
  sub_1000068E4();
  v67 = v9;
  __chkstk_darwin(v10);
  sub_1000068D4();
  sub_10002723C();
  v11 = sub_100005890(&unk_10007F190);
  v12 = sub_1000271E8(v11);
  v66 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  sub_100057930();
  sub_1000068E4();
  __chkstk_darwin(v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v58 - v29;
  if (v2[OBJC_IVAR___DisplayViewController_receivedFirstFrame] == 1 && v2[OBJC_IVAR___DisplayViewController_receivedConfigComplete] == 1)
  {
    v63 = v5;
    v64 = v3;
    v31 = v27;
    v32 = v28;
    sub_100057920();
    sub_100057970();
    v33 = *(v32 + 8);
    v61 = v32 + 8;
    v62 = v31;
    v60 = v33;
    v33(v25, v31);
    v34 = *&v2[OBJC_IVAR___DisplayViewController_session];
    if (v34)
    {
      v35 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
      sub_100027224();
      v36 = sub_1000577F0();
      sub_100027248();
      (*(v37 + 16))(v22, v34 + v35, v36);
      v38 = v22;
      v39 = 0;
    }

    else
    {
      v36 = sub_1000577F0();
      v38 = v22;
      v39 = 1;
    }

    sub_10001918C(v38, v39, 1, v36);
    sub_100026C7C(v22, v19);
    sub_1000577F0();
    isa = 0;
    if (sub_100019110(v19, 1, v36) != 1)
    {
      isa = sub_1000577A0().super.isa;
      sub_100027248();
      (*(v41 + 8))(v19, v36);
    }

    v65 = sub_100018A40(isa);

    v42 = v63;
    if (qword_10007E918 != -1)
    {
      sub_100027148();
    }

    v43 = sub_100057880();
    sub_100026CEC(v43, qword_10007F560);
    v44 = sub_100057850();
    v45 = sub_100057D80();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v44, v45, "=== Display Stream Ready (%lx) ===", v46, 0xCu);
    }

    sub_100005A1C(0, &qword_10007EEC0);
    v59 = sub_100057DC0();
    sub_100026C7C(v22, v16);
    v47 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v48 = (v15 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    sub_100026E2C(v16, v49 + v47);
    *(v49 + v48) = v2;
    *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
    v70[4] = sub_100026E9C;
    v70[5] = v49;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 1107296256;
    sub_1000194A0();
    v70[2] = v50;
    v70[3] = &unk_100073728;
    v51 = _Block_copy(v70);
    v52 = v2;

    sub_100057900();
    v70[0] = &_swiftEmptyArrayStorage;
    sub_100027130();
    sub_100026FAC(v53, v54);
    sub_100005890(&unk_10007ED80);
    sub_10000D500();
    v55 = v68;
    v56 = v64;
    sub_100058000();
    v57 = v59;
    sub_100057DA0();
    _Block_release(v51);

    (*(v42 + 8))(v55, v56);
    (*(v67 + 8))(v1, v69);
    sub_100026F50(v22, &unk_10007F190);
    v60(v30, v62);
  }

  sub_100019718();
}

void sub_100025774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v5 = sub_1000577F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = sub_100005890(&unk_10007FB00);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_100005890(&unk_10007F190);
  __chkstk_darwin(v14 - 8);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  v41 = OBJC_IVAR___DisplayViewController_session;
  v42 = a2;
  v20 = *(a2 + OBJC_IVAR___DisplayViewController_session);
  if (v20)
  {
    v21 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
    swift_beginAccess();
    (*(v6 + 16))(v19, v20 + v21, v5);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_10001918C(v19, v22, 1, v5);
  v23 = *(v11 + 48);
  sub_100026C7C(a1, v13);
  sub_100026C7C(v19, &v13[v23]);
  if (sub_100019110(v13, 1, v5) == 1)
  {
    sub_100026F50(v19, &unk_10007F190);
    v24 = sub_100019110(&v13[v23], 1, v5);
    v25 = v42;
    if (v24 == 1)
    {
      sub_100026F50(v13, &unk_10007F190);
LABEL_18:
      v37 = OBJC_IVAR___DisplayViewController_delegate;
      if (*(v25 + OBJC_IVAR___DisplayViewController_delegate))
      {
        swift_unknownObjectRetain();
        sub_100035240();
        swift_unknownObjectRelease();
      }

      v38 = OBJC_IVAR___DisplayViewController__reconfiguring;
      if (*(v25 + OBJC_IVAR___DisplayViewController__reconfiguring) == 1)
      {
        if (*(v25 + v37))
        {
          swift_unknownObjectRetain();
          sub_100034C14();
          swift_unknownObjectRelease();
        }

        *(v25 + v38) = 0;
      }

      return;
    }

    goto LABEL_9;
  }

  sub_100026C7C(v13, v16);
  if (sub_100019110(&v13[v23], 1, v5) == 1)
  {
    sub_100026F50(v19, &unk_10007F190);
    (*(v6 + 8))(v16, v5);
    v25 = v42;
LABEL_9:
    sub_100026F50(v13, &unk_10007FB00);
    goto LABEL_10;
  }

  (*(v6 + 32))(v10, &v13[v23], v5);
  sub_100026FAC(&qword_10007F690, &type metadata accessor for UUID);
  v35 = sub_100057A00();
  v36 = *(v6 + 8);
  v36(v10, v5);
  sub_100026F50(v19, &unk_10007F190);
  v36(v16, v5);
  sub_100026F50(v13, &unk_10007F190);
  v25 = v42;
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_10:
  isa = *(v25 + v41);
  if (isa)
  {
    v27 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_uuid;
    swift_beginAccess();
    v28 = isa + v27;
    v29 = v40;
    (*(v6 + 16))(v40, v28, v5);
    isa = sub_1000577A0().super.isa;
    (*(v6 + 8))(v29, v5);
  }

  v30 = sub_100018A40(isa);

  if (qword_10007E918 != -1)
  {
    swift_once();
  }

  v31 = sub_100057880();
  sub_100026CEC(v31, qword_10007F560);
  v32 = sub_100057850();
  v33 = sub_100057D70();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134218240;
    *(v34 + 4) = v39;
    *(v34 + 12) = 2048;
    *(v34 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v32, v33, "discarded display stream ready (%lx:%lx)", v34, 0x16u);
  }
}

void sub_100025D1C(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___DisplayViewController_session);
  if (!v3)
  {
    return;
  }

  v5 = v3;
  if ([a1 objectValue])
  {
    sub_100057FE0();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_13;
  }

  sub_100005890(&qword_10007F1A0);
  if ((sub_100027254() & 1) == 0)
  {
LABEL_14:

    return;
  }

  sub_10000EB54(0x6E6F73616572, 0xE600000000000000, v15, &v18);
  if (!*(&v19 + 1))
  {

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    return;
  }

  sub_10000EB54(0x73746C7561666564, 0xE800000000000000, v15, &v18);

  if (!*(&v19 + 1))
  {
LABEL_13:

LABEL_16:
    sub_100026F50(&v18, &unk_10007EEE0);
    return;
  }

  if ((sub_100027254() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (sub_1000182CC(v16) == 6)
  {
    goto LABEL_18;
  }

  v6 = *(v2 + OBJC_IVAR___DisplayViewController_delegate);
  if (v6)
  {
    swift_unknownObjectRetain();
    v7 = sub_100007344(v16);
    v8 = OBJC_IVAR___DisplayMainViewController_displaySettings;
    sub_100027274();
    *(v6 + v8) = v7;

    sub_10002CD84();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  *(v2 + OBJC_IVAR___DisplayViewController__reconfiguring) = 1;
  v9 = *&v5[OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_request];
  sub_100005890(&unk_10007F1B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10005B500;
  v11 = v9;
  v12 = sub_1000579C0();
  *(&v19 + 1) = sub_100005890(&unk_10007F680);
  *&v18 = v12;
  v13 = objc_allocWithZone(SidecarItem);
  *(v10 + 32) = sub_100037DE4(&v18);
  sub_100005A1C(0, &unk_10007FAA0);
  isa = sub_100057BD0().super.isa;

  [v11 sendItems:isa complete:0];
}

uint64_t sub_10002606C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___DisplayViewController_delegate;
  v5 = *(v1 + OBJC_IVAR___DisplayViewController_delegate);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_settings;
    sub_100027224();
    v7 = *(a1 + v6);
    v8 = OBJC_IVAR___DisplayMainViewController_displaySettings;
    sub_100027274();
    *(v5 + v8) = v7;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  if ((sub_10000F204() & 1) != 0 && *(v2 + v4))
  {
    sub_100027224();
    swift_unknownObjectRetain();

    sub_100034E3C(v9, 3);

    swift_unknownObjectRelease();
  }

  v10 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_settings;
  sub_100027224();

  v12 = sub_10002B17C(v11) & 1;

  v13 = OBJC_IVAR___DisplayViewController_showSidebar;
  if (v12 != *(v2 + OBJC_IVAR___DisplayViewController_showSidebar))
  {

    v15 = sub_10002B17C(v14);

    *(v2 + v13) = v15 & 1;
    if (*(v2 + v4))
    {
      swift_unknownObjectRetain();

      sub_100034E3C(v16, 10);

      swift_unknownObjectRelease();
    }
  }

  v35 = v2;
  v36 = sub_100007A68();
  v17 = *(v36 + 2);
  if (v17)
  {
    v18 = v36 + 32;
    while (1)
    {
      v20 = *v18++;
      v19 = v20;
      v21 = *(a1 + v10);
      if (!*(v21 + 16))
      {
        goto LABEL_31;
      }

      v22 = sub_100037E80(v19);
      if ((v23 & 1) == 0)
      {
        break;
      }

      sub_100008DD8(*(v21 + 56) + 32 * v22, v37);

      sub_100026F50(v37, &unk_10007EEE0);
      if (sub_100006F48(v19) == 0x63756F54776F6873 && v24 == 0xEC00000072616268)
      {
        goto LABEL_32;
      }

      v26 = sub_100058230();

      if ((v26 & 1) == 0)
      {
        if (sub_100006F48(v19) == 0x7261426863756F74 && v27 == 0xEB00000000706F54)
        {
          goto LABEL_32;
        }

        v29 = sub_100058230();

        if ((v29 & 1) == 0)
        {
          if (sub_100006F48(v19) != 0x5372616265646973 || v30 != 0xEC0000006E776F68)
          {
            v32 = sub_100058230();

            if ((v32 & 1) == 0 && *(v35 + v4))
            {
              swift_unknownObjectRetain();

              sub_100034E3C(v33, v19);

              swift_unknownObjectRelease();
            }

            goto LABEL_33;
          }

LABEL_32:
        }
      }

LABEL_33:
      if (!--v17)
      {
      }
    }

LABEL_31:
    memset(v37, 0, sizeof(v37));
    sub_100026F50(v37, &unk_10007EEE0);
    goto LABEL_33;
  }
}

uint64_t sub_1000263F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC17ContinuityDisplay21SidecarDisplaySession_settings;
  sub_100027224();
  v7 = *(a1 + v6);
  v8 = OBJC_IVAR___DisplayViewController_delegate;
  v9 = *(v3 + OBJC_IVAR___DisplayViewController_delegate);
  if (v9)
  {
    v10 = OBJC_IVAR___DisplayMainViewController_displaySettings;
    sub_100027274();
    *(v9 + v10) = v7;
    swift_bridgeObjectRetain_n();
  }

  else
  {
  }

  v11 = sub_100008270(a2);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 32;
    do
    {
      if (*(v3 + v8))
      {
        v14 = *(v11 + v13);
        swift_unknownObjectRetain();
        sub_100034E3C(v7, v14);
        swift_unknownObjectRelease();
      }

      ++v13;
      --v12;
    }

    while (v12);
  }
}

id sub_100026500(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_100057880();
  sub_1000068E4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000068D4();
  v13 = v12 - v11;
  v14 = &v4[OBJC_IVAR___DisplayViewController_delegate];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR___DisplayViewController_touchController] = 0;
  v4[OBJC_IVAR___DisplayViewController_sessionConfiguring] = 0;
  *&v4[OBJC_IVAR___DisplayViewController_displayViewPointerInteraction] = 0;
  v15 = OBJC_IVAR___DisplayViewController_displayView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR___DisplayViewController_hidObserver;
  if (qword_10007E918 != -1)
  {
    sub_100027148();
  }

  v17 = sub_100026CEC(v7, qword_10007F560);
  (*(v9 + 16))(v13, v17, v7);
  type metadata accessor for HIDEventObserver();
  swift_allocObject();
  sub_100002F18(v13);
  *&v4[v16] = v18;
  *&v4[OBJC_IVAR___DisplayViewController_session] = 0;
  *&v4[OBJC_IVAR___DisplayViewController_videoStream] = 0;
  *&v4[OBJC_IVAR___DisplayViewController_video] = 0;
  v4[OBJC_IVAR___DisplayViewController__reconfiguring] = 0;
  v4[OBJC_IVAR___DisplayViewController_portrait] = 0;
  v4[OBJC_IVAR___DisplayViewController_showSidebar] = 0;
  *&v4[OBJC_IVAR___DisplayViewController_transport] = 0;
  v4[OBJC_IVAR___DisplayViewController_receivedFirstFrame] = 0;
  v4[OBJC_IVAR___DisplayViewController_receivedConfigComplete] = 0;
  if (a2)
  {
    v19 = sub_100057A20();
  }

  else
  {
    v19 = 0;
  }

  v22.receiver = v4;
  v22.super_class = type metadata accessor for DisplayViewController();
  v20 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", v19, a3);

  return v20;
}

id sub_1000267A4(void *a1)
{
  v2 = v1;
  v4 = sub_100057880();
  sub_1000068E4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000068D4();
  v10 = v9 - v8;
  v11 = &v2[OBJC_IVAR___DisplayViewController_delegate];
  *v11 = 0;
  v11[1] = 0;
  *&v2[OBJC_IVAR___DisplayViewController_touchController] = 0;
  v2[OBJC_IVAR___DisplayViewController_sessionConfiguring] = 0;
  *&v2[OBJC_IVAR___DisplayViewController_displayViewPointerInteraction] = 0;
  v12 = OBJC_IVAR___DisplayViewController_displayView;
  *&v2[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR___DisplayViewController_hidObserver;
  if (qword_10007E918 != -1)
  {
    sub_100027148();
  }

  v14 = sub_100026CEC(v4, qword_10007F560);
  (*(v6 + 16))(v10, v14, v4);
  type metadata accessor for HIDEventObserver();
  swift_allocObject();
  sub_100002F18(v10);
  *&v2[v13] = v15;
  *&v2[OBJC_IVAR___DisplayViewController_session] = 0;
  *&v2[OBJC_IVAR___DisplayViewController_videoStream] = 0;
  *&v2[OBJC_IVAR___DisplayViewController_video] = 0;
  v2[OBJC_IVAR___DisplayViewController__reconfiguring] = 0;
  v2[OBJC_IVAR___DisplayViewController_portrait] = 0;
  v2[OBJC_IVAR___DisplayViewController_showSidebar] = 0;
  *&v2[OBJC_IVAR___DisplayViewController_transport] = 0;
  v2[OBJC_IVAR___DisplayViewController_receivedFirstFrame] = 0;
  v2[OBJC_IVAR___DisplayViewController_receivedConfigComplete] = 0;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for DisplayViewController();
  v16 = objc_msgSendSuper2(&v18, "initWithCoder:", a1);

  if (v16)
  {
  }

  return v16;
}

id sub_1000269E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_100026B0C@<D0>(uint64_t a1@<X8>)
{
  sub_100024C04(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

id sub_100026BAC()
{
  v0 = [objc_opt_self() hiddenPointerStyle];

  return v0;
}

unint64_t sub_100026C58(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_100026C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005890(&unk_10007F190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026CEC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100026D24()
{
  v1 = sub_100005890(&unk_10007F190);
  sub_1000271E8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_1000577F0();
  if (!sub_100019110(v0 + v4, 1, v7))
  {
    sub_100027248();
    (*(v8 + 8))(v0 + v4, v7);
  }

  v9 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v10 + 8, v3 | 7);
}

uint64_t sub_100026E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005890(&unk_10007F190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100026E9C()
{
  v1 = sub_100005890(&unk_10007F190);
  sub_1000271E8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100025774(v0 + v6, v8, v9);
}

uint64_t sub_100026F38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100026F50(uint64_t a1, uint64_t *a2)
{
  sub_100005890(a2);
  sub_100027248();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100026FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100026FF4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100027058()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000270CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027148()
{

  return swift_once();
}

uint64_t sub_100027168(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

id sub_1000271A8(uint64_t a1)
{
  v4 = *(v2 + 1984);

  return [v1 v4];
}

uint64_t sub_1000271C8()
{

  return sub_100058230();
}

uint64_t sub_100027208()
{

  return sub_100057910();
}

uint64_t sub_100027224()
{

  return swift_beginAccess();
}

uint64_t sub_100027254()
{

  return swift_dynamicCast();
}

uint64_t sub_100027274()
{

  return swift_beginAccess();
}

void sub_10002728C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = __chkstk_darwin(a1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1, v3);
  if (sub_100058200())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = sub_100057660();

  v9 = [v8 domain];
  v10 = sub_100057A50();
  v12 = v11;

  if (sub_100057A50() == v10 && v13 == v12)
  {

    return;
  }

  v15 = sub_1000275E8();

  if (v15)
  {

    return;
  }

  if (sub_100057A50() == v10 && v16 == v12)
  {

    goto LABEL_18;
  }

  v18 = sub_1000275E8();

  if (v18)
  {
LABEL_18:

    v19 = [v8 code];

    if (v19 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v19 <= 0x7FFFFFFF)
    {
      return;
    }

    __break(1u);
    return;
  }

  if (sub_100057A50() == v10 && v20 == v12)
  {
  }

  else
  {
    v22 = sub_1000275E8();

    if ((v22 & 1) == 0)
    {

      return;
    }
  }

  [v8 code];
}

uint64_t sub_1000275E8()
{

  return sub_100058230();
}

uint64_t sub_100027608(uint64_t a1, unint64_t a2)
{
  v38 = 46;
  v39 = 0xE100000000000000;
  v35 = &v38;
  v2 = sub_100027A74(5, 0, sub_1000288C0, v34, a1, a2);
  v3 = v2[2];
  if (!v3)
  {

    return &_swiftEmptyArrayStorage;
  }

  v37 = &_swiftEmptyArrayStorage;
  result = sub_100008BC4(0, v3, 0);
  v5 = 0;
  v6 = v37;
  while (v5 < v2[2])
  {

    result = sub_100057A90();
    v8 = v7;
    v9 = HIBYTE(v7) & 0xF;
    v10 = result & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {

      v30 = 0;
      goto LABEL_74;
    }

    if ((v8 & 0x1000000000000000) == 0)
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v38 = result;
        v39 = v8 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (!v9)
          {
            goto LABEL_84;
          }

          if (v9 != 1)
          {
            while (1)
            {
              sub_1000288F4();
              if (!v15 & v14)
              {
                break;
              }

              sub_1000288E0();
              if (!v15)
              {
                break;
              }

              v13 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              sub_100028904();
              if (v15)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (result == 45)
        {
          if (!v9)
          {
            goto LABEL_86;
          }

          if (v9 != 1)
          {
            while (1)
            {
              sub_1000288F4();
              if (!v15 & v14)
              {
                break;
              }

              sub_1000288E0();
              if (!v15)
              {
                break;
              }

              v13 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                break;
              }

              sub_100028904();
              if (v15)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v9)
        {
          while (1)
          {
            sub_1000288F4();
            if (!v15 & v14)
            {
              break;
            }

            sub_1000288E0();
            if (!v15)
            {
              break;
            }

            v13 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            sub_100028904();
            if (v15)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1000580A0();
        }

        v12 = *result;
        if (v12 == 43)
        {
          if (v10 < 1)
          {
            goto LABEL_87;
          }

          if (v10 != 1)
          {
            v13 = 0;
            if (!result)
            {
              goto LABEL_60;
            }

            while (1)
            {
              sub_1000288F4();
              if (!v15 & v14)
              {
                break;
              }

              sub_1000288E0();
              if (!v15)
              {
                break;
              }

              v13 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              sub_100028904();
              if (v15)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v12 == 45)
        {
          if (v10 < 1)
          {
            goto LABEL_85;
          }

          if (v10 != 1)
          {
            v13 = 0;
            if (result)
            {
              while (1)
              {
                sub_1000288F4();
                if (!v15 & v14)
                {
                  goto LABEL_69;
                }

                sub_1000288E0();
                if (!v15)
                {
                  goto LABEL_69;
                }

                v13 = v17 - v16;
                if (__OFSUB__(v17, v16))
                {
                  goto LABEL_69;
                }

                sub_100028904();
                if (v15)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_60:
            v18 = 0;
LABEL_70:
            v36 = v18;
            v29 = v18;
            goto LABEL_71;
          }
        }

        else
        {
          if (!v10)
          {
            goto LABEL_69;
          }

          v13 = 0;
          if (!result)
          {
            goto LABEL_60;
          }

          while (1)
          {
            v25 = *result - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_60;
            }
          }
        }
      }

LABEL_69:
      v13 = 0;
      v18 = 1;
      goto LABEL_70;
    }

    v36 = 0;
    v13 = sub_100027E80(result, v8, 10);
    v29 = v33;
LABEL_71:

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v13;
    }

LABEL_74:
    v37 = v6;
    v32 = v6[2];
    v31 = v6[3];
    if (v32 >= v31 >> 1)
    {
      result = sub_100008BC4((v31 > 1), v32 + 1, 1);
      v6 = v37;
    }

    ++v5;
    v6[2] = v32 + 1;
    v6[v32 + 4] = v30;
    if (v5 == v3)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_1000279C0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    v4 = *(a2 + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(result + 32 + 8 * v2);
    v6 = *(a2 + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(a2 + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100027A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100058230() & 1;
  }
}

void *sub_100027A74(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v6 = sub_100057BA0();
    v10 = v29;
    v11 = v30;
    v12 = v31;

    sub_10000899C();
    v15 = v32;
    v8 = *(v32 + 16);
    v33 = *(v32 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v33 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v37 = (v15 + 32 * v8);
      v37[4] = v6;
      v37[5] = v10;
      v37[6] = v11;
      v37[7] = v12;
      return v15;
    }

LABEL_41:
    sub_10000899C();
    v15 = v38;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v47 = &_swiftEmptyArrayStorage;
  v16 = 15;
  while (1)
  {
    v45 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v45;
        goto LABEL_30;
      }

      v17 = sub_100057B80();
      v11 = v18;
      v48[0] = v17;
      v48[1] = v18;
      v19 = v49(v48);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_100057AD0();
    }

    v22 = (v45 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v45 >> 14)
    {
      break;
    }

    v46 = sub_100057BA0();
    v41 = v24;
    v42 = v23;
    v40 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000899C();
      v47 = v27;
    }

    v12 = v47[2];
    v11 = v12 + 1;
    if (v12 >= v47[3] >> 1)
    {
      sub_10000899C();
      v47 = v28;
    }

    v47[2] = v11;
    v26 = &v47[4 * v12];
    v26[4] = v46;
    v26[5] = v42;
    v26[6] = v41;
    v26[7] = v40;
LABEL_20:
    v16 = sub_100057AD0();
    if ((v22 & 1) == 0 && v47[2] == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v47;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_100057BA0();
        v10 = v34;
        v11 = v35;
        v12 = v36;

        v15 = v47;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v33 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_10000899C();
      v15 = v39;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void *sub_100027E10(uint64_t a1, uint64_t a2)
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

  sub_100005890(&qword_10007EED0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_100027E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_100057B90();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100028408();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000580A0();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100028408()
{
  v0 = sub_100028474();
  v4 = sub_1000284A8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000284A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100057F30();
    if (!v9 || (v10 = v9, v11 = sub_100027E10(v9, 0), v12 = sub_100028608(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100057AA0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100057AA0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000580A0();
LABEL_4:

  return sub_100057AA0();
}

unint64_t sub_100028608(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_100028818(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100057B40();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000580A0();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_100028818(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_100057B20();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100028818(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100057B50();
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
    v5 = sub_100057B30();
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

void AudioStream.session.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*AudioStream.session.modify(void *a1))(id **a1, char a2)
{
  v3 = sub_10000B4FC(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_session;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10000B480;
}

id AudioStream.__deallocating_deinit()
{
  sub_100028B48();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioStream();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100028B48()
{
  v1 = OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_started;
  if (v0[OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_started] == 1)
  {
    v2 = v0;
    v3 = v0;
    v4 = sub_100057850();
    v5 = sub_100057D60();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v6 = 136315138;
      v7 = *&v3[OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_audioStream];
      v8 = [v7 description];
      v9 = sub_100057A50();
      v11 = v10;

      v12 = sub_10000D850(v9, v11, &v14);

      *(v6 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stopping audio stream %s", v6, 0xCu);
      sub_10000904C(v13);
      sub_10002A620();
      sub_10002A620();
    }

    [*&v3[OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_audioStream] stop];
    v2[v1] = 0;
  }
}

uint64_t type metadata accessor for AudioStream()
{
  result = qword_10007F720;
  if (!qword_10007F720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void AudioStream.stream(_:didStart:error:)(void *a1, char a2)
{
  v6 = v2;
  v7 = a1;
  sub_10002A754();
  oslog = sub_100057850();
  v8 = sub_100057D80();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v9 = 136316162;
    swift_getObjectType();
    v10 = sub_100058310();
    v12 = sub_10000D850(v10, v11, &v24);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10000D850(0xD000000000000019, 0x800000010005F0D0, &v24);
    *(v9 + 22) = 2080;
    v13 = v3;
    sub_100005890(&qword_10007F6B0);
    v14 = sub_100057A70();
    v16 = sub_10000D850(v14, v15, &v24);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2080;
    if (a2)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (a2)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_10000D850(v17, v18, &v24);

    *(v9 + 34) = v19;
    *(v9 + 42) = 2080;
    swift_errorRetain();
    sub_100005890(&unk_10007F6B8);
    v20 = sub_100057A70();
    v22 = sub_10000D850(v20, v21, &v24);

    *(v9 + 44) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Called %s.%s stream: [%s] didStart: [%s] error: [%s]", v9, 0x34u);
    swift_arrayDestroy();
    sub_10002A620();
    sub_10002A620();
  }

  else
  {
  }
}

void AudioStream.stream(_:didPause:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_logger;
  v8 = v3;
  sub_10002A754();
  v29 = sub_100057850();
  sub_100057D80();

  if (sub_10002A638(v9, v10, v11, v12, v13, v14, v15, v16, v29))
  {
    swift_slowAlloc();
    sub_10002A6D8();
    v31 = sub_10002A6F4();
    *v7 = 136315906;
    swift_getObjectType();
    v17 = sub_100058310();
    sub_10000D850(v17, v18, &v31);

    sub_10002A6C8();
    sub_10002A570();
    v21 = sub_10000D850(0xD000000000000019, v19, v20);
    sub_10002A5A0(v21);
    if (a3)
    {
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v7 + 30) = v22;
    *v4 = v23;
    sub_10002A580();
    _os_log_impl(v24, v25, v26, v27, v28, 0x26u);
    sub_10002A42C(v4);
    sub_10002A620();
    sub_10002A710();
    sub_10002A620();
    sub_10002A5C0();
  }
}

void AudioStream.stream(_:didResume:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_logger;
  v8 = v3;
  sub_10002A754();
  v29 = sub_100057850();
  sub_100057D80();

  if (sub_10002A638(v9, v10, v11, v12, v13, v14, v15, v16, v29))
  {
    swift_slowAlloc();
    sub_10002A6D8();
    v31 = sub_10002A6F4();
    *v7 = 136315906;
    swift_getObjectType();
    v17 = sub_100058310();
    sub_10000D850(v17, v18, &v31);

    sub_10002A6C8();
    sub_10002A570();
    v21 = sub_10000D850(0xD00000000000001ALL, v19, v20);
    sub_10002A5A0(v21);
    if (a3)
    {
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v7 + 30) = v22;
    *v4 = v23;
    sub_10002A580();
    _os_log_impl(v24, v25, v26, v27, v28, 0x26u);
    sub_10002A42C(v4);
    sub_10002A620();
    sub_10002A710();
    sub_10002A620();
    sub_10002A5C0();
  }
}

void AudioStream.stream(_:didStartSynchronizer:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC17ContinuityDisplay11AudioStream_logger;
  v8 = v3;
  sub_10002A754();
  v29 = sub_100057850();
  sub_100057D80();

  if (sub_10002A638(v9, v10, v11, v12, v13, v14, v15, v16, v29))
  {
    swift_slowAlloc();
    sub_10002A6D8();
    v31 = sub_10002A6F4();
    *v7 = 136315906;
    swift_getObjectType();
    v17 = sub_100058310();
    sub_10000D850(v17, v18, &v31);

    sub_10002A6C8();
    sub_10002A570();
    v21 = sub_10000D850(0xD000000000000025, v19, v20);
    sub_10002A5A0(v21);
    if (a3)
    {
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v7 + 30) = v22;
    *v4 = v23;
    sub_10002A580();
    _os_log_impl(v24, v25, v26, v27, v28, 0x26u);
    sub_10002A42C(v4);
    sub_10002A620();
    sub_10002A710();
    sub_10002A620();
    sub_10002A5C0();
  }
}

void sub_10002A37C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10002A740();
  v21 = v20;
  v22 = v18;
  v35 = v23;
  if (v19)
  {
    v24 = v19;
    v25 = v18;
    v26 = v35;
    v27 = v24;
    v28 = sub_100057730();
    v30 = v29;
  }

  else
  {
    v31 = v18;
    v32 = v35;
    v28 = 0;
    v30 = 0xF000000000000000;
  }

  v21();
  sub_1000190FC(v28, v30);

  sub_10002A72C();
}

uint64_t sub_10002A42C(uint64_t a1)
{
  v2 = sub_100005890(&qword_10007EFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A4AC()
{
  result = sub_100057880();
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

uint64_t sub_10002A5A0(uint64_t result)
{
  *(v1 + 14) = result;
  *(v1 + 22) = 1024;
  *(v1 + 24) = v2 & 1;
  *(v1 + 28) = 2112;
  return result;
}

uint64_t sub_10002A5C0()
{
}

uint64_t sub_10002A5DC()
{

  return swift_slowAlloc();
}

uint64_t sub_10002A5F8()
{

  return swift_arrayDestroy();
}

uint64_t sub_10002A620()
{
}

BOOL sub_10002A638(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog)
{

  return os_log_type_enabled(oslog, v9);
}

unint64_t sub_10002A650(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_10000D850(a1, a2, va);
}

uint64_t sub_10002A668(float a1)
{
  *v1 = a1;

  return swift_getObjectType();
}

uint64_t sub_10002A680()
{

  return sub_100057850();
}

uint64_t sub_10002A698()
{

  return swift_slowAlloc();
}

uint64_t sub_10002A6B0()
{
}

uint64_t sub_10002A6D8()
{

  return swift_slowAlloc();
}

uint64_t sub_10002A6F4()
{

  return swift_slowAlloc();
}

uint64_t sub_10002A710()
{

  return swift_arrayDestroy();
}

uint64_t sub_10002A754()
{

  return swift_errorRetain();
}

void sub_10002A76C(void (*a1)(void))
{
  a1();
  v1 = sub_100057660();

  v2 = [v1 localizedDescription];
  v3 = sub_100057A50();
  v5 = v4;

  v16 = v1;

  v6 = sub_100057850();
  v7 = sub_100057D70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136446979;
    *(v8 + 4) = sub_10000D850(0xD000000000000015, 0x800000010005F3A0, &v17);
    *(v8 + 12) = 2082;
    v9 = [v16 domain];
    sub_100057A50();

    v11 = sub_10002B0A8(v10);

    *(v8 + 14) = v11;
    *(v8 + 22) = 2048;
    v12 = [v16 code];

    *(v8 + 24) = v12;
    *(v8 + 32) = 2081;
    v13 = sub_10000D850(v3, v5, &v17);

    *(v8 + 34) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: %{public}s (%ld) %{private}s", v8, 0x2Au);
    swift_arrayDestroy();
    sub_10002A620();
    sub_10002A620();
  }

  else
  {
  }

  sub_10000DFB8();
}

void sub_10002A9AC(void (*a1)(void))
{
  a1();
  v1 = sub_100057660();

  v2 = [v1 localizedDescription];
  v3 = sub_100057A50();
  v5 = v4;

  sub_100058070(27);

  strcpy(v20, "=== Request ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  sub_10002B054();
  v21._countAndFlagsBits = sub_100057B70();
  sub_100057AF0(v21);

  v22._countAndFlagsBits = 0x656873696E694620;
  v22._object = 0xED00003D3D3D2064;
  sub_100057AF0(v22);
  v7 = v20[0];
  v6 = v20[1];
  v8 = v1;

  v9 = sub_100057850();
  v10 = sub_100057D70();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v11 = 136446979;
    v12 = sub_10000D850(v7, v6, v20);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2082;
    v13 = [v8 domain];
    v14 = sub_100057A50();
    v16 = v15;

    v17 = sub_10000D850(v14, v16, v20);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2048;
    v18 = [v8 code];

    *(v11 + 24) = v18;
    *(v11 + 32) = 2081;
    v19 = sub_10000D850(v3, v5, v20);

    *(v11 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: %{public}s (%ld) %{private}s", v11, 0x2Au);
    swift_arrayDestroy();
    sub_10002A620();
    sub_10002A620();
  }

  else
  {
  }
}

void sub_10002AC8C(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = sub_100057660();

  v5 = [v4 localizedDescription];
  v6 = sub_100057A50();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v31 = v4;

    v13 = sub_100057850();
    v14 = sub_100057D70();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_10000D850(v11, v12, &v32);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v31 domain];
      sub_100057A50();

      v19 = sub_10002B0A8(v18);

      *(v15 + 14) = v19;
      *(v15 + 22) = 2048;
      v20 = [v31 code];

      *(v15 + 24) = v20;
      *(v15 + 32) = 2081;
      v21 = sub_10000D850(v6, v8, &v32);

      *(v15 + 34) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();
      sub_10002A620();
      sub_10002A620();

      sub_10000DFB8();
      return;
    }
  }

  else
  {
    v31 = v4;

    v13 = sub_100057850();
    v22 = sub_100057D70();

    if (os_log_type_enabled(v13, v22))
    {
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v23 = 136446723;
      v24 = [v31 domain];
      sub_100057A50();

      v26 = sub_10002B0A8(v25);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      v27 = [v31 code];

      *(v23 + 14) = v27;
      *(v23 + 22) = 2081;
      v28 = sub_10000D850(v6, v8, &v32);

      *(v23 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v13, v22, "%{public}s (%ld) %{private}s", v23, 0x20u);
      goto LABEL_6;
    }
  }

  sub_10000DFB8();
}

unint64_t sub_10002B054()
{
  result = qword_10007F790;
  if (!qword_10007F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F790);
  }

  return result;
}