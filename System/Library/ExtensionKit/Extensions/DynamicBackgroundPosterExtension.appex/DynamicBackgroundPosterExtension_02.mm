uint64_t sub_10002FA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
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

uint64_t sub_10002FA7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10002FAF0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002FB04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_10002FB60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10002FBD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10002FC14(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, v7);

  return swift_unknownObjectRelease();
}

void *sub_10002FC7C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_10004D58C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_10003A4AC(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

void sub_10002FE4C(void *a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  swift_unknownObjectRetain();
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  swift_unknownObjectRelease();

  v62 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v63 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_10000C618(0xD00000000000001CLL, 0x8000000100055000, &v63);
    *(v8 + 12) = 2080;
    v9 = v5;
    v10 = [v9 description];
    v11 = v3;
    v12 = sub_10004D08C();
    v14 = v13;

    v15 = v12;
    v3 = v11;
    v16 = sub_10000C618(v15, v14, &v63);

    *(v8 + 14) = v16;
    *(v8 + 22) = 2080;
    swift_unknownObjectRetain();
    sub_10000CC1C(&qword_100070B60, &qword_1000517F0);
    v17 = sub_10004D0FC();
    v19 = sub_10000C618(v17, v18, &v63);

    *(v8 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "------ %s \n editor:%s environment:%s", v8, 0x20u);
    swift_arrayDestroy();
  }

  v20 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  sub_100010FE4([a2 deviceOrientation], 0.0);
  v21 = [a2 sourceContents];
  *&v63 = 0;
  v22 = [v21 loadUserInfoWithError:&v63];
  swift_unknownObjectRelease();
  v23 = v63;
  if (v22)
  {
    v24 = sub_10004D01C();
    v25 = v23;

    v35 = sub_100042188(v24);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_10003E214(v35, v36, v38, v40);
    v42 = sub_10004CEDC();
    v43 = sub_10004D39C();
    sub_100010F08(v35, v37, v39, v41);
    if (os_log_type_enabled(v42, v43))
    {
      v60 = v43;
      v61 = v3;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v63 = v45;
      *v44 = 136315138;
      v66._countAndFlagsBits = v35;
      v66._object = v37;
      v46 = sub_10003EA74(v66, v39, v41);
      v48 = sub_10000C618(v46, v47, &v63);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v60, "set initialEffectType: %s", v44, 0xCu);
      sub_10000CF40(v45);

      v3 = v61;
    }

    v49 = v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType;
    v50 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType);
    v51 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 8);
    v52 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 16);
    *v49 = v35;
    *(v49 + 8) = v37;
    *(v49 + 16) = v39;
    v53 = v3;
    v54 = *(v49 + 24);
    *(v49 + 24) = v41;
    sub_10003E214(v35, v37, v39, v41);
    v55 = v54;
    v3 = v53;
    sub_10003E080(v50, v51, v52, v55);
    v64 = &type metadata for EffectType;
    v65 = &off_100066D68;
    v56 = swift_allocObject();
    *&v63 = v56;
    *(v56 + 16) = v35;
    *(v56 + 24) = v37;
    *(v56 + 32) = v39;
    *(v56 + 40) = v41;
    v57 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CF40((v20 + v57));
    sub_10000CEC4(&v63, v20 + v57);
    swift_endAccess();
  }

  else
  {
    v26 = v63;
    sub_10004CC6C();

    swift_willThrow();
    v27 = sub_10004CEDC();
    v28 = sub_10004D39C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Reading userInfo failed", v29, 2u);
    }

    swift_errorRetain();
    v30 = sub_10004CEDC();
    v31 = sub_10004D39C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "%@", v32, 0xCu);
      sub_100024DC8(v33, &qword_1000703F0, &qword_100050B90);
    }

    else
    {
    }
  }

  v58 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) = v62;
  v59 = v62;
}

uint64_t sub_1000308B4(void *a1)
{
  v2 = v1;
  v4 = sub_10004CEDC();
  v5 = sub_10004D39C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000C618(0xD00000000000001ELL, 0x8000000100054F40, &v11);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000CF40(v7);
  }

  v8 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
  *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) = a1;
  v9 = a1;

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  return [qword_1000730A8 posterKitEditor] ^ 1;
}

uint64_t sub_100030A70(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectRetain_n();
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  p_attr = &stru_10006AFF8.attr;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&aBlock = v10;
    *v9 = 136315650;
    v60 = a2;
    swift_unknownObjectRetain();
    sub_10000CC1C(&qword_100070A48, &qword_100051750);
    v11 = sub_10004D0FC();
    v13 = sub_10000C618(v11, v12, &aBlock);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    v14 = [a2 isPreview];
    swift_unknownObjectRelease();
    *(v9 + 14) = v14;
    swift_unknownObjectRelease();
    *(v9 + 18) = 1024;
    v15 = [a2 isSnapshot];
    swift_unknownObjectRelease();
    *(v9 + 20) = v15;
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v6, v7, "didInitializeWith: %s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v9, 0x18u);
    sub_10000CF40(v10);

    p_attr = (&stru_10006AFF8 + 8);
  }

  else
  {

    swift_unknownObjectRelease_n();
  }

  v16 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer) = a1;
  v17 = a1;

  v18 = [a2 p_attr[198]];
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isPreview) = v18;
  v19 = [a2 isSnapshot];
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isSnapshotMode) = v19;
  v20 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  sub_100010FE4([a2 deviceOrientation], 0.0);
  v21 = [a2 contents];
  *&aBlock = 0;
  v22 = [v21 loadUserInfoWithError:&aBlock];
  swift_unknownObjectRelease();
  v23 = aBlock;
  if (v22)
  {
    v24 = sub_10004D01C();
    v25 = v23;

    v26 = sub_10004CEDC();
    v27 = sub_10004D39C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&aBlock = v29;
      *v28 = 136315138;
      v30 = sub_10004D02C();
      v32 = sub_10000C618(v30, v31, &aBlock);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s", v28, 0xCu);
      sub_10000CF40(v29);
    }

    v34 = sub_100042188(v24);
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v57 = &type metadata for EffectType;
    v58 = &off_100066D68;
    v41 = swift_allocObject();
    *&aBlock = v41;
    *(v41 + 16) = v34;
    *(v41 + 24) = v36;
    *(v41 + 32) = v38;
    *(v41 + 40) = v40;
    v42 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CF40((v20 + v42));
    sub_10000CEC4(&aBlock, v20 + v42);
    swift_endAccess();
  }

  else
  {
    v33 = aBlock;
    sub_10004CC6C();

    swift_willThrow();
  }

  v43 = [v17 backgroundView];
  v44 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v20 + v44, &aBlock);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v45 = v60;
  v46 = v61;
  v47 = v62;
  v48 = v63;
  sub_100039528(v43, v60, v61, v62, v63, v20);

  sub_100010F08(v45, v46, v47, v48);
  sub_10000CEDC(v20 + v44, &aBlock);
  if (swift_dynamicCast())
  {
    v49 = v63 == 3;
    sub_100010F08(v60, v61, v62, v63);
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_10003E1D4;
    *(v51 + 24) = v50;
    v58 = sub_10003E1EC;
    v59 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v56 = sub_10002FC14;
    v57 = &unk_100066B48;
    v52 = _Block_copy(&aBlock);

    [v17 updatePreferences:v52];
    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
LABEL_13:
    result = sub_10004D66C();
    __break(1u);
  }

  return result;
}

void sub_100031208(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void sub_10003159C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager];
  swift_getObjectType();
  v9 = [a2 deviceOrientation];
  v10 = 0.0;
  if (a3)
  {
    v11 = [a3 animationSettings];
    if (v11)
    {
      v12 = v11;
      [v11 duration];
      v10 = v13;
    }
  }

  sub_100010FE4(v9, v10);
  if ([a2 isSnapshot])
  {
    v14 = sub_100032974();
    if (v14)
    {
      if (*(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting))
      {
      }

      else
      {
        v53 = v14;
        v56 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting;
        v15 = a3;
        swift_unknownObjectRetain_n();
        v54 = v4;
        v16 = a1;
        v17 = sub_10004CEDC();
        v18 = sub_10004D39C();

        v52 = v18;
        log = v17;
        if (os_log_type_enabled(v17, v18))
        {
          v58 = v16;
          v19 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v64[0] = swift_slowAlloc();
          *v19 = 134219266;
          v20 = v54;
          v21 = *&v54[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];

          *(v19 + 4) = v21;
          *(v19 + 12) = 2112;
          *(v19 + 14) = v58;
          *v51 = v58;
          *(v19 + 22) = 2080;
          swift_unknownObjectRetain();
          v22 = v58;
          sub_10000CC1C(&qword_100070A48, &qword_100051750);
          v23 = sub_10004D0FC();
          v25 = sub_10000C618(v23, v24, v64);

          *(v19 + 24) = v25;
          *(v19 + 32) = 2080;
          v60 = a3;
          v26 = v15;
          sub_10000CC1C(&unk_100070A50, qword_100051758);
          v27 = sub_10004D0FC();
          v29 = sub_10000C618(v27, v28, v64);

          *(v19 + 34) = v29;
          *(v19 + 42) = 1024;
          LODWORD(v25) = [a2 isPreview];
          swift_unknownObjectRelease();
          *(v19 + 44) = v25;
          swift_unknownObjectRelease();
          *(v19 + 48) = 1024;
          LODWORD(v25) = [a2 isSnapshot];
          swift_unknownObjectRelease();
          *(v19 + 50) = v25;
          swift_unknownObjectRelease();
          _os_log_impl(&_mh_execute_header, log, v52, "#%ld %@ didUpdate env:%s transition: %s isPreview: %{BOOL}d isSnapshot: %{BOOL}d", v19, 0x36u);
          sub_100024DC8(v51, &qword_1000703F0, &qword_100050B90);

          swift_arrayDestroy();

          v16 = v58;
        }

        else
        {

          v20 = v54;
          swift_unknownObjectRelease_n();
        }

        v30 = v20;
        v31 = sub_10004CEDC();
        v32 = sub_10004D39C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = *(v30 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

          _os_log_impl(&_mh_execute_header, v31, v32, "#%ld taking assertion snapshot", v33, 0xCu);
        }

        else
        {

          v31 = v30;
        }

        v34 = swift_allocObject();
        v34[2].isa = v53;
        v35 = v53;
        sub_10002A5FC(sub_10003E128, v34);

        v36 = *(v35 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter);

        LOBYTE(v34) = sub_10001F534();

        if ((v34 & 1) != 0 && (*(v53 + v56) & 1) == 0)
        {
          *(v53 + v56) = 1;
          sub_10002D0B8();
        }

        v37 = sub_10004D05C();
        v38 = [v16 extendRenderingSessionForReason:v37];

        v39 = *(v35 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed);
        if (v39)
        {
          v40 = *(v35 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed + 8);

          v39(v41);
          sub_100020718(v39);
        }

        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v43 = swift_allocObject();
        *(v43 + 16) = v38;
        *(v43 + 24) = v42;
        v44 = v38;

        sub_10002D2A0(sub_10003E1BC, v43);
      }
    }
  }

  v45 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v8 + v45, v64);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    if (v63 == 3)
    {

      type metadata accessor for TranscriptBackgroundView(0);
      sub_100018394(a2, v64);
      if ((v65 & 1) == 0)
      {
        v57 = v64[1];
        v59 = v64[0];
        v46 = sub_100032974();
        if (v46)
        {
          v47 = v46;
          if ([*&v46[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously] && (v48 = *&v47[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor]) != 0)
          {
            swift_unknownObjectWeakInit();
            v49 = *(v48 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

            os_unfair_lock_lock(v49);
            v50 = *(v48 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
            sub_100017FA0(v50, v59, v57);

            os_unfair_lock_unlock(v49);

            swift_unknownObjectWeakDestroy();
          }

          else
          {
          }
        }
      }
    }

    else
    {
      sub_100010F08(v60, v61, v62, v63);
    }
  }

  else
  {
    sub_10004D66C();
    __break(1u);
  }
}

uint64_t sub_100031D54(void *a1)
{
  v2 = sub_10004CEFC();
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
    (*(v3 + 16))(v6, result + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger, v2);

    v9 = sub_10004CEDC();
    v10 = sub_10004D39C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = -1;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = *&Strong[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];
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

uint64_t sub_100032100(uint64_t a1)
{
  v37 = a1;
  v2 = sub_10004CEFC();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  v4 = __chkstk_darwin(v2);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_10004CECC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID] = 0;
  v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isPreview] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_lastProgressValue] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor] = 0;
  v14 = &v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType];
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *v14 = 0;
  v14[24] = -1;
  v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isSnapshotMode] = 0;
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_glitterParametersObservation] = &_swiftEmptyArrayStorage;
  v15 = sub_100028178(0);
  sub_10004D4BC();
  v16 = *(v15 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
  swift_beginAccess();
  (*(v9 + 16))(v12, v15 + v17, v8);
  v18 = v16;
  sub_10004CEAC();

  result = (*(v9 + 8))(v12, v8);
  v20 = qword_100073130 + 1;
  if (__OFADD__(qword_100073130, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  ++qword_100073130;
  *&v1[v13] = v20;
  v21 = v35;
  v22 = v36;
  v23 = *(v35 + 16);
  v24 = v37;
  v23(&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger], v37, v36);
  v23(v7, v24, v22);
  type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v25 = swift_allocObject();
  *&v1[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager] = sub_10003930C(v7, 49, 0xE100000000000000, 0, 0, v25);
  v26 = type metadata accessor for DynamicTranscriptBackgroundPosterController();
  v39.receiver = v1;
  v39.super_class = v26;
  v27 = objc_msgSendSuper2(&v39, "init");
  *(*&v27[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_delegate + 8) = &off_1000669B8;
  result = swift_unknownObjectWeakAssign();
  if (__OFADD__(qword_100073128, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  ++qword_100073128;
  v23(v38, &v27[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger], v22);
  v28 = v27;
  v29 = sub_10004CEDC();
  v30 = sub_10004D36C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v21;
    v32 = swift_slowAlloc();
    *v32 = 134218240;
    *(v32 + 4) = *&v28[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];

    *(v32 + 12) = 2048;
    *(v32 + 14) = qword_100073128;
    _os_log_impl(&_mh_execute_header, v29, v30, "#%ld controllerAliveCount %ld", v32, 0x16u);
    v21 = v31;
  }

  else
  {
  }

  v33 = *(v21 + 8);
  v33(v24, v22);
  v33(v38, v22);
  return v28;
}

id sub_100032590()
{
  v1 = sub_10004CEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_glitterParametersObservation];
  *&v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_glitterParametersObservation] = &_swiftEmptyArrayStorage;

  if (__OFSUB__(qword_100073128, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_100073128;
    (*(v2 + 16))(v5, &v0[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_logger], v1);
    v8 = v0;
    v9 = sub_10004CEDC();
    v10 = sub_10004D36C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 134218498;
      *(v11 + 4) = *&v8[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID];

      *(v11 + 12) = 2080;
      v13 = (*&v8[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager] + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
      swift_beginAccess();
      v14 = sub_10000CF8C(v13, v13[3]);
      v15 = sub_10003EA74(*v14, v14[2], *(v14 + 24));
      v17 = sub_10000C618(v15, v16, &v20);

      *(v11 + 14) = v17;
      *(v11 + 22) = 2048;
      *(v11 + 24) = qword_100073128;
      _os_log_impl(&_mh_execute_header, v9, v10, "#%ld deinit %s deinit controllerAliveCount %ld", v11, 0x20u);
      sub_10000CF40(v12);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    v18 = type metadata accessor for DynamicTranscriptBackgroundPosterController();
    v21.receiver = v8;
    v21.super_class = v18;
    return objc_msgSendSuper2(&v21, "dealloc");
  }

  return result;
}

uint64_t type metadata accessor for DynamicTranscriptBackgroundPosterController()
{
  result = qword_1000709F0;
  if (!qword_1000709F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100032974()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v2 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_10003310C(0xD000000000000011, 0x80000001000535A0);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v6 + 16);

      return v7;
    }
  }

  return 0;
}

id sub_100032A38()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000C618(0xD000000000000018, 0x8000000100053580, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  return sub_100011884();
}

uint64_t sub_100032CEC()
{
  result = sub_10004CEFC();
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

uint64_t sub_100032DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10003E9EC(a3, v27 - v11, &qword_10006EA80, &qword_100050680);
  v13 = sub_10004D2BC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100024DC8(v12, &qword_10006EA80, &qword_100050680);
  }

  else
  {
    sub_10004D2AC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10004D29C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10004D11C() + 32;
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

      sub_100024DC8(a3, &qword_10006EA80, &qword_100050680);

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

  sub_100024DC8(a3, &qword_10006EA80, &qword_100050680);
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

unint64_t sub_1000330C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004D5CC(*(v2 + 40));

  return sub_100033350(a1, v4);
}

unint64_t sub_10003310C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10004D7BC();
  sub_10004D14C();
  v6 = sub_10004D7DC();

  return sub_100033418(a1, a2, v6);
}

unint64_t sub_100033184(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10004D7BC();
  type metadata accessor for CFString(0);
  sub_10003E038(&unk_100070B80, type metadata accessor for CFString);
  sub_10004CE5C();
  v4 = sub_10004D7DC();

  return sub_1000334D0(a1, v4);
}

unint64_t sub_100033238(float *a1)
{
  v3 = *(v1 + 40);
  sub_10004D7BC();
  sub_100042698();
  sub_10004D14C();

  v4 = sub_10004D7DC();

  return sub_1000335DC(a1, v4);
}

unint64_t sub_1000332C0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10004D08C();
  sub_10004D7BC();
  sub_10004D14C();
  v4 = sub_10004D7DC();

  return sub_10003374C(a1, v4);
}

unint64_t sub_100033350(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10003E094(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_10004D5DC();
      sub_10000CFD0(v8);
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

unint64_t sub_100033418(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10004D74C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000334D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10003E038(&unk_100070B80, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10004CE4C();

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

unint64_t sub_1000335DC(float *a1, uint64_t a2)
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
      if (!v17 && (sub_10004D74C() & 1) == 0)
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
        if (!v19 && (sub_10004D74C() & 1) == 0)
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

unint64_t sub_10003374C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10004D08C();
      v9 = v8;
      if (v7 == sub_10004D08C() && v9 == v10)
      {
        break;
      }

      v12 = sub_10004D74C();

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

uint64_t sub_100033850(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CC1C(&unk_100070A20, &qword_100051738);
  v36 = a2;
  result = sub_10004D69C();
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
        sub_100010F88(v25, v37);
      }

      else
      {
        sub_10000C7F0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10004D7BC();
      sub_10004D14C();
      result = sub_10004D7DC();
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
      result = sub_100010F88(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_100033B08(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CC1C(&qword_100070B68, &qword_1000517F8);
  v50 = a2;
  result = sub_10004D69C();
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
        sub_1000131F8(v56, v58);
        v55 = v37;
      }

      v38 = *(v8 + 40);
      sub_10004D7BC();
      v58[0] = 0;
      v58[1] = 0xE000000000000000;
      v59._countAndFlagsBits = v27;
      v59._object = v28;
      sub_10004D16C(v59);
      v60._countAndFlagsBits = 45;
      v60._object = 0xE100000000000000;
      sub_10004D16C(v60);
      v61._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v61);

      v62._countAndFlagsBits = 45;
      v62._object = 0xE100000000000000;
      sub_10004D16C(v62);
      v63._countAndFlagsBits = sub_10004D73C();
      sub_10004D16C(v63);

      v64._countAndFlagsBits = 45;
      v64._object = 0xE100000000000000;
      sub_10004D16C(v64);
      sub_10004D2EC();
      v65._countAndFlagsBits = 45;
      v65._object = 0xE100000000000000;
      sub_10004D16C(v65);
      sub_10004D2EC();
      sub_10004D14C();

      result = sub_10004D7DC();
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

uint64_t sub_100033F60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CC1C(&qword_100070A08, &qword_100051720);
  v38 = a2;
  result = sub_10004D69C();
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
      sub_10004D7BC();
      sub_10004D14C();
      result = sub_10004D7DC();
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

uint64_t sub_100034208(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CC1C(&qword_100070A00, &qword_100051718);
  v39 = a2;
  result = sub_10004D69C();
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
      sub_10004D7BC();
      sub_10004D14C();
      result = sub_10004D7DC();
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

uint64_t sub_1000344AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
  result = sub_10004D69C();
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
        sub_100010F88((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10003E094(v24, &v37);
        sub_10000C7F0(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_10004D5CC(*(v8 + 40));
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
      result = sub_100010F88(v36, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_100034764(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003310C(a2, a3);
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
      sub_100034F58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100033850(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10003310C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10004D75C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000CF40(v23);

    return sub_100010F88(a1, v23);
  }

  else
  {
    sub_100034E70(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1000348B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100033238(a2);
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
      sub_100033B08(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_100033238(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_10004D75C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1000350FC();
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
      return sub_1000131F8(a2, &v30);
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

uint64_t sub_100034A30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003310C(a2, a3);
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
      sub_100033F60(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10003310C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10004D75C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1000352A0();
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

uint64_t sub_100034BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10003310C(a2, a3);
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
      sub_100034208(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10003310C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_10004D75C();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100035410();
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

_OWORD *sub_100034D24(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000330C8(a2);
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
      sub_10003557C();
      goto LABEL_7;
    }

    sub_1000344AC(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1000330C8(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10003E094(a2, v22);
      return sub_100034EDC(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_10004D75C();
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
  sub_10000CF40(v17);

  return sub_100010F88(a1, v17);
}

_OWORD *sub_100034E70(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100010F88(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_100034EDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100010F88(a3, (a4[7] + 32 * a1));
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

void *sub_100034F58()
{
  v1 = v0;
  sub_10000CC1C(&unk_100070A20, &qword_100051738);
  v2 = *v0;
  v3 = sub_10004D68C();
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
        sub_10000C7F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010F88(v25, (*(v4 + 56) + v22));
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

void *sub_1000350FC()
{
  v1 = v0;
  sub_10000CC1C(&qword_100070B68, &qword_1000517F8);
  v2 = *v0;
  v3 = sub_10004D68C();
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
        sub_1000131F8(v24, &v23);
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

void *sub_1000352A0()
{
  v1 = v0;
  sub_10000CC1C(&qword_100070A08, &qword_100051720);
  v2 = *v0;
  v3 = sub_10004D68C();
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

id sub_100035410()
{
  v1 = v0;
  sub_10000CC1C(&qword_100070A00, &qword_100051718);
  v2 = *v0;
  v3 = sub_10004D68C();
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

void *sub_10003557C()
{
  v1 = v0;
  sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
  v2 = *v0;
  v3 = sub_10004D68C();
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
        sub_10003E094(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000C7F0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100010F88(v22, (*(v4 + 56) + v17));
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

uint64_t sub_100035720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v24 = &type metadata for EffectType;
  v25 = &off_100066D68;
  v14 = swift_allocObject();
  *&v23 = v14;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  v21 = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v22 = &off_100066D78;
  *&v20 = a6;
  *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  *(a7 + v15) = sub_10003A008(&_swiftEmptyArrayStorage);
  v16 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
  *(a7 + v16) = sub_10003A10C(&_swiftEmptyArrayStorage);
  *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation) = 0;
  v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;
  v18 = sub_10004CEFC();
  (*(*(v18 - 8) + 32))(a7 + v17, a1, v18);
  sub_10000CEC4(&v23, a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
  sub_10000CEC4(&v20, a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_factory);
  return a7;
}

double sub_1000358A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v43[3] = &type metadata for EffectType;
  v43[4] = &off_100066D68;
  v12 = swift_allocObject();
  v43[0] = v12;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  sub_10000CEDC(v43, &v33);
  sub_10003E214(a1, a2, a3, a4);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;
    v15 = v41;
    v16 = v42;
    if (v42 > 1u)
    {
      if (v42 == 2)
      {
        *(&v32 + 1) = 0xE600000000000000;
        v17 = 0x61726F727541;
      }

      else
      {
        *(&v32 + 1) = 0xE700000000000000;
        v17 = 0x72657474696C47;
      }
    }

    else if (v42)
    {
      *(&v32 + 1) = 0xE600000000000000;
      v17 = 0x7364756F6C63;
    }

    else
    {
      *(&v32 + 1) = 0xE500000000000000;
      v17 = 0x6E6165634FLL;
    }

    *&v32 = v17;
    v18 = sub_10003F828(v40, v41, v42);
    v30 = v19;
    v31 = v18;
    *&v33 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);
    *&v44 = sub_10004D73C();
    *(&v44 + 1) = v20;
    v51._countAndFlagsBits = 95;
    v51._object = 0xE100000000000000;
    sub_10004D16C(v51);
    v52._countAndFlagsBits = countAndFlagsBits;
    v52._object = object;
    v53._countAndFlagsBits = sub_10003EA74(v52, v15, v16);
    sub_10004D16C(v53);

    v21 = v44;
    v28 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isPreview);
    v29 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_isSnapshotMode);
    v22 = *(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
    v23 = dword_100051810[v16];
    sub_100010F08(countAndFlagsBits, object, v15, v16);
    LOBYTE(v40._countAndFlagsBits) = 1;
    v33 = v32;
    *&v34 = v31;
    *(&v34 + 1) = v30;
    v35 = v21;
    *&v36 = 0;
    BYTE8(v36) = 1;
    *&v37 = 0;
    BYTE8(v37) = 0;
    BYTE9(v37) = v16 == 3;
    v38 = vdupq_n_s64(0x1EuLL);
    v39[0] = v29;
    v39[1] = v28;
    v39[2] = v22 != 0;
    *&v39[4] = v23;
    *&v39[8] = 0;
    *&v39[16] = 0;
    *&v39[22] = 0;
    nullsub_1(&v33);
    v48 = v37;
    v49 = v38;
    v50[0] = *v39;
    *(v50 + 14) = *&v39[14];
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
  }

  else
  {
    sub_10003E9D0(&v44);
  }

  sub_10000CF40(v43);
  v24 = v49;
  a6[4] = v48;
  a6[5] = v24;
  a6[6] = v50[0];
  *(a6 + 110) = *(v50 + 14);
  v25 = v45;
  *a6 = v44;
  a6[1] = v25;
  result = *&v46;
  v27 = v47;
  a6[2] = v46;
  a6[3] = v27;
  return result;
}

id sub_100035BC4(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5)
{
  v26[3] = &type metadata for EffectType;
  v26[4] = &off_100066D68;
  v10 = swift_allocObject();
  v26[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  sub_10003E214(a1, a2, a3, a4);
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 posterKitEditor])
  {
    v11 = sub_10000CF8C(v26, &type metadata for EffectType);
    v12 = sub_10003EA74(*v11, v11[2], *(v11 + 24));
    v14 = v13;
    v15 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v16 = *(a5 + v15);
    if (!*(v16 + 16) || (, v17 = sub_10003310C(v12, v14), v19 = v18, , (v19 & 1) == 0))
    {

      v24 = 0;
      goto LABEL_10;
    }

    v20 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v21 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v22 = *(a5 + v21);

    v20 = sub_10002FC7C(v23);
  }

  v24 = v20;

LABEL_10:
  sub_10000CF40(v26);
  return v24;
}

BOOL sub_100035D90(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5)
{
  v31 = &type metadata for EffectType;
  v32 = &off_100066D68;
  v10 = swift_allocObject();
  v30[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = (a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v14 = sub_10000CF8C(v13, v13[3]);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = *(v14 + 24);
    sub_10003E214(a1, a2, a3, a4);
    v33._countAndFlagsBits = v15;
    v33._object = v16;
    v19 = sub_10003EA74(v33, v17, v18);
    v21 = v20;
    v22 = sub_10000CF8C(v30, v31);
    if (v19 == sub_10003EA74(*v22, v22[2], *(v22 + 24)) && v21 == v23)
    {

      goto LABEL_11;
    }

    v25 = sub_10004D74C();

    if (v25)
    {

LABEL_11:
      v26 = 1;
      goto LABEL_12;
    }

    if (qword_10006E0A8 != -1)
    {
      swift_once();
    }

    if (([qword_1000730A8 posterKitEditor] & 1) == 0)
    {
      v28 = sub_10000CF8C(v13, v13[3]);
      v29 = sub_10000CF8C(v30, v31);
      v26 = sub_10003A4FC(*v28, v28[1], v28[2], *(v28 + 24), *v29, v29[1], v29[2], *(v29 + 24));

      goto LABEL_12;
    }
  }

  else
  {
    sub_10003E214(a1, a2, a3, a4);
  }

  v26 = 0;
LABEL_12:
  sub_10000CF40(v30);
  return v26;
}

uint64_t sub_100035FE8(NSString a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, char a6, uint64_t a7, double a8)
{
  LOBYTE(v10) = a6;
  v53[3] = &type metadata for EffectType;
  v53[4] = &off_100066D68;
  v16 = swift_allocObject();
  v53[0] = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  sub_10000CEDC(v53, v52);
  sub_10003E214(a2, a3, a4, a5);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (!swift_dynamicCast())
  {
    return sub_10000CF40(v53);
  }

  v17 = v48;
  v18 = objc_opt_self();
  [v18 begin];
  if (v51 <= 1u)
  {
    if (v51)
    {
      sub_10001998C(a1, v48, v49, v50, 1, v10 & 1);
      goto LABEL_39;
    }

    v23 = [a1 rootNode];
    a1 = sub_10004D05C();
    v10 = [v23 childNodeWithName:a1];

    if (!v10)
    {
      goto LABEL_39;
    }

    if (!__OFSUB__(sub_10003F3A8(v48, v49, v50, 0), 1))
    {
      v24 = [v10 parameters];
      if (v24)
      {
        v25 = v24;
        isa = sub_10004D32C().super.super.isa;
        v27 = sub_10004D05C();
        [v25 setObject:isa forKeyedSubscript:v27];
        swift_unknownObjectRelease();
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v51 == 2)
  {
    sub_100013F84(a1, v48, v49, v50, 2);
    goto LABEL_39;
  }

  if (v51 != 3)
  {
LABEL_39:
    [v18 commit];
    [v18 flush];
    sub_100010F08(v17, v49, v50, v51);
    return sub_10000CF40(v53);
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v19 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
  v47 = v48;
  if ([qword_1000730A8 enableFantasy])
  {
    v46 = sub_10003F3A8(v48, v49, v50, 3);
    v20 = sub_10004A040(v48, v49, v50, 3u);
    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

LABEL_42:
    v21 = sub_10004D67C();
LABEL_12:

    v17 = v47;
    v22 = v46 == v21;
    v19 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    if (v22)
    {
      sub_10001CAE8(1, a1, v10 & 1);
      goto LABEL_39;
    }
  }

  v28 = *(a7 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v29 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  v44 = v29;
  v45 = v28;
  sub_10000CEDC(v28 + v29, v52);
  if (!swift_dynamicCast())
  {
    goto LABEL_45;
  }

  v30 = v50;
  v31 = v51;
  if (v51 == 3)
  {
    if ([v19[21] enableFantasy])
    {
      v43 = sub_10003F3A8(v48, v49, v50, 3);
      v32 = sub_10004A040(v48, v49, v50, 3u);
      if (v32 >> 62)
      {
        v42 = sub_10004D67C();
      }

      else
      {
        v42 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_100010F08(v48, v49, v50, 3u);

      v17 = v47;
      if (v43 == v42)
      {
LABEL_35:
        v36 = sub_10001A820(v17, v49, v50, 3);
        v37 = sub_10001A9EC(v17, v49, v50, 3);
        sub_10001CD0C(a1);
        sub_10001CAE8(0, a1, v10 & 1);

LABEL_38:
        goto LABEL_39;
      }

      goto LABEL_30;
    }

    v31 = 3;
    v30 = v50;
  }

  sub_100010F08(v48, v49, v30, v31);
  v17 = v47;
LABEL_30:
  if ([v19[21] enableFantasy])
  {
    v33 = sub_10003F3A8(v17, v49, v50, 3);
    v34 = sub_10004A040(v17, v49, v50, 3u);
    if (v34 >> 62)
    {
      v35 = sub_10004D67C();
      v17 = v47;
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v33 == v35;
    v19 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    if (v22)
    {
      goto LABEL_35;
    }
  }

  if ([v19[21] posterKitEditor])
  {
    goto LABEL_35;
  }

  sub_10000CEDC(v45 + v44, v52);
  if (swift_dynamicCast())
  {
    v38 = sub_10001A820(v48, v49, v50, v51);
    sub_100010F08(v48, v49, v50, v51);
    v39 = sub_10001A820(v47, v49, v50, 3);
    v40 = sub_10004B3BC(a8);
    v37 = sub_10001ABDC();
    sub_10001CD0C(a1);

    v17 = v47;
    goto LABEL_38;
  }

LABEL_45:
  result = sub_10004D66C();
  __break(1u);
  return result;
}

void sub_1000366C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v166 = a5;
  v151 = a4;
  v169 = a2;
  v171 = a1;
  v8 = sub_10000CC1C(&qword_10006EA80, &qword_100050680);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v156 = &v141 - v10;
  v11 = sub_10004CF1C();
  v153 = *(v11 - 8);
  v154 = v11;
  v12 = *(v153 + 64);
  __chkstk_darwin(v11);
  v152 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10004CD3C();
  v155 = *(v158 - 8);
  v14 = *(v155 + 64);
  v15 = __chkstk_darwin(v158);
  v150 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v16;
  __chkstk_darwin(v15);
  v157 = &v141 - v17;
  v170 = sub_10004CEFC();
  v173 = *(v170 - 8);
  v18 = *(v173 + 64);
  v19 = __chkstk_darwin(v170);
  v165 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v164 = &v141 - v21;
  v168 = sub_10004CECC();
  v172 = *(v168 - 8);
  v22 = *(v172 + 64);
  __chkstk_darwin(v168);
  v167 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004D3CC();
  v162 = *(v24 - 8);
  v163 = v24;
  v25 = *(v162 + 64);
  __chkstk_darwin(v24);
  v161 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10004D4CC();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v160 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10004CF6C();
  v148 = *(v30 - 8);
  v149 = v30;
  v31 = *(v148 + 64);
  __chkstk_darwin(v30);
  v33 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179[3] = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v179[4] = &off_100066D78;
  v179[0] = a3;
  v34 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView;
  *&a6[v34] = [objc_allocWithZone(VFXView) init];
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_maskManager] = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lifecycleManager] = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_effect] = 0;
  v35 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingEventsHolder;
  type metadata accessor for WorldLoadingReceivedEventsHolder();
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *&a6[v35] = v36;
  *(v36 + 16) = v37;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_failedSnapshot] = 1;
  *(v36 + 24) = 0;
  v38 = &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lastSnapshotTime];
  v38[4] = 1;
  *v38 = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = 0;
  *(v36 + 32) = &_swiftEmptyArrayStorage;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_keyboardIsUp] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isScrolling] = 0;
  v159 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue;
  sub_10000D024(0, &unk_100070360, OS_dispatch_queue_serial_ptr);
  sub_10004CF4C();
  *&v176 = &_swiftEmptyArrayStorage;
  sub_10003E038(&unk_100070AC0, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10000CC1C(&unk_100070370, "dd");
  sub_1000249FC(&qword_100070AD0, &unk_100070370, "dd");
  sub_10004D57C();
  (*(v162 + 104))(v161, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v163);
  v146 = v33;
  *&a6[v159] = sub_10004D4DC();
  v39 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock;
  v40 = swift_slowAlloc();
  v163 = v39;
  *&a6[v39] = v40;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_inView] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isWorldReady] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated] = 0;
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_frameCounter] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented] = 0;
  a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
  v41 = &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotPerformed];
  *v41 = 0;
  v41[1] = 0;
  if (qword_10006E0B0 != -1)
  {
    swift_once();
  }

  v42 = qword_1000730B0;
  sub_10004D4BC();
  v159 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog;
  v43 = *(v42 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostLog);
  v44 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension8Signpost_signpostID;
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
  sub_10004CEAC();

  v52 = *(v45 + 8);
  v51 = v45 + 8;
  v142 = v52;
  v52(v49, v48);
  v53 = v173 + 16;
  v54 = *(v173 + 16);
  v56 = v170;
  v55 = v171;
  (v54)(&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger], v171, v170);
  v57 = &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
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
  sub_10000CEDC(v179, &a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_factory]);
  v62 = v164;
  v161 = v54;
  v162 = v53;
  (v54)(v164, v55, v56);
  v63 = type metadata accessor for SnapshotWriter();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  sub_10000CDAC(v58, &v176);
  sub_10000CDAC(v58, &v176);
  *&a6[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter] = sub_10001F348(v58, v62);
  **&a6[v163] = 0;
  v66 = v173;
  if (__OFADD__(qword_1000730B8, 1))
  {
    __break(1u);
  }

  else
  {
    v172 = v51;
    ++qword_1000730B8;
    if (qword_10006E0A0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  sub_100021DB4();
  v67 = *(v57 + 13);
  v68 = *(v57 + 14);
  v69 = type metadata accessor for TranscriptBackgroundView(0);
  v175.receiver = a6;
  v175.super_class = v69;
  v70 = objc_msgSendSuper2(&v175, "initWithFrame:", 0.0, 0.0, v67, v68);
  [v70 setAlpha:0.0];
  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000CDAC(v58, &v176);
  v71 = v55;
  v72 = sub_10004CEDC();
  v73 = sub_10004D39C();
  sub_10000CE08(v58);
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

    v78 = sub_10000C618(v77, v76, &v176);

    *(v75 + 4) = v78;
    *(v75 + 12) = 2080;
    *(v75 + 14) = sub_10000C618(0xD00000000000002FLL, 0x8000000100054F10, &v176);
    *(v75 + 22) = 2080;
    v79 = v74;
    v80 = v58;
    v81 = *v58;
    v82 = *(v58 + 8);

    v83 = sub_10000C618(v81, v82, &v176);
    v58 = v80;
    v74 = v79;

    *(v75 + 24) = v83;
    *(v75 + 32) = 2080;

    v84 = v77;
    v56 = v170;
    v85 = sub_10000C618(v84, v76, &v176);
    v70 = v164;
    v71 = v171;

    *(v75 + 34) = v85;
    *(v75 + 42) = 2048;
    *(v75 + 44) = qword_1000730B8;
    _os_log_impl(&_mh_execute_header, v72, v73, "#%s %s %s %s live count %ld", v75, 0x34u);
    swift_arrayDestroy();
  }

  v86 = v165;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  if ([qword_1000730A8 nullMode])
  {
    (*(v74 + 8))(v71, v56);

    sub_10000CE08(v58);
LABEL_23:
    sub_10000CF40(v179);
    return;
  }

  v87 = *(v58 + 64);
  v180[0] = *(v58 + 48);
  v180[1] = v87;
  v180[2] = *(v58 + 80);
  sub_10002AF24(v180);
  v88 = *&v70[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];

  v89 = sub_10001F534();

  if (!v89)
  {
    (v161)(v86, &v70[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_logger], v56);
    v123 = v70;
    v124 = sub_10004CEDC();
    v125 = sub_10004D39C();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v164 = v70;
      v127 = v126;
      v128 = swift_slowAlloc();
      *&v176 = v128;
      *v127 = 136315138;
      v129 = &v123[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration];
      v130 = v71;
      v131 = v74;
      v132 = *&v123[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
      v133 = *(v129 + 5);

      v134 = sub_10000C618(v132, v133, &v176);
      v74 = v131;
      v71 = v130;

      *(v127 + 4) = v134;
      _os_log_impl(&_mh_execute_header, v124, v125, "#%s No need to go live", v127, 0xCu);
      sub_10000CF40(v128);

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
  v93 = sub_10004D05C();
  v94 = sub_10004D05C();
  v95 = [v92 URLForResource:v93 withExtension:v94];

  if (v95)
  {
    v96 = v157;
    sub_10004CCFC();

    sub_10004D4AC();
    v97 = *&v160[v159];
    v99 = v167;
    v98 = v168;
    v143(v167, &v160[v145], v168);
    v100 = v97;
    sub_10004CEAC();

    v142(v99, v98);
    v102 = *&v70[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 32];
    v101 = *&v70[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_configuration + 40];
    v172 = *&v70[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_loadingQueue];
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
    *&v178[0] = sub_10003E734;
    *(&v178[0] + 1) = v110;
    *&v176 = _NSConcreteStackBlock;
    *(&v176 + 1) = 1107296256;
    *&v177 = sub_10002FBD0;
    *(&v177 + 1) = &unk_100066C60;
    v113 = _Block_copy(&v176);

    v114 = v146;
    sub_10004CF3C();
    v174 = &_swiftEmptyArrayStorage;
    sub_10003E038(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
    sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
    v115 = v152;
    v116 = v154;
    sub_10004D57C();
    sub_10004D3EC();
    _Block_release(v113);
    v117 = v116;
    v118 = v164;
    (*(v153 + 8))(v115, v117);
    (*(v148 + 8))(v114, v149);

    v119 = qword_1000730A8;
    *&v176 = qword_1000730A8;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v120 = v119;
    v121 = sub_10004CC7C();

    (*(v104 + 8))(v157, v158);

    v122 = *&v118[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation];
    *&v118[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_metalCaptureObservation] = v121;

    v56 = v170;
    v71 = v171;
    v58 = v169;
    v74 = v173;
LABEL_17:
    if (qword_10006E0B8 != -1)
    {
      swift_once();
    }

    v135 = qword_100073150;
    sub_1000427C8(&v176);
    if (*(v135 + 16) == 1)
    {
      v136 = sub_10004D2BC();
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

      sub_100032DC8(0, 0, v137, &unk_100051770, v139);
    }

    else
    {
      sub_100013254(&v176);
    }

    sub_10000CE08(v58);
    (*(v74 + 8))(v71, v56);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_100037A34(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5)
{
  v42 = &type metadata for EffectType;
  v43 = &off_100066D68;
  v10 = swift_allocObject();
  v41[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v12 = *(a5 + v11);
  if (*(v12 + 16))
  {
    sub_10003E214(a1, a2, a3, a4);

    v13 = sub_10003310C(0xD000000000000010, 0x80000001000535C0);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      swift_beginAccess();
      v16 = sub_10000CF8C((v15 + 24), *(v15 + 48));
      v17 = sub_10003EA74(*v16, v16[2], *(v16 + 24));
      v19 = v18;
      v20 = sub_10000CF8C(v41, v42);
      if (v17 == sub_10003EA74(*v20, v20[2], *(v20 + 24)) && v19 == v21)
      {
      }

      else
      {
        v23 = sub_10004D74C();

        if ((v23 & 1) == 0)
        {
LABEL_21:

          return sub_10000CF40(v41);
        }
      }

      v24 = *(a5 + v11);
      if (*(v24 + 16))
      {
        v25 = *(a5 + v11);

        v26 = sub_10003310C(0xD000000000000011, 0x80000001000535A0);
        if (v27)
        {
          v28 = *(*(v24 + 56) + 8 * v26);

          v29 = sub_10004CEDC();
          v30 = sub_10004D39C();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "swap current and target", v31, 2u);
          }

          swift_beginAccess();

          v32 = *(a5 + v11);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = *(a5 + v11);
          *(a5 + v11) = 0x8000000000000000;
          sub_100034A30(v15, 0xD000000000000011, 0x80000001000535A0, isUniquelyReferenced_nonNull_native);
          *(a5 + v11) = v39;

          v34 = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(a5 + v11);
          *(a5 + v11) = 0x8000000000000000;
          sub_100034A30(v28, 0xD000000000000010, 0x80000001000535C0, v34);
          *(a5 + v11) = v40;
          swift_endAccess();
          v35 = [*(v15 + 16) superview];
          if (v35)
          {
            v36 = v35;
            v37 = *(v15 + 16);
            [v36 bringSubviewToFront:v37];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    sub_10003E214(a1, a2, a3, a4);
  }

  return sub_10000CF40(v41);
}

uint64_t sub_100037E00(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, uint64_t a7, double a8)
{
  v102 = &type metadata for EffectType;
  v103 = &off_100066D68;
  v15 = swift_allocObject();
  v101[0] = v15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  v16 = sub_10000CF8C(v101, &type metadata for EffectType);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = *(v16 + 24);
  sub_10003E214(a1, a2, a3, a4);
  v21 = v18;
  v22 = a7;
  v23 = sub_100035BC4(v17, v21, v19, v20, a7);
  if (!v23)
  {
    sub_10000CEDC(v101, &v113);
    v42 = sub_10004CEDC();
    v43 = sub_10004D39C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v106 = v45;
      *v44 = 136315138;
      v46 = sub_10000CF8C(&v113, *(&v114 + 1));
      v47 = sub_10003EA74(*v46, v46[2], *(v46 + 24));
      v49 = v48;
      sub_10000CF40(&v113);
      v50 = sub_10000C618(v47, v49, &v106);

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "placeholderViewByEffect missing for effectType: %s", v44, 0xCu);
      sub_10000CF40(v45);
    }

    else
    {

      sub_10000CF40(&v113);
    }

    return sub_10000CF40(v101);
  }

  v24 = v23;
  v25 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
  swift_beginAccess();
  v26 = *(a7 + v25);
  if (!*(v26 + 16))
  {
    goto LABEL_18;
  }

  v27 = sub_10003310C(a5, a6);
  if ((v28 & 1) == 0)
  {

LABEL_18:

    v51 = sub_10004CEDC();
    v52 = sub_10004D39C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v113 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_10000C618(a5, a6, &v113);
      _os_log_impl(&_mh_execute_header, v51, v52, "effectView missing for key: %s", v53, 0xCu);
      sub_10000CF40(v54);
    }

    return sub_10000CF40(v101);
  }

  v29 = *(*(v26 + 56) + 8 * v27);

  v100 = 0;
  v30 = *(v29 + 16);
  sub_10001EA04(v30, &v100);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:

    return sub_10000CF40(v101);
  }

  v32 = Strong;
  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  p_attr = &stru_10006AFF8.attr;
  if ([qword_1000730A8 posterKitEditor])
  {
    swift_beginAccess();
    v34 = sub_10000CF8C((v29 + 24), *(v29 + 48));
    v35 = sub_10003EA74(*v34, v34[2], *(v34 + 24));
    v37 = v36;
    v38 = sub_10000CF8C(v101, v102);
    if (v35 == sub_10003EA74(*v38, v38[2], *(v38 + 24)) && v37 == v39)
    {

      return sub_10000CF40(v101);
    }

    v41 = sub_10004D74C();

    p_attr = (&stru_10006AFF8 + 8);
    if (v41)
    {

      goto LABEL_14;
    }
  }

  if ([qword_1000730A8 p_attr[74]])
  {
    [*(v29 + 16) setAlpha:0.0];
  }

  else
  {
    v56 = (v22 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v57 = sub_10000CF8C(v56, v56[3]);
    v58 = sub_10000CF8C(v101, v102);
    v100 = !sub_10003A4FC(*v57, v57[1], v57[2], *(v57 + 24), *v58, v58[1], v58[2], *(v58 + 24));
  }

  v59 = *(*(v29 + 16) + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor);
  if (v59)
  {
    swift_weakInit();
    v60 = *(v59 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

    os_unfair_lock_lock(v60);
    v83 = *(v59 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
    swift_beginAccess();
    v61 = swift_weakLoadStrong();
    if (v61)
    {
      v62 = v61;
      v80 = v60;
      v81 = v32;
      v79 = v100;
      v63 = sub_10000CF8C(v101, v102);
      v65 = *v63;
      v64 = v63[1];
      v66 = v63[2];
      v67 = *(v63 + 24);
      v68 = swift_unknownObjectWeakLoadStrong();
      if (v68)
      {
        v69 = v68;
        v84 = v83;
        sub_100035FE8(v84, v65, v64, v66, v67, v79, v69, a8);
        if (!sub_100035D90(v65, v64, v66, v67, v62))
        {
          sub_100011418(a8);
        }
      }

      v32 = v81;
      v60 = v80;
    }

    os_unfair_lock_unlock(v60);

    swift_weakDestroy();
  }

  if (([qword_1000730A8 posterKitEditor] & 1) != 0 || a8 == 1.0)
  {
    swift_beginAccess();
    sub_10003E314((v29 + 24), v101);
    swift_endAccess();
    v70 = swift_unknownObjectWeakLoadStrong();
    if (!v70)
    {
      goto LABEL_39;
    }

    v71 = v70;
    v72 = sub_10000CF8C(v101, v102);
    sub_1000358A4(*v72, v72[1], v72[2], *(v72 + 24), v71, v104);

    v110 = v104[4];
    v111 = v104[5];
    *v112 = v105[0];
    *&v112[14] = *(v105 + 14);
    v106 = v104[0];
    v107 = v104[1];
    v108 = v104[2];
    v109 = v104[3];
    if (sub_10003E278(&v106) != 1)
    {
      v97 = v110;
      v98 = v111;
      v99 = *v112;
      v93 = v106;
      v94 = v107;
      v95 = v108;
      v96 = v109;
      v91 = *&v112[24];
      v92 = *&v112[28];
      [*&v24[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView] bounds];
      v74 = v73;
      v76 = v75;
      v77 = [qword_1000730A8 posterKitEditor];
      v78 = *(v29 + 16);
      v117 = v97;
      v118 = v98;
      v119 = v99;
      v113 = v93;
      v114 = v94;
      v115 = v95;
      v116 = v96;
      v120 = v74;
      v121 = v76;
      v123 = v92;
      v122 = v91;
      sub_100028734(&v113, v77);

      v85[4] = v97;
      v85[5] = v98;
      v86 = v99;
      v85[0] = v93;
      v85[1] = v94;
      v85[2] = v95;
      v85[3] = v96;
      v87 = v74;
      v88 = v76;
      v90 = v92;
      v89 = v91;
      sub_10000CE08(v85);
    }

    else
    {
LABEL_39:
    }
  }

  else
  {
  }

  return sub_10000CF40(v101);
}

uint64_t sub_100038660(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, double a6)
{
  v12 = sub_10004CEFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v114[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = &type metadata for EffectType;
  v157 = &off_100066D68;
  v17 = swift_allocObject();
  v155[0] = v17;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v121 = v13;
    *&v122 = v12;
    v123 = v16;
    v124 = Strong;
    v19 = (a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect);
    swift_beginAccess();
    v20 = sub_10000CF8C(v19, v19[3]);
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    v24 = *(v20 + 24);
    sub_10003E214(a1, a2, a3, a4);
    v168._countAndFlagsBits = v22;
    v168._object = v21;
    v25 = sub_10003EA74(v168, v23, v24);
    v27 = v26;
    v28 = sub_10000CF8C(v155, v156);
    if (v25 == sub_10003EA74(*v28, v28[2], *(v28 + 24)) && v27 == v29)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_10004D74C();
    }

    v32 = sub_10000CF8C(v155, v156);
    v33 = sub_100035D90(*v32, v32[1], v32[2], *(v32 + 24), a5);
    if ((v31 & 1) != 0 && a6 == 1.0)
    {
      v34 = sub_10000CF8C(v155, v156);
      sub_100037A34(*v34, v34[1], v34[2], *(v34 + 24), a5);
    }

    if (v33)
    {
      v35 = 0xD000000000000011;
    }

    else
    {
      v35 = 0xD000000000000010;
    }

    if (v33)
    {
      v36 = "cleanupBackgroundViews()";
    }

    else
    {
      v36 = "currentEffectView";
    }

    v37 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_effectViewByEffect;
    swift_beginAccess();
    if (*(*(a5 + v37) + 16) && (v38 = *(a5 + v37), , sub_10003310C(v35, v36 | 0x8000000000000000), v40 = v39, , (v40 & 1) != 0))
    {
      if (a6 != -1.0)
      {
        v41 = sub_10000CF8C(v155, v156);
        sub_100037E00(*v41, v41[1], v41[2], *(v41 + 24), v35, v36 | 0x8000000000000000, a5, a6);
      }
    }

    else
    {
      v42 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;

      v43 = sub_10004CEDC();
      v44 = sub_10004D39C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v162[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_10000C618(v35, v36 | 0x8000000000000000, v162);
        _os_log_impl(&_mh_execute_header, v43, v44, " effectViewByEffect[%s] == nil", v45, 0xCu);
        sub_10000CF40(v46);
      }

      v47 = v124;
      v48 = sub_10000CF8C(v155, v156);
      v49 = sub_100035BC4(*v48, v48[1], v48[2], *(v48 + 24), a5);
      if (v49)
      {
        v50 = v49;
        v51 = sub_10000CF8C(v155, v156);
        sub_1000358A4(*v51, v51[1], v51[2], *(v51 + 24), v47, v158);
        if (sub_10003E278(v158) == 1)
        {
        }

        else
        {
          v119 = v37;
          v152 = v158[4];
          v153 = v158[5];
          v154 = v159;
          v148 = v158[0];
          v149 = v158[1];
          v150 = v158[2];
          v151 = v158[3];
          v146 = v160;
          v147 = v161;
          [*&v50[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_contentView] bounds];
          v53 = v52;
          v55 = v54;
          sub_10000CEDC(v155, v145);

          v56 = v50;
          v117 = v42;
          v57 = sub_10004CEDC();
          v58 = sub_10004D39C();
          v120 = v56;

          v59 = os_log_type_enabled(v57, v58);
          v118 = v35;
          if (v59)
          {
            v60 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            *&v162[0] = v116;
            *v60 = 136315650;
            *(v60 + 4) = sub_10000C618(v35, v36 | 0x8000000000000000, v162);
            v115 = v58;
            *(v60 + 12) = 2080;
            v61 = sub_10000CF8C(v145, v145[3]);
            v62 = sub_10003EA74(*v61, v61[2], *(v61 + 24));
            v64 = v63;
            sub_10000CF40(v145);
            v65 = sub_10000C618(v62, v64, v162);

            *(v60 + 14) = v65;
            *(v60 + 22) = 2080;
            v66 = v120;
            v67 = [v66 description];
            v68 = sub_10004D08C();
            v70 = v69;

            v71 = sub_10000C618(v68, v70, v162);

            *(v60 + 24) = v71;
            _os_log_impl(&_mh_execute_header, v57, v115, "creating view for %s %s placeholder: %s", v60, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10000CF40(v145);
          }

          (*(v121 + 16))(v123, a5 + v117, v122);
          v162[4] = v152;
          v162[5] = v153;
          v163 = v154;
          v162[0] = v148;
          v162[1] = v149;
          v162[2] = v150;
          v162[3] = v151;
          v164 = v53;
          v165 = v55;
          v167 = v147;
          v166 = v146;
          sub_10000CEDC(a5 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_factory, v131);
          v72 = swift_allocObject();
          swift_weakInit();
          sub_10000CEDC(v155, &v128);
          v73 = swift_allocObject();
          *(v73 + 16) = v72;
          sub_10000CEC4(&v128, v73 + 24);
          v74 = v132;
          v75 = sub_10003A914(v131, v132);
          *&v122 = v114;
          v76 = *(v74[-1].Description + 8);
          __chkstk_darwin(v75);
          v78 = &v114[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v79 + 16))(v78);
          v80 = *v78;
          v126 = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
          v127 = &off_100066D78;
          v125[0] = v80;
          v81 = objc_allocWithZone(type metadata accessor for TranscriptBackgroundView(0));
          v82 = v126;
          v83 = sub_10003A914(v125, v126);
          v84 = *(*(v82 - 8) + 64);
          __chkstk_darwin(v83);
          v86 = &v114[-((v85 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v87 + 16))(v86);
          v88 = *v86;
          sub_10000CDAC(v162, &v134);

          sub_1000366C0(v123, v162, v88, sub_10003E308, v73, v81);
          v90 = v89;
          sub_10000CF40(v125);
          sub_10000CF40(v131);

          [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
          sub_10000CEDC(v155, &v134);
          v91 = *(&v135 + 1);
          v92 = sub_10003A914(&v134, *(&v135 + 1));
          v123 = v114;
          v93 = *(*(v91 - 8) + 64);
          __chkstk_darwin(v92);
          v95 = &v114[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v96 + 16))(v95);
          v122 = *v95;
          v97 = *(v95 + 2);
          LOBYTE(v95) = v95[24];
          v132 = &type metadata for EffectType;
          v133 = &off_100066D68;
          v98 = swift_allocObject();
          v131[0] = v98;
          *(v98 + 16) = v122;
          *(v98 + 32) = v97;
          *(v98 + 40) = v95;
          type metadata accessor for ViewsManager.EffectView();
          v99 = swift_allocObject();
          v100 = sub_10003A914(v131, &type metadata for EffectType);
          __chkstk_darwin(v100);
          v102 = &v114[-((v101 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v103 + 16))(v102);
          v122 = *v102;
          v104 = *(v102 + 2);
          LOBYTE(v102) = v102[24];
          v129 = &type metadata for EffectType;
          v130 = &off_100066D68;
          v105 = swift_allocObject();
          *&v128 = v105;
          *(v105 + 16) = v122;
          *(v105 + 32) = v104;
          *(v105 + 40) = v102;
          *(v99 + 16) = v90;
          sub_10000CEC4(&v128, v99 + 24);

          v106 = v90;
          sub_10000CF40(v131);
          sub_10000CF40(&v134);
          v107 = v119;
          swift_beginAccess();
          v108 = *(a5 + v107);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131[0] = *(a5 + v107);
          *(a5 + v107) = 0x8000000000000000;
          v110 = v99;
          v111 = v118;
          sub_100034A30(v110, v118, v36 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

          *(a5 + v107) = v131[0];
          swift_endAccess();
          v112 = sub_10000CF8C(v155, v156);
          sub_100037E00(*v112, v112[1], v112[2], *(v112 + 24), v111, v36 | 0x8000000000000000, a5, 1.0);

          v137 = v151;
          v138 = v152;
          v139 = v153;
          v134 = v148;
          v140 = v154;
          v135 = v149;
          v136 = v150;
          v141 = v53;
          v142 = v55;
          v144 = v147;
          v143 = v146;
          sub_10000CE08(&v134);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_10003E214(a1, a2, a3, a4);
  }

  return sub_10000CF40(v155);
}

uint64_t sub_10003930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v30[3] = &type metadata for EffectType;
  v30[4] = &off_100066D68;
  v12 = swift_allocObject();
  v30[0] = v12;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = type metadata accessor for TranscriptBackgroundDynamicEffectFactory();
  v29[3] = v13;
  v29[4] = &off_100066D78;
  v29[0] = a6;
  v14 = type metadata accessor for ViewsManager();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = sub_10003A914(v30, &type metadata for EffectType);
  __chkstk_darwin(v18);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_10003A914(v29, v13);
  v23 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_100035720(a1, *v20, *(v20 + 1), *(v20 + 2), v20[24], *v25, v17);
  sub_10000CF40(v29);
  sub_10000CF40(v30);
  return v27;
}

uint64_t sub_100039528(void *a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v12 = sub_10004CEFC();
  v89 = *(v12 - 8);
  v90 = v12;
  v13 = *(v89 + 64);
  __chkstk_darwin(v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = &type metadata for EffectType;
  v114 = &off_100066D68;
  v16 = swift_allocObject();
  v112[0] = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  v17 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_logger;
  sub_10000CEDC(v112, &v124);
  sub_10003E214(a2, a3, a4, a5);
  v18 = a1;
  v19 = sub_10004CEDC();
  v20 = sub_10004D39C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v117 = v86;
    *v21 = 136315650;
    *(v21 + 4) = sub_10000C618(0xD000000000000035, 0x8000000100054EB0, &v117);
    v87 = v15;
    *(v21 + 12) = 2080;
    v22 = sub_10000CF8C(&v124, *(&v125 + 1));
    v23 = sub_10003EA74(*v22, v22[2], *(v22 + 24));
    v88 = v17;
    v24 = v23;
    v26 = v25;
    sub_10000CF40(&v124);
    v27 = sub_10000C618(v24, v26, &v117);

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v28 = v18;
    v29 = [v28 description];
    v30 = a6;
    v31 = v18;
    v32 = sub_10004D08C();
    v34 = v33;

    v17 = v88;
    v35 = v32;
    v18 = v31;
    a6 = v30;
    v36 = sub_10000C618(v35, v34, &v117);
    v15 = v87;

    *(v21 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s for %s parentView: %s", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000CF40(&v124);
  }

  [v18 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = sub_10000CF8C(v112, v113);
  v46 = sub_100035BC4(*v45, v45[1], v45[2], *(v45 + 24), a6);
  if (v46)
  {
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_17;
    }

    v48 = Strong;
    v49 = sub_10000CF8C(v112, v113);
    sub_1000358A4(*v49, v49[1], v49[2], *(v49 + 24), v48, v115);

    v121 = v115[4];
    v122 = v115[5];
    v123[0] = v116[0];
    *(v123 + 14) = *(v116 + 14);
    v117 = v115[0];
    v118 = v115[1];
    v119 = v115[2];
    v120 = v115[3];
    if (sub_10003E278(&v117) == 1)
    {
LABEL_17:
      result = sub_10004D66C();
      __break(1u);
      return result;
    }

    v50 = v18;
    v109 = v121;
    v110 = v122;
    v111 = *&v123[0];
    v105 = v117;
    v106 = v118;
    v107 = v119;
    v108 = v120;
    v103 = DWORD2(v123[1]);
    v104 = WORD6(v123[1]);
    (*(v89 + 16))(v15, a6 + v17, v90);
    v128 = v109;
    v129 = v110;
    v130 = v111;
    v124 = v105;
    v125 = v106;
    v126 = v107;
    v127 = v108;
    v131 = v42;
    v132 = v44;
    v134 = v104;
    v133 = v103;
    v51 = objc_allocWithZone(type metadata accessor for PlaceholderView());
    sub_10000CDAC(&v124, &v92);
    v52 = sub_10001EFC8(v15, &v124);
    sub_10000CE08(&v124);
    v53 = *(a6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_pkDeviceOrientation);
    v54 = *&v52[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation];
    *&v52[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension15PlaceholderView_deviceOrientation] = v53;
    if (v54 != v53)
    {
      sub_10001E314();
    }

    v55 = v52;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = [objc_opt_self() blackColor];
    [v55 setBackgroundColor:v56];

    v57 = sub_10000CF8C(v112, v113);
    v58 = sub_10003EA74(*v57, v57[2], *(v57 + 24));
    v60 = v59;
    v61 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_placeholderViewByEffect;
    swift_beginAccess();
    v62 = v55;
    v63 = *(a6 + v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(a6 + v61);
    *(a6 + v61) = 0x8000000000000000;
    sub_100034BAC(v62, v58, v60, isUniquelyReferenced_nonNull_native);

    *(a6 + v61) = v91;
    swift_endAccess();

    v96 = v109;
    v97 = v110;
    v98 = v111;
    v92 = v105;
    v93 = v106;
    v94 = v107;
    v95 = v108;
    v99 = v42;
    v100 = v44;
    v102 = v104;
    v101 = v103;
    sub_10000CE08(&v92);
    v18 = v50;
  }

  v65 = sub_10000CF8C(v112, v113);
  v66 = sub_100035BC4(*v65, v65[1], v65[2], *(v65 + 24), a6);
  if (v66)
  {
    v67 = v66;
    [v66 setFrame:{v38, v40, v42, v44}];
    sub_10000CEDC(v112, &v92);
    v68 = v67;
    v69 = sub_10004CEDC();
    v70 = sub_10004D39C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v90 = v18;
      v72 = v71;
      v89 = swift_slowAlloc();
      *&v105 = v89;
      *v72 = 136315394;
      v73 = sub_10000CF8C(&v92, *(&v93 + 1));
      v74 = sub_10003EA74(*v73, v73[2], *(v73 + 24));
      v76 = v75;
      sub_10000CF40(&v92);
      v77 = sub_10000C618(v74, v76, &v105);

      *(v72 + 4) = v77;
      *(v72 + 12) = 2080;
      v78 = v68;
      v79 = [v78 description];
      v80 = sub_10004D08C();
      v82 = v81;

      v83 = sub_10000C618(v80, v82, &v105);

      *(v72 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v69, v70, "getting placeholder for %s placeholder: %s", v72, 0x16u);
      swift_arrayDestroy();

      v18 = v90;
    }

    else
    {

      sub_10000CF40(&v92);
    }

    [v18 addSubview:v68];
    sub_10004AEDC(v68);
    v84 = sub_10000CF8C(v112, v113);
    sub_100038660(*v84, v84[1], v84[2], *(v84 + 24), a6, -1.0);
  }

  return sub_10000CF40(v112);
}

unint64_t sub_100039DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&unk_100070A20, &qword_100051738);
    v3 = sub_10004D6AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v4, &v13, &qword_1000704A8, &unk_100051740);
      v5 = v13;
      v6 = v14;
      result = sub_10003310C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010F88(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100039EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&unk_100070B70, &unk_100051800);
    v3 = sub_10004D6AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v4, &v11, &qword_10006E9D8, &unk_100050638);
      v5 = v11;
      result = sub_100033184(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100010F88(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10003A008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&qword_100070A08, &qword_100051720);
    v3 = sub_10004D6AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003310C(v5, v6);
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

unint64_t sub_10003A10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&qword_100070A00, &qword_100051718);
    v3 = sub_10004D6AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003310C(v5, v6);
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

unint64_t sub_10003A234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CC1C(&unk_10006EA90, &qword_1000506D8);
    v3 = sub_10004D6AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v4, v13, &qword_100070AF8, &unk_1000517E0);
      result = sub_1000330C8(v13);
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
      result = sub_100010F88(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10003A394(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_10000CC1C(a2, a3);
    v9 = sub_10004D6AC();
    v10 = a1 + 32;

    while (1)
    {
      sub_10003E9EC(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1000332C0(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_100010F88(&v18, (v9[7] + 32 * result));
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

uint64_t sub_10003A4AC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

BOOL sub_10003A4FC(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void *a7, unsigned __int8 a8)
{
  v51[3] = &type metadata for EffectType;
  v51[4] = &off_100066D68;
  v16 = swift_allocObject();
  v51[0] = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v50[3] = &type metadata for EffectType;
  v50[4] = &off_100066D68;
  v17 = swift_allocObject();
  v50[0] = v17;
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  sub_10000CEDC(v51, v49);
  sub_10003E214(a1, a2, a3, a4);
  sub_10003E214(a5, a6, a7, a8);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    goto LABEL_31;
  }

  sub_10000CEDC(v50, v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = v45;
    v24 = v46;
    v25 = v47;
    v26 = v48;
LABEL_13:
    sub_100010F08(v23, v24, v25, v26);
    v22 = 0;
    goto LABEL_31;
  }

  if (v48 <= 1u)
  {
    v18 = v45;
    v19 = v46;
    v20 = v47;
    if (!v48)
    {
      v21 = 0;
LABEL_10:
      sub_100010F08(v18, v19, v20, v21);
      v27 = v45;
      v28 = v46;
      v29 = v47;
      v30 = v48;
LABEL_30:
      sub_100010F08(v27, v28, v29, v30);
      v22 = 1;
      goto LABEL_31;
    }

    v31 = 1;
    goto LABEL_12;
  }

  if (v48 == 2)
  {
    v18 = v45;
    v19 = v46;
    v20 = v47;
    v21 = 2;
    goto LABEL_10;
  }

  if (qword_10006E0A8 != -1)
  {
    swift_once();
  }

  v32 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
  if ([qword_1000730A8 enableFantasy])
  {
    v33 = sub_10003F3A8(v45, v46, v47, 3);
    v34 = sub_10004A040(v45, v46, v47, 3u);
    v35 = v34 >> 62 ? sub_10004D67C() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v36 = v33 == v35;
    v32 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension40TranscriptBackgroundKeyboardEventHandler_eventType;
    if (v36)
    {
      v18 = v45;
      v19 = v46;
      v20 = v47;
      v31 = 3;
LABEL_12:
      sub_100010F08(v18, v19, v20, v31);
      v23 = v45;
      v24 = v46;
      v25 = v47;
      v26 = v48;
      goto LABEL_13;
    }
  }

  if (v48 != 3)
  {
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v43 = v48;
LABEL_29:
    sub_100010F08(v40, v41, v42, v43);
    v27 = v45;
    v28 = v46;
    v29 = v47;
    v30 = 3;
    goto LABEL_30;
  }

  if (([v32[21] enableFantasy] & 1) == 0)
  {
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v43 = 3;
    goto LABEL_29;
  }

  v37 = sub_10003F3A8(v45, v46, v47, 3);
  v38 = sub_10004A040(v45, v46, v47, 3u);
  if (v38 >> 62)
  {
    v39 = sub_10004D67C();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100010F08(v45, v46, v47, 3u);
  sub_100010F08(v45, v46, v47, 3u);

  v22 = v37 != v39;
LABEL_31:
  sub_10000CF40(v51);
  sub_10000CF40(v50);
  return v22;
}

uint64_t sub_10003A8D4()
{
  sub_100010F08(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10003A914(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_10003A964(void *a1, double a2)
{
  if (a2 >= 2.22044605e-16)
  {
    *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_lastProgressValue) = a2;
    v6 = [a1 identifier];
    v7 = sub_10004D08C();
    v9 = v8;

    v10 = sub_10004ACBC(v7, v9);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    sub_100038660(v10, v12, v14, v16, *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager), a2);

    sub_100010F08(v10, v12, v14, v16);
  }

  else
  {
    oslog = sub_10004CEDC();
    v4 = sub_10004D39C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = a2;
      _os_log_impl(&_mh_execute_header, oslog, v4, "didTransitionTo discard progress change %f", v5, 0xCu);
    }
  }
}

void sub_10003AC0C(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_10004CEDC();
  v5 = sub_10004D39C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v36 = v7;
    *v6 = 136315138;
    v8 = [v3 identifier];
    v9 = sub_10004D08C();
    v11 = v10;

    v12 = sub_10000C618(v9, v11, &v36);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "didFinishTransitionTo look: %s", v6, 0xCu);
    sub_10000CF40(v7);
  }

  v13 = [v3 identifier];
  v14 = sub_10004D08C();
  v16 = v15;

  v17 = sub_10004ACBC(v14, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_10003E214(v17, v19, v21, v23);
  v24 = sub_10004CEDC();
  v25 = sub_10004D39C();
  sub_100010F08(v17, v19, v21, v23);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v36 = v27;
    *v26 = 136315138;
    v39._countAndFlagsBits = v17;
    v39._object = v19;
    v28 = sub_10003EA74(v39, v21, v23);
    v30 = sub_10000C618(v28, v29, &v36);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "didFinishTransitionTo effectType: %s", v26, 0xCu);
    sub_10000CF40(v27);
  }

  v31 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v37 = &type metadata for EffectType;
  v38 = &off_100066D68;
  v32 = swift_allocObject();
  *&v36 = v32;
  *(v32 + 16) = v17;
  *(v32 + 24) = v19;
  *(v32 + 32) = v21;
  *(v32 + 40) = v23;
  v33 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10003E214(v17, v19, v21, v23);
  sub_10000CF40((v31 + v33));
  sub_10000CEC4(&v36, v31 + v33);
  swift_endAccess();
  sub_10003E214(v17, v19, v21, v23);
  sub_100038660(v17, v19, v21, v23, v31, 1.0);
  sub_100010F08(v17, v19, v21, v23);
  v34 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor;
  [*(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) updateActions];
  v35 = *(v2 + v34);
  [v35 updateLuminanceValuesForLooks];
  sub_100010F08(v17, v19, v21, v23);
}

void sub_10003B010()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000C618(0xD000000000000017, 0x8000000100055020, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000CF40(v5);
  }

  sub_100032A38();
  v6 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor);
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_editor) = 0;

  v7 = v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType;
  v8 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType);
  v9 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 8);
  v10 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 16);
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v11 = *(v7 + 24);
  *(v7 + 24) = -1;

  sub_10003E080(v8, v9, v10, v11);
}

uint64_t sub_10003B16C(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = sub_10004CEDC();
  v7 = sub_10004D39C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000C618(0xD000000000000021, 0x8000000100054FD0, v57);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000CF40(v9);
  }

  v52 = sub_10003A234(&_swiftEmptyArrayStorage);
  v10 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v57[0] = 0;
  v11 = [v10 loadUserInfoWithError:v57];
  swift_unknownObjectRelease();
  v12 = v57[0];
  if (v11)
  {
    v13 = sub_10004D01C();
    v14 = v12;

    v52 = v13;
    v15 = sub_10004CEDC();
    v16 = sub_10004D39C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v50 = a3;
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136315138;

      v19 = sub_10004D02C();
      v21 = v20;

      v22 = sub_10000C618(v19, v21, v57);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "loading userInfo... %s", v17, 0xCu);
      sub_10000CF40(v18);
      a3 = v50;
    }
  }

  else
  {
    v23 = v57[0];
    sub_10004CC6C();

    swift_willThrow();
  }

  v24 = *(a2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v25 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v24 + v25, v57);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v26 = v53;
    v27 = v54;
    v28 = v55;
    v29 = v56;
    swift_beginAccess();
    sub_10003F6FC(&v52, v53, v54, v55, v56);
    swift_endAccess();
    sub_100010F08(v26, v27, v28, v29);
    v30 = sub_10004CEDC();
    v31 = sub_10004D39C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v57[0] = v33;
      *v32 = 136315138;
      v51 = a1;
      v34 = a3;

      v35 = sub_10004D02C();
      v37 = v36;

      v38 = sub_10000C618(v35, v37, v57);

      *(v32 + 4) = v38;
      a3 = v34;
      a1 = v51;
      _os_log_impl(&_mh_execute_header, v30, v31, "saving userInfo... %s", v32, 0xCu);
      sub_10000CF40(v33);
    }

    v39 = [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();

    isa = sub_10004D00C().super.isa;

    v57[0] = 0;
    v41 = [v39 storeUserInfo:isa error:v57];

    if (v41)
    {
      v42 = v57[0];
    }

    else
    {
      v43 = v57[0];
      sub_10004CC6C();

      swift_willThrow();
      swift_errorRetain();
      v44 = sub_10004CEDC();
      v45 = sub_10004D38C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        swift_errorRetain();
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v48;
        *v47 = v48;
        _os_log_impl(&_mh_execute_header, v44, v45, "Error saving userInfo %@", v46, 0xCu);
        sub_100024DC8(v47, &qword_1000703F0, &qword_100050B90);
      }

      else
      {
      }
    }

    a3[2](a3);
  }

  else
  {
    _Block_release(a3);
    result = sub_10004D66C();
    __break(1u);
  }

  return result;
}

void sub_10003B8B8()
{
  oslog = sub_10004CEDC();
  v0 = sub_10004D39C();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v4 = v2;
    *v1 = 136315138;
    *(v1 + 4) = sub_10000C618(0xD000000000000020, 0x8000000100054FA0, &v4);
    _os_log_impl(&_mh_execute_header, oslog, v0, "%s", v1, 0xCu);
    sub_10000CF40(v2);
  }
}

void sub_10003B9C4(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
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

  sub_100010FE4(v6, v7);
  v11 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v5 + v11, v23);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    if (v22 == 3)
    {

      type metadata accessor for TranscriptBackgroundView(0);
      sub_100018394(a1, v23);
      if ((v24 & 1) == 0)
      {
        v17 = v23[1];
        v18 = v23[0];
        v12 = sub_100032974();
        if (v12)
        {
          v13 = v12;
          if ([*&v12[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_vfxView] rendersContinuously] && (v14 = *&v13[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldAccessor]) != 0)
          {
            swift_unknownObjectWeakInit();
            v15 = *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_lock);

            os_unfair_lock_lock(v15);
            v16 = *(v14 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension19WorldSerialAccessor_world);
            sub_100017FA0(v16, v18, v17);

            os_unfair_lock_unlock(v15);

            swift_unknownObjectWeakDestroy();
          }

          else
          {
          }
        }
      }
    }

    else
    {
      sub_100010F08(v19, v20, v21, v22);
    }
  }

  else
  {
    sub_10004D66C();
    __break(1u);
  }
}

uint64_t sub_10003BC3C()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v58 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000C618(0x6F6628736B6F6F6CLL, 0xEB00000000293A72, &v58);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v6 = (v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType);
  v7 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 24);
  if (v7 == 255)
  {
    v34 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
    v35 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
    swift_beginAccess();
    sub_10000CEDC(v34 + v35, &v58);
    sub_10000CC1C(&qword_100070A40, &unk_100050920);
    if (!swift_dynamicCast())
    {
      result = sub_10004D66C();
      __break(1u);
      return result;
    }

    v18 = sub_10004A040(v53, v55, v56, v57);
    sub_100010F08(v53, v55, v56, v57);
  }

  else
  {
    v9 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    sub_10003E214(*v6, v8, v10, *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_initialEffectType + 24));
    sub_10003E214(v9, v8, v10, v7);
    v11 = sub_10004CEDC();
    v12 = sub_10004D39C();
    sub_10003E080(v9, v8, v10, v7);
    if (os_log_type_enabled(v11, v12))
    {
      v51 = v1;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v58 = v14;
      *v13 = 136315138;
      v60._countAndFlagsBits = v9;
      v60._object = v8;
      v15 = sub_10003EA74(v60, v10, v7);
      v17 = sub_10000C618(v15, v16, &v58);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "initialEffectType: %s", v13, 0xCu);
      sub_10000CF40(v14);

      v1 = v51;
    }

    v18 = sub_10004A040(v9, v8, v10, v7);
    v54 = v18;
    if (v7 == 3)
    {
      sub_10003E214(v9, v8, v10, 3u);

      if (qword_10006E0A8 != -1)
      {
        swift_once();
      }

      v19 = [qword_1000730A8 customGlitterVariant];
      if (v19)
      {
        v20 = v19;
        sub_10004D08C();
        v22 = v21;

        sub_10004C820();
        v52 = v23;

        v24 = sub_10004D05C();
        v25 = sub_10004B21C(v24, v52);

        v26 = sub_10004A040(v9, v8, v10, 3u);
        if (v26 >> 62)
        {
          v27 = sub_10004D67C();
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFADD__(v27, 1))
        {
          __break(1u);
        }

        else
        {
          v58 = v27 + 1;
          v1 = sub_10004D73C();
          v22 = v28;
          v58 = 0x5F72657474696C67;
          v59 = 0xE800000000000000;
          v25 = v25;
          v61._countAndFlagsBits = v1;
          v61._object = v22;
          sub_10004D16C(v61);
          if (qword_10006E090 == -1)
          {
LABEL_14:
            v29.super.isa = qword_100073028;
            v50._countAndFlagsBits = 0xE000000000000000;
            v62._countAndFlagsBits = 0x52455454494C47;
            v65.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v65.value._object = 0xEB00000000656C62;
            v62._object = 0xE700000000000000;
            v66._countAndFlagsBits = 0;
            v66._object = 0xE000000000000000;
            v58 = sub_10004CC4C(v62, v65, v29, v66, v50);
            v59 = v30;
            v63._countAndFlagsBits = 32;
            v63._object = 0xE100000000000000;
            sub_10004D16C(v63);
            v64._countAndFlagsBits = v1;
            v64._object = v22;
            sub_10004D16C(v64);
            v31 = objc_allocWithZone(PREditingLook);
            v32 = sub_10004D05C();

            v33 = sub_10004D05C();

            [v31 initWithIdentifier:v32 displayName:v33];

            sub_10004D21C();
            if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v49 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_10004D25C();
            }

            sub_10004D27C();

            sub_10003E080(v9, v8, v10, 3u);
            v18 = v54;
            goto LABEL_22;
          }
        }

        swift_once();
        goto LABEL_14;
      }

      v36 = v9;
      v37 = v8;
      v38 = v10;
      v39 = 3;
    }

    else
    {
      v36 = v9;
      v37 = v8;
      v38 = v10;
      v39 = v7;
    }

    sub_10003E080(v36, v37, v38, v39);
  }

LABEL_22:
  v40 = sub_10004CEDC();
  v41 = sub_10004D39C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58 = v43;
    *v42 = 136315138;
    sub_10000D024(0, &unk_100070AE8, PREditingLook_ptr);

    v44 = sub_10004D24C();
    v46 = v45;

    v47 = sub_10000C618(v44, v46, &v58);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "looks : %s", v42, 0xCu);
    sub_10000CF40(v43);
  }

  return v18;
}

uint64_t sub_10003C3DC()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000C618(0xD00000000000001BLL, 0x8000000100054F80, v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000CF40(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v7 = OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12ViewsManager_currentEffect;
  swift_beginAccess();
  sub_10000CEDC(v6 + v7, v13);
  sub_10000CC1C(&qword_100070A40, &unk_100050920);
  if (swift_dynamicCast())
  {
    v8 = sub_10003EA74(v10, v11, v12);
    sub_100010F08(v10._countAndFlagsBits, v10._object, v11, v12);
    return v8;
  }

  else
  {
    result = sub_10004D66C();
    __break(1u);
  }

  return result;
}

double sub_10003C5E4(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_10004D08C();
  v4 = v3;

  v5 = sub_10004ACBC(v2, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_10003E214(v5, v7, v9, v11);
  v12 = sub_10004CEDC();
  v13 = sub_10004D39C();
  sub_100010F08(v5, v7, v9, v11);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    v21._countAndFlagsBits = v5;
    v21._object = v7;
    v16 = sub_10003EA74(v21, v9, v11);
    v18 = sub_10000C618(v16, v17, &v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 0x3FC999999999999ALL;
    _os_log_impl(&_mh_execute_header, v12, v13, "effectType: %s luminance: %f", v14, 0x16u);
    sub_10000CF40(v15);

    sub_100010F08(v5, v7, v9, v11);
  }

  else
  {

    sub_100010F08(v5, v7, v9, v11);
  }

  return 0.2;
}

void sub_10003C8F4(void *a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004CEDC();
  v6 = sub_10004D39C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000C618(0xD00000000000001CLL, 0x8000000100054F60, v38);
    *(v7 + 12) = 2080;
    v8 = [v4 identifier];
    v9 = sub_10004D08C();
    v10 = v3;
    v12 = v11;

    v13 = sub_10000C618(v9, v12, v38);
    v3 = v10;

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s for look %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = [v4 identifier];
  v15 = sub_10004D08C();
  v17 = v16;

  v18 = sub_10004ACBC(v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10003E214(v18, v20, v22, v24);
  v25 = sub_10004CEDC();
  v26 = sub_10004D39C();
  sub_100010F08(v18, v20, v22, v24);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v27 = 136315394;
    v40._countAndFlagsBits = v18;
    v40._object = v20;
    v28 = sub_10003EA74(v40, v22, v24);
    v30 = v3;
    v31 = sub_10000C618(v28, v29, v38);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v41._countAndFlagsBits = v18;
    v41._object = v20;
    v32 = sub_10003F828(v41, v22, v24);
    v34 = sub_10000C618(v32, v33, v38);

    *(v27 + 14) = v34;
    v3 = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "setupBackgroundViewIfNecessaryInView for look %s - %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  v35 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_viewsManager);
  v36 = [a1 backgroundView];
  sub_100039528(v36, v18, v20, v22, v24, v35);

  sub_100010F08(v18, v20, v22, v24);
}

uint64_t sub_10003CDD0()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v2, v3, "#%ld shouldAttemptSnapshotForHandle", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  return 1;
}

void sub_10003CEA0()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

    _os_log_impl(&_mh_execute_header, v2, v3, "#%ld completedSnapshotForHandle", v4, 0xCu);
  }

  else
  {

    v2 = v1;
  }

  v5 = sub_100032974();
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];
    v9 = v5;

    v7 = sub_10001F534();

    v8 = v9;
    if (v7 && *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) == 1)
    {
      *(v9 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting) = 0;
      sub_10002D0B8();
      v8 = v9;
    }
  }
}

void sub_10003CFFC()
{
  v1 = v0;
  v2 = sub_100032974();
  if (v2)
  {
    v3 = v2;
    v4 = *&v2[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_snapshotWriter];

    v5 = sub_10001F534();

    if (v5 && v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] == 1)
    {
      v3[OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_isSnapshotting] = 0;
      sub_10002D0B8();
    }
  }

  v6 = v1;
  swift_errorRetain();
  oslog = sub_10004CEDC();
  v7 = sub_10004D39C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = *(v6 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_tagID);

    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, oslog, v7, "#%ld failedToSnapshotWithError %@", v8, 0x16u);
    sub_100024DC8(v9, &qword_1000703F0, &qword_100050B90);

    v11 = oslog;
  }

  else
  {

    v11 = v6;
  }
}

void sub_10003D1B8(void *a1)
{
  v1 = a1;
  oslog = sub_10004CEDC();
  v2 = sub_10004D39C();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = [v1 type];
    type metadata accessor for PRRenderingTransitionType(0);
    v5 = sub_10004D0FC();
    v7 = sub_10000C618(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    [v1 phase];
    type metadata accessor for PRRenderingTransitionPhase(0);
    v8 = sub_10004D0FC();
    v10 = sub_10000C618(v8, v9, &v12);

    *(v3 + 14) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v2, "transitionState %s %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10003D37C(void *a1)
{
  v2 = [a1 type];
  v3 = sub_10004D08C();
  v5 = v4;
  if (v3 == sub_10004D08C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_10004D74C();

    if ((v8 & 1) == 0)
    {
      oslog = sub_10004CEDC();
      v9 = sub_10004D38C();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v9, "Unhandled event type", v10, 2u);
      }

      return;
    }
  }

  v11 = sub_100032974();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 metadata];
    v14 = sub_10004D01C();

    sub_10000AEEC(v14);
  }
}

void sub_10003D56C()
{
  v1 = v0;
  v2 = sub_10004CEDC();
  v3 = sub_10004D39C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000C618(0xD000000000000019, 0x8000000100054DD0, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000CF40(v5);
  }

  sub_100032A38();
  v6 = *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer);
  *(v1 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer) = 0;
}

uint64_t sub_10003D69C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004CF1C();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  __chkstk_darwin(v6);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004CF6C();
  v35 = *(v9 - 8);
  v36 = v9;
  v10 = *(v35 + 64);
  __chkstk_darwin(v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10004CF8C();
  v12 = *(v39 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v39);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v19 = sub_10004CEDC();
  v20 = sub_10004D39C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = a2;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000C618(0xD000000000000024, 0x8000000100054DA0, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s", v21, 0xCu);
    sub_10000CF40(v23);
    a2 = v22;
  }

  sub_100032A38();
  v24 = *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer);
  *(v3 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController_renderer) = 0;

  sub_10000D024(0, &unk_10006E3C0, OS_dispatch_queue_ptr);
  v25 = sub_10004D3DC();
  sub_10004CF7C();
  sub_10004CFAC();
  v32 = *(v12 + 8);
  v32(v16, v39);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  aBlock[4] = sub_10003DFF8;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002FBD0;
  aBlock[3] = &unk_100066A58;
  v27 = _Block_copy(aBlock);

  v28 = v33;
  sub_10004CF3C();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10003E038(&qword_1000708A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000CC1C(&unk_10006E3D0, &qword_100050620);
  sub_1000249FC(&qword_1000708B0, &unk_10006E3D0, &qword_100050620);
  v29 = v34;
  v30 = v38;
  sub_10004D57C();
  sub_10004D3BC();
  _Block_release(v27);

  (*(v37 + 8))(v29, v30);
  (*(v35 + 8))(v28, v36);
  return (v32)(v18, v39);
}

void sub_10003DB70(void *a1)
{
  v1 = [a1 knownContexts];
  sub_10000D024(0, &qword_100070A30, PRPosterSnapshotContext_ptr);
  sub_10003DF40();
  v2 = sub_10004D30C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10004D5AC();
    sub_10004D31C();
    v3 = v51;
    v4 = v52;
    v5 = v53;
    v6 = v54;
    v7 = v55;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v3 = v2;
  }

  v11 = (v5 + 64) >> 6;
  v12 = a1;
  v49 = v3;
  while (v3 < 0)
  {
    if (!sub_10004D5BC())
    {
      goto LABEL_24;
    }

    swift_dynamicCast();
    v18 = v50;
    v16 = v6;
    v17 = v7;
    if (!v50)
    {
      goto LABEL_24;
    }

LABEL_19:
    v19 = [v18 interfaceOrientation];
    v20 = [v12 inflightContext];
    v21 = [v20 interfaceOrientation];

    if (v19 == v21)
    {
      [v18 canvasBounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [v12 inflightContext];
      [v30 canvasBounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      v56.origin.x = v23;
      v56.origin.y = v25;
      v56.size.width = v27;
      v56.size.height = v29;
      v57.origin.x = v32;
      v57.origin.y = v34;
      v57.size.width = v36;
      v57.size.height = v38;
      if (CGRectEqualToRect(v56, v57))
      {
        v39 = [v18 snapshotDefinitionIdentifier];
        v47 = sub_10004D08C();
        v41 = v40;

        v42 = [v12 inflightContext];
        v43 = [v42 snapshotDefinitionIdentifier];

        v44 = sub_10004D08C();
        v46 = v45;

        if (v47 == v44 && v41 == v46)
        {

LABEL_24:
          sub_10003DFA8();

          return;
        }

        v13 = sub_10004D74C();

        v12 = a1;
        if (v13)
        {
          goto LABEL_24;
        }
      }
    }

    v6 = v16;
    v7 = v17;
    v3 = v49;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (v7)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_24;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_10003DF40()
{
  result = qword_100070A38;
  if (!qword_100070A38)
  {
    sub_10000D024(255, &qword_100070A30, PRPosterSnapshotContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070A38);
  }

  return result;
}

uint64_t sub_10003DFB0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003DFF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003E020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003E038(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003E080(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_100010F08(a1, a2, a3, a4);
  }
}

uint64_t sub_10003E0F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E144()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E17C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E1EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003E214(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 < 3u)
  {
  }

  if (a4 == 3)
  {
    v6 = a3;
  }

  return result;
}

uint64_t sub_10003E278(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003E290()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003E2C8()
{
  v1 = *(v0 + 16);

  sub_10000CF40((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t *sub_10003E314(uint64_t *result, uint64_t *a2)
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

uint64_t sub_10003E530()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10003E588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FC14;

  return sub_1000447F8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_10003E650()
{
  v1 = sub_10004CD3C();
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

void sub_10003E734()
{
  v1 = *(sub_10004CD3C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 1);

  sub_10002B0B0(v3, v4, v5, v0 + v2, v7, v8);
}

id sub_10003E7D8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 metalCapture];
  *a2 = result;
  return result;
}

uint64_t sub_10003E828(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100010FA0;

  return sub_10001043C(a1, v5);
}

uint64_t sub_10003E8E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E918(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FC14;

  return sub_10001043C(a1, v5);
}

double sub_10003E9D0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 110) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10003E9EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CC1C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10003EA74(Swift::String a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      v3 = 0x5F72657474696C67;
      goto LABEL_9;
    }

    v4 = 0x61726F727561;
    goto LABEL_7;
  }

  if (a3)
  {
    v4 = 0x7364756F6C63;
LABEL_7:
    v3 = v4 & 0xFFFFFFFFFFFFLL | 0x5F000000000000;
    goto LABEL_9;
  }

  v3 = 0x5F6E6165636FLL;
LABEL_9:
  v6 = v3;
  sub_10004D16C(a1);
  return v6;
}

uint64_t sub_10003EB10(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a1 == 49 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 1263752516;
      }

      else if (a1 == 50 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 1163542856;
      }

      else
      {
        if (a1 == 51 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x5445534E5553;
          v8._object = 0xE600000000000000;
          goto LABEL_24;
        }

        if (a1 == 52 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x5241454C43;
          v8._object = 0xE500000000000000;
          goto LABEL_24;
        }

        if (a1 == 53 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x455349524E5553;
          v8._object = 0xE700000000000000;
          goto LABEL_24;
        }

        if ((a1 != 54 || a2 != 0xE100000000000000) && (sub_10004D74C() & 1) == 0)
        {
          if (qword_10006E090 != -1)
          {
            swift_once();
          }

          v6.super.isa = qword_100073028;
          v12._countAndFlagsBits = 0xE000000000000000;
          v8._countAndFlagsBits = 0x5344554F4C43;
          v8._object = 0xE600000000000000;
          goto LABEL_24;
        }

        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 1314341188;
      }

      goto LABEL_23;
    }

    if (a1 == 49 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
    {
      if (qword_10006E090 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_100073028;
      v12._countAndFlagsBits = 0xE000000000000000;
      v8._countAndFlagsBits = 0x544847494CLL;
      v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v7.value._object = 0xEB00000000656C62;
      v8._object = 0xE500000000000000;
      goto LABEL_25;
    }

    if (a1 == 50 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
    {
      if (qword_10006E090 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_100073028;
      v12._countAndFlagsBits = 0xE000000000000000;
      v8._countAndFlagsBits = 1263681860;
LABEL_23:
      v8._object = 0xE400000000000000;
      goto LABEL_24;
    }

    if (qword_10006E090 != -1)
    {
      swift_once();
    }

    v6.super.isa = qword_100073028;
    v12._countAndFlagsBits = 0xE000000000000000;
    v9 = 1095058255;
    goto LABEL_16;
  }

  if (a4 == 2)
  {
    if ((a1 != 49 || a2 != 0xE100000000000000) && (sub_10004D74C() & 1) == 0)
    {
      if (a1 == 50 && a2 == 0xE100000000000000 || (sub_10004D74C() & 1) != 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 0x454C50525550;
        v8._object = 0xE600000000000000;
        goto LABEL_24;
      }

      if ((a1 != 51 || a2 != 0xE100000000000000) && (sub_10004D74C() & 1) == 0)
      {
        if (qword_10006E090 != -1)
        {
          swift_once();
        }

        v6.super.isa = qword_100073028;
        v12._countAndFlagsBits = 0xE000000000000000;
        v8._countAndFlagsBits = 0x41524F525541;
        v8._object = 0xE600000000000000;
        goto LABEL_24;
      }

      if (qword_10006E090 != -1)
      {
        swift_once();
      }

      v6.super.isa = qword_100073028;
      v12._countAndFlagsBits = 0xE000000000000000;
      v8._countAndFlagsBits = 1263421776;
      goto LABEL_23;
    }

    if (qword_10006E090 != -1)
    {
      swift_once();
    }

    v6.super.isa = qword_100073028;
    v12._countAndFlagsBits = 0xE000000000000000;
    v9 = 1162170951;
LABEL_16:
    v8._countAndFlagsBits = v9 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
    v8._object = 0xE500000000000000;
LABEL_24:
    v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v7.value._object = 0xEB00000000656C62;
LABEL_25:
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    return sub_10004CC4C(v8, v7, v6, v18, v12);
  }

  if (qword_10006E090 != -1)
  {
    swift_once();
  }

  v11.super.isa = qword_100073028;
  v12._countAndFlagsBits = 0xE000000000000000;
  v14._countAndFlagsBits = 0x52455454494C47;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v14._object = 0xE700000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v13 = sub_10004CC4C(v14, v17, v11, v19, v12);
  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  sub_10004D16C(v15);
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  sub_10004D16C(v16);
  return v13;
}

uint64_t sub_10003F30C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100010F88(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_100034D24(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10000CFD0(a2);
    *v2 = v7;
  }

  else
  {
    sub_1000196A8(a1);
    sub_10004002C(a2, v8);
    sub_10000CFD0(a2);
    return sub_1000196A8(v8);
  }

  return result;
}

uint64_t sub_10003F3A8(uint64_t result, unint64_t a2, void *a3, char a4)
{
  v5 = result;
  if (a4 != 1)
  {

    result = sub_10003F920(v5, a2);
    if (v14)
    {
      return -1;
    }

    return result;
  }

  v6 = HIBYTE(a2) & 0xF;
  v7 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return -1;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_10003E214(result, a2, a3, 1u);
    v31 = sub_100040420(v5, a2, 10);
    v33 = v32;
    sub_100010F08(v5, a2, a3, 1u);
    if (v33)
    {
      return -1;
    }

    return v31;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v34[0] = result;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v6)
      {
LABEL_74:
        __break(1u);
        return result;
      }

      if (--v6)
      {
        result = 0;
        v22 = v34 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v6)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v6)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (--v6)
      {
        result = 0;
        v15 = v34 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v6)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v6)
    {
      result = 0;
      v27 = v34;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v6)
        {
          goto LABEL_66;
        }
      }
    }
  }

  else
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_10004D64C();
      v6 = result;
    }

    v9 = *v6;
    if (v9 == 43)
    {
      if (v7 >= 1)
      {
        v18 = v7 - 1;
        if (v7 != 1)
        {
          result = 0;
          if (!v6)
          {
            goto LABEL_66;
          }

          v19 = (v6 + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v18)
            {
LABEL_57:
              LOBYTE(v6) = 0;
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      goto LABEL_73;
    }

    if (v9 == 45)
    {
      if (v7 >= 1)
      {
        v10 = v7 - 1;
        if (v7 != 1)
        {
          result = 0;
          if (!v6)
          {
            goto LABEL_66;
          }

          v11 = (v6 + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v10)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v7)
    {
      result = 0;
      if (!v6)
      {
        goto LABEL_66;
      }

      while (1)
      {
        v25 = *v6 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v6;
        if (!--v7)
        {
          goto LABEL_57;
        }
      }
    }
  }

LABEL_65:
  result = 0;
  LOBYTE(v6) = 1;
LABEL_66:
  v35 = v6;
  if (v6)
  {
    return -1;
  }

  return result;
}

void sub_10003F6FC(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v9 = a5;
  sub_10004D5EC();
  v21._countAndFlagsBits = a2;
  v21._object = a3;
  v19 = &type metadata for String;
  v17 = sub_10003EA74(v21, v10, a5);
  v18 = v11;
  sub_10003F30C(&v17, v20);
  if (v9 == 3)
  {
    v12 = a4;
    if (a4)
    {
      v13 = v12;
      v17 = 0x6F436D6F74737563;
      v18 = 0xEB00000000726F6CLL;
      sub_10004D5EC();
      v14.n128_f64[0] = sub_10004B11C();
      v15 = sub_10004B44C(v14);
      v19 = &type metadata for String;
      v17 = v15;
      v18 = v16;
      sub_10003F30C(&v17, v20);
    }
  }
}

uint64_t sub_10003F828(Swift::String a1, void *a2, unsigned __int8 a3)
{
  v4 = a3;
  result = sub_10003EA74(a1, a2, a3);
  v9 = result;
  if (v4 == 3)
  {
    v6 = result;
    v7 = a2;
    result = v6;
    if (a2)
    {
      v8.n128_f64[0] = sub_10004B11C();
      v10._countAndFlagsBits = sub_10004B44C(v8);
      sub_10004D16C(v10);

      v11._countAndFlagsBits = 95;
      v11._object = 0xE100000000000000;
      sub_10004D16C(v11);

      return v9;
    }
  }

  return result;
}

uint64_t sub_10003F8D4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_10003F920(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_10004D64C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100040420(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10003FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  v16._countAndFlagsBits = *a1;
  v16._object = v3;
  v8 = sub_10003EA74(v16, a3, v6);
  v10 = v9;
  v17._countAndFlagsBits = v4;
  v17._object = v5;
  if (v8 == sub_10003EA74(v17, v11, v7) && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_10004D74C();
  }

  return v14 & 1;
}

Swift::Int sub_10003FCC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_10004D7BC();
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_10003EA74(v6, v4, v3);
  sub_10004D14C();

  return sub_10004D7DC();
}

uint64_t sub_10003FD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10003EA74(*v3, a3, *(v3 + 24));
  sub_10004D14C();
}

Swift::Int sub_10003FD98()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  sub_10004D7BC();
  v6._countAndFlagsBits = v1;
  v6._object = v2;
  sub_10003EA74(v6, v4, v3);
  sub_10004D14C();

  return sub_10004D7DC();
}

Swift::Int sub_10003FE14()
{
  sub_10004D7BC();
  sub_10004D7CC(0);
  return sub_10004D7DC();
}

Swift::Int sub_10003FE80()
{
  sub_10004D7BC();
  sub_10004D7CC(0);
  return sub_10004D7DC();
}

__n128 sub_10003FF18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10003FF2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003FF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_10003FFD8()
{
  result = qword_100070C90;
  if (!qword_100070C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100070C90);
  }

  return result;
}

double sub_10004002C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000330C8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003557C();
      v11 = v13;
    }

    sub_10000CFD0(*(v11 + 48) + 40 * v8);
    sub_100010F88((*(v11 + 56) + 32 * v8), a2);
    sub_1000400D0(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1000400D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10004D59C() + 1) & ~v5;
    do
    {
      sub_10003E094(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_10004D5CC(*(a2 + 40));
      result = sub_10000CFD0(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100040274(uint64_t a1, unint64_t a2)
{
  v5 = sub_10004D15C();
  v6 = *v2;
  v7 = *(*v2 + 2);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v5;
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v6 + 3) >> 1, v12 < v8))
  {
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    v6 = sub_100048358(isUniquelyReferenced_nonNull_native, v13, 1, v6);
    v12 = *(v6 + 3) >> 1;
  }

  v14 = *(v6 + 2);
  v15 = v12 - v14;
  v16 = sub_1000409AC(&v30, &v6[16 * v14 + 32], v12 - v14, a1, a2);
  if (v16 < v9)
  {
    goto LABEL_15;
  }

  if (v16 >= 1)
  {
    v17 = *(v6 + 2);
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
      __break(1u);
LABEL_29:
      *(v6 + 2) = a1;
LABEL_30:
      v2 = a2;
      goto LABEL_13;
    }

    *(v6 + 2) = v19;
  }

  if (v16 == v15)
  {
LABEL_16:
    a2 = v2;
    a1 = *(v6 + 2);
    v21 = sub_10004D17C();
    if (v22)
    {
      while (1)
      {
        v23 = *(v6 + 3);
        v24 = v23 >> 1;
        if ((v23 >> 1) < a1 + 1)
        {
          v27 = v21;
          v28 = v22;
          v29 = sub_100048358((v23 > 1), a1 + 1, 1, v6);
          v22 = v28;
          v6 = v29;
          v21 = v27;
          v24 = *(v6 + 3) >> 1;
        }

        if (a1 <= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = a1;
        }

        v26 = &v6[16 * a1 + 40];
        while (v25 != a1)
        {
          *(v26 - 1) = v21;
          *v26 = v22;
          ++a1;
          v21 = sub_10004D17C();
          v26 += 16;
          if (!v22)
          {
            goto LABEL_29;
          }
        }

        *(v6 + 2) = v25;
        a1 = v25;
      }
    }

    goto LABEL_30;
  }

LABEL_13:

  *v2 = v6;
  return result;
}

unsigned __int8 *sub_100040420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10004D1FC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000486A4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10004D64C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000409AC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_10004D17C();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100040A74(uint64_t result, void *a2, unint64_t a3, unint64_t a4)
{
  v5 = a3;
  v6 = HIBYTE(a4) & 0xF;
  v7 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_65;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {
    v33 = result;
    v34 = a2;

    v11 = sub_100040420(v5, a4, 10);
    v36 = v35;

    a2 = v34;
    if (v36)
    {
      goto LABEL_65;
    }

    result = v33;
    if (v11 < 1)
    {
      goto LABEL_65;
    }

LABEL_64:
    if (v11 <= 6)
    {
      if (result == 0x6E6165636FLL && a2 == 0xE500000000000000 || (v31 = result, v32 = a2, (sub_10004D74C() & 1) != 0) || v31 == 0x7364756F6C63 && v32 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0 || v31 == 0x72657474696C67 && v32 == 0xE700000000000000 || (sub_10004D74C() & 1) != 0 || v31 == 0x61726F727561 && v32 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0)
      {

        return v5;
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      sub_10004D61C(24);

      v40 = 0xD000000000000013;
      v41 = 0x80000001000550D0;
      v44._countAndFlagsBits = v31;
      v44._object = v32;
      sub_10004D16C(v44);

      v45._countAndFlagsBits = 32;
      v45._object = 0xE100000000000000;
      sub_10004D16C(v45);
LABEL_66:
      v43._countAndFlagsBits = v5;
      v43._object = a4;
      sub_10004D16C(v43);

      v29 = v40;
      v5 = v41;
      sub_100042418();
      swift_allocError();
      *v30 = v29;
      v30[1] = v5;
      swift_willThrow();
      return v5;
    }

LABEL_65:

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_10004D61C(18);

    v40 = 0xD000000000000010;
    v41 = 0x80000001000550F0;
    goto LABEL_66;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v37 = result;
      v38 = a2;
      v9 = sub_10004D64C();
      result = v37;
      v7 = v39;
      a2 = v38;
    }

    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 >= 1)
      {
        if (--v7)
        {
          v11 = 0;
          if (v9)
          {
            v18 = v9 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_61;
              }

              v11 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_91;
    }

    if (v10 != 45)
    {
      if (v7)
      {
        v11 = 0;
        if (v9)
        {
          while (1)
          {
            v24 = *v9 - 48;
            if (v24 > 9)
            {
              goto LABEL_61;
            }

            v25 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_61;
            }

            v11 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v11 = 0;
      LOBYTE(v7) = 1;
      goto LABEL_62;
    }

    if (v7 >= 1)
    {
      if (--v7)
      {
        v11 = 0;
        if (v9)
        {
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_61;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_61;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_61;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v7) = 0;
LABEL_62:
        v42 = v7;
        if ((v7 & 1) != 0 || v11 < 1)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v40 = a3;
  v41 = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    if (a3 != 45)
    {
      if (v6)
      {
        v11 = 0;
        v26 = &v40;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          v26 = (v26 + 1);
          if (!--v6)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v6)
    {
      v7 = v6 - 1;
      if (v6 != 1)
      {
        v11 = 0;
        v15 = &v40 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_90;
  }

  if (v6)
  {
    v7 = v6 - 1;
    if (v6 != 1)
    {
      v11 = 0;
      v21 = &v40 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_10004100C(uint64_t a1, void *a2)
{
  sub_100018B44();
  v4 = sub_10004D55C();
  v5 = v4[2];
  if (v5 == 1)
  {

    if (a1 == 0x6E6165636FLL && a2 == 0xE500000000000000 || (sub_10004D74C() & 1) != 0 || a1 == 0x61726F727561 && a2 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0 || a1 == 0x72657474696C67 && a2 == 0xE700000000000000 || (sub_10004D74C() & 1) != 0 || a1 == 0x7364756F6C63 && a2 == 0xE600000000000000 || (sub_10004D74C() & 1) != 0)
    {

      return 49;
    }

    goto LABEL_11;
  }

  if (v5 != 2)
  {

LABEL_11:
    sub_10004D61C(21);

    v22._countAndFlagsBits = a1;
    v22._object = a2;
    sub_10004D16C(v22);

    sub_100042418();
    swift_allocError();
    *v21 = 0xD000000000000013;
    v21[1] = 0x80000001000550D0;
    return swift_willThrow();
  }

  if (v4[2])
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = v4[6];
    v10 = v4[7];

    v11 = sub_10004D12C();
    v13 = v12;

    if (v4[2] >= 2uLL)
    {
      v14 = v4[8];
      v15 = v4[9];
      v16 = v4[10];
      v17 = v4[11];

      v18 = sub_10004D12C();
      v20 = v19;

      return sub_100040A74(v11, v13, v18, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100041324()
{
  v0 = sub_10004100C(0x7364756F6C63, 0xE600000000000000);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_10004A040(v0, v1, v3, v5);
  sub_100010F08(v0, v2, v4, v6);
  if (v7 >> 62)
  {
    v8 = sub_10004D67C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = sub_10004100C(0x61726F727561, 0xE600000000000000);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_10004A040(v9, v10, v12, v14);
  sub_100010F08(v9, v11, v13, v15);
  if (v16 >> 62)
  {
    v17 = sub_10004D67C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = sub_10004100C(0x72657474696C67, 0xE700000000000000);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_10004A040(v18, v19, v21, v23);
  sub_100010F08(v18, v20, v22, v24);
  if (v25 >> 62)
  {
    v26 = sub_10004D67C();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v26;
  v27 = sub_10004100C(0x6E6165636FLL, 0xE500000000000000);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = sub_10004A040(v27, v28, v30, v32);
  sub_100010F08(v27, v29, v31, v33);
  if (v34 >> 62)
  {
    v35 = sub_10004D67C();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < 1)
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v113 = v35;
  v37 = sub_10004C0B0(1, v8, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v38 = *(v37 + 2);
  if (v38)
  {
    v39 = 32;
    do
    {
      v117 = *&v37[v39];
      v40 = sub_10004D73C();
      sub_100040274(v40, v41);
      v39 += 8;
      --v38;
    }

    while (v38);

    v42 = v116[0];
  }

  else
  {

    v42 = &_swiftEmptyArrayStorage;
  }

  v43 = v42[2];
  if (v43)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v43, 0);
    v44 = &_swiftEmptyArrayStorage;
    v45 = v42 + 5;
    do
    {
      v47 = *(v45 - 1);
      v46 = *v45;
      v116[0] = v44;
      v49 = v44[2];
      v48 = v44[3];

      if (v49 >= v48 >> 1)
      {
        sub_10004BDDC((v48 > 1), v49 + 1, 1);
        v44 = v116[0];
      }

      v44[2] = v49 + 1;
      v50 = &v44[2 * v49];
      v50[4] = v47;
      v50[5] = v46;
      v45 += 2;
      --v43;
    }

    while (v43);
  }

  else
  {

    v44 = &_swiftEmptyArrayStorage;
  }

  if (v17 < 1)
  {
    goto LABEL_81;
  }

  v51 = sub_10004C0B0(1, v17, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v52 = *(v51 + 2);
  if (v52)
  {
    v53 = 32;
    do
    {
      v117 = *&v51[v53];
      v54 = sub_10004D73C();
      sub_100040274(v54, v55);
      v53 += 8;
      --v52;
    }

    while (v52);

    v56 = v116[0];
  }

  else
  {

    v56 = &_swiftEmptyArrayStorage;
  }

  v57 = v56[2];
  if (v57)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v57, 0);
    v58 = &_swiftEmptyArrayStorage;
    v59 = v56 + 5;
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      v116[0] = v58;
      v63 = v58[2];
      v62 = v58[3];

      if (v63 >= v62 >> 1)
      {
        sub_10004BDDC((v62 > 1), v63 + 1, 1);
        v58 = v116[0];
      }

      v58[2] = v63 + 1;
      v64 = &v58[2 * v63];
      v64[4] = v61;
      v64[5] = v60;
      v59 += 2;
      --v57;
    }

    while (v57);
  }

  else
  {

    v58 = &_swiftEmptyArrayStorage;
  }

  if (v114 < 1)
  {
    goto LABEL_82;
  }

  v65 = sub_10004C0B0(1, v114, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v66 = *(v65 + 2);
  if (v66)
  {
    v67 = 32;
    do
    {
      v117 = *&v65[v67];
      v68 = sub_10004D73C();
      sub_100040274(v68, v69);
      v67 += 8;
      --v66;
    }

    while (v66);

    v70 = v116[0];
  }

  else
  {

    v70 = &_swiftEmptyArrayStorage;
  }

  v71 = v70[2];
  if (v71)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v71, 0);
    v72 = &_swiftEmptyArrayStorage;
    v73 = v70 + 5;
    do
    {
      v75 = *(v73 - 1);
      v74 = *v73;
      v116[0] = v72;
      v77 = v72[2];
      v76 = v72[3];

      if (v77 >= v76 >> 1)
      {
        sub_10004BDDC((v76 > 1), v77 + 1, 1);
        v72 = v116[0];
      }

      v72[2] = v77 + 1;
      v78 = &v72[2 * v77];
      v78[4] = v75;
      v78[5] = v74;
      v73 += 2;
      --v71;
    }

    while (v71);
  }

  else
  {

    v72 = &_swiftEmptyArrayStorage;
  }

  if (v113 < 1)
  {
    goto LABEL_83;
  }

  v79 = sub_10004C0B0(1, v113, 2);
  v116[0] = &_swiftEmptyArrayStorage;
  v80 = *(v79 + 2);
  if (v80)
  {
    v81 = 32;
    do
    {
      v117 = *&v79[v81];
      v82 = sub_10004D73C();
      sub_100040274(v82, v83);
      v81 += 8;
      --v80;
    }

    while (v80);

    v84 = v116[0];
  }

  else
  {

    v84 = &_swiftEmptyArrayStorage;
  }

  v85 = v84[2];
  v115 = v44;
  if (v85)
  {
    v116[0] = &_swiftEmptyArrayStorage;
    sub_10004BDDC(0, v85, 0);
    v86 = &_swiftEmptyArrayStorage;
    v87 = v84 + 5;
    do
    {
      v89 = *(v87 - 1);
      v88 = *v87;
      v116[0] = v86;
      v91 = v86[2];
      v90 = v86[3];

      if (v91 >= v90 >> 1)
      {
        sub_10004BDDC((v90 > 1), v91 + 1, 1);
        v86 = v116[0];
      }

      v86[2] = v91 + 1;
      v92 = &v86[2 * v91];
      v92[4] = v89;
      v92[5] = v88;
      v87 += 2;
      --v85;
    }

    while (v85);

    v44 = v115;
  }

  else
  {

    v86 = &_swiftEmptyArrayStorage;
  }

  v116[3] = &type metadata for FeatureFlags;
  v116[4] = sub_10004246C();
  v93 = sub_10004CE3C();
  sub_10000CF40(v116);
  if ((v93 & 1) == 0)
  {

    sub_10000CC1C(&qword_100070CA8, &qword_100051C70);
    result = swift_allocObject();
    *(result + 16) = xmmword_100051820;
    if (v44[2])
    {
      v105 = v44[5];
      *(result + 32) = v44[4];
      *(result + 40) = v105;
      *(result + 48) = 0;
      *(result + 56) = 1;
      if (v86[2])
      {
        v106 = result;
        v107 = v86[4];
        v108 = v86[5];

        *(v106 + 64) = v107;
        *(v106 + 72) = v108;
        *(v106 + 80) = 0;
        *(v106 + 88) = 0;
        if (v58[2])
        {
          result = v58[5];
          *(v106 + 96) = v58[4];
          *(v106 + 104) = result;
          *(v106 + 112) = 0;
          *(v106 + 120) = 2;
          if (v115[2] >= 2uLL)
          {
            v109 = v115[6];
            v110 = v115[7];

            *(v106 + 128) = v109;
            *(v106 + 136) = v110;
            *(v106 + 144) = 0;
            *(v106 + 152) = 1;
            if (v58[2] >= 2uLL)
            {
              v112 = v58[6];
              v111 = v58[7];

              result = v106;
              *(v106 + 160) = v112;
              *(v106 + 168) = v111;
              *(v106 + 176) = 0;
              *(v106 + 184) = 2;
              return result;
            }

            goto LABEL_93;
          }

          goto LABEL_91;
        }

        goto LABEL_89;
      }

      goto LABEL_87;
    }

    goto LABEL_85;
  }

  sub_10000CC1C(&qword_100070CA8, &qword_100051C70);
  result = swift_allocObject();
  *(result + 16) = xmmword_100051830;
  if (!v44[2])
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v94 = v44[5];
  *(result + 32) = v44[4];
  *(result + 40) = v94;
  *(result + 48) = 0;
  *(result + 56) = 1;
  if (!v86[2])
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v95 = result;
  v96 = v86[4];
  v97 = v86[5];

  *(v95 + 64) = v96;
  *(v95 + 72) = v97;
  *(v95 + 80) = 0;
  *(v95 + 88) = 0;
  if (!v58[2])
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  result = v58[5];
  *(v95 + 96) = v58[4];
  *(v95 + 104) = result;
  *(v95 + 112) = 0;
  *(v95 + 120) = 2;
  if (!v72[2])
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v98 = v72[5];
  *(v95 + 128) = v72[4];
  *(v95 + 136) = v98;
  *(v95 + 144) = 0;
  *(v95 + 152) = 3;
  if (v115[2] < 2uLL)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v99 = v115[6];
  v100 = v115[7];

  *(v95 + 160) = v99;
  *(v95 + 168) = v100;
  *(v95 + 176) = 0;
  *(v95 + 184) = 1;
  if (v58[2] >= 2uLL)
  {
    v102 = v58[6];
    v101 = v58[7];

    *(v95 + 192) = v102;
    *(v95 + 200) = v101;
    *(v95 + 208) = 0;
    *(v95 + 216) = 2;
    if (v72[2] >= 2uLL)
    {
      v104 = v72[6];
      v103 = v72[7];

      result = v95;
      *(v95 + 224) = v104;
      *(v95 + 232) = v103;
      *(v95 + 240) = 0;
      *(v95 + 248) = 3;
      return result;
    }

    goto LABEL_95;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_100041D04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v48 = sub_10004CEFC();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v48);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_10004100C(a1, a2);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v46 = v10;
  v47 = v7;
  sub_10003E214(v11, v12, v14, v16);
  v18 = sub_10004CEDC();
  v19 = sub_10004D39C();
  sub_100010F08(v11, v13, v15, v17);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v54 = v45;
    *v20 = 136315138;
    v50 = v11;
    v51 = v13;
    v52 = v15;
    v53 = v17;
    sub_10003E214(v11, v13, v15, v17);
    v21 = sub_10004D0FC();
    v23 = sub_10000C618(v21, v22, &v54);

    *(v20 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "Instantiating effect of type: %s", v20, 0xCu);
    sub_10000CF40(v45);
  }

  v25 = v46;
  v24 = v47;
  if (v17 > 1u)
  {
    if (v17 == 2)
    {
      sub_100010F08(v11, v13, v15, 2u);
      v34 = a4;
      v27 = v48;
      (*(v24 + 16))(v25, v34, v48);
      v35 = type metadata accessor for AuroraEffect();
    }

    else
    {
      sub_100010F08(v11, v13, v15, 3u);
      v40 = a4;
      v27 = v48;
      (*(v24 + 16))(v25, v40, v48);
      v35 = type metadata accessor for GlitterEffect();
    }

    v41 = *(v35 + 48);
    v42 = *(v35 + 52);
    v31 = swift_allocObject();
    v32 = v31;
  }

  else
  {
    if (v17)
    {
      sub_100010F08(v11, v13, v15, 1u);
      v36 = a4;
      v27 = v48;
      (*(v24 + 16))(v25, v36, v48);
      v37 = type metadata accessor for CloudsEffect();
      v38 = *(v37 + 48);
      v39 = *(v37 + 52);
      v31 = swift_allocObject();
      v32 = v31;
      *(v31 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgEffects) = 0;
      v33 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension12CloudsEffect_rgIdle;
    }

    else
    {
      sub_100010F08(v11, v13, v15, 0);
      v26 = a4;
      v27 = v48;
      (*(v24 + 16))(v25, v26, v48);
      v28 = type metadata accessor for OceanEffect();
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      v31 = swift_allocObject();
      v32 = v31;
      *(v31 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgEffects) = 0;
      v33 = &OBJC_IVAR____TtC32DynamicBackgroundPosterExtension11OceanEffect_rgIdle;
    }

    *(v31 + *v33) = 0;
  }

  *(v31 + 16) = v49;
  *(v31 + 24) = 0;
  (*(v24 + 32))(v31 + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension26TranscriptBackgroundEffect_logger, v25, v27);

  return v32;
}